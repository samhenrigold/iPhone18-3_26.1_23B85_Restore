uint64_t sub_100B9E1C0()
{
  *(*v1 + 856) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_100B9EF88;
  }

  else
  {
    v2 = sub_100B9E320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9E320()
{
  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);
  v1 = *(v0 + 856);
  sub_100044B68(*(v0 + 672), *(v0 + 696));
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 760);
    v3 = *(v0 + 696);
    v4 = *(v0 + 632);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 472);

    sub_100BA30D8(v9, type metadata accessor for CRLUSDRendering.CompressionRequest);
    (*(v7 + 8))(v6, v8);
    v2(v4, v5);
    sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);

    v10 = *(v0 + 8);
LABEL_3:

    return v10();
  }

  v12 = *(v0 + 792);
  v13 = *(v0 + 696);
  v14 = *(v0 + 664);
  v15 = *(v0 + 552);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(15, 1, *(v0 + 816));
  sub_10001ACF0(v13, v14);
  if (v12(v14, 1, v15) == 1)
  {
    sub_10000CAAC(*(v0 + 664), &unk_1019F33C0, &unk_101468A60);
    goto LABEL_25;
  }

  (*(*(v0 + 560) + 32))(*(v0 + 600), *(v0 + 664), *(v0 + 552));
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  *(v0 + 360) = 0;
  v19 = [v17 attributesOfItemAtPath:v18 error:v0 + 360];

  v20 = *(v0 + 360);
  if (!v19)
  {
    v48 = *(v0 + 760);
    v49 = *(v0 + 600);
    v50 = *(v0 + 552);
    v51 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v48(v49, v50);
    goto LABEL_25;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100BA3138(&qword_1019F3C88, 255, type metadata accessor for FileAttributeKey, byte_10146B52C);
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v20;

  if (!*(v21 + 16) || (v23 = sub_10006E4C8(NSFileSize), (v24 & 1) == 0))
  {
    v45 = *(v0 + 760);
    v46 = *(v0 + 600);
    v47 = *(v0 + 552);

    v45(v46, v47);
    goto LABEL_25;
  }

  sub_100064288(*(v21 + 56) + 32 * v23, v0 + 296);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v85 = *(v0 + 368);
  v25 = [v16 defaultManager];
  URL.path.getter();
  v26 = String._bridgeToObjectiveC()();

  *(v0 + 376) = 0;
  v27 = [v25 attributesOfItemAtPath:v26 error:v0 + 376];

  v28 = *(v0 + 376);
  if (!v27)
  {
    v55 = *(v0 + 760);
    v56 = *(v0 + 600);
    v57 = *(v0 + 552);
    v58 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v55(v56, v57);
    goto LABEL_25;
  }

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v28;

  if (!*(v29 + 16) || (v31 = sub_10006E4C8(NSFileSize), (v32 & 1) == 0))
  {
    v52 = *(v0 + 760);
    v53 = *(v0 + 600);
    v54 = *(v0 + 552);

    v52(v53, v54);
    goto LABEL_25;
  }

  sub_100064288(*(v29 + 56) + 32 * v31, v0 + 328);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    (*(v0 + 760))(*(v0 + 600), *(v0 + 552));
    goto LABEL_25;
  }

  v33 = *(v0 + 384);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 392);
  v35 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLUSDItemImporter();
  result = sub_100BA3138(&qword_101A13C20, v37, type metadata accessor for CRLUSDItemImporter, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v34;
  *(inited + 64) = result;
  v38 = v85 - v33;
  if (__OFSUB__(v85, v33))
  {
    __break(1u);
    return result;
  }

  v39 = *(v0 + 760);
  v40 = *(v0 + 600);
  v41 = *(v0 + 552);
  v42 = *(v0 + 392);
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &protocol witness table for Int64;
  *(inited + 72) = v38;
  v43 = v42;
  v44 = static os_log_type_t.info.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Importer (%p) compressed reduced: %d", 36, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v39(v40, v41);
LABEL_25:
  v59 = *(v0 + 792);
  v60 = *(v0 + 696);
  v61 = *(v0 + 656);
  v62 = *(v0 + 552);
  v63 = [*(v0 + 392) boardItemFactory];
  v86 = *&v63[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

  sub_10001ACF0(v60, v61);
  if (v59(v61, 1, v62) == 1)
  {
    v64 = *(v0 + 792);
    v65 = *(v0 + 656);
    v66 = *(v0 + 552);
    (*(v0 + 736))(*(v0 + 592), *(v0 + 632), v66);
    if (v64(v65, 1, v66) != 1)
    {
      sub_10000CAAC(*(v0 + 656), &unk_1019F33C0, &unk_101468A60);
    }
  }

  else
  {
    (*(*(v0 + 560) + 32))(*(v0 + 592), *(v0 + 656), *(v0 + 552));
  }

  v82 = *(v0 + 760);
  v67 = *(v0 + 736);
  v68 = *(v0 + 632);
  v69 = *(v0 + 592);
  v70 = *(v0 + 584);
  v71 = *(v0 + 552);
  v72 = *(v0 + 536);
  v83 = *(v0 + 528);
  v84 = *(v0 + 544);
  v81 = *(v0 + 472);
  v73 = URL.lastPathComponent.getter();
  v75 = v74;
  v67(v70, v69, v71);
  v76 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
  v77 = v86;
  v78 = sub_100BA1E7C(v70, v73, v75, v77, v76);

  v82(v69, v71);
  sub_100BA30D8(v81, type metadata accessor for CRLUSDRendering.CompressionRequest);
  (*(v72 + 8))(v84, v83);
  v82(v68, v71);
  *(v0 + 864) = v78;
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
  if (!v78)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

    v10 = *(v0 + 8);
    goto LABEL_3;
  }

  static Task<>.checkCancellation()();
  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  *(v0 + 185) = byte_101AD6F08;
  v79 = swift_task_alloc();
  *(v0 + 872) = v79;
  *v79 = v0;
  v79[1] = sub_100B9F214;
  v80 = *(v0 + 432);

  return sub_100CF18DC(v80);
}

uint64_t sub_100B9EF88()
{
  v1 = v0[95];
  v2 = v0[87];
  v3 = v0[79];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[59];

  sub_100BA30D8(v8, type metadata accessor for CRLUSDRendering.CompressionRequest);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  sub_10000CAAC(v2, &unk_1019F33C0, &unk_101468A60);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B9F214()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_100BA12FC;
  }

  else
  {
    v2 = sub_100B9F354;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9F354()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_10001ACF0(*(v0 + 696), v1);
  v4 = *(v2 + 48);
  if (v4(v1, 1, v3) == 1)
  {
    sub_10000CAAC(*(v0 + 648), &unk_1019F33C0, &unk_101468A60);
  }

  else
  {
    v5 = *(v0 + 576);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    (*(v6 + 32))(v5, *(v0 + 648), v7);
    v8 = [objc_opt_self() defaultManager];
    sub_101089214();

    (*(v6 + 8))(v5, v7);
  }

  v9 = *(v0 + 880);
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.6];
  static Task<>.checkCancellation()();
  if (v9)
  {
    v10 = (v0 + 696);
    sub_100BA30D8(*(v0 + 432), type metadata accessor for CRLAssetData);
    v11 = *(v0 + 864);
    v12 = sub_100BA2560(v9);
    sub_100BA1860(v12);

LABEL_11:
    sub_10000CAAC(*v10, &unk_1019F33C0, &unk_101468A60);

    v30 = *(v0 + 8);

    return v30();
  }

  v13 = [*(v0 + 392) boardItemFactory];
  v14 = *(*&v13[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] + OBJC_IVAR____TtC8Freeform8CRLBoard_store);

  v15 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v17 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v17)
  {
    v18 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v19 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v20 = v14;
    v21 = sub_10001F1A0(v20);

    v22 = *&v14[v16];
    *&v14[v16] = v21;
    v18 = v21;

    v17 = 0;
  }

  v23 = *(v0 + 640);
  v24 = *(v0 + 552);
  v25 = *(v0 + 432);
  v26 = *(v15 + 16);
  v27 = v17;
  os_unfair_lock_unlock(v26);
  sub_10108CAF4(v25, 0, 3, 0, 0, v23);

  if (v4(v23, 1, v24) == 1)
  {
    v10 = (v0 + 640);
    v28 = *(v0 + 696);
    v29 = *(v0 + 432);

    sub_100BA30D8(v29, type metadata accessor for CRLAssetData);
    sub_10000CAAC(v28, &unk_1019F33C0, &unk_101468A60);
    goto LABEL_11;
  }

  (*(*(v0 + 560) + 32))(*(v0 + 568), *(v0 + 640), *(v0 + 552));
  v32 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:0 heightValid:0 horizontalFlip:0.0 verticalFlip:0.0 angle:{300.0, 300.0, 0.0}];
  *(v0 + 888) = v32;
  [v32 size];
  *(v0 + 896) = sub_10011ECB4();
  *(v0 + 904) = v33;
  *(v0 + 912) = v34;
  *(v0 + 920) = v35;
  *(v0 + 928) = type metadata accessor for MainActor();
  *(v0 + 936) = static MainActor.shared.getter();
  v36 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 944) = v36;
  *(v0 + 952) = v37;

  return _swift_task_switch(sub_100B9F93C, v36, v37);
}

uint64_t sub_100B9F93C(uint64_t a1)
{
  if (*(v1 + 185) == 1)
  {
    v2 = *(v1 + 720);
    v3 = *(v1 + 552);
    _s17QLSnapshotBackendCMa(0);
    v4 = swift_allocObject();
    *(v1 + 960) = v4;
    v4[1] = vdupq_n_s64(0x408F400000000000uLL);
    v2(&v4->i8[OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL], 1, 1, v3);
    v5 = &v4->i8[OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate];
    *(&v4->i64[1] + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate) = 0;
    swift_unknownObjectWeakInit();
    UUID.init()();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
    _s17QLSnapshotBackendC12BackendStateOMa(0);
    swift_storeEnumTagMultiPayload();
    *(v1 + 968) = static MainActor.shared.getter();
    v6 = swift_task_alloc();
    *(v1 + 976) = v6;
    *v6 = v1;
    v6[1] = sub_100B9FB94;
    v7 = *(v1 + 920);
    v8 = *(v1 + 912);
    v9 = *(v1 + 904);
    v10 = *(v1 + 896);
    v11 = *(v1 + 568);

    return sub_10112B93C(v1 + 192, v11, v4, &off_10188D2F0, 2.0, 1.0, v10, v9, v8, v7);
  }

  else
  {
    *(v1 + 1048) = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v1 + 1056) = v13;
    *(v1 + 1064) = v14;

    return _swift_task_switch(sub_100B9FFEC, v13, v14);
  }
}

uint64_t sub_100B9FB94()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 984) = v0;
  v4 = *(v3 + 208);
  *(v3 + 992) = *(v3 + 192);
  *(v3 + 1008) = v4;
  *(v3 + 1024) = *(v3 + 224);
  *(v3 + 1040) = *(v2 + 240);
  *(v3 + 186) = *(v3 + 248);

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_100B9FEB0;
  }

  else
  {
    v7 = sub_100B9FD50;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100B9FD50()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100B9FDF0, v2, v1);
}

uint64_t sub_100B9FDF0()
{
  v1 = *(v0 + 1008);
  *(v0 + 1200) = *(v0 + 1024);
  v2 = *(v0 + 992);
  *(v0 + 1184) = v1;
  v3 = *(v0 + 1040);
  v4 = *(v0 + 984);
  *(v0 + 188) = *(v0 + 186);
  *(v0 + 1216) = v3;
  *(v0 + 1168) = v2;
  *(v0 + 1160) = v4;

  return _swift_task_switch(sub_100BA0698, 0, 0);
}

uint64_t sub_100B9FEB0()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100B9FF50, v2, v1);
}

uint64_t sub_100B9FF50()
{
  *(v0 + 1224) = *(v0 + 984);

  return _swift_task_switch(sub_100BA0AB8, 0, 0);
}

uint64_t sub_100B9FFEC()
{
  v1 = objc_allocWithZone(_s15AppExRepBackendCMa(0));
  v2 = sub_1008657BC(0, 0, 0);
  *(v0 + 134) = v2;
  *(v0 + 135) = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_100BA0114;
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  v8 = *(v0 + 71);

  return sub_10112B93C((v0 + 16), v8, v2, &off_1018897F8, 2.0, 1.0, v7, v6, v5, v4);
}

uint64_t sub_100BA0114()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 144);
  *(v3 + 1104) = *(v3 + 128);
  *(v3 + 1096) = v0;
  *(v3 + 1120) = v4;
  *(v3 + 1136) = *(v3 + 160);
  *(v3 + 1152) = *(v2 + 176);
  *(v3 + 187) = *(v3 + 184);

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_100BA04C8;
  }

  else
  {
    v7 = sub_100BA02D4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100BA02D4()
{
  v1 = v0[134];

  v2 = v0[133];
  v3 = v0[132];

  return _swift_task_switch(sub_100BA0370, v3, v2);
}

uint64_t sub_100BA0370()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100BA0404, v2, v1);
}

uint64_t sub_100BA0404()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1096);
  *(v0 + 188) = *(v0 + 187);
  *(v0 + 1216) = v1;
  *(v0 + 1200) = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1168) = *(v0 + 1104);
  *(v0 + 1160) = v2;

  return _swift_task_switch(sub_100BA0698, 0, 0);
}

uint64_t sub_100BA04C8()
{

  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);

  return _swift_task_switch(sub_100BA0568, v2, v1);
}

uint64_t sub_100BA0568()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100BA05FC, v2, v1);
}

uint64_t sub_100BA05FC()
{
  *(v0 + 1224) = *(v0 + 1096);

  return _swift_task_switch(sub_100BA0AB8, 0, 0);
}

uint64_t sub_100BA0698(uint64_t a1)
{
  v2 = *(v1 + 1160);
  static Task<>.checkCancellation()();
  v3 = *(v1 + 1176);
  v4 = *(v1 + 1168);
  if (v2)
  {
    v5 = *(v1 + 568);
    v6 = *(v1 + 560);
    v7 = *(v1 + 552);
    v8 = *(v1 + 432);

    sub_10002640C(v4, v3);
    (*(v6 + 8))(v5, v7);
    sub_100BA30D8(v8, type metadata accessor for CRLAssetData);
    v12 = *(v1 + 864);
    v13 = sub_100BA2560(v2);
    sub_100BA1860(v13);

    sub_10000CAAC(*(v1 + 696), &unk_1019F33C0, &unk_101468A60);

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    v9 = [*(v1 + 392) boardItemFactory];
    v10 = *&v9[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

    objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
    v11 = v10;
    sub_100024E98(v4, v3);
    *(v1 + 1232) = sub_100CF051C(v4, v3, 0xD000000000000010, 0x800000010158E0A0, v11);

    v16 = swift_task_alloc();
    *(v1 + 1240) = v16;
    *v16 = v1;
    v16[1] = sub_100BA0D48;
    v17 = *(v1 + 424);

    return sub_100CF18DC(v17);
  }
}

uint64_t sub_100BA0AB8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 432);

  (*(v2 + 8))(v1, v3);
  sub_100BA30D8(v4, type metadata accessor for CRLAssetData);
  v5 = *(v0 + 864);
  v6 = sub_100BA2560(*(v0 + 1224));
  sub_100BA1860(v6);

  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BA0D48()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = sub_100BA1540;
  }

  else
  {
    v2 = sub_100BA0E88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BA0E88(uint64_t a1)
{
  v2 = *(v1 + 1248);
  static Task<>.checkCancellation()();
  v3 = *(v1 + 1232);
  if (v2)
  {
    v4 = *(v1 + 1176);
    v5 = *(v1 + 1168);
    v6 = *(v1 + 568);
    v7 = *(v1 + 560);
    v8 = *(v1 + 552);
    v10 = *(v1 + 424);
    v9 = *(v1 + 432);

    sub_10002640C(v5, v4);
    sub_100BA30D8(v10, type metadata accessor for CRLAssetData);
    (*(v7 + 8))(v6, v8);
    sub_100BA30D8(v9, type metadata accessor for CRLAssetData);
    v11 = *(v1 + 864);
    v12 = sub_100BA2560(v2);
    sub_100BA1860(v12);
  }

  else
  {
    v30 = *(v1 + 188);
    v29 = *(v1 + 1216);
    v36 = *(v1 + 1176);
    v35 = *(v1 + 1168);
    v13 = *(v1 + 888);
    v33 = *(v1 + 864);
    v14 = *(v1 + 712);
    v31 = *(v1 + 704);
    v38 = *(v1 + 568);
    v34 = *(v1 + 560);
    v37 = *(v1 + 552);
    v15 = *(v1 + 424);
    v16 = *(v1 + 432);
    v32 = v15;
    v18 = *(v1 + 408);
    v17 = *(v1 + 416);
    v20 = *(v1 + 392);
    v19 = *(v1 + 400);
    v27 = *(v1 + 1200);
    v28 = *(v1 + 1184);
    v21 = [v20 boardItemFactory];
    sub_1008786E0(v15, v19);
    (*(v17 + 56))(v19, 0, 1, v18);
    *(v1 + 256) = v28;
    *(v1 + 272) = v27;
    *(v1 + 288) = 0;
    v22 = sub_10110E108(v13, v16, v19, (v1 + 256), v29, v30);

    sub_10000CAAC(v19, &unk_101A1B880, &unk_10147AB00);
    v23 = *&v20[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem];
    *&v20[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] = v22;

    v24 = *&v20[v31];
    [v24 setValue:v14 * 0.9];

    sub_10002640C(v35, v36);
    sub_100BA30D8(v32, type metadata accessor for CRLAssetData);
    (*(v34 + 8))(v38, v37);
    sub_100BA30D8(v16, type metadata accessor for CRLAssetData);
  }

  sub_10000CAAC(*(v1 + 696), &unk_1019F33C0, &unk_101468A60);

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_100BA12FC()
{
  v1 = v0[108];
  v2 = sub_100BA2560(v0[110]);
  sub_100BA1860(v2);

  sub_10000CAAC(v0[87], &unk_1019F33C0, &unk_101468A60);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BA1540()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 432);

  sub_10002640C(v3, v2);
  (*(v5 + 8))(v4, v6);
  sub_100BA30D8(v7, type metadata accessor for CRLAssetData);
  v8 = *(v0 + 864);
  v9 = sub_100BA2560(*(v0 + 1248));
  sub_100BA1860(v9);

  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0, &unk_101468A60);

  v10 = *(v0 + 8);

  return v10();
}

double sub_100BA1860(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error] = a1;
  swift_errorRetain();

  if (a1)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    *(inited + 56) = type metadata accessor for CRLUSDItemImporter();
    *(inited + 64) = sub_100BA3138(&qword_101A13C20, v6, type metadata accessor for CRLUSDItemImporter, &protocol conformance descriptor for NSObject);
    *(inited + 32) = v1;
    swift_getErrorValue();
    v7 = v1;
    v8 = Error.publicDescription.getter(v16, v17);
    v10 = v9;
    *(inited + 96) = &type metadata for String;
    v11 = sub_1000053B0();
    *(inited + 104) = v11;
    *(inited + 72) = v8;
    *(inited + 80) = v10;
    swift_getErrorValue();
    v12 = Error.fullDescription.getter(v15);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v11;
    *(inited + 112) = v12;
    *(inited + 120) = v13;
    v14 = static os_log_type_t.error.getter();
    sub_100005404(v4, &_mh_execute_header, v14, "Importer (%p) error: %{public}@ <%@>", 36, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
  }

  return result;
}

id sub_100BA1A5C(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_largeBoundingSize] = vdupq_n_s64(0x4072C00000000000uLL);
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_smallBoundingSize] = vdupq_n_s64(0x4051800000000000uLL);
  v6 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  *&v3[v6] = [objc_allocWithZone(CRLBasicProgress) initWithMaxValue:100.0];
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer] = xmmword_101482150;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] = 0;
  v7 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error] = 0;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CRLUSDItemImporter();
  v10 = objc_msgSendSuper2(&v13, "initWithURL:boardItemFactory:", v9, a2);

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_100BA1C3C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_largeBoundingSize] = vdupq_n_s64(0x4072C00000000000uLL);
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_smallBoundingSize] = vdupq_n_s64(0x4051800000000000uLL);
  v5 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  *&v2[v5] = [objc_allocWithZone(CRLBasicProgress) initWithMaxValue:100.0];
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer] = xmmword_101482150;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLUSDItemImporter();
  v6 = objc_msgSendSuper2(&v8, "initWithData:boardItemFactory:", a1, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_100BA1D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDItemImporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100BA1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    a3 = v15;
  }

  v53 = type metadata accessor for CRLPreinsertionAssetWrapper(0);
  v16 = objc_allocWithZone(v53);
  v51 = v12;
  v52 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v45 = a2;
    v46 = a3;
    v47 = v13;
    v48 = a4;
    v49 = a1;
    v50 = a5;
    v44 = objc_opt_self();
    v17 = [v44 _atomicIncrementAssertCount];
    v55 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v55, "Invalid init arguments.", 23, 2u);
    StaticString.description.getter("init(url:filename:owner:alreadyInsertedAsset:tempDir:)", 54, 2);
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_100BA3138(&qword_1019F52E0, 255, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 82;
    v29 = v55;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Invalid init arguments.", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(url:filename:owner:alreadyInsertedAsset:tempDir:)", 54, 2);
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLPreinsertionAssetWrapper.swift", 99, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Invalid init arguments.", 23, 2);
    v38 = String._bridgeToObjectiveC()();

    [v44 handleFailureInFunction:v36 file:v37 lineNumber:82 isFatal:0 format:v38 args:v35];

    a1 = v49;
    v13 = v47;
    a4 = v48;
    a2 = v45;
    a3 = v46;
  }

  v39 = v51;
  sub_10001ACF0(v51, &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url]);
  v40 = &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
  *v40 = a2;
  *(v40 + 1) = a3;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = a4;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = 0;
  v54.receiver = v16;
  v54.super_class = v53;
  v41 = objc_msgSendSuper2(&v54, "init");
  (*(v52 + 8))(a1, v13);
  sub_10000CAAC(v39, &unk_1019F33C0, &unk_101468A60);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v41;
}

uint64_t sub_100BA246C()
{
  result = sub_1002BC924(0x2000000000000uLL);
  if (result)
  {
    v1 = [objc_opt_self() defaultManager];
    if (URL.isFileURL.getter())
    {
      v4 = 0;
      URL.path.getter();
      v2 = String._bridgeToObjectiveC()();

      v3 = [v1 fileExistsAtPath:v2 isDirectory:&v4];

      return v3 & (v4 ^ 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_100BA2560(unint64_t a1)
{
  v99 = a1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {
    if (v98 == 6 && v97 == 0)
    {
      v62 = objc_opt_self();
      v63 = [v62 mainBundle];
      v64 = String._bridgeToObjectiveC()();
      v65 = String._bridgeToObjectiveC()();
      v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = [v62 mainBundle];
      v68 = String._bridgeToObjectiveC()();
      v69 = String._bridgeToObjectiveC()();
      v70 = [v67 localizedStringForKey:v68 value:v69 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = sub_10000BCE4(_swiftEmptyArrayStorage);
      v96 = &type metadata for Bool;
      LOBYTE(v95) = 1;
      sub_10000BF3C(&v95, v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EF34(v94, 0xD000000000000026, 0x800000010158BA90, isUniquelyReferenced_nonNull_native);
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      swift_getErrorValue();
      v96 = v90;
      v76 = sub_10002C58C(&v95);
      (*(*(v90 - 1) + 16))(v76);
      sub_10000BF3C(&v95, v94);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EF34(v94, v73, v75, v77);

      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
      type metadata accessor for CRLBoardItemImporterErrorMediaType(0);
      v96 = v81;
      *&v95 = 104;
      sub_10000BF3C(&v95, v94);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EF34(v94, v78, v80, v82);

      v83 = v71;
      v84 = objc_opt_self();
      v85 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
      v86 = String._bridgeToObjectiveC()();
      v87 = String._bridgeToObjectiveC()();
      sub_10007941C(v83);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = [v84 crl_errorWithDomain:v85 code:105 alertTitle:v86 alertMessage:v87 userInfo:isa];

      goto LABEL_12;
    }

    sub_100863EEC(v97, *(&v97 + 1), v98);
  }

  *&v97 = a1;
  swift_errorRetain();
  if (swift_dynamicCast() && v91 == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = [v3 mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10000BCE4(_swiftEmptyArrayStorage);
    v96 = &type metadata for Bool;
    LOBYTE(v95) = 1;
    sub_10000BF3C(&v95, v94);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v12;
    sub_100A9EF34(v94, 0xD000000000000026, 0x800000010158BA90, v13);
    v14 = v99;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    swift_getErrorValue();
    v96 = v92;
    v18 = sub_10002C58C(&v95);
    (*(*(v92 - 1) + 16))(v18);
    sub_10000BF3C(&v95, v94);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v14;
    sub_100A9EF34(v94, v15, v17, v19);

    v20 = v99;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    type metadata accessor for CRLBoardItemImporterErrorMediaType(0);
    v96 = v24;
    *&v95 = 104;
    sub_10000BF3C(&v95, v94);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v20;
    sub_100A9EF34(v94, v21, v23, v25);

    v26 = v99;
    v27 = objc_opt_self();
    v28 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    sub_10007941C(v26);

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = [v27 crl_errorWithDomain:v28 code:103 alertTitle:v29 alertMessage:v30 userInfo:v31];

LABEL_12:

    return v32;
  }

  v33 = objc_opt_self();
  v34 = [v33 mainBundle];
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = [v33 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = sub_10000BCE4(_swiftEmptyArrayStorage);
  v96 = &type metadata for Bool;
  LOBYTE(v95) = 1;
  sub_10000BF3C(&v95, v94);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v42;
  sub_100A9EF34(v94, 0xD000000000000026, 0x800000010158BA90, v43);
  v44 = v97;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  swift_getErrorValue();
  v96 = v93;
  v48 = sub_10002C58C(&v95);
  (*(*(v93 - 1) + 16))(v48);
  sub_10000BF3C(&v95, v94);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v44;
  sub_100A9EF34(v94, v45, v47, v49);

  v50 = v97;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  type metadata accessor for CRLBoardItemImporterErrorMediaType(0);
  v96 = v54;
  *&v95 = 104;
  sub_10000BF3C(&v95, v94);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v50;
  sub_100A9EF34(v94, v51, v53, v55);

  v56 = v97;
  v57 = objc_opt_self();
  v58 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
  v59 = String._bridgeToObjectiveC()();
  v60 = String._bridgeToObjectiveC()();
  sub_10007941C(v56);

  v61 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v57 crl_errorWithDomain:v58 code:100 alertTitle:v59 alertMessage:v60 userInfo:v61];

  return v32;
}

uint64_t sub_100BA30D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100BA3138(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100BA3180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100B9B6FC(a1, v4, v5, v6);
}

unint64_t sub_100BA3234()
{
  result = qword_101A13C28;
  if (!qword_101A13C28)
  {
    result = swift_getWitnessTable(byte_10149D878, &type metadata for CRLUSDItemImporter.USDImportError, v0, v1);
    atomic_store(result, &qword_101A13C28);
  }

  return result;
}

uint64_t sub_100BA3288()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_100B9ADF8(v2, v3);
}

unint64_t sub_100BA3348()
{
  result = qword_101A13C30;
  if (!qword_101A13C30)
  {
    result = swift_getWitnessTable(byte_10149D850, &type metadata for CRLUSDItemImporter.USDImportError, v0, v1);
    atomic_store(result, &qword_101A13C30);
  }

  return result;
}

unint64_t sub_100BA33A0()
{
  result = qword_101A13C38;
  if (!qword_101A13C38)
  {
    result = swift_getWitnessTable("\th9", &type metadata for CRLAddItemToBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13C38);
  }

  return result;
}

unint64_t sub_100BA33F8()
{
  result = qword_101A13C40;
  if (!qword_101A13C40)
  {
    result = swift_getWitnessTable(byte_10149D988, &type metadata for CRLAddItemToBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13C40);
  }

  return result;
}

uint64_t sub_100BA349C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a1;
  v144 = a3;
  v137 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v134 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v133 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for LocalizedStringResource();
  v158 = *(v155 - 8);
  __chkstk_darwin(v155);
  v146 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for InputConnectionBehavior();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v149 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v11 - 8);
  v145 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v154 = &v130 - v14;
  v15 = sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  __chkstk_darwin(v15 - 8);
  v132 = &v130 - v16;
  v17 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v17 - 8);
  v138 = &v130 - v18;
  v19 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v148 = &v130 - v22;
  __chkstk_darwin(v23);
  v150 = &v130 - v24;
  v151 = type metadata accessor for CRLBoardEntity(0);
  v131 = *(v151 - 8);
  __chkstk_darwin(v151);
  v143 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v142 = &v130 - v27;
  __chkstk_darwin(v28);
  v156 = &v130 - v29;
  v30 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v30 - 8);
  v171 = (&v130 - v31);
  v32 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v32 - 8);
  v140 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v139 = &v130 - v35;
  __chkstk_darwin(v36);
  v147 = &v130 - v37;
  __chkstk_darwin(v38);
  v40 = &v130 - v39;
  v178 = type metadata accessor for URL();
  v41 = *(v178 - 8);
  __chkstk_darwin(v178);
  v169 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v168 = &v130 - v44;
  v45 = sub_1005B981C(&qword_101A13C68, &unk_10149DA78);
  __chkstk_darwin(v45 - 8);
  v47 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = &v130 - v49;
  v51 = type metadata accessor for IntentFile();
  __chkstk_darwin(v51);
  v177 = &v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a2 + 16);
  v153 = v41;
  if (v54)
  {
    v55 = a2 + 32;
    v56 = (v41 + 48);
    v164 = (v41 + 32);
    v163 = (v41 + 16);
    v162 = (v41 + 8);
    v175 = (v52 + 56);
    v174 = (v52 + 48);
    v167 = v52;
    v173 = (v52 + 32);
    v179 = _swiftEmptyArrayStorage;
    v176 = v40;
    v170 = v47;
    v166 = v50;
    v165 = v51;
    while (1)
    {
      v180 = v55;
      sub_10000630C(v55, v185);
      v57 = v186;
      v58 = v187;
      sub_100020E58(v185, v186);
      (*(v58 + 16))(v57, v58);
      if ((*v56)(v40, 1, v178) != 1)
      {
        break;
      }

      sub_10000CAAC(v40, &unk_1019F33C0, &unk_101468A60);
      v59 = v186;
      v60 = v187;
      sub_100020E58(v185, v186);
      (*(v60 + 8))(v59, v60);
      if (v61 >> 60 != 15)
      {
        v172 = v54;
        v75 = v186;
        v76 = v187;
        sub_100020E58(v185, v186);
        v77 = v75;
        v47 = v170;
        v161 = (*(v76 + 24))(v77, v76);
        v160 = v78;
        v80 = v186;
        v79 = v187;
        sub_100020E58(v185, v186);
        (*(v79 + 32))(v80, v79);
        v54 = v172;
        IntentFile.init(data:filename:type:)();
        goto LABEL_10;
      }

      v62 = 1;
LABEL_11:
      (*v175)(v47, v62, 1, v51);
      sub_100BAB424(v47, v50);
      sub_100005070(v185);
      if ((*v174)(v50, 1, v51) == 1)
      {
        sub_10000CAAC(v50, &qword_101A13C68, &unk_10149DA78);
      }

      else
      {
        v81 = *v173;
        (*v173)(v177, v50, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = sub_100B372BC(0, *(v179 + 2) + 1, 1, v179);
        }

        v83 = *(v179 + 2);
        v82 = *(v179 + 3);
        v84 = v167;
        if (v83 >= v82 >> 1)
        {
          v86 = sub_100B372BC((v82 > 1), v83 + 1, 1, v179);
          v84 = v167;
          v179 = v86;
        }

        v85 = v179;
        *(v179 + 2) = v83 + 1;
        v81(&v85[((*(v84 + 80) + 32) & ~*(v84 + 80)) + v84[9] * v83], v177, v51);
      }

      v40 = v176;
      v55 = v180 + 40;
      v54 = (v54 - 1);
      if (!v54)
      {
        goto LABEL_18;
      }
    }

    v63 = v168;
    v64 = v178;
    (*v164)(v168, v40, v178);
    (*v163)(v169, v63, v64);
    v65 = v186;
    v66 = v187;
    sub_100020E58(v185, v186);
    v172 = (*(v66 + 24))(v65, v66);
    v67 = v56;
    v68 = v54;
    v69 = v186;
    v70 = v187;
    sub_100020E58(v185, v186);
    v71 = *(v70 + 32);
    v72 = v69;
    v47 = v170;
    v73 = v70;
    v54 = v68;
    v56 = v67;
    v71(v72, v73);
    v51 = v165;
    IntentFile.init(fileURL:filename:type:)();
    v74 = v63;
    v50 = v166;
    (*v162)(v74, v64);
LABEL_10:
    v62 = 0;
    goto LABEL_11;
  }

  v179 = _swiftEmptyArrayStorage;
LABEL_18:
  if (*(v179 + 2))
  {
    sub_1006B05D0(v152, v156);
    v168 = type metadata accessor for AttributedString();
    v87 = *(v168 - 1);
    v167 = *(v87 + 56);
    v169 = (v87 + 56);
    (v167)(v150, 1, 1, v168);
    v88 = *(v153 + 56);
    v153 += 56;
    v171 = v88;
    v88(v147, 1, 1, v178);
    v184[3] = &type metadata for CRLAddItemToBoardIntentPerformer;
    v184[4] = &off_1018AC330;
    v89 = swift_allocObject();
    v184[0] = v89;
    v89[5] = &type metadata for CRLInsertFilesToBoardIntentPerformer;
    v89[6] = &off_101887238;
    v90 = swift_allocObject();
    v89[2] = v90;
    *(v90 + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
    *(v90 + 48) = &off_101891740;
    v89[10] = &type metadata for CRLInsertURLToBoardIntentPerformer;
    v89[11] = &off_1018844F8;
    v91 = swift_allocObject();
    v89[7] = v91;
    *(v91 + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
    *(v91 + 48) = &off_101891740;
    sub_1005B981C(&qword_1019F6278, &unk_101471D10);
    v92 = *(v158 + 56);
    v158 += 56;
    v176 = v92;
    v93 = v138;
    (v92)(v138, 1, 1, v155);
    (*(v131 + 56))(v132, 1, 1, v151);
    v94 = type metadata accessor for IntentDialog();
    v175 = v94;
    v95 = *(v94 - 8);
    v96 = *(v95 + 56);
    v177 = v96;
    v180 = v95 + 56;
    (v96)(v154, 1, 1, v94);
    (v96)(v145, 1, 1, v94);
    LODWORD(v174) = enum case for InputConnectionBehavior.default(_:);
    v173 = *(v157 + 104);
    v157 += 104;
    v97 = v149;
    (v173)(v149);
    v172 = type metadata accessor for CRLBoardEntity;
    sub_100BABB30(&qword_1019F6290, type metadata accessor for CRLBoardEntity, aQ_25);
    v170 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
    v185[0] = v170;
    v166 = sub_1005B981C(&qword_101A13C70, &unk_10149DA88);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v98 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v99 = *(v135 + 104);
    v100 = v136;
    v101 = v137;
    v99(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v137);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v99(v100, v98, v101);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v102 = v155;
    (v176)(v93, 0, 1, v155);
    LOBYTE(v183) = 10;
    v103 = v175;
    v104 = v177;
    (v177)(v154, 1, 1, v175);
    (v104)(v145, 1, 1, v103);
    v105 = v174;
    v106 = v159;
    v107 = v173;
    (v173)(v97, v174, v159);
    sub_100ADC2CC();
    v185[1] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
    v166 = sub_1005B981C(&qword_1019FC888, &unk_10147BE70);
    v108 = v102;
    v109 = v176;
    (v176)(v93, 1, 1, v102);
    (v167)(v148, 1, 1, v168);
    v110 = v154;
    (v177)(v154, 1, 1, v175);
    v111 = v149;
    (v107)(v149, v105, v106);
    v169 = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
    v185[2] = v169;
    v168 = sub_1005B981C(&qword_1019F8AF8, &unk_1014819C0);
    v112 = v93;
    v109(v93, 1, 1, v108);
    v183 = _swiftEmptyArrayStorage;
    sub_1005B981C(&qword_101A054A0, &unk_101471D20);
    type metadata accessor for UTType();
    *(swift_allocObject() + 16) = xmmword_10146C6B0;
    static UTType.item.getter();
    v113 = v175;
    (v177)(v110, 1, 1, v175);
    v114 = v111;
    v115 = v111;
    v116 = v174;
    v117 = v173;
    (v173)(v115, v174, v159);
    v186 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
    sub_1005B981C(&qword_101A13C78, &unk_10149DA98);
    (v176)(v112, 1, 1, v155);
    v118 = v139;
    v171(v139, 1, 1, v178);
    (v177)(v110, 1, 1, v113);
    (v117)(v114, v116, v159);
    v180 = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
    v187 = v180;
    sub_1005B981C(&qword_1019F6280, &qword_10146ED60);
    v181 = 0xD00000000000001FLL;
    v182 = 0x8000000101558510;
    AnyHashable.init<A>(_:)();
    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    v188 = AppDependency.__allocating_init(key:manager:)();
    sub_10000630C(v184, v189);
    v119 = v142;
    sub_1006B05D0(v156, v142);
    v120 = v143;
    sub_1006B05D0(v119, v143);
    IntentParameter.wrappedValue.setter();
    sub_100689004(v119);
    v121 = v150;
    v122 = v148;
    sub_10000BE14(v150, v148, &qword_1019FC880, &qword_1014779C0);
    sub_10000BE14(v122, v141, &qword_1019FC880, &qword_1014779C0);
    IntentParameter.wrappedValue.setter();
    sub_10000CAAC(v122, &qword_1019FC880, &qword_1014779C0);
    v183 = v179;
    IntentParameter.wrappedValue.setter();
    v123 = v147;
    sub_10000BE14(v147, v118, &unk_1019F33C0, &unk_101468A60);
    sub_10000BE14(v118, v140, &unk_1019F33C0, &unk_101468A60);
    IntentParameter.wrappedValue.setter();
    sub_10000CAAC(v118, &unk_1019F33C0, &unk_101468A60);
    sub_10000CAAC(v123, &unk_1019F33C0, &unk_101468A60);
    sub_10000CAAC(v121, &qword_1019FC880, &qword_1014779C0);
    v124 = v156;
    sub_100689004(v156);
    sub_100005070(v184);
    v125 = v144;
    *(v144 + 24) = &type metadata for CRLAddItemToBoardIntent;
    v125[4] = sub_100BAB3C0();
    v126 = swift_allocObject();
    *v125 = v126;
    sub_100BAB494(v185, v126 + 16);
    v125[8] = sub_1005B981C(&qword_1019F7400, &unk_101470440);
    v125[9] = sub_10001A2F8(&qword_1019F7408, &qword_1019F7400, &unk_101470440, &protocol conformance descriptor for IntentResultContainer<A, B, C, D>);
    sub_10002C58C(v125 + 5);
    sub_1006B05D0(v152, v124);
    v127 = sub_100B0768C();
    sub_1006B05D0(v124, v119);
    sub_1006B05D0(v119, v120);
    IntentParameter.wrappedValue.setter();
    sub_100689004(v119);
    sub_100689004(v124);
    v184[0] = v127;
    sub_100BABB30(&qword_1019F7410, v172, byte_1014869B8);
    sub_10068984C();
    static IntentResult.result<A, B>(value:opensIntent:)();

    return sub_100BABB00(v185);
  }

  else
  {
    v129 = v144;
    *(v144 + 48) = 0u;
    v129[4] = 0u;
    v129[1] = 0u;
    v129[2] = 0u;
    *v129 = 0u;
  }
}

uint64_t sub_100BA4E44@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v62 = v57 - v2;
  v3 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v3 - 8);
  v61 = v57 - v4;
  v60 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v57[4] = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v57[3] = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource();
  v71 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for InputConnectionBehavior();
  v13 = *(v75 - 8);
  __chkstk_darwin(v75);
  v64 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v15 - 8);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v57 - v19;
  v21 = sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  __chkstk_darwin(v21 - 8);
  v23 = v57 - v22;
  v24 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v24 - 8);
  v26 = v57 - v25;
  sub_1005B981C(&qword_1019F6278, &unk_101471D10);
  v27 = *(v11 + 56);
  v72 = v11 + 56;
  v66 = v27;
  v27(v26, 1, 1, v10);
  v28 = type metadata accessor for CRLBoardEntity(0);
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  v29 = type metadata accessor for IntentDialog();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v69 = v31;
  v70 = v30 + 56;
  v63 = v20;
  v31(v20, 1, 1, v29);
  v57[0] = v17;
  v31(v17, 1, 1, v29);
  v74 = enum case for InputConnectionBehavior.default(_:);
  v32 = *(v13 + 104);
  v57[2] = v13 + 104;
  v68 = v32;
  v32(v64);
  sub_100BABB30(&qword_1019F6290, type metadata accessor for CRLBoardEntity, aQ_25);
  *v73 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v57[1] = sub_1005B981C(&qword_101A13C70, &unk_10149DA88);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v34 = *(v59 + 104);
  v35 = v58;
  v36 = v60;
  v34(v58, enum case for LocalizedStringResource.BundleDescription.main(_:), v60);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v35, v33, v36);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = v26;
  v38 = v71;
  v39 = v66;
  v66(v26, 0, 1, v71);
  LOBYTE(v78) = 10;
  v65 = v29;
  v40 = v69;
  v69(v63, 1, 1, v29);
  v40(v57[0], 1, 1, v29);
  v41 = v64;
  v42 = v68;
  v68(v64, v74, v75);
  sub_100ADC2CC();
  v43 = v41;
  v44 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v45 = v73;
  v73[1] = v44;
  sub_1005B981C(&qword_1019FC888, &unk_10147BE70);
  v46 = v37;
  v39(v37, 1, 1, v38);
  v47 = type metadata accessor for AttributedString();
  (*(*(v47 - 8) + 56))(v61, 1, 1, v47);
  v48 = v63;
  v69(v63, 1, 1, v65);
  v42(v43, v74, v75);
  v45[2] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  v67 = sub_1005B981C(&qword_1019F8AF8, &unk_1014819C0);
  v39(v46, 1, 1, v71);
  v78 = _swiftEmptyArrayStorage;
  sub_1005B981C(&qword_101A054A0, &unk_101471D20);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.item.getter();
  v49 = v65;
  v50 = v69;
  v69(v48, 1, 1, v65);
  v68(v43, v74, v75);
  v51 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v52 = v73;
  v73[3] = v51;
  sub_1005B981C(&qword_101A13C78, &unk_10149DA98);
  v66(v46, 1, 1, v71);
  v53 = type metadata accessor for URL();
  (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
  v50(v48, 1, 1, v49);
  v68(v43, v74, v75);
  v52[4] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280, &qword_10146ED60);
  v76 = 0xD00000000000001FLL;
  v77 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v52[5] = AppDependency.__allocating_init(key:manager:)();
  v52[9] = &type metadata for CRLAddItemToBoardIntentPerformer;
  v52[10] = &off_1018AC330;
  v54 = swift_allocObject();
  v52[6] = v54;
  v54[5] = &type metadata for CRLInsertFilesToBoardIntentPerformer;
  v54[6] = &off_101887238;
  v55 = swift_allocObject();
  v54[2] = v55;
  *(v55 + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(v55 + 48) = &off_101891740;
  v54[10] = &type metadata for CRLInsertURLToBoardIntentPerformer;
  v54[11] = &off_1018844F8;
  result = swift_allocObject();
  v54[7] = result;
  *(result + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(result + 48) = &off_101891740;
  return result;
}

uint64_t sub_100BA5A14(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[34] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[35] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[36] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = type metadata accessor for AttributedString();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = type metadata accessor for CRLBoardEntity(0);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_1005B981C(&qword_101A13C80, &unk_10149DAB0);
  v2[56] = swift_task_alloc();
  v6 = type metadata accessor for IntentSystemContext();
  v2[57] = v6;
  v2[58] = *(v6 - 8);
  v2[59] = swift_task_alloc();
  v7 = type metadata accessor for IntentSystemContext.Source();
  v2[60] = v7;
  v2[61] = *(v7 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();

  return _swift_task_switch(sub_100BA5E44, 0, 0);
}

uint64_t sub_100BA5E44(uint64_t a1)
{
  v2 = *(v1 + 480);
  v3 = *(v1 + 488);
  v5 = *(v1 + 464);
  v4 = *(v1 + 472);
  v7 = *(v1 + 448);
  v6 = *(v1 + 456);
  sub_100BAB3C0();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v5 + 8))(v4, v6);
  v8 = *(v3 + 48);
  v9 = v8(v7, 1, v2);
  v10 = *(v1 + 504);
  v12 = *(v1 + 480);
  v11 = *(v1 + 488);
  v13 = *(v1 + 448);
  if (v9 == 1)
  {
    v14 = enum case for IntentSystemContext.Source.shortcuts(_:);
    (*(v11 + 104))(v10, enum case for IntentSystemContext.Source.shortcuts(_:), *(v1 + 480));
    if (v8(v13, 1, v12) != 1)
    {
      sub_10000CAAC(*(v1 + 448), &qword_101A13C80, &unk_10149DAB0);
    }
  }

  else
  {
    (*(v11 + 32))(v10, *(v1 + 448), *(v1 + 480));
    v14 = enum case for IntentSystemContext.Source.shortcuts(_:);
  }

  v15 = *(v1 + 496);
  v17 = *(v1 + 480);
  v16 = *(v1 + 488);
  v18 = *(v1 + 240);
  *(v1 + 512) = sub_100020E58(v18 + 6, v18[9]);
  *(v1 + 520) = *v18;
  IntentParameter.wrappedValue.getter();
  (*(v16 + 104))(v15, v14, v17);
  sub_100BABB30(&qword_101A13C88, &type metadata accessor for IntentSystemContext.Source, &protocol conformance descriptor for IntentSystemContext.Source);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v19 = *(v16 + 8);
  *(v1 + 528) = v19;
  *(v1 + 536) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v15, v17);
  v20 = *(v1 + 168);
  v21 = *(v1 + 176);
  AppDependency.wrappedValue.getter();
  v22 = *(v1 + 184);
  *(v1 + 112) = &type metadata for CRLBoardLibraryProvidingDependency;
  *(v1 + 120) = &off_1018AD9D0;
  *(v1 + 88) = v22;
  *(v1 + 544) = v18[1];
  IntentParameter.wrappedValue.getter();
  LODWORD(v15) = *(v1 + 760);
  *(v1 + 762) = v15;
  IntentParameter.wrappedValue.getter();
  *(v1 + 552) = v18[3];
  IntentParameter.wrappedValue.getter();
  *(v1 + 560) = *(v1 + 192);
  *(v1 + 568) = v18[4];
  IntentParameter.wrappedValue.getter();
  if (v15 == 10 && v20 == v21)
  {
    v23 = *(v1 + 440);
    v24 = *(v1 + 392);
    v25 = *(v1 + 368);

    sub_100BABB78();
    v26 = swift_allocError();
    *v27 = 2;
    swift_willThrow();
    sub_10000CAAC(v25, &unk_1019F33C0, &unk_101468A60);
    sub_10000CAAC(v24, &qword_1019FC880, &qword_1014779C0);
    sub_100689004(v23);
    sub_100005070((v1 + 88));
    *(v1 + 200) = v26;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    if (swift_dynamicCast())
    {

      if (*(v1 + 761) == 2)
      {
        if (qword_1019F2238 != -1)
        {
          swift_once();
        }

        v57 = *(v1 + 528);
        v54 = *(v1 + 480);
        v55 = *(v1 + 504);
        v28 = *(v1 + 296);
        v29 = *(v1 + 256);
        v30 = *(v1 + 264);
        v31 = *(v1 + 248);
        v32 = static OS_os_log.appIntents;
        v33 = static os_log_type_t.default.getter();
        sub_100005404(v32, &_mh_execute_header, v33, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
        IntentParameter.projectedValue.getter();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*(v29 + 104))(v30, enum case for LocalizedStringResource.BundleDescription.main(_:), v31);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        v34 = type metadata accessor for IntentDialog();
        (*(*(v34 - 8) + 56))(v28, 0, 1, v34);
        type metadata accessor for AppIntentError();
        sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
        swift_allocError();
        IntentParameter.needsValueError(_:)();

        sub_10000CAAC(v28, &qword_1019F6260, &unk_10146ED40);
        swift_willThrow();
        v57(v55, v54);
      }

      else
      {
        v47 = *(v1 + 248);
        v48 = (*(v1 + 256) + 104);
        v49 = *(v1 + 528);
        v56 = *(v1 + 504);
        v58 = *(v1 + 480);
        v50 = *(v1 + 296);
        v51 = *(v1 + 264);
        IntentParameter.projectedValue.getter();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*v48)(v51, enum case for LocalizedStringResource.BundleDescription.main(_:), v47);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        v52 = type metadata accessor for IntentDialog();
        (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
        type metadata accessor for AppIntentError();
        sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
        swift_allocError();
        IntentParameter.needsValueError(_:)();

        sub_10000CAAC(v50, &qword_1019F6260, &unk_10146ED40);
        swift_willThrow();
        v49(v56, v58);
      }
    }

    else
    {

      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v38 = *(v1 + 528);
      v39 = *(v1 + 504);
      v40 = *(v1 + 480);
      v41 = static OS_os_log.appIntents;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(v1 + 208) = v26;
      swift_errorRetain();
      v43 = String.init<A>(describing:)();
      v45 = v44;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v43;
      *(inited + 40) = v45;
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v41, &_mh_execute_header, v46, "Error inserting content: %@", 27, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      static AppIntentError.Unrecoverable.unknown.getter();
      swift_willThrow();

      v38(v39, v40);
    }

    v53 = *(v1 + 8);

    return v53();
  }

  else
  {
    sub_100020E58((v1 + 88), *(v1 + 112));
    *(v1 + 576) = type metadata accessor for MainActor();
    *(v1 + 584) = static MainActor.shared.getter();
    v35 = swift_task_alloc();
    *(v1 + 592) = v35;
    *v35 = v1;
    v35[1] = sub_100BA69A4;
    v36 = *(v1 + 440);

    return sub_1010AF408(v36);
  }
}

uint64_t sub_100BA69A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {

    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100BA7230;
  }

  else
  {
    *(v4 + 608) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100BA6B34;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100BA6B34()
{
  v1 = v0[76];

  v0[19] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[20] = &off_1018ADA90;
  v0[16] = v1;

  return _swift_task_switch(sub_100BA6BB8, 0, 0);
}

uint64_t sub_100BA6BB8()
{
  *(v0 + 216) = _swiftEmptyArrayStorage;
  v1 = v0 + 128;
  v2 = *(v0 + 762);
  if (v2 == 10)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    sub_10000BE14(*(v0 + 392), v3, &qword_1019FC880, &qword_1014779C0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(*(v0 + 384), &qword_1019FC880, &qword_1014779C0);
    }

    else
    {
      v11 = *(v0 + 376);
      v13 = *(v0 + 336);
      v12 = *(v0 + 344);
      v14 = *(v0 + 328);
      (*(v13 + 32))(v12, *(v0 + 384), v14);
      (*(v13 + 16))(v11, v12, v14);
      (*(v13 + 56))(v11, 0, 1, v14);
      v15 = sub_100020E58((v0 + 128), *(v0 + 152));
      v16 = sub_100BAB4CC(6u, v11, *v15);
      sub_10000CAAC(v11, &qword_1019FC880, &qword_1014779C0);
      if (v16 >> 62)
      {
        type metadata accessor for CRLBoardItem(0);

        v17 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CRLBoardItem(0);
        v17 = v16;
      }

      v19 = *(v0 + 336);
      v18 = *(v0 + 344);
      v20 = *(v0 + 328);

      sub_100798D00(v17);
      (*(v19 + 8))(v18, v20);
    }

    v21 = *(v0 + 360);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_10000BE14(*(v0 + 368), v21, &unk_1019F33C0, &unk_101468A60);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10000CAAC(*(v0 + 360), &unk_1019F33C0, &unk_101468A60);
      if (*(*(v0 + 560) + 16))
      {
        v24 = swift_task_alloc();
        *(v0 + 736) = v24;
        *v24 = v0;
        v25 = sub_100BA9D34;
LABEL_26:
        v24[1] = v25;
        v33 = *(v0 + 560);

        return sub_100FC1094(v33, v1);
      }

      v8 = *(v0 + 216);
      goto LABEL_7;
    }

    v26 = *(v0 + 352);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 304);
    (*(v28 + 32))(v27, *(v0 + 360), v29);
    (*(v28 + 16))(v26, v27, v29);
    (*(v28 + 56))(v26, 0, 1, v29);
    v30 = swift_task_alloc();
    *(v0 + 712) = v30;
    *v30 = v0;
    v30[1] = sub_100BA98A8;
    v31 = *(v0 + 352);
LABEL_19:

    return sub_100FC0A84(v31, v1);
  }

  if (v2 >= 8)
  {
    if (v2 != 8)
    {
      v24 = swift_task_alloc();
      *(v0 + 632) = v24;
      *v24 = v0;
      v25 = sub_100BA7BD8;
      goto LABEL_26;
    }

    v32 = swift_task_alloc();
    *(v0 + 616) = v32;
    *v32 = v0;
    v32[1] = sub_100BA7AB0;
    v31 = *(v0 + 368);
    goto LABEL_19;
  }

  v6 = *(v0 + 392);

  v7 = sub_100020E58((v0 + 128), *(v0 + 152));
  v8 = sub_100BAB4CC(v2, v6, *v7);
  if (v8 >> 62)
  {
    type metadata accessor for CRLBoardItem(0);
    v38 = _bridgeCocoaArray<A>(_:)();

    v8 = v38;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    type metadata accessor for CRLBoardItem(0);
  }

LABEL_7:
  *(v0 + 648) = v8;
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    sub_100020E58((v0 + 128), *(v0 + 152));
    v9 = swift_task_alloc();
    *(v0 + 656) = v9;
    *v9 = v0;
    v9[1] = sub_100BA7D1C;

    return sub_100FE17C4(v8);
  }

  sub_100BABB78();
  v34 = swift_allocError();
  *v35 = 2;
  swift_willThrow();
  *(v0 + 672) = v34;
  v36 = *sub_100020E58((v0 + 88), *(v0 + 112));
  v37 = swift_task_alloc();
  *(v0 + 680) = v37;
  *v37 = v0;
  v37[1] = sub_100BA7FF4;

  return sub_100FF8D2C(v1, v36);
}

uint64_t sub_100BA7230()
{

  return _swift_task_switch(sub_100BA7298, 0, 0);
}

uint64_t sub_100BA7298()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  sub_10000CAAC(*(v0 + 368), &unk_1019F33C0, &unk_101468A60);
  sub_10000CAAC(v2, &qword_1019FC880, &qword_1014779C0);
  sub_100689004(v1);
  v3 = *(v0 + 600);
  sub_100005070((v0 + 88));
  *(v0 + 200) = v3;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {

    if (*(v0 + 761) == 2)
    {
      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 528);
      v28 = *(v0 + 480);
      v29 = *(v0 + 504);
      v4 = *(v0 + 296);
      v5 = *(v0 + 256);
      v6 = *(v0 + 264);
      v7 = *(v0 + 248);
      v8 = static OS_os_log.appIntents;
      v9 = static os_log_type_t.default.getter();
      sub_100005404(v8, &_mh_execute_header, v9, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v5 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v10 = type metadata accessor for IntentDialog();
      (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v4, &qword_1019F6260, &unk_10146ED40);
      swift_willThrow();
      v31(v29, v28);
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = (*(v0 + 256) + 104);
      v22 = *(v0 + 528);
      v30 = *(v0 + 504);
      v32 = *(v0 + 480);
      v23 = *(v0 + 296);
      v24 = *(v0 + 264);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*v21)(v24, enum case for LocalizedStringResource.BundleDescription.main(_:), v20);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v25 = type metadata accessor for IntentDialog();
      (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v23, &qword_1019F6260, &unk_10146ED40);
      swift_willThrow();
      v22(v30, v32);
    }
  }

  else
  {

    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 528);
    v12 = *(v0 + 504);
    v13 = *(v0 + 480);
    v14 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v0 + 208) = v3;
    swift_errorRetain();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v16;
    *(inited + 40) = v18;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v19, "Error inserting content: %@", 27, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    type metadata accessor for AppIntentError();
    sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    v11(v12, v13);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100BA7AB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = sub_100BA95B0;
  }

  else
  {
    *(v4 + 696) = a1;
    v5 = sub_100BA9418;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BA7BD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v5 = sub_100BA97F8;
  }

  else
  {
    *(v4 + 704) = a1;
    v5 = sub_100BA9660;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BA7D1C()
{

  return _swift_task_switch(sub_100BA7E34, 0, 0);
}

uint64_t sub_100BA7E34()
{
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7EDC;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA7EDC()
{

  if (v0)
  {

    v1 = sub_100BABCA4;
  }

  else
  {
    v1 = sub_100BA9160;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100BA7FF4()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_100BA8934;
  }

  else
  {
    v2 = sub_100BA8108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BA8108(uint64_t a1)
{
  v2 = *(v1 + 440);
  v3 = *(v1 + 392);
  v4 = *(v1 + 368);
  swift_willThrow();
  sub_10000CAAC(v4, &unk_1019F33C0, &unk_101468A60);
  sub_10000CAAC(v3, &qword_1019FC880, &qword_1014779C0);
  sub_100689004(v2);
  sub_100005070((v1 + 128));
  v5 = *(v1 + 672);
  sub_100005070((v1 + 88));
  *(v1 + 200) = v5;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {

    if (*(v1 + 761) == 2)
    {
      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v33 = *(v1 + 528);
      v30 = *(v1 + 480);
      v31 = *(v1 + 504);
      v6 = *(v1 + 296);
      v7 = *(v1 + 256);
      v8 = *(v1 + 264);
      v9 = *(v1 + 248);
      v10 = static OS_os_log.appIntents;
      v11 = static os_log_type_t.default.getter();
      sub_100005404(v10, &_mh_execute_header, v11, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v7 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v12 = type metadata accessor for IntentDialog();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v6, &qword_1019F6260, &unk_10146ED40);
      swift_willThrow();
      v33(v31, v30);
    }

    else
    {
      v22 = *(v1 + 248);
      v23 = (*(v1 + 256) + 104);
      v24 = *(v1 + 528);
      v32 = *(v1 + 504);
      v34 = *(v1 + 480);
      v25 = *(v1 + 296);
      v26 = *(v1 + 264);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*v23)(v26, enum case for LocalizedStringResource.BundleDescription.main(_:), v22);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v27 = type metadata accessor for IntentDialog();
      (*(*(v27 - 8) + 56))(v25, 0, 1, v27);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v25, &qword_1019F6260, &unk_10146ED40);
      swift_willThrow();
      v24(v32, v34);
    }
  }

  else
  {

    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v13 = *(v1 + 528);
    v14 = *(v1 + 504);
    v15 = *(v1 + 480);
    v16 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v1 + 208) = v5;
    swift_errorRetain();
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v21, "Error inserting content: %@", 27, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    type metadata accessor for AppIntentError();
    sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    v13(v14, v15);
  }

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_100BA8934()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);

  sub_10000CAAC(v3, &unk_1019F33C0, &unk_101468A60);
  sub_10000CAAC(v2, &qword_1019FC880, &qword_1014779C0);
  sub_100689004(v1);
  sub_100005070((v0 + 128));
  v4 = *(v0 + 688);
  sub_100005070((v0 + 88));
  *(v0 + 200) = v4;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {

    if (*(v0 + 761) == 2)
    {
      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 528);
      v29 = *(v0 + 480);
      v30 = *(v0 + 504);
      v5 = *(v0 + 296);
      v6 = *(v0 + 256);
      v7 = *(v0 + 264);
      v8 = *(v0 + 248);
      v9 = static OS_os_log.appIntents;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v6 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v11 = type metadata accessor for IntentDialog();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v5, &qword_1019F6260, &unk_10146ED40);
      swift_willThrow();
      v32(v30, v29);
    }

    else
    {
      v21 = *(v0 + 248);
      v22 = (*(v0 + 256) + 104);
      v23 = *(v0 + 528);
      v31 = *(v0 + 504);
      v33 = *(v0 + 480);
      v24 = *(v0 + 296);
      v25 = *(v0 + 264);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*v22)(v25, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v26 = type metadata accessor for IntentDialog();
      (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v24, &qword_1019F6260, &unk_10146ED40);
      swift_willThrow();
      v23(v31, v33);
    }
  }

  else
  {

    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 528);
    v13 = *(v0 + 504);
    v14 = *(v0 + 480);
    v15 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v0 + 208) = v4;
    swift_errorRetain();
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Error inserting content: %@", 27, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    type metadata accessor for AppIntentError();
    sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    v12(v13, v14);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100BA9160()
{
  v1 = v0[63];
  v11 = v0[60];
  v12 = v0[66];
  v2 = v0[55];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[49];
  sub_10000CAAC(v0[46], &unk_1019F33C0, &unk_101468A60);
  sub_10000CAAC(v7, &qword_1019FC880, &qword_1014779C0);
  sub_100689004(v2);
  sub_100005070(v0 + 16);
  sub_100005070(v0 + 11);
  IntentParameter.wrappedValue.getter();
  sub_1006B05D0(v3, v4);
  v8 = sub_100B0768C();
  sub_1006B05D0(v4, v6);
  sub_1006B05D0(v6, v5);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v6);
  sub_100689004(v4);
  v0[28] = v8;
  sub_100BABB30(&qword_1019F7410, type metadata accessor for CRLBoardEntity, byte_1014869B8);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v3);
  v12(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100BA9418()
{
  v1 = v0[87];
  v0[81] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100020E58(v0 + 16, v0[19]);
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_100BA7D1C;

    return sub_100FE17C4(v1);
  }

  sub_100BABB78();
  v4 = swift_allocError();
  *v5 = 2;
  swift_willThrow();
  v0[84] = v4;
  v6 = *sub_100020E58(v0 + 11, v0[14]);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v6);
}

uint64_t sub_100BA95B0()
{
  v0[84] = v0[78];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA9660()
{
  v1 = v0[88];
  v0[81] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100020E58(v0 + 16, v0[19]);
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_100BA7D1C;

    return sub_100FE17C4(v1);
  }

  sub_100BABB78();
  v4 = swift_allocError();
  *v5 = 2;
  swift_willThrow();
  v0[84] = v4;
  v6 = *sub_100020E58(v0 + 11, v0[14]);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v6);
}

uint64_t sub_100BA97F8()
{
  v0[84] = v0[80];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA98A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {
    v5 = *(v4 + 352);

    sub_10000CAAC(v5, &unk_1019F33C0, &unk_101468A60);

    v6 = sub_100BA9C6C;
  }

  else
  {
    v7 = *(v4 + 352);
    *(v4 + 728) = a1;
    sub_10000CAAC(v7, &unk_1019F33C0, &unk_101468A60);
    v6 = sub_100BA9A10;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100BA9A10()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  sub_100798D00(v0[91]);
  (*(v2 + 8))(v1, v3);
  if (*(v0[70] + 16))
  {
    v4 = swift_task_alloc();
    v0[92] = v4;
    *v4 = v0;
    v4[1] = sub_100BA9D34;
    v5 = v0[70];

    return sub_100FC1094(v5, (v0 + 16));
  }

  v7 = v0[27];
  v0[81] = v7;
  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_100020E58(v0 + 16, v0[19]);
    v8 = swift_task_alloc();
    v0[82] = v8;
    *v8 = v0;
    v8[1] = sub_100BA7D1C;

    return sub_100FE17C4(v7);
  }

  sub_100BABB78();
  v9 = swift_allocError();
  *v10 = 2;
  swift_willThrow();
  v0[84] = v9;
  v11 = *sub_100020E58(v0 + 11, v0[14]);
  v12 = swift_task_alloc();
  v0[85] = v12;
  *v12 = v0;
  v12[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v11);
}

uint64_t sub_100BA9C6C()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  v0[84] = v0[90];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA9D34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {

    v5 = sub_100BAA018;
  }

  else
  {
    *(v4 + 752) = a1;
    v5 = sub_100BA9E74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BA9E74()
{
  sub_100798D00(v0[94]);
  v1 = v0[27];
  v0[81] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100020E58(v0 + 16, v0[19]);
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_100BA7D1C;

    return sub_100FE17C4(v1);
  }

  sub_100BABB78();
  v4 = swift_allocError();
  *v5 = 2;
  swift_willThrow();
  v0[84] = v4;
  v6 = *sub_100020E58(v0 + 11, v0[14]);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v6);
}

uint64_t sub_100BAA018()
{
  v0[84] = v0[93];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BAA0C8@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_1005B981C(&qword_101A13C98, &qword_10149DAE8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CE0, &qword_10149DB40);
  sub_100BAB3C0();
  sub_10001A2F8(&qword_101A13CE8, &qword_101A13CE0, &qword_10149DB40, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);
  ParameterSummarySwitchCondition.init(_:_:)();
  sub_10001A2F8(&qword_101A13CA8, &qword_101A13C98, &qword_10149DAE8, &protocol conformance descriptor for ParameterSummarySwitchCondition<A, B, C>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v8 = *(v2 + 8);
  v8(v4, v1);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v8)(v7, v1);
}

uint64_t sub_100BAA2DC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1005B981C(&qword_101A13CF0, &qword_10149DB48);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v30 - v5;
  v6 = sub_1005B981C(&qword_101A13CF8, &qword_10149DB50);
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v30 - v9;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v32 = &v30 - v14;
  v47 = 9;
  sub_1005B981C(&qword_101A13D00, &qword_10149DB58);
  v15 = sub_1005B981C(&qword_101A13CA0, &qword_10149DAF0);
  v30 = sub_100BAB3C0();
  v40 = sub_100BABBCC();
  v41 = sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0, &qword_10149DAF0, &protocol conformance descriptor for IntentParameterSummary<A>);
  v39 = v15;
  ParameterSummaryCaseCondition.init(_:_:)();
  sub_10001A2F8(&qword_101A13D10, &qword_101A13CF8, &qword_10149DB50, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16 = *(v44 + 8);
  v44 += 8;
  v31 = v12;
  v16(v12, v6);
  v46 = 1;
  v17 = v43;
  ParameterSummaryCaseCondition.init(_:_:)();
  v42 = v6;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16(v17, v6);
  v18 = v16;
  v45 = 8;
  v19 = v33;
  ParameterSummaryCaseCondition.init(_:_:)();
  v20 = v42;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16(v19, v20);
  v21 = v34;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_10001A2F8(&qword_101A13D18, &qword_101A13CF0, &qword_10149DB48, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v22 = v35;
  v23 = v36;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v24 = *(v37 + 8);
  v24(v21, v23);
  v25 = v31;
  v26 = v32;
  v27 = v43;
  v28 = v42;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C, D>(_:_:_:_:)();
  v24(v22, v23);
  v18(v27, v28);
  v18(v25, v28);
  return (v18)(v26, v28);
}

uint64_t sub_100BAA8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_1005B981C(&qword_101A13CC0, &qword_10149DAF8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1005B981C(&qword_101A13CC8, &qword_10149DB00);
  __chkstk_darwin(v3);
  v4 = sub_1005B981C(&qword_101A13CA0, &qword_10149DAF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_100BAB3C0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 543450177;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD0, &qword_10149DB08);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD8, &qword_10149DB38);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0, &qword_10149DAF0, &protocol conformance descriptor for IntentParameterSummary<A>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v10, v4);
}

uint64_t sub_100BAAC3C(uint64_t a1)
{
  swift_getKeyPath();
  sub_100BAB3C0();
  v1 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101465920;
  *(v2 + 32) = v1;

  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_100BAACF0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1005B981C(&qword_101A13CC0, &qword_10149DAF8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1005B981C(&qword_101A13CC8, &qword_10149DB00);
  __chkstk_darwin(v2);
  v3 = sub_1005B981C(&qword_101A13CA0, &qword_10149DAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_100BAB3C0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 543450177;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD0, &qword_10149DB08);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 544175136;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD8, &qword_10149DB38);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0, &qword_10149DAF0, &protocol conformance descriptor for IntentParameterSummary<A>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_100BAB02C(uint64_t a1)
{
  v2 = sub_100BABC50();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_100BAB078(uint64_t a1, uint64_t a2)
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v3 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v3 + 104))(v5, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_1005B981C(&qword_101A13C98, &qword_10149DAE8);
  sub_1005B981C(&qword_101A13CA0, &qword_10149DAF0);
  sub_10001A2F8(&qword_101A13CA8, &qword_101A13C98, &qword_10149DAE8, &protocol conformance descriptor for ParameterSummarySwitchCondition<A, B, C>);
  sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0, &qword_10149DAF0, &protocol conformance descriptor for IntentParameterSummary<A>);
  sub_10001A2F8(&qword_101A13CB8, &qword_101A13C70, &unk_10149DA88, &protocol conformance descriptor for IntentParameter<A>);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_100BAB28C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100BA5A14(a1);
}

uint64_t sub_100BAB328(uint64_t a1)
{
  v2 = sub_100BAB3C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100BAB368()
{
  result = qword_101A13C48;
  if (!qword_101A13C48)
  {
    result = swift_getWitnessTable(byte_10149D9D4, &type metadata for CRLAddItemToBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13C48);
  }

  return result;
}

unint64_t sub_100BAB3C0()
{
  result = qword_101A13C50;
  if (!qword_101A13C50)
  {
    result = swift_getWitnessTable(byte_10149D8C8, &type metadata for CRLAddItemToBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13C50);
  }

  return result;
}

uint64_t sub_100BAB424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A13C68, &unk_10149DA78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100BAB4CC(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v5 = sub_1005B981C(&unk_101A0B1C0, &qword_101470EC0);
  __chkstk_darwin(v5 - 8);
  v42 = &v41 - v6;
  v7 = sub_1005B981C(&qword_1019FC880, &qword_1014779C0);
  __chkstk_darwin(v7 - 8);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v47[3] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v47[4] = &off_1018ADA90;
  v47[0] = a3;
  v46 = _swiftEmptyArrayStorage;
  if (sub_100ADBC5C(a1) == 0x6F4E796B63697473 && v19 == 0xEA00000000006574)
  {
    v20 = a3;

LABEL_5:
    v23 = *(*(*sub_100020E58(v47, &type metadata for CRLBoardLibraryHeadlessControllerDependency) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
    sub_10000BE14(v43, v11, &qword_1019FC880, &qword_1014779C0);
    v24 = *(v13 + 48);
    if (v24(v11, 1, v12) == 1)
    {
      v25 = v23;
      AttributedString.init()();
      if (v24(v11, 1, v12) != 1)
      {
        sub_10000CAAC(v11, &qword_1019FC880, &qword_1014779C0);
      }
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      v26 = v23;
    }

    sub_100824394();
    v27 = NSAttributedString.init(_:)();
    sub_10110F4B0(v27);

    goto LABEL_10;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = a3;

  if (v21)
  {
    goto LABEL_5;
  }

  v30 = sub_100ADACBC(a1);
  if (v31)
  {
    v28 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v32 = v30;
  v33 = *(*(*sub_100020E58(v47, &type metadata for CRLBoardLibraryHeadlessControllerDependency) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  sub_1006950BC(v44);
  v48[12] = v44[12];
  v48[13] = v44[13];
  v48[14] = v44[14];
  v49 = v45;
  v48[8] = v44[8];
  v48[9] = v44[9];
  v48[10] = v44[10];
  v48[11] = v44[11];
  v48[4] = v44[4];
  v48[5] = v44[5];
  v48[6] = v44[6];
  v48[7] = v44[7];
  v48[0] = v44[0];
  v48[1] = v44[1];
  v48[2] = v44[2];
  v48[3] = v44[3];
  v34 = sub_100818518(v32);
  v35 = v33;
  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v37 = v41;
    sub_10000BE14(v43, v41, &qword_1019FC880, &qword_1014779C0);
    v38 = *(v13 + 48);
    if (v38(v37, 1, v12) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v38(v37, 1, v12) != 1)
      {
        sub_10000CAAC(v37, &qword_1019FC880, &qword_1014779C0);
      }
    }

    else
    {
      (*(v13 + 32))(v15, v37, v12);
    }

    sub_100824394();
    v36 = NSAttributedString.init(_:)();
  }

  v39 = type metadata accessor for CRLWPStorageCRDTData(0);
  v40 = v42;
  (*(*(v39 - 8) + 56))(v42, 1, 1, v39);
  sub_1011133FC(v32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v36, v40, v48, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v40, &unk_101A0B1C0, &qword_101470EC0);
LABEL_10:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = v46;
LABEL_13:
  sub_100005070(v47);
  return v28;
}

uint64_t sub_100BABB30(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100BABB78()
{
  result = qword_101A13C90;
  if (!qword_101A13C90)
  {
    result = swift_getWitnessTable("5N7", &type metadata for CRLAddItemToBoardIntentPerformer.PerformerError, v0, v1);
    atomic_store(result, &qword_101A13C90);
  }

  return result;
}

unint64_t sub_100BABBCC()
{
  result = qword_101A13D08;
  if (!qword_101A13D08)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A13D00, &qword_10149DB58);
    v4[0] = sub_100ADC184();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_101A13D08);
  }

  return result;
}

unint64_t sub_100BABC50()
{
  result = qword_101A13D20;
  if (!qword_101A13D20)
  {
    result = swift_getWitnessTable(byte_10149D9A4, &type metadata for CRLAddItemToBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13D20);
  }

  return result;
}

id sub_100BABCAC(void *a1, void *a2)
{
  UUID.init()();
  *&v2[OBJC_IVAR____TtC8Freeform10CRLFileRep____lazy_storage___placeholderImage] = 1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CRLFileRep(0);
  v5 = objc_msgSendSuper2(&v10, "initWithLayout:canvas:", a1, a2);
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    if ([a2 isCanvasInteractive])
    {
      sub_100BAC1BC(v8);
    }
  }

  else
  {
    v7 = a1;
  }

  return v6;
}

void sub_100BABDB0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = type metadata accessor for CRLFileRep(0);
  v39.receiver = v0;
  v39.super_class = v7;
  objc_msgSendSuper2(&v39, "willBeRemoved");
  v37 = v0;
  v8 = sub_100BAC798();
  v9 = *&v8[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];

  v10 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v12 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v12)
  {
    v13 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v34 = type metadata accessor for CRLAssetManager();
    v14 = objc_allocWithZone(v34);
    v33[1] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v15 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v16 = swift_allocObject();
    v17 = v9;
    v35 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v19 = 0;
    *(v16 + 16) = v19;
    atomic_thread_fence(memory_order_acq_rel);
    *&v14[v15] = v16;
    v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v14[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v20 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v14[v20] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v14[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v38.receiver = v14;
    v38.super_class = v34;
    v21 = objc_msgSendSuper2(&v38, "init");

    v1 = v35;
    v22 = *&v9[v11];
    *&v9[v11] = v21;
    v13 = v21;

    v12 = 0;
  }

  v23 = *(v10 + 16);
  v24 = v12;
  os_unfair_lock_unlock(v23);

  v25 = OBJC_IVAR____TtC8Freeform10CRLFileRep_downloadObserverIdentifier;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = type metadata accessor for TaskPriority();
    v29 = v36;
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    (*(v2 + 16))(v4, v37 + v25, v1);
    v30 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v27;
    (*(v2 + 32))(&v31[v30], v4, v1);
    v32 = v27;
    sub_10064191C(0, 0, v29, &unk_1014773B0, v31);
  }
}

void sub_100BAC1BC(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform10CRLFileRep_downloadObserverIdentifier;
  v10 = sub_100BAC798();
  v12 = sub_100BEBD9C(v11);

  v13 = &v12[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
  v14 = *&v12[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v15 = *&v12[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v12[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v14);
  if ((*(v15 + 64))(v14, v15))
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v12;
    v18 = *(v13 + 3);
    v17 = *(v13 + 4);
    sub_100020E58(v13, v18);
    v52 = v5;
    v19 = v8;
    v20 = *(v17 + 72);

    v21 = v17;
    v12 = v53;
    v20(v2 + v9, 2, sub_10070D774, v16, v18, v21);
    v8 = v19;
    v5 = v52;

    v22 = *(v13 + 3);
    v23 = *(v13 + 4);
    sub_100020E58(v13, v22);
    if ((*(v23 + 64))(v22, v23))
    {
      v24 = *(v13 + 3);
      v25 = *(v13 + 4);
      sub_100020E58(v13, v24);
      (*(v25 + 88))(v24, v25);
    }
  }

  v26 = sub_100BAC798();
  v27 = sub_100BAC798();
  if (**(v27 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    v28 = v27;
    swift_beginAccess();

    sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v5, v8);
    sub_1009DB3B0(v5, type metadata accessor for CRLFileItemAtomicDataStruct);
    v29 = [v26 store];
    v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v30 + 16));
    v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v32)
    {
      v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v34 = type metadata accessor for CRLAssetManager();
      v35 = objc_allocWithZone(v34);
      v53 = v8;
      swift_unknownObjectWeakInit();
      v36 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v37 = swift_allocObject();
      v38 = v29;
      v39 = swift_slowAlloc();
      *v39 = 0;
      *(v37 + 16) = v39;
      atomic_thread_fence(memory_order_acq_rel);
      *&v35[v36] = v37;
      *&v35[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v40 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v35[v40] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v35[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      v8 = v53;
      swift_unknownObjectWeakAssign();
      v54.receiver = v35;
      v54.super_class = v34;
      v41 = objc_msgSendSuper2(&v54, "init");

      v42 = *&v29[v31];
      *&v29[v31] = v41;
      v33 = v41;

      v32 = 0;
    }

    v43 = *(v30 + 16);
    v44 = v32;
    os_unfair_lock_unlock(v43);

    v45 = sub_1011255E0();
    sub_1009DB3B0(v8, type metadata accessor for CRLAssetData);
    v46 = &v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
    v47 = *&v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v48 = *&v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v45[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v47);
    if ((*(v48 + 64))(v47, v48))
    {
      v49 = *(v46 + 3);
      v50 = *(v46 + 4);
      sub_100020E58(v46, v49);
      (*(v50 + 88))(v49, v50);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BAC798()
{
  v1 = [v0 layout];
  v2 = [v1 info];

  if (!v2)
  {
LABEL_4:
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("item", 4, 2);
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileRep.swift", 81, 2);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_1005CF000();
      *(inited + 96) = v14;
      v15 = sub_1005CF04C();
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 78;
      v17 = v27;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      v11 = &_mh_execute_header;
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v5 = v22;
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter("item", 4, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFileRep.swift", 81, 2);
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v6 = v25;
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v9 lineNumber:78 isFatal:0 format:v26 args:v23];

      __break(1u);
LABEL_6:
      swift_once();
    }
  }

  type metadata accessor for CRLFileItem(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  return result;
}

char *sub_100BACB7C(__n128 a1)
{
  v1 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100BAC798();
  if (**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A241E8)
  {
    v8 = result;
    swift_beginAccess();

    sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v3, v6);
    sub_1009DB3B0(v3, type metadata accessor for CRLFileItemAtomicDataStruct);
    v9 = *&v6[*(v4 + 20)];

    sub_1009DB3B0(v6, type metadata accessor for CRLAssetData);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100BACE08()
{
  v0 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v69 - v1;
  v3 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v69 - v10;
  v12 = sub_100BAC798();
  if (**(v12 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A241E8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = v12;
  v71 = v2;
  swift_beginAccess();

  sub_1005B981C(&qword_101A0B528, &unk_1014BA390);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_1008786E0(v5, v11);
  sub_1009DB3B0(v5, type metadata accessor for CRLFileItemAtomicDataStruct);

  sub_1009DB3B0(v11, type metadata accessor for CRLAssetData);
  v14 = objc_allocWithZone(NSString);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithString:v15];

  v17 = [v16 stringByDeletingPathExtension];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v74 = v18;
  v75 = v20;
  v21 = sub_100BAC798();
  v22 = sub_100BAC798();
  if (**(v22 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    v23 = v22;
    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v5, v8);
    sub_1009DB3B0(v5, type metadata accessor for CRLFileItemAtomicDataStruct);
    v24 = [v21 store];
    v25 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v25 + 16));
    v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v27 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v27)
    {
      v28 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v70 = type metadata accessor for CRLAssetManager();
      v29 = objc_allocWithZone(v70);
      swift_unknownObjectWeakInit();
      v30 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v31 = swift_allocObject();
      v32 = v24;
      v33 = swift_slowAlloc();
      *v33 = 0;
      *(v31 + 16) = v33;
      atomic_thread_fence(memory_order_acq_rel);
      *&v29[v30] = v31;
      *&v29[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v34 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v29[v34] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v29[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v72.receiver = v29;
      v72.super_class = v70;
      v35 = objc_msgSendSuper2(&v72, "init");

      v36 = *&v24[v26];
      *&v24[v26] = v35;
      v28 = v35;

      v27 = 0;
    }

    v37 = *(v25 + 16);
    v38 = v27;
    os_unfair_lock_unlock(v37);

    v39 = sub_1011255E0();
    sub_1009DB3B0(v8, type metadata accessor for CRLAssetData);
    v40 = *&v39[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v41 = *&v39[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v39[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v40);
    (*(v41 + 16))(v40, v41);
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 crl_pathUTI];

    v44 = v71;
    if (v43)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UTType.init(_:)();
      v45 = type metadata accessor for UTType();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v44, 1, v45) != 1)
      {
        v76 = UTType.localizedDescription.getter();
        v77 = v47;
        (*(v46 + 8))(v44, v45);
        goto LABEL_11;
      }
    }

    else
    {

      v48 = type metadata accessor for UTType();
      (*(*(v48 - 8) + 56))(v44, 1, 1, v48);
    }

    sub_100BAD934(v44);
    v76 = 0;
    v77 = 0;
LABEL_11:
    v49 = 0;
    v50 = _swiftEmptyArrayStorage;
LABEL_12:
    v51 = &v75 + 2 * v49;
    while (++v49 != 3)
    {
      v52 = v51 + 2;
      v53 = *v51;
      v51 += 2;
      if (v53)
      {
        v54 = *(v52 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100024CBC(0, *(v50 + 2) + 1, 1, v50);
        }

        v56 = *(v50 + 2);
        v55 = *(v50 + 3);
        if (v56 >= v55 >> 1)
        {
          v50 = sub_100024CBC((v55 > 1), v56 + 1, 1, v50);
        }

        *(v50 + 2) = v56 + 1;
        v57 = &v50[16 * v56];
        *(v57 + 4) = v54;
        *(v57 + 5) = v53;
        goto LABEL_12;
      }
    }

    sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
    swift_arrayDestroy();
    v58 = 0;
    v59 = *(v50 + 2);
    v60 = _swiftEmptyArrayStorage;
LABEL_21:
    v61 = &v50[16 * v58 + 40];
    while (1)
    {
      if (v59 == v58)
      {

        v73 = v60;
        sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
        sub_100613214();
        BidirectionalCollection<>.joined(separator:)();

        return;
      }

      if (v58 >= *(v50 + 2))
      {
        break;
      }

      ++v58;
      v63 = *(v61 - 1);
      v62 = *v61;
      v61 += 16;
      v64 = HIBYTE(v62) & 0xF;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v64 = v63 & 0xFFFFFFFFFFFFLL;
      }

      if (v64)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100034080(0, v60[2] + 1, 1);
          v60 = v73;
        }

        v67 = v60[2];
        v66 = v60[3];
        if (v67 >= v66 >> 1)
        {
          sub_100034080((v66 > 1), v67 + 1, 1);
          v60 = v73;
        }

        v60[2] = v67 + 1;
        v68 = &v60[2 * v67];
        v68[4] = v63;
        v68[5] = v62;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
}

void sub_100BAD69C()
{
  v1 = OBJC_IVAR____TtC8Freeform10CRLFileRep_downloadObserverIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLFileRep____lazy_storage___placeholderImage);

  sub_1000505D0(v3);
}

id sub_100BAD714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileRep(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLFileRep(uint64_t a1)
{
  result = qword_101A13D68;
  if (!qword_101A13D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BAD81C(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100BAD934(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100BAD99C()
{
  v0 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD7698);
  sub_1005EB3DC(v10, qword_101AD7698);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100BADC90()
{
  v0 = sub_1005B981C(&qword_1019F8B00, "Ι%");
  __chkstk_darwin(v0 - 8);
  v57 = v40 - v1;
  v2 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v2 - 8);
  v52 = v40 - v3;
  v48 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin(v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A13DE8, &qword_10149DEC8);
  v53 = sub_1005B981C(&qword_101A13DF0, &qword_10149DED0);
  v16 = *(v53 - 8);
  v49 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v45 = v18;
  *(v18 + 16) = xmmword_10146D2A0;
  v55 = v18 + v17;
  *(v18 + v17) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = v4 + 104;
  v56 = *(v4 + 104);
  v20 = v6;
  v56(v6);
  v21 = v9;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v46 = *(v58 + 56);
  v58 += 56;
  v22 = v52;
  v46(v52, 1, 1, v59);
  v54 = type metadata accessor for DisplayRepresentation.Image();
  v23 = *(v54 - 8);
  v50 = *(v23 + 56);
  v51 = v23 + 56;
  v50(v57, 1, 1, v54);
  v24 = v55;
  DisplayRepresentation.init(title:subtitle:image:)();
  v25 = v49;
  v26 = (v24 + v49);
  v27 = v53;
  v28 = *(v53 + 48);
  v42 = v26;
  v43 = v28;
  *v26 = 1;
  v40[1] = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v40[2] = v21;
  static Locale.current.getter();
  v41 = v20;
  v29 = v20;
  v30 = v47;
  v31 = v48;
  v44 = v19;
  (v56)(v29, v47, v48);
  v40[0] = v15;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = v46;
  v46(v22, 1, 1, v59);
  v50(v57, 1, 1, v54);
  DisplayRepresentation.init(title:subtitle:image:)();
  v43 = *(v27 + 48);
  *(v55 + 2 * v25) = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v41;
  (v56)(v41, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34 = v52;
  v32(v52, 1, 1, v59);
  v35 = v57;
  v36 = v50;
  v50(v57, 1, 1, v54);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = 2 * v25 + v49;
  v49 = *(v53 + 48);
  *(v55 + v37) = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v56)(v33, v47, v48);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v46(v34, 1, 1, v59);
  v36(v35, 1, 1, v54);
  DisplayRepresentation.init(title:subtitle:image:)();
  v38 = sub_100BD89F8(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD76B0 = v38;
  return result;
}

unint64_t sub_100BAE474()
{
  result = qword_101A13D78;
  if (!qword_101A13D78)
  {
    result = swift_getWitnessTable(byte_10149DC10, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13D78);
  }

  return result;
}

Swift::Int sub_100BAE4C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100BAE590(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100BAE644(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100BAE708@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100BAEDEC(*a1);
  *a2 = result;
  return result;
}

void sub_100BAE738(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684828002;
  v4 = 0xE900000000000065;
  v5 = 0x6E696C7265646E75;
  if (*v1 != 2)
  {
    v5 = 0x6874656B69727473;
    v4 = 0xED00006867756F72;
  }

  if (*v1)
  {
    v3 = 0x63696C617469;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100BAE7C0()
{
  result = qword_101A13D80;
  if (!qword_101A13D80)
  {
    result = swift_getWitnessTable("Q~9", &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13D80);
  }

  return result;
}

unint64_t sub_100BAE818()
{
  result = qword_101A13D88;
  if (!qword_101A13D88)
  {
    result = swift_getWitnessTable(byte_10149DD28, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13D88);
  }

  return result;
}

unint64_t sub_100BAE870()
{
  result = qword_101A13D90;
  if (!qword_101A13D90)
  {
    result = swift_getWitnessTable("qY9", &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13D90);
  }

  return result;
}

unint64_t sub_100BAE8C8()
{
  result = qword_101A13D98;
  if (!qword_101A13D98)
  {
    result = swift_getWitnessTable(byte_10149DD58, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13D98);
  }

  return result;
}

unint64_t sub_100BAE91C()
{
  result = qword_101A13DA0;
  if (!qword_101A13DA0)
  {
    result = swift_getWitnessTable(byte_10149DD80, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13DA0);
  }

  return result;
}

unint64_t sub_100BAE970()
{
  result = qword_101A13DA8;
  if (!qword_101A13DA8)
  {
    result = swift_getWitnessTable(byte_10149DDA8, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13DA8);
  }

  return result;
}

unint64_t sub_100BAE9C8()
{
  result = qword_101A13DB0;
  if (!qword_101A13DB0)
  {
    result = swift_getWitnessTable(byte_10149DE00, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13DB0);
  }

  return result;
}

uint64_t sub_100BAEA1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1DF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD7698);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100BAEB14()
{
  result = qword_101A13DB8;
  if (!qword_101A13DB8)
  {
    result = swift_getWitnessTable(asc_10149DCB0, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13DB8);
  }

  return result;
}

uint64_t sub_100BAEB68(uint64_t a1)
{
  v2 = sub_100BAEB14();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100BAEBB8()
{
  result = qword_101A13DC0;
  if (!qword_101A13DC0)
  {
    result = swift_getWitnessTable(byte_10149DE40, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13DC0);
  }

  return result;
}

unint64_t sub_100BAEC10()
{
  result = qword_101A13DC8;
  if (!qword_101A13DC8)
  {
    atomic_store(result, &qword_101A13DC8);
  }

  return result;
}

unint64_t sub_100BAEC68()
{
  result = qword_101A13DD0;
  if (!qword_101A13DD0)
  {
    result = swift_getWitnessTable(byte_10149DC38, &type metadata for CRLFontStyleEntity, v0, v1);
    atomic_store(result, &qword_101A13DD0);
  }

  return result;
}

uint64_t sub_100BAECBC()
{
  if (qword_1019F1DF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100BAED18(uint64_t a1)
{
  v2 = sub_100BAE9C8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100BAED68()
{
  result = qword_101A13DD8;
  if (!qword_101A13DD8)
  {
    v3 = sub_1005C4E5C(&qword_101A13DE0, &qword_10149DE68);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A13DD8);
  }

  return result;
}

unint64_t sub_100BAEDEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018764D0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_100BAEE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v52 = &v46 - v18;
  __chkstk_darwin(v19);
  v24 = &v46 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1BAC0)
  {
    v47 = v22;
    v48 = a2;
    v49 = v21;
    v50 = v20;
    v51 = v4;

    v25 = sub_100D19F00(1);
    v53 = a4;
    v26 = v25;

    v27 = v26 + *(*v26 + 736);
    swift_beginAccess();
    v57 = v24;
    sub_10000BE14(v27, v13, &unk_101A226A0, &unk_10146E610);

    v28 = sub_1005B981C(&qword_101A01F08, &unk_101498A50);
    CRRegister.wrappedValue.getter();
    v29 = v13;
    v30 = v57;
    sub_10000CAAC(v29, &unk_101A226A0, &unk_10146E610);
    sub_10000BE14(v10, v30, &qword_1019F6990, &qword_10146D2F0);
    sub_100BB0540(v10);
    sub_100D1A6AC(v53);
    if (v5)
    {

      sub_10000CAAC(v30, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v53 = v28;
      v54 = v11;
      v31 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990, &qword_10146D2F0);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v31, 1, v32) == 1)
      {
        v35 = v52;
        sub_10000BE14(v57, v52, &qword_1019F6990, &qword_10146D2F0);
        if (v34(v31, 1, v32) != 1)
        {
          sub_10000CAAC(v31, &qword_1019F6990, &qword_10146D2F0);
        }
      }

      else
      {
        v35 = v52;
        (*(v33 + 32))(v52, v31, v32);
        (*(v33 + 56))(v35, 0, 1, v32);
      }

      v36 = v35;
      v37 = v35;
      v38 = v50;
      sub_10000BE14(v36, v50, &qword_1019F6990, &qword_10146D2F0);
      swift_beginAccess();
      v39 = v49;
      sub_10000BE14(v38, v49, &qword_1019F6990, &qword_10146D2F0);
      v40 = CRRegister.wrappedValue.modify();
      sub_100803880(v39, v41);
      v40(v56, 0);
      sub_10000CAAC(v38, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
      v42 = *(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLUnknownItem(0));
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v26;
      v44 = type metadata accessor for CRLBoardItemBase(0);
      v55.receiver = v43;
      v55.super_class = v44;
      v45 = v42;
      objc_msgSendSuper2(&v55, "init");
      sub_10000CAAC(v57, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100BAF3CC()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1BAC0)
  {

    v1 = sub_100D19F00(0);

    v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v3 = objc_allocWithZone(type metadata accessor for CRLUnknownItem(0));
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v2;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v1;
    v5.receiver = v3;
    v5.super_class = type metadata accessor for CRLBoardItemBase(0);
    v4 = v2;
    objc_msgSendSuper2(&v5, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BAF4C4(void *a1)
{
  type metadata accessor for CRLUnknownItem(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_183;
  }

  v7 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v8 != &off_101A1BAC0)
  {
    __break(1u);
    goto LABEL_153;
  }

  v6 = qword_101A1BA58;
  v9 = v8 + qword_101A1BA58;
  v5 = *v9;
  v3 = *(v9 + 1);
  v4 = v9[16];
  if (v9[17] == 1)
  {
    if (v3 | v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 == 0;
    }

    if (v10)
    {
      v3 = 0;
      v4 = 0;
      v5 = 2;
    }

    else if (v5 == 1 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 3;
    }

    else if (v5 == 2 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 4;
    }

    else if (v5 == 3 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 5;
    }

    else if (v5 == 4 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 6;
    }

    else if (v5 == 5 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 7;
    }

    else if (v5 == 6 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 8;
    }

    else if (v5 == 7 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 9;
    }

    else if (v5 == 8 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 10;
    }

    else
    {
      if (v5 != 9 || v3 || v9[16])
      {
        goto LABEL_154;
      }

      v3 = 0;
      v4 = 1;
      v5 = 11;
    }
  }

  while (1)
  {
    v27 = *(v1 + v7);
    if (*v27 == &off_101A1BAC0)
    {
      break;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    if (v5 != 10 || v3 || v4)
    {
      if (v4)
      {
        v72 = 0;
      }

      else
      {
        v72 = v3 == 0;
      }

      if (v72 && v5 == 11)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      v5 = 2;
      v4 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 1;
      v5 = 12;
    }
  }

  v28 = v27 + v6;
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = v28[16];
  if (v28[17] == 1)
  {
    if (v29 | v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (v32)
    {
      v29 = 0;
      LOBYTE(v31) = 0;
      v30 = 2;
    }

    else if (v30 == 1 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 3;
    }

    else if (v30 == 2 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 4;
    }

    else if (v30 == 3 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 5;
    }

    else if (v30 == 4 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 6;
    }

    else if (v30 == 5 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 7;
    }

    else if (v30 == 6 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 8;
    }

    else if (v30 != 7 || v29 || v28[16])
    {
      if (v30 != 8 || v29 || v28[16])
      {
        if (v30 != 9 || v29 || v28[16])
        {
          if (v30 != 10 || v29 || v28[16])
          {
            if (v28[16])
            {
              v74 = 0;
            }

            else
            {
              v74 = v29 == 0;
            }

            v75 = v74 && v30 == 11;
            v29 = 1;
            if (!v75)
            {
              v29 = 2;
            }

            v30 = 2;
            LOBYTE(v31) = 0;
          }

          else
          {
            v29 = 0;
            LOBYTE(v31) = 1;
            v30 = 12;
          }
        }

        else
        {
          v29 = 0;
          LOBYTE(v31) = 1;
          v30 = 11;
        }
      }

      else
      {
        v29 = 0;
        LOBYTE(v31) = 1;
        v30 = 10;
      }
    }

    else
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 9;
    }
  }

  if (v5 != v30)
  {
    goto LABEL_183;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_142;
  }

  if ((v31 & 1) == 0)
  {
LABEL_183:
    do
    {
      v45 = objc_opt_self();
      v46 = [v45 _atomicIncrementAssertCount];
      v76 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v76, "Tried to generate undo from mismatched type", 43, 2u);
      StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUnknownItem.swift", 85, 2);
      v48 = String._bridgeToObjectiveC()();

      v49 = [v48 lastPathComponent];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v46;
      v55 = sub_1005CF000();
      *(inited + 96) = v55;
      v56 = sub_1005CF04C();
      *(inited + 104) = v56;
      *(inited + 72) = v47;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v50;
      *(inited + 120) = v52;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 38;
      v58 = v76;
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v47;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUnknownItem.swift", 85, 2);
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
      v67 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v65 file:v66 lineNumber:38 isFatal:1 format:v67 args:v64];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v68, v69);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_142:
      ;
    }

    while (v31 & 1 | (v3 != v29));
  }

  swift_unknownObjectRetain();
  v70 = sub_1011F0C64();
  swift_unknownObjectRelease();
  return v70;
}

void *sub_100BAFC7C(uint64_t a1)
{
  type metadata accessor for CRLUnknownItem(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_183;
  }

  v7 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v8 != &off_101A1BAC0)
  {
    __break(1u);
    goto LABEL_153;
  }

  v6 = qword_101A1BA58;
  v9 = v8 + qword_101A1BA58;
  v5 = *v9;
  v3 = *(v9 + 1);
  v4 = v9[16];
  if (v9[17] == 1)
  {
    if (v3 | v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 == 0;
    }

    if (v10)
    {
      v3 = 0;
      v4 = 0;
      v5 = 2;
    }

    else if (v5 == 1 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 3;
    }

    else if (v5 == 2 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 4;
    }

    else if (v5 == 3 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 5;
    }

    else if (v5 == 4 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 6;
    }

    else if (v5 == 5 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 7;
    }

    else if (v5 == 6 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 8;
    }

    else if (v5 == 7 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 9;
    }

    else if (v5 == 8 && v3 == 0 && v4 == 0)
    {
      v3 = 0;
      v4 = 1;
      v5 = 10;
    }

    else
    {
      if (v5 != 9 || v3 || v9[16])
      {
        goto LABEL_154;
      }

      v3 = 0;
      v4 = 1;
      v5 = 11;
    }
  }

  while (1)
  {
    v27 = *(v1 + v7);
    if (*v27 == &off_101A1BAC0)
    {
      break;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    if (v5 != 10 || v3 || v4)
    {
      if (v4)
      {
        v71 = 0;
      }

      else
      {
        v71 = v3 == 0;
      }

      if (v71 && v5 == 11)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }

      v5 = 2;
      v4 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 1;
      v5 = 12;
    }
  }

  v28 = v27 + v6;
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = v28[16];
  if (v28[17] == 1)
  {
    if (v29 | v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (v32)
    {
      v29 = 0;
      LOBYTE(v31) = 0;
      v30 = 2;
    }

    else if (v30 == 1 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 3;
    }

    else if (v30 == 2 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 4;
    }

    else if (v30 == 3 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 5;
    }

    else if (v30 == 4 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 6;
    }

    else if (v30 == 5 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 7;
    }

    else if (v30 == 6 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 8;
    }

    else if (v30 != 7 || v29 || v28[16])
    {
      if (v30 != 8 || v29 || v28[16])
      {
        if (v30 != 9 || v29 || v28[16])
        {
          if (v30 != 10 || v29 || v28[16])
          {
            if (v28[16])
            {
              v73 = 0;
            }

            else
            {
              v73 = v29 == 0;
            }

            v74 = v73 && v30 == 11;
            v29 = 1;
            if (!v74)
            {
              v29 = 2;
            }

            v30 = 2;
            LOBYTE(v31) = 0;
          }

          else
          {
            v29 = 0;
            LOBYTE(v31) = 1;
            v30 = 12;
          }
        }

        else
        {
          v29 = 0;
          LOBYTE(v31) = 1;
          v30 = 11;
        }
      }

      else
      {
        v29 = 0;
        LOBYTE(v31) = 1;
        v30 = 10;
      }
    }

    else
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 9;
    }
  }

  if (v5 != v30)
  {
    goto LABEL_183;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_142;
  }

  if ((v31 & 1) == 0)
  {
LABEL_183:
    do
    {
      v45 = objc_opt_self();
      v46 = [v45 _atomicIncrementAssertCount];
      v75 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v75, "Tried to create observable deltas from mismatched type", 54, 2u);
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUnknownItem.swift", 85, 2);
      v48 = String._bridgeToObjectiveC()();

      v49 = [v48 lastPathComponent];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v46;
      v55 = sub_1005CF000();
      *(inited + 96) = v55;
      v56 = sub_1005CF04C();
      *(inited + 104) = v56;
      *(inited + 72) = v47;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v50;
      *(inited + 120) = v52;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 48;
      v58 = v75;
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v47;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLUnknownItem.swift", 85, 2);
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
      v67 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v65 file:v66 lineNumber:48 isFatal:1 format:v67 args:v64];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v68, v69);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_142:
      ;
    }

    while (v31 & 1 | (v3 != v29));
  }

  return _swiftEmptyDictionarySingleton;
}

id sub_100BB047C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUnknownItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLUnknownItem(uint64_t a1)
{
  result = qword_101A13E20;
  if (!qword_101A13E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BB0540(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardItemParentAffinity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100BB05A0()
{
  result = qword_101A13E30;
  if (!qword_101A13E30)
  {
    result = swift_getWitnessTable(byte_10149DF38, &type metadata for CRLiOSCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13E30);
  }

  return result;
}

uint64_t sub_100BB05F4()
{
  v0 = sub_1005B981C(&qword_101A13EC0, &qword_10149E228);
  sub_10061655C(v0, qword_101AD76B8);
  sub_1005EB3DC(v0, qword_101AD76B8);
  sub_1006896D0();
  return IntentDeprecation.init(replacedBy:)();
}

uint64_t sub_100BB0664()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD76D0);
  sub_1005EB3DC(v6, qword_101AD76D0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_100BB085C()
{
  v0 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - v1;
  v3 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for CRLiOSAppDelegate();
    if (swift_dynamicCastClass())
    {
      sub_100787FE4();
      if (v8)
      {
        v9 = v8;
        v10 = *&v8[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
        if (v10)
        {
          v11 = [v10 windowScene];
          if (v11)
          {
            v12 = v11;
            if (qword_1019F2220 != -1)
            {
              swift_once();
            }

            v13 = static OS_os_log.sceneManagement;
            v14 = static os_log_type_t.default.getter();
            sub_100005404(v13, &_mh_execute_header, v14, "Creating new board from app intent", 34, 2, _swiftEmptyArrayStorage);
            sub_100BB2334();
            v15 = type metadata accessor for CRLBoardIdentifier(0);
            (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
            v16 = type metadata accessor for UUID();
            (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
            v17 = sub_1000801CC(7, 1, v5, v2);
            sub_100C2E834(v17);
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.sceneManagement;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v19, "Failed to create new board from app intent", 42, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100BB0B78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1005B981C(&qword_101A13EC0, &qword_10149E228);
  v3 = sub_1005EB3DC(v2, qword_101AD76B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100BB0C30()
{
  result = qword_101A13E38;
  if (!qword_101A13E38)
  {
    result = swift_getWitnessTable(byte_10149DFD0, &type metadata for CRLiOSCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13E38);
  }

  return result;
}

unint64_t sub_100BB0C88()
{
  result = qword_101A13E40;
  if (!qword_101A13E40)
  {
    result = swift_getWitnessTable(byte_10149DFF8, &type metadata for CRLiOSCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13E40);
  }

  return result;
}

uint64_t sub_100BB0D38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&qword_101A13EB8, &qword_10149E220);
  __chkstk_darwin(v2 - 8);
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100BB0E38()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BB0ECC, v2, v1);
}

uint64_t sub_100BB0ECC()
{

  sub_100BB085C();

  return _swift_task_switch(sub_100BB2380, 0, 0);
}

uint64_t sub_100BB0F70(uint64_t a1)
{
  v2 = sub_100BB05A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100BB0FB0()
{
  result = qword_101A13E48;
  if (!qword_101A13E48)
  {
    result = swift_getWitnessTable(byte_10149E060, &type metadata for CRLiOSOpenBoardIntent, v0, v1);
    atomic_store(result, &qword_101A13E48);
  }

  return result;
}

uint64_t sub_100BB1004()
{
  v0 = sub_1005B981C(&qword_101A13EB0, &qword_10149E218);
  sub_10061655C(v0, qword_101AD76E8);
  sub_1005EB3DC(v0, qword_101AD76E8);
  sub_10068984C();
  return IntentDeprecation.init(replacedBy:)();
}

uint64_t sub_100BB1074()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD7700);
  sub_1005EB3DC(v6, qword_101AD7700);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_100BB126C(uint64_t a1)
{
  v38 = a1;
  v1 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v1 - 8);
  v37 = &v31 - v2;
  v3 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for UUID();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLiOSBoardEntity(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (v16)
  {
    type metadata accessor for CRLiOSAppDelegate();
    if (swift_dynamicCastClass())
    {
      sub_100787FE4();
      if (v17)
      {
        v18 = v17;
        v19 = *&v17[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
        if (v19)
        {
          v20 = [v19 windowScene];
          if (v20)
          {
            v34 = v20;
            v35 = v18;
            if (qword_1019F2220 != -1)
            {
              swift_once();
            }

            v33 = static OS_os_log.sceneManagement;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            IntentParameter.wrappedValue.getter();
            sub_1005F1308(v14, v11);
            v32 = type metadata accessor for CRLiOSBoardEntity;
            sub_100BB22D4(v14, type metadata accessor for CRLiOSBoardEntity);
            (*(v39 + 16))(v8, v11, v6);
            sub_100BB22D4(v11, type metadata accessor for CRLBoardIdentifier);
            v22 = UUID.uuidString.getter();
            v24 = v23;
            (*(v39 + 8))(v8, v6);
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v22;
            *(inited + 40) = v24;
            v25 = static os_log_type_t.default.getter();
            sub_100005404(v33, &_mh_execute_header, v25, "Opening the board:%@ from app intent", 36, 2, inited);
            swift_setDeallocating();
            sub_100005070((inited + 32));
            sub_100BB2334();
            IntentParameter.wrappedValue.getter();
            sub_1005F1308(v14, v5);
            sub_100BB22D4(v14, v32);
            (*(v36 + 56))(v5, 0, 1, v9);
            v26 = v37;
            (*(v39 + 56))(v37, 1, 1, v6);
            v27 = sub_1000801CC(5, 1, v5, v26);
            v28 = v35;
            sub_100C2E834(v27);
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.sceneManagement;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v29, &_mh_execute_header, v30, "Failed to open a board from app intent", 38, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100BB17C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1005B981C(&qword_101A13EB0, &qword_10149E218);
  v3 = sub_1005EB3DC(v2, qword_101AD76E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100BB1880()
{
  result = qword_101A13E50;
  if (!qword_101A13E50)
  {
    atomic_store(result, &qword_101A13E50);
  }

  return result;
}

unint64_t sub_100BB18D8()
{
  result = qword_101A13E58;
  if (!qword_101A13E58)
  {
    atomic_store(result, &qword_101A13E58);
  }

  return result;
}

uint64_t sub_100BB1988(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&qword_101A13E98, &qword_10149E1D8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1005B981C(&qword_101A13EA0, &qword_10149E1E0);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x616F42206E65704FLL;
  v4._object = 0xEB00000000206472;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13EA8, &qword_10149E210);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100BB1B3C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100BB1B60, 0, 0);
}

uint64_t sub_100BB1B60()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BB1BF4, v2, v1);
}

uint64_t sub_100BB1BF4()
{
  v1 = *(v0 + 24);

  sub_100BB126C(v1);

  return _swift_task_switch(sub_100BB1C9C, 0, 0);
}

uint64_t sub_100BB1C9C(__n128 a1)
{
  static IntentResult.result<>()();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100BB1D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100BB1D84();
  *a1 = result;
  return result;
}

uint64_t sub_100BB1D28(uint64_t a1)
{
  v2 = sub_100BB0FB0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100BB1D84()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v2 - 8);
  v26 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = v24 - v5;
  v6 = sub_1005B981C(&qword_101A13E80, &unk_10149E1B8);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v24[1] = sub_1005B981C(&qword_101A13E88, &unk_10149E1C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = type metadata accessor for CRLiOSBoardEntity(0);
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  v22 = *(*(v21 - 8) + 56);
  v22(v25, 1, 1, v21);
  v22(v26, 1, 1, v21);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100BB227C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_100BB227C()
{
  result = qword_101A01D50;
  if (!qword_101A01D50)
  {
    v3 = type metadata accessor for CRLiOSBoardEntity(255);
    result = swift_getWitnessTable(byte_10147ED40, v3, v0, v1);
    atomic_store(result, &qword_101A01D50);
  }

  return result;
}

uint64_t sub_100BB22D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100BB2334()
{
  result = qword_101A13E90;
  if (!qword_101A13E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A13E90);
  }

  return result;
}

id sub_100BB2384()
{
  v1 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v1 - 8);
  v92 = &v85 - v2;
  v3 = type metadata accessor for UTType();
  v94 = *(v3 - 8);
  __chkstk_darwin(v3);
  v91 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v5 - 8);
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v96 = &v85 - v8;
  __chkstk_darwin(v9);
  v11 = &v85 - v10;
  __chkstk_darwin(v12);
  v98 = &v85 - v13;
  v14 = type metadata accessor for URL();
  v100 = *(v14 - 8);
  v15 = *(v100 + 64);
  __chkstk_darwin(v14);
  v90 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v93 = &v85 - v17;
  __chkstk_darwin(v18);
  v99 = &v85 - v19;
  v20 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v20 - 8);
  v22 = &v85 - v21;
  v23 = type metadata accessor for CRLAssetData(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v0;
  type metadata accessor for CRLImageItem(0);
  sub_100BBECE4(v22);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v88 = v3;
    v89 = v11;
    v95 = v14;
    sub_100BBFCFC(v22, v26, type metadata accessor for CRLAssetData);
    v30 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v31 = *&v30[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v32 = *(v31 + 16);
    v33 = v30;
    os_unfair_lock_lock(v32);
    v34 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v35 = *&v33[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v35)
    {
      v36 = *&v33[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v37 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v38 = v33;
      v39 = sub_10001F1A0(v38);

      v40 = *&v33[v34];
      *&v33[v34] = v39;
      v36 = v39;

      v35 = 0;
    }

    v41 = v98;
    v42 = *(v31 + 16);
    v43 = v35;
    os_unfair_lock_unlock(v42);
    sub_10108CAF4(v26, 0, 3, 0, 0, v41);

    v44 = v100;
    v45 = *(v100 + 48);
    v46 = v95;
    if (v45(v41, 1, v95) == 1)
    {
      sub_100BBFD64(v26, type metadata accessor for CRLAssetData);
      v27 = &unk_1019F33C0;
      v28 = &unk_101468A60;
      v29 = v41;
      goto LABEL_8;
    }

    v87 = *(v44 + 32);
    v87(v99, v41, v46);
    v50 = v89;
    (*(v44 + 56))(v89, 1, 1, v46);
    v51 = &v26[*(v23 + 20)];
    v52 = v51[1];
    v53 = v96;
    v86 = *v51;
    v85 = v52;
    v98 = sub_10125B790(v96, v86, v52);
    sub_10000CAAC(v50, &unk_1019F33C0, &unk_101468A60);
    sub_10003DFF8(v53, v50, &unk_1019F33C0, &unk_101468A60);
    v54 = v50;
    v55 = v97;
    sub_10000BE14(v54, v97, &unk_1019F33C0, &unk_101468A60);
    v56 = v26;
    if (v45(v55, 1, v46) == 1)
    {
      sub_10000CAAC(v55, &unk_1019F33C0, &unk_101468A60);
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v57 = static OS_os_log.crlDefault;
      v58 = static os_log_type_t.error.getter();
      sub_100005404(v57, &_mh_execute_header, v58, "Unable to cacheItemToURL", 24, 2, _swiftEmptyArrayStorage);
      v59 = objc_allocWithZone(NSItemProvider);
      URL._bridgeToObjectiveC()(v60);
      v62 = v61;
      v49 = [v59 initWithContentsOfURL:v61];

      if (v49)
      {
        v63 = String._bridgeToObjectiveC()();
        [v49 setSuggestedName:v63];
      }

      sub_10000CAAC(v89, &unk_1019F33C0, &unk_101468A60);
      (*(v100 + 8))(v99, v46);
      goto LABEL_26;
    }

    v64 = v93;
    v87(v93, v55, v46);
    v49 = [objc_allocWithZone(NSItemProvider) init];
    v65 = v92;
    v66 = sub_1007AC4D0(0, v92);
    v67 = v94;
    v68 = v88;
    if ((*(v94 + 48))(v65, 1, v88, v66) == 1)
    {
      sub_10000CAAC(v65, &unk_1019F8DB0, &unk_101471FC0);
      if (!v49)
      {
LABEL_23:
        if (!v98)
        {
LABEL_25:
          v82 = *(v100 + 8);
          v83 = v95;
          v82(v64, v95);
          sub_10000CAAC(v89, &unk_1019F33C0, &unk_101468A60);
          v82(v99, v83);
LABEL_26:
          sub_100BBFD64(v56, type metadata accessor for CRLAssetData);
          return v49;
        }

LABEL_24:
        aBlock[0] = v49;
        sub_1005B981C(&qword_101A13F98, &unk_10149E2C0);
        v80 = Optional._bridgeToObjectiveC()();
        v81 = v98;
        [v98 setAssociatedLifetimeObject:v80];

        swift_unknownObjectRelease();
        goto LABEL_25;
      }
    }

    else
    {
      v69 = v91;
      (*(v67 + 32))(v91, v65, v68);
      if (!v49)
      {
        (*(v67 + 8))(v69, v68);
        if (!v98)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      UTType.identifier.getter();
      v96 = String._bridgeToObjectiveC()();

      v71 = v100 + 16;
      v70 = *(v100 + 16);
      v97 = v26;
      v72 = v90;
      v73 = v95;
      v70(v90, v64, v95);
      v74 = (*(v71 + 64) + 16) & ~*(v71 + 64);
      v75 = swift_allocObject();
      v76 = v72;
      v56 = v97;
      v87((v75 + v74), v76, v73);
      aBlock[4] = sub_100BBFDC4;
      aBlock[5] = v75;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100BB2E30;
      aBlock[3] = &unk_101899530;
      v77 = _Block_copy(aBlock);

      v78 = v96;
      [v49 registerFileRepresentationForTypeIdentifier:v96 fileOptions:0 visibility:0 loadHandler:v77];
      _Block_release(v77);

      (*(v67 + 8))(v91, v68);
    }

    v79 = String._bridgeToObjectiveC()();
    [v49 setSuggestedName:v79];

    goto LABEL_23;
  }

  v27 = &unk_101A1B880;
  v28 = &unk_10147AB00;
  v29 = v22;
LABEL_8:
  sub_10000CAAC(v29, v27, v28);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v47 = static OS_os_log.crlDefault;
  v48 = static os_log_type_t.error.getter();
  sub_100005404(v47, &_mh_execute_header, v48, "Unable to make itemProvider from backing asset because the asset is missing", 75, 2, _swiftEmptyArrayStorage);
  return 0;
}

id sub_100BB2E30(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100BBFE44, v4);

  return v5;
}

void sub_100BB2ED0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_10000BE14(a1, &v17 - v9, &unk_1019F33C0, &unk_101468A60);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v16 = _convertErrorToNSError(_:)();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v14, a2 & 1, v16);
}

_UNKNOWN ****sub_100BB30D8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData;
  v20 = *&v1[OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData];
  if (!v20)
  {
    if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A25280)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100BBFC94(v4, v7, type metadata accessor for CRLAssetData);
      sub_100BBFD64(v4, type metadata accessor for CRLImageItemAssetData);
      v69 = v1;
      v29 = [v1 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v68 = type metadata accessor for CRLAssetManager();
        v52 = objc_allocWithZone(v68);
        swift_unknownObjectWeakInit();
        v53 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v54 = swift_allocObject();
        v67 = v29;
        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v54 + 16) = v55;
        atomic_thread_fence(memory_order_acq_rel);
        *&v52[v53] = v54;
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v52[v56] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v57 = v67;
        swift_unknownObjectWeakAssign();
        v70.receiver = v52;
        v70.super_class = v68;
        v58 = objc_msgSendSuper2(&v70, "init");

        v59 = *&v29[v31];
        *&v29[v31] = v58;
        v33 = v58;

        v32 = 0;
      }

      v60 = *(v30 + 16);
      v61 = v32;
      os_unfair_lock_unlock(v60);

      v62 = v69;
      v63 = sub_1011255E0();

      sub_100BBFD64(v7, type metadata accessor for CRLAssetData);
      v51 = *(v62 + v19);
      *(v62 + v19) = v63;
      v28 = v63;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v65 = v10;
  v66 = v16;
  v67 = v15;
  v68 = v4;
  v19 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  LODWORD(v10) = sub_100020E58((v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v19);
  v4 = v1;
  v22 = *(v21 + 24);
  v69 = v20;
  v22(v19, v21);
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v20 != &off_101A25280)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
  v23 = v68;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v24 = v65;
  sub_100BBFC94(v23, v65, type metadata accessor for CRLAssetData);
  sub_100BBFD64(v23, type metadata accessor for CRLImageItemAssetData);
  v26 = v66;
  v25 = v67;
  (*(v66 + 16))(v13, v24, v67);
  sub_100BBFD64(v24, type metadata accessor for CRLAssetData);
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v13, v25);
  v27(v18, v25);
  if ((v24 & 1) == 0)
  {
    v20 = objc_opt_self();
    LODWORD(v10) = [v20 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71, "Cached CRLAsset instance has not been updated as expected.", 58, 2u);
    StaticString.description.getter("imageAssetPayload", 17, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v36;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v10;
      v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v39;
      v40 = sub_1005CF04C();
      *(inited + 104) = v40;
      *(inited + 72) = v4;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 53;
      v42 = v71;
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v4;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter("imageAssetPayload", 17, 2);
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Cached CRLAsset instance has not been updated as expected.", 58, 2);
      v51 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v49 file:v50 lineNumber:53 isFatal:0 format:v51 args:v48];

      v28 = v69;
LABEL_12:

      return v28;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v69;
}

char *sub_100BB3AB4()
{
  v1 = type metadata accessor for UUID();
  v58 = *(v1 - 1);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CRLAssetData(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v0;
  if (**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A25280)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_10000BE14(&v6[*(v4 + 20)], v9, &unk_101A1B880, &unk_10147AB00);
  sub_100BBFD64(v6, type metadata accessor for CRLImageItemAssetData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CAAC(v9, &unk_101A1B880, &unk_10147AB00);
    return 0;
  }

  v13 = v60;
  sub_100BBFCFC(v9, v60, type metadata accessor for CRLAssetData);
  v14 = OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData;
  v15 = v59;
  v9 = *&v59[OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData];
  if (v9)
  {
    v16 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v17 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v16);
    v18 = *(v17 + 24);
    v19 = v9;
    v18(v16, v17);
    v20 = static UUID.== infix(_:_:)();
    (*(v58 + 1))(v3, v1);
    if (v20)
    {
LABEL_8:
      sub_100BBFD64(v13, type metadata accessor for CRLAssetData);
      return v9;
    }

    v59 = objc_opt_self();
    LODWORD(v0) = [v59 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62, "Cached CRLAsset instance has not been updated as expected.", 58, 2u);
    StaticString.description.getter("thumbnailAssetPayload", 21, 2);
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v23;

    if (qword_1019F20A0 == -1)
    {
LABEL_7:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v0;
      v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v26;
      v27 = sub_1005CF04C();
      *(inited + 104) = v27;
      *(inited + 72) = v1;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v10;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 70;
      v29 = v62;
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v29;
      v30 = v1;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v34[4] = 0;
      v34[5] = 0;
      v35 = __VaListBuilder.va_list()();
      StaticString.description.getter("thumbnailAssetPayload", 21, 2);
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Cached CRLAsset instance has not been updated as expected.", 58, 2);
      v38 = String._bridgeToObjectiveC()();

      [v59 handleFailureInFunction:v36 file:v37 lineNumber:70 isFatal:0 format:v38 args:v35];

      v13 = v60;
      goto LABEL_8;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v39 = [v59 store];
  v40 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v40 + 16));
  v41 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v42 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v42)
  {
    v43 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v58 = type metadata accessor for CRLAssetManager();
    v44 = objc_allocWithZone(v58);
    swift_unknownObjectWeakInit();
    v45 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v46 = swift_allocObject();
    v47 = v39;
    v48 = swift_slowAlloc();
    *v48 = 0;
    *(v46 + 16) = v48;
    atomic_thread_fence(memory_order_acq_rel);
    *&v44[v45] = v46;
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v49 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v44[v49] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v15 = v59;
    swift_unknownObjectWeakAssign();
    v61.receiver = v44;
    v61.super_class = v58;
    v50 = objc_msgSendSuper2(&v61, "init");

    v51 = *&v39[v41];
    *&v39[v41] = v50;
    v43 = v50;

    v42 = 0;
  }

  v52 = *(v40 + 16);
  v53 = v42;
  os_unfair_lock_unlock(v52);

  v54 = v60;
  v9 = sub_1011255E0();

  sub_100BBFD64(v54, type metadata accessor for CRLAssetData);
  v55 = *&v15[v14];
  *&v15[v14] = v9;
  v56 = v9;

  return v9;
}

double sub_100BB442C()
{
  v0 = sub_100BB30D8();
  v1 = [objc_opt_self() sharedPool];
  v2 = [v1 providerForAsset:v0 shouldValidate:1];

  [v2 naturalSize];
  v4 = v3;

  return v4;
}

void sub_100BB44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v26 = &v46 - v25;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    v47 = v19;
    v48 = a2;
    v49 = v24;
    v50 = v23;
    v51 = v22;
    v52 = v4;

    v28 = sub_100FA3AC8(1, v27);
    v55 = a4;
    v29 = v28;

    v30 = *(*v29 + 736);
    v53 = v6;
    v31 = v29 + v30;
    swift_beginAccess();
    sub_10000BE14(v31, v14, &unk_101A226A0, &unk_10146E610);

    v32 = v11;
    v33 = sub_1005B981C(&qword_101A01F08, &unk_101498A50);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v14, &unk_101A226A0, &unk_10146E610);
    sub_10000BE14(v32, v26, &qword_1019F6990, &qword_10146D2F0);
    v34 = v32;
    v35 = v29;
    sub_100BBFD64(v34, type metadata accessor for CRLBoardItemParentAffinity);
    v36 = v53;
    sub_100FA4008(v55);
    if (v36)
    {

      sub_10000CAAC(v26, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v46 = v33;
      v53 = 0;
      v55 = v12;
      v37 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990, &qword_10146D2F0);
      v38 = type metadata accessor for UUID();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      if (v40(v37, 1, v38) == 1)
      {
        v41 = v50;
        sub_10000BE14(v26, v50, &qword_1019F6990, &qword_10146D2F0);
        if (v40(v37, 1, v38) != 1)
        {
          sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
        }
      }

      else
      {
        v41 = v50;
        (*(v39 + 32))(v50, v37, v38);
        (*(v39 + 56))(v41, 0, 1, v38);
      }

      v42 = v51;
      sub_10000BE14(v41, v51, &qword_1019F6990, &qword_10146D2F0);
      swift_beginAccess();
      v43 = v49;
      sub_10000BE14(v42, v49, &qword_1019F6990, &qword_10146D2F0);
      v44 = CRRegister.wrappedValue.modify();
      sub_10002C638(v43, v45, &qword_1019F6990, &qword_10146D2F0);
      v44(v54, 0);
      sub_10000CAAC(v42, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();

      sub_10000CAAC(v41, &qword_1019F6990, &qword_10146D2F0);
      sub_101122410(*(v52 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v35);
      sub_10000CAAC(v26, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BB4A48(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v14 - 8);
  v78 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v79 = &v66 - v17;
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for CRLAssetData(0);
  v81 = *(v21 - 8);
  v82 = v21;
  __chkstk_darwin(v21);
  v80 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v83 = &v66 - v24;
  v77 = v2;
  result = sub_1011255D0();
  if (result)
  {
    v73 = v20;
    if (qword_1019F2878 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for UUID();
    v27 = sub_1005EB3DC(v26, qword_101AD8F08);
    v28 = v83;
    (*(*(v26 - 8) + 16))(v83, v27, v26);
    v29 = v82;
    v30 = (v28 + *(v82 + 20));
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    *(v28 + *(v29 + 24)) = _swiftEmptyDictionarySingleton;
    sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v85);
    v31 = sub_1005B981C(&qword_1019FF208, &qword_10148C780);
    v71 = type metadata accessor for CRLAssetBackedAssetStorage(0);
    v72 = v31;
    v32 = swift_dynamicCast();
    v75 = a1;
    v76 = a2;
    if (!v32)
    {
      v68 = v5;
      v69 = v7;
      v70 = v10;
      v74 = *(v81 + 56);
      v74(v79, 1, 1, v29);
      v67 = objc_opt_self();
      LODWORD(v5) = [v67 _atomicIncrementAssertCount];
      v85[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v85, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAssetMedia(media:thumbnailData:)", 35, 2);
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
      v37 = String._bridgeToObjectiveC()();

      v38 = [v37 lastPathComponent];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    v33 = v79;
    sub_100BBFC94(v84 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v79, type metadata accessor for CRLAssetData);
    v34 = v82;

    v35 = v81;
    v74 = *(v81 + 56);
    v74(v33, 0, 1, v34);
    while (1)
    {
      v39 = v73;
      sub_10003DFF8(v33, v73, &unk_101A1B880, &unk_10147AB00);
      if ((*(v35 + 48))(v39, 1, v34) == 1)
      {
        sub_10000CAAC(v39, &unk_101A1B880, &unk_10147AB00);
      }

      else
      {
        v57 = v83;
        sub_100BBFD64(v83, type metadata accessor for CRLAssetData);
        sub_100BBFCFC(v39, v57, type metadata accessor for CRLAssetData);
      }

      v58 = sub_100BBF8EC(v75);
      if (v58)
      {
        v79 = v13;
        v59 = v7;
        v60 = swift_allocObject();
        v60[2] = _swiftEmptyArrayStorage;
        v61 = v60 + 2;
        v85[4] = sub_1009CEBEC;
        v85[5] = v60;
        v85[0] = _NSConcreteStackBlock;
        v85[1] = *"";
        v85[2] = sub_100CD0AFC;
        v85[3] = &unk_1018994E0;
        v62 = _Block_copy(v85);

        [v58 iteratePathElementsWithBlock:v62];

        v63 = v62;
        v7 = v59;
        v13 = v79;
        _Block_release(v63);
        swift_beginAccess();
        v58 = *v61;

        a2 = v76;
      }

      v36 = v78;
      sub_100BBFC94(v83, v80, type metadata accessor for CRLAssetData);
      if (a2 && (sub_10000630C(a2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v85), swift_dynamicCast()))
      {
        sub_100BBFC94(v85[6] + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v36, type metadata accessor for CRLAssetData);

        v64 = v36;
        v65 = 0;
      }

      else
      {
        v64 = v36;
        v65 = 1;
      }

      v74(v64, v65, 1, v82);
      sub_100BBFCFC(v80, v13, type metadata accessor for CRLAssetData);
      sub_10003DFF8(v36, &v13[v5[5]], &unk_101A1B880, &unk_10147AB00);
      *&v13[v5[6]] = v58;
      v13[v5[7]] = 2;
      v13[v5[8]] = 2;
      *&v13[v5[9]] = _swiftEmptyDictionarySingleton;
      v41 = *(v77 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v41 == &off_101A25280)
      {
        break;
      }

      __break(1u);
LABEL_21:
      swift_once();
LABEL_7:
      v42 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v44 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v44;
      v45 = sub_1005CF04C();
      *(inited + 104) = v45;
      *(inited + 72) = v36;
      *(inited + 136) = &type metadata for String;
      v46 = sub_1000053B0();
      *(inited + 112) = v39;
      *(inited + 120) = v41;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v46;
      *(inited + 152) = 139;
      v47 = v85[0];
      *(inited + 216) = v44;
      *(inited + 224) = v45;
      *(inited + 192) = v47;
      v48 = v36;
      v49 = v47;
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v42, &_mh_execute_header, v51, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v52 = swift_allocObject();
      v52[2] = 8;
      v52[3] = 0;
      v52[4] = 0;
      v52[5] = 0;
      v53 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAssetMedia(media:thumbnailData:)", 35, 2);
      v54 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
      v55 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v56 = String._bridgeToObjectiveC()();

      [v67 handleFailureInFunction:v54 file:v55 lineNumber:139 isFatal:0 format:v56 args:v53];

      v7 = v69;
      v10 = v70;
      v5 = v68;
      a2 = v76;
      v35 = v81;
      v34 = v82;
      v33 = v79;
    }

    sub_100BBFC94(v13, v10, type metadata accessor for CRLImageItemAssetData);
    swift_beginAccess();
    sub_100BBFC94(v10, v7, type metadata accessor for CRLImageItemAssetData);

    sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
    CRRegister.wrappedValue.setter();
    sub_100BBFD64(v10, type metadata accessor for CRLImageItemAssetData);
    swift_endAccess();

    sub_100BBFD64(v13, type metadata accessor for CRLImageItemAssetData);
    return sub_100BBFD64(v83, type metadata accessor for CRLAssetData);
  }

  return result;
}

void sub_100BB5634()
{
  v1 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v4 = *&v3[*(v1 + 24)];

    sub_100BBFD64(v3, type metadata accessor for CRLImageItemAssetData);
    if (v4)
    {
      sub_100006370(0, &qword_101A02480, off_10182F728);
      sub_100C58684(v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100BB584C(void *a1)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_1005B981C(&qword_101A13F10, &unk_1014BD1C0);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v6);
  v8 = v25 - v7 + 16;
  __chkstk_darwin(v9);
  v11 = v25 - v10 + 16;
  if ((sub_1011255D0() & 1) == 0)
  {
    v18 = v24;

    return;
  }

  v12 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (!v24)
  {
    if (v12 == &off_101A25280)
    {
      v19 = type metadata accessor for CRLMaskInfoData(0);
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      sub_10000BE14(v11, v8, &qword_101A13F10, &unk_1014BD1C0);
      swift_beginAccess();
      sub_10000BE14(v8, v5, &qword_101A13F10, &unk_1014BD1C0);
      type metadata accessor for CRLImageItemCRDTData(0);

      sub_1005B981C(&qword_101A13F18, &qword_10149E280);
      CRRegister.wrappedValue.setter();
      sub_10000CAAC(v8, &qword_101A13F10, &unk_1014BD1C0);
      swift_endAccess();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

  if (v12 != &off_101A25280)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = type metadata accessor for CRLMaskInfoData(0);
  *&v11[*(v13 + 24)] = _swiftEmptyDictionarySingleton;
  v14 = v24;

  sub_100C3D740([v14 pathSource], v11);
  v15 = [v14 geometry];
  sub_101271CCC(v15, v25);

  v16 = &v11[*(v13 + 20)];
  v17 = v25[1];
  *v16 = v25[0];
  *(v16 + 1) = v17;
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_10000BE14(v11, v8, &qword_101A13F10, &unk_1014BD1C0);
  swift_beginAccess();
  sub_10000BE14(v8, v5, &qword_101A13F10, &unk_1014BD1C0);
  type metadata accessor for CRLImageItemCRDTData(0);
  sub_1005B981C(&qword_101A13F18, &qword_10149E280);
  CRRegister.wrappedValue.setter();
  sub_10000CAAC(v8, &qword_101A13F10, &unk_1014BD1C0);
  swift_endAccess();

LABEL_10:

  sub_10000CAAC(v11, &qword_101A13F10, &unk_1014BD1C0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v22)
    {
      return;
    }
  }

  else
  {
  }

  v23 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo) = 0;
}

id sub_100BB5CC8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMaskInfoData(0);
  __chkstk_darwin(v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v10 = v8(v9);

  *&v7[*(v2 + 24)] = _swiftEmptyDictionarySingleton;
  v11 = v10;
  [v11 size];
  result = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v12, v13}];
  if (result)
  {
    v15 = result;
    [v11 center];
    v17 = v16;
    v19 = v18;
    [v11 position];
    v21 = sub_10011F31C(v17, v19, v20);
    v23 = v22;
    [v11 size];
    v26 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v21 size:{v23, v24, v25}];
    v27 = v15;
    sub_100C3D740(v27, v7);
    sub_101271CCC(v26, v47);

    v28 = &v7[*(v2 + 20)];
    v29 = v47[1];
    *v28 = v47[0];
    *(v28 + 1) = v29;
    sub_100BBFC94(v7, v4, type metadata accessor for CRLMaskInfoData);
    v30 = objc_allocWithZone(CRLMaskInfo);
    v31 = &v4[*(v2 + 20)];
    LODWORD(v21) = *v31;
    LODWORD(v23) = *(v31 + 1);
    v32 = *(v31 + 2);
    v33 = *(v31 + 3);
    v34 = *(v31 + 4);
    v35 = v31[20];
    v36 = v31[21];
    v46 = v7;
    v37 = v4;
    v38 = v31[22];
    v39 = v31[23];
    v40 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v41 = v1;
    v42 = [v40 initWithPosition:v35 size:v36 widthValid:v38 heightValid:v39 horizontalFlip:*&v21 verticalFlip:*&v23 angle:{v32, v33, v34}];
    v43 = sub_100C49F20(v37);
    v44 = [v30 initWithImageItem:v41 geometry:v42 pathSource:v43];

    sub_100BBFD64(v37, type metadata accessor for CRLMaskInfoData);
    sub_100BBFD64(v46, type metadata accessor for CRLMaskInfoData);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100BB60A8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMaskInfoData(0);
  __chkstk_darwin(v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  sub_100BBF54C();
  if (v8)
  {
    v55 = v8;
    v54 = [v55 geometry];
    v9 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v11 = v9(v10);

    *&v7[*(v2 + 24)] = _swiftEmptyDictionarySingleton;
    v12 = v11;
    [v12 size];
    v15 = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v13, v14}];
    if (v15)
    {
      v16 = v15;
      [v12 center];
      v18 = v17;
      v20 = v19;
      [v12 position];
      v22 = sub_10011F31C(v18, v20, v21);
      v24 = v23;
      [v12 size];
      v27 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v22 size:{v24, v25, v26}];
      v28 = v16;
      sub_100C3D740(v28, v7);
      sub_101271CCC(v27, v56);

      v29 = &v7[*(v2 + 20)];
      v30 = v56[1];
      *v29 = v56[0];
      *(v29 + 1) = v30;
      sub_100BBFC94(v7, v4, type metadata accessor for CRLMaskInfoData);
      v53 = objc_allocWithZone(CRLMaskInfo);
      v31 = &v4[*(v2 + 20)];
      LODWORD(v22) = *v31;
      LODWORD(v24) = *(v31 + 1);
      v32 = *(v31 + 2);
      v33 = *(v31 + 3);
      v34 = *(v31 + 4);
      v35 = v31[20];
      v36 = v31[21];
      v37 = v31[22];
      v38 = v31[23];
      v39 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v40 = v4;
      v41 = v1;
      v42 = [v39 initWithPosition:v35 size:v36 widthValid:v37 heightValid:v38 horizontalFlip:*&v22 verticalFlip:*&v24 angle:{v32, v33, v34}];
      v43 = sub_100C49F20(v4);
      v44 = [v53 initWithImageItem:v41 geometry:v42 pathSource:v43];

      sub_100BBFD64(v40, type metadata accessor for CRLMaskInfoData);
      sub_100BBFD64(v7, type metadata accessor for CRLMaskInfoData);
      v45 = [v44 geometry];

      v46 = v54;
      v47 = [v54 isEqual:v45];

      if (v47)
      {
        v48 = v55;
        v49 = [v55 pathSource];
        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (v50)
        {
          [v50 shouldShowKnob];
        }

        else
        {

          v51 = [v48 pathSource];
          [v51 isRectangular];
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100BB66D0(char a1)
{
  v3 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  result = sub_1011255D0();
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v11[*(v3 + 28)] = a1 & 1;
      sub_100BBFC94(v11, v8, type metadata accessor for CRLImageItemAssetData);
      swift_beginAccess();
      sub_100BBFC94(v8, v5, type metadata accessor for CRLImageItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100BBFD64(v8, type metadata accessor for CRLImageItemAssetData);
      swift_endAccess();

      return sub_100BBFD64(v11, type metadata accessor for CRLImageItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100BB691C()
{
  v1 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[3] = &type metadata for CRLFeatureFlags;
  v8[4] = sub_100004D60();
  LOBYTE(v8[0]) = 19;
  v4 = isFeatureEnabled(_:)();
  result = sub_100005070(v8);
  if ((v4 & 1) == 0)
  {
    v6 = 0;
    return v6 & 1;
  }

  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v6 = v3[*(v1 + 32)];
    sub_100BBFD64(v3, type metadata accessor for CRLImageItemAssetData);
    return v6 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100BB6AEC(char a1)
{
  v3 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v15[-1] - v10;
  v15[3] = &type metadata for CRLFeatureFlags;
  v15[4] = sub_100004D60();
  LOBYTE(v15[0]) = 19;
  v12 = isFeatureEnabled(_:)();
  result = sub_100005070(v15);
  if (v12)
  {
    result = sub_1011255D0();
    if (result)
    {
      if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
      {
        swift_beginAccess();

        sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
        CRRegister.wrappedValue.getter();
        swift_endAccess();
        v11[*(v3 + 32)] = a1 & 1;
        sub_100BBFC94(v11, v8, type metadata accessor for CRLImageItemAssetData);
        swift_beginAccess();
        sub_100BBFC94(v8, v5, type metadata accessor for CRLImageItemAssetData);
        CRRegister.wrappedValue.setter();
        sub_100BBFD64(v8, type metadata accessor for CRLImageItemAssetData);
        swift_endAccess();

        return sub_100BBFD64(v11, type metadata accessor for CRLImageItemAssetData);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100BB6D6C()
{
  v1 = OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial);
  if (v2 == 2)
  {
    v3 = v0;
    v4 = sub_100BB30D8();
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
    v7 = (*(v6 + 64))(v5, v6);

    if (v7)
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v8 = [objc_opt_self() sharedPool];
      v9 = sub_100BB30D8();
      v10 = [v8 providerForAsset:v9 shouldValidate:1];

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11 && (v12 = [v11 CGImageSource]) != 0)
      {
        v13 = v12;
        LOBYTE(v2) = [objc_opt_self() imageSourceIsSpatial:v12];
      }

      else
      {
        LOBYTE(v2) = 0;
      }

      *(v3 + v1) = v2;
    }
  }

  return v2 & 1;
}

BOOL sub_100BB6F04()
{
  v1 = v0;
  v2 = sub_100BB30D8();
  v3 = objc_opt_self();
  v4 = [v3 sharedPool];
  v5 = [v4 providerForAsset:v2 shouldValidate:1];

  [v5 naturalSize];
  v7 = v6;

  if (sub_1007C87EC(v7, 0.0))
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v9 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v11 = v9(v10);

  [v11 size];
  v13 = v12;

  if (sub_1007C87EC(v13, 0.0))
  {
    return 0;
  }

  v15 = sub_100BB30D8();
  v16 = [v3 sharedPool];
  v17 = [v16 providerForAsset:v15 shouldValidate:1];

  [v17 naturalSize];
  v19 = v18;

  v20 = sub_100BB30D8();
  v21 = [v3 sharedPool];
  v22 = [v21 providerForAsset:v20 shouldValidate:1];

  [v22 naturalSize];
  v24 = v23;

  v25 = v19 / v24;
  v26 = *(**(v1 + v8) + 296);

  v28 = v26(v27);

  [v28 size];
  v30 = v29;

  v31 = *(**(v1 + v8) + 296);

  v33 = v31(v32);

  [v33 size];
  v35 = v34;

  return sub_1007C87EC(fabs(v25), fabs(v30 / v35));
}

BOOL sub_100BB721C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial);
  if (v6 == 2)
  {
    v7 = sub_100BB30D8();
    v8 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v9 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
    v10 = (*(v9 + 64))(v8, v9);

    if (v10)
    {
      goto LABEL_12;
    }

    v11 = [objc_opt_self() sharedPool];
    v12 = sub_100BB30D8();
    v13 = [v11 providerForAsset:v12 shouldValidate:1];

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14 || (v15 = [v14 CGImageSource]) == 0)
    {

      v21 = 0;
      *(v1 + v5) = 0;
      return v21 & 1;
    }

    v16 = v15;
    v17 = [objc_opt_self() imageSourceIsSpatial:v15];

    *(v1 + v5) = v17;
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  else if ((v6 & 1) == 0)
  {
LABEL_12:
    v21 = 0;
    return v21 & 1;
  }

  sub_100BB60A8();
  if (v18)
  {
    goto LABEL_12;
  }

  result = sub_100BB6F04();
  if (!result)
  {
    goto LABEL_12;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0, &unk_101482F80);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v20 = v4[*(v2 + 28)];
    sub_100BBFD64(v4, type metadata accessor for CRLImageItemAssetData);
    v21 = v20 ^ 1;
    return v21 & 1;
  }

  __break(1u);
  return result;
}

id sub_100BB74D4()
{
  v1 = type metadata accessor for UUID();
  v82 = *(v1 - 8);
  __chkstk_darwin(v1);
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLMaskInfoData(0);
  __chkstk_darwin(v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  sub_100BBF54C();
  v80 = v0;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = [v11 pathSource];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if (([v13 shouldShowKnob] & 1) == 0)
      {
        v57 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

        v59 = v57(v58);

        [v59 center];
        v61 = v60;
        v63 = v62;
        [v59 position];
        v65 = sub_10011F31C(v61, v63, v64);
        v67 = v66;
        [v59 size];
        v70 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v65 size:{v67, v68, v69}];

        v71 = objc_opt_self();
        [v14 scalar];
        v73 = v72;
        v51 = v80;
        [v70 size];
        v76 = [v71 roundedRectangleWithScalar:1 naturalSize:v73 continuousCurve:{v74, v75}];
        [v76 setShouldShowKnob:0];
        v50 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:v51 geometry:v70 pathSource:v76];

        goto LABEL_7;
      }
    }

    v8 = v10;
  }

  v79 = v1;
  v15 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v17 = v15(v16);

  *&v8[*(v3 + 24)] = _swiftEmptyDictionarySingleton;
  v18 = v17;
  [v18 size];
  result = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v19, v20}];
  if (result)
  {
    v22 = result;
    [v18 center];
    v24 = v23;
    v26 = v25;
    [v18 position];
    v28 = sub_10011F31C(v24, v26, v27);
    v30 = v29;
    [v18 size];
    v33 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v28 size:{v30, v31, v32}];
    v34 = v22;
    sub_100C3D740(v34, v8);
    sub_101271CCC(v33, v83);

    v35 = &v8[*(v3 + 20)];
    v36 = v83[1];
    *v35 = v83[0];
    *(v35 + 1) = v36;
    sub_100BBFC94(v8, v5, type metadata accessor for CRLMaskInfoData);
    v77 = objc_allocWithZone(CRLMaskInfo);
    v78 = v8;
    v37 = &v5[*(v3 + 20)];
    LODWORD(v28) = *v37;
    LODWORD(v30) = *(v37 + 1);
    v38 = *(v37 + 2);
    v39 = *(v37 + 3);
    v40 = *(v37 + 4);
    v41 = v37[20];
    v42 = v37[21];
    v43 = v37[22];
    v44 = v37[23];
    v45 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v46 = v80;
    v47 = v80;
    v48 = [v45 initWithPosition:v41 size:v42 widthValid:v43 heightValid:v44 horizontalFlip:*&v28 verticalFlip:*&v30 angle:{v38, v39, v40}];
    v49 = sub_100C49F20(v5);
    v50 = [v77 initWithImageItem:v47 geometry:v48 pathSource:v49];

    sub_100BBFD64(v5, type metadata accessor for CRLMaskInfoData);
    sub_100BBFD64(v78, type metadata accessor for CRLMaskInfoData);
    v1 = v79;
    v51 = v46;
LABEL_7:
    v52 = objc_allocWithZone(type metadata accessor for CRLCommandSetMask(0));
    v53 = v81;
    (*(**&v51[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
    v54 = v50;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v82 + 8))(v53, v1);
    v56 = [v52 initWithId:isa maskInfo:v54];

    return v56;
  }

  __break(1u);
  return result;
}

void sub_100BB7BA4(char a1, __n128 a2)
{
  sub_100BBF54C();
  if (v4)
  {
    v5 = v4;
    v6 = [v5 geometry];
    [v6 position];
    v8 = v7;
    v10 = v9;

    v20.x = 0.0;
    v20.y = 0.0;
    v19.x = v8;
    v19.y = v10;
    if (CGPointEqualToPoint(v19, v20) && (v11 = [v5 geometry], v12 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v13 = , v14 = v12(v13), , v15 = objc_msgSend(v11, "isEqualExceptForPosition:", v14), v11, v14, v15))
    {
      v16 = [v5 pathSource];
      v17 = v16;
      if (a1)
      {
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          [v18 type];

          return;
        }

        v17 = [v5 pathSource];
        [v17 isRectangular];
      }

      else
      {
        [v16 isRectangular];
      }
    }

    else
    {
    }
  }
}

id sub_100BB7E00(__n128 a1)
{
  sub_100BBF54C();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 geometry];
    v5 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v7 = v5(v6);

    v8 = [v4 geometryWithParentGeometry:v7];

    return v8;
  }

  else
  {
    v10 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v12 = v10(v11);

    return v12;
  }
}

void sub_100BB8084(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v4 = sub_1005B981C(&qword_101A13F10, &unk_1014BD1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for CRLMaskInfoData(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v60 - v15;
  __chkstk_darwin(v16);
  v62 = &v60 - v17;
  if (**&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A25280)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  type metadata accessor for CRLImageItemCRDTData(0);

  sub_1005B981C(&qword_101A13F18, &qword_10149E280);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) != 1)
  {
    v22 = v9;
    v23 = v62;
    sub_100BBFCFC(v22, v62, type metadata accessor for CRLMaskInfoData);
    sub_10000BE14(a1, v6, &qword_101A13F10, &unk_1014BD1C0);
    if (v18(v6, 1, v10) == 1)
    {
      sub_10000CAAC(v6, &qword_101A13F10, &unk_1014BD1C0);
    }

    else
    {
      v24 = v61;
      sub_100BBFCFC(v6, v61, type metadata accessor for CRLMaskInfoData);
      v25 = *&v2[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo];
      if (v25)
      {
        v26 = v25;
        v27 = sub_100B7DC20(v24);
        v28 = v63;
        if (v27)
        {
          v29 = v27;
          [v26 setGeometry:v27];
          if (v28)
          {
            sub_100BBF54C();
            v31 = v30;
            if (v30)
            {
              v30 = sub_100006370(0, &qword_101A13F78, off_10182F8B8);
            }

            else
            {
              v66 = 0;
              v67 = 0;
            }

            v65 = v31;
            v68 = v30;
            sub_10000BE14(&v65, v64, &unk_1019F4D00, &unk_10146E7F0);
            swift_beginAccess();
            v55 = v31;
            sub_100BC1F00(v64, 41);
            swift_endAccess();

            sub_10000CAAC(&v65, &unk_1019F4D00, &unk_10146E7F0);
          }

          else
          {
          }
        }

        if ((sub_100C48FE0(v23, v24) & 1) == 0)
        {
          v56 = sub_100C49F20(v23);
          [v26 setPathSource:v56];
          if (v28)
          {
            sub_100BBF54C();
            v58 = v57;
            if (v57)
            {
              v57 = sub_100006370(0, &qword_101A13F78, off_10182F8B8);
            }

            else
            {
              v66 = 0;
              v67 = 0;
            }

            v65 = v58;
            v68 = v57;
            sub_10000BE14(&v65, v64, &unk_1019F4D00, &unk_10146E7F0);
            swift_beginAccess();
            v59 = v58;
            sub_100BC1F00(v64, 42);
            swift_endAccess();

            sub_100BBFD64(v61, type metadata accessor for CRLMaskInfoData);
            sub_100BBFD64(v23, type metadata accessor for CRLMaskInfoData);
            goto LABEL_22;
          }
        }

        sub_100BBFD64(v24, type metadata accessor for CRLMaskInfoData);
        v52 = v23;
LABEL_32:
        sub_100BBFD64(v52, type metadata accessor for CRLMaskInfoData);
        return;
      }

      sub_100BBFD64(v24, type metadata accessor for CRLMaskInfoData);
    }

    sub_100BBFC94(v23, v13, type metadata accessor for CRLMaskInfoData);
    v33 = objc_allocWithZone(CRLMaskInfo);
    v34 = &v13[*(v10 + 20)];
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = *(v34 + 2);
    v38 = *(v34 + 3);
    v39 = *(v34 + 4);
    v40 = v34[20];
    v41 = v34[21];
    v42 = v34[22];
    v43 = v34[23];
    v44 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v45 = v2;
    v46 = [v44 initWithPosition:v40 size:v41 widthValid:v42 heightValid:v43 horizontalFlip:v35 verticalFlip:v36 angle:{v37, v38, v39}];
    v47 = sub_100C49F20(v13);
    v48 = [v33 initWithImageItem:v45 geometry:v46 pathSource:v47];

    sub_100BBFD64(v13, type metadata accessor for CRLMaskInfoData);
    v49 = *&v45[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo];
    *&v45[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo] = v48;

    if (v63)
    {
      sub_100BBF54C();
      v51 = v50;
      if (v50)
      {
        v50 = sub_100006370(0, &qword_101A13F78, off_10182F8B8);
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      v53 = v62;
      v65 = v51;
      v68 = v50;
      sub_10000BE14(&v65, v64, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      v54 = v51;
      sub_100BC1F00(v64, 40);
      swift_endAccess();
      sub_100BBFD64(v53, type metadata accessor for CRLMaskInfoData);
      goto LABEL_22;
    }

    v52 = v62;
    goto LABEL_32;
  }

  sub_10000CAAC(v9, &qword_101A13F10, &unk_1014BD1C0);
  v19 = *&v2[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo];
  *&v2[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo] = 0;

  if (v63)
  {
    sub_100BBF54C();
    v21 = v20;
    if (v20)
    {
      v20 = sub_100006370(0, &qword_101A13F78, off_10182F8B8);
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

    v65 = v21;
    v68 = v20;
    sub_10000BE14(&v65, v64, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    v32 = v21;
    sub_100BC1F00(v64, 40);
    swift_endAccess();
LABEL_22:
    sub_10000CAAC(&v65, &unk_1019F4D00, &unk_10146E7F0);
  }
}

uint64_t sub_100BB88FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  [v5 transform];
  v25 = v32;
  v28 = v31;
  v22 = v33;

  v31 = v28;
  v32 = v25;
  v33 = v22;
  result = sub_100139B08(&v31, 0.0001);
  if (result)
  {
    v7 = *(**(v0 + v2) + 392);

    LOBYTE(v7) = v7(v8);

    if (v7)
    {
      sub_100BBF54C();
      if (v9)
      {
        v10 = v9;
        v11 = [v10 geometry];
        [v11 transform];
        v26 = v32;
        v29 = v31;
        v23 = v33;

        v31 = v29;
        v32 = v26;
        v33 = v23;
        LODWORD(v11) = sub_100139B08(&v31, 0.0001);

        if (!v11)
        {
          return 0;
        }
      }

      v12 = *(**(v1 + v2) + 368);

      LOBYTE(v12) = v12(v13);

      if (v12)
      {
        return 0;
      }
    }

    sub_100BBF54C();
    if (v14)
    {
      v15 = v14;
      v16 = [v15 geometry];
      [v16 transform];
      v27 = v32;
      v30 = v31;
      v24 = v33;

      v31 = v30;
      v32 = v27;
      v33 = v24;
      LODWORD(v16) = sub_100139B08(&v31, 0.0001);

      if (!v16)
      {
        return 0;
      }
    }

    sub_100BBF54C();
    if (v17)
    {
      v18 = [v17 pathSource];
      if (v18)
      {
        v19 = v18;
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___CRLSmartPathSource])
        {
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            v21 = [v20 shouldShowKnob];

            return v21 ^ 1;
          }

          else
          {

            return 0;
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_100BB8C1C(__n128 a1)
{
  sub_100BBF54C();
  if (v2 && (v3 = v2, v4 = [v3 geometry], objc_msgSend(v4, "transform"), v10 = v13, v11 = v12, v9 = v14, v4, v12 = v11, v13 = v10, v14 = v9, LODWORD(v4) = sub_100139B08(&v12, 0.0001), v3, !v4))
  {
    v7 = 0;
  }

  else
  {
    v5 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

    LOBYTE(v5) = v5(v6);

    v7 = v5 ^ 1;
  }

  return v7 & 1;
}

void *sub_100BB8D20@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v4 = sub_100D652D4();
  if (v4)
  {
    sub_100B965E4(v4, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v5);
    __src[12] = v26;
    __src[13] = v27;
    *&__src[14] = v28;
    __src[8] = v22;
    __src[9] = v23;
    __src[10] = v24;
    __src[11] = v25;
    __src[4] = v18;
    __src[5] = v19;
    __src[6] = v20;
    __src[7] = v21;
    __src[0] = v14;
    __src[1] = v15;
    __src[2] = v16;
    __src[3] = v17;
  }

  else
  {
    sub_1005D0BD8(__src);
  }

  v6 = *(**&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);
  v7 = v3;

  v9 = v6(v8);

  if (v9)
  {
    sub_100A72CD4(v9, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v10);
  }

  else
  {
    sub_1005D0C00(&v14);
  }

  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v19;
  *(&__src[20] + 8) = v20;
  *(&__src[21] + 8) = v21;
  *(&__src[16] + 8) = v16;
  *(&__src[17] + 8) = v17;
  *(&__src[14] + 8) = v14;
  *(&__src[15] + 8) = v15;
  v11 = sub_100BB96E0(v14);

  a1[3] = &type metadata for CRLImagePresetData;
  a1[4] = sub_100B6D4C4();
  v12 = swift_allocObject();
  *a1 = v12;
  result = memcpy((v12 + 16), __src, 0x168uLL);
  *(v12 + 376) = v11;
  *(v12 + 384) = _swiftEmptyDictionarySingleton;
  *(v12 + 392) = _swiftEmptyDictionarySingleton;
  return result;
}

void sub_100BB8F14(void *a1)
{
  sub_100B4100C(a1);
  type metadata accessor for CRLImageItem(0);
  if (swift_dynamicCastClass())
  {
    v10 = a1;
    sub_100BBF54C();
    if (v2)
    {
      v3 = v2;
      v4 = [v3 pathSource];
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        if (([v5 shouldShowKnob] & 1) == 0)
        {
          [v6 cornerRadius];
          v7.n128_f32[0] = v7.n128_f64[0];
          v8 = sub_100BB9950(v7);
          sub_100BB584C(v8);
        }
      }

      v9 = v4;
    }

    else
    {
      v9 = v10;
    }
  }
}

uint64_t sub_100BB91B0()
{
  v0 = _s13ImageExporterCMa();
  sub_100BBFB80(&qword_101A13F70, _s13ImageExporterCMa, byte_10147FE20);
  return v0;
}

void sub_100BB9214(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v7 = a2.n128_f64[0];
  sub_100BBF54C();
  if (v8)
  {
    v9 = v8;
    v33 = v8;
    v10 = [v33 geometry];
    [v10 size];
    v12 = v11;
    v14 = v13;
    v15 = sub_100121E8C(v11, v13, v7, a3);
    if (v15 < v12 || v16 < v14)
    {
      v18 = v15 / v12;
      v19 = v16 / v14;
      v20 = [v33 geometry];
      CGAffineTransformMakeScale(&v34, v18, v19);
      v21 = [v20 geometryByAppendingTransform:&v34];

      v22 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v23 = *(**&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

      v25 = v23(v24);

      CGAffineTransformMakeScale(&v34, v18, v19);
      v26 = [v25 geometryByAppendingTransform:&v34];

      [v33 setGeometry:v21];
      v27 = v33;
      sub_100BB584C(v9);
      if ((sub_1011255D4() & 1) != 0 && (v28 = *(**&v4[v22] + 296), v29 = , v30 = v28(v29), , sub_100006370(0, &unk_1019F5730, off_10182F770), v31 = static NSObject.== infix(_:_:)(), v30, (v31 & 1) == 0))
      {
        v32 = *(**&v4[v22] + 304);

        v32(v26);
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
    v35.receiver = v3;
    v35.super_class = type metadata accessor for CRLImageItem(0);
    objc_msgSendSuper2(&v35, "scaleDownSizeToFitWithinSize:board:", a1, v7, a3);
  }
}

float sub_100BB96E0(__n128 a1)
{
  sub_100BBF54C();
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v3 pathSource];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 && (v6 = v5, ![v5 type]))
    {
      [v6 scalar];
      v8 = v7;

      return v8;
    }

    else
    {
    }
  }

  return v2;
}

id sub_100BB9798(char a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v7 = __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_u64[0] = 0;
  if (a1)
  {
    v7.n128_f32[0] = 10.0;
  }

  v8 = sub_100BB9950(v7);
  v9 = objc_allocWithZone(type metadata accessor for CRLCommandSetMask(0));
  (*(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v11 = [v9 initWithId:isa maskInfo:v8];

  return v11;
}

id sub_100BB9950(__n128 a1)
{
  v2 = v1;
  v3 = a1.n128_f32[0];
  sub_100BBF54C();
  if (v3 <= 0.0)
  {
    if (!v4)
    {
      return 0;
    }

    v6 = v4;
    v7 = [v6 geometry];
    [v7 size];
    v10 = [objc_opt_self() pathSourceForShapeType:3 naturalSize:{v8, v9}];
    v11 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:v2 geometry:v7 pathSource:v10];
  }

  else
  {
    if (v4)
    {
      v5 = [v4 geometry];
    }

    else
    {
      v12 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v14 = v12(v13);

      [v14 center];
      v16 = v15;
      v18 = v17;
      [v14 position];
      v20 = sub_10011F31C(v16, v18, v19);
      v22 = v21;
      [v14 size];
      v5 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v20 size:{v22, v23, v24}];
    }

    v25 = objc_opt_self();
    v7 = v5;
    [v7 size];
    v6 = [v25 roundedRectangleWithScalar:1 naturalSize:v3 continuousCurve:{v26, v27}];
    [v6 setShouldShowKnob:0];
    v11 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:v2 geometry:v7 pathSource:v6];
    v10 = v7;
  }

  return v11;
}

void sub_100BB9CD8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CRLImageItemsRequireAssetDownloadForSendCopyUserDefault"];

  if ((v1 & 1) == 0)
  {

    sub_1009B07F4();
  }
}

void sub_100BB9D68(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMaskInfoData(0);
  __chkstk_darwin(v4);
  v162 = &v153[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v6);
  v163 = &v153[-v8];
  v9 = *((swift_isaMask & *a1) + 0xE0);
  v10 = v9(v7);
  [v10 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730, off_10182F770);
  if (!swift_dynamicCast())
  {
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v165 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v165, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v28;
    v29 = sub_1005CF04C();
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 585;
    v31 = v165;
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v40 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:585 isFatal:0 format:v40 args:v37];

    return;
  }

  v160 = v2;
  v11 = v165;
  type metadata accessor for CRLImageItem(0);
  if (swift_dynamicCastClass())
  {
    v12 = v11;
    v13 = a1;
    sub_100BBF54C();
    if (v14)
    {
      v15 = v14;
      v16 = [v15 pathSource];
      v17 = [v15 geometry];

      v11 = v12;
      goto LABEL_10;
    }

    v11 = v12;
  }

  [v11 size];
  v41 = sub_10011ECB4();
  v45 = sub_100120414(v41, v42, v43, v44);
  v47 = v46;
  v48 = (v9)();
  [v48 size];
  v50 = v49;
  v52 = v51;

  v17 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v45 size:{v47, v50, v52}];
  v16 = 0;
LABEL_10:
  v164 = v11;
  [v11 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030, off_10182F788);
  v53 = swift_dynamicCast();
  v161 = v17;
  if ((v53 & 1) == 0)
  {
    v163 = v16;
    v65 = objc_opt_self();
    v66 = [v65 _atomicIncrementAssertCount];
    v165 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v165, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v67 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v68 = String._bridgeToObjectiveC()();

    v69 = [v68 lastPathComponent];

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v73 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_10146CA70;
    *(v74 + 56) = &type metadata for Int32;
    *(v74 + 64) = &protocol witness table for Int32;
    *(v74 + 32) = v66;
    v75 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v74 + 96) = v75;
    v76 = sub_1005CF04C();
    *(v74 + 104) = v76;
    *(v74 + 72) = v67;
    *(v74 + 136) = &type metadata for String;
    v77 = sub_1000053B0();
    *(v74 + 112) = v70;
    *(v74 + 120) = v72;
    *(v74 + 176) = &type metadata for UInt;
    *(v74 + 184) = &protocol witness table for UInt;
    *(v74 + 144) = v77;
    *(v74 + 152) = 601;
    v78 = v165;
    *(v74 + 216) = v75;
    *(v74 + 224) = v76;
    *(v74 + 192) = v78;
    v79 = v67;
    v80 = v78;
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v74);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v82 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v82, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v83 = swift_allocObject();
    v83[2] = 8;
    v83[3] = 0;
    v83[4] = 0;
    v83[5] = 0;
    v84 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v87 = String._bridgeToObjectiveC()();

    [v65 handleFailureInFunction:v85 file:v86 lineNumber:601 isFatal:0 format:v87 args:v84];

    goto LABEL_21;
  }

  v54 = v165;
  [v17 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v163 = v16;
    v162 = objc_opt_self();
    v88 = [v162 _atomicIncrementAssertCount];
    v165 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v165, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v89 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v90 = String._bridgeToObjectiveC()();

    v91 = [v90 lastPathComponent];

    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v95 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v96 = swift_initStackObject();
    *(v96 + 16) = xmmword_10146CA70;
    *(v96 + 56) = &type metadata for Int32;
    *(v96 + 64) = &protocol witness table for Int32;
    *(v96 + 32) = v88;
    v97 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v96 + 96) = v97;
    v98 = sub_1005CF04C();
    *(v96 + 104) = v98;
    *(v96 + 72) = v89;
    *(v96 + 136) = &type metadata for String;
    v99 = sub_1000053B0();
    *(v96 + 112) = v92;
    *(v96 + 120) = v94;
    *(v96 + 176) = &type metadata for UInt;
    *(v96 + 184) = &protocol witness table for UInt;
    *(v96 + 144) = v99;
    *(v96 + 152) = 602;
    v100 = v165;
    *(v96 + 216) = v97;
    *(v96 + 224) = v98;
    *(v96 + 192) = v100;
    v101 = v89;
    v102 = v100;
    v103 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v96);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v104 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v104, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v105 = swift_allocObject();
    v105[2] = 8;
    v105[3] = 0;
    v105[4] = 0;
    v105[5] = 0;
    v106 = __VaListBuilder.va_list()();
    StaticString.description.getter("updateGeometryToReplaceBoardItem(_:)", 36, 2);
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v87 = String._bridgeToObjectiveC()();

    [v162 handleFailureInFunction:v107 file:v108 lineNumber:602 isFatal:0 format:v87 args:v106];

LABEL_21:

    return;
  }

  v55 = v165;
  v56 = v160;
  v159 = sub_100BB30D8();
  sub_100BBEE78(v54, v55, v159, v164, v17, v56);
  v57 = v54;
  v58 = v56;
  v59 = v57;
  if (sub_1011255D4())
  {
    v158 = v55;
    v60 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v61 = *(**(v56 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v63 = v61(v62);

    v64 = static NSObject.== infix(_:_:)();

    if (v64)
    {
    }

    else
    {
      v113 = *(**&v58[v60] + 304);

      v113(v59);
    }

    v109 = v164;
    v55 = v158;
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_23:
    v110 = objc_allocWithZone(CRLMaskInfo);
    v111 = v161;
    v112 = [v110 initWithImageItem:v58 geometry:v161 pathSource:v16];
LABEL_28:
    v152 = v112;
    [v152 setGeometry:v55];
    sub_100BB584C(v152);

    return;
  }

  v109 = v164;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_26:
  v157 = v59;
  v158 = v55;
  v114 = *(**&v58[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v116 = v114(v115);

  v117 = v163;
  *&v163[*(v4 + 24)] = _swiftEmptyDictionarySingleton;
  v118 = v116;
  [v118 size];
  v121 = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v119, v120}];
  if (v121)
  {
    v122 = v121;
    v123 = v58;
    [v118 center];
    v125 = v124;
    v127 = v126;
    [v118 position];
    v129 = sub_10011F31C(v125, v127, v128);
    v131 = v130;
    v132 = v118;
    v156 = v118;
    [v118 size];
    v135 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v129 size:{v131, v133, v134}];
    v136 = v122;
    sub_100C3D740(v136, v117);
    sub_101271CCC(v135, v166);

    v137 = &v117[*(v4 + 20)];
    v138 = v166[1];
    *v137 = v166[0];
    *(v137 + 1) = v138;
    v139 = v162;
    sub_100BBFC94(v117, v162, type metadata accessor for CRLMaskInfoData);
    v155 = objc_allocWithZone(CRLMaskInfo);
    v140 = &v139[*(v4 + 20)];
    LODWORD(v129) = *v140;
    LODWORD(v131) = *(v140 + 1);
    v141 = *(v140 + 2);
    v142 = *(v140 + 3);
    v143 = *(v140 + 4);
    v144 = v140[20];
    v145 = v140[21];
    v146 = v140[22];
    v154 = v140[23];
    v147 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v148 = v123;
    v149 = [v147 initWithPosition:v144 size:v145 widthValid:v146 heightValid:v154 horizontalFlip:*&v129 verticalFlip:*&v131 angle:{v141, v142, v143}];
    v150 = sub_100C49F20(v139);
    v151 = [v155 initWithImageItem:v148 geometry:v149 pathSource:v150];

    sub_100BBFD64(v139, type metadata accessor for CRLMaskInfoData);
    sub_100BBFD64(v117, type metadata accessor for CRLMaskInfoData);
    v112 = v151;
    v16 = 0;
    v109 = v164;
    v59 = v157;
    v55 = v158;
    v111 = v161;
    goto LABEL_28;
  }

  __break(1u);
}

double sub_100BBAFAC(__n128 a1)
{
  sub_100BBF54C();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 geometry];
    v5 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v7 = v5(v6);

    v8 = [v4 geometryWithParentGeometry:v7];
  }

  else
  {
    v9 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v8 = v9(v10);
  }

  [v8 center];
  v12 = v11;

  return v12;
}

void sub_100BBB1E0()
{
  v1 = sub_100BB30D8();
  v2 = [objc_opt_self() sharedPool];
  v3 = [v2 temporaryProviderForAsset:v1 shouldValidate:1];

  [v3 naturalSize];
  v5 = v4;
  v7 = v6;

  v8 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v10 = v8(v9);

  [v10 size];
  v12 = v11;
  v14 = v13;

  if (v5 == 0.0 || v7 == 0.0 || v12 == 0.0 || v14 == 0.0)
  {
  }

  else
  {
    v15 = sub_10050CFE8();
    if (v15 < v5)
    {
      v5 = v15;
    }

    sub_10050CFE8();
    if (v16 >= v7)
    {
      v17 = v7;
    }

    else
    {
      v17 = v16;
    }

    sub_100121E58(v12, v14, v5, v17);
  }
}

void sub_100BBB36C()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {

    v2 = sub_100FA3AC8(0, v1);

    sub_101122410(*(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BBB41C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = sub_1005B981C(&qword_101A13F28, &qword_10149E290);
  __chkstk_darwin(v11 - 8);
  v13 = &v54 - v12;
  type metadata accessor for CRLImageItem(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_unknownObjectRetain();
    v16 = sub_1011F0C64();
    v17 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v17 == &off_101A25280)
    {
      v54 = v5;
      v55 = v16;
      v56 = a1;
      v18 = qword_101AD8A28;
      swift_beginAccess();
      sub_100BBFC94(v17 + v18, v10, type metadata accessor for CRLImageItemCRDTData);
      v19 = *(v15 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v19 == &off_101A25280)
      {
        v20 = qword_101AD8A28;
        swift_beginAccess();
        sub_100BBFC94(v19 + v20, v7, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFB80(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData, byte_1014BD778);
        CRStruct_3.actionUndoingDifference(from:)();
        sub_100BBFD64(v7, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFD64(v10, type metadata accessor for CRLImageItemCRDTData);
        v21 = sub_1005B981C(&qword_101A13F30, &qword_10149E298);
        if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
        {
          sub_10000CAAC(v13, &qword_101A13F28, &qword_10149E290);
          v57 = 0uLL;
          v58 = 0;
          v59 = 1;
        }

        else
        {
          v22 = *(v21 + 48);
          v23 = *(v21 + 64);
          v59 = v21;
          v24 = sub_10002C58C(&v57);
          v25 = *(v21 + 48);
          v26 = *(v21 + 64);
          sub_10003DFF8(v13, v24, &qword_101A13F58, &qword_10149E2B0);
          sub_10003DFF8(&v13[v22], v24 + v25, &qword_101A13F60, &qword_1014B73E0);
          sub_10003DFF8(&v13[v23], v24 + v26, &qword_101A13F68, &qword_10149E2B8);
        }

        v27 = v55;
        swift_beginAccess();
        sub_100BC1DF4(&v57, 3);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v29 = objc_opt_self();
  v30 = [v29 _atomicIncrementAssertCount];
  v57.n128_u64[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v57, "Tried to generate undo from mismatched type", 43, 2u);
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v30;
  v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v39;
  v40 = sub_1005CF04C();
  *(inited + 104) = v40;
  *(inited + 72) = v31;
  *(inited + 136) = &type metadata for String;
  v41 = sub_1000053B0();
  *(inited + 112) = v34;
  *(inited + 120) = v36;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v41;
  *(inited + 152) = 671;
  v42 = v57.n128_u64[0];
  *(inited + 216) = v39;
  *(inited + 224) = v40;
  *(inited + 192) = v42;
  v43 = v31;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v46 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v46, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v47[4] = 0;
  v47[5] = 0;
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
  v51 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v49 file:v50 lineNumber:671 isFatal:1 format:v51 args:v48];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v52, v53);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100BBBB80(uint64_t a1)
{
  v3 = v1;
  v88 = sub_1005B981C(&qword_101A13F40, &qword_10149E2A0);
  v84 = *(v88 - 8);
  __chkstk_darwin(v88);
  v80 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v80 - v7;
  __chkstk_darwin(v8);
  v81 = &v80 - v9;
  __chkstk_darwin(v10);
  v87 = &v80 - v11;
  v83 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v83);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v80 - v15;
  v17 = sub_1005B981C(&qword_101A13F48, &qword_10149E2A8);
  __chkstk_darwin(v17 - 8);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  type metadata accessor for CRLImageItem(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = &OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v26 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v26 == &off_101A25280)
    {
      v27 = v23;
      v85 = v22;
      v86 = a1;
      v28 = qword_101AD8A28;
      swift_beginAccess();
      sub_100BBFC94(v26 + v28, v16, type metadata accessor for CRLImageItemCRDTData);
      v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v2 = *(v27 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v2 == &off_101A25280)
      {
        v29 = qword_101AD8A28;
        swift_beginAccess();
        sub_100BBFC94(v2 + v29, v13, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFB80(&qword_101A13F50, type metadata accessor for CRLImageItemCRDTData, byte_1014BD588);
        swift_unknownObjectRetain();
        v30 = v85;
        CRType.observableDifference(from:)();
        sub_100BBFD64(v13, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFD64(v16, type metadata accessor for CRLImageItemCRDTData);
        sub_10000BE14(v30, v19, &qword_101A13F48, &qword_10149E2A8);
        v31 = v88;
        if ((*(v84 + 48))(v19, 1, v88) == 1)
        {
          sub_10000CAAC(v19, &qword_101A13F48, &qword_10149E2A8);
          v24 = _swiftEmptyArrayStorage;
          if (!_swiftEmptyArrayStorage[2])
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        v32 = v87;
        sub_10003DFF8(v19, v87, &qword_101A13F40, &qword_10149E2A0);
        v33 = v81;
        sub_10000BE14(v32, v81, &qword_101A13F40, &qword_10149E2A0);
        v34 = *(v31 + 48);
        v35 = *(v31 + 64);
        v16 = type metadata accessor for CRValueObservableDifference();
        v84 = *(*(v16 - 1) + 48);
        if ((v84)(v33, 1, v16) == 1)
        {
          sub_10000CAAC(v33 + v35, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v33 + v34, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v33, &qword_101A01F00, &unk_101492AB0);
          v24 = _swiftEmptyArrayStorage;
          v36 = v87;
          goto LABEL_11;
        }

        sub_10000CAAC(v33, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v33 + v35, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v33 + v34, &qword_101A01F00, &unk_101492AB0);
        v24 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v2 = *(v24 + 2);
        v25 = *(v24 + 3);
        v13 = (v2 + 1);
        if (v2 < v25 >> 1)
        {
LABEL_10:
          v36 = v87;
          *(v24 + 2) = v13;
          v37 = &v24[16 * v2];
          *(v37 + 4) = 0x737465737361;
          *(v37 + 5) = 0xE600000000000000;
LABEL_11:
          v38 = v82;
          sub_10000BE14(v36, v82, &qword_101A13F40, &qword_10149E2A0);
          v39 = *(v88 + 48);
          v40 = *(v88 + 64);
          v41 = (v84)(v38 + v40, 1, v16);
          sub_10000CAAC(v38 + v40, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v38 + v39, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v38, &qword_101A01F00, &unk_101492AB0);
          if (v41 == 1)
          {
            v30 = v85;
            v42 = v87;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100024CBC(0, *(v24 + 2) + 1, 1, v24);
            }

            v30 = v85;
            v42 = v87;
            v44 = *(v24 + 2);
            v43 = *(v24 + 3);
            if (v44 >= v43 >> 1)
            {
              v24 = sub_100024CBC((v43 > 1), v44 + 1, 1, v24);
            }

            *(v24 + 2) = v44 + 1;
            v45 = &v24[16 * v44];
            *(v45 + 4) = 1802723693;
            *(v45 + 5) = 0xE400000000000000;
          }

          v46 = v80;
          sub_10000BE14(v42, v80, &qword_101A13F40, &qword_10149E2A0);
          v47 = *(v88 + 48);
          v48 = *(v88 + 64);
          if ((v84)(v46 + v47, 1, v16) == 1)
          {
            sub_10000CAAC(v42, &qword_101A13F40, &qword_10149E2A0);
            sub_10000CAAC(v46 + v48, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v46 + v47, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v46, &qword_101A01F00, &unk_101492AB0);
            if (!*(v24 + 2))
            {
LABEL_26:
              sub_10000CAAC(v30, &qword_101A13F48, &qword_10149E2A8);

              swift_unknownObjectRelease();
              return _swiftEmptyDictionarySingleton;
            }
          }

          else
          {
            sub_10000CAAC(v46 + v47, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v46 + v48, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v46, &qword_101A01F00, &unk_101492AB0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100024CBC(0, *(v24 + 2) + 1, 1, v24);
            }

            v52 = *(v24 + 2);
            v51 = *(v24 + 3);
            if (v52 >= v51 >> 1)
            {
              v24 = sub_100024CBC((v51 > 1), v52 + 1, 1, v24);
            }

            sub_10000CAAC(v42, &qword_101A13F40, &qword_10149E2A0);
            *(v24 + 2) = v52 + 1;
            v53 = &v24[16 * v52];
            *(v53 + 4) = 0x656B6F727473;
            *(v53 + 5) = 0xE600000000000000;
            if (!*(v24 + 2))
            {
              goto LABEL_26;
            }
          }

LABEL_20:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = _swiftEmptyDictionarySingleton;
          sub_100A9B080(v24, 3, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();
          v50 = v89;
          sub_10000CAAC(v30, &qword_101A13F48, &qword_10149E2A8);
          return v50;
        }

LABEL_30:
        v24 = sub_100024CBC((v25 > 1), v13, 1, v24);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v55 = objc_opt_self();
  v56 = [v55 _atomicIncrementAssertCount];
  v90 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v90, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v57 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
  v58 = String._bridgeToObjectiveC()();

  v59 = [v58 lastPathComponent];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v63 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v56;
  v65 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v65;
  v66 = sub_1005CF04C();
  *(inited + 104) = v66;
  *(inited + 72) = v57;
  *(inited + 136) = &type metadata for String;
  v67 = sub_1000053B0();
  *(inited + 112) = v60;
  *(inited + 120) = v62;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v67;
  *(inited + 152) = 683;
  v68 = v90;
  *(inited + 216) = v65;
  *(inited + 224) = v66;
  *(inited + 192) = v68;
  v69 = v57;
  v70 = v68;
  v71 = static os_log_type_t.error.getter();
  sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v72 = static os_log_type_t.error.getter();
  sub_100005404(v63, &_mh_execute_header, v72, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v73 = swift_allocObject();
  v73[2] = 8;
  v73[3] = 0;
  v73[4] = 0;
  v73[5] = 0;
  v74 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v75 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLImageItem.swift", 83, 2);
  v76 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v77 = String._bridgeToObjectiveC()();

  [v55 handleFailureInFunction:v75 file:v76 lineNumber:683 isFatal:1 format:v77 args:v74];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v78, v79);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100BBC7DC(uint64_t a1, char *a2)
{
  v84 = a2;
  v4 = type metadata accessor for CRLMaskInfoData(0);
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v73 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1005B981C(&qword_101A13F20, &qword_10149E288);
  __chkstk_darwin(v76);
  v79 = &v69 - v6;
  v7 = sub_1005B981C(&qword_101A13F10, &unk_1014BD1C0);
  __chkstk_darwin(v7 - 8);
  v75 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v69 - v10;
  __chkstk_darwin(v11);
  v80 = &v69 - v12;
  __chkstk_darwin(v13);
  v81 = &v69 - v14;
  v82 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v82);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_101A13F28, &qword_10149E290);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = sub_1005B981C(&qword_101A13F30, &qword_10149E298);
  v83 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v69 - v24;
  v26 = a1;
  v27 = a1;
  v28 = v2;
  v29 = v131;
  sub_1009B611C(v27);
  if (!v29)
  {
    v71 = v19;
    v72 = v16;
    v84 = v25;
    v131 = 0;
    v30 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v31 = *(v26 + v30);
    v32 = v23;
    v33 = v83;
    if (*(v31 + 16))
    {

      v34 = sub_1007C8124(3);
      if (v35)
      {
        sub_10000BE14(*(v31 + 56) + 32 * v34, v102, &unk_1019F4D00, &unk_10146E7F0);

        v103[1] = v102[1];
        v103[0] = v102[0];
        if (*(&v102[1] + 1))
        {
          v36 = swift_dynamicCast();
          v37 = *(v33 + 56);
          v37(v22, v36 ^ 1u, 1, v32);
          if ((*(v33 + 48))(v22, 1, v32) != 1)
          {
            v38 = v32;
            sub_10003DFF8(v22, v84, &qword_101A13F30, &qword_10149E298);
            v70 = v28;
            v83 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v39 = *(v28 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
            if (*v39 == &off_101A25280)
            {
              v40 = qword_101AD8A28;
              swift_beginAccess();
              sub_100BBFC94(v39 + v40, v72, type metadata accessor for CRLImageItemCRDTData);
              v41 = v71;
              if (*v39 == &off_101A25280)
              {
                sub_10000BE14(v84, v71, &qword_101A13F30, &qword_10149E298);
                v37(v41, 0, 1, v38);
                swift_beginAccess();
                sub_100BBFB80(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData, byte_1014BD778);

                CRStruct_3.apply(_:)();
                swift_endAccess();

                sub_10000CAAC(v41, &qword_101A13F28, &qword_10149E290);
                sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
                CRRegister.wrappedValue.getter();
                if (**(v70 + v83) == &off_101A25280)
                {
                  swift_beginAccess();

                  CRRegister.wrappedValue.getter();
                  swift_endAccess();

                  v103[12] = v116;
                  v103[13] = v117;
                  v103[8] = v112;
                  v103[9] = v113;
                  v103[11] = v115;
                  v103[10] = v114;
                  v103[4] = v108;
                  v103[5] = v109;
                  v103[7] = v111;
                  v103[6] = v110;
                  v103[0] = v104;
                  v103[1] = v105;
                  v103[3] = v107;
                  v103[2] = v106;
                  *(&v103[26] + 8) = v119[12];
                  *(&v103[27] + 8) = v119[13];
                  *(&v103[22] + 8) = v119[8];
                  *(&v103[23] + 8) = v119[9];
                  *(&v103[24] + 8) = v119[10];
                  *(&v103[25] + 8) = v119[11];
                  *(&v103[18] + 8) = v119[4];
                  *(&v103[19] + 8) = v119[5];
                  *(&v103[20] + 8) = v119[6];
                  *(&v103[21] + 8) = v119[7];
                  *(&v103[16] + 8) = v119[2];
                  *(&v103[17] + 8) = v119[3];
                  *(&v103[14] + 8) = v119[0];
                  *(&v103[15] + 8) = v119[1];
                  v121[12] = v116;
                  v121[13] = v117;
                  v121[8] = v112;
                  v121[9] = v113;
                  v121[11] = v115;
                  v121[10] = v114;
                  v121[4] = v108;
                  v121[5] = v109;
                  v121[7] = v111;
                  v121[6] = v110;
                  v121[0] = v104;
                  v121[1] = v105;
                  *&v103[14] = v118;
                  *(&v103[28] + 1) = v120;
                  v122 = v118;
                  v121[3] = v107;
                  v121[2] = v106;
                  if (sub_1000C0FB4(v121) == 1)
                  {
                    v102[12] = *(&v103[26] + 8);
                    v102[13] = *(&v103[27] + 8);
                    *&v102[14] = *(&v103[28] + 1);
                    v102[8] = *(&v103[22] + 8);
                    v102[9] = *(&v103[23] + 8);
                    v102[10] = *(&v103[24] + 8);
                    v102[11] = *(&v103[25] + 8);
                    v102[4] = *(&v103[18] + 8);
                    v102[5] = *(&v103[19] + 8);
                    v102[6] = *(&v103[20] + 8);
                    v102[7] = *(&v103[21] + 8);
                    v102[0] = *(&v103[14] + 8);
                    v102[1] = *(&v103[15] + 8);
                    v102[2] = *(&v103[16] + 8);
                    v102[3] = *(&v103[17] + 8);
                    if (sub_1000C0FB4(v102) == 1)
                    {
                      v99 = v103[12];
                      v100 = v103[13];
                      v101 = *&v103[14];
                      v95 = v103[8];
                      v96 = v103[9];
                      v97 = v103[10];
                      v98 = v103[11];
                      v91 = v103[4];
                      v92 = v103[5];
                      v93 = v103[6];
                      v94 = v103[7];
                      v87 = v103[0];
                      v88 = v103[1];
                      v89 = v103[2];
                      v90 = v103[3];
                      sub_10000CAAC(&v87, &unk_101A106C0, &unk_1014907B0);
                      v42 = v70;
LABEL_25:
                      v46 = v82;
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    v102[12] = *(&v103[26] + 8);
                    v102[13] = *(&v103[27] + 8);
                    *&v102[14] = *(&v103[28] + 1);
                    v102[8] = *(&v103[22] + 8);
                    v102[9] = *(&v103[23] + 8);
                    v102[10] = *(&v103[24] + 8);
                    v102[11] = *(&v103[25] + 8);
                    v102[4] = *(&v103[18] + 8);
                    v102[5] = *(&v103[19] + 8);
                    v102[6] = *(&v103[20] + 8);
                    v102[7] = *(&v103[21] + 8);
                    v102[0] = *(&v103[14] + 8);
                    v102[1] = *(&v103[15] + 8);
                    v102[2] = *(&v103[16] + 8);
                    v102[3] = *(&v103[17] + 8);
                    if (sub_1000C0FB4(v102) != 1)
                    {
                      v85[12] = *(&v103[26] + 8);
                      v85[13] = *(&v103[27] + 8);
                      v85[8] = *(&v103[22] + 8);
                      v85[9] = *(&v103[23] + 8);
                      v85[10] = *(&v103[24] + 8);
                      v85[11] = *(&v103[25] + 8);
                      v85[4] = *(&v103[18] + 8);
                      v85[5] = *(&v103[19] + 8);
                      v85[6] = *(&v103[20] + 8);
                      v85[7] = *(&v103[21] + 8);
                      v85[0] = *(&v103[14] + 8);
                      v85[1] = *(&v103[15] + 8);
                      v85[2] = *(&v103[16] + 8);
                      v85[3] = *(&v103[17] + 8);
                      v129[12] = *(&v103[26] + 8);
                      v129[13] = *(&v103[27] + 8);
                      v129[8] = *(&v103[22] + 8);
                      v129[9] = *(&v103[23] + 8);
                      v129[11] = *(&v103[25] + 8);
                      v129[10] = *(&v103[24] + 8);
                      v129[4] = *(&v103[18] + 8);
                      v129[5] = *(&v103[19] + 8);
                      v129[7] = *(&v103[21] + 8);
                      v129[6] = *(&v103[20] + 8);
                      v129[0] = *(&v103[14] + 8);
                      v129[1] = *(&v103[15] + 8);
                      v86 = *(&v103[28] + 1);
                      v130 = *(&v103[28] + 1);
                      v129[3] = *(&v103[17] + 8);
                      v129[2] = *(&v103[16] + 8);
                      v127[12] = v103[12];
                      v127[13] = v103[13];
                      v128 = *&v103[14];
                      v127[8] = v103[8];
                      v127[9] = v103[9];
                      v127[11] = v103[11];
                      v127[10] = v103[10];
                      v127[4] = v103[4];
                      v127[5] = v103[5];
                      v127[7] = v103[7];
                      v127[6] = v103[6];
                      v127[0] = v103[0];
                      v127[1] = v103[1];
                      v127[3] = v103[3];
                      v127[2] = v103[2];
                      sub_10000BE14(&v104, &v87, &unk_101A106C0, &unk_1014907B0);
                      sub_10000BE14(v119, &v87, &unk_101A106C0, &unk_1014907B0);
                      v54 = sub_100B93EBC(v127, v129);
                      sub_10000CAAC(v119, &unk_101A106C0, &unk_1014907B0);
                      sub_10000CAAC(&v104, &unk_101A106C0, &unk_1014907B0);
                      sub_10000CAAC(v85, &unk_101A106C0, &unk_1014907B0);
                      v99 = v103[12];
                      v100 = v103[13];
                      v101 = *&v103[14];
                      v95 = v103[8];
                      v96 = v103[9];
                      v97 = v103[10];
                      v98 = v103[11];
                      v91 = v103[4];
                      v92 = v103[5];
                      v93 = v103[6];
                      v94 = v103[7];
                      v87 = v103[0];
                      v88 = v103[1];
                      v89 = v103[2];
                      v90 = v103[3];
                      sub_10000CAAC(&v87, &unk_101A106C0, &unk_1014907B0);
                      v42 = v70;
                      v46 = v82;
                      if (v54)
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_20;
                    }
                  }

                  v42 = v70;
                  v46 = v82;
                  memcpy(v102, v103, sizeof(v102));
                  sub_10000CAAC(v102, &qword_1019F5EE0, &unk_1014B73B0);
LABEL_20:
                  if (**(v42 + v83) != &off_101A25280)
                  {
LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

                  swift_beginAccess();

                  CRRegister.wrappedValue.getter();
                  swift_endAccess();

                  v103[12] = v102[12];
                  v103[13] = v102[13];
                  *&v103[14] = *&v102[14];
                  v103[8] = v102[8];
                  v103[9] = v102[9];
                  v103[11] = v102[11];
                  v103[10] = v102[10];
                  v103[4] = v102[4];
                  v103[5] = v102[5];
                  v103[7] = v102[7];
                  v103[6] = v102[6];
                  v103[0] = v102[0];
                  v103[1] = v102[1];
                  v103[3] = v102[3];
                  v103[2] = v102[2];
                  if (sub_1000C0FB4(v103) == 1)
                  {
                    if ((sub_1011255D0() & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v47 = *(v42 + v83);
                    v48 = swift_conformsToProtocol2();
                    if (!v48)
                    {
LABEL_45:
                      __break(1u);
                      return;
                    }

                    v49 = v48;
                    sub_1005D0BD8(&v87);
                    v125[12] = v99;
                    v125[13] = v100;
                    v126 = v101;
                    v125[8] = v95;
                    v125[9] = v96;
                    v125[11] = v98;
                    v125[10] = v97;
                    v125[4] = v91;
                    v125[5] = v92;
                    v125[7] = v94;
                    v125[6] = v93;
                    v125[0] = v87;
                    v125[1] = v88;
                    v125[3] = v90;
                    v125[2] = v89;
                    v50 = *v47;
                    *&v85[0] = v47;
                    v51 = *(v49 + 16);

                    v51(v125, v50, v49);

                    v52 = *(v42 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
                    *(v42 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

                    goto LABEL_25;
                  }

                  v123[12] = v103[12];
                  v123[13] = v103[13];
                  v124 = *&v103[14];
                  v123[8] = v103[8];
                  v123[9] = v103[9];
                  v123[11] = v103[11];
                  v123[10] = v103[10];
                  v123[4] = v103[4];
                  v123[5] = v103[5];
                  v123[7] = v103[7];
                  v123[6] = v103[6];
                  v123[0] = v103[0];
                  v123[1] = v103[1];
                  v123[3] = v103[3];
                  v123[2] = v103[2];
                  v53 = sub_100B946C8(v123, 0);
                  sub_10000CAAC(v102, &unk_101A106C0, &unk_1014907B0);
                  sub_100D654FC(v53);
LABEL_28:
                  v55 = *(v46 + 24);
                  sub_1005B981C(&qword_101A13F18, &qword_10149E280);
                  v82 = v55;
                  v56 = v81;
                  CRRegister.wrappedValue.getter();
                  if (**(v42 + v83) == &off_101A25280)
                  {
                    swift_beginAccess();

                    v57 = v80;
                    CRRegister.wrappedValue.getter();
                    swift_endAccess();

                    v58 = *(v76 + 48);
                    v59 = v79;
                    sub_10000BE14(v56, v79, &qword_101A13F10, &unk_1014BD1C0);
                    sub_10000BE14(v57, v59 + v58, &qword_101A13F10, &unk_1014BD1C0);
                    v60 = v78;
                    v61 = *(v77 + 48);
                    if (v61(v59, 1, v78) == 1)
                    {
                      sub_10000CAAC(v57, &qword_101A13F10, &unk_1014BD1C0);
                      v59 = v79;
                      sub_10000CAAC(v56, &qword_101A13F10, &unk_1014BD1C0);
                      v62 = v61(v59 + v58, 1, v60);
                      v63 = v72;
                      if (v62 == 1)
                      {
                        goto LABEL_36;
                      }
                    }

                    else
                    {
                      v64 = v74;
                      sub_10000BE14(v59, v74, &qword_101A13F10, &unk_1014BD1C0);
                      if (v61(v59 + v58, 1, v60) != 1)
                      {
                        v65 = v59 + v58;
                        v66 = v73;
                        sub_100BBFCFC(v65, v73, type metadata accessor for CRLMaskInfoData);
                        sub_100B7EB94(v64, v66);
                        v68 = v67;
                        sub_100BBFD64(v66, type metadata accessor for CRLMaskInfoData);
                        sub_10000CAAC(v80, &qword_101A13F10, &unk_1014BD1C0);
                        sub_10000CAAC(v81, &qword_101A13F10, &unk_1014BD1C0);
                        sub_100BBFD64(v64, type metadata accessor for CRLMaskInfoData);
                        sub_10000CAAC(v59, &qword_101A13F10, &unk_1014BD1C0);
                        v59 = v75;
                        v63 = v72;
                        if (v68)
                        {
                          goto LABEL_37;
                        }

                        goto LABEL_35;
                      }

                      sub_10000CAAC(v80, &qword_101A13F10, &unk_1014BD1C0);
                      sub_10000CAAC(v81, &qword_101A13F10, &unk_1014BD1C0);
                      sub_100BBFD64(v64, type metadata accessor for CRLMaskInfoData);
                      v63 = v72;
                    }

                    sub_10000CAAC(v59, &qword_101A13F20, &qword_10149E288);
                    v59 = v75;
LABEL_35:
                    CRRegister.wrappedValue.getter();
                    sub_100BB8084(v59, 0);
LABEL_36:
                    sub_10000CAAC(v59, &qword_101A13F10, &unk_1014BD1C0);
LABEL_37:
                    sub_100BBFD64(v63, type metadata accessor for CRLImageItemCRDTData);
                    v43 = &qword_101A13F30;
                    v44 = &qword_10149E298;
                    v45 = v84;
                    goto LABEL_16;
                  }

                  goto LABEL_43;
                }

LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_42;
          }

LABEL_15:
          v43 = &qword_101A13F28;
          v44 = &qword_10149E290;
          v45 = v22;
LABEL_16:
          sub_10000CAAC(v45, v43, v44);
          return;
        }

        sub_10000CAAC(v103, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v33 + 56))(v22, 1, 1, v32);
    goto LABEL_15;
  }
}