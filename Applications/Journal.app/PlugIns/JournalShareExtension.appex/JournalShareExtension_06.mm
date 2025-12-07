uint64_t sub_10009B3F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000FFE34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009B434()
{
  result = qword_10014F538;
  if (!qword_10014F538)
  {
    sub_10000F19C(&qword_10014F528, &qword_10010E9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F538);
  }

  return result;
}

uint64_t sub_10009B498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_100101824();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_100007210(&qword_10014C348, &qword_10010BF68);
  v4[10] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v4[11] = swift_task_alloc();
  sub_100007210(&unk_10014D640, &unk_10010C480);
  v4[12] = swift_task_alloc();
  v7 = sub_100007210(&qword_10014C358, &unk_10010C6E0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1000FFE34();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_100101284();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[20] = v9;
  v4[21] = v11;

  return _swift_task_switch(sub_10009B714, v9);
}

uint64_t sub_10009B714()
{
  v1 = v0[4];
  if (!v1)
  {
LABEL_7:

    v8 = v0[1];

    return v8();
  }

  v2 = v0[5];
  v3 = OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata;
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[15];
  if (!*(v2 + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata))
  {
    (*(v5 + 56))(v0[15], 1, 1, v0[16]);
    goto LABEL_6;
  }

  v7 = v1;

  sub_10000935C(v6);

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {

LABEL_6:
    sub_10000FFB4(v0[15], &qword_10014C358, &unk_10010C6E0);
    goto LABEL_7;
  }

  v10 = v0[17];
  v22 = v0[16];
  v23 = v0[18];
  v25 = v0[14];
  v26 = v0[13];
  v11 = v0[11];
  v24 = v0[10];
  (*(v10 + 32))(v0[19], v0[15]);
  v12 = [v7 dataRepresentation];
  sub_1000FF564();

  sub_1000FFE24();
  v13 = sub_1000FF514();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_1000FFE14();
  (*(v10 + 16))(v24, v23, v22);
  swift_storeEnumTagMultiPayload();
  sub_100007210(&qword_10014F548, &qword_10010E9E8);
  v14 = swift_allocObject();
  (*(v25 + 56))(v14 + *(*v14 + 104), 1, 1, v26);
  *(v14 + *(*v14 + 112)) = xmmword_10010BC70;
  sub_10001012C(v24, v14 + *(*v14 + 120), &qword_10014C348, &qword_10010BF68);
  *(v2 + v3) = v14;

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v16 = v0[5];
    ObjectType = swift_getObjectType();
    v18 = v16;
    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_10009BB04;
    v21 = v0[2];
    v20 = v0[3];

    return sub_100006568(v21, v20, ObjectType, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009BB04()
{
  v1 = *v0;

  v2 = *(v1 + 160);

  return _swift_task_switch(sub_10009BC24, v2);
}

uint64_t sub_10009BC24()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_10009BCD8;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1000B09C0(v3, v2);
}

uint64_t sub_10009BCD8()
{
  v1 = *v0;

  v2 = *(v1 + 160);

  return _swift_task_switch(sub_10009BDF8, v2);
}

uint64_t sub_10009BDF8()
{
  v1 = *(v0 + 40);
  v2 = *&v1[OBJC_IVAR____TtC21JournalShareExtension5Asset_context];
  *(v0 + 192) = v2;
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = swift_allocObject();
    *(v0 + 200) = v6;
    *(v6 + 16) = v1;
    (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v7 = v1;
    v2;
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    v9 = sub_100007210(&qword_10014C870, &qword_10010C4F8);
    *v8 = v0;
    v8[1] = sub_10009C008;
    v10 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 224, v10, sub_10009DA14, v6, v9);
  }

  else
  {

    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(*(v0 + 136) + 8);
    v13(*(v0 + 144), v12);
    v13(v11, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10009C008()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_10009C2C4;
  }

  else
  {
    v8 = sub_10009C1DC;
  }

  return _swift_task_switch(v8, v7);
}

uint64_t sub_10009C1DC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(*(v0 + 136) + 8);
  v3(*(v0 + 144), v2);
  v3(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10009C2C4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  if (qword_10014B7C8 != -1)
  {
    swift_once();
  }

  v6 = sub_100100AE4();
  sub_100003D38(v6, qword_10014F498);
  swift_errorRetain();
  v7 = sub_100100AC4();
  v8 = sub_1001015B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed saving updated link metadata to asset: %@", v9, 0xCu);
    sub_10000FFB4(v10, &unk_10014D660, &qword_10010C710);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10009C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[22] = a3;
  v7[27] = sub_100007210(&qword_10014C348, &qword_10010BF68);
  v7[28] = swift_task_alloc();
  sub_100007210(&unk_10014D640, &unk_10010C480);
  v7[29] = swift_task_alloc();
  v9 = sub_1000FFE34();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = type metadata accessor for AssetAttachment.AssetType(0);
  v7[34] = swift_task_alloc();
  v10 = sub_1000FF514();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v11 = sub_1000FF874();
  v7[41] = v11;
  v7[42] = *(v11 - 8);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v12 = sub_1000FFC54();
  v7[45] = v12;
  v7[46] = *(v12 - 8);
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v13 = sub_1001007D4();
  v7[49] = v13;
  v7[50] = *(v13 - 8);
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = sub_100101284();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v7[53] = v14;
  v7[54] = v16;

  return _swift_task_switch(sub_10009C874, v14);
}

uint64_t sub_10009C874()
{
  v47 = v0[52];
  v1 = v0[48];
  v40 = v0[49];
  v42 = v0[51];
  v43 = v0[47];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
  v41 = v0[43];
  v5 = v0[42];
  v48 = v0[41];
  v44 = v0[36];
  v45 = v0[40];
  v6 = v0[22];
  v46 = v0[35];
  v38 = v0[50];
  (*(v38 + 104))();
  v39 = *(v3 + 16);
  v39(v1, v6, v2);
  sub_1000FF864();
  v7 = objc_allocWithZone(type metadata accessor for LinkAsset(0));
  *&v7[OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata] = 0;
  v7[OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_contentType] = 6;
  (*(v5 + 16))(v41, v4, v48);
  (*(v38 + 16))(v42, v47, v40);
  v39(v43, v1, v2);
  v8 = sub_1000429EC(v41, v42, v43);
  v0[55] = v8;
  v9 = *(v3 + 8);
  v0[56] = v9;
  v0[57] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  (*(v38 + 8))(v47, v40);
  v10 = *(v5 + 8);
  v10(v4, v48);
  v11 = *(v44 + 56);
  v0[58] = v11;
  v0[59] = (v44 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v45, 1, 1, v46);
  if (sub_1000FF3D4())
  {
    v49 = v8;
    sub_10005D9D8(v0[37]);
    v16 = v0[44];
    v17 = v0[41];
    v19 = v0[36];
    v18 = v0[37];
    v21 = v0[34];
    v20 = v0[35];
    v22 = *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
    *v21 = xmmword_10010C660;
    (*(v19 + 16))(&v21[v22], v18, v20);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1000FF864();
    v23 = sub_1000FF814();
    v25 = v24;
    v10(v16, v17);
    type metadata accessor for AssetAttachment(0);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    sub_10001931C(v21, v26 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType);
    v27 = (v26 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
    *v27 = v23;
    v27[1] = v25;
    v28 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
    swift_beginAccess();
    sub_1001011B4();
    if (*((*&v49[v28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v49[v28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100101204();
    }

    v30 = v0[36];
    v29 = v0[37];
    v31 = v0[35];
    sub_100101234();
    swift_endAccess();
    (*(v30 + 8))(v29, v31);
  }

  else
  {
    v12 = v0[40];
    v13 = v0[35];
    v14 = v0[36];
    v15 = v0[23];
    sub_10000FFB4(v12, &qword_10014EBD0, &qword_10010BE50);
    (*(v14 + 16))(v12, v15, v13);
    v11(v12, 0, 1, v13);
  }

  v32 = [objc_allocWithZone(LPMetadataProvider) init];
  v0[60] = v32;
  sub_1000FF474(v33);
  v35 = v34;
  v0[61] = v34;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10009CF50;
  v36 = swift_continuation_init();
  v0[17] = sub_100007210(&qword_10014CBF8, &qword_10010E9E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000994EC;
  v0[13] = &unk_100137D10;
  v0[14] = v36;
  [v32 startFetchingMetadataForURL:v35 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009CF50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  if (v2)
  {
    v3 = *(v1 + 424);
    v4 = sub_10009D438;
  }

  else
  {

    v3 = *(v1 + 424);
    v4 = sub_10009D068;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10009D068()
{
  v1 = *(v0 + 488);
  v28 = *(v0 + 464);
  v2 = *(v0 + 312);
  v27 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 168);

  v6 = [v5 dataRepresentation];
  sub_1000FF564();

  v7 = sub_1000FF804();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3, v4, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  v28(v2, 1, 1, v27);
  sub_1000FFE14();

  v25 = *(v0 + 448);
  v26 = *(v0 + 440);
  v9 = *(v0 + 360);
  v22 = *(v0 + 320);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v12 = *(v0 + 248);
  v23 = *(v0 + 240);
  v24 = *(v0 + 256);
  v13 = *(v0 + 224);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  (*(v8 + 8))(*(v0 + 208), v7);
  (*(v10 + 8))(v15, v11);
  v25(v14, v9);
  sub_10000FFB4(v22, &qword_10014EBD0, &qword_10010BE50);
  (*(v12 + 32))(v13, v24, v23);
  swift_storeEnumTagMultiPayload();
  sub_100007210(&qword_10014F548, &qword_10010E9E8);
  v16 = swift_allocObject();
  v17 = *(*v16 + 104);
  v18 = sub_100007210(&qword_10014C358, &unk_10010C6E0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *(v16 + *(*v16 + 112)) = xmmword_10010BC70;
  sub_10001012C(v13, v16 + *(*v16 + 120), &qword_10014C348, &qword_10010BF68);
  *(v26 + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata) = v16;

  v19 = *(v0 + 8);
  v20 = *(v0 + 440);

  return v19(v20);
}

uint64_t sub_10009D438(uint64_t a1)
{
  v2 = v1[61];
  v3 = v1[60];
  v4 = v1[25];
  swift_willThrow();

  if (v4)
  {
    v5 = v1[25];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v1[24] & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = v1[40];
      v8 = v1[38];
      v9 = v1[35];
      v10 = v1[36];
      v11 = [objc_allocWithZone(LPLinkMetadata) init];
      v12 = sub_100100F94();

      [v11 setTitle:v12];

      sub_100083320(v7, v8);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        v14 = 0;
      }

      else
      {
        v21 = v1[38];
        v22 = v1[35];
        v23 = v1[36];
        sub_1000FF474(v13);
        v14 = v24;
        (*(v23 + 8))(v21, v22);
      }

      v48 = v1[58];
      v25 = v1[39];
      v47 = v1[35];
      v26 = v1[29];
      v27 = v1[26];
      [v11 setOriginalURL:v14];

      v28 = [v11 dataRepresentation];
      sub_1000FF564();

      v19 = sub_1000FF804();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v26, v27, v19);
      (*(v20 + 56))(v26, 0, 1, v19);
      v48(v25, 1, 1, v47);
      sub_1000FFE14();

      goto LABEL_11;
    }
  }

  v15 = v1[39];
  v16 = v1[40];
  v17 = v1[29];
  v18 = v1[26];
  v19 = sub_1000FF804();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_100083320(v16, v15);
  sub_1000FFE14();
LABEL_11:
  v45 = v1[56];
  v46 = v1[55];
  v29 = v1[45];
  v42 = v1[40];
  v31 = v1[35];
  v30 = v1[36];
  v32 = v1[31];
  v43 = v1[30];
  v44 = v1[32];
  v33 = v1[28];
  v34 = v1[22];
  v35 = v1[23];
  (*(v20 + 8))(v1[26], v19);
  (*(v30 + 8))(v35, v31);
  v45(v34, v29);
  sub_10000FFB4(v42, &qword_10014EBD0, &qword_10010BE50);
  (*(v32 + 32))(v33, v44, v43);
  swift_storeEnumTagMultiPayload();
  sub_100007210(&qword_10014F548, &qword_10010E9E8);
  v36 = swift_allocObject();
  v37 = *(*v36 + 104);
  v38 = sub_100007210(&qword_10014C358, &unk_10010C6E0);
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  *(v36 + *(*v36 + 112)) = xmmword_10010BC70;
  sub_10001012C(v33, v36 + *(*v36 + 120), &qword_10014C348, &qword_10010BF68);
  *(v46 + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata) = v36;

  v39 = v1[1];
  v40 = v1[55];

  return v39(v40);
}

uint64_t sub_10009D9DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009DA30()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100095D18();
  sub_100100C54();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158758 = result;
  return result;
}

uint64_t sub_10009DBE0()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100095D18();
  sub_100100C84();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158760 = result;
  return result;
}

uint64_t sub_10009DD90()
{
  v0 = sub_1001016E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100101694();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100100CB4();
  __chkstk_darwin(v5 - 8);
  sub_100095D18();
  sub_100100C54();
  sub_100101684();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = sub_100101724();
  qword_100158768 = result;
  return result;
}

double sub_10009DF48(char a1, uint64_t a2, char a3, uint64_t a4)
{
  v60 = a4;
  LOBYTE(v5) = a1;
  v6 = sub_1000FF874();
  v59 = *(v6 - 1);
  __chkstk_darwin(v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &off_100140000;
  if ((a3 & 1) == 0)
  {
    v57 = 0x8000000100108AC0;
    v56 = v5 & 1;
    goto LABEL_5;
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_10014B718 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v10 = qword_1001586B0;
    sub_100007210(&qword_10014C028, &qword_10010C8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010C670;
    strcpy(&v63, "downloadIDKey");
    HIWORD(v63) = -4864;
    sub_100101BF4();
    v12 = sub_1000FF814();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    *&v63 = 0xD000000000000013;
    *(&v63 + 1) = 0x8000000100108AC0;
    v57 = 0x8000000100108AC0;
    sub_100101BF4();
    *(inited + 168) = &_s16DownloadPriorityON;
    v56 = v5 & 1;
    *(inited + 144) = v5 & 1;
    *&v63 = 0x64616F6C6E776F64;
    *(&v63 + 1) = 0xEF79654B65707954;
    sub_100101BF4();
    *(inited + 240) = &_s12DownloadTypeON;
    *(inited + 216) = 1;
    sub_10004D288(inited);
    swift_setDeallocating();
    sub_100007210(&qword_10014C030, &unk_10010BD30);
    swift_arrayDestroy();
    isa = sub_100100E44().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];

    v8 = &off_100140000;
LABEL_5:
    v15 = v60 + 56;
    v16 = 1 << *(v60 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v9 = v17 & *(v60 + 56);
    v18 = (v16 + 63) >> 6;
    v54 = (v59 + 8);
    v55 = v59 + 16;

    v19 = 0;
    v5 = v58;
    v52 = v15;
    v53 = v18;
    v51 = v6;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      v20 = v19;
LABEL_12:
      (*(v59 + 16))(v5, *(v60 + 48) + *(v59 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v6);
      v62 = [objc_opt_self() v8[487]];
      if (qword_10014B718 != -1)
      {
        swift_once();
      }

      v61 = qword_1001586B0;
      strcpy(&v63, "downloadIDKey");
      HIWORD(v63) = -4864;
      sub_100101BF4();
      v21 = sub_1000FF814();
      v23 = v22;
      (*v54)(v5, v6);
      v68[8] = &type metadata for String;
      v68[5] = v21;
      v68[6] = v23;
      *&v63 = 0xD000000000000013;
      *(&v63 + 1) = v57;
      sub_100101BF4();
      v70 = &_s16DownloadPriorityON;
      v69[40] = v56;
      *&v63 = 0x64616F6C6E776F64;
      v5 = &v67;
      *(&v63 + 1) = 0xEF79654B65707954;
      sub_100101BF4();
      v72 = &_s12DownloadTypeON;
      v71[40] = 0;
      sub_100007210(&qword_10014D540, &unk_10010D120);
      v24 = sub_100101DE4();
      sub_10009E67C(v68, &v63);
      v25 = sub_10004C500(&v63);
      v6 = &v63;
      if (v26)
      {
        break;
      }

      v27 = v24 + 8;
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
      v28 = v24[6] + 40 * v25;
      v29 = v63;
      v30 = v64;
      *(v28 + 32) = v65;
      *v28 = v29;
      *(v28 + 16) = v30;
      sub_10002FC28(v66, (v24[7] + 32 * v25));
      v31 = v24[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v33;
      sub_10009E67C(v69, &v63);
      v34 = sub_10004C500(&v63);
      if (v35)
      {
        break;
      }

      *(v27 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v36 = v24[6] + 40 * v34;
      v37 = v63;
      v38 = v64;
      *(v36 + 32) = v65;
      *v36 = v37;
      *(v36 + 16) = v38;
      sub_10002FC28(v66, (v24[7] + 32 * v34));
      v39 = v24[2];
      v32 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v24[2] = v40;
      sub_10009E67C(v71, &v63);
      v41 = sub_10004C500(&v63);
      if (v42)
      {
        break;
      }

      *(v27 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v43 = v24[6] + 40 * v41;
      v44 = v63;
      v45 = v64;
      *(v43 + 32) = v65;
      *v43 = v44;
      *(v43 + 16) = v45;
      sub_10002FC28(v66, (v24[7] + 32 * v41));
      v46 = v24[2];
      v32 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v9 &= v9 - 1;
      v24[2] = v47;
      sub_100007210(&qword_10014C030, &unk_10010BD30);
      swift_arrayDestroy();
      v48 = sub_100100E44().super.isa;

      v49 = v62;
      [v62 postNotificationName:v61 object:0 userInfo:v48];

      v19 = v20;
      v6 = v51;
      v15 = v52;
      v5 = v58;
      v8 = &off_100140000;
      v18 = v53;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  while (1)
  {
LABEL_9:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v20 >= v18)
    {
      break;
    }

    v9 = *(v15 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_10009E67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C030, &unk_10010BD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009E718()
{
  result = qword_10014F550;
  if (!qword_10014F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F550);
  }

  return result;
}

unint64_t sub_10009E770()
{
  result = qword_10014F558;
  if (!qword_10014F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F558);
  }

  return result;
}

uint64_t sub_10009E7E4()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014F560);
  v1 = sub_100003D38(v0, qword_10014F560);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009E8BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoAsset(uint64_t a1)
{
  result = qword_10014F5A0;
  if (!qword_10014F5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10009E9AC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension10PhotoAsset_metadata) = a1;

  return result;
}

id sub_10009E9C4()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v7 = __chkstk_darwin(v6 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = sub_100100A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014C2B8, &qword_10010EB80);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_1001004B4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  sub_10000D26C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000FFB4(v17, &qword_10014C2B8, &qword_10010EB80);
    return 0;
  }

  v50 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_1001004A4();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v49 = v3;
  sub_1001009A4();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v28 = [v26 initWithContentType:isa];

  v29 = (*(v12 + 8))(v14, v11);
  sub_1000800A4(v24, v25, 0, 0, v29);

  v30 = v53;
  sub_100100494();
  v31 = v30;
  v32 = sub_1000FF804();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v31, 1, v32) == 1)
  {
    v35 = *(v51 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v35)
    {
      v36 = [v35 entry];
      if (v36)
      {
        v37 = v36;
        v38 = v50;
        sub_1000FFBA4();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v50;
      }

      v31 = v53;
    }

    else
    {
      v39 = 1;
      v38 = v50;
    }

    (*(v33 + 56))(v38, v39, 1, v32);
    if (v34(v31, 1, v32) != 1)
    {
      sub_10000FFB4(v31, &unk_10014D640, &unk_10010C480);
    }
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v31, v32);
    (*(v33 + 56))(v38, 0, 1, v32);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v40 = sub_100101004();
  v42 = v41;
  sub_100007210(&qword_10014C220, &qword_10010BE70);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10010BC80;
  v44 = sub_100081080(v40, v42, v38);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_1001011C4().super.isa;

  [v28 setAlternateNames:v47];

  sub_10000FFB4(v38, &unk_10014D640, &unk_10010C480);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_10009F010()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014F5E8);
  v1 = sub_100003D38(v0, qword_10014F5E8);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10009F0D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v3[5] = swift_task_alloc();
  v5 = sub_1000FF514();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_10009F210, v6);
}

uint64_t sub_10009F210()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10009F2A8;
  v2 = v0[3];
  v3 = v0[2];

  return sub_1000F1FC0(v3, v2);
}

uint64_t sub_10009F2A8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);

  return _swift_task_switch(sub_10009F3D0, v3);
}

uint64_t sub_10009F3D0()
{
  v1 = *(v0 + 96);
  if (v1)
  {
LABEL_4:

    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_10009F9F0(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000FFB4(*(v0 + 40), &qword_10014EBD0, &qword_10010BE50);
    goto LABEL_4;
  }

  v7 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  *(v0 + 128) = *(v7 + qword_100158A80);
  sub_10006D19C();
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_10009F5B4;
  v14 = *(v0 + 64);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_1000740CC(v16, v15, v14, v9 * v12);
}

uint64_t sub_10009F5B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 72);
  if (v1)
  {
    v6 = sub_10009F7E8;
  }

  else
  {
    v6 = sub_10009F6F8;
  }

  return _swift_task_switch(v6, v5);
}

uint64_t sub_10009F6F8()
{
  if (sub_1000797E0(*(v0 + 128)))
  {
    if (qword_10014B840 != -1)
    {
      swift_once();
    }

    v1.n128_f64[0] = sub_1000F3B9C(*(v0 + 112), *(*(v0 + 32) + qword_100151300), *(*(v0 + 32) + qword_100151300 + 8));
  }

  v2 = *(v0 + 112);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48), v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10009F7E8()
{
  if (qword_10014B7F0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_10014F5E8);
  v3 = v1;
  swift_errorRetain();
  v4 = sub_100100AC4();
  v5 = sub_1001015B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ - error generating video preview image: %@", v7, 0x16u);
    sub_100007210(&unk_10014D660, &qword_10010C710);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11(0);
}

void sub_10009F9F0(uint64_t a1@<X8>)
{
  v3 = sub_100007210(&qword_10014EEF0, &qword_10010E210);
  v4 = __chkstk_darwin(v3 - 8);
  v105 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v108 = &v95 - v6;
  v125 = sub_100100A04();
  v107 = *(v125 - 8);
  v7 = __chkstk_darwin(v125 - 8);
  v98 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v124 = &v95 - v10;
  __chkstk_darwin(v9);
  v109 = &v95 - v11;
  v115 = sub_1001001E4();
  v106 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v127);
  v112 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v111 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v126 = (&v95 - v18);
  __chkstk_darwin(v17);
  v120 = (&v95 - v19);
  v20 = sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v21 = __chkstk_darwin(v20 - 8);
  v119 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v95 - v23;
  v25 = sub_1000FF514();
  v113 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v110 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v116 = &v95 - v28;
  v29 = type metadata accessor for AssetAttachment.AssetType(0);
  v30 = __chkstk_darwin(v29);
  v118 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v130 = &v95 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v95 - v35;
  __chkstk_darwin(v34);
  v38 = &v95 - v37;
  v131 = *(v1 + qword_100158A60);
  v104 = a1;
  if (v131 >> 62)
  {
    goto LABEL_92;
  }

  v39 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v100 = v1;
  v137 = v1 + qword_100158A88;
  v128 = v29;
  v129 = v25;
  v1 = v131;
  if (v39)
  {
    v40 = 0;
    v133 = v131 & 0xFFFFFFFFFFFFFF8;
    v134 = v131 & 0xC000000000000001;
    v122 = (v113 + 56);
    v99 = (v106 + 8);
    v117 = (v113 + 32);
    v121 = (v113 + 48);
    v103 = (v107 + 48);
    v97 = (v107 + 32);
    v96 = (v107 + 8);
    v101 = (v113 + 8);
    v123 = v24;
    v102 = v36;
    v132 = v39;
    while (1)
    {
      if (v134)
      {
        v44 = sub_100101CA4();
        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v40 >= *(v133 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v39 = sub_100101DA4();
          goto LABEL_3;
        }

        v44 = *(v1 + 8 * v40 + 32);

        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_43;
        }
      }

      v135 = *v137;
      v136 = *(v137 + 8);
      v46 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
      sub_1000329A0(v44 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v38, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v41 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v41 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        v42 = v41;
        v43 = v38;
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v53 = v38;
        if (v136)
        {
          goto LABEL_88;
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      sub_1000329A0(v44 + v46, v36, type metadata accessor for AssetAttachment.AssetType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = v48;
      if (v48 > 1)
      {
        break;
      }

      v51 = v36;
      v52 = v126;
      if (!v49)
      {
        goto LABEL_24;
      }

      sub_1000328DC(v36, type metadata accessor for AssetAttachment.AssetType);
      v60 = 1;
      v24 = v123;
LABEL_28:
      (*v122)(v24, v60, 1, v25);
      v53 = &v38[*(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48)];
      if ((*v121)(v24, 1, v25) == 1)
      {

        sub_10000FFB4(v24, &qword_10014EBD0, &qword_10010BE50);
      }

      else
      {
        v61 = v116;
        (*v117)(v116, v24, v25);
        sub_1000FF424();
        v62 = v124;
        sub_100100964();
        v24 = v108;
        sub_100100924();
        v63 = v125;
        if ((*v103)(v24, 1, v125) == 1)
        {

          v25 = v129;
          (*v101)(v61, v129);
          sub_10000FFB4(v24, &qword_10014EEF0, &qword_10010E210);
          v29 = v128;
          v36 = v102;
        }

        else
        {
          (*v97)();
          sub_1001009C4();
          v64 = sub_1001009E4();
          v24 = *v96;
          (*v96)(v62, v63);
          if (v64)
          {
            (v24)(v109, v63);
            v25 = v129;
            (*v101)(v116, v129);
            v36 = v102;
LABEL_38:
            v29 = v128;
            if (v136)
            {
              v38 = v53;
              goto LABEL_88;
            }

LABEL_21:
            v54 = *(v44 + 16);
            sub_1000328DC(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v54 == v135)
            {
LABEL_86:
              v94 = v104;
              goto LABEL_89;
            }

            v1 = v131;
            goto LABEL_8;
          }

          sub_1001009B4();
          v95 = v24;
          v24 = v109;
          v65 = sub_1001009E4();
          v66 = v62;
          v67 = v95;
          (v95)(v66, v63);
          (v67)(v24, v63);
          v25 = v129;
          (*v101)(v116, v129);
          v36 = v102;
          if (v65)
          {
            goto LABEL_38;
          }

          v29 = v128;
        }

        v1 = v131;
      }

      v42 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      v43 = v53;
LABEL_7:
      sub_1000328DC(v43, v42);
LABEL_8:
      ++v40;
      if (v45 == v132)
      {
        goto LABEL_44;
      }
    }

    v50 = v48 - 2;
    v51 = v36;
    v52 = v126;
    if (v50 >= 2)
    {

      v51 = v36 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
    }

LABEL_24:
    v55 = v120;
    sub_10003293C(v51, v120);
    sub_1000329A0(v55, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000328DC(v55, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v24 = v123;
      (*v117)(v123, v52, v25);
    }

    else
    {
      v56 = v114;
      sub_1001001D4();
      v57 = v123;
      sub_100100184();
      v29 = v128;

      v58 = v56;
      v1 = v131;
      (*v99)(v58, v115);
      v59 = v55;
      v24 = v57;
      v25 = v129;
      sub_1000328DC(v59, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v60 = 0;
    goto LABEL_28;
  }

LABEL_44:
  v36 = *(v100 + qword_100158A68);
  if (v36 >> 62)
  {
    v24 = sub_100101DA4();
    v1 = v130;
    if (v24)
    {
      goto LABEL_46;
    }

LABEL_94:
    (*(v113 + 56))(v104, 1, 1, v25);
    return;
  }

  v24 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1 = v130;
  if (!v24)
  {
    goto LABEL_94;
  }

LABEL_46:
  v68 = 0;
  v38 = (v36 & 0xC000000000000001);
  v134 = v36 & 0xFFFFFFFFFFFFFF8;
  v131 = v113 + 56;
  v117 = (v106 + 8);
  v123 = (v113 + 32);
  v126 = (v113 + 48);
  v121 = (v107 + 48);
  v116 = (v107 + 32);
  v109 = (v107 + 8);
  v120 = (v113 + 8);
  v132 = v24;
  v133 = v36 & 0xC000000000000001;
  v122 = v36;
  while (1)
  {
    if (v38)
    {
      v70 = sub_100101CA4();
      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v68 >= *(v134 + 16))
      {
        goto LABEL_91;
      }

      v70 = *(v36 + 8 * v68 + 32);

      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v135 = *v137;
    v136 = *(v137 + 8);
    v72 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
    sub_1000329A0(v70 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v1, type metadata accessor for AssetAttachment.AssetType);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 > 1)
    {
      break;
    }

    if (v73)
    {

      v69 = type metadata accessor for AssetAttachment.AssetType;
      goto LABEL_48;
    }

LABEL_47:

    v69 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_48:
    sub_1000328DC(v1, v69);
LABEL_49:
    ++v68;
    if (v71 == v24)
    {
      goto LABEL_94;
    }
  }

  if (v73 != 2)
  {
    if (v73 != 3)
    {

      v74 = v70 + v72;
      v75 = v118;
      sub_1000329A0(v74, v118, type metadata accessor for AssetAttachment.AssetType);
      v76 = swift_getEnumCaseMultiPayload();
      v77 = v76;
      if (v76 <= 1)
      {
        v79 = v75;
        if (!v77)
        {
          goto LABEL_65;
        }

        sub_1000328DC(v75, type metadata accessor for AssetAttachment.AssetType);
        v85 = 1;
        v84 = v25;
        v83 = v119;
      }

      else
      {
        v78 = v76 - 2;
        v79 = v75;
        if (v78 >= 2)
        {

          v79 = v75 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
        }

LABEL_65:
        v81 = v111;
        sub_10003293C(v79, v111);
        v82 = v112;
        sub_1000329A0(v81, v112, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1000328DC(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v83 = v119;
          v84 = v129;
          (*v123)(v119, v82, v129);
          v85 = 0;
        }

        else
        {
          v86 = v114;
          sub_1001001D4();
          v83 = v119;
          sub_100100184();
          v1 = v130;

          (*v117)(v86, v115);
          sub_1000328DC(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v85 = 0;
          v84 = v129;
        }

        v24 = v132;
      }

      (*v131)(v83, v85, 1, v84);
      v38 = (v1 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48));
      if ((*v126)(v83, 1, v84) == 1)
      {

        sub_10000FFB4(v83, &qword_10014EBD0, &qword_10010BE50);
        v25 = v84;
        v29 = v128;
        goto LABEL_74;
      }

      v87 = v110;
      (*v123)(v110, v83, v84);
      sub_1000FF424();
      v88 = v124;
      sub_100100964();
      v89 = v105;
      sub_100100924();
      v90 = v125;
      if ((*v121)(v89, 1, v125) == 1)
      {

        (*v120)(v87, v84);
        sub_10000FFB4(v89, &qword_10014EEF0, &qword_10010E210);
        v25 = v84;
        v29 = v128;
        v36 = v122;
LABEL_73:
        v24 = v132;
LABEL_74:
        sub_1000328DC(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_75:
        v1 = v130;
        v38 = v133;
        goto LABEL_49;
      }

      v91 = v98;
      (*v116)(v98, v89, v90);
      sub_1001009C4();
      v92 = sub_1001009E4();
      v93 = *v109;
      (*v109)(v88, v90);
      if (v92)
      {
        v93(v91, v90);
        v25 = v129;
        (*v120)(v110, v129);
        v29 = v128;
        v36 = v122;
      }

      else
      {
        sub_1001009B4();
        LODWORD(v108) = sub_1001009E4();
        v93(v88, v90);
        v93(v91, v90);
        v25 = v129;
        (*v120)(v110, v129);
        v29 = v128;
        v36 = v122;
        if ((v108 & 1) == 0)
        {

          goto LABEL_73;
        }
      }

      v24 = v132;
      if (v136)
      {
        goto LABEL_88;
      }

LABEL_62:
      v80 = *(v70 + 16);
      sub_1000328DC(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (v80 == v135)
      {
        goto LABEL_86;
      }

      goto LABEL_75;
    }

    goto LABEL_47;
  }

  v38 = v1;
  if ((v136 & 1) == 0)
  {
    goto LABEL_62;
  }

  v38 = v130;
LABEL_88:
  v94 = v104;
  sub_1000328DC(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_89:
  sub_1000C1180(v94);
}

uint64_t type metadata accessor for VideoThumbnailCacheOperation(uint64_t a1)
{
  result = qword_10014F628;
  if (!qword_10014F628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A0D4C()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014F760);
  v1 = sub_100003D38(v0, qword_10014F760);
  if (qword_10014B8B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001588B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A0E14()
{
  if (qword_10014B618 != -1)
  {
    swift_once();
  }

  v1 = qword_100158508;
  qword_100158778 = qword_100158508;

  return v1;
}

void sub_1000A0E78(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v7 = sub_100007210(&qword_10014F7C0, &qword_10010ECD8);
  __chkstk_darwin(v7 - 8);
  v123 = v113 - v8;
  v9 = sub_100007210(&qword_10014F7B0, &qword_10010ECC8);
  __chkstk_darwin(v9 - 8);
  v122 = v113 - v10;
  v11 = sub_100007210(&qword_10014F7B8, &qword_10010ECD0);
  __chkstk_darwin(v11 - 8);
  v132 = v113 - v12;
  v13 = sub_100007210(&qword_10014F7A0, &qword_10010ECB8);
  __chkstk_darwin(v13 - 8);
  v116 = v113 - v14;
  v15 = sub_100007210(&qword_10014F848, &qword_10010EEE0);
  __chkstk_darwin(v15 - 8);
  v119 = v113 - v16;
  v121 = sub_1001001F4();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v115 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007210(&qword_10014F798, &qword_10010ECB0);
  __chkstk_darwin(v18 - 8);
  v118 = v113 - v19;
  v20 = sub_100007210(&qword_10014F850, &qword_10010EEE8);
  __chkstk_darwin(v20 - 8);
  v129 = v113 - v21;
  v22 = sub_100100474();
  v130 = *(v22 - 8);
  v131 = v22;
  __chkstk_darwin(v22);
  v117 = v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100007210(&qword_10014F7A8, &qword_10010ECC0);
  __chkstk_darwin(v24 - 8);
  v127 = v113 - v25;
  v128 = sub_1000FFF04();
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v125 = v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100100D94();
  __chkstk_darwin(v27 - 8);
  v28 = sub_1000FFCE4();
  v124.i64[0] = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v31 = v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v113 - v32;
  v34 = sub_100007210(&qword_10014F7C8, &qword_10010ECE0);
  __chkstk_darwin(v34 - 8);
  v36 = v113 - v35;
  sub_1001005A4();
  sub_1000A55B0(&qword_10014F790, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
  v37 = a4;
  sub_100100D34();
  if (!*(a1 + 16) || (v38 = sub_10004DCEC(NSFontAttributeName), (v39 & 1) == 0) || (sub_100010FA8(*(a1 + 56) + 32 * v38, v136), sub_100010F50(0, &unk_10014E148, UIFont_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    v48 = v37;
    if (!*(a1 + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v114 = a2;
  v40 = *&v135[0];
  v41 = [*&v135[0] fontDescriptor];
  v42 = [v41 symbolicTraits];

  if ((v42 & 3) == 0)
  {

    a2 = v114;
    goto LABEL_8;
  }

  v113[1] = swift_getKeyPath();
  v43 = v40;
  v44 = [v43 fontDescriptor];
  v45 = [v44 symbolicTraits];

  sub_1000F7C80(v45);
  v46 = v124.i64[0];
  (*(v124.i64[0] + 16))(v31, v33, v28);
  sub_100100D84();
  sub_1000FFCF4();

  (*(v46 + 8))(v33, v28);
  v47 = sub_1000FFD14();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  sub_100007210(&qword_10014F7D0, &qword_10010ED18);
  sub_1000A55B0(&qword_10014F7D8, &type metadata accessor for MergeableTextAttributeScope.FontAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FontAttribute);
  v48 = v37;
  sub_100100D24();

  a2 = v114;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

LABEL_9:
  v49 = sub_10004DCEC(NSUnderlineStyleAttributeName);
  if (v50)
  {
    sub_100010FA8(*(a1 + 56) + 32 * v49, v136);
    if (swift_dynamicCast())
    {
      v51 = *&v135[0];
      if (*&v135[0])
      {
        swift_getKeyPath();
        *&v136[0] = v51;
        BYTE8(v136[0]) = 0;
        sub_100007210(&qword_10014F7D0, &qword_10010ED18);
        sub_1000A55B0(&qword_10014F7F0, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.UnderlineAttribute);
        sub_100100D24();
      }
    }
  }

LABEL_13:
  if (*(a1 + 16))
  {
    v52 = sub_10004DCEC(NSStrikethroughStyleAttributeName);
    if (v53)
    {
      sub_100010FA8(*(a1 + 56) + 32 * v52, v136);
      if (swift_dynamicCast())
      {
        v54 = *&v135[0];
        if (*&v135[0])
        {
          swift_getKeyPath();
          *&v136[0] = v54;
          BYTE8(v136[0]) = 0;
          sub_100007210(&qword_10014F7D0, &qword_10010ED18);
          sub_1000A55B0(&qword_10014F7F8, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.StrikethroughAttribute);
          sub_100100D24();
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v55 = sub_10004DCEC(NSParagraphStyleAttributeName);
    if (v56)
    {
      sub_100010FA8(*(a1 + 56) + 32 * v55, v136);
      sub_100010F50(0, &qword_10014E120, NSParagraphStyle_ptr);
      if (swift_dynamicCast())
      {
        v57 = a2;
        v58 = *&v135[0];
        [*&v135[0] firstLineHeadIndent];
        *v60.i64 = *v59.i64 - trunc(*v59.i64);
        v61.f64[0] = NAN;
        v61.f64[1] = NAN;
        v124 = vnegq_f64(v61);
        v62 = *vbslq_s8(v124, v60, v59).i64 + -0.1;
        [v58 headIndent];
        if (fabs(v62) < 0.01)
        {
          *v64.i64 = *v63.i64 - trunc(*v63.i64);
          if (fabs(*vbslq_s8(v124, v64, v63).i64 + -0.1) < 0.01)
          {
            swift_getKeyPath();
            LOBYTE(v136[0]) = 1;
            sub_100007210(&qword_10014F7D0, &qword_10010ED18);
            sub_1000A55B0(&qword_10014F7E8, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
            sub_100100D24();
          }
        }

        v65 = [v58 textLists];
        sub_100010F50(0, &qword_10014E118, NSTextList_ptr);
        v66 = sub_1001011D4();

        if (v66 >> 62)
        {
          v112 = sub_100101DA4();

          if (!v112)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v67)
          {
LABEL_27:
            a2 = v57;
            if ([v58 baseWritingDirection] != -1)
            {
              v74 = [v58 baseWritingDirection];
              v75 = v129;
              sub_1000F7194(v74, v129);
              v77 = v130;
              v76 = v131;
              if ((*(v130 + 48))(v75, 1, v131) == 1)
              {
                sub_10000FFB4(v75, &qword_10014F850, &qword_10010EEE8);
              }

              else
              {
                v78 = v117;
                (*(v77 + 32))(v117, v75, v76);
                swift_getKeyPath();
                v79 = v118;
                (*(v77 + 16))(v118, v78, v76);
                v80 = sub_100007210(&qword_10014F830, &qword_10010EED8);
                swift_storeEnumTagMultiPayload();
                (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
                sub_100007210(&qword_10014F7D0, &qword_10010ED18);
                sub_1000A55B0(&qword_10014F828, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.WritingDirectionAttribute);
                a2 = v57;
                sub_100100D24();
                (*(v77 + 8))(v78, v76);
              }
            }

            if ([v58 alignment] == 4)
            {
            }

            else
            {
              v81 = [v58 alignment];
              v82 = v119;
              sub_1000F7464(v81, v119);
              v83 = v120;
              v84 = v121;
              if ((*(v120 + 48))(v82, 1, v121) == 1)
              {

                sub_10000FFB4(v82, &qword_10014F848, &qword_10010EEE0);
              }

              else
              {
                v85 = v115;
                (*(v83 + 32))(v115, v82, v84);
                swift_getKeyPath();
                v86 = v116;
                (*(v83 + 16))(v116, v85, v84);
                v87 = sub_100007210(&qword_10014F820, &qword_10010EEA0);
                swift_storeEnumTagMultiPayload();
                (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
                sub_100007210(&qword_10014F7D0, &qword_10010ED18);
                sub_1000A55B0(&qword_10014F818, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AlignmentAttribute);
                a2 = v57;
                sub_100100D24();

                (*(v83 + 8))(v85, v84);
              }
            }

            goto LABEL_36;
          }
        }

        v68 = [v58 textLists];
        v69 = sub_1001011D4();

        v70 = v125;
        sub_1000F6DB8(v69, v125);
        swift_getKeyPath();
        v72 = v126;
        v71 = v127;
        v73 = v128;
        (*(v126 + 16))(v127, v70, v128);
        (*(v72 + 56))(v71, 0, 1, v73);
        sub_100007210(&qword_10014F7D0, &qword_10010ED18);
        sub_1000A55B0(&qword_10014F810, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.TextListsAttribute);
        sub_100100D24();
        (*(v72 + 8))(v70, v73);
        goto LABEL_27;
      }
    }
  }

LABEL_36:
  if (!*(a1 + 16) || (v88 = sub_10004DCEC(NSParagraphAttachmentAttributeName), (v89 & 1) == 0) || (sub_100010FA8(*(a1 + 56) + 32 * v88, v136), sub_100010F50(0, &qword_10014F838, NSTextParagraphAnchoredAttachment_ptr), (swift_dynamicCast() & 1) == 0))
  {
LABEL_42:
    if (!*(a1 + 16))
    {
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  v90 = *&v135[0];
  v91 = [*&v135[0] textAttachment];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v91)
  {
    swift_getKeyPath();
    v92 = a2;
    v93 = v91;
    v94 = v132;
    sub_100100614();
    v95 = sub_100100634();
    (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
    sub_100007210(&qword_10014F7D0, &qword_10010ED18);
    sub_1000A55B0(&qword_10014F800, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
    sub_100100D24();

    a2 = v92;
    goto LABEL_42;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_50;
  }

LABEL_43:
  v96 = sub_10004DCEC(NSAttachmentAttributeName);
  if (v97)
  {
    sub_100010FA8(*(a1 + 56) + 32 * v96, v135);
    sub_10002FC28(v135, v136);
    sub_100010FA8(v136, v135);
    sub_100007210(&qword_10014F858, &qword_10010EEF0);
    if (swift_dynamicCast())
    {
      v98 = v134;
      swift_getKeyPath();
      v99 = a2;
      v100 = v98;
      v101 = v132;
      sub_100100614();
      v102 = sub_100100634();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_100007210(&qword_10014F7D0, &qword_10010ED18);
      v103 = &qword_10014F800;
      v104 = &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
      v105 = &protocol conformance descriptor for MergeableTextAttributeScope.AssetTextAttachmentAttribute;
    }

    else
    {
      sub_100010FA8(v136, v135);
      sub_100007210(&qword_10014F860, qword_10010EEF8);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_49:
        sub_10001100C(v136);
        goto LABEL_50;
      }

      v106 = v134;
      swift_getKeyPath();
      v99 = a2;
      v100 = v106;
      v107 = v122;
      sub_100100734();
      v108 = sub_100100754();
      (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
      sub_100007210(&qword_10014F7D0, &qword_10010ED18);
      v103 = &unk_10014F808;
      v104 = &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
      v105 = &protocol conformance descriptor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute;
    }

    sub_1000A55B0(v103, v104, v105);
    a2 = v99;
    sub_100100D24();

    goto LABEL_49;
  }

LABEL_50:
  if (!*(a1 + 16) || (v109 = sub_10004DCEC(NSForegroundColorAttributeName), (v110 & 1) == 0))
  {

    goto LABEL_56;
  }

  sub_100010FA8(*(a1 + 56) + 32 * v109, v136);

  sub_100010F50(0, &qword_10014C7D0, UIColor_ptr);
  if (swift_dynamicCast())
  {
    v111 = *&v135[0];
    if (sub_1000A245C(*&v135[0], v48, v133))
    {
      swift_getKeyPath();
      sub_1000FFD64();
      sub_100007210(&qword_10014F7D0, &qword_10010ED18);
      sub_1000A55B0(&qword_10014F7E0, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.ColorAttribute);
      sub_100100D24();

LABEL_56:
      sub_10001100C(v133);
      return;
    }

    sub_10001100C(v133);
  }

  else
  {
    sub_10001100C(v133);
  }
}

BOOL sub_1000A245C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_100007210(&qword_10014F7D0, &qword_10010ED18);
  sub_1000A55B0(&qword_10014F7E8, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_100100D14();

  if (v8 == 2 || (v8 & 1) == 0)
  {
    sub_1000110C0(a3, a3[3]);
    v4 = sub_100100DE4();
  }

  else
  {
    if (qword_10014B800 != -1)
    {
      swift_once();
    }

    v4 = qword_100158778;
  }

  v5 = v4;
  sub_100010F50(0, &qword_10014C7D0, UIColor_ptr);
  v6 = sub_100101A34();

  return (v6 & 1) == 0;
}

void sub_1000A25C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v6 = (a4)(0, a2, a3);
  v7 = __chkstk_darwin(v6 - 8);
  a5(v7);
  __break(1u);
}

uint64_t sub_1000A2628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void *sub_1000A26F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100007210(&qword_10014F798, &qword_10010ECB0);
  __chkstk_darwin(v5 - 8);
  v191 = &v163[-v6];
  v7 = sub_100007210(&qword_10014F7A0, &qword_10010ECB8);
  __chkstk_darwin(v7 - 8);
  v175 = &v163[-v8];
  v170 = sub_1000FFE84();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v163[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100007210(&qword_10014F7A8, &qword_10010ECC0);
  __chkstk_darwin(v10 - 8);
  v173 = &v163[-v11];
  v178 = sub_1000FFF04();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v163[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100007210(&qword_10014F7B0, &qword_10010ECC8);
  __chkstk_darwin(v13 - 8);
  v190 = &v163[-v14];
  v15 = sub_100100754();
  v16 = *(v15 - 8);
  v183 = v15;
  v184 = v16;
  v17 = __chkstk_darwin(v15);
  v172 = &v163[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v187 = &v163[-v19];
  v167 = sub_1000FF874();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v163[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_100007210(&qword_10014F7B8, &qword_10010ECD0);
  __chkstk_darwin(v21 - 8);
  v180 = &v163[-v22];
  v23 = sub_100100634();
  v188 = *(v23 - 8);
  v189 = v23;
  v24 = __chkstk_darwin(v23);
  v171 = &v163[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v182 = &v163[-v26];
  v27 = sub_100007210(&qword_10014F7C0, &qword_10010ECD8);
  __chkstk_darwin(v27 - 8);
  v185 = &v163[-v28];
  v29 = sub_1000FFCE4();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v163[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v163[-v34];
  v36 = sub_100007210(&qword_10014F7C8, &qword_10010ECE0);
  __chkstk_darwin(v36 - 8);
  v38 = &v163[-v37];
  v179 = sub_10004D7B4(_swiftEmptyArrayStorage);
  v39 = a2[3];
  v192 = a2;
  sub_1000110C0(a2, v39);
  v40 = sub_100100DD4();
  swift_getKeyPath();
  v41 = sub_100007210(&qword_10014F7D0, &qword_10010ED18);
  sub_1000A55B0(&qword_10014F7D8, &type metadata accessor for MergeableTextAttributeScope.FontAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FontAttribute);
  v186 = v41;
  sub_100100D14();

  v42 = sub_1000FFD14();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v38, 1, v42) == 1)
  {
    sub_10000FFB4(v38, &qword_10014F7C8, &qword_10010ECE0);
    v44 = v191;
  }

  else
  {
    sub_1000FFD04();
    (*(v43 + 8))(v38, v42);
    sub_1000FFCD4();
    sub_1000A55B0(&qword_10014F840, &type metadata accessor for MergeableFont.Traits, &protocol conformance descriptor for MergeableFont.Traits);
    v45 = sub_100101B24();
    v46 = *(v30 + 8);
    v46(v33, v29);
    v176 = v3;
    sub_1000FFCC4();
    v47 = sub_100101B24();
    v46(v33, v29);
    v46(v35, v29);
    if (v47)
    {
      v48 = v45 & 1 | 2;
    }

    else
    {
      v48 = v45 & 1;
    }

    v44 = v191;
    v3 = v176;
    v49 = sub_10004C08C(v48);

    v40 = v49;
  }

  v196 = sub_100010F50(0, &unk_10014E148, UIFont_ptr);
  *&v195 = v40;
  sub_10002FC28(&v195, &v194);
  v181 = v40;
  v50 = v179;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v193 = v50;
  sub_1000FB8AC(&v194, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  v52 = v193;
  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F7E0, &type metadata accessor for MergeableTextAttributeScope.ColorAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.ColorAttribute);
  v53 = v185;
  sub_100100D14();

  v54 = sub_1000FFD74();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 48))(v53, 1, v54);
  v57 = v187;
  if (v56 == 1)
  {
    sub_10000FFB4(v53, &qword_10014F7C0, &qword_10010ECD8);
  }

  else
  {
    v58 = sub_1000F7764();
    (*(v55 + 8))(v53, v54);
    if (v58)
    {
      goto LABEL_17;
    }
  }

  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F7E8, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_100100D14();

  if (v195 == 2 || (v195 & 1) == 0)
  {
    sub_1000110C0(v192, v192[3]);
    v59 = sub_100100DE4();
  }

  else
  {
    if (qword_10014B800 != -1)
    {
      swift_once();
    }

    v59 = qword_100158778;
  }

  v58 = v59;
LABEL_17:
  v196 = sub_100010F50(0, &qword_10014C7D0, UIColor_ptr);
  *&v195 = v58;
  sub_10002FC28(&v195, &v194);
  v60 = v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v52;
  sub_1000FB8AC(&v194, NSForegroundColorAttributeName, v61);
  v62 = v193;
  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F7F0, &type metadata accessor for MergeableTextAttributeScope.UnderlineAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.UnderlineAttribute);
  sub_100100D14();

  if (BYTE8(v195))
  {
    v63 = v190;
  }

  else
  {
    v63 = v190;
    if (v195)
    {
      v196 = &type metadata for Int;
      sub_10002FC28(&v195, &v194);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_1000FB8AC(&v194, NSUnderlineStyleAttributeName, v64);
      v62 = v193;
    }
  }

  v65 = v44;
  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F7F8, &type metadata accessor for MergeableTextAttributeScope.StrikethroughAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.StrikethroughAttribute);
  sub_100100D14();

  if (BYTE8(v195))
  {
    v66 = v60;
  }

  else
  {
    v66 = v60;
    if (v195)
    {
      v67 = v57;
      v196 = &type metadata for Int;
      sub_10002FC28(&v195, &v194);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v62;
      sub_1000FB8AC(&v194, NSStrikethroughStyleAttributeName, v68);
      v62 = v193;
      goto LABEL_26;
    }
  }

  v67 = v57;
LABEL_26:
  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F800, &type metadata accessor for MergeableTextAttributeScope.AssetTextAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AssetTextAttachmentAttribute);
  v69 = v180;
  sub_100100D14();

  v71 = v188;
  v70 = v189;
  if ((*(v188 + 48))(v69, 1, v189) == 1)
  {
    sub_10000FFB4(v69, &qword_10014F7B8, &qword_10010ECD0);
    v72 = v67;
LABEL_37:
    v100 = v66;
    v101 = v65;
    v89 = v183;
    goto LABEL_38;
  }

  v185 = v62;
  (*(v71 + 32))(v182, v69, v70);
  sub_1000110C0(v192, v192[3]);
  v73 = sub_100100DC4();
  if (v73)
  {
    v74 = v73;
    ObjectType = swift_getObjectType();
    v76 = sub_100100E04();
    v72 = v67;
    if (v77)
    {
      v196 = ObjectType;
      *&v195 = v74;
      sub_10002FC28(&v195, &v194);
      v78 = v74;
      v79 = v185;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v79;
      sub_1000FB8AC(&v194, NSAttachmentAttributeName, v80);
    }

    else
    {
      v102 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v74 position:v76];
      v103 = NSParagraphAttachmentAttributeName;
      v196 = sub_100010F50(0, &qword_10014F838, NSTextParagraphAnchoredAttachment_ptr);
      *&v195 = v102;
      sub_10002FC28(&v195, &v194);
      v104 = v102;
      v105 = v185;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v105;
      sub_1000FB8AC(&v194, v103, v106);
    }

    (*(v188 + 8))(v182, v189);
    v62 = v193;
    v63 = v190;
    goto LABEL_37;
  }

  v180 = v66;
  v72 = v67;
  if (qword_10014B7F8 != -1)
  {
    swift_once();
  }

  v81 = sub_100100AE4();
  sub_100003D38(v81, qword_10014F760);
  v82 = v188;
  v83 = v189;
  v84 = v171;
  v85 = v182;
  (*(v188 + 16))(v171, v182, v189);
  v86 = sub_100100AC4();
  v87 = sub_1001015B4();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v183;
  if (v88)
  {
    v90 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    *&v195 = v179;
    *v90 = 136315138;
    v91 = v165;
    v164 = v87;
    sub_100100624();
    sub_1000A55B0(&qword_10014C018, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v92 = v167;
    v93 = sub_100101E44();
    v95 = v94;
    (*(v166 + 8))(v91, v92);
    v176 = v3;
    v96 = *(v82 + 8);
    v96(v84, v83);
    v97 = sub_10007A774(v93, v95, &v195);
    v98 = v180;
    v89 = v183;

    *(v90 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v86, v164, "Attachment not found for ID: %s", v90, 0xCu);
    sub_10001100C(v179);

    v99 = v83;
    v100 = v98;
    v96(v182, v99);
    v63 = v190;
    v101 = v191;
    v3 = v176;
    v72 = v187;
    v62 = v185;
  }

  else
  {

    v131 = *(v82 + 8);
    v131(v84, v83);
    v131(v85, v83);
    v62 = v185;
    v63 = v190;
    v101 = v191;
    v100 = v180;
  }

LABEL_38:
  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F808, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
  sub_100100D14();

  v107 = v184;
  if ((*(v184 + 48))(v63, 1, v89) == 1)
  {
    sub_10000FFB4(v63, &qword_10014F7B0, &qword_10010ECC8);
  }

  else
  {
    v185 = v62;
    (*(v107 + 32))(v72, v63, v89);
    sub_1000110C0(v192, v192[3]);
    v108 = sub_100100DF4();
    if (v108)
    {
      v109 = v108;
      v196 = swift_getObjectType();
      *&v195 = v109;
      sub_10002FC28(&v195, &v194);
      v110 = v109;
      v111 = v185;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v193 = v111;
      sub_1000FB8AC(&v194, NSAttachmentAttributeName, v112);

      (*(v107 + 8))(v72, v89);
      v62 = v193;
    }

    else
    {
      v113 = v100;
      if (qword_10014B7F8 != -1)
      {
        swift_once();
      }

      v114 = sub_100100AE4();
      sub_100003D38(v114, qword_10014F760);
      v115 = v184;
      v116 = v172;
      v117 = v187;
      (*(v184 + 16))(v172, v187, v89);
      v118 = sub_100100AC4();
      v119 = sub_1001015B4();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v195 = v121;
        *v120 = 136315138;
        v122 = sub_100100744();
        v123 = v89;
        v124 = v113;
        v126 = v125;
        v176 = v3;
        v127 = *(v115 + 8);
        v128 = v116;
        v129 = v123;
        v127(v128, v123);
        v130 = sub_10007A774(v122, v126, &v195);

        *(v120 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v118, v119, "Attachment not found for prompt: %s", v120, 0xCu);
        sub_10001100C(v121);

        v127(v187, v129);
        v100 = v124;
        v101 = v191;
        v3 = v176;
        v62 = v185;
      }

      else
      {

        v132 = *(v115 + 8);
        v132(v116, v89);
        v132(v117, v89);
        v101 = v191;
        v62 = v185;
        v100 = v113;
      }
    }
  }

  v133 = sub_100010F50(0, &unk_10014E108, NSMutableParagraphStyle_ptr);
  v134 = sub_1000CB144();
  if (sub_1000A4254())
  {
    swift_getKeyPath();
    sub_1000A55B0(&qword_10014F7E8, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
    sub_100100D14();

    if (v195 != 2 && (v195 & 1) != 0)
    {
      v135 = [objc_allocWithZone(NSMutableParagraphStyle) init];
      [v135 setParagraphStyle:v134];
      [v135 setFirstLineHeadIndent:14.1];
      [v135 setHeadIndent:14.1];

      v134 = v135;
    }

    swift_getKeyPath();
    sub_1000A55B0(&qword_10014F810, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.TextListsAttribute);
    v136 = v173;
    sub_100100D14();
    v137 = v136;

    v138 = v177;
    v139 = v136;
    v140 = v178;
    if ((*(v177 + 48))(v139, 1, v178) == 1)
    {
      sub_10000FFB4(v137, &qword_10014F7A8, &qword_10010ECC0);
    }

    else
    {
      v190 = v133;
      v180 = v100;
      (*(v138 + 32))(v174, v137, v140);
      v141 = sub_1000FFEF4();
      v142 = *(v141 + 16);
      if (v142)
      {
        v189 = v134;
        v185 = v62;
        v176 = v3;
        *&v195 = _swiftEmptyArrayStorage;
        sub_100101D24();
        v192 = *(v169 + 16);
        v143 = *(v169 + 80);
        v188 = v141;
        v144 = v141 + ((v143 + 32) & ~v143);
        v145 = *(v169 + 72);
        v146 = (v169 + 8);
        v147 = v170;
        v148 = v168;
        do
        {
          (v192)(v148, v144, v147);
          sub_1000FFE54();
          v149 = sub_100100F94();

          [objc_allocWithZone(NSTextList) initWithMarkerFormat:v149 options:0 startingItemNumber:sub_1000FFE74()];

          (*v146)(v148, v147);
          sub_100101D04();
          sub_100101D34();
          sub_100101D44();
          sub_100101D14();
          v144 += v145;
          --v142;
        }

        while (v142);

        v101 = v191;
        v62 = v185;
        v134 = v189;
      }

      else
      {
      }

      sub_100010F50(0, &qword_10014E118, NSTextList_ptr);
      isa = sub_1001011C4().super.isa;

      [v134 setTextLists:isa];

      (*(v177 + 8))(v174, v178);
      v100 = v180;
      v133 = v190;
    }

    swift_getKeyPath();
    sub_1000A55B0(&qword_10014F818, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AlignmentAttribute);
    v151 = v175;
    sub_100100D14();

    v152 = sub_100007210(&qword_10014F820, &qword_10010EEA0);
    if ((*(*(v152 - 8) + 48))(v151, 1, v152) == 1)
    {
      sub_10000FFB4(v151, &qword_10014F7A0, &qword_10010ECB8);
    }

    else
    {
      v153 = sub_1000A4768();
      v155 = v154;
      sub_10000FFB4(v151, &qword_10014F820, &qword_10010EEA0);
      if ((v155 & 1) == 0)
      {
        [v134 setAlignment:v153];
      }
    }

    swift_getKeyPath();
    sub_1000A55B0(&qword_10014F828, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_100100D14();

    v156 = sub_100007210(&qword_10014F830, &qword_10010EED8);
    if ((*(*(v156 - 8) + 48))(v101, 1, v156) == 1)
    {
      sub_10000FFB4(v101, &qword_10014F798, &qword_10010ECB0);
    }

    else
    {
      v157 = sub_1000A4A00();
      v159 = v158;
      sub_10000FFB4(v101, &qword_10014F830, &qword_10010EED8);
      if ((v159 & 1) == 0)
      {
        [v134 setBaseWritingDirection:v157];
      }
    }
  }

  v196 = v133;
  *&v195 = v134;
  sub_10002FC28(&v195, &v194);
  v160 = v134;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v193 = v62;
  sub_1000FB8AC(&v194, NSParagraphStyleAttributeName, v161);

  return v193;
}

BOOL sub_1000A4254()
{
  v0 = sub_100007210(&qword_10014F7B0, &qword_10010ECC8);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_100007210(&qword_10014F7A0, &qword_10010ECB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_100007210(&qword_10014F798, &qword_10010ECB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_100007210(&qword_10014F7A8, &qword_10010ECC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  swift_getKeyPath();
  sub_100007210(&qword_10014F7D0, &qword_10010ED18);
  sub_1000A55B0(&qword_10014F7E8, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
  sub_100100D14();

  if (v21[15] != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1000A55B0(&qword_10014F810, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.TextListsAttribute);
  sub_100100D14();

  v12 = sub_1000FFF04();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_10000FFB4(v11, &qword_10014F7A8, &qword_10010ECC0);
  if (v14 == 1)
  {
    swift_getKeyPath();
    sub_1000A55B0(&qword_10014F828, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.WritingDirectionAttribute);
    sub_100100D14();

    v15 = sub_100007210(&qword_10014F830, &qword_10010EED8);
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_10000FFB4(v8, &qword_10014F798, &qword_10010ECB0);
    if (v16 == 1)
    {
      swift_getKeyPath();
      sub_1000A55B0(&qword_10014F818, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AlignmentAttribute);
      sub_100100D14();

      v17 = sub_100007210(&qword_10014F820, &qword_10010EEA0);
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      sub_10000FFB4(v5, &qword_10014F7A0, &qword_10010ECB8);
      if (v18 == 1)
      {
        swift_getKeyPath();
        sub_1000A55B0(&qword_10014F808, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
        sub_100100D14();

        v19 = sub_100100754();
        v13 = (*(*(v19 - 8) + 48))(v2, 1, v19) != 1;
        sub_10000FFB4(v2, &qword_10014F7B0, &qword_10010ECC8);
      }
    }
  }

  return v13;
}

uint64_t sub_1000A4768()
{
  v1 = sub_100007210(&qword_10014F820, &qword_10010EEA0);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_1001001F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_100010014(v0, v3, &qword_10014F820, &qword_10010EEA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000FFB4(v3, &qword_10014F820, &qword_10010EEA0);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableTextAlignment.natural(_:))
  {
    v11 = 4;
LABEL_13:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableTextAlignment.left(_:))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.right(_:))
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.center(_:))
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.justified(_:))
  {
    v11 = 3;
    goto LABEL_13;
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

uint64_t sub_1000A4A00()
{
  v1 = sub_100007210(&qword_10014F830, &qword_10010EED8);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = sub_100100474();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_100010014(v0, v3, &qword_10014F830, &qword_10010EED8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000FFB4(v3, &qword_10014F830, &qword_10010EED8);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableWritingDirection.natural(_:))
  {
    v11 = -1;
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableWritingDirection.leftToRight(_:))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (v12 == enum case for MergeableWritingDirection.rightToLeft(_:))
  {
    v11 = 1;
    goto LABEL_9;
  }

  result = sub_100101E74();
  __break(1u);
  return result;
}

void protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTextAttributeScope(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000A4CC4(a3, v7);

  sub_1000A0E78(a1, a2, v7, a4);
}

uint64_t sub_1000A4CC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for static AttributeConverter.preferredAttributeProvider.getter in conformance MergeableTextAttributeScope()
{
  v0 = type metadata accessor for CustomAttributeProviderConcrete(0);
  sub_1000A55B0(&qword_10014F778, type metadata accessor for CustomAttributeProviderConcrete, &unk_10010CFD8);
  return v0;
}

uint64_t protocol witness for static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:) in conformance MergeableTitleAttributeScope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A55B0(&qword_10014F780, &type metadata accessor for MergeableTitleAttributeScope, &protocol conformance descriptor for MergeableTitleAttributeScope);

  return sub_100100D34();
}

unint64_t _s13JournalShared28MergeableTitleAttributeScopeV0A2UI0E9Converter0A14ShareExtensionAdEP12nsAttributes4from15traitCollection06customE8ProviderSDySo21NSAttributedStringKeyaypG9Coherence012CRAttributedS0V0L0Vyx_G_So07UITraitO0CAD06CustomeQ0_ptFZTW_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100007210(&unk_10014E130, &unk_10010ECA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010C1F0;
  *(inited + 32) = NSFontAttributeName;
  sub_1000110C0(a3, a3[3]);
  v5 = NSFontAttributeName;
  v6 = sub_100100DD4();
  v7 = sub_100010F50(0, &unk_10014E148, UIFont_ptr);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  sub_1000110C0(a3, a3[3]);
  v8 = NSForegroundColorAttributeName;
  v9 = sub_100100DE4();
  *(inited + 104) = sub_100010F50(0, &qword_10014C7D0, UIColor_ptr);
  *(inited + 80) = v9;
  v10 = sub_10004D7B4(inited);
  swift_setDeallocating();
  sub_100007210(&qword_10014D580, qword_10010D830);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_1000A4FBC()
{
  result = qword_10014F788;
  if (!qword_10014F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F788);
  }

  return result;
}

uint64_t sub_1000A55B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1000A55F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000507C8(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1000A5684(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = sub_100100F94();
  v7 = [v5 stringArrayForKey:v6];

  if (v7)
  {
    v8 = sub_1001011D4();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 5;
    while (1)
    {
      v12 = *(v11 - 1) == a1 && *v11 == a2;
      if (v12 || (sub_100101E84() & 1) != 0)
      {
        break;
      }

      ++v10;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    sub_1000A55F8(v10);

    v13 = [v4 standardUserDefaults];
    isa = sub_1001011C4().super.isa;

    v15 = sub_100100F94();
    [v13 setObject:isa forKey:v15];
  }

  else
  {
LABEL_12:
  }
}

void sub_1000A5878(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = sub_100100F94();
  v7 = [v5 stringArrayForKey:v6];

  if (v7)
  {
    v9 = sub_1001011D4();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v18[0] = a1;
  v18[1] = a2;
  __chkstk_darwin(v8);
  v17[2] = v18;

  v10 = sub_10004F030(sub_1000A5AAC, v17, v9);

  if (v10)
  {
  }

  else
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10000F02C(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_10000F02C((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[2 * v12];
    *(v13 + 4) = a1;
    *(v13 + 5) = a2;
    v14 = [v4 standardUserDefaults];
    isa = sub_1001011C4().super.isa;

    v16 = sub_100100F94();
    [v14 setObject:isa forKey:v16];
  }
}

void sub_1000A5ACC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100101B94();
    sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
    sub_1000AC1A0();
    sub_100101444();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_100101BB4() || (sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_10004A9A0(v1);
      return;
    }

LABEL_16:
    sub_1000FFB14();
    if (swift_dynamicCastClass())
    {
      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1000A5D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v39 = _swiftEmptyArrayStorage;
    sub_100016F00(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 64;
    v5 = sub_100101B74();
    v6 = 0;
    v30 = v2 + 72;
    v34 = v2 + 64;
    v35 = v2;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v36 = v3;
      v37 = *(v2 + 36);
      v10 = (*(v2 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_1000AC9F8(v11, v12);
      if (v13 == 13)
      {
        if (qword_10014B808 != -1)
        {
          swift_once();
        }

        v14 = sub_100100AE4();
        sub_100003D38(v14, qword_10014F868);

        v15 = sub_100100AC4();
        v16 = sub_1001015A4();

        if (os_log_type_enabled(v15, v16))
        {
          v32 = v16;
          v17 = 12;
          v18 = swift_slowAlloc();
          log = v15;
          v19 = swift_slowAlloc();
          v38 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_10007A774(v11, v12, &v38);
          _os_log_impl(&_mh_execute_header, log, v32, "No JournalEntryMO field match for key: %s", v18, 0xCu);
          sub_10001100C(v19);
        }

        else
        {

          v17 = 12;
        }
      }

      else
      {
        v17 = v13;
      }

      v3 = v36;
      v20 = v37;
      v39 = v36;
      v22 = *(v36 + 2);
      v21 = *(v36 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_100016F00((v21 > 1), v22 + 1, 1);
        v20 = v37;
        v3 = v39;
      }

      *(v3 + 2) = v22 + 1;
      *(v3 + v22 + 32) = v17;
      v2 = v35;
      v7 = 1 << *(v35 + 32);
      if (v5 >= v7)
      {
        goto LABEL_29;
      }

      v4 = v34;
      v23 = *(v34 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (v20 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v7 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v33;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        v8 = v33;
        while (v26 < (v7 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1000ACA44(v5, v20, 0);
            v7 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1000ACA44(v5, v20, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

uint64_t sub_1000A60C8()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014F868);
  v1 = sub_100003D38(v0, qword_10014F868);
  if (qword_10014B868 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_1001587C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000A6190(unint64_t a1)
{
  v2 = 0;
  v3 = sub_100007210(&qword_10014CD10, &qword_10010C8F8);
  __chkstk_darwin(v3);
  v202 = &v188 - v4;
  v212 = sub_1001007D4();
  v5 = *(v212 - 1);
  __chkstk_darwin(v212);
  v211 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v188 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = &v188 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = (&v188 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = (&v188 - v21);
  v23 = __chkstk_darwin(v20);
  v210 = &v188 - v24;
  __chkstk_darwin(v23);
  v209 = &v188 - v25;
  v214 = sub_1000FF874();
  *&v204 = *(v214 - 8);
  v26 = __chkstk_darwin(v214);
  v28 = &v188 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v208 = &v188 - v29;
  v30 = [a1 userInfo];
  if (!v30)
  {
    return;
  }

  v206 = v22;
  v193 = v5;
  v31 = v30;
  v205 = sub_100100E64();

  if (qword_10014B808 == -1)
  {
    goto LABEL_3;
  }

LABEL_219:
  swift_once();
LABEL_3:
  v32 = sub_100100AE4();
  v33 = sub_100003D38(v32, qword_10014F868);
  v34 = a1;
  v207 = v33;
  v35 = sub_100100AC4();
  v36 = sub_1001015A4();

  v37 = os_log_type_enabled(v35, v36);
  v196 = v10;
  v201 = v13;
  v197 = v16;
  v203 = v19;
  v198 = v3;
  v195 = v28;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v226[0] = v16;
    *v38 = 136315138;
    v39 = [v34 name];
    v40 = sub_100100FD4();
    v28 = v41;

    v42 = sub_10007A774(v40, v28, v226);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Responding to NSManagedObjectContextObjectsDidChange notification: %s", v38, 0xCu);
    sub_10001100C(v16);
  }

  v43 = v205;
  v219 = _swiftEmptySetSingleton;
  v220 = sub_100100FD4();
  v221 = v44;
  sub_100101BF4();
  if (*(v43 + 16) && (a1 = v43, v45 = sub_10004C500(v226), (v46 & 1) != 0))
  {
    sub_100010FA8(*(v43 + 56) + 32 * v45, v225);
    sub_10004DB40(v226);
    sub_100007210(&qword_10014F888, &qword_10010EF18);
    if (swift_dynamicCast())
    {
      sub_1000A5ACC(v220);
      v28 = v47;

      v226[0] = _swiftEmptyArrayStorage;
      if (v28 >> 62)
      {
        v3 = sub_100101DA4();
      }

      else
      {
        v3 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v194 = v2;
      if (v3)
      {
        v16 = 0;
        v213 = v28 & 0xC000000000000001;
        v2 = (v28 & 0xFFFFFFFFFFFFFF8);
        v13 = &selRef_cancel;
        while (1)
        {
          if (v213)
          {
            v48 = sub_100101CA4();
          }

          else
          {
            if (v16 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_215;
            }

            v48 = *(v28 + 8 * v16 + 32);
          }

          v49 = v48;
          v10 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_214;
          }

          v50 = [v48 entry];
          if (v50)
          {
            a1 = v50;
            v51 = [v50 v13[276]];
          }

          else
          {
            v51 = 0;
          }

          v19 = v13;
          v52 = [*(v215 + 32) v13[276]];
          v53 = v52;
          if (v51)
          {
            if (!v52)
            {

              goto LABEL_13;
            }

            sub_100010F50(0, &qword_10014F8A0, NSManagedObjectID_ptr);
            a1 = sub_100101A34();

            if ((a1 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (v52)
          {

LABEL_27:
            goto LABEL_13;
          }

          a1 = v226;
          sub_100101D04();
          sub_100101D34();
          sub_100101D44();
          sub_100101D14();
LABEL_13:
          ++v16;
          v13 = v19;
          if (v10 == v3)
          {
            v89 = v226[0];
            v2 = v194;
            v43 = v205;
            goto LABEL_66;
          }
        }
      }

      v89 = _swiftEmptyArrayStorage;
LABEL_66:

      if (v89 < 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = (v89 >> 62) & 1;
      }

      if (v3 == 1)
      {
        v200 = sub_100101DA4();
        if (!v200)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v200 = *(v89 + 16);
        if (!v200)
        {
          goto LABEL_222;
        }
      }

      v90 = sub_100100AC4();
      v91 = sub_1001015A4();
      v92 = os_log_type_enabled(v90, v91);
      v213 = v89;
      if (v92)
      {
        v10 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v226[0] = v188;
        *v10 = 134218242;
        v192 = v3;
        v191 = v90;
        v189 = v91;
        if (v3)
        {
          v93 = sub_100101DA4();
        }

        else
        {
          v93 = *(v89 + 16);
        }

        v116 = v206;
        *(v10 + 4) = v93;

        a1 = 0;
        v190 = v10;
        *(v10 + 12) = 2080;
        v199 = (v89 & 0xC000000000000001);
        v28 = v204 + 56;
        v13 = (v204 + 48);
        v16 = _swiftEmptyArrayStorage;
        v2 = (v204 + 32);
        do
        {
          if (v199)
          {
            v117 = sub_100101CA4();
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (a1 >= *(v89 + 16))
            {
              goto LABEL_218;
            }

            v117 = *(v89 + 8 * a1 + 32);
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          v118 = v117;
          v119 = [v118 id];
          if (v119)
          {
            v120 = v119;
            sub_1000FF854();

            v116 = v206;
            v121 = 0;
          }

          else
          {
            v121 = 1;
          }

          v10 = v214;
          (*v28)(v116, v121, 1, v214);
          v122 = v210;
          sub_100045508(v116, v210);
          v123 = v122;
          v19 = v209;
          sub_100045508(v123, v209);

          if ((*v13)(v19, 1, v10) == 1)
          {
            sub_10000FFB4(v19, &qword_10014CD08, &unk_10010C860);
          }

          else
          {
            v124 = *v2;
            (*v2)(v208, v19, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_10000F1E4(0, *(v16 + 16) + 1, 1, v16);
            }

            v10 = *(v16 + 16);
            v125 = *(v16 + 24);
            if (v10 >= v125 >> 1)
            {
              v16 = sub_10000F1E4((v125 > 1), v10 + 1, 1, v16);
            }

            *(v16 + 16) = v10 + 1;
            v124((v16 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v10), v208, v214);
            v116 = v206;
          }

          v89 = v213;
          ++a1;
        }

        while (v3 != v200);
        v126 = sub_1001011E4();
        v128 = v127;

        v129 = sub_10007A774(v126, v128, v226);

        v130 = v190;
        *(v190 + 14) = v129;
        v89 = v213;
        v131 = v191;
        _os_log_impl(&_mh_execute_header, v191, v189, "Processing %ld asset inserts: %s", v130, 0x16u);
        sub_10001100C(v188);

        v2 = v194;
        v43 = v205;
        if (!v192)
        {
LABEL_140:
          v95 = *(v89 + 16);
          if (v95)
          {
            goto LABEL_141;
          }

          goto LABEL_222;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_140;
        }
      }

      v95 = sub_100101DA4();
      if (v95)
      {
LABEL_141:
        if (v95 < 1)
        {
          __break(1u);
          return;
        }

        v132 = 0;
        v209 = v89 & 0xC000000000000001;
        LODWORD(v208) = enum case for AssetType.reflection(_:);
        v133 = (v193 + 104);
        v134 = (v193 + 8);
        v210 = v95;
        while (1)
        {
          if (v209)
          {
            v136 = sub_100101CA4();
          }

          else
          {
            v136 = *(v89 + 8 * v132 + 32);
          }

          v137 = v136;
          v138 = [v136 assetType];
          if (v138)
          {
            v139 = v138;
            v16 = sub_100100FD4();
            v141 = v140;
          }

          else
          {
            v16 = 0;
            v141 = 0;
          }

          v142 = v211;
          v143 = v212;
          (*v133)(v211, v208, v212);
          v28 = sub_1001007C4();
          v145 = v144;
          (*v134)(v142, v143);
          if (v141)
          {
            if (v16 == v28 && v141 == v145)
            {

              v89 = v213;
LABEL_157:
              v135 = 4;
              goto LABEL_145;
            }

            v16 = sub_100101E84();

            v89 = v213;
            if (v16)
            {
              goto LABEL_157;
            }
          }

          else
          {

            v89 = v213;
          }

          v135 = 1;
LABEL_145:
          sub_10004613C(v226, v135);

          if (v210 == ++v132)
          {

            v2 = v194;
            v43 = v205;
            goto LABEL_31;
          }
        }
      }

LABEL_222:
    }
  }

  else
  {
    sub_10004DB40(v226);
  }

LABEL_31:
  v220 = sub_100100FD4();
  v221 = v54;
  sub_100101BF4();
  if (*(v43 + 16) && (v55 = sub_10004C500(v226), (v56 & 1) != 0))
  {
    sub_100010FA8(*(v43 + 56) + 32 * v55, v225);
    sub_10004DB40(v226);
    sub_100007210(&qword_10014F888, &qword_10010EF18);
    if (swift_dynamicCast())
    {
      v57 = v220;

      a1 = sub_100100AC4();
      v58 = sub_1001015A4();
      v59 = v57 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v58))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        if (v59)
        {
          v61 = sub_100101BA4();
        }

        else
        {
          v61 = *(v57 + 16);
        }

        *(v60 + 4) = v61;

        _os_log_impl(&_mh_execute_header, a1, v58, "Processing %ld updated objects", v60, 0xCu);
      }

      else
      {
      }

      v194 = v2;
      if (v59)
      {
        sub_100101B94();
        a1 = sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
        sub_1000AC1A0();
        sub_100101444();
        v57 = v220;
        v3 = v221;
        v96 = v222;
        v13 = v223;
        v2 = v224;
      }

      else
      {
        v13 = 0;
        v3 = v57 + 56;
        v97 = -1 << *(v57 + 32);
        v96 = ~v97;
        v98 = -v97;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v2 = (v99 & *(v57 + 56));
      }

      v19 = ((v96 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_92;
      }

LABEL_89:
      v100 = sub_100101BB4();
      if (v100)
      {
        v225[0] = v100;
        sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
        swift_dynamicCast();
        a1 = v226[0];
        v10 = v13;
        v28 = v2;
        if (v226[0])
        {
          while (1)
          {
            v103 = sub_1000A80CC(a1, v215);
            v104 = v219;

            v105 = sub_1000AA3C4(v103, v104);

            v219 = v105;
            v13 = v10;
            v2 = v28;
            if (v57 < 0)
            {
              goto LABEL_89;
            }

LABEL_92:
            v101 = v13;
            v102 = v2;
            v10 = v13;
            if (!v2)
            {
              break;
            }

LABEL_96:
            v28 = (v102 - 1) & v102;
            a1 = *(*(v57 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v102)))));
            if (!a1)
            {
              goto LABEL_99;
            }
          }

          while (1)
          {
            v10 = v101 + 1;
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v10 >= v19)
            {
              goto LABEL_99;
            }

            v102 = *(v3 + 8 * v10);
            v101 = (v101 + 1);
            if (v102)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_99:
      sub_10004A9A0(v57);
      v2 = v194;
      v43 = v205;
    }
  }

  else
  {
    sub_10004DB40(v226);
  }

  v218[0] = sub_100100FD4();
  v218[1] = v62;
  sub_100101BF4();
  if (*(v43 + 16) && (v63 = sub_10004C500(v226), (v64 & 1) != 0))
  {
    sub_100010FA8(*(v43 + 56) + 32 * v63, v225);
    sub_10004DB40(v226);
    sub_100007210(&qword_10014F888, &qword_10010EF18);
    if (swift_dynamicCast())
    {
      v65 = v218[0];

      a1 = sub_100100AC4();
      v66 = sub_1001015A4();
      v67 = v65 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v66))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        if (v67)
        {
          v69 = sub_100101BA4();
        }

        else
        {
          v69 = *(v65 + 16);
        }

        *(v68 + 4) = v69;

        _os_log_impl(&_mh_execute_header, a1, v66, "Processing %ld refreshed objects", v68, 0xCu);
      }

      else
      {
      }

      v194 = v2;
      if (v67)
      {
        sub_100101B94();
        a1 = sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
        sub_1000AC1A0();
        sub_100101444();
        v65 = v225[0];
        v3 = v225[1];
        v106 = v225[2];
        v13 = v225[3];
        v2 = v225[4];
      }

      else
      {
        v13 = 0;
        v3 = v65 + 56;
        v107 = -1 << *(v65 + 32);
        v106 = ~v107;
        v108 = -v107;
        if (v108 < 64)
        {
          v109 = ~(-1 << v108);
        }

        else
        {
          v109 = -1;
        }

        v2 = (v109 & *(v65 + 56));
      }

      v19 = ((v106 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v65 & 0x8000000000000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_109:
      v110 = sub_100101BB4();
      if (!v110 || (v218[0] = v110, sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr), swift_dynamicCast(), a1 = v226[0], v10 = v13, v28 = v2, !v226[0]))
      {
LABEL_119:
        sub_10004A9A0(v65);
        v2 = v194;
        v43 = v205;
        goto LABEL_45;
      }

      while (1)
      {
        v113 = sub_1000A80CC(a1, v215);
        v114 = v219;

        v115 = sub_1000AA3C4(v113, v114);

        v219 = v115;
        v13 = v10;
        v2 = v28;
        if (v65 < 0)
        {
          goto LABEL_109;
        }

LABEL_112:
        v111 = v13;
        v112 = v2;
        v10 = v13;
        if (!v2)
        {
          break;
        }

LABEL_116:
        v28 = (v112 - 1) & v112;
        a1 = *(*(v65 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v112)))));
        if (!a1)
        {
          goto LABEL_119;
        }
      }

      while (1)
      {
        v10 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          break;
        }

        if (v10 >= v19)
        {
          goto LABEL_119;
        }

        v112 = *(v3 + 8 * v10);
        v111 = (v111 + 1);
        if (v112)
        {
          goto LABEL_116;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }
  }

  else
  {
    sub_10004DB40(v226);
  }

LABEL_45:
  v216 = sub_100100FD4();
  v217 = v70;
  sub_100101BF4();
  if (!*(v43 + 16) || (v71 = sub_10004C500(v226), (v72 & 1) == 0))
  {

    sub_10004DB40(v226);
    goto LABEL_54;
  }

  sub_100010FA8(*(v43 + 56) + 32 * v71, v218);
  sub_10004DB40(v226);

  sub_100007210(&qword_10014F888, &qword_10010EF18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v10 = v216;
  v73 = v216 & 0xC000000000000001;
  if ((v216 & 0xC000000000000001) != 0)
  {
    if (sub_100101BA4() < 1)
    {
      goto LABEL_75;
    }
  }

  else if (*(v216 + 16) < 1)
  {
LABEL_75:

    goto LABEL_54;
  }

  v74 = sub_100100AC4();
  a1 = sub_1001015A4();
  if (os_log_type_enabled(v74, a1))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (v73)
    {
      v76 = sub_100101BA4();
    }

    else
    {
      v76 = *(v10 + 16);
    }

    *(v75 + 4) = v76;

    _os_log_impl(&_mh_execute_header, v74, a1, "Notified of %ld deletes:", v75, 0xCu);
  }

  else
  {
  }

  v194 = v2;
  if (v73)
  {
    sub_100101B94();
    a1 = sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
    sub_1000AC1A0();
    sub_100101444();
    v10 = v226[0];
    v146 = v226[1];
    v147 = v226[2];
    v73 = v226[3];
    v28 = v226[4];
  }

  else
  {
    v148 = -1 << *(v10 + 32);
    v146 = v10 + 56;
    v147 = ~v148;
    v149 = -v148;
    if (v149 < 64)
    {
      v150 = ~(-1 << v149);
    }

    else
    {
      v150 = -1;
    }

    v28 = v150 & *(v10 + 56);
  }

  v193 = v147;
  v13 = ((v147 + 64) >> 6);
  v212 = (v204 + 56);
  v206 = (v204 + 48);
  v199 = (v204 + 32);
  v200 = (v204 + 8);
  *&v94 = 136315138;
  v204 = v94;
  v19 = &qword_10014CD08;
  v209 = v10;
  v208 = v146;
  v205 = v13;
  if ((v10 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v154 = v73;
      v155 = v28;
      v3 = v73;
      if (!v28)
      {
        while (1)
        {
          v3 = v154 + 1;
          if (__OFADD__(v154, 1))
          {
            break;
          }

          if (v3 >= v13)
          {
            goto LABEL_211;
          }

          v155 = *(v146 + 8 * v3);
          ++v154;
          if (v155)
          {
            goto LABEL_175;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_175:
      v153 = (v155 - 1) & v155;
      v152 = *(*(v10 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v155)))));
      if (!v152)
      {
        goto LABEL_211;
      }

LABEL_176:
      v156 = v152;
      v157 = sub_100100AC4();
      v158 = sub_1001015A4();

      v159 = os_log_type_enabled(v157, v158);
      v213 = v156;
      v211 = v153;
      if (v159)
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v218[0] = v161;
        *v160 = v204;
        v162 = sub_10006D86C();
        v164 = sub_10007A774(v162, v163, v218);

        *(v160 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v157, v158, "Processing deletion %s", v160, 0xCu);
        sub_10001100C(v161);
      }

      v2 = v202;
      v165 = v214;
      sub_1000FFC24();
      v166 = swift_dynamicCastClass();
      v167 = v197;
      v168 = v203;
      if (v166)
      {
        v169 = [v166 id];
        if (v169)
        {
          v170 = v169;
          sub_1000FF854();

          v165 = v214;
          v171 = 0;
        }

        else
        {
          v171 = 1;
        }

        v172 = *v212;
        (*v212)(v167, v171, 1, v165);
        sub_100045508(v167, v168);
      }

      else
      {
        v172 = *v212;
        (*v212)(v203, 1, 1, v165);
      }

      v210 = *(v215 + 32);
      v173 = [v210 id];
      if (v173)
      {
        v174 = v201;
        v175 = v173;
        sub_1000FF854();

        v165 = v214;
        v176 = 0;
      }

      else
      {
        v176 = 1;
        v174 = v201;
      }

      v172(v174, v176, 1, v165);
      a1 = *(v198 + 48);
      v177 = v203;
      sub_100010014(v203, v2, &qword_10014CD08, &unk_10010C860);
      sub_100010014(v174, v2 + a1, &qword_10014CD08, &unk_10010C860);
      v178 = *v206;
      if ((*v206)(v2, 1, v165) == 1)
      {
        break;
      }

      v180 = v196;
      sub_100010014(v2, v196, &qword_10014CD08, &unk_10010C860);
      if (v178(v2 + a1, 1, v165) == 1)
      {
        sub_10000FFB4(v201, &qword_10014CD08, &unk_10010C860);
        sub_10000FFB4(v203, &qword_10014CD08, &unk_10010C860);
        (*v200)(v180, v165);
        v10 = v209;
        v16 = v213;
LABEL_192:
        sub_10000FFB4(v2, &qword_10014CD10, &qword_10010C8F8);
        v146 = v208;
        v13 = v205;
        goto LABEL_193;
      }

      v185 = v195;
      (*v199)(v195, v2 + a1, v165);
      sub_1000AC208(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      a1 = sub_100100F04();
      v186 = *v200;
      (*v200)(v185, v165);
      sub_10000FFB4(v201, &qword_10014CD08, &unk_10010C860);
      sub_10000FFB4(v203, &qword_10014CD08, &unk_10010C860);
      v186(v180, v165);
      sub_10000FFB4(v2, &qword_10014CD08, &unk_10010C860);
      v10 = v209;
      v146 = v208;
      v13 = v205;
      v16 = v213;
      if (a1)
      {
        goto LABEL_202;
      }

LABEL_193:
      sub_1000FFB14();
      v181 = swift_dynamicCastClass();
      if (v181 && (v182 = [v181 entry]) != 0)
      {
        a1 = v182;
        v2 = [v182 objectID];
      }

      else
      {
        v2 = 0;
      }

      v183 = [v210 objectID];
      v184 = v183;
      if (v2)
      {
        if (!v183)
        {

          goto LABEL_208;
        }

        sub_100010F50(0, &qword_10014F8A0, NSManagedObjectID_ptr);
        a1 = sub_100101A34();

        if (a1)
        {
LABEL_205:
          a1 = &v219;
          sub_10004613C(v218, 4);
          v187 = 1;
          goto LABEL_206;
        }
      }

      else
      {
        if (!v183)
        {
          goto LABEL_205;
        }
      }

LABEL_207:

LABEL_208:
      v73 = v3;
      v28 = v211;
      if (v10 < 0)
      {
        goto LABEL_168;
      }
    }

    sub_10000FFB4(v174, &qword_10014CD08, &unk_10010C860);
    sub_10000FFB4(v177, &qword_10014CD08, &unk_10010C860);
    v179 = v178(v2 + a1, 1, v165);
    v10 = v209;
    v16 = v213;
    if (v179 == 1)
    {
      sub_10000FFB4(v2, &qword_10014CD08, &unk_10010C860);
      v146 = v208;
      v13 = v205;
LABEL_202:
      a1 = &v219;
      v187 = 9;
LABEL_206:
      sub_10004613C(v218, v187);
      goto LABEL_207;
    }

    goto LABEL_192;
  }

LABEL_168:
  v151 = sub_100101BB4();
  if (v151)
  {
    v216 = v151;
    sub_100010F50(0, &qword_10014F890, NSManagedObject_ptr);
    swift_dynamicCast();
    v152 = v218[0];
    v3 = v73;
    v153 = v28;
    if (v218[0])
    {
      goto LABEL_176;
    }
  }

LABEL_211:
  sub_10004A9A0(v10);
LABEL_54:
  v77 = v219;
  v78 = v219[2];
  v79 = sub_100100AC4();
  v80 = sub_1001015A4();
  v81 = os_log_type_enabled(v79, v80);
  if (v78)
  {
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v218[0] = v83;
      *v82 = 136315138;
      sub_1000AC14C();

      v84 = sub_100101424();
      v86 = v85;

      v87 = sub_10007A774(v84, v86, v218);

      *(v82 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v80, "Detected %s changes", v82, 0xCu);
      sub_10001100C(v83);
    }

    v218[0] = v77;

    sub_100100BE4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (v81)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "No changed fields found from NSManagedObjectContextObjectsDidChange notification.", v88, 2u);
    }
  }
}

void *sub_1000A80CC(void *a1, uint64_t a2)
{
  v146 = a2;
  v3 = sub_1001007D4();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v133 = &v124[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_1000FF874();
  v5 = *(v147 - 8);
  __chkstk_darwin(v147);
  v140 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v145 = sub_100007210(&qword_10014CD10, &qword_10010C8F8);
  v7 = __chkstk_darwin(v145);
  v142 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v124[-v9];
  v11 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v124[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v144 = &v124[-v16];
  v17 = __chkstk_darwin(v15);
  v138 = &v124[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v124[-v20];
  v22 = __chkstk_darwin(v19);
  v132 = &v124[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v124[-v25];
  v27 = __chkstk_darwin(v24);
  v139 = &v124[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v124[-v30];
  __chkstk_darwin(v29);
  v33 = &v124[-v32];
  v149 = _swiftEmptySetSingleton;
  sub_1000FFC24();
  v34 = swift_dynamicCastClass();
  v136 = v14;
  if (!v34)
  {
LABEL_15:
    sub_1000FFB14();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      return v149;
    }

    v49 = v48;
    v141 = a1;
    v50 = [v49 entry];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 id];

      if (v52)
      {
        v53 = v138;
        sub_1000FF854();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v138;
      }

      v55 = v5[7];
      v55(v53, v54, 1, v147);
      sub_100045508(v53, v21);
    }

    else
    {
      v55 = v5[7];
      v55(v21, 1, 1, v147);
    }

    v86 = [*(v146 + 32) id];
    v139 = v49;
    if (v86)
    {
      v87 = v144;
      v88 = v86;
      sub_1000FF854();

      v89 = 0;
    }

    else
    {
      v89 = 1;
      v87 = v144;
    }

    v90 = v147;
    v55(v87, v89, 1, v147);
    v91 = *(v145 + 48);
    v92 = v21;
    v93 = v21;
    v94 = v142;
    sub_100010014(v92, v142, &qword_10014CD08, &unk_10010C860);
    sub_100010014(v87, &v94[v91], &qword_10014CD08, &unk_10010C860);
    v95 = v5[6];
    if (v95(v94, 1, v90) == 1)
    {
      sub_10000FFB4(v87, &qword_10014CD08, &unk_10010C860);
      sub_10000FFB4(v93, &qword_10014CD08, &unk_10010C860);
      if (v95(&v94[v91], 1, v147) == 1)
      {
        sub_10000FFB4(v94, &qword_10014CD08, &unk_10010C860);
        goto LABEL_39;
      }
    }

    else
    {
      v143 = v93;
      v96 = v136;
      sub_100010014(v94, v136, &qword_10014CD08, &unk_10010C860);
      if (v95(&v94[v91], 1, v147) != 1)
      {
        v97 = v140;
        v98 = v147;
        (v5[4])(v140, &v94[v91], v147);
        sub_1000AC208(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v99 = sub_100100F04();
        v100 = v5[1];
        v100(v97, v98);
        sub_10000FFB4(v144, &qword_10014CD08, &unk_10010C860);
        sub_10000FFB4(v143, &qword_10014CD08, &unk_10010C860);
        v100(v96, v98);
        sub_10000FFB4(v94, &qword_10014CD08, &unk_10010C860);
        if (v99)
        {
LABEL_39:
          v101 = [v139 assetType];
          if (v101)
          {
            v102 = v101;
            v103 = sub_100100FD4();
            v105 = v104;
          }

          else
          {
            v103 = 0;
            v105 = 0;
          }

          v107 = v134;
          v106 = v135;
          v108 = v133;
          (*(v134 + 104))(v133, enum case for AssetType.reflection(_:), v135);
          v109 = sub_1001007C4();
          v111 = v110;
          (*(v107 + 8))(v108, v106);
          if (v105)
          {
            if (v103 == v109 && v105 == v111)
            {

LABEL_48:
              v113 = 4;
LABEL_50:
              sub_10004613C(&v148, v113);
              goto LABEL_51;
            }

            v112 = sub_100101E84();

            if (v112)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v113 = 1;
          goto LABEL_50;
        }

LABEL_51:

        return v149;
      }

      sub_10000FFB4(v144, &qword_10014CD08, &unk_10010C860);
      sub_10000FFB4(v143, &qword_10014CD08, &unk_10010C860);
      (v5[1])(v96, v147);
    }

    sub_10000FFB4(v94, &qword_10014CD10, &qword_10010C8F8);
    goto LABEL_51;
  }

  v35 = v34;
  v130 = v26;
  v131 = a1;
  v137 = a1;
  v36 = [v35 id];
  if (v36)
  {
    v37 = v36;
    sub_1000FF854();

    v38 = v5[7];
    v38(v33, 0, 1, v147);
  }

  else
  {
    v38 = v5[7];
    v38(v33, 1, 1, v147);
  }

  v39 = [*(v146 + 32) id];
  v143 = v21;
  if (v39)
  {
    v40 = v39;
    sub_1000FF854();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v147;
  v129 = (v5 + 7);
  v38(v31, v41, 1, v147);
  v43 = v5;
  v44 = *(v145 + 48);
  sub_100010014(v33, v10, &qword_10014CD08, &unk_10010C860);
  sub_100010014(v31, &v10[v44], &qword_10014CD08, &unk_10010C860);
  v141 = v43;
  v45 = v42;
  v46 = v43[6];
  if (v46(v10, 1, v45) != 1)
  {
    v47 = v139;
    sub_100010014(v10, v139, &qword_10014CD08, &unk_10010C860);
    if (v46(&v10[v44], 1, v147) != 1)
    {
      v126 = v46;
      v127 = v38;
      v56 = v141;
      v57 = *(v141 + 4);
      v128 = v35;
      v58 = v140;
      v59 = v147;
      v57(v140, &v10[v44], v147);
      sub_1000AC208(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = v47;
      v125 = sub_100100F04();
      v61 = v56[1];
      v62 = v58;
      v35 = v128;
      v61(v62, v59);
      sub_10000FFB4(v31, &qword_10014CD08, &unk_10010C860);
      sub_10000FFB4(v33, &qword_10014CD08, &unk_10010C860);
      v61(v60, v59);
      sub_10000FFB4(v10, &qword_10014CD08, &unk_10010C860);
      if (v125)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_10000FFB4(v31, &qword_10014CD08, &unk_10010C860);
    sub_10000FFB4(v33, &qword_10014CD08, &unk_10010C860);
    (*(v141 + 1))(v47, v147);
LABEL_13:
    sub_10000FFB4(v10, &qword_10014CD10, &qword_10010C8F8);
LABEL_14:

    v5 = v141;
    v21 = v143;
    a1 = v131;
    goto LABEL_15;
  }

  sub_10000FFB4(v31, &qword_10014CD08, &unk_10010C860);
  sub_10000FFB4(v33, &qword_10014CD08, &unk_10010C860);
  if (v46(&v10[v44], 1, v147) != 1)
  {
    goto LABEL_13;
  }

  v126 = v46;
  v127 = v38;
  sub_10000FFB4(v10, &qword_10014CD08, &unk_10010C860);
LABEL_21:
  sub_1000A8FFC(v35);

  v64 = sub_1000AA3C4(v63, _swiftEmptySetSingleton);
  sub_1000AA4A0(v35);

  v149 = sub_1000AA3C4(v65, v64);
  if (qword_10014B808 != -1)
  {
    swift_once();
  }

  v66 = sub_100100AE4();
  sub_100003D38(v66, qword_10014F868);
  v67 = v137;

  v68 = sub_100100AC4();
  v69 = sub_1001015A4();

  if (os_log_type_enabled(v68, v69))
  {
    LODWORD(v146) = v69;
    v70 = swift_slowAlloc();
    v128 = v35;
    v71 = v70;
    v145 = swift_slowAlloc();
    v148 = v145;
    *v71 = 136315650;
    sub_1000AC14C();
    v72 = sub_100101424();
    v74 = v73;

    v75 = sub_10007A774(v72, v74, &v148);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2080;
    v76 = sub_100101424();
    v78 = v77;

    v79 = sub_10007A774(v76, v78, &v148);

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    v80 = [v128 id];
    v81 = v67;
    if (v80)
    {
      v82 = v132;
      v83 = v80;
      sub_1000FF854();

      v84 = 0;
      v85 = v141;
    }

    else
    {
      v84 = 1;
      v85 = v141;
      v82 = v132;
    }

    v115 = v147;
    v127(v82, v84, 1, v147);
    v116 = v130;
    sub_100045508(v82, v130);
    if (v126(v116, 1, v115))
    {
      sub_10000FFB4(v116, &qword_10014CD08, &unk_10010C860);
      v117 = 0xE300000000000000;
      v118 = 7104878;
    }

    else
    {
      v119 = v140;
      v120 = v147;
      v85[2](v140, v116, v147);
      sub_10000FFB4(v116, &qword_10014CD08, &unk_10010C860);
      v121 = sub_1000FF814();
      v117 = v122;
      (v85[1])(v119, v120);
      v118 = v121;
    }

    v123 = sub_10007A774(v118, v117, &v148);

    *(v71 + 24) = v123;
    _os_log_impl(&_mh_execute_header, v68, v146, "Tracked %s CoreData changes and %s inspected changes to entry with ID %s", v71, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v149;
}

void sub_1000A8FFC(void *a1)
{
  v2 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v2 - 8);
  v168 = &v146 - v3;
  v4 = sub_100007210(&qword_10014F8A8, &qword_10010EF20);
  __chkstk_darwin(v4 - 8);
  v172 = &v146 - v5;
  v6 = sub_100007210(&unk_10014D640, &unk_10010C480);
  __chkstk_darwin(v6 - 8);
  v171 = &v146 - v7;
  v170 = sub_1000FF804();
  v177 = *(v170 - 8);
  v8 = __chkstk_darwin(v170);
  v167 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v146 - v10;
  v12 = sub_1000FFB34();
  v176 = *(v12 - 8);
  __chkstk_darwin(v12);
  v178 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000FF874();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v173 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007210(&qword_10014CD10, &qword_10010C8F8);
  __chkstk_darwin(v17);
  v19 = &v146 - v18;
  v20 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v21 = __chkstk_darwin(v20 - 8);
  v166 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v165 = &v146 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v146 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v146 - v29;
  __chkstk_darwin(v28);
  v32 = &v146 - v31;
  v179 = a1;
  v33 = [a1 id];
  if (v33)
  {
    v34 = v33;
    sub_1000FF854();

    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 0;
  }

  else
  {
    v35 = *(v15 + 56);
    v36 = v32;
    v37 = 1;
  }

  v180 = v35;
  v35(v36, v37, 1, v14);
  v175 = *(v181 + 32);
  v38 = [v175 id];
  v182 = v14;
  v169 = v11;
  if (v38)
  {
    v39 = v38;
    sub_1000FF854();

    v14 = v182;
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v164 = v15 + 56;
  v180(v30, v40, 1, v14);
  v41 = *(v17 + 48);
  sub_100010014(v32, v19, &qword_10014CD08, &unk_10010C860);
  v42 = v182;
  sub_100010014(v30, &v19[v41], &qword_10014CD08, &unk_10010C860);
  v43 = *(v15 + 48);
  if (v43(v19, 1, v42) != 1)
  {
    sub_100010014(v19, v27, &qword_10014CD08, &unk_10010C860);
    if (v43(&v19[v41], 1, v42) != 1)
    {
      v174 = v43;
      v161 = v15 + 48;
      v45 = &v19[v41];
      v46 = v173;
      (*(v15 + 32))(v173, v45, v42);
      sub_1000AC208(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v163) = sub_100100F04();
      v162 = v12;
      v47 = *(v15 + 8);
      v47(v46, v42);
      sub_10000FFB4(v30, &qword_10014CD08, &unk_10010C860);
      sub_10000FFB4(v32, &qword_10014CD08, &unk_10010C860);
      v47(v27, v42);
      v12 = v162;
      v44 = v179;
      sub_10000FFB4(v19, &qword_10014CD08, &unk_10010C860);
      if ((v163 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_10000FFB4(v30, &qword_10014CD08, &unk_10010C860);
    sub_10000FFB4(v32, &qword_10014CD08, &unk_10010C860);
    (*(v15 + 8))(v27, v42);
LABEL_12:
    sub_10000FFB4(v19, &qword_10014CD10, &qword_10010C8F8);
    return;
  }

  v174 = v43;
  sub_10000FFB4(v30, &qword_10014CD08, &unk_10010C860);
  sub_10000FFB4(v32, &qword_10014CD08, &unk_10010C860);
  if (v174(&v19[v41], 1, v182) != 1)
  {
    goto LABEL_12;
  }

  v161 = v15 + 48;
  sub_10000FFB4(v19, &qword_10014CD08, &unk_10010C860);
  v44 = v179;
LABEL_15:
  v48 = [v44 changedValuesForCurrentEvent];
  v49 = sub_100100E64();

  sub_1000A5D2C(v49);
  v51 = v50;
  v149 = 0;

  v52 = sub_1000AC8F0(v51);

  v54 = 0;
  v55 = v52 + 56;
  v56 = 1 << *(v52 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v52 + 56);
  v185 = _swiftEmptySetSingleton;
  v59 = (v56 + 63) >> 6;
  v163 = (v176 + 13);
  v160 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_prompts;
  ++v176;
  v151 = (v15 + 16);
  v159 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_dateSource;
  v150 = (v15 + 8);
  v156 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_date;
  v158 = v184;
  v155 = v177 + 4;
  v60 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v157 = (v177 + 7);
  v154 = (v177 + 6);
  v177 += 5;
  *&v53 = 136315138;
  v152 = v53;
  while (v58)
  {
LABEL_23:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = *(*(v52 + 48) + (v62 | (v54 << 6)));
    if (v63 > 6)
    {
      if (v63 > 9)
      {
        if ((v63 - 11) >= 2)
        {
          v66 = v178;
          (*v163)(v178, v60, v12);
          v67 = sub_1000FFB24();
          (*v176)(v66, v12);
          if (v67)
          {
            v68 = v179;
            v69 = [v179 mergeableAttributes];
            if (v69)
            {
              v70 = v69;
              v71 = v168;
              sub_100100704();

              v72 = sub_100100334();
              (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
              sub_10000FFB4(v71, &qword_10014F8B0, &qword_10010EF28);
              v73 = sub_1000AAE84(v68);
              if (v73)
              {
                v185 = sub_1000AA3C4(v73, v185);
              }
            }

            else
            {
              v153 = v60;
              v127 = sub_100100334();
              v128 = v168;
              (*(*(v127 - 8) + 56))(v168, 1, 1, v127);
              sub_10000FFB4(v128, &qword_10014F8B0, &qword_10010EF28);
              if (qword_10014B808 != -1)
              {
                swift_once();
              }

              v129 = sub_100100AE4();
              sub_100003D38(v129, qword_10014F868);
              v130 = v179;
              v131 = sub_100100AC4();
              v132 = sub_1001015B4();

              if (os_log_type_enabled(v131, v132))
              {
                v133 = swift_slowAlloc();
                v147 = swift_slowAlloc();
                aBlock[0] = v147;
                *v133 = v152;
                v134 = [v130 id];
                LODWORD(v162) = v132;
                v148 = v133;
                if (v134)
                {
                  v135 = v166;
                  v136 = v134;
                  sub_1000FF854();

                  v137 = 0;
                }

                else
                {
                  v137 = 1;
                  v135 = v166;
                }

                v138 = v182;
                v180(v135, v137, 1, v182);
                v139 = v165;
                sub_100045508(v135, v165);
                if (v174(v139, 1, v138))
                {
                  sub_10000FFB4(v139, &qword_10014CD08, &unk_10010C860);
                  v140 = 0xE700000000000000;
                  v141 = 0x6E776F6E6B6E55;
                }

                else
                {
                  v142 = v173;
                  (*v151)(v173, v139, v138);
                  sub_10000FFB4(v139, &qword_10014CD08, &unk_10010C860);
                  v146 = sub_1000FF814();
                  v140 = v143;
                  (*v150)(v142, v138);
                  v141 = v146;
                }

                v144 = sub_10007A774(v141, v140, aBlock);

                v145 = v148;
                *(v148 + 1) = v144;
                _os_log_impl(&_mh_execute_header, v131, v162, "mergeableAttributes changed to nil value for entry %s. This implies an incorrect assignment rather than a merge operation somewhere.", v145, 0xCu);
                sub_10001100C(v147);
              }

LABEL_56:
              v60 = v153;
            }
          }
        }
      }

      else if (v63 == 7)
      {
        v94 = [v175 dateSource];
        if (v94)
        {
          v162 = v12;
          v95 = v52;
          v96 = v60;
          v97 = v94;
          sub_100100FD4();

          v60 = v96;
          v52 = v95;
          v12 = v162;
        }

        v115 = v172;
        sub_1000FFD84();
        v116 = v181;
        v117 = v159;
        swift_beginAccess();
        sub_1000AC250(v115, v116 + v117);
        swift_endAccess();
        sub_10004613C(aBlock, 3);
      }

      else
      {
        if (v63 != 8)
        {
          v153 = v60;
          v98 = [v175 prompt];
          v99 = v12;
          if (v98)
          {
            v100 = v98;
            v101 = sub_1000FF564();
            v103 = v102;

            v104 = sub_1000FF534();
            sub_1000064C0(v101, v103);
          }

          else
          {
            v104 = 0;
          }

          v118 = v181;
          v119 = *(v181 + v160);
          *(v181 + v160) = v104;
          v120 = v104;

          v121 = *(v118 + 24);
          v122 = swift_allocObject();
          swift_weakInit();
          v184[2] = sub_1000AC99C;
          v184[3] = v122;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v184[0] = sub_1000D2F3C;
          v184[1] = &unk_100137FC8;
          v123 = _Block_copy(aBlock);

          [v121 performBlock:v123];
          _Block_release(v123);

          sub_10004613C(aBlock, 6);
          v12 = v99;
          goto LABEL_56;
        }

        sub_10004613C(aBlock, 7);
      }
    }

    else if (v63 > 2)
    {
      if ((v63 - 5) >= 2)
      {
        if (v63 == 3)
        {
          v74 = v178;
          (*v163)(v178, v60, v12);
          v75 = sub_1000FFB24();
          (*v176)(v74, v12);
          if ((v75 & 1) == 0)
          {
            v76 = [v179 title];
            if (v76)
            {
              v77 = v76;
              v78 = sub_1000FF564();
              v79 = v60;
              v81 = v80;

              v82 = sub_1000FF534();
              v83 = v81;
              v60 = v79;
              sub_1000064C0(v78, v83);
            }

            else
            {
              v82 = 0;
            }

            sub_1000E81B4(v82);

            sub_10004613C(aBlock, 2);
          }
        }

        else
        {
          v162 = v12;
          v105 = [v175 entryDate];
          if (v105)
          {
            v106 = v167;
            v107 = v105;
            sub_1000FF7B4();

            v153 = v60;
            v108 = *v155;
            v109 = v171;
            v110 = v106;
            v111 = v170;
            (*v155)(v171, v110, v170);
            (*v157)(v109, 0, 1, v111);
            v112 = v169;
            v113 = v109;
            v114 = v111;
            v108(v169, v113, v111);
            v60 = v153;
          }

          else
          {
            v124 = v171;
            v114 = v170;
            (*v157)(v171, 1, 1, v170);
            v112 = v169;
            sub_1000FF7F4();
            if ((*v154)(v124, 1, v114) != 1)
            {
              sub_10000FFB4(v171, &unk_10014D640, &unk_10010C480);
            }
          }

          v125 = v181;
          v126 = v156;
          swift_beginAccess();
          (*v177)(v125 + v126, v112, v114);
          swift_endAccess();
          sub_10004613C(aBlock, 3);
          v12 = v162;
        }
      }

      else
      {
        sub_10004613C(aBlock, 8);
      }
    }

    else if (v63)
    {
      if (v63 == 1)
      {
        v64 = v178;
        (*v163)(v178, v60, v12);
        v65 = sub_1000FFB24();
        (*v176)(v64, v12);
        if ((v65 & 1) == 0)
        {
          sub_10004613C(aBlock, 1);
        }
      }
    }

    else
    {
      v84 = v178;
      (*v163)(v178, v60, v12);
      v85 = sub_1000FFB24();
      (*v176)(v84, v12);
      if ((v85 & 1) == 0)
      {
        v86 = [v179 text];
        if (v86)
        {
          v87 = v86;
          v88 = sub_1000FF564();
          v89 = v60;
          v91 = v90;

          v92 = sub_1000FF534();
          v93 = v91;
          v60 = v89;
          sub_1000064C0(v88, v93);
        }

        else
        {
          v92 = 0;
        }

        sub_1000E8D2C(v92);

        sub_10004613C(aBlock, 0);
      }
    }
  }

  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v61 >= v59)
    {

      return;
    }

    v58 = *(v55 + 8 * v61);
    ++v54;
    if (v58)
    {
      v54 = v61;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_1000AA3C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_10004613C(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000AA4A0(void *a1)
{
  v3 = sub_1000FFB34();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3);
  v76 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014F8A8, &qword_10010EF20);
  __chkstk_darwin(v5 - 8);
  v69 = &v68 - v6;
  v75 = sub_1000FF804();
  v73 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v70 = &v68 - v10;
  __chkstk_darwin(v9);
  v74 = &v68 - v11;
  v12 = sub_1000FF874();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v72 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014CD10, &qword_10010C8F8);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = sub_100007210(&qword_10014CD08, &unk_10010C860);
  v19 = __chkstk_darwin(v18 - 8);
  v81 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v68 - v22;
  __chkstk_darwin(v21);
  v25 = &v68 - v24;
  v79 = a1;
  v26 = [a1 id];
  if (v26)
  {
    v27 = v26;
    sub_1000FF854();

    v28 = *(v13 + 56);
    v28(v25, 0, 1, v12);
  }

  else
  {
    v28 = *(v13 + 56);
    v28(v25, 1, 1, v12);
  }

  v68 = *(v1 + 32);
  v29 = [v68 id];
  v80 = v1;
  if (v29)
  {
    v30 = v29;
    sub_1000FF854();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v28(v23, v31, 1, v12);
  v32 = *(v15 + 48);
  sub_100010014(v25, v17, &qword_10014CD08, &unk_10010C860);
  sub_100010014(v23, &v17[v32], &qword_10014CD08, &unk_10010C860);
  v33 = *(v13 + 48);
  if (v33(v17, 1, v12) == 1)
  {
    sub_10000FFB4(v23, &qword_10014CD08, &unk_10010C860);
    sub_10000FFB4(v25, &qword_10014CD08, &unk_10010C860);
    if (v33(&v17[v32], 1, v12) == 1)
    {
      sub_10000FFB4(v17, &qword_10014CD08, &unk_10010C860);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v34 = v81;
  sub_100010014(v17, v81, &qword_10014CD08, &unk_10010C860);
  if (v33(&v17[v32], 1, v12) == 1)
  {
    sub_10000FFB4(v23, &qword_10014CD08, &unk_10010C860);
    sub_10000FFB4(v25, &qword_10014CD08, &unk_10010C860);
    (*(v13 + 8))(v34, v12);
LABEL_12:
    sub_10000FFB4(v17, &qword_10014CD10, &qword_10010C8F8);
    return _swiftEmptySetSingleton;
  }

  v36 = v72;
  (*(v13 + 32))(v72, &v17[v32], v12);
  sub_1000AC208(&qword_10014CD18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v37 = v34;
  v38 = sub_100100F04();
  v39 = *(v13 + 8);
  v39(v36, v12);
  sub_10000FFB4(v23, &qword_10014CD08, &unk_10010C860);
  sub_10000FFB4(v25, &qword_10014CD08, &unk_10010C860);
  v39(v37, v12);
  sub_10000FFB4(v17, &qword_10014CD08, &unk_10010C860);
  if ((v38 & 1) == 0)
  {
    return _swiftEmptySetSingleton;
  }

LABEL_15:
  v84 = _swiftEmptySetSingleton;
  v40 = v79;
  if (([v79 isRemovedFromCloud] & 1) != 0 || objc_msgSend(v40, "isFullyRemoved"))
  {
    sub_10004613C(v83, 9);
  }

  v41 = [v40 entryDate];
  v42 = v80;
  v44 = v74;
  v43 = v75;
  v45 = v73;
  if (v41)
  {
    v46 = v70;
    v47 = v41;
    sub_1000FF7B4();

    (*(v45 + 32))(v44, v46, v43);
    v48 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_date;
    swift_beginAccess();
    v49 = v71;
    (*(v45 + 16))(v71, v42 + v48, v43);
    sub_1000AC208(&qword_10014D278, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    LOBYTE(v47) = sub_100100F04();
    v50 = *(v45 + 8);
    v50(v49, v43);
    if ((v47 & 1) == 0)
    {
      swift_beginAccess();
      (*(v45 + 24))(v42 + v48, v44, v43);
      swift_endAccess();
      v51 = [v68 dateSource];
      if (v51)
      {
        v52 = v51;
        sub_100100FD4();
      }

      v53 = v69;
      sub_1000FFD84();
      v54 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_dateSource;
      swift_beginAccess();
      sub_1000AC250(v53, v42 + v54);
      swift_endAccess();
      sub_10004613C(v82, 3);
    }

    v50(v44, v43);
  }

  v55 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bookmarked;
  v56 = *(v42 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_bookmarked);
  if (v56 != [v40 flagged])
  {
    v57 = [v40 flagged];
    v58 = *(v42 + v55);
    *(v42 + v55) = v57;
    sub_1000EA9E8(v58);
    sub_10004613C(v82, 7);
  }

  v60 = v76;
  v59 = v77;
  v61 = v78;
  (*(v77 + 104))(v76, enum case for JournalFeatureFlags.enhancedSync(_:), v78);
  v62 = sub_1000FFB24();
  (*(v59 + 8))(v60, v61);
  if ((v62 & 1) == 0)
  {
    v63 = sub_1000AB410();
    sub_1000AB80C(v63);
    v65 = v64;

    if (v65)
    {
      sub_10004613C(v82, 0);
    }
  }

  v66 = sub_1000AAE84(v40);
  v35 = v84;
  if (v66)
  {
    return sub_1000AA3C4(v66, v84);
  }

  return v35;
}

void *sub_1000AAE84(void *a1)
{
  v2 = v1;
  v4 = sub_1001006F4();
  v45 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v40 - v7;
  v8 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = sub_100100334();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v40 - v22;
  __chkstk_darwin(v21);
  v25 = &v40 - v24;
  result = [a1 mergeableAttributes];
  if (result)
  {
    v27 = result;
    v40 = v4;
    sub_100100704();

    v28 = v2;
    v29 = *(v15 + 32);
    v29(v25, v23, v14);
    v30 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    v46 = v28;
    sub_100010014(v28 + v30, v13, &qword_10014F8B0, &qword_10010EF28);
    v41 = *(v15 + 48);
    if (v41(v13, 1, v14) == 1)
    {
      sub_10000FFB4(v13, &qword_10014F8B0, &qword_10010EF28);
    }

    else
    {
      v29(v20, v13, v14);
      sub_1000AC208(&qword_10014F8C0, &type metadata accessor for MergeableEntryAttributes, &protocol conformance descriptor for MergeableEntryAttributes);
      v31 = sub_100100DA4();
      v32 = *(v15 + 8);
      v32(v20, v14);
      if ((v31 & 1) == 0)
      {
        v32(v25, v14);
        return 0;
      }
    }

    v48 = _swiftEmptySetSingleton;
    v33 = v46;
    if (sub_1000E3408(v25))
    {
      sub_10004613C(&v47, 11);
    }

    if (sub_1000E3438(v25))
    {
      sub_10004613C(&v47, 12);
    }

    sub_100010014(v33 + v30, v11, &qword_10014F8B0, &qword_10010EF28);
    if (v41(v11, 1, v14))
    {
      sub_10000FFB4(v11, &qword_10014F8B0, &qword_10010EF28);
    }

    else
    {
      v34 = v42;
      (*(v15 + 16))(v42, v11, v14);
      sub_10000FFB4(v11, &qword_10014F8B0, &qword_10010EF28);
      v35 = v43;
      sub_100100294();
      (*(v15 + 8))(v34, v14);
      v36 = v44;
      sub_100100294();
      sub_1000AC208(&qword_10014F8B8, &type metadata accessor for MergeableEntryAssetsPlacement, &protocol conformance descriptor for MergeableEntryAssetsPlacement);
      v37 = v40;
      LOBYTE(v34) = sub_100100DA4();
      v38 = *(v45 + 8);
      v38(v36, v37);
      v38(v35, v37);
      if (v34)
      {
        sub_10004613C(&v47, 1);
      }
    }

    v39 = sub_1000E37C0(v25);
    (*(v15 + 8))(v25, v14, v39);
    return v48;
  }

  return result;
}

id sub_1000AB410()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-1] - v4;
  v6 = sub_100007210(&qword_10014F8D8, &unk_10010EF38);
  __chkstk_darwin(v6 - 8);
  v8 = &v27[-1] - v7;
  v9 = sub_1000FFB34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v13 = sub_1000FFB24();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_1000FFBF4();
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_10000FFB4(v8, &qword_10014F8D8, &unk_10010EF38);
      return 0;
    }

    else
    {
      (*(v3 + 16))(v5, v8, v2);
      sub_10000FFB4(v8, &qword_10014F8D8, &unk_10010EF38);
      v20 = [objc_allocWithZone(UITraitCollection) init];
      v21 = type metadata accessor for CustomAttributeProviderConcrete(0);
      v22 = sub_1000AC208(&qword_10014F778, type metadata accessor for CustomAttributeProviderConcrete, &unk_10010CFD8);
      v27[3] = v21;
      v27[4] = v22;
      v23 = sub_100007258(v27);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      sub_100100AD4();
      *v23 = v24;
      sub_1000AC208(&qword_10014F8D0, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
      v25 = sub_100100D54();

      (*(v3 + 8))(v5, v2);
      sub_10001100C(v27);
      return v25;
    }
  }

  else
  {
    result = [v1 text];
    if (result)
    {
      v15 = result;
      v16 = sub_1000FF564();
      v18 = v17;

      v19 = sub_1000FF534();
      sub_1000064C0(v16, v18);
      return v19;
    }
  }

  return result;
}

void sub_1000AB80C(void *a1)
{
  v3 = [objc_allocWithZone(UITraitCollection) init];
  type metadata accessor for CustomAttributeProviderConcrete(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_100100AD4();
  v5 = sub_1000AC2C0(v3, v4, v1);

  v6 = &selRef_cancel;
  v7 = &selRef_cancel;
  v8 = &selRef_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_;
  v9 = &selRef_cancel;
  v10 = &qword_10010C000;
  if (v5)
  {
    v11 = v5;
    v12 = [v11 string];
    if (!v12)
    {
      sub_100100FD4();
      v12 = sub_100100F94();
    }

    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v12];

    v14 = [objc_opt_self() labelColor];
    v15 = [objc_opt_self() systemFontOfSize:0.0];
    v16 = [v11 length];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v15;
      v18[3] = v14;
      v18[4] = 0;
      v18[5] = 0;
      v18[6] = v13;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1000ACC00;
      *(v19 + 24) = v18;
      v44 = sub_10006C4D0;
      v45 = v19;
      v40 = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_1000E3338;
      v43 = &unk_100137F78;
      v20 = _Block_copy(&v40);
      v21 = v15;
      v22 = v14;
      v23 = v13;

      [v11 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v20}];

      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (!a1)
        {

          return;
        }

        v10 = &qword_10010C000;
        v9 = &selRef_cancel;
        v8 = &selRef_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_;
        v7 = &selRef_cancel;
        v6 = &selRef_cancel;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!a1)
  {
    return;
  }

  v23 = 0;
LABEL_10:
  v25 = a1;
  v26 = [v25 v6[284]];
  if (!v26)
  {
    sub_100100FD4();
    v26 = sub_100100F94();
  }

  v27 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v26];

  v28 = [objc_opt_self() v7[256]];
  v29 = [objc_opt_self() v8[42]];
  v30 = [v25 v9[327]];
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v31 = v30;
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = 0;
  v32[5] = 0;
  v32[6] = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1000AC6D8;
  *(v33 + 24) = v32;
  v44 = sub_10006C098;
  v45 = v33;
  v40 = _NSConcreteStackBlock;
  v41 = v10[38];
  v42 = sub_1000E3338;
  v43 = &unk_100137F00;
  v34 = _Block_copy(&v40);
  v35 = v29;
  v36 = v28;
  v37 = v27;

  [v25 enumerateAttributesInRange:0 options:v31 usingBlock:{0, v34}];

  _Block_release(v34);
  v38 = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v23)
  {
    sub_100010F50(0, &qword_10014D0C0, NSAttributedString_ptr);
    v39 = v23;
    sub_100101A34();
  }

  else
  {
  }
}

unint64_t sub_1000ABDA4(char a1)
{
  result = 1954047348;
  switch(a1)
  {
    case 1:
      result = 0x64724F7465737361;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x7461447972746E65;
      break;
    case 5:
      result = 0x6449656C646E7562;
      break;
    case 6:
      result = 0x6144656C646E7562;
      break;
    case 7:
      result = 0x72756F5365746164;
      break;
    case 8:
      result = 0x64656767616C66;
      break;
    case 9:
      result = 0x74706D6F7270;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000ABF50(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000ABDA4(*a1);
  v5 = v4;
  if (v3 == sub_1000ABDA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100101E84();
  }

  return v8 & 1;
}

Swift::Int sub_1000ABFD8()
{
  v1 = *v0;
  sub_100101F84();
  sub_1000ABDA4(v1);
  sub_100101074();

  return sub_100101FE4();
}

double sub_1000AC03C(uint64_t a1)
{
  sub_1000ABDA4(*v1);
  sub_100101074();

  return result;
}

Swift::Int sub_1000AC090()
{
  v1 = *v0;
  sub_100101F84();
  sub_1000ABDA4(v1);
  sub_100101074();

  return sub_100101FE4();
}

unint64_t sub_1000AC0F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AC9F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000AC120@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000ABDA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000AC14C()
{
  result = qword_10014F880;
  if (!qword_10014F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F880);
  }

  return result;
}

unint64_t sub_1000AC1A0()
{
  result = qword_10014F898;
  if (!qword_10014F898)
  {
    sub_100010F50(255, &qword_10014F890, NSManagedObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F898);
  }

  return result;
}

uint64_t sub_1000AC208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AC250(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014F8A8, &qword_10010EF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1000AC2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_100100334();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007210(&qword_10014F8B0, &qword_10010EF28);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_100007210(&qword_10014F8C8, &qword_10010EF30);
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = sub_1000FFB34();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for CustomAttributeProviderConcrete(0);
  v27[4] = sub_1000AC208(&qword_10014F778, type metadata accessor for CustomAttributeProviderConcrete, &unk_10010CFD8);
  v27[0] = a2;
  (*(v15 + 104))(v17, enum case for JournalFeatureFlags.enhancedSync(_:), v14);

  LOBYTE(a2) = sub_1000FFB24();
  (*(v15 + 8))(v17, v14);
  if (a2)
  {
    v18 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100010014(a3 + v18, v10, &qword_10014F8B0, &qword_10010EF28);
    v19 = v26;
    if ((*(v26 + 48))(v10, 1, v5))
    {
      sub_10000FFB4(v10, &qword_10014F8B0, &qword_10010EF28);
      v20 = 0;
    }

    else
    {
      (*(v19 + 16))(v7, v10, v5);
      sub_10000FFB4(v10, &qword_10014F8B0, &qword_10010EF28);
      sub_1001002B4();
      (*(v19 + 8))(v7, v5);
      sub_1000AC208(&qword_10014F8D0, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
      v20 = sub_100100D54();
      (*(v24 + 8))(v13, v11);
    }
  }

  else
  {
    v20 = *(a3 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    v21 = v20;
  }

  sub_10001100C(v27);
  return v20;
}

uint64_t sub_1000AC6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AC704()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AC754(uint64_t a1)
{
  v2 = sub_1001007D4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000AC208(&qword_10014CED8, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  result = sub_100101434();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000459BC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1000AC8F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000AC9A4();
  result = sub_100101434();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100046234(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000AC964()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000AC9A4()
{
  result = qword_10014F8E0;
  if (!qword_10014F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F8E0);
  }

  return result;
}

unint64_t sub_1000AC9F8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100134000;
  v6._object = a2;
  v4 = sub_100101E04(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

double sub_1000ACA44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntryViewModel.EntryProperties(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EntryViewModel.EntryProperties(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000ACBA4()
{
  result = qword_10014F8E8;
  if (!qword_10014F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F8E8);
  }

  return result;
}

uint64_t sub_1000ACC14()
{
  v1 = sub_100100F84();
  __chkstk_darwin(v1 - 8);
  v34[1] = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F64();
  __chkstk_darwin(v3 - 8);
  v34[0] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014F968, &qword_10010F090);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = v34 - v6;
  v8 = sub_100007210(&qword_10014F970, &qword_10010F098);
  __chkstk_darwin(v8 - 8);
  v37 = v34 - v9;
  v10 = sub_1001005F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007210(&qword_10014C378, &qword_10010BF90);
  __chkstk_darwin(v14 - 8);
  v16 = v34 - v15;
  v17 = sub_1000FF8B4();
  __chkstk_darwin(v17 - 8);
  v18 = sub_100007210(&qword_10014F978, &qword_10010F0A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v34 - v20;
  sub_1000FF884();
  sub_1000ADBB8();
  sub_1000FF314();
  if (*(v0 + OBJC_IVAR____TtC21JournalShareExtension19MotionActivityAsset_metadata))
  {

    sub_10000B7C4(v16);

    if ((*(v11 + 48))(v16, 1, v10))
    {
      (*(v19 + 8))(v21, v18);
      v22 = &qword_10014C378;
      v23 = &qword_10010BF90;
      v24 = v16;
LABEL_9:
      sub_10000FFB4(v24, v22, v23);
      return 0;
    }

    (*(v11 + 16))(v13, v16, v10);
    sub_10000FFB4(v16, &qword_10014C378, &qword_10010BF90);
    sub_1001005D4();
    v26 = v25;
    (*(v11 + 8))(v13, v10);
    if (v26)
    {
      sub_100101154();

      sub_1000ADC0C();
      sub_100100864();
      v27 = v36;
      sub_1001008A4();
      (*(v35 + 8))(v7, v27);

      v28 = sub_100007210(&qword_10014F990, &qword_10010F0A8);
      v29 = *(v28 - 8);
      v30 = v37;
      if ((*(v29 + 48))(v37, 1, v28) != 1)
      {
        sub_1001008D4();
        v32 = v38;
        (*(v29 + 8))(v30, v28);
        sub_100100F54();
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        sub_100100F44(v39);
        v38 = v32;
        sub_100100F24();
        v40._countAndFlagsBits = 0x2973287065747320;
        v40._object = 0xE800000000000000;
        sub_100100F44(v40);
        sub_100100F74();
        sub_1000FF8A4();
        v33 = sub_100101004();
        (*(v19 + 8))(v21, v18);
        return v33;
      }

      (*(v19 + 8))(v21, v18);
      v22 = &qword_10014F970;
      v23 = &qword_10010F098;
      v24 = v30;
      goto LABEL_9;
    }
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

id sub_1000AD33C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAsset(uint64_t a1)
{
  result = qword_10014F918;
  if (!qword_10014F918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000AD42C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension19MotionActivityAsset_metadata) = a1;

  return result;
}

id sub_1000AD444()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640, &unk_10010C480);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = sub_100100A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014C378, &qword_10010BF90);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = sub_1001005F4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension19MotionActivityAsset_metadata))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  sub_10000B7C4(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_10000FFB4(v17, &qword_10014C378, &qword_10010BF90);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_100100974();
  v22 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v24 = [v22 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  v25 = sub_1001005B4();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_9;
    }
  }

  sub_1001005C4();
LABEL_9:
  v28 = sub_100100F94();

  [v24 setDisplayName:v28];

  sub_1000ACC14();
  v49[1] = v3;
  if (v29)
  {
    v30 = sub_100100F94();
  }

  else
  {
    v30 = 0;
  }

  [v24 setContentDescription:v30];

  v31 = v50;
  sub_1001005E4();
  v32 = v31;
  v33 = sub_1000FF804();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    v36 = *(v51 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v36)
    {
      v37 = [v36 entry];
      if (v37)
      {
        v38 = v37;
        sub_1000FFBA4();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v32 = v50;
    }

    else
    {
      v39 = 1;
    }

    (*(v34 + 56))(v10, v39, 1, v33);
    if (v35(v32, 1, v33) != 1)
    {
      sub_10000FFB4(v32, &unk_10014D640, &unk_10010C480);
    }
  }

  else
  {
    (*(v34 + 32))(v10, v32, v33);
    (*(v34 + 56))(v10, 0, 1, v33);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v40 = sub_100101004();
  v42 = v41;
  sub_100007210(&qword_10014C220, &qword_10010BE70);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10010BC80;
  v44 = sub_100081080(v40, v42, v10);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_1001011C4().super.isa;

  [v24 setAlternateNames:v47];

  sub_10000FFB4(v10, &unk_10014D640, &unk_10010C480);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_1000ADB74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001005F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000ADBB8()
{
  result = qword_10014F980;
  if (!qword_10014F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F980);
  }

  return result;
}

unint64_t sub_1000ADC0C()
{
  result = qword_10014F988;
  if (!qword_10014F988)
  {
    sub_10000F19C(&qword_10014F978, &qword_10010F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014F988);
  }

  return result;
}

uint64_t sub_1000ADC70()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014F998);
  v1 = sub_100003D38(v0, qword_10014F998);
  if (qword_10014B898 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158858);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ADD38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 628) = a5;
  *(v6 + 627) = a4;
  *(v6 + 504) = a3;
  *(v6 + 512) = a6;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_100007210(&qword_10014FA58, &unk_10010F118);
  *(v6 + 520) = v7;
  *(v6 + 528) = *(v7 - 8);
  *(v6 + 536) = swift_task_alloc();
  sub_100007210(&qword_10014CBD8, &qword_10010E240);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = sub_100101304();
  *(v6 + 568) = sub_1001012F4();
  v8 = sub_100101284();
  *(v6 + 576) = v8;
  *(v6 + 584) = v9;

  return _swift_task_switch(sub_1000ADE90, v8);
}

uint64_t sub_1000ADE90()
{
  v1 = *(v0 + 504);
  v2 = *(v1 + 16);
  if (v2)
  {
    v36 = *(v0 + 628);
    v35 = **(v0 + 496);
    v3 = v1 + 32;
    v4 = sub_100101324();
    v5 = *(v4 - 8);
    v34 = *(v5 + 56);
    v33 = (v5 + 48);
    v32 = (v5 + 8);
    do
    {
      v7 = *(v0 + 552);
      v8 = *(v0 + 544);
      v9 = *(v0 + 512);
      v10 = *(v0 + 627);
      *(v0 + 16) = *v3;
      v12 = *(v3 + 32);
      v11 = *(v3 + 48);
      v13 = *(v3 + 16);
      *(v0 + 80) = *(v3 + 64);
      *(v0 + 48) = v12;
      *(v0 + 64) = v11;
      *(v0 + 32) = v13;
      v34(v7, 1, 1, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v16;
      *(v14 + 96) = *(v0 + 80);
      v17 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v17;
      *(v14 + 104) = v10;
      *(v14 + 105) = v36;
      *(v14 + 112) = v9;
      sub_1000911E0(v7, v8);
      v18 = (*v33)(v8, 1, v4);
      v19 = *(v0 + 544);
      v20 = *(v0 + 512);
      if (v18 == 1)
      {
        sub_10005B15C(v0 + 16, v0 + 88);
        sub_10005B15C(v0 + 16, v0 + 160);
        v21 = v20;
        sub_1000B0864(v19);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_10005B15C(v0 + 16, v0 + 232);
        sub_10005B15C(v0 + 16, v0 + 304);
        v24 = v20;
        sub_100101314();
        (*v32)(v19, v4);
        if (*v15)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_100101284();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_9:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_10010F138;
      *(v26 + 24) = v14;

      sub_100007210(&qword_10014C4E0, &qword_10010C0B8);
      v27 = v23 | v22;
      if (v23 | v22)
      {
        v27 = v0 + 432;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = v22;
        *(v0 + 456) = v23;
      }

      v6 = *(v0 + 552);
      *(v0 + 464) = 1;
      *(v0 + 472) = v27;
      *(v0 + 480) = v35;
      swift_task_create();

      sub_10005B1B8(v0 + 16);
      sub_1000B0864(v6);
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_100007210(&qword_10014C4E0, &qword_10010C0B8);
  sub_1001012C4();
  *(v0 + 592) = _swiftEmptyArrayStorage;
  v28 = sub_1001012F4();
  *(v0 + 600) = v28;
  v29 = swift_task_alloc();
  *(v0 + 608) = v29;
  *v29 = v0;
  v29[1] = sub_1000AE274;
  v30 = *(v0 + 520);

  return TaskGroup.Iterator.next(isolation:)(v0 + 376, v28, &protocol witness table for MainActor, v30);
}

uint64_t sub_1000AE274()
{
  v1 = *v0;

  v2 = *(v1 + 576);

  return _swift_task_switch(sub_1000AE3B8, v2);
}

uint64_t sub_1000AE3B8()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v20 = *(v0 + 416);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_10000F984(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_10000F984((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[7 * v9];
    *(v10 + 4) = v1;
    *(v10 + 40) = v3;
    *(v10 + 41) = BYTE1(v3) & 1;
    v11 = *(v0 + 616);
    *(v10 + 23) = *(v0 + 620);
    *(v10 + 42) = v11;
    *(v10 + 6) = v2;
    *(v10 + 56) = v4 & 1;
    *(v10 + 57) = BYTE1(v4) & 1;
    *(v10 + 58) = BYTE2(v4) & 1;
    v12 = *(v0 + 622);
    *(v10 + 63) = *(v0 + 626);
    *(v10 + 59) = v12;
    *(v10 + 8) = v5;
    *(v10 + 9) = v20;
    *(v0 + 592) = v7;
    v13 = sub_1001012F4();
    *(v0 + 600) = v13;
    v14 = swift_task_alloc();
    *(v0 + 608) = v14;
    *v14 = v0;
    v14[1] = sub_1000AE274;
    v15 = *(v0 + 520);

    return TaskGroup.Iterator.next(isolation:)(v0 + 376, v13, &protocol witness table for MainActor, v15);
  }

  else
  {
    v16 = *(v0 + 592);
    v17 = *(v0 + 488);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    *v17 = v16;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000AE61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  *(v7 + 57) = a6;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  return _swift_task_switch(sub_1000AE648, 0);
}

uint64_t sub_1000AE648()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = _s15MOMapAnnotationCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC21JournalShareExtension10MapManager15MOMapAnnotation_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCC21JournalShareExtension10MapManager15MOMapAnnotation_coordinate];
  *v7 = v2;
  *(v7 + 1) = v3;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v27 = objc_msgSendSuper2((v0 + 16), "init");
  v8 = *(v1 + 32);
  v9 = *(v1 + 56);
  v11 = v1[2];
  v10 = v1[3];
  v12 = *(v0 + 40);
  if (v11)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    v15 = v14 != 0;
    if (v14)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 64) > 150.0;
LABEL_8:
  v26 = *(v0 + 57);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  if (v8)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  v20 = [*(v0 + 48) traitCollection];
  v21 = sub_1000548F4(v11, v9, v15, v16, v20);
  v23 = v22;

  *v18 = v27;
  *(v18 + 8) = v17;
  *(v18 + 9) = v9;
  *(v18 + 16) = v19;
  *(v18 + 24) = (v26 & 1) == 0;
  *(v18 + 25) = v15;
  *(v18 + 26) = v16;
  *(v18 + 32) = 0x4000000000000000;
  *(v18 + 40) = v21;
  *(v18 + 48) = v23;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000AE834(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000B09BC;

  return v6(a1);
}

double *sub_1000AE92C(double *a1)
{
  v39 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v2 = *(v39 - 1);
  __chkstk_darwin(v39);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 2) < 3uLL)
  {
  }

  else
  {
    if (qword_10014B810 != -1)
    {
      swift_once();
    }

    v5 = sub_100100AE4();
    sub_100003D38(v5, qword_10014F998);
    v6 = sub_100100AC4();
    v7 = sub_1001015D4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "[MOSuggestionAssetMapsClusterer] Building dendrogram", v8, 2u);
    }

    v9 = objc_allocWithZone(_s30MOSuggestionAssetMapsClustererCMa());

    v11 = sub_100056600(v10, 1.0);
    sub_100056918();
    v12 = sub_1000573A8();
    v13 = *(v12 + 2);
    if (v13)
    {
      v37 = v11;
      v52 = _swiftEmptyArrayStorage;
      sub_100016E6C(0, v13, 0);
      a1 = v52;
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = v12;
      v15 = v12 + v14;
      v38 = *(v2 + 72);
      for (i = v13 - 1; ; --i)
      {
        sub_10004A9C4(v15, v4);
        v17 = *v4;
        v18 = v4[1];
        v19 = (v4 + v39[10]);
        v21 = *v19;
        v20 = v19[1];
        v22 = v4[3];
        v23 = v22 < 2;
        v24 = v22 >= 2 ? v4[3] : 0;
        v25 = *(v4 + v39[9]);
        v26 = *(v4 + v39[11]);
        v27 = *(v4 + v39[12]);
        v28 = v25;

        sub_10004AA28(v4);
        v40[72] = v23;
        *&v41 = v17;
        *(&v41 + 1) = v18;
        *&v42 = v25;
        *(&v42 + 1) = v24;
        LOBYTE(v43) = v23;
        *(&v43 + 1) = v21;
        *&v44 = v20;
        BYTE8(v44) = v26;
        v45 = v27;
        v46[0] = v17;
        v46[1] = v18;
        v46[2] = v25;
        v46[3] = v24;
        v47 = v23;
        v48 = v21;
        v49 = v20;
        v50 = v26;
        v51 = v27;
        sub_10005B15C(&v41, v40);
        sub_10005B1B8(v46);
        v52 = a1;
        v30 = *(a1 + 2);
        v29 = *(a1 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_100016E6C((v29 > 1), v30 + 1, 1);
          a1 = v52;
        }

        *(a1 + 2) = v30 + 1;
        v31 = &a1[9 * v30];
        *(v31 + 2) = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
        *(v31 + 12) = v45;
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        *(v31 + 3) = v32;
        if (!i)
        {
          break;
        }

        v15 += v38;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return a1;
}

id sub_1000AECB8(uint64_t a1, double *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v118 = a7;
  if (a2)
  {
    v122 = a2;
  }

  else
  {
    v122 = sub_1000AE92C(a1);
  }

  v13 = objc_allocWithZone(MKStandardMapConfiguration);

  v123 = [v13 init];
  if (a3 > 6u)
  {

    v15 = &selRef_filterIncludingAllCategories;
  }

  else
  {
    v14 = sub_100101E84();

    if (v14)
    {
      v15 = &selRef_filterIncludingAllCategories;
    }

    else
    {
      v15 = &selRef_filterExcludingAllCategories;
    }
  }

  v16 = [objc_opt_self() *v15];
  [v123 setPointOfInterestFilter:v16];

  v17 = *(a1 + 16);
  v124 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  if (a6)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v131.origin.x = v21;
    v131.origin.y = v23;
    v131.size.width = v25;
    v131.size.height = v27;
    v28 = CGRectGetWidth(v131) + -160.0;
    v29 = [v18 mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v132.origin.x = v31;
    v132.origin.y = v33;
    v132.size.width = v35;
    v132.size.height = v37;
    v38 = CGRectGetHeight(v132) * 0.66;
  }

  else
  {
    v28 = *&a4;
    v38 = *&a5;
  }

  v39 = v122;
  if (a3 > 6u)
  {

    if (a8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = sub_100101E84();

    if ((v40 & 1) == 0)
    {
      v28 = sub_1000C9368(a3);
      v38 = v41;
    }

    if (a8)
    {
LABEL_15:
      if (v17 == 1)
      {
        v130 = *(a1 + 96);
        v42 = *(a1 + 80);
        v128 = *(a1 + 64);
        v129 = v42;
        v43 = *(a1 + 48);
        v126 = *(a1 + 32);
        v127 = v43;
        v44 = v130;
        v45 = v43;
        if (v43)
        {
          v46 = *(&v128 + 1) & 0xFFFFFFFFFFFFLL;
          if ((v129 & 0x2000000000000000) != 0)
          {
            v46 = BYTE7(v129) & 0xF;
          }

          if (v46 || v130 <= 150.0)
          {
            v47 = v126;
            sub_10005B15C(&v126, v125);
            v48 = v45;

            v49 = [objc_opt_self() cameraLookingAtMapItem:v48 forViewSize:1 allowPitch:{v28, v38}];
            [v49 setCenterCoordinate:v47];
            [v124 setCamera:v49];
            sub_100007210(&qword_10014C4B0, &unk_10010C4B0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10010BC80;
            v51 = v127;
            *(inited + 32) = v126;
            v52 = v130;
            v54 = v128;
            v53 = v129;
            *(inited + 48) = v51;
            *(inited + 64) = v54;
            *(inited + 80) = v53;
            *(inited + 96) = v52;
            sub_10005B15C(&v126, v125);
            v55 = sub_10005AC38(inited, 0, 0, 0, 1);
            v57 = v56;
            v59 = v58;
            v61 = v60;
            swift_setDeallocating();
            sub_10005B1B8(inited + 32);
            [v124 region];
            if (v44 <= 1.0 || v62 >= v59 || v63 >= v61)
            {

              sub_10005B1B8(&v126);
              goto LABEL_102;
            }

            if (sub_1000BF560(v55, v57, v59, v61))
            {
              [v124 setRegion:{v55, v57, v59, v61}];
            }

            else
            {
              if (qword_10014B810 != -1)
              {
                swift_once();
              }

              v114 = sub_100100AE4();
              sub_100003D38(v114, qword_10014F998);
              v115 = sub_100100AC4();
              v116 = sub_1001015B4();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                *v117 = 0;
                _os_log_impl(&_mh_execute_header, v115, v116, "[MapSnapshot] cannot generate a valid region for the multipin map with naiveUncertaintyBasedRegion", v117, 2u);
              }
            }

            goto LABEL_44;
          }
        }

        if (a3 == 2)
        {

          v81 = 0;
          v80 = 1;
          v82 = 1;
          goto LABEL_72;
        }

        v80 = sub_100101E84();
        v81 = 0;
        goto LABEL_64;
      }

      if (a3 > 3u || a3 <= 1u || a3 == 2)
      {
        v79 = sub_100101E84();

        if (v79)
        {
LABEL_58:
          v80 = 0;
          v81 = 1;
          goto LABEL_65;
        }

        if (a3 > 1u || !a3)
        {
          v83 = sub_100101E84();

          if (v83)
          {
            goto LABEL_58;
          }

          if (a3 <= 5u || a3 == 6)
          {
            v81 = sub_100101E84();
            v80 = 0;
LABEL_64:

LABEL_65:
            if (a3 == 2)
            {
              v82 = 1;
              goto LABEL_72;
            }

            goto LABEL_67;
          }
        }
      }

      v80 = 0;
      v81 = 1;
LABEL_67:
      v84 = sub_100101E84();

      if (v84)
      {
        v82 = 1;
LABEL_73:
        if (qword_10014B810 != -1)
        {
          swift_once();
        }

        v85 = sub_100100AE4();
        sub_100003D38(v85, qword_10014F998);
        swift_bridgeObjectRetain_n();
        v86 = sub_100100AC4();
        v87 = sub_1001015D4();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v81;
          v121 = v80;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v126 = v90;
          *v89 = 136316162;
          v91 = 0xEA00000000006564;
          v92 = 0xE500000000000000;
          v93 = 0x6C6C616D73;
          if (a3 != 6)
          {
            v93 = 0x657263536C6C7566;
            v92 = 0xEA00000000006E65;
          }

          v94 = 0xE600000000000000;
          v95 = 0x6D756964656DLL;
          if (a3 != 4)
          {
            v95 = 0x61546D756964656DLL;
            v94 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 5u)
          {
            v93 = v95;
            v92 = v94;
          }

          v96 = 0x656772616CLL;
          if (a3 == 2)
          {
            v96 = 0x69576D756964656DLL;
          }

          else
          {
            v91 = 0xE500000000000000;
          }

          v97 = 0xE600000000000000;
          v98 = 0x656772614C78;
          if (!a3)
          {
            v98 = 0x6154656772614C78;
            v97 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 1u)
          {
            v96 = v98;
            v91 = v97;
          }

          if (a3 <= 3u)
          {
            v99 = v96;
          }

          else
          {
            v99 = v93;
          }

          if (a3 <= 3u)
          {
            v100 = v91;
          }

          else
          {
            v100 = v92;
          }

          v101 = sub_10007A774(v99, v100, &v126);

          *(v89 + 4) = v101;
          *(v89 + 12) = 2048;
          v102 = *(v122 + 2);

          *(v89 + 14) = v102;
          v39 = v122;

          *(v89 + 22) = 1024;
          *(v89 + 24) = v88 & 1;
          *(v89 + 28) = 1024;
          *(v89 + 30) = v121 & 1;
          *(v89 + 34) = 1024;
          *(v89 + 36) = v82 & 1;
          _os_log_impl(&_mh_execute_header, v86, v87, "[MapSnapshot] style: %s, numLocations: %ld, applyBottomPaddingForPlatter: %{BOOL}d, applyBottomPaddingForGradient: %{BOOL}d, shouldHaveHorizontalAspectRatio: %{BOOL}d", v89, 0x28u);
          sub_10001100C(v90);
          v81 = v88;

          v80 = v121;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v103 = sub_10005AC38(v39, v81 & 1, v80 & 1, v82 & 1, 1);
        v105 = v104;
        v107 = v106;
        v109 = v108;

        if (sub_1000BF560(v103, v105, v107, v109))
        {
          [v124 setRegion:{v103, v105, v107, v109, v118}];
        }

        else
        {
          v110 = sub_100100AC4();
          v111 = sub_1001015B4();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&_mh_execute_header, v110, v111, "[MapSnapshot] cannot generate a valid region for the multipin map", v112, 2u);
          }
        }

        goto LABEL_102;
      }

      if (a3 <= 1u && a3)
      {
        v82 = 1;
      }

      else
      {
        v82 = sub_100101E84();
      }

LABEL_72:

      goto LABEL_73;
    }
  }

  if (v17)
  {
    v130 = *(a1 + 96);
    v64 = *(a1 + 48);
    v126 = *(a1 + 32);
    v127 = v64;
    v65 = *(a1 + 80);
    v128 = *(a1 + 64);
    v129 = v65;
    v66 = fmin(v130 / 111000.0 * 1.5, 180.0);
    if (sub_1000BF560(*&v126, *(&v126 + 1), v66, v66))
    {
      [v124 setRegion:{v126, v66, v66, v118}];
LABEL_102:
      [v124 setShowsBuildings:{1, v118}];
      [v124 setPreferredConfiguration:v123];
      [v124 setSize:{v28, v38}];
      [v124 setTraitCollection:v119];

      return v124;
    }

    sub_10005B15C(&v126, v125);
    if (qword_10014B810 != -1)
    {
      swift_once();
    }

    v75 = sub_100100AE4();
    sub_100003D38(v75, qword_10014F998);
    v76 = sub_100100AC4();
    v77 = sub_1001015B4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "[MapSnapshot] cannot generate a valid region for the generic map", v78, 2u);
    }

LABEL_44:
    sub_10005B1B8(&v126);
    goto LABEL_102;
  }

  if (qword_10014B810 != -1)
  {
    swift_once();
  }

  v67 = sub_100100AE4();
  sub_100003D38(v67, qword_10014F998);

  v68 = sub_100100AC4();
  v69 = sub_1001015B4();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v126 = v71;
    *v70 = 136315138;
    v72 = sub_1001011E4();
    v74 = sub_10007A774(v72, v73, &v126);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v68, v69, "[MapSnapshot] cannot generate valid options for the generic map since locations are nil: %s", v70, 0xCu);
    sub_10001100C(v71);
  }

  return v124;
}

uint64_t sub_1000AFFC4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 40) = sub_100101304();
  *(v3 + 48) = sub_1001012F4();
  v4 = sub_100101284();
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;

  return _swift_task_switch(sub_1000B0064, v4);
}

uint64_t sub_1000B0064()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = sub_1000AE92C(v2);
  *(v0 + 72) = v4;
  v5 = *(v2 + 16) == 1;
  v6 = sub_1000AECB8(v2, v4, v3, 0, 0, 1, v1, 1);
  *(v0 + 80) = v6;
  v7 = sub_100007210(&qword_10014C4E0, &qword_10010C0B8);
  v8 = sub_100007210(&qword_10014FA48, &qword_10010F100);
  v9 = sub_1001012F4();
  *(v0 + 88) = v9;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 25) = v5;
  *(v10 + 32) = v6;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_1000B01FC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v8, v9, &protocol witness table for MainActor, &unk_10010F110, v10, v7);
}

uint64_t sub_1000B01FC()
{
  v1 = *v0;

  v2 = *(v1 + 56);

  return _swift_task_switch(sub_1000B0380, v2);
}

uint64_t sub_1000B0380()
{

  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v0;
    sub_100101D24();
    v4 = 0;
    v27 = v2;
    do
    {
      v5 = v2 + v4;
      v6 = *(v2 + v4 + 32);
      v30 = *(v2 + v4 + 40);
      v7 = *(v2 + v4 + 41);
      v29 = *(v2 + v4 + 48);
      v8 = *(v2 + v4 + 56);
      v9 = *(v2 + v4 + 57);
      v28 = *(v5 + 58);
      v10 = *(v5 + 64);
      v11 = *(v5 + 72);
      v12 = *(v5 + 80);
      v13 = v6;
      sub_1000B06B0(v11, v12);
      v14 = v13;
      sub_1000B06B0(v11, v12);
      sub_10003E790(v11, v12);
      v15 = v14;
      sub_1000B06B0(v11, v12);

      objc_allocWithZone(_s19MOPOIAnnotationViewCMa());
      if (v7)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v17 = v9 == 0;
      v2 = v27;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 256;
      }

      v19 = v1 & 0xFF000000 | v8 | v18;
      if (v28)
      {
        v20 = 0x10000;
      }

      else
      {
        v20 = 0;
      }

      v1 = v19 | v20;
      sub_10003DAE4(v14, v16 | v30, v29, v19 | v20, v11, v12, v10);

      sub_10003E790(v11, v12);
      sub_100101D04();
      sub_100101D34();
      sub_100101D44();
      sub_100101D14();
      v4 += 56;
      --v3;
    }

    while (v3);

    v0 = v26;
  }

  else
  {
  }

  v21 = v0[10];
  sub_1000B06F0();
  isa = sub_1001011C4().super.isa;

  [v21 setAnnotationViews:isa];

  v23 = v0[1];
  v24 = v0[10];

  return v23(v24);
}

uint64_t sub_1000B05E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 25);
  v8 = *(v2 + 32);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008124;

  return sub_1000ADD38(a1, a2, v6, v9, v7, v8);
}

id sub_1000B06B0(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1000B06F0()
{
  result = qword_10014FA50;
  if (!qword_10014FA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014FA50);
  }

  return result;
}

uint64_t sub_1000B073C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000B078C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 105);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008030;

  return sub_1000AE61C(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t sub_1000B0864(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014CBD8, &qword_10010E240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B08CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0904(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008030;

  return sub_10008ECB4(a1, v4);
}

uint64_t sub_1000B09C0(uint64_t a1, uint64_t a2)
{
  v3[6] = v2;
  v5 = sub_100101824();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_1000FF514();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_1001001E4();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0, &qword_10010BE50);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for AssetAttachment.AssetType(0);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_100101284();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v3[28] = v8;
  v3[29] = v10;

  return _swift_task_switch(sub_1000B0C8C, v8);
}

uint64_t sub_1000B0C8C()
{
  v186 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 240) = v3;
  if (v3 >> 62)
  {
    v4 = sub_100101DA4();
    *(v0 + 248) = v4;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_82:

    v162 = *(v0 + 8);

    return v162();
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 248) = v4;
  if (!v4)
  {
    goto LABEL_82;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO;
  *(v0 + 256) = OBJC_IVAR____TtC21JournalShareExtension5Asset_context;
  *(v0 + 264) = v5;
  *(v0 + 392) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);

  for (i = 0; ; i = *(v0 + 272) + 1)
  {
    *(v0 + 272) = i;
    v7 = *(v0 + 240);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = sub_100101CA4();
    }

    else
    {
      v8 = *(v7 + 8 * i + 32);
    }

    *(v0 + 280) = v8;
    v9 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
    sub_1000329A0(v8 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = *(v0 + 216);
    if (EnumCaseMultiPayload <= 1)
    {
      v13 = EnumCaseMultiPayload ? type metadata accessor for AssetAttachment.AssetType : type metadata accessor for AssetAttachment.AssetType.FilePathType;
      sub_1000328DC(v11, v13);
      v12 = 0x6567616D69;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1000328DC(v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v12 = 0x6F65646976;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1000328DC(v11, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v12 = 0x6F69647561;
    }

    else
    {
      v14 = *(v0 + 216);

      v15 = sub_100007210(&qword_10014CE88, &qword_10010C9F0);
      sub_1000328DC(v14 + *(v15 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v12 = 0x726568746FLL;
    }

    v182 = v12;
    v16 = *(v8 + 16);
    sub_1000329A0(v8 + v9, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
    v17 = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 208);
    v181 = v16;
    if (v17 <= 1)
    {
      if (v17)
      {
        sub_1000328DC(v18, type metadata accessor for AssetAttachment.AssetType);
        v31 = 1;
        goto LABEL_26;
      }
    }

    else if ((v17 - 2) >= 2)
    {
      v19 = *(v0 + 208);

      v18 = v19 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
    }

    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    sub_10003293C(v18, v21);
    sub_1000329A0(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v22 = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 184);
    v25 = *(v0 + 160);
    v24 = *(v0 + 168);
    if (v22 == 1)
    {
      v27 = *(v0 + 88);
      v26 = *(v0 + 96);
      sub_1000328DC(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*(v26 + 32))(v23, v25, v27);
    }

    else
    {
      v28 = *(v0 + 136);
      v29 = *(v0 + 144);
      v30 = *(v0 + 128);
      sub_1001001D4();
      sub_100100184();

      (*(v28 + 8))(v29, v30);
      sub_1000328DC(v24, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v31 = 0;
LABEL_26:
    v32 = *(v0 + 176);
    v33 = *(v0 + 184);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);
    (*(v34 + 56))(v33, v31, 1, v35);
    sub_100010014(v33, v32, &qword_10014EBD0, &qword_10010BE50);
    if ((*(v34 + 48))(v32, 1, v35) == 1)
    {
      break;
    }

    v63 = *(v0 + 120);
    (*(*(v0 + 96) + 32))(v63, *(v0 + 176), *(v0 + 88));
    v64 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
    v65 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID + 8);

    v66 = sub_1000C1A74(v63, v64, v65);
    v68 = v67;

    *(v0 + 288) = v68;
    if (v68)
    {
      v69 = *(v0 + 48);
      v70 = *(v69 + *(v0 + 256));
      *(v0 + 296) = v70;
      if (v70)
      {
        v71 = *(v69 + *(v0 + 264));
        *(v0 + 304) = v71;
        if (v71)
        {
          v164 = *(v0 + 392);
          v165 = *(v0 + 80);
          v167 = *(v0 + 56);
          v166 = *(v0 + 64);
          v168 = swift_allocObject();
          *(v0 + 312) = v168;
          *(v168 + 16) = v71;
          *(v168 + 24) = v181;
          *(v168 + 32) = v182;
          *(v168 + 40) = 0xE500000000000000;
          *(v168 + 48) = v66;
          *(v168 + 56) = v68;
          *(v168 + 64) = 1;
          *(v168 + 72) = v70;
          (*(v166 + 104))(v165, v164, v167);
          v169 = v70;
          v170 = v71;
          v169;

          v171 = swift_task_alloc();
          *(v0 + 320) = v171;
          *v171 = v0;
          v171[1] = sub_1000B21B8;
          v172 = *(v0 + 80);
          v173 = sub_1000B8028;
          goto LABEL_87;
        }
      }

      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v72 = *(v0 + 48);
      v73 = sub_100100AE4();
      sub_100003D38(v73, qword_10014FE40);
      v74 = v72;
      v75 = sub_100100AC4();
      v76 = sub_1001015B4();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = *(v0 + 48);
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412290;
        *(v78 + 4) = v77;
        *v79 = v77;
        v80 = v77;
        _os_log_impl(&_mh_execute_header, v75, v76, "%@ (addAttachmentToCoreData) managed objects aren't set", v78, 0xCu);
        sub_10000FFB4(v79, &unk_10014D660, &qword_10010C710);
      }
    }

    else
    {

      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v90 = *(v0 + 112);
      v91 = *(v0 + 120);
      v93 = *(v0 + 88);
      v92 = *(v0 + 96);
      v94 = *(v0 + 48);
      v95 = sub_100100AE4();
      sub_100003D38(v95, qword_10014FE40);
      (*(v92 + 16))(v90, v91, v93);
      v96 = v94;
      v97 = sub_100100AC4();
      v98 = sub_1001015B4();

      v99 = os_log_type_enabled(v97, v98);
      v100 = *(v0 + 112);
      v101 = *(v0 + 88);
      v102 = (*(v0 + 96) + 8);
      if (v99)
      {
        v103 = *(v0 + 48);
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v185 = v183;
        *v104 = 138412546;
        *(v104 + 4) = v103;
        *v105 = v103;
        *(v104 + 12) = 2080;
        sub_1000B7CCC(&qword_10014EEC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v106 = v103;
        v107 = sub_100101E44();
        v109 = v108;
        (*v102)(v100, v101);
        v110 = sub_10007A774(v107, v109, &v185);

        *(v104 + 14) = v110;
        _os_log_impl(&_mh_execute_header, v97, v98, "%@.saveAttachments error, failed to save file from sourceURL: %s", v104, 0x16u);
        sub_10000FFB4(v105, &unk_10014D660, &qword_10010C710);

        sub_10001100C(v183);
      }

      else
      {

        (*v102)(v100, v101);
      }
    }

    if (qword_10014B710 != -1)
    {
      swift_once();
    }

    v120 = *(v0 + 96);
    v119 = *(v0 + 104);
    v121 = *(v0 + 88);
    sub_100003D38(*(v0 + 128), qword_100158698);
    sub_1001001C4();
    v122 = sub_1000FF434();
    v124 = v123;
    v125 = *(v120 + 8);
    v125(v119, v121);
    sub_1000FF434();
    v188._countAndFlagsBits = v122;
    v188._object = v124;
    v126 = sub_100101114(v188);

    if (v126)
    {
      v127 = [objc_opt_self() defaultManager];
      sub_1000FF474(v128);
      v130 = v129;
      *(v0 + 40) = 0;
      v131 = [v127 removeItemAtURL:v129 error:v0 + 40];

      v132 = *(v0 + 40);
      if (v131)
      {
        v133 = *(v0 + 120);
        v134 = *(v0 + 88);
        v135 = v132;

        v125(v133, v134);
        goto LABEL_68;
      }

      v142 = v132;
      sub_1000FF334();

      swift_willThrow();
      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v143 = sub_100100AE4();
      sub_100003D38(v143, qword_10014FE40);
      swift_errorRetain();
      v144 = sub_100100AC4();
      v145 = sub_1001015B4();

      v146 = os_log_type_enabled(v144, v145);
      v147 = *(v0 + 120);
      v148 = *(v0 + 88);
      if (v146)
      {
        v184 = *(v0 + 88);
        v149 = swift_slowAlloc();
        v150 = v147;
        v151 = swift_slowAlloc();
        *v149 = 138412290;
        swift_errorRetain();
        v152 = _swift_stdlib_bridgeErrorToNSError();
        *(v149 + 4) = v152;
        *v151 = v152;
        _os_log_impl(&_mh_execute_header, v144, v145, "Error when removing attachment source file: %@", v149, 0xCu);
        sub_10000FFB4(v151, &unk_10014D660, &qword_10010C710);

        v138 = v150;
        v139 = v184;
      }

      else
      {

        v138 = v147;
        v139 = v148;
      }
    }

    else
    {
      v136 = *(v0 + 120);
      v137 = *(v0 + 88);

      v138 = v136;
      v139 = v137;
    }

    v125(v138, v139);
LABEL_68:
    v140 = *(v0 + 248);
    v141 = *(v0 + 272) + 1;
    sub_10000FFB4(*(v0 + 184), &qword_10014EBD0, &qword_10010BE50);
    if (v141 == v140)
    {

      goto LABEL_82;
    }
  }

  v36 = *(v0 + 200);
  sub_10000FFB4(*(v0 + 176), &qword_10014EBD0, &qword_10010BE50);
  sub_1000329A0(v8 + v9, v36, type metadata accessor for AssetAttachment.AssetType);
  v37 = swift_getEnumCaseMultiPayload();
  v38 = *(v0 + 200);
  if (v37 != 1)
  {

    sub_1000328DC(v38, type metadata accessor for AssetAttachment.AssetType);
    if (qword_10014B858 != -1)
    {
      swift_once();
    }

    v81 = *(v0 + 48);
    v82 = sub_100100AE4();
    sub_100003D38(v82, qword_10014FE40);
    v83 = v81;
    v84 = sub_100100AC4();
    v85 = sub_1001015B4();

    if (!os_log_type_enabled(v84, v85))
    {

      goto LABEL_68;
    }

    v86 = *(v0 + 48);
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138412290;
    *(v87 + 4) = v86;
    *v88 = v86;
    v89 = v86;
    _os_log_impl(&_mh_execute_header, v84, v85, "%@.saveAttachments error, nothing to save", v87, 0xCu);
    sub_10000FFB4(v88, &unk_10014D660, &qword_10010C710);

    goto LABEL_59;
  }

  v39 = *v38;
  *(v0 + 328) = *v38;
  v40 = UIImageHEICRepresentation(v39);
  if (!v40)
  {

    if (qword_10014B858 != -1)
    {
      swift_once();
    }

    v111 = *(v0 + 48);
    v112 = sub_100100AE4();
    sub_100003D38(v112, qword_10014FE40);
    v113 = v111;
    v84 = sub_100100AC4();
    v114 = sub_1001015B4();

    if (os_log_type_enabled(v84, v114))
    {
      v115 = *(v0 + 48);
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      *(v116 + 4) = v115;
      *v117 = v115;
      v118 = v115;
      _os_log_impl(&_mh_execute_header, v84, v114, "%@.saveAttachments error, imageData is nil", v116, 0xCu);
      sub_10000FFB4(v117, &unk_10014D660, &qword_10010C710);

LABEL_59:

      goto LABEL_68;
    }

    goto LABEL_68;
  }

  v41 = v40;
  v42 = sub_1000FF564();
  v44 = v43;

  *(v0 + 336) = v42;
  *(v0 + 344) = v44;
  v45 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
  v46 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID + 8);

  v47 = sub_1000C26CC(v42, v44, v45, v46, 1667851624, 0xE400000000000000);
  v49 = v48;

  *(v0 + 352) = v49;
  if (!v49)
  {

    if (qword_10014B858 != -1)
    {
      swift_once();
    }

    v153 = *(v0 + 48);
    v154 = sub_100100AE4();
    sub_100003D38(v154, qword_10014FE40);
    v155 = v153;
    v156 = sub_100100AC4();
    v157 = sub_1001015B4();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = *(v0 + 48);
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v159 = 138412290;
      *(v159 + 4) = v158;
      *v160 = v158;
      v161 = v158;
      _os_log_impl(&_mh_execute_header, v156, v157, "%@.saveAttachments error, failed to save image data", v159, 0xCu);
      sub_10000FFB4(v160, &unk_10014D660, &qword_10010C710);

      sub_1000064C0(v42, v44);
    }

    else
    {

      sub_1000064C0(v42, v44);
    }

    goto LABEL_68;
  }

  v50 = *(v0 + 48);
  v51 = *(v50 + *(v0 + 256));
  *(v0 + 360) = v51;
  if (!v51 || (v52 = *(v50 + *(v0 + 264)), (*(v0 + 368) = v52) == 0))
  {

    if (qword_10014B858 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 48);
    v54 = sub_100100AE4();
    sub_100003D38(v54, qword_10014FE40);
    v55 = v53;
    v56 = sub_100100AC4();
    v57 = sub_1001015B4();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 48);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v58;
      *v60 = v58;
      v61 = v58;
      _os_log_impl(&_mh_execute_header, v56, v57, "%@ (addAttachmentToCoreData) managed objects aren't set", v59, 0xCu);
      sub_10000FFB4(v60, &unk_10014D660, &qword_10010C710);
    }

    v62 = *(v0 + 328);
    sub_1000064C0(*(v0 + 336), *(v0 + 344));

    goto LABEL_68;
  }

  v174 = *(v0 + 392);
  v175 = *(v0 + 64);
  v176 = *(v0 + 72);
  v177 = *(v0 + 56);
  v168 = swift_allocObject();
  *(v0 + 376) = v168;
  *(v168 + 16) = v52;
  *(v168 + 24) = v181;
  *(v168 + 32) = v182;
  *(v168 + 40) = 0xE500000000000000;
  *(v168 + 48) = v47;
  *(v168 + 56) = v49;
  *(v168 + 64) = 1;
  *(v168 + 72) = v51;
  (*(v175 + 104))(v176, v174, v177);
  v178 = v51;
  v179 = v52;

  v180 = v179;
  v178;

  v171 = swift_task_alloc();
  *(v0 + 384) = v171;
  *v171 = v0;
  v171[1] = sub_1000B3824;
  v172 = *(v0 + 72);
  v173 = sub_1000B7CB4;
LABEL_87:

  return NSManagedObjectContext.perform<A>(schedule:_:)(v171, v172, v173, v168, &type metadata for () + 8);
}

void sub_1000B21B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[10];
    v4 = v2[7];
    v5 = v2[8];

    (*(v5 + 8))(v3, v4);
    v6 = v2[28];

    _swift_task_switch(sub_1000B2370, v6);
  }
}

uint64_t sub_1000B2370()
{
  v184 = v0;
  v1 = *(v0 + 296);

  v2 = &off_10014B000;
  while (2)
  {
    if (v2[226] != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);
    sub_100003D38(*(v0 + 128), qword_100158698);
    sub_1001001C4();
    v6 = sub_1000FF434();
    v8 = v7;
    v9 = *(v4 + 8);
    v9(v3, v5);
    sub_1000FF434();
    v186._countAndFlagsBits = v6;
    v186._object = v8;
    v10 = sub_100101114(v186);

    if (v10)
    {
      v11 = [objc_opt_self() defaultManager];
      sub_1000FF474(v12);
      v14 = v13;
      *(v0 + 40) = 0;
      v15 = [v11 removeItemAtURL:v13 error:v0 + 40];

      v16 = *(v0 + 40);
      if (v15)
      {
        v17 = *(v0 + 120);
        v18 = *(v0 + 88);
        v19 = v16;

        v9(v17, v18);
      }

      else
      {
        v22 = v16;
        sub_1000FF334();

        swift_willThrow();
        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v23 = sub_100100AE4();
        sub_100003D38(v23, qword_10014FE40);
        swift_errorRetain();
        v24 = sub_100100AC4();
        v25 = sub_1001015B4();

        v26 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 120);
        v28 = *(v0 + 88);
        if (v26)
        {
          v180 = *(v0 + 88);
          v29 = swift_slowAlloc();
          v30 = v27;
          v31 = swift_slowAlloc();
          *v29 = 138412290;
          swift_errorRetain();
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v29 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&_mh_execute_header, v24, v25, "Error when removing attachment source file: %@", v29, 0xCu);
          sub_10000FFB4(v31, &unk_10014D660, &qword_10010C710);

          v33 = v30;
          v34 = v180;
        }

        else
        {

          v33 = v27;
          v34 = v28;
        }

        v9(v33, v34);
      }
    }

    else
    {
      v20 = *(v0 + 120);
      v21 = *(v0 + 88);

      v9(v20, v21);
    }

    while (1)
    {
      v35 = *(v0 + 248);
      v36 = *(v0 + 272) + 1;
      sub_10000FFB4(*(v0 + 184), &qword_10014EBD0, &qword_10010BE50);
      if (v36 == v35)
      {

        v160 = *(v0 + 8);

        return v160();
      }

      v37 = *(v0 + 272) + 1;
      *(v0 + 272) = v37;
      v38 = *(v0 + 240);
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = sub_100101CA4();
      }

      else
      {
        v39 = *(v38 + 8 * v37 + 32);
      }

      *(v0 + 280) = v39;
      v40 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
      sub_1000329A0(v39 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 216);
      if (EnumCaseMultiPayload <= 1)
      {
        v44 = EnumCaseMultiPayload ? type metadata accessor for AssetAttachment.AssetType : type metadata accessor for AssetAttachment.AssetType.FilePathType;
        sub_1000328DC(v42, v44);
        v43 = 0x6567616D69;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1000328DC(v42, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v43 = 0x6F65646976;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_1000328DC(v42, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v43 = 0x6F69647561;
      }

      else
      {
        v45 = *(v0 + 216);

        v46 = sub_100007210(&qword_10014CE88, &qword_10010C9F0);
        sub_1000328DC(v45 + *(v46 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v43 = 0x726568746FLL;
      }

      v181 = v43;
      v47 = *(v39 + 16);
      sub_1000329A0(v39 + v40, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = *(v0 + 208);
      v179 = v47;
      if (v48 <= 1)
      {
        if (v48)
        {
          sub_1000328DC(v49, type metadata accessor for AssetAttachment.AssetType);
          v62 = 1;
          goto LABEL_37;
        }
      }

      else if ((v48 - 2) >= 2)
      {
        v50 = *(v0 + 208);

        v49 = v50 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
      }

      v52 = *(v0 + 160);
      v51 = *(v0 + 168);
      sub_10003293C(v49, v51);
      sub_1000329A0(v51, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = *(v0 + 184);
      v56 = *(v0 + 160);
      v55 = *(v0 + 168);
      if (v53 == 1)
      {
        v57 = *(v0 + 88);
        v58 = *(v0 + 96);
        sub_1000328DC(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v58 + 32))(v54, v56, v57);
      }

      else
      {
        v59 = *(v0 + 136);
        v60 = *(v0 + 144);
        v61 = *(v0 + 128);
        sub_1001001D4();
        sub_100100184();

        (*(v59 + 8))(v60, v61);
        sub_1000328DC(v55, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v62 = 0;
LABEL_37:
      v64 = *(v0 + 176);
      v63 = *(v0 + 184);
      v65 = *(v0 + 88);
      v66 = *(v0 + 96);
      (*(v66 + 56))(v63, v62, 1, v65);
      sub_100010014(v63, v64, &qword_10014EBD0, &qword_10010BE50);
      if ((*(v66 + 48))(v64, 1, v65) != 1)
      {
        break;
      }

      v67 = *(v0 + 200);
      sub_10000FFB4(*(v0 + 176), &qword_10014EBD0, &qword_10010BE50);
      sub_1000329A0(v39 + v40, v67, type metadata accessor for AssetAttachment.AssetType);
      v68 = swift_getEnumCaseMultiPayload();
      v69 = *(v0 + 200);
      if (v68 == 1)
      {
        v70 = *v69;
        *(v0 + 328) = *v69;
        v71 = UIImageHEICRepresentation(v70);
        if (v71)
        {
          v72 = v71;
          v73 = sub_1000FF564();
          v75 = v74;

          *(v0 + 336) = v73;
          *(v0 + 344) = v75;
          v76 = *(v39 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
          v77 = *(v39 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID + 8);

          v78 = sub_1000C26CC(v73, v75, v76, v77, 1667851624, 0xE400000000000000);
          v80 = v79;

          *(v0 + 352) = v80;
          if (v80)
          {
            v81 = *(v0 + 48);
            v82 = *(v81 + *(v0 + 256));
            *(v0 + 360) = v82;
            if (v82)
            {
              v83 = *(v81 + *(v0 + 264));
              *(v0 + 368) = v83;
              if (v83)
              {
                v162 = *(v0 + 392);
                v164 = *(v0 + 64);
                v163 = *(v0 + 72);
                v165 = *(v0 + 56);
                v166 = swift_allocObject();
                *(v0 + 376) = v166;
                *(v166 + 16) = v83;
                *(v166 + 24) = v179;
                *(v166 + 32) = v181;
                *(v166 + 40) = 0xE500000000000000;
                *(v166 + 48) = v78;
                *(v166 + 56) = v80;
                *(v166 + 64) = 1;
                *(v166 + 72) = v82;
                (*(v164 + 104))(v163, v162, v165);
                v167 = v82;
                v168 = v83;

                v169 = v168;
                v167;

                v170 = swift_task_alloc();
                *(v0 + 384) = v170;
                *v170 = v0;
                v170[1] = sub_1000B3824;
                v171 = *(v0 + 72);
                v172 = sub_1000B7CB4;
                goto LABEL_82;
              }
            }

            if (qword_10014B858 != -1)
            {
              swift_once();
            }

            v84 = *(v0 + 48);
            v85 = sub_100100AE4();
            sub_100003D38(v85, qword_10014FE40);
            v86 = v84;
            v87 = sub_100100AC4();
            v88 = sub_1001015B4();

            if (os_log_type_enabled(v87, v88))
            {
              v89 = *(v0 + 48);
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v90 = 138412290;
              *(v90 + 4) = v89;
              *v91 = v89;
              v92 = v89;
              _os_log_impl(&_mh_execute_header, v87, v88, "%@ (addAttachmentToCoreData) managed objects aren't set", v90, 0xCu);
              sub_10000FFB4(v91, &unk_10014D660, &qword_10010C710);
            }

            v93 = *(v0 + 328);
            sub_1000064C0(*(v0 + 336), *(v0 + 344));
          }

          else
          {

            if (qword_10014B858 != -1)
            {
              swift_once();
            }

            v111 = *(v0 + 48);
            v112 = sub_100100AE4();
            sub_100003D38(v112, qword_10014FE40);
            v113 = v111;
            v114 = sub_100100AC4();
            v115 = sub_1001015B4();

            if (os_log_type_enabled(v114, v115))
            {
              v116 = *(v0 + 48);
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              *v117 = 138412290;
              *(v117 + 4) = v116;
              *v118 = v116;
              v119 = v116;
              _os_log_impl(&_mh_execute_header, v114, v115, "%@.saveAttachments error, failed to save image data", v117, 0xCu);
              sub_10000FFB4(v118, &unk_10014D660, &qword_10010C710);

              sub_1000064C0(v73, v75);
            }

            else
            {

              sub_1000064C0(v73, v75);
            }
          }
        }

        else
        {

          if (qword_10014B858 != -1)
          {
            swift_once();
          }

          v103 = *(v0 + 48);
          v104 = sub_100100AE4();
          sub_100003D38(v104, qword_10014FE40);
          v105 = v103;
          v97 = sub_100100AC4();
          v106 = sub_1001015B4();

          if (os_log_type_enabled(v97, v106))
          {
            v107 = *(v0 + 48);
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *v108 = 138412290;
            *(v108 + 4) = v107;
            *v109 = v107;
            v110 = v107;
            _os_log_impl(&_mh_execute_header, v97, v106, "%@.saveAttachments error, imageData is nil", v108, 0xCu);
            sub_10000FFB4(v109, &unk_10014D660, &qword_10010C710);

LABEL_57:
          }

          else
          {
          }
        }
      }

      else
      {

        sub_1000328DC(v69, type metadata accessor for AssetAttachment.AssetType);
        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v94 = *(v0 + 48);
        v95 = sub_100100AE4();
        sub_100003D38(v95, qword_10014FE40);
        v96 = v94;
        v97 = sub_100100AC4();
        v98 = sub_1001015B4();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = *(v0 + 48);
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *v100 = 138412290;
          *(v100 + 4) = v99;
          *v101 = v99;
          v102 = v99;
          _os_log_impl(&_mh_execute_header, v97, v98, "%@.saveAttachments error, nothing to save", v100, 0xCu);
          sub_10000FFB4(v101, &unk_10014D660, &qword_10010C710);

          goto LABEL_57;
        }
      }
    }

    v120 = *(v0 + 120);
    (*(*(v0 + 96) + 32))(v120, *(v0 + 176), *(v0 + 88));
    v121 = v39 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID;
    v122 = *(v39 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
    v123 = *(v121 + 8);

    v124 = sub_1000C1A74(v120, v122, v123);
    v126 = v125;

    *(v0 + 288) = v126;
    if (!v126)
    {

      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v139 = *(v0 + 112);
      v140 = *(v0 + 120);
      v141 = *(v0 + 88);
      v142 = *(v0 + 96);
      v143 = *(v0 + 48);
      v144 = sub_100100AE4();
      sub_100003D38(v144, qword_10014FE40);
      (*(v142 + 16))(v139, v140, v141);
      v145 = v143;
      v146 = sub_100100AC4();
      v147 = sub_1001015B4();

      v148 = os_log_type_enabled(v146, v147);
      v149 = *(v0 + 112);
      v150 = *(v0 + 88);
      v151 = (*(v0 + 96) + 8);
      if (v148)
      {
        v152 = *(v0 + 48);
        v153 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v183 = v154;
        *v153 = 138412546;
        *(v153 + 4) = v152;
        *v182 = v152;
        *(v153 + 12) = 2080;
        sub_1000B7CCC(&qword_10014EEC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v155 = v152;
        v156 = sub_100101E44();
        v158 = v157;
        (*v151)(v149, v150);
        v159 = sub_10007A774(v156, v158, &v183);

        *(v153 + 14) = v159;
        _os_log_impl(&_mh_execute_header, v146, v147, "%@.saveAttachments error, failed to save file from sourceURL: %s", v153, 0x16u);
        sub_10000FFB4(v182, &unk_10014D660, &qword_10010C710);

        sub_10001100C(v154);
      }

      else
      {

        (*v151)(v149, v150);
      }

      goto LABEL_77;
    }

    v127 = *(v0 + 48);
    v128 = *(v127 + *(v0 + 256));
    *(v0 + 296) = v128;
    if (!v128 || (v129 = *(v127 + *(v0 + 264)), (*(v0 + 304) = v129) == 0))
    {

      if (qword_10014B858 != -1)
      {
        swift_once();
      }

      v130 = *(v0 + 48);
      v131 = sub_100100AE4();
      sub_100003D38(v131, qword_10014FE40);
      v132 = v130;
      v133 = sub_100100AC4();
      v134 = sub_1001015B4();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = *(v0 + 48);
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *v136 = 138412290;
        *(v136 + 4) = v135;
        *v137 = v135;
        v138 = v135;
        _os_log_impl(&_mh_execute_header, v133, v134, "%@ (addAttachmentToCoreData) managed objects aren't set", v136, 0xCu);
        sub_10000FFB4(v137, &unk_10014D660, &qword_10010C710);
      }

LABEL_77:
      v2 = &off_10014B000;
      continue;
    }

    break;
  }

  v173 = *(v0 + 392);
  v174 = *(v0 + 80);
  v176 = *(v0 + 56);
  v175 = *(v0 + 64);
  v166 = swift_allocObject();
  *(v0 + 312) = v166;
  *(v166 + 16) = v129;
  *(v166 + 24) = v179;
  *(v166 + 32) = v181;
  *(v166 + 40) = 0xE500000000000000;
  *(v166 + 48) = v124;
  *(v166 + 56) = v126;
  *(v166 + 64) = 1;
  *(v166 + 72) = v128;
  (*(v175 + 104))(v174, v173, v176);
  v177 = v128;
  v178 = v129;
  v177;

  v170 = swift_task_alloc();
  *(v0 + 320) = v170;
  *v170 = v0;
  v170[1] = sub_1000B21B8;
  v171 = *(v0 + 80);
  v172 = sub_1000B8028;
LABEL_82:

  return NSManagedObjectContext.perform<A>(schedule:_:)(v170, v171, v172, v166, &type metadata for () + 8);
}

void sub_1000B3824()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[8];
    v3 = v2[9];
    v5 = v2[7];

    (*(v4 + 8))(v3, v5);
    v6 = v2[28];

    _swift_task_switch(sub_1000B39DC, v6);
  }
}

uint64_t sub_1000B39DC()
{
  v182 = v0;
  v1 = *(v0 + 360);

LABEL_2:
  v2 = *(v0 + 328);
  sub_1000064C0(*(v0 + 336), *(v0 + 344));

  while (1)
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 272) + 1;
    sub_10000FFB4(*(v0 + 184), &qword_10014EBD0, &qword_10010BE50);
    if (v8 == v7)
    {
      break;
    }

    v9 = *(v0 + 272) + 1;
    *(v0 + 272) = v9;
    v10 = *(v0 + 240);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_100101CA4();
    }

    else
    {
      v11 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 280) = v11;
    v12 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
    sub_1000329A0(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, *(v0 + 216), type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v0 + 216);
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v16 = type metadata accessor for AssetAttachment.AssetType;
      }

      else
      {
        v16 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      }

      sub_1000328DC(v14, v16);
      v15 = 0x6567616D69;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1000328DC(v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x6F65646976;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1000328DC(v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x6F69647561;
    }

    else
    {
      v17 = *(v0 + 216);

      v18 = sub_100007210(&qword_10014CE88, &qword_10010C9F0);
      sub_1000328DC(v17 + *(v18 + 48), type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v15 = 0x726568746FLL;
    }

    v178 = v15;
    v19 = *(v11 + 16);
    sub_1000329A0(v11 + v12, *(v0 + 208), type metadata accessor for AssetAttachment.AssetType);
    v20 = swift_getEnumCaseMultiPayload();
    v21 = *(v0 + 208);
    v177 = v19;
    if (v20 > 1)
    {
      if ((v20 - 2) >= 2)
      {
        v22 = *(v0 + 208);

        v21 = v22 + *(sub_100007210(&qword_10014CE88, &qword_10010C9F0) + 48);
      }

LABEL_23:
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      sub_10003293C(v21, v24);
      sub_1000329A0(v24, v23, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v25 = swift_getEnumCaseMultiPayload();
      v26 = *(v0 + 184);
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      if (v25 == 1)
      {
        v30 = *(v0 + 88);
        v29 = *(v0 + 96);
        sub_1000328DC(*(v0 + 168), type metadata accessor for AssetAttachment.AssetType.FilePathType);
        (*(v29 + 32))(v26, v28, v30);
      }

      else
      {
        v31 = *(v0 + 136);
        v32 = *(v0 + 144);
        v33 = *(v0 + 128);
        sub_1001001D4();
        sub_100100184();

        (*(v31 + 8))(v32, v33);
        sub_1000328DC(v27, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      }

      v34 = 0;
      goto LABEL_27;
    }

    if (!v20)
    {
      goto LABEL_23;
    }

    sub_1000328DC(v21, type metadata accessor for AssetAttachment.AssetType);
    v34 = 1;
LABEL_27:
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 88);
    v37 = *(v0 + 96);
    (*(v37 + 56))(v36, v34, 1, v38);
    sub_100010014(v36, v35, &qword_10014EBD0, &qword_10010BE50);
    if ((*(v37 + 48))(v35, 1, v38) == 1)
    {
      v39 = *(v0 + 200);
      sub_10000FFB4(*(v0 + 176), &qword_10014EBD0, &qword_10010BE50);
      sub_1000329A0(v11 + v12, v39, type metadata accessor for AssetAttachment.AssetType);
      v40 = swift_getEnumCaseMultiPayload();
      v41 = *(v0 + 200);
      if (v40 == 1)
      {
        v42 = *v41;
        *(v0 + 328) = *v41;
        v43 = UIImageHEICRepresentation(v42);
        if (v43)
        {
          v44 = v43;
          v45 = sub_1000FF564();
          v47 = v46;

          *(v0 + 336) = v45;
          *(v0 + 344) = v47;
          v48 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
          v49 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID + 8);

          v50 = sub_1000C26CC(v45, v47, v48, v49, 1667851624, 0xE400000000000000);
          v52 = v51;

          *(v0 + 352) = v52;
          if (v52)
          {
            v146 = *(v0 + 48);
            v147 = *(v146 + *(v0 + 256));
            *(v0 + 360) = v147;
            if (!v147 || (v148 = *(v146 + *(v0 + 264)), (*(v0 + 368) = v148) == 0))
            {

              if (qword_10014B858 != -1)
              {
                swift_once();
              }

              v149 = *(v0 + 48);
              v150 = sub_100100AE4();
              sub_100003D38(v150, qword_10014FE40);
              v151 = v149;
              v152 = sub_100100AC4();
              v153 = sub_1001015B4();

              if (os_log_type_enabled(v152, v153))
              {
                v154 = *(v0 + 48);
                v155 = swift_slowAlloc();
                v156 = swift_slowAlloc();
                *v155 = 138412290;
                *(v155 + 4) = v154;
                *v156 = v154;
                v157 = v154;
                _os_log_impl(&_mh_execute_header, v152, v153, "%@ (addAttachmentToCoreData) managed objects aren't set", v155, 0xCu);
                sub_10000FFB4(v156, &unk_10014D660, &qword_10010C710);
              }

              goto LABEL_2;
            }

            v170 = *(v0 + 392);
            v171 = *(v0 + 64);
            v172 = *(v0 + 72);
            v173 = *(v0 + 56);
            v164 = swift_allocObject();
            *(v0 + 376) = v164;
            *(v164 + 16) = v148;
            *(v164 + 24) = v177;
            *(v164 + 32) = v178;
            *(v164 + 40) = 0xE500000000000000;
            *(v164 + 48) = v50;
            *(v164 + 56) = v52;
            *(v164 + 64) = 1;
            *(v164 + 72) = v147;
            (*(v171 + 104))(v172, v170, v173);
            v174 = v147;
            v175 = v148;

            v176 = v175;
            v174;

            v167 = swift_task_alloc();
            *(v0 + 384) = v167;
            *v167 = v0;
            v167[1] = sub_1000B3824;
            v168 = *(v0 + 72);
            v169 = sub_1000B7CB4;
            goto LABEL_82;
          }

          if (qword_10014B858 != -1)
          {
            swift_once();
          }

          v53 = *(v0 + 48);
          v54 = sub_100100AE4();
          sub_100003D38(v54, qword_10014FE40);
          v55 = v53;
          v56 = sub_100100AC4();
          v57 = sub_1001015B4();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = *(v0 + 48);
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 138412290;
            *(v59 + 4) = v58;
            *v60 = v58;
            v61 = v58;
            _os_log_impl(&_mh_execute_header, v56, v57, "%@.saveAttachments error, failed to save image data", v59, 0xCu);
            sub_10000FFB4(v60, &unk_10014D660, &qword_10010C710);

            sub_1000064C0(v45, v47);
          }

          else
          {

            sub_1000064C0(v45, v47);
          }
        }

        else
        {

          if (qword_10014B858 != -1)
          {
            swift_once();
          }

          v110 = *(v0 + 48);
          v111 = sub_100100AE4();
          sub_100003D38(v111, qword_10014FE40);
          v112 = v110;
          v83 = sub_100100AC4();
          v113 = sub_1001015B4();

          if (os_log_type_enabled(v83, v113))
          {
            v114 = *(v0 + 48);
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *v115 = 138412290;
            *(v115 + 4) = v114;
            *v116 = v114;
            v117 = v114;
            _os_log_impl(&_mh_execute_header, v83, v113, "%@.saveAttachments error, imageData is nil", v115, 0xCu);
            sub_10000FFB4(v116, &unk_10014D660, &qword_10010C710);

LABEL_57:
          }

          else
          {
          }
        }
      }

      else
      {

        sub_1000328DC(v41, type metadata accessor for AssetAttachment.AssetType);
        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v80 = *(v0 + 48);
        v81 = sub_100100AE4();
        sub_100003D38(v81, qword_10014FE40);
        v82 = v80;
        v83 = sub_100100AC4();
        v84 = sub_1001015B4();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = *(v0 + 48);
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *v86 = 138412290;
          *(v86 + 4) = v85;
          *v87 = v85;
          v88 = v85;
          _os_log_impl(&_mh_execute_header, v83, v84, "%@.saveAttachments error, nothing to save", v86, 0xCu);
          sub_10000FFB4(v87, &unk_10014D660, &qword_10010C710);

          goto LABEL_57;
        }
      }
    }

    else
    {
      v62 = *(v0 + 120);
      (*(*(v0 + 96) + 32))(v62, *(v0 + 176), *(v0 + 88));
      v63 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID);
      v64 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_fileNameID + 8);

      v65 = sub_1000C1A74(v62, v63, v64);
      v67 = v66;

      *(v0 + 288) = v67;
      if (v67)
      {
        v68 = *(v0 + 48);
        v69 = *(v68 + *(v0 + 256));
        *(v0 + 296) = v69;
        if (v69)
        {
          v70 = *(v68 + *(v0 + 264));
          *(v0 + 304) = v70;
          if (v70)
          {
            v160 = *(v0 + 392);
            v161 = *(v0 + 80);
            v163 = *(v0 + 56);
            v162 = *(v0 + 64);
            v164 = swift_allocObject();
            *(v0 + 312) = v164;
            *(v164 + 16) = v70;
            *(v164 + 24) = v177;
            *(v164 + 32) = v178;
            *(v164 + 40) = 0xE500000000000000;
            *(v164 + 48) = v65;
            *(v164 + 56) = v67;
            *(v164 + 64) = 1;
            *(v164 + 72) = v69;
            (*(v162 + 104))(v161, v160, v163);
            v165 = v69;
            v166 = v70;
            v165;

            v167 = swift_task_alloc();
            *(v0 + 320) = v167;
            *v167 = v0;
            v167[1] = sub_1000B21B8;
            v168 = *(v0 + 80);
            v169 = sub_1000B8028;
LABEL_82:

            return NSManagedObjectContext.perform<A>(schedule:_:)(v167, v168, v169, v164, &type metadata for () + 8);
          }
        }

        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v71 = *(v0 + 48);
        v72 = sub_100100AE4();
        sub_100003D38(v72, qword_10014FE40);
        v73 = v71;
        v74 = sub_100100AC4();
        v75 = sub_1001015B4();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = *(v0 + 48);
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412290;
          *(v77 + 4) = v76;
          *v78 = v76;
          v79 = v76;
          _os_log_impl(&_mh_execute_header, v74, v75, "%@ (addAttachmentToCoreData) managed objects aren't set", v77, 0xCu);
          sub_10000FFB4(v78, &unk_10014D660, &qword_10010C710);
        }
      }

      else
      {

        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v89 = *(v0 + 112);
        v90 = *(v0 + 120);
        v92 = *(v0 + 88);
        v91 = *(v0 + 96);
        v93 = *(v0 + 48);
        v94 = sub_100100AE4();
        sub_100003D38(v94, qword_10014FE40);
        (*(v91 + 16))(v89, v90, v92);
        v95 = v93;
        v96 = sub_100100AC4();
        v97 = sub_1001015B4();

        v98 = os_log_type_enabled(v96, v97);
        v99 = *(v0 + 112);
        v100 = *(v0 + 88);
        v101 = (*(v0 + 96) + 8);
        if (v98)
        {
          v102 = *(v0 + 48);
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v181 = v179;
          *v103 = 138412546;
          *(v103 + 4) = v102;
          *v104 = v102;
          *(v103 + 12) = 2080;
          sub_1000B7CCC(&qword_10014EEC0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v105 = v102;
          v106 = sub_100101E44();
          v108 = v107;
          (*v101)(v99, v100);
          v109 = sub_10007A774(v106, v108, &v181);

          *(v103 + 14) = v109;
          _os_log_impl(&_mh_execute_header, v96, v97, "%@.saveAttachments error, failed to save file from sourceURL: %s", v103, 0x16u);
          sub_10000FFB4(v104, &unk_10014D660, &qword_10010C710);

          sub_10001100C(v179);
        }

        else
        {

          (*v101)(v99, v100);
        }
      }

      if (qword_10014B710 != -1)
      {
        swift_once();
      }

      v119 = *(v0 + 96);
      v118 = *(v0 + 104);
      v120 = *(v0 + 88);
      sub_100003D38(*(v0 + 128), qword_100158698);
      sub_1001001C4();
      v121 = sub_1000FF434();
      v123 = v122;
      v124 = *(v119 + 8);
      v124(v118, v120);
      sub_1000FF434();
      v184._countAndFlagsBits = v121;
      v184._object = v123;
      v125 = sub_100101114(v184);

      if (!v125)
      {
        v3 = *(v0 + 120);
        v4 = *(v0 + 88);

        v5 = v3;
        v6 = v4;
        goto LABEL_4;
      }

      v126 = [objc_opt_self() defaultManager];
      sub_1000FF474(v127);
      v129 = v128;
      *(v0 + 40) = 0;
      v130 = [v126 removeItemAtURL:v128 error:v0 + 40];

      v131 = *(v0 + 40);
      if (v130)
      {
        v132 = *(v0 + 120);
        v133 = *(v0 + 88);
        v134 = v131;

        v124(v132, v133);
      }

      else
      {
        v135 = v131;
        sub_1000FF334();

        swift_willThrow();
        if (qword_10014B858 != -1)
        {
          swift_once();
        }

        v136 = sub_100100AE4();
        sub_100003D38(v136, qword_10014FE40);
        swift_errorRetain();
        v137 = sub_100100AC4();
        v138 = sub_1001015B4();

        v139 = os_log_type_enabled(v137, v138);
        v140 = *(v0 + 120);
        v141 = *(v0 + 88);
        if (v139)
        {
          v180 = *(v0 + 88);
          v142 = swift_slowAlloc();
          v143 = v140;
          v144 = swift_slowAlloc();
          *v142 = 138412290;
          swift_errorRetain();
          v145 = _swift_stdlib_bridgeErrorToNSError();
          *(v142 + 4) = v145;
          *v144 = v145;
          _os_log_impl(&_mh_execute_header, v137, v138, "Error when removing attachment source file: %@", v142, 0xCu);
          sub_10000FFB4(v144, &unk_10014D660, &qword_10010C710);

          v5 = v143;
          v6 = v180;
        }

        else
        {

          v5 = v140;
          v6 = v141;
        }

LABEL_4:
        v124(v5, v6);
      }
    }
  }

  v158 = *(v0 + 8);

  return v158();
}