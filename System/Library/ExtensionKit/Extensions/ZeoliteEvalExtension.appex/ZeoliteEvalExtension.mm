uint64_t sub_100001758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100038558();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038478();
  sub_100003A14(&qword_100048180, &type metadata accessor for Library.Streams.Zeolite.Ledger.Embedding, &protocol conformance descriptor for Library.Streams.Zeolite.Ledger.Embedding);
  sub_100038488();
  sub_1000036B8(v19, v20);
  v16 = *(a1 + 16);
  if (v16)
  {
    v11 = *(sub_100038138() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v17 = (v8 + 8);
    v13 = v16;
    do
    {
      sub_100038548();
      sub_100038118();
      sub_1000384D8();
      sub_100037EF8();
      v14 = sub_100037F08();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
      sub_100038508();

      sub_100038518();
      sub_100038128();
      sub_100038538();
      sub_1000380F8();
      sub_1000384F8();
      sub_1000380E8();
      sub_1000384B8();
      sub_1000036D0(v20, v20[3]);
      sub_100038568();
      (*v17)(v10, v7);
      v12 += v18;
      --v13;
    }

    while (v13);
  }

  sub_10000387C(v20);
  return v16;
}

uint64_t sub_100001B40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000383F8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100001C70, 0, 0);
}

uint64_t sub_100001C70()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    sub_100037DE8();
    swift_allocObject();
    sub_100037DD8();
    v0[2] = v1;
    sub_100001B40(&qword_100048198, &qword_100039178);
    sub_100003978(&qword_1000481B0, &qword_1000481B8, &protocol conformance descriptor for EmbeddingItem, &protocol conformance descriptor for <A> [A]);
    v0[13] = sub_100037DC8();
    v0[14] = v3;

    sub_100038358();
    v0[15] = sub_100038348();
    v7 = &_s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu + _s20LighthouseBackground12MLHostClientC8dsSetKey5group3key5value10timeToLive15encryptionGroupSbSS_SS10Foundation4DataVs8DurationVSgSSSgtYaAA0cD5ErrorOYKFTjTu;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_100001FEC;

    __asm { BR              X8 }
  }

  v4 = v0[1];

  return v4(0, 24);
}

uint64_t sub_100001FEC(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = sub_1000021E0;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v5 = sub_100002130;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002130()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  sub_100003924(*(v0 + 104), *(v0 + 112));

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);
  if (v1)
  {
    v5 = 24;
  }

  else
  {
    v5 = 21;
  }

  return v4(v3, v5);
}

uint64_t sub_1000021E0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  v4 = *(v0[7] + 32);
  v4(v1, v0[10], v3);
  v4(v2, v1, v3);
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = sub_100038598();
  sub_100003680(v9, qword_100048DC8);
  v10 = *(v8 + 16);
  v10(v5, v6, v7);
  v11 = sub_100038578();
  v12 = sub_1000387C8();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[6];
  v17 = v0[7];
  if (v13)
  {
    v28 = v0[13];
    v29 = v0[14];
    v27 = v12;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    sub_100003A14(&qword_100048188, &type metadata accessor for MLHostClientError, &protocol conformance descriptor for MLHostClientError);
    swift_allocError();
    v26 = v14;
    v10(v20, v15, v16);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v17 + 8);
    v22(v15, v16);
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&_mh_execute_header, v11, v27, "Failed to save embeddings to kvStore: %@", v18, 0xCu);
    sub_100003814(v19);

    sub_100003924(v28, v29);

    v22(v26, v16);
  }

  else
  {
    sub_100003924(v0[13], v0[14]);

    v23 = *(v17 + 8);
    v23(v15, v16);
    v23(v14, v16);
  }

  v24 = v0[1];

  return v24(0, 21);
}

unint64_t *sub_1000024D0(uint64_t a1, uint64_t a2, char a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v45 = a6;
  v46 = a7;
  v44 = a4;
  v49 = sub_100038558();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100038138();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001B40(&qword_100048178, &unk_100039530);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v41 - v18;
  sub_100003714(a1, v41 - v18);
  sub_100003714(a2, v17);
  v20 = sub_100037F08();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  isa = 0;
  if (v22(v19, 1, v20) != 1)
  {
    isa = sub_100037EC8().super.isa;
    (*(v21 + 8))(v19, v20);
  }

  if (v22(v17, 1, v20) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_100037EC8().super.isa;
    (*(v21 + 8))(v17, v20);
  }

  v25 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v24 maxEvents:0 lastN:0 reversed:a3 & 1];

  sub_100038478();
  sub_100003A14(&qword_100048180, &type metadata accessor for Library.Streams.Zeolite.Ledger.Embedding, &protocol conformance descriptor for Library.Streams.Zeolite.Ledger.Embedding);
  v26 = v25;
  sub_100038498();

  sub_1000036B8(v53, v54);
  v27 = swift_allocObject();
  *(v27 + 16) = _swiftEmptyArrayStorage;
  sub_1000036D0(v54, v54[3]);
  v28 = swift_allocObject();
  v29 = v45;
  v28[2] = v44;
  v28[3] = a5;
  v28[4] = v29;
  v28[5] = v46;
  v28[6] = v27;

  sub_1000385D8();

  swift_beginAccess();
  v30 = *(v27 + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v41[2] = v27;
    v42 = v26;
    v52 = _swiftEmptyArrayStorage;

    sub_10001C554(0, v31, 0);
    v32 = v52;
    v46 = *(v51 + 16);
    v33 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v41[1] = v30;
    v34 = v30 + v33;
    v35 = *(v51 + 72);
    v51 += 16;
    v44 = (v51 - 8);
    v45 = v35;
    v43 = v50 + 32;
    do
    {
      v36 = v48;
      v37 = v49;
      v46(v48, v34, v49);
      sub_1000384C8();
      sub_100038528();
      sub_1000384E8();
      sub_1000384A8();
      sub_100038108();
      (*v44)(v36, v37);
      v52 = v32;
      v39 = v32[2];
      v38 = v32[3];
      if (v39 >= v38 >> 1)
      {
        sub_10001C554((v38 > 1), v39 + 1, 1);
        v32 = v52;
      }

      v32[2] = v39 + 1;
      (*(v50 + 32))(v32 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39, v13, v47);
      v34 += v45;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  sub_10000387C(v54);
  return v32;
}

uint64_t sub_100002BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100038558();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    result = sub_1000384E8();
    if (!v17)
    {
      return result;
    }

    if (result == a2 && v17 == a3)
    {
    }

    else
    {
      v18 = sub_100038A58();

      if ((v18 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (a5)
  {
    result = sub_1000384A8();
    if (!v19)
    {
      return result;
    }

    if (result == a4 && v19 == a5)
    {
    }

    else
    {
      v20 = sub_100038A58();

      if ((v20 & 1) == 0)
      {
        return result;
      }
    }
  }

  (*(v13 + 16))(v15, a1, v12);
  swift_beginAccess();
  v21 = *(a6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_100029250(0, v21[2] + 1, 1, v21);
    *(a6 + 16) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_100029250((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  (*(v13 + 32))(v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, v15, v12);
  *(a6 + 16) = v21;
  return swift_endAccess();
}

uint64_t sub_100002E14(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1000383F8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100002ED4, 0, 0);
}

uint64_t sub_100002ED4()
{
  sub_100038358();
  v0[8] = sub_100038348();
  v6 = &_s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu + _s20LighthouseBackground12MLHostClientC8dsGetKey5group3key14deleteOnAccess15encryptionGroup10Foundation4DataVSgSS_SSSbSSSgtYaAA0cD5ErrorOYKFTjTu;
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100002FBC;
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[4];

  return (v6)(0xD000000000000026, 0x800000010003B940, v3, v4, 0, 0, 0, v2);
}

uint64_t sub_100002FBC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  if (v2)
  {
    v5 = sub_100003480;
  }

  else
  {
    v5 = sub_1000030FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000030FC()
{
  v20 = v0;
  if (v0[11] >> 60 == 15)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v1 = sub_100038598();
    sub_100003680(v1, qword_100048DC8);

    v2 = sub_100038578();
    v3 = sub_1000387C8();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[3];
      v4 = v0[4];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10001BFAC(v5, v4, &v19);
      _os_log_impl(&_mh_execute_header, v2, v3, "Got empty embedding data from KVStore with key %s, exiting early.", v6, 0xCu);
      sub_10000387C(v7);
    }

    v8 = 24;
LABEL_13:
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v9 = v0[12];
  sub_100037DB8();
  swift_allocObject();
  sub_100037DA8();
  sub_100001B40(&qword_100048198, &qword_100039178);
  sub_100003978(&qword_1000481A0, &qword_1000481A8, &protocol conformance descriptor for EmbeddingItem, &protocol conformance descriptor for <A> [A]);
  sub_100037D98();
  sub_100003910(v0[10], v0[11]);

  if (v9)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v10 = sub_100038598();
    sub_100003680(v10, qword_100048DC8);
    swift_errorRetain();
    v11 = sub_100038578();
    v12 = sub_1000387C8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Got error reading from KVStore: %@", v13, 0xCu);
      sub_100003814(v14);
    }

    v8 = 20;
    goto LABEL_13;
  }

  v16 = v0[2];
  v8 = 24;
LABEL_14:

  v17 = v0[1];

  return v17(v16, v8);
}

uint64_t sub_100003480()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_100003A14(&qword_100048188, &type metadata accessor for MLHostClientError, &protocol conformance descriptor for MLHostClientError);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v5 = sub_100038598();
  sub_100003680(v5, qword_100048DC8);
  swift_errorRetain();
  v6 = sub_100038578();
  v7 = sub_1000387C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Got error reading from KVStore: %@", v8, 0xCu);
    sub_100003814(v9);
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage, 20);
}

uint64_t sub_100003680(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000036B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_1000036D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003714(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003784()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000037BC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100003814(uint64_t a1)
{
  v2 = sub_100001B40(&qword_100048190, &qword_10003B590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000387C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000038C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003910(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003924(result, a2);
  }

  return result;
}

uint64_t sub_100003924(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100003978(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048198, &qword_100039178);
    sub_100003A14(a2, &type metadata accessor for EmbeddingItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003A5C()
{
  v0 = sub_100038598();
  sub_10001FC60(v0, qword_100048DC8);
  sub_100003680(v0, qword_100048DC8);
  return sub_100038588();
}

unint64_t ZeoliteEvalExtensionError.rawValue.getter(char a1)
{
  result = 0x656C6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 0x7075727265746E69;
      break;
    case 2:
    case 3:
      result = 0x6F4E656369766564;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 21:
    case 22:
      result = 0xD000000000000016;
      break;
    case 8:
    case 18:
      result = 0xD000000000000012;
      break;
    case 9:
    case 13:
      result = 0xD000000000000010;
      break;
    case 10:
    case 12:
    case 14:
    case 19:
      result = 0x6F5464656C696166;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100003DB8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ZeoliteEvalExtensionError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ZeoliteEvalExtensionError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100038A58();
  }

  return v8 & 1;
}

uint64_t sub_100003E40(char a1, char a2)
{
  if (qword_100039648[a1] == qword_100039648[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_100038A58();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_100003EA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x49747865746E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x64496769666E6F63;
    }

    else
    {
      v5 = 0x49747865746E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x64496D657469;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x73656369646E69;
    }

    else
    {
      v5 = 0x7365756C6176;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x64496D657469;
  v9 = 0xE700000000000000;
  v10 = 0x73656369646E69;
  if (a2 != 3)
  {
    v10 = 0x7365756C6176;
    v9 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x64496769666E6F63;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100038A58();
  }

  return v13 & 1;
}

uint64_t sub_10000401C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_100038A58();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10000418C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x736973796C616E61;
  v6 = 0x636E657265666E69;
  v7 = 0xE900000000000065;
  if (a1 != 4)
  {
    v6 = 0x617A696E656B6F74;
    v7 = 0xEC0000006E6F6974;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6465626D65;
  if (a1 != 1)
  {
    v8 = 0x65726F6373;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x74636172747865;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x736973796C616E61)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x636E657265666E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEC0000006E6F6974;
      if (v9 != 0x617A696E656B6F74)
      {
LABEL_34:
        v12 = sub_100038A58();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE500000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x6465626D65)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x65726F6373)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x74636172747865)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

Swift::Int sub_100004378()
{
  v1 = *v0;
  sub_100038AF8();
  ZeoliteEvalExtensionError.rawValue.getter(v1);
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_1000043DC(uint64_t a1)
{
  ZeoliteEvalExtensionError.rawValue.getter(*v1);
  sub_100038678();
}

Swift::Int sub_100004430(uint64_t a1)
{
  v2 = *v1;
  sub_100038AF8();
  ZeoliteEvalExtensionError.rawValue.getter(v2);
  sub_100038678();

  return sub_100038B18();
}

unint64_t sub_100004490@<X0>(Swift::String *a1@<X0>, ZeoliteEvalExtension::ZeoliteEvalExtensionError_optional *a2@<X8>)
{
  result = _s20ZeoliteEvalExtension0abC5ErrorO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1000044C0@<X0>(unint64_t *a1@<X8>)
{
  result = ZeoliteEvalExtensionError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ZeoliteEvalExtensionStates.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7472617473;
  v2 = 0x737365636F7270;
  v3 = 0x64616F6C7075;
  if (a1 != 3)
  {
    v3 = 0x64656873696E6966;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1684107116;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000045A4()
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100004678(uint64_t a1)
{
  sub_100038678();
}

Swift::Int sub_100004738(uint64_t a1)
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

unint64_t sub_100004808@<X0>(Swift::String *a1@<X0>, ZeoliteEvalExtension::ZeoliteEvalExtensionStates_optional *a2@<X8>)
{
  result = _s20ZeoliteEvalExtension0abC6StatesO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_100004838(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xE700000000000000;
  v6 = 0x737365636F7270;
  v7 = 0xE600000000000000;
  v8 = 0x64616F6C7075;
  if (v2 != 3)
  {
    v8 = 0x64656873696E6966;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684107116;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000048D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v2[5] = swift_task_alloc();
  sub_100001B40(&qword_1000482E8, &qword_100039550);
  v2[6] = swift_task_alloc();
  v3 = sub_100001B40(&qword_100048210, qword_100039480);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100004A18, 0, 0);
}

uint64_t sub_100004A18()
{
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_100038638();
  v3 = [v1 initWithSuiteName:v2];
  v0[11] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[12] = v4;
    v5 = type metadata accessor for ZeoliteEvalExtension(0);
    v6 = sub_10001FAA0(&qword_1000482C0, type metadata accessor for ZeoliteEvalExtension, &unk_1000394A0);
    v7 = sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F98);
    v8 = sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F70);
    *v4 = v0;
    v4[1] = sub_100004C50;
    v9 = v0[6];
    v10 = v0[4];
    v11 = v0[2];

    return MLHostExtension.loadConfig<A>(context:)(v9, v11, v5, v10, v6, v7, v8);
  }

  else
  {
    v12 = objc_allocWithZone(sub_100038388());
    v13 = sub_100038378();

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_100004C50()
{

  return _swift_task_switch(sub_100004D4C, 0, 0);
}

id sub_100004D4C()
{
  v70 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(v0[10], v3, v1);
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v14 = sub_100038598();
    sub_100003680(v14, qword_100048DC8);
    (*(v12 + 16))(v11, v10, v13);
    v15 = sub_100038578();
    v16 = sub_1000387A8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[7];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67[0] = v66;
      *v21 = 136315138;
      sub_10001F82C(&qword_100048328, &qword_100048210, qword_100039480, &protocol conformance descriptor for MLHostParameters<A>);
      v22 = sub_100038A38();
      v24 = v23;
      v25 = *(v18 + 8);
      v25(v19, v20);
      v26 = sub_10001BFAC(v22, v24, v67);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Configuration: %s", v21, 0xCu);
      sub_10000387C(v66);
    }

    else
    {

      v25 = *(v18 + 8);
      v25(v19, v20);
    }

    v27 = sub_100038578();
    v28 = sub_1000387A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      result = [objc_opt_self() sharedConnection];
      if (!result)
      {
        __break(1u);
        goto LABEL_30;
      }

      v31 = result;
      v32 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

      *(v29 + 4) = v32 == 1;
      _os_log_impl(&_mh_execute_header, v27, v28, "D&U enabled: %{BOOL}d", v29, 8u);
    }

    v33 = v0[11];

    v34 = v33;
    v35 = sub_100038578();
    v36 = sub_1000387B8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[11];
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 67109120;
      v40 = sub_100038638();
      v41 = [v38 BOOLForKey:v40];

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Opt-In enabled: %{BOOL}d", v39, 8u);
    }

    else
    {
    }

    v42 = v0[5];
    sub_1000383C8();
    v43 = sub_10001EB18(v42);
    sub_10001EA9C(v42, type metadata accessor for ZeoliteEvalExtensionConfig);
    if ((v43 & 1) == 0)
    {
      v51 = sub_100038578();
      v52 = sub_1000387A8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Skip the execution based on the retrieved state.", v53, 2u);
      }

      v46 = v0[10];
      v47 = v0[11];
      v48 = v0[7];

      v68 = &type metadata for ZeoliteEvalExtensionError;
      v69 = sub_10001E9E0(v54, v55, v56);
      v57 = 4;
      goto LABEL_24;
    }

    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v44 = result;
      v45 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

      if (v45 == 1)
      {
        v46 = v0[10];
        v47 = v0[11];
        v48 = v0[7];
        v49 = objc_allocWithZone(sub_100038388());
        v50 = sub_100038378();
LABEL_25:
        v9 = v50;

        v25(v46, v48);
        goto LABEL_26;
      }

      v58 = sub_100038578();
      v59 = sub_1000387A8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Device is not DNU enabled. Skipping execution.", v60, 2u);
      }

      v46 = v0[10];
      v47 = v0[11];
      v48 = v0[7];

      v68 = &type metadata for ZeoliteEvalExtensionError;
      v69 = sub_10001E9E0(v61, v62, v63);
      v57 = 2;
LABEL_24:
      LOBYTE(v67[0]) = v57;
      v64 = objc_allocWithZone(sub_100038388());
      v50 = sub_100038368();
      goto LABEL_25;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  v4 = v0[11];
  v5 = sub_10001FD94(v3, &qword_1000482E8, &qword_100039550);
  v68 = &type metadata for ZeoliteEvalExtensionError;
  v69 = sub_10001E9E0(v5, v6, v7);
  LOBYTE(v67[0]) = 5;
  v8 = objc_allocWithZone(sub_100038388());
  v9 = sub_100038368();

LABEL_26:

  v65 = v0[1];

  return v65(v9);
}

uint64_t sub_100005420(uint64_t a1)
{
  v2[184] = v1;
  v2[183] = a1;
  v3 = type metadata accessor for ExecutionState(0);
  v2[185] = v3;
  v2[186] = *(v3 - 8);
  v2[187] = swift_task_alloc();
  v4 = sub_100038138();
  v2[188] = v4;
  v2[189] = *(v4 - 8);
  v2[190] = swift_task_alloc();
  v5 = sub_100037F08();
  v2[191] = v5;
  v2[192] = *(v5 - 8);
  v2[193] = swift_task_alloc();
  v2[194] = swift_task_alloc();
  v2[195] = swift_task_alloc();
  sub_100001B40(&qword_1000482C8, &qword_100039528);
  v2[196] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v6 = sub_100037E18();
  v2[198] = v6;
  v2[199] = *(v6 - 8);
  v2[200] = swift_task_alloc();
  v7 = sub_100038178();
  v2[201] = v7;
  v2[202] = *(v7 - 8);
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  sub_100001B40(&qword_100048178, &unk_100039530);
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v2[207] = swift_task_alloc();
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  sub_100001B40(&qword_1000482D0, &unk_100039900);
  v2[214] = swift_task_alloc();
  v8 = type metadata accessor for EmbedParameters(0);
  v2[215] = v8;
  v2[216] = *(v8 - 8);
  v2[217] = swift_task_alloc();
  v9 = sub_100038888();
  v2[218] = v9;
  v2[219] = *(v9 - 8);
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v10 = sub_100037E68();
  v2[222] = v10;
  v2[223] = *(v10 - 8);
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();
  v2[226] = swift_task_alloc();
  sub_100001B40(&qword_1000482D8, &qword_100039540);
  v2[227] = swift_task_alloc();
  v11 = sub_100038468();
  v2[228] = v11;
  v2[229] = *(v11 - 8);
  v2[230] = swift_task_alloc();
  v12 = sub_100038428();
  v2[231] = v12;
  v2[232] = *(v12 - 8);
  v2[233] = swift_task_alloc();
  v2[234] = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v2[235] = swift_task_alloc();
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = sub_100001B40(&qword_1000482E0, &qword_100039548);
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  sub_100001B40(&qword_1000482E8, &qword_100039550);
  v2[251] = swift_task_alloc();
  v13 = sub_100001B40(&qword_100048210, qword_100039480);
  v2[252] = v13;
  v2[253] = *(v13 - 8);
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();

  return _swift_task_switch(sub_100005B80, 0, 0);
}

uint64_t sub_100005B80()
{
  *(v0 + 2064) = **(v0 + 1472);
  *(v0 + 2589) = 0;
  sub_100038338();
  sub_10001FAA0(&qword_1000482F0, &type metadata accessor for LedgerClient, &protocol conformance descriptor for LedgerClient);
  v2 = sub_100038738();
  *(v0 + 2072) = v2;
  *(v0 + 2080) = v1;

  return _swift_task_switch(sub_100005C48, v2, v1);
}

uint64_t sub_100005C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 2088) = sub_10001E834(a1, a2, a3);
  sub_100038318();

  return _swift_task_switch(sub_100005CD0, 0, 0);
}

uint64_t sub_100005CD0()
{
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v1 = v0[183];
  v2 = sub_100038598();
  v0[262] = sub_100003680(v2, qword_100048DC8);
  v3 = v1;
  v4 = sub_100038578();
  v5 = sub_1000387A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[183];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_10001FD94(v8, &qword_100048190, &qword_10003B590);
  }

  v10 = swift_task_alloc();
  v0[263] = v10;
  v11 = type metadata accessor for ZeoliteEvalExtension(0);
  v0[264] = v11;
  v12 = sub_10001FAA0(&qword_1000482C0, type metadata accessor for ZeoliteEvalExtension, &unk_1000394A0);
  v13 = sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F98);
  v14 = sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig, &unk_100039F70);
  *v10 = v0;
  v10[1] = sub_100005F54;
  v15 = v0[251];
  v16 = v0[234];
  v17 = v0[183];

  return MLHostExtension.loadConfig<A>(context:)(v15, v17, v11, v16, v12, v13, v14);
}

uint64_t sub_100005F54()
{

  return _swift_task_switch(sub_100006050, 0, 0);
}

uint64_t sub_100006050()
{
  v275 = v0;
  v1 = *(v0 + 2024);
  v2 = *(v0 + 2016);
  v3 = *(v0 + 2008);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v5 = *(v1 + 16);
    v6 = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(*(v0 + 2056), *(v0 + 1472) + *(*(v0 + 2112) + 20), v2);
    if (v4(v3, 1, v2) != 1)
    {
      sub_10001FD94(*(v0 + 2008), &qword_1000482E8, &qword_100039550);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 2056), v3, v2);
    v5 = *(v1 + 16);
    v6 = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  *(v0 + 2120) = v5;
  v7 = *(v0 + 2056);
  v8 = *(v0 + 2048);
  v9 = *(v0 + 2016);
  *(v0 + 2128) = v6;
  v5(v8, v7, v9);
  v10 = sub_100038578();
  v11 = sub_1000387A8();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 2048);
  v14 = *(v0 + 2024);
  v15 = *(v0 + 2016);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v273 = v17;
    *v16 = 136315138;
    sub_10001F82C(&qword_100048328, &qword_100048210, qword_100039480, &protocol conformance descriptor for MLHostParameters<A>);
    v18 = sub_100038A38();
    v20 = v19;
    v21 = v15;
    v22 = *(v14 + 8);
    v22(v13, v21);
    v23 = sub_10001BFAC(v18, v20, &v273);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Configuration: %s", v16, 0xCu);
    sub_10000387C(v17);
  }

  else
  {

    v24 = v15;
    v22 = *(v14 + 8);
    v22(v13, v24);
  }

  *(v0 + 2136) = v22;
  v25 = objc_allocWithZone(NSUserDefaults);
  v26 = sub_100038638();
  v27 = [v25 initWithSuiteName:v26];
  *(v0 + 2144) = v27;

  if (v27)
  {
    v28 = *(v0 + 1976);
    (*(*(v0 + 1488) + 56))(*(v0 + 2000), 1, 1, *(v0 + 1480));
    sub_1000383C8();
    v273 = 0x6769666E6F63;
    v274 = 0xE600000000000000;
    *(v0 + 1440) = *v28;
    v277._countAndFlagsBits = sub_100038A38();
    sub_100038698(v277);

    sub_10001EA9C(v28, type metadata accessor for ZeoliteEvalExtensionConfig);
    v29 = sub_100038638();

    v30 = [v27 dictionaryForKey:v29];

    if (v30)
    {
      v31 = *(v0 + 2000);
      v32 = *(v0 + 1992);
      v33 = sub_1000385F8();

      sub_100023468(v33, v32);
      sub_10001F7BC(v32, v31);
    }

    v34 = sub_100038578();
    v35 = sub_1000387B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 2000);
      v37 = *(v0 + 1992);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v273 = v39;
      *v38 = 136315138;
      swift_beginAccess();
      sub_10001FA38(v36, v37, &qword_1000482E0, &qword_100039548);
      v40 = sub_1000387E8();
      v42 = v41;
      sub_10001FD94(v37, &qword_1000482E0, &qword_100039548);
      v43 = sub_10001BFAC(v40, v42, &v273);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Execution state: %s", v38, 0xCu);
      sub_10000387C(v39);
    }

    v44 = *(v0 + 1856);
    v268 = *(v0 + 1848);
    v45 = *(v0 + 1840);
    v46 = *(v0 + 1832);
    v47 = *(v0 + 1824);
    v48 = *(v0 + 1816);
    v49 = sub_100038438();
    v51 = v50;
    v266 = v49;
    *(v0 + 2152) = v49;
    *(v0 + 2160) = v50;
    sub_1000383D8();
    sub_100038458();
    (*(v46 + 8))(v45, v47);
    if ((*(v44 + 48))(v48, 1, v268) == 1)
    {
      sub_10001FD94(*(v0 + 1816), &qword_1000482D8, &qword_100039540);
      *(v0 + 2216) = 0;
      *(v0 + 2208) = v51;
      *(v0 + 2200) = v266;
      v52 = *(v0 + 1968);
      sub_100038868();
      sub_1000383C8();
      v53 = *(v52 + 40);
      v54 = *(v52 + 56);
      v55 = *(v52 + 88);
      *(v0 + 416) = *(v52 + 72);
      *(v0 + 432) = v55;
      *(v0 + 384) = v53;
      *(v0 + 400) = v54;
      v56 = *(v52 + 104);
      v57 = *(v52 + 120);
      v58 = *(v52 + 152);
      *(v0 + 480) = *(v52 + 136);
      *(v0 + 496) = v58;
      *(v0 + 448) = v56;
      *(v0 + 464) = v57;
      v59 = *(v52 + 168);
      v60 = *(v52 + 184);
      v61 = *(v52 + 200);
      *(v0 + 560) = *(v52 + 216);
      *(v0 + 528) = v60;
      *(v0 + 544) = v61;
      *(v0 + 512) = v59;
      sub_10001FA38(v0 + 384, v0 + 568, &qword_100048300, &qword_100039558);
      sub_10001EA9C(v52, type metadata accessor for ZeoliteEvalExtensionConfig);
      v62 = *(v0 + 528);
      *(v0 + 328) = *(v0 + 512);
      *(v0 + 344) = v62;
      *(v0 + 360) = *(v0 + 544);
      *(v0 + 376) = *(v0 + 560);
      v63 = *(v0 + 464);
      *(v0 + 264) = *(v0 + 448);
      *(v0 + 280) = v63;
      v64 = *(v0 + 496);
      *(v0 + 296) = *(v0 + 480);
      *(v0 + 312) = v64;
      v65 = *(v0 + 400);
      *(v0 + 200) = *(v0 + 384);
      *(v0 + 216) = v65;
      v66 = *(v0 + 432);
      *(v0 + 232) = *(v0 + 416);
      *(v0 + 248) = v66;
      if (sub_10001E888(v0 + 200) == 1)
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = xmmword_1000391C0;
        v71 = 0uLL;
        v72 = xmmword_1000391D0;
        v73 = 3;
        v74 = 1;
        v75 = 0uLL;
        v76 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v79 = 0uLL;
        v80 = 0uLL;
      }

      else
      {
        v73 = *(v0 + 384);
        v67 = *(v0 + 392);
        v78 = *(v0 + 400);
        v79 = *(v0 + 416);
        v70 = *(v0 + 432);
        v80 = *(v0 + 448);
        v68 = *(v0 + 464);
        v69 = *(v0 + 472);
        v71 = *(v0 + 480);
        v72 = *(v0 + 496);
        v75 = *(v0 + 512);
        v76 = *(v0 + 528);
        v77 = *(v0 + 544);
        v74 = *(v0 + 560);
      }

      *(v0 + 2591) = v73;
      v98 = *(v0 + 1960);
      v99 = *(v0 + 1872);
      v100 = *(v0 + 1728);
      v101 = *(v0 + 1720);
      v102 = *(v0 + 1712);
      *(v0 + 752) = v73;
      *(v0 + 760) = v67;
      *(v0 + 768) = v78;
      *(v0 + 784) = v79;
      *(v0 + 800) = v70;
      *(v0 + 816) = v80;
      *(v0 + 832) = v68;
      *(v0 + 840) = v69;
      *(v0 + 848) = v71;
      *(v0 + 864) = v72;
      *(v0 + 880) = v75;
      *(v0 + 896) = v76;
      *(v0 + 912) = v77;
      *(v0 + 928) = v74;
      v103 = *(v0 + 752);
      v104 = *(v0 + 768);
      v105 = *(v0 + 800);
      *(v0 + 48) = *(v0 + 784);
      *(v0 + 64) = v105;
      *(v0 + 16) = v103;
      *(v0 + 32) = v104;
      v106 = *(v0 + 816);
      v107 = *(v0 + 832);
      v108 = *(v0 + 864);
      *(v0 + 112) = *(v0 + 848);
      *(v0 + 128) = v108;
      *(v0 + 80) = v106;
      *(v0 + 96) = v107;
      v109 = *(v0 + 896);
      *(v0 + 144) = *(v0 + 880);
      *(v0 + 160) = v109;
      *(v0 + 176) = *(v0 + 912);
      *(v0 + 192) = *(v0 + 928);
      sub_1000383C8();
      sub_10001FA38(v98 + *(v99 + 40), v102, &qword_1000482D0, &unk_100039900);
      sub_10001EA9C(v98, type metadata accessor for ZeoliteEvalExtensionConfig);
      v110 = *(v100 + 48);
      v111 = v110(v102, 1, v101);
      v112 = *(v0 + 1736);
      if (v111 == 1)
      {
        v113 = *(v0 + 1720);
        v114 = *(v0 + 1712);
        *v112 = 0;
        v115 = v113[5];
        v116 = enum case for EmbedderName.MADTextEmbedder(_:);
        v117 = sub_100037FC8();
        (*(*(v117 - 8) + 104))(&v112[v115], v116, v117);
        v118 = &v112[v113[6]];
        *v118 = 0;
        v118[1] = 0;
        v119 = &v112[v113[7]];
        *v119 = 0;
        v119[1] = 0;
        if (v110(v114, 1, v113) != 1)
        {
          sub_10001FD94(*(v0 + 1712), &qword_1000482D0, &unk_100039900);
        }
      }

      else
      {
        sub_10001FD2C(*(v0 + 1712), v112, type metadata accessor for EmbedParameters);
      }

      v120 = (v0 + 936);
      v121 = *(v0 + 1952);
      v122 = *(v0 + 1872);
      sub_1000383C8();
      v123 = v121 + *(v122 + 44);
      v124 = *(v123 + 16);
      *(v0 + 1112) = *v123;
      *(v0 + 1128) = v124;
      v125 = *(v123 + 32);
      v126 = *(v123 + 48);
      v127 = *(v123 + 64);
      *(v0 + 1192) = *(v123 + 80);
      *(v0 + 1160) = v126;
      *(v0 + 1176) = v127;
      *(v0 + 1144) = v125;
      sub_10001FA38(v0 + 1112, v0 + 1200, &qword_100048308, &qword_100039560);
      sub_10001EA9C(v121, type metadata accessor for ZeoliteEvalExtensionConfig);
      v128 = *(v0 + 1136);
      if (v128 == 1)
      {
        v129 = 0;
        v130 = 0;
        v128 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0uLL;
        v134 = 3;
        v135 = 0uLL;
        v136 = 10;
      }

      else
      {
        v129 = *(v0 + 1112);
        v136 = *(v0 + 1120);
        v130 = *(v0 + 1128);
        v134 = *(v0 + 1144);
        v131 = *(v0 + 1152);
        v132 = *(v0 + 1160);
        v133 = *(v0 + 1168);
        v135 = *(v0 + 1184);
      }

      *(v0 + 2248) = v132;
      *(v0 + 2240) = v131;
      *(v0 + 2593) = v134;
      *(v0 + 2232) = v128;
      *(v0 + 2224) = v130;
      *(v0 + 2592) = v129;
      v137 = *(v0 + 1944);
      v138 = *(v0 + 1936);
      v139 = *(v0 + 1872);
      *(v0 + 936) = v129;
      *(v0 + 944) = v136;
      *(v0 + 952) = v130;
      *(v0 + 960) = v128;
      *(v0 + 968) = v134;
      *(v0 + 976) = v131;
      *(v0 + 984) = v132;
      *(v0 + 992) = v133;
      *(v0 + 1008) = v135;
      v140 = *(v0 + 984);
      *(v0 + 1056) = *(v0 + 968);
      *(v0 + 1072) = v140;
      v141 = *(v0 + 952);
      *(v0 + 1024) = *v120;
      *(v0 + 1040) = v141;
      *(v0 + 1088) = *(v0 + 1000);
      *(v0 + 1104) = *(v0 + 1016);
      sub_1000383C8();
      *(v0 + 2580) = *(v137 + *(v139 + 48));
      sub_10001EA9C(v137, type metadata accessor for ZeoliteEvalExtensionConfig);
      sub_1000383C8();
      v142 = (v138 + *(v139 + 52));
      v144 = *v142;
      v143 = v142[1];
      v145 = v142[2];
      v146 = v142[3];
      sub_10001E8AC(*v142, v143, v145, v146);
      sub_10001EA9C(v138, type metadata accessor for ZeoliteEvalExtensionConfig);
      if (!v143)
      {
        v143 = 0x800000010003B990;
        v146 = 0x800000010003B9C0;
        v145 = 0xD000000000000028;
        v144 = 0xD00000000000002FLL;
      }

      *(v0 + 2280) = v146;
      *(v0 + 2272) = v145;
      *(v0 + 2264) = v143;
      *(v0 + 2256) = v144;
      v147 = *(v0 + 1928);
      v148 = *(v0 + 1872);
      sub_1000383C8();
      v149 = v147 + *(v148 + 56);
      v150 = *v149;
      v151 = *(v149 + 8);
      v152 = *(v149 + 16);
      v153 = *(v149 + 24);
      v154 = *(v149 + 32);
      v155 = *(v149 + 40);
      sub_10001E8F0(*v149, v151, v152, v153);
      sub_10001EA9C(v147, type metadata accessor for ZeoliteEvalExtensionConfig);
      if (v151 == 1)
      {
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 1;
      }

      *(v0 + 2594) = v155 & 1;
      *(v0 + 2320) = v154;
      *(v0 + 2312) = v153;
      *(v0 + 2304) = v152;
      *(v0 + 2296) = v151;
      *(v0 + 2288) = v150;
      v156 = *(v0 + 1920);
      v157 = *(v0 + 1704);
      v158 = *(v0 + 1536);
      v159 = *(v0 + 1528);
      *(v0 + 2595) = **(v0 + 1736);
      v160 = *(v158 + 56);
      *(v0 + 2328) = v160;
      *(v0 + 2336) = (v158 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v160(v157, 1, 1, v159);
      sub_1000383C8();
      v161 = *(v156 + 32);

      sub_10001EA9C(v156, type metadata accessor for ZeoliteEvalExtensionConfig);
      v162 = *(v161 + 16);
      v163 = (v161 + 32);
      while (v162)
      {
        v165 = *v163;
        if (v165 <= 2 && v165 != 1 && v165 != 2)
        {

LABEL_64:

          *(v0 + 2582) = 1;
          v184 = *(v0 + 2080);
          v185 = *(v0 + 2072);
          v186 = sub_100009BFC;
          goto LABEL_111;
        }

        v164 = sub_100038A58();

        ++v163;
        --v162;
        if (v164)
        {
          goto LABEL_64;
        }
      }

      *(v0 + 2360) = 0;
      v166 = *(v0 + 1912);
      sub_1000383C8();
      v167 = *(v166 + 32);

      sub_10001EA9C(v166, type metadata accessor for ZeoliteEvalExtensionConfig);
      v168 = *(v167 + 16);
      v169 = (v167 + 32);
      while (v168)
      {
        v171 = *v169;
        if (v171 >= 4 && v171 != 5)
        {

LABEL_71:

          *(v0 + 2590) = 2;
          v184 = *(v0 + 2080);
          v185 = *(v0 + 2072);
          v186 = sub_10000B574;
          goto LABEL_111;
        }

        v170 = sub_100038A58();

        ++v169;
        --v168;
        if (v170)
        {
          goto LABEL_71;
        }
      }

      v172 = *(v0 + 1904);
      sub_1000383C8();
      v173 = *(v172 + 32);

      sub_10001EA9C(v172, type metadata accessor for ZeoliteEvalExtensionConfig);
      v174 = *(v173 + 16);
      v175 = (v173 + 32);
      while (v174)
      {
        v177 = *v175;
        if (v177 > 4)
        {

LABEL_75:

          *(v0 + 2583) = 2;
          v184 = *(v0 + 2080);
          v185 = *(v0 + 2072);
          v186 = sub_10000E8A4;
          goto LABEL_111;
        }

        v176 = sub_100038A58();

        ++v175;
        --v174;
        if (v176)
        {
          goto LABEL_75;
        }
      }

      v178 = *(v0 + 1896);
      sub_1000383C8();
      v179 = *(v178 + 32);

      sub_10001EA9C(v178, type metadata accessor for ZeoliteEvalExtensionConfig);
      v180 = *(v179 + 16);
      v181 = (v179 + 32);
      while (v180)
      {
        v183 = *v181;
        if (v183 <= 2 && *v181 && v183 != 2)
        {

LABEL_79:

          *(v0 + 2584) = 2;
          v184 = *(v0 + 2080);
          v185 = *(v0 + 2072);
          v186 = sub_1000102D4;
          goto LABEL_111;
        }

        v182 = sub_100038A58();

        ++v181;
        --v180;
        if (v182)
        {
          goto LABEL_79;
        }
      }

      sub_10001E938(v0 + 752);

      *(v0 + 2480) = 0;
      v187 = *(v0 + 1888);
      (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
      sub_1000383C8();
      v188 = *(v187 + 32);

      sub_10001EA9C(v187, type metadata accessor for ZeoliteEvalExtensionConfig);
      v189 = *(v188 + 16);
      v190 = (v188 + 32);
      while (v189)
      {
        v192 = *v190;
        if (v192 == 2)
        {

LABEL_81:
          v200 = *(v0 + 2592);

          if (v200 == 3)
          {
            v201 = 0;
          }

          else
          {
            v201 = v200;
          }

          if (v201 == 1)
          {
            goto LABEL_99;
          }

          v202 = sub_100038A58();

          if ((v202 & 1) == 0)
          {
            v203 = *(v0 + 2592);
            if (v203 == 3)
            {
              v203 = 0;
            }

            if (v203 <= 1)
            {
              v233 = sub_100038A58();

              if ((v233 & 1) == 0)
              {
                *(v0 + 2504) = 0;
                *(v0 + 2585) = 2;
                v184 = *(v0 + 2080);
                v185 = *(v0 + 2072);
                v186 = sub_10001416C;
                goto LABEL_111;
              }

              goto LABEL_100;
            }

LABEL_99:
          }

LABEL_100:
          v234 = *(v0 + 2000);
          v235 = *(v0 + 1488);
          v236 = *(v0 + 1480);
          sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
          swift_beginAccess();
          if ((*(v235 + 48))(v234, 1, v236))
          {
            (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
          }

          else
          {
            sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
          }

          v237 = *(v0 + 1672);
          v238 = *(v0 + 1656);
          v239 = *(v0 + 1536);
          v240 = *(v0 + 1528);
          sub_10001EA34(*(v0 + 1664), v237, &qword_100048178, &unk_100039530);
          sub_10001FA38(v237, v238, &qword_100048178, &unk_100039530);
          if ((*(v239 + 48))(v238, 1, v240) == 1)
          {
            sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
            v241 = sub_100038578();
            v242 = sub_1000387A8();
            if (os_log_type_enabled(v241, v242))
            {
              v243 = swift_slowAlloc();
              *v243 = 0;
              _os_log_impl(&_mh_execute_header, v241, v242, "Query for all available embeddings.", v243, 2u);
            }
          }

          else
          {
            v244 = *(v0 + 1560);
            v245 = *(v0 + 1552);
            v246 = *(v0 + 1544);
            v247 = *(v0 + 1536);
            v248 = *(v0 + 1528);
            (*(v247 + 32))(v244, *(v0 + 1656), v248);
            v249 = *(v247 + 16);
            v249(v245, v244, v248);
            v249(v246, v245, v248);
            v250 = *(v247 + 8);
            v250(v245, v248);
            v251 = sub_100038578();
            v252 = sub_1000387A8();
            v253 = os_log_type_enabled(v251, v252);
            v254 = *(v0 + 1560);
            v255 = *(v0 + 1544);
            v256 = *(v0 + 1528);
            if (v253)
            {
              v265 = v250;
              v257 = swift_slowAlloc();
              v271 = v254;
              v258 = swift_slowAlloc();
              v273 = v258;
              *v257 = 136315138;
              v259 = sub_100037EA8();
              v261 = v260;
              v265(v255, v256);
              v262 = sub_10001BFAC(v259, v261, &v273);

              *(v257 + 4) = v262;
              _os_log_impl(&_mh_execute_header, v251, v252, "Last queried: %s", v257, 0xCu);
              sub_10000387C(v258);

              v265(v271, v256);
            }

            else
            {

              v250(v255, v256);
              v250(v254, v256);
            }
          }

          *(v0 + 2588) = 1;
          v184 = *(v0 + 2080);
          v185 = *(v0 + 2072);
          v186 = sub_100013090;
          goto LABEL_111;
        }

        v191 = sub_100038A58();

        ++v190;
        --v189;
        if (v191)
        {
          goto LABEL_81;
        }
      }

      sub_10001E98C(v120);

      *(v0 + 2528) = 0u;
      v193 = *(v0 + 1976);
      sub_1000383C8();
      v194 = *(v193 + 32);

      sub_10001EA9C(v193, type metadata accessor for ZeoliteEvalExtensionConfig);
      LOBYTE(v193) = sub_100015E04(3u, v194);

      if (v193)
      {
        *(v0 + 2587) = 2;
        v184 = *(v0 + 2080);
        v185 = *(v0 + 2072);
        v186 = sub_100014D64;
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v195 = *(v0 + 1704);
        v196 = *(v0 + 1672);
        v197 = *(v0 + 1496);
        v198 = *(v0 + 1480);
        sub_100037EF8();
        sub_10001FA38(v196, v197 + *(v198 + 20), &qword_100048178, &unk_100039530);
        sub_10001FA38(v195, v197 + *(v198 + 24), &qword_100048178, &unk_100039530);
        if (sub_100023AF0())
        {
          v199.super.isa = sub_1000385E8().super.isa;
        }

        else
        {
          v199.super.isa = 0;
        }

        v204 = *(v0 + 2120);
        v205 = *(v0 + 2056);
        v206 = *(v0 + 2040);
        v263 = *(v0 + 2144);
        v264 = *(v0 + 2032);
        v207 = *(v0 + 2024);
        v208 = *(v0 + 2016);
        v209 = *(v0 + 1976);
        sub_1000383C8();
        v273 = 0x6769666E6F63;
        v274 = 0xE600000000000000;
        *(v0 + 1448) = *v209;
        v278._countAndFlagsBits = sub_100038A38();
        sub_100038698(v278);

        sub_10001EA9C(v209, type metadata accessor for ZeoliteEvalExtensionConfig);
        v210 = sub_100038638();

        [v263 setValue:v199.super.isa forKey:v210];

        swift_unknownObjectRelease();
        v204(v206, v205, v208);
        v204(v264, v206, v208);
        v211 = *(v207 + 8);
        *(v0 + 2544) = v211;
        *(v0 + 2552) = (v207 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v211(v206, v208);
        v212 = sub_100038578();
        v213 = sub_1000387A8();
        v214 = os_log_type_enabled(v212, v213);
        v215 = *(v0 + 2032);
        v216 = *(v0 + 2016);
        if (v214)
        {
          v217 = *(v0 + 1976);
          v218 = swift_slowAlloc();
          v270 = swift_slowAlloc();
          v272 = v270;
          *v218 = 136315138;
          v267 = v213;
          sub_1000383C8();
          v273 = 0x6769666E6F63;
          v274 = 0xE600000000000000;
          *(v0 + 1456) = *v217;
          v279._countAndFlagsBits = sub_100038A38();
          sub_100038698(v279);

          v219 = v273;
          v220 = v274;
          sub_10001EA9C(v217, type metadata accessor for ZeoliteEvalExtensionConfig);
          v211(v215, v216);
          v221 = sub_10001BFAC(v219, v220, &v272);

          *(v218 + 4) = v221;
          _os_log_impl(&_mh_execute_header, v212, v267, "Execution state saved for %s.", v218, 0xCu);
          sub_10000387C(v270);
        }

        else
        {

          v211(v215, v216);
        }

        v222 = *(v0 + 1760);
        v223 = *(v0 + 1752);
        v224 = *(v0 + 1744);
        sub_100038868();
        sub_100038878();
        v225 = *(v223 + 8);
        *(v0 + 2560) = v225;
        *(v0 + 2568) = (v223 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v225(v222, v224);
        v226 = sub_100038578();
        v227 = sub_1000387A8();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v273 = v229;
          *v228 = 136315138;
          v230 = sub_100038B78();
          v232 = sub_10001BFAC(v230, v231, &v273);

          *(v228 + 4) = v232;
          _os_log_impl(&_mh_execute_header, v226, v227, "Time elapsed: %s.", v228, 0xCu);
          sub_10000387C(v229);
        }

        *(v0 + 2586) = 4;
        v184 = *(v0 + 2080);
        v185 = *(v0 + 2072);
        v186 = sub_100015958;
      }

LABEL_111:

      return _swift_task_switch(v186, v185, v184);
    }

    else
    {
      (*(*(v0 + 1856) + 32))(*(v0 + 1864), *(v0 + 1816), *(v0 + 1848));
      sub_100038308();
      v90 = sub_100038418();
      v92 = v91;
      *(v0 + 2168) = v91;
      v93 = sub_100038408();
      v95 = v94;
      *(v0 + 2176) = v94;
      v96 = swift_task_alloc();
      *(v0 + 2184) = v96;
      *v96 = v0;
      v96[1] = sub_1000081A8;
      v97 = *(v0 + 1464);

      return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v97, v90, v92, v93, v95);
    }
  }

  else
  {
    v81 = sub_100038578();
    v82 = sub_1000387C8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v273 = v84;
      *v83 = 136315138;
      *(v83 + 4) = sub_10001BFAC(0xD000000000000011, 0x800000010003B970, &v273);
      _os_log_impl(&_mh_execute_header, v81, v82, "Failed to fetch suite %s from user defaults.", v83, 0xCu);
      sub_10000387C(v84);
    }

    v85 = *(v0 + 2056);
    v86 = *(v0 + 2016);
    v87 = objc_allocWithZone(sub_100038388());
    v269 = sub_100038378();
    v22(v85, v86);

    v88 = *(v0 + 8);

    return v88(v269);
  }
}

uint64_t sub_1000081A8(uint64_t a1)
{
  *(*v1 + 2192) = a1;

  return _swift_task_switch(sub_1000082E4, 0, 0);
}

uint64_t sub_1000082E4()
{
  v228 = v0;
  v1 = (v0 + 384);
  v2 = *(v0 + 2192);
  (*(*(v0 + 1856) + 8))(*(v0 + 1864), *(v0 + 1848));
  if (v2)
  {
    v3 = *(v0 + 2192);
    swift_retain_n();

    v4 = sub_100038578();
    v5 = sub_1000387A8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1808);
      v7 = *(v0 + 1784);
      v8 = *(v0 + 1776);
      buf = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v226 = v222;
      *buf = 136315138;
      v220 = v5;
      sub_1000382F8();
      sub_10001FAA0(&qword_100048320, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v9 = v8;
      v10 = sub_100038A38();
      v12 = v11;
      (*(v7 + 8))(v6, v9);
      v13 = sub_10001BFAC(v10, v12, &v226);

      *(buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v220, "autoAsset available: %s", buf, 0xCu);
      sub_10000387C(v222);
    }

    v14 = *(v0 + 1808);
    v15 = *(v0 + 1800);
    v16 = *(v0 + 1784);
    v17 = *(v0 + 1776);
    sub_1000382F8();
    sub_100037E08();
    v18 = *(v16 + 8);
    v18(v14, v17);
    v19 = sub_100037E38(1);
    v21 = v20;

    v18(v15, v17);
  }

  else
  {
    v3 = 0;
    v21 = *(v0 + 2160);
    v19 = *(v0 + 2152);
  }

  *(v0 + 2216) = v3;
  *(v0 + 2208) = v21;
  *(v0 + 2200) = v19;
  v22 = *(v0 + 1968);
  sub_100038868();
  sub_1000383C8();
  v23 = *(v22 + 40);
  v24 = *(v22 + 56);
  v25 = *(v22 + 88);
  *(v0 + 416) = *(v22 + 72);
  *(v0 + 432) = v25;
  *v1 = v23;
  *(v0 + 400) = v24;
  v26 = *(v22 + 104);
  v27 = *(v22 + 120);
  v28 = *(v22 + 152);
  *(v0 + 480) = *(v22 + 136);
  *(v0 + 496) = v28;
  *(v0 + 448) = v26;
  *(v0 + 464) = v27;
  v29 = *(v22 + 168);
  v30 = *(v22 + 184);
  v31 = *(v22 + 200);
  *(v0 + 560) = *(v22 + 216);
  *(v0 + 528) = v30;
  *(v0 + 544) = v31;
  *(v0 + 512) = v29;
  sub_10001FA38(v0 + 384, v0 + 568, &qword_100048300, &qword_100039558);
  sub_10001EA9C(v22, type metadata accessor for ZeoliteEvalExtensionConfig);
  v32 = *(v0 + 528);
  *(v0 + 328) = *(v0 + 512);
  *(v0 + 344) = v32;
  *(v0 + 360) = *(v0 + 544);
  *(v0 + 376) = *(v0 + 560);
  v33 = *(v0 + 464);
  *(v0 + 264) = *(v0 + 448);
  *(v0 + 280) = v33;
  v34 = *(v0 + 496);
  *(v0 + 296) = *(v0 + 480);
  *(v0 + 312) = v34;
  v35 = *(v0 + 400);
  *(v0 + 200) = *v1;
  *(v0 + 216) = v35;
  v36 = *(v0 + 432);
  *(v0 + 232) = *(v0 + 416);
  *(v0 + 248) = v36;
  if (sub_10001E888(v0 + 200) == 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = xmmword_1000391C0;
    v41 = 0uLL;
    v42 = xmmword_1000391D0;
    v43 = 3;
    v44 = 1;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
  }

  else
  {
    v43 = *(v0 + 384);
    v37 = *(v0 + 392);
    v48 = *(v0 + 400);
    v49 = *(v0 + 416);
    v40 = *(v0 + 432);
    v50 = *(v0 + 448);
    v38 = *(v0 + 464);
    v39 = *(v0 + 472);
    v41 = *(v0 + 480);
    v42 = *(v0 + 496);
    v45 = *(v0 + 512);
    v46 = *(v0 + 528);
    v47 = *(v0 + 544);
    v44 = *(v0 + 560);
  }

  *(v0 + 2591) = v43;
  v51 = *(v0 + 1960);
  v52 = *(v0 + 1872);
  v53 = *(v0 + 1728);
  v54 = *(v0 + 1720);
  v55 = *(v0 + 1712);
  *(v0 + 752) = v43;
  *(v0 + 760) = v37;
  *(v0 + 768) = v48;
  *(v0 + 784) = v49;
  *(v0 + 800) = v40;
  *(v0 + 816) = v50;
  *(v0 + 832) = v38;
  *(v0 + 840) = v39;
  *(v0 + 848) = v41;
  *(v0 + 864) = v42;
  *(v0 + 880) = v45;
  *(v0 + 896) = v46;
  *(v0 + 912) = v47;
  *(v0 + 928) = v44;
  v56 = *(v0 + 752);
  v57 = *(v0 + 768);
  v58 = *(v0 + 800);
  *(v0 + 48) = *(v0 + 784);
  *(v0 + 64) = v58;
  *(v0 + 16) = v56;
  *(v0 + 32) = v57;
  v59 = *(v0 + 816);
  v60 = *(v0 + 832);
  v61 = *(v0 + 864);
  *(v0 + 112) = *(v0 + 848);
  *(v0 + 128) = v61;
  *(v0 + 80) = v59;
  *(v0 + 96) = v60;
  v62 = *(v0 + 896);
  *(v0 + 144) = *(v0 + 880);
  *(v0 + 160) = v62;
  *(v0 + 176) = *(v0 + 912);
  *(v0 + 192) = *(v0 + 928);
  sub_1000383C8();
  sub_10001FA38(v51 + *(v52 + 40), v55, &qword_1000482D0, &unk_100039900);
  sub_10001EA9C(v51, type metadata accessor for ZeoliteEvalExtensionConfig);
  v63 = *(v53 + 48);
  v64 = v63(v55, 1, v54);
  v65 = *(v0 + 1736);
  if (v64 == 1)
  {
    v66 = *(v0 + 1720);
    v67 = *(v0 + 1712);
    *v65 = 0;
    v68 = v66[5];
    v69 = enum case for EmbedderName.MADTextEmbedder(_:);
    v70 = sub_100037FC8();
    (*(*(v70 - 8) + 104))(&v65[v68], v69, v70);
    v71 = &v65[v66[6]];
    *v71 = 0;
    v71[1] = 0;
    v72 = &v65[v66[7]];
    *v72 = 0;
    v72[1] = 0;
    if (v63(v67, 1, v66) != 1)
    {
      sub_10001FD94(*(v0 + 1712), &qword_1000482D0, &unk_100039900);
    }
  }

  else
  {
    sub_10001FD2C(*(v0 + 1712), v65, type metadata accessor for EmbedParameters);
  }

  v73 = *(v0 + 1952);
  v74 = *(v0 + 1872);
  sub_1000383C8();
  v75 = v73 + *(v74 + 44);
  v76 = *(v75 + 16);
  *(v0 + 1112) = *v75;
  *(v0 + 1128) = v76;
  v77 = *(v75 + 32);
  v78 = *(v75 + 48);
  v79 = *(v75 + 64);
  *(v0 + 1192) = *(v75 + 80);
  *(v0 + 1160) = v78;
  *(v0 + 1176) = v79;
  *(v0 + 1144) = v77;
  sub_10001FA38(v0 + 1112, v0 + 1200, &qword_100048308, &qword_100039560);
  sub_10001EA9C(v73, type metadata accessor for ZeoliteEvalExtensionConfig);
  v80 = *(v0 + 1136);
  if (v80 == 1)
  {
    v81 = 0;
    v82 = 0;
    v80 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0uLL;
    v86 = 3;
    v87 = 0uLL;
    v88 = 10;
  }

  else
  {
    v81 = *(v0 + 1112);
    v88 = *(v0 + 1120);
    v82 = *(v0 + 1128);
    v86 = *(v0 + 1144);
    v83 = *(v0 + 1152);
    v84 = *(v0 + 1160);
    v85 = *(v0 + 1168);
    v87 = *(v0 + 1184);
  }

  *(v0 + 2248) = v84;
  *(v0 + 2240) = v83;
  *(v0 + 2593) = v86;
  *(v0 + 2232) = v80;
  *(v0 + 2224) = v82;
  *(v0 + 2592) = v81;
  v89 = *(v0 + 1944);
  v90 = *(v0 + 1936);
  v91 = *(v0 + 1872);
  *(v0 + 936) = v81;
  *(v0 + 944) = v88;
  *(v0 + 952) = v82;
  *(v0 + 960) = v80;
  *(v0 + 968) = v86;
  *(v0 + 976) = v83;
  *(v0 + 984) = v84;
  *(v0 + 992) = v85;
  *(v0 + 1008) = v87;
  v92 = *(v0 + 984);
  *(v0 + 1056) = *(v0 + 968);
  *(v0 + 1072) = v92;
  v93 = *(v0 + 952);
  *(v0 + 1024) = *(v0 + 936);
  *(v0 + 1040) = v93;
  *(v0 + 1088) = *(v0 + 1000);
  *(v0 + 1104) = *(v0 + 1016);
  sub_1000383C8();
  *(v0 + 2580) = *(v89 + *(v91 + 48));
  sub_10001EA9C(v89, type metadata accessor for ZeoliteEvalExtensionConfig);
  sub_1000383C8();
  v94 = (v90 + *(v91 + 52));
  v96 = *v94;
  v95 = v94[1];
  v97 = v94[2];
  v98 = v94[3];
  sub_10001E8AC(*v94, v95, v97, v98);
  sub_10001EA9C(v90, type metadata accessor for ZeoliteEvalExtensionConfig);
  if (!v95)
  {
    v97 = 0xD000000000000028;
    v95 = 0x800000010003B990;
    v98 = 0x800000010003B9C0;
    v96 = 0xD00000000000002FLL;
  }

  *(v0 + 2280) = v98;
  *(v0 + 2272) = v97;
  *(v0 + 2264) = v95;
  *(v0 + 2256) = v96;
  v99 = *(v0 + 1928);
  v100 = *(v0 + 1872);
  sub_1000383C8();
  v101 = v99 + *(v100 + 56);
  v102 = *v101;
  v103 = *(v101 + 8);
  v104 = *(v101 + 16);
  v105 = *(v101 + 24);
  v106 = *(v101 + 32);
  v107 = *(v101 + 40);
  sub_10001E8F0(*v101, v103, v104, v105);
  sub_10001EA9C(v99, type metadata accessor for ZeoliteEvalExtensionConfig);
  if (v103 == 1)
  {
    v102 = 0;
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 1;
  }

  *(v0 + 2594) = v107 & 1;
  *(v0 + 2320) = v106;
  *(v0 + 2312) = v105;
  *(v0 + 2304) = v104;
  *(v0 + 2296) = v103;
  *(v0 + 2288) = v102;
  v108 = *(v0 + 1920);
  v109 = *(v0 + 1704);
  v110 = *(v0 + 1536);
  v111 = *(v0 + 1528);
  *(v0 + 2595) = **(v0 + 1736);
  v112 = *(v110 + 56);
  *(v0 + 2328) = v112;
  *(v0 + 2336) = (v110 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v112(v109, 1, 1, v111);
  sub_1000383C8();
  v113 = *(v108 + 32);

  sub_10001EA9C(v108, type metadata accessor for ZeoliteEvalExtensionConfig);
  v114 = *(v113 + 16);
  v115 = (v113 + 32);
  while (v114)
  {
    v117 = *v115;
    if (v117 <= 2 && v117 != 1 && v117 != 2)
    {

LABEL_48:

      *(v0 + 2582) = 1;
      v136 = *(v0 + 2080);
      v137 = *(v0 + 2072);
      v138 = sub_100009BFC;
      goto LABEL_95;
    }

    v116 = sub_100038A58();

    ++v115;
    --v114;
    if (v116)
    {
      goto LABEL_48;
    }
  }

  *(v0 + 2360) = 0;
  v118 = *(v0 + 1912);
  sub_1000383C8();
  v119 = *(v118 + 32);

  sub_10001EA9C(v118, type metadata accessor for ZeoliteEvalExtensionConfig);
  v120 = *(v119 + 16);
  v121 = (v119 + 32);
  while (v120)
  {
    v123 = *v121;
    if (v123 >= 4 && v123 != 5)
    {

LABEL_55:

      *(v0 + 2590) = 2;
      v136 = *(v0 + 2080);
      v137 = *(v0 + 2072);
      v138 = sub_10000B574;
      goto LABEL_95;
    }

    v122 = sub_100038A58();

    ++v121;
    --v120;
    if (v122)
    {
      goto LABEL_55;
    }
  }

  v124 = *(v0 + 1904);
  sub_1000383C8();
  v125 = *(v124 + 32);

  sub_10001EA9C(v124, type metadata accessor for ZeoliteEvalExtensionConfig);
  v126 = *(v125 + 16);
  v127 = (v125 + 32);
  while (v126)
  {
    v129 = *v127;
    if (v129 > 4)
    {

LABEL_59:

      *(v0 + 2583) = 2;
      v136 = *(v0 + 2080);
      v137 = *(v0 + 2072);
      v138 = sub_10000E8A4;
      goto LABEL_95;
    }

    v128 = sub_100038A58();

    ++v127;
    --v126;
    if (v128)
    {
      goto LABEL_59;
    }
  }

  v130 = *(v0 + 1896);
  sub_1000383C8();
  v131 = *(v130 + 32);

  sub_10001EA9C(v130, type metadata accessor for ZeoliteEvalExtensionConfig);
  v132 = *(v131 + 16);
  v133 = (v131 + 32);
  while (v132)
  {
    v135 = *v133;
    if (v135 <= 2 && *v133 && v135 != 2)
    {

LABEL_63:

      *(v0 + 2584) = 2;
      v136 = *(v0 + 2080);
      v137 = *(v0 + 2072);
      v138 = sub_1000102D4;
      goto LABEL_95;
    }

    v134 = sub_100038A58();

    ++v133;
    --v132;
    if (v134)
    {
      goto LABEL_63;
    }
  }

  sub_10001E938(v0 + 752);

  *(v0 + 2480) = 0;
  v139 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v140 = *(v139 + 32);

  sub_10001EA9C(v139, type metadata accessor for ZeoliteEvalExtensionConfig);
  v141 = *(v140 + 16);
  v142 = (v140 + 32);
  while (v141)
  {
    v144 = *v142;
    if (v144 == 2)
    {

LABEL_65:
      v152 = *(v0 + 2592);

      if (v152 == 3)
      {
        v153 = 0;
      }

      else
      {
        v153 = v152;
      }

      if (v153 == 1)
      {
        goto LABEL_83;
      }

      v154 = sub_100038A58();

      if ((v154 & 1) == 0)
      {
        v155 = *(v0 + 2592);
        if (v155 == 3)
        {
          v155 = 0;
        }

        if (v155 <= 1)
        {
          v185 = sub_100038A58();

          if ((v185 & 1) == 0)
          {
            *(v0 + 2504) = 0;
            *(v0 + 2585) = 2;
            v136 = *(v0 + 2080);
            v137 = *(v0 + 2072);
            v138 = sub_10001416C;
            goto LABEL_95;
          }

          goto LABEL_84;
        }

LABEL_83:
      }

LABEL_84:
      v186 = *(v0 + 2000);
      v187 = *(v0 + 1488);
      v188 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v187 + 48))(v186, 1, v188))
      {
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v189 = *(v0 + 1672);
      v190 = *(v0 + 1656);
      v191 = *(v0 + 1536);
      v192 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v189, &qword_100048178, &unk_100039530);
      sub_10001FA38(v189, v190, &qword_100048178, &unk_100039530);
      if ((*(v191 + 48))(v190, 1, v192) == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v193 = sub_100038578();
        v194 = sub_1000387A8();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&_mh_execute_header, v193, v194, "Query for all available embeddings.", v195, 2u);
        }
      }

      else
      {
        v196 = *(v0 + 1560);
        v197 = *(v0 + 1552);
        v198 = *(v0 + 1544);
        v199 = *(v0 + 1536);
        v200 = *(v0 + 1528);
        (*(v199 + 32))(v196, *(v0 + 1656), v200);
        v201 = *(v199 + 16);
        v201(v197, v196, v200);
        v201(v198, v197, v200);
        v202 = *(v199 + 8);
        (v202)(v197, v200);
        v203 = sub_100038578();
        v204 = sub_1000387A8();
        v205 = os_log_type_enabled(v203, v204);
        v206 = *(v0 + 1560);
        v207 = *(v0 + 1544);
        v208 = *(v0 + 1528);
        if (v205)
        {
          bufb = v202;
          v209 = swift_slowAlloc();
          v224 = v206;
          v210 = swift_slowAlloc();
          v226 = v210;
          *v209 = 136315138;
          v211 = sub_100037EA8();
          v213 = v212;
          (bufb)(v207, v208);
          v214 = sub_10001BFAC(v211, v213, &v226);

          *(v209 + 4) = v214;
          _os_log_impl(&_mh_execute_header, v203, v204, "Last queried: %s", v209, 0xCu);
          sub_10000387C(v210);

          (bufb)(v224, v208);
        }

        else
        {

          (v202)(v207, v208);
          (v202)(v206, v208);
        }
      }

      *(v0 + 2588) = 1;
      v136 = *(v0 + 2080);
      v137 = *(v0 + 2072);
      v138 = sub_100013090;
      goto LABEL_95;
    }

    v143 = sub_100038A58();

    ++v142;
    --v141;
    if (v143)
    {
      goto LABEL_65;
    }
  }

  sub_10001E98C(v0 + 936);

  *(v0 + 2528) = 0u;
  v145 = *(v0 + 1976);
  sub_1000383C8();
  v146 = *(v145 + 32);

  sub_10001EA9C(v145, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v145) = sub_100015E04(3u, v146);

  if (v145)
  {
    *(v0 + 2587) = 2;
    v136 = *(v0 + 2080);
    v137 = *(v0 + 2072);
    v138 = sub_100014D64;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v147 = *(v0 + 1704);
    v148 = *(v0 + 1672);
    v149 = *(v0 + 1496);
    v150 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v148, v149 + *(v150 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v147, v149 + *(v150 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v151.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v151.super.isa = 0;
    }

    v156 = *(v0 + 2120);
    v157 = *(v0 + 2056);
    v158 = *(v0 + 2040);
    v216 = *(v0 + 2144);
    bufa = *(v0 + 2032);
    v159 = *(v0 + 2024);
    v160 = *(v0 + 2016);
    v161 = *(v0 + 1976);
    sub_1000383C8();
    v226 = 0x6769666E6F63;
    v227 = 0xE600000000000000;
    *(v0 + 1448) = *v161;
    v230._countAndFlagsBits = sub_100038A38();
    sub_100038698(v230);

    sub_10001EA9C(v161, type metadata accessor for ZeoliteEvalExtensionConfig);
    v162 = sub_100038638();

    [v216 setValue:v151.super.isa forKey:v162];

    swift_unknownObjectRelease();
    v156(v158, v157, v160);
    v156(bufa, v158, v160);
    v163 = *(v159 + 8);
    *(v0 + 2544) = v163;
    *(v0 + 2552) = (v159 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v163(v158, v160);
    v164 = sub_100038578();
    v165 = sub_1000387A8();
    v166 = os_log_type_enabled(v164, v165);
    v167 = *(v0 + 2032);
    v168 = *(v0 + 2016);
    if (v166)
    {
      v169 = *(v0 + 1976);
      v170 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v225 = v223;
      *v170 = 136315138;
      v221 = v165;
      sub_1000383C8();
      v226 = 0x6769666E6F63;
      v227 = 0xE600000000000000;
      *(v0 + 1456) = *v169;
      v231._countAndFlagsBits = sub_100038A38();
      sub_100038698(v231);

      v171 = v226;
      v172 = v227;
      sub_10001EA9C(v169, type metadata accessor for ZeoliteEvalExtensionConfig);
      v163(v167, v168);
      v173 = sub_10001BFAC(v171, v172, &v225);

      *(v170 + 4) = v173;
      _os_log_impl(&_mh_execute_header, v164, v221, "Execution state saved for %s.", v170, 0xCu);
      sub_10000387C(v223);
    }

    else
    {

      v163(v167, v168);
    }

    v174 = *(v0 + 1760);
    v175 = *(v0 + 1752);
    v176 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v177 = *(v175 + 8);
    *(v0 + 2560) = v177;
    *(v0 + 2568) = (v175 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v177(v174, v176);
    v178 = sub_100038578();
    v179 = sub_1000387A8();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v226 = v181;
      *v180 = 136315138;
      v182 = sub_100038B78();
      v184 = sub_10001BFAC(v182, v183, &v226);

      *(v180 + 4) = v184;
      _os_log_impl(&_mh_execute_header, v178, v179, "Time elapsed: %s.", v180, 0xCu);
      sub_10000387C(v181);
    }

    *(v0 + 2586) = 4;
    v136 = *(v0 + 2080);
    v137 = *(v0 + 2072);
    v138 = sub_100015958;
  }

LABEL_95:

  return _swift_task_switch(v138, v137, v136);
}

uint64_t sub_100009BFC()
{
  sub_100038318();

  return _swift_task_switch(sub_100009C78, 0, 0);
}

uint64_t sub_100009C78()
{
  v1 = *(v0 + 1976);
  sub_1000383C8();
  v2 = *(v1 + 8);
  sub_10001EA9C(v1, type metadata accessor for ZeoliteEvalExtensionConfig);
  if ((v2 & 1) != 0 || (v3 = *(v0 + 2000), v4 = *(v0 + 1488), v5 = *(v0 + 1480), swift_beginAccess(), (*(v4 + 48))(v3, 1, v5)))
  {
    (*(v0 + 2328))(*(v0 + 1688), 1, 1, *(v0 + 1528));
  }

  else
  {
    sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 24), *(v0 + 1688), &qword_100048178, &unk_100039530);
  }

  sub_10001EA34(*(v0 + 1688), *(v0 + 1696), &qword_100048178, &unk_100039530);
  v6 = swift_task_alloc();
  *(v0 + 2344) = v6;
  *v6 = v0;
  v6[1] = sub_100009DF8;
  v7 = *(v0 + 1696);
  v8 = *(v0 + 1680);

  return sub_100015FF4(v8, v0 + 16, v7);
}

uint64_t sub_100009DF8(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2352) = a1;
  *(v3 + 2596) = a2;

  return _swift_task_switch(sub_100009EFC, 0, 0);
}

uint64_t sub_100009EFC()
{
  v146 = v0;
  v1 = *(v0 + 2596);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1680);
  sub_10001FD94(v2, &qword_100048178, &unk_100039530);
  sub_10001EA34(v3, v2, &qword_100048178, &unk_100039530);
  v4 = *(v0 + 2352);
  if (v1 != 24)
  {
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);

    v11 = sub_100038578();
    v12 = sub_1000387C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to run extract step.", v13, 2u);
    }

    v14 = *(v0 + 2596);
    v15 = *(v0 + 2144);
    v129 = *(v0 + 2016);
    v130 = *(v0 + 2056);
    v133 = *(v0 + 2136);
    v136 = *(v0 + 2000);
    v16 = *(v0 + 1768);
    v17 = *(v0 + 1752);
    v18 = *(v0 + 1744);
    v131 = *(v0 + 1736);
    v19 = *(v0 + 1704);
    v20 = *(v0 + 1696);

    v144 = &type metadata for ZeoliteEvalExtensionError;
    v145 = sub_10001E9E0(v21, v22, v23);
    LOBYTE(v142) = v14;
    v24 = objc_allocWithZone(sub_100038388());
    v138 = sub_100038368();

    sub_10001FD94(v20, &qword_100048178, &unk_100039530);
    sub_10001FD94(v19, &qword_100048178, &unk_100039530);
    (*(v17 + 8))(v16, v18);
    goto LABEL_13;
  }

  if (v4 && !*(v4 + 16))
  {
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);

    v33 = sub_100038578();
    v34 = sub_1000387A8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Extracted empty data.", v35, 2u);
    }

    v36 = *(v0 + 2144);
    v129 = *(v0 + 2016);
    v130 = *(v0 + 2056);
    v133 = *(v0 + 2136);
    v136 = *(v0 + 2000);
    v37 = *(v0 + 1768);
    v38 = *(v0 + 1752);
    v39 = *(v0 + 1744);
    v131 = *(v0 + 1736);
    v40 = *(v0 + 1704);
    v41 = *(v0 + 1696);

    v144 = &type metadata for ZeoliteEvalExtensionError;
    v145 = sub_10001E9E0(v42, v43, v44);
    LOBYTE(v142) = 8;
    v45 = objc_allocWithZone(sub_100038388());
    v138 = sub_100038368();

    sub_10001FD94(v41, &qword_100048178, &unk_100039530);
    sub_10001FD94(v40, &qword_100048178, &unk_100039530);
    (*(v38 + 8))(v37, v39);
LABEL_13:
    v133(v130, v129);
    sub_10001EA9C(v131, type metadata accessor for EmbedParameters);
    sub_10001FD94(v136, &qword_1000482E0, &qword_100039548);

    v25 = *(v0 + 8);

    return v25(v138);
  }

  sub_10001FD94(*(v0 + 1696), &qword_100048178, &unk_100039530);
  *(v0 + 2360) = *(v0 + 2352);
  v5 = *(v0 + 1912);
  sub_1000383C8();
  v6 = *(v5 + 32);

  sub_10001EA9C(v5, type metadata accessor for ZeoliteEvalExtensionConfig);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v10 = *v8;
    if (v10 >= 4 && v10 != 5)
    {

LABEL_38:

      *(v0 + 2590) = 2;
      v58 = *(v0 + 2080);
      v59 = *(v0 + 2072);
      v60 = sub_10000B574;
      goto LABEL_78;
    }

    v9 = sub_100038A58();

    ++v8;
    --v7;
    if (v9)
    {
      goto LABEL_38;
    }
  }

  v27 = *(v0 + 1904);
  sub_1000383C8();
  v28 = *(v27 + 32);

  sub_10001EA9C(v27, type metadata accessor for ZeoliteEvalExtensionConfig);
  v29 = *(v28 + 16);
  v30 = (v28 + 32);
  while (v29)
  {
    v32 = *v30;
    if (v32 > 4)
    {

LABEL_42:

      *(v0 + 2583) = 2;
      v58 = *(v0 + 2080);
      v59 = *(v0 + 2072);
      v60 = sub_10000E8A4;
      goto LABEL_78;
    }

    v31 = sub_100038A58();

    ++v30;
    --v29;
    if (v31)
    {
      goto LABEL_42;
    }
  }

  v46 = *(v0 + 1896);
  sub_1000383C8();
  v47 = *(v46 + 32);

  sub_10001EA9C(v46, type metadata accessor for ZeoliteEvalExtensionConfig);
  v48 = *(v47 + 16);
  v49 = (v47 + 32);
  while (v48)
  {
    v51 = *v49;
    if (v51 <= 2 && *v49 && v51 != 2)
    {

LABEL_46:

      *(v0 + 2584) = 2;
      v58 = *(v0 + 2080);
      v59 = *(v0 + 2072);
      v60 = sub_1000102D4;
      goto LABEL_78;
    }

    v50 = sub_100038A58();

    ++v49;
    --v48;
    if (v50)
    {
      goto LABEL_46;
    }
  }

  sub_10001E938(v0 + 752);

  *(v0 + 2480) = 0;
  v52 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v53 = *(v52 + 32);

  sub_10001EA9C(v52, type metadata accessor for ZeoliteEvalExtensionConfig);
  v54 = *(v53 + 16);
  v55 = (v53 + 32);
  while (v54)
  {
    v57 = *v55;
    if (v57 == 2)
    {

LABEL_48:
      v68 = *(v0 + 2592);

      if (v68 == 3)
      {
        v69 = 0;
      }

      else
      {
        v69 = v68;
      }

      if (v69 == 1)
      {
        goto LABEL_66;
      }

      v70 = sub_100038A58();

      if ((v70 & 1) == 0)
      {
        v71 = *(v0 + 2592);
        if (v71 == 3)
        {
          v71 = 0;
        }

        if (v71 <= 1)
        {
          v99 = sub_100038A58();

          if ((v99 & 1) == 0)
          {
            *(v0 + 2504) = 0;
            *(v0 + 2585) = 2;
            v58 = *(v0 + 2080);
            v59 = *(v0 + 2072);
            v60 = sub_10001416C;
            goto LABEL_78;
          }

          goto LABEL_67;
        }

LABEL_66:
      }

LABEL_67:
      v100 = *(v0 + 2000);
      v101 = *(v0 + 1488);
      v102 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v101 + 48))(v100, 1, v102))
      {
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v103 = *(v0 + 1672);
      v104 = *(v0 + 1656);
      v105 = *(v0 + 1536);
      v106 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v103, &qword_100048178, &unk_100039530);
      sub_10001FA38(v103, v104, &qword_100048178, &unk_100039530);
      if ((*(v105 + 48))(v104, 1, v106) == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v107 = sub_100038578();
        v108 = sub_1000387A8();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&_mh_execute_header, v107, v108, "Query for all available embeddings.", v109, 2u);
        }
      }

      else
      {
        v110 = *(v0 + 1560);
        v111 = *(v0 + 1552);
        v112 = *(v0 + 1544);
        v113 = *(v0 + 1536);
        v114 = *(v0 + 1528);
        (*(v113 + 32))(v110, *(v0 + 1656), v114);
        v115 = *(v113 + 16);
        v115(v111, v110, v114);
        v115(v112, v111, v114);
        v116 = *(v113 + 8);
        v116(v111, v114);
        v117 = sub_100038578();
        v118 = sub_1000387A8();
        v119 = os_log_type_enabled(v117, v118);
        v120 = *(v0 + 1560);
        v121 = *(v0 + 1544);
        v122 = *(v0 + 1528);
        if (v119)
        {
          v135 = v116;
          v123 = swift_slowAlloc();
          v140 = v120;
          v124 = swift_slowAlloc();
          v142 = v124;
          *v123 = 136315138;
          v125 = sub_100037EA8();
          v127 = v126;
          v135(v121, v122);
          v128 = sub_10001BFAC(v125, v127, &v142);

          *(v123 + 4) = v128;
          _os_log_impl(&_mh_execute_header, v117, v118, "Last queried: %s", v123, 0xCu);
          sub_10000387C(v124);

          v135(v140, v122);
        }

        else
        {

          v116(v121, v122);
          v116(v120, v122);
        }
      }

      *(v0 + 2588) = 1;
      v58 = *(v0 + 2080);
      v59 = *(v0 + 2072);
      v60 = sub_100013090;
      goto LABEL_78;
    }

    v56 = sub_100038A58();

    ++v55;
    --v54;
    if (v56)
    {
      goto LABEL_48;
    }
  }

  sub_10001E98C(v0 + 936);

  *(v0 + 2528) = 0u;
  v61 = *(v0 + 1976);
  sub_1000383C8();
  v62 = *(v61 + 32);

  sub_10001EA9C(v61, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v61) = sub_100015E04(3u, v62);

  if (v61)
  {
    *(v0 + 2587) = 2;
    v58 = *(v0 + 2080);
    v59 = *(v0 + 2072);
    v60 = sub_100014D64;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v63 = *(v0 + 1704);
    v64 = *(v0 + 1672);
    v65 = *(v0 + 1496);
    v66 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v64, v65 + *(v66 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v63, v65 + *(v66 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v67.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v67.super.isa = 0;
    }

    v72 = *(v0 + 2120);
    v73 = *(v0 + 2056);
    v74 = *(v0 + 2040);
    v132 = *(v0 + 2144);
    v134 = *(v0 + 2032);
    v75 = *(v0 + 2024);
    v76 = *(v0 + 2016);
    v77 = *(v0 + 1976);
    sub_1000383C8();
    v142 = 0x6769666E6F63;
    v143 = 0xE600000000000000;
    *(v0 + 1448) = *v77;
    v148._countAndFlagsBits = sub_100038A38();
    sub_100038698(v148);

    sub_10001EA9C(v77, type metadata accessor for ZeoliteEvalExtensionConfig);
    v78 = sub_100038638();

    [v132 setValue:v67.super.isa forKey:v78];

    swift_unknownObjectRelease();
    v72(v74, v73, v76);
    v72(v134, v74, v76);
    v79 = *(v75 + 8);
    *(v0 + 2544) = v79;
    *(v0 + 2552) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79(v74, v76);
    v80 = sub_100038578();
    v81 = sub_1000387A8();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 2032);
    v84 = *(v0 + 2016);
    if (v82)
    {
      v85 = *(v0 + 1976);
      v86 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141 = v139;
      *v86 = 136315138;
      v137 = v81;
      sub_1000383C8();
      v142 = 0x6769666E6F63;
      v143 = 0xE600000000000000;
      *(v0 + 1456) = *v85;
      v149._countAndFlagsBits = sub_100038A38();
      sub_100038698(v149);

      sub_10001EA9C(v85, type metadata accessor for ZeoliteEvalExtensionConfig);
      v79(v83, v84);
      v87 = sub_10001BFAC(v142, v143, &v141);

      *(v86 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v80, v137, "Execution state saved for %s.", v86, 0xCu);
      sub_10000387C(v139);
    }

    else
    {

      v79(v83, v84);
    }

    v88 = *(v0 + 1760);
    v89 = *(v0 + 1752);
    v90 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v91 = *(v89 + 8);
    *(v0 + 2560) = v91;
    *(v0 + 2568) = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91(v88, v90);
    v92 = sub_100038578();
    v93 = sub_1000387A8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v142 = v95;
      *v94 = 136315138;
      v96 = sub_100038B78();
      v98 = sub_10001BFAC(v96, v97, &v142);

      *(v94 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v92, v93, "Time elapsed: %s.", v94, 0xCu);
      sub_10000387C(v95);
    }

    *(v0 + 2586) = 4;
    v58 = *(v0 + 2080);
    v59 = *(v0 + 2072);
    v60 = sub_100015958;
  }

LABEL_78:

  return _swift_task_switch(v60, v59, v58);
}

uint64_t sub_10000B574()
{
  sub_100038318();

  return _swift_task_switch(sub_10000B5F0, 0, 0);
}

uint64_t sub_10000B5F0()
{
  v114 = v0;
  v1 = *(v0 + 2360);
  sub_100038068();
  swift_allocObject();

  v2 = sub_100038058();
  *(v0 + 2368) = v2;
  if (!v1 || (v5 = *(v0 + 2360), v6 = *(v5 + 16), (*(v0 + 2376) = v6) == 0))
  {

    v19 = *(v0 + 1904);
    sub_1000383C8();
    v20 = *(v19 + 32);

    sub_10001EA9C(v19, type metadata accessor for ZeoliteEvalExtensionConfig);
    v21 = *(v20 + 16);
    v22 = (v20 + 32);
    while (v21)
    {
      v24 = *v22;
      if (v24 > 4)
      {

LABEL_28:

        *(v0 + 2583) = 2;
        v4 = *(v0 + 2080);
        v3 = *(v0 + 2072);
        v37 = sub_10000E8A4;
        goto LABEL_64;
      }

      v23 = sub_100038A58();

      ++v22;
      --v21;
      if (v23)
      {
        goto LABEL_28;
      }
    }

    v25 = *(v0 + 1896);
    sub_1000383C8();
    v26 = *(v25 + 32);

    sub_10001EA9C(v25, type metadata accessor for ZeoliteEvalExtensionConfig);
    v27 = *(v26 + 16);
    v28 = (v26 + 32);
    while (v27)
    {
      if (*v28 <= 2u && *v28 && *v28 != 2)
      {

LABEL_32:

        *(v0 + 2584) = 2;
        v4 = *(v0 + 2080);
        v3 = *(v0 + 2072);
        v37 = sub_1000102D4;
        goto LABEL_64;
      }

      v29 = sub_100038A58();

      ++v28;
      --v27;
      if (v29)
      {
        goto LABEL_32;
      }
    }

    sub_10001E938(v0 + 752);

    *(v0 + 2480) = 0;
    v30 = *(v0 + 1888);
    (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
    sub_1000383C8();
    v31 = *(v30 + 32);

    sub_10001EA9C(v30, type metadata accessor for ZeoliteEvalExtensionConfig);
    v32 = *(v31 + 16);
    v33 = (v31 + 32);
    while (v32)
    {
      if (*v33 == 2)
      {

LABEL_34:
        v43 = *(v0 + 2592);

        if (v43 == 3)
        {
          v44 = 0;
        }

        else
        {
          v44 = v43;
        }

        if (v44 == 1)
        {
          goto LABEL_52;
        }

        v45 = sub_100038A58();

        if ((v45 & 1) == 0)
        {
          v46 = *(v0 + 2592);
          if (v46 == 3)
          {
            v46 = 0;
          }

          if (v46 <= 1)
          {
            v74 = sub_100038A58();

            if ((v74 & 1) == 0)
            {
              *(v0 + 2504) = 0;
              *(v0 + 2585) = 2;
              v4 = *(v0 + 2080);
              v3 = *(v0 + 2072);
              v37 = sub_10001416C;
              goto LABEL_64;
            }

            goto LABEL_53;
          }

LABEL_52:
        }

LABEL_53:
        v75 = *(v0 + 2000);
        v76 = *(v0 + 1488);
        v77 = *(v0 + 1480);
        sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v76 + 48))(v75, 1, v77))
        {
          (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
        }

        else
        {
          sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
        }

        v78 = *(v0 + 1672);
        v79 = *(v0 + 1656);
        v80 = *(v0 + 1536);
        v81 = *(v0 + 1528);
        sub_10001EA34(*(v0 + 1664), v78, &qword_100048178, &unk_100039530);
        sub_10001FA38(v78, v79, &qword_100048178, &unk_100039530);
        if ((*(v80 + 48))(v79, 1, v81) == 1)
        {
          sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
          v82 = sub_100038578();
          v83 = sub_1000387A8();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&_mh_execute_header, v82, v83, "Query for all available embeddings.", v84, 2u);
          }
        }

        else
        {
          v85 = *(v0 + 1560);
          v86 = *(v0 + 1552);
          v87 = *(v0 + 1544);
          v88 = *(v0 + 1536);
          v89 = *(v0 + 1528);
          (*(v88 + 32))(v85, *(v0 + 1656), v89);
          v90 = *(v88 + 16);
          v90(v86, v85, v89);
          v90(v87, v86, v89);
          v91 = *(v88 + 8);
          v91(v86, v89);
          v92 = sub_100038578();
          v93 = sub_1000387A8();
          v94 = os_log_type_enabled(v92, v93);
          v95 = *(v0 + 1560);
          v96 = *(v0 + 1544);
          v97 = *(v0 + 1528);
          if (v94)
          {
            v106 = v91;
            v98 = swift_slowAlloc();
            v110 = v95;
            v99 = swift_slowAlloc();
            v112 = v99;
            *v98 = 136315138;
            v100 = sub_100037EA8();
            v102 = v101;
            v106(v96, v97);
            v103 = sub_10001BFAC(v100, v102, &v112);

            *(v98 + 4) = v103;
            _os_log_impl(&_mh_execute_header, v92, v93, "Last queried: %s", v98, 0xCu);
            sub_10000387C(v99);

            v106(v110, v97);
          }

          else
          {

            v91(v96, v97);
            v91(v95, v97);
          }
        }

        *(v0 + 2588) = 1;
        v4 = *(v0 + 2080);
        v3 = *(v0 + 2072);
        v37 = sub_100013090;
        goto LABEL_64;
      }

      v34 = sub_100038A58();

      ++v33;
      --v32;
      if (v34)
      {
        goto LABEL_34;
      }
    }

    sub_10001E98C(v0 + 936);

    *(v0 + 2528) = 0u;
    v35 = *(v0 + 1976);
    sub_1000383C8();
    v36 = *(v35 + 32);

    sub_10001EA9C(v35, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v35) = sub_100015E04(3u, v36);

    if (v35)
    {
      *(v0 + 2587) = 2;
      v4 = *(v0 + 2080);
      v3 = *(v0 + 2072);
      v37 = sub_100014D64;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v38 = *(v0 + 1704);
      v39 = *(v0 + 1672);
      v40 = *(v0 + 1496);
      v41 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v39, v40 + *(v41 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v38, v40 + *(v41 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v42.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v42.super.isa = 0;
      }

      v47 = *(v0 + 2120);
      v48 = *(v0 + 2056);
      v49 = *(v0 + 2040);
      v104 = *(v0 + 2144);
      v105 = *(v0 + 2032);
      v50 = *(v0 + 2024);
      v51 = *(v0 + 2016);
      v52 = *(v0 + 1976);
      sub_1000383C8();
      v112 = 0x6769666E6F63;
      v113 = 0xE600000000000000;
      *(v0 + 1448) = *v52;
      v116._countAndFlagsBits = sub_100038A38();
      sub_100038698(v116);

      sub_10001EA9C(v52, type metadata accessor for ZeoliteEvalExtensionConfig);
      v53 = sub_100038638();

      [v104 setValue:v42.super.isa forKey:v53];

      swift_unknownObjectRelease();
      v47(v49, v48, v51);
      v47(v105, v49, v51);
      v54 = *(v50 + 8);
      *(v0 + 2544) = v54;
      *(v0 + 2552) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54(v49, v51);
      v55 = sub_100038578();
      v56 = sub_1000387A8();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 2032);
      v59 = *(v0 + 2016);
      if (v57)
      {
        v60 = *(v0 + 1976);
        v61 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v111 = v109;
        *v61 = 136315138;
        v107 = v56;
        sub_1000383C8();
        v112 = 0x6769666E6F63;
        v113 = 0xE600000000000000;
        *(v0 + 1456) = *v60;
        v117._countAndFlagsBits = sub_100038A38();
        sub_100038698(v117);

        sub_10001EA9C(v60, type metadata accessor for ZeoliteEvalExtensionConfig);
        v54(v58, v59);
        v62 = sub_10001BFAC(v112, v113, &v111);

        *(v61 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v55, v107, "Execution state saved for %s.", v61, 0xCu);
        sub_10000387C(v109);
      }

      else
      {

        v54(v58, v59);
      }

      v63 = *(v0 + 1760);
      v64 = *(v0 + 1752);
      v65 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v66 = *(v64 + 8);
      *(v0 + 2560) = v66;
      *(v0 + 2568) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v66(v63, v65);
      v67 = sub_100038578();
      v68 = sub_1000387A8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v112 = v70;
        *v69 = 136315138;
        v71 = sub_100038B78();
        v73 = sub_10001BFAC(v71, v72, &v112);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v67, v68, "Time elapsed: %s.", v69, 0xCu);
        sub_10000387C(v70);
      }

      *(v0 + 2586) = 4;
      v4 = *(v0 + 2080);
      v3 = *(v0 + 2072);
      v37 = sub_100015958;
    }

LABEL_64:
    v2 = v37;

    return _swift_task_switch(v2, v3, v4);
  }

  v7 = *(v0 + 1616);
  v8 = *(v7 + 80);
  *(v0 + 2576) = v8;
  *(v0 + 2384) = 0;
  if (!*(v5 + 16))
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  v9 = *(v0 + 2280);
  v10 = *(v0 + 1632);
  v11 = *(v0 + 1608);
  v12 = *(v7 + 16);
  *(v0 + 2392) = v12;
  *(v0 + 2400) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v5 + ((v8 + 32) & ~v8), v11);
  v13 = sub_100038148();
  v15 = v14;
  *(v0 + 2408) = v14;
  v108 = (&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:));
  v16 = swift_task_alloc();
  *(v0 + 2416) = v16;
  *v16 = v0;
  v16[1] = sub_10000C59C;
  v17 = *(v0 + 2272);

  return v108(v17, v9, v13, v15);
}

uint64_t sub_10000C59C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 2424) = a1;
  *(v4 + 2432) = a2;

  if (v2)
  {

    v5 = sub_10000D898;
  }

  else
  {

    v5 = sub_10000C6F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000C6F0()
{
  v138 = v0;
  (*(v0 + 2392))(*(v0 + 1624), *(v0 + 1632), *(v0 + 1608));

  v1 = sub_100038578();
  v2 = sub_1000387A8();

  v3 = os_log_type_enabled(v1, v2);
  v134 = v0;
  v4 = *(v0 + 2432);
  if (v3)
  {
    v126 = *(v0 + 2424);
    v130 = *(v0 + 1632);
    v128 = v2;
    v5 = *(v0 + 1624);
    v6 = *(v0 + 1616);
    v7 = *(v0 + 1608);
    v8 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_100038148();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v5, v7);
    v13 = sub_10001BFAC(v9, v11, &v136);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = sub_10001BFAC(v126, v4, &v136);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v128, "Input text: %s \n Generated text: %s", v8, 0x16u);
    swift_arrayDestroy();

    v15 = (v12)(v130, v7);
  }

  else
  {
    v18 = *(v0 + 1632);
    v19 = *(v0 + 1624);
    v20 = *(v0 + 1616);
    v21 = *(v0 + 1608);

    v22 = *(v20 + 8);
    v22(v19, v21);
    v15 = (v22)(v18, v21);
  }

  v23 = *(v0 + 2384) + 1;
  if (v23 == *(v0 + 2376))
  {

    v24 = *(v0 + 1904);
    sub_1000383C8();
    v25 = *(v24 + 32);

    sub_10001EA9C(v24, type metadata accessor for ZeoliteEvalExtensionConfig);
    v26 = *(v25 + 16);
    v27 = (v25 + 32);
    while (v26)
    {
      v29 = *v27;
      if (v29 > 4)
      {

LABEL_30:

        *(v0 + 2583) = 2;
        v17 = *(v0 + 2080);
        v16 = *(v0 + 2072);
        v55 = sub_10000E8A4;
        goto LABEL_67;
      }

      v28 = sub_100038A58();

      ++v27;
      --v26;
      if (v28)
      {
        goto LABEL_30;
      }
    }

    v43 = *(v0 + 1896);
    sub_1000383C8();
    v44 = *(v43 + 32);

    sub_10001EA9C(v43, type metadata accessor for ZeoliteEvalExtensionConfig);
    v45 = *(v44 + 16);
    v46 = (v44 + 32);
    while (v45)
    {
      if (*v46 <= 2u && *v46 && *v46 != 2)
      {

LABEL_34:

        *(v0 + 2584) = 2;
        v17 = *(v0 + 2080);
        v16 = *(v0 + 2072);
        v55 = sub_1000102D4;
        goto LABEL_67;
      }

      v47 = sub_100038A58();

      ++v46;
      --v45;
      if (v47)
      {
        goto LABEL_34;
      }
    }

    sub_10001E938(v0 + 752);

    *(v0 + 2480) = 0;
    v48 = *(v0 + 1888);
    (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
    sub_1000383C8();
    v49 = *(v48 + 32);

    sub_10001EA9C(v48, type metadata accessor for ZeoliteEvalExtensionConfig);
    v50 = *(v49 + 16);
    v51 = (v49 + 32);
    while (v50)
    {
      if (*v51 == 2)
      {

LABEL_36:
        v61 = *(v0 + 2592);

        if (v61 == 3)
        {
          v62 = 0;
        }

        else
        {
          v62 = v61;
        }

        if (v62 == 1)
        {
          goto LABEL_54;
        }

        v63 = sub_100038A58();

        if ((v63 & 1) == 0)
        {
          v64 = *(v0 + 2592);
          if (v64 == 3)
          {
            v64 = 0;
          }

          if (v64 <= 1)
          {
            v94 = sub_100038A58();

            if ((v94 & 1) == 0)
            {
              *(v0 + 2504) = 0;
              *(v0 + 2585) = 2;
              v17 = *(v0 + 2080);
              v16 = *(v0 + 2072);
              v55 = sub_10001416C;
              goto LABEL_67;
            }

            goto LABEL_55;
          }

LABEL_54:
        }

LABEL_55:
        v95 = *(v0 + 2000);
        v96 = *(v0 + 1488);
        v97 = *(v0 + 1480);
        sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v96 + 48))(v95, 1, v97))
        {
          (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
        }

        else
        {
          sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
        }

        v98 = *(v0 + 1672);
        v99 = *(v0 + 1656);
        v100 = *(v0 + 1536);
        v101 = *(v0 + 1528);
        sub_10001EA34(*(v0 + 1664), v98, &qword_100048178, &unk_100039530);
        sub_10001FA38(v98, v99, &qword_100048178, &unk_100039530);
        if ((*(v100 + 48))(v99, 1, v101) == 1)
        {
          sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
          v102 = sub_100038578();
          v103 = sub_1000387A8();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&_mh_execute_header, v102, v103, "Query for all available embeddings.", v104, 2u);
          }
        }

        else
        {
          v105 = *(v0 + 1560);
          v106 = *(v0 + 1552);
          v107 = *(v0 + 1544);
          v108 = *(v0 + 1536);
          v109 = *(v0 + 1528);
          (*(v108 + 32))(v105, *(v0 + 1656), v109);
          v110 = *(v108 + 16);
          v110(v106, v105, v109);
          v110(v107, v106, v109);
          v111 = *(v108 + 8);
          v111(v106, v109);
          v112 = sub_100038578();
          v113 = sub_1000387A8();
          v114 = os_log_type_enabled(v112, v113);
          v115 = *(v0 + 1560);
          v116 = *(v0 + 1544);
          v117 = *(v0 + 1528);
          if (v114)
          {
            v118 = swift_slowAlloc();
            v133 = v115;
            v119 = swift_slowAlloc();
            v136 = v119;
            *v118 = 136315138;
            v120 = sub_100037EA8();
            v122 = v121;
            v111(v116, v117);
            v123 = sub_10001BFAC(v120, v122, &v136);

            *(v118 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v112, v113, "Last queried: %s", v118, 0xCu);
            sub_10000387C(v119);

            v124 = v133;
          }

          else
          {

            v111(v116, v117);
            v124 = v115;
          }

          v111(v124, v117);
        }

        *(v134 + 2588) = 1;
        v17 = *(v134 + 2080);
        v16 = *(v134 + 2072);
        v55 = sub_100013090;
        goto LABEL_67;
      }

      v52 = sub_100038A58();

      ++v51;
      --v50;
      if (v52)
      {
        goto LABEL_36;
      }
    }

    sub_10001E98C(v0 + 936);

    *(v0 + 2528) = 0u;
    v53 = *(v0 + 1976);
    sub_1000383C8();
    v54 = *(v53 + 32);

    sub_10001EA9C(v53, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v53) = sub_100015E04(3u, v54);

    if (v53)
    {
      *(v0 + 2587) = 2;
      v17 = *(v0 + 2080);
      v16 = *(v0 + 2072);
      v55 = sub_100014D64;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v56 = *(v0 + 1704);
      v57 = *(v0 + 1672);
      v58 = *(v0 + 1496);
      v59 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v57, v58 + *(v59 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v56, v58 + *(v59 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v60.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v60.super.isa = 0;
      }

      v65 = *(v0 + 2120);
      v66 = *(v0 + 2056);
      v67 = *(v0 + 2040);
      v125 = *(v0 + 2144);
      v127 = *(v0 + 2032);
      v68 = *(v0 + 2024);
      v69 = *(v0 + 2016);
      v70 = *(v0 + 1976);
      sub_1000383C8();
      v136 = 0x6769666E6F63;
      v137 = 0xE600000000000000;
      *(v0 + 1448) = *v70;
      v140._countAndFlagsBits = sub_100038A38();
      sub_100038698(v140);

      sub_10001EA9C(v70, type metadata accessor for ZeoliteEvalExtensionConfig);
      v71 = sub_100038638();

      [v125 setValue:v60.super.isa forKey:v71];

      swift_unknownObjectRelease();
      v65(v67, v66, v69);
      v65(v127, v67, v69);
      v72 = *(v68 + 8);
      *(v0 + 2544) = v72;
      *(v0 + 2552) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v72(v67, v69);
      v73 = sub_100038578();
      v74 = sub_1000387A8();
      v75 = os_log_type_enabled(v73, v74);
      v76 = *(v0 + 2032);
      v77 = *(v0 + 2016);
      if (v75)
      {
        v78 = *(v0 + 1976);
        v79 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v135 = v132;
        *v79 = 136315138;
        v129 = v74;
        sub_1000383C8();
        v136 = 0x6769666E6F63;
        v137 = 0xE600000000000000;
        *(v0 + 1456) = *v78;
        v141._countAndFlagsBits = sub_100038A38();
        sub_100038698(v141);

        v80 = v136;
        v81 = v137;
        sub_10001EA9C(v78, type metadata accessor for ZeoliteEvalExtensionConfig);
        v72(v76, v77);
        v82 = sub_10001BFAC(v80, v81, &v135);

        *(v79 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v73, v129, "Execution state saved for %s.", v79, 0xCu);
        sub_10000387C(v132);
      }

      else
      {

        v72(v76, v77);
      }

      v83 = *(v0 + 1760);
      v84 = *(v0 + 1752);
      v85 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v86 = *(v84 + 8);
      *(v0 + 2560) = v86;
      *(v0 + 2568) = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v86(v83, v85);
      v87 = sub_100038578();
      v88 = sub_1000387A8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v136 = v90;
        *v89 = 136315138;
        v91 = sub_100038B78();
        v93 = sub_10001BFAC(v91, v92, &v136);

        *(v89 + 4) = v93;
        _os_log_impl(&_mh_execute_header, v87, v88, "Time elapsed: %s.", v89, 0xCu);
        sub_10000387C(v90);
      }

      *(v0 + 2586) = 4;
      v17 = *(v0 + 2080);
      v16 = *(v0 + 2072);
      v55 = sub_100015958;
    }

LABEL_67:
    v15 = v55;

    return _swift_task_switch(v15, v16, v17);
  }

  *(v0 + 2384) = v23;
  v30 = *(v0 + 2360);
  if (v23 >= *(v30 + 16))
  {
    __break(1u);
    return _swift_task_switch(v15, v16, v17);
  }

  v31 = *(v0 + 2280);
  v32 = *(v0 + 1632);
  v33 = *(v0 + 1616);
  v34 = *(v0 + 1608);
  v35 = *(v33 + 16);
  v33 += 16;
  v36 = v30 + ((*(v0 + 2576) + 32) & ~*(v0 + 2576)) + *(v33 + 56) * v23;
  *(v0 + 2392) = v35;
  *(v0 + 2400) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v32, v36, v34);
  v37 = sub_100038148();
  v39 = v38;
  *(v0 + 2408) = v38;
  v131 = (&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:));
  v40 = swift_task_alloc();
  *(v0 + 2416) = v40;
  *v40 = v0;
  v40[1] = sub_10000C59C;
  v41 = *(v0 + 2272);

  return v131(v41, v31, v37, v39);
}

uint64_t sub_10000D898(uint64_t a1)
{
  v121 = v1;
  v2 = sub_100038578();
  v3 = sub_1000387C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 1632);
  v6 = *(v1 + 1616);
  v7 = *(v1 + 1608);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform inference!", v8, 2u);
  }

  v9 = (*(v6 + 8))(v5, v7);
  v12 = *(v1 + 2384) + 1;
  if (v12 == *(v1 + 2376))
  {

    v13 = *(v1 + 1904);
    sub_1000383C8();
    v14 = *(v13 + 32);

    sub_10001EA9C(v13, type metadata accessor for ZeoliteEvalExtensionConfig);
    v15 = *(v14 + 16);
    v16 = (v14 + 32);
    while (v15)
    {
      v18 = *v16;
      if (v18 > 4)
      {

LABEL_29:

        *(v1 + 2583) = 2;
        v11 = *(v1 + 2080);
        v10 = *(v1 + 2072);
        v44 = sub_10000E8A4;
        goto LABEL_65;
      }

      v17 = sub_100038A58();

      ++v16;
      --v15;
      if (v17)
      {
        goto LABEL_29;
      }
    }

    v32 = *(v1 + 1896);
    sub_1000383C8();
    v33 = *(v32 + 32);

    sub_10001EA9C(v32, type metadata accessor for ZeoliteEvalExtensionConfig);
    v34 = *(v33 + 16);
    v35 = (v33 + 32);
    while (v34)
    {
      if (*v35 <= 2u && *v35 && *v35 != 2)
      {

LABEL_33:

        *(v1 + 2584) = 2;
        v11 = *(v1 + 2080);
        v10 = *(v1 + 2072);
        v44 = sub_1000102D4;
        goto LABEL_65;
      }

      v36 = sub_100038A58();

      ++v35;
      --v34;
      if (v36)
      {
        goto LABEL_33;
      }
    }

    sub_10001E938(v1 + 752);

    *(v1 + 2480) = 0;
    v37 = *(v1 + 1888);
    (*(v1 + 2328))(*(v1 + 1672), 1, 1, *(v1 + 1528));
    sub_1000383C8();
    v38 = *(v37 + 32);

    sub_10001EA9C(v37, type metadata accessor for ZeoliteEvalExtensionConfig);
    v39 = *(v38 + 16);
    v40 = (v38 + 32);
    while (v39)
    {
      if (*v40 == 2)
      {

LABEL_35:
        v50 = *(v1 + 2592);

        if (v50 == 3)
        {
          v51 = 0;
        }

        else
        {
          v51 = v50;
        }

        if (v51 == 1)
        {
          goto LABEL_53;
        }

        v52 = sub_100038A58();

        if ((v52 & 1) == 0)
        {
          v53 = *(v1 + 2592);
          if (v53 == 3)
          {
            v53 = 0;
          }

          if (v53 <= 1)
          {
            v81 = sub_100038A58();

            if ((v81 & 1) == 0)
            {
              *(v1 + 2504) = 0;
              *(v1 + 2585) = 2;
              v11 = *(v1 + 2080);
              v10 = *(v1 + 2072);
              v44 = sub_10001416C;
              goto LABEL_65;
            }

            goto LABEL_54;
          }

LABEL_53:
        }

LABEL_54:
        v82 = *(v1 + 2000);
        v83 = *(v1 + 1488);
        v84 = *(v1 + 1480);
        sub_10001FD94(*(v1 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v83 + 48))(v82, 1, v84))
        {
          (*(v1 + 2328))(*(v1 + 1664), 1, 1, *(v1 + 1528));
        }

        else
        {
          sub_10001FA38(*(v1 + 2000) + *(*(v1 + 1480) + 20), *(v1 + 1664), &qword_100048178, &unk_100039530);
        }

        v85 = *(v1 + 1672);
        v86 = *(v1 + 1656);
        v87 = *(v1 + 1536);
        v88 = *(v1 + 1528);
        sub_10001EA34(*(v1 + 1664), v85, &qword_100048178, &unk_100039530);
        sub_10001FA38(v85, v86, &qword_100048178, &unk_100039530);
        if ((*(v87 + 48))(v86, 1, v88) == 1)
        {
          sub_10001FD94(*(v1 + 1656), &qword_100048178, &unk_100039530);
          v89 = sub_100038578();
          v90 = sub_1000387A8();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "Query for all available embeddings.", v91, 2u);
          }
        }

        else
        {
          v92 = *(v1 + 1560);
          v93 = *(v1 + 1552);
          v94 = *(v1 + 1544);
          v95 = *(v1 + 1536);
          v96 = *(v1 + 1528);
          (*(v95 + 32))(v92, *(v1 + 1656), v96);
          v97 = *(v95 + 16);
          v97(v93, v92, v96);
          v97(v94, v93, v96);
          v98 = *(v95 + 8);
          v98(v93, v96);
          v99 = sub_100038578();
          v100 = sub_1000387A8();
          v101 = os_log_type_enabled(v99, v100);
          v102 = *(v1 + 1560);
          v103 = *(v1 + 1544);
          v104 = *(v1 + 1528);
          if (v101)
          {
            v113 = v98;
            v105 = swift_slowAlloc();
            v117 = v102;
            v106 = swift_slowAlloc();
            v119 = v106;
            *v105 = 136315138;
            v107 = sub_100037EA8();
            v109 = v108;
            v113(v103, v104);
            v110 = sub_10001BFAC(v107, v109, &v119);

            *(v105 + 4) = v110;
            _os_log_impl(&_mh_execute_header, v99, v100, "Last queried: %s", v105, 0xCu);
            sub_10000387C(v106);

            v113(v117, v104);
          }

          else
          {

            v98(v103, v104);
            v98(v102, v104);
          }
        }

        *(v1 + 2588) = 1;
        v11 = *(v1 + 2080);
        v10 = *(v1 + 2072);
        v44 = sub_100013090;
        goto LABEL_65;
      }

      v41 = sub_100038A58();

      ++v40;
      --v39;
      if (v41)
      {
        goto LABEL_35;
      }
    }

    sub_10001E98C(v1 + 936);

    *(v1 + 2528) = 0u;
    v42 = *(v1 + 1976);
    sub_1000383C8();
    v43 = *(v42 + 32);

    sub_10001EA9C(v42, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v42) = sub_100015E04(3u, v43);

    if (v42)
    {
      *(v1 + 2587) = 2;
      v11 = *(v1 + 2080);
      v10 = *(v1 + 2072);
      v44 = sub_100014D64;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v45 = *(v1 + 1704);
      v46 = *(v1 + 1672);
      v47 = *(v1 + 1496);
      v48 = *(v1 + 1480);
      sub_100037EF8();
      sub_10001FA38(v46, v47 + *(v48 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v45, v47 + *(v48 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v49.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v49.super.isa = 0;
      }

      v54 = *(v1 + 2120);
      v55 = *(v1 + 2056);
      v56 = *(v1 + 2040);
      v111 = *(v1 + 2144);
      v112 = *(v1 + 2032);
      v57 = *(v1 + 2024);
      v58 = *(v1 + 2016);
      v59 = *(v1 + 1976);
      sub_1000383C8();
      v119 = 0x6769666E6F63;
      v120 = 0xE600000000000000;
      *(v1 + 1448) = *v59;
      v123._countAndFlagsBits = sub_100038A38();
      sub_100038698(v123);

      sub_10001EA9C(v59, type metadata accessor for ZeoliteEvalExtensionConfig);
      v60 = sub_100038638();

      [v111 setValue:v49.super.isa forKey:v60];

      swift_unknownObjectRelease();
      v54(v56, v55, v58);
      v54(v112, v56, v58);
      v61 = *(v57 + 8);
      *(v1 + 2544) = v61;
      *(v1 + 2552) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v56, v58);
      v62 = sub_100038578();
      v63 = sub_1000387A8();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v1 + 2032);
      v66 = *(v1 + 2016);
      if (v64)
      {
        v67 = *(v1 + 1976);
        v68 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v118 = v116;
        *v68 = 136315138;
        v114 = v63;
        sub_1000383C8();
        v119 = 0x6769666E6F63;
        v120 = 0xE600000000000000;
        *(v1 + 1456) = *v67;
        v124._countAndFlagsBits = sub_100038A38();
        sub_100038698(v124);

        sub_10001EA9C(v67, type metadata accessor for ZeoliteEvalExtensionConfig);
        v61(v65, v66);
        v69 = sub_10001BFAC(v119, v120, &v118);

        *(v68 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v62, v114, "Execution state saved for %s.", v68, 0xCu);
        sub_10000387C(v116);
      }

      else
      {

        v61(v65, v66);
      }

      v70 = *(v1 + 1760);
      v71 = *(v1 + 1752);
      v72 = *(v1 + 1744);
      sub_100038868();
      sub_100038878();
      v73 = *(v71 + 8);
      *(v1 + 2560) = v73;
      *(v1 + 2568) = (v71 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73(v70, v72);
      v74 = sub_100038578();
      v75 = sub_1000387A8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v119 = v77;
        *v76 = 136315138;
        v78 = sub_100038B78();
        v80 = sub_10001BFAC(v78, v79, &v119);

        *(v76 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v74, v75, "Time elapsed: %s.", v76, 0xCu);
        sub_10000387C(v77);
      }

      *(v1 + 2586) = 4;
      v11 = *(v1 + 2080);
      v10 = *(v1 + 2072);
      v44 = sub_100015958;
    }

LABEL_65:
    v9 = v44;

    return _swift_task_switch(v9, v10, v11);
  }

  *(v1 + 2384) = v12;
  v19 = *(v1 + 2360);
  if (v12 >= *(v19 + 16))
  {
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v20 = *(v1 + 2280);
  v21 = *(v1 + 1632);
  v22 = *(v1 + 1616);
  v23 = *(v1 + 1608);
  v24 = *(v22 + 16);
  v22 += 16;
  v25 = v19 + ((*(v1 + 2576) + 32) & ~*(v1 + 2576)) + *(v22 + 56) * v12;
  *(v1 + 2392) = v24;
  *(v1 + 2400) = v22 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v21, v25, v23);
  v26 = sub_100038148();
  v28 = v27;
  *(v1 + 2408) = v27;
  v115 = (&async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:) + async function pointer to dispatch thunk of TokenGeneratorBase.process(system:user:));
  v29 = swift_task_alloc();
  *(v1 + 2416) = v29;
  *v29 = v1;
  v29[1] = sub_10000C59C;
  v30 = *(v1 + 2272);

  return v115(v30, v20, v26, v28);
}

uint64_t sub_10000E8A4()
{
  sub_100038318();

  return _swift_task_switch(sub_10000E920, 0, 0);
}

uint64_t sub_10000E920()
{
  v201 = v0;
  if (!*(v0 + 2208))
  {
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);
LABEL_7:

    v21 = sub_100038578();
    v22 = sub_1000387C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Tokenizer model path is nil.", v23, 2u);
    }

    v24 = *(v0 + 2144);
    v25 = *(v0 + 2016);
    v187 = *(v0 + 2136);
    v190 = *(v0 + 2000);
    v26 = *(v0 + 1768);
    v27 = *(v0 + 1752);
    v28 = *(v0 + 1744);
    v181 = *(v0 + 2056);
    v183 = *(v0 + 1736);
    v29 = *(v0 + 1704);

    v199 = &type metadata for ZeoliteEvalExtensionError;
    v200 = sub_10001E9E0(v30, v31, v32);
    LOBYTE(v197) = 5;
    v33 = objc_allocWithZone(sub_100038388());
    v193 = sub_100038368();

    sub_10001FD94(v29, &qword_100048178, &unk_100039530);
    (*(v27 + 8))(v26, v28);
    v187(v181, v25);
    sub_10001EA9C(v183, type metadata accessor for EmbedParameters);
    v34 = v190;
    goto LABEL_20;
  }

  v1 = *(v0 + 2296);
  if (!v1)
  {
    sub_10001E938(v0 + 752);

    sub_10001E98C(v0 + 936);

    goto LABEL_7;
  }

  v2 = *(v0 + 2288);
  v179 = *(v0 + 2312);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1784);
  v192 = *(v0 + 1776);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  sub_100037E28();
  *(v0 + 1408) = v2;
  *(v0 + 1416) = v1;
  v8 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v176 = *(v6 + 104);
  v9 = v176(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_10001E024(v9, v10, v11);
  sub_100037E58();
  v12 = *(v6 + 8);
  v12(v5, v7);
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v3, v192);

  v186 = v14;
  if (v179)
  {
    v15 = *(v0 + 2312);
    v16 = v14;
    v17 = *(v0 + 1808);
    v180 = *(v0 + 1776);
    v18 = *(v0 + 1600);
    v19 = *(v0 + 1584);
    v173 = *(v0 + 2304);

    sub_100037E28();

    *(v0 + 1424) = v173;
    *(v0 + 1432) = v15;
    v176(v18, v8, v19);
    sub_100037E58();
    v13(v18, v19);
    v16(v17, v180);

    v20 = 0;
  }

  else
  {

    v20 = 1;
  }

  v35 = *(v0 + 2360);
  v36 = *(v0 + 2594);
  v37 = *(v0 + 2320);
  v38 = *(v0 + 1792);
  v39 = *(v0 + 1576);
  v40 = *(v0 + 1568);
  (*(*(v0 + 1784) + 56))(v40, v20, 1, *(v0 + 1776));
  sub_10001EA34(v40, v39, &qword_1000482C8, &qword_100039528);
  v41 = sub_10001682C(v35, v38, v39, v37, v36);
  v43 = v42;
  LODWORD(v35) = v42;

  if (v35 != 24)
  {
    sub_10001E938(v0 + 752);
    sub_10001E98C(v0 + 936);

    v52 = sub_100038578();
    v53 = sub_1000387C8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to complete tokenization step.", v54, 2u);
    }

    v55 = *(v0 + 2144);
    v178 = *(v0 + 2056);
    v182 = *(v0 + 2136);
    v184 = *(v0 + 2000);
    v56 = *(v0 + 1792);
    v57 = *(v0 + 1776);
    v174 = *(v0 + 1768);
    v58 = *(v0 + 1752);
    v172 = *(v0 + 1744);
    v175 = *(v0 + 1736);
    v177 = *(v0 + 2016);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1576);

    v199 = &type metadata for ZeoliteEvalExtensionError;
    v200 = sub_10001E9E0(v61, v62, v63);
    LOBYTE(v197) = v43;
    v64 = objc_allocWithZone(sub_100038388());
    v193 = sub_100038368();

    sub_10001FD94(v60, &qword_1000482C8, &qword_100039528);
    v186(v56, v57);
    sub_10001FD94(v59, &qword_100048178, &unk_100039530);
    (*(v58 + 8))(v174, v172);
    v182(v178, v177);
    sub_10001EA9C(v175, type metadata accessor for EmbedParameters);
    v34 = v184;
LABEL_20:
    sub_10001FD94(v34, &qword_1000482E0, &qword_100039548);

    v65 = *(v0 + 8);

    return v65(v193);
  }

  v44 = sub_100038578();
  v45 = sub_1000387A8();

  if (!os_log_type_enabled(v44, v45))
  {

    if (!v41)
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v197 = v47;
  *v46 = 136315138;
  if (!v41)
  {
    sub_1000219C0(_swiftEmptyArrayStorage);
  }

  v48 = sub_100038608();
  v50 = v49;

  v51 = sub_10001BFAC(v48, v50, &v197);

  *(v46 + 4) = v51;
  _os_log_impl(&_mh_execute_header, v44, v45, "Completed tokenization step: %s", v46, 0xCu);
  sub_10000387C(v47);

  if (v41)
  {
LABEL_24:
    v67 = *(v0 + 1976);
    sub_100001B40(&qword_100048318, &unk_100039580);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1000391E0;
    v69 = sub_100017C48(0x6B6F546C61746F74, 0xEF746E756F436E65, v41);
    if ((v69 & &_mh_execute_header) != 0)
    {
      v70 = -1082130432;
    }

    else
    {
      v70 = v69;
    }

    *(v68 + 32) = v70;
    v71 = sub_100017C48(0xD000000000000015, 0x800000010003B9F0, v41);
    if ((v71 & &_mh_execute_header) != 0)
    {
      v72 = -1082130432;
    }

    else
    {
      v72 = v71;
    }

    *(v68 + 36) = v72;
    v73 = sub_100017C48(0x656B6F5465726172, 0xEE006F697461526ELL, v41);
    if ((v73 & &_mh_execute_header) != 0)
    {
      v74 = -1082130432;
    }

    else
    {
      v74 = v73;
    }

    *(v68 + 40) = v74;
    v75 = sub_100017C48(0xD000000000000011, 0x800000010003BA10, v41);
    if ((v75 & &_mh_execute_header) != 0)
    {
      v76 = 0;
    }

    else
    {
      v76 = v75;
    }

    *(v68 + 44) = v76;
    v77 = sub_100017C48(0xD000000000000011, 0x800000010003BA30, v41);

    if ((v77 & &_mh_execute_header) != 0)
    {
      v78 = 0;
    }

    else
    {
      v78 = v77;
    }

    *(v68 + 48) = v78;
    v79 = sub_100017CA4(0, *(v68 + 16));
    v80 = sub_100038448();
    v82 = v81;
    sub_1000383C8();
    v83 = *v67;
    sub_10001EA9C(v67, type metadata accessor for ZeoliteEvalExtensionConfig);
    v84 = sub_100038638();
    v85 = swift_allocObject();
    v85[2] = v80;
    v85[3] = v82;
    v85[4] = v83;
    v85[5] = 0;
    v85[6] = v79;
    v85[7] = v68;
    *(v0 + 1320) = sub_10001FDFC;
    *(v0 + 1328) = v85;
    *(v0 + 1288) = _NSConcreteStackBlock;
    *(v0 + 1296) = 1107296256;
    *(v0 + 1304) = sub_100017D28;
    *(v0 + 1312) = &unk_100045908;
    v86 = _Block_copy((v0 + 1288));

    AnalyticsSendEventLazy();
    _Block_release(v86);
  }

LABEL_40:
  v87 = *(v0 + 1792);
  v88 = *(v0 + 1776);
  sub_10001FD94(*(v0 + 1576), &qword_1000482C8, &qword_100039528);
  v186(v87, v88);
  v89 = *(v0 + 1896);
  sub_1000383C8();
  v90 = *(v89 + 32);

  sub_10001EA9C(v89, type metadata accessor for ZeoliteEvalExtensionConfig);
  v91 = *(v90 + 16);
  v92 = (v90 + 32);
  while (v91)
  {
    if (*v92 <= 2u && *v92 && *v92 != 2)
    {

LABEL_58:

      *(v0 + 2584) = 2;
      v101 = *(v0 + 2080);
      v102 = *(v0 + 2072);
      v103 = sub_1000102D4;
      goto LABEL_90;
    }

    v93 = sub_100038A58();

    ++v92;
    --v91;
    if (v93)
    {
      goto LABEL_58;
    }
  }

  sub_10001E938(v0 + 752);

  *(v0 + 2480) = 0;
  v94 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v95 = *(v94 + 32);

  sub_10001EA9C(v94, type metadata accessor for ZeoliteEvalExtensionConfig);
  v96 = *(v95 + 16);
  v97 = (v95 + 32);
  while (v96)
  {
    if (*v97 == 2)
    {

LABEL_60:
      v109 = *(v0 + 2592);

      if (v109 == 3)
      {
        v110 = 0;
      }

      else
      {
        v110 = v109;
      }

      if (v110 == 1)
      {
        goto LABEL_78;
      }

      v111 = sub_100038A58();

      if ((v111 & 1) == 0)
      {
        v112 = *(v0 + 2592);
        if (v112 == 3)
        {
          v112 = 0;
        }

        if (v112 <= 1)
        {
          v142 = sub_100038A58();

          if ((v142 & 1) == 0)
          {
            *(v0 + 2504) = 0;
            *(v0 + 2585) = 2;
            v101 = *(v0 + 2080);
            v102 = *(v0 + 2072);
            v103 = sub_10001416C;
            goto LABEL_90;
          }

          goto LABEL_79;
        }

LABEL_78:
      }

LABEL_79:
      v143 = *(v0 + 2000);
      v144 = *(v0 + 1488);
      v145 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v144 + 48))(v143, 1, v145))
      {
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v146 = *(v0 + 1672);
      v147 = *(v0 + 1656);
      v148 = *(v0 + 1536);
      v149 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v146, &qword_100048178, &unk_100039530);
      sub_10001FA38(v146, v147, &qword_100048178, &unk_100039530);
      if ((*(v148 + 48))(v147, 1, v149) == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v150 = sub_100038578();
        v151 = sub_1000387A8();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&_mh_execute_header, v150, v151, "Query for all available embeddings.", v152, 2u);
        }
      }

      else
      {
        v153 = *(v0 + 1560);
        v154 = *(v0 + 1552);
        v155 = *(v0 + 1544);
        v156 = *(v0 + 1536);
        v157 = *(v0 + 1528);
        (*(v156 + 32))(v153, *(v0 + 1656), v157);
        v158 = *(v156 + 16);
        v158(v154, v153, v157);
        v158(v155, v154, v157);
        v159 = *(v156 + 8);
        v159(v154, v157);
        v160 = sub_100038578();
        v161 = sub_1000387A8();
        v162 = os_log_type_enabled(v160, v161);
        v163 = *(v0 + 1560);
        v164 = *(v0 + 1544);
        v165 = *(v0 + 1528);
        if (v162)
        {
          v189 = v159;
          v166 = swift_slowAlloc();
          v195 = v163;
          v167 = swift_slowAlloc();
          v197 = v167;
          *v166 = 136315138;
          v168 = sub_100037EA8();
          v170 = v169;
          v189(v164, v165);
          v171 = sub_10001BFAC(v168, v170, &v197);

          *(v166 + 4) = v171;
          _os_log_impl(&_mh_execute_header, v160, v161, "Last queried: %s", v166, 0xCu);
          sub_10000387C(v167);

          v189(v195, v165);
        }

        else
        {

          v159(v164, v165);
          v159(v163, v165);
        }
      }

      *(v0 + 2588) = 1;
      v101 = *(v0 + 2080);
      v102 = *(v0 + 2072);
      v103 = sub_100013090;
      goto LABEL_90;
    }

    v98 = sub_100038A58();

    ++v97;
    --v96;
    if (v98)
    {
      goto LABEL_60;
    }
  }

  sub_10001E98C(v0 + 936);

  *(v0 + 2528) = 0u;
  v99 = *(v0 + 1976);
  sub_1000383C8();
  v100 = *(v99 + 32);

  sub_10001EA9C(v99, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v99) = sub_100015E04(3u, v100);

  if (v99)
  {
    *(v0 + 2587) = 2;
    v101 = *(v0 + 2080);
    v102 = *(v0 + 2072);
    v103 = sub_100014D64;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v104 = *(v0 + 1704);
    v105 = *(v0 + 1672);
    v106 = *(v0 + 1496);
    v107 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v105, v106 + *(v107 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v104, v106 + *(v107 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v108.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v108.super.isa = 0;
    }

    v113 = *(v0 + 2120);
    v114 = *(v0 + 2056);
    v115 = *(v0 + 2040);
    v185 = *(v0 + 2144);
    v188 = *(v0 + 2032);
    v116 = *(v0 + 2024);
    v117 = *(v0 + 2016);
    v118 = *(v0 + 1976);
    sub_1000383C8();
    v197 = 0x6769666E6F63;
    v198 = 0xE600000000000000;
    *(v0 + 1448) = *v118;
    v203._countAndFlagsBits = sub_100038A38();
    sub_100038698(v203);

    sub_10001EA9C(v118, type metadata accessor for ZeoliteEvalExtensionConfig);
    v119 = sub_100038638();

    [v185 setValue:v108.super.isa forKey:v119];

    swift_unknownObjectRelease();
    v113(v115, v114, v117);
    v113(v188, v115, v117);
    v120 = *(v116 + 8);
    *(v0 + 2544) = v120;
    *(v0 + 2552) = (v116 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v120(v115, v117);
    v121 = sub_100038578();
    v122 = sub_1000387A8();
    v123 = os_log_type_enabled(v121, v122);
    v124 = *(v0 + 2032);
    v125 = *(v0 + 2016);
    if (v123)
    {
      v126 = *(v0 + 1976);
      v127 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v196 = v194;
      *v127 = 136315138;
      v191 = v122;
      sub_1000383C8();
      v197 = 0x6769666E6F63;
      v198 = 0xE600000000000000;
      *(v0 + 1456) = *v126;
      v204._countAndFlagsBits = sub_100038A38();
      sub_100038698(v204);

      v128 = v197;
      v129 = v198;
      sub_10001EA9C(v126, type metadata accessor for ZeoliteEvalExtensionConfig);
      v120(v124, v125);
      v130 = sub_10001BFAC(v128, v129, &v196);

      *(v127 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v121, v191, "Execution state saved for %s.", v127, 0xCu);
      sub_10000387C(v194);
    }

    else
    {

      v120(v124, v125);
    }

    v131 = *(v0 + 1760);
    v132 = *(v0 + 1752);
    v133 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v134 = *(v132 + 8);
    *(v0 + 2560) = v134;
    *(v0 + 2568) = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v134(v131, v133);
    v135 = sub_100038578();
    v136 = sub_1000387A8();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v197 = v138;
      *v137 = 136315138;
      v139 = sub_100038B78();
      v141 = sub_10001BFAC(v139, v140, &v197);

      *(v137 + 4) = v141;
      _os_log_impl(&_mh_execute_header, v135, v136, "Time elapsed: %s.", v137, 0xCu);
      sub_10000387C(v138);
    }

    *(v0 + 2586) = 4;
    v101 = *(v0 + 2080);
    v102 = *(v0 + 2072);
    v103 = sub_100015958;
  }

LABEL_90:

  return _swift_task_switch(v103, v102, v101);
}

uint64_t sub_1000102D4()
{
  sub_100038318();

  return _swift_task_switch(sub_100010350, 0, 0);
}

uint64_t sub_100010350()
{
  v1 = *(v0 + 2591);
  sub_10001E938(v0 + 752);
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 0x726170736E617274;
    }

    else
    {
      v2 = 0x6C69616D65;
    }

    if (v1)
    {
      v3 = 0xEC00000079636E65;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
    v3 = 0xE300000000000000;
    v2 = 7564659;
LABEL_10:
    *(v0 + 2440) = v3;
    v4 = swift_task_alloc();
    *(v0 + 2448) = v4;
    *v4 = v0;
    v4[1] = sub_1000108DC;
    v5 = *(v0 + 2360);
    v6 = *(v0 + 1736);

    return sub_100017DB4(v5, v6, v2, v3);
  }

  sub_10001E98C(v0 + 936);

  v8 = sub_100038578();
  v9 = sub_1000387C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to complete embed step.", v10, 2u);
  }

  v11 = *(v0 + 2144);
  v12 = *(v0 + 2024);
  v13 = *(v0 + 2016);
  v25 = *(v0 + 2000);
  v14 = *(v0 + 1768);
  v15 = *(v0 + 1752);
  v16 = *(v0 + 1744);
  v23 = *(v0 + 2056);
  v24 = *(v0 + 1736);
  v17 = *(v0 + 1704);

  sub_10001E9E0(v18, v19, v20);
  v21 = objc_allocWithZone(sub_100038388());
  v26 = sub_100038368();

  sub_10001FD94(v17, &qword_100048178, &unk_100039530);
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v23, v13);
  sub_10001EA9C(v24, type metadata accessor for EmbedParameters);
  sub_10001FD94(v25, &qword_1000482E0, &qword_100039548);

  v22 = *(v0 + 8);

  return v22(v26);
}

uint64_t sub_1000108DC(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2456) = a1;
  *(v3 + 2597) = a2;

  return _swift_task_switch(sub_100010A1C, 0, 0);
}

uint64_t sub_100010A1C()
{
  v164 = v0;
  v1 = *(v0 + 2456);
  if (*(v0 + 2597) != 24)
  {

    sub_10001E98C(v0 + 936);

    v18 = sub_100038578();
    v19 = sub_1000387C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to complete embed step.", v20, 2u);
    }

    v21 = *(v0 + 2597);
    v22 = *(v0 + 2144);
    v23 = *(v0 + 2024);
    v144 = *(v0 + 2016);
    v146 = *(v0 + 2056);
    v24 = *(v0 + 1768);
    v25 = *(v0 + 1752);
    v26 = *(v0 + 1744);
    v150 = *(v0 + 1736);
    v154 = *(v0 + 2000);
    v27 = *(v0 + 1704);

    v162 = &type metadata for ZeoliteEvalExtensionError;
    v163 = sub_10001E9E0(v28, v29, v30);
    LOBYTE(v160) = v21;
    v31 = objc_allocWithZone(sub_100038388());
    v156 = sub_100038368();

    sub_10001FD94(v27, &qword_100048178, &unk_100039530);
    (*(v25 + 8))(v24, v26);
    (*(v23 + 8))(v146, v144);
    goto LABEL_25;
  }

  if (!v1)
  {
    sub_10001E98C(v0 + 936);

    v32 = sub_100038578();
    v33 = sub_1000387C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to generate embeddings.", v34, 2u);
    }

    v35 = *(v0 + 2144);
    v36 = *(v0 + 2024);
    v37 = *(v0 + 2016);
    v154 = *(v0 + 2000);
    v38 = *(v0 + 1768);
    v39 = *(v0 + 1752);
    v40 = *(v0 + 1744);
    v147 = *(v0 + 2056);
    v150 = *(v0 + 1736);
    v41 = *(v0 + 1704);

    v162 = &type metadata for ZeoliteEvalExtensionError;
    v163 = sub_10001E9E0(v42, v43, v44);
    v45 = 12;
    goto LABEL_24;
  }

  v2 = *(v0 + 2595);
  if (v2 == 3)
  {
    v2 = 0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(v0 + 2456);
      v4 = sub_100038448();
      v6 = sub_100001758(v3, v4, v5);
      v8 = v7;
      v9 = v7;

      if (v9 == 24)
      {
        if (v6 >= 1)
        {
          v10 = sub_100038578();
          v11 = sub_1000387A8();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 134217984;
            *(v12 + 4) = v6;
            _os_log_impl(&_mh_execute_header, v10, v11, "Sent %ld events.", v12, 0xCu);
          }
        }

        v1 = *(v0 + 2456);
        goto LABEL_13;
      }

      sub_10001E98C(v0 + 936);

      v61 = sub_100038578();
      v62 = sub_1000387C8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to write embeddings events.", v63, 2u);
      }

      v64 = *(v0 + 2144);
      v65 = *(v0 + 2024);
      v145 = *(v0 + 2016);
      v148 = *(v0 + 2056);
      v66 = *(v0 + 1768);
      v67 = *(v0 + 1752);
      v68 = *(v0 + 1744);
      v150 = *(v0 + 1736);
      v154 = *(v0 + 2000);
      v69 = *(v0 + 1704);

      v162 = &type metadata for ZeoliteEvalExtensionError;
      v163 = sub_10001E9E0(v70, v71, v72);
      LOBYTE(v160) = v8;
      v73 = objc_allocWithZone(sub_100038388());
      v156 = sub_100038368();

      sub_10001FD94(v69, &qword_100048178, &unk_100039530);
      (*(v67 + 8))(v66, v68);
      (*(v65 + 8))(v148, v145);
LABEL_25:
      sub_10001EA9C(v150, type metadata accessor for EmbedParameters);
      sub_10001FD94(v154, &qword_1000482E0, &qword_100039548);

      v47 = *(v0 + 8);

      return v47(v156);
    }

    v49 = (*(v0 + 1736) + *(*(v0 + 1720) + 28));
    v50 = v49[1];
    if (v50)
    {
      v51 = *v49;
      v52 = *(v0 + 2456);
      v53 = swift_task_alloc();
      *(v0 + 2464) = v53;
      *v53 = v0;
      v53[1] = sub_100011F04;

      return sub_100001B88(v52, v51, v50);
    }

    sub_10001E98C(v0 + 936);

    v74 = sub_100038578();
    v75 = sub_1000387C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Invalid kvStoreKey provided", v76, 2u);
    }

    v35 = *(v0 + 2144);
    v36 = *(v0 + 2024);
    v37 = *(v0 + 2016);
    v154 = *(v0 + 2000);
    v38 = *(v0 + 1768);
    v39 = *(v0 + 1752);
    v40 = *(v0 + 1744);
    v147 = *(v0 + 2056);
    v150 = *(v0 + 1736);
    v41 = *(v0 + 1704);

    v162 = &type metadata for ZeoliteEvalExtensionError;
    v163 = sub_10001E9E0(v77, v78, v79);
    v45 = 21;
LABEL_24:
    LOBYTE(v160) = v45;
    v46 = objc_allocWithZone(sub_100038388());
    v156 = sub_100038368();

    sub_10001FD94(v41, &qword_100048178, &unk_100039530);
    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v147, v37);
    goto LABEL_25;
  }

LABEL_13:
  v153 = v1;
  *(v0 + 2480) = v1;
  v13 = *(v0 + 1888);
  (*(v0 + 2328))(*(v0 + 1672), 1, 1, *(v0 + 1528));
  sub_1000383C8();
  v14 = *(v13 + 32);

  sub_10001EA9C(v13, type metadata accessor for ZeoliteEvalExtensionConfig);
  v15 = (v14 + 32);
  v16 = *(v14 + 16);
  while (v16)
  {
    if (*v15 == 2)
    {

LABEL_34:
      v59 = *(v0 + 2592);

      if (v59 == 3)
      {
        v60 = 0;
      }

      else
      {
        v60 = v59;
      }

      if (v60 == 1)
      {
LABEL_62:
      }

      else
      {
        v85 = sub_100038A58();

        if ((v85 & 1) == 0)
        {
          v86 = *(v0 + 2592);
          if (v86 == 3)
          {
            v86 = 0;
          }

          if (v86 > 1)
          {
            goto LABEL_62;
          }

          v114 = sub_100038A58();

          if ((v114 & 1) == 0)
          {
            *(v0 + 2504) = v153;
            *(v0 + 2585) = 2;
            v56 = *(v0 + 2080);
            v57 = *(v0 + 2072);
            v58 = sub_10001416C;
            goto LABEL_74;
          }
        }
      }

      v115 = *(v0 + 2000);
      v116 = *(v0 + 1488);
      v117 = *(v0 + 1480);
      sub_10001FD94(*(v0 + 1672), &qword_100048178, &unk_100039530);
      swift_beginAccess();
      if ((*(v116 + 48))(v115, 1, v117))
      {
        (*(v0 + 2328))(*(v0 + 1664), 1, 1, *(v0 + 1528));
      }

      else
      {
        sub_10001FA38(*(v0 + 2000) + *(*(v0 + 1480) + 20), *(v0 + 1664), &qword_100048178, &unk_100039530);
      }

      v118 = *(v0 + 1672);
      v119 = *(v0 + 1656);
      v120 = *(v0 + 1536);
      v121 = *(v0 + 1528);
      sub_10001EA34(*(v0 + 1664), v118, &qword_100048178, &unk_100039530);
      sub_10001FA38(v118, v119, &qword_100048178, &unk_100039530);
      if ((*(v120 + 48))(v119, 1, v121) == 1)
      {
        sub_10001FD94(*(v0 + 1656), &qword_100048178, &unk_100039530);
        v122 = sub_100038578();
        v123 = sub_1000387A8();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 0;
          _os_log_impl(&_mh_execute_header, v122, v123, "Query for all available embeddings.", v124, 2u);
        }
      }

      else
      {
        v125 = *(v0 + 1560);
        v126 = *(v0 + 1552);
        v127 = *(v0 + 1544);
        v128 = *(v0 + 1536);
        v129 = *(v0 + 1528);
        (*(v128 + 32))(v125, *(v0 + 1656), v129);
        v130 = *(v128 + 16);
        v130(v126, v125, v129);
        v130(v127, v126, v129);
        v131 = *(v128 + 8);
        v131(v126, v129);
        v132 = sub_100038578();
        v133 = sub_1000387A8();
        v134 = os_log_type_enabled(v132, v133);
        v135 = *(v0 + 1560);
        v136 = *(v0 + 1544);
        v137 = *(v0 + 1528);
        if (v134)
        {
          v152 = v131;
          v138 = swift_slowAlloc();
          v158 = v135;
          v139 = swift_slowAlloc();
          v160 = v139;
          *v138 = 136315138;
          v140 = sub_100037EA8();
          v142 = v141;
          v152(v136, v137);
          v143 = sub_10001BFAC(v140, v142, &v160);

          *(v138 + 4) = v143;
          _os_log_impl(&_mh_execute_header, v132, v133, "Last queried: %s", v138, 0xCu);
          sub_10000387C(v139);

          v152(v158, v137);
        }

        else
        {

          v131(v136, v137);
          v131(v135, v137);
        }
      }

      *(v0 + 2588) = 1;
      v56 = *(v0 + 2080);
      v57 = *(v0 + 2072);
      v58 = sub_100013090;
      goto LABEL_74;
    }

    v17 = sub_100038A58();

    ++v15;
    --v16;
    if (v17)
    {
      goto LABEL_34;
    }
  }

  sub_10001E98C(v0 + 936);

  *(v0 + 2536) = v153;
  *(v0 + 2528) = 0;
  v54 = *(v0 + 1976);
  sub_1000383C8();
  v55 = *(v54 + 32);

  sub_10001EA9C(v54, type metadata accessor for ZeoliteEvalExtensionConfig);
  LOBYTE(v54) = sub_100015E04(3u, v55);

  if (v54)
  {
    *(v0 + 2587) = 2;
    v56 = *(v0 + 2080);
    v57 = *(v0 + 2072);
    v58 = sub_100014D64;
  }

  else
  {

    v80 = *(v0 + 1704);
    v81 = *(v0 + 1672);
    v82 = *(v0 + 1496);
    v83 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v81, v82 + *(v83 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v80, v82 + *(v83 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v84.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v84.super.isa = 0;
    }

    v87 = *(v0 + 2120);
    v88 = *(v0 + 2056);
    v89 = *(v0 + 2040);
    v149 = *(v0 + 2144);
    v151 = *(v0 + 2032);
    v90 = *(v0 + 2024);
    v91 = *(v0 + 2016);
    v92 = *(v0 + 1976);
    sub_1000383C8();
    v160 = 0x6769666E6F63;
    v161 = 0xE600000000000000;
    *(v0 + 1448) = *v92;
    v166._countAndFlagsBits = sub_100038A38();
    sub_100038698(v166);

    sub_10001EA9C(v92, type metadata accessor for ZeoliteEvalExtensionConfig);
    v93 = sub_100038638();

    [v149 setValue:v84.super.isa forKey:v93];

    swift_unknownObjectRelease();
    v87(v89, v88, v91);
    v87(v151, v89, v91);
    v94 = *(v90 + 8);
    *(v0 + 2544) = v94;
    *(v0 + 2552) = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v94(v89, v91);
    v95 = sub_100038578();
    v96 = sub_1000387A8();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 2032);
    v99 = *(v0 + 2016);
    if (v97)
    {
      v100 = *(v0 + 1976);
      v101 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v159 = v157;
      *v101 = 136315138;
      v155 = v96;
      sub_1000383C8();
      v160 = 0x6769666E6F63;
      v161 = 0xE600000000000000;
      *(v0 + 1456) = *v100;
      v167._countAndFlagsBits = sub_100038A38();
      sub_100038698(v167);

      sub_10001EA9C(v100, type metadata accessor for ZeoliteEvalExtensionConfig);
      v94(v98, v99);
      v102 = sub_10001BFAC(v160, v161, &v159);

      *(v101 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v95, v155, "Execution state saved for %s.", v101, 0xCu);
      sub_10000387C(v157);
    }

    else
    {

      v94(v98, v99);
    }

    v103 = *(v0 + 1760);
    v104 = *(v0 + 1752);
    v105 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v106 = *(v104 + 8);
    *(v0 + 2560) = v106;
    *(v0 + 2568) = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v106(v103, v105);
    v107 = sub_100038578();
    v108 = sub_1000387A8();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v160 = v110;
      *v109 = 136315138;
      v111 = sub_100038B78();
      v113 = sub_10001BFAC(v111, v112, &v160);

      *(v109 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v107, v108, "Time elapsed: %s.", v109, 0xCu);
      sub_10000387C(v110);
    }

    *(v0 + 2586) = 4;
    v56 = *(v0 + 2080);
    v57 = *(v0 + 2072);
    v58 = sub_100015958;
  }

LABEL_74:

  return _swift_task_switch(v58, v57, v56);
}

uint64_t sub_100011F04(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2472) = a1;
  *(v3 + 2598) = a2;

  return _swift_task_switch(sub_100012008, 0, 0);
}

uint64_t sub_100012008(uint64_t a1)
{
  v115 = v1;
  v2 = *(v1 + 2598);
  if (v2 == 24)
  {
    v3 = *(v1 + 2472);
    if (v3 >= 1)
    {
      v4 = sub_100038578();
      v5 = sub_1000387A8();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = v3;
        _os_log_impl(&_mh_execute_header, v4, v5, "Sent %ld events.", v6, 0xCu);
      }
    }

    v104 = *(v1 + 2456);
    *(v1 + 2480) = v104;
    v7 = *(v1 + 1888);
    (*(v1 + 2328))(*(v1 + 1672), 1, 1, *(v1 + 1528));
    sub_1000383C8();
    v8 = *(v7 + 32);

    sub_10001EA9C(v7, type metadata accessor for ZeoliteEvalExtensionConfig);
    v9 = (v8 + 32);
    v10 = *(v8 + 16);
    while (v10)
    {
      if (*v9 == 2)
      {

LABEL_18:
        v32 = *(v1 + 2592);

        if (v32 == 3)
        {
          v33 = 0;
        }

        else
        {
          v33 = v32;
        }

        if (v33 == 1)
        {
LABEL_40:
        }

        else
        {
          v39 = sub_100038A58();

          if ((v39 & 1) == 0)
          {
            v40 = *(v1 + 2592);
            if (v40 == 3)
            {
              v40 = 0;
            }

            if (v40 > 1)
            {
              goto LABEL_40;
            }

            v68 = sub_100038A58();

            if ((v68 & 1) == 0)
            {
              *(v1 + 2504) = v104;
              *(v1 + 2585) = 2;
              v29 = *(v1 + 2080);
              v30 = *(v1 + 2072);
              v31 = sub_10001416C;
              goto LABEL_52;
            }
          }
        }

        v69 = *(v1 + 2000);
        v70 = *(v1 + 1488);
        v71 = *(v1 + 1480);
        sub_10001FD94(*(v1 + 1672), &qword_100048178, &unk_100039530);
        swift_beginAccess();
        if ((*(v70 + 48))(v69, 1, v71))
        {
          (*(v1 + 2328))(*(v1 + 1664), 1, 1, *(v1 + 1528));
        }

        else
        {
          sub_10001FA38(*(v1 + 2000) + *(*(v1 + 1480) + 20), *(v1 + 1664), &qword_100048178, &unk_100039530);
        }

        v72 = *(v1 + 1672);
        v73 = *(v1 + 1656);
        v74 = *(v1 + 1536);
        v75 = *(v1 + 1528);
        sub_10001EA34(*(v1 + 1664), v72, &qword_100048178, &unk_100039530);
        sub_10001FA38(v72, v73, &qword_100048178, &unk_100039530);
        if ((*(v74 + 48))(v73, 1, v75) == 1)
        {
          sub_10001FD94(*(v1 + 1656), &qword_100048178, &unk_100039530);
          v76 = sub_100038578();
          v77 = sub_1000387A8();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&_mh_execute_header, v76, v77, "Query for all available embeddings.", v78, 2u);
          }
        }

        else
        {
          v79 = *(v1 + 1560);
          v80 = *(v1 + 1552);
          v81 = *(v1 + 1544);
          v82 = *(v1 + 1536);
          v83 = *(v1 + 1528);
          (*(v82 + 32))(v79, *(v1 + 1656), v83);
          v84 = *(v82 + 16);
          v84(v80, v79, v83);
          v84(v81, v80, v83);
          v85 = *(v82 + 8);
          v85(v80, v83);
          v86 = sub_100038578();
          v87 = sub_1000387A8();
          v88 = os_log_type_enabled(v86, v87);
          v89 = *(v1 + 1560);
          v90 = *(v1 + 1544);
          v91 = *(v1 + 1528);
          if (v88)
          {
            v103 = v85;
            v92 = swift_slowAlloc();
            v109 = v89;
            v93 = swift_slowAlloc();
            v111 = v93;
            *v92 = 136315138;
            v94 = sub_100037EA8();
            v96 = v95;
            v103(v90, v91);
            v97 = sub_10001BFAC(v94, v96, &v111);

            *(v92 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v86, v87, "Last queried: %s", v92, 0xCu);
            sub_10000387C(v93);

            v103(v109, v91);
          }

          else
          {

            v85(v90, v91);
            v85(v89, v91);
          }
        }

        *(v1 + 2588) = 1;
        v29 = *(v1 + 2080);
        v30 = *(v1 + 2072);
        v31 = sub_100013090;
        goto LABEL_52;
      }

      v11 = sub_100038A58();

      ++v9;
      --v10;
      if (v11)
      {
        goto LABEL_18;
      }
    }

    sub_10001E98C(v1 + 936);

    *(v1 + 2536) = v104;
    *(v1 + 2528) = 0;
    v27 = *(v1 + 1976);
    sub_1000383C8();
    v28 = *(v27 + 32);

    sub_10001EA9C(v27, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v27) = sub_100015E04(3u, v28);

    if (v27)
    {
      *(v1 + 2587) = 2;
      v29 = *(v1 + 2080);
      v30 = *(v1 + 2072);
      v31 = sub_100014D64;
    }

    else
    {

      v34 = *(v1 + 1704);
      v35 = *(v1 + 1672);
      v36 = *(v1 + 1496);
      v37 = *(v1 + 1480);
      sub_100037EF8();
      sub_10001FA38(v35, v36 + *(v37 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v34, v36 + *(v37 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v38.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v38.super.isa = 0;
      }

      v41 = *(v1 + 2120);
      v42 = *(v1 + 2056);
      v43 = *(v1 + 2040);
      v100 = *(v1 + 2144);
      v102 = *(v1 + 2032);
      v44 = *(v1 + 2024);
      v45 = *(v1 + 2016);
      v46 = *(v1 + 1976);
      sub_1000383C8();
      v111 = 0x6769666E6F63;
      v112 = 0xE600000000000000;
      *(v1 + 1448) = *v46;
      v117._countAndFlagsBits = sub_100038A38();
      sub_100038698(v117);

      sub_10001EA9C(v46, type metadata accessor for ZeoliteEvalExtensionConfig);
      v47 = sub_100038638();

      [v100 setValue:v38.super.isa forKey:v47];

      swift_unknownObjectRelease();
      v41(v43, v42, v45);
      v41(v102, v43, v45);
      v48 = *(v44 + 8);
      *(v1 + 2544) = v48;
      *(v1 + 2552) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v48(v43, v45);
      v49 = sub_100038578();
      v50 = sub_1000387A8();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v1 + 2032);
      v53 = *(v1 + 2016);
      if (v51)
      {
        v54 = *(v1 + 1976);
        v55 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v110 = v108;
        *v55 = 136315138;
        v106 = v50;
        sub_1000383C8();
        v111 = 0x6769666E6F63;
        v112 = 0xE600000000000000;
        *(v1 + 1456) = *v54;
        v118._countAndFlagsBits = sub_100038A38();
        sub_100038698(v118);

        sub_10001EA9C(v54, type metadata accessor for ZeoliteEvalExtensionConfig);
        v48(v52, v53);
        v56 = sub_10001BFAC(v111, v112, &v110);

        *(v55 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v106, "Execution state saved for %s.", v55, 0xCu);
        sub_10000387C(v108);
      }

      else
      {

        v48(v52, v53);
      }

      v57 = *(v1 + 1760);
      v58 = *(v1 + 1752);
      v59 = *(v1 + 1744);
      sub_100038868();
      sub_100038878();
      v60 = *(v58 + 8);
      *(v1 + 2560) = v60;
      *(v1 + 2568) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v60(v57, v59);
      v61 = sub_100038578();
      v62 = sub_1000387A8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v111 = v64;
        *v63 = 136315138;
        v65 = sub_100038B78();
        v67 = sub_10001BFAC(v65, v66, &v111);

        *(v63 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "Time elapsed: %s.", v63, 0xCu);
        sub_10000387C(v64);
      }

      *(v1 + 2586) = 4;
      v29 = *(v1 + 2080);
      v30 = *(v1 + 2072);
      v31 = sub_100015958;
    }

LABEL_52:

    return _swift_task_switch(v31, v30, v29);
  }

  else
  {

    sub_10001E98C(v1 + 936);

    v12 = sub_100038578();
    v13 = sub_1000387C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to write embeddings events.", v14, 2u);
    }

    v15 = *(v1 + 2144);
    v16 = *(v1 + 2024);
    v98 = *(v1 + 2016);
    v99 = *(v1 + 2056);
    v17 = *(v1 + 1768);
    v18 = *(v1 + 1752);
    v19 = *(v1 + 1744);
    v101 = *(v1 + 1736);
    v105 = *(v1 + 2000);
    v20 = *(v1 + 1704);

    v113 = &type metadata for ZeoliteEvalExtensionError;
    v114 = sub_10001E9E0(v21, v22, v23);
    LOBYTE(v111) = v2;
    v24 = objc_allocWithZone(sub_100038388());
    v107 = sub_100038368();

    sub_10001FD94(v20, &qword_100048178, &unk_100039530);
    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v99, v98);
    sub_10001EA9C(v101, type metadata accessor for EmbedParameters);
    sub_10001FD94(v105, &qword_1000482E0, &qword_100039548);

    v25 = *(v1 + 8);

    return v25(v107);
  }
}

uint64_t sub_100013090()
{
  sub_100038318();

  return _swift_task_switch(sub_10001310C, 0, 0);
}

uint64_t sub_10001310C(uint64_t a1)
{
  v2 = *(v1 + 2592);
  if (v2 == 3)
  {
    v2 = 0;
  }

  v3 = *(v1 + 2480);
  if (!v2)
  {
    goto LABEL_23;
  }

  if (v2 == 1)
  {
    v4 = *(v1 + 2328);
    v5 = *(v1 + 2593);
    v6 = *(v1 + 1672);
    v7 = *(v1 + 1648);
    v8 = *(v1 + 1640);
    v9 = *(v1 + 1528);

    sub_10001FA38(v6, v7, &qword_100048178, &unk_100039530);
    v4(v8, 1, 1, v9);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v11 = 0xE300000000000000;
        v10 = 7564659;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }
    }

    else
    {
      if (v5)
      {
        v10 = 0x726170736E617274;
      }

      else
      {
        v10 = 0x6C69616D65;
      }

      if (v5)
      {
        v11 = 0xEC00000079636E65;
      }

      else
      {
        v11 = 0xE500000000000000;
      }
    }

    v31 = *(v1 + 1648);
    v32 = *(v1 + 1640);
    v3 = sub_1000024D0(v31, v32, 0, *(v1 + 2224), *(v1 + 2232), v10, v11);
    v34 = v33;

    sub_10001FD94(v32, &qword_100048178, &unk_100039530);
    sub_10001FD94(v31, &qword_100048178, &unk_100039530);
    if (v34 == 24)
    {
LABEL_23:
      if (v3)
      {
        v35 = v3[2];
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_100038578();
      v37 = sub_1000387A8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "Queried %ld events.", v38, 0xCu);
      }

      v39 = *(v1 + 2328);
      v40 = *(v1 + 1680);
      v41 = *(v1 + 1672);
      v42 = *(v1 + 1528);

      sub_100037EF8();
      sub_10001FD94(v41, &qword_100048178, &unk_100039530);
      v39(v40, 0, 1, v42);
      sub_10001EA34(v40, v41, &qword_100048178, &unk_100039530);
      *(v1 + 2504) = v3;
      *(v1 + 2585) = 2;
      v43 = *(v1 + 2080);
      v44 = *(v1 + 2072);

      return _swift_task_switch(sub_10001416C, v44, v43);
    }

    sub_10001E98C(v1 + 936);

    v45 = sub_100038578();
    v46 = sub_1000387C8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to query events.", v47, 2u);
    }

    v48 = *(v1 + 2144);
    v49 = *(v1 + 2024);
    v61 = *(v1 + 2016);
    v63 = *(v1 + 2056);
    v59 = *(v1 + 1768);
    v50 = *(v1 + 1752);
    v51 = *(v1 + 1744);
    v64 = *(v1 + 1736);
    v65 = *(v1 + 2000);
    v52 = *(v1 + 1704);
    v53 = *(v1 + 1672);

    sub_10001E9E0(v54, v55, v56);
    v57 = objc_allocWithZone(sub_100038388());
    v66 = sub_100038368();

    sub_10001FD94(v53, &qword_100048178, &unk_100039530);
    sub_10001FD94(v52, &qword_100048178, &unk_100039530);
    (*(v50 + 8))(v59, v51);
    (*(v49 + 8))(v63, v61);
    goto LABEL_34;
  }

  v12 = *(v1 + 2248);

  if (!v12)
  {

    sub_10001E98C(v1 + 936);
    v17 = sub_100038578();
    v18 = sub_1000387C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalid kvStoreKey provided", v19, 2u);
    }

    v20 = *(v1 + 2144);
    v21 = *(v1 + 2024);
    v60 = *(v1 + 2016);
    v62 = *(v1 + 2056);
    v22 = *(v1 + 1768);
    v23 = *(v1 + 1752);
    v24 = *(v1 + 1744);
    v64 = *(v1 + 1736);
    v65 = *(v1 + 2000);
    v25 = *(v1 + 1704);
    v26 = *(v1 + 1672);

    sub_10001E9E0(v27, v28, v29);
    v30 = objc_allocWithZone(sub_100038388());
    v66 = sub_100038368();

    sub_10001FD94(v26, &qword_100048178, &unk_100039530);
    sub_10001FD94(v25, &qword_100048178, &unk_100039530);
    (*(v23 + 8))(v22, v24);
    (*(v21 + 8))(v62, v60);
LABEL_34:
    sub_10001EA9C(v64, type metadata accessor for EmbedParameters);
    sub_10001FD94(v65, &qword_1000482E0, &qword_100039548);

    v58 = *(v1 + 8);

    return v58(v66);
  }

  v13 = *(v1 + 2248);

  v14 = swift_task_alloc();
  *(v1 + 2488) = v14;
  *v14 = v1;
  v14[1] = sub_100013A44;
  v15 = *(v1 + 2240);

  return sub_100002E14(v15, v13);
}

uint64_t sub_100013A44(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2496) = a1;
  *(v3 + 2599) = a2;

  return _swift_task_switch(sub_100013B68, 0, 0);
}

uint64_t sub_100013B68(uint64_t a1)
{
  v2 = *(v1 + 2496);
  if (*(v1 + 2599) == 24)
  {
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    v19 = sub_100038578();
    v20 = sub_1000387A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v19, v20, "Queried %ld events.", v21, 0xCu);
    }

    v22 = *(v1 + 2328);
    v23 = *(v1 + 1680);
    v24 = *(v1 + 1672);
    v25 = *(v1 + 1528);

    sub_100037EF8();
    sub_10001FD94(v24, &qword_100048178, &unk_100039530);
    v22(v23, 0, 1, v25);
    sub_10001EA34(v23, v24, &qword_100048178, &unk_100039530);
    *(v1 + 2504) = v2;
    *(v1 + 2585) = 2;
    v26 = *(v1 + 2080);
    v27 = *(v1 + 2072);

    return _swift_task_switch(sub_10001416C, v27, v26);
  }

  else
  {

    sub_10001E98C(v1 + 936);

    v4 = sub_100038578();
    v5 = sub_1000387C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to query events.", v6, 2u);
    }

    v7 = *(v1 + 2144);
    v8 = *(v1 + 2024);
    v29 = *(v1 + 2016);
    v30 = *(v1 + 2056);
    v28 = *(v1 + 1768);
    v9 = *(v1 + 1752);
    v10 = *(v1 + 1744);
    v31 = *(v1 + 1736);
    v32 = *(v1 + 2000);
    v11 = *(v1 + 1704);
    v12 = *(v1 + 1672);

    sub_10001E9E0(v13, v14, v15);
    v16 = objc_allocWithZone(sub_100038388());
    v33 = sub_100038368();

    sub_10001FD94(v12, &qword_100048178, &unk_100039530);
    sub_10001FD94(v11, &qword_100048178, &unk_100039530);
    (*(v9 + 8))(v28, v10);
    (*(v8 + 8))(v30, v29);
    sub_10001EA9C(v31, type metadata accessor for EmbedParameters);
    sub_10001FD94(v32, &qword_1000482E0, &qword_100039548);

    v17 = *(v1 + 8);

    return v17(v33);
  }
}

uint64_t sub_10001416C()
{
  sub_100038318();
  v1 = swift_task_alloc();
  v0[314] = v1;
  *v1 = v0;
  v1[1] = sub_100014228;
  v2 = v0[313];
  v3 = v0[276];
  v4 = v0[275];

  return sub_100018DC0(v2, (v0 + 128), v4, v3);
}

uint64_t sub_100014228(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2520) = a1;
  *(v3 + 2600) = a2;

  sub_10001E98C(v3 + 936);

  return _swift_task_switch(sub_100014354, 0, 0);
}

uint64_t sub_100014354()
{
  v70 = v0;
  v1 = *(v0 + 2520);
  if (*(v0 + 2600) == 24)
  {
    *(v0 + 2536) = *(v0 + 2504);
    *(v0 + 2528) = v1;
    v2 = *(v0 + 1976);
    sub_1000383C8();
    v3 = *(v2 + 32);

    sub_10001EA9C(v2, type metadata accessor for ZeoliteEvalExtensionConfig);
    LOBYTE(v2) = sub_100015E04(3u, v3);

    if (v2)
    {
      *(v0 + 2587) = 2;
      v4 = *(v0 + 2080);
      v5 = *(v0 + 2072);
      v6 = sub_100014D64;
    }

    else
    {

      v23 = *(v0 + 1704);
      v24 = *(v0 + 1672);
      v25 = *(v0 + 1496);
      v26 = *(v0 + 1480);
      sub_100037EF8();
      sub_10001FA38(v24, v25 + *(v26 + 20), &qword_100048178, &unk_100039530);
      sub_10001FA38(v23, v25 + *(v26 + 24), &qword_100048178, &unk_100039530);
      if (sub_100023AF0())
      {
        v27.super.isa = sub_1000385E8().super.isa;
      }

      else
      {
        v27.super.isa = 0;
      }

      v28 = *(v0 + 2120);
      v29 = *(v0 + 2056);
      v30 = *(v0 + 2040);
      v58 = *(v0 + 2144);
      v60 = *(v0 + 2032);
      v31 = *(v0 + 2024);
      v32 = *(v0 + 2016);
      v33 = *(v0 + 1976);
      sub_1000383C8();
      v66 = 0x6769666E6F63;
      v67 = 0xE600000000000000;
      *(v0 + 1448) = *v33;
      v72._countAndFlagsBits = sub_100038A38();
      sub_100038698(v72);

      sub_10001EA9C(v33, type metadata accessor for ZeoliteEvalExtensionConfig);
      v34 = sub_100038638();

      [v58 setValue:v27.super.isa forKey:v34];

      swift_unknownObjectRelease();
      v28(v30, v29, v32);
      v28(v60, v30, v32);
      v35 = *(v31 + 8);
      *(v0 + 2544) = v35;
      *(v0 + 2552) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v35(v30, v32);
      v36 = sub_100038578();
      v37 = sub_1000387A8();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 2032);
      v40 = *(v0 + 2016);
      if (v38)
      {
        v41 = *(v0 + 1976);
        v64 = v37;
        v42 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v65 = v62;
        *v42 = 136315138;
        sub_1000383C8();
        v66 = 0x6769666E6F63;
        v67 = 0xE600000000000000;
        *(v0 + 1456) = *v41;
        v73._countAndFlagsBits = sub_100038A38();
        sub_100038698(v73);

        sub_10001EA9C(v41, type metadata accessor for ZeoliteEvalExtensionConfig);
        v35(v39, v40);
        v43 = sub_10001BFAC(v66, v67, &v65);

        *(v42 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v64, "Execution state saved for %s.", v42, 0xCu);
        sub_10000387C(v62);
      }

      else
      {

        v35(v39, v40);
      }

      v44 = *(v0 + 1760);
      v45 = *(v0 + 1752);
      v46 = *(v0 + 1744);
      sub_100038868();
      sub_100038878();
      v47 = *(v45 + 8);
      *(v0 + 2560) = v47;
      *(v0 + 2568) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v47(v44, v46);
      v48 = sub_100038578();
      v49 = sub_1000387A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v66 = v51;
        *v50 = 136315138;
        v52 = sub_100038B78();
        v54 = sub_10001BFAC(v52, v53, &v66);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v48, v49, "Time elapsed: %s.", v50, 0xCu);
        sub_10000387C(v51);
      }

      *(v0 + 2586) = 4;
      v4 = *(v0 + 2080);
      v5 = *(v0 + 2072);
      v6 = sub_100015958;
    }

    return _swift_task_switch(v6, v5, v4);
  }

  else
  {

    v7 = sub_100038578();
    v8 = sub_1000387C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to complete score step.", v9, 2u);
    }

    v10 = *(v0 + 2600);
    v11 = *(v0 + 2144);
    v12 = *(v0 + 2024);
    v56 = *(v0 + 2016);
    v57 = *(v0 + 2056);
    v55 = *(v0 + 1768);
    v13 = *(v0 + 1752);
    v14 = *(v0 + 1744);
    v59 = *(v0 + 1736);
    v61 = *(v0 + 2000);
    v15 = *(v0 + 1704);
    v16 = *(v0 + 1672);

    v68 = &type metadata for ZeoliteEvalExtensionError;
    v69 = sub_10001E9E0(v17, v18, v19);
    LOBYTE(v66) = v10;
    v20 = objc_allocWithZone(sub_100038388());
    v63 = sub_100038368();

    sub_10001FD94(v16, &qword_100048178, &unk_100039530);
    sub_10001FD94(v15, &qword_100048178, &unk_100039530);
    (*(v13 + 8))(v55, v14);
    (*(v12 + 8))(v57, v56);
    sub_10001EA9C(v59, type metadata accessor for EmbedParameters);
    sub_10001FD94(v61, &qword_1000482E0, &qword_100039548);

    v21 = *(v0 + 8);

    return v21(v63);
  }
}

uint64_t sub_100014D64()
{
  sub_100038318();

  return _swift_task_switch(sub_100014DE0, 0, 0);
}

uint64_t sub_100014DE0()
{
  v93 = v0;
  v1 = *(v0 + 2536);
  v2 = *(v0 + 1880);
  v3 = sub_100038448();
  v5 = v4;
  sub_1000383C8();
  v6 = *v2;
  sub_10001EA9C(v2, type metadata accessor for ZeoliteEvalExtensionConfig);
  if (v1)
  {
    v7 = *(v0 + 2536);
    v8 = *(v7 + 16);
    if (v8)
    {
      v74 = v6;
      v77 = v3;
      v80 = v5;
      v9 = *(v0 + 1512);
      v89 = _swiftEmptyArrayStorage;
      sub_10001BE20(v8);
      v11 = *(v9 + 16);
      v10 = v9 + 16;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v83 = *(v10 + 56);
      v86 = v11;
      do
      {
        v13 = *(v0 + 1520);
        v14 = *(v0 + 1504);
        v86(v13, v12, v14);
        v15 = sub_100038118();
        (*(v10 - 8))(v13, v14);
        v16 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001C5DC(0, *(v89 + 16) + 1, 1);
          v16 = v89;
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          sub_10001C5DC((v17 > 1), v18 + 1, 1);
          v16 = v89;
        }

        v16[2] = v18 + 1;
        v16[v18 + 4] = v15;
        v12 += v83;
        --v8;
      }

      while (v8);

      v3 = v77;
      v5 = v80;
      v6 = v74;
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *(v0 + 2580);
  v20 = (v19 >> 8) & 1;
  if (*(v0 + 2580) == 2)
  {
    v20 = 1;
  }

  v21 = (*(v0 + 2580) == 2) | v19;
  if (v20)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_10001A9A4(v22 & 0xFFFFFFFE | v21 & 1, v3, v5, v6, *(v0 + 2528), v16);

  if (v23 == 24)
  {
    v24 = *(v0 + 1704);
    v25 = *(v0 + 1672);
    v26 = *(v0 + 1496);
    v27 = *(v0 + 1480);
    sub_100037EF8();
    sub_10001FA38(v25, v26 + *(v27 + 20), &qword_100048178, &unk_100039530);
    sub_10001FA38(v24, v26 + *(v27 + 24), &qword_100048178, &unk_100039530);
    if (sub_100023AF0())
    {
      v28.super.isa = sub_1000385E8().super.isa;
    }

    else
    {
      v28.super.isa = 0;
    }

    v45 = *(v0 + 2120);
    v46 = *(v0 + 2056);
    v47 = *(v0 + 2040);
    v76 = *(v0 + 2144);
    v79 = *(v0 + 2032);
    v48 = *(v0 + 2024);
    v49 = *(v0 + 2016);
    v50 = *(v0 + 1976);
    sub_1000383C8();
    v89 = 0x6769666E6F63;
    v90 = 0xE600000000000000;
    *(v0 + 1448) = *v50;
    v95._countAndFlagsBits = sub_100038A38();
    sub_100038698(v95);

    sub_10001EA9C(v50, type metadata accessor for ZeoliteEvalExtensionConfig);
    v51 = sub_100038638();

    [v76 setValue:v28.super.isa forKey:v51];

    swift_unknownObjectRelease();
    v45(v47, v46, v49);
    v45(v79, v47, v49);
    v52 = *(v48 + 8);
    *(v0 + 2544) = v52;
    *(v0 + 2552) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52(v47, v49);
    v53 = sub_100038578();
    v54 = sub_1000387A8();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 2032);
    v57 = *(v0 + 2016);
    if (v55)
    {
      v58 = *(v0 + 1976);
      v59 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v88 = v85;
      *v59 = 136315138;
      v82 = v54;
      sub_1000383C8();
      v89 = 0x6769666E6F63;
      v90 = 0xE600000000000000;
      *(v0 + 1456) = *v58;
      v96._countAndFlagsBits = sub_100038A38();
      sub_100038698(v96);

      sub_10001EA9C(v58, type metadata accessor for ZeoliteEvalExtensionConfig);
      v52(v56, v57);
      v60 = sub_10001BFAC(v89, v90, &v88);

      *(v59 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v53, v82, "Execution state saved for %s.", v59, 0xCu);
      sub_10000387C(v85);
    }

    else
    {

      v52(v56, v57);
    }

    v61 = *(v0 + 1760);
    v62 = *(v0 + 1752);
    v63 = *(v0 + 1744);
    sub_100038868();
    sub_100038878();
    v64 = *(v62 + 8);
    *(v0 + 2560) = v64;
    *(v0 + 2568) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64(v61, v63);
    v65 = sub_100038578();
    v66 = sub_1000387A8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v89 = v68;
      *v67 = 136315138;
      v69 = sub_100038B78();
      v71 = sub_10001BFAC(v69, v70, &v89);

      *(v67 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "Time elapsed: %s.", v67, 0xCu);
      sub_10000387C(v68);
    }

    *(v0 + 2586) = 4;
    v72 = *(v0 + 2080);
    v73 = *(v0 + 2072);

    return _swift_task_switch(sub_100015958, v73, v72);
  }

  else
  {
    v29 = sub_100038578();
    v30 = sub_1000387C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to run analysis step.", v31, 2u);
    }

    v32 = *(v0 + 2144);
    v33 = *(v0 + 2024);
    v75 = *(v0 + 2016);
    v78 = *(v0 + 2056);
    v34 = *(v0 + 1768);
    v35 = *(v0 + 1752);
    v36 = *(v0 + 1744);
    v81 = *(v0 + 1736);
    v84 = *(v0 + 2000);
    v37 = *(v0 + 1704);
    v38 = *(v0 + 1672);

    v91 = &type metadata for ZeoliteEvalExtensionError;
    v92 = sub_10001E9E0(v39, v40, v41);
    LOBYTE(v89) = 23;
    v42 = objc_allocWithZone(sub_100038388());
    v87 = sub_100038368();

    sub_10001FD94(v38, &qword_100048178, &unk_100039530);
    sub_10001FD94(v37, &qword_100048178, &unk_100039530);
    (*(v35 + 8))(v34, v36);
    (*(v33 + 8))(v78, v75);
    sub_10001EA9C(v81, type metadata accessor for EmbedParameters);
    sub_10001FD94(v84, &qword_1000482E0, &qword_100039548);

    v43 = *(v0 + 8);

    return v43(v87);
  }
}

uint64_t sub_100015958()
{
  sub_100038318();

  return _swift_task_switch(sub_1000159D4, 0, 0);
}

uint64_t sub_1000159D4()
{
  v14 = v0[318];
  v1 = v0[268];
  v11 = v0[257];
  v12 = v0[320];
  v2 = v0[252];
  v15 = v0[250];
  v3 = v0[221];
  v4 = v0[218];
  v13 = v0[217];
  v5 = v0[213];
  v6 = v0[209];
  v7 = v0[187];
  v8 = objc_allocWithZone(sub_100038388());
  v16 = sub_100038378();

  sub_10001EA9C(v7, type metadata accessor for ExecutionState);
  sub_10001FD94(v6, &qword_100048178, &unk_100039530);
  sub_10001FD94(v5, &qword_100048178, &unk_100039530);
  v12(v3, v4);
  v14(v11, v2);
  sub_10001EA9C(v13, type metadata accessor for EmbedParameters);
  sub_10001FD94(v15, &qword_1000482E0, &qword_100039548);

  v9 = v0[1];

  return v9(v16);
}

BOOL sub_100015E04(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = 0xE500000000000000;
  v5 = a1;
  do
  {
    v7 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v9 = *v3;
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v12 = 0xE800000000000000;
        v11 = 0x736973796C616E61;
      }

      else
      {
        if (v9 == 4)
        {
          v11 = 0x636E657265666E69;
        }

        else
        {
          v11 = 0x617A696E656B6F74;
        }

        if (v9 == 4)
        {
          v12 = 0xE900000000000065;
        }

        else
        {
          v12 = 0xEC0000006E6F6974;
        }
      }
    }

    else
    {
      if (v9 == 1)
      {
        v10 = 0x6465626D65;
      }

      else
      {
        v10 = 0x65726F6373;
      }

      if (*v3)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x74636172747865;
      }

      if (*v3)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE700000000000000;
      }
    }

    v13 = 0x636E657265666E69;
    if (v5 != 4)
    {
      v13 = 0x617A696E656B6F74;
    }

    v14 = 0xEC0000006E6F6974;
    if (v5 == 4)
    {
      v14 = 0xE900000000000065;
    }

    if (v5 == 3)
    {
      v13 = 0x736973796C616E61;
      v14 = 0xE800000000000000;
    }

    if (v5 == 1)
    {
      v15 = 0x6465626D65;
    }

    else
    {
      v15 = 0x65726F6373;
    }

    if (!v5)
    {
      v15 = 0x74636172747865;
      v4 = 0xE700000000000000;
    }

    if (v5 <= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }

    if (v5 <= 2)
    {
      v17 = v4;
    }

    else
    {
      v17 = v14;
    }

    if (v11 == v16 && v12 == v17)
    {

      return v7 != 0;
    }

    v6 = sub_100038A58();

    v4 = 0xE500000000000000;
    ++v3;
  }

  while ((v6 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_100015FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[53] = a2;
  v3[54] = a3;
  v3[52] = a1;
  return _swift_task_switch(sub_100016018, 0, 0);
}

uint64_t sub_100016018()
{
  v59 = v0;
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v1 = sub_100038598();
  sub_100003680(v1, qword_100048DC8);
  v2 = sub_100038578();
  v3 = sub_1000387A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running extract step.", v4, 2u);
  }

  v5 = *(v0 + 424);

  v6 = *(v0 + 424);
  if (*v5 > 1u)
  {
    if (*v5 != 2)
    {
      sub_10001FAE8(*(v0 + 424), v0 + 16);
      v19 = sub_100038578();
      v20 = sub_1000387C8();
      sub_10001E938(v6);
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v55 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_10001BFAC(7104878, 0xE300000000000000, &v55);
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid source type %s.", v21, 0xCu);
        sub_10000387C(v22);
      }

      v23 = *(v0 + 416);
      v24 = sub_100037F08();
      (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      v18 = 15;
      goto LABEL_22;
    }

    v14 = *(v6 + 176);
    if (v14 == 1)
    {
      v10 = sub_100038578();
      v11 = sub_1000387C8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Missing sms extract parameters.";
        goto LABEL_17;
      }

LABEL_18:
      v16 = *(v0 + 416);

      v17 = sub_100037F08();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      v18 = 5;
LABEL_22:
      v25 = *(v0 + 8);

      return v25(0, v18);
    }

    v31 = *(v0 + 432);
    v33 = *(v6 + 160);
    v32 = *(v6 + 168);
    v34 = *(v6 + 152);
    v35 = type metadata accessor for SmsExtractor(0);
    *(v0 + 400) = v35;
    *(v0 + 408) = &off_100046928;
    v36 = sub_10001FB44((v0 + 376));
    sub_10001FA38(v31, v36 + *(v35 + 20), &qword_100048178, &unk_100039530);
    *v36 = v34;
    *(v36 + 8) = v33 & 1;
    *(v36 + 9) = BYTE1(v33);
    v36[2] = v32;
    v36[3] = v14;
    goto LABEL_28;
  }

  if (*v5)
  {
    v15 = *(v6 + 112);
    if (v15 == 1)
    {
      v10 = sub_100038578();
      v11 = sub_1000387C8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Missing transparency extract parameters.";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v37 = *(v0 + 432);
    v38 = *(v6 + 144);
    v49 = *(v6 + 136);
    v40 = *(v6 + 120);
    v39 = *(v6 + 128);
    v41 = *(v6 + 96);
    v42 = *(v6 + 104);
    v43 = type metadata accessor for TransparencyExtractor(0);
    *(v0 + 400) = v43;
    *(v0 + 408) = &off_100046918;
    v44 = sub_10001FB44((v0 + 376));
    sub_10001FA38(v37, v44 + *(v43 + 20), &qword_100048178, &unk_100039530);
    *v44 = v41;
    v44[1] = v42;
    v44[2] = v15;
    v44[3] = v40;
    v44[4] = v39;
    v44[5] = v49;
    v44[6] = v38;

LABEL_28:

    goto LABEL_29;
  }

  v7 = *(v6 + 24);
  v55 = *(v6 + 8);
  v56 = v7;
  v57 = *(v6 + 40);
  v8 = *(v6 + 56);
  v58[0] = *(v6 + 64);
  v9 = v58[0];
  *(v58 + 9) = *(v6 + 73);
  v51 = v55;
  v52 = v7;
  *&v54[9] = *(v58 + 9);
  v53 = v57;
  *v54 = v9;
  if (v8 == 2)
  {
    v10 = sub_100038578();
    v11 = sub_1000387C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Missing email extract parameters.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v27 = *(v0 + 432);
  v28 = type metadata accessor for EmailExtractor(0);
  *(v0 + 400) = v28;
  *(v0 + 408) = &off_100046908;
  v29 = sub_10001FB44((v0 + 376));
  sub_10001FA38(v27, v29 + *(v28 + 20), &qword_100048178, &unk_100039530);
  *v29 = v51;
  *(v29 + 1) = v52;
  *(v29 + 2) = v53;
  v29[6] = v8;
  *(v29 + 7) = *v54;
  *(v29 + 65) = *&v54[9];
  v30 = v56;
  *(v0 + 200) = v55;
  *(v0 + 216) = v30;
  *(v0 + 232) = v57;
  *(v0 + 248) = v8;
  *(v0 + 256) = v58[0];
  *(v0 + 265) = *(v58 + 9);
  sub_10001FBA8(v0 + 200, v0 + 288);
LABEL_29:
  v45 = *(v0 + 400);
  v46 = *(v0 + 408);
  sub_1000036D0((v0 + 376), v45);
  v50 = (*(v46 + 8) + **(v46 + 8));
  v47 = swift_task_alloc();
  *(v0 + 440) = v47;
  *v47 = v0;
  v47[1] = sub_1000166C0;
  v48 = *(v0 + 416);

  return v50(v48, v45, v46);
}

uint64_t sub_1000166C0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 281) = a2;

  return _swift_task_switch(sub_1000167C4, 0, 0);
}

uint64_t sub_1000167C4()
{
  sub_10000387C((v0 + 376));
  v1 = *(v0 + 448);
  v2 = *(v0 + 8);
  v3 = *(v0 + 281);

  return v2(v1, v3);
}

uint64_t sub_10001682C(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v170) = a5;
  v167 = *&a4;
  v169 = a1;
  v7 = sub_100037E68();
  v174 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_100038178();
  v171 = *(v161 - 8);
  __chkstk_darwin(v161);
  v162 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_100038888();
  v156 = *(v155 - 8);
  v11 = __chkstk_darwin(v155);
  v154 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v157 = &v152 - v13;
  v14 = sub_100001B40(&qword_100048398, &qword_1000395E8);
  __chkstk_darwin(v14 - 8);
  v173 = &v152 - v15;
  v16 = sub_100038048();
  isUniquelyReferenced_nonNull_native = *(v16 - 8);
  __chkstk_darwin(v16);
  v172 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100001B40(&qword_1000483A0, &qword_1000395F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v152 - v20;
  v159 = sub_1000380B8();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v168 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100048160 != -1)
  {
LABEL_141:
    swift_once();
  }

  v23 = sub_100038598();
  v160 = sub_100003680(v23, qword_100048DC8);
  v24 = sub_100038578();
  v25 = sub_1000387A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v166 = a2;
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Running tokenization step.", v26, 2u);
    a2 = v166;
  }

  if (!v169)
  {
    v30 = sub_100038578();
    v38 = sub_1000387C8();
    if (!os_log_type_enabled(v30, v38))
    {
LABEL_11:

      return 0;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v30, v38, "Extracted items must not be nil.", v39, 2u);
LABEL_10:

    goto LABEL_11;
  }

  sub_100037E38(0);
  sub_1000380A8();
  v27 = v158;
  v28 = v159;
  if ((*(v158 + 48))(v21, 1, v159) == 1)
  {
    sub_10001FD94(v21, &qword_1000483A0, &qword_1000395F0);
    v29 = v174;
    (*(v174 + 16))(v9, a2, v7);
    v30 = sub_100038578();
    v31 = sub_1000387C8();
    if (!os_log_type_enabled(v30, v31))
    {

      (*(v29 + 8))(v9, v7);
      return 0;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v175[0] = v33;
    *v32 = 136315138;
    sub_10001FAA0(&qword_100048320, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v34 = sub_100038A38();
    v36 = v35;
    (*(v29 + 8))(v9, v7);
    v37 = sub_10001BFAC(v34, v36, v175);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to create tokenizer with path: %s.", v32, 0xCu);
    sub_10000387C(v33);

    goto LABEL_10;
  }

  (*(v27 + 32))(v168, v21, v28);
  v40 = v173;
  sub_10001B56C(a3, v173);
  if ((*(isUniquelyReferenced_nonNull_native + 48))(v40, 1, v16) == 1)
  {
    sub_10001FD94(v40, &qword_100048398, &qword_1000395E8);
    v174 = 0;
    v153 = 0;
    v9 = v162;
    goto LABEL_32;
  }

  a2 = v172;
  (*(isUniquelyReferenced_nonNull_native + 32))(v172, v40, v16);
  v42 = *(sub_100038038() + 16);

  v9 = v162;
  v165 = isUniquelyReferenced_nonNull_native;
  if (v170)
  {
    v43 = vcvtd_n_f64_u64(v42, 2uLL);
    if (v43 == INFINITY)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v43 <= -9.22337204e18)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v43 < 9.22337204e18)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v43 = v167 * v42;
  if (COERCE__INT64(fabs(v43)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v43 > -9.22337204e18)
  {
    if (v43 >= 9.22337204e18)
    {
      goto LABEL_149;
    }

LABEL_24:
    v7 = v43;
    v44 = sub_100038578();
    v45 = sub_1000387A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      *(v46 + 4) = v42;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v44, v45, "Loaded %ld vocabulary scores, using top %ld scores as rare tokens.", v46, 0x16u);
    }

    v47 = sub_100038038();
    v48 = v47;
    v49 = *(v47 + 16);
    if (v49)
    {
      v50 = sub_10001BF1C(*(v47 + 16), 0);
      v174 = sub_10001DC70(v175, (v50 + 4), v49, v48);
      v51 = v175[0];
      isUniquelyReferenced_nonNull_native = v175[3];

      sub_10001F9E8(v51);
      if (v174 != v49)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v9 = v162;
      a2 = v172;
    }

    else
    {
      v50 = _swiftEmptyArrayStorage;
    }

    v175[0] = v50;
    sub_10001CA20(v175);

    if (v7 < 0)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v53 = v175[0];
    __chkstk_darwin(v52);
    *(&v152 - 2) = v168;
    v55 = sub_10001F5D4(sub_10001F9F0, (&v152 - 4), v53 + 32, 0, v54);
    v153 = 0;
    swift_unknownObjectRelease();
    v174 = sub_10001F748(v55);

    (*(v165 + 8))(a2, v16);
LABEL_32:
    v56 = sub_1000218E4(_swiftEmptyArrayStorage);
    sub_100038868();
    v21 = v161;
    v167 = *(v169 + 16);
    if (v167 == 0.0)
    {

      v172 = 0;
      v84 = 0.0;
      v85 = 0.0;
    }

    else
    {
      v170 = 0;
      v172 = 0;
      v173 = 0;
      v57 = 0;
      v58 = *(v171 + 16);
      v165 = v169 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v166 = v58;
      v7 = v174 + 56;
      v163 = (v171 + 8);
      v171 += 16;
      v164 = *(v171 + 56);
      v58(v9, v165, v161);
      while (1)
      {
        v59 = sub_100038148();
        v61 = v60;

        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = v59 & 0xFFFFFFFFFFFFLL;
        }

        if (v62)
        {
          v169 = v57;
          sub_100038148();
          a3 = v63;
          v64 = sub_100038088();

          v16 = *(v64 + 16);
          if (v16)
          {
            v21 = 0;
            v9 = v64 + 32;
            while (1)
            {
              if (v21 >= *(v64 + 16))
              {
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
                goto LABEL_140;
              }

              a3 = *(v9 + 8 * v21);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v175[0] = v56;
              v65 = sub_1000208DC(a3);
              v67 = *(v56 + 16);
              v68 = (v66 & 1) == 0;
              v69 = __OFADD__(v67, v68);
              v70 = v67 + v68;
              if (v69)
              {
                goto LABEL_131;
              }

              a2 = v66;
              if (*(v56 + 24) >= v70)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v77 = v65;
                  sub_10002162C();
                  v65 = v77;
                  v56 = v175[0];
                  if (a2)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_50;
                }
              }

              else
              {
                sub_100020CE8(v70, isUniquelyReferenced_nonNull_native);
                v65 = sub_1000208DC(a3);
                if ((a2 & 1) != (v71 & 1))
                {
                  goto LABEL_150;
                }
              }

              v56 = v175[0];
              if (a2)
              {
                goto LABEL_52;
              }

LABEL_50:
              *(v56 + 8 * (v65 >> 6) + 64) |= 1 << v65;
              *(*(v56 + 48) + 8 * v65) = a3;
              *(*(v56 + 56) + 8 * v65) = 0;
              v72 = *(v56 + 16);
              v69 = __OFADD__(v72, 1);
              v73 = v72 + 1;
              if (v69)
              {
                goto LABEL_134;
              }

              *(v56 + 16) = v73;
LABEL_52:
              v74 = *(v56 + 56);
              v75 = *(v74 + 8 * v65);
              v69 = __OFADD__(v75, 1);
              v76 = v75 + 1;
              if (v69)
              {
                goto LABEL_132;
              }

              ++v21;
              *(v74 + 8 * v65) = v76;
              if (v16 == v21)
              {
                v78 = *(v64 + 16);
                v9 = v162;
                goto LABEL_58;
              }
            }
          }

          v78 = 0;
LABEL_58:
          v69 = __OFADD__(v172, v78);
          v172 += v78;
          if (v69)
          {
            goto LABEL_139;
          }

          sub_100038148();
          a3 = sub_100038688();

          if (__OFADD__(v170, a3))
          {
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v170 += a3;
          if (v174 && v16)
          {
            v21 = 0;
            a3 = v64 + 32;
            v9 = *(v174 + 16);
            a2 = *(v64 + 16);
            while (v21 != a2)
            {
              if (v9)
              {
                v79 = *(a3 + 8 * v21);
                v80 = sub_100038AE8();
                v81 = -1 << *(v174 + 32);
                v82 = v80 & ~v81;
                if ((*(v7 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
                {
                  v83 = ~v81;
                  while (*(*(v174 + 48) + 8 * v82) != v79)
                  {
                    v82 = (v82 + 1) & v83;
                    if (((*(v7 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
                    {
                      goto LABEL_64;
                    }
                  }

                  v69 = __OFADD__(v173++, 1);
                  if (v69)
                  {
                    goto LABEL_138;
                  }
                }
              }

LABEL_64:
              if (++v21 == v16)
              {

                v21 = v161;
                v9 = v162;
                goto LABEL_35;
              }
            }

            goto LABEL_133;
          }

          v21 = v161;
LABEL_35:
          v57 = v169;
        }

        ++v57;
        (*v163)(v9, v21);
        if (v57 == *&v167)
        {
          break;
        }

        v166(v9, v165 + v164 * v57, v21);
      }

      v84 = v170;
      v85 = v173;
    }

    v86 = v154;
    sub_100038868();
    sub_100038878();
    v87 = *(v156 + 8);
    v156 += 8;
    v174 = v87;
    v87(v86, v155);
    v88 = sub_100038578();
    v89 = sub_1000387A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v175[0] = v91;
      *v90 = 136315138;
      v92 = sub_100038B78();
      v94 = sub_10001BFAC(v92, v93, v175);

      *(v90 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v88, v89, "Tokenization completed in %s", v90, 0xCu);
      sub_10000387C(v91);
    }

    sub_100001B40(&qword_1000483A8, &qword_1000395F8);
    v95 = sub_1000388B8();
    v96 = v95;
    v21 = 0;
    v9 = 1;
    v97 = 1 << *(v56 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    isUniquelyReferenced_nonNull_native = v98 & *(v56 + 64);
    a2 = (v97 + 63) >> 6;
    v99 = v172;
    a3 = v95 + 64;
    if (!isUniquelyReferenced_nonNull_native)
    {
LABEL_81:
      v101 = v21;
      while (1)
      {
        v21 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_135;
        }

        if (v21 >= a2)
        {
          v21 = 0xD000000000000011;
          v106 = v99 / v84;
          v107 = v85 / v99;
          v108 = sub_1000219C0(_swiftEmptyArrayStorage);
          v109 = v172;
          v110 = swift_isUniquelyReferenced_nonNull_native();
          v175[0] = v108;
          sub_1000211F0(0x6B6F546C61746F74, 0xEF746E756F436E65, v110, v109);
          v111 = v175[0];
          v9 = " of the following text: ";
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v175[0] = v111;
          sub_1000211F0(0xD000000000000015, 0x800000010003B9F0, v112, v106);
          v113 = v175[0];
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v175[0] = v113;
          sub_1000211F0(0x656B6F5465726172, 0xEE006F697461526ELL, v114, v107);
          v115 = v175[0];
          v116 = 1 << *(v96 + 32);
          v117 = -1;
          if (v116 < 64)
          {
            v117 = ~(-1 << v116);
          }

          v118 = v117 & *(v96 + 64);
          if (v118)
          {
            v119 = 0;
            v120 = __clz(__rbit64(v118));
            v121 = (v118 - 1) & v118;
            v122 = (v116 + 63) >> 6;
LABEL_97:
            v126 = *(v96 + 56);
            v127 = *(v126 + 8 * v120);
            v128 = v127;
            if (!v121)
            {
              goto LABEL_99;
            }

            do
            {
              v129 = v119;
LABEL_103:
              v130 = __clz(__rbit64(v121));
              v121 &= v121 - 1;
              if (*(v126 + ((v129 << 9) | (8 * v130))) < v128)
              {
                v127 = *(v126 + ((v129 << 9) | (8 * v130)));
                v128 = v127;
              }
            }

            while (v121);
LABEL_99:
            while (1)
            {
              v129 = v119 + 1;
              if (__OFADD__(v119, 1))
              {
                goto LABEL_136;
              }

              if (v129 >= v122)
              {
                v131 = v127;
                goto LABEL_108;
              }

              v121 = *(a3 + 8 * v129);
              ++v119;
              if (v121)
              {
                v119 = v129;
                goto LABEL_103;
              }
            }
          }

          v123 = 0;
          v124 = 0;
          v122 = (v116 + 63) >> 6;
          while (v122 - 1 != v124)
          {
            v119 = v124 + 1;
            v125 = *(v96 + 72 + 8 * v124);
            v123 -= 64;
            ++v124;
            if (v125)
            {
              v121 = (v125 - 1) & v125;
              v120 = __clz(__rbit64(v125)) - v123;
              goto LABEL_97;
            }
          }

          v131 = 0.0;
LABEL_108:
          v21 = "tokenCompressionRatio";
          v132 = swift_isUniquelyReferenced_nonNull_native();
          v175[0] = v115;
          sub_1000211F0(0xD000000000000011, 0x800000010003BA10, v132, v131);
          v133 = v175[0];
          v134 = 1 << *(v96 + 32);
          v135 = -1;
          if (v134 < 64)
          {
            v135 = ~(-1 << v134);
          }

          v136 = v135 & *(v96 + 64);
          if (v136)
          {
            v137 = 0;
            v138 = __clz(__rbit64(v136));
            v139 = (v136 - 1) & v136;
            v140 = (v134 + 63) >> 6;
LABEL_116:
            v144 = *(v96 + 56);
            v145 = *(v144 + 8 * v138);
            v146 = v145;
            if (!v139)
            {
              goto LABEL_118;
            }

            do
            {
              v147 = v137;
LABEL_122:
              v148 = __clz(__rbit64(v139));
              v139 &= v139 - 1;
              if (v146 < *(v144 + ((v147 << 9) | (8 * v148))))
              {
                v145 = *(v144 + ((v147 << 9) | (8 * v148)));
                v146 = v145;
              }
            }

            while (v139);
LABEL_118:
            while (1)
            {
              v147 = v137 + 1;
              if (__OFADD__(v137, 1))
              {
                goto LABEL_137;
              }

              if (v147 >= v140)
              {

                v149 = v145;
                goto LABEL_127;
              }

              v139 = *(a3 + 8 * v147);
              ++v137;
              if (v139)
              {
                v137 = v147;
                goto LABEL_122;
              }
            }
          }

          v141 = 0;
          v142 = 0;
          v140 = (v134 + 63) >> 6;
          while (v140 - 1 != v142)
          {
            v137 = v142 + 1;
            v143 = *(v96 + 8 * v142 + 72);
            v141 -= 64;
            ++v142;
            if (v143)
            {
              v139 = (v143 - 1) & v143;
              v138 = __clz(__rbit64(v143)) - v141;
              goto LABEL_116;
            }
          }

          v149 = 0.0;
LABEL_127:
          v150 = swift_isUniquelyReferenced_nonNull_native();
          v175[0] = v133;
          sub_1000211F0(0xD000000000000011, 0x800000010003BA30, v150, v149);
          (v174)(v157, v155);

          v151 = v175[0];
          (*(v158 + 8))(v168, v159);
          return v151;
        }

        v102 = *(v56 + 64 + 8 * v21);
        ++v101;
        if (v102)
        {
          v100 = __clz(__rbit64(v102));
          isUniquelyReferenced_nonNull_native = (v102 - 1) & v102;
          goto LABEL_86;
        }
      }
    }

    while (1)
    {
      v100 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
      isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
LABEL_86:
      v16 = v100 | (v21 << 6);
      v7 = *(*(v56 + 48) + 8 * v16);
      v103 = log(*(*(v56 + 56) + 8 * v16) / v99);
      *(a3 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v96 + 48) + 8 * v16) = v7;
      *(*(v96 + 56) + 8 * v16) = v103;
      v104 = *(v96 + 16);
      v69 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v69)
      {
        break;
      }

      *(v96 + 16) = v105;
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_143;
  }

LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  sub_100038A98();
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_100017C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_100020864(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

void *sub_100017CA4(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_10001BE98(a2 - result, 0);
      if (sub_10001DBD4(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Class sub_100017D28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10001F874();
    v4.super.isa = sub_1000385E8().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100017DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = type metadata accessor for EmbedParameters(0);
  v4[22] = swift_task_alloc();
  v5 = sub_100038138();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_100038178();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100017F04, 0, 0);
}

uint64_t sub_100017F04()
{
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_100038598();
  v0[29] = sub_100003680(v2, qword_100048DC8);

  v3 = sub_100038578();
  v4 = sub_1000387A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5)
    {
      v7 = *(v1 + 16);
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 4) = v7;
    v8 = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Running embed step on %ld items.", v8, 0xCu);
  }

  else
  {
  }

  if (v0[17])
  {
    v9 = v0[21];
    v10 = v0[18];
    v11 = *(v9 + 20);
    v12 = (v10 + *(v9 + 24));
    v14 = *v12;
    v13 = v12[1];
    v15 = swift_task_alloc();
    v0[30] = v15;
    *v15 = v0;
    v15[1] = sub_100018198;

    return createEmbedder(embedderName:version:)(v0 + 7, v10 + v11, v14, v13);
  }

  else
  {
    v16 = sub_100038578();
    v17 = sub_1000387C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Extracted items must not be nil.", v18, 2u);
    }

    v19 = v0[1];

    return v19(0, 12);
  }
}

uint64_t sub_100018198()
{

  return _swift_task_switch(sub_100018294, 0, 0);
}

uint64_t sub_100018294()
{
  v47 = v0;
  if (!*(v0 + 80))
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 144);
    sub_10001FD94(v0 + 56, &qword_100048390, &qword_1000395E0);
    sub_10001FCC4(v10, v9, type metadata accessor for EmbedParameters);
    v11 = sub_100038578();
    v12 = sub_1000387C8();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 176);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136315138;
      v17 = sub_100037FB8();
      v19 = v18;
      sub_10001EA9C(v14, type metadata accessor for EmbedParameters);
      v20 = sub_10001BFAC(v17, v19, &v46);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to create embedder %s.", v15, 0xCu);
      sub_10000387C(v16);
    }

    else
    {

      sub_10001EA9C(v14, type metadata accessor for EmbedParameters);
    }

    v33 = 0;
    v34 = 22;
    goto LABEL_21;
  }

  sub_1000036B8((v0 + 56), v0 + 16);
  sub_10001F984(v0 + 16, v0 + 96);
  v1 = sub_100038578();
  v2 = sub_1000387A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v46 = v4;
    *v3 = 136315138;
    sub_1000036D0((v0 + 96), *(v0 + 120));
    v5 = sub_1000380C8();
    v7 = v6;
    sub_10000387C((v0 + 96));
    v8 = sub_10001BFAC(v5, v7, &v46);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Embedding model: %s", v3, 0xCu);
    sub_10000387C(v4);
  }

  else
  {

    sub_10000387C((v0 + 96));
  }

  v21 = *(v0 + 136);
  v22 = *(v21 + 16);
  *(v0 + 248) = v22;
  if (!v22)
  {

    v35 = sub_100038578();
    v36 = sub_1000387A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = _swiftEmptyArrayStorage[2];

      _os_log_impl(&_mh_execute_header, v35, v36, "Finished embed step. Generated %ld embedding vectors.", v37, 0xCu);
    }

    else
    {
    }

    sub_10000387C((v0 + 16));
    v34 = 24;
    v33 = _swiftEmptyArrayStorage;
LABEL_21:

    v44 = *(v0 + 8);

    return v44(v33, v34);
  }

  v23 = *(v0 + 208);
  v24 = *(v0 + 216);
  v25 = *(v24 + 16);
  v24 += 16;
  v26 = *(v24 + 64);
  *(v0 + 312) = v26;
  *(v0 + 256) = *(v24 + 56);
  *(v0 + 264) = v25;
  *(v0 + 272) = _swiftEmptyArrayStorage;
  *(v0 + 280) = 0;
  v25(*(v0 + 224), v21 + ((v26 + 32) & ~v26), v23);
  if (sub_100038768())
  {

    v27 = sub_100038578();
    v28 = sub_1000387A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Task canceled at embedding loop.", v29, 2u);
    }

    v31 = *(v0 + 216);
    v30 = *(v0 + 224);
    v32 = *(v0 + 208);

    (*(v31 + 8))(v30, v32);
    sub_10000387C((v0 + 16));
    v33 = 0;
    v34 = 12;
    goto LABEL_21;
  }

  v38 = *(v0 + 40);
  v39 = *(v0 + 48);
  sub_1000036D0((v0 + 16), v38);
  v40 = sub_100038148();
  v42 = v41;
  *(v0 + 288) = v41;
  v43 = swift_task_alloc();
  *(v0 + 296) = v43;
  *v43 = v0;
  v43[1] = sub_100018830;

  return dispatch thunk of Embedder.embed(text:)(v40, v42, v38, v39);
}

uint64_t sub_100018830(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_100018950, 0, 0);
}

uint64_t sub_100018950()
{
  if (!*(v0 + 304))
  {

    v13 = sub_100038578();
    v14 = sub_1000387C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Failed to generate embedding.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);
    }

LABEL_15:
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);

    (*(v19 + 8))(v18, v20);
    v2 = 0;
    v21 = 12;
LABEL_18:
    sub_10000387C((v0 + 16));

    v22 = *(v0 + 8);

    return v22(v2, v21);
  }

  sub_100038168();
  sub_1000036D0((v0 + 16), *(v0 + 40));
  sub_1000380C8();

  sub_100038108();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 272);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100029ACC(0, v2[2] + 1, 1, *(v0 + 272));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100029ACC((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 248);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 280) + 1;
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v2[2] = v4 + 1;
  (*(v8 + 32))(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v6, v7);
  if (v9 == v5)
  {

    v10 = sub_100038578();
    v11 = sub_1000387A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v2[2];

      _os_log_impl(&_mh_execute_header, v10, v11, "Finished embed step. Generated %ld embedding vectors.", v12, 0xCu);
    }

    else
    {
    }

    v21 = 24;
    goto LABEL_18;
  }

  v17 = *(v0 + 280) + 1;
  *(v0 + 272) = v2;
  *(v0 + 280) = v17;
  (*(v0 + 264))(*(v0 + 224), *(v0 + 136) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 256) * v17, *(v0 + 208));
  if (sub_100038768())
  {

    v13 = sub_100038578();
    v14 = sub_1000387A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Task canceled at embedding loop.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_1000036D0((v0 + 16), v24);
  v26 = sub_100038148();
  v28 = v27;
  *(v0 + 288) = v27;
  v29 = swift_task_alloc();
  *(v0 + 296) = v29;
  *v29 = v0;
  v29[1] = sub_100018830;

  return dispatch thunk of Embedder.embed(text:)(v26, v28, v24, v25);
}

uint64_t sub_100018DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_100038218();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_100001B40(&qword_100048350, &qword_1000395A8);
  v4[24] = swift_task_alloc();
  v6 = sub_100038208();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_100001B40(&qword_100048358, &qword_1000395B0);
  v4[29] = swift_task_alloc();
  v7 = sub_100001B40(&qword_100048360, &qword_1000395B8);
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v8 = sub_100037E18();
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  sub_100001B40(&qword_1000482C8, &qword_100039528);
  v4[37] = swift_task_alloc();
  v9 = sub_100037E68();
  v4[38] = v9;
  v4[39] = *(v9 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v10 = sub_100038138();
  v4[42] = v10;
  v4[43] = *(v10 - 8);
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_100019134, 0, 0);
}

void sub_100019134()
{
  v109 = v0;
  v1 = v0[16];
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v3 = sub_100038598();
    v0[45] = sub_100003680(v3, qword_100048DC8);

    v4 = sub_100038578();
    v5 = sub_1000387A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;

      _os_log_impl(&_mh_execute_header, v4, v5, "Running score step for %ld embeddings.", v6, 0xCu);
    }

    else
    {
    }

    v13 = v0[43];
    v15 = *(v13 + 16);
    v14 = v13 + 16;
    v105 = v15;
    v16 = v1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v104 = *(v14 + 56);
    v17 = _swiftEmptyArrayStorage;
    do
    {
      v18 = v0[44];
      v19 = v0;
      v20 = v0[42];
      v105(v18, v16, v20);
      v21 = sub_100038128();
      (*(v14 - 8))(v18, v20);
      v22 = *(v21 + 16);
      v23 = *(v17 + 2);
      v0 = (v23 + v22);
      if (__OFADD__(v23, v22))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v0 > *(v17 + 3) >> 1)
      {
        if (v23 <= v0)
        {
          v25 = v23 + v22;
        }

        else
        {
          v25 = v23;
        }

        v17 = sub_100029AF4(isUniquelyReferenced_nonNull_native, v25, 1, v17);
      }

      v0 = v19;
      v19[46] = v17;
      if (*(v21 + 16))
      {
        v26 = *(v17 + 2);
        if ((*(v17 + 3) >> 1) - v26 < v22)
        {
          goto LABEL_67;
        }

        memcpy(&v17[4 * v26 + 32], (v21 + 32), 4 * v22);

        if (v22)
        {
          v27 = *(v17 + 2);
          v28 = __OFADD__(v27, v22);
          v29 = v27 + v22;
          if (v28)
          {
            __break(1u);
            goto LABEL_71;
          }

          *(v17 + 2) = v29;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_66;
        }
      }

      v16 += v104;
      --v2;
    }

    while (v2);
    v30 = v19[17];
    v31 = *(sub_100038128() + 16);

    v32 = *(v30 + 64);
    if (!v32)
    {
      v62 = sub_100038578();
      v63 = sub_1000387A8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Scoring against personal data.", v64, 2u);
      }

      if (!v31)
      {
        __break(1u);
        return;
      }

      v66 = v19[22];
      v65 = v19[23];
      v67 = v19[20];
      v68 = v0[21];
      v69 = v0[17];

      sub_100038228();
      (*(v68 + 16))(v66, v65, v67);
      sub_100001B40(&qword_100048368, &qword_1000395C0);
      swift_allocObject();
      v0[52] = sub_100038188();
      v70 = *(v69 + 8);
      v107 = (&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:));
      v71 = swift_task_alloc();
      v0[53] = v71;
      *v71 = v0;
      v71[1] = sub_10001A634;
      v72 = v17;
      v73 = v70;
      v74 = 1;
      goto LABEL_48;
    }

    v33 = *(v30 + 56);

    v34 = sub_100038578();
    v35 = sub_1000387A8();

    v106 = v33;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v108 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_10001BFAC(v33, v32, &v108);
      _os_log_impl(&_mh_execute_header, v34, v35, "Scoring against reference file %s", v36, 0xCu);
      sub_10000387C(v37);
    }

    v38 = v19[19];
    *(v19 + 1) = *(v19[17] + 72);
    if (v38)
    {
      v111._countAndFlagsBits = 0x736B6E616C702ELL;
      v111._object = 0xE700000000000000;
      if (sub_1000386B8(v111) && v19[3])
      {
        v103 = v19[40];
        v102 = v19[39];
        v100 = v19[41];
        v101 = v19[38];
        v39 = v19[36];
        v40 = v19[34];
        v41 = v19[35];
        v99 = v40;
        (*(v102 + 56))();
        v42 = enum case for URL.DirectoryHint.inferFromPath(_:);
        v43 = *(v41 + 104);
        v43(v39, enum case for URL.DirectoryHint.inferFromPath(_:), v40);

        v0 = v19;
        sub_100037E48();
        v19[4] = v106;
        v19[5] = v32;
        v44 = v43(v39, v42, v99);
        sub_10001E024(v44, v45, v46);
        sub_100037E58();
        (*(v41 + 8))(v39, v99);
        v47 = *(v102 + 8);
        v47(v103, v101);
        sub_100037E38(0);
        v47(v100, v101);
        sub_1000385C8();
        swift_allocObject();
        v48 = sub_1000385B8();
        v19[47] = v48;
        if (v48)
        {
          v49 = sub_1000385A8();
          if (v49 == 2 || (v49 & 1) == 0)
          {
            v75 = sub_100038578();
            v76 = sub_1000387A8();
            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              *v77 = 0;
              _os_log_impl(&_mh_execute_header, v75, v76, "Scoring against un-quantized reference data.", v77, 2u);
            }

            v79 = v0[25];
            v78 = v0[26];
            v80 = v0[24];

            sub_10001FA38((v0 + 2), (v0 + 6), &qword_100048370, &qword_1000395C8);
            sub_1000381F8();
            if ((*(v78 + 48))(v80, 1, v79) == 1)
            {
              v59 = v0[24];

              v60 = &qword_100048350;
              v61 = &qword_1000395A8;
              goto LABEL_59;
            }

            v87 = v0[27];
            v86 = v0[28];
            v88 = v0[25];
            v89 = v0[26];
            v90 = v0[17];
            (*(v89 + 32))(v86, v0[24], v88);
            (*(v89 + 16))(v87, v86, v88);
            sub_100001B40(&qword_100048378, &qword_1000395D0);
            swift_allocObject();
            v0[50] = sub_100038188();
            v91 = *(v90 + 8);
            v107 = (&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:));
            v92 = swift_task_alloc();
            v0[51] = v92;
            *v92 = v0;
            v93 = sub_10001A2B8;
          }

          else
          {
            v50 = sub_100038578();
            v51 = sub_1000387A8();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 0;
              _os_log_impl(&_mh_execute_header, v50, v51, "Scoring against quantized reference data.", v52, 2u);
            }

            v54 = v0[30];
            v53 = v0[31];
            v55 = v0[29];

            v56 = sub_10001FA38((v0 + 2), (v0 + 8), &qword_100048370, &qword_1000395C8);
            sub_10001F930(v56, v57, v58);
            sub_100038288();
            if ((*(v53 + 48))(v55, 1, v54) == 1)
            {
              v59 = v0[29];

              v60 = &qword_100048358;
              v61 = &qword_1000395B0;
LABEL_59:
              sub_10001FD94(v59, v60, v61);
              v8 = sub_100038578();
              v81 = sub_1000387C8();
              if (os_log_type_enabled(v8, v81))
              {
                v82 = swift_slowAlloc();
                *v82 = 0;
                _os_log_impl(&_mh_execute_header, v8, v81, "Failed to create loader.", v82, 2u);
              }

              goto LABEL_12;
            }

LABEL_68:
            v95 = v0[32];
            v94 = v0[33];
            v96 = v0[30];
            v97 = v0[31];
            v98 = v0[17];
            (*(v97 + 32))(v94, v0[29], v96);
            (*(v97 + 16))(v95, v94, v96);
            sub_100001B40(&qword_100048388, &qword_1000395D8);
            swift_allocObject();
            v0[48] = sub_100038188();
            v91 = *(v98 + 8);
            v107 = (&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:));
            v92 = swift_task_alloc();
            v0[49] = v92;
            *v92 = v0;
            v93 = sub_100019F40;
          }

          v92[1] = v93;
          v72 = v17;
          v73 = v91;
          v74 = 0;
LABEL_48:

          v107(v72, v73, v74);
          return;
        }

        v8 = sub_100038578();
        v83 = sub_1000387C8();

        if (!os_log_type_enabled(v8, v83))
        {
          goto LABEL_12;
        }

        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v108 = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_10001BFAC(v106, v32, &v108);
        _os_log_impl(&_mh_execute_header, v8, v83, "Failed at opening %s", v84, 0xCu);
        sub_10000387C(v85);

        goto LABEL_11;
      }

      v8 = sub_100038578();
      v9 = sub_1000387C8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_12;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Data file must be in Planks format and label must be set.";
    }

    else
    {

      v8 = sub_100038578();
      v9 = sub_1000387C8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_12;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "DataFolder missing.";
    }
  }

  else
  {
    if (qword_100048160 != -1)
    {
LABEL_71:
      swift_once();
    }

    v7 = sub_100038598();
    sub_100003680(v7, qword_100048DC8);
    v8 = sub_100038578();
    v9 = sub_1000387C8();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Embeddings data must not be empty.";
  }

  _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
LABEL_11:

LABEL_12:

  v12 = v0[1];

  v12(0, 14);
}

uint64_t sub_100019F40(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 80) = v1;
  *(v2 + 88) = a1;

  return _swift_task_switch(sub_10001A05C, 0, 0);
}

uint64_t sub_10001A05C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);
  v4 = v0[11];
  if (v4)
  {

    v5 = sub_100038578();
    v6 = sub_1000387A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Finished score step. Scored %ld embeddings.", v7, 0xCu);
    }

    else
    {
    }

    v10 = 24;
  }

  else
  {
    v5 = sub_100038578();
    v8 = sub_1000387C8();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v8, "Failed to generate scores.", v9, 2u);
    }

    v10 = 14;
  }

  v13 = v10;

  v11 = v0[1];

  return v11(v4, v13);
}

uint64_t sub_10001A2B8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 96) = v1;
  *(v2 + 104) = a1;

  return _swift_task_switch(sub_10001A3D4, 0, 0);
}

uint64_t sub_10001A3D4()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];

  (*(v3 + 8))(v1, v2);
  v4 = v0[13];
  if (v4)
  {

    v5 = sub_100038578();
    v6 = sub_1000387A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v4 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Finished score step. Scored %ld embeddings.", v7, 0xCu);
    }

    else
    {
    }

    v10 = 24;
  }

  else
  {
    v5 = sub_100038578();
    v8 = sub_1000387C8();
    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, v8, "Failed to generate scores.", v9, 2u);
    }

    v10 = 14;
  }

  v13 = v10;

  v11 = v0[1];

  return v11(v4, v13);
}