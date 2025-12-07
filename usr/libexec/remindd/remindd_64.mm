void *sub_1005DFEC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X3>)
{
  result = sub_1005D6E0C(*a1, a1[1], *(v3 + 24), a3);
  *a2 = result;
  return result;
}

uint64_t sub_1005DFF24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005D7B08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1005E0094(char *a1)
{
  v3 = *(v1 + 32);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  return v3(v4, v5, &a1[*(v6 + 48)], &a1[*(v6 + 64)]);
}

uint64_t sub_1005E0108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005E0150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  UUID.uuidString.getter();
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = [a1 storeForAccountIdentifier:v9];

  if (v17)
  {
    KeyPath = swift_getKeyPath();
    v19 = sub_1003EF82C(KeyPath);

    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v20 = [objc_allocWithZone(NSFetchRequest) init];
    v21 = [swift_getObjCClassFromMetadata() entity];
    [v20 setEntity:v21];

    [v20 setAffectedStores:0];
    [v20 setPredicate:v19];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1007953F0;
    *(v22 + 32) = v17;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v23 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v22, v25, v26, v27, v28, v29, v30, v31;
    [v20 setAffectedStores:isa];

    [v20 setFetchBatchSize:a4];
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100791320;
    *(v32 + 32) = 0x656D614E656C6966;
    *(v32 + 40) = 0xE800000000000000;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = 0x696669746E656469;
    *(v32 + 72) = 0xEA00000000007265;
    *(v32 + 120) = &type metadata for String;
    *(v32 + 88) = &type metadata for String;
    *(v32 + 96) = 0x7553323135616873;
    *(v32 + 104) = 0xE90000000000006DLL;
    v33 = Array._bridgeToObjectiveC()().super.isa;
    v32, v34, v35, v36, v37, v38, v39, v40;
    [v20 setPropertiesToFetch:v33];

    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v41 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v42 = Array._bridgeToObjectiveC()().super.isa;
    v41, v43, v44, v45, v46, v47, v48, v49;
    [v20 setSortDescriptors:v42];

    v50 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {
    }

    else
    {
      v63 = v50;
      sub_1002712AC(v50);

      v63, v64, v65, v66, v67, v68, v69, v70;
    }
  }

  else
  {
    v51 = objc_opt_self();
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = UUID.uuidString.getter();
    *(inited + 40) = v53;
    v54 = sub_1001A5660(inited);
    swift_setDeallocating();
    sub_100034610(inited + 32);
    v55 = Set._bridgeToObjectiveC()().super.isa;
    v54, v56, v57, v58, v59, v60, v61, v62;
    [v51 accountStoreMissingError:v55];

    swift_willThrow();
  }
}

void sub_1005E059C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a2;
  v84 = a1;
  v83 = type metadata accessor for UUID();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83, v7);
  v82 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v10 = sub_1003EF82C(KeyPath);

  v11 = swift_getKeyPath();
  v12 = sub_10004FAEC(a3);
  v13 = sub_1003EF6EC(v11, v12);

  sub_1000F5104(qword_10094ECA0, &unk_1007B4A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = v10;
  *(inited + 40) = v13;
  v74 = v13;
  v73 = v10;
  v15 = sub_10000C2B0();
  v16 = sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v71 = v16;
  v18 = [swift_getObjCClassFromMetadata() entity];
  [v17 setEntity:v18];

  [v17 setAffectedStores:0];
  v72 = v17;
  [v17 setPredicate:v15];

  v77 = &_swiftEmptyArrayStorage;
  v86 = &_swiftEmptyArrayStorage;
  v19 = *(a4 + 56);
  v78 = a4 + 56;
  v20 = 1 << *(a4 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v80 = v6 + 16;
  v81 = v6;
  v79 = v6 + 8;
  v85 = a4;

  v24 = 0;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = v81;
      v26 = v82;
      v28 = v83;
      (*(v81 + 16))(v82, *(v85 + 48) + *(v81 + 72) * (v25 | (v24 << 6)), v83);
      UUID.uuidString.getter();
      v30 = v29;
      v31 = String._bridgeToObjectiveC()();
      v30, v32, v33, v34, v35, v36, v37, v38;
      v39 = [v84 storeForAccountIdentifier:v31];

      (*(v27 + 8))(v26, v28);
      if (v39)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v77 = v86;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v40 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return;
    }

    if (v40 >= v23)
    {
      break;
    }

    v22 = *(v78 + 8 * v40);
    ++v24;
    if (v22)
    {
      v24 = v40;
      goto LABEL_4;
    }
  }

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v41 = v77;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = v72;
  [v72 setAffectedStores:isa];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100791300;
  *(v51 + 56) = &type metadata for String;
  *(v51 + 32) = 0x696669746E656469;
  *(v51 + 40) = 0xEA00000000007265;
  v52 = Array._bridgeToObjectiveC()().super.isa;
  v51, v53, v54, v55, v56, v57, v58, v59;
  [v50 setPropertiesToFetch:v52];

  v60 = Array._bridgeToObjectiveC()().super.isa;
  [v50 setRelationshipKeyPathsForPrefetching:v60];

  v61 = v76;
  v62 = NSManagedObjectContext.fetch<A>(_:)();
  if (v61)
  {
  }

  else
  {
    v63 = v62;
    sub_1002712AC(v62);

    v63, v64, v65, v66, v67, v68, v69, v70;
  }
}

void *sub_1005E0AB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  UUID.uuidString.getter();
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = [a1 storeForAccountIdentifier:v10];

  if (v18)
  {
    v19 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v21 = [v19 objectIDWithUUID:isa];

    sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v23 = v21;
    v24 = sub_1005BDBEC(v21, 0x60u);

    *(inited + 32) = v24;
    KeyPath = swift_getKeyPath();
    v26 = sub_1003EF858(KeyPath);

    *(inited + 40) = v26;
    v27 = sub_10000C2B0();
    type metadata accessor for REMCDSavedAttachment();
    v28 = [objc_allocWithZone(NSFetchRequest) init];
    v29 = [swift_getObjCClassFromMetadata() entity];
    [v28 setEntity:v29];

    [v28 setAffectedStores:0];
    [v28 setPredicate:v27];

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1007953F0;
    *(v30 + 32) = v18;
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v31 = v18;
    v32 = Array._bridgeToObjectiveC()().super.isa;
    v30, v33, v34, v35, v36, v37, v38, v39;
    [v28 setAffectedStores:v32];

    [v28 setFetchBatchSize:a4];
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100791320;
    *(v40 + 32) = 0x656D614E656C6966;
    *(v40 + 40) = 0xE800000000000000;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = 0x696669746E656469;
    *(v40 + 72) = 0xEA00000000007265;
    *(v40 + 120) = &type metadata for String;
    *(v40 + 88) = &type metadata for String;
    *(v40 + 96) = 0x7553323135616873;
    *(v40 + 104) = 0xE90000000000006DLL;
    v41 = Array._bridgeToObjectiveC()().super.isa;
    v40, v42, v43, v44, v45, v46, v47, v48;
    [v28 setPropertiesToFetch:v41];

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v49 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v50 = Array._bridgeToObjectiveC()().super.isa;
    v49, v51, v52, v53, v54, v55, v56, v57;
    [v28 setSortDescriptors:v50];

    v58 = a2;
    v59 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {
    }

    else
    {
      v71 = v59;
      v58 = sub_1002712B8(v59);

      v71, v72, v73, v74, v75, v76, v77, v78;
    }
  }

  else
  {
    v60 = objc_opt_self();
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_100791300;
    *(v61 + 32) = UUID.uuidString.getter();
    *(v61 + 40) = v62;
    v63 = sub_1001A5660(v61);
    swift_setDeallocating();
    sub_100034610(v61 + 32);
    v58 = Set._bridgeToObjectiveC()().super.isa;
    v63, v64, v65, v66, v67, v68, v69, v70;
    [v60 accountStoreMissingError:v58];

    swift_willThrow();
  }

  return v58;
}

void sub_1005E0F9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a2;
  v91 = a1;
  v90 = type metadata accessor for UUID();
  v6 = *(v90 - 8);
  __chkstk_darwin(v90, v7);
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&unk_10094EC90, &unk_1007B38E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v11 = sub_100392308(KeyPath, 1701603686, 0xE400000000000000);

  *(inited + 32) = v11;
  v12 = swift_getKeyPath();
  v13 = sub_100392308(v12, 0x6567616D69, 0xE500000000000000);

  *(inited + 40) = v13;
  v14 = sub_100025060(inited);
  v15 = swift_getKeyPath();
  v16 = sub_1003EF858(v15);

  v17 = swift_getKeyPath();
  v18 = sub_10004FAEC(a3);
  v19 = sub_1003EF6C8(v17, v18);

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100791320;
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;
  *(v20 + 48) = v19;
  v81 = v19;
  v79 = v14;
  v80 = v16;
  v21 = sub_10000C2B0();
  v22 = type metadata accessor for REMCDSavedAttachment();
  v23 = [objc_allocWithZone(NSFetchRequest) init];
  v77 = v22;
  v24 = [swift_getObjCClassFromMetadata() entity];
  [v23 setEntity:v24];

  [v23 setAffectedStores:0];
  v78 = v23;
  [v23 setPredicate:v21];

  v84 = &_swiftEmptyArrayStorage;
  v93 = &_swiftEmptyArrayStorage;
  v25 = *(a4 + 56);
  v85 = a4 + 56;
  v26 = 1 << *(a4 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v87 = v6 + 16;
  v88 = v6;
  v86 = v6 + 8;
  v92 = a4;

  v30 = 0;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v31 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v32 = v88;
      v33 = v89;
      v34 = v90;
      (*(v88 + 16))(v89, *(v92 + 48) + *(v88 + 72) * (v31 | (v30 << 6)), v90);
      UUID.uuidString.getter();
      v36 = v35;
      v37 = String._bridgeToObjectiveC()();
      v36, v38, v39, v40, v41, v42, v43, v44;
      v45 = [v91 storeForAccountIdentifier:v37];

      (*(v32 + 8))(v33, v34);
      if (v45)
      {
        break;
      }

      if (!v28)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v84 = v93;
  }

  while (v28);
  while (1)
  {
LABEL_6:
    v46 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v46 >= v29)
    {
      break;
    }

    v28 = *(v85 + 8 * v46);
    ++v30;
    if (v28)
    {
      v30 = v46;
      goto LABEL_4;
    }
  }

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v47 = v84;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v47, v49, v50, v51, v52, v53, v54, v55;
  v56 = v78;
  [v78 setAffectedStores:isa];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100791300;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 32) = 0x696669746E656469;
  *(v57 + 40) = 0xEA00000000007265;
  v58 = Array._bridgeToObjectiveC()().super.isa;
  v57, v59, v60, v61, v62, v63, v64, v65;
  [v56 setPropertiesToFetch:v58];

  v66 = Array._bridgeToObjectiveC()().super.isa;
  [v56 setRelationshipKeyPathsForPrefetching:v66];

  v67 = v83;
  v68 = NSManagedObjectContext.fetch<A>(_:)();
  if (v67)
  {
  }

  else
  {
    v69 = v68;
    sub_1002712B8(v68);

    v69, v70, v71, v72, v73, v74, v75, v76;
  }
}

uint64_t sub_1005E15FC(uint64_t a1)
{
  v5 = &unk_1007B4418;
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v6 = &v4;
    swift_getTupleTypeLayout();
    v7 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1005E16DC(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;

    if (EnumCaseMultiPayload == 2)
    {
      v13 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v14 = v13[12];
      v15 = type metadata accessor for UUID();
      v16 = *(*(v15 - 8) + 16);
      v16(&a1[v14], &a2[v14], v15);
      v16(&a1[v13[16]], &a2[v13[16]], v15);
      v17 = v13[20];
      v18 = *&a2[v17];
      swift_errorRetain();
      *&a1[v17] = v18;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for UUID();
      v11 = *(*(v10 - 8) + 16);
      v11(&a1[v9], &a2[v9], v10);
      v11(&a1[*(v8 + 64)], &a2[*(v8 + 64)], v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1005E18CC(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *(a1 + 8), v4, v5, v6, v7, v8, v9, v10;
      v16 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);
      v19(a1 + v17, v18);
      v19(a1 + *(v16 + 64), v18);

      break;
    case 1:
      *(a1 + 8), v4, v5, v6, v7, v8, v9, v10;
      v12 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v13 = *(v12 + 48);
      v14 = type metadata accessor for UUID();
      v20 = *(*(v14 - 8) + 8);
      (v20)((v14 - 8), a1 + v13, v14);
      v15 = a1 + *(v12 + 64);

      v20(v15, v14);
      break;
    case 0:
      v11 = *(a1 + 8);

      v11, v4, v5, v6, v7, v8, v9, v10;
      break;
  }
}

char *sub_1005E1A98(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v8 = v7[12];
      v9 = type metadata accessor for UUID();
      v10 = *(*(v9 - 8) + 16);
      v10(&a1[v8], &a2[v8], v9);
      v10(&a1[v7[16]], &a2[v7[16]], v9);
      v11 = v7[20];
      v12 = *&a2[v11];
      swift_errorRetain();
      *&a1[v11] = v12;
    }

    else
    {
      v13 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(*(v15 - 8) + 16);
      v16(&a1[v14], &a2[v14], v15);
      v16(&a1[*(v13 + 64)], &a2[*(v13 + 64)], v15);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_1005E1C24(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
        v7 = v6[12];
        v8 = type metadata accessor for UUID();
        v9 = *(*(v8 - 8) + 16);
        v9(&a1[v7], &a2[v7], v8);
        v9(&a1[v6[16]], &a2[v6[16]], v8);
        v10 = v6[20];
        v11 = *&a2[v10];
        swift_errorRetain();
        *&a1[v10] = v11;
      }

      else
      {
        v12 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
        v13 = *(v12 + 48);
        v14 = type metadata accessor for UUID();
        v15 = *(*(v14 - 8) + 16);
        v15(&a1[v13], &a2[v13], v14);
        v15(&a1[*(v12 + 64)], &a2[*(v12 + 64)], v14);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1005E1DF0(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v11 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
    v12 = v11[12];
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 32);
    v14(&a1[v12], &a2[v12], v13);
    v14(&a1[v11[16]], &a2[v11[16]], v13);
    *&a1[v11[20]] = *&a2[v11[20]];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v7 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 32);
    v10(&a1[v8], &a2[v8], v9);
    v10(&a1[*(v7 + 64)], &a2[*(v7 + 64)], v9);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *sub_1005E1FC0(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v11 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
    v12 = v11[12];
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 32);
    v14(&a1[v12], &a2[v12], v13);
    v14(&a1[v11[16]], &a2[v11[16]], v13);
    *&a1[v11[20]] = *&a2[v11[20]];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v7 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 32);
    v10(&a1[v8], &a2[v8], v9);
    v10(&a1[*(v7 + 64)], &a2[*(v7 + 64)], v9);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v5 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_1005E2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);
  sub_10000607C(v8);
  sub_10000607C(v9);
  return v6;
}

void sub_1005E22C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026EF4(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v26 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v27 = v5;
      v28 = *(a1 + 36);

      v13 = String.init<A>(_:)();
      v15 = v14;
      v17 = *_swiftEmptyArrayStorage.clientIdentity;
      v16 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v17 >= v16 >> 1)
      {
        sub_100026EF4((v16 > 1), v17 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v17 + 1;
      v18 = &_swiftEmptyArrayStorage + 16 * v17;
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v7);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v28 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v6 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v7 << 6;
        v22 = v7 + 1;
        v23 = (a1 + 72 + 8 * v7);
        while (v22 < (v6 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100010E34(v4, v28, 0, v8, v9, v10, v11, v12);
            v6 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_100010E34(v4, v28, 0, v8, v9, v10, v11, v12);
      }

LABEL_4:
      v5 = v27 + 1;
      v4 = v6;
      if (v27 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1005E2514(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }

    v31 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v28 = __CocoaSet.startIndex.getter();
    v29 = v3;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v31 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v28 = v4;
  v29 = v5;
  v30 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v15 = v28;
    v14 = v29;
    v16 = v30;
    sub_100411AE4(v28, v29, v30, a1);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v26)
    {
      if (!v16)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(&qword_100946070, &qword_1007A7668);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      v7(v27, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_100010E34(v28, v29, v30, v8, v9, v10, v11, v12);
        return;
      }
    }

    else
    {
      if (v16)
      {
        goto LABEL_36;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = (1 << *(a1 + 32));
      if (v15 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v15 >> 6;
      v19 = *(a1 + 56 + 8 * (v15 >> 6));
      if (((v19 >> v15) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v14)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v15 & 0x3F));
      if (v20)
      {
        v17 = (__clz(__rbit64(v20)) | v15 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < &v17->storeProvider[1] >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
            v17 = (__clz(__rbit64(v24)) + v21);
            goto LABEL_27;
          }
        }

        sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
      }

LABEL_27:
      v28 = v17;
      v29 = v14;
      v30 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1005E2810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026EF4(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v25 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v27 = *v8;
      v10 = *_swiftEmptyArrayStorage.clientIdentity;
      v11 = *&_swiftEmptyArrayStorage.clientIdentity[8];

      if (v10 >= v11 >> 1)
      {
        sub_100026EF4((v11 > 1), v10 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v10 + 1;
      v17 = &_swiftEmptyArrayStorage + 16 * v10;
      *(v17 + 4) = v27;
      *(v17 + 5) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v7);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7 << 6;
        v21 = v7 + 1;
        v22 = (a1 + 72 + 8 * v7);
        while (v21 < (v6 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_100010E34(v4, v26, 0, v12, v13, v14, v15, v16);
            v6 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_100010E34(v4, v26, 0, v12, v13, v14, v15, v16);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

id sub_1005E2A38(void *a1)
{
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v326 = a1;
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = v326;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v324 = v322;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2080;
      v43 = v38;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_10000668C(v45, v47, &v324);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v41 + 14) = v48;
      v56 = ObjCClassFromMetadata;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

      sub_10000607C(v322);
    }

    else
    {

      v56 = ObjCClassFromMetadata;
    }

    v119 = objc_opt_self();
    v324 = 0;
    v325 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v120._countAndFlagsBits = 0xD000000000000030;
    v120._object = 0x80000001007FE260;
    String.append(_:)(v120);
    v121 = [v38 description];
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125._countAndFlagsBits = v122;
    v125._object = v124;
    String.append(_:)(v125);
    v124, v126, v127, v128, v129, v130, v131, v132;
    v133._countAndFlagsBits = 0x656A624F4443202CLL;
    v133._object = 0xEC000000203A7463;
    String.append(_:)(v133);
    v134 = [v56 description];
    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;

    v138._countAndFlagsBits = v135;
    v138._object = v137;
    String.append(_:)(v138);
    v137, v139, v140, v141, v142, v143, v144, v145;
    v146._countAndFlagsBits = 125;
    v146._object = 0xE100000000000000;
    String.append(_:)(v146);
    v147 = v325;
    v148 = String._bridgeToObjectiveC()();
    v147, v149, v150, v151, v152, v153, v154, v155;
    [v119 internalErrorWithDebugDescription:v148];

    swift_willThrow();
    goto LABEL_30;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v112, v113, v114, v115, v116, v117, v118;
      goto LABEL_22;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_22:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return v326;
    }
  }

  v317 = v3;
  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100006654(v57, qword_10093B6F8);
  v58 = v326;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.info.getter();

  v319 = ObjCClassFromMetadata;
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    v316 = swift_slowAlloc();
    v324 = v316;
    *v61 = 138412546;
    *(v61 + 4) = v58;
    *v315 = v58;
    *(v61 + 12) = 2080;
    v62 = v58;
    v63 = v15;
    v64 = [ObjCClassFromMetadata description];
    v65 = v58;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = v66;
    v58 = v65;
    v70 = sub_10000668C(v69, v68, &v324);
    v68, v71, v72, v73, v74, v75, v76, v77;
    *(v61 + 14) = v70;
    v15 = v63;
    _os_log_impl(&_mh_execute_header, v59, v60, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v61, 0x16u);
    sub_1000050A4(v315, &unk_100938E70, &unk_100797230);

    sub_10000607C(v316);
  }

  v78 = [v15 managedObjectModel];
  v79 = [v78 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v80 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v80 + 16))
  {
    v5, v81, v82, v83, v84, v85, v86, v87;
    goto LABEL_26;
  }

  v88 = sub_100005F4C(v317, v5);
  v90 = v89;
  v5, v89, v91, v92, v93, v94, v95, v96;
  if ((v90 & 1) == 0)
  {
LABEL_26:
    v80, v97, v98, v99, v100, v101, v102, v103;
    v318 = v15;
    v156 = [v15 managedObjectModel];
    v157 = [v156 entitiesByName];

    v158 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v158);
    v160 = v159;
    v158, v161, v162, v163, v164, v165, v166, v167;
    v168 = v58;

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.fault.getter();
    v160, v171, v172, v173, v174, v175, v176, v177;

    if (os_log_type_enabled(v169, v170))
    {
      v178 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      *v178 = 138412802;
      *(v178 + 4) = v168;
      *v320 = v168;
      *(v178 + 12) = 2080;
      v179 = v168;
      v180 = [v319 description];
      v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v183 = v182;

      v184 = sub_10000668C(v181, v183, &v324);
      v185 = v183;
      v186 = v319;
      v185, v187, v188, v189, v190, v191, v192, v193;
      *(v178 + 14) = v184;
      *(v178 + 22) = 2080;
      v194 = Array.description.getter();
      v196 = v195;
      v197 = sub_10000668C(v194, v195, &v324);
      v196, v198, v199, v200, v201, v202, v203, v204;
      *(v178 + 24) = v197;
      _os_log_impl(&_mh_execute_header, v169, v170, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v178, 0x20u);
      sub_1000050A4(v320, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v186 = v319;
    }

    v205 = objc_opt_self();
    v324 = 0;
    v325 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v206._countAndFlagsBits = 0xD00000000000003FLL;
    v206._object = 0x80000001007FE2A0;
    String.append(_:)(v206);
    v207 = [v168 description];
    v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v210 = v209;

    v211._countAndFlagsBits = v208;
    v211._object = v210;
    String.append(_:)(v211);
    v210, v212, v213, v214, v215, v216, v217, v218;
    v219._countAndFlagsBits = 0x656A624F4443202CLL;
    v219._object = 0xEC000000203A7463;
    String.append(_:)(v219);
    v220 = [v186 description];
    v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v223 = v222;

    v224._countAndFlagsBits = v221;
    v224._object = v223;
    String.append(_:)(v224);
    v223, v225, v226, v227, v228, v229, v230, v231;
    v232._object = 0x80000001007FE2E0;
    v232._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v232);
    v233 = Array.description.getter();
    v235 = v234;
    v160, v234, v236, v237, v238, v239, v240, v241;
    v242._countAndFlagsBits = v233;
    v242._object = v235;
    String.append(_:)(v242);
    v235, v243, v244, v245, v246, v247, v248, v249;
    v250._countAndFlagsBits = 125;
    v250._object = 0xE100000000000000;
    String.append(_:)(v250);
    v251 = v325;
    v252 = String._bridgeToObjectiveC()();
    v251, v253, v254, v255, v256, v257, v258, v259;
    [v205 internalErrorWithDebugDescription:v252];

    swift_willThrow();
LABEL_30:

    return v326;
  }

  v104 = *(*(v80 + 56) + 8 * v88);
  v80, v105, v106, v107, v108, v109, v110, v111;
  if (![v104 isKindOfEntity:v15])
  {
    v261 = v58;
    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v262, v263))
    {
      v264 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      v324 = v323;
      *v264 = 138412546;
      *(v264 + 4) = v261;
      *v321 = v261;
      *(v264 + 12) = 2080;
      v265 = v261;
      v266 = v15;
      v267 = [v319 description];
      v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v269 = v104;
      v271 = v270;

      v272 = sub_10000668C(v268, v271, &v324);
      v273 = v271;
      v104 = v269;
      v273, v274, v275, v276, v277, v278, v279, v280;
      *(v264 + 14) = v272;
      v15 = v266;
      _os_log_impl(&_mh_execute_header, v262, v263, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v264, 0x16u);
      sub_1000050A4(v321, &unk_100938E70, &unk_100797230);

      sub_10000607C(v323);
    }

    v281 = objc_opt_self();
    v324 = 0;
    v325 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v282._countAndFlagsBits = 0xD000000000000054;
    v282._object = 0x80000001007FE300;
    String.append(_:)(v282);
    v283 = [v261 description];
    v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v286 = v285;

    v287._countAndFlagsBits = v284;
    v287._object = v286;
    String.append(_:)(v287);
    v286, v288, v289, v290, v291, v292, v293, v294;
    v295._countAndFlagsBits = 0x656A624F4443202CLL;
    v295._object = 0xEC000000203A7463;
    String.append(_:)(v295);
    v296._countAndFlagsBits = _typeName(_:qualified:)();
    object = v296._object;
    String.append(_:)(v296);
    object, v298, v299, v300, v301, v302, v303, v304;
    v305._countAndFlagsBits = 125;
    v305._object = 0xE100000000000000;
    String.append(_:)(v305);
    v306 = v325;
    v307 = String._bridgeToObjectiveC()();
    v306, v308, v309, v310, v311, v312, v313, v314;
    [v281 internalErrorWithDebugDescription:v307];

    swift_willThrow();
    goto LABEL_30;
  }

  return v326;
}

id sub_1005E3810(void *a1, unint64_t *a2, void *a3)
{
  sub_1000060C8(0, a2, a3);
  v328 = a1;
  v4 = [a1 entityName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata entity];
  if (!v9)
  {
    v7, v10, v11, v12, v13, v14, v15, v16;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10093B6F8);
    v40 = v328;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v326 = v324;
      *v43 = 138412546;
      *(v43 + 4) = v40;
      *v44 = v40;
      *(v43 + 12) = 2080;
      v45 = v40;
      v46 = [ObjCClassFromMetadata description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_10000668C(v47, v49, &v326);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v43 + 14) = v50;
      v58 = ObjCClassFromMetadata;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v43, 0x16u);
      sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

      sub_10000607C(v324);
    }

    else
    {

      v58 = ObjCClassFromMetadata;
    }

    v121 = objc_opt_self();
    v326 = 0;
    v327 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v122._countAndFlagsBits = 0xD000000000000030;
    v122._object = 0x80000001007FE260;
    String.append(_:)(v122);
    v123 = [v40 description];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    v127._countAndFlagsBits = v124;
    v127._object = v126;
    String.append(_:)(v127);
    v126, v128, v129, v130, v131, v132, v133, v134;
    v135._countAndFlagsBits = 0x656A624F4443202CLL;
    v135._object = 0xEC000000203A7463;
    String.append(_:)(v135);
    v136 = [v58 description];
    v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;

    v140._countAndFlagsBits = v137;
    v140._object = v139;
    String.append(_:)(v140);
    v139, v141, v142, v143, v144, v145, v146, v147;
    v148._countAndFlagsBits = 125;
    v148._object = 0xE100000000000000;
    String.append(_:)(v148);
    v149 = v327;
    v150 = String._bridgeToObjectiveC()();
    v149, v151, v152, v153, v154, v155, v156, v157;
    [v121 internalErrorWithDebugDescription:v150];

    swift_willThrow();
    goto LABEL_30;
  }

  v17 = v9;
  v18 = [v17 name];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v20 == v5 && v22 == v7)
    {

      v7, v114, v115, v116, v117, v118, v119, v120;
      goto LABEL_22;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v22, v25, v26, v27, v28, v29, v30, v31;
    if (v24)
    {

      v22 = v7;
LABEL_22:
      v22, v32, v33, v34, v35, v36, v37, v38;

      return v328;
    }
  }

  v319 = v5;
  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006654(v59, qword_10093B6F8);
  v60 = v328;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();

  v321 = ObjCClassFromMetadata;
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v317 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    v326 = v318;
    *v63 = 138412546;
    *(v63 + 4) = v60;
    *v317 = v60;
    *(v63 + 12) = 2080;
    v64 = v60;
    v65 = v17;
    v66 = [ObjCClassFromMetadata description];
    v67 = v60;
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = v68;
    v60 = v67;
    v72 = sub_10000668C(v71, v70, &v326);
    v70, v73, v74, v75, v76, v77, v78, v79;
    *(v63 + 14) = v72;
    v17 = v65;
    _os_log_impl(&_mh_execute_header, v61, v62, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v63, 0x16u);
    sub_1000050A4(v317, &unk_100938E70, &unk_100797230);

    sub_10000607C(v318);
  }

  v80 = [v17 managedObjectModel];
  v81 = [v80 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v82 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v82 + 16))
  {
    v7, v83, v84, v85, v86, v87, v88, v89;
    goto LABEL_26;
  }

  v90 = sub_100005F4C(v319, v7);
  v92 = v91;
  v7, v91, v93, v94, v95, v96, v97, v98;
  if ((v92 & 1) == 0)
  {
LABEL_26:
    v82, v99, v100, v101, v102, v103, v104, v105;
    v320 = v17;
    v158 = [v17 managedObjectModel];
    v159 = [v158 entitiesByName];

    v160 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v160);
    v162 = v161;
    v160, v163, v164, v165, v166, v167, v168, v169;
    v170 = v60;

    v171 = Logger.logObject.getter();
    v172 = static os_log_type_t.fault.getter();
    v162, v173, v174, v175, v176, v177, v178, v179;

    if (os_log_type_enabled(v171, v172))
    {
      v180 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v326 = swift_slowAlloc();
      *v180 = 138412802;
      *(v180 + 4) = v170;
      *v322 = v170;
      *(v180 + 12) = 2080;
      v181 = v170;
      v182 = [v321 description];
      v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v184;

      v186 = sub_10000668C(v183, v185, &v326);
      v187 = v185;
      v188 = v321;
      v187, v189, v190, v191, v192, v193, v194, v195;
      *(v180 + 14) = v186;
      *(v180 + 22) = 2080;
      v196 = Array.description.getter();
      v198 = v197;
      v199 = sub_10000668C(v196, v197, &v326);
      v198, v200, v201, v202, v203, v204, v205, v206;
      *(v180 + 24) = v199;
      _os_log_impl(&_mh_execute_header, v171, v172, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v180, 0x20u);
      sub_1000050A4(v322, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {

      v188 = v321;
    }

    v207 = objc_opt_self();
    v326 = 0;
    v327 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v208._countAndFlagsBits = 0xD00000000000003FLL;
    v208._object = 0x80000001007FE2A0;
    String.append(_:)(v208);
    v209 = [v170 description];
    v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v212 = v211;

    v213._countAndFlagsBits = v210;
    v213._object = v212;
    String.append(_:)(v213);
    v212, v214, v215, v216, v217, v218, v219, v220;
    v221._countAndFlagsBits = 0x656A624F4443202CLL;
    v221._object = 0xEC000000203A7463;
    String.append(_:)(v221);
    v222 = [v188 description];
    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v225 = v224;

    v226._countAndFlagsBits = v223;
    v226._object = v225;
    String.append(_:)(v226);
    v225, v227, v228, v229, v230, v231, v232, v233;
    v234._object = 0x80000001007FE2E0;
    v234._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v234);
    v235 = Array.description.getter();
    v237 = v236;
    v162, v236, v238, v239, v240, v241, v242, v243;
    v244._countAndFlagsBits = v235;
    v244._object = v237;
    String.append(_:)(v244);
    v237, v245, v246, v247, v248, v249, v250, v251;
    v252._countAndFlagsBits = 125;
    v252._object = 0xE100000000000000;
    String.append(_:)(v252);
    v253 = v327;
    v254 = String._bridgeToObjectiveC()();
    v253, v255, v256, v257, v258, v259, v260, v261;
    [v207 internalErrorWithDebugDescription:v254];

    swift_willThrow();
LABEL_30:

    return v328;
  }

  v106 = *(*(v82 + 56) + 8 * v90);
  v82, v107, v108, v109, v110, v111, v112, v113;
  if (![v106 isKindOfEntity:v17])
  {
    v263 = v60;
    v264 = Logger.logObject.getter();
    v265 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v264, v265))
    {
      v266 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      v326 = v325;
      *v266 = 138412546;
      *(v266 + 4) = v263;
      *v323 = v263;
      *(v266 + 12) = 2080;
      v267 = v263;
      v268 = v17;
      v269 = [v321 description];
      v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v271 = v106;
      v273 = v272;

      v274 = sub_10000668C(v270, v273, &v326);
      v275 = v273;
      v106 = v271;
      v275, v276, v277, v278, v279, v280, v281, v282;
      *(v266 + 14) = v274;
      v17 = v268;
      _os_log_impl(&_mh_execute_header, v264, v265, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v266, 0x16u);
      sub_1000050A4(v323, &unk_100938E70, &unk_100797230);

      sub_10000607C(v325);
    }

    v283 = objc_opt_self();
    v326 = 0;
    v327 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v284._countAndFlagsBits = 0xD000000000000054;
    v284._object = 0x80000001007FE300;
    String.append(_:)(v284);
    v285 = [v263 description];
    v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v288 = v287;

    v289._countAndFlagsBits = v286;
    v289._object = v288;
    String.append(_:)(v289);
    v288, v290, v291, v292, v293, v294, v295, v296;
    v297._countAndFlagsBits = 0x656A624F4443202CLL;
    v297._object = 0xEC000000203A7463;
    String.append(_:)(v297);
    v298._countAndFlagsBits = _typeName(_:qualified:)();
    object = v298._object;
    String.append(_:)(v298);
    object, v300, v301, v302, v303, v304, v305, v306;
    v307._countAndFlagsBits = 125;
    v307._object = 0xE100000000000000;
    String.append(_:)(v307);
    v308 = v327;
    v309 = String._bridgeToObjectiveC()();
    v308, v310, v311, v312, v313, v314, v315, v316;
    [v283 internalErrorWithDebugDescription:v309];

    swift_willThrow();
    goto LABEL_30;
  }

  return v328;
}

void *sub_1005E45B0(void *a1)
{
  type metadata accessor for REMCDSavedAttachment();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = v320;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v317 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v322);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v317, &unk_100938E70, &unk_100797230);

      sub_10000607C(v320);
    }

    v58 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v323;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v324 = ObjCClassFromMetadata;
  v313 = v3;
  v315 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v322 = v312;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v311 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v322);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v311, &unk_100938E70, &unk_100797230);

    sub_10000607C(v312);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v313, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v314 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v315;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v318 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v324 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v322);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v322);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v324 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v323;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v315;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v321 = v144;
      v268 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v322 = v319;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v316 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v270 = v15;
      v271 = [v324 description];
      v272 = a1;
      v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v275 = v274;

      v276 = v273;
      a1 = v272;
      v277 = sub_10000668C(v276, v275, &v322);
      v275, v278, v279, v280, v281, v282, v283, v284;
      *(v268 + 14) = v277;
      v15 = v270;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v316, &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);

      v144 = v321;
    }

    v285 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v286._countAndFlagsBits = 0xD000000000000054;
    v286._object = 0x80000001007FE300;
    String.append(_:)(v286);
    v287 = [v265 description];
    v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291._countAndFlagsBits = v288;
    v291._object = v290;
    String.append(_:)(v291);
    v290, v292, v293, v294, v295, v296, v297, v298;
    v299._countAndFlagsBits = 0x656A624F4443202CLL;
    v299._object = 0xEC000000203A7463;
    String.append(_:)(v299);
    v300._countAndFlagsBits = 0xD000000000000014;
    v300._object = 0x80000001007FE710;
    String.append(_:)(v300);
    v301._countAndFlagsBits = 125;
    v301._object = 0xE100000000000000;
    String.append(_:)(v301);
    v302 = v323;
    v303 = String._bridgeToObjectiveC()();
    v302, v304, v305, v306, v307, v308, v309, v310;
    [v285 internalErrorWithDebugDescription:v303];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E5350(void *a1)
{
  type metadata accessor for REMCDManualSortHint();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = v320;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v317 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v322);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v317, &unk_100938E70, &unk_100797230);

      sub_10000607C(v320);
    }

    v58 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v323;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v324 = ObjCClassFromMetadata;
  v313 = v3;
  v315 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v322 = v312;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v311 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v322);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v311, &unk_100938E70, &unk_100797230);

    sub_10000607C(v312);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v313, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v314 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v315;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v318 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v324 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v322);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v322);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v324 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v323;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v315;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v321 = v144;
      v268 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v322 = v319;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v316 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v270 = v15;
      v271 = [v324 description];
      v272 = a1;
      v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v275 = v274;

      v276 = v273;
      a1 = v272;
      v277 = sub_10000668C(v276, v275, &v322);
      v275, v278, v279, v280, v281, v282, v283, v284;
      *(v268 + 14) = v277;
      v15 = v270;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v316, &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);

      v144 = v321;
    }

    v285 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v286._countAndFlagsBits = 0xD000000000000054;
    v286._object = 0x80000001007FE300;
    String.append(_:)(v286);
    v287 = [v265 description];
    v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291._countAndFlagsBits = v288;
    v291._object = v290;
    String.append(_:)(v291);
    v290, v292, v293, v294, v295, v296, v297, v298;
    v299._countAndFlagsBits = 0x656A624F4443202CLL;
    v299._object = 0xEC000000203A7463;
    String.append(_:)(v299);
    v300._countAndFlagsBits = 0xD000000000000013;
    v300._object = 0x80000001007FE690;
    String.append(_:)(v300);
    v301._countAndFlagsBits = 125;
    v301._object = 0xE100000000000000;
    String.append(_:)(v301);
    v302 = v323;
    v303 = String._bridgeToObjectiveC()();
    v302, v304, v305, v306, v307, v308, v309, v310;
    [v285 internalErrorWithDebugDescription:v303];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E60F0(void *a1)
{
  type metadata accessor for REMCDDueDateDeltaAlert();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = v320;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v317 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v322);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v317, &unk_100938E70, &unk_100797230);

      sub_10000607C(v320);
    }

    v58 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v323;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v324 = ObjCClassFromMetadata;
  v313 = v3;
  v315 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v322 = v312;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v311 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v322);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v311, &unk_100938E70, &unk_100797230);

    sub_10000607C(v312);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v313, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v314 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v315;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v318 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v324 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v322);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v322);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v324 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v323;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v315;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v321 = v144;
      v268 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v322 = v319;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v316 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v270 = v15;
      v271 = [v324 description];
      v272 = a1;
      v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v275 = v274;

      v276 = v273;
      a1 = v272;
      v277 = sub_10000668C(v276, v275, &v322);
      v275, v278, v279, v280, v281, v282, v283, v284;
      *(v268 + 14) = v277;
      v15 = v270;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v316, &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);

      v144 = v321;
    }

    v285 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v286._countAndFlagsBits = 0xD000000000000054;
    v286._object = 0x80000001007FE300;
    String.append(_:)(v286);
    v287 = [v265 description];
    v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291._countAndFlagsBits = v288;
    v291._object = v290;
    String.append(_:)(v291);
    v290, v292, v293, v294, v295, v296, v297, v298;
    v299._countAndFlagsBits = 0x656A624F4443202CLL;
    v299._object = 0xEC000000203A7463;
    String.append(_:)(v299);
    v300._countAndFlagsBits = 0xD000000000000016;
    v300._object = 0x80000001007FE730;
    String.append(_:)(v300);
    v301._countAndFlagsBits = 125;
    v301._object = 0xE100000000000000;
    String.append(_:)(v301);
    v302 = v323;
    v303 = String._bridgeToObjectiveC()();
    v302, v304, v305, v306, v307, v308, v309, v310;
    [v285 internalErrorWithDebugDescription:v303];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E6E68(void *a1)
{
  type metadata accessor for REMCDTemplateSection();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = v320;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v317 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v322);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v317, &unk_100938E70, &unk_100797230);

      sub_10000607C(v320);
    }

    v58 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v323;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v324 = ObjCClassFromMetadata;
  v313 = v3;
  v315 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v322 = v312;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v311 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v322);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v311, &unk_100938E70, &unk_100797230);

    sub_10000607C(v312);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v313, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v314 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v315;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v318 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v324 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v322);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v322);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v324 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v323;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v315;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v321 = v144;
      v268 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v322 = v319;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v316 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v270 = v15;
      v271 = [v324 description];
      v272 = a1;
      v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v275 = v274;

      v276 = v273;
      a1 = v272;
      v277 = sub_10000668C(v276, v275, &v322);
      v275, v278, v279, v280, v281, v282, v283, v284;
      *(v268 + 14) = v277;
      v15 = v270;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v316, &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);

      v144 = v321;
    }

    v285 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v286._countAndFlagsBits = 0xD000000000000054;
    v286._object = 0x80000001007FE300;
    String.append(_:)(v286);
    v287 = [v265 description];
    v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291._countAndFlagsBits = v288;
    v291._object = v290;
    String.append(_:)(v291);
    v290, v292, v293, v294, v295, v296, v297, v298;
    v299._countAndFlagsBits = 0x656A624F4443202CLL;
    v299._object = 0xEC000000203A7463;
    String.append(_:)(v299);
    v300._countAndFlagsBits = 0xD000000000000014;
    v300._object = 0x80000001007FE570;
    String.append(_:)(v300);
    v301._countAndFlagsBits = 125;
    v301._object = 0xE100000000000000;
    String.append(_:)(v301);
    v302 = v323;
    v303 = String._bridgeToObjectiveC()();
    v302, v304, v305, v306, v307, v308, v309, v310;
    [v285 internalErrorWithDebugDescription:v303];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E7BE0(void *a1)
{
  type metadata accessor for REMCDSmartListSection();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v317 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = v320;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v317 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v322);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v317, &unk_100938E70, &unk_100797230);

      sub_10000607C(v320);
    }

    v58 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v323;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v324 = ObjCClassFromMetadata;
  v313 = v3;
  v315 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v311 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v322 = v312;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v311 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v322);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v311, &unk_100938E70, &unk_100797230);

    sub_10000607C(v312);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v313, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v314 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v315;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v318 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v324 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v322);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v322);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v324 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v323;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v315;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v321 = v144;
      v268 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v322 = v319;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v316 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v270 = v15;
      v271 = [v324 description];
      v272 = a1;
      v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v275 = v274;

      v276 = v273;
      a1 = v272;
      v277 = sub_10000668C(v276, v275, &v322);
      v275, v278, v279, v280, v281, v282, v283, v284;
      *(v268 + 14) = v277;
      v15 = v270;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v316, &unk_100938E70, &unk_100797230);

      sub_10000607C(v319);

      v144 = v321;
    }

    v285 = objc_opt_self();
    v322 = 0;
    v323 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v286._countAndFlagsBits = 0xD000000000000054;
    v286._object = 0x80000001007FE300;
    String.append(_:)(v286);
    v287 = [v265 description];
    v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291._countAndFlagsBits = v288;
    v291._object = v290;
    String.append(_:)(v291);
    v290, v292, v293, v294, v295, v296, v297, v298;
    v299._countAndFlagsBits = 0x656A624F4443202CLL;
    v299._object = 0xEC000000203A7463;
    String.append(_:)(v299);
    v300._countAndFlagsBits = 0xD000000000000015;
    v300._object = 0x80000001007FE590;
    String.append(_:)(v300);
    v301._countAndFlagsBits = 125;
    v301._object = 0xE100000000000000;
    String.append(_:)(v301);
    v302 = v323;
    v303 = String._bridgeToObjectiveC()();
    v302, v304, v305, v306, v307, v308, v309, v310;
    [v285 internalErrorWithDebugDescription:v303];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005E8958(void *a1)
{
  type metadata accessor for REMCDListSection();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v312 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v316 = v314;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v312 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = a1;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = ObjCClassFromMetadata;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v316);
      v50 = v48;
      ObjCClassFromMetadata = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      a1 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v312, &unk_100938E70, &unk_100797230);

      sub_10000607C(v314);
    }

    v58 = objc_opt_self();
    v316 = 0;
    v317 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v317;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v149, v150, v151, v152, v153, v154, v155;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v318 = a1;
  v309 = v3;
  v311 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v306 = swift_slowAlloc();
    v307 = swift_slowAlloc();
    v316 = v307;
    *v99 = 138412546;
    *(v99 + 4) = v96;
    *v306 = v96;
    *(v99 + 12) = 2080;
    v100 = v96;
    v101 = ObjCClassFromMetadata;
    v102 = [ObjCClassFromMetadata description];
    v103 = v15;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    ObjCClassFromMetadata = v101;
    v107 = sub_10000668C(v104, v106, &v316);
    v106, v108, v109, v110, v111, v112, v113, v114;
    *(v99 + 14) = v107;
    v15 = v103;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v99, 0x16u);
    sub_1000050A4(v306, &unk_100938E70, &unk_100797230);

    sub_10000607C(v307);
  }

  v115 = [v15 managedObjectModel];
  v116 = [v115 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v117 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v117 + 16))
  {
    v5, v118, v119, v120, v121, v122, v123, v124;
    goto LABEL_25;
  }

  v125 = sub_100005F4C(v309, v5);
  v127 = v126;
  v5, v126, v128, v129, v130, v131, v132, v133;
  if ((v127 & 1) == 0)
  {
LABEL_25:
    v117, v134, v135, v136, v137, v138, v139, v140;
    v310 = v15;
    v156 = [v15 managedObjectModel];
    v157 = [v156 entitiesByName];

    v158 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v158);
    v160 = v159;
    v158, v161, v162, v163, v164, v165, v166, v167;
    v168 = v311;

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.fault.getter();
    v160, v171, v172, v173, v174, v175, v176, v177;

    v308 = ObjCClassFromMetadata;
    if (os_log_type_enabled(v169, v170))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      *v178 = 138412802;
      *(v178 + 4) = v168;
      *v179 = v168;
      *(v178 + 12) = 2080;
      v180 = v168;
      v181 = [ObjCClassFromMetadata description];
      v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v183;

      v185 = sub_10000668C(v182, v184, &v316);
      v184, v186, v187, v188, v189, v190, v191, v192;
      *(v178 + 14) = v185;
      *(v178 + 22) = 2080;
      v193 = Array.description.getter();
      v195 = v194;
      v196 = sub_10000668C(v193, v194, &v316);
      v195, v197, v198, v199, v200, v201, v202, v203;
      *(v178 + 24) = v196;
      _os_log_impl(&_mh_execute_header, v169, v170, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v178, 0x20u);
      sub_1000050A4(v179, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v204 = objc_opt_self();
    v316 = 0;
    v317 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v205._countAndFlagsBits = 0xD00000000000003FLL;
    v205._object = 0x80000001007FE2A0;
    String.append(_:)(v205);
    v206 = [v168 description];
    v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v209 = v208;

    v210._countAndFlagsBits = v207;
    v210._object = v209;
    String.append(_:)(v210);
    v209, v211, v212, v213, v214, v215, v216, v217;
    v218._countAndFlagsBits = 0x656A624F4443202CLL;
    v218._object = 0xEC000000203A7463;
    String.append(_:)(v218);
    v219 = [v308 description];
    v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v222 = v221;

    v223._countAndFlagsBits = v220;
    v223._object = v222;
    String.append(_:)(v223);
    v222, v224, v225, v226, v227, v228, v229, v230;
    v231._countAndFlagsBits = 0xD000000000000012;
    v231._object = 0x80000001007FE2E0;
    String.append(_:)(v231);
    v232 = Array.description.getter();
    v234 = v233;
    v160, v233, v235, v236, v237, v238, v239, v240;
    v241._countAndFlagsBits = v232;
    v241._object = v234;
    String.append(_:)(v241);
    v234, v242, v243, v244, v245, v246, v247, v248;
    v249._countAndFlagsBits = 125;
    v249._object = 0xE100000000000000;
    String.append(_:)(v249);
    v250 = v317;
    v251 = String._bridgeToObjectiveC()();
    v250, v252, v253, v254, v255, v256, v257, v258;
    [v204 internalErrorWithDebugDescription:v251];

    swift_willThrow();
    a1 = v318;
    goto LABEL_28;
  }

  v141 = *(*(v117 + 56) + 8 * v125);
  v117, v142, v143, v144, v145, v146, v147, v148;
  if (![v141 isKindOfEntity:v15])
  {
    v260 = v311;
    v261 = Logger.logObject.getter();
    v262 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v261, v262))
    {
      v263 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      v315 = swift_slowAlloc();
      v316 = v315;
      *v263 = 138412546;
      *(v263 + 4) = v260;
      *v313 = v260;
      *(v263 + 12) = 2080;
      v264 = v260;
      v265 = v15;
      v266 = [ObjCClassFromMetadata description];
      v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v268 = v141;
      v270 = v269;

      v271 = sub_10000668C(v267, v270, &v316);
      v272 = v270;
      v141 = v268;
      v272, v273, v274, v275, v276, v277, v278, v279;
      *(v263 + 14) = v271;
      v15 = v265;
      _os_log_impl(&_mh_execute_header, v261, v262, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v263, 0x16u);
      sub_1000050A4(v313, &unk_100938E70, &unk_100797230);

      sub_10000607C(v315);
    }

    a1 = v318;
    v280 = objc_opt_self();
    v316 = 0;
    v317 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v281._countAndFlagsBits = 0xD000000000000054;
    v281._object = 0x80000001007FE300;
    String.append(_:)(v281);
    v282 = [v260 description];
    v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v285 = v284;

    v286._countAndFlagsBits = v283;
    v286._object = v285;
    String.append(_:)(v286);
    v285, v287, v288, v289, v290, v291, v292, v293;
    v294._countAndFlagsBits = 0x656A624F4443202CLL;
    v294._object = 0xEC000000203A7463;
    String.append(_:)(v294);
    v295._object = 0x80000001007FE5B0;
    v295._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v295);
    v296._countAndFlagsBits = 125;
    v296._object = 0xE100000000000000;
    String.append(_:)(v296);
    v297 = v317;
    v298 = String._bridgeToObjectiveC()();
    v297, v299, v300, v301, v302, v303, v304, v305;
    [v280 internalErrorWithDebugDescription:v298];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return v318;
}

void *sub_1005E96B8(void *a1)
{
  type metadata accessor for REMCDTemplate();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v323 = v321;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v318 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v323);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      sub_10000607C(v321);
    }

    v58 = objc_opt_self();
    v323 = 0;
    v324 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v324;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v325 = ObjCClassFromMetadata;
  v314 = v3;
  v317 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v313 = swift_slowAlloc();
    v323 = v313;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v312 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v323);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v312, &unk_100938E70, &unk_100797230);

    sub_10000607C(v313);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v314, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v315 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v317;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v319 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v325 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v323);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v323);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v319, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v323 = 0;
    v324 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v325 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v324;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v317;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v323 = v322;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v320 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v316 = v15;
      v270 = [v325 description];
      v271 = a1;
      v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v273 = v144;
      v275 = v274;

      v276 = v272;
      a1 = v271;
      v277 = sub_10000668C(v276, v275, &v323);
      v278 = v275;
      v144 = v273;
      v278, v279, v280, v281, v282, v283, v284, v285;
      *(v268 + 14) = v277;
      v15 = v316;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v320, &unk_100938E70, &unk_100797230);

      sub_10000607C(v322);
    }

    v286 = objc_opt_self();
    v323 = 0;
    v324 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v287._countAndFlagsBits = 0xD000000000000054;
    v287._object = 0x80000001007FE300;
    String.append(_:)(v287);
    v288 = [v265 description];
    v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v291 = v290;

    v292._countAndFlagsBits = v289;
    v292._object = v291;
    String.append(_:)(v292);
    v291, v293, v294, v295, v296, v297, v298, v299;
    v300._countAndFlagsBits = 0x656A624F4443202CLL;
    v300._object = 0xEC000000203A7463;
    String.append(_:)(v300);
    v301._countAndFlagsBits = 0x6D655444434D4552;
    v301._object = 0xED00006574616C70;
    String.append(_:)(v301);
    v302._countAndFlagsBits = 125;
    v302._object = 0xE100000000000000;
    String.append(_:)(v302);
    v303 = v324;
    v304 = String._bridgeToObjectiveC()();
    v303, v305, v306, v307, v308, v309, v310, v311;
    [v286 internalErrorWithDebugDescription:v304];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void *sub_1005EA438(void *a1)
{
  type metadata accessor for REMCDSavedReminder();
  v2 = [a1 entityName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entity];
  if (!v7)
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    if (qword_100935B58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10093B6F8);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v323 = v321;
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v318 = v38;
      *(v41 + 12) = 2080;
      v42 = v38;
      v43 = ObjCClassFromMetadata;
      v44 = [ObjCClassFromMetadata description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = a1;
      v48 = v47;

      v49 = sub_10000668C(v45, v48, &v323);
      v50 = v48;
      a1 = v46;
      v50, v51, v52, v53, v54, v55, v56, v57;
      *(v41 + 14) = v49;
      ObjCClassFromMetadata = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get entity for CDObject {remObjectID: %@, CDObject: %s}", v41, 0x16u);
      sub_1000050A4(v318, &unk_100938E70, &unk_100797230);

      sub_10000607C(v321);
    }

    v58 = objc_opt_self();
    v323 = 0;
    v324 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v59._countAndFlagsBits = 0xD000000000000030;
    v59._object = 0x80000001007FE260;
    String.append(_:)(v59);
    v60 = [v38 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64._countAndFlagsBits = v61;
    v64._object = v63;
    String.append(_:)(v64);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x656A624F4443202CLL;
    v72._object = 0xEC000000203A7463;
    String.append(_:)(v72);
    v73 = [ObjCClassFromMetadata description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77._countAndFlagsBits = v74;
    v77._object = v76;
    String.append(_:)(v77);
    v76, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v324;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v58 internalErrorWithDebugDescription:v87];

    swift_willThrow();
    goto LABEL_28;
  }

  v15 = v7;
  v16 = [v15 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == v3 && v20 == v5)
    {

      v5, v152, v153, v154, v155, v156, v157, v158;
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20, v23, v24, v25, v26, v27, v28, v29;
    if (v22)
    {

      v20 = v5;
LABEL_23:
      v20, v30, v31, v32, v33, v34, v35, v36;

      return a1;
    }
  }

  if (qword_100935B58 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_100006654(v95, qword_10093B6F8);
  v96 = a1;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();

  v325 = ObjCClassFromMetadata;
  v314 = v3;
  v317 = v96;
  if (os_log_type_enabled(v97, v98))
  {
    v99 = v96;
    v100 = ObjCClassFromMetadata;
    v101 = swift_slowAlloc();
    v312 = swift_slowAlloc();
    v313 = swift_slowAlloc();
    v323 = v313;
    *v101 = 138412546;
    *(v101 + 4) = v99;
    *v312 = v99;
    *(v101 + 12) = 2080;
    v102 = v99;
    v103 = [v100 description];
    v104 = a1;
    v105 = v103;
    v106 = v15;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    a1 = v104;
    v110 = sub_10000668C(v107, v109, &v323);
    v109, v111, v112, v113, v114, v115, v116, v117;
    *(v101 + 14) = v110;
    v15 = v106;
    _os_log_impl(&_mh_execute_header, v97, v98, "cdEntity.name != entityName. Performing lookup {remObjectID: %@, CDObject: %s}", v101, 0x16u);
    sub_1000050A4(v312, &unk_100938E70, &unk_100797230);

    sub_10000607C(v313);
  }

  v118 = [v15 managedObjectModel];
  v119 = [v118 entitiesByName];

  sub_1000060C8(0, &unk_100947240, NSEntityDescription_ptr);
  v120 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v120 + 16))
  {
    v5, v121, v122, v123, v124, v125, v126, v127;
    goto LABEL_25;
  }

  v128 = sub_100005F4C(v314, v5);
  v130 = v129;
  v5, v129, v131, v132, v133, v134, v135, v136;
  if ((v130 & 1) == 0)
  {
LABEL_25:
    v120, v137, v138, v139, v140, v141, v142, v143;
    v315 = v15;
    v159 = [v15 managedObjectModel];
    v160 = [v159 entitiesByName];

    v161 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005E22C8(v161);
    v163 = v162;
    v161, v164, v165, v166, v167, v168, v169, v170;
    v171 = v317;

    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.fault.getter();
    v163, v174, v175, v176, v177, v178, v179, v180;

    if (os_log_type_enabled(v172, v173))
    {
      v181 = swift_slowAlloc();
      v319 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      *v181 = 138412802;
      *(v181 + 4) = v171;
      *v319 = v171;
      *(v181 + 12) = 2080;
      v182 = v171;
      v183 = [v325 description];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v185 = v163;
      v186 = a1;
      v188 = v187;

      v189 = sub_10000668C(v184, v188, &v323);
      v190 = v188;
      a1 = v186;
      v163 = v185;
      v190, v191, v192, v193, v194, v195, v196, v197;
      *(v181 + 14) = v189;
      *(v181 + 22) = 2080;
      v198 = Array.description.getter();
      v200 = v199;
      v201 = sub_10000668C(v198, v199, &v323);
      v200, v202, v203, v204, v205, v206, v207, v208;
      *(v181 + 24) = v201;
      _os_log_impl(&_mh_execute_header, v172, v173, "CoreData entity not found for remObjectID.entity {remObjectID: %@, CDObject: %s, momEntityNames: %s}", v181, 0x20u);
      sub_1000050A4(v319, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    v209 = objc_opt_self();
    v323 = 0;
    v324 = 0xE000000000000000;
    _StringGuts.grow(_:)(100);
    v210._countAndFlagsBits = 0xD00000000000003FLL;
    v210._object = 0x80000001007FE2A0;
    String.append(_:)(v210);
    v211 = [v171 description];
    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v215._countAndFlagsBits = v212;
    v215._object = v214;
    String.append(_:)(v215);
    v214, v216, v217, v218, v219, v220, v221, v222;
    v223._countAndFlagsBits = 0x656A624F4443202CLL;
    v223._object = 0xEC000000203A7463;
    String.append(_:)(v223);
    v224 = [v325 description];
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v226;

    v228._countAndFlagsBits = v225;
    v228._object = v227;
    String.append(_:)(v228);
    v227, v229, v230, v231, v232, v233, v234, v235;
    v236._object = 0x80000001007FE2E0;
    v236._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v236);
    v237 = Array.description.getter();
    v239 = v238;
    v163, v238, v240, v241, v242, v243, v244, v245;
    v246._countAndFlagsBits = v237;
    v246._object = v239;
    String.append(_:)(v246);
    v239, v247, v248, v249, v250, v251, v252, v253;
    v254._countAndFlagsBits = 125;
    v254._object = 0xE100000000000000;
    String.append(_:)(v254);
    v255 = v324;
    v256 = String._bridgeToObjectiveC()();
    v255, v257, v258, v259, v260, v261, v262, v263;
    [v209 internalErrorWithDebugDescription:v256];

    swift_willThrow();
    goto LABEL_28;
  }

  v144 = *(*(v120 + 56) + 8 * v128);
  v120, v145, v146, v147, v148, v149, v150, v151;
  if (![v144 isKindOfEntity:v15])
  {
    v265 = v317;
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      v320 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v323 = v322;
      *v268 = 138412546;
      *(v268 + 4) = v265;
      *v320 = v265;
      *(v268 + 12) = 2080;
      v269 = v265;
      v316 = v15;
      v270 = [v325 description];
      v271 = a1;
      v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v273 = v144;
      v275 = v274;

      v276 = v272;
      a1 = v271;
      v277 = sub_10000668C(v276, v275, &v323);
      v278 = v275;
      v144 = v273;
      v278, v279, v280, v281, v282, v283, v284, v285;
      *(v268 + 14) = v277;
      v15 = v316;
      _os_log_impl(&_mh_execute_header, v266, v267, "ObjectID entity is not a subentity of the requested CDObject's entity {remObjectID: %@, CDObject: %s}", v268, 0x16u);
      sub_1000050A4(v320, &unk_100938E70, &unk_100797230);

      sub_10000607C(v322);
    }

    v286 = objc_opt_self();
    v323 = 0;
    v324 = 0xE000000000000000;
    _StringGuts.grow(_:)(101);
    v287._countAndFlagsBits = 0xD000000000000054;
    v287._object = 0x80000001007FE300;
    String.append(_:)(v287);
    v288 = [v265 description];
    v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v291 = v290;

    v292._countAndFlagsBits = v289;
    v292._object = v291;
    String.append(_:)(v292);
    v291, v293, v294, v295, v296, v297, v298, v299;
    v300._countAndFlagsBits = 0x656A624F4443202CLL;
    v300._object = 0xEC000000203A7463;
    String.append(_:)(v300);
    v301._object = 0x80000001007EFFC0;
    v301._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v301);
    v302._countAndFlagsBits = 125;
    v302._object = 0xE100000000000000;
    String.append(_:)(v302);
    v303 = v324;
    v304 = String._bridgeToObjectiveC()();
    v303, v305, v306, v307, v308, v309, v310, v311;
    [v286 internalErrorWithDebugDescription:v304];

    swift_willThrow();
LABEL_28:

    return a1;
  }

  return a1;
}

void sub_1005EB1B0(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for REMJSONDeserializationError();
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5, v7).n128_u64[0];
  v10 = (&v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v3 membershipsOfRemindersInSectionsAsData];
  if (!v11)
  {
    goto LABEL_25;
  }

  v93 = a1;
  v12 = v11;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v2)
  {
    sub_10001BBA0(v13, v15);
    v96 = v2;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if (swift_dynamicCast())
    {
      if ((*(v6 + 88))(v10, v5) == enum case for REMJSONDeserializationError.notSupported(_:))
      {

        (*(v6 + 96))(v10, v5);
        v16 = *v10;
        if (qword_100935B10 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100006654(v17, qword_10093A880);
        v18 = v3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v92 = v16;
          v21 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *v21 = 136446722;
          v94 = type metadata accessor for REMCDTemplate();
          sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
          v22 = String.init<A>(describing:)();
          v24 = v23;
          v25 = sub_10000668C(v22, v23, &v95);
          v24, v26, v27, v28, v29, v30, v31, v32;
          *(v21 + 4) = v25;
          *(v21 + 12) = 2082;
          v33 = [v18 remObjectID];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 description];

            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;
          }

          else
          {
            v36 = 7104878;
            v38 = 0xE300000000000000;
          }

          v82 = sub_10000668C(v36, v38, &v95);
          v38, v83, v84, v85, v86, v87, v88, v89;
          *(v21 + 14) = v82;
          *(v21 + 22) = 2050;
          *(v21 + 24) = v92;
          _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' because current runtime version is lower than minimumSupportedVersion. It will be overwritten. {objectID: %{public}s, minimumSupportedVersion: %{public}ld}", v21, 0x20u);
          swift_arrayDestroy();
        }

        goto LABEL_23;
      }

      (*(v6 + 8))(v10, v5);
    }

    if (qword_100935B10 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_10093A880);
    swift_errorRetain();
    v42 = v3;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v96 = v92;
      *v45 = 136446722;
      v95 = type metadata accessor for REMCDTemplate();
      sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      v49 = sub_10000668C(v46, v47, &v96);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      v57 = [v42 remObjectID];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 description];

        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
      }

      else
      {
        v60 = 7104878;
        v62 = 0xE300000000000000;
      }

      v63 = sub_10000668C(v60, v62, &v96);
      v62, v64, v65, v66, v67, v68, v69, v70;
      *(v45 + 14) = v63;
      *(v45 + 22) = 2082;
      swift_getErrorValue();
      v71 = Error.rem_errorDescription.getter();
      v73 = v72;
      v74 = sub_10000668C(v71, v72, &v96);
      v73, v75, v76, v77, v78, v79, v80, v81;
      *(v45 + 24) = v74;
      _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' due to unexpected error. It will be overwritten. {objectID: %{public}s, error: %{public}s}", v45, 0x20u);
      swift_arrayDestroy();

      goto LABEL_24;
    }

LABEL_23:

LABEL_24:
    a1 = v93;
LABEL_25:
    v40 = a1;
    v39 = 0;
    goto LABEL_26;
  }

  sub_10001BBA0(v13, v15);
  v39 = v96;
  v40 = [v96 mergingWith:v93 mergePolicy:0];
LABEL_26:
  v90 = v40;
  sub_10032D8A8(v40, 1, v91);
}

void sub_1005EB8A8(void *a1, void (*a2)(void, void), unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v103 = a3;
  v104 = a4;
  v11 = v6;
  v13 = type metadata accessor for REMJSONDeserializationError();
  v14 = *(v13 - 8);
  *&v16 = __chkstk_darwin(v13, v15).n128_u64[0];
  v18 = (&v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [v11 membershipsOfRemindersInSectionsAsData];
  if (!v19)
  {
    goto LABEL_25;
  }

  v101 = a5;
  v102 = a6;
  v105 = a1;
  v106 = a2;
  v20 = v19;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v7)
  {
    sub_10001BBA0(v21, v23);
    v109 = v7;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if (swift_dynamicCast())
    {
      if ((*(v14 + 88))(v18, v13) == enum case for REMJSONDeserializationError.notSupported(_:))
      {

        (*(v14 + 96))(v18, v13);
        v24 = *v18;
        if (qword_100935B10 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100006654(v25, qword_10093A880);
        v26 = v11;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v100 = v24;
          v29 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v29 = 136446722;
          v107 = sub_1000060C8(0, v103, v104);
          sub_1000F5104(v101, v102);
          v30 = String.init<A>(describing:)();
          v32 = v31;
          v33 = sub_10000668C(v30, v31, &v108);
          v32, v34, v35, v36, v37, v38, v39, v40;
          *(v29 + 4) = v33;
          *(v29 + 12) = 2082;
          v41 = [v26 remObjectID];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 description];

            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;
          }

          else
          {
            v44 = 7104878;
            v46 = 0xE300000000000000;
          }

          a2 = v106;
          v90 = sub_10000668C(v44, v46, &v108);
          v46, v91, v92, v93, v94, v95, v96, v97;
          *(v29 + 14) = v90;
          *(v29 + 22) = 2050;
          *(v29 + 24) = v100;
          _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' because current runtime version is lower than minimumSupportedVersion. It will be overwritten. {objectID: %{public}s, minimumSupportedVersion: %{public}ld}", v29, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          a2 = v106;
        }

LABEL_24:
        a1 = v105;
LABEL_25:
        v48 = a1;
        v47 = 0;
        goto LABEL_26;
      }

      (*(v14 + 8))(v18, v13);
    }

    if (qword_100935B10 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_10093A880);
    swift_errorRetain();
    v50 = v11;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v109 = v100;
      *v53 = 136446722;
      v108 = sub_1000060C8(0, v103, v104);
      sub_1000F5104(v101, v102);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      v57 = sub_10000668C(v54, v55, &v109);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v53 + 4) = v57;
      *(v53 + 12) = 2082;
      v65 = [v50 remObjectID];
      if (v65)
      {
        v66 = v65;
        v67 = [v65 description];

        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
      }

      else
      {
        v68 = 7104878;
        v70 = 0xE300000000000000;
      }

      a2 = v106;
      v71 = sub_10000668C(v68, v70, &v109);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v53 + 14) = v71;
      *(v53 + 22) = 2082;
      swift_getErrorValue();
      v79 = Error.rem_errorDescription.getter();
      v81 = v80;
      v82 = sub_10000668C(v79, v80, &v109);
      v81, v83, v84, v85, v86, v87, v88, v89;
      *(v53 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v51, v52, "%{public}s#mergeMembershipsOfRemindersInSections(_:): Failed to deserialize 'membershipsOfRemindersInSectionsAsData' due to unexpected error. It will be overwritten. {objectID: %{public}s, error: %{public}s}", v53, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      a2 = v106;
    }

    goto LABEL_24;
  }

  sub_10001BBA0(v21, v23);
  v47 = v109;
  v48 = [v109 mergingWith:v105 mergePolicy:0];
  a2 = v106;
LABEL_26:
  v98 = v48;
  a2(v48, 1);
}

void sub_1005EBFC8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_1005EC0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009436D0, &unk_100797F90);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EC5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_10094F300, &unk_100797FD0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ECAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F630, qword_1007A3430);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943950, &unk_1007A4200);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ECFE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F450, &unk_1007A0270);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943720, &unk_1007A4020);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ED4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDSavedAttachment();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F3D0, &qword_1007B4F68);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005ED9D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943860, &unk_100797FC0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EDECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDManualSortHint();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F2E0, &qword_1007B4EA0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10093A958, &qword_100797F70);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EE3B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_1009405B0, &unk_1007B4EC0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10094F310, &qword_100797F78);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EE8B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F7F8, &qword_1007B51E8);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10094F7F0, &unk_100798000);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EEDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F7B0, &qword_1007B51C0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EF2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&unk_10094F760, &qword_1007B5198);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EF7A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_10094F688, off_1008D4140);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&unk_10094F6B0, &qword_1007B5170);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005EFCA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943760, &unk_100797FA0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F01A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F4C0, &qword_1007B5018);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F069C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F4F8, &qword_1007B5040);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F0B98(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F530, &qword_1007B5068);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943820, &unk_1007A4100);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1094(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_100940948, &qword_1007A0258);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1590(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&unk_10094F110, &qword_1007A1FB8);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943260, &qword_100797F38);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F188, &qword_1007B4D88);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F1F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDDueDateDeltaAlert();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F828, &qword_1007B5220);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100944000, &unk_100798010);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F2474(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDTemplateSection();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F1D0, &qword_1007A3678);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009433D0, &unk_100797F50);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F2960(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDSmartListSection();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10094F210, &unk_1007A0140);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F2E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDListSection();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_100939BC8, &unk_100796D40);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_100943470, &unk_100797F60);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F3338(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDTemplate();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10093F3B8, &unk_10079DDE0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

void sub_1005F3824(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    v75 = a3;
    v74 = a2;
    v76 = a4;
    v77 = v5;
    v78 = v6;
    v82 = &_swiftEmptyArrayStorage;
    v80 = v16;
    sub_100253258(0, v16, 0);
    v17 = 0;
    v18 = v82;
    do
    {
      v19 = *(v81 + 8 * v17 + 32);
      v20 = [v19 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_100253258((v21 > 1), v22 + 1, 1);
        v18 = v82;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
    }

    while (v80 != v17);
    type metadata accessor for REMCDSavedReminder();
    v23 = sub_1001A59A4(v18);

    KeyPath = swift_getKeyPath();
    sub_1003942EC(v23);
    v26 = v25;
    v23, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_10042D814(KeyPath, v26);

    v35 = [objc_allocWithZone(NSFetchRequest) init];
    v36 = [swift_getObjCClassFromMetadata() entity];
    [v35 setEntity:v36];

    if (v79)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = v76;
    v39 = v75;
    [v35 setAffectedStores:v37.super.isa];

    [v35 setPredicate:v34];
    v40 = v78;
    if ((v39 & 1) == 0)
    {
      [v35 setFetchBatchSize:v74];
    }

    if (v38)
    {
      v41.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    [v35 setRelationshipKeyPathsForPrefetching:v41.super.isa];

    v42 = NSManagedObjectContext.fetch<A>(_:)();
    if (v40)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v84 = sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
    v82 = v43;
    throwingCast<A>(_:as:failureMessage:)();
    sub_10000607C(&v82);
    v51 = v85;
    if (v85 >> 62)
    {
      v73 = v85;
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v73;
    }

    else
    {
      v52 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v80 < v52)
    {
      v51, v44, v45, v46, v47, v48, v49, v50;
      v53 = objc_opt_self();
      v82 = 0;
      v83 = 0xE000000000000000;
      _StringGuts.grow(_:)(70);
      v54._object = 0x80000001007FE210;
      v54._countAndFlagsBits = 0xD000000000000044;
      String.append(_:)(v54);
      sub_1000F5104(&unk_10094F390, &unk_100797F80);
      v55._countAndFlagsBits = Array.description.getter();
      object = v55._object;
      String.append(_:)(v55);
      object, v57, v58, v59, v60, v61, v62, v63;
      v64 = v83;
      v65 = String._bridgeToObjectiveC()();
      v64, v66, v67, v68, v69, v70, v71, v72;
      [v53 internalErrorWithDebugDescription:v65];

      swift_willThrow();
LABEL_15:

      return;
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F3D10(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008DF0F8, v13);
        v12, v15, v16, v17, v18, v19, v20, v21;
        if (v14 <= 6)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366398(0, *v8->clientIdentity + 1, 1, v8, v23, v24, v25, v26);
      }

      v28 = *v8->clientIdentity;
      v27 = *&v8->clientIdentity[8];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = sub_100366398((v27 > 1), v28 + 1, 1, v8, v23, v24, v25, v26);
        v29 = v28 + 1;
        v8 = v30;
      }

      *v8->clientIdentity = v29;
      v8->clientIdentity[v28 + 16] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v22 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v22 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v22);
      ++v7;
      if (v5)
      {
        v7 = v22;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100946C50);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136446210;
    sub_1000F5104(&qword_10094F5E8, &qword_1007B5100);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, &v48);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v34, 0xCu);
    sub_10000607C(v35);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F3FF0(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_100682CAC(v11, v12);
        if (v13 != 42)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v39 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003663C0(0, *v8->clientIdentity + 1, 1, v8, v15, v16, v17, v18);
      }

      v20 = *v8->clientIdentity;
      v19 = *&v8->clientIdentity[8];
      v21 = v39;
      if (v20 >= v19 >> 1)
      {
        v8 = sub_1003663C0((v19 > 1), v20 + 1, 1, v8, v15, v16, v17, v18);
        v21 = v39;
      }

      *v8->clientIdentity = v20 + 1;
      v8->clientIdentity[v20 + 16] = v21;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100946C50);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136446210;
    sub_1000F5104(&qword_10094F5D0, &qword_1007B50E8);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, &v40);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F42B8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *, __n128), uint64_t *a4, uint64_t *a5)
{
  if (!a1)
  {
    v5 = a4;
    a2 = a5;
    if (qword_100936128 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (*(a1 + 48) + ((v13 << 10) | (16 * v16)));
    v18 = *v17;
    v19 = v17[1];

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    v5 = _findStringSwitchCase(cases:string:)(a2, v20);
    v19, v21, v22, v23, v24, v25, v26, v27;
    if (v5 == 1)
    {
      v47 = 1;
LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = (a3)(0, *v14->clientIdentity + 1, 1, v14);
      }

      v29 = *v14->clientIdentity;
      v28 = *&v14->clientIdentity[8];
      v5 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        v14 = (a3)(v28 > 1, v29 + 1, 1, v14);
      }

      *v14->clientIdentity = v5;
      v14->clientIdentity[v29 + 16] = v47;
    }

    else if (!v5)
    {
      v47 = 0;
      goto LABEL_14;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_21:
  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100946C50);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49 = v34;
    *v33 = 136446210;
    sub_1000F5104(v5, a2);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = sub_10000668C(v35, v36, &v49);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v33, 0xCu);
    sub_10000607C(v34);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F45A8(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_1002F944C(v11, v12);
        if (v13 != 26)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v39 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1003663FC(0, *v8->clientIdentity + 1, 1, v8, v15, v16, v17, v18);
      }

      v20 = *v8->clientIdentity;
      v19 = *&v8->clientIdentity[8];
      v21 = v39;
      if (v20 >= v19 >> 1)
      {
        v8 = sub_1003663FC((v19 > 1), v20 + 1, 1, v8, v15, v16, v17, v18);
        v21 = v39;
      }

      *v8->clientIdentity = v20 + 1;
      v8->clientIdentity[v20 + 16] = v21;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100946C50);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136446210;
    sub_1000F5104(&qword_10094F638, &qword_1007B5128);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, &v40);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F4870(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13 = sub_1002B3014(v11, v12);
        if (v13 != 40)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v39 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366424(0, *v8->clientIdentity + 1, 1, v8, v15, v16, v17, v18);
      }

      v20 = *v8->clientIdentity;
      v19 = *&v8->clientIdentity[8];
      v21 = v39;
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100366424((v19 > 1), v20 + 1, 1, v8, v15, v16, v17, v18);
        v21 = v39;
      }

      *v8->clientIdentity = v20 + 1;
      v8->clientIdentity[v20 + 16] = v21;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v14);
      ++v7;
      if (v5)
      {
        v7 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006654(v22, qword_100946C50);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v40 = v26;
    *v25 = 136446210;
    sub_1000F5104(&unk_10094F420, &qword_1007B4FA8);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, &v40);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v25, 0xCu);
    sub_10000607C(v26);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F4B38(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *, __n128), uint64_t *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = &_swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        v5 = _findStringSwitchCase(cases:string:)(a2, v19);
        v18, v20, v21, v22, v23, v24, v25, v26;
        if (v5 <= 2)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = (a3)(0, *v14->clientIdentity + 1, 1, v14);
      }

      v29 = *v14->clientIdentity;
      v28 = *&v14->clientIdentity[8];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v31 = (a3)(v28 > 1, v29 + 1, 1, v14);
        v30 = v29 + 1;
        v14 = v31;
      }

      *v14->clientIdentity = v30;
      v14->clientIdentity[v29 + 16] = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v27 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v27 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v27);
      ++v13;
      if (v11)
      {
        v13 = v27;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100946C50);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    sub_1000F5104(v5, a2);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = sub_10000668C(v37, v38, &v50);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v35, 0xCu);
    sub_10000607C(v36);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F4E24(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008DFE98, v13);
        v12, v15, v16, v17, v18, v19, v20, v21;
        if (v14 < 0xC)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100366460(0, *v8->clientIdentity + 1, 1, v8, v23, v24, v25, v26);
      }

      v28 = *v8->clientIdentity;
      v27 = *&v8->clientIdentity[8];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = sub_100366460((v27 > 1), v28 + 1, 1, v8, v23, v24, v25, v26);
        v29 = v28 + 1;
        v8 = v30;
      }

      *v8->clientIdentity = v29;
      v8->clientIdentity[v28 + 16] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v22 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v22 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v22);
      ++v7;
      if (v5)
      {
        v7 = v22;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100946C50);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136446210;
    sub_1000F5104(&unk_10094F2A0, &qword_1007B4E68);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, &v48);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v34, 0xCu);
    sub_10000607C(v35);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F5104(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *, __n128), _TtC7remindd19RDXPCStorePerformer *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = &_swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v5 = v16[1];

        v18._countAndFlagsBits = v17;
        v18._object = v5;
        v19 = _findStringSwitchCase(cases:string:)(a2, v18);
        v5, v20, v21, v22, v23, v24, v25, v26;
        if (!v19)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = (a3)(0, *v14->clientIdentity + 1, 1, v14);
      }

      v29 = *v14->clientIdentity;
      v28 = *&v14->clientIdentity[8];
      v5 = (v29 + 1);
      if (v29 >= v28 >> 1)
      {
        v14 = (a3)(v28 > 1, v29 + 1, 1, v14);
      }

      *v14->clientIdentity = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v27 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v27 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v27);
      ++v13;
      if (v11)
      {
        v13 = v27;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006654(v30, qword_100946C50);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v34;
    *v33 = 136446210;
    sub_1000F5104(v5, a2);
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = sub_10000668C(v35, v36, &v48);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v33, 0xCu);
    sub_10000607C(v34);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F53DC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 56;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * v9)));
        v11 = *v10;
        v12 = v10[1];

        v13._countAndFlagsBits = v11;
        v13._object = v12;
        v14 = _findStringSwitchCase(cases:string:)(&off_1008E0090, v13);
        v12, v15, v16, v17, v18, v19, v20, v21;
        if (v14 < 0xE)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10036649C(0, *v8->clientIdentity + 1, 1, v8, v23, v24, v25, v26);
      }

      v28 = *v8->clientIdentity;
      v27 = *&v8->clientIdentity[8];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = sub_10036649C((v27 > 1), v28 + 1, 1, v8, v23, v24, v25, v26);
        v29 = v28 + 1;
        v8 = v30;
      }

      *v8->clientIdentity = v29;
      v8->clientIdentity[v28 + 16] = v14;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v22 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v22 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v22);
      ++v7;
      if (v5)
      {
        v7 = v22;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100006654(v31, qword_100946C50);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136446210;
    sub_1000F5104(&qword_10094F348, &qword_1007B4EF8);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, &v48);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v34, 0xCu);
    sub_10000607C(v35);
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005F56BC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t, void *, __n128), uint64_t *a4, uint64_t *a5)
{
  if (a1)
  {
    v8 = a1 + 56;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 56);
    v12 = (v9 + 63) >> 6;

    v13 = 0;
    v14 = &_swiftEmptyArrayStorage;
    if (!v11)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(a1 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];

        v19._countAndFlagsBits = v17;
        v19._object = v18;
        v5 = _findStringSwitchCase(cases:string:)(a2, v19);
        v18, v20, v21, v22, v23, v24, v25, v26;
        if (v5 <= 5)
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = (a3)(0, *v14->clientIdentity + 1, 1, v14);
      }

      v29 = *v14->clientIdentity;
      v28 = *&v14->clientIdentity[8];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v31 = (a3)(v28 > 1, v29 + 1, 1, v14);
        v30 = v29 + 1;
        v14 = v31;
      }

      *v14->clientIdentity = v30;
      v14->clientIdentity[v29 + 16] = v5;
    }

    while (v11);
LABEL_7:
    while (1)
    {
      v27 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v27 >= v12)
      {

        return v14;
      }

      v11 = *(v8 + 8 * v27);
      ++v13;
      if (v11)
      {
        v13 = v27;
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = a4;
  a2 = a5;
  if (qword_100936128 != -1)
  {
LABEL_24:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_100946C50);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    sub_1000F5104(v5, a2);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = sub_10000668C(v37, v38, &v50);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Tried to create CDIngestableKey array without changedKeys, the ingestable may be missing an REMChangedKeysObserver in the change item {type: %{public}s}", v35, 0xCu);
    sub_10000607C(v36);
  }

  return &_swiftEmptyArrayStorage;
}