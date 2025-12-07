void sub_100098D64()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084528(&qword_10026F338, &unk_1001F0D10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_1001C6788();

  sub_1001C4A68();
  v6 = objc_allocWithZone(NSManagedObjectModel);
  sub_1001C4A88(v7);
  v9 = v8;
  v10 = [v6 initWithContentsOfURL:v8];

  if (v10)
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_100098F00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (a4)();
    return;
  }

  v8 = Strong;
  if (a2)
  {
    swift_errorRetain();
    v9 = sub_1001C5128();
    v10 = sub_1001C6598();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1001C6D98();
      v15 = sub_1001874E8(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "CRDTModelCloudDataManager cloudData: couldn't load existing data: %s", v11, 0xCu);
      sub_10008E7BC(v12);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    type metadata accessor for CRDTModelSync();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      a4(v17);

      swift_unknownObjectRelease();
      return;
    }

    v18 = sub_1001C5128();
    LOBYTE(v19) = sub_1001C6598();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: loaded existing data with the wrong type";
    goto LABEL_14;
  }

  v18 = sub_1001C5128();
  v19 = sub_1001C65B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "CRDTModelCloudDataManager cloudData: no existing data";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
  }

LABEL_15:

LABEL_16:
  a4(0);
}

uint64_t sub_1000991BC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10009B1F8, v4);
}

uint64_t sub_100099250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_10008875C(a1, &unk_10026F420, &unk_1001F0E50);
  swift_beginAccess();
  sub_10009B074(a2, a1, type metadata accessor for ReadingHistoryModel);
  v9 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v10 = v9[12];
  v11 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v11 - 8) + 56))(a1 + v10, 2, 2, v11);
  sub_10009ADF0(a3, v8, &unk_10026F410, &unk_1001F0E40);
  v12 = v9[13];
  v13 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *(a1 + v9[11]) = 1;
  return sub_10009AC98(v8, a1 + v12);
}

char *sub_100099410(void *a1, void *a2, void *a3, char *a4)
{
  v70 = a4;
  v77 = a1;
  v78 = a3;
  v74 = a2;
  ObjectType = swift_getObjectType();
  v76 = sub_1001C5148();
  v81 = *(v76 - 8);
  __chkstk_darwin(v76);
  v80 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v5 - 8);
  v72 = v67 - v6;
  v71 = sub_100084528(&unk_10026F420, &unk_1001F0E50) - 8;
  v7 = __chkstk_darwin(v71);
  v75 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v73 = v67 - v10;
  __chkstk_darwin(v9);
  v69 = v67 - v11;
  v12 = type metadata accessor for ReadingHistoryModel(0);
  v68 = v12;
  __chkstk_darwin(v12);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1001C6668();
  v15 = *(v82 - 1);
  __chkstk_darwin(v82);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001C6638();
  __chkstk_darwin(v18 - 8);
  v19 = sub_1001C5688();
  __chkstk_darwin(v19 - 8);
  v67[2] = qword_1002818C0;
  v67[1] = ".ReadingHistoryDataStore.model";
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(&aBlock, "CRDTModelSync.");
  HIBYTE(aBlock) = -18;
  v88 = v12;
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v20 = sub_1001C6078();
  v22 = v21;
  sub_1001C61E8();
  v23 = sub_1001C6088();
  v25 = v24;

  v26 = sub_10014074C(15, v23, v25, v20, v22);
  v28 = v27;

  v90._countAndFlagsBits = v26;
  v90._object = v28;
  sub_1001C6138(v90);

  v29 = v70;
  sub_1001C5138();
  v30 = qword_10026FB10;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v15 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v82);
  v31 = v69;
  *&v29[v30] = sub_1001C66A8();
  v29[direct field offset for CRDTModelSyncManager.enableCloudSync] = 0;
  sub_100084528(&unk_10026ED30, &unk_1001F1490);
  sub_1000885F4(&unk_10026F430, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(&unk_10026ED40, &unk_10026ED30, &unk_1001F1490, &protocol conformance descriptor for Anonymous<A>);
  sub_1001C5B58();
  v32 = v68;
  sub_1001C4CA8();
  sub_10009A514(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001C5B58();
  *&v14[*(v32 + 24)] = &_swiftEmptyDictionarySingleton;
  v33 = v74;
  *&v29[qword_10026FB18] = v74;
  v82 = v14;
  sub_10009B074(v14, v31, type metadata accessor for ReadingHistoryModel);
  v34 = v71;
  v35 = *(v71 + 56);
  v36 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  (*(*(v36 - 8) + 56))(v31 + v35, 1, 2, v36);
  v37 = type metadata accessor for CRDTModelRevisionInfo(0);
  v38 = *(*(v37 - 8) + 56);
  v39 = v72;
  v38(v72, 1, 1, v37);
  v40 = *(v34 + 60);
  v38((v31 + v40), 1, 1, v37);
  *(v31 + *(v34 + 52)) = 0;
  v74 = v33;
  v41 = v31 + v40;
  v42 = v76;
  sub_10009AC98(v39, v41);
  v43 = v73;
  sub_10009ADF0(v31, v73, &unk_10026F420, &unk_1001F0E50);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  swift_allocObject();
  v44 = v75;
  sub_10009ADF0(v43, v75, &unk_10026F420, &unk_1001F0E50);
  v45 = sub_100098354(v44);
  sub_10008875C(v43, &unk_10026F420, &unk_1001F0E50);
  *&v29[qword_10026FB20] = v45;
  v46 = v77;
  v47 = v78;
  *&v29[qword_10026FB30] = v77;
  *&v29[qword_10026FB38] = v47;
  v48 = v29;
  type metadata accessor for ObservableTransaction(0);
  v49 = swift_allocObject();
  v50 = v47;
  v51 = v46;
  *&v48[qword_10026FB28] = sub_1000879B0(0xD000000000000030, 0x80000001001FEE50, v50, v49);
  v89.receiver = v48;
  v89.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v89, "init");
  v53 = *&v52[qword_10026FB20] + *(**&v52[qword_10026FB20] + 128);
  swift_beginAccess();
  *(v53 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v54 = v80;
  v55 = v81;
  (*(v81 + 16))(v80, &v52[qword_1002818C0], v42);
  v56 = v52;
  v57 = v54;
  v58 = sub_1001C5128();
  v59 = sub_1001C65B8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "CRDTModelSyncManager Init: About to load cloudData", v60, 2u);
  }

  (*(v55 + 8))(v57, v42);
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = *&v51[qword_100273F40];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  v64[2] = v63;
  v64[3] = sub_10009AD08;
  v64[4] = v61;
  v86 = sub_10009B260;
  v87 = v64;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v84 = sub_1000982D4;
  v85 = &unk_100242D80;
  v65 = _Block_copy(&aBlock);
  swift_retain_n();

  [v62 cloudDataWithPredicate:0 sortDescriptors:0 completion:v65];
  _Block_release(v65);

  sub_10009B0DC(v82, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v31, &unk_10026F420, &unk_1001F0E50);

  return v56;
}

char *sub_100099F0C(void *a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  sub_1001C69C8(16);

  strcpy(v50, "CRDTModelSync.");
  HIBYTE(v50[1]) = -18;
  v49 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v9 = sub_1001C6078();
  v11 = v10;
  sub_1001C61E8();
  v12 = sub_1001C6088();
  v14 = v13;

  v15 = sub_10014074C(15, v12, v14, v9, v11);
  v17 = v16;

  v51._countAndFlagsBits = v15;
  v51._object = v17;
  sub_1001C6138(v51);

  sub_1001C5138();
  *&a5[qword_100273F58] = 0;
  *&a5[qword_100273F68] = 0;
  *&a5[qword_100281A00 + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[qword_100281A08] = 0;
  *&a5[qword_100273F60] = a2;
  *&a5[qword_100273F70] = a4;
  v45 = a2;
  v46 = a4;
  v18 = [a3 managedObjectContext];
  *&a5[qword_100273F30] = a3;
  *&a5[qword_100273F50] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v19 = a3;
  v20 = a1;
  v43 = CRDTModelSyncMapper.init()();
  v21 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v20 dataMapper:v43];
  *&a5[qword_100273F38] = v21;
  v41 = v21;
  v44 = v18;
  sub_1001C6078();
  v22 = sub_1001C5FE8();

  v23 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v44 zoneName:v22 cloudKitController:v20];

  *&a5[qword_100273F48] = v23;
  v50[0] = type metadata accessor for CRDTModelSyncEntity(0);
  v24 = v19;
  sub_100084528(&qword_100274010, &unk_1001F0E98);
  sub_1001C6078();
  type metadata accessor for CRDTModelSync();
  v25 = objc_allocWithZone(BCCloudDataManager);
  v26 = v20;
  v27 = v41;

  v28 = sub_1001C5FE8();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [v25 initWithCloudDataSource:v24 entityName:v28 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v27 cloudKitController:v26 dataMapper:v43];

  *&a5[qword_100273F40] = v30;
  v48.receiver = a5;
  v48.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v48, "init");
  v32 = *&v31[qword_100273F48];
  v33 = *&v31[qword_100273F50];
  v34 = v31;
  v35 = v32;
  v36 = [v33 privateCloudDatabaseController];
  v37 = [objc_allocWithZone(BDSSaltVersionIdentifierManager) initWithZoneDataManager:v34 tokenController:v35 databaseController:v36];

  v38 = *&v34[qword_100273F58];
  *&v34[qword_100273F58] = v37;

  v39 = *&v34[qword_100273F38];
  [v39 setDelegate:v34];

  return v34;
}

uint64_t sub_10009A420(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10009A464()
{
  v1 = *(sub_1001C4CA8() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v2 + v5) & ~v2;
  v7 = *(v0 + 16);
  v8 = v0 + ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1000E48BC(v7, v0 + v4, v0 + v5, v0 + v6, v9, v10);
}

uint64_t sub_10009A514(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10009A58C()
{
  result = qword_10026F378;
  if (!qword_10026F378)
  {
    sub_100088714(255, &qword_10026F370, off_10023DD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F378);
  }

  return result;
}

uint64_t sub_10009A638()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_100095AC0(v2, v3, v4);
}

uint64_t sub_10009A6EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_1001185A0(v2, v3, v4);
}

uint64_t sub_10009A7AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_10009544C(v2, v3);
}

uint64_t sub_10009A858()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009A8A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_100094D20(v2, v3, v4);
}

uint64_t sub_10009A954()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100094674(v2, v3);
}

uint64_t sub_10009AA00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009AA40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009AAEC;

  return sub_100093ED8(v2, v3);
}

uint64_t sub_10009AAEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009ABE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10009AC30@<X0>(NSObject **a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v3)
  {
    v4 = *(*(v1 + 16) + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  }

  else
  {
    v4 = sub_10008ECA4();
    v3 = 0;
  }

  *a1 = v4;
  return v3;
}

uint64_t sub_10009AC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AD10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009AD88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10009AD9C(a1, a2);
  }

  return a1;
}

uint64_t sub_10009AD9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10009ADF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AE58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100084528(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10009AEC0()
{
  v1 = *(type metadata accessor for ReadingHistoryModel(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_100084528(&unk_10026F410, &unk_1001F0E40) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_10009756C((v0 + v2), v5, v6);
}

uint64_t sub_10009AFA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009B018(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_10008875C(a1, &unk_10026F420, &unk_1001F0E50);
  return sub_10009ADF0(v3, a1, &unk_10026F420, &unk_1001F0E50);
}

uint64_t sub_10009B074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009B0DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009B13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10009B1C4()
{
  v0 = sub_10008ECA4();
}

uint64_t sub_10009B308()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100281898);
  sub_100083274(v0, qword_100281898);
  return sub_1001C5138();
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10009B3FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10009B450(void *a1, double a2, double a3)
{
  v5 = sub_100084528(&qword_10026F4A8, &qword_1001F0F50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_10009BBB8();
  sub_1001C6E78();
  v12 = 0;
  sub_1001C6C88();
  if (!v3)
  {
    v11 = 1;
    sub_1001C6C88();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10009B604(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_10009B9C4(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t sub_10009B64C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65766974616C6572;
  }

  else
  {
    v2 = 0x6574756C6F736261;
  }

  if (*a2)
  {
    v3 = 0x65766974616C6572;
  }

  else
  {
    v3 = 0x6574756C6F736261;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1001C6D08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10009B6D4()
{
  sub_1001C6DF8();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_10009B74C(uint64_t a1)
{
  sub_1001C60E8();
}

Swift::Int sub_10009B7A8(uint64_t a1)
{
  sub_1001C6DF8();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_10009B81C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100242180;
  v8._object = v3;
  v5 = sub_1001C6BA8(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10009B87C(uint64_t *a1@<X8>)
{
  v2 = 0x6574756C6F736261;
  if (*v1)
  {
    v2 = 0x65766974616C6572;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_10009B8B4()
{
  if (*v0)
  {
    return 0x65766974616C6572;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t sub_10009B8E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_100242180;
  v9._object = a2;
  v6 = sub_1001C6BA8(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10009B94C(uint64_t a1)
{
  v2 = sub_10009BBB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009B988(uint64_t a1)
{
  v2 = sub_10009BBB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10009B9C4(void *a1)
{
  v2 = sub_100084528(&qword_10026F498, &qword_1001F0F48);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_10009BB74(a1, a1[3]);
  sub_10009BBB8();
  sub_1001C6E58();
  v9[15] = 0;
  sub_1001C6C08();
  v7 = v6;
  v9[14] = 1;
  sub_1001C6C08();
  (*(v3 + 8))(v5, v2);
  sub_10008E7BC(a1);
  return v7;
}

void *sub_10009BB74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10009BBB8()
{
  result = qword_10026F4A0;
  if (!qword_10026F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4A0);
  }

  return result;
}

uint64_t _s14ThresholdErrorOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14ThresholdErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s14ThresholdErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _s9ThresholdV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9ThresholdV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10009BE30()
{
  result = qword_10026F4B0;
  if (!qword_10026F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4B0);
  }

  return result;
}

unint64_t sub_10009BE88()
{
  result = qword_10026F4B8;
  if (!qword_10026F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4B8);
  }

  return result;
}

unint64_t sub_10009BEE0()
{
  result = qword_10026F4C0;
  if (!qword_10026F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F4C0);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.updateCollector.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1000B36A8(a1, v1 + 16, &unk_10026F4D0, &unk_1001F1130);
  return swift_endAccess();
}

uint64_t sub_10009C048()
{
  v1 = v0;
  v2 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v26 - v6;
  sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001F0CF0;
  v26[0] = 0x3D6C65646F6DLL;
  v26[1] = 0xE600000000000000;
  v27._countAndFlagsBits = ReadingHistoryModel.description.getter();
  sub_1001C6138(v27);

  v9 = v26[1];
  *(v8 + 32) = v26[0];
  *(v8 + 40) = v9;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v26, "currentStreak=");
  HIBYTE(v26[1]) = -18;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v0 + *(v10 + 20), v7, &qword_10026F508, &qword_1001F1150);
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v7, 1, v11) == 1)
  {
    sub_10008875C(v7, &qword_10026F508, &qword_1001F1150);
    v13 = 0xE300000000000000;
    v14._countAndFlagsBits = 7104878;
  }

  else
  {
    v15 = ReadingHistory.Streak.description.getter();
    v13 = v16;
    sub_1000B2E68(v7, type metadata accessor for ReadingHistory.Streak);
    v14._countAndFlagsBits = v15;
  }

  v14._object = v13;
  sub_1001C6138(v14);

  v17 = v26[1];
  *(v8 + 48) = v26[0];
  *(v8 + 56) = v17;
  v26[0] = 0x3D7961646F74;
  v26[1] = 0xE600000000000000;
  v28._countAndFlagsBits = sub_1001C4C08();
  sub_1001C6138(v28);

  v18 = v26[1];
  *(v8 + 64) = v26[0];
  *(v8 + 72) = v18;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1001C69C8(16);

  strcpy(v26, "longestStreak=");
  HIBYTE(v26[1]) = -18;
  sub_10009ADF0(v1 + *(v10 + 28), v5, &qword_10026F508, &qword_1001F1150);
  if (v12(v5, 1, v11) == 1)
  {
    sub_10008875C(v5, &qword_10026F508, &qword_1001F1150);
    v19 = 0xE300000000000000;
    v20._countAndFlagsBits = 7104878;
  }

  else
  {
    v21 = ReadingHistory.Streak.description.getter();
    v19 = v22;
    sub_1000B2E68(v5, type metadata accessor for ReadingHistory.Streak);
    v20._countAndFlagsBits = v21;
  }

  v20._object = v19;
  sub_1001C6138(v20);

  v23 = v26[1];
  *(v8 + 80) = v26[0];
  *(v8 + 88) = v23;
  v26[0] = v8;
  sub_100084528(&unk_10026FED0, &unk_1001F1450);
  sub_1000885F4(&qword_10026F850, &unk_10026FED0, &unk_1001F1450, &protocol conformance descriptor for [A]);
  v24 = sub_1001C5FA8();

  return v24;
}

uint64_t sub_10009C434()
{
  v1 = v0;
  v2 = sub_1001C5648();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1001C5688();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5658();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v48 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v15;
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1000B344C(v1 + v22, v21, type metadata accessor for ReadingHistoryDataStore.State);
  v23 = *(v19 + 28);
  v60 = v21;
  sub_10009ADF0(&v21[v23], v12, &qword_10026F508, &qword_1001F1150);
  v24 = type metadata accessor for ReadingHistory.Streak(0);
  v25 = *(*(v24 - 8) + 48);
  v26 = v25(v12, 1, v24);
  v53 = v17;
  if (v26 == 1)
  {
    sub_10008875C(v12, &qword_10026F508, &qword_1001F1150);
    v27 = sub_1001C4CA8();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  }

  else
  {
    v28 = sub_1001C4CA8();
    v29 = *(v28 - 8);
    v47 = v5;
    v30 = v29;
    (*(v29 + 16))(v17, v12, v28);
    sub_1000B2E68(v12, type metadata accessor for ReadingHistory.Streak);
    (*(v30 + 56))(v17, 0, 1, v28);
    v5 = v47;
  }

  sub_10009ADF0(&v60[v23], v10, &qword_10026F508, &qword_1001F1150);
  if (v25(v10, 1, v24) == 1)
  {
    sub_10008875C(v10, &qword_10026F508, &qword_1001F1150);
    v31 = 0;
  }

  else
  {
    v31 = *&v10[*(v24 + 20)];
    sub_1000B2E68(v10, type metadata accessor for ReadingHistory.Streak);
  }

  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v33 = v51;
  v32 = v52;
  (*(v52 + 104))(v51, enum case for DispatchQoS.QoSClass.background(_:), v5);
  v34 = sub_1001C66B8();
  (*(v32 + 8))(v33, v5);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v53;
  v37 = v50;
  sub_10009ADF0(v53, v50, &unk_10026FC70, &unk_1001F1430);
  v38 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  sub_10009AE58(v37, v40 + v38, &unk_10026FC70, &unk_1001F1430);
  *(v40 + v39) = v31;
  aBlock[4] = sub_1000B3778;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100243EE0;
  v41 = _Block_copy(aBlock);

  v42 = v54;
  sub_1001C5668();
  v61 = _swiftEmptyArrayStorage;
  sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  v43 = v56;
  v44 = v59;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v41);

  (*(v58 + 8))(v43, v44);
  (*(v55 + 8))(v42, v57);
  sub_10008875C(v36, &unk_10026FC70, &unk_1001F1430);
  sub_1000B2E68(v60, type metadata accessor for ReadingHistoryDataStore.State);
}

void sub_10009CC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 112);
    sub_10009ADF0(a2, v7, &unk_10026FC70, &unk_1001F1430);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v17 = v16;
      sub_10008875C(v7, &unk_10026FC70, &unk_1001F1430);
      v18 = sub_1001C5FE8();
      [v17 removeObjectForKey:v18];

LABEL_7:
      v25 = sub_1001C5FE8();
      [v16 setInteger:a3 forKey:v25];

      return;
    }

    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v19 = v16;
    v20 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v12);
    v22 = 100 * v20;
    if ((v20 * 100) >> 64 == (100 * v20) >> 63)
    {
      v23 = v22 + v21;
      if (!__OFADD__(v22, v21))
      {
        v24 = sub_1001C5FE8();
        [v19 setInteger:v23 forKey:v24];

        (*(v9 + 8))(v14, v8);
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static ReadingHistoryDataStore.recalculationCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static ReadingHistoryDataStore.recalculationCount = a1;
  return result;
}

uint64_t ReadingHistoryDataStore.__allocating_init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v12 = a4;
  v17 = a2[3];
  v16 = a2[4];
  v18 = sub_10009D148(a2, v17);
  v19 = sub_1000B2C88(a1, v18, a3, v12, a5, a6, a7, a8, v8, v17, v16);
  swift_unknownObjectRelease();

  sub_10008E7BC(a2);
  return v19;
}

uint64_t sub_10009D148(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t ReadingHistoryDataStore.init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8)
{
  v23 = a5;
  v24 = a7;
  v11 = a4;
  v16 = a2[3];
  v15 = a2[4];
  v17 = sub_10009D148(a2, v16);
  __chkstk_darwin(v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_1000B1CE0(a1, v19, a3, v11, v23, a6, v24, a8, v8, v16, v15);
  swift_unknownObjectRelease();

  sub_10008E7BC(a2);
  return v21;
}

uint64_t sub_10009D2E4(_OWORD *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009D344(a1);
  }

  return result;
}

uint64_t sub_10009D344(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_100084528(&qword_10026F908, &qword_1001F14D8);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock - v5;
  v7 = sub_1001C4868();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v11 = *(v2 + 144);
  v12 = swift_allocObject();
  v13 = a1[1];
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 42) = *(a1 + 26);
  *(v12 + 64) = v2;
  *(v12 + 72) = &v23;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000B3994;
  *(v14 + 24) = v12;
  v21 = sub_1000B3DA0;
  v22 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_1000906F4;
  *(&v20 + 1) = &unk_100243F58;
  v15 = _Block_copy(&aBlock);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v23 == 1)
    {
      sub_1000B39A0();
      aBlock = 0u;
      v20 = 0u;
      sub_1001C4E18();
      sub_10008875C(&aBlock, &qword_10026FCB0, &unk_1001F14E0);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_10008875C(v6, &qword_10026F908, &qword_1001F14D8);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v17 = [objc_opt_self() defaultCenter];
        isa = sub_1001C4838().super.isa;
        [v17 postNotification:isa];

        (*(v8 + 8))(v10, v7);
      }
    }
  }

  return result;
}

uint64_t sub_10009D694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10009D6F4(a1);
  }

  return result;
}

uint64_t sub_10009D6F4(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = aBlock - v6;
  v8 = *(v1 + 144);
  sub_10009ADF0(a1, aBlock - v6, &unk_10026F820, &unk_1001F1440);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_10009AE58(v7, v10 + v9, &unk_10026F820, &unk_1001F1440);
  *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000B35CC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243DA0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.observeSignificantDateChange(_:)(NSNotificationName a1)
{
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:"_handleSignificantDateChange:" name:a1 object:0];
}

uint64_t sub_10009D994@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1001C4D68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4CA8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  sub_1001C4CD8();
  sub_1001C4BE8();
  (*(v4 + 8))(v6, v3);
  v14 = sub_1001AC330(a1, 1);
  if (!sub_1001AC330(v13, 1))
  {
    v15 = sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
LABEL_6:
      sub_1001C5118(v15, &_mh_execute_header, qword_1002711E8, "Recalc: yesterday and today are both not streak day.", 52, 2, _swiftEmptyArrayStorage, v31);
      (*(v8 + 8))(v13, v7);
      goto LABEL_13;
    }

LABEL_15:
    v30 = v15;
    swift_once();
    v15 = v30;
    goto LABEL_6;
  }

  v15 = swift_beginAccess();
  if (__OFADD__(static ReadingHistoryDataStore.recalculationCount, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++static ReadingHistoryDataStore.recalculationCount;
  if (v14)
  {
    v16 = a1;
  }

  else
  {
    v16 = v13;
  }

  (*(v8 + 16))(v11, v16, v7);
  v17 = sub_1001AC6B4(v11, 1);
  v18 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v19 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001F0660;
  v21 = sub_1001C4C08();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  v24 = sub_100084570();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = &type metadata for Int;
  *(v20 + 104) = &protocol witness table for Int;
  *(v20 + 64) = v24;
  *(v20 + 72) = v17;
  sub_1001C5118(v18, &_mh_execute_header, v19, "Recalc: lastStreakDate=%{public}@ currentStreak=%d", 50, 2, v20);

  v25 = *(v8 + 8);
  v25(v13, v7);
  if (v17 >= 2)
  {
    v26 = v31;
    (*(v8 + 32))(v31, v11, v7);
    v27 = type metadata accessor for ReadingHistory.Streak(0);
    *(v26 + *(v27 + 20)) = v17;
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  v25(v11, v7);
LABEL_13:
  v29 = type metadata accessor for ReadingHistory.Streak(0);
  return (*(*(v29 - 8) + 56))(v31, 1, 1, v29);
}

uint64_t sub_10009DDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v97 = a4;
  v7 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v8 = __chkstk_darwin(v7 - 8);
  v88 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v87 - v10;
  v102 = type metadata accessor for ReadingHistory.Streak(0);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C4D68();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C4CA8();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v99 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v87 - v21;
  __chkstk_darwin(v20);
  v24 = &v87 - v23;
  sub_1001C4CD8();
  sub_1001C4BE8();
  (*(v13 + 8))(v15, v12);
  v91 = v17;
  v25 = v17 + 16;
  v26 = *(v17 + 16);
  v98 = a3;
  v26(v22, a3, v16);
  v27 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v22);
  v29 = v28;
  v95 = v24;
  v96 = v16;
  v90 = v25;
  v89 = v26;
  v26(v22, v24, v16);
  v30 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v22);
  v32 = v31;
  v101 = a2;
  v93 = a1;
  v33 = sub_1001ACEE4(a2);
  v34 = v33;
  v103 = v27;
  v104 = v29;
  v105 = v30;
  v106 = v32;
  v35 = *(v33 + 32);
  v36 = ((1 << v35) + 63) >> 6;
  v37 = v97;
  v38 = 8 * v36;
  if ((v35 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    v39 = &v87;
    __chkstk_darwin(v33);
    bzero(&v87 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0), v38);
    v40 = 0;
    v41 = 0;
    v42 = 1 << *(v34 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v34 + 56);
    v45 = (v42 + 63) >> 6;
    while (v44)
    {
      v46 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v47 = v46 | (v41 << 6);
LABEL_12:
      v50 = (*(v34 + 48) + 16 * v47);
      v51 = *v50;
      v52 = v50[1];
      if ((v51 != v27 || v52 != v29) && (v51 != v30 || v52 != v32))
      {
        *(&v87 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v47;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_23:
          v56 = sub_100156604((&v87 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0)), v36, v40, v34);
          goto LABEL_24;
        }
      }
    }

    v48 = v41;
    while (1)
    {
      v41 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v41 >= v45)
      {
        goto LABEL_23;
      }

      v49 = *(v34 + 56 + 8 * v41);
      ++v48;
      if (v49)
      {
        v44 = (v49 - 1) & v49;
        v47 = __clz(__rbit64(v49)) | (v41 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v81 = swift_slowAlloc();
  v82 = sub_1000B0B78(v81, v36, v34, sub_1000B38DC);

  v56 = v82;
LABEL_24:
  v39 = v37;
  v57 = *(v56 + 16);

  v58 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v59 = v92;
  sub_10009ADF0(v93 + *(v58 + 20), v92, &qword_10026F508, &qword_1001F1150);
  v60 = v100;
  v61 = (*(v100 + 48))(v59, 1, v102);
  v38 = v95;
  v29 = v96;
  v36 = v94;
  v32 = v98;
  v30 = v99;
  if (v61 == 1)
  {
    sub_10008875C(v59, &qword_10026F508, &qword_1001F1150);
LABEL_28:
    sub_10009D994(v32, v39);
    return (*(v91 + 8))(v38, v29);
  }

  sub_1000B390C(v59, v94, type metadata accessor for ReadingHistory.Streak);
  if (v57)
  {
    sub_1000B2E68(v36, type metadata accessor for ReadingHistory.Streak);
    goto LABEL_28;
  }

  v89(v30, v36, v29);
  v63 = *(v36 + *(v102 + 20));
  v27 = sub_1001AC330(v32, 1);
  v64 = sub_1001AC330(v38, 1);
  if (sub_1001C4C68())
  {
    if (v27)
    {
      v27 = v88;
      sub_1000B344C(v36, v88, type metadata accessor for ReadingHistory.Streak);
      (*(v60 + 56))(v27, 0, 1, v102);
      v65 = sub_1001C6588();
      if (qword_10026EBE8 != -1)
      {
        v83 = v65;
        swift_once();
        v65 = v83;
      }

      sub_1001C5118(v65, &_mh_execute_header, qword_1002711E8, "Recalc: today is already lastStreakDate, skipping.", 50, 2, _swiftEmptyArrayStorage);
      goto LABEL_52;
    }

    if (v63 < 2)
    {
      v27 = v88;
      (*(v60 + 56))(v88, 1, 1, v102);
      v78 = sub_1001C6588();
      if (qword_10026EBE8 != -1)
      {
        v86 = v78;
        swift_once();
        v78 = v86;
      }

      sub_1001C5118(v78, &_mh_execute_header, qword_1002711E8, "Recalc: today is no longer a streak day, clearing current streak", 64, 2, _swiftEmptyArrayStorage);
      goto LABEL_52;
    }

    v27 = v88;
    v89(v88, v38, v29);
    *(v27 + *(v102 + 20)) = v63 - 1;
    (*(v60 + 56))(v27, 0, 1);
    v67 = sub_1001C6588();
    if (qword_10026EBE8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

  if (sub_1001C4C68())
  {
    if ((v27 & 1) == 0)
    {
      v27 = v88;
      v89(v88, v38, v29);
      *(v27 + *(v102 + 20)) = v63;
      (*(v60 + 56))(v27, 0, 1);
      v77 = sub_1001C6588();
      if (qword_10026EBE8 != -1)
      {
        v85 = v77;
        swift_once();
        v77 = v85;
      }

      sub_1001C5118(v77, &_mh_execute_header, qword_1002711E8, "Recalc: yesterday is already lastStreakDate, skipping.", 54, 2, _swiftEmptyArrayStorage);
      goto LABEL_52;
    }

    v66 = v88;
    v67 = (v89)(v88, v32, v29);
    v68 = v63 + 1;
    if (!__OFADD__(v63, 1))
    {
      *(v66 + *(v102 + 20)) = v68;
      (*(v100 + 56))(v66, 0, 1);
      v69 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v70 = qword_1002711E8;
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1001F0660;
      v72 = sub_1001C4C08();
      v74 = v73;
      *(v71 + 56) = &type metadata for String;
      v75 = sub_100084570();
      *(v71 + 32) = v72;
      *(v71 + 40) = v74;
      *(v71 + 96) = &type metadata for Int;
      *(v71 + 104) = &protocol witness table for Int;
      *(v71 + 64) = v75;
      *(v71 + 72) = v68;
      sub_1001C5118(v69, &_mh_execute_header, v70, "Recalc: extending a day, lastStreakDate=%{public}@ currentStreak=%d", 67, 2, v71);

      v76 = *(v91 + 8);
      v76(v99, v29);
      sub_1000B2E68(v36, type metadata accessor for ReadingHistory.Streak);
      v76(v38, v29);
      v27 = v88;
      return sub_10009AE58(v27, v39, &qword_10026F508, &qword_1001F1150);
    }

    __break(1u);
LABEL_62:
    v84 = v67;
    swift_once();
    v67 = v84;
LABEL_42:
    sub_1001C5118(v67, &_mh_execute_header, qword_1002711E8, "Recalc: today is no longer a streak day, reverting to yesterday", 63, 2, _swiftEmptyArrayStorage);
    goto LABEL_52;
  }

  if ((sub_1001C4C58() & 1) != 0 && !v64)
  {
LABEL_55:
    v80 = *(v91 + 8);
    v80(v30, v29);
    sub_1000B2E68(v36, type metadata accessor for ReadingHistory.Streak);
    v80(v38, v29);
    if (v27)
    {
      v27 = v88;
      v89(v88, v32, v29);
      *(v27 + *(v102 + 20)) = 1;
      (*(v100 + 56))(v27, 0, 1);
    }

    else
    {
      v27 = v88;
      (*(v100 + 56))(v88, 1, 1, v102);
    }

    return sub_10009AE58(v27, v39, &qword_10026F508, &qword_1001F1150);
  }

  v27 = v88;
  sub_10009D994(v32, v88);
LABEL_52:
  v79 = *(v91 + 8);
  v79(v30, v29);
  sub_1000B2E68(v36, type metadata accessor for ReadingHistory.Streak);
  v79(v38, v29);
  return sub_10009AE58(v27, v39, &qword_10026F508, &qword_1001F1150);
}

uint64_t sub_10009EA90(uint64_t a1)
{
  v2 = v1;
  v144 = *v2;
  v136 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v139 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v124 - v4;
  v5 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v6 = __chkstk_darwin(v5 - 8);
  v140 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v157 = &v124 - v8;
  v153 = sub_1001C4D68();
  v138 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v10 - 8);
  v151 = &v124 - v11;
  v12 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v12 - 8);
  v150 = &v124 - v13;
  v149 = sub_1001C4948();
  v137 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v15 - 8);
  v158 = &v124 - v16;
  v159 = type metadata accessor for ReadingHistoryDataStore.State(0);
  __chkstk_darwin(v159);
  v154 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001C4CA8();
  v162 = *(v18 - 8);
  v163 = v18;
  v19 = __chkstk_darwin(v18);
  v156 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v147 = (&v124 - v22);
  __chkstk_darwin(v21);
  v160 = &v124 - v23;
  v24 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v25 = __chkstk_darwin(v24 - 8);
  v143 = (&v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v161 = &v124 - v27;
  v28 = sub_100084528(&qword_10026F8C8, &qword_1001F95E0);
  __chkstk_darwin(v28 - 8);
  v30 = &v124 - v29;
  v31 = sub_100084528(&unk_10026F8D0, &unk_1001F14B0);
  v155 = *(v31 - 8);
  __chkstk_darwin(v31);
  v141 = &v124 - v32;
  v33 = type metadata accessor for ReadingHistoryModel(0);
  v34 = __chkstk_darwin(v33);
  v36 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34);
  v39 = &v124 - v38;
  __chkstk_darwin(v37);
  v41 = &v124 - v40;
  v42 = v2;
  v43 = (v2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state);
  swift_beginAccess();
  sub_1000B344C(v43, v41, type metadata accessor for ReadingHistoryModel);
  sub_1000B3814(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v44 = a1;
  LOBYTE(a1) = sub_1001C5948();
  v142 = v41;
  result = sub_1000B2E68(v41, type metadata accessor for ReadingHistoryModel);
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v146 = v42;
  sub_1000B344C(v43, v39, type metadata accessor for ReadingHistoryModel);
  sub_1000B3814(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v145 = v44;
  sub_1001C5C78();
  sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1000885F4(&unk_10026F8E0, &qword_10026F830, &qword_1001F0E80, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  sub_1001C5CB8();
  v46 = v155;
  if (v155[6](v30, 1, v31) == 1)
  {
    sub_10008875C(v30, &qword_10026F8C8, &qword_1001F95E0);
    v131 = 0;
  }

  else
  {
    v47 = v141;
    v46[4](v141, v30, v31);
    v48 = sub_1001C5AF8();
    __chkstk_darwin(v48);
    v122 = v39;
    v123 = v36;
    sub_1000B6FDC(sub_1000B38C0, &v120, v48);
    v131 = 0;

    (v46[1])(v47, v31);
  }

  v50 = v162;
  v49 = v163;
  v51 = v36;
  v52 = v159;
  sub_10009ADF0(v43 + *(v159 + 20), v161, &qword_10026F508, &qword_1001F1150);
  v53 = v52[6];
  v56 = *(v50 + 16);
  v55 = v50 + 16;
  v54 = v56;
  v134 = v43;
  v57 = v43 + v53;
  v58 = v160;
  v56(v160, v57, v49);
  v155 = v39;
  v59 = sub_1001ACEE4(v36);
  v60 = v145;
  if (!*(v59 + 16))
  {

    v118 = v154;
    sub_1000B344C(v51, v154, type metadata accessor for ReadingHistoryModel);
    sub_10009ADF0(v161, v118 + v52[5], &qword_10026F508, &qword_1001F1150);
    v54(v118 + v52[6], v58, v49);
    sub_1001ABED4(v58, (v118 + v52[7]));
    sub_1000A28D4(v118, v60, 0x656772656DLL, 0xE500000000000000);
    sub_1000B2E68(v118, type metadata accessor for ReadingHistoryDataStore.State);
    (*(v162 + 8))(v58, v49);
    v75 = v161;
    v77 = v155;
    goto LABEL_43;
  }

  v141 = v51;
  v61 = v147;
  v54(v147, v58, v49);
  v62 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v61);
  v64 = *(v59 + 16) == 1;
  v65 = v49;
  v133 = v55;
  v132 = v54;
  if (v64 && sub_1000F52CC(v62, v63, v59))
  {

    v66 = sub_1001C6588();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    v67 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1001F0670;
    v69 = sub_1001C4C08();
    v71 = v70;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = sub_100084570();
    *(v68 + 32) = v69;
    *(v68 + 40) = v71;
    v72 = v160;
    sub_1001C5118(v66, &_mh_execute_header, v67, "Merged with an object that only changed today: %{public}@", 57, 2, v68);

    v73 = v154;
    sub_1000B344C(v134, v154, type metadata accessor for ReadingHistoryDataStore.State);
    v74 = v143;
    v51 = v141;
    sub_10009DDF4(v73, v141, v72, v143);
    sub_1000B2E68(v73, type metadata accessor for ReadingHistoryDataStore.State);
    v75 = v161;
    sub_10008875C(v161, &qword_10026F508, &qword_1001F1150);
    sub_10009AE58(v74, v75, &qword_10026F508, &qword_1001F1150);
    v76 = v142;
    sub_1000A0C18(v51, v75, v142);
    v77 = v155;
    v78 = v162;
    v79 = v145;
    goto LABEL_41;
  }

  v80 = v59 + 56;
  v81 = 1 << *(v59 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v59 + 56);
  v84 = (v81 + 63) >> 6;
  v147 = (v138 + 7);
  ++v138;
  ++v137;
  v134 = (v162 + 48);
  v130 = (v162 + 32);
  v129 = (v162 + 8);
  v128 = (v139 + 2);
  v127 = (v139 + 1);
  v139 = (v162 + 56);

  v86 = 0;
  v87 = v158;
  if (!v83)
  {
    while (1)
    {
LABEL_18:
      v88 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v88 >= v84)
      {
        break;
      }

      v83 = *(v80 + 8 * v88);
      ++v86;
      if (v83)
      {
        v86 = v88;
        goto LABEL_22;
      }
    }

    v85 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_22:
  while (1)
  {
    v89 = (*(v59 + 48) + ((v86 << 10) | (16 * __clz(__rbit64(v83)))));
    v90 = 100 * *v89;
    if ((*v89 * 100) >> 64 != v90 >> 63)
    {
      break;
    }

    v91 = v89[1];
    if (__OFADD__(v90, v91))
    {
      goto LABEL_47;
    }

    v83 &= v83 - 1;
    if (v90 + v91 <= 9999)
    {
      (*v139)(v87, 1, 1, v65);
LABEL_17:
      v85 = sub_10008875C(v87, &unk_10026FC70, &unk_1001F1430);
      if (!v83)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v92 = v153;
      (*v147)(v150, 1, 1, v153);
      v93 = sub_1001C4D78();
      (*(*(v93 - 8) + 56))(v151, 1, 1, v93);
      LOBYTE(v123) = 1;
      v122 = 0;
      v121 = 1;
      v120 = 0;
      v94 = v59;
      v95 = v148;
      v87 = v158;
      sub_1001C4938();
      v96 = v152;
      sub_1001C4CD8();
      sub_1001C4D18();
      v97 = v96;
      v65 = v163;
      v98 = v92;
      v100 = v156;
      v99 = v157;
      (*v138)(v97, v98);
      v101 = v95;
      v59 = v94;
      (*v137)(v101, v149);
      if ((*v134)(v87, 1, v65) == 1)
      {
        goto LABEL_17;
      }

      (*v130)(v100, v87, v65);
      if (sub_1001C4C58())
      {
        ReadingHistoryModel.readingHistoryDay(for:)(v99);
        v102 = v157;
        v103 = type metadata accessor for ReadingHistoryDay(0);
        v126 = *(*(v103 - 8) + 48);
        if (v126(v102, 1, v103) == 1)
        {
          sub_10008875C(v102, &qword_100273DA0, &qword_1001F7E50);
          v125 = 0;
          v104 = v140;
        }

        else
        {
          v105 = v102 + *(v103 + 20);
          v106 = v135;
          v107 = v136;
          (*v128)(v135, v105, v136);
          sub_1000B2E68(v157, type metadata accessor for ReadingHistoryDay);
          sub_1001C56C8();
          v108 = v106;
          v109 = v107;
          v100 = v156;
          v104 = v140;
          (*v127)(v108, v109);
          v125 = v164;
        }

        ReadingHistoryModel.readingHistoryDay(for:)(v104);
        v110 = v140;
        if (v126(v140, 1, v103) == 1)
        {
          sub_10008875C(v110, &qword_100273DA0, &qword_1001F7E50);
        }

        else
        {
          v111 = v110 + *(v103 + 20);
          v112 = v110;
          v113 = v135;
          v114 = v136;
          (*v128)(v135, v111, v136);
          sub_1000B2E68(v112, type metadata accessor for ReadingHistoryDay);
          sub_1001C56C8();
          (*v127)(v113, v114);
          if (v125 >= 1 && v125 < v164)
          {
            ReadingHistoryModel.setGoal(_:date:)(v125, v100);
          }
        }

        v65 = v163;
        v85 = (*v129)(v100, v163);
      }

      else
      {
        v85 = (*v129)(v100, v65);
      }

      if (!v83)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  v119 = v85;
  swift_once();
  v85 = v119;
LABEL_40:
  sub_1001C5118(v85, &_mh_execute_header, qword_1002711E8, "Merged with an object with multiple changed dates, recalc triggered.", 68, 2, _swiftEmptyArrayStorage);
  v115 = v143;
  v51 = v141;
  v72 = v160;
  sub_10009D994(v160, v143);
  v75 = v161;
  sub_10008875C(v161, &qword_10026F508, &qword_1001F1150);
  sub_10009AE58(v115, v75, &qword_10026F508, &qword_1001F1150);
  sub_1000A1170(v51, v59, v115);

  v76 = v142;
  sub_1000A0C18(v51, v115, v142);
  sub_10008875C(v115, &qword_10026F508, &qword_1001F1150);
  v79 = v145;
  v78 = v162;
  v73 = v154;
  v77 = v155;
LABEL_41:
  sub_1000B385C(v76, v51);
  sub_1000B344C(v51, v73, type metadata accessor for ReadingHistoryModel);
  v116 = v159;
  sub_10009ADF0(v75, v73 + *(v159 + 20), &qword_10026F508, &qword_1001F1150);
  v117 = v163;
  v132(v73 + *(v116 + 24), v72, v163);
  sub_1001ABED4(v72, (v73 + *(v116 + 28)));
  sub_1000A28D4(v73, v79, 0x656772656DLL, 0xE500000000000000);
  sub_1000B2E68(v73, type metadata accessor for ReadingHistoryDataStore.State);
  (*(v78 + 8))(v72, v117);
LABEL_43:
  sub_10008875C(v75, &qword_10026F508, &qword_1001F1150);
  sub_1000B2E68(v51, type metadata accessor for ReadingHistoryModel);
  return sub_1000B2E68(v77, type metadata accessor for ReadingHistoryModel);
}

uint64_t sub_10009FF84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v6 = __chkstk_darwin(v5 - 8);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v36 = v30 - v9;
  __chkstk_darwin(v8);
  v11 = v30 - v10;
  v12 = sub_1001C4CA8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v35 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = v30 - v16;
  v17 = *a1;
  v18 = type metadata accessor for ReadingHistoryModel(0);
  v39 = v17;
  v19 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1001C5BA8();
  v20 = v13;
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    return sub_10008875C(v11, &unk_10026FC70, &unk_1001F1430);
  }

  v33 = v3;
  v32 = *(v20 + 32);
  v32(v38, v11, v12);
  v23 = *(v18 + 20);
  v30[1] = v19;
  v31 = v17;
  v39 = v17;
  v24 = v36;
  v30[0] = v23;
  sub_1001C5BA8();
  if (v21(v24, 1, v12) == 1)
  {
    (*(v20 + 8))(v38, v12);
    return sub_10008875C(v24, &unk_10026FC70, &unk_1001F1430);
  }

  else
  {
    v25 = v35;
    v32(v35, v24, v12);
    if (sub_1001C4C58())
    {
      v26 = v34;
      v27 = v38;
      (*(v20 + 16))(v34, v38, v12);
      (*(v20 + 56))(v26, 0, 1, v12);
      v39 = v31;
      sub_1001C5BB8();
      v28 = *(v20 + 8);
      v28(v25, v12);
      return (v28)(v27, v12);
    }

    else
    {
      v29 = *(v20 + 8);
      v29(v25, v12);
      return (v29)(v38, v12);
    }
  }
}

uint64_t sub_1000A034C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v28 = a1;
  v2 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v2 - 8);
  v29 = v27 - v3;
  v4 = sub_100084528(&qword_10026F888, &qword_1001F1478);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v27 - v6);
  v8 = sub_100084528(&qword_10026F890, &qword_1001F1480);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v11 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  v15 = sub_100084528(&qword_10026F898, &qword_1001F1488);
  v27[0] = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  (*(v12 + 16))(v14, v28, v11);
  sub_1000885F4(&qword_10026F8A0, &unk_10026F470, &unk_1001F5600, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  v28 = v11;
  sub_1001C6218();
  v27[2] = sub_1000885F4(&unk_10026F8A8, &qword_10026F898, &qword_1001F1488, &protocol conformance descriptor for CRDictionary<A, B>.Iterator);
  sub_1001C6868();
  v18 = v4;
  v21 = *(v5 + 48);
  v19 = v5 + 48;
  v20 = v21;
  if (v21(v10, 1, v4) != 1)
  {
    do
    {
      sub_10009AE58(v10, v7, &qword_10026F888, &qword_1001F1478);
      v22 = v19;
      v23 = v18;
      v24 = *v7;
      v25 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
      (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
      v31 = v24;
      sub_1001C5BB8();
      sub_10008875C(v7, &qword_10026F888, &qword_1001F1478);
      sub_1001C6868();
      v18 = v23;
      v19 = v22;
    }

    while (v20(v10, 1, v18) != 1);
  }

  return (*(v27[0] + 8))(v17, v15);
}

uint64_t sub_1000A07B0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v28 = a1;
  v2 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v2 - 8);
  v29 = v27 - v3;
  v4 = sub_100084528(&qword_10026F858, &unk_1001F8AA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v27 - v6);
  v8 = sub_100084528(&qword_10026F860, &unk_1001F1460);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - v9;
  v11 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  v15 = sub_100084528(&qword_10026F868, &unk_1001F9620);
  v27[0] = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  (*(v12 + 16))(v14, v28, v11);
  sub_1000885F4(&qword_10026F870, &qword_10026F830, &qword_1001F0E80, &protocol conformance descriptor for CRDictionary_v1<A, B>);
  v28 = v11;
  sub_1001C6218();
  v27[2] = sub_1000885F4(&qword_10026F878, &qword_10026F868, &unk_1001F9620, &protocol conformance descriptor for CRDictionary<A, B>.Iterator);
  sub_1001C6868();
  v18 = v4;
  v21 = *(v5 + 48);
  v19 = v5 + 48;
  v20 = v21;
  if (v21(v10, 1, v4) != 1)
  {
    do
    {
      sub_10009AE58(v10, v7, &qword_10026F858, &unk_1001F8AA0);
      v22 = v19;
      v23 = v18;
      v24 = *v7;
      v25 = sub_1001C4CA8();
      (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
      v31 = v24;
      type metadata accessor for ReadingHistoryModel(0);
      sub_1001C5BB8();
      sub_10008875C(v7, &qword_10026F858, &unk_1001F8AA0);
      sub_1001C6868();
      v18 = v23;
      v19 = v22;
    }

    while (v20(v10, 1, v18) != 1);
  }

  return (*(v27[0] + 8))(v17, v15);
}

uint64_t sub_1000A0C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v6 = __chkstk_darwin(v5 - 8);
  v39 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v36[-v8];
  v10 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v36[-v14];
  v16 = type metadata accessor for ReadingHistory.Streak(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10009ADF0(a2, v15, &qword_10026F508, &qword_1001F1150);
  v20 = *(v17 + 48);
  if (v20(v15, 1, v16) == 1)
  {
    v21 = &qword_10026F508;
    v22 = &qword_1001F1150;
    v23 = v15;
LABEL_12:
    sub_10008875C(v23, v21, v22);
    return sub_1000B344C(a1, v40, type metadata accessor for ReadingHistoryModel);
  }

  sub_1000B390C(v15, v19, type metadata accessor for ReadingHistory.Streak);
  v24 = *&v19[*(v16 + 20)];
  sub_1001ABED4(v19, v13);
  if (v20(v13, 1, v16) == 1)
  {
    sub_10008875C(v13, &qword_10026F508, &qword_1001F1150);
    if (v24 >= 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1000B2E68(v19, type metadata accessor for ReadingHistory.Streak);
    return sub_1000B344C(a1, v40, type metadata accessor for ReadingHistoryModel);
  }

  v35 = *&v13[*(v16 + 20)];
  sub_1000B2E68(v13, type metadata accessor for ReadingHistory.Streak);
  if (v35 >= v24)
  {
    goto LABEL_10;
  }

LABEL_5:
  type metadata accessor for ReadingHistoryModel(0);
  v41 = v24;
  v25 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  sub_1001C5BA8();
  v26 = sub_1001C4CA8();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v9, 1, v26) != 1)
  {
    sub_1000B2E68(v19, type metadata accessor for ReadingHistory.Streak);
    v21 = &unk_10026FC70;
    v22 = &unk_1001F1430;
    v23 = v9;
    goto LABEL_12;
  }

  v38 = v25;
  sub_10008875C(v9, &unk_10026FC70, &unk_1001F1430);
  v37 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v28 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001F0660;
  *(v29 + 56) = &type metadata for Int;
  *(v29 + 64) = &protocol witness table for Int;
  *(v29 + 32) = v24;
  v30 = sub_1001C4C08();
  v32 = v31;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = sub_100084570();
  *(v29 + 72) = v30;
  *(v29 + 80) = v32;
  sub_1001C5118(v37, &_mh_execute_header, v28, "🏆 New streak record: %d day streak on %@", 43, 0, v29);

  sub_1000B344C(a1, v40, type metadata accessor for ReadingHistoryModel);
  v33 = v39;
  (*(v27 + 16))(v39, v19, v26);
  (*(v27 + 56))(v33, 0, 1, v26);
  v41 = v24;
  sub_1001C5BB8();
  return sub_1000B2E68(v19, type metadata accessor for ReadingHistory.Streak);
}

uint64_t sub_1000A1170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v149 = *(v141 - 8);
  __chkstk_darwin(v141);
  v140 = v127 - v6;
  v7 = type metadata accessor for ReadingHistoryMonth(0);
  __chkstk_darwin(v7 - 8);
  v139 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100084528(&qword_10026F880, &qword_1001F1470);
  __chkstk_darwin(v9 - 8);
  v170 = v127 - v10;
  v11 = sub_100084528(&unk_10026F8F0, &unk_1001F14C0);
  __chkstk_darwin(v11 - 8);
  v138 = v127 - v12;
  v158 = sub_1001C4D48();
  v148 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v14 - 8);
  v156 = v127 - v15;
  v16 = type metadata accessor for ReadingHistoryDay(0);
  v146 = *(v16 - 8);
  __chkstk_darwin(v16);
  v155 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v19 = __chkstk_darwin(v18 - 8);
  v131 = v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v135 = v127 - v21;
  v22 = sub_1001C4D68();
  v174 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v171 = v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v173 = v127 - v25;
  v26 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v26 - 8);
  v175 = v127 - v27;
  v28 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v28 - 8);
  v169 = v127 - v29;
  v168 = sub_1001C4948();
  v30 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v32 - 8);
  v34 = v127 - v33;
  v177 = sub_1001C4CA8();
  v142 = *(v177 - 8);
  v35 = __chkstk_darwin(v177);
  v37 = v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35);
  v162 = v127 - v39;
  v40 = __chkstk_darwin(v38);
  v160 = v127 - v41;
  v42 = __chkstk_darwin(v40);
  v134 = v127 - v43;
  __chkstk_darwin(v42);
  v166 = v127 - v44;
  v159 = a1;
  v179 = a1;

  v45 = sub_1000B07A4(sub_1000B3974, v178, a2);
  v46 = v45;
  v47 = v45[2];
  if (!v47)
  {
    goto LABEL_4;
  }

  v48 = sub_10012B554(v45[2], 0);
  v176 = sub_10012C0C8(v180, v48 + 2, v47, v46);
  v172 = v180[0];
  v165 = v180[1];
  v164 = v180[2];
  v163 = v180[3];
  v161 = v180[4];

  sub_100005064(v172);
  if (v176 != v47)
  {
    __break(1u);
LABEL_4:
    v48 = _swiftEmptyArrayStorage;
  }

  v180[0] = v48;
  sub_1000AD7B0(v180);
  v172 = v37;
  v154 = v16;
  v133 = a3;

  v49 = *(v180[0] + 2);
  v163 = v22;
  v150 = v180[0];
  if (v49)
  {
    v164 = (v174 + 56);
    v161 = (v174 + 8);
    v153 = (v30 + 8);
    v152 = (v142 + 48);
    v165 = (v142 + 32);
    v151 = (v142 + 56);
    v50 = v180[0] + 40;
    v176 = _swiftEmptyArrayStorage;
    while (1)
    {
      v51 = *(v50 - 1);
      v52 = 100 * v51;
      if ((v51 * 100) >> 64 != (100 * v51) >> 63)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);

        __break(1u);
        return result;
      }

      if (__OFADD__(v52, *v50))
      {
        goto LABEL_53;
      }

      if (v52 + *v50 <= 9999)
      {
        (*v151)(v34, 1, 1, v177);
      }

      else
      {
        (*v164)(v169, 1, 1, v22);
        v53 = sub_1001C4D78();
        (*(*(v53 - 8) + 56))(v175, 1, 1, v53);
        v54 = v167;
        sub_1001C4938();
        v55 = v173;
        sub_1001C4CD8();
        sub_1001C4D18();
        (*v161)(v55, v22);
        (*v153)(v54, v168);
        v56 = v177;
        if ((*v152)(v34, 1, v177) != 1)
        {
          v57 = *v165;
          (*v165)(v166, v34, v56);
          v58 = v176;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1000AE458(0, v58[2] + 1, 1, v58, &qword_10026F900, &qword_1001F14D0, &type metadata accessor for Date);
          }

          v60 = v58[2];
          v59 = v58[3];
          v176 = v58;
          if (v60 >= v59 >> 1)
          {
            v176 = sub_1000AE458((v59 > 1), v60 + 1, 1, v176, &qword_10026F900, &qword_1001F14D0, &type metadata accessor for Date);
          }

          v61 = v176;
          v176[2] = v60 + 1;
          v57(&v61[((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v60], v166, v177);
          v22 = v163;
          goto LABEL_9;
        }
      }

      sub_10008875C(v34, &unk_10026FC70, &unk_1001F1430);
LABEL_9:
      v50 += 16;
      if (!--v49)
      {
        goto LABEL_20;
      }
    }
  }

  v176 = _swiftEmptyArrayStorage;
LABEL_20:

  v62 = v176[2];
  if (!v62)
  {
    v126 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v126 - 8) + 56))(v133, 1, 1, v126);
  }

  v63 = v142;
  v64 = v176 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
  v65 = *(v142 + 16);
  v167 = (v142 + 16);
  v168 = v64;
  v166 = v65;
  (v65)(v134);
  v66 = v173;
  sub_1001C4CD8();
  v67 = v160;
  sub_1001C4BE8();
  v68 = sub_1001AC6B4(v67, 1);
  v161 = *(v63 + 8);
  (v161)(v67, v177);
  v69 = v174 + 8;
  v70 = *(v174 + 8);
  v70(v66, v22);
  sub_1001C4CD8();
  sub_1001C4BE8();
  v71 = v177;
  v174 = v69;
  v169 = v70;
  v70(v66, v22);
  v72 = type metadata accessor for ReadingHistory.Streak(0);
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v75 = v73 + 56;
  v132 = v72;
  v128 = v74;
  v74(v135, 1, 1);
  v76 = 0;
  v175 = (v63 + 8);
  v153 = (v63 + 32);
  v152 = (v148 + 104);
  v151 = (v148 + 8);
  v137 = (v149 + 16);
  LODWORD(v150) = enum case for Calendar.Component.year(_:);
  v136 = (v149 + 8);
  v147 = (v146 + 7);
  LODWORD(v149) = enum case for Calendar.Component.month(_:);
  v146 += 6;
  v127[1] = v75;
  v130 = (v75 - 8);
  LODWORD(v148) = enum case for Calendar.Component.day(_:);
  v165 = v62;
  v129 = v62 - 1;
LABEL_22:
  v77 = v76;
  v78 = v162;
  v79 = v161;
  do
  {
    if (v77 >= v176[2])
    {
      goto LABEL_54;
    }

    v80 = (v77 + 1);
    v81 = v172;
    (v166)(v172, v168 + *(v63 + 72) * v77, v71);
    if (sub_1001C4C48())
    {
      v82 = v78;
      v83 = v173;
      sub_1001C4CD8();
      v84 = v160;
      sub_1001C4BF8();
      v85 = v177;
      (v169)(v83, v22);
      (v79)(v82, v85);
      v143 = *v153;
      (v143)(v82, v84, v85);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_58;
      }

      v164 = v68 + 1;
      v144 = v77;
      v145 = v77 + 1;
      while (1)
      {
        sub_1001C4CD8();
        v86 = *v152;
        v87 = v157;
        v88 = v158;
        (*v152)(v157, v150, v158);
        v89 = sub_1001C4D58();
        v90 = *v151;
        (*v151)(v87, v88);
        v86(v87, v149, v88);
        v91 = sub_1001C4D58();
        (v90)(v87, v88);
        v86(v87, v148, v88);
        v92 = sub_1001C4D58();
        (v90)(v87, v88);
        v93 = 100 * v89;
        if ((v89 * 100) >> 64 != (100 * v89) >> 63)
        {
          goto LABEL_55;
        }

        v94 = __OFADD__(v93, v91);
        v95 = (v93 + v91);
        v96 = v156;
        if (v94)
        {
          goto LABEL_56;
        }

        v180[0] = v95;
        sub_100084528(&unk_10026F470, &unk_1001F5600);
        v97 = v170;
        sub_1001C5BA8();
        v98 = sub_100084528(&unk_10026ED30, &unk_1001F1490);
        v99 = *(v98 - 8);
        if ((*(v99 + 48))(v97, 1, v98) == 1)
        {
          v22 = v163;
          (v169)(v171, v163);
          sub_10008875C(v170, &qword_10026F880, &qword_1001F1470);
          v100 = 1;
          v101 = v154;
          v76 = v145;
          v102 = v144;
        }

        else
        {
          v103 = v170;
          v104 = v139;
          sub_1001C5D88();
          (*(v99 + 8))(v103, v98);
          v105 = v140;
          v106 = v141;
          (*v137)(v140, v104, v141);
          sub_1000B2E68(v104, type metadata accessor for ReadingHistoryMonth);
          v180[0] = v92;
          v107 = v138;
          sub_1001C5BA8();
          (*v136)(v105, v106);
          v108 = sub_100084528(&qword_10026ED18, &unk_1001F06E0);
          v109 = *(v108 - 8);
          v110 = (*(v109 + 48))(v107, 1, v108);
          v76 = v145;
          v102 = v144;
          if (v110 == 1)
          {
            v22 = v163;
            (v169)(v171, v163);
            sub_10008875C(v107, &unk_10026F8F0, &unk_1001F14C0);
            v100 = 1;
          }

          else
          {
            sub_1001C5D88();
            v22 = v163;
            (v169)(v171, v163);
            (*(v109 + 8))(v107, v108);
            v100 = 0;
          }

          v101 = v154;
        }

        (*v147)(v96, v100, 1, v101);
        v111 = (*v146)(v96, 1, v101);
        v112 = v155;
        v113 = v164;
        if (v111 == 1)
        {
          sub_10008875C(v96, &qword_100273DA0, &qword_1001F7E50);
          goto LABEL_43;
        }

        sub_1000B390C(v96, v155, type metadata accessor for ReadingHistoryDay);
        v114 = sub_1001C5E48();
        sub_100084528(&qword_10026F4E0, &unk_1001F1140);
        sub_1001C56C8();
        if (v114 < v180[0])
        {
          break;
        }

        v94 = __OFADD__(v113, 1);
        v115 = (v113 + 1);
        v116 = v161;
        if (v94)
        {
          goto LABEL_57;
        }

        v164 = v115;
        v117 = v173;
        sub_1001C4CD8();
        v118 = v160;
        v119 = v162;
        sub_1001C4BF8();
        (v169)(v117, v22);
        sub_1000B2E68(v112, type metadata accessor for ReadingHistoryDay);
        v120 = v177;
        (v116)(v119, v177);
        (v143)(v119, v118, v120);
      }

      sub_1000B2E68(v112, type metadata accessor for ReadingHistoryDay);
LABEL_43:
      v121 = v135;
      v122 = v132;
      if ((*v130)(v135, 1, v132))
      {
        if (v113 >= 1)
        {
LABEL_45:
          v123 = v173;
          sub_1001C4CD8();
          v124 = v131;
          sub_1001C4BE8();
          (v169)(v123, v22);
          v71 = v177;
          (v161)(v172, v177);
          *(v124 + *(v132 + 20)) = v113;
          v128(v124, 0, 1);
          sub_1000B36A8(v124, v135, &qword_10026F508, &qword_1001F1150);
LABEL_48:
          v63 = v142;
          v68 = 0;
          if (v129 != v102)
          {
            goto LABEL_22;
          }

          v78 = v162;
          v79 = v161;
          goto LABEL_50;
        }
      }

      else if (*(v121 + *(v122 + 20)) < v113)
      {
        goto LABEL_45;
      }

      v71 = v177;
      (v161)(v172, v177);
      goto LABEL_48;
    }

    (v79)(v81, v71);
    ++v77;
  }

  while (v165 != v80);

LABEL_50:
  (v79)(v78, v71);
  (v79)(v134, v71);
  return sub_10009AE58(v135, v133, &qword_10026F508, &qword_1001F1150);
}

uint64_t sub_1000A28D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v13 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001F0CF0;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100084570();
  *(v14 + 64) = v15;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  v16 = sub_10009C048();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v15;
  *(v14 + 72) = v16;
  *(v14 + 80) = v17;
  v18 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v19 = 0x676E6964616F6CLL;
  if (*(a2 + *(v18 + 44)))
  {
    v19 = 0x7964616572;
  }

  v20 = 0xE700000000000000;
  if (*(a2 + *(v18 + 44)))
  {
    v20 = 0xE500000000000000;
  }

  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v15;
  *(v14 + 112) = v19;
  *(v14 + 120) = v20;
  v21 = sub_1001578DC();
  *(v14 + 176) = &type metadata for String;
  *(v14 + 184) = v15;
  *(v14 + 152) = v21;
  *(v14 + 160) = v22;
  sub_1001C5118(v32, &_mh_execute_header, v13, "Update reason: %@ - %@; loaded: %@, lastSource: %@", 50, 2, v14);

  sub_1000B344C(a1, v12, type metadata accessor for ReadingHistoryDataStore.State);
  v23 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1000B3710(v12, v5 + v23, type metadata accessor for ReadingHistoryDataStore.State);
  swift_endAccess();
  sub_10009C434();
  v24 = sub_1000B2E68(v12, type metadata accessor for ReadingHistoryDataStore.State);
  v25 = *(v5 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  __chkstk_darwin(v24);
  *&v31[-16] = a2;
  v26 = *(v25 + 16);
  v27 = swift_allocObject();
  v27[2] = sub_10009B018;
  v27[3] = &v31[-32];
  v27[4] = v25;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10009B304;
  *(v28 + 24) = v27;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243E90;
  v29 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A2CA8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v156 = a3;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v4 - 8);
  v155 = (&v132 - v5);
  v159 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v159);
  v152 = (&v132 - v6);
  v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v8 = __chkstk_darwin(v7 - 8);
  v147 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v148 = &v132 - v10;
  v158 = type metadata accessor for ReadingHistory.Streak(0);
  v154 = *(v158 - 8);
  v11 = __chkstk_darwin(v158);
  v149 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v150 = &v132 - v13;
  v157 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v14 = __chkstk_darwin(v157);
  v151 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v153 = (&v132 - v16);
  v17 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = (&v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18);
  v23 = &v132 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v132 - v25;
  __chkstk_darwin(v24);
  v28 = (&v132 - v27);
  v29 = type metadata accessor for ReadingHistoryModel(0);
  v30 = __chkstk_darwin(v29);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v132 - v34;
  __chkstk_darwin(v33);
  v37 = &v132 - v36;
  v38 = sub_1001C4CA8();
  v39 = __chkstk_darwin(v38);
  v40 = __chkstk_darwin(v39);
  v41 = __chkstk_darwin(v40);
  result = __chkstk_darwin(v41);
  v49 = &v132 - v48;
  v50 = *(a1 + 8);
  v51 = *(a1 + 32);
  v52 = *(a1 + 41);
  if (v52)
  {
    v53 = *(a1 + 32);
  }

  else
  {
    v53 = *(a1 + 8);
  }

  if (*(v45 + 136) != v53)
  {
    v146 = v37;
    v143 = v26;
    v141 = v23;
    v139 = v20;
    v140 = v29;
    v54 = v158;
    v142 = v32;
    v145 = v35;
    v144 = v28;
    v55 = v159;
    v56 = *(a1 + 16);
    if (v52)
    {
      v56 = *(a1 + 40);
    }

    if (v56 == 3)
    {
      *(v45 + 136) = v53;
      v57 = v45 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
      v58 = result;
      v59 = v46;
      swift_beginAccess();
      (*(v59 + 16))(v49, v57 + *(v157 + 24), v58);
      v60 = v146;
      sub_1000B344C(v57, v146, type metadata accessor for ReadingHistoryModel);
      ReadingHistoryModel.readingDay(for:)(v49);
      LODWORD(v57) = v61;
      sub_1000B2E68(v60, type metadata accessor for ReadingHistoryModel);
      result = (*(v59 + 8))(v49, v58);
      if (v57 == 2)
      {
        *v156 = 1;
      }

      return result;
    }

    if ((v52 & 1) == 0)
    {
      *(v45 + 136) = v50;
      return result;
    }

    if (!*(a1 + 40))
    {
      *(v45 + 136) = v51;
      return result;
    }

    v62 = v145;
    v63 = v157;
    if (*(a1 + 40) == 1)
    {
      v136 = v44;
      v132 = v43;
      v134 = v45;
      v64 = v45 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
      v65 = v47;
      v66 = result;
      v67 = v46;
      swift_beginAccess();
      v68 = v63[6];
      v135 = v67;
      v69 = *(v67 + 16);
      v138 = v65;
      v156 = v66;
      v137 = v67 + 16;
      v69(v65, v64 + v68, v66);
      sub_1000B344C(v64, v62, type metadata accessor for ReadingHistoryModel);
      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v70 = v144;
        if (v51 > -9.22337204e18)
        {
          v71 = v138;
          if (v51 < 9.22337204e18)
          {
            v72 = v62;
            ReadingHistoryModel.setGoal(_:date:)(v51, v138);
            type metadata accessor for ReadingHistoryDataStore(0);
            v73 = v153;
            sub_1000B344C(v64, v153, type metadata accessor for ReadingHistoryDataStore.State);
            sub_10009DDF4(v73, v72, v71, v70);
            sub_1000B2E68(v73, type metadata accessor for ReadingHistoryDataStore.State);
            v74 = v70;
            v75 = v146;
            sub_1000A0C18(v72, v74, v146);
            sub_1000B2E68(v72, type metadata accessor for ReadingHistoryModel);
            sub_1000B390C(v75, v72, type metadata accessor for ReadingHistoryModel);
            v76 = v136;
            v153 = v69;
            v69(v136, v71, v156);
            v77 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v76);
            v146 = v78;
            v79 = v143;
            sub_10009ADF0(v64 + v63[5], v143, &qword_10026F508, &qword_1001F1150);
            v80 = *(v154 + 48);
            v81 = v80(v79, 1, v54);
            v133 = v64;
            if (v81 == 1)
            {
              v82 = &qword_10026F508;
              v83 = &qword_1001F1150;
              v84 = v79;
LABEL_19:
              sub_10008875C(v84, v82, v83);
LABEL_20:
              v69 = v152;
LABEL_21:
              v63 = v155;
              v85 = v55;
LABEL_41:
              v111 = v151;
              sub_1000B344C(v145, v151, type metadata accessor for ReadingHistoryModel);
              v112 = v157;
              sub_10009ADF0(v144, v111 + *(v157 + 20), &qword_10026F508, &qword_1001F1150);
              v113 = v138;
              v153(v111 + *(v112 + 24), v138, v156);
              sub_1001ABED4(v113, (v111 + *(v112 + 28)));
              v114 = v134;

              sub_1001C6688();

              v115 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
              (*(*(v115 - 8) + 56))(v63, 1, 2, v115);
              sub_1000B3710(v111, v69, type metadata accessor for ReadingHistoryModel);
              sub_1000B36A8(v63, v69 + *(v85 + 48), &unk_10026FC40, &qword_1001F0E90);
              sub_1000A28D4(v111, v69, 0xD000000000000015, 0x80000001001FF6A0);
              *(v114 + 136) = v51;
              sub_1000B3A90(v114 + 56, v160);
              v116 = v161;
              v117 = v162;
              sub_10009BB74(v160, v161);
              v118 = v142;
              sub_1000B344C(v133, v142, type metadata accessor for ReadingHistoryModel);
              (*(v117 + 48))(v118, v116, v117);
              sub_1000B2E68(v118, type metadata accessor for ReadingHistoryModel);
              sub_1000B2E68(v111, type metadata accessor for ReadingHistoryDataStore.State);
              sub_1000B2E68(v145, type metadata accessor for ReadingHistoryModel);
              (*(v135 + 8))(v138, v156);
              sub_10008E7BC(v160);
              sub_10008875C(v69, &unk_10026F420, &unk_1001F0E50);
              return sub_10008875C(v144, &qword_10026F508, &qword_1001F1150);
            }

            v86 = v150;
            sub_1000B390C(v79, v150, type metadata accessor for ReadingHistory.Streak);
            v87 = v64 + v63[7];
            v88 = v141;
            sub_10009ADF0(v87, v141, &qword_10026F508, &qword_1001F1150);
            if (v80(v88, 1, v54) == 1)
            {
              sub_1000B2E68(v86, type metadata accessor for ReadingHistory.Streak);
              sub_10008875C(v88, &qword_10026F508, &qword_1001F1150);
              v69 = v152;
              v63 = v155;
LABEL_40:
              v85 = v55;
              goto LABEL_41;
            }

            v89 = v149;
            sub_1000B390C(v88, v149, type metadata accessor for ReadingHistory.Streak);
            v90 = v136;
            v153(v136, v86, v156);
            v91 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v90);
            v63 = v155;
            if (v91 != v77 || v92 != v146)
            {
              sub_1000B2E68(v89, type metadata accessor for ReadingHistory.Streak);
              sub_1000B2E68(v86, type metadata accessor for ReadingHistory.Streak);
              v69 = v152;
              goto LABEL_40;
            }

            v93 = v77;
            v94 = v136;
            v153(v136, v89, v156);
            v95 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v94);
            v85 = v55;
            if (v95 != v77 || v96 != v146)
            {
              v119 = v89;
              goto LABEL_43;
            }

            v97 = v54;
            if (v80(v144, 1, v54) == 1)
            {
              goto LABEL_37;
            }

            v69 = v139;
            sub_10009ADF0(v144, v139, &qword_10026F508, &qword_1001F1150);
            result = v80(v69, 1, v54);
            if (result == 1)
            {
              __break(1u);
              return result;
            }

            v98 = v136;
            v153(v136, v69, v156);
            sub_1000B2E68(v69, type metadata accessor for ReadingHistory.Streak);
            v99 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v98);
            v101 = 100 * v99;
            if ((v99 * 100) >> 64 == (100 * v99) >> 63)
            {
              v102 = __OFADD__(v101, v100);
              v103 = v101 + v100;
              if (!v102)
              {
                v104 = 100 * v77;
                if ((v77 * 100) >> 64 == (100 * v77) >> 63)
                {
                  v102 = __OFADD__(v104, v146);
                  v105 = &v146[v104];
                  if (!v102)
                  {
                    v93 = v77;
                    v97 = v54;
                    if (v103 < v105)
                    {
LABEL_37:
                      v106 = *(v97 + 20);
                      v107 = v149;
                      v63 = *(v149 + v106);
                      v160[0] = v63;
                      v108 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
                      v109 = v148;
                      sub_1001C5BA8();
                      v110 = v135;
                      if ((*(v135 + 48))(v109, 1, v156) == 1)
                      {
                        sub_1000B2E68(v107, type metadata accessor for ReadingHistory.Streak);
                        sub_1000B2E68(v150, type metadata accessor for ReadingHistory.Streak);
                        v82 = &unk_10026FC70;
                        v83 = &unk_1001F1430;
                        v84 = v109;
                        goto LABEL_19;
                      }

                      v158 = v108;
                      v120 = *(v110 + 32);
                      v121 = v132;
                      v122 = v156;
                      v120(v132, v109, v156);
                      v123 = v136;
                      v153(v136, v121, v122);
                      if (_s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v123) != v93 || v124 != v146)
                      {
                        (*(v135 + 8))(v132, v156);
                        sub_1000B2E68(v107, type metadata accessor for ReadingHistory.Streak);
                        sub_1000B2E68(v150, type metadata accessor for ReadingHistory.Streak);
                        goto LABEL_20;
                      }

                      v54 = sub_1001C65B8();
                      v69 = v152;
                      if (qword_10026EBE8 == -1)
                      {
LABEL_47:
                        v154 = qword_1002711E8;
                        sub_100084528(&qword_10026FEE0, &unk_1001F0690);
                        v125 = swift_allocObject();
                        *(v125 + 16) = xmmword_1001F0660;
                        *(v125 + 56) = &type metadata for Int;
                        *(v125 + 64) = &protocol witness table for Int;
                        *(v125 + 32) = v63;
                        v126 = v149;
                        v127 = sub_1001C4C08();
                        v129 = v128;
                        *(v125 + 96) = &type metadata for String;
                        *(v125 + 104) = sub_100084570();
                        *(v125 + 72) = v127;
                        *(v125 + 80) = v129;
                        sub_1001C5118(v54, &_mh_execute_header, v154, "🗑 Removing streak record: %d day streak on %@", 48, 0, v125);

                        v130 = v135;
                        v131 = v156;
                        (*(v135 + 56))(v147, 1, 1, v156);
                        v160[0] = v63;
                        sub_1001C5BB8();
                        (*(v130 + 8))(v132, v131);
                        sub_1000B2E68(v126, type metadata accessor for ReadingHistory.Streak);
                        sub_1000B2E68(v150, type metadata accessor for ReadingHistory.Streak);
                        goto LABEL_21;
                      }

LABEL_57:
                      swift_once();
                      goto LABEL_47;
                    }

                    v119 = v149;
LABEL_43:
                    sub_1000B2E68(v119, type metadata accessor for ReadingHistory.Streak);
                    sub_1000B2E68(v150, type metadata accessor for ReadingHistory.Streak);
                    v69 = v152;
                    goto LABEL_41;
                  }

LABEL_56:
                  __break(1u);
                  goto LABEL_57;
                }

LABEL_55:
                __break(1u);
                goto LABEL_56;
              }

LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  return result;
}

uint64_t ReadingHistoryModel.readingDay(for:)(uint64_t a1)
{
  v1 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ReadingHistoryDay(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReadingHistoryModel.readingHistoryDay(for:)(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008875C(v3, &qword_100273DA0, &qword_1001F7E50);
    return 0;
  }

  else
  {
    sub_1000B390C(v3, v7, type metadata accessor for ReadingHistoryDay);
    v9 = sub_1001C5E48();
    sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    sub_1001C56C8();
    sub_1001C5E48();
    sub_1001C56C8();
    sub_1000B2E68(v7, type metadata accessor for ReadingHistoryDay);
    return v9;
  }
}

uint64_t sub_1000A4068(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v53 = type metadata accessor for ReadingHistoryModel(0);
  v3 = __chkstk_darwin(v53);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v49 - v5;
  v7 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v8 = __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v14 = __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v50 = &v49 - v18;
  v19 = __chkstk_darwin(v17);
  v49 = &v49 - v20;
  __chkstk_darwin(v19);
  v22 = &v49 - v21;
  v51 = a1;
  sub_10009ADF0(a1, v12, &unk_10026F820, &unk_1001F1440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_100084528(&qword_10026F838, &unk_1001F1920);
    sub_10009AE58(&v12[*(v23 + 48)], v22, &unk_10026F420, &unk_1001F0E50);
    sub_10008875C(v12, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    sub_10009AE58(v12, v22, &unk_10026F420, &unk_1001F0E50);
  }

  v24 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  v25 = v54;
  swift_beginAccess();
  sub_1000B344C(v25 + v24, v6, type metadata accessor for ReadingHistoryModel);
  sub_1000B3814(&unk_10026F840, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v26 = sub_1001C5948();
  sub_1000B2E68(v6, type metadata accessor for ReadingHistoryModel);
  if (v26)
  {
    sub_10009EA90(v22);
    sub_10009ADF0(v51, v10, &unk_10026F820, &unk_1001F1440);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
      v28 = v49;
      sub_10009AE58(v10, v49, &unk_10026F420, &unk_1001F0E50);
      v29 = &v10[v27];
      v30 = v50;
      sub_10009AE58(v29, v50, &unk_10026F420, &unk_1001F0E50);
      v31 = *(v13 + 44);
      if ((*(v28 + v31) & 1) == 0 && *(v30 + v31) == 1 && *(v25 + 152) == 1)
      {
        sub_1000A4740();
      }

      sub_10008875C(v30, &unk_10026F420, &unk_1001F0E50);
      v32 = v28;
      v33 = &unk_10026F420;
      v34 = &unk_1001F0E50;
    }

    else
    {
      v33 = &unk_10026F820;
      v34 = &unk_1001F1440;
      v32 = v10;
    }

    sub_10008875C(v32, v33, v34);
    sub_1000B3A90(v25 + 56, aBlock);
    v45 = v56;
    v46 = v57;
    sub_10009BB74(aBlock, v56);
    v47 = v25 + v24;
    v48 = v52;
    sub_1000B344C(v47, v52, type metadata accessor for ReadingHistoryModel);
    (*(v46 + 6))(v48, v45, v46);
    sub_1000B2E68(v48, type metadata accessor for ReadingHistoryModel);
    sub_10008E7BC(aBlock);
    return sub_10008875C(v22, &unk_10026F420, &unk_1001F0E50);
  }

  v35 = v22[*(v13 + 44)];
  v36 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange;

  sub_1001C6688();

  v37 = v16[*(v13 + 44)];
  v38 = sub_10008875C(v16, &unk_10026F420, &unk_1001F0E50);
  if (v35 == v37)
  {
    return sub_10008875C(v22, &unk_10026F420, &unk_1001F0E50);
  }

  v39 = *(v25 + v36);
  __chkstk_darwin(v38);
  *(&v49 - 2) = v22;
  v40 = *(v39 + 16);
  v41 = swift_allocObject();
  v41[2] = sub_1000B3664;
  v41[3] = &v49 - 4;
  v41[4] = v39;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_10009AD7C;
  *(v42 + 24) = v41;
  v57 = sub_1000B3DA0;
  v58 = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v56 = &unk_100243E18;
  v43 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v40, v43);
  _Block_release(v43);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if ((v40 & 1) == 0)
  {
    return sub_10008875C(v22, &unk_10026F420, &unk_1001F0E50);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A4740()
{
  v1 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v1 - 8);
  v55 = &v43 - v2;
  v52 = type metadata accessor for ReadingHistoryDataStore.State(0);
  __chkstk_darwin(v52);
  v56 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v43 - v5;
  v6 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v44 = type metadata accessor for ReadingHistoryModel(0);
  v9 = __chkstk_darwin(v44);
  v54 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v14 = __chkstk_darwin(v13);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = v0;
  v47 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange;

  sub_1001C6688();

  v19 = v17[*(v13 + 44)];
  result = sub_10008875C(v17, &unk_10026F420, &unk_1001F0E50);
  if (v19 == 1)
  {
    v21 = v18;
    *(v18 + 136) = 0x4072C00000000000;
    v22 = v18 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
    v48 = v22;
    swift_beginAccess();
    v43 = type metadata accessor for ReadingHistoryModel;
    sub_1000B344C(v22, v12, type metadata accessor for ReadingHistoryModel);
    v24 = v45;
    v23 = v46;
    (*(v45 + 16))(v8, v12, v46);
    sub_1000A034C(v8, v12);
    (*(v24 + 8))(v8, v23);
    v26 = v49;
    v25 = v50;
    v27 = v51;
    (*(v50 + 16))(v49, &v12[*(v44 + 20)], v51);
    sub_1000A07B0(v26, v12);
    (*(v25 + 8))(v26, v27);
    v28 = v56;
    sub_1000B344C(v12, v56, type metadata accessor for ReadingHistoryModel);
    v29 = v52;
    v30 = *(v52 + 20);
    v31 = type metadata accessor for ReadingHistory.Streak(0);
    v32 = *(*(v31 - 8) + 56);
    v32(v28 + v30, 1, 1, v31);
    v33 = *(v29 + 24);
    v34 = sub_1001C4CA8();
    (*(*(v34 - 8) + 16))(v28 + v33, v48 + v33, v34);
    v32(v28 + *(v29 + 28), 1, 1, v31);

    v35 = v53;
    sub_1001C6688();

    v36 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v37 = v55;
    (*(*(v36 - 8) + 56))(v55, 1, 2, v36);
    sub_1000B3710(v12, v35, type metadata accessor for ReadingHistoryModel);
    sub_1000B36A8(v37, v35 + *(v13 + 48), &unk_10026FC40, &qword_1001F0E90);
    sub_1000A28D4(v28, v35, 0x7461447261656C63, 0xE900000000000061);
    sub_1000B3A90(v21 + 56, v57);
    v38 = v58;
    v39 = v59;
    sub_10009BB74(v57, v58);
    v40 = v54;
    sub_1000B344C(v48, v54, v43);
    (*(v39 + 48))(v40, v38, v39);
    v41 = v21;
    sub_1000B2E68(v40, type metadata accessor for ReadingHistoryModel);
    sub_1000B2E68(v28, type metadata accessor for ReadingHistoryDataStore.State);
    sub_10008E7BC(v57);
    sub_10008875C(v35, &unk_10026F420, &unk_1001F0E50);
    result = sub_1000B2E68(v12, type metadata accessor for ReadingHistoryModel);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v18;
  }

  *(v41 + 152) = v42;
  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.handleSignificantDateChange()()
{
  v1 = v0;
  v43 = sub_1001C4D68();
  isa = v43[-1].isa;
  __chkstk_darwin(v43);
  v39 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1001C4CA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v42 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v6);
  v40 = &v33[-v8];
  v9 = __chkstk_darwin(v7);
  v44 = &v33[-v10];
  __chkstk_darwin(v9);
  v12 = &v33[-v11];
  v34 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v35 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001F0670;
  v14 = *(v0 + 120);
  v14();
  v15 = sub_1001C4C08();
  v17 = v16;
  v18 = *(v4 + 8);
  v37 = v4 + 8;
  v38 = v18;
  v18(v12, v3);
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100084570();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_1001C5118(v34, &_mh_execute_header, v35, "ReadingHistoryDataStore: Handle significant date change %@", 58, 2, v13);

  (v14)(v19);
  v20 = v39;
  sub_1001C4CD8();
  v21 = v44;
  v36 = v12;
  sub_1001C4CE8();
  (*(isa + 1))(v20, v43);
  v43 = *(v1 + 144);
  v22 = *(v4 + 16);
  v23 = v40;
  v22(v40, v21, v3);
  v24 = v42;
  v22(v42, v12, v3);
  v25 = *(v4 + 80);
  v26 = (v25 + 24) & ~v25;
  v27 = (v5 + v25 + v26) & ~v25;
  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  v29 = *(v4 + 32);
  v29(v28 + v26, v23, v3);
  v29(v28 + v27, v24, v3);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000B2DB8;
  *(v30 + 24) = v28;
  aBlock[4] = sub_1000B2E48;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_1002434C0;
  v31 = _Block_copy(aBlock);

  dispatch_sync(v43, v31);
  _Block_release(v31);
  v32 = v38;
  v38(v21, v3);
  v32(v36, v3);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }
}

uint64_t sub_1000A53E0(uint64_t a1, char *a2, char *a3)
{
  v75 = a3;
  v80 = a2;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v4 - 8);
  v85 = &v71 - v5;
  v6 = type metadata accessor for ReadingHistoryModel(0);
  v7 = __chkstk_darwin(v6 - 8);
  v87 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = &v71 - v10;
  __chkstk_darwin(v9);
  v77 = &v71 - v11;
  v88 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v12 = __chkstk_darwin(v88);
  v86 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = (&v71 - v14);
  v15 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v16 = __chkstk_darwin(v15 - 8);
  v74 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v79 = &v71 - v19;
  v20 = __chkstk_darwin(v18);
  v76 = &v71 - v21;
  v22 = __chkstk_darwin(v20);
  v90 = &v71 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = (&v71 - v25);
  __chkstk_darwin(v24);
  v28 = &v71 - v27;
  v29 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v30 = __chkstk_darwin(v29);
  v89 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v71 - v32;
  v81 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange;
  v34 = a1;

  sub_1001C6688();

  v82 = v29;
  LODWORD(a1) = v33[*(v29 + 44)];
  sub_10008875C(v33, &unk_10026F420, &unk_1001F0E50);
  if (a1 == 1)
  {
    v73 = 0;
    v72 = v34;
    v35 = v34 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
    swift_beginAccess();
    v36 = v88;
    v37 = v35 + *(v88 + 20);
    v83 = v28;
    sub_10009ADF0(v37, v28, &qword_10026F508, &qword_1001F1150);
    v38 = type metadata accessor for ReadingHistoryDataStore(0);
    v39 = v84;
    sub_1000B344C(v35, v84, type metadata accessor for ReadingHistoryDataStore.State);
    v40 = v77;
    sub_1000B344C(v35, v77, type metadata accessor for ReadingHistoryModel);
    v41 = v80;
    v71 = v38;
    sub_10009DDF4(v39, v40, v80, v26);
    sub_1000B2E68(v40, type metadata accessor for ReadingHistoryModel);
    sub_1000B2E68(v39, type metadata accessor for ReadingHistoryDataStore.State);
    v42 = v78;
    sub_1000B344C(v35, v78, type metadata accessor for ReadingHistoryModel);
    sub_10009ADF0(v35 + *(v36 + 28), v90, &qword_10026F508, &qword_1001F1150);
    v84 = v26;
    v43 = v76;
    sub_10009ADF0(v26, v76, &qword_10026F508, &qword_1001F1150);
    v44 = type metadata accessor for ReadingHistory.Streak(0);
    v45 = *(*(v44 - 8) + 48);
    if (v45(v43, 1, v44) == 1)
    {
      sub_10008875C(v43, &qword_10026F508, &qword_1001F1150);
      v46 = 0;
    }

    else
    {
      v46 = *(v43 + *(v44 + 20));
      sub_1000B2E68(v43, type metadata accessor for ReadingHistory.Streak);
    }

    v49 = v79;
    sub_10009ADF0(v83, v79, &qword_10026F508, &qword_1001F1150);
    if (v45(v49, 1, v44) == 1)
    {
      sub_10008875C(v49, &qword_10026F508, &qword_1001F1150);
      v50 = 0;
    }

    else
    {
      v50 = *(v49 + *(v44 + 20));
      sub_1000B2E68(v49, type metadata accessor for ReadingHistory.Streak);
    }

    v51 = v84;
    v52 = v90;
    v53 = v41;
    v54 = sub_1001AF394(v41, 1);
    v55 = v86;
    if (v50 < v46 || v54)
    {
      sub_1000A0C18(v42, v51, v40);
      sub_1000B2E68(v42, type metadata accessor for ReadingHistoryModel);
      sub_1000B390C(v40, v42, type metadata accessor for ReadingHistoryModel);
      v56 = v74;
      sub_1001ABED4(v75, v74);
      sub_10008875C(v52, &qword_10026F508, &qword_1001F1150);
      sub_10009AE58(v56, v52, &qword_10026F508, &qword_1001F1150);
    }

    sub_1000B344C(v42, v55, type metadata accessor for ReadingHistoryModel);
    v57 = v88;
    sub_10009ADF0(v51, v55 + *(v88 + 20), &qword_10026F508, &qword_1001F1150);
    v58 = *(v57 + 24);
    v59 = sub_1001C4CA8();
    (*(*(v59 - 8) + 16))(v55 + v58, v53, v59);
    sub_10009ADF0(v52, v55 + *(v57 + 28), &qword_10026F508, &qword_1001F1150);
    v60 = v72;

    v61 = v89;
    v62 = v82;
    v63 = v73;
    sub_1001C6688();

    v64 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    v65 = v85;
    (*(*(v64 - 8) + 56))(v85, 1, 2, v64);
    sub_1000B3710(v55, v61, type metadata accessor for ReadingHistoryModel);
    sub_1000B36A8(v65, v61 + *(v62 + 48), &unk_10026FC40, &qword_1001F0E90);
    sub_1000A28D4(v55, v61, 0xD00000000000001BLL, 0x80000001001FF7C0);
    sub_1000B3A90(v60 + 56, v91);
    v66 = v92;
    v67 = v93;
    sub_10009BB74(v91, v92);
    v68 = v35;
    v69 = v87;
    sub_1000B344C(v68, v87, type metadata accessor for ReadingHistoryModel);
    (*(v67 + 48))(v69, v66, v67);
    if (v63)
    {
    }

    sub_1000B2E68(v69, type metadata accessor for ReadingHistoryModel);
    sub_1000B2E68(v55, type metadata accessor for ReadingHistoryDataStore.State);
    sub_10008875C(v90, &qword_10026F508, &qword_1001F1150);
    sub_1000B2E68(v42, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v84, &qword_10026F508, &qword_1001F1150);
    sub_10008875C(v83, &qword_10026F508, &qword_1001F1150);
    sub_10008E7BC(v91);
    return sub_10008875C(v89, &unk_10026F420, &unk_1001F0E50);
  }

  else
  {
    v47 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v70 = v47;
      swift_once();
      v47 = v70;
    }

    return sub_1001C5118(v47, &_mh_execute_header, qword_1002711E8, "ReadingHistoryDataStore: Handle significant date change - model is not ready, skipping ", 87, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000A5E04(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v4 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v4 - 8);
  v44 = v38 - v5;
  v43 = type metadata accessor for ReadingHistoryDay(0);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1001C4D68();
  v7 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_10026F8B8, &unk_1001F8A90);
  __chkstk_darwin(v10 - 8);
  v12 = v38 - v11;
  v13 = sub_100084528(&qword_10026F8C0, &unk_1001F14A0);
  __chkstk_darwin(v13 - 8);
  v15 = v38 - v14;
  v16 = sub_1001C4948();
  v45 = *(v16 - 8);
  v46 = v16;
  __chkstk_darwin(v16);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v19 - 8);
  v21 = v38 - v20;
  v48 = sub_1001C4CA8();
  v22 = *(v48 - 8);
  result = __chkstk_darwin(v48);
  v40 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 100 * *a1;
  if ((*a1 * 100) >> 64 != v25 >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = a1[1];
  if (__OFADD__(v25, v26))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v25 + v26 <= 9999)
  {
    (*(v22 + 56))(v21, 1, 1, v48);
LABEL_6:
    v30 = &unk_10026FC70;
    v31 = &unk_1001F1430;
    v32 = v21;
LABEL_7:
    sub_10008875C(v32, v30, v31);
    return 0;
  }

  v27 = *(v7 + 56);
  v38[1] = v2;
  v27(v15, 1, 1, v47);
  v28 = sub_1001C4D78();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  sub_1001C4938();
  sub_1001C4CD8();
  sub_1001C4D18();
  (*(v7 + 8))(v9, v47);
  (*(v45 + 8))(v18, v46);
  v29 = v48;
  if ((*(v22 + 48))(v21, 1, v48) == 1)
  {
    goto LABEL_6;
  }

  v33 = v40;
  (*(v22 + 32))(v40, v21, v29);
  v34 = v44;
  ReadingHistoryModel.readingHistoryDay(for:)(v44);
  if ((*(v41 + 48))(v34, 1, v43) == 1)
  {
    (*(v22 + 8))(v33, v29);
    v30 = &qword_100273DA0;
    v31 = &qword_1001F7E50;
    v32 = v34;
    goto LABEL_7;
  }

  v35 = v34;
  v36 = v39;
  sub_1000B390C(v35, v39, type metadata accessor for ReadingHistoryDay);
  v37 = sub_1001C5E48();
  sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  sub_1001C56C8();
  sub_1000B2E68(v36, type metadata accessor for ReadingHistoryDay);
  (*(v22 + 8))(v33, v29);
  return v37 >= v49;
}

uint64_t ReadingHistoryDataStore.deinit()
{
  sub_10008875C(v0 + 16, &unk_10026F4D0, &unk_1001F1130);
  sub_10008E7BC((v0 + 56));

  sub_1000B2E68(v0 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryDataStore.State);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReadingHistoryDataStore.__deallocating_deinit()
{
  ReadingHistoryDataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t ReadingHistoryDataStore.addObserver(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v3 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  v9 = *(v8 + 16);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_10009A564;
  v10[4] = v7;
  v10[5] = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000B2EE8;
  *(v11 + 24) = v10;
  v14[4] = sub_1000B3DA0;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000906F4;
  v14[3] = &unk_100243560;
  v12 = _Block_copy(v14);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.addObserverWithEvent(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  v8 = *(v7 + 16);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000B3E58;
  *(v10 + 24) = v9;
  v13[4] = sub_1000B3DA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000906F4;
  v13[3] = &unk_1002435D8;
  v11 = _Block_copy(v13);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.removeObserver(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange);
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000B2EF4;
  *(v6 + 24) = v5;
  v9[4] = sub_1000B3DA0;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_100243650;
  v7 = _Block_copy(v9);
  swift_retain_n();
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.increment(date:by:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C4CA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *(v2 + 144);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000B2EFC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_1002436C8;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6D0C(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v6 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  __chkstk_darwin(v6 - 8);
  v29 = &v27 - v7;
  v8 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 136);
  v16 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  result = sub_1000B344C(a1 + v16, v14, type metadata accessor for ReadingHistoryModel);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v28 = v11;
  ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(a2, a3, v15);
  sub_100084528(&qword_10026F900, &qword_1001F14D0);
  v18 = sub_1001C4CA8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001F0670;
  (*(v19 + 16))(v21 + v20, a2, v18);
  sub_1000A719C(v21, v14, 0x6E656D6572636E69, 0xE900000000000074);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();
  v22 = v29;
  ReadingHistoryModel.readingHistoryDay(for:)(v29);
  if ((*(v9 + 48))(v22, 1, v8) == 1)
  {
    sub_1000B2E68(v14, type metadata accessor for ReadingHistoryModel);
    return sub_10008875C(v22, &qword_100273DA0, &qword_1001F7E50);
  }

  else
  {
    v23 = v22;
    v24 = v28;
    sub_1000B390C(v23, v28, type metadata accessor for ReadingHistoryDay);
    swift_beginAccess();
    if (*(a1 + 40))
    {
      sub_1000B3A90(a1 + 16, v30);
      swift_endAccess();
      v25 = v31;
      v26 = v32;
      sub_10009BB74(v30, v31);
      (*(v26 + 8))(a2, v24, v25, v26);
      sub_1000B2E68(v24, type metadata accessor for ReadingHistoryDay);
      sub_1000B2E68(v14, type metadata accessor for ReadingHistoryModel);
      return sub_10008E7BC(v30);
    }

    else
    {
      sub_1000B2E68(v24, type metadata accessor for ReadingHistoryDay);
      sub_1000B2E68(v14, type metadata accessor for ReadingHistoryModel);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1000A719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v59 = a1;
  v58[1] = *v4;
  v6 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v6 - 8);
  v63 = v58 - v7;
  v62 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v62);
  v68 = v58 - v8;
  v9 = type metadata accessor for ReadingHistoryModel(0);
  v10 = __chkstk_darwin(v9 - 8);
  v64 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = v58 - v13;
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  v16 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v17 = __chkstk_darwin(v16);
  v72 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v58 - v19;
  v21 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v22 = __chkstk_darwin(v21 - 8);
  v58[0] = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = (v58 - v24);
  v26 = sub_1001C4CA8();
  v69 = *(v26 - 8);
  v27 = v69;
  v28 = __chkstk_darwin(v26);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v58 - v31;
  v67 = v4;
  v33 = v4 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v61 = v16;
  v34 = *(v16 + 24);
  v35 = *(v27 + 16);
  v74 = v26;
  v70 = v35;
  v35(v32, (v33 + v34), v26);
  v71 = v33;
  sub_1000B344C(v33, v20, type metadata accessor for ReadingHistoryDataStore.State);
  v73 = v25;
  sub_10009DDF4(v20, a2, v32, v25);
  sub_1000B2E68(v20, type metadata accessor for ReadingHistoryDataStore.State);
  if (*(v59 + 16) == 1 && (v36 = v70, v37 = v74, v70(v30, (v59 + ((*(v69 + 80) + 32) & ~*(v69 + 80))), v74), v38 = _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v30), v40 = v39, v36(v30, v32, v37), v38 == _s14bookdatastored19ReadingHistoryModelV6DayKeyVyAE10Foundation4DateVcfC_0(v30)) && v40 == v41)
  {
    sub_1000B390C(a2, v15, type metadata accessor for ReadingHistoryModel);
    sub_1000A0C18(v15, v73, a2);
    sub_1000B2E68(v15, type metadata accessor for ReadingHistoryModel);
  }

  else
  {
    sub_1000B344C(v71, v15, type metadata accessor for ReadingHistoryModel);
    v42 = sub_1001ACEE4(a2);
    sub_1000B2E68(v15, type metadata accessor for ReadingHistoryModel);
    v43 = v58[0];
    sub_1000A1170(a2, v42, v58[0]);

    sub_1000B390C(a2, v15, type metadata accessor for ReadingHistoryModel);
    sub_1000A0C18(v15, v43, a2);
    sub_1000B2E68(v15, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v43, &qword_10026F508, &qword_1001F1150);
  }

  v44 = v60;
  sub_1000B390C(a2, v60, type metadata accessor for ReadingHistoryModel);
  v46 = v67;
  v45 = v68;
  if (*(v67 + 96) == 1)
  {
    v47 = v67[13];
    sub_1000B344C(v44, a2, type metadata accessor for ReadingHistoryModel);
    sub_1001B1130(v47);
    sub_1000B2E68(v44, type metadata accessor for ReadingHistoryModel);
  }

  else
  {
    sub_1000B390C(v44, a2, type metadata accessor for ReadingHistoryModel);
  }

  v48 = v72;
  sub_1000B344C(a2, v72, type metadata accessor for ReadingHistoryModel);
  v49 = v61;
  sub_10009ADF0(v73, v48 + *(v61 + 20), &qword_10026F508, &qword_1001F1150);
  v70((v48 + *(v49 + 24)), v32, v74);
  v50 = v32;
  sub_1001ABED4(v32, (v48 + *(v49 + 28)));

  v51 = v62;
  sub_1001C6688();

  v52 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v53 = v63;
  (*(*(v52 - 8) + 56))(v63, 1, 2, v52);
  sub_1000B3710(v48, v45, type metadata accessor for ReadingHistoryModel);
  sub_1000B36A8(v53, v45 + *(v51 + 48), &unk_10026FC40, &qword_1001F0E90);
  sub_1000A28D4(v48, v45, v65, v66);
  sub_1000B3A90((v46 + 7), v75);
  v54 = v76;
  v55 = v77;
  sub_10009BB74(v75, v76);
  v56 = v64;
  sub_1000B344C(v71, v64, type metadata accessor for ReadingHistoryModel);
  (*(v55 + 48))(v56, v54, v55);
  sub_1000B2E68(v56, type metadata accessor for ReadingHistoryModel);
  sub_1000B2E68(v72, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10008875C(v73, &qword_10026F508, &qword_1001F1150);
  (*(v69 + 8))(v50, v74);
  sub_10008E7BC(v75);
  return sub_10008875C(v45, &unk_10026F420, &unk_1001F0E50);
}

uint64_t ReadingHistoryDataStore.applyUpdate(update:)(void *a1)
{
  v3 = *(v1 + 144);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000B2F8C;
  *(v5 + 24) = v4;
  v9[4] = sub_1000B3DA0;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000906F4;
  v9[3] = &unk_100243740;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A7BA8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v45 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = v39 - v5;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v46 = v12;
  sub_1000B344C(a1 + v13, v12, type metadata accessor for ReadingHistoryModel);
  v14 = ReadingHistoryUpdate.days.getter();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = sub_10012B458(*(v14 + 16), 0);
    v18 = sub_10012C1C8(v47, &v17[(*(v7 + 80) + 32) & ~*(v7 + 80)], v16, v15);
    v19 = v47[0];
    v40 = v47[3];
    v41 = v47[2];
    v39[1] = v47[4];
    swift_bridgeObjectRetain_n();
    sub_100005064(v19);
    if (v18 == v16)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_5:
  v40 = a1;
  v47[0] = v17;
  sub_1000AD81C(v47);

  v41 = v47[0];
  v20 = *(v47[0] + 16);
  if (v20)
  {
    v23 = *(v7 + 16);
    v21 = v7 + 16;
    v22 = v23;
    v24 = v41 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v25 = *(v21 + 56);
    v26 = (v21 - 8);
    v42 = v15;
    v23(v9, v24, v6);
    while (1)
    {
      if (*(v15 + 16))
      {
        v27 = sub_100187AA4(v9);
        if (v28)
        {
          v29 = v44;
          sub_1000B344C(*(v15 + 56) + *(v45 + 72) * v27, v44, type metadata accessor for ReadingHistoryDay);
          v30 = v29;
          v31 = v25;
          v32 = v22;
          v33 = v6;
          v34 = v21;
          v35 = v43;
          sub_1000B390C(v30, v43, type metadata accessor for ReadingHistoryDay);
          ReadingHistoryModel.mergeDay(date:day:)(v9, v35);
          v36 = v35;
          v21 = v34;
          v6 = v33;
          v22 = v32;
          v25 = v31;
          v15 = v42;
          sub_1000B2E68(v36, type metadata accessor for ReadingHistoryDay);
        }
      }

      (*v26)(v9, v6);
      v24 += v25;
      if (!--v20)
      {
        break;
      }

      v22(v9, v24, v6);
    }
  }

  v37 = v46;
  sub_1000A719C(v41, v46, 0x647055796C707061, 0xEB00000000657461);

  return sub_1000B2E68(v37, type metadata accessor for ReadingHistoryModel);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearData()()
{
  v1 = *(v0 + 144);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000B2F94;
  *(v2 + 24) = v0;
  v4[4] = sub_1000B3DA0;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000906F4;
  v4[3] = &unk_100243790;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void static ReadingHistoryDataStore.clearCachedData(in:)(void *a1)
{
  v2 = sub_1001C5FE8();
  [a1 removeObjectForKey:v2];

  v3 = sub_1001C5FE8();
  [a1 setInteger:0 forKey:v3];
}

uint64_t sub_1000A8254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v4 = type metadata accessor for ReadingHistoryDataStore.State(0);
  return sub_10009ADF0(v3 + *(v4 + 28), a2, &qword_10026F508, &qword_1001F1150);
}

uint64_t sub_1000A8334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = a1 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v8 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v7 + *(v8 + 20), v6, &qword_10026F508, &qword_1001F1150);
  v9 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    result = sub_10008875C(v6, &qword_10026F508, &qword_1001F1150);
    v11 = 0;
  }

  else
  {
    v11 = *&v6[*(v9 + 20)];
    result = sub_1000B2E68(v6, type metadata accessor for ReadingHistory.Streak);
  }

  *a2 = v11;
  return result;
}

uint64_t sub_1000A8508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v47 = a2;
  v46 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v39 - v4;
  v41 = sub_1001C5E78();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_100273DA0, &qword_1001F7E50);
  v11 = __chkstk_darwin(v10 - 8);
  v48 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v43 = a1;
  sub_1000B344C(a1 + v21, v9, type metadata accessor for ReadingHistoryModel);
  ReadingHistoryModel.readingHistoryDay(for:)(v20);
  sub_1000B2E68(v9, type metadata accessor for ReadingHistoryModel);
  sub_10009ADF0(v20, v18, &qword_100273DA0, &qword_1001F7E50);
  v22 = type metadata accessor for ReadingHistoryDay(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v18, 1, v22) == 1)
  {
    sub_10008875C(v18, &qword_100273DA0, &qword_1001F7E50);
    v24 = 0;
  }

  else
  {
    v25 = v40;
    v26 = v41;
    (*(v5 + 16))(v40, v18, v41);
    sub_1000B2E68(v18, type metadata accessor for ReadingHistoryDay);
    v24 = sub_1001C5E48();
    (*(v5 + 8))(v25, v26);
  }

  sub_10009ADF0(v20, v15, &qword_100273DA0, &qword_1001F7E50);
  v27 = v23(v15, 1, v22);
  v28 = v48;
  if (v27 != 1)
  {
    v32 = *(v22 + 20);
    v47 = v24;
    v33 = v44;
    v34 = v42;
    v35 = v46;
    (*(v44 + 16))(v42, &v15[v32], v46);
    sub_1000B2E68(v15, type metadata accessor for ReadingHistoryDay);
    sub_1001C56C8();
    (*(v33 + 8))(v34, v35);
    v24 = v47;
    v31 = v49;
    goto LABEL_10;
  }

  result = sub_10008875C(v15, &qword_100273DA0, &qword_1001F7E50);
  v30 = *(v43 + 136);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v31 = v30;
LABEL_10:
  sub_10009ADF0(v20, v28, &qword_100273DA0, &qword_1001F7E50);
  if (v23(v28, 1, v22) == 1)
  {
    sub_10008875C(v20, &qword_100273DA0, &qword_1001F7E50);
    result = sub_10008875C(v28, &qword_100273DA0, &qword_1001F7E50);
    v36 = 0;
  }

  else
  {
    v37 = sub_1001C5E48();
    sub_1001C56C8();
    sub_10008875C(v20, &qword_100273DA0, &qword_1001F7E50);
    v36 = v37 >= v49;
    result = sub_1000B2E68(v28, type metadata accessor for ReadingHistoryDay);
  }

  v38 = v45;
  *v45 = v24;
  v38[1] = v31;
  *(v38 + 16) = v36;
  return result;
}

char *ReadingHistoryDataStore.readingHistory(range:)(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_1001C4CA8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v58 = &v45 - v8;
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = sub_1001C4D68();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v46 = v4;
  v19 = *(v4 + 16);
  v19(&v45 - v17, a1, v3);
  v19(&v18[*(v16 + 56)], v57, v3);
  v20 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1001C4CD8();
  isa = sub_1001C4D08().super.isa;
  v22 = *(v12 + 8);
  v22(v14, v11);
  [v20 setCalendar:isa];

  v23 = sub_1001C5FE8();
  [v20 setDateFormat:v23];

  sub_1001C4CD8();
  sub_1001C4CE8();
  v22(v14, v11);
  sub_1001C4CD8();
  v45 = v18;
  sub_1001C4CE8();
  v52 = v14;
  v53 = v12 + 8;
  v54 = v11;
  v50 = v22;
  v22(v14, v11);
  v24 = sub_1000B3814(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v57 = v3;
  v49 = v24;
  v25 = sub_1001C5FC8();
  if (v25)
  {

    v26 = *(v46 + 8);
    v27 = _swiftEmptyArrayStorage;
  }

  else
  {
    v51 = v20;
    v47 = *(v56 + 144);
    v48 = (v46 + 8);
    v46 += 32;
    v27 = _swiftEmptyArrayStorage;
    do
    {
      __chkstk_darwin(v25);
      *(&v45 - 2) = v28;
      *(&v45 - 1) = v10;
      sub_1001C6688();
      v29 = v59;
      v30 = v60;
      v31 = v61;
      v32 = sub_1001C4C38().super.isa;
      v33 = [v51 stringFromDate:v32];

      v34 = sub_1001C6018();
      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1000ADAF4(0, *(v27 + 2) + 1, 1, v27);
      }

      v38 = *(v27 + 2);
      v37 = *(v27 + 3);
      if (v38 >= v37 >> 1)
      {
        v27 = sub_1000ADAF4((v37 > 1), v38 + 1, 1, v27);
      }

      *(v27 + 2) = v38 + 1;
      v39 = &v27[40 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      *(v39 + 6) = v29;
      *(v39 + 7) = v30;
      v39[64] = v31;
      v40 = v52;
      sub_1001C4CD8();
      v41 = v55;
      sub_1001C4BF8();
      v50(v40, v54);
      v26 = *v48;
      v42 = v57;
      (*v48)(v10, v57);
      (*v46)(v10, v41, v42);
      v25 = sub_1001C5FC8();
    }

    while ((v25 & 1) == 0);
  }

  v43 = v57;
  v26(v58, v57);
  sub_10008875C(v45, &qword_10026F510, &qword_1001F1158);
  v26(v10, v43);
  return v27;
}

uint64_t ReadingHistoryDataStore.readingHistoryState(range:currentTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v40 = a4;
  v39 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v39);
  v41 = &v32 - v4;
  v34 = sub_1001C4D68();
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = *(v9 + 16);
  v19(&v32 - v17, v35, v8);
  v19(&v18[*(v13 + 56)], v36, v8);
  sub_1001C4CD8();
  v20 = v11;
  v33 = v11;
  sub_1001C4CE8();
  (*(v5 + 8))(v7, v34);
  v21 = v38;
  sub_1001C6688();
  v37 = v44;
  sub_1001C6688();
  v42 = v21;
  v43 = v20;
  sub_1001C6688();
  v39 = v44;
  v36 = v45;
  LODWORD(v35) = v46;
  sub_10009ADF0(v18, v16, &qword_10026F510, &qword_1001F1158);
  v22 = *(v13 + 56);
  v23 = ReadingHistoryDataStore.readingHistory(range:)(v16, &v16[v22]);
  sub_10008875C(v18, &qword_10026F510, &qword_1001F1158);
  v24 = *(v9 + 8);
  v24(&v16[v22], v8);
  v24(v16, v8);
  v25 = type metadata accessor for ReadingHistory.State(0);
  v26 = v25[5];
  v27 = type metadata accessor for ReadingHistory.Streak(0);
  v28 = v40;
  (*(*(v27 - 8) + 56))(v40 + v26, 1, 1, v27);
  *v28 = v37;
  sub_1000B36A8(v41, v28 + v26, &qword_10026F508, &qword_1001F1150);
  v29 = v28 + v25[6];
  v30 = v36;
  *v29 = v39;
  *(v29 + 1) = v30;
  v29[16] = v35;
  *(v28 + v25[7]) = v23;
  return (v24)(v33, v8);
}

uint64_t ReadingHistoryDataStore.readingHistoryModelSnapshot(currentTime:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v2 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v2 - 8);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  __chkstk_darwin(v4 - 8);
  v66 = &v56 - v5;
  v6 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v64 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v56 - v12;
  v14 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  v15 = __chkstk_darwin(v14 - 8);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v56 - v17;
  v19 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;

  sub_1001C6688();

  v22 = *(v19 + 48);
  v61 = v21[*(v19 + 44)];
  v63 = v18;
  sub_10009ADF0(&v21[v22], v18, &unk_10026FC40, &qword_1001F0E90);
  v23 = v68;
  v24 = ReadingHistoryModel.readingDay(for:)(v68);
  v26 = v25;
  LOBYTE(v18) = v27;
  sub_1001ABED4(v23, v8);
  v65 = v9;
  v28 = *(v9 + 20);
  v29 = type metadata accessor for ReadingHistory.Streak(0);
  v57 = *(*(v29 - 8) + 56);
  v57(&v13[v28], 1, 1, v29);
  *v13 = v24;
  *(v13 + 1) = v26;
  v13[16] = v18;
  v62 = v13;
  v30 = &v13[v28];
  v31 = v60;
  sub_1000B36A8(v8, v30, &qword_10026F508, &qword_1001F1150);
  sub_10009ADF0(&v21[v22], v31, &unk_10026FC40, &qword_1001F0E90);
  v32 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  if ((*(*(v32 - 8) + 48))(v31, 2, v32))
  {
    sub_10008875C(v21, &unk_10026F420, &unk_1001F0E50);
    v33 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v34 = v67;
    v35 = v62;
    sub_1000B344C(v62, &v67[v33[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v36 = v65;
    v37 = *(v64 + 56);
    v38 = v66;
    v37(v66, 1, 1, v65);
    v39 = v33[7];
    v37(&v34[v39], 1, 1, v36);
    *v34 = v61;
    sub_10009AE58(v63, &v34[v33[5]], &unk_10026FC40, &qword_1001F0E90);
    sub_1000B36A8(v38, &v34[v39], &unk_10026F520, &unk_1001F1160);
  }

  else
  {
    v40 = v31;
    v41 = v58;
    sub_1000B390C(v40, v58, type metadata accessor for ReadingHistoryModel);
    v42 = v68;
    v60 = ReadingHistoryModel.readingDay(for:)(v68);
    v44 = v43;
    v46 = v45;
    sub_1001ABED4(v42, v8);
    sub_1000B2E68(v41, type metadata accessor for ReadingHistoryModel);
    sub_10008875C(v21, &unk_10026F420, &unk_1001F0E50);
    v47 = v65;
    v48 = *(v65 + 20);
    v49 = v59;
    v57(&v59[v48], 1, 1, v29);
    *v49 = v60;
    *(v49 + 8) = v44;
    *(v49 + 16) = v46;
    sub_1000B36A8(v8, v49 + v48, &qword_10026F508, &qword_1001F1150);
    v50 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v51 = v67;
    v35 = v62;
    sub_1000B344C(v62, &v67[v50[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v52 = v66;
    sub_1000B344C(v49, v66, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v53 = *(v64 + 56);
    v53(v52, 0, 1, v47);
    v54 = v50[7];
    v53(&v51[v54], 1, 1, v47);
    *v51 = v61;
    sub_10009AE58(v63, &v51[v50[5]], &unk_10026FC40, &qword_1001F0E90);
    sub_1000B36A8(v52, &v51[v54], &unk_10026F520, &unk_1001F1160);
    sub_1000B2E68(v49, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  }

  return sub_1000B2E68(v35, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
}

uint64_t sub_1000A9D4C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B3D9C;
  *(v3 + 24) = v1;
  v6[4] = sub_1000B3DA0;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000906F4;
  v6[3] = &unk_100243AF8;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A9E84()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 120))(v3);
  sub_1000AA0B4(v5, 0x646F547261656C63, 0xEA00000000007961);
  return (*(v2 + 8))(v5, v1);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearToday()()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + 120))(v3);
  sub_1000AA0B4(v5, 0x646F547261656C63, 0xEA00000000007961);
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_1000AA0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001C4CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 144);
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v11, v10, v7);
  *(v13 + v12) = v3;
  v14 = (v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000B39F4;
  *(v15 + 24) = v13;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243FD0;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AA308(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v49 = a2;
  v57 = a1;
  v5 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v5 - 8);
  v56 = &v46 - v6;
  v53 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v53);
  v51 = &v46 - v7;
  v8 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v9 = (v8 - 8);
  v10 = __chkstk_darwin(v8);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v14 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v14 - 8);
  v16 = (&v46 - v15);
  v17 = type metadata accessor for ReadingHistoryModel(0);
  v18 = __chkstk_darwin(v17 - 8);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v55 = &v46 - v21;
  __chkstk_darwin(v20);
  v23 = &v46 - v22;
  v24 = sub_1001C4CA8();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v29 = v9[8];
  v54 = v25;
  v47 = *(v25 + 16);
  v47(v27, v28 + v29, v24);
  v48 = type metadata accessor for ReadingHistoryModel;
  sub_1000B344C(v28, v23, type metadata accessor for ReadingHistoryModel);
  sub_1001B0290(v57);
  type metadata accessor for ReadingHistoryDataStore(0);
  sub_1000B344C(v28, v13, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10009DDF4(v13, v23, v27, v16);
  sub_1000B2E68(v13, type metadata accessor for ReadingHistoryDataStore.State);
  v30 = v55;
  sub_1000A0C18(v23, v16, v55);
  sub_1000B2E68(v23, type metadata accessor for ReadingHistoryModel);
  sub_1000B390C(v30, v23, type metadata accessor for ReadingHistoryModel);
  v31 = v50;
  sub_1000B344C(v23, v50, type metadata accessor for ReadingHistoryModel);
  v32 = v31 + v9[7];
  v57 = v16;
  sub_10009ADF0(v16, v32, &qword_10026F508, &qword_1001F1150);
  v33 = v31 + v9[8];
  v55 = v24;
  v47(v33, v27, v24);
  v34 = v27;
  v35 = v31;
  v36 = v51;
  sub_1001ABED4(v34, (v31 + v9[9]));
  v37 = v49;

  v38 = v53;
  sub_1001C6688();

  v39 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v40 = v56;
  (*(*(v39 - 8) + 56))(v56, 1, 2, v39);
  sub_1000B3710(v35, v36, type metadata accessor for ReadingHistoryModel);
  sub_1000B36A8(v40, v36 + *(v38 + 48), &unk_10026FC40, &qword_1001F0E90);
  sub_1000A28D4(v35, v36, v58, v59);
  sub_1000B3A90(v37 + 56, v60);
  v41 = v61;
  v42 = v62;
  sub_10009BB74(v60, v61);
  v43 = v28;
  v44 = v52;
  sub_1000B344C(v43, v52, v48);
  (*(v42 + 48))(v44, v41, v42);
  sub_1000B2E68(v44, type metadata accessor for ReadingHistoryModel);
  sub_1000B2E68(v35, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10008875C(v57, &qword_10026F508, &qword_1001F1150);
  sub_1000B2E68(v23, type metadata accessor for ReadingHistoryModel);
  (*(v54 + 8))(v34, v55);
  sub_10008E7BC(v60);
  return sub_10008875C(v36, &unk_10026F420, &unk_1001F0E50);
}

uint64_t ReadingHistoryDataStore.serializedModel(_:)(void *a1)
{
  v2 = v1;
  v12 = xmmword_1001F1120;
  v4 = *(v1 + 144);
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = v2;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000B3004;
  *(v6 + 24) = v5;
  v11[4] = sub_1000B3DA0;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000906F4;
  v11[3] = &unk_100243808;
  v7 = _Block_copy(v11);

  v8 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    sub_10009AD88(v12, *(&v12 + 1));
    sub_1000887BC(v10, *(&v10 + 1));

    return v10;
  }

  return result;
}

uint64_t sub_1000AAAF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001C5BD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1000B344C(a2 + v12, v11, type metadata accessor for ReadingHistoryModel);
  (*(v6 + 104))(v8, enum case for CRCodableVersion.version1(_:), v5);
  sub_1000B3814(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v13 = sub_1001C5C48();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  sub_1000B2E68(v11, type metadata accessor for ReadingHistoryModel);
  v16 = *a1;
  v17 = a1[1];
  *a1 = v13;
  a1[1] = v15;
  return sub_1000887BC(v16, v17);
}

Swift::Void __swiftcall ReadingHistoryDataStore.forceSummarizeAndPrune(year:month:)(Swift::Int year, Swift::Int month)
{
  v3 = v2;
  v6 = *(v2 + 144);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = year;
  v7[4] = month;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000B3010;
  *(v8 + 24) = v7;
  v10[4] = sub_1000B3DA0;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100243880;
  v9 = _Block_copy(v10);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_1000AAF88(char *a1, uint64_t a2)
{
  v51 = a1;
  v3 = *v2;
  v54 = a2;
  v55 = v3;
  v4 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  __chkstk_darwin(v4 - 8);
  v52 = &v45 - v5;
  v50 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v50);
  v49 = &v45 - v6;
  v7 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v8 = (v7 - 8);
  v9 = __chkstk_darwin(v7);
  v56 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v45 - v11;
  v12 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v12 - 8);
  v14 = (&v45 - v13);
  v15 = type metadata accessor for ReadingHistoryModel(0);
  v16 = __chkstk_darwin(v15 - 8);
  v48 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  v20 = sub_1001C4CA8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v25 = v8[8];
  v53 = v21;
  v26 = *(v21 + 16);
  v26(v23, v24 + v25, v20);
  v47 = v24;
  sub_1000B344C(v24, v19, type metadata accessor for ReadingHistoryModel);
  sub_1001B06A4(v51, v54);
  v27 = v24;
  v28 = v46;
  sub_1000B344C(v27, v46, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10009DDF4(v28, v19, v23, v14);
  sub_1000B2E68(v28, type metadata accessor for ReadingHistoryDataStore.State);
  v29 = v56;
  sub_1000B344C(v19, v56, type metadata accessor for ReadingHistoryModel);
  v30 = v29 + v8[7];
  v55 = v14;
  sub_10009ADF0(v14, v30, &qword_10026F508, &qword_1001F1150);
  v31 = v29 + v8[8];
  v54 = v20;
  v26(v31, v23, v20);
  v32 = (v29 + v8[9]);
  v51 = v23;
  sub_1001ABED4(v23, v32);
  v33 = v45;

  v35 = v49;
  v34 = v50;
  sub_1001C6688();

  v36 = *(v34 + 48);
  v37 = v52;
  sub_10009ADF0(v35 + v36, v52, &unk_10026FC40, &qword_1001F0E90);
  sub_1000B3710(v19, v35, type metadata accessor for ReadingHistoryModel);
  v38 = v35 + v36;
  v39 = v56;
  v40 = v37;
  v41 = v48;
  sub_1000B36A8(v40, v38, &unk_10026FC40, &qword_1001F0E90);
  sub_1000A28D4(v39, v35, 0xD000000000000016, 0x80000001001FF700);
  sub_1000B3A90(v33 + 56, v57);
  v42 = v58;
  v43 = v59;
  sub_10009BB74(v57, v58);
  sub_1000B344C(v47, v41, type metadata accessor for ReadingHistoryModel);
  (*(v43 + 48))(v41, v42, v43);
  sub_1000B2E68(v41, type metadata accessor for ReadingHistoryModel);
  sub_1000B2E68(v39, type metadata accessor for ReadingHistoryDataStore.State);
  sub_10008875C(v55, &qword_10026F508, &qword_1001F1150);
  sub_1000B2E68(v19, type metadata accessor for ReadingHistoryModel);
  (*(v53 + 8))(v51, v54);
  sub_10008E7BC(v57);
  return sub_10008875C(v35, &unk_10026F420, &unk_1001F0E50);
}

uint64_t ReadingHistoryDataStore.readingHistoryModelLoadedState()()
{
  sub_100084528(&qword_10026F530, &qword_1001F1170);
  sub_1001C6688();
  return v1;
}

uint64_t sub_1000AB5D0@<X0>(char *a2@<X8>)
{
  v3 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;

  sub_1001C6688();

  v6 = v5[*(v3 + 44)];
  result = sub_10008875C(v5, &unk_10026F420, &unk_1001F0E50);
  *a2 = v6;
  return result;
}

uint64_t sub_1000AB6DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v6 = sub_1001C5688();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5648();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = *(*a1 + 120);
  swift_beginAccess();
  sub_10009ADF0(a1 + v18, v17, &unk_10026F420, &unk_1001F0E50);
  swift_storeEnumTagMultiPayload();
  v19 = a1 + *(*a1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 1);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  v36 = a1[3];
  sub_1001C5638();
  v22 = swift_allocObject();
  swift_weakInit();
  sub_10009ADF0(v17, v15, &unk_10026F820, &unk_1001F1440);
  v23 = *(v12 + 80);
  v38 = v17;
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v37 = a2;
  v26 = v44;
  *(v25 + 24) = v44;
  sub_10009AE58(v15, v25 + v24, &unk_10026F820, &unk_1001F1440);
  *(v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1000B3AF4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100244048;
  v27 = _Block_copy(aBlock);

  v28 = v41;
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v27);
  (*(v42 + 8))(v28, v43);
  (*(v39 + 8))(v10, v40);

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v31 = v45;
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v33 = v37;
  v32[4] = v31;
  v32[5] = v33;
  v32[6] = v26;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = a1[4];
  a1[4] = 0x8000000000000000;
  sub_10017AF30(sub_1000B3BD0, v32, v31, isUniquelyReferenced_nonNull_native);
  a1[4] = v46;
  swift_endAccess();
  sub_10008875C(v38, &unk_10026F820, &unk_1001F1440);
}

uint64_t sub_1000ABC40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v6 = sub_1001C5688();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5648();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&qword_10026F7F8, &qword_1001F1420);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = *(*a1 + 120);
  swift_beginAccess();
  sub_1000B344C(a1 + v18, v17, type metadata accessor for CRDTModelSyncVersion);
  swift_storeEnumTagMultiPayload();
  v19 = a1 + *(*a1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 1);
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(a1, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  v36 = a1[3];
  sub_1001C5638();
  v22 = swift_allocObject();
  swift_weakInit();
  sub_10009ADF0(v17, v15, &qword_10026F7F8, &qword_1001F1420);
  v23 = *(v12 + 80);
  v38 = v17;
  v24 = (v23 + 32) & ~v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  v37 = a2;
  v26 = v44;
  *(v25 + 24) = v44;
  sub_10009AE58(v15, v25 + v24, &qword_10026F7F8, &qword_1001F1420);
  *(v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1000B34B4;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100243B70;
  v27 = _Block_copy(aBlock);

  v28 = v41;
  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v27);
  (*(v42 + 8))(v28, v43);
  (*(v39 + 8))(v10, v40);

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v31 = v45;
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v33 = v37;
  v32[4] = v31;
  v32[5] = v33;
  v32[6] = v26;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = a1[4];
  a1[4] = 0x8000000000000000;
  sub_10017AF5C(sub_1000B34C8, v32, v31, isUniquelyReferenced_nonNull_native);
  a1[4] = v46;
  swift_endAccess();
  sub_10008875C(v38, &qword_10026F7F8, &qword_1001F1420);
}

uint64_t sub_1000AC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v6 = sub_1001C5688();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001C5648();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(a1 + 72);
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(a1, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  sub_1001C5638();
  v17 = swift_allocObject();
  swift_weakInit();
  LOBYTE(v34) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v28 = a2;
  v19 = v32;
  *(v18 + 24) = v32;
  *(v18 + 32) = v13;
  *(v18 + 40) = v12;
  *(v18 + 48) = v14;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 73) = v34;
  *(v18 + 80) = v17;
  aBlock[4] = sub_1000B3378;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100243A08;
  v20 = _Block_copy(aBlock);

  sub_1001C5668();
  sub_1001C6698();
  _Block_release(v20);
  (*(v30 + 8))(v8, v31);
  (*(v9 + 8))(v11, v29);

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v23 = v33;
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = v22;
  v25 = v28;
  v24[4] = v23;
  v24[5] = v25;
  v24[6] = v19;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_10017AF88(sub_1000B33B4, v24, v23, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v34;
  swift_endAccess();
}

uint64_t sub_1000AC5A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(v9, ObjectType, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AC69C(void (*a1)(__int128 *), uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = a3[1];
  v11 = *a3;
  v12[0] = v4;
  *(v12 + 10) = *(a3 + 26);
  a1(&v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 72);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);

      v9(v10, ObjectType, v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000AC790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a4;
  v36 = a1;
  v6 = sub_1001C5648();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&unk_10026F820, &unk_1001F1440);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v34 = *(v18 + 24);
      v35 = v10;
      sub_10009ADF0(v36, v16, &unk_10026F820, &unk_1001F1440);
      v19 = *(v14 + 80);
      v36 = v7;
      v20 = (v19 + 32) & ~v19;
      v21 = swift_allocObject();
      v22 = v38;
      *(v21 + 16) = v37;
      *(v21 + 24) = v22;
      sub_10009AE58(v16, v21 + v20, &unk_10026F820, &unk_1001F1440);
      aBlock[4] = sub_1000B3C00;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_1002440C0;
      v23 = _Block_copy(aBlock);

      sub_1001C5668();
      v40 = _swiftEmptyArrayStorage;
      sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v23);
      (*(v36 + 8))(v9, v6);
      (*(v39 + 8))(v12, v35);
    }

    else
    {
      v24 = sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1001F0670;
      v26 = v35;
      aBlock[0] = v35;
      v27 = sub_1001C6078();
      v29 = v28;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100084570();
      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v30 = sub_1001C67D8();
      sub_1001C5118(v24, &_mh_execute_header, v30, "Observer with oid=%@ is gone", 28, 2, v25);

      swift_beginAccess();
      v31 = sub_10019CF28(v26);
      v33 = v32;
      swift_endAccess();
      sub_1000044D8(v31, v33);
    }
  }

  return result;
}

uint64_t sub_1000ACC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a4;
  v36 = a1;
  v6 = sub_1001C5648();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_10026F7F8, &qword_1001F1420);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v34 = *(v18 + 24);
      v35 = v10;
      sub_10009ADF0(v36, v16, &qword_10026F7F8, &qword_1001F1420);
      v19 = *(v14 + 80);
      v36 = v7;
      v20 = (v19 + 32) & ~v19;
      v21 = swift_allocObject();
      v22 = v38;
      *(v21 + 16) = v37;
      *(v21 + 24) = v22;
      sub_10009AE58(v16, v21 + v20, &qword_10026F7F8, &qword_1001F1420);
      aBlock[4] = sub_1000B34E0;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100243BE8;
      v23 = _Block_copy(aBlock);

      sub_1001C5668();
      v40 = _swiftEmptyArrayStorage;
      sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v23);
      (*(v36 + 8))(v9, v6);
      (*(v39 + 8))(v12, v35);
    }

    else
    {
      v24 = sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1001F0670;
      v26 = v35;
      aBlock[0] = v35;
      v27 = sub_1001C6078();
      v29 = v28;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100084570();
      *(v25 + 32) = v27;
      *(v25 + 40) = v29;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v30 = sub_1001C67D8();
      sub_1001C5118(v24, &_mh_execute_header, v30, "Observer with oid=%@ is gone", 28, 2, v25);

      swift_beginAccess();
      v31 = sub_10019CF54(v26);
      v33 = v32;
      swift_endAccess();
      sub_1000044D8(v31, v33);
    }
  }

  return result;
}

uint64_t sub_1000AD1A8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1001C5648();
  v32 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001C5688();
  v31 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v30 = *(v17 + 24);
      v18 = swift_allocObject();
      *(v18 + 16) = a5;
      *(v18 + 24) = a6;
      v19 = a1[1];
      *(v18 + 32) = *a1;
      *(v18 + 48) = v19;
      *(v18 + 58) = *(a1 + 26);
      aBlock[4] = sub_1000B33F4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_100243AA8;
      v20 = _Block_copy(aBlock);

      sub_1001C5668();
      v33 = _swiftEmptyArrayStorage;
      sub_1000B3814(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
      sub_1001C68C8();
      sub_1001C6698();
      _Block_release(v20);
      (*(v32 + 8))(v12, v10);
      (*(v31 + 8))(v15, v13);
    }

    else
    {
      v21 = sub_1001C65B8();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1001F0670;
      aBlock[0] = a4;
      v23 = sub_1001C6078();
      v25 = v24;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100084570();
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      sub_100088714(0, &qword_10026F7C0, OS_os_log_ptr);
      v26 = sub_1001C67D8();
      sub_1001C5118(v21, &_mh_execute_header, v26, "Observer with oid=%@ is gone", 28, 2, v22);

      swift_beginAccess();
      v27 = sub_10019CF80(a4);
      v29 = v28;
      swift_endAccess();
      sub_1000044D8(v27, v29);
    }
  }

  return result;
}

uint64_t sub_1000AD5FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100187A60(a1);
  if (v4)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(a2 + 32);
    *(a2 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10018A620();
    }

    sub_100140748();
    *(a2 + 32) = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1000AD6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_1000B344C(a1 + v4, a2, type metadata accessor for CRDTModelSyncVersion);
}

uint64_t sub_1000AD730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 120);
  swift_beginAccess();
  return sub_10009ADF0(a1 + v4, a2, &unk_10026F420, &unk_1001F0E50);
}

Swift::Int sub_1000AD7B0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AAC9C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000AE8D4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000AD81C(uint64_t *a1)
{
  v2 = *(sub_1001C4CA8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AACB0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000AE9CC(v6);
  *a1 = v3;
  return result;
}

char *sub_1000AD8EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F7B8, &qword_1001F2B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000AD9F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F798, &qword_1001F13C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000ADAF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F920, &qword_1001F2BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000ADC34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000ADD40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F928, &unk_1001F14F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000ADE44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F740, &unk_1001F1370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000ADF50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F788, &qword_1001F13B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100084528(&qword_10026F790, &qword_1001F13C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AE0AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F770, &qword_1001F13A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AE1F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(&qword_10026F7A0, &unk_1001F13D0);
  v10 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100084528(&qword_10026F7A8, &unk_1001F2B50) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000AE458(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000AE658(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    sub_100084528(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100084528(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1000AE78C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100084528(&qword_10026F748, &unk_1001F82D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100084528(&qword_10026F750, &qword_1001F1380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_1000AE8D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1001C62D8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000AEE80(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000AEAF8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1000AE9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001C4CA8();
        v6 = sub_1001C62D8();
        v6[2] = v5;
      }

      v7 = *(sub_1001C4CA8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000AF4E0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000AEBBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000AEAF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = *(v4 + 16 * a3);
    v9 = 100 * v8;
    v10 = (v8 * 100) >> 64 != (100 * v8) >> 63;
    v11 = __OFADD__(v9, *(&v7 + 1));
    v12 = v9 + *(&v7 + 1);
    v13 = v11;
    v14 = v6;
    v15 = v5;
    while (!v10)
    {
      if (v13)
      {
        goto LABEL_19;
      }

      v16 = 100 * *v15;
      result = (*v15 * 100) >> 64;
      if (result != v16 >> 63)
      {
        goto LABEL_20;
      }

      result = v15[1];
      v11 = __OFADD__(v16, result);
      v17 = v16 + result;
      if (v11)
      {
        goto LABEL_21;
      }

      if (v12 < v17)
      {
        if (!v4)
        {
          goto LABEL_22;
        }

        *(v15 + 1) = *v15;
        *v15 = v7;
        v15 -= 2;
        if (!__CFADD__(v14++, 1))
        {
          continue;
        }
      }

      ++a3;
      v5 += 16;
      --v6;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AEBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001C4CA8();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1000B3814(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v26 = sub_1001C5FC8();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000AEE80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_101:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v98 = *(v10 + 2);
      if (v98 >= 2)
      {
        while (*a3)
        {
          v99 = *&v10[16 * v98];
          v100 = *&v10[16 * v98 + 24];
          sub_1000AFF08(*a3 + 16 * v99, (*a3 + 16 * *&v10[16 * v98 + 16]), (*a3 + 16 * v100), v6);
          if (v5)
          {
          }

          if (v100 < v99)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1001A97CC(v10);
          }

          if (v98 - 2 >= *(v10 + 2))
          {
            goto LABEL_134;
          }

          v101 = &v10[16 * v98];
          *v101 = v99;
          *(v101 + 1) = v100;
          result = sub_1001A9740(v98 - 1);
          v98 = *(v10 + 2);
          if (v98 <= 1)
          {
          }
        }

        goto LABEL_148;
      }
    }

LABEL_144:
    result = sub_1001A97CC(v10);
    v10 = result;
    goto LABEL_103;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v103 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v7)
    {
      goto LABEL_26;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v9);
    v14 = *v13;
    v15 = 100 * *v13;
    if ((*v13 * 100) >> 64 != v15 >> 63)
    {
      goto LABEL_136;
    }

    v16 = v13[1];
    v68 = __OFADD__(v15, v16);
    v17 = v15 + v16;
    if (v68)
    {
      goto LABEL_137;
    }

    v18 = (v12 + 16 * v11);
    v19 = 100 * *v18;
    if ((*v18 * 100) >> 64 != v19 >> 63)
    {
      goto LABEL_138;
    }

    v20 = v18[1];
    v68 = __OFADD__(v19, v20);
    v21 = v19 + v20;
    if (v68)
    {
      goto LABEL_139;
    }

    v22 = v11 + 2;
    v23 = 16 * v11;
    v24 = (v12 + 16 * v11 + 40);
    do
    {
      if (v7 == v22)
      {
        v9 = v7;
        if (v17 >= v21)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      v25 = *(v24 - 1);
      v26 = 100 * v25;
      if ((v25 * 100) >> 64 != (100 * v25) >> 63)
      {
        goto LABEL_116;
      }

      v27 = *v24;
      v68 = __OFADD__(v26, *v24);
      v28 = v26 + *v24;
      if (v68)
      {
        goto LABEL_117;
      }

      v29 = 100 * v14;
      v68 = __OFADD__(v29, v16);
      v30 = v29 + v16;
      if (v68)
      {
        goto LABEL_118;
      }

      v31 = (v17 < v21) ^ (v28 >= v30);
      ++v22;
      v24 += 2;
      v16 = v27;
      v14 = v25;
    }

    while ((v31 & 1) != 0);
    v9 = v22 - 1;
    if (v17 >= v21)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    if (v11 < v9)
    {
      v32 = 16 * v9 - 16;
      v33 = v9;
      v34 = v11;
      do
      {
        if (v34 != --v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v36 = *(v35 + v23);
          *(v35 + v23) = *(v35 + v32);
          *(v35 + v32) = v36;
        }

        ++v34;
        v32 -= 16;
        v23 += 16;
      }

      while (v34 < v33);
      v7 = a3[1];
    }

LABEL_26:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_140;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_141;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
          goto LABEL_142;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v9 < v11)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v53 = *(v10 + 2);
    v52 = *(v10 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1000AD9F0((v52 > 1), v53 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v54;
    v55 = &v10[16 * v53];
    *(v55 + 4) = v11;
    *(v55 + 5) = v9;
    v56 = *v6;
    if (!*v6)
    {
      goto LABEL_149;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v10 + 4);
          v59 = *(v10 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_70:
          if (v61)
          {
            goto LABEL_124;
          }

          v74 = &v10[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_127;
          }

          v80 = &v10[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_131;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v84 = &v10[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_84:
        if (v79)
        {
          goto LABEL_126;
        }

        v87 = &v10[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_91:
        v6 = v57 - 1;
        if (v57 - 1 >= v54)
        {
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v95 = *&v10[16 * v6 + 32];
        v96 = *&v10[16 * v57 + 40];
        sub_1000AFF08(*a3 + 16 * v95, (*a3 + 16 * *&v10[16 * v57 + 32]), (*a3 + 16 * v96), v56);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1001A97CC(v10);
        }

        if (v6 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v97 = &v10[16 * v6];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_1001A9740(v57);
        v54 = *(v10 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v10[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_122;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_123;
      }

      v69 = &v10[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_125;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_128;
      }

      if (v73 >= v65)
      {
        v91 = &v10[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_132;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v103;
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_101;
    }
  }

  v37 = *a3;
  v38 = *a3 + 16 * v9 - 16;
  v39 = v11 - v9;
LABEL_36:
  v40 = *(v37 + 16 * v9);
  v41 = *(v37 + 16 * v9);
  v42 = 100 * v41;
  v43 = (v41 * 100) >> 64 != (100 * v41) >> 63;
  v68 = __OFADD__(v42, *(&v40 + 1));
  v44 = v42 + *(&v40 + 1);
  v45 = v68;
  v46 = v39;
  v47 = v38;
  while (1)
  {
    if (v43)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v45)
    {
      goto LABEL_113;
    }

    v48 = 100 * *v47;
    if ((*v47 * 100) >> 64 != v48 >> 63)
    {
      goto LABEL_114;
    }

    v49 = v47[1];
    v68 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v68)
    {
      goto LABEL_115;
    }

    if (v44 >= v50)
    {
LABEL_35:
      ++v9;
      v38 += 16;
      --v39;
      if (v9 == v7)
      {
        v9 = v7;
        goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    *(v47 + 1) = *v47;
    *v47 = v40;
    v47 -= 2;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_1000AF4E0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = &v119 - v15;
  result = __chkstk_darwin(v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1001A97CC(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1000B01B0(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001A97CC(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1001A9740(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_1000B3814(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v133) = sub_1001C5FC8();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1001C5FC8() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1000AD9F0((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1000B01B0(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001A97CC(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1001A9740(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1000B3814(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v109 = sub_1001C5FC8();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000AFF08(uint64_t __dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = &__src[-__dst];
  v9 = &__src[-__dst + 15];
  if (&__src[-__dst] >= 0)
  {
    v9 = &__src[-__dst];
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || __dst + 16 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v15 = 100 * *v6;
        if ((*v6 * 100) >> 64 != v15 >> 63)
        {
          __break(1u);
          goto LABEL_49;
        }

        v16 = v6[1];
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_50;
        }

        v19 = 100 * *v4;
        if ((*v4 * 100) >> 64 != v19 >> 63)
        {
          goto LABEL_52;
        }

        v20 = *(v4 + 1);
        v17 = __OFADD__(v19, v20);
        v21 = v19 + v20;
        if (v17)
        {
          goto LABEL_54;
        }

        if (v18 >= v21)
        {
          break;
        }

        v22 = v6;
        v23 = v7 == v6;
        v6 += 2;
        if (!v23)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 2;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 16;
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v22;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 < 16 || v6 <= v7)
  {
LABEL_44:
    v34 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
    if (v6 != v4 || v6 >= &v4[v34 & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(v6, v4, 16 * (v34 >> 4));
    }

    return 1;
  }

LABEL_29:
  v24 = v6 - 2;
  v5 -= 16;
  v25 = v14;
  while (1)
  {
    v26 = *(v25 - 2);
    v25 -= 16;
    v27 = 100 * v26;
    if ((v26 * 100) >> 64 != (100 * v26) >> 63)
    {
      break;
    }

    v28 = *(v14 - 1);
    v17 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v17)
    {
      goto LABEL_51;
    }

    v30 = *(v6 - 2);
    v31 = 100 * v30;
    if ((v30 * 100) >> 64 != (100 * v30) >> 63)
    {
      goto LABEL_53;
    }

    v32 = *(v6 - 1);
    v17 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v17)
    {
      goto LABEL_55;
    }

    if (v29 < v33)
    {
      if (v5 + 16 != v6)
      {
        *v5 = *v24;
      }

      if (v14 <= v4 || (v6 -= 2, v24 <= v7))
      {
        v6 = v24;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 16 != v14)
    {
      *v5 = *v25;
    }

    v5 -= 16;
    v14 = v25;
    if (v25 <= v4)
    {
      v14 = v25;
      goto LABEL_44;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return __dst;
}

uint64_t sub_1000B01B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1001C4CA8();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1000B3814(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          LOBYTE(v35) = sub_1001C5FC8();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1000B3814(&qword_10026F518, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LOBYTE(v22) = sub_1001C5FC8();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1001A980C(&v55, &v54, &v53);
  return 1;
}

void *sub_1000B07A4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v25 = v8;
    v26 = &v24;
    __chkstk_darwin(a1);
    v10 = &v24 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v27 = 0;
    v11 = 0;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v8 = (v12 + 63) >> 6;
    v15 = v4;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v4 = v16 | (v11 << 6);
      v28 = *(*(a3 + 48) + 16 * v4);
      v19 = v6(&v28);
      if (v15)
      {

        return swift_willThrow();
      }

      if (v19)
      {
        *&v10[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_100156604(v10, v25, v27, a3);
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        return sub_100156604(v10, v25, v27, a3);
      }

      v18 = *(a3 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_1000B0B78(v22, v8, a3, v6);

  if (!v4)
  {
    return v23;
  }

  return result;
}

uint64_t sub_1000B0A2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v21 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v20 = *(*(a3 + 48) + 16 * v17);
    result = a4(&v20);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_100156604(v21, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000B0B78(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000B0A2C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000B0C08(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v100 = a6;
  v98 = a5;
  v97 = a4;
  v102 = a3;
  v92 = a2;
  v108 = a1;
  v9 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v10 = __chkstk_darwin(v9 - 8);
  v107 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v89 - v12;
  v13 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v14 = __chkstk_darwin(v13 - 8);
  v103 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v105 = &v89 - v16;
  v99 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v17 = __chkstk_darwin(v99);
  v101 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v96 = &v89 - v20;
  __chkstk_darwin(v19);
  v110 = &v89 - v21;
  v95 = sub_1001C4D68();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1001C4CA8();
  v112 = *(v111 - 8);
  v23 = __chkstk_darwin(v111);
  v90 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v109 = &v89 - v26;
  __chkstk_darwin(v25);
  v28 = &v89 - v27;
  v29 = sub_1001C6638();
  __chkstk_darwin(v29);
  v30 = sub_1001C5688();
  __chkstk_darwin(v30 - 8);
  v31 = sub_1001C6668();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120[3] = sub_100084528(&unk_10026F810, &qword_1001F3220);
  v120[4] = &protocol witness table for <> CRDTModelSyncManager<A>;
  v120[0] = a2;
  v104 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v91 = "gTransactionCount";
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0;
  (*(v32 + 104))(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v31);
  sub_1001C5668();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000B3814(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  *(a7 + 144) = sub_1001C66A8();
  sub_1001C4C98();
  v35 = v93;
  sub_1001C4CD8();
  v104 = v28;
  sub_1001C4CE8();
  (*(v94 + 8))(v35, v95);
  *(a7 + 96) = v97;
  v36 = v98;
  *(a7 + 120) = sub_10009D080;
  *(a7 + 128) = 0;
  v37 = v100;
  *(a7 + 104) = v36;
  *(a7 + 112) = v37;
  v38 = v37;
  sub_1001C6688();
  *(a7 + 136) = v115;
  sub_1000B3A90(v120, a7 + 56);
  v113 = v92;
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  v39 = v110;
  sub_1001C6688();

  v40 = v102;
  *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_transactionProvider) = v102;
  v41 = v96;
  sub_10009ADF0(v39, v96, &unk_10026F420, &unk_1001F0E50);
  swift_allocObject();
  v42 = v101;
  sub_10009ADF0(v41, v101, &unk_10026F420, &unk_1001F0E50);
  swift_unknownObjectRetain();
  v43 = sub_100098354(v42);
  sub_10008875C(v41, &unk_10026F420, &unk_1001F0E50);
  *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) = v43;
  type metadata accessor for ObservableTransaction(0);
  v44 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction) = sub_10015C33C(0xD000000000000038, 0x80000001001FF380, v40, v44);
  *(a7 + 152) = 0;
  v45 = *(a7 + 112);
  v46 = sub_1001C5FE8();
  v47 = [v45 integerForKey:v46];

  v48 = sub_1001BC968(v47);
  v51 = v105;
  if (v50)
  {
    v52 = v111;
    (*(v112 + 56))(v105, 1, 1, v111);
  }

  else
  {
    sub_1001ABADC(v48, v49, v105);
    v52 = v111;
  }

  v53 = *(a7 + 112);
  v54 = sub_1001C5FE8();
  v55 = [v53 integerForKey:v54];

  v56 = type metadata accessor for ReadingHistory.Streak(0);
  v57 = *(*(v56 - 8) + 56);
  v58 = v106;
  v57(v106, 1, 1, v56);
  v59 = v103;
  sub_10009ADF0(v51, v103, &unk_10026FC70, &unk_1001F1430);
  if ((*(v112 + 48))(v59, 1, v52) == 1)
  {
    sub_10008875C(v59, &unk_10026FC70, &unk_1001F1430);
  }

  else
  {
    sub_10008875C(v58, &qword_10026F508, &qword_1001F1150);
    v60 = *(v112 + 32);
    v61 = v90;
    v60(v90, v59, v111);
    v60(v58, v61, v111);
    v52 = v111;
    *(v58 + *(v56 + 20)) = v55;
    v57(v58, 0, 1, v56);
  }

  v62 = v107;
  v63 = v110;
  sub_1001ABED4(v104, v107);
  v64 = a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  sub_1000B344C(v63, a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryModel);
  v65 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v58, v64 + v65[5], &qword_10026F508, &qword_1001F1150);
  (*(v112 + 16))(v64 + v65[6], v109, v52);
  sub_10009ADF0(v62, v64 + v65[7], &qword_10026F508, &qword_1001F1150);
  v66 = *(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + *(**(a7 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 128);
  swift_beginAccess();
  *(v66 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v67 = *(v108 + 56);

  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1000B35A8;
  *(v69 + 24) = v68;
  v70 = *(v67 + 16);
  v71 = swift_allocObject();
  v71[2] = v67;
  v71[3] = sub_1000B35B0;
  v71[4] = v69;
  v71[5] = a7;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1000B35B8;
  *(v72 + 24) = v71;
  v118 = sub_1000B3DA0;
  v119 = v72;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_1000906F4;
  v117 = &unk_100243CB0;
  v73 = _Block_copy(&aBlock);
  swift_retain_n();

  swift_retain_n();

  dispatch_sync(v70, v73);
  _Block_release(v73);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
  }

  else
  {
    v75 = *(a7 + 80);
    v76 = *(a7 + 88);
    v77 = sub_10009BB74((a7 + 56), v75);
    v78 = *(v75 - 8);
    __chkstk_darwin(v77);
    v80 = &v89 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v80);
    v81 = (*(v76 + 40))(v75, v76);
    (*(v78 + 8))(v80, v75);
    v82 = swift_allocObject();
    swift_weakInit();
    v83 = *(v81 + 16);
    v84 = swift_allocObject();
    v84[2] = v81;
    v84[3] = sub_1000B35C4;
    v84[4] = v82;
    v84[5] = a7;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_1000B3E58;
    *(v85 + 24) = v84;
    v118 = sub_1000B3DA0;
    v119 = v85;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_1000906F4;
    v117 = &unk_100243D28;
    v86 = _Block_copy(&aBlock);

    dispatch_sync(v83, v86);
    _Block_release(v86);
    LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

    if ((v83 & 1) == 0)
    {
      sub_10008875C(v107, &qword_10026F508, &qword_1001F1150);
      sub_10008875C(v106, &qword_10026F508, &qword_1001F1150);
      sub_10008875C(v105, &unk_10026FC70, &unk_1001F1430);
      sub_10008875C(v110, &unk_10026F420, &unk_1001F0E50);
      v87 = *(v112 + 8);
      v88 = v111;
      v87(v109, v111);
      v87(v104, v88);
      sub_10008E7BC(v120);
      return a7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B1CE0(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), int a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v118 = a8;
  v117 = a7;
  v122 = a6;
  v121 = a5;
  v119 = a4;
  v123 = a3;
  v131 = a1;
  v112 = a11;
  v12 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v13 = __chkstk_darwin(v12 - 8);
  v128 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v107 - v15;
  v16 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v17 = __chkstk_darwin(v16 - 8);
  v125 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v127 = &v107 - v19;
  v20 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v21 = __chkstk_darwin(v20 - 8);
  v120 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v116 = &v107 - v24;
  __chkstk_darwin(v23);
  v130 = &v107 - v25;
  v115 = sub_1001C4D68();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1001C4CA8();
  v124 = *(v133 - 8);
  v27 = __chkstk_darwin(v133);
  v108 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v129 = &v107 - v30;
  __chkstk_darwin(v29);
  v126 = &v107 - v31;
  v32 = sub_1001C6638();
  __chkstk_darwin(v32);
  v33 = sub_1001C5688();
  __chkstk_darwin(v33 - 8);
  v34 = sub_1001C6668();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138[3] = a10;
  v138[4] = a11;
  v111 = sub_1000B3C78(v138);
  v110 = a10;
  (*(*(v110 - 8) + 32))(v111, a2, v110);
  v109 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0;
  (*(v35 + 104))(v37, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v34);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000B3814(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  v38 = v126;
  v39 = v131;
  sub_1001C68C8();
  v40 = v130;
  *(a9 + 144) = sub_1001C66A8();
  v41 = v118;
  v42 = v117;
  v117();
  v43 = v113;
  sub_1001C4CD8();
  sub_1001C4CE8();
  (*(v114 + 8))(v43, v115);
  *(a9 + 96) = v119;
  *(a9 + 120) = v42;
  *(a9 + 128) = v41;
  v44 = v122;
  *(a9 + 104) = v121;
  *(a9 + 112) = v44;
  v45 = v39[3];
  v46 = v39[4];
  sub_10009BB74(v39, v45);
  v47 = *(v46 + 8);

  v48 = v44;
  *(a9 + 136) = v47(v45, v46);
  sub_1000B3A90(v138, a9 + 56);
  v49 = (*(v112 + 40))(v110);
  (*(*v49 + 184))(v49);

  v50 = v123;
  *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_transactionProvider) = v123;
  v51 = v116;
  sub_10009ADF0(v40, v116, &unk_10026F420, &unk_1001F0E50);
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  swift_allocObject();
  v52 = v120;
  sub_10009ADF0(v51, v120, &unk_10026F420, &unk_1001F0E50);
  v53 = v50;
  swift_unknownObjectRetain();
  v54 = sub_100098354(v52);
  sub_10008875C(v51, &unk_10026F420, &unk_1001F0E50);
  *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) = v54;
  type metadata accessor for ObservableTransaction(0);
  v55 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChangeObservableTransaction) = sub_10015C33C(0xD000000000000038, 0x80000001001FF380, v53, v55);
  *(a9 + 152) = 0;
  v56 = *(a9 + 112);
  v57 = sub_1001C5FE8();
  v58 = [v56 integerForKey:v57];

  v59 = sub_1001BC968(v58);
  if (v61)
  {
    v62 = v124;
    v63 = v127;
    v124[7](v127, 1, 1, v133);
  }

  else
  {
    v63 = v127;
    sub_1001ABADC(v59, v60, v127);
    v62 = v124;
  }

  v64 = *(a9 + 112);
  v65 = sub_1001C5FE8();
  v124 = [v64 integerForKey:v65];

  v66 = type metadata accessor for ReadingHistory.Streak(0);
  v67 = *(*(v66 - 8) + 56);
  v68 = v132;
  v67(v132, 1, 1, v66);
  v69 = v125;
  sub_10009ADF0(v63, v125, &unk_10026FC70, &unk_1001F1430);
  v70 = (v62[6])(v69, 1, v133);
  v71 = v129;
  if (v70 == 1)
  {
    sub_10008875C(v69, &unk_10026FC70, &unk_1001F1430);
  }

  else
  {
    sub_10008875C(v68, &qword_10026F508, &qword_1001F1150);
    v72 = v62[4];
    v123 = v67;
    v73 = v108;
    v74 = v69;
    v75 = v38;
    v76 = v71;
    v77 = v62;
    v78 = v133;
    (v72)(v108, v74, v133);
    v79 = v78;
    v62 = v77;
    v71 = v76;
    v38 = v75;
    (v72)(v132, v73, v79);
    v68 = v132;
    *(v132 + *(v66 + 20)) = v124;
    v123(v68, 0, 1, v66);
  }

  v80 = v128;
  v81 = v130;
  sub_1001ABED4(v38, v128);
  v82 = a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state;
  sub_1000B344C(v81, a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryModel);
  v83 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_10009ADF0(v68, v82 + v83[5], &qword_10026F508, &qword_1001F1150);
  (v62[2])(v82 + v83[6], v71, v133);
  sub_10009ADF0(v80, v82 + v83[7], &qword_10026F508, &qword_1001F1150);
  v84 = *(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + *(**(a9 + OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange) + 128);
  swift_beginAccess();
  *(v84 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v85 = v131[3];
  v86 = v131[4];
  sub_10009BB74(v131, v85);
  (*(v86 + 16))(aBlock, v85, v86);
  v87 = v135;
  v88 = v136;
  sub_10009BB74(aBlock, v135);
  v89 = v62;
  v90 = swift_allocObject();
  swift_weakInit();
  v91 = *(v88 + 1);
  swift_retain_n();

  v91(a9, sub_1000B3E08, v90, v87, v88);

  sub_10008E7BC(aBlock);
  v93 = *(a9 + 80);
  v92 = *(a9 + 88);
  v94 = sub_10009BB74((a9 + 56), v93);
  v95 = *(v93 - 8);
  __chkstk_darwin(v94);
  v97 = &v107 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v95 + 16))(v97);
  v98 = (*(v92 + 40))(v93, v92);
  (*(v95 + 8))(v97, v93);
  v99 = swift_allocObject();
  swift_weakInit();
  v100 = *(v98 + 16);
  v101 = swift_allocObject();
  v101[2] = v98;
  v101[3] = sub_1000B3E0C;
  v101[4] = v99;
  v101[5] = a9;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1000B3E58;
  *(v102 + 24) = v101;
  v136 = sub_1000B3DA0;
  v137 = v102;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v135 = &unk_100244138;
  v103 = _Block_copy(aBlock);

  dispatch_sync(v100, v103);
  _Block_release(v103);
  LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

  if (v100)
  {
    __break(1u);
  }

  else
  {
    sub_10008875C(v128, &qword_10026F508, &qword_1001F1150);
    sub_10008875C(v132, &qword_10026F508, &qword_1001F1150);
    sub_10008875C(v127, &unk_10026FC70, &unk_1001F1430);
    sub_10008875C(v130, &unk_10026F420, &unk_1001F0E50);
    v105 = v89[1];
    v106 = v133;
    (v105)(v129, v133);
    (v105)(v126, v106);
    sub_10008E7BC(v138);
    sub_10008E7BC(v131);
    return a9;
  }

  return result;
}