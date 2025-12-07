uint64_t sub_1003EF300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1003EF398, v6, v5);
}

uint64_t sub_1003EF398()
{
  static Actions.Share.action(context:)(*(v0 + 144), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1003EF438;

  return sub_1003EBC94(1);
}

uint64_t sub_1003EF438()
{
  v1 = *v0;

  sub_1000095E8(v1 + 16, &qword_10118E0F0, &qword_100ECEFA0);
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1003EF574, v3, v2);
}

uint64_t sub_1003EF574()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1003EF5D4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v8 = __chkstk_darwin();
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v11 + 16))(v10, a2, v8);
  v13 = *(a3 + 32);
  if (v13 >= 0)
  {
    v14 = *(a3 + 32);
  }

  else
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = xmmword_100EBCEF0;
  v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
  PresentationSource.init(viewController:position:)(v14, v20, v19);
  v16 = objc_allocWithZone(type metadata accessor for ShareAssetStoryActivity(0));
  result = sub_1005EDBA4(v12, v10, v19, v17);
  *a4 = result;
  return result;
}

uint64_t sub_1003EF714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1003EF7D4;

  return static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(a4, a5);
}

uint64_t sub_1003EF7D4()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1003EF994;
  }

  else
  {
    v4 = sub_1003EF930;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003EF930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EF994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003EF9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.page(for:stackAuthority:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.sheetPage(for:)(a1, v5, a3);
}

uint64_t sub_1003EFAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.fullScreenCoverPage(for:)(a1, v5, a3);
}

uint64_t sub_1003EFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.pushPage(for:stackAuthority:context:)(a1, a2, a3, v9, a5);
}

uint64_t sub_1003EFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.presentFullScreenCoverPage(for:context:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.sheetPage(for:context:)(a1, a2, v7, a4);
}

uint64_t sub_1003EFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppInterfaceContext();

  return MusicAppDestinationPageProvider.fullScreenCoverPage(for:context:)(a1, a2, v7, a4);
}

void sub_1003EFC88(void *a1, uint64_t a2)
{
  v55 = a1;
  v56 = type metadata accessor for AppInterfaceContext.Activity(0);
  v57 = *(v56 - 8);
  __chkstk_darwin();
  v59 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v54 - v4;
  v58 = v5;
  __chkstk_darwin();
  v60 = (&v54 - v6);
  v7 = type metadata accessor for PresentationOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v54 - v10;
  __chkstk_darwin();
  v13 = (&v54 - v12);
  __chkstk_darwin();
  v78 = &v54 - v14;
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v71 = v8 + 88;
  v72 = v8 + 16;
  v70 = enum case for PresentationOptions.unique(_:);
  v68 = enum case for PresentationOptions.replace(_:);
  v69 = (v8 + 8);
  v54 = (v8 + 96);
  v77 = a2;

  v20 = 0;
  v62 = _swiftEmptyArrayStorage;
  *&v21 = 136315138;
  v63 = v21;
  v65 = v8;
  v74 = v15;
  v75 = v13;
  v73 = v19;
  if (v18)
  {
LABEL_8:
    while (1)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v78;
      v25 = *(v8 + 16);
      v25(v78, *(v77 + 48) + *(v8 + 72) * (v23 | (v20 << 6)), v7);
      v25(v13, v24, v7);
      v26 = (*(v8 + 88))(v13, v7);
      if (v26 == v70)
      {
        break;
      }

      if (v26 == v68)
      {
        v76 = v11;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        goto LABEL_20;
      }

      if (qword_10117FC68 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000060E4(v27, qword_1012194A8);
      v25(v11, v78, v7);
      v28 = Logger.logObject.getter();
      LODWORD(v76) = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v28, v76);
      v30 = v69;
      if (v29)
      {
        v31 = swift_slowAlloc();
        v66 = v31;
        v67 = swift_slowAlloc();
        v79 = v67;
        *v31 = v63;
        v25(v64, v11, v7);
        v32 = v7;
        v33 = String.init<A>(describing:)();
        v35 = v34;
        v36 = *v30;
        (*v30)(v11, v32);
        v37 = sub_1000105AC(v33, v35, &v79);

        v38 = v66;
        *(v66 + 1) = v37;
        v7 = v32;
        v8 = v65;
        _os_log_impl(&_mh_execute_header, v28, v76, "[MusicUI Actions] Failed to present a sheet because the option=%s is not supported", v38, 0xCu);
        sub_10000959C(v67);
      }

      else
      {

        v36 = *v30;
        (*v30)(v11, v7);
      }

      v13 = v75;
      v36(v75, v7);
      v36(v78, v7);
LABEL_16:
      v19 = v73;
      v15 = v74;
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    v76 = v11;
    (*v54)(v13, v7);
    v39 = *v13;
    v40 = v13[1];
    v41 = v13[2];
    v42 = v13[3];
LABEL_20:
    (*v69)(v78, v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_10049A200(0, *(v62 + 2) + 1, 1, v62);
    }

    v44 = *(v62 + 2);
    v43 = *(v62 + 3);
    if (v44 >= v43 >> 1)
    {
      v62 = sub_10049A200((v43 > 1), v44 + 1, 1, v62);
    }

    v45 = v62;
    *(v62 + 2) = v44 + 1;
    v46 = &v45[32 * v44];
    *(v46 + 4) = v39;
    *(v46 + 5) = v40;
    *(v46 + 6) = v41;
    *(v46 + 7) = v42;
    v8 = v65;
    v13 = v75;
    v11 = v76;
    goto LABEL_16;
  }

LABEL_4:
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v47 = v55;
      v48 = sub_1006704D4(v62);

      v49 = v60;
      *v60 = v47;
      *(v49 + 8) = 1;
      *(v49 + 16) = v48;
      swift_storeEnumTagMultiPayload();
      v50 = v61;
      sub_1003F2650(v49, v61, type metadata accessor for AppInterfaceContext.Activity);
      v51 = v59;
      sub_1003F2650(v50, v59, type metadata accessor for AppInterfaceContext.Activity);
      v52 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      sub_1003F2718(v51, v53 + v52, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v50, sub_100139B24, v53);

      sub_1003F26B8(v50, type metadata accessor for AppInterfaceContext.Activity);
      sub_1003F26B8(v49, type metadata accessor for AppInterfaceContext.Activity);
      return;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1003F03FC(void *a1)
{
  v2 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  __chkstk_darwin();
  v8 = &v13 - v7;
  *v8 = a1;
  v8[8] = 1;
  *(v8 + 2) = &_swiftEmptySetSingleton;
  swift_storeEnumTagMultiPayload();
  sub_1003F2650(v8, v6, type metadata accessor for AppInterfaceContext.Activity);
  sub_1003F2650(v6, v4, type metadata accessor for AppInterfaceContext.Activity);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1003F2718(v4, v10 + v9, type metadata accessor for AppInterfaceContext.Activity);
  v11 = a1;
  sub_100706900(v6, sub_100139B24, v10);

  sub_1003F26B8(v6, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1003F26B8(v8, type metadata accessor for AppInterfaceContext.Activity);
}

BOOL sub_1003F06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1003F07E8(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v3 = type metadata accessor for URL();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin();
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v73 = *(v5 - 8);
  v74 = v5;
  __chkstk_darwin();
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareableMusicItem();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin();
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReportableMusicItem();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin();
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Song();
  v67 = *(v11 - 8);
  v68 = v11;
  __chkstk_darwin();
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist();
  v77 = *(v13 - 8);
  v78 = v13;
  __chkstk_darwin();
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v57 - v15;
  _s23AppSheetPageDestinationOMa(0);
  __chkstk_darwin();
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v57 - v17;
  __chkstk_darwin();
  v64 = &v57 - v18;
  __chkstk_darwin();
  v20 = &v57 - v19;
  __chkstk_darwin();
  v22 = &v57 - v21;
  __chkstk_darwin();
  v24 = &v57 - v23;
  __chkstk_darwin();
  v26 = &v57 - v25;
  __chkstk_darwin();
  v28 = (&v57 - v27);
  sub_10010FC20(&qword_10118E078, &unk_100ECA370);
  __chkstk_darwin();
  v30 = &v57 - v29;
  v32 = *(v31 + 56);
  sub_1003F2650(a1, &v57 - v29, _s23AppSheetPageDestinationOMa);
  sub_1003F2650(v79, &v30[v32], _s23AppSheetPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1003F2650(v30, v24, _s23AppSheetPageDestinationOMa);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*(v77 + 8))(v24, v78);
          goto LABEL_36;
        }

        v41 = v77;
        v40 = v78;
        v42 = v58;
        (*(v77 + 32))(v58, &v30[v32], v78);
        v38 = static Playlist.== infix(_:_:)();
        v43 = *(v41 + 8);
        v43(v42, v40);
        v44 = v24;
        v45 = v40;
      }

      else
      {
        sub_1003F2650(v30, v22, _s23AppSheetPageDestinationOMa);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          (*(v67 + 8))(v22, v68);
          goto LABEL_36;
        }

        v51 = v67;
        v50 = v68;
        v52 = v59;
        (*(v67 + 32))(v59, &v30[v32], v68);
        v38 = static Song.== infix(_:_:)();
        v43 = *(v51 + 8);
        v43(v52, v50);
        v44 = v22;
        v45 = v50;
      }

      v43(v44, v45);
      goto LABEL_27;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1003F2650(v30, v28, _s23AppSheetPageDestinationOMa);
      v34 = *v28;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_36:
        sub_1000095E8(v30, &qword_10118E078, &unk_100ECA370);
        v38 = 0;
        return v38 & 1;
      }

      v38 = sub_10047C350(v34, *&v30[v32]);

      goto LABEL_27;
    }

    sub_1003F2650(v30, v26, _s23AppSheetPageDestinationOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = v77;
      v46 = v78;
      v48 = v57;
      (*(v77 + 32))(v57, &v30[v32], v78);
      v49 = static Playlist.== infix(_:_:)();
      goto LABEL_25;
    }

    v55 = v77;
    v54 = v78;
LABEL_35:
    (*(v55 + 8))(v26, v54);
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v26 = v65;
      sub_1003F2650(v30, v65, _s23AppSheetPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v47 = v73;
        v46 = v74;
        v48 = v62;
        (*(v73 + 32))(v62, &v30[v32], v74);
        v49 = static MusicAppDestination.SharePageDescriptor.== infix(_:_:)();
        goto LABEL_25;
      }

      v55 = v73;
      v54 = v74;
      goto LABEL_35;
    }

    v26 = v66;
    sub_1003F2650(v30, v66, _s23AppSheetPageDestinationOMa);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v55 = v75;
      v54 = v76;
      goto LABEL_35;
    }

    v47 = v75;
    v46 = v76;
    v48 = v63;
    (*(v75 + 32))(v63, &v30[v32], v76);
    v49 = static URL.== infix(_:_:)();
LABEL_25:
    v38 = v49;
    v53 = *(v47 + 8);
    v53(v48, v46);
    v53(v26, v46);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v26 = v64;
    sub_1003F2650(v30, v64, _s23AppSheetPageDestinationOMa);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v55 = v71;
      v54 = v72;
      goto LABEL_35;
    }

    v47 = v71;
    v46 = v72;
    v48 = v61;
    (*(v71 + 32))(v61, &v30[v32], v72);
    v49 = static ShareableMusicItem.== infix(_:_:)();
    goto LABEL_25;
  }

  sub_1003F2650(v30, v20, _s23AppSheetPageDestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v69 + 8))(v20, v70);
    goto LABEL_36;
  }

  v36 = v69;
  v35 = v70;
  v37 = v60;
  (*(v69 + 32))(v60, &v30[v32], v70);
  v38 = static ReportableMusicItem.== infix(_:_:)();
  v39 = *(v36 + 8);
  v39(v37, v35);
  v39(v20, v35);
LABEL_27:
  sub_1003F26B8(v30, _s23AppSheetPageDestinationOMa);
  return v38 & 1;
}

uint64_t sub_1003F11E0(void (*a1)(char *, uint64_t), char *a2)
{
  v164 = a1;
  v165 = a2;
  v2 = type metadata accessor for Composer();
  v156 = *(v2 - 8);
  v157 = v2;
  __chkstk_darwin();
  v142 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artist();
  v154 = *(v4 - 8);
  v155 = v4;
  __chkstk_darwin();
  v141 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist.Folder();
  v152 = *(v6 - 8);
  v153 = v6;
  __chkstk_darwin();
  v138 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v150 = *(v8 - 8);
  v151 = v8;
  __chkstk_darwin();
  v137 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for URL();
  v161 = *(v159 - 8);
  __chkstk_darwin();
  v139 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v131 - v11;
  __chkstk_darwin();
  v132 = &v131 - v12;
  v134 = sub_10010FC20(&qword_10118CA90, &unk_100ECA330);
  __chkstk_darwin();
  v135 = &v131 - v13;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v133 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = &v131 - v15;
  __chkstk_darwin();
  v145 = &v131 - v16;
  v158 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v160 = *(v158 - 8);
  __chkstk_darwin();
  v146 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
  v19 = *(v18 - 8);
  v162 = v18;
  v163 = v19;
  __chkstk_darwin();
  v136 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v131 - v21;
  _s18AppPageDestinationOMa(0);
  __chkstk_darwin();
  v149 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v131 - v23;
  __chkstk_darwin();
  v147 = &v131 - v24;
  __chkstk_darwin();
  v26 = &v131 - v25;
  __chkstk_darwin();
  v28 = &v131 - v27;
  __chkstk_darwin();
  v30 = &v131 - v29;
  __chkstk_darwin();
  v32 = &v131 - v31;
  __chkstk_darwin();
  v34 = &v131 - v33;
  sub_10010FC20(&qword_10118E028, &qword_100ECA340);
  __chkstk_darwin();
  v36 = &v131 - v35;
  v38 = &v131 + *(v37 + 56) - v35;
  sub_1003F2650(v164, &v131 - v35, _s18AppPageDestinationOMa);
  v39 = v38;
  sub_1003F2650(v165, v38, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v92 = v149;
        sub_1003F2650(v36, v149, _s18AppPageDestinationOMa);
        v94 = *v92;
        v93 = *(v92 + 1);
        v95 = *(sub_10010FC20(&qword_10118E030, &qword_100ECA348) + 48);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          (*(v161 + 8))(&v92[v95], v159);

          goto LABEL_39;
        }

        v165 = v36;
        v97 = *v39;
        v96 = v39[1];
        v98 = *(v161 + 32);
        v99 = &v92[v95];
        v100 = v140;
        v101 = v159;
        v98(v140, v99, v159);
        v102 = v39 + v95;
        v103 = v139;
        v98(v139, v102, v101);
        if (v94 == v97 && v93 == v96)
        {
        }

        else
        {
          v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v115 & 1) == 0)
          {
            v118 = *(v161 + 8);
            v118(v103, v101);
            v118(v100, v101);
            goto LABEL_55;
          }
        }

        v116 = v100;
        v47 = static URL.== infix(_:_:)();
        v117 = *(v161 + 8);
        v117(v103, v101);
        v117(v116, v101);
        sub_1003F26B8(v165, _s18AppPageDestinationOMa);
        return v47 & 1;
      }

      v53 = v148;
      sub_1003F2650(v36, v148, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        (*(v156 + 8))(v53, v157);
        goto LABEL_39;
      }

      v55 = v156;
      v54 = v157;
      v56 = v142;
      (*(v156 + 32))(v142, v39, v157);
      v47 = static Composer.== infix(_:_:)();
      v57 = *(v55 + 8);
      v57(v56, v54);
      v57(v53, v54);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1003F2650(v36, v26, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v152 + 8))(v26, v153);
        goto LABEL_39;
      }

      v45 = v152;
      v44 = v153;
      v46 = v138;
      (*(v152 + 32))(v138, v38, v153);
      v47 = static Playlist.Folder.== infix(_:_:)();
      v48 = *(v45 + 8);
      v48(v46, v44);
      v48(v26, v44);
    }

    else
    {
      v83 = v147;
      sub_1003F2650(v36, v147, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        (*(v154 + 8))(v83, v155);
        goto LABEL_39;
      }

      v85 = v154;
      v84 = v155;
      v86 = v141;
      (*(v154 + 32))(v141, v38, v155);
      v47 = static Artist.== infix(_:_:)();
      v87 = *(v85 + 8);
      v87(v86, v84);
      v87(v83, v84);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1003F2650(v36, v34, _s18AppPageDestinationOMa);
        v41 = *(sub_10010FC20(&qword_10118E040, &qword_100ECA358) + 48);
        v43 = *&v34[v41];
        v42 = *&v34[v41 + 8];
        if (swift_getEnumCaseMultiPayload())
        {

          (*(v163 + 8))(v34, v162);
LABEL_39:
          sub_1000095E8(v36, &qword_10118E028, &qword_100ECA340);
LABEL_40:
          v47 = 0;
          return v47 & 1;
        }

        v105 = v36;
        v106 = *(v39 + v41);
        v107 = *(v39 + v41 + 8);
        v165 = v106;
        v108 = v163;
        v109 = v143;
        v110 = v39;
        v111 = v162;
        (*(v163 + 32))(v143, v110, v162);
        v112 = static MusicAppDestination.AlbumDescriptor.== infix(_:_:)();
        v113 = *(v108 + 8);
        v113(v34, v111);
        if (v112)
        {
          if (v42)
          {
            v114 = v143;
            if (v107)
            {
              if (v43 == v165 && v42 == v107)
              {

                v113(v114, v111);
LABEL_73:
                v126 = v105;
LABEL_76:
                sub_1003F26B8(v126, _s18AppPageDestinationOMa);
                v47 = 1;
                return v47 & 1;
              }

              v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v113(v114, v111);
              if (v125)
              {
                goto LABEL_73;
              }
            }

            else
            {

              v113(v114, v111);
            }

LABEL_53:
            sub_1003F26B8(v105, _s18AppPageDestinationOMa);
            goto LABEL_40;
          }

          v113(v143, v111);
          if (!v107)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v113(v109, v111);
        }

        goto LABEL_53;
      }

      v165 = v36;
      sub_1003F2650(v36, v32, _s18AppPageDestinationOMa);
      v58 = sub_10010FC20(&qword_10118E038, &qword_100ECA350);
      v59 = *(v58 + 48);
      v61 = *&v32[v59];
      v60 = *&v32[v59 + 8];
      v62 = *(v58 + 64);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1000095E8(&v32[v62], &qword_101183A20, &unk_100EBCF80);

        (*(v160 + 8))(v32, v158);
        v36 = v165;
        goto LABEL_39;
      }

      v63 = *(v39 + v59);
      v64 = *(v39 + v59 + 8);
      v164 = v63;
      v65 = v160;
      v66 = v146;
      v67 = v158;
      (*(v160 + 32))(v146, v39, v158);
      v68 = v145;
      sub_100027998(&v32[v62], v145);
      v69 = v39 + v62;
      v70 = v144;
      sub_100027998(v69, v144);
      v71 = static MusicAppDestination.PlaylistDescriptor.== infix(_:_:)();
      v73 = *(v65 + 8);
      v72 = v65 + 8;
      v74 = v32;
      v75 = v67;
      v76 = v73;
      v73(v74, v75);
      if (v71)
      {
        v77 = v75;
        v160 = v72;
        if (v60)
        {
          v78 = v159;
          v79 = v135;
          v80 = v145;
          v81 = v144;
          if (v64)
          {
            v82 = v165;
            if (v61 == v164 && v60 == v64)
            {

              goto LABEL_64;
            }

            v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v119)
            {
LABEL_64:
              v164 = v76;
              v120 = *(v134 + 48);
              sub_1000089F8(v80, v79, &qword_101183A20, &unk_100EBCF80);
              sub_1000089F8(v81, v79 + v120, &qword_101183A20, &unk_100EBCF80);
              v121 = *(v161 + 48);
              if (v121(v79, 1, v78) == 1)
              {
                sub_1000095E8(v81, &qword_101183A20, &unk_100EBCF80);
                sub_1000095E8(v80, &qword_101183A20, &unk_100EBCF80);
                v164(v146, v77);
                v122 = v121(v79 + v120, 1, v78);
                v123 = v165;
                if (v122 == 1)
                {
                  sub_1000095E8(v79, &qword_101183A20, &unk_100EBCF80);
LABEL_75:
                  v126 = v123;
                  goto LABEL_76;
                }
              }

              else
              {
                v124 = v133;
                sub_1000089F8(v79, v133, &qword_101183A20, &unk_100EBCF80);
                if (v121(v79 + v120, 1, v78) != 1)
                {
                  v127 = v161;
                  v128 = v79 + v120;
                  v129 = v132;
                  (*(v161 + 32))(v132, v128, v78);
                  sub_1000340AC(&qword_101199D20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
                  LODWORD(v163) = dispatch thunk of static Equatable.== infix(_:_:)();
                  v130 = *(v127 + 8);
                  v130(v129, v78);
                  sub_1000095E8(v81, &qword_101183A20, &unk_100EBCF80);
                  sub_1000095E8(v80, &qword_101183A20, &unk_100EBCF80);
                  v164(v146, v77);
                  v130(v124, v78);
                  sub_1000095E8(v79, &qword_101183A20, &unk_100EBCF80);
                  v123 = v165;
                  if (v163)
                  {
                    goto LABEL_75;
                  }

LABEL_70:
                  sub_1003F26B8(v123, _s18AppPageDestinationOMa);
                  goto LABEL_40;
                }

                sub_1000095E8(v81, &qword_101183A20, &unk_100EBCF80);
                sub_1000095E8(v80, &qword_101183A20, &unk_100EBCF80);
                v164(v146, v77);
                (*(v161 + 8))(v124, v78);
                v123 = v165;
              }

              sub_1000095E8(v79, &qword_10118CA90, &unk_100ECA330);
              goto LABEL_70;
            }

LABEL_62:
            sub_1000095E8(v81, &qword_101183A20, &unk_100EBCF80);
            sub_1000095E8(v80, &qword_101183A20, &unk_100EBCF80);
            v76(v146, v77);
            sub_1003F26B8(v82, _s18AppPageDestinationOMa);
            goto LABEL_40;
          }

          v82 = v165;
        }

        else
        {
          v82 = v165;
          v78 = v159;
          v79 = v135;
          v80 = v145;
          v81 = v144;
          if (!v64)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_62;
      }

      sub_1000095E8(v70, &qword_101183A20, &unk_100EBCF80);
      sub_1000095E8(v68, &qword_101183A20, &unk_100EBCF80);
      v76(v66, v75);
LABEL_55:
      sub_1003F26B8(v165, _s18AppPageDestinationOMa);
      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1003F2650(v36, v30, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v163 + 8))(v30, v162);
        goto LABEL_39;
      }

      v50 = v162;
      v49 = v163;
      v51 = v136;
      (*(v163 + 32))(v136, v38, v162);
      v47 = static MusicAppDestination.AlbumDescriptor.== infix(_:_:)();
      v52 = *(v49 + 8);
      v52(v51, v50);
      v52(v30, v50);
    }

    else
    {
      sub_1003F2650(v36, v28, _s18AppPageDestinationOMa);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v150 + 8))(v28, v151);
        goto LABEL_39;
      }

      v89 = v150;
      v88 = v151;
      v90 = v137;
      (*(v150 + 32))(v137, v38, v151);
      v47 = static Playlist.== infix(_:_:)();
      v91 = *(v89 + 8);
      v91(v90, v88);
      v91(v28, v88);
    }
  }

  sub_1003F26B8(v36, _s18AppPageDestinationOMa);
  return v47 & 1;
}

uint64_t sub_1003F2650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F26B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F2718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1003F2780(void *a1, uint64_t a2, uint64_t a3)
{
  if (!MusicStackAuthority.navigationControllerDelegate.getter())
  {
    return;
  }

  _s17NavigationHandlerCMa();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + 16);

    v8 = v6(v7);

    if (v8)
    {
      v9 = [v8 viewControllers];

      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v10 >> 62))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_5:
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11)
        {
          goto LABEL_6;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
LABEL_6:
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v12)
      {
        __break(1u);
      }

      else if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v10 + 8 * v13 + 32);
LABEL_11:
          v15 = v14;

          sub_100009F78(0, &qword_101184710, UIViewControllerTransition_ptr);
          v16 = [objc_allocWithZone(UIZoomTransitionOptions) init];
          UIZoomTransitionOptions.alignmentRectProvider.setter();
          v17 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1000160F8(a3, v22);
          v19 = swift_allocObject();
          *(v19 + 16) = v17;
          v20 = v22[1];
          *(v19 + 24) = v22[0];
          *(v19 + 40) = v20;
          *(v19 + 56) = v23;
          *(v19 + 64) = v18;

          v21 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

          [a1 setPreferredTransition:v21];
          swift_unknownObjectRelease();

          return;
        }

        __break(1u);
        return;
      }

      v14 = sub_10004056C(v13, v10);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_16:

  swift_unknownObjectRelease();
}

uint64_t sub_1003F2A88(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101194980, &qword_100ECA390);
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &qword_101194980, &qword_100ECA390);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v16 = URLComponents.queryItemsDictionary.getter();
    if (v16)
    {
      v17 = v16;
      if (v16[2])
      {
        v18 = sub_100019C10(29556, 0xE200000000000000);
        if (v19)
        {
          v20 = (v17[7] + 16 * v18);
          v40 = a3;
          v21 = *v20;
          v22 = v20[1];

          v41 = 0;
          sub_1003F06F0(v21, v22, &v41);

          (*(v7 + 8))(v40, v6);
          (*(v13 + 8))(v15, v12);
          return a1;
        }
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, qword_1012194A8);
  (*(v7 + 16))(v9, a3, v6);
  v24 = Logger.logObject.getter();
  v25 = a3;
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = a1;
    v29 = v28;
    v41 = v28;
    *v27 = 136446210;
    sub_1000340AC(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40 = v25;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v39 = a2;
    v33 = *(v7 + 8);
    v33(v9, v6);
    v34 = sub_1000105AC(v30, v32, &v41);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v24, v26, "Failed to retrieve start time from lyrics snippet url=%{public}s", v27, 0xCu);
    sub_10000959C(v29);
    a1 = v38;

    v33(v40, v6);
  }

  else
  {

    v35 = *(v7 + 8);
    v35(v25, v6);
    v35(v9, v6);
  }

  return a1;
}

char *sub_1003F2F58(void *a1, uint64_t a2, uint64_t a3)
{
  v400 = a3;
  v388 = a2;
  v399 = a1;
  v3 = type metadata accessor for URL();
  v393 = *(v3 - 1);
  v394 = v3;
  __chkstk_darwin();
  v367 = &v336 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v384 = &v336 - v5;
  v368 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v371 = (&v336 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v372 = type metadata accessor for Playlist.Folder();
  v370 = *(v372 - 8);
  __chkstk_darwin();
  v369 = &v336 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = _s6AlbumsV5ScopeOMa(0);
  v380 = *(v391 - 8);
  __chkstk_darwin();
  v365 = &v336 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = type metadata accessor for Composer();
  v364 = *(v366 - 8);
  __chkstk_darwin();
  v363 = &v336 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for Artist();
  v361 = *(v362 - 8);
  __chkstk_darwin();
  v359 = &v336 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v360 = &v336 - v11;
  v377 = type metadata accessor for Playlist();
  v376 = *(v377 - 8);
  __chkstk_darwin();
  v374 = &v336 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v382 = &v336 - v13;
  __chkstk_darwin();
  v392 = &v336 - v14;
  v379 = type metadata accessor for MusicAppDestination.PlaylistDescriptor();
  v378 = *(v379 - 8);
  __chkstk_darwin();
  v337 = &v336 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v339 = &v336 - v16;
  __chkstk_darwin();
  v373 = &v336 - v17;
  __chkstk_darwin();
  v385 = &v336 - v18;
  v342 = type metadata accessor for Song();
  v341 = *(v342 - 8);
  __chkstk_darwin();
  v340 = &v336 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v347 = &v336 - v20;
  __chkstk_darwin();
  v348 = &v336 - v21;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v345 = &v336 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v346 = (&v336 - v23);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v338 = &v336 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v349 = &v336 - v25;
  __chkstk_darwin();
  v383 = &v336 - v26;
  __chkstk_darwin();
  v395 = &v336 - v27;
  __chkstk_darwin();
  v398 = &v336 - v28;
  __chkstk_darwin();
  v358 = &v336 - v29;
  __chkstk_darwin();
  v344 = &v336 - v30;
  v396 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v343 = &v336 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v389 = &v336 - v32;
  __chkstk_darwin();
  v390 = &v336 - v33;
  __chkstk_darwin();
  v355 = &v336 - v34;
  __chkstk_darwin();
  v356 = &v336 - v35;
  __chkstk_darwin();
  v357 = &v336 - v36;
  v375 = type metadata accessor for Album();
  v381 = *(v375 - 8);
  __chkstk_darwin();
  v38 = &v336 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v350 = &v336 - v39;
  __chkstk_darwin();
  v354 = &v336 - v40;
  __chkstk_darwin();
  v353 = &v336 - v41;
  __chkstk_darwin();
  v43 = &v336 - v42;
  __chkstk_darwin();
  v45 = &v336 - v44;
  __chkstk_darwin();
  v352 = &v336 - v46;
  __chkstk_darwin();
  v351 = &v336 - v47;
  v48 = type metadata accessor for MusicAppDestination.AlbumDescriptor();
  v397 = *(v48 - 8);
  __chkstk_darwin();
  v50 = &v336 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = (&v336 - v51);
  __chkstk_darwin();
  v386 = &v336 - v53;
  __chkstk_darwin();
  v336 = &v336 - v54;
  __chkstk_darwin();
  v56 = &v336 - v55;
  __chkstk_darwin();
  v58 = (&v336 - v57);
  __chkstk_darwin();
  v387 = &v336 - v59;
  _s18AppPageDestinationOMa(0);
  __chkstk_darwin();
  v61 = (&v336 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003F2650(v399, v61, _s18AppPageDestinationOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v179 = *v61;
        v180 = v61[1];
        v181 = sub_10010FC20(&qword_10118E030, &qword_100ECA348);
        v182 = v393;
        v183 = v61 + *(v181 + 48);
        v184 = v384;
        v185 = v394;
        (*(v393 + 32))(v384, v183, v394);
        v186 = *(v182 + 16);
        v187 = v367;
        v186(v367, v184, v185);
        v188 = sub_1003F2A88(v179, v180, v187);
        v190 = v189;
        v192 = v191;
        v194 = v193;
        if (qword_10117FC68 != -1)
        {
          swift_once();
        }

        v195 = type metadata accessor for Logger();
        sub_1000060E4(v195, qword_1012194A8);

        v196 = Logger.logObject.getter();
        v197 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          *&v401 = v199;
          *v198 = 136446210;
          *&v404 = v188;
          *(&v404 + 1) = v190;
          *&v405 = v192;
          BYTE8(v405) = v194 & 1;

          v200 = String.init<A>(describing:)();
          v202 = sub_1000105AC(v200, v201, &v401);

          *(v198 + 4) = v202;
          _os_log_impl(&_mh_execute_header, v196, v197, "Initializing container detail view controller with lyrics snippet data=%{public}s", v198, 0xCu);
          sub_10000959C(v199);
        }

        v203 = v398;
        MusicAppDestinationContext.originalURL.getter();
        v161 = sub_1006A9F64(v188, v190, v192, v194 & 1, v203);
        (*(v393 + 8))(v384, v394);
        goto LABEL_29;
      }

      v123 = v364;
      v124 = v363;
      v125 = v366;
      (*(v364 + 32))(v363, v61, v366);
      v126 = v365;
      (*(v123 + 16))(v365, v124, v125);
      swift_storeEnumTagMultiPayload();
      v127 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController(0));
      v128 = sub_1006E7454(v126, 0);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v82 = v370;
        v83 = v369;
        v84 = v372;
        (*(v370 + 32))(v369, v61, v372);
        v85 = v368;
        v86 = *(v368 + 20);
        v87 = v371;
        (*(v82 + 16))(v371 + v86, v83, v84);
        (*(v82 + 56))(v87 + v86, 0, 1, v84);
        if (qword_10117F5D8 != -1)
        {
          swift_once();
        }

        *v87 = qword_101218AB8;
        *(v87 + *(v85 + 24)) = 0;
        v88 = objc_opt_self();

        v89 = [v88 currentTraitCollection];
        v90 = [v89 horizontalSizeClass];

        v91 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
        v92 = sub_10037E11C(v87, 0, v90 != 2);
        (*(v82 + 8))(v83, v84);
        goto LABEL_12;
      }

      v123 = v361;
      v124 = v360;
      v125 = v362;
      (*(v361 + 32))(v360, v61, v362);
      v159 = v359;
      (*(v123 + 16))(v359, v124, v125);
      v160 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
      v128 = sub_1001FAE8C(v159, 0);
    }

    v161 = v128;
    (*(v123 + 8))(v124, v125);
LABEL_29:
    v178 = v161;
    LODWORD(v399) = 0;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v162 = v376;
      v163 = v392;
      v164 = v377;
      (*(v376 + 32))(v392, v61, v377);
      v165 = *(v162 + 16);
      v166 = v382;
      v165(v382, v163, v164);
      v167 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
      v168 = *(v167 + 48);
      v170 = v390;
      v169 = v391;
      v390[*(v167 + 64)] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v380 + 56))(v170, 0, 1, v169);
      *(v170 + v168) = 0;
      swift_storeEnumTagMultiPayload();
      v171 = v398;
      (*(v393 + 56))(v398, 1, 1, v394);
      v172 = v374;
      v165(v374, v166, v164);
      v173 = v389;
      sub_1003F2650(v170, v389, type metadata accessor for ContainerDetail.Source);
      v174 = v395;
      sub_1000089F8(v171, v395, &qword_101183A20, &unk_100EBCF80);
      v175 = sub_100866288(v172, v173, 0, 0, v174, 0);
      v176 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v122 = sub_100137F48(v175, v176);
      sub_1000095E8(v171, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v170, type metadata accessor for ContainerDetail.Source);
      v177 = *(v162 + 8);
      LODWORD(v399) = 1;
      v177(v166, v164);
      v177(v392, v164);
      goto LABEL_23;
    }

    v94 = v397;
    v95 = v386;
    v96 = v48;
    (*(v397 + 4))(v386, v61, v48);
    v97 = *(v94 + 2);
    v97(v52, v95, v48);
    v98 = (*(v94 + 11))(v52, v48);
    if (v98 == enum case for MusicAppDestination.AlbumDescriptor.album(_:))
    {
      (*(v94 + 12))(v52, v48);
      v99 = v381;
      v100 = v353;
      v101 = v375;
      (*(v381 + 32))(v353, v52, v375);
      v102 = *(v99 + 16);
      v103 = v354;
      v102(v354, v100, v101);
      v104 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
      v105 = *(v104 + 48);
      v106 = *(v104 + 64);
      v108 = v390;
      v107 = v391;
      LODWORD(v399) = 1;
      v390[v106] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v380 + 56))(v108, 0, 1, v107);
      *(v108 + v105) = 0;
      swift_storeEnumTagMultiPayload();
      v109 = v398;
      MusicAppDestinationContext.originalURL.getter();
      v110 = v350;
      v102(v350, v103, v101);
      v111 = v389;
      sub_1003F2650(v108, v389, type metadata accessor for ContainerDetail.Source);
      v112 = v109;
      v113 = v395;
      sub_1000089F8(v112, v395, &qword_101183A20, &unk_100EBCF80);
      v102(v38, v110, v101);
      v114 = v343;
      sub_1003F2650(v111, v343, type metadata accessor for ContainerDetail.Source);
      v115 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
      v116 = v345;
      (*(*(v115 - 8) + 56))(v345, 1, 1, v115);
      v117 = v349;
      sub_1000089F8(v113, v349, &qword_101183A20, &unk_100EBCF80);
      v118 = sub_1004E34D0(v38, v114, v116, v117);
      sub_1000095E8(v113, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v111, type metadata accessor for ContainerDetail.Source);
      v119 = *(v381 + 8);
      v120 = v375;
      v119(v350, v375);
      v121 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v122 = sub_100137F64(v118, v121);
      sub_1000095E8(v398, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v108, type metadata accessor for ContainerDetail.Source);
      v119(v354, v120);
      v119(v353, v120);
      (*(v397 + 1))(v386, v96);
      goto LABEL_23;
    }

    if (v98 == enum case for MusicAppDestination.AlbumDescriptor.albumID(_:))
    {
      v214 = v48;
      (*(v94 + 12))(v52, v48);
      v216 = *v52;
      v215 = v52[1];
      v217 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
      v218 = *(v217 + 48);
      v219 = *(v217 + 64);
      v221 = v390;
      v220 = v391;
      LODWORD(v399) = 1;
      v390[v219] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v380 + 56))(v221, 0, 1, v220);
      *(v221 + v218) = 0;
      swift_storeEnumTagMultiPayload();
      v222 = v94;
      v223 = v398;
      MusicAppDestinationContext.originalURL.getter();
      v224 = v389;
      sub_1003F2650(v221, v389, type metadata accessor for ContainerDetail.Source);
      v225 = v395;
      sub_1000089F8(v223, v395, &qword_101183A20, &unk_100EBCF80);
      v226 = sub_1004E4D90(v216, v215, v224, 0, 0, v225);
      v227 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v157 = sub_100137F64(v226, v227);
      sub_1000095E8(v223, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v221, type metadata accessor for ContainerDetail.Source);
      (*(v222 + 1))(v386, v214);
      goto LABEL_35;
    }

    v250 = v48;
    if (v98 == enum case for MusicAppDestination.AlbumDescriptor.song(_:))
    {
      (*(v94 + 12))(v52, v48);
      v251 = v341;
      v252 = *(v341 + 32);
      v253 = v348;
      v394 = v250;
      v254 = v342;
      v252(v348, v52, v342);
      v255 = *(v251 + 16);
      v256 = v347;
      v255(v347, v253, v254);
      v257 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
      v258 = *(v257 + 48);
      v259 = *(v257 + 64);
      v261 = v390;
      v260 = v391;
      LODWORD(v399) = 1;
      v390[v259] = 1;
      swift_storeEnumTagMultiPayload();
      (*(v380 + 56))(v261, 0, 1, v260);
      *(v261 + v258) = 0;
      swift_storeEnumTagMultiPayload();
      v262 = v398;
      MusicAppDestinationContext.originalURL.getter();
      v263 = v340;
      v255(v340, v256, v254);
      v264 = v389;
      sub_1003F2650(v261, v389, type metadata accessor for ContainerDetail.Source);
      v265 = v395;
      sub_1000089F8(v262, v395, &qword_101183A20, &unk_100EBCF80);
      v266 = sub_1004E484C(v263, v264, v265);
      v267 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v122 = sub_100137F64(v266, v267);
      sub_1000095E8(v262, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v261, type metadata accessor for ContainerDetail.Source);
      v268 = *(v251 + 8);
      v268(v347, v254);
      v268(v348, v254);
      (*(v94 + 1))(v386, v394);
      goto LABEL_23;
    }

    if (v98 != enum case for MusicAppDestination.AlbumDescriptor.songID(_:))
    {
      if (qword_10117FC68 != -1)
      {
        swift_once();
      }

      v324 = type metadata accessor for Logger();
      sub_1000060E4(v324, qword_1012194A8);
      v325 = v386;
      v97(v50, v386, v48);
      v326 = Logger.logObject.getter();
      v327 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v326, v327))
      {
        v328 = swift_slowAlloc();
        v399 = swift_slowAlloc();
        *&v404 = v399;
        *v328 = 136446210;
        v97(v336, v50, v48);
        v329 = String.init<A>(describing:)();
        v331 = v330;
        v332 = *(v94 + 1);
        v332(v50, v48);
        v333 = sub_1000105AC(v329, v331, &v404);

        *(v328 + 4) = v333;
        _os_log_impl(&_mh_execute_header, v326, v327, "Unable to navigate to library album: Unknown Descriptor=%{public}s", v328, 0xCu);
        sub_10000959C(v399);

        v325 = v386;
      }

      else
      {

        v332 = *(v94 + 1);
        v332(v50, v48);
      }

      v335 = [objc_allocWithZone(UIViewController) init];
      v332(v325, v48);
      v178 = v335;
      v332(v52, v48);
      goto LABEL_49;
    }

    (*(v94 + 12))(v52, v48);
    v298 = *v52;
    v299 = v52[1];
    v300 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v301 = *(v300 + 48);
    v302 = *(v300 + 64);
    v304 = v390;
    v303 = v391;
    LODWORD(v399) = 1;
    v390[v302] = 1;
    swift_storeEnumTagMultiPayload();
    (*(v380 + 56))(v304, 0, 1, v303);
    *(v304 + v301) = 0;
    swift_storeEnumTagMultiPayload();
    v305 = v94;
    v306 = v398;
    MusicAppDestinationContext.originalURL.getter();
    v307 = v389;
    sub_1003F2650(v304, v389, type metadata accessor for ContainerDetail.Source);
    v308 = v395;
    sub_1000089F8(v306, v395, &qword_101183A20, &unk_100EBCF80);
    v309 = sub_1004E5248(v298, v299, v307, v308);
    v310 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v157 = sub_100137F64(v309, v310);
    sub_1000095E8(v306, &qword_101183A20, &unk_100EBCF80);
    sub_1003F26B8(v304, type metadata accessor for ContainerDetail.Source);
    (*(v305 + 1))(v386, v250);
LABEL_35:
    v178 = v157;
    goto LABEL_50;
  }

  if (!EnumCaseMultiPayload)
  {
    v63 = (v61 + *(sub_10010FC20(&qword_10118E040, &qword_100ECA358) + 48));
    v65 = *v63;
    v64 = v63[1];
    v393 = v65;
    v394 = v64;
    v66 = v397;
    v67 = v387;
    (*(v397 + 4))(v387, v61, v48);
    v68 = *(v66 + 2);
    v68(v58, v67, v48);
    v69 = (*(v66 + 11))(v58, v48);
    if (v69 == enum case for MusicAppDestination.AlbumDescriptor.album(_:))
    {
      (*(v66 + 12))(v58, v48);
      v70 = v381;
      v71 = v351;
      v72 = v375;
      (*(v381 + 32))(v351, v58, v375);
      v73 = *(v70 + 16);
      v74 = v352;
      v73(v352, v71, v72);
      v75 = v357;
      *v357 = 0;
      swift_storeEnumTagMultiPayload();
      v76 = v344;
      MusicAppDestinationContext.originalURL.getter();
      v73(v45, v74, v72);
      v77 = v75;
      v78 = v356;
      sub_1003F2650(v77, v356, type metadata accessor for ContainerDetail.Source);
      sub_1000089F8(v76, v358, &qword_101183A20, &unk_100EBCF80);
      v73(v43, v45, v72);
      sub_1003F2650(v78, v355, type metadata accessor for ContainerDetail.Source);
      v79 = v394;
      if (v394)
      {
        v80 = v346;
        *v346 = v393;
        *(v80 + 8) = v79;
        v81 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      }

      else
      {
        v280 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        v80 = v346;
        (*(*(v280 - 8) + 56))(v346, 1, 1, v280);
      }

      v281 = v358;
      v282 = v398;
      sub_1000089F8(v358, v398, &qword_101183A20, &unk_100EBCF80);
      v283 = sub_1004E34D0(v43, v355, v80, v282);
      sub_1000095E8(v281, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v356, type metadata accessor for ContainerDetail.Source);
      v284 = *(v381 + 8);
      v284(v45, v72);
      v285 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v286 = sub_100137F64(v283, v285);
      sub_1000095E8(v76, &qword_101183A20, &unk_100EBCF80);
      sub_1003F26B8(v357, type metadata accessor for ContainerDetail.Source);
      v284(v352, v72);
      v284(v351, v72);
      (*(v397 + 1))(v387, v48);
      v93 = v286;
      goto LABEL_48;
    }

    v204 = v394;
    if (v69 == enum case for MusicAppDestination.AlbumDescriptor.albumID(_:))
    {
      v205 = v397;
      (*(v397 + 12))(v58, v48);
      v206 = v58[1];
      v392 = *v58;
      v207 = v390;
      *v390 = 0;
      LODWORD(v399) = 1;
      swift_storeEnumTagMultiPayload();
      v208 = v398;
      MusicAppDestinationContext.originalURL.getter();
      v209 = v389;
      sub_1003F2650(v207, v389, type metadata accessor for ContainerDetail.Source);
      v210 = v395;
      sub_1000089F8(v208, v395, &qword_101183A20, &unk_100EBCF80);
      v211 = sub_1004E4D90(v392, v206, v209, v393, v204, v210);
      v212 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v157 = sub_100137F64(v211, v212);
      sub_1000095E8(v208, &qword_101183A20, &unk_100EBCF80);
      v213 = v207;
LABEL_32:
      sub_1003F26B8(v213, type metadata accessor for ContainerDetail.Source);
      (*(v205 + 1))(v387, v48);
      goto LABEL_35;
    }

    v205 = v397;
    if (v69 != enum case for MusicAppDestination.AlbumDescriptor.song(_:))
    {
      v288 = enum case for MusicAppDestination.AlbumDescriptor.songID(_:);
      v289 = v69;

      if (v289 != v288)
      {
        if (qword_10117FC68 != -1)
        {
          swift_once();
        }

        v312 = type metadata accessor for Logger();
        sub_1000060E4(v312, qword_1012194A8);
        v68(v56, v387, v48);
        v313 = Logger.logObject.getter();
        v314 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v313, v314))
        {
          v315 = swift_slowAlloc();
          v399 = swift_slowAlloc();
          *&v404 = v399;
          *v315 = 136446210;
          v68(v336, v56, v48);
          v316 = String.init<A>(describing:)();
          v317 = v205;
          v318 = v316;
          v320 = v319;
          v321 = *(v317 + 1);
          v322 = v48;
          v321(v56, v48);
          v323 = sub_1000105AC(v318, v320, &v404);

          *(v315 + 4) = v323;
          _os_log_impl(&_mh_execute_header, v313, v314, "Unable to navigate to catalog album: Unknown Descriptor=%{public}s", v315, 0xCu);
          sub_10000959C(v399);
        }

        else
        {

          v321 = *(v205 + 1);
          v322 = v48;
          v321(v56, v48);
        }

        v334 = [objc_allocWithZone(UIViewController) init];
        v321(v387, v322);
        v178 = v334;
        v321(v58, v322);
        goto LABEL_49;
      }

      (*(v205 + 12))(v58, v48);
      v290 = *v58;
      v291 = v58[1];
      v292 = v390;
      *v390 = 0;
      LODWORD(v399) = 1;
      swift_storeEnumTagMultiPayload();
      v293 = v398;
      MusicAppDestinationContext.originalURL.getter();
      v294 = v389;
      sub_1003F2650(v292, v389, type metadata accessor for ContainerDetail.Source);
      v295 = v395;
      sub_1000089F8(v293, v395, &qword_101183A20, &unk_100EBCF80);
      v296 = sub_1004E5248(v290, v291, v294, v295);
      v297 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
      v157 = sub_100137F64(v296, v297);
      sub_1000095E8(v293, &qword_101183A20, &unk_100EBCF80);
      v213 = v292;
      goto LABEL_32;
    }

    (*(v205 + 12))(v58, v48);
    v236 = v341;
    v237 = v348;
    v238 = v58;
    v239 = v342;
    (*(v341 + 32))(v348, v238, v342);
    v240 = *(v236 + 16);
    v241 = v347;
    v240(v347, v237, v239);
    v242 = v390;
    *v390 = 0;
    LODWORD(v399) = 1;
    swift_storeEnumTagMultiPayload();
    v243 = v398;
    MusicAppDestinationContext.originalURL.getter();
    v244 = v340;
    v240(v340, v241, v239);
    v245 = v389;
    sub_1003F2650(v242, v389, type metadata accessor for ContainerDetail.Source);
    v246 = v395;
    sub_1000089F8(v243, v395, &qword_101183A20, &unk_100EBCF80);
    v247 = sub_1004E484C(v244, v245, v246);
    v248 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v122 = sub_100137F64(v247, v248);
    sub_1000095E8(v243, &qword_101183A20, &unk_100EBCF80);
    sub_1003F26B8(v242, type metadata accessor for ContainerDetail.Source);
    v249 = *(v236 + 8);
    v249(v347, v239);
    v249(v348, v239);
    (*(v397 + 1))(v387, v48);
LABEL_23:
    v178 = v122;
    goto LABEL_50;
  }

  v129 = sub_10010FC20(&qword_10118E038, &qword_100ECA350);
  v130 = v61 + *(v129 + 48);
  v131 = *v130;
  v132 = *(v130 + 1);
  v133 = *(v129 + 64);
  v134 = v378;
  v135 = v385;
  v136 = v379;
  (*(v378 + 32))(v385, v61, v379);
  v137 = v61 + v133;
  v138 = v383;
  sub_100027998(v137, v383);
  v139 = *(v134 + 16);
  v140 = v373;
  v139(v373, v135, v136);
  v141 = (*(v134 + 88))(v140, v136);
  if (v141 == enum case for MusicAppDestination.PlaylistDescriptor.playlist(_:))
  {
    (*(v134 + 96))(v140, v136);
    v142 = v376;
    v143 = *(v376 + 32);
    v397 = v132;
    v394 = v131;
    v144 = v392;
    v145 = v377;
    v143();
    v146 = *(v142 + 16);
    v147 = v382;
    v148 = v144;
    v149 = v145;
    v146(v382, v148, v145);
    v150 = v390;
    *v390 = 0;
    LODWORD(v399) = 1;
    swift_storeEnumTagMultiPayload();
    v151 = v398;
    MusicAppDestinationContext.originalURL.getter();
    v152 = v374;
    v146(v374, v147, v149);
    v153 = v389;
    sub_1003F2650(v150, v389, type metadata accessor for ContainerDetail.Source);
    v154 = v395;
    sub_1000089F8(v151, v395, &qword_101183A20, &unk_100EBCF80);
    v155 = sub_100866288(v152, v153, v394, v397, v154, 0);
    v156 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v157 = sub_100137F48(v155, v156);
    sub_1000095E8(v151, &qword_101183A20, &unk_100EBCF80);
    sub_1003F26B8(v150, type metadata accessor for ContainerDetail.Source);
    v158 = *(v142 + 8);
    v158(v382, v149);
    v158(v392, v149);
    sub_1000095E8(v383, &qword_101183A20, &unk_100EBCF80);
    (*(v378 + 8))(v385, v379);
    goto LABEL_35;
  }

  if (v141 != enum case for MusicAppDestination.PlaylistDescriptor.playlistID(_:))
  {

    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v269 = type metadata accessor for Logger();
    sub_1000060E4(v269, qword_1012194A8);
    v270 = v339;
    v139(v339, v135, v136);
    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *&v404 = v274;
      *v273 = 136446210;
      v139(v337, v270, v136);
      v275 = String.init<A>(describing:)();
      v277 = v276;
      v278 = *(v134 + 8);
      v278(v270, v136);
      v279 = sub_1000105AC(v275, v277, &v404);

      *(v273 + 4) = v279;
      _os_log_impl(&_mh_execute_header, v271, v272, "Unable to navigate to playlist: Unknown Descriptor=%{public}s", v273, 0xCu);
      sub_10000959C(v274);
      v140 = v373;
    }

    else
    {

      v278 = *(v134 + 8);
      v278(v270, v136);
    }

    v311 = [objc_allocWithZone(UIViewController) init];
    sub_1000095E8(v383, &qword_101183A20, &unk_100EBCF80);
    v278(v385, v136);
    v178 = v311;
    v278(v140, v136);
    goto LABEL_49;
  }

  (*(v134 + 96))(v140, v136);
  v228 = *(v140 + 1);
  v399 = *v140;
  v229 = v134;
  v230 = v398;
  sub_1000089F8(v138, v398, &qword_101183A20, &unk_100EBCF80);
  v231 = v395;
  MusicAppDestinationContext.originalURL.getter();
  v232 = v349;
  sub_1000089F8(v230, v349, &qword_101183A20, &unk_100EBCF80);
  v233 = v338;
  sub_1000089F8(v231, v338, &qword_101183A20, &unk_100EBCF80);
  v234 = sub_100867410(v399, v228, v131, v132, v232, v233);
  v235 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v92 = sub_100137F48(v234, v235);
  sub_1000095E8(v231, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v230, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v383, &qword_101183A20, &unk_100EBCF80);
  (*(v229 + 8))(v385, v379);
LABEL_12:
  v93 = v92;
LABEL_48:
  v178 = v93;
LABEL_49:
  LODWORD(v399) = 1;
LABEL_50:
  MusicAppDestinationContext.presentationSourceID.getter();
  if (*(&v402 + 1))
  {
    v404 = v401;
    v405 = v402;
    v406 = v403;
    if (v399)
    {
      sub_1003F2780(v178, v388, &v404);
    }

    sub_10001621C(&v404);
  }

  else
  {

    sub_1000095E8(&v401, &qword_10118E0A0, &unk_100ECA380);
  }

  return v178;
}

_BYTE *sub_1003F5E64@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1003F5EE4(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003EF714(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003F6020()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100496E88(v0 + 16, v6, v2, v3, v4, v5, v0 + 96);
}

uint64_t sub_1003F60E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1003EF300(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6198(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for ShareURLDescriptor() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_1003EDBD0(a1, v7, v8, v2 + v6, v9);
}

uint64_t sub_1003F62B8(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for MusicFriendsInviteDescriptor() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_1003ED7B8(v11, a1, v7, v8, v2 + v6, v9);
}

uint64_t sub_1003F63D8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1003F64B8(uint64_t a1, __n128 a2)
{
  v5 = *(type metadata accessor for SocialProfileDescriptor() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_1003ED4A4(a1, v7, v8, v2 + v6, v9);
}

uint64_t sub_1003F65D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1003ED1D0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1003EC76C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6738()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100451F84(v2, v3);
}

double sub_1003F679C()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100452004(v3, v0 + v2, v4);
}

uint64_t sub_1003F682C(uint64_t a1)
{
  v4 = *(type metadata accessor for Actions.Collaborate.Context(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1003EC444(a1, v6, v7, v1 + v5);
}

uint64_t sub_1003F691C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003F696C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1003E9B2C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1003F6A1C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1003E4EF4(v0);
}

uint64_t sub_1003F6AB4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_1003E51DC(v0);
}

uint64_t sub_1003F6B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1003E4DE4(a1, v4, v5, v6);
}

void sub_1003F6C04(uint64_t a1, __n128 a2)
{
  if (!qword_10118E208)
  {
    type metadata accessor for PlaylistAddableItem();
    v2 = type metadata accessor for Array();
    if (!v3)
    {
      atomic_store(v2, &qword_10118E208);
    }
  }
}

uint64_t _s16PlaybackControlsVMa(uint64_t a1)
{
  result = qword_10118E358;
  if (!qword_10118E358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003F6CEC(uint64_t a1)
{
  sub_100266B58(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1003F6DF8(319);
    if (v2 <= 0x3F)
    {
      sub_100266B58(319, &qword_10118E378, &qword_10118E380, qword_100ECA620, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1003F6EA8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003F6DF8(uint64_t a1)
{
  if (!qword_10118E368)
  {
    sub_1003F6E54();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_10118E368);
    }
  }
}

unint64_t sub_1003F6E54()
{
  result = qword_10118E370;
  if (!qword_10118E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E370);
  }

  return result;
}

void sub_1003F6EA8(uint64_t a1)
{
  if (!qword_10118E388)
  {
    type metadata accessor for RedactionReasons();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10118E388);
    }
  }
}

uint64_t sub_1003F6F1C(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10010FC20(&qword_10118E3C0, &qword_100ECA678);
  __chkstk_darwin();
  v9 = &v19[-v8];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4030000000000000;
  v9[16] = 0;
  v10 = sub_10010FC20(&qword_10118E3C8, &qword_100ECA680);
  sub_1003F7174(v2, &v9[*(v10 + 44)]);
  v11 = *(v2 + 24);
  if (*(v2 + 32) != 1)
  {

    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v15 = sub_10027AC30(v11, 0, v14);
    (*(v4 + 8))(v6, v3, v15);
    LOBYTE(v11) = v19[15];
  }

  if ((v11 & 0xFE) == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = (v11 & 1) == 0;
  }

  v17 = sub_100020674(&qword_10118E3D0, &qword_10118E3C0, &qword_100ECA678, &protocol conformance descriptor for HStack<A>);
  View.playIntentButtonMaterial(_:)(v16, v7, v17);
  return sub_1000095E8(v9, &qword_10118E3C0, &qword_100ECA678);
}

uint64_t sub_1003F7174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  *&v53 = *(_s16PlaybackControlsVMa(0) - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin();
  v59 = sub_10010FC20(&qword_10118E3D8, &qword_100ECA688);
  __chkstk_darwin();
  v61 = (&v53 - v4);
  v60 = sub_10010FC20(&qword_10118E3E0, &qword_100ECA690);
  __chkstk_darwin();
  v58 = &v53 - v5;
  v54 = sub_10010FC20(&qword_10118E3E8, &qword_100ECA698);
  __chkstk_darwin();
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v53 - v7;
  __chkstk_darwin();
  v57 = &v53 - v8;
  __chkstk_darwin();
  v10 = &v53 - v9;
  v11 = type metadata accessor for RedactionReasons();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v53 - v15;
  sub_10056CF14((&v53 - v15));
  static RedactionReasons.placeholder.getter();
  sub_1003F82B8();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v17 = *(v12 + 8);
  v17(v14, v11);
  v17(v16, v11);
  if (v66 == v63)
  {
    v18 = type metadata accessor for RoundedRectangle();
    v19 = *(v18 + 20);
    v20 = enum case for RoundedCornerStyle.continuous(_:);
    v21 = type metadata accessor for RoundedCornerStyle();
    v22 = *(*(v21 - 8) + 104);
    v22(&v10[v19], v20, v21);
    __asm { FMOV            V0.2D, #10.0 }

    v53 = _Q0;
    *v10 = _Q0;
    v28 = objc_opt_self();
    v29 = [v28 tertiarySystemFillColor];
    v30 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    v32 = sub_10010FC20(&qword_10118E408, &unk_100ED5300);
    v33 = &v10[*(v32 + 36)];
    *v33 = KeyPath;
    v33[1] = v30;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = v54;
    v35 = &v10[*(v54 + 36)];
    v36 = v64;
    *v35 = v63;
    *(v35 + 1) = v36;
    *(v35 + 2) = v65;
    v37 = v57;
    v22(&v57[*(v18 + 20)], v20, v21);
    *v37 = v53;
    v38 = [v28 tertiarySystemFillColor];
    v39 = Color.init(_:)();
    v40 = swift_getKeyPath();
    v41 = (v37 + *(v32 + 36));
    *v41 = v40;
    v41[1] = v39;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = (v37 + *(v34 + 36));
    v43 = v67;
    *v42 = v66;
    v42[1] = v43;
    v42[2] = v68;
    v44 = v55;
    sub_1000089F8(v10, v55, &qword_10118E3E8, &qword_100ECA698);
    v45 = v56;
    sub_1000089F8(v37, v56, &qword_10118E3E8, &qword_100ECA698);
    v46 = v58;
    sub_1000089F8(v44, v58, &qword_10118E3E8, &qword_100ECA698);
    v47 = sub_10010FC20(&qword_10118E410, &unk_100ECA6E0);
    sub_1000089F8(v45, v46 + *(v47 + 48), &qword_10118E3E8, &qword_100ECA698);
    sub_1000095E8(v45, &qword_10118E3E8, &qword_100ECA698);
    sub_1000095E8(v44, &qword_10118E3E8, &qword_100ECA698);
    sub_1000089F8(v46, v61, &qword_10118E3E0, &qword_100ECA690);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E400, &qword_10118E3E0, &qword_100ECA690, &protocol conformance descriptor for TupleView<A>);
    sub_100218D98();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v46, &qword_10118E3E0, &qword_100ECA690);
    sub_1000095E8(v37, &qword_10118E3E8, &qword_100ECA698);
    return sub_1000095E8(v10, &qword_10118E3E8, &qword_100ECA698);
  }

  else
  {
    v49 = *(a1 + 16);
    sub_1003F8570(a1, &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), _s16PlaybackControlsVMa);
    v50 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v51 = swift_allocObject();
    sub_1003F8498(&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v50, _s16PlaybackControlsVMa);
    v52 = v61;
    *v61 = v49;
    v52[1] = sub_1003F8310;
    v52[2] = v51;
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E400, &qword_10118E3E0, &qword_100ECA690, &protocol conformance descriptor for TupleView<A>);
    sub_100218D98();

    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_1003F78D0(char a1, uint64_t a2)
{
  v4 = *(_s16PlaybackControlsVMa(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1003F8570(a2, v6, _s16PlaybackControlsVMa);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = v11 + v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_1003F8498(v6, v13 + v11, _s16PlaybackControlsVMa);
  *(v13 + v12) = a1;
  sub_1001F4CB8(0, 0, v8, &unk_100ECA6F8, v13);

  return result;
}

uint64_t sub_1003F7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 248) = a5;
  *(v5 + 136) = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v5 + 144) = swift_task_alloc();
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  *(v5 + 152) = swift_task_alloc();
  v6 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v5 + 160) = v6;
  v7 = *(v6 - 8);
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 + 64);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = type metadata accessor for MainActor();
  *(v5 + 216) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 224) = v9;
  *(v5 + 232) = v8;

  return _swift_task_switch(sub_1003F7C44, v9, v8);
}

uint64_t sub_1003F7C44()
{
  v1 = *(v0 + 136);
  if (*v1)
  {
    v10 = (*v1 + **v1);
    v2 = swift_task_alloc();
    *(v0 + 240) = v2;
    *v2 = v0;
    v2[1] = sub_1003F7E00;
    v3 = *(v0 + 152);
    v4 = *(v0 + 248);

    return v10(v3, v4);
  }

  else
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);

    (*(v7 + 56))(v8, 1, 1, v6);
    sub_1000095E8(*(v0 + 152), &qword_1011848A0, &unk_100EC64F0);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1003F7E00()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1003F7F20, v3, v2);
}

uint64_t sub_1003F7F20()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011848A0, &unk_100EC64F0);
  }

  else
  {
    v4 = *(v0 + 248);
    sub_1003F8498(*(v0 + 152), *(v0 + 200), type metadata accessor for PlaybackIntentDescriptor);
    _StringGuts.grow(_:)(27);

    v5 = "PlayIntentButton.sing";
    v6 = 0xD000000000000018;
    if (v4 != 1)
    {
      v6 = 0xD000000000000015;
      v5 = "Header.PlaybackControls: ";
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = "PlayIntentButton.shuffle";
    }

    v9 = *(v0 + 200);
    v10 = *(v0 + 160);
    v11 = *(v0 + 248);
    v12 = v8 | 0x8000000000000000;
    String.append(_:)(*&v7);

    v14 = 0xD000000000000019;
    v13 = 0x8000000100E419C0;
    PlaybackIntentDescriptor.configure(for:)(v11);
    v15 = v9 + *(v10 + 32);
    if (*(v15 + 24))
    {
      sub_100008FE4(v9 + *(v10 + 32), v0 + 56);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      sub_10000954C((v0 + 56), v17);
      *(v0 + 120) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 128) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 96) = 0xD000000000000019;
      *(v0 + 104) = 0x8000000100E419C0;

      v18 = Player.CommandIssuer.appending(_:)(v0 + 96, v17, v16);
      v20 = v19;
      sub_10000959C((v0 + 96));
      sub_10000959C((v0 + 56));
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
      if (v20)
      {

        v14 = v18;
        v13 = v20;
      }
    }

    else
    {
      *(v0 + 40) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
    }

    v21 = *(v0 + 200);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);
    *(v0 + 16) = v14;
    *(v0 + 24) = v13;
    sub_1003F8500(v0 + 16, v15);
    sub_1003F8570(v21, v22, type metadata accessor for PlaybackIntentDescriptor);
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    sub_1003F8570(v22, v23, type metadata accessor for PlaybackIntentDescriptor);
    v27 = static MainActor.shared.getter();
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = &protocol witness table for MainActor;
    sub_1003F8498(v23, v29 + v28, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v25, &unk_100ECA700, v29);

    sub_100188CDC(v22);
    sub_100188CDC(v21);
  }

  v30 = *(v0 + 8);

  return v30();
}

unint64_t sub_1003F82B8()
{
  result = qword_10118E3F0;
  if (!qword_10118E3F0)
  {
    type metadata accessor for RedactionReasons();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E3F0);
  }

  return result;
}

double sub_1003F8310(char a1)
{
  v3 = *(_s16PlaybackControlsVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003F78D0(a1, v4);
}

uint64_t sub_1003F8380(uint64_t a1)
{
  v4 = *(_s16PlaybackControlsVMa(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003F7AB8(a1, v5, v6, v7, v8);
}

uint64_t sub_1003F8498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F8500(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183910, &unk_100EBDD00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F8570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003F85D8()
{
  result = qword_10118E418;
  if (!qword_10118E418)
  {
    sub_1001109D0(&qword_10118E420, &qword_100ECA710);
    sub_100020674(&qword_10118E3D0, &qword_10118E3C0, &qword_100ECA678, &protocol conformance descriptor for HStack<A>);
    sub_100020674(&qword_10118E428, &qword_10118E430, qword_100ECA718, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E418);
  }

  return result;
}

unint64_t sub_1003F86C0()
{
  result = qword_10118E450;
  if (!qword_10118E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E450);
  }

  return result;
}

unint64_t sub_1003F8718()
{
  result = qword_10118E458;
  if (!qword_10118E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E458);
  }

  return result;
}

unint64_t sub_1003F8770()
{
  result = qword_10118E460;
  if (!qword_10118E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E460);
  }

  return result;
}

unint64_t sub_1003F87C8()
{
  result = qword_10118E468;
  if (!qword_10118E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E468);
  }

  return result;
}

uint64_t sub_1003F8888()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100006080(v0, qword_101218BC0);
  sub_1000060E4(v0, qword_101218BC0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1003F88EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[13] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_10010FC20(&qword_10118E480, &unk_100ECA8C0);
  v3[18] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v6;
  v3[24] = v5;

  return _swift_task_switch(sub_1003F8AC8, v6, v5);
}

uint64_t sub_1003F8AC8(uint64_t a1)
{
  IntentParameter.wrappedValue.getter();
  v3 = v1[2];
  v2 = v1[3];
  v1[25] = v2;
  v4 = swift_task_alloc();
  v1[26] = v4;
  *v4 = v1;
  v4[1] = sub_1003F8B78;
  v5 = v1[18];

  return sub_1003F9978(v5, v3, v2);
}

uint64_t sub_1003F8B78()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1003F9518;
  }

  else
  {

    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_1003F8C94;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003F8C94(__n128 a1)
{
  v34 = v1;
  v2 = *(v1 + 144);
  v3 = type metadata accessor for MusicPin.Item();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v1 + 160);
    v6 = *(v1 + 120);
    v7 = *(v1 + 128);
    sub_1000095E8(v2, &qword_10118E480, &unk_100ECA8C0);
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  else
  {
    IntentParameter.wrappedValue.getter();
    v8 = *(v1 + 240);
    if (qword_10117F6D8 != -1)
    {
      v30 = *(v1 + 240);
      swift_once();
      v8 = v30;
    }

    v9 = *(v1 + 144);
    sub_10042BAAC(v9, v8, *(v1 + 160));
    (*(v4 + 8))(v9, v3);
  }

  v10 = *(v1 + 168);
  v11 = *(v1 + 152);
  v12 = *(v1 + 120);
  v13 = *(v1 + 128);
  sub_1003FAC48(*(v1 + 160), v10);
  sub_1003FACB8(v10, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v14 = *(v1 + 152);

    sub_1000095E8(v14, &unk_10118CDB0, &unk_100EC0360);
    if (qword_10117F698 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_10118E438);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create playbackIntent", v18, 2u);
    }

    static IntentResult.result<>()();
    sub_1000095E8(*(v1 + 168), &unk_10118CDB0, &unk_100EC0360);

    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    v22 = *(v1 + 128);
    v21 = *(v1 + 136);
    v23 = *(v1 + 112);
    v24 = *(v1 + 120);
    v25 = *(v1 + 104);
    (*(v22 + 32))(v21, *(v1 + 152), v24);
    v26 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v27 = String._bridgeToObjectiveC()();
    [v26 setPlayActivityFeatureName:v27];

    (*(v22 + 16))(v25, v21, v24);
    swift_storeEnumTagMultiPayload();
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v33[3] = &type metadata for Player.CommandIssuerIdentity;
    v33[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v33[0] = 0xD000000000000018;
    v33[1] = 0x8000000100ECA860;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v25, v31, 2, 1, 0, 1, 0, 1, v23, 0, v33);
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v28 = swift_task_alloc();
    *(v1 + 224) = v28;
    *v28 = v1;
    v28[1] = sub_1003F9198;
    v29 = *(v1 + 112);

    return PlaybackController.add(_:route:)(v29, 0);
  }
}

uint64_t sub_1003F9198()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1003F9734;
  }

  else
  {
    v5 = sub_1003F92D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003F92D4()
{
  v14 = v0;

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_10118E438);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    IntentParameter.wrappedValue.getter();
    v6 = sub_1000105AC(v0[6], v0[7], &v13);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Added new playback intent for item: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  static IntentResult.result<>()();
  sub_100188CDC(v10);
  (*(v8 + 8))(v7, v9);
  sub_1000095E8(v0[21], &unk_10118CDB0, &unk_100EC0360);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003F9518()
{
  v13 = v0;

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_10118E438);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[8] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create playbackIntent with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003F9734()
{
  v15 = v0;

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_10118E438);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136446210;
    IntentParameter.wrappedValue.getter();
    v6 = sub_1000105AC(v0[4], v0[5], &v14);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add new playback intent for item: %{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v7 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  swift_willThrow();
  sub_100188CDC(v11);
  (*(v9 + 8))(v8, v10);
  sub_1000095E8(v7, &unk_10118CDB0, &unk_100EC0360);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003F9978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for GenericMusicItem();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicSiriItemResponse();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_10010FC20(&qword_10118E488, &qword_100ECA8E0);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for MusicSiriItemRequest();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003F9B44, 0, 0);
}

uint64_t sub_1003F9B44()
{
  v1 = v0[13];

  MusicSiriItemRequest.init(siriRepresentationID:)();
  v2 = enum case for MusicDataRequest.Source.widgets(_:);
  v3 = type metadata accessor for MusicDataRequest.Source();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  MusicSiriItemRequest.source.setter();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1003F9C9C;
  v6 = v0[12];

  return MusicSiriItemRequest.response()(v6);
}

uint64_t sub_1003F9C9C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1003FA534;
  }

  else
  {
    v2 = sub_1003F9DB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003F9DB0()
{
  v85 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  MusicSiriItemResponse.item.getter();
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for GenericMusicItem.album(_:))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    v8 = v0[8];
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v6 + 8))(v5, v7);
    (*(v10 + 96))(v8, v9);
    v12 = type metadata accessor for Album();
    (*(*(v12 - 8) + 32))(v11, v8, v12);
    v13 = &enum case for MusicPin.Item.album(_:);
LABEL_11:
    v42 = *v13;
    v43 = type metadata accessor for MusicPin.Item();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v11, v42, v43);
    (*(v44 + 56))(v11, 0, 1, v43);
    goto LABEL_12;
  }

  if (v4 == enum case for GenericMusicItem.artist(_:))
  {
    v15 = v0[15];
    v14 = v0[16];
    v16 = v0[14];
    v17 = v0[8];
    v18 = v0[5];
    v19 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v15 + 8))(v14, v16);
    (*(v19 + 96))(v17, v18);
    v20 = type metadata accessor for Artist();
    (*(*(v20 - 8) + 32))(v11, v17, v20);
    v13 = &enum case for MusicPin.Item.artist(_:);
    goto LABEL_11;
  }

  if (v4 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    v24 = v0[8];
    v25 = v0[5];
    v26 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v22 + 8))(v21, v23);
    (*(v26 + 96))(v24, v25);
    v27 = type metadata accessor for MusicVideo();
    (*(*(v27 - 8) + 32))(v11, v24, v27);
    v13 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_11;
  }

  if (v4 == enum case for GenericMusicItem.playlist(_:))
  {
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[14];
    v31 = v0[8];
    v32 = v0[5];
    v33 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v29 + 8))(v28, v30);
    (*(v33 + 96))(v31, v32);
    v34 = type metadata accessor for Playlist();
    (*(*(v34 - 8) + 32))(v11, v31, v34);
    v13 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_11;
  }

  if (v4 == enum case for GenericMusicItem.song(_:))
  {
    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[14];
    v38 = v0[8];
    v39 = v0[5];
    v40 = v0[6];
    v11 = v0[2];
    (*(v0[10] + 8))(v0[12], v0[9]);
    (*(v36 + 8))(v35, v37);
    (*(v40 + 96))(v38, v39);
    v41 = type metadata accessor for Song();
    (*(*(v41 - 8) + 32))(v11, v38, v41);
    v13 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_11;
  }

  if (qword_10117F698 != -1)
  {
    swift_once();
  }

  v47 = v0[11];
  v48 = v0[12];
  v49 = v0[9];
  v50 = v0[10];
  v51 = type metadata accessor for Logger();
  sub_1000060E4(v51, qword_10118E438);
  (*(v50 + 16))(v47, v48, v49);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  v54 = os_log_type_enabled(v52, v53);
  v56 = v0[15];
  v55 = v0[16];
  v57 = v0[14];
  v58 = v0[11];
  v59 = v0[12];
  v60 = v0[9];
  v61 = v0[10];
  if (v54)
  {
    v82 = v0[14];
    v83 = v0[16];
    v63 = v0[6];
    v62 = v0[7];
    log = v52;
    v64 = v0[5];
    v77 = v0[9];
    v65 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v84 = v81;
    *v65 = 136315138;
    v79 = v53;
    MusicSiriItemResponse.item.getter();
    sub_1003FAD28();
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v59;
    v68 = v67;
    (*(v63 + 8))(v62, v64);
    v69 = *(v61 + 8);
    v69(v58, v77);
    v70 = sub_1000105AC(v66, v68, &v84);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, log, v79, "Cannot play non MusicPin.Item=%s", v65, 0xCu);
    sub_10000959C(v81);

    v69(v80, v77);
    (*(v56 + 8))(v83, v82);
  }

  else
  {

    v71 = *(v61 + 8);
    v71(v58, v60);
    v71(v59, v60);
    (*(v56 + 8))(v55, v57);
  }

  v72 = v0[8];
  v73 = v0[5];
  v74 = v0[6];
  v75 = v0[2];
  v76 = type metadata accessor for MusicPin.Item();
  (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
  (*(v74 + 8))(v72, v73);
LABEL_12:

  v45 = v0[1];

  return v45();
}

uint64_t sub_1003FA534()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003FA5F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000060E4(v2, qword_101218BC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003FA6B0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1003F88EC(a1, v5, v4);
}

uint64_t sub_1003FA75C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003FA834();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1003FA784(uint64_t a1)
{
  v2 = sub_1003F8718();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1003FA7D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10118E438);
  sub_1000060E4(v0, qword_10118E438);
  return static Logger.music(_:)(0xD000000000000018, 0x8000000100ECA860);
}

uint64_t sub_1003FA834()
{
  sub_10010FC20(&qword_10118E470, &qword_100ECA8A8);
  __chkstk_darwin();
  v28 = v20 - v0;
  v25 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v25 - 8);
  __chkstk_darwin();
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101182C10, &qword_100EBE770);
  __chkstk_darwin();
  v5 = v20 - v4;
  sub_10010FC20(&qword_101182C18, &qword_100EBE778);
  __chkstk_darwin();
  v7 = v20 - v6;
  sub_10010FC20(&qword_101182C20, &qword_100EBE780);
  __chkstk_darwin();
  v9 = v20 - v8;
  v27 = sub_10010FC20(&qword_101182C28, &qword_100EBE788);
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  v26 = *(v11 + 56);
  v24 = v11 + 56;
  v26(v9, 1, 1, v10);
  v12 = type metadata accessor for String.IntentInputOptions();
  v29 = 0;
  v30 = 0;
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = type metadata accessor for IntentDialog();
  v14 = *(v13 - 8);
  v22 = *(v14 + 56);
  v23 = v14 + 56;
  v22(v5, 1, 1, v13);
  v15 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v1 + 104);
  v20[1] = v1 + 104;
  v21 = v16;
  v17 = v25;
  v16(v3, enum case for InputConnectionBehavior.default(_:), v25);
  v27 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10010FC20(&qword_10118E478, &qword_100ECA8B0);
  v26(v9, 1, 1, v10);
  LOBYTE(v29) = 2;
  v18 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  v22(v5, 1, 1, v13);
  v21(v3, v15, v17);
  IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v27;
}

uint64_t sub_1003FAC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FACB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003FAD28()
{
  result = qword_101186698;
  if (!qword_101186698)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101186698);
  }

  return result;
}

void sub_1003FAD80(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    if (v4)
    {
      sub_1003FB264();
      v5 = a1;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v8 = a1;
    }

    v9 = [a1 superview];
    if (v9)
    {
      v10 = v9;
      sub_1003FB264();
      v11 = v2;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        [a1 removeFromSuperview];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  v13 = *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
  if (v13)
  {
    v18 = v13;
    v14 = [v18 superview];
    if (!v14 || (v15 = v14, sub_1003FB264(), v16 = v2, v17 = static NSObject.== infix(_:_:)(), v15, v16, (v17 & 1) == 0))
    {
      [v2 addSubview:v18];
    }
  }
}

id sub_1003FB0D4(void *a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *&v2[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = 0;
  v9.receiver = v2;
  v9.super_class = _s10HeaderCellCMa();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1003FB1A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s10HeaderCellCMa();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1003FB264()
{
  result = qword_101181620;
  if (!qword_101181620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101181620);
  }

  return result;
}

void sub_1003FB2B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = Strong;
      v6 = *(Strong + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded);
      if (*(v6 + 16) > a1)
      {
        v7 = *(v6 + 48 * a1 + 32);
        v8 = [v7 album];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 orphanMusicVideo];

          if (v10)
          {
            v11 = *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController];
            if (v11)
            {
              v12 = [v11 playbackManager];
              swift_beginAccess();
              v13 = swift_unknownObjectWeakLoadStrong();
              v14 = v10;
              if (v13)
              {
                v15 = [v13 playActivityFeatureName];
              }

              else
              {
                v15 = 0;
              }

              [v12 initiatePlaybackForSong:v14 lastResponse:0 shuffled:0 forceScopingToResponseResults:0 playActivityFeatureName:v15];

              swift_unknownObjectRelease();
            }

            swift_beginAccess();
            v29 = swift_unknownObjectWeakLoadStrong();
            if (!v29)
            {
              goto LABEL_33;
            }

            v30 = v29;
            v31 = [v29 navigationController];

            if (!v31)
            {
              goto LABEL_33;
            }

            type metadata accessor for CarPlayRootNavigationController();
            if (swift_dynamicCastClass())
            {
              sub_1001D3268(0, 1);
              v28 = v31;
              v24 = v7;
            }

            else
            {
              v28 = v10;
              v24 = v7;
              v10 = v31;
            }

            goto LABEL_31;
          }
        }

        v16 = [v7 type];
        if (v16 == 1)
        {
          v22 = [v7 song];
          if (!v22)
          {
            goto LABEL_34;
          }

          v23 = v22;
          v18 = [v22 album];

          if (!v18)
          {
            goto LABEL_34;
          }

          v21 = [objc_allocWithZone(type metadata accessor for MCDItemDetailViewController()) initWithAlbum:v18 onlyDownloaded:v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_onlyShowDownloaded] preferCatalog:0];
        }

        else
        {
          if (v16 == 2)
          {
            v20 = [v7 album];
            if (!v20)
            {
              goto LABEL_34;
            }

            v18 = v20;
            v19 = &selRef_initWithAlbum_onlyDownloaded_preferCatalog_;
          }

          else
          {
            if (v16 != 4)
            {
              goto LABEL_34;
            }

            v17 = [v7 playlist];
            if (!v17)
            {
              goto LABEL_34;
            }

            v18 = v17;
            v19 = &selRef_initWithPlaylist_onlyDownloaded_preferCatalog_;
          }

          v21 = [objc_allocWithZone(type metadata accessor for MCDItemDetailViewController()) *v19];
        }

        v24 = v21;

        if (v24)
        {
          swift_beginAccess();
          v25 = swift_unknownObjectWeakLoadStrong();
          [v24 setPlayActivityFeatureNameSourceViewController:v25];

          swift_beginAccess();
          v26 = swift_unknownObjectWeakLoadStrong();
          if (!v26)
          {
            goto LABEL_32;
          }

          v27 = v26;
          v28 = [v26 navigationController];

          if (!v28)
          {
            goto LABEL_32;
          }

          [v28 pushViewController:v24 animated:1];
          v10 = v7;
LABEL_31:
          v7 = v10;

LABEL_32:
          v10 = v5;
          v5 = v24;
LABEL_33:
        }

LABEL_34:

        return;
      }
    }

    __break(1u);
  }
}

double sub_1003FB68C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

char *sub_1003FB6E0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController] = 0;
  *&v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded] = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_onlyShowDownloaded] = a2;
  v11 = &v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_updateHandler];
  *v11 = a3;
  v11[1] = a4;
  v25.receiver = v5;
  v25.super_class = ObjectType;

  v12 = objc_msgSendSuper2(&v25, "init");
  v13 = objc_allocWithZone(MCDRecentlyAddedDataSource);
  v14 = v12;
  v15 = [v13 init];
  if (a1)
  {
    v16 = [a1 traitCollection];
    v17 = [v16 shouldLimitMusicLists];
  }

  else
  {
    v17 = 0;
  }

  result = [objc_allocWithZone(MCDLibraryPlaybackManager) initWithDelegate:0];
  if (result)
  {
    v19 = result;
    v20 = objc_allocWithZone(MCDLibraryContentManager);
    v21 = v14;
    LOBYTE(v24) = 1;
    v22 = [v20 initWithDataSource:v15 limitedUI:v17 showLocalContent:a2 & 1 delegate:v21 viewController:a1 playbackManager:v19 shouldPerformRequestImmediately:v24];

    v23 = *&v21[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController];
    *&v21[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAddedResponseController] = v22;

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003FB8D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded;

  sub_10047C95C(v4, a1);
  LOBYTE(a1) = v5;

  if (a1)
  {
    return;
  }

  v23 = v1;
  v6 = *(v1 + v3);
  v7 = *(v6 + 16);

  v8 = 0;
  v9 = v6 + 72;
LABEL_3:
  v10 = (v9 + 48 * v8);
  while (v7 != v8)
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v13 = *(v10 - 5);
    v14 = *(v10 - 4);
    v15 = *v10;
    if (*(v10 - 2))
    {

      v16 = v13;
      v17 = v14;
      v18 = String._bridgeToObjectiveC()();

      if (!v15)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v19 = v13;
      v20 = v14;
      v18 = 0;
      if (!v15)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_5;
      }
    }

    v11 = String._bridgeToObjectiveC()();

LABEL_5:
    ++v8;
    v10 += 6;
    v12 = [objc_allocWithZone(CPUIImageRowCellItemConfiguration) initWithArtworkCatalog:v14 title:v18 subtitle:v11];

    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v6 + 72;
      goto LABEL_3;
    }
  }

  v21 = *(v23 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels);
  *(v23 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels) = _swiftEmptyArrayStorage;
  v22 = *(v23 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_updateHandler);

  v22(v23, v21, _swiftEmptyArrayStorage);
}

id sub_1003FBBCC(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifiers];
  v4 = [v2 identifiers];
  v5 = [v3 intersectsSet:v4];

  return v5;
}

void *sub_1003FBD30(void *a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100009F78(0, &qword_10118E538, CPUIImageRowCellItemConfiguration_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = sub_1003FBF3C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003FB68C;
  aBlock[3] = &unk_1010AAE20;
  v7 = _Block_copy(aBlock);

  LOBYTE(v10) = 1;
  v8 = [objc_opt_self() configurationWithText:0 itemsConfigurations:isa maximumNumberOfLines:3 contentInsets:v7 lineSpacing:0 selectGridItemBlock:0 selectTitleBlock:0.0 showActivityIndicator:8.0 enabled:0.0 bundleIdentifier:{0.0, 16.0, v10, 0}];
  _Block_release(v7);

  [a1 applyConfiguration:v8];
  [a1 invalidateIntrinsicContentSize];

  return a1;
}

void sub_1003FBF44(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v6 = a1;
  v7 = [v6 artworkCatalog];
  v8 = [v6 type];
  if (v8 <= 3)
  {
    if (v8 == 1)
    {
      v16 = [v6 song];
      if (v16 && (v17 = v16, v18 = [v16 title], v17, v18))
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v19;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = [v6 song];

      if (v15)
      {
        v24 = [v15 artist];

        if (v24)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }

LABEL_30:
      v24 = 0;
      if (v7)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    if (v8 == 2)
    {
      v9 = [v6 album];
      if (v9 && (v10 = v9, v11 = [v9 representativeTitle], v10, v11))
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v12 = String.init(localized:table:bundle:locale:comment:)();
        v14 = v23;
      }

      v15 = [v6 album];

      if (v15)
      {
        v24 = [v15 artist];

        if (v24)
        {
LABEL_27:
          v25 = [v24 name];

          if (v25)
          {
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v26;

            if (v7)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

          goto LABEL_42;
        }

LABEL_32:
        v15 = 0;
        if (v7)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      goto LABEL_30;
    }

    goto LABEL_11;
  }

  if (v8 == 4)
  {
    if (v7)
    {
      goto LABEL_39;
    }

    v20 = [v6 playlist];
    if (v20 && ((v21 = v20, v22 = [v20 type], v21, v22 == 1) || v22 == 3))
    {
      v30 = objc_opt_self();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v30 placeholderCatalogWithSymbolName:v28];
    }

    else
    {
      v27 = [v6 playlist];
      if (!v27)
      {
        v7 = 0;
        goto LABEL_39;
      }

      v28 = v27;
      v29 = [v27 tracksTiledArtworkCatalogWithRows:2 columns:2];
    }

    v7 = v29;

LABEL_39:
    v12 = [v6 playlist];

    if (v12)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  if (v8 != 13)
  {
LABEL_11:

    v15 = 0;
LABEL_44:
    v24 = 0;
    v12 = 0;
    v14 = 0;
    if (v7)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v12 = [v6 radioStation];

  if (v12)
  {
LABEL_40:
    v15 = [v12 name];

    if (v15)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v31;

LABEL_42:
      v15 = 0;
      v24 = 0;
      if (v7)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_46:
  v15 = 0;
  v24 = 0;
  v14 = 0;
  if (v7)
  {
    goto LABEL_49;
  }

LABEL_47:
  v7 = [objc_opt_self() defaultPlaceholderForTraitCollection:a2];
  if (!v7)
  {

    v6 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v24 = 0;
    goto LABEL_50;
  }

  v32 = objc_opt_self();
  v33 = v7;
  v7 = [v32 staticArtworkCatalogWithImage:v33];

LABEL_49:
LABEL_50:
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v12;
  a3[3] = v14;
  a3[4] = v15;
  a3[5] = v24;
}

double sub_1003FC51C(void *a1)
{
  v1 = [a1 itemsInSectionAtIndex:0];
  sub_100009F78(0, &unk_101186F00, MPModelObject_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v29[0] = _swiftEmptyArrayStorage;
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E99CC(v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = *&v29[0];
  }

  while (v4 != v3);
LABEL_21:

  if (v5 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    v27 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007E99B8(v10, v5);
      }

      else
      {
        if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v14 = *(v5 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v18 = Strong, v13 = [Strong traitCollection], v18, !v13))
      {
        v13 = [objc_opt_self() currentTraitCollection];
      }

      sub_1003FBF44(v15, v13, v29);
      ++v10;
      if (*&v29[0])
      {
        v26 = v29[0];
        v24 = v29[2];
        v25 = v29[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10049A30C(0, *(v27 + 2) + 1, 1, v27);
        }

        v20 = *(v27 + 2);
        v19 = *(v27 + 3);
        v21 = v26;
        if (v20 >= v19 >> 1)
        {
          v23 = sub_10049A30C((v19 > 1), v20 + 1, 1, v27);
          v21 = v26;
          v27 = v23;
        }

        *(v27 + 2) = v20 + 1;
        v22 = &v27[48 * v20];
        *(v22 + 2) = v21;
        *(v22 + 3) = v25;
        *(v22 + 4) = v24;
        v10 = v16;
        if (i == v16)
        {
          goto LABEL_24;
        }
      }

      else if (i == v10)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_24:

  v11 = *(v28 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded);
  *(v28 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_recentlyAdded) = v27;
  sub_1003FB8D8(v11);

  return result;
}

uint64_t sub_1003FC8E4(uint64_t a1)
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  sub_1003FFBE8();
  dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v5 = v13;
  if (v13 == v11)
  {
    return 0;
  }

  v6 = (v2 + 16);
  v7 = (v2 + 8);
  while (1)
  {
    v8 = dispatch thunk of Collection.subscript.read();
    (*v6)(v4);
    (v8)(&v11, 0);
    sub_1003FFC4C();
    LOBYTE(v8) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v7)(v4, v1);
    if (v8)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v5 = v13;
    if (v13 == v11)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_1003FCB28(uint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = a3(v10, a2);
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v11 = *(a2 + 8 * v10 + 32);
    }

    v12 = v11;
    sub_100009F78(0, a4, a5);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      return v10;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1003FCC44(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    while (1)
    {
      v6 = *(v5 + v4);
      if (v6 == 1)
      {
        v7 = 0x73746E65636572;
      }

      else
      {
        v7 = 0x6C79616C506C6C61;
      }

      v8 = 0xEC00000073747369;
      if (v6 == 1)
      {
        v8 = 0xE700000000000000;
      }

      if (*(v5 + v4))
      {
        v9 = v7;
      }

      else
      {
        v9 = 7824750;
      }

      if (*(v5 + v4))
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v11 = 0x73746E65636572;
        }

        else
        {
          v11 = 0x6C79616C506C6C61;
        }

        if (a1 == 1)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xEC00000073747369;
        }

        if (v9 != v11)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v9 != 7824750)
        {
          goto LABEL_25;
        }
      }

      if (v10 == v12)
      {

        return v4;
      }

LABEL_25:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return v4;
      }

      if (v2 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

id sub_1003FCD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v122 = a6;
  v118 = a5;
  v115 = a3;
  v125 = a1;
  v101 = type metadata accessor for MusicVideo();
  v97 = *(v101 - 8);
  __chkstk_darwin();
  v96 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v94 - v9;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v121 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v120 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Track();
  v99 = *(v110 - 8);
  __chkstk_darwin();
  v95 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v94 - v13;
  v111 = type metadata accessor for Song();
  v102 = *(v111 - 8);
  __chkstk_darwin();
  v98 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v94 - v15;
  v124 = *(a4 - 8);
  __chkstk_darwin();
  v116 = v16;
  v117 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v94 - v17;
  v113 = type metadata accessor for MusicLibrary.RemoveAction();
  v114 = *(v113 - 1);
  __chkstk_darwin();
  v105 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v106 = *(v107 - 8);
  __chkstk_darwin();
  v104 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v94 - v20;
  v21 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v94 - v29;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v22 + 8))(v24, v21);
  (*(v26 + 32))(v28, v30, v25);
  LODWORD(v123) = (*(v26 + 88))(v28, v25);
  v31 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v32 = v28;
  v33 = v110;
  v34 = v25;
  v35 = v108;
  (*(v26 + 8))(v32, v34);
  v36 = v105;
  static MusicLibraryAction<>.remove.getter();
  v37 = v103;
  v38 = v125;
  v39 = a4;
  v40 = v113;
  v119 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  v41 = v39;
  (*(v114 + 8))(v36, v40);
  v42 = v106;
  v43 = v104;
  v44 = v107;
  (*(v106 + 32))(v104, v37, v107);
  v45 = (*(v42 + 88))(v43, v44);
  (*(v42 + 8))(v43, v44);
  v46 = v109;
  v47 = *(v124 + 16);
  v48 = v38;
  v49 = v112;
  v114 = v124 + 16;
  v113 = v47;
  (v47)(v109, v48, v41);
  v50 = v111;
  if (swift_dynamicCast())
  {
    (*(v102 + 8))(v35, v50);
    if (v123 == v31 && v45 == v31)
    {
      goto LABEL_26;
    }
  }

  if (swift_dynamicCast())
  {
    (*(v99 + 8))(v49, v33);
    if (v123 == v31 && v45 == v31)
    {
      goto LABEL_26;
    }
  }

  v51 = v33;
  v52 = v100;
  v53 = v101;
  if (swift_dynamicCast())
  {
    if (v123 == v31 && v45 == v31)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v111 = String.init(localized:table:bundle:locale:comment:)();
      v112 = v54;
      (*(v97 + 8))(v52, v53);
      (*(v124 + 8))(v46, v41);
      goto LABEL_27;
    }

    (*(v97 + 8))(v52, v53);
  }

  v55 = v98;
  if (swift_dynamicCast())
  {
    (*(v102 + 8))(v55, v50);
    if (v45 != v31)
    {
      v56 = v51;
      v57 = v95;
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_20:
        if (swift_dynamicCast())
        {
          if (v45 == v31)
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v111 = String.init(localized:table:bundle:locale:comment:)();
            v112 = v59;
            (*(v97 + 8))(v96, v53);
            (*(v124 + 8))(v46, v41);
            goto LABEL_27;
          }

          (*(v97 + 8))(v96, v53);
        }

        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v111 = String.init(localized:table:bundle:locale:comment:)();
        v112 = v58;
        (*(v124 + 8))(v46, v41);
        goto LABEL_27;
      }

LABEL_19:
      (*(v99 + 8))(v57, v56);
      goto LABEL_20;
    }
  }

  else
  {
    v56 = v51;
    v57 = v95;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    if (v45 != v31)
    {
      goto LABEL_19;
    }

    (*(v99 + 8))(v57, v56);
  }

LABEL_26:
  (*(v124 + 8))(v46, v41);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v111 = String.init(localized:table:bundle:locale:comment:)();
  v112 = v60;
LABEL_27:
  v61 = String._bridgeToObjectiveC()();

  v62 = [objc_opt_self() alertControllerWithTitle:0 message:v61 preferredStyle:v115];

  v63 = &selRef__replacePlaceholderViewWithView_;
  v64 = &selRef__replacePlaceholderViewWithView_;
  if (v123 == v31)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v123 = String.init(localized:table:bundle:locale:comment:)();
    v65 = v31;
    v66 = v117;
    (v113)(v117, v125, v41);
    v67 = v62;
    v68 = v45;
    v69 = v124;
    v70 = (*(v124 + 80) + 48) & ~*(v124 + 80);
    v71 = swift_allocObject();
    v72 = v118;
    *(v71 + 2) = v41;
    *(v71 + 3) = v72;
    v73 = v41;
    v74 = v119;
    *(v71 + 4) = v122;
    *(v71 + 5) = v74;
    v75 = v69;
    v45 = v68;
    v62 = v67;
    v76 = v66;
    v31 = v65;
    v64 = &selRef__replacePlaceholderViewWithView_;
    (*(v75 + 32))(&v71[v70], v76, v73);
    v41 = v73;
    v63 = &selRef__replacePlaceholderViewWithView_;

    v77 = String._bridgeToObjectiveC()();

    v130 = sub_1003FF60C;
    v131 = v71;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_10027D328;
    v129 = &unk_1010AAEC0;
    v78 = _Block_copy(&aBlock);

    v79 = [objc_opt_self() actionWithTitle:v77 style:2 handler:v78];
    _Block_release(v78);

    [v62 addAction:v79];
  }

  if (v45 == v31)
  {
    v80 = v117;
    (v113)(v117, v125, v41);
    v81 = v63;
    v82 = v124;
    v83 = (*(v124 + 80) + 48) & ~*(v124 + 80);
    v84 = swift_allocObject();
    v85 = v118;
    *(v84 + 2) = v41;
    *(v84 + 3) = v85;
    v86 = v41;
    v87 = v119;
    *(v84 + 4) = v122;
    *(v84 + 5) = v87;
    (*(v82 + 32))(&v84[v83], v80, v86);
    v63 = v81;

    v88 = String._bridgeToObjectiveC()();

    v130 = sub_1003FF530;
    v131 = v84;
    aBlock = _NSConcreteStackBlock;
    v127 = 1107296256;
    v128 = sub_10027D328;
    v129 = &unk_1010AAE70;
    v89 = _Block_copy(&aBlock);

    v90 = [objc_opt_self() v81[28]];
    _Block_release(v89);

    [v62 v64[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v91 = String._bridgeToObjectiveC()();

  v92 = [objc_opt_self() v63[28]];

  [v62 v64[33]];
  return v62;
}

void sub_1003FE034(char a1)
{
  v2 = v1;
  if (qword_10117F6A0 != -1)
  {
    swift_once();
  }

  v4 = qword_10118E540;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_setAssociatedObject(v2, v4, isa, 0);

  if (a1)
  {
    v6 = [v2 navigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v2 navigationController];
      if (!v8 || (v9 = v8, v10 = [v8 viewControllers], sub_100009F78(0, &qword_101183D40, UIViewController_ptr), v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v10, v12 = sub_1003FCB28(v2, v11, sub_10004056C, &qword_101183D40, UIViewController_ptr), v14 = v13, , v9, (v14 & 1) != 0) || v12 < 1)
      {
        if (qword_10117F6A8 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000060E4(v19, qword_10118E548);
        v20 = v2;
        v72 = v7;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v23 = 136446466;
          v24 = v20;
          v25 = [v24 description];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          v29 = sub_1000105AC(v26, v28, &v73);

          *(v23 + 4) = v29;
          *(v23 + 12) = 2082;
          v30 = v72;
          v31 = [v30 description];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_1000105AC(v32, v34, &v73);

          *(v23 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v21, v22, "Failed to remove viewController %{public}s from its navigation controller %{public}s: It's the only VC in the stack, removing it would hose the navigationController.", v23, 0x16u);
          swift_arrayDestroy();
        }

        sub_1003FE034(0);
      }

      else
      {
        v15 = [v7 topViewController];
        if (v15)
        {
          v16 = v15;
          v17 = v2;
          v18 = static NSObject.== infix(_:_:)();
        }

        else
        {
          v18 = 0;
        }

        v36 = [v7 removeViewController:v2 animated:v18 & 1];
        if (v36)
        {
          v72 = v36;
          if (qword_10117F6A8 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_1000060E4(v37, qword_10118E548);
          v38 = v2;
          v39 = v7;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v42 = 136446466;
            v43 = v38;
            v44 = [v43 description];
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = sub_1000105AC(v45, v47, &v73);

            *(v42 + 4) = v48;
            *(v42 + 12) = 2082;
            v49 = v39;
            v50 = [v49 description];
            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v54 = sub_1000105AC(v51, v53, &v73);

            *(v42 + 14) = v54;
            _os_log_impl(&_mh_execute_header, v40, v41, "Removing viewController %{public}s from its navigation controller %{public}s", v42, 0x16u);
            swift_arrayDestroy();

            return;
          }
        }

        else
        {
          if (qword_10117F6A8 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_1000060E4(v55, qword_10118E548);
          v56 = v2;
          v57 = v7;
          v72 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v72, v58))
          {
            v59 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v59 = 136446466;
            v60 = v56;
            v61 = [v60 description];
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v65 = sub_1000105AC(v62, v64, &v73);

            *(v59 + 4) = v65;
            *(v59 + 12) = 2082;
            v66 = v57;
            v67 = [v66 description];
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            v71 = sub_1000105AC(v68, v70, &v73);

            *(v59 + 14) = v71;
            _os_log_impl(&_mh_execute_header, v72, v58, "Failed to remove viewController %{public}s from its navigation controller %{public}s", v59, 0x16u);
            swift_arrayDestroy();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1003FE7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for Logger();
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_1003FE8F8;

  return MusicLibrary.removeDownload<A>(_:)(a5, a6, a7);
}

uint64_t sub_1003FE8F8()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1003FEA54;
  }

  else
  {
    v4 = sub_1003FFCA8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003FEA54()
{
  v22 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = v0[4];
    v20 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to remove downloaded item=%s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

double sub_1003FEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a8;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v12 + 16))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = v21;
  *(v19 + 7) = a2;
  (*(v12 + 32))(&v19[v18], &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  sub_1001F4CB8(0, 0, v15, v22, v19);

  return result;
}

uint64_t sub_1003FEE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for Logger();
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v7[5] = swift_task_alloc();
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[8] = v12;
  *v12 = v7;
  v12[1] = sub_1003FEF98;

  return MusicLibrary.remove<A>(_:)(a5, a6, a7);
}

uint64_t sub_1003FEF98()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1003FF0F4;
  }

  else
  {
    v4 = sub_100251C74;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1003FF0F4()
{
  v22 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = v0[4];
    v20 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to delete item=%s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = v0[3];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003FF304()
{
  result = swift_slowAlloc();
  qword_10118E540 = result;
  return result;
}

id sub_1003FF32C()
{
  result = [v0 navigationController];
  if (result)
  {
    v2 = result;
    v3 = [result viewControllers];
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_1003FCB28(v0, v4, sub_10004056C, &qword_101183D40, UIViewController_ptr);
    v7 = v6;

    result = 0;
    if ((v7 & 1) == 0 && v5 >= 1)
    {
      if (qword_10117F6A0 != -1)
      {
        swift_once();
      }

      if (objc_getAssociatedObject(v0, qword_10118E540))
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
        if (swift_dynamicCast())
        {
          return v8;
        }
      }

      else
      {
        sub_100011DF0(v11);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1003FF4D0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10118E548);
  sub_1000060E4(v0, qword_10118E548);
  return static Logger.music(_:)(0x74694B4955, 0xE500000000000000);
}

uint64_t sub_1003FF550()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003FF688(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1003FE7C4(a1, v8, v9, v6, v1 + v7, v4, v5);
}

uint64_t sub_1003FF798()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1003FF85C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1003FEE64(a1, v8, v9, v6, v1 + v7, v4, v5);
}

id sub_1003FF96C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() actionWithTitle:v3 style:1 handler:0];

  [v2 addAction:v4];
  return v2;
}

unint64_t sub_1003FFBE8()
{
  result = qword_1011972B0;
  if (!qword_1011972B0)
  {
    sub_1001109D0(&unk_1011972A0, &qword_100ECBC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011972B0);
  }

  return result;
}

unint64_t sub_1003FFC4C()
{
  result = qword_1011972F0[0];
  if (!qword_1011972F0[0])
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011972F0);
  }

  return result;
}

double sub_1003FFCB0(unint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  v4 = sub_10047CAF4(v3, a1);

  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 16);

    v5(v3, v6);
  }

  return result;
}

uint64_t sub_1003FFD48(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  swift_unknownObjectWeakAssign();
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;

  Library.Menu.Request.init()(&v30);
  v10 = v32;
  v37[0] = v33;
  v11 = v31;
  v12 = sub_10010F828(&off_10109AC28);
  sub_1004009F0(v37);
  if (a2)
  {
    v13 = 67108866;
  }

  else
  {
    v13 = v11;
  }

  *&v25 = v13;
  *(&v25 + 1) = v10;
  *v26 = v12;
  *&v26[40] = v36;
  *&v26[24] = v35;
  *&v26[8] = v34;
  *v29 = *v26;
  *&v29[16] = *&v26[16];
  *&v29[32] = *&v26[32];
  v24 = v30;
  v27 = v30;
  v28 = v25;
  sub_10010FC20(&unk_101197030, &unk_100ECAA00);
  swift_allocObject();
  sub_1003E1510(&v24, &v23);
  *(v5 + 104) = RequestResponse.Controller.init(request:)(&v27, v14, v15, v16);

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v17 = *(v5 + 104);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + *(*v17 + 128));
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_100400A58;
  v19[1] = v18;

  sub_100020438(v20, v21);

  v27 = v30;
  *&v28 = v13;
  *(&v28 + 1) = v10;
  *&v29[8] = v34;
  *&v29[24] = v35;
  *v29 = v12;
  *&v29[40] = v36;
  sub_100400A60(&v27);
  return v5;
}

double sub_1003FFF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 56);
    if (v4)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  RequestResponse.Revision.content.getter(&v23);
  v6 = v23;
  if (v23)
  {

    if (v4)
    {
      sub_10047CD0C(v4, v6);
      v8 = v7;

      if (v8)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    return result;
  }

LABEL_12:
  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = v9;
    RequestResponse.Revision.content.getter(&v23);
    v11 = v23;
    v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v10[7];
    v18 = v10[8];
    v19 = v10[9];
    v21 = v10[11];
    v22 = v10[10];
    v20 = v10[12];
    v10[7] = v23;
    v10[8] = v12;
    v10[9] = v13;
    v10[10] = v14;
    v10[11] = v15;
    v10[12] = v16;
    sub_100400AB4(v11, v12, v13, v14, v15, v16);
    sub_100400B30(v17, v18, v19, v22, v21, v20);
    sub_100400148();
    sub_100400B30(v11, v12, v13, v14, v15, v16);
  }

  return result;
}

double sub_100400148()
{
  sub_10010FC20(&qword_10118BFA0, &qword_100EC7960);
  __chkstk_darwin();
  v38 = v25 - v1;
  v37 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image();
  v2 = *(v37 - 8);
  __chkstk_darwin();
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for GridView.Base.ViewModel.ImageConfiguration();
  __chkstk_darwin();
  v36 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    swift_weakInit();
    v8 = *(v6 + 16);
    if (v8)
    {
      v25[0] = v0;
      v42 = _swiftEmptyArrayStorage;

      specialized ContiguousArray.reserveCapacity(_:)();
      v9 = type metadata accessor for GridView.Base.ViewModel();
      v33 = 0x8000000100E3E560;
      v34 = v9;
      swift_beginAccess();
      v32 = (v2 + 104);
      v31 = enum case for GridView.Base.ViewModel.ImageConfiguration.Image.systemImage(_:);
      v10 = 32;
      v29 = 0xD000000000000014;
      v30 = "nt";
      v27 = "LibraryView.Playlists";
      v28 = "LibraryView.RecentlyAdded";
      v26 = "LibraryView.Artists";
      v25[9] = "LibraryView.Albums";
      v25[8] = "LibraryView.Songs";
      v25[7] = "LibraryView.MadeForYou";
      v25[6] = "LibraryView.MusicVideos";
      v25[5] = "LibraryView.Genres";
      v25[4] = "LibraryView.Compilations";
      v25[3] = "LibraryView.Composers";
      v25[2] = "LibraryView.Shows";
      v25[1] = "LibraryView.Downloaded";
      v35 = v6;
      do
      {
        v23 = *(v6 + v10);
        v11 = 0xD000000000000029;
        v13 = v30;
        switch(v23)
        {
          case 1:
            v11 = 0xD000000000000025;
            v13 = v28;
            break;
          case 2:
            v11 = 0xD000000000000023;
            v13 = v27;
            break;
          case 3:
            v11 = 0xD000000000000022;
            v13 = v26;
            break;
          case 4:
            v11 = 0xD000000000000021;
            v12 = &v51;
            goto LABEL_5;
          case 5:
            v11 = 0xD000000000000026;
            v12 = &v50;
            goto LABEL_5;
          case 6:
            v11 = 0xD000000000000027;
            v12 = &v49;
            goto LABEL_5;
          case 7:
            v11 = 0xD000000000000022;
            v12 = &v48;
            goto LABEL_5;
          case 8:
            v11 = 0xD000000000000028;
            v12 = &v47;
            goto LABEL_5;
          case 9:
            v11 = 0xD000000000000025;
            v12 = &v46;
            goto LABEL_5;
          case 10:
            v11 = 0xD000000000000021;
            v12 = &v45;
            goto LABEL_5;
          case 11:
            v11 = 0xD000000000000026;
            v12 = &v44;
            goto LABEL_5;
          case 12:
            v11 = 0xD000000000000027;
            v12 = &v43;
LABEL_5:
            v13 = *(v12 - 32);
            break;
          default:
            break;
        }

        v40 = v29;
        v41 = v33;
        v14 = v13 | 0x8000000000000000;
        String.append(_:)(*&v11);

        v39 = v40;
        Library.Menu.Identifier.name(for:)(2, v23);
        v15 = sub_10010FC20(&qword_101180CB0, &unk_100ECAA10);
        v16 = *(v15 + 48);
        v17 = v4 + *(v15 + 64);
        *v4 = Library.Menu.Identifier.symbolName(for:)(2, v23);
        v4[1] = v18;
        v19 = type metadata accessor for Image.Scale();
        (*(*(v19 - 8) + 56))(v4 + v16, 1, 1, v19);
        *v17 = 0;
        v17[8] = 1;
        (*v32)(v4, v31, v37);
        v20 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
        (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
        GridView.Base.ViewModel.ImageConfiguration.init(image:shape:isTallArtwork:)();
        v21 = swift_allocObject();
        swift_weakLoadStrong();
        swift_weakInit();

        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        GridView.Base.ViewModel.__allocating_init(id:title:symbolName:imageConfiguration:allowsTouches:disabledAppearance:action:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v10;
        --v8;
        v6 = v35;
      }

      while (v8);
      swift_weakDestroy();

      v7 = v42;
    }

    else
    {
      swift_weakDestroy();
    }
  }

  return sub_1003FFCB0(v7);
}

double sub_100400738(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong traitCollection];

      __chkstk_darwin();
      v7 = UITraitCollection.modifyingTraits(_:)();

      v8 = sub_10066BAEC(v7, v2);
      Library.Menu.Identifier.name(for:)(2, v2);
      v9 = String._bridgeToObjectiveC()();

      [v8 setTitle:v9];

      v10 = swift_unknownObjectWeakLoadStrong();
      [v8 setPlayActivityFeatureNameSourceViewController:v10];

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 navigationController];

        if (v13)
        {
          [v13 pushViewController:v8 animated:1];
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1004008EC(uint64_t result, char a2, uint64_t a3)
{
  if (a2 == 11 || (*(a3 + 32) & 1) != 0)
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    sub_100309A88(result, v3);
    v5 = sub_1005A634C(v3, v4);
    sub_1003B3FC0();
    return sub_1005A62F0(v5, v3, v4);
  }

  return result;
}

uint64_t sub_10040096C()
{

  swift_unknownObjectWeakDestroy();

  sub_100400B30(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1004009F0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101196FE0, &qword_100ED5CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100400AB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    v7 = a2;
  }

  return result;
}

double sub_100400B30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100400BC4(uint64_t a1)
{
  result = type metadata accessor for WaveformState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100400C4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for WaveformState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100400E8C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for WaveformState() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1004011B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[2] = a1;
  v17[3] = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v5 = *(a2 + 16);
  sub_1001109D0(&qword_10118E6A8, &qword_100ECAAA8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for Optional();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v17[1] = type metadata accessor for _OverlayModifier();
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  v12 = *(a2 + 24);
  v17[6] = v5;
  v17[7] = v12;
  v18 = v3;
  static Alignment.center.getter();
  v13 = swift_getWitnessTable();
  View.overlay<A>(alignment:content:)();
  v14 = swift_getWitnessTable();
  v19 = v13;
  v20 = v14;
  swift_getWitnessTable();
  sub_100663950();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_100663950();
  return (v15)(v11, v6);
}

uint64_t sub_1004014B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v38 = a4;
  sub_1001109D0(&qword_10118E6A8, &qword_100ECAAA8);
  v33 = a2;
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  v32[1] = swift_getWitnessTable();
  v32[2] = v6;
  v7 = type metadata accessor for ZStack();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v34 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v32 - v10;
  v12 = type metadata accessor for WaveformState();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  v37 = *(v16 - 8);
  __chkstk_darwin();
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = v32 - v20;
  v22 = *(v13 + 16);
  v35 = a1;
  v22(v15, a1, v12, v19);
  if (*(v13 + 88))(v15, v12) == enum case for WaveformState.hidden(_:) || ((*(v13 + 8))(v15, v12), *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1) && (v23 = [objc_opt_self() standardUserDefaults], v24 = String._bridgeToObjectiveC()(), v25 = objc_msgSend(v23, "BOOLForKey:", v24), v23, v24, (v25))
  {
    (*(v8 + 56))(v18, 1, 1, v7);
    swift_getWitnessTable();
  }

  else
  {
    __chkstk_darwin();
    v26 = v35;
    v27 = v36;
    v32[-4] = v33;
    v32[-3] = v27;
    v32[-2] = v26;
    static Alignment.center.getter();
    v28 = v34;
    ZStack.init(alignment:content:)();
    swift_getWitnessTable();
    sub_100663950();
    v29 = *(v8 + 8);
    v29(v28, v7);
    sub_100663950();
    v29(v11, v7);
    (*(v8 + 32))(v18, v28, v7);
    (*(v8 + 56))(v18, 0, 1, v7);
  }

  sub_100653A68(v18, v21);
  v30 = *(v37 + 8);
  v30(v18, v16);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100663950();
  return (v30)(v21, v16);
}

uint64_t sub_100401A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = type metadata accessor for WaveformColorPalette();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WaveformState();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for WaveformView();
  v44 = *(v41 - 8);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&qword_10118E6A8, &qword_100ECAAA8);
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v48 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v36 - v16;
  v17 = *(a2 - 8);
  __chkstk_darwin();
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v36 - v20;
  v39 = a3;
  type metadata accessor for DancingPlaybackBarsOverlayModifier(0, a2, a3, v22);
  sub_100663950();
  (*(v10 + 16))(v12, a1, v9);
  WaveformView.init(state:)();
  v23 = v43;
  static WaveformColorPalette.white.getter();
  v25 = sub_100401ED4(v24);
  v26 = v37;
  v27 = v41;
  View.waveformColorPalette(_:)();
  (*(v45 + 8))(v23, v46);
  (*(v44 + 8))(v14, v27);
  v28 = *(v17 + 16);
  v38 = v19;
  v29 = a2;
  v28(v19, v21, a2);
  v54[0] = v19;
  v30 = v40;
  v31 = v48;
  v32 = v42;
  (*(v40 + 16))(v48, v26, v42);
  v54[1] = v31;
  v53[0] = v29;
  v53[1] = v32;
  v50 = v25;
  v51 = v39;
  v49 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1006769F4(v54, 2uLL, v53);
  v33 = *(v30 + 8);
  v33(v26, v32);
  v34 = *(v17 + 8);
  v34(v21, v29);
  v33(v48, v32);
  return (v34)(v38, v29);
}

unint64_t sub_100401ED4(__n128 a1)
{
  result = qword_10118E6B0;
  if (!qword_10118E6B0)
  {
    type metadata accessor for WaveformView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E6B0);
  }

  return result;
}

uint64_t type metadata accessor for DancingPlaybackBarsConditionalModifier(uint64_t a1)
{
  result = qword_10118E710;
  if (!qword_10118E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100401FA0(uint64_t a1)
{
  result = type metadata accessor for WaveformState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100402028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v32 = a3;
  v4 = sub_10010FC20(&qword_10118E748, &qword_100ECAB28);
  __chkstk_darwin();
  v6 = v28 - v5;
  v31 = sub_10010FC20(&qword_10118E750, &qword_100ECAB30);
  __chkstk_darwin();
  v8 = v28 - v7;
  v9 = type metadata accessor for WaveformState();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = v28 - v14;
  v16 = *(v10 + 16);
  v29 = a1;
  v16(v28 - v14, a1, v9, v13);
  if ((*(v10 + 88))(v15, v9) == enum case for WaveformState.hidden(_:) || ((*(v10 + 8))(v15, v9), *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1) && (v19 = [objc_opt_self() standardUserDefaults], v20 = String._bridgeToObjectiveC()(), v21 = objc_msgSend(v19, "BOOLForKey:", v20), v19, v20, v21))
  {
    v17 = sub_10010FC20(&qword_10118E758, &qword_100ECAB38);
    (*(*(v17 - 8) + 16))(v8, v30, v17);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E768, &qword_10118E758, &qword_100ECAB38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1004024EC();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v22 = sub_10010FC20(&qword_10118E758, &qword_100ECAB38);
    (*(*(v22 - 8) + 16))(v6, v30, v22);
    v23 = static Alignment.center.getter();
    v25 = v24;
    v28[1] = v4;
    v26 = &v6[*(v4 + 36)];
    (v16)(v12, v29, v9);
    WaveformView.init(state:)();
    v27 = &v26[*(sub_10010FC20(&qword_10118E760, &qword_100ECAB40) + 36)];
    *v27 = v23;
    v27[1] = v25;
    sub_10040247C(v6, v8);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_10118E768, &qword_10118E758, &qword_100ECAB38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1004024EC();
    _ConditionalContent<>.init(storage:)();
    return sub_1004026B0(v6);
  }
}

uint64_t sub_10040247C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118E748, &qword_100ECAB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004024EC()
{
  result = qword_10118E770;
  if (!qword_10118E770)
  {
    sub_1001109D0(&qword_10118E748, &qword_100ECAB28);
    sub_1004025A4();
    sub_100020674(&qword_10118E790, &qword_10118E760, &qword_100ECAB40, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E770);
  }

  return result;
}

unint64_t sub_1004025A4()
{
  result = qword_10118E778;
  if (!qword_10118E778)
  {
    sub_1001109D0(&qword_10118E780, &qword_100ECAB48);
    sub_100020674(&qword_10118E768, &qword_10118E758, &qword_100ECAB38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10040265C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E778);
  }

  return result;
}

unint64_t sub_10040265C()
{
  result = qword_10118E788;
  if (!qword_10118E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E788);
  }

  return result;
}

uint64_t sub_1004026B0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118E748, &qword_100ECAB28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100402718()
{
  result = qword_10118E798;
  if (!qword_10118E798)
  {
    sub_1001109D0(&qword_10118E7A0, &qword_100ECAB50);
    sub_10040279C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E798);
  }

  return result;
}

unint64_t sub_10040279C()
{
  result = qword_10118E7A8;
  if (!qword_10118E7A8)
  {
    sub_1001109D0(&qword_10118E7B0, &qword_100ECAB58);
    sub_100020674(&qword_10118E768, &qword_10118E758, &qword_100ECAB38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1004024EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E7A8);
  }

  return result;
}

void sub_1004028A4(uint64_t a1)
{
  type metadata accessor for PlaylistPicker.Mode(319);
  if (v1 <= 0x3F)
  {
    sub_100117C38(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100402978(uint64_t a1)
{
  type metadata accessor for ArtworkImage.Info(319);
  if (v1 <= 0x3F)
  {
    sub_10002F678();
    if (v2 <= 0x3F)
    {
      sub_100117C38(319);
      if (v3 <= 0x3F)
      {
        sub_100402A50(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100402A50(uint64_t a1)
{
  if (!qword_10119A0E0)
  {
    sub_100363C0C();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_10119A0E0);
    }
  }
}

uint64_t sub_100402AC8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = type metadata accessor for AccessibilityTraits();
  v21 = *(v23 - 8);
  __chkstk_darwin();
  v20 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10118EA38, &qword_100ECAE20);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = sub_10010FC20(&qword_10118EA40, &qword_100ECAE28);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v18 - v11;
  if (sub_100402E14())
  {
    v13 = static VerticalAlignment.firstTextLineCenter.getter();
  }

  else
  {
    v13 = static VerticalAlignment.center.getter();
  }

  *v8 = v13;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v14 = sub_10010FC20(&qword_10118EA48, &qword_100ECAE30);
  sub_1004030A0(v1, &v8[*(v14 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v15 = sub_100020674(&qword_10118EA50, &qword_10118EA38, &qword_100ECAE20, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v18 + 8))(v5, v19);
  sub_1000095E8(v8, &qword_10118EA38, &qword_100ECAE20);
  v16 = v20;
  static AccessibilityTraits.isButton.getter();
  v24 = v6;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v21 + 8))(v16, v23);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100402E14()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s23NewPlaylistOrFolderCellVMa(0);
  sub_1000089F8(v0 + *(v10 + 24), v5, &qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v7 + 8))(v9, v6);
  return v13 & 1;
}

uint64_t sub_1004030A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v84 = a2;
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10010FC20(&qword_10118EA58, &qword_100ECAE38);
  v77 = *(v76 - 8);
  __chkstk_darwin();
  v8 = &v72 - v7;
  v79 = sub_10010FC20(&qword_10118EA60, &qword_100ECAE40);
  v80 = *(v79 - 8);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v81 = sub_10010FC20(&qword_10118EA68, &qword_100ECAE48);
  v83 = *(v81 - 8);
  __chkstk_darwin();
  v73 = &v72 - v11;
  sub_10010FC20(&qword_10118EA70, &qword_100ECAE50);
  __chkstk_darwin();
  v74 = &v72 - v12;
  v78 = sub_10010FC20(&qword_10118EA78, &qword_100ECAE58);
  __chkstk_darwin();
  v14 = &v72 - v13;
  sub_10010FC20(&qword_10118EA80, &unk_100ECAE60);
  __chkstk_darwin();
  v85 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v72 - v16;
  sub_100406B30(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  if (EnumCaseMultiPayload == 1)
  {
    v19 = 3;
  }

  else
  {
    v19 = 4;
  }

  (*(*(v18 - 8) + 56))(v6, v19, 11, v18);
  sub_100406B94(v4, type metadata accessor for PlaylistPicker.Mode);
  v20.n128_u64[0] = 0x4048000000000000;
  ArtworkImage.Placeholder.view(availableSize:)(v8, v20, 48.0);
  sub_100406B94(v6, type metadata accessor for ArtworkImage.Placeholder);
  v21 = Border.artwork.unsafeMutableAddressor();
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 16);

  v25 = Corner.medium.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v28;
  v31 = v76;
  View.border(_:corner:)(v22, v24, v26, v27, v30, v76, OpaqueTypeConformance2, v23);

  v32 = v8;
  v33 = v31;
  (*(v77 + 8))(v32, v31);
  v34 = *v25;
  v35 = v25[1];
  LOBYTE(v26) = *(v25 + 16);
  v94 = v33;
  v95 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v73;
  v38 = v35;
  v39 = v79;
  View.corner(_:)(v34, v38, v26, v79, v36);
  (*(v80 + 8))(v10, v39);
  v94 = v39;
  v95 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v74;
  v42 = v81;
  View.placeholderStyle(_:)(sub_100407254, 0, v81, v40);
  (*(v83 + 8))(v37, v42);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10003D17C(v41, v14, &qword_10118EA70, &qword_100ECAE50);
  v43 = &v14[*(v78 + 36)];
  v44 = v92;
  *v43 = v91;
  *(v43 + 1) = v44;
  *(v43 + 2) = v93;
  sub_100406BF4();
  v45 = v75;
  View.accessibilityHidden(_:)();
  sub_1000095E8(v14, &qword_10118EA78, &qword_100ECAE58);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v83 = v94;
  v81 = v96;
  v80 = v98;
  v79 = v99;
  v90 = 1;
  v89 = v95;
  v88 = v97;
  v86 = sub_1004039D8();
  v87 = v46;
  sub_100009838();
  v47 = Text.init<A>(_:)();
  v49 = v48;
  LOBYTE(v41) = v50;
  static Font.body.getter();
  v51 = Text.font(_:)();
  v53 = v52;
  LOBYTE(v27) = v54;

  sub_10011895C(v47, v49, v41 & 1);

  static Color.primary.getter();
  v55 = Text.foregroundColor(_:)();
  v57 = v56;
  LODWORD(v82) = v58;
  v60 = v59;

  sub_10011895C(v51, v53, v27 & 1);

  v61 = v85;
  sub_1000089F8(v45, v85, &qword_10118EA80, &unk_100ECAE60);
  v62 = v90;
  LOBYTE(v51) = v89;
  LOBYTE(v53) = v88;
  v63 = v61;
  v64 = v84;
  sub_1000089F8(v63, v84, &qword_10118EA80, &unk_100ECAE60);
  v65 = sub_10010FC20(&qword_10118EA98, &qword_100ECAE70);
  v66 = v64 + v65[12];
  *v66 = 0;
  *(v66 + 8) = v62;
  *(v66 + 16) = v83;
  *(v66 + 24) = v51;
  *(v66 + 32) = v81;
  *(v66 + 40) = v53;
  v67 = v79;
  *(v66 + 48) = v80;
  *(v66 + 56) = v67;
  v68 = v64 + v65[16];
  *v68 = v55;
  *(v68 + 8) = v57;
  LOBYTE(v67) = v82;
  v69 = v82 & 1;
  *(v68 + 16) = v82 & 1;
  *(v68 + 24) = v60;
  v70 = v64 + v65[20];
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_10021D0C0(v55, v57, v67 & 1);

  sub_1000095E8(v45, &qword_10118EA80, &unk_100ECAE60);
  sub_10011895C(v55, v57, v69);

  return sub_1000095E8(v85, &qword_10118EA80, &unk_100ECAE60);
}

uint64_t sub_1004039D8()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100406B30(v1, v3);
  swift_getEnumCaseMultiPayload();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  sub_100406B94(v3, type metadata accessor for PlaylistPicker.Mode);
  return v4;
}

uint64_t sub_100403BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin();
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v25 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118E900, &qword_100ECAC30);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v22 = sub_10010FC20(&qword_10118E908, &qword_100ECAC38);
  v11 = *(v22 - 8);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v24 = sub_10010FC20(&qword_10118E910, &qword_100ECAC40);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v16 = sub_10010FC20(&qword_10118E918, &unk_100ECAC48);
  sub_100403FBC(v2, &v10[*(v16 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v17 = sub_100020674(&qword_10118E920, &qword_10118E900, &qword_100ECAC30, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v25);
  sub_1000095E8(v10, &qword_10118E900, &qword_100ECAC30);
  v18 = v23;
  static AccessibilityTraits.isButton.getter();
  v29 = v8;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  View.accessibilityAddTraits(_:)();
  (*(v26 + 8))(v18, v27);
  (*(v11 + 8))(v13, v19);
  sub_100405FC4();
  ModifiedContent<>.accessibilityInputLabels(_:)();

  return sub_1000095E8(v15, &qword_10118E910, &qword_100ECAC40);
}

uint64_t sub_100403FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_10010FC20(&qword_10118E928, &qword_100ECAC58);
  __chkstk_darwin();
  v5 = v45 - v4;
  v6 = sub_10010FC20(&qword_10118E930, &qword_100ECAC60);
  __chkstk_darwin();
  v8 = v45 - v7;
  sub_10010FC20(&qword_10118E938, &qword_100ECAC68);
  __chkstk_darwin();
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v45 - v11;
  sub_10010FC20(&qword_10118E940, &qword_100ECAC70);
  __chkstk_darwin();
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v45 - v15;
  __chkstk_darwin();
  v18 = v45 - v17;
  v52 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v20 = sub_100404628(v19);
  v51 = v12;
  if (v20)
  {
    v21 = static VerticalAlignment.top.getter();
  }

  else
  {
    v21 = static VerticalAlignment.center.getter();
  }

  *v16 = v21;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v22 = sub_10010FC20(&qword_10118E948, &qword_100ECAC78);
  sub_1004048B4(a1, v52, &v16[*(v22 + 44)]);
  sub_10003D17C(v16, v18, &qword_10118E940, &qword_100ECAC70);
  v23 = _s12PlaylistCellVMa(0);
  if (*(a1 + *(v23 + 28)) == 1)
  {
    v47 = v6;
    v48 = v5;
    v49 = v3;
    v24 = [objc_opt_self() tertiaryLabelColor];
    v25 = Color.init(_:)();
    v45[1] = v25;
    KeyPath = swift_getKeyPath();
    strcpy(v53, "person.2.fill");
    HIWORD(v53[1]) = -4864;
    v54 = KeyPath;
    v55 = v25;
    LocalizedStringKey.init(stringLiteral:)();
    v26 = v14;
    v27 = Text.init(_:tableName:bundle:comment:)();
    v28 = v10;
    v30 = v29;
    v32 = v31;
    sub_10010FC20(&qword_10118E960, &unk_100ECACC0);
    sub_1004065A8();
    View.accessibilityLabel(_:)();
    v33 = v27;
    v14 = v26;
    v34 = v30;
    v10 = v28;
    sub_10011895C(v33, v34, v32 & 1);
  }

  else
  {
    if (*(a1 + *(v23 + 36)) != 1)
    {
      v39 = 1;
      v38 = v51;
      goto LABEL_10;
    }

    v47 = v6;
    v48 = v5;
    v49 = v3;
    v35 = [objc_opt_self() tertiaryLabelColor];
    v36 = Color.init(_:)();
    v37 = swift_getKeyPath();
    v53[0] = 0x2E6E6F7276656863;
    v53[1] = 0xEF64726177726F66;
    v54 = v37;
    v55 = v36;
    sub_10010FC20(&qword_10118E960, &unk_100ECACC0);
    sub_1004065A8();
    View.accessibilityHidden(_:)();
  }

  v38 = v51;
  sub_1000089F8(v8, v48, &qword_10118E930, &qword_100ECAC60);
  swift_storeEnumTagMultiPayload();
  sub_1004066B4();
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v8, &qword_10118E930, &qword_100ECAC60);
  v39 = 0;
LABEL_10:
  v40 = sub_10010FC20(&qword_10118E950, &qword_100ECAC80);
  (*(*(v40 - 8) + 56))(v38, v39, 1, v40);
  sub_1000089F8(v18, v14, &qword_10118E940, &qword_100ECAC70);
  sub_1000089F8(v38, v10, &qword_10118E938, &qword_100ECAC68);
  v41 = v50;
  sub_1000089F8(v14, v50, &qword_10118E940, &qword_100ECAC70);
  v42 = sub_10010FC20(&qword_10118E958, &qword_100ECAC88);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1000089F8(v10, v41 + *(v42 + 64), &qword_10118E938, &qword_100ECAC68);

  sub_1000095E8(v38, &qword_10118E938, &qword_100ECAC68);
  sub_1000095E8(v18, &qword_10118E940, &qword_100ECAC70);
  sub_1000095E8(v10, &qword_10118E938, &qword_100ECAC68);
  return sub_1000095E8(v14, &qword_10118E940, &qword_100ECAC70);
}

uint64_t sub_100404628(__n128 a1)
{
  v17 = type metadata accessor for EnvironmentValues();
  v2 = *(v17 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s12PlaylistCellVMa(0);
  sub_1000089F8(v1 + *(v11 + 44), v6, &qword_10118A610, &qword_100EBCDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v17);
  }

  v14 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

uint64_t sub_1004048B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  sub_10010FC20(&qword_10118E980, &qword_100ECACD0);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  sub_10010FC20(&qword_10118E988, &qword_100ECACD8);
  __chkstk_darwin();
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v34 - v11;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = sub_10010FC20(&qword_10118E990, &qword_100ECACE0);
  sub_100404C10(a1, a2, &v12[*(v13 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = v41;
  v37 = v39;
  v34 = v44;
  v35 = v43;
  v47 = 1;
  v46 = v40;
  v45 = v42;
  v14 = static HorizontalAlignment.leading.getter();
  if (sub_100404628(v15))
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = (a1 + *(_s12PlaylistCellVMa(0) + 24));
    v19 = v18[1];
    if (v19)
    {
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
      v17 = v21 == 0;
      v16 = v22 << 62;
    }

    else
    {
      v16 = 0;
      v17 = 1;
    }
  }

  *v8 = v14;
  *(v8 + 1) = v16;
  v8[16] = v17;
  v23 = sub_10010FC20(&qword_10118E998, &qword_100ECACE8);
  sub_10040596C(a1, a2, &v8[*(v23 + 44)]);
  sub_1000089F8(v12, v10, &qword_10118E988, &qword_100ECACD8);
  v24 = v47;
  v25 = v46;
  v26 = v10;
  v27 = v45;
  sub_1000089F8(v8, v6, &qword_10118E980, &qword_100ECACD0);
  v28 = v38;
  sub_1000089F8(v26, v38, &qword_10118E988, &qword_100ECACD8);
  v29 = sub_10010FC20(&qword_10118E9A0, &qword_100ECACF0);
  v30 = v28 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = v24;
  v31 = v36;
  *(v30 + 16) = v37;
  *(v30 + 24) = v25;
  *(v30 + 32) = v31;
  *(v30 + 40) = v27;
  v32 = v34;
  *(v30 + 48) = v35;
  *(v30 + 56) = v32;
  sub_1000089F8(v6, v28 + *(v29 + 64), &qword_10118E980, &qword_100ECACD0);
  sub_1000095E8(v8, &qword_10118E980, &qword_100ECACD0);
  sub_1000095E8(v12, &qword_10118E988, &qword_100ECACD8);
  sub_1000095E8(v6, &qword_10118E980, &qword_100ECACD0);
  return sub_1000095E8(v26, &qword_10118E988, &qword_100ECACD8);
}

uint64_t sub_100404C10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a2;
  v116 = a3;
  v101 = type metadata accessor for ArtworkImage.ReusePolicy();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v98 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v104 = *(v103 - 8);
  __chkstk_darwin();
  v95 = &v88 - v5;
  v105 = sub_10010FC20(&unk_10119F190, &qword_100EC1520);
  v107 = *(v105 - 8);
  __chkstk_darwin();
  v97 = &v88 - v6;
  v108 = sub_10010FC20(&unk_1011A1410, &qword_100ECAD90);
  v109 = *(v108 - 8);
  __chkstk_darwin();
  v99 = &v88 - v7;
  v106 = sub_10010FC20(&qword_10118E9D0, &qword_100ECAD98);
  __chkstk_darwin();
  v102 = &v88 - v8;
  sub_10010FC20(&qword_10118E9D8, &qword_100ECADA0);
  __chkstk_darwin();
  v96 = &v88 - v9;
  v111 = sub_10010FC20(&qword_10118E9E0, &unk_100ECADA8);
  __chkstk_darwin();
  v114 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v88 - v11;
  __chkstk_darwin();
  v113 = &v88 - v12;
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v14 = &v88 - v13;
  v15 = sub_10010FC20(&qword_10118E9E8, &qword_100ECADB8);
  __chkstk_darwin();
  v17 = &v88 - v16;
  sub_10010FC20(&qword_10118E9F0, &qword_100ECADC0);
  __chkstk_darwin();
  v93 = &v88 - v18;
  v94 = sub_10010FC20(&qword_10118E9F8, &unk_100ECADC8) - 8;
  __chkstk_darwin();
  v110 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v88 - v20;
  __chkstk_darwin();
  v90 = &v88 - v22;
  v91 = Image.init(systemName:)();
  v92 = _s12PlaylistCellVMa(0);
  sub_10010FC20(&qword_10119A070, "@R\n");
  v89 = a1;
  ScaledMetric.wrappedValue.getter();
  v23 = type metadata accessor for Font.Design();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v88 = static Font.system(size:weight:design:)();
  sub_1000095E8(v14, &qword_101188610, &qword_100EC4D60);
  KeyPath = swift_getKeyPath();
  v25 = static Edge.Set.leading.getter();
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v118) = 0;
  v34 = static Color.accentColor.getter();
  v35 = swift_getKeyPath();
  v36 = v15;
  v37 = &v17[*(v15 + 36)];
  v38 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v39 = enum case for Image.Scale.medium(_:);
  v40 = type metadata accessor for Image.Scale();
  v41 = v37 + v38;
  v42 = v90;
  (*(*(v40 - 8) + 104))(v41, v39, v40);
  *v37 = swift_getKeyPath();
  *v17 = v91;
  *(v17 + 1) = KeyPath;
  *(v17 + 2) = v88;
  v17[24] = v25;
  *(v17 + 4) = v27;
  *(v17 + 5) = v29;
  *(v17 + 6) = v31;
  *(v17 + 7) = v33;
  v17[64] = 0;
  *(v17 + 9) = v35;
  *(v17 + 10) = v34;
  v43 = AccessibilityString.favoriteBadgeLabel.unsafeMutableAddressor();
  v44 = *v43;
  v45 = v43[1];
  v46 = sub_100406770();

  v47 = v93;
  View.accessibilityLabel(_:)(v44, v45, v36, v46);

  sub_1000095E8(v17, &qword_10118E9E8, &qword_100ECADB8);
  v48 = v89;
  if (*(v89 + *(v92 + 32)))
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  sub_10003D17C(v47, v21, &qword_10118E9F0, &qword_100ECADC0);
  *&v21[*(v94 + 44)] = v49;
  sub_10003D17C(v21, v42, &qword_10118E9F8, &unk_100ECADC8);
  v50 = type metadata accessor for ArtworkImage.Info(0);
  v51 = *(v50 + 20);
  ArtworkImage.Size.init(cgSize:)(0x4048000000000000, 0x4048000000000000, 0, v117);
  v52 = v100;
  v53 = v98;
  v54 = v101;
  (*(v100 + 104))(v98, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v101);
  v55 = v95;
  v56 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v48, v48 + v51, v117, v53, v95);
  (*(v52 + 8))(v53, v54, v56);
  v57 = v48 + *(v50 + 32);
  v58 = *v57;
  v59 = *(v57 + 8);
  v60 = *(v57 + 16);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v97;
  v63 = v103;
  View.corner(_:)(v58, v59, v60, v103, OpaqueTypeConformance2);
  v64 = v55;
  v65 = v63;
  (*(v104 + 8))(v64, v63);
  v66 = Border.artwork.unsafeMutableAddressor();
  v67 = *v66;
  v68 = *(v66 + 1);
  LOBYTE(v51) = *(v66 + 16);

  *&v118 = v65;
  *(&v118 + 1) = OpaqueTypeConformance2;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v99;
  v71 = v58;
  v72 = v105;
  View.border(_:corner:)(v67, v51, v71, v59, v60, v105, v69, v68);

  (*(v107 + 8))(v62, v72);
  *&v118 = v72;
  *(&v118 + 1) = v69;
  v73 = v96;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v102;
  v76 = v108;
  View.placeholderStyle(_:)(sub_100407254, 0, v108, v74);
  (*(v109 + 8))(v70, v76);
  sub_10040696C();
  View.accessibilityHidden(_:)();
  sub_1000095E8(v75, &qword_10118E9D0, &qword_100ECAD98);
  [v115 lineHeight];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v77 = v112;
  sub_10003D17C(v73, v112, &qword_10118E9D8, &qword_100ECADA0);
  v78 = (v77 + *(v111 + 36));
  v79 = v123;
  v78[4] = v122;
  v78[5] = v79;
  v78[6] = v124;
  v80 = v119;
  *v78 = v118;
  v78[1] = v80;
  v81 = v121;
  v78[2] = v120;
  v78[3] = v81;
  v82 = v113;
  sub_10003D17C(v77, v113, &qword_10118E9E0, &unk_100ECADA8);
  v83 = v110;
  sub_1000089F8(v42, v110, &qword_10118E9F8, &unk_100ECADC8);
  v84 = v114;
  sub_1000089F8(v82, v114, &qword_10118E9E0, &unk_100ECADA8);
  v85 = v116;
  sub_1000089F8(v83, v116, &qword_10118E9F8, &unk_100ECADC8);
  v86 = sub_10010FC20(&qword_10118EA30, &qword_100ECAE18);
  sub_1000089F8(v84, v85 + *(v86 + 48), &qword_10118E9E0, &unk_100ECADA8);
  sub_1000095E8(v82, &qword_10118E9E0, &unk_100ECADA8);
  sub_1000095E8(v42, &qword_10118E9F8, &unk_100ECADC8);
  sub_1000095E8(v84, &qword_10118E9E0, &unk_100ECADA8);
  return sub_1000095E8(v83, &qword_10118E9F8, &unk_100ECADC8);
}

uint64_t sub_10040591C(uint64_t a1)
{
  v3[3] = &type metadata for Color;
  v3[4] = &protocol witness table for Color;
  v3[0] = static Color.accentColor.getter();
  return sub_100406AC0(v3, a1);
}

uint64_t sub_10040596C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v76 = a1;
  v86 = a3;
  v4 = sub_10010FC20(&qword_10118E9A8, &qword_100ECACF8);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin();
  v77 = &v75 - v5;
  v80 = sub_10010FC20(&qword_10118E9B0, &qword_100ECAD00) - 8;
  __chkstk_darwin();
  v79 = &v75 - v6;
  v85 = sub_10010FC20(&qword_10118E9B8, &qword_100ECAD08) - 8;
  __chkstk_darwin();
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v75 - v8;
  __chkstk_darwin();
  v87 = &v75 - v9;
  v84 = _s12PlaylistCellVMa(0);
  v10 = (a1 + *(v84 + 20));
  v11 = v10[1];
  *&v103 = *v10;
  *(&v103 + 1) = v11;
  sub_100009838();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.body.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10011895C(v12, v14, v16 & 1);

  static Color.primary.getter();
  v22 = Text.foregroundColor(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_10011895C(v17, v19, v21 & 1);

  *&v103 = v22;
  *(&v103 + 1) = v24;
  v26 &= 1u;
  LOBYTE(v104) = v26;
  *(&v104 + 1) = v28;
  v29 = v78;
  [v78 lineHeight];
  [v29 leading];
  v30 = v77;
  View.bodyHeadOutdent(_:)();
  sub_10011895C(v22, v24, v26);

  KeyPath = swift_getKeyPath();
  v32 = v79;
  v33.n128_f64[0] = (*(v82 + 32))(v79, v30, v83);
  v34 = v32 + *(v80 + 44);
  *v34 = KeyPath;
  *(v34 + 8) = 2;
  *(v34 + 16) = 0;
  v35 = v76;
  sub_100404628(v33);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v81;
  sub_10003D17C(v32, v81, &qword_10118E9B0, &qword_100ECAD00);
  v37 = (v36 + *(v85 + 44));
  v38 = v108;
  v37[4] = v107;
  v37[5] = v38;
  v37[6] = v109;
  v39 = v104;
  *v37 = v103;
  v37[1] = v39;
  v40 = v106;
  v37[2] = v105;
  v37[3] = v40;
  v41 = v87;
  sub_10003D17C(v36, v87, &qword_10118E9B8, &qword_100ECAD08);
  v42 = (v35 + *(v84 + 24));
  v44 = *v42;
  v43 = v42[1];
  v45 = sub_100479D70(&off_10109AC50);

  v46 = Text.init(optional:options:)(v44, v43, v45);
  v48 = v47;
  v50 = v49;
  v85 = v51;
  v84 = static Font.footnote.getter();
  v52 = swift_getKeyPath();
  v81 = v52;
  v83 = static Color.secondary.getter();
  v53 = swift_getKeyPath();
  v80 = v53;
  LODWORD(v82) = static Edge.Set.leading.getter();
  sub_100404628(v54);
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v102 = 0;
  v63 = v88;
  sub_1000089F8(v41, v88, &qword_10118E9B8, &qword_100ECAD08);
  v64 = v63;
  v65 = v86;
  sub_1000089F8(v64, v86, &qword_10118E9B8, &qword_100ECAD08);
  v66 = (v65 + *(sub_10010FC20(&qword_10118E9C0, &qword_100ECAD70) + 48));
  *&v89 = v46;
  *(&v89 + 1) = v48;
  v67 = v50;
  *&v90 = v50;
  v68 = v85;
  *(&v90 + 1) = v85;
  *&v91 = v52;
  v69 = v84;
  *(&v91 + 1) = v84;
  *&v92 = v53;
  v70 = v83;
  *(&v92 + 1) = v83;
  LOBYTE(v45) = v82;
  LOBYTE(v93) = v82;
  *(&v93 + 1) = v56;
  *&v94[0] = v58;
  *(&v94[0] + 1) = v60;
  *&v94[1] = v62;
  BYTE8(v94[1]) = 0;
  v71 = v90;
  *v66 = v89;
  v66[1] = v71;
  v72 = v92;
  v66[2] = v91;
  v66[3] = v72;
  v73 = v94[0];
  v66[4] = v93;
  v66[5] = v73;
  *(v66 + 89) = *(v94 + 9);
  sub_1000089F8(&v89, v95, &qword_10118E9C8, &qword_100ECAD78);
  sub_1000095E8(v87, &qword_10118E9B8, &qword_100ECAD08);
  v95[0] = v46;
  v95[1] = v48;
  v95[2] = v67;
  v95[3] = v68;
  v95[4] = v81;
  v95[5] = v69;
  v95[6] = v80;
  v95[7] = v70;
  v96 = v45;
  v97 = v56;
  v98 = v58;
  v99 = v60;
  v100 = v62;
  v101 = 0;
  sub_1000095E8(v95, &qword_10118E9C8, &qword_100ECAD78);
  return sub_1000095E8(v88, &qword_10118E9B8, &qword_100ECAD08);
}

void *sub_100405FC4()
{
  v1 = _s12PlaylistCellVMa(0);
  v27[0] = *(v0 + *(v1 + 20) + 8);
  v2 = (v0 + *(v1 + 24));
  v3 = v2[1];
  v27[1] = *v2;
  v27[2] = v3;

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v27[2 * v4];
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100498B7C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_100498B7C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  swift_arrayDestroy();
  v13 = *(v5 + 2);
  if (v13)
  {
    sub_10066CC74(0, v13, 0);
    sub_100009838();
    v14 = v5 + 40;
    do
    {

      v15 = Text.init<A>(_:)();
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        v25 = v16;
        v26 = v15;
        v22 = v17;
        v23 = v18;
        sub_10066CC74((v19 > 1), v20 + 1, 1);
        v17 = v22;
        v16 = v25;
        v15 = v26;
        v18 = v23;
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[4 * v20];
      v21[4] = v15;
      v21[5] = v16;
      *(v21 + 48) = v17 & 1;
      v21[7] = v18;
      v14 += 16;
      --v13;
    }

    while (v13);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004061FC@<X0>(uint64_t a3@<X8>)
{
  v22[1] = sub_10010FC20(&qword_1011A1440, &unk_100ECAF00);
  __chkstk_darwin();
  v5 = v22 - v4;
  v6 = sub_10010FC20(&qword_101185BB8, &unk_100EDD6F0);
  __chkstk_darwin();
  v8 = v22 - v7;

  v9 = Image.init(systemName:)();
  v10 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  *&v23 = v9;
  *(&v23 + 1) = KeyPath;
  *&v24 = v10;
  static Font.Weight.semibold.getter();
  sub_10010FC20(&unk_1011A1100, &unk_100ED3F40);
  sub_100238768();
  View.fontWeight(_:)();

  v12 = &v8[*(v6 + 36)];
  v13 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  v16 = enum case for DynamicTypeSize.accessibility1(_:);
  v17 = type metadata accessor for DynamicTypeSize();
  (*(*(v17 - 8) + 104))(v5, v16, v17);
  sub_100407058(&qword_1011A1490, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100239428();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v5, &qword_1011A1440, &unk_100ECAF00);
    sub_1000095E8(v8, &qword_101185BB8, &unk_100EDD6F0);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v19 = (a3 + *(sub_10010FC20(&qword_10118EAB8, &qword_100ECAF10) + 36));
    v20 = v24;
    *v19 = v23;
    v19[1] = v20;
    v19[2] = v25;
    result = sub_10010FC20(&qword_10118EAC0, &qword_100ECAF18);
    v21 = a3 + *(result + 36);
    *v21 = 0;
    *(v21 + 8) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004065A8()
{
  result = qword_10118E968;
  if (!qword_10118E968)
  {
    sub_1001109D0(&qword_10118E960, &unk_100ECACC0);
    sub_100406660();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E968);
  }

  return result;
}

unint64_t sub_100406660()
{
  result = qword_10118E970;
  if (!qword_10118E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E970);
  }

  return result;
}

unint64_t sub_1004066B4()
{
  result = qword_10118E978;
  if (!qword_10118E978)
  {
    sub_1001109D0(&qword_10118E930, &qword_100ECAC60);
    sub_1004065A8();
    sub_100407058(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118E978);
  }

  return result;
}

unint64_t sub_100406770()
{
  result = qword_10118EA00;
  if (!qword_10118EA00)
  {
    sub_1001109D0(&qword_10118E9E8, &qword_100ECADB8);
    sub_100406828();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA00);
  }

  return result;
}

unint64_t sub_100406828()
{
  result = qword_10118EA08;
  if (!qword_10118EA08)
  {
    sub_1001109D0(&qword_10118EA10, &qword_100ECAE08);
    sub_1004068E0();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA08);
  }

  return result;
}

unint64_t sub_1004068E0()
{
  result = qword_10118EA18;
  if (!qword_10118EA18)
  {
    sub_1001109D0(&qword_10118EA20, &qword_100ECAE10);
    sub_100238768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA18);
  }

  return result;
}

unint64_t sub_10040696C()
{
  result = qword_10118EA28;
  if (!qword_10118EA28)
  {
    sub_1001109D0(&qword_10118E9D0, &qword_100ECAD98);
    sub_1001109D0(&unk_10119F190, &qword_100EC1520);
    sub_1001109D0(&unk_1011A1400, &unk_100ECAD80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA28);
  }

  return result;
}

uint64_t sub_100406AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118D2A8, &unk_100EC8FE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100406B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistPicker.Mode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100406B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100406BF4()
{
  result = qword_10118EA88;
  if (!qword_10118EA88)
  {
    sub_1001109D0(&qword_10118EA78, &qword_100ECAE58);
    sub_100406C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA88);
  }

  return result;
}

unint64_t sub_100406C80()
{
  result = qword_10118EA90;
  if (!qword_10118EA90)
  {
    sub_1001109D0(&qword_10118EA70, &qword_100ECAE50);
    sub_1001109D0(&qword_10118EA60, &qword_100ECAE40);
    sub_1001109D0(&qword_10118EA58, &qword_100ECAE38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_10118D298, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EA90);
  }

  return result;
}

unint64_t sub_100406DE4()
{
  result = qword_10118EAA0;
  if (!qword_10118EAA0)
  {
    sub_1001109D0(&qword_10118E910, &qword_100ECAC40);
    sub_1001109D0(&qword_10118E900, &qword_100ECAC30);
    sub_100020674(&qword_10118E920, &qword_10118E900, &qword_100ECAC30, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAA0);
  }

  return result;
}

unint64_t sub_100406F10()
{
  result = qword_10118EAA8;
  if (!qword_10118EAA8)
  {
    sub_1001109D0(&qword_10118EAB0, &qword_100ECAEA8);
    sub_1001109D0(&qword_10118EA38, &qword_100ECAE20);
    sub_100020674(&qword_10118EA50, &qword_10118EA38, &qword_100ECAE20, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100407058(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAA8);
  }

  return result;
}

uint64_t sub_100407058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004070A0()
{
  result = qword_10118EAC8;
  if (!qword_10118EAC8)
  {
    sub_1001109D0(&qword_10118EAC0, &qword_100ECAF18);
    sub_10040712C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAC8);
  }

  return result;
}

unint64_t sub_10040712C()
{
  result = qword_10118EAD0;
  if (!qword_10118EAD0)
  {
    sub_1001109D0(&qword_10118EAB8, &qword_100ECAF10);
    sub_1001109D0(&qword_101185BB8, &unk_100EDD6F0);
    sub_1001109D0(&qword_1011A1440, &unk_100ECAF00);
    sub_100239428();
    sub_100020674(&qword_1011A14A0, &qword_1011A1440, &unk_100ECAF00, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118EAD0);
  }

  return result;
}

void sub_100407258(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_10118EB20, &unk_100ECAF80);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v11, v33);
        sub_10000DD18(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_1000160F8(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_1000095E8(v30, &qword_10118EB28, &qword_100F1C900);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_10000DD18(v31 + 8, v23);
        sub_1000095E8(v30, &qword_10118EB28, &qword_100F1C900);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_100019C10(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_10040DF5C(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_1000095E8(&v24, &qword_10118E0A0, &unk_100ECA380);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100407584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100019C10(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_1004075E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000160B4(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_10000DD18(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_10040764C(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1006C585C(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = sub_1006BE85C(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1006C811C();
        v11 = v14;
      }

      sub_100408638(v9, v11, v12);
      *v3 = v11;
    }
  }
}

void sub_10040770C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1006C59A4(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30, qword_100EBF960);
    sub_1004081A8(a2, a3, v8);

    sub_1000095E8(v8, &unk_101183F30, qword_100EBF960);
  }
}

Swift::Int sub_1004077DC(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2 == 1)
  {
    result = sub_1006CCC5C();
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v4;
      v17 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1006C8B54();
        v10 = v17;
      }

      sub_100020438(*(*(v10 + 56) + 24 * v8 + 8), *(*(v10 + 56) + 24 * v8 + 16));
      result = sub_10040907C(v8, v10, v11);
      *v5 = v10;
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = sub_1006C5FE0(a1 & 0x1FF, a2, a3, a4, v16);
    *v5 = v18;
  }

  return result;
}

uint64_t sub_1004078C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_10006800C(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10001621C(a2);
    *v2 = v6;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30, qword_100EBF960);
    sub_1004082F0(a2, v7);
    sub_10001621C(a2);
    return sub_1000095E8(v7, &unk_101183F30, qword_100EBF960);
  }

  return result;
}

_OWORD *sub_100407980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100016270(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1006C6DA4(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    sub_1000095E8(a1, &unk_101183F30, qword_100EBF960);
    v7 = sub_1006CCC5C();
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1006C992C();
        v11 = v14;
      }

      sub_100016270((*(v11 + 56) + 32 * v9), v15);
      sub_100409898(v9, v11, v12);
      *v3 = v11;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_1000095E8(v15, &unk_101183F30, qword_100EBF960);
  }

  return result;
}

uint64_t sub_100407A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&qword_10118EB30, &unk_100ECAF90);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v21 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1000095E8(a1, &qword_10118EB30, &unk_100ECAF90);
    v13 = sub_1006CCC5C();
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1006C9AA8();
        v17 = v22;
      }

      sub_10040DFB8(*(v17 + 56) + *(v9 + 72) * v15, v7);
      sub_100409A2C(v15, v17, v18);
      *v3 = v17;
      (*(v9 + 56))(v7, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    return sub_1000095E8(v7, &qword_10118EB30, &unk_100ECAF90);
  }

  else
  {
    sub_10040DFB8(a1, v12);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1006C6ED0(v12, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_100407CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_10118EB40, &qword_100ECAFA0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  type metadata accessor for Cache.Entry(0);
  v9 = __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1000095E8(a1, &qword_10118EB40, &qword_100ECAFA0);
    sub_100408394(a2, a3, v8);

    sub_1000095E8(v8, &qword_10118EB40, &qword_100ECAFA0);
  }

  else
  {
    sub_10040E028(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1006C716C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }
}

void sub_100407E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1006C77AC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_100019C10(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_1006CAB18();
        v13 = v16;
      }

      sub_100409F88(v9, v13, v14);
      *v4 = v13;
    }
  }
}

BOOL sub_100407F70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_100009F78(0, &qword_101197A30, NSObject_ptr);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_100407FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_100009F78(0, &qword_10118EB08, ICMediaUserState_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t *sub_1004080D0(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1004081A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100019C10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C8278();
      v10 = v13;
    }

    sub_100016270((*(v10 + 56) + 32 * v8), a3);
    sub_100408824(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_10040824C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100019C10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C89B0();
      v10 = v13;
    }

    sub_100016270((*(v10 + 56) + 32 * v8), a3);
    sub_100408ECC(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1004082F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000160B4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C8CD0();
      v9 = v12;
    }

    sub_10001621C(*(v9 + 48) + 40 * v7);
    sub_100016270((*(v9 + 56) + 32 * v7), a2);
    sub_10040921C(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100408394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100019C10(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1006C9E3C();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Cache.Entry(0);
    v20 = *(v12 - 8);
    sub_10040E028(v11 + *(v20 + 72) * v8, a3);
    sub_100409C14(v8, v10, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = type metadata accessor for Cache.Entry(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1004084EC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = sub_1006BEB80(a1);
    if (v15)
    {
      v3 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v19 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100409DFC(v3, v8, v17);
        goto LABEL_11;
      }

LABEL_15:
      sub_1006CA358();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_1005A32F4(v4, v7);

  v9 = sub_1006BEB80(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100409DFC(v9, v8, v13);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_100408638(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v4);
        v13 = (v11 + v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v4);
        v16 = (v14 + 8 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100408824(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v4);
        v17 = (v15 + 32 * v7);
        if (v4 != v7 || v16 >= v17 + 2)
        {
          v10 = v17[1];
          *v16 = *v17;
          v16[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1004089D0(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 32 * v7 + 24);
      Hasher.init(_seed:)();

      String.hash(into:)();
      if (v10)
      {
        String.hash(into:)();
      }

      v11 = Hasher._finalize()();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_12;
      }

      if (v4 >= v12)
      {
LABEL_12:
        v13 = *(a2 + 48);
        v14 = (v13 + 32 * v4);
        v15 = (v13 + 32 * v7);
        if (v4 != v7 || v14 >= v15 + 2)
        {
          v16 = v15[1];
          *v14 = *v15;
          v14[1] = v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v4);
        v19 = (v17 + 8 * v7);
        if (v4 != v7 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_100408BAC(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for EditorialVideoArtworkFlavor();
  v4 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_10040E08C(qword_10118EB48, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_100408ECC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

Swift::Int sub_10040907C(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v4);
        v15 = (v13 + v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v4;
        v18 = (v16 + 24 * v7);
        if (v4 != v7 || v17 >= v18 + 24)
        {
          v10 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10040921C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      sub_1000160F8(*(a2 + 48) + 40 * v7, v26);
      v11 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10001621C(v26);
      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v4;
          v17 = (v15 + 40 * v7);
          if (v4 != v7 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v4);
          v22 = (v20 + 32 * v7);
          if (v4 != v7 || v21 >= v22 + 2)
          {
            v10 = v22[1];
            *v21 = *v22;
            v21[1] = v10;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_1004093C0(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = result & v8;
      if (v4 >= v9)
      {
        if (v10 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v4);
        v13 = (v11 + 16 * v7);
        if (v4 != v7 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (16 * v4 != 16 * v7 || (v4 = v7, v15 >= v16 + 1))
        {
          *v15 = *v16;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100409578(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for IndexPath();
  v4 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_10040E08C(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

Swift::Int sub_100409898(Swift::Int result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v4);
        v15 = (v13 + v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100409A2C(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v10 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v4);
      v14 = (v12 + v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8) + 72);
      v17 = v16 * v4;
      result = v15 + v16 * v4;
      v18 = v16 * v7;
      v19 = v15 + v16 * v7 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100409C14(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v10 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v4);
      v13 = (v11 + 16 * v7);
      if (v4 != v7 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Cache.Entry(0) - 8) + 72);
      v16 = v15 * v4;
      result = v14 + v15 * v4;
      v17 = v15 * v7;
      v18 = v14 + v15 * v7 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}