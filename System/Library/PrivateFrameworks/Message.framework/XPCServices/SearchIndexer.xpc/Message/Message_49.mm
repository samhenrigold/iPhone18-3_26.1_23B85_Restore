void sub_10032116C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v12 = sub_1003239A8;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10019C778;
  v11 = &unk_1005B3E30;
  v4 = _Block_copy(&v8);

  [v3 performBlock:v4];
  _Block_release(v4);
  v5 = *(a1 + 64);
  v6 = *(v5 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v12 = sub_100323BBC;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10019C778;
  v11 = &unk_1005B3E58;
  v7 = _Block_copy(&v8);

  [v6 performBlock:v7];
  _Block_release(v7);
}

uint64_t sub_10032131C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_10036E3DC();
  v10 = sub_1004A4A54();
  v11 = sub_1004A6034();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "{%ld} Waiting for spotlight indexer to pause.", v12, 0xCu);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a4;

  sub_10036E660(sub_100323708, v13);
}

void sub_1003214A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, unint64_t a8, uint64_t a9)
{
  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    v15 = MailboxName.init(_:)(v14);
    v20 = sub_10032EB08(a3, a4, v15.bytes._rawValue, v15._hashValue._value);

    if (v20)
    {
      v16 = a8;
      if ((a8 & &_mh_execute_header) != 0)
      {
        v16 = 0;
      }

      sub_100332A08(v20, v16 | ((HIDWORD(a8) & 1) << 32), a9);
      a6();
    }

    else
    {
      v17 = sub_1004A4A54();
      v18 = sub_1004A6014();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to find mailbox", v19, 2u);
      }

      (a6)(0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10032172C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v50 = a5;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v12);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v48 - v16;
  __chkstk_darwin(v18);
  v20 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v20 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v49 = v48 - v19;

    v22 = MailboxName.init(_:)(v21);
    v48[2] = a1;
    v23 = sub_10032EB08(a3, a4, v22.bytes._rawValue, v22._hashValue._value);

    if (!v23)
    {
      v50(a7);
      return;
    }

    v48[1] = a6;
    v24 = *(a7 + 16);
    v25 = _swiftEmptyArrayStorage;
    v26 = v50;
    if (v24)
    {
      v48[0] = v23;
      v52 = _swiftEmptyArrayStorage;
      sub_100091DA8(0, v24, 0);
      v25 = v52;
      v27 = (a7 + 32);
      v28 = v52[2];
      do
      {
        v30 = *v27++;
        v29 = v30;
        v52 = v25;
        v31 = v25[3];
        if (v28 >= v31 >> 1)
        {
          sub_100091DA8((v31 > 1), v28 + 1, 1);
          v25 = v52;
        }

        v25[2] = v28 + 1;
        *(v25 + v28++ + 8) = v29;
        --v24;
      }

      while (v24);
      v26 = v50;
      v23 = v48[0];
    }

    sub_100016D2C();
    sub_1004A7114();
    v32 = v25[2];
    if (v32)
    {
      v33 = (v25 + 4);
      do
      {
        v34 = *v33++;
        v51 = v34;
        MessageIdentifierSet.insert(_:)(&v52, &v51, v12);
        --v32;
      }

      while (v32);
    }

    v35 = v49;
    sub_100020950(v17, v49);
    sub_100333104(v23, v35, v14);
    v36 = MessageIdentifierSet.count.getter();
    v37 = _swiftEmptyArrayStorage;
    if (!v36)
    {
      goto LABEL_23;
    }

    v38 = v36;
    v48[0] = v23;
    v52 = _swiftEmptyArrayStorage;
    sub_10034F670(0, v36 & ~(v36 >> 63), 0);
    v37 = v52;
    v39 = MessageIdentifierSet.startIndex.getter(v12);
    if ((v38 & 0x8000000000000000) == 0)
    {
      v41 = v39;
      v42 = v40;
      do
      {
        MessageIdentifierSet.subscript.getter(v42, v12, &v51);
        v43 = v51;
        v52 = v37;
        v45 = v37[2];
        v44 = v37[3];
        if (v45 >= v44 >> 1)
        {
          sub_10034F670((v44 > 1), v45 + 1, 1);
          v37 = v52;
        }

        v37[2] = v45 + 1;
        *(v37 + v45 + 8) = v43;
        MessageIdentifierSet.index(_:offsetBy:)(v41, v42, 1);
        v41 = v46;
        v42 = v47;
        --v38;
      }

      while (v38);
      v35 = v49;
      v26 = v50;
      v23 = v48[0];
LABEL_23:
      v26(v37);

      sub_100121C40(v14);
      sub_100121C40(v35);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100321AF4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_1004A44E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v57 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v53 - v10;
  sub_1004A44D4();
  sub_1004A4464();
  v13 = round(v12 / 21600.0);
  result = (*(v7 + 8))(v11, v6);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1004A6A34();
    v35 = result;
    if (result)
    {
      goto LABEL_28;
    }

    goto LABEL_45;
  }

  v15 = v13;
  v16 = *(a1 + 32);
  result = sub_10030839C();
  if ((v17 & 1) == 0)
  {
    v20 = v15 - result;
    if (__OFSUB__(v15, result))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    LOBYTE(v18) = v20 > 3;
    result = sub_1003084B8();
    if (v21)
    {
      v54 = a2;
      if (v20 > 3)
      {
        v18 = 1;
        goto LABEL_17;
      }

LABEL_22:
      v25 = 0;
      goto LABEL_23;
    }

LABEL_11:
    v22 = v15 - result;
    if (__OFSUB__(v15, result))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    if (v22 <= 0)
    {
      if (!v18)
      {
        return result;
      }

      v54 = a2;
      v18 = 0;
      goto LABEL_17;
    }

    if (v18)
    {
      v54 = a2;
      v18 = v22 > 0x1B;
      goto LABEL_17;
    }

    if (v22 <= 0x1B)
    {
      return result;
    }

    v54 = a2;
    goto LABEL_22;
  }

  result = sub_1003084B8();
  v18 = 1;
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  v54 = a2;
LABEL_17:
  v23 = [v16 userInfo];
  v62 = v13;
  v24 = sub_1004A6DF4();
  v62 = 0xD000000000000012;
  v63 = 0x80000001004AEA20;
  [v23 __swift_setObject:v24 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v18)
  {
    v59 = 0;
LABEL_24:
    v28 = sub_100323FA0();
    sub_100308A54(v28, v29, v30, v31);
    v32 = sub_1004A5734();
    sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
    isa = sub_1004A54F4().super.isa;
    AnalyticsSendEvent();

    v58 = 1;
    goto LABEL_26;
  }

  v25 = 1;
LABEL_23:
  v26 = [v16 userInfo];
  v62 = v13;
  v27 = sub_1004A6DF4();
  v62 = 0xD000000000000013;
  v63 = 0x80000001004AEA00;
  [v26 __swift_setObject:v27 forKeyedSubscript:sub_1004A6DF4()];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v59 = 1;
  if (v25)
  {
    goto LABEL_24;
  }

  v58 = 0;
LABEL_26:
  v53[1] = a3;
  v34 = sub_100307550();
  swift_beginAccess();
  v11 = *(v34 + 16);

  v60 = v13;
  if (v11 >> 62)
  {
    goto LABEL_44;
  }

  v35 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35)
  {
LABEL_28:
    if (v35 >= 1)
    {
      v36 = 0;
      v56 = "SearchIndexer.statistics.weekly";
      v55 = "SearchIndexer.Indexer.";
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v37 = sub_1004A6794();
        }

        else
        {
          v37 = *(v11 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = sub_1004A5734();
        [(objc_class *)v38 willAccessValueForKey:v39];

        v40 = [(objc_class *)v38 primitiveDataUsage];
        if (v40)
        {
          v41 = v40;
          v42 = sub_1004A4414();
          v44 = v43;

          sub_100014CEC(v42, v44);
          v45 = v57;
          sub_1004A44D4();
          v46 = sub_100378058(v45, v42, v44);
          sub_100014D40(v42, v44);
        }

        else
        {
          v46 = _swiftEmptyDictionarySingleton;
        }

        v47 = sub_1004A5734();
        [(objc_class *)v38 didAccessValueForKey:v47];

        if (v58)
        {
          sub_100373A50(4, v60, v46, v61);
          sub_10030883C(0xD00000000000002ELL, v56 | 0x8000000000000000, v61);
          v48 = sub_1004A5734();
          sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
          v49 = sub_1004A54F4().super.isa;
          AnalyticsSendEvent();
        }

        if (v59)
        {
          sub_100373A50(28, v60, v46, &v62);

          sub_10030883C(0xD00000000000002FLL, v55 | 0x8000000000000000, &v62);
          v50 = sub_1004A5734();
          sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
          v51 = sub_1004A54F4().super.isa;
          AnalyticsSendEvent();

          v38 = v51;
        }

        else
        {
        }

        ++v36;
      }

      while (v35 != v36);
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  return v54(v52);
}

id *sub_100322260()
{

  v1 = OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger;
  v2 = sub_1004A4A74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100322308()
{
  sub_100322260();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Indexer(uint64_t a1)
{
  result = qword_1005D90C8;
  if (!qword_1005D90C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003223B4(uint64_t a1)
{
  result = sub_1004A4A74();
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

uint64_t sub_100322470()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003224E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1003224F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v33 = a5;
  v35 = a4;
  v34 = a3;
  v7 = _s11QueuedItemsV4ItemVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(v11 + 48);

  os_unfair_lock_lock((v12 + 48));
  v13 = *(v12 + 16);
  v43 = _swiftEmptySetSingleton;
  v14 = v13[4];
  if (v13[2] >= v13[3] + v14)
  {
    v15 = (v13[3] + v14);
  }

  else
  {
    v15 = v13[2];
  }

  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  aBlock = v13;
  v37 = v14;
  v38 = v15;

  while (1)
  {
    if (v14 != v15)
    {
      goto LABEL_5;
    }

    if ((sub_100351DD0() & 1) == 0)
    {
      break;
    }

    v13 = aBlock;
    v14 = v37;
LABEL_5:
    v37 = v14 + 1;
    sub_100323720(v13 + v16 + *(v8 + 72) * v14, v10);
    sub_10036210C(v42, *(v10 + 1));
    sub_100323784(v10);
    v15 = v38;
    ++v14;
  }

  v17 = v43;
  os_unfair_lock_unlock((v12 + 48));

  v18 = v17[2];

  v19 = sub_1004A4A54();
  v20 = sub_1004A6034();
  v21 = os_log_type_enabled(v19, v20);
  if (v18)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = a2;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v18;
      v23 = "{%ld} Spotlight indexer did pause. Index queue still has %ld item(s).";
      v24 = v20;
      v25 = v19;
      v26 = v22;
      v27 = 22;
      goto LABEL_14;
    }
  }

  else if (v21)
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a2;
    v23 = "{%ld} Spotlight indexer did pause. Index queue did drain.";
    v24 = v20;
    v25 = v19;
    v26 = v28;
    v27 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v25, v24, v23, v26, v27);
  }

  v29 = *(a1 + 32);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = v34;
  v31 = v33;
  *(v30 + 40) = v35;
  *(v30 + 48) = v31;
  v40 = sub_100323824;
  v41 = v30;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_10019C778;
  v39 = &unk_1005B3D68;
  v32 = _Block_copy(&aBlock);

  [v29 performBlock:v32];
  _Block_release(v32);
}

uint64_t sub_100322858(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  v8 = *(v7 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v21 = sub_100323854;
  v22 = v7;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10019C778;
  v20 = &unk_1005B3D90;
  v9 = _Block_copy(&aBlock);

  [v8 performBlock:v9];
  _Block_release(v9);
  v10 = *(a1 + 64);
  v11 = *(v10 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext);
  v21 = sub_100323BB8;
  v22 = v10;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10019C778;
  v20 = &unk_1005B3DB8;
  v12 = _Block_copy(&aBlock);

  [v11 performBlock:v12];
  _Block_release(v12);
  return sub_1003229FC(a2, a3, a4, a5);
}

uint64_t sub_1003229FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v37 = a1;
  v6 = sub_1004A5244();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004A5274();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1004A4A74();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v38);
  v11 = *(*(v4 + 80) + 40);
  v12 = *(v11 + 16);

  if ([v12 hasChanges])
  {

    sub_100309C70(v13, v11);

    *(v11 + 56) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v14 = sub_100323FA0();
  v16 = v15;
  v47 = v18;
  v48 = v17;
  v19 = OBJC_IVAR____TtC17IMAPSearchIndexer7Indexer_logger;
  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v6;
    v23 = v22;
    *v22 = 134218752;
    *(v22 + 4) = v37;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v16;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v14;
    *(v22 + 32) = 2048;
    *(v22 + 34) = IndexingStatistics.fractionCompletedAsInt.getter(v14, v16);
    _os_log_impl(&_mh_execute_header, v20, v21, "{%ld} %ld of %ld (%ld%%) messages are indexed.", v23, 0x2Au);
    v6 = v36;
  }

  v37 = *(v5 + 16);
  v24 = v5 + v19;
  v25 = v38;
  (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v38);
  v26 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v39;
  *(v27 + 24) = v14;
  *(v27 + 32) = v16;
  v28 = v47;
  *(v27 + 40) = v48;
  *(v27 + 48) = v28;
  (*(v9 + 32))(v27 + v26, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v29 = (v27 + ((v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  aBlock[4] = sub_1003238FC;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3E08;
  v31 = _Block_copy(aBlock);

  v32 = v42;
  sub_1004A5254();
  v49 = _swiftEmptyArrayStorage;
  sub_100323A48(&qword_1005D4F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_1000CBB00(&qword_1005D4F60, &unk_1005D91A0, &unk_1004DDA60);
  v33 = v44;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v31);
  (*(v46 + 8))(v33, v6);
  (*(v43 + 8))(v32, v45);
}

uint64_t sub_100322F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result - a2;
  if (!__OFSUB__(result, a2))
  {
    v7 = a6;
    if (a6 - 1 < 2)
    {
      return v7;
    }

    if (a6)
    {
      v8 = sub_1004A4A54();
      v11 = sub_1004A6034();
      v12 = os_log_type_enabled(v8, v11);
      if (v6)
      {
        if (!v12)
        {
          v7 = 2;
          goto LABEL_15;
        }

        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v8, v11, "Sync did complete. Still %ld un-indexed message(s).", v13, 0xCu);
        v7 = 2;
      }

      else
      {
        if (!v12)
        {
          v7 = 3;
          goto LABEL_15;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, v11, "Sync did complete. No un-indexed messages.", v14, 2u);
        v7 = 3;
      }
    }

    else
    {
      v8 = sub_1004A4A54();
      v9 = sub_1004A6034();
      if (!os_log_type_enabled(v8, v9))
      {
        v7 = 0;
LABEL_15:

        return v7;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sync did defer.", v10, 2u);
      v7 = 0;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032308C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003230D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v42 = a1;
  v43 = a2;
  v5 = sub_1004A5234();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v44 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v41 = (v38 - v8);
  v9 = sub_1004A6074();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  __chkstk_darwin(v9);
  v39 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004A6064();
  __chkstk_darwin(v12);
  v13 = sub_1004A5274();
  __chkstk_darwin(v13 - 8);
  *(a4 + 136) = 1;
  *(a4 + 152) = 0;
  swift_unknownObjectWeakInit();
  v38[1] = sub_10019A8E4(0, &qword_1005D3248, OS_dispatch_queue_ptr);
  v40 = "Email Spotlight Indexer";
  *(a4 + 160) = 0;
  *(a4 + 168) = 0;
  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  v38[3] = sub_100323A48(&qword_1005D50B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v38[2] = sub_10000C9C0(&qword_1005D3250, &qword_1004F5CA0);
  sub_1000CBB00(&qword_1005D50C0, &qword_1005D3250, &qword_1004F5CA0);
  sub_1004A6544();
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v15 = *(v49 + 104);
  v49 += 104;
  v16 = v39;
  v15(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v48);
  v17 = sub_1004A6094();
  *(a4 + 32) = v17;
  v40 = v17;
  sub_1004A5254();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004A6544();
  v15(v16, v14, v48);
  *(a4 + 40) = sub_1004A6094();
  *(a4 + 16) = v42;
  *(a4 + 24) = &off_1005B5C20;
  *(a4 + 152) = &off_1005B4140;
  swift_unknownObjectWeakAssign();

  v18 = v46;
  *(a4 + 48) = v45;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0xC000000000000000;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  v19 = v41;
  *v41 = 3;
  v20 = enum case for DispatchTimeInterval.seconds(_:);
  v21 = *(v18 + 104);
  v22 = v47;
  v21(v19, enum case for DispatchTimeInterval.seconds(_:), v47);
  v23 = v44;
  *v44 = 1;
  v21(v23, v20, v22);
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100323A90;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B3F20;
  v25 = _Block_copy(aBlock);
  type metadata accessor for RestartableTimer();
  swift_allocObject();
  v26 = v40;

  v28 = RestartableTimer.init(queue:repeating:leeway:closure:)(v26, v19, v23, v25, v27);

  *(a4 + 160) = v28;

  v29 = _s13IndexDelegateCMa();
  v30 = objc_allocWithZone(v29);
  swift_weakInit();
  swift_weakAssign();
  v50.receiver = v30;
  v50.super_class = v29;
  v31 = objc_msgSendSuper2(&v50, "init");

  v32 = *(a4 + 168);
  *(a4 + 168) = v31;

  v33 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  v35 = *(v33 + 16);
  v36 = v31;
  swift_unknownObjectRetain();
  v35(v31, ObjectType, v33);

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_100323720(uint64_t a1, uint64_t a2)
{
  v4 = _s11QueuedItemsV4ItemVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100323784(uint64_t a1)
{
  v2 = _s11QueuedItemsV4ItemVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003237E4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10032385C()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1003238FC()
{
  v1 = *(sub_1004A4A74() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = sub_100322F00(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + 16));
  return v3(v4);
}

uint64_t sub_1003239B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003239F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100323A48(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100323A98()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100323B20(uint64_t a1)
{
  sub_1004A4A74();

  sub_10036F19C(a1);
}

id sub_100323BF4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_1004A5734();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v11[4] = sub_1002344B8;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100307F04;
  v11[3] = &unk_1005B3FE0;
  v8 = _Block_copy(v11);

  v9 = [v5 addObserverForName:v6 object:v2 queue:0 usingBlock:v8];
  _Block_release(v8);

  return v9;
}

void sub_100323D44()
{
  *&xmmword_1005D91F8 = 0x6E65477865646E49;
  *(&xmmword_1005D91F8 + 1) = 0xEF6E6F6974617265;
  qword_1005D9208 = 0xD000000000000017;
  unk_1005D9210 = 0x80000001004AF010;
  *&xmmword_1005D9218 = sub_100323DCC;
  *(&xmmword_1005D9218 + 1) = 0;
  qword_1005D9228 = sub_100323E14;
  unk_1005D9230 = 0;
  *&xmmword_1005D9238 = sub_100323E50;
  *(&xmmword_1005D9238 + 1) = 0;
}

id sub_100323DCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithLongLong:v1];
}

uint64_t sub_100323E14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    result = [a1 longLongValue];
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

void sub_100323E50(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1005D8778 != -1)
  {
    swift_once();
  }

  v2 = sub_1004A4A74();
  sub_1001C203C(v2, qword_1005DE2D0);
  oslog = sub_1004A4A54();
  v3 = sub_1004A6004();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Saving current index generation %llu.", v4, 0xCu);
  }
}

uint64_t sub_100323F50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100323F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100323FA0()
{
  v84 = sub_1003249F4();
  v85 = v0;
  sub_100324CFC();
  v1 = sub_1004A5734();
  v2 = objc_opt_self();
  v3 = [v2 expressionForKeyPath:v1];

  v4 = [objc_allocWithZone(NSExpressionDescription) init];
  v5 = sub_1004A5734();
  [v4 setName:v5];

  [v4 setExpression:v3];
  [v4 setExpressionResultType:{objc_msgSend(v4, "expressionResultType")}];

  v6 = sub_1004A5734();
  v7 = [v2 expressionForKeyPath:v6];

  v8 = [objc_allocWithZone(NSExpressionDescription) init];
  v9 = sub_1004A5734();
  [v8 setName:v9];

  [v8 setExpression:v7];
  [v8 setExpressionResultType:{objc_msgSend(v8, "expressionResultType")}];

  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_1004A5734();
  v12 = [v10 initWithEntityName:v11];

  [v12 setResultType:2];
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004D01D0;
  v14 = sub_10019A8E4(0, &qword_1005D9248, NSExpressionDescription_ptr);
  *(v13 + 32) = v4;
  *(v13 + 88) = v14;
  *(v13 + 56) = v14;
  *(v13 + 64) = v8;
  v15 = v4;
  v16 = v8;
  isa = sub_1004A5C04().super.isa;

  [v12 setPropertiesToGroupBy:isa];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004CEA80;
  *(v18 + 32) = v15;
  *(v18 + 88) = v14;
  *(v18 + 56) = v14;
  *(v18 + 64) = v16;
  v81 = v15;
  v82 = v16;
  v19 = sub_1004A5734();
  v20 = [v2 expressionForKeyPath:v19];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004CEAA0;
  *(v21 + 56) = sub_10019A8E4(0, &qword_1005D9250, NSExpression_ptr);
  *(v21 + 32) = v20;
  v22 = v20;
  v23 = sub_1004A5734();
  v24.super.isa = sub_1004A5C04().super.isa;

  v25 = [v2 expressionForFunction:v23 arguments:v24.super.isa];

  v26 = [objc_allocWithZone(NSExpressionDescription) init];
  v27 = sub_1004A5734();
  [v26 setName:v27];

  [v26 setExpression:v25];
  [v26 setExpressionResultType:{objc_msgSend(v26, "expressionResultType")}];

  *(v18 + 120) = v14;
  *(v18 + 96) = v26;
  v28 = sub_1004A5C04().super.isa;

  [v12 setPropertiesToFetch:v28];

  v29 = sub_1004A5734();
  v30 = sub_1004A5C04().super.isa;
  v31 = [objc_opt_self() predicateWithFormat:v29 argumentArray:v30];

  [v12 setPredicate:v31];
  *&v92 = 0;
  v83 = v12;
  v32 = [v12 execute:&v92];
  v33 = v92;
  if (v32)
  {
    v34 = v32;
    sub_10019A8E4(0, &qword_1005D9258, NSDictionary_ptr);
    v35 = sub_1004A5C14();
    v36 = v33;

    if (v35 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
    {
      v38 = 0;
      v39 = 0;
      v40 = v35 & 0xC000000000000001;
      v24.super.isa = (v35 & 0xFFFFFFFFFFFFFF8);
      v41 = _swiftEmptyArrayStorage;
      v87 = v35 & 0xC000000000000001;
      v89 = i;
      v86 = (v35 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v40)
        {
          v43 = sub_1004A6794();
        }

        else
        {
          if (v38 >= *(v24.super.isa + 2))
          {
            goto LABEL_18;
          }

          v43 = *(v35 + 8 * v38 + 32);
        }

        v44 = v43;
        v45 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        *&v91[0] = v43;
        sub_100325010();

        v46 = WORD4(v92);
        if ((WORD4(v92) & 0xFF00) != 0x200)
        {
          v47 = v35;
          v48 = v39;
          v49 = v92;
          v50 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_10035D760(0, *(v41 + 2) + 1, 1, v41);
          }

          v52 = *(v41 + 2);
          v51 = *(v41 + 3);
          if (v52 >= v51 >> 1)
          {
            v41 = sub_10035D760((v51 > 1), v52 + 1, 1, v41);
          }

          *(v41 + 2) = v52 + 1;
          v42 = &v41[24 * v52];
          *(v42 + 4) = v49;
          v42[40] = v46 & 1;
          v42[41] = HIBYTE(v46) & 1;
          *(v42 + 6) = v50;
          v39 = v48;
          v35 = v47;
          v40 = v87;
          i = v89;
          v24.super.isa = v86;
        }

        ++v38;
        if (v45 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

    v41 = _swiftEmptyArrayStorage;
LABEL_21:

    v53 = v41;
    v54 = *(v41 + 2);
    v90 = v53;
    v55 = 0;
    if (v54)
    {
      v56 = (v53 + 48);
      v57 = v54;
      while (1)
      {
        v58 = *v56;
        v56 += 3;
        v59 = __OFADD__(v55, v58);
        v55 += v58;
        if (v59)
        {
          break;
        }

        if (!--v57)
        {
          goto LABEL_25;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }

    else
    {
LABEL_25:

      v60 = v85;
      v61 = 0;
      v62 = 0;
      v63 = v90 + 48;
      v24.super.isa = &xmmword_1005D91F8;
LABEL_26:
      v88 = v62;
      v64 = &v63[24 * v61];
      while (v54 != v61)
      {
        if (v61 >= *(v90 + 2))
        {
          __break(1u);
          goto LABEL_57;
        }

        v65 = *(v64 - 2);
        v66 = *(v64 - 8);
        v67 = *v64;
        if (qword_1005D8760 != -1)
        {
          swift_once();
        }

        ++v61;
        v64 += 24;
        v95 = *&qword_1005D9228;
        v96 = xmmword_1005D9238;
        v93 = *&qword_1005D9208;
        v94 = xmmword_1005D9218;
        v92 = xmmword_1005D91F8;
        if (v65 == sub_1003521DC(&v92))
        {
          v68 = v66;
        }

        else
        {
          v68 = 1;
        }

        if ((v68 & 1) == 0)
        {
          v63 = v90 + 48;
          v62 = v88 + v67;
          if (!__OFADD__(v88, v67))
          {
            goto LABEL_26;
          }

          __break(1u);
          break;
        }
      }

      if (!v54)
      {

        goto LABEL_51;
      }

      if (qword_1005D8760 != -1)
      {
        goto LABEL_59;
      }
    }

    v69 = 0;
    v70 = *(v24.super.isa + 3);
    v91[2] = *(v24.super.isa + 2);
    v91[3] = v70;
    v91[4] = *(v24.super.isa + 4);
    v71 = *(v24.super.isa + 1);
    v91[0] = *v24.super.isa;
    v91[1] = v71;
    v72 = v90 + 48;
    do
    {
      if (v69 >= *(v90 + 2))
      {
        goto LABEL_58;
      }

      v73 = *(v72 - 7);
      v24.super.isa = *(v72 - 8);
      v74 = *(v72 - 2);
      v75 = sub_1003521DC(v91);
      if ((v24.super.isa & 1) == 0 && v74 == v75 && v73 != 0)
      {

        v77 = v81;
        goto LABEL_52;
      }

      ++v69;
      v72 += 24;
    }

    while (v54 != v69);

LABEL_51:

    v77 = v83;
LABEL_52:
    if (v84 <= v55)
    {
      v78 = v55;
    }

    else
    {
      v78 = v84;
    }

    return v78;
  }

  else
  {
    v80 = v92;
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003249F4()
{
  v0 = sub_100307550();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_30:
    v3 = sub_1004A6A34();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  v6 = 0x746E756F636361;
  v7 = v1 & 0xC000000000000001;
  p_attr = (&stru_1005CAFF8 + 8);
  v33 = v1;
LABEL_4:
  v32 = v5;
  if (v4 != v3)
  {
    while (1)
    {
      if (v7)
      {
        v11 = sub_1004A6794();
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v1 + 8 * v4 + 32);
      }

      v12 = v11;
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ([v11 p_attr[429]])
      {
        goto LABEL_8;
      }

      v14 = [v12 managedObjectContext];
      if (!v14)
      {
        goto LABEL_8;
      }

      v15 = sub_1004A5734();
      [v12 willAccessValueForKey:v15];

      v16 = [v12 primitiveAccount];
      if (!v16)
      {
        goto LABEL_6;
      }

      v17 = v7;
      v18 = v3;
      v19 = v2;
      v20 = v6;
      v21 = v16;
      v22 = sub_1004A5764();
      v9 = v23;

      v6 = v20;
      v2 = v19;
      v3 = v18;
      v7 = v17;
      v1 = v33;
      v24 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {
        break;
      }

LABEL_7:
      v10 = sub_1004A5734();
      [v12 didAccessValueForKey:v10];

      p_attr = &stru_1005CAFF8.attr;
      if (v9)
      {

        v25 = sub_1004A5734();
        [v12 willAccessValueForKey:v25];

        v26 = [v12 primitiveMessageCount];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 integerValue];

          v29 = v28 & ~(v28 >> 63);
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_1004A5734();
        [v12 didAccessValueForKey:v30];

        v4 = v13;
        v5 = v32 + v29;
        p_attr = (&stru_1005CAFF8 + 8);
        if (__OFADD__(v32, v29))
        {
          __break(1u);
          goto LABEL_27;
        }

        goto LABEL_4;
      }

LABEL_8:

      ++v4;
      if (v13 == v3)
      {
        goto LABEL_27;
      }
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

LABEL_27:

  return v32;
}

uint64_t sub_100324CFC()
{
  v0 = sub_100307550();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_31:
    v3 = sub_1004A6A34();
    v4 = 0;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = 0;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = 0x746E756F636361;
  v33 = v1;
  do
  {
    v32 = v4;
    v8 = v5;
    p_attr = (&stru_1005CAFF8 + 8);
    while (1)
    {
      if (v6)
      {
        v12 = sub_1004A6794();
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_30;
        }

        v12 = *(v1 + 8 * v8 + 32);
      }

      v13 = v12;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (([v12 p_attr[429]] & 1) == 0)
      {
        v14 = [v13 managedObjectContext];
        if (v14)
        {
          break;
        }
      }

LABEL_7:

      ++v8;
      if (v5 == v3)
      {
        v4 = v32;
        goto LABEL_28;
      }
    }

    v15 = sub_1004A5734();
    [v13 willAccessValueForKey:v15];

    v16 = [v13 primitiveAccount];
    if (!v16)
    {
      goto LABEL_5;
    }

    v17 = v3;
    v18 = v6;
    v19 = v2;
    v20 = v7;
    v21 = v16;
    v22 = sub_1004A5764();
    v10 = v23;

    v7 = v20;
    v2 = v19;
    v6 = v18;
    v3 = v17;
    v1 = v33;
    v24 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {

LABEL_5:
      v10 = 0;
    }

    v11 = sub_1004A5734();
    [v13 didAccessValueForKey:v11];

    p_attr = &stru_1005CAFF8.attr;
    if (!v10)
    {
      goto LABEL_7;
    }

    v25 = sub_1004A5734();
    [v13 willAccessValueForKey:v25];

    v26 = [v13 primitiveMessageCount];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 integerValue];

      v29 = v28 & ~(v28 >> 63);
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_1004A5734();
    [v13 didAccessValueForKey:v30];

    v4 = v32;
    if (v29 > v32)
    {
      v4 = v29;
    }
  }

  while (v5 != v3);
LABEL_28:

  return v4;
}

uint64_t sub_100325010()
{
  v3 = 0;
  result = sub_1004A5504();
  __break(1u);
  return result;
}

unint64_t sub_100325504(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
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
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1004A67E4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
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

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
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

  v6 = sub_10010C818(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t *sub_100325804@<X0>(uint64_t *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_65;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v22 = a2;

    v8 = sub_10010C818(v2, v3, 10);
    v24 = v23;

    if (v24)
    {
      v21 = 1;
      a2 = v22;
      goto LABEL_70;
    }

    a2 = v22;
    goto LABEL_69;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v25 = a2;
      result = sub_1004A67E4();
      a2 = v25;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v14 = result + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v8, 0xAuLL))
              {
                goto LABEL_63;
              }

              v11 = __CFADD__(10 * v8, v15);
              v8 = 10 * v8 + v15;
              if (v11)
              {
                goto LABEL_63;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = __CFADD__(10 * v8, v18);
            v8 = 10 * v8 + v18;
            if (v11)
            {
              goto LABEL_63;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_64:
      v27 = v4;
      if (v4)
      {
LABEL_65:
        v21 = 1;
LABEL_70:
        *a2 = v21;
        return result;
      }

LABEL_69:
      v21 = v8 != 0;
      goto LABEL_70;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              goto LABEL_63;
            }

            v11 = 10 * v8 >= v10;
            v8 = 10 * v8 - v10;
            if (!v11)
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v4) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v26[0] = *result;
  v26[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v19 = v26;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v20);
          v8 = 10 * v8 + v20;
          if (v11)
          {
            break;
          }

          ++v19;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v26 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v16 = v26 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (!is_mul_ok(v8, 0xAuLL))
        {
          break;
        }

        v11 = __CFADD__(10 * v8, v17);
        v8 = 10 * v8 + v17;
        if (v11)
        {
          break;
        }

        ++v16;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t _s7ElementVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s7ElementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

void sub_100325BF4(uint64_t a1, void *a2)
{
  v48 = a2;
  v3 = _s11QueuedItemsV4ItemVMa(0);
  v50 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = (&v39 - v6);
  __chkstk_darwin(v7);
  v41 = &v39 - v8;
  __chkstk_darwin(v9);
  v40 = &v39 - v10;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v46 = a1;

  v16 = 0;
  v44 = a1 + 56;
  v45 = _swiftEmptyArrayStorage;
  v43 = v15;
  if (v14)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v47 = (v14 - 1) & v14;
        v18 = *(*(v46 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
        v19 = *v48;
        v20 = *(*v48 + 24);

        if (v20)
        {
          break;
        }

LABEL_5:

        v15 = v43;
        v11 = v44;
        v14 = v47;
        if (!v47)
        {
          goto LABEL_6;
        }
      }

      v21 = 0;
      while (1)
      {
        if (v21 >= v20)
        {
          __break(1u);
          goto LABEL_34;
        }

        v22 = *(v50 + 80);
        v23 = v19[4];
        v24 = v21 + v23 >= v19[2] ? v19[2] : 0;
        v25 = (v22 + 40) & ~v22;
        v26 = *(v50 + 72);
        v27 = v49;
        sub_100326F70(v19 + v25 + (v21 + v23 - v24) * v26, v49, _s11QueuedItemsV4ItemVMa);
        v28 = *v27;
        sub_100323784(v27);
        if (v28 == v18)
        {
          break;
        }

        ++v21;
        v20 = v19[3];
        if (v21 == v20)
        {
          goto LABEL_5;
        }
      }

      if (v21 >= *(*v48 + 24))
      {
        goto LABEL_35;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10033847C();
      }

      v29 = *v48;
      if (v21 >= *(*v48 + 24))
      {
        break;
      }

      v30 = *(v29 + 32);
      if (v30 + v21 >= *(v29 + 16))
      {
        v31 = *(v29 + 16);
      }

      else
      {
        v31 = 0;
      }

      v32 = v29 + v25;
      v33 = v29 + v25 + (v30 - v31 + v21) * v26;
      v34 = v41;
      sub_100326F70(v33, v41, _s11QueuedItemsV4ItemVMa);

      sub_100326464(v21, v21 + 1, (v29 + 16), v32);

      v35 = v40;
      sub_100326F0C(v34, v40);
      sub_100326F0C(v35, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_10035D87C(0, v45[2] + 1, 1, v45);
      }

      v15 = v43;
      v11 = v44;
      v37 = v45[2];
      v36 = v45[3];
      if (v37 >= v36 >> 1)
      {
        v45 = sub_10035D87C((v36 > 1), v37 + 1, 1, v45);
      }

      v38 = v45;
      v45[2] = v37 + 1;
      sub_100326F0C(v42, v38 + ((v22 + 32) & ~v22) + v37 * v26);
      v14 = v47;
      if (!v47)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100325FF8(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void *sub_100326004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v7 = result[3];
  if (v7)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    v9 = v7 + 1;
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  if (*(*a1 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100337CF8(isUniquelyReferenced_nonNull_native, v8, 0);
    v11 = *a1;
  }

  v12 = *(_s11QueuedItemsV4ItemVMa(0) - 8);
  result = sub_100337F98((v11 + 16), v11 + ((*(v12 + 80) + 40) & ~*(v12 + 80)), a2);
  *a3 = v9;
  *(a3 + 8) = v7 == 0;
  return result;
}

void sub_100326128()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 12);
  sub_100326EAC(v8);
  os_unfair_lock_unlock(v1 + 12);
  v2 = v8[3];
  if (*(v8[0] + 16))
  {
    os_transaction_create();
  }

  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100326248@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = _s11QueuedItemsV4ItemVMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100325BF4(a2, a1);
  v29 = a1;
  v10 = *a1;
  v11 = *(v7 + 80);
  v12 = *(*a1 + 24);
  v13 = *(*a1 + 32);
  v14 = *(v10 + 16);
  v30 = v12;
  v31 = v15;
  v16 = v13 + v12;
  if (v14 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  v18 = (v11 + 40) & ~v11;
  v32 = v10;
  v33 = v13;
  v34 = v17;

  v19 = 0;
  v20 = v10;
  if (v13 == v17)
  {
LABEL_5:
    if (sub_100351DD0())
    {
      v20 = v32;
      v13 = v33;
      goto LABEL_7;
    }

    v25 = _swiftEmptyArrayStorage;
    if (!*(v10 + 24))
    {
      v26 = v29[3];
      v29[3] = _swiftEmptyArrayStorage;
      v25 = v26;
    }

    v27 = v30;
    *a3 = v31;
    a3[1] = v27;
    a3[2] = v19;
    a3[3] = v25;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v21 = v13 + 1;
      v33 = v13 + 1;
      sub_100326F70(v20 + v18 + *(v7 + 72) * v13, v9, _s11QueuedItemsV4ItemVMa);
      result = type metadata accessor for PendingItem(0);
      v23 = *&v9[*(result + 28)];
      v24 = __OFADD__(v19, v23);
      v19 += v23;
      if (v24)
      {
        break;
      }

      sub_100323784(v9);
      ++v13;
      if (v21 == v34)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s11QueuedItemsV4ItemVMa(uint64_t a1)
{
  result = qword_1005D92B8;
  if (!qword_1005D92B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100326464(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  sub_100326548(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    _s11QueuedItemsV4ItemVMa(0);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    _s11QueuedItemsV4ItemVMa(0);
    swift_arrayDestroy();
  }

  return sub_100326628(a1, a2, a3, a4);
}

uint64_t sub_100326548@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = _s11QueuedItemsV4ItemVMa(0);
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100326628(unint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v4 < 1)
  {
    return result;
  }

  v6 = a3[1];
  v7 = a3[2];
  v8 = v7 + result;
  v9 = *a3;
  if ((v7 + result) >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 + a2;
  if (v7 + a2 >= v9)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 - a2;
  if (__OFSUB__(v6, a2))
  {
    goto LABEL_169;
  }

  v15 = a2 - result;
  v16 = v8 - v10;
  v17 = v11 - v12;
  if (v13 > result)
  {
    v13 = v7 + v4;
    if (!__OFADD__(v7, v4))
    {
      v18 = __OFSUB__(v13, v9);
      if (v13 >= v9)
      {
        v13 -= v9;
        if (v18)
        {
          goto LABEL_174;
        }
      }

      if (!result)
      {
        goto LABEL_126;
      }

      if (v17 <= 0)
      {
        v19 = *a3;
      }

      else
      {
        v19 = v11 - v12;
      }

      if (v16 <= 0)
      {
        v20 = *a3;
      }

      else
      {
        v20 = v8 - v10;
      }

      if (v7 < v20)
      {
        if (v19 >= v13)
        {
          if (result <= 0)
          {
            goto LABEL_126;
          }

          v17 = result;
          v40 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
          v41 = v40 * v13;
          result = a4 + v40 * v13;
          v42 = v40 * v7;
          v43 = a4 + v40 * v7 + v40 * v17;
          if (v41 >= v42 && result < v43)
          {
            if (v41 != v42)
            {
              goto LABEL_124;
            }

            goto LABEL_126;
          }

LABEL_125:
          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_126;
        }

        if (v17 <= 0)
        {
          goto LABEL_113;
        }

        v21 = result;
        v15 = v9 - v4;
        v22 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
        v23 = v22 * v15;
        v24 = a4 + v22 * v15 + v22 * v17;
        if (v23 <= 0 && v24 > a4)
        {
          result = v21;
          if (!v23)
          {
LABEL_113:
            v18 = __OFSUB__(result, v17);
            v17 = result - v17;
            if (!v18)
            {
              goto LABEL_120;
            }

            __break(1u);
LABEL_164:
            result = swift_arrayInitWithTakeFrontToBack();
            goto LABEL_165;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        result = v21;
        goto LABEL_113;
      }

      if (v19 < v13)
      {
        v35 = result;
        if (v16 > 0)
        {
          v36 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
          if (v36 * v4 < 0 || v36 * v4 >= v36 * v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v49 = *a3 - v4;
        result = _s11QueuedItemsV4ItemVMa(0);
        v50 = *(*(result - 8) + 72);
        if (v50 * v49 <= 0 && a4 + v50 * v49 + v50 * v4 > a4)
        {
          if (v50 * v49)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        v52 = v35 - v17;
        if (__OFSUB__(v35, v17))
        {
          goto LABEL_176;
        }

        if (v52 < 1)
        {
          goto LABEL_126;
        }

        result = a4 + v50 * v13;
        v53 = a3[2] * v50;
        if (v50 * v13 >= v53 && result < a4 + v53 + v50 * v52)
        {
          if (v50 * v13 != v53)
          {
            goto LABEL_124;
          }

          goto LABEL_126;
        }

        goto LABEL_125;
      }

      if (__OFSUB__(0, v16))
      {
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      if (v16 > 0)
      {
        v15 = result;
        v45 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
        v46 = v45 * (v17 - v16);
        if (v46 < 0 || v46 >= v45 * v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          result = v15;
          if (!v46)
          {
            goto LABEL_119;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        result = v15;
      }

LABEL_119:
      v17 = result - v16;
      if (__OFSUB__(result, v16))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

LABEL_120:
      if (v17 < 1)
      {
        goto LABEL_126;
      }

      v54 = a3[2];
      v55 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
      result = a4 + v55 * v13;
      if (v55 * v13 >= v55 * v54 && result < a4 + v55 * v54 + v55 * v17)
      {
        if (v55 * v13 != v55 * v54)
        {
LABEL_124:
          result = swift_arrayInitWithTakeBackToFront();
        }

LABEL_126:
        a3[2] = v13;
        v56 = a3[1];
        v18 = __OFSUB__(v56, v4);
        v57 = v56 - v4;
        if (!v18)
        {
          goto LABEL_166;
        }

        __break(1u);
        goto LABEL_129;
      }

      goto LABEL_125;
    }

    goto LABEL_170;
  }

  v26 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v27 = __OFSUB__(v26, v9);
    if (v26 < v9)
    {
      goto LABEL_37;
    }

    v26 -= v9;
    if (!v27)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  if (v26 < 0)
  {
    v18 = __OFADD__(v26, v9);
    v26 += v9;
    if (v18)
    {
      goto LABEL_182;
    }
  }

LABEL_37:
  v18 = __OFSUB__(v6, v4);
  v28 = v6 - v4;
  if (v18)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v29 = v28 + v7;
  if (v29 >= v9)
  {
    v30 = v9;
  }

  else
  {
    v30 = 0;
  }

  if (!v13)
  {
    goto LABEL_165;
  }

  v31 = v29 - v30;
  if (v29 - v30 <= 0)
  {
    v32 = v9;
  }

  else
  {
    v32 = v29 - v30;
  }

  if (v26 <= 0)
  {
    v33 = v9;
  }

  else
  {
    v33 = v26;
  }

  if (v17 >= v33)
  {
    v37 = v9 - v17;
    v38 = __OFSUB__(v9, v17);
    if (v32 >= v16)
    {
      if (v38)
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      if (v37 > 0)
      {
        v48 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
        result = a4 + v48 * v16;
        if (v48 * v16 < v48 * v17 || result >= a4 + v48 * v17 + v48 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v48 * v16 != v48 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_185;
        }

        v64 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v64)
          {
            goto LABEL_189;
          }
        }
      }

      if (v26 < 1)
      {
        goto LABEL_165;
      }

      result = _s11QueuedItemsV4ItemVMa(0);
      v65 = *(*(result - 8) + 72);
      v66 = v65 * v16;
      if (((v65 * v16) & 0x8000000000000000) == 0 && v66 < v65 * v26)
      {
        if (!v66)
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    else
    {
      if (v38)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v37 > 0)
      {
        v39 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
        result = a4 + v39 * v16;
        if (v39 * v16 < v39 * v17 || result >= a4 + v39 * v17 + v39 * v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v39 * v16 != v39 * v17)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v18 = __OFADD__(v16, v37);
        v16 += v37;
        if (v18)
        {
          goto LABEL_184;
        }

        v61 = __OFSUB__(v16, *a3);
        if (v16 >= *a3)
        {
          v16 -= *a3;
          if (v61)
          {
            goto LABEL_188;
          }
        }
      }

      result = _s11QueuedItemsV4ItemVMa(0);
      v62 = *(*(result - 8) + 72);
      v63 = v62 * v16;
      if (v62 * v16 < 0 || v63 >= v62 * v4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v63)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      if (v4 >= *a3)
      {
        v15 = v4 - *a3;
        if (__OFSUB__(v4, *a3))
        {
          goto LABEL_186;
        }
      }

      if (v31 <= 0)
      {
        goto LABEL_165;
      }

      if (v15 * v62 <= 0 && a4 + v15 * v62 + v62 * v31 > a4)
      {
        if (!(v15 * v62))
        {
          goto LABEL_165;
        }

        goto LABEL_163;
      }
    }

    goto LABEL_164;
  }

  if (v32 >= v16)
  {
    if (v13 <= 0)
    {
      goto LABEL_165;
    }

    v47 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
    result = a4 + v47 * v16;
    if (v47 * v16 >= v47 * v17 && result < a4 + v47 * v17 + v47 * v13)
    {
      if (v47 * v16 == v47 * v17)
      {
        goto LABEL_165;
      }

LABEL_163:
      result = swift_arrayInitWithTakeBackToFront();
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v15 = v9 - v16;
  if (__OFSUB__(v9, v16))
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v15 > 0)
  {
    v34 = *(*(_s11QueuedItemsV4ItemVMa(0) - 8) + 72);
    result = a4 + v34 * v16;
    if (v34 * v16 >= v34 * v17 && result < a4 + v34 * v17 + v34 * v15)
    {
      if (v34 * v16 != v34 * v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_130;
    }

LABEL_129:
    result = swift_arrayInitWithTakeFrontToBack();
LABEL_130:
    v18 = __OFADD__(v17, v15);
    v17 += v15;
    if (v18)
    {
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      return result;
    }

    v58 = __OFSUB__(v17, *a3);
    if (v17 >= *a3)
    {
      v17 -= *a3;
      if (v58)
      {
        goto LABEL_187;
      }
    }
  }

  v59 = v13 - v15;
  if (__OFSUB__(v13, v15))
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v59 >= 1)
  {
    result = _s11QueuedItemsV4ItemVMa(0);
    v60 = *(*(result - 8) + 72);
    if (v60 * v17 <= 0 && a4 + v60 * v17 + v60 * v59 > a4)
    {
      if (!(v60 * v17))
      {
        goto LABEL_165;
      }

      goto LABEL_163;
    }

    goto LABEL_164;
  }

LABEL_165:
  v67 = a3[1];
  v18 = __OFSUB__(v67, v4);
  v57 = v67 - v4;
  if (v18)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_166:
  a3[1] = v57;
  return result;
}

__n128 sub_100326EAC@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v5);
  v3 = v7;
  result = v6;
  *a1 = v5;
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_100326F0C(uint64_t a1, uint64_t a2)
{
  v4 = _s11QueuedItemsV4ItemVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100326F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100326FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PendingItem(0);
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

uint64_t sub_1003270BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PendingItem(0);
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

uint64_t sub_100327174(uint64_t a1)
{
  result = type metadata accessor for PendingItem(319);
  if (v2 <= 0x3F)
  {
    result = _s7MessageCMa();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100327208(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100091A08(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = sub_1004A6554();
    v6 = result;
    v7 = 0;
    v22 = v1 + 64;
    v23 = v2;
    v24 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v25 = v7;
      v26 = *(v1 + 36);
      v28._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v28);

      v10 = v4;
      v27 = v4;
      v11 = v1;
      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100091A08((v12 > 1), v13 + 1, 1);
        v10 = v27;
      }

      v10[2] = v13 + 1;
      v14 = &v10[2 * v13];
      v14[4] = 35;
      v14[5] = 0xE100000000000000;
      v8 = 1 << *(v11 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v24;
      v15 = *(v24 + 8 * v9);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v11;
      v4 = v10;
      if (v26 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v19 = (v22 + 8 * v9);
        while (v18 < (v8 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_100020944(v6, v26, 0);
            v8 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v6, v26, 0);
      }

LABEL_4:
      v7 = v25 + 1;
      v6 = v8;
      if (v25 + 1 == v23)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100327468()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16))
  {

    os_unfair_lock_unlock((v2 + 20));
  }

  else
  {
    *(v2 + 16) = 1;
    os_unfair_lock_unlock((v2 + 20));
    if (qword_1005D8768 != -1)
    {
      swift_once();
    }

    v3 = sub_1004A4A74();
    sub_1001C203C(v3, qword_1005D9350);
    v4 = sub_1004A4A54();
    v5 = sub_1004A6034();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting.", v6, 2u);
    }

    v7 = *(v1 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v1;
    v11[4] = sub_10032ADBC;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10019C778;
    v11[3] = &unk_1005B4190;
    v9 = _Block_copy(v11);
    v10 = v7;

    [v10 performBlock:v9];
    _Block_release(v9);
  }
}

void sub_100327650(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  os_unfair_lock_lock((v5 + 20));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 20));
  if (v6)
  {
    sub_1004A69A4();
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_10032B7E4;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B4230;
    v9 = _Block_copy(aBlock);

    [v7 performBlock:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1003277A0()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D9350);
  sub_1001C203C(v0, qword_1005D9350);
  return sub_1004A4A64();
}

uint64_t sub_10032781C(uint64_t a1, uint64_t a2)
{
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v12[2] = xmmword_1005D9218;
  v12[3] = *&qword_1005D9228;
  v12[4] = xmmword_1005D9238;
  v12[0] = xmmword_1005D91F8;
  v12[1] = *&qword_1005D9208;
  v3 = sub_1003521DC(v12);
  if (qword_1005D8768 != -1)
  {
    swift_once();
  }

  v4 = sub_1004A4A74();
  sub_1001C203C(v4, qword_1005D9350);
  v5 = sub_1004A4A54();
  v6 = sub_1004A6034();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Read current index generation %llu from database.", v7, 0xCu);
  }

  v8 = swift_beginAccess();
  __chkstk_darwin(v8);
  v9 = *(a2 + 48);
  __chkstk_darwin(v10);
  os_unfair_lock_lock(v9 + 12);
  sub_10032ADE4();
  os_unfair_lock_unlock(v9 + 12);
  return swift_endAccess();
}

uint64_t sub_100327A10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100327A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v128 = a1;
  v135 = a5;
  v8 = sub_1004A4A74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v133 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v120 - v12;
  __chkstk_darwin(v13);
  v130 = &v120 - v14;
  v15 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v15 - 8);
  v122 = &v120 - v16;
  v17 = sub_1004A44E4();
  v126 = *(v17 - 8);
  v127 = v17;
  __chkstk_darwin(v17);
  v121 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v124 = &v120 - v20;
  v123 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v123);
  v125 = (&v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  __chkstk_darwin(v22 - 8);
  v24 = &v120 - v23;
  v25 = type metadata accessor for IndexableMessageInfo(0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v129 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v134 = &v120 - v29;
  v30 = sub_1004A5734();
  [a3 willAccessValueForKey:v30];

  v31 = [a3 primitiveIndexableMessageInfo];
  if (v31)
  {
    v32 = v31;
    v131 = v26;
    v33 = v24;
    v34 = v25;
    v35 = a3;
    v36 = a2;
    v37 = v9;
    v38 = v8;
    v39 = a4;
    v40 = OBJC_IVAR____TtCE17IMAPSearchIndexerV9IMAP2MIME20IndexableMessageInfoP33_5FFF53AECAA0B5B4FDC4BFE964265B9C7Wrapper_info;
    swift_beginAccess();
    v41 = v32 + v40;
    a4 = v39;
    v8 = v38;
    v9 = v37;
    a2 = v36;
    a3 = v35;
    v25 = v34;
    v24 = v33;
    v26 = v131;
    sub_10032ACA4(v41, v33);
  }

  else
  {
    (*(v26 + 56))(v24, 1, 1, v25);
  }

  v42 = sub_1004A5734();
  [a3 didAccessValueForKey:v42];

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {

    sub_100025F40(v24, &qword_1005D6670, &qword_1004EBFB0);
    v43 = v133;
    (*(v9 + 16))(v133, a4, v8);
    v44 = a3;
    v45 = sub_1004A4A54();
    v46 = sub_1004A6024();
    if (os_log_type_enabled(v45, v46))
    {
      v129 = v8;
      v131 = a4;
      v47 = 8425698;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v138 = v49;
      *v48 = 67109635;
      v50 = sub_10033A5E0();
      if ((v50 & &_mh_execute_header) != 0)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      *(v48 + 4) = v51;

      *(v48 + 8) = 2160;
      *(v48 + 10) = 0x786F626C69616DLL;
      *(v48 + 18) = 2085;
      v52 = [v44 mailbox];
      if (v52)
      {
        v53 = v52;
        v54 = v9;
        v55 = sub_10033A824();
        v57 = v56;

        if (v55)
        {
          v136 = v55;
          v137 = v57;
          v47 = sub_1004A5824();
          v59 = v58;
          v9 = v54;
        }

        else
        {
          v59 = 0xA300000000000000;
          v9 = v54;
          v47 = 8425698;
        }
      }

      else
      {
        v59 = 0xA300000000000000;
      }

      v106 = sub_10015BA6C(v47, v59, &v138);

      *(v48 + 20) = v106;
      _os_log_impl(&_mh_execute_header, v45, v46, "Message UID %u in mailbox '%{sensitive,mask.mailbox}s' has no index info. Not enqueueing for indexing.", v48, 0x1Cu);
      sub_1000197E0(v49);

      sub_10032AED4(v131, _s6LoggerVMa_0);
      (*(v9 + 8))(v43, v129);
    }

    else
    {

      sub_10032AED4(a4, _s6LoggerVMa_0);
      (*(v9 + 8))(v43, v8);
    }

    goto LABEL_50;
  }

  v60 = v134;
  sub_10032AD14(v24, v134, type metadata accessor for IndexableMessageInfo);
  v61 = sub_10033A4C8();
  if (v62)
  {

    v63 = v132;
    (*(v9 + 16))(v132, a4, v8);
    v64 = a3;
    v65 = sub_1004A4A54();
    v66 = sub_1004A6024();
    if (os_log_type_enabled(v65, v66))
    {
      v129 = v8;
      v131 = a4;
      v67 = 8425698;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v138 = v69;
      *v68 = 67109635;
      v70 = sub_10033A5E0();
      if ((v70 & &_mh_execute_header) != 0)
      {
        v71 = 0;
      }

      else
      {
        v71 = v70;
      }

      *(v68 + 4) = v71;

      *(v68 + 8) = 2160;
      *(v68 + 10) = 0x786F626C69616DLL;
      *(v68 + 18) = 2085;
      v72 = [v64 mailbox];
      if (v72)
      {
        v73 = v72;
        v74 = v9;
        v75 = sub_10033A824();
        v77 = v76;

        if (v75)
        {
          v136 = v75;
          v137 = v77;
          v67 = sub_1004A5824();
          v79 = v78;
        }

        else
        {
          v79 = 0xA300000000000000;
        }

        v9 = v74;
        v63 = v132;
      }

      else
      {
        v79 = 0xA300000000000000;
      }

      v116 = sub_10015BA6C(v67, v79, &v138);

      *(v68 + 20) = v116;
      v117 = "Message UID %u in mailbox '%{sensitive,mask.mailbox}s' has no spotlight ID. Not enqueueing for indexing.";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v65, v66, v117, v68, 0x1Cu);
      sub_1000197E0(v69);

      sub_10032AED4(v131, _s6LoggerVMa_0);
      (*(v9 + 8))(v63, v129);
      v105 = v134;
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  v80 = v61;
  v81 = [a3 mailbox];
  if (!v81 || (v82 = v81, v83 = sub_100372E50([v81 objectID]), v82, !v83))
  {

    v63 = v130;
    (*(v9 + 16))(v130, a4, v8);
    v64 = a3;
    v65 = sub_1004A4A54();
    v66 = sub_1004A6024();
    if (os_log_type_enabled(v65, v66))
    {
      v129 = v8;
      v131 = a4;
      v94 = 8425698;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v138 = v69;
      *v68 = 67109635;
      v95 = sub_10033A5E0();
      if ((v95 & &_mh_execute_header) != 0)
      {
        v96 = 0;
      }

      else
      {
        v96 = v95;
      }

      *(v68 + 4) = v96;

      *(v68 + 8) = 2160;
      *(v68 + 10) = 0x786F626C69616DLL;
      *(v68 + 18) = 2085;
      v97 = [v64 mailbox];
      if (v97)
      {
        v98 = v97;
        v99 = v9;
        v100 = sub_10033A824();
        v102 = v101;

        if (v100)
        {
          v136 = v100;
          v137 = v102;
          v94 = sub_1004A5824();
          v104 = v103;
        }

        else
        {
          v104 = 0xA300000000000000;
        }

        v9 = v99;
        v63 = v130;
      }

      else
      {
        v104 = 0xA300000000000000;
      }

      v118 = sub_10015BA6C(v94, v104, &v138);

      *(v68 + 20) = v118;
      v117 = "Message UID %u in mailbox '%{sensitive,mask.mailbox}s' has no mailbox spotlight ID. Not enqueueing for indexing.";
      goto LABEL_48;
    }

LABEL_32:

    sub_10032AED4(a4, _s6LoggerVMa_0);
    (*(v9 + 8))(v63, v8);
    v105 = v60;
LABEL_49:
    sub_10032AED4(v105, type metadata accessor for IndexableMessageInfo);
LABEL_50:
    v119 = type metadata accessor for EnqueueableItem(0);
    return (*(*(v119 - 8) + 56))(v135, 1, 1, v119);
  }

  v84 = v129;
  sub_10032AE6C(v60, v129, type metadata accessor for IndexableMessageInfo);
  v133 = sub_10033AF38();
  LODWORD(v132) = v85 & 1;
  v86 = [a3 serverDate];
  if (v86)
  {
    v87 = v121;
    v88 = v86;
    sub_1004A44C4();

    sub_10032AED4(a4, _s6LoggerVMa_0);
    sub_10032AED4(v60, type metadata accessor for IndexableMessageInfo);
    v89 = v126;
    v90 = v127;
    v91 = *(v126 + 32);
    v92 = v122;
    v91(v122, v87, v127);
    (*(v89 + 56))(v92, 0, 1, v90);
    v93 = v124;
    v91(v124, v92, v90);
  }

  else
  {
    v107 = v126;
    v90 = v127;
    v108 = v122;
    (*(v126 + 56))(v122, 1, 1, v127);
    v93 = v124;
    sub_1004A44D4();

    v109 = a4;
    v89 = v107;
    v84 = v129;
    sub_10032AED4(v109, _s6LoggerVMa_0);
    sub_10032AED4(v60, type metadata accessor for IndexableMessageInfo);
    if ((*(v89 + 48))(v108, 1, v90) != 1)
    {
      sub_100025F40(v108, &qword_1005D0F20, &qword_1004E9390);
    }
  }

  v110 = v125;
  *v125 = v128;
  *(v110 + 8) = a2;
  *(v110 + 16) = v83;
  v111 = type metadata accessor for PendingItem.AddMessage(0);
  sub_10032AD14(v84, v110 + v111[6], type metadata accessor for IndexableMessageInfo);
  v112 = v110 + v111[7];
  *v112 = v133;
  *(v112 + 8) = v132;
  (*(v89 + 32))(v110 + v111[8], v93, v90);
  swift_storeEnumTagMultiPayload();
  v113 = v135;
  *v135 = v80;
  v114 = type metadata accessor for EnqueueableItem(0);
  sub_10032AD14(v110, v113 + *(v114 + 20), type metadata accessor for PendingItem.Info);
  return (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
}

uint64_t sub_1003288B4(uint64_t a1, void *a2)
{
  v5 = _s11QueuedItemsV4ItemVMa(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnqueueableItem(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PendingItem(0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 40);
  os_unfair_lock_lock((v14 + 20));
  v15 = *(v14 + 16);
  os_unfair_lock_unlock((v14 + 20));
  v16 = 0;
  if ((v15 & 1) == 0)
  {
    sub_10032AE6C(a1, v10, type metadata accessor for EnqueueableItem);
    v17 = *(v2 + 56);
    *(v2 + 56) = v17 + 1;
    sub_100341B64(v10, v17, v13);
    sub_10032AE6C(v13, v7, type metadata accessor for PendingItem);
    *&v7[*(v5 + 20)] = a2;
    v18 = a2;
    sub_100328AA0(v7);
    sub_10032AED4(v7, _s11QueuedItemsV4ItemVMa);
    v16 = *v13;
    sub_10032AED4(v13, type metadata accessor for PendingItem);
  }

  return v16;
}

uint64_t sub_100328AA0(uint64_t a1)
{
  v2 = v1;
  v4 = _s11QueuedItemsV4ItemVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v31[-v8];
  swift_beginAccess();
  v35 = a1;
  v10 = *(v1 + 48);
  v32 = sub_100328E00;
  v33 = &v34;
  os_unfair_lock_lock(v10 + 12);
  sub_10032AC4C(&v36);
  os_unfair_lock_unlock(v10 + 12);
  v11 = v36;
  v12 = v37;
  swift_endAccess();
  if (v12 != 1)
  {
    if (qword_1005D8768 != -1)
    {
      swift_once();
    }

    v23 = sub_1004A4A74();
    sub_1001C203C(v23, qword_1005D9350);
    sub_10032AE6C(a1, v6, _s11QueuedItemsV4ItemVMa);
    v14 = sub_1004A4A54();
    v24 = sub_1004A6004();
    if (os_log_type_enabled(v14, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      v26 = *v6;
      sub_10032AED4(v6, _s11QueuedItemsV4ItemVMa);
      *(v25 + 4) = v26;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v11;
      v18 = "Did enqueue item #%llu. Queue has %ld items.";
      v19 = v24;
      v20 = v14;
      v21 = v25;
      v22 = 22;
      goto LABEL_10;
    }

    v27 = v6;
LABEL_13:
    sub_10032AED4(v27, _s11QueuedItemsV4ItemVMa);
    goto LABEL_14;
  }

  if (qword_1005D8768 != -1)
  {
    swift_once();
  }

  v13 = sub_1004A4A74();
  sub_1001C203C(v13, qword_1005D9350);
  sub_10032AE6C(a1, v9, _s11QueuedItemsV4ItemVMa);
  v14 = sub_1004A4A54();
  v15 = sub_1004A6004();
  if (!os_log_type_enabled(v14, v15))
  {
    v27 = v9;
    goto LABEL_13;
  }

  v16 = swift_slowAlloc();
  *v16 = 134217984;
  v17 = *v9;
  sub_10032AED4(v9, _s11QueuedItemsV4ItemVMa);
  *(v16 + 4) = v17;
  v18 = "Did enqueue item #%llu. Was empty.";
  v19 = v15;
  v20 = v14;
  v21 = v16;
  v22 = 12;
LABEL_10:
  _os_log_impl(&_mh_execute_header, v20, v19, v18, v21, v22);

LABEL_14:

  v28 = *(v2 + 64);

  v28(v29);
}

uint64_t sub_100328E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005D8768 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4A74();
  sub_1001C203C(v6, qword_1005D9350);

  v7 = sub_1004A4A54();
  v8 = sub_1004A6004();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = *(a1 + 16);

    *(v9 + 12) = 2082;
    sub_100327208(a1);
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    v33 = v2;
    v11 = a2;
    sub_100031CDC();
    v12 = sub_1004A5614();
    v14 = v13;

    v15 = sub_10015BA6C(v12, v14, aBlock);
    a2 = v11;
    v3 = v33;

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Did complete %ld item(s) %{public}s, generation: %llu.", v9, 0x20u);
    sub_1000197E0(v10);
  }

  else
  {
  }

  swift_beginAccess();
  sub_100326128();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  swift_endAccess();

  v24 = sub_1004A4A54();
  v25 = sub_1004A6034();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = a2;
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    *(v27 + 4) = *(a1 + 16);

    *(v27 + 12) = 2048;
    *(v27 + 14) = v19;
    *(v27 + 22) = 1024;
    if (v21 == v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = 0;
    }

    *(v27 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Did complete %ld item(s), %ld item(s) (%{iec-bytes}d) remaining in queue.", v27, 0x1Cu);
    a2 = v26;
  }

  else
  {
  }

  v29 = *(v3 + 16);
  v30 = swift_allocObject();
  v30[2] = v17;
  v30[3] = v19;
  v30[4] = v21;
  v30[5] = v23;
  v30[6] = v3;
  v30[7] = a2;
  aBlock[4] = sub_10032AE5C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B41E0;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v29 performBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
}

void sub_1003291E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10032929C(a1, a6);
  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (qword_1005D8770 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 postNotificationName:qword_1005D9368 object:a5];
}

uint64_t sub_10032929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem(0);
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = _s11QueuedItemsV4ItemVMa(0);
  v13 = __chkstk_darwin(v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v11 + 20);
    v18 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v32 = *(v12 + 72);
    v33 = v17;
    v13.n128_u64[0] = 134217984;
    v29 = v13;
    v30 = v4;
    v31 = a2;
    do
    {
      sub_10032AE6C(v18, v15, _s11QueuedItemsV4ItemVMa);
      v19 = *&v15[v33];
      sub_10032AE6C(v15, v9, type metadata accessor for PendingItem);
      v20 = v19;
      sub_10032AED4(v15, _s11QueuedItemsV4ItemVMa);
      if (qword_1005D8768 != -1)
      {
        swift_once();
      }

      v21 = sub_1004A4A74();
      sub_1001C203C(v21, qword_1005D9350);
      v22 = [v20 managedObjectContext];
      if (v22)
      {

        sub_10032A0F0(&v9[*(v4 + 24)], a2);
      }

      else
      {
        sub_10032AE6C(v9, v6, type metadata accessor for PendingItem);
        v23 = sub_1004A4A54();
        v24 = sub_1004A6034();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = v29.n128_u32[0];
          v26 = *v6;
          sub_10032AED4(v6, type metadata accessor for PendingItem);
          *(v25 + 4) = v26;
          v4 = v30;
          _os_log_impl(&_mh_execute_header, v23, v24, "Managed object (message) was unregistered, probably deleted. Not marking as “indexing complete” for #%llu.", v25, 0xCu);
          a2 = v31;
        }

        else
        {
          sub_10032AED4(v6, type metadata accessor for PendingItem);
        }

        v20 = v23;
      }

      sub_10032AED4(v9, type metadata accessor for PendingItem);
      v18 += v32;
      --v16;
    }

    while (v16);
  }

  return sub_100309448();
}

uint64_t sub_10032960C(uint64_t a1, uint64_t (*a2)(id), void *a3)
{
  v59[1] = a3;
  v60 = a2;
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v59 - v8;
  __chkstk_darwin(v10);
  v61 = v59 - v11;
  v12 = *(a1 + 16);
  if (qword_1005D8760 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v73[2] = xmmword_1005D9218;
    v73[3] = *&qword_1005D9228;
    v73[4] = xmmword_1005D9238;
    v73[0] = xmmword_1005D91F8;
    v73[1] = *&qword_1005D9208;
    v13 = sub_1003521DC(v73);
    v72[2] = xmmword_1005D9218;
    v72[3] = *&qword_1005D9228;
    v72[4] = xmmword_1005D9238;
    v72[1] = *&qword_1005D9208;
    v72[0] = xmmword_1005D91F8;
    sub_100352454(v13 + 1, v72);
    v14 = [objc_opt_self() defaultCenter];
    v15 = sub_1004A5734();
    [v14 postNotificationName:v15 object:v12];

    v16 = sub_100307550();
    swift_beginAccess();
    v17 = *(v16 + 16);

    v67 = v4;
    v66 = v9;
    v59[0] = v12;
    if (!(v17 >> 62))
    {
      v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_4;
    }

    v9 = sub_1004A6A34();
    if (!v9)
    {
      break;
    }

LABEL_4:
    v18 = 0;
    v4 = 0x6761735561746164;
    v12 = (v17 & 0xC000000000000001);
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    v64 = (v5 + 16);
    v63 = (v5 + 8);
    p_attr = &stru_1005CAFF8.attr;
    v62 = v9;
    v69 = v17 & 0xC000000000000001;
    v68 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v21 = sub_1004A6794();
      }

      else
      {
        if (v18 >= *(v19 + 16))
        {
          goto LABEL_31;
        }

        v21 = *(v17 + 8 * v18 + 32);
      }

      v5 = v21;
      v22 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (([v21 p_attr[429]] & 1) != 0 || (v23 = objc_msgSend(v5, "managedObjectContext")) == 0)
      {

        goto LABEL_6;
      }

      v24 = sub_1004A5734();
      [v5 willAccessValueForKey:v24];

      v25 = [v5 primitiveAccount];
      if (!v25)
      {
        goto LABEL_18;
      }

      v26 = v25;
      v27 = sub_1004A5764();
      v29 = v28;

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {

LABEL_18:
        v29 = 0;
      }

      v31 = sub_1004A5734();
      [v5 didAccessValueForKey:v31];

      p_attr = (&stru_1005CAFF8 + 8);
      if (v29)
      {

        v32 = sub_1004A5734();
        [v5 willAccessValueForKey:v32];

        v33 = [v5 primitiveDataUsage];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1004A4414();
          v37 = v36;

          sub_100014CEC(v35, v37);
          v38 = v61;
          sub_1004A44D4();
          v39 = sub_100378058(v38, v35, v37);
          sub_100014D40(v35, v37);
        }

        else
        {
          v39 = sub_1003510AC(_swiftEmptyArrayStorage);
        }

        v40 = sub_1004A5734();
        [v5 didAccessValueForKey:v40];

        v71[0] = v39;
        v9 = v66;
        sub_1004A44D4();
        v41 = v65;
        v42 = v67;
        (*v64)(v65, v9, v67);
        sub_1004A4464();
        v44 = round(v43 / 21600.0);
        v45 = v4;
        v4 = *v63;
        v46 = v41;
        v12 = v63;
        (*v63)(v46, v42);
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v44 <= -9.22337204e18)
          {
            goto LABEL_32;
          }

          if (v44 >= 9.22337204e18)
          {
            goto LABEL_33;
          }

          sub_10037560C(v44, v71);
          v42 = v67;
          v9 = v66;
        }

        (v4)(v9, v42);
        v47 = v71[0];
        v48 = sub_1004A5734();
        [v5 willChangeValueForKey:v48];

        v50 = sub_100373DA8(v47, v49);
        v52 = v51;

        isa = sub_1004A4404().super.isa;
        sub_100014D40(v50, v52);
        [v5 setPrimitiveDataUsage:isa];

        v54 = sub_1004A5734();
        [v5 didChangeValueForKey:v54];

        v4 = v45;
        v9 = v62;
        v12 = v69;
        v19 = v68;
        p_attr = (&stru_1005CAFF8 + 8);
      }

      else
      {

        v12 = v69;
        v19 = v68;
      }

LABEL_6:
      ++v18;
      if (v22 == v9)
      {
        goto LABEL_36;
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
    swift_once();
  }

LABEL_36:

  v71[0] = 0;
  if ([v59[0] save:v71])
  {
    v55 = v71[0];
    return v60(v55);
  }

  else
  {
    v57 = v71[0];
    v58 = sub_1004A4274();

    swift_willThrow();
    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    sub_1004A6724(18);
    v74._object = 0x80000001004AF1E0;
    v74._countAndFlagsBits = 0xD000000000000010;
    sub_1004A5994(v74);
    v70 = v58;
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    sub_1004A6934();
    result = sub_1004A69A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_100329E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  sub_100329FF0(a2);
  v5 = *(a1 + 16);
  v8[0] = 0;
  if ([v5 save:v8])
  {
    return a3(v8[0]);
  }

  v7 = v8[0];
  sub_1004A4274();

  swift_willThrow();
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1004A6724(18);
  v9._object = 0x80000001004AF1E0;
  v9._countAndFlagsBits = 0xD000000000000010;
  sub_1004A5994(v9);
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  sub_1004A6934();
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

void sub_100329FF0(uint64_t a1)
{
  v2 = *(a1 + 16);

  for (i = 0; ; i = v6)
  {
    v4 = v2;
    if ((v2 - i) >= 0x3E8)
    {
      v4 = i + 1000;
      if (__OFADD__(i, 1000))
      {
        goto LABEL_20;
      }

      if (v4 < i)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    if (v2 < v4)
    {
      goto LABEL_16;
    }

    v5 = v4 - i;
    if (v4 == i)
    {
      break;
    }

    if (v4 - i < 0)
    {
      goto LABEL_17;
    }

    if (v2 - i < v5)
    {
      goto LABEL_21;
    }

    v6 = v4;
    if (__OFADD__(i, v5))
    {
      goto LABEL_18;
    }

    if (v2 < v4)
    {
      goto LABEL_19;
    }

    v7 = (2 * v4) | 1;
    swift_unknownObjectRetain();
    v8 = objc_autoreleasePoolPush();
    sub_10032AF3C(a1 + 32, i, v7);
    objc_autoreleasePoolPop(v8);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

void sub_10032A0F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v49[-v6];
  v8 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10032A78C(a1);
  sub_10032AE6C(a1, v10, type metadata accessor for PendingItem.Info);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v46 = sub_1004A5734();
      [v2 willChangeValueForKey:v46];

      v47 = [objc_allocWithZone(NSNumber) initWithLongLong:0];
      [v2 setPrimitiveIndexGeneration:v47];

      v48 = sub_1004A5734();
      [v2 didChangeValueForKey:v48];

      v29 = [v2 managedObjectContext];
      [v29 deleteObject:v2];
      goto LABEL_18;
    }

    v12 = *v10;
    v13 = v10[1];
    v14 = v10[2];
    v15 = v10[3];
    v16 = v10[4];
    v17 = v10[5];
    v18 = v10[6];
    v19 = v10[7];
    v20 = v10[8];
    v21 = sub_10033AF38();
    v23 = 256;
    if ((v13 & 1) == 0)
    {
      v23 = 0;
    }

    v24 = 0x10000;
    if ((v14 & 1) == 0)
    {
      v24 = 0;
    }

    v25 = 0x1000000;
    if ((v15 & 1) == 0)
    {
      v25 = 0;
    }

    v26 = &_mh_execute_header;
    if ((v16 & 1) == 0)
    {
      v26 = 0;
    }

    v27 = 0x10000000000;
    if ((v17 & 1) == 0)
    {
      v27 = 0;
    }

    if (static Flags.__derived_struct_equals(_:_:)(v21 & 0xFFFF010101010101, v22 & 1, v12 & 1 | (v18 << 48) | v23 | v24 | v25 | v26 | v27 | (v19 << 56), v20 & 1))
    {
      v28 = sub_1004A5734();
      [v2 willChangeValueForKey:v28];

      [v2 setPrimitiveAttributeChange:0];
      v29 = sub_1004A5734();
      [v2 didChangeValueForKey:v29];
LABEL_18:
    }
  }

  else
  {
    v30 = type metadata accessor for IndexableMessageInfo(0);
    (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
    v31 = sub_1004A5734();
    [v2 willChangeValueForKey:v31];

    sub_10033B644(v2, v7);
    v32 = sub_1004A5734();
    [v2 didChangeValueForKey:v32];

    sub_100025F40(v7, &qword_1005D6670, &qword_1004EBFB0);
    v33 = sub_1004A5734();
    [v2 willChangeValueForKey:v33];

    v34 = [objc_allocWithZone(NSNumber) initWithLongLong:a2];
    [v2 setPrimitiveIndexGeneration:v34];

    v35 = sub_1004A5734();
    [v2 didChangeValueForKey:v35];

    v36 = sub_1004A5734();
    [v2 willChangeValueForKey:v36];

    v37 = [objc_allocWithZone(NSNumber) initWithBool:0];
    [v2 setPrimitiveNeedToRedonate:v37];

    v38 = sub_1004A5734();
    [v2 didChangeValueForKey:v38];

    v39 = sub_1004A5734();
    [v2 willChangeValueForKey:v39];

    [v2 setPrimitiveAttributeChange:0];
    v40 = sub_1004A5734();
    [v2 didChangeValueForKey:v40];

    v41 = sub_10033AE54();
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);

      [v2 didChangeValueForKey:sub_1004A5734()];
      __break(1u);
    }

    else
    {
      v43 = sub_1004A5734();
      [v2 willChangeValueForKey:v43];

      v44 = [objc_allocWithZone(NSNumber) initWithInteger:v42 & ~(v42 >> 63)];
      [v2 setPrimitiveIndexCount:v44];

      v45 = sub_1004A5734();
      [v2 didChangeValueForKey:v45];

      sub_10032AED4(v10, type metadata accessor for PendingItem.Info);
    }
  }
}

void sub_10032A78C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004A44E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v33 - v10;
  v12 = [v1 mailbox];
  if (v12)
  {
    v14 = v12;
    v15 = sub_100340AF8(v13);
    v17 = v16;

    if (v17)
    {
      v18 = [v2 managedObjectContext];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1003070C0(v15, v17);

        __chkstk_darwin(v21);
        *(&v33 - 2) = a1;
        v34 = sub_10033A6CC();
        sub_1004A44D4();
        (*(v5 + 16))(v7, v11, v4);
        sub_1004A4464();
        v23 = round(v22 / 21600.0);
        v24 = *(v5 + 8);
        v24(v7, v4);
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v23 <= -9.22337204e18)
          {
            __break(1u);
          }

          else if (v23 < 9.22337204e18)
          {
            sub_100375338(v23, &v34, sub_10032AF34, (&v33 - 4));
            goto LABEL_8;
          }

          __break(1u);
          return;
        }

LABEL_8:
        v24(v11, v4);
        v25 = v34;
        v26 = sub_1004A5734();
        [v20 willChangeValueForKey:v26];

        v28 = sub_100373DA8(v25, v27);
        v30 = v29;

        isa = sub_1004A4404().super.isa;
        sub_100014D40(v28, v30);
        [v20 setPrimitiveDataUsage:isa];

        v32 = sub_1004A5734();
        [v20 didChangeValueForKey:v32];

        return;
      }
    }
  }
}

uint64_t sub_10032AAF0(void *a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032AE6C(a2, v7, type metadata accessor for PendingItem.Info);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v9 = a1[1];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (!v10)
      {
        a1[1] = v11;
        return result;
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    if (__OFADD__(*a1, 1))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    ++*a1;
    return sub_10032AED4(v7, type metadata accessor for PendingItem.Info);
  }

  return result;
}

NSString sub_10032ABEC()
{
  result = sub_1004A5734();
  qword_1005D9368 = result;
  return result;
}

void *sub_10032AC4C@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  v4 = v6;
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10032ACA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032AD14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032AD7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10032ADC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10032AE14()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10032AE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032AED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10032AF3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1004A44E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v74 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = &v71 - v11;
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_1004A5734();
  v14 = [v12 initWithEntityName:v13];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004CEAA0;
  v16 = a3 >> 1;
  v17 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = v15;
  v19 = _swiftEmptyArrayStorage;
  v77 = v7;
  if (!v17)
  {
    goto LABEL_11;
  }

  v80 = _swiftEmptyArrayStorage;
  sub_1004A6864();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v3 = v8;
  if (a2 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = a2;
  }

  v21 = v20 - a2;
  v8 = (a1 + 8 * a2);
  do
  {
    if (!v21)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v22 = *v8++;
    [objc_allocWithZone(NSNumber) initWithLongLong:v22];
    sub_1004A6814();
    sub_1004A68A4();
    sub_1004A68B4();
    sub_1004A6834();
    --v21;
    --v17;
  }

  while (v17);
  v19 = v80;
  v8 = v3;
LABEL_11:
  *(v18 + 56) = sub_10000C9C0(&qword_1005D9450, &qword_1004F66F8);
  *(v18 + 32) = v19;
  v23 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v25 = [objc_opt_self() predicateWithFormat:v23 argumentArray:isa];

  [v14 appendPredicate:v25];
  v80 = 0;
  v26 = [v14 execute:&v80];
  v27 = v80;
  if (!v26)
  {
    v70 = v80;
    sub_1004A4274();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v28 = v26;
  _s7MessageCMa();
  v3 = sub_1004A5C14();
  v29 = v27;

  v71 = v14;
  if (v3 >> 62)
  {
LABEL_39:
    v30 = sub_1004A6A34();
    if (!v30)
    {
      goto LABEL_40;
    }

LABEL_14:
    if (v30 >= 1)
    {
      v31 = 0;
      v79 = v3 & 0xC000000000000001;
      v72 = v3;
      v73 = (v8 + 2);
      p_attr = (&stru_1005CAFF8 + 8);
      v76 = (v8 + 1);
      while (1)
      {
        if (v79)
        {
          v41 = sub_1004A6794();
        }

        else
        {
          v41 = *(v3 + 8 * v31 + 32);
        }

        v42 = v41;
        v43 = sub_1004A5734();
        [v42 willChangeValueForKey:v43];

        v44 = [objc_allocWithZone(NSNumber) initWithBool:1];
        [v42 setPrimitiveNeedToRedonate:v44];

        v45 = sub_1004A5734();
        [v42 p_attr[425]];

        v46 = [v42 mailbox];
        if (!v46)
        {

          goto LABEL_17;
        }

        v47 = v46;
        v48 = sub_1004A5734();
        [v47 willAccessValueForKey:v48];

        v49 = [v47 primitiveAccount];
        if (!v49)
        {
          goto LABEL_27;
        }

        v50 = v49;
        v51 = sub_1004A5764();
        v53 = v52;

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (!v54)
        {
          break;
        }

LABEL_28:
        v55 = sub_1004A5734();
        [v47 didAccessValueForKey:v55];

        if (v53)
        {
          v56 = v30;
          v57 = sub_1003070C0(v51, v53);

          v80 = sub_10033A6CC();
          v58 = v78;
          sub_1004A44D4();
          v59 = v74;
          v8 = v77;
          (*v73)(v74, v58, v77);
          sub_1004A4464();
          v61 = round(v60 / 21600.0);
          v3 = *v76;
          (*v76)(v59, v8);
          if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v61 <= -9.22337204e18)
            {
              goto LABEL_36;
            }

            if (v61 >= 9.22337204e18)
            {
              goto LABEL_37;
            }

            sub_1003758D4(v61, &v80);
            v8 = v77;
            v58 = v78;
          }

          (v3)(v58, v8);
          v33 = v80;
          v34 = sub_1004A5734();
          [v57 willChangeValueForKey:v34];

          v36 = sub_100373DA8(v33, v35);
          v38 = v37;

          v39 = sub_1004A4404().super.isa;
          sub_100014D40(v36, v38);
          [v57 setPrimitiveDataUsage:v39];

          v40 = sub_1004A5734();
          p_attr = &stru_1005CAFF8.attr;
          [v57 didChangeValueForKey:v40];

          v30 = v56;
          v3 = v72;
        }

        else
        {

          p_attr = (&stru_1005CAFF8 + 8);
        }

LABEL_17:
        if (v30 == ++v31)
        {
          goto LABEL_40;
        }
      }

LABEL_27:
      v51 = 0;
      v53 = 0;
      goto LABEL_28;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v30)
  {
    goto LABEL_14;
  }

LABEL_40:

  v62 = *(v75 + 24);
  v63 = static MonotonicTime.now()();
  v64 = v62[2];
  if (![v64 hasChanges])
  {
    goto LABEL_47;
  }

  v65 = sub_100309840();
  v66 = v71;
  if (v65)
  {
    goto LABEL_50;
  }

  v67 = v62[6];
  v68 = v63 - v67;
  if (v63 >= v67)
  {
    if (!__OFSUB__(v63, v67))
    {
      goto LABEL_49;
    }

LABEL_56:
    __break(1u);
  }

  if (__OFSUB__(v67, v63))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v68 = v63 - v67;
  if (__OFSUB__(0, v67 - v63))
  {
    __break(1u);
LABEL_47:

    return;
  }

LABEL_49:
  if (v68 / 1000000000.0 > 4.0)
  {
LABEL_50:
    if ([v64 hasChanges])
    {

      sub_100309C70(v69, v62);

      v62[7] = 0;

      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_10032B7A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10032B7E4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_10032B874(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(a5, a4))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v5 = (((a3 - a2) & ~((a3 - a2) >> 63)) * 0x1C71C71C71C71C72uLL) >> 64;
  v6 = a3 / 3;
  if (a3 / 3 >= result)
  {
    v6 = result;
  }

  v7 = v5 >= v6;
  if (v5 < v6)
  {
    v6 = (((a3 - a2) & ~((a3 - a2) >> 63)) * 0x1C71C71C71C71C72uLL) >> 64;
  }

  v8 = v5 >= a3 / 12 || v7;
  if ((v8 & (a5 - a4 > 9000008)) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032B930(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v8 = sub_1004A4A74();
  v35 = *(v8 - 8);
  v9 = v35;
  v36 = v8;
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource) = 0;
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) = 0;
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_managedObjectContext) = a2;
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_indexQueue) = a3;
  sub_10032DA68(a1, v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration, type metadata accessor for IndexUpdater.Configuration);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[3];
  v31 = a1[2];
  v32 = v12;
  v15 = type metadata accessor for IndexUpdater.Configuration(0);
  v16 = *(v9 + 16);
  v17 = a1 + *(v15 + 20);
  v34 = v11;
  v16(v11, v17, v8);
  v18 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MessagesSource(0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = 0;
  *(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = 0;
  v20 = (v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  *v20 = 0;
  v20[1] = 0;
  *(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
  v19[2] = a2;
  v16(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger, v11, v36);
  v21 = v31;
  v19[3] = v32;
  v19[4] = v13;
  v19[5] = v21;
  v19[6] = v14;
  v22 = (v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
  *v22 = sub_10032DC34;
  v22[1] = v18;
  v23 = type metadata accessor for MessagesSource.Observer();
  v24 = objc_allocWithZone(v23);
  swift_weakInit();
  swift_weakAssign();
  v37.receiver = v24;
  v37.super_class = v23;
  v25 = a2;

  swift_retain_n();

  v26 = objc_msgSendSuper2(&v37, "init");
  v27 = *(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  *(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = v26;

  v28 = swift_allocObject();
  swift_weakInit();

  v29 = sub_100323BF4(sub_10032DC3C, v28);

  sub_10032DAD0(a1, type metadata accessor for IndexUpdater.Configuration);
  (*(v35 + 8))(v34, v36);

  *(v19 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = v29;

  swift_unknownObjectRelease();
  *(v4 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource) = v19;

  return v4;
}

uint64_t sub_10032BCE4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10032BD3C();
  }

  return result;
}

uint64_t sub_10032BD3C()
{
  v1 = type metadata accessor for PendingItem(0);
  __chkstk_darwin(v1 - 8);
  v56 = (&v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for EnqueueableItem(0);
  __chkstk_darwin(v3 - 8);
  v55 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v59 = &v51 - v6;
  v61 = sub_10000C9C0(&qword_1005D95E0, &qword_1004F6860);
  i = *(v61 - 8);
  __chkstk_darwin(v61);
  v51 = (&v51 - v7);
  v8 = sub_10000C9C0(&qword_1005D95E8, &qword_1004F6868);
  __chkstk_darwin(v8 - 8);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v51 - v11);
  v54 = _s11QueuedItemsV4ItemVMa(0);
  v13 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v58 = v0;
  v19 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_indexQueue);
  swift_beginAccess();
  v20 = v19[6];

  os_unfair_lock_lock((v20 + 48));
  v57 = v20;
  v21 = *(v20 + 16);
  v22 = v21[4];
  if (v21[2] >= v21[3] + v22)
  {
    v23 = v21[3] + v22;
  }

  else
  {
    v23 = v21[2];
  }

  v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v63 = *(v20 + 16);
  v64 = v22;
  v65 = v23;
  v66 = _swiftEmptySetSingleton;

  while (1)
  {
    if (v22 != v23)
    {
      goto LABEL_5;
    }

    if ((sub_100351DD0() & 1) == 0)
    {
      break;
    }

    v21 = v63;
    v22 = v64;
LABEL_5:
    v64 = v22 + 1;
    sub_10032DA68(v21 + v24 + *(v13 + 72) * v22, v18, _s11QueuedItemsV4ItemVMa);
    sub_10036210C(v62, *(v18 + 1));
    sub_10032DAD0(v18, _s11QueuedItemsV4ItemVMa);
    v23 = v65;
    ++v22;
  }

  v25 = v66;
  os_unfair_lock_unlock((v57 + 48));

  v26 = v58;
  sub_10032D494(v25, &v63);

  v28 = 0;
  v29 = v63;
  v53 = v26 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration;
  v57 = i + 56;
  v58 = v63;
  v30 = (i + 48);
  v31 = v63[2];
  for (i = v31; ; v31 = i)
  {
    v33 = v60;
    v32 = v61;
    if (v28 == v31)
    {
      v34 = 1;
      v28 = v31;
      v35 = v59;
      goto LABEL_15;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    v35 = v59;
    if (v28 >= v29[2])
    {
      goto LABEL_22;
    }

    v36 = *(type metadata accessor for IndexUpdater.Element(0) - 8);
    v37 = v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28;
    v38 = *(v32 + 48);
    v39 = v51;
    *v51 = v28;
    sub_10032DA68(v37, v39 + v38, type metadata accessor for IndexUpdater.Element);
    sub_100025FDC(v39, v33, &qword_1005D95E0, &qword_1004F6860);
    v34 = 0;
    ++v28;
LABEL_15:
    (*v57)(v33, v34, 1, v32);
    sub_100025FDC(v33, v12, &qword_1005D95E8, &qword_1004F6868);
    if ((*v30)(v12, 1, v32) == 1)
    {
    }

    v40 = *v12;
    v41 = v12 + *(v32 + 48);
    sub_10032DA68(v41, v35, type metadata accessor for EnqueueableItem);
    v42 = v35;
    v43 = *(v41 + *(type metadata accessor for IndexUpdater.Element(0) + 20));
    sub_10032DAD0(v41, type metadata accessor for IndexUpdater.Element);
    v44 = v19[5];
    os_unfair_lock_lock((v44 + 20));
    LOBYTE(v41) = *(v44 + 16);
    os_unfair_lock_unlock((v44 + 20));
    if (v41)
    {

      return sub_10032DAD0(v42, type metadata accessor for EnqueueableItem);
    }

    v45 = v55;
    sub_10032DA68(v42, v55, type metadata accessor for EnqueueableItem);
    v46 = v19[7];
    v19[7] = v46 + 1;
    v47 = v56;
    sub_100341B64(v45, v46, v56);
    sub_10032DA68(v47, v15, type metadata accessor for PendingItem);
    *&v15[*(v54 + 20)] = v43;
    v48 = v43;
    sub_100328AA0(v15);

    sub_10032DAD0(v15, _s11QueuedItemsV4ItemVMa);
    sub_10032DAD0(v42, type metadata accessor for EnqueueableItem);
    v49 = *v47;
    sub_10032DAD0(v47, type metadata accessor for PendingItem);
    v50 = type metadata accessor for IndexUpdater.Configuration(0);
    result = (*(v53 + *(v50 + 24)))(v40, v49);
    v29 = v58;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10032C42C()
{
  sub_10032DAD0(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration, type metadata accessor for IndexUpdater.Configuration);

  return swift_deallocClassInstance();
}

uint64_t sub_10032C4FC(uint64_t a1)
{
  result = type metadata accessor for IndexUpdater.Configuration(319);
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

uint64_t sub_10032C600(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004A4A74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10032C6C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004A4A74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10032C764(uint64_t a1)
{
  result = sub_1004A4A74();
  if (v2 <= 0x3F)
  {
    result = sub_100116C9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10032C804()
{
  result = qword_1005D95D8;
  if (!qword_1005D95D8)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for IndexUpdater.State, v0, v1);
    atomic_store(result, &qword_1005D95D8);
  }

  return result;
}

id sub_10032C858@<X0>(void *a1@<X0>, id (**a2)()@<X8>)
{
  v35 = a1;
  v32 = a2;
  v3 = sub_1004A4A74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  sub_1004A4A64();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004D3930;
  v13 = v12;
  v33 = v12;
  v14 = objc_allocWithZone(NSSortDescriptor);
  v15 = sub_1004A5734();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  v17 = type metadata accessor for IndexUpdater.Configuration(0);
  v18 = *(v4 + 16);
  v18(a2 + v17[5], v11, v3);
  v18(v8, v11, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v31 = swift_allocObject();
  v20 = *(v4 + 32);
  v20(v31 + v19, v8, v3);
  v21 = v34;
  v20(v34, v11, v3);
  v22 = swift_allocObject();
  v20(v22 + v19, v21, v3);
  v23 = v35;
  *(v22 + ((v19 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v25 = v31;
  v24 = v32;
  *v32 = sub_10032D044;
  v24[1] = 0;
  v24[2] = 971;
  v24[3] = v33;
  v26 = (v24 + v17[6]);
  *v26 = sub_10032DC48;
  v26[1] = v25;
  v27 = (v24 + v17[7]);
  *v27 = sub_10032D1B8;
  v27[1] = 0;
  v28 = (v24 + v17[8]);
  *v28 = sub_10032DCF0;
  v28[1] = v22;

  return v23;
}

id sub_10032CBA8(uint64_t a1)
{
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004CEAA0;
  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  *(v2 + 56) = sub_10032E2E8();
  *(v2 + 32) = v3;
  v4 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:isa];

  return v6;
}

id sub_10032CCA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10033A4C8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    v6 = sub_1004A5734();
    [a1 willAccessValueForKey:v6];

    v7 = [a1 primitiveAttributeChange];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 longLongValue];

      v10 = sub_1004A5734();
      [a1 didAccessValueForKey:v10];

      if ((v9 & 0xFFFFFFFFFFFFFF01) == 1)
      {
        v11 = a2 + *(type metadata accessor for EnqueueableItem(0) + 20);
        *v11 = sub_10033AF38();
        v11[8] = v12 & 1;
        type metadata accessor for PendingItem.Info(0);
        swift_storeEnumTagMultiPayload();
        *a2 = v5;
        v13 = type metadata accessor for IndexUpdater.Element(0);
        *(a2 + *(v13 + 20)) = a1;
        (*(*(v13 - 8) + 56))(a2, 0, 1);

        return a1;
      }
    }

    else
    {
      v15 = sub_1004A5734();
      [a1 didAccessValueForKey:v15];
    }
  }

  v16 = type metadata accessor for IndexUpdater.Element(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, 1, 1, v16);
}

uint64_t sub_10032CED0(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10033A4C8();
  v9 = v8;
  v10 = sub_1004A4A54();
  v11 = sub_1004A6014();
  if (os_log_type_enabled(v10, v11))
  {
    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "Message %llu needs updating, but doesn’t have any update.", v13, 0xCu);
  }

  *v6 = sub_10033AF38();
  v6[8] = v14 & 1;
  swift_storeEnumTagMultiPayload();
  sub_10032A0F0(v6, a3);
  return sub_10032DAD0(v6, type metadata accessor for PendingItem.Info);
}

id sub_10032D044()
{
  v0 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;
  v2 = [objc_opt_self() predicateWithFormat:v0 argumentArray:isa];

  return v2;
}

void sub_10032D0DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  oslog = sub_1004A4A54();
  v7 = sub_1004A6034();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      return;
    }

    *(v8 + 4) = a1 + 1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, oslog, v7, a4, v8, 0x16u);
  }
}

id sub_10032D1B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10033A4C8();
  if (v4)
  {
    v5 = type metadata accessor for IndexUpdater.Element(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }

  else
  {
    v8 = v3;
    type metadata accessor for EnqueueableItem(0);
    type metadata accessor for PendingItem.Info(0);
    swift_storeEnumTagMultiPayload();
    *a2 = v8;
    v9 = type metadata accessor for IndexUpdater.Element(0);
    *(a2 + *(v9 + 20)) = a1;
    (*(*(v9 - 8) + 56))(a2, 0, 1);

    return a1;
  }
}

id sub_10032D2E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1004A4A54();
  v7 = sub_1004A6014();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Message tombstone has no Spotlight ID.", v8, 2u);
  }

  return [a4 deleteObject:a1];
}

uint64_t sub_10032D3A8(uint64_t result)
{
  if ((*(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) = 1;
    v1 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
    if (v1)
    {
      if ((*(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 1;
        v2 = *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);

        v2(v3);
      }

      return sub_10032BD3C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10032D44C(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) == 1)
  {
    *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_state) = 0;
    v1 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
    if (v1)
    {
      if (*(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) == 1)
      {
        *(v1 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10032D494(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000C9C0(&qword_1005D95F0, &qword_1004F6870);
  __chkstk_darwin(v6 - 8);
  v53 = &v45 - v7;
  v52 = type metadata accessor for IndexUpdater.Element(0);
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v45 - v10;
  __chkstk_darwin(v11);
  v51 = &v45 - v12;
  v13 = *(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_messagesSource);
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = sub_1003344C4();
  v46 = v15;
  v16 = *(v13 + 40);

  if (v16 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v45 = a2;
  v17 = v14;

  v54 = v17;
  v57 = [v17 count];
  if (!v16)
  {
    v55 = _swiftEmptyArrayStorage;
LABEL_27:
    v44 = v54;

    *v45 = v55;
    return;
  }

  v18 = 0;
  v19 = v3 + OBJC_IVAR____TtC17IMAPSearchIndexer12IndexUpdater_configuration;
  v20 = 0xEB00000000444974;
  v21 = a1 + 56;
  v50 = (v49 + 48);
  v55 = _swiftEmptyArrayStorage;
LABEL_6:
  v56 = v16;
  v22 = v54;
  if (v18 >= v57)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v23 = [v22 objectAtIndexedSubscript:v18];
    sub_1004A64E4();
    swift_unknownObjectRelease();
    _s7MessageCMa();
    if (!swift_dynamicCast())
    {
      break;
    }

    v24 = v58;
    v25 = sub_1004A5734();
    [v24 willAccessValueForKey:v25];

    v26 = [v24 primitiveSpotlightID];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 longLongValue];
    }

    else
    {
      v28 = 0;
    }

    ++v18;
    v29 = v20;
    v30 = sub_1004A5734();
    [v24 didAccessValueForKey:v30];

    if (v27)
    {
      if (!*(a1 + 16) || (sub_1004A6E94(), sub_1004A6EF4(v28), v31 = sub_1004A6F14(), v32 = -1 << *(a1 + 32), v33 = v31 & ~v32, ((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0))
      {
LABEL_19:
        v35 = type metadata accessor for IndexUpdater.Configuration(0);
        v36 = v53;
        (*(v19 + *(v35 + 28)))(v24);
        if ((*v50)(v36, 1, v52) == 1)
        {
          sub_10032DB30(v36);
          (*(v19 + *(v35 + 32)))(v24, v46);

          v20 = v29;
          v16 = v56 - 1;
          if (v56 == 1)
          {
            goto LABEL_27;
          }

          goto LABEL_6;
        }

        v37 = v48;
        sub_10032DB98(v36, v48);
        v38 = v37;
        v39 = v47;
        sub_10032DB98(v38, v47);
        sub_10032DB98(v39, v51);
        v20 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_10035D8A4(0, v55[2] + 1, 1, v55);
        }

        v40 = v56;
        v42 = v55[2];
        v41 = v55[3];
        if (v42 >= v41 >> 1)
        {
          v55 = sub_10035D8A4((v41 > 1), v42 + 1, 1, v55);
        }

        v43 = v55;
        v55[2] = v42 + 1;
        sub_10032DB98(v51, v43 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42);
        v16 = v40 - 1;
        if (v16)
        {
          goto LABEL_6;
        }

        goto LABEL_27;
      }

      v34 = ~v32;
      while (*(*(a1 + 48) + 8 * v33) != v28)
      {
        v33 = (v33 + 1) & v34;
        if (((*(v21 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    v20 = v29;
    if (v18 >= v57)
    {
      goto LABEL_27;
    }
  }

LABEL_30:

  sub_1004A69A4();
  __break(1u);
}

uint64_t sub_10032DA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10032DAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032DB30(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D95F0, &qword_1004F6870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032DB98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexUpdater.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032DBFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032DC54()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

id sub_10032DCF0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1004A4A74() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10032D2E4(a1, a2, v2 + v6, v7);
}

uint64_t sub_10032DD9C(void *a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_1004A4A74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for IndexUpdater.Configuration(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004A4A64();
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004D3930;
  v16 = v15;
  v41 = v15;
  v17 = objc_allocWithZone(NSSortDescriptor);
  v18 = sub_1004A5734();
  v19 = [v17 initWithKey:v18 ascending:1];

  *(v16 + 32) = v19;
  v20 = *(v3 + 16);
  v21 = v14 + v12[7];
  v22 = v10;
  v40 = v10;
  v20(v21, v10, v2);
  v23 = v7;
  v24 = v7;
  v25 = v2;
  v20(v23, v22, v2);
  v26 = v3;
  v27 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v28 = swift_allocObject();
  v29 = *(v26 + 32);
  v29(v28 + v27, v24, v25);
  v30 = v42;
  v29(v42, v40, v25);
  v31 = swift_allocObject();
  v29(v31 + v27, v30, v25);
  *v14 = sub_10032CBA8;
  v14[1] = 0;
  v14[2] = 353;
  v14[3] = v41;
  v32 = (v14 + v12[8]);
  *v32 = sub_10032E158;
  v32[1] = v28;
  v33 = (v14 + v12[9]);
  *v33 = sub_10032CCA8;
  v33[1] = 0;
  v34 = (v14 + v12[10]);
  *v34 = sub_10032E268;
  v34[1] = v31;
  type metadata accessor for IndexUpdater(0);
  v35 = swift_allocObject();
  v36 = v43;
  v37 = v44;

  sub_10032B930(v14, v36, v37);
  return v35;
}

uint64_t sub_10032E1E0()
{
  v1 = sub_1004A4A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10032E268(uint64_t a1, uint64_t a2)
{
  sub_1004A4A74();

  return sub_10032CED0(v4, a1, a2);
}

unint64_t sub_10032E2E8()
{
  result = qword_1005D51B0;
  if (!qword_1005D51B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D51B0);
  }

  return result;
}

uint64_t sub_10032E348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnqueueableItem(0);
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

uint64_t sub_10032E418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EnqueueableItem(0);
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

uint64_t sub_10032E4D0(uint64_t a1)
{
  result = type metadata accessor for EnqueueableItem(319);
  if (v2 <= 0x3F)
  {
    result = _s7MessageCMa();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10032E574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10032E5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A4A74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10032E690()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DE2D0);
  sub_1001C203C(v0, qword_1005DE2D0);
  return sub_1004A4A64();
}

uint64_t sub_10032E724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A4A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10032E7F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A4A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10032E8E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100091A08(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1004A6554();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_100091A08((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v22;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_100020944(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_100020944(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
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

id sub_10032EB08(uint64_t a1, _BYTE *a2, char *a3, unsigned int a4)
{
  v8 = [v4 registeredObjects];
  sub_1003306DC();
  sub_100309DBC();
  v9 = sub_1004A5D44();

  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_1004A5DB4();
    v9 = v85;
    v10 = v86;
    v11 = v87;
    v12 = v88;
    v13 = v89;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(v9 + 56));
  }

  v17 = (v11 + 64) >> 6;
  v78 = a3 + 32;
  v79 = a4 | (a4 << 32);
  v82 = v9;
  while (1)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      v18 = v12;
      v19 = v13;
      if (!v13)
      {
        while (1)
        {
          v12 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v12 >= v17)
          {
            goto LABEL_60;
          }

          v19 = *(v10 + 8 * v12);
          ++v18;
          if (v19)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:

        v59 = v80;
LABEL_71:
        sub_100020D08(v82);
        return v59;
      }

LABEL_15:
      v20 = (v19 - 1) & v19;
      v21 = *(*(v9 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v21)
      {
        break;
      }

      goto LABEL_19;
    }

    if (!sub_1004A6604())
    {
      goto LABEL_60;
    }

    swift_dynamicCast();
    v21 = v84;
    v20 = v13;
    if (!v84)
    {
      break;
    }

LABEL_19:
    v83 = v20;
    if (([v21 isFault] & 1) == 0 && (objc_msgSend(v21, "isDeleted") & 1) == 0)
    {
      _s7MailboxCMa();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = sub_1004A5734();
        [v23 willAccessValueForKey:v24];

        v80 = v23;
        v25 = [v23 primitiveName];
        if (v25)
        {
          v76 = a4;
          v77 = a3;
          v26 = v25;
          v27 = sub_1004A6294();
          v28 = sub_1004A62A4();
          v29 = sub_1004A6294();
          v30 = sub_1004A62A4();
          if (v27 < v29 || v30 < v27)
          {
            goto LABEL_77;
          }

          v31 = sub_1004A6294();
          v32 = sub_1004A62A4();
          if (v28 < v31 || v32 < v28)
          {
            goto LABEL_78;
          }

          v33 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            goto LABEL_79;
          }

          if (v33)
          {
            v74 = a2;
            if (v33 < 1)
            {
              sub_1004A6294();
              __break(1u);
              goto LABEL_82;
            }

            sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
            v34 = swift_allocObject();
            v35 = j__malloc_size(v34);
            v34[2] = v33;
            v34[3] = 2 * v35 - 64;
            v75 = v34;
            v36 = sub_1004A6294();
            if (v36 == sub_1004A62A4())
            {
              goto LABEL_80;
            }

            v37 = v75 + 4;
            v38 = ~v27 + v28;
            while (1)
            {
              v39 = sub_1004A62B4();
              v40 = sub_1004A6294();
              v41 = sub_1004A62A4();
              if (v36 < v40 || v36 >= v41)
              {
                goto LABEL_69;
              }

              *v37 = v39;
              if (!v38)
              {
                break;
              }

              ++v37;
              ++v36;
              --v38;
              if (v36 == sub_1004A62A4())
              {
                goto LABEL_80;
              }
            }

            a3 = v77;
            a2 = v74;
            v42 = v75;
          }

          else
          {
            v42 = _swiftEmptyArrayStorage;
            a3 = v77;
          }

          a4 = v76;

          v45 = MailboxName.init(_:)(v42);
          rawValue = v45.bytes._rawValue;

          v44 = v45._hashValue._value | (v45._hashValue._value << 32);
        }

        else
        {
          rawValue = 0;
          v44 = 0;
        }

        v46 = sub_1004A5734();
        [v80 didAccessValueForKey:v46];

        if (rawValue)
        {
          if (v44 != v79)
          {
            goto LABEL_8;
          }

          v47 = *(rawValue + 2);
          if (v47 != *(a3 + 2))
          {
            goto LABEL_8;
          }

          if (v47 && rawValue != a3)
          {
            v48 = (rawValue + 32);
            v49 = v78;
            while (*v48 == *v49)
            {
              ++v48;
              ++v49;
              if (!--v47)
              {
                goto LABEL_49;
              }
            }

LABEL_8:

            goto LABEL_9;
          }

LABEL_49:

          v50 = sub_1004A5734();
          [v80 willAccessValueForKey:v50];

          v51 = [v80 primitiveAccount];
          if (v51)
          {
            v52 = v51;
            v53 = sub_1004A5764();
            v55 = v54;

            v56 = HIBYTE(v55) & 0xF;
            if ((v55 & 0x2000000000000000) == 0)
            {
              v56 = v53 & 0xFFFFFFFFFFFFLL;
            }

            if (!v56)
            {

              goto LABEL_54;
            }
          }

          else
          {
LABEL_54:
            v53 = 0;
            v55 = 0;
          }

          v57 = sub_1004A5734();
          [v80 didAccessValueForKey:v57];

          if (v55)
          {
            if (v53 == a1 && v55 == a2)
            {
              goto LABEL_70;
            }

            v58 = sub_1004A6D34();

            v59 = v80;
            if (v58)
            {
              goto LABEL_71;
            }
          }
        }
      }
    }

LABEL_9:

    v9 = v82;
    v13 = v83;
  }

  v9 = v82;
LABEL_60:
  sub_100020D08(v9);
  v60 = objc_allocWithZone(NSFetchRequest);
  v61 = sub_1004A5734();
  v26 = [v60 initWithEntityName:v61];

  [v26 setReturnsObjectsAsFaults:0];
  sub_10000C9C0(&qword_1005D97B0, &unk_1004F6888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_10000C9C0(&qword_1005D14A8, &unk_1004E2AB0);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1004CEAA0;
  *(v63 + 32) = a3;
  v64 = v63 + 32;
  *(v63 + 40) = a4;
  v65 = sub_100092FD4(v63);
  swift_setDeallocating();

  sub_10009DA94(v64);
  *(inited + 48) = v65;
  v66 = sub_100350FA8(inited);
  swift_setDeallocating();
  sub_100025F40(inited + 32, &qword_1005D97B8, &qword_1004F6898);
  sub_10031E5F0(v66);

  v84 = 0;
  v67 = [v26 execute:&v84];
  v13 = v84;
  if (v67)
  {
    v68 = v67;
    _s7MailboxCMa();
    v69 = sub_1004A5C14();
    v70 = v13;

    if (v69 >> 62)
    {
      if (!sub_1004A6A34())
      {
        goto LABEL_73;
      }

LABEL_63:
      if ((v69 & 0xC000000000000001) != 0)
      {
        v71 = sub_1004A6794();
      }

      else
      {
        if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:

          __break(1u);
        }

        v71 = *(v69 + 32);
      }

      v59 = v71;
    }

    else
    {
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

LABEL_73:

      return 0;
    }

    return v59;
  }

LABEL_82:
  v73 = v13;
  sub_1004A4274();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double sub_10032F358(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_10000C9C0(&qword_1005D5FC8, &unk_1004E9940);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_1004A4374();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = sub_1001E194C(v13);
  v16 = v15;

  (*(v10 + 56))(v5, 1, 1, v9);
  sub_1004A42D4();
  sub_100014D40(v14, v16);
  sub_100025F40(v5, &qword_1005D5FC8, &unk_1004E9940);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100025F40(v8, &qword_1005D5FC8, &unk_1004E9940);
    goto LABEL_13;
  }

  (*(v10 + 32))(v12, v8, v9);
  v17 = v34;
  v18 = [v34 persistentStoreCoordinator];
  if (!v18)
  {
    goto LABEL_12;
  }

  v20 = v18;
  sub_1004A42F4(v19);
  v22 = v21;
  v23 = [v20 managedObjectIDForURIRepresentation:v21];

  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = [v17 objectRegisteredForID:v23];
  if (!v24)
  {
    v36 = 0;
    v26 = [v17 existingObjectWithID:v23 error:&v36];
    if (v26)
    {
      v25 = v26;
      v27 = *(v10 + 8);
      v28 = v36;
      v27(v12, v9);

      goto LABEL_9;
    }

    v30 = v36;
    sub_1004A4274();

    swift_willThrow();

LABEL_12:
    (*(v10 + 8))(v12, v9);
    goto LABEL_13;
  }

  v25 = v24;

  (*(v10 + 8))(v12, v9);
LABEL_9:
  _s7MailboxCMa();
  if (swift_dynamicCastClass())
  {
    return result;
  }

LABEL_13:
  sub_100330688();
  swift_allocError();
  v31 = v35;
  *v32 = a1;
  v32[1] = v31;
  swift_willThrow();

  return result;
}

void *sub_10032F72C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, IMAP2Persistence::OpaqueMailboxID *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_7:
    v10 = OpaqueMailboxID.init(rawValue:)(v6);
    result = v10.rawValue._rawValue;
    *a3 = v10;
    return result;
  }

  result = sub_10015BEAC(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = result;
      memmove(result + 4, a1, v5);
      v6 = v9;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10032F7C4(int64_t a1)
{
  v1 = a1;
  v2 = sub_10032FC58(a1);
  v3 = v2;
  v46 = _swiftEmptySetSingleton;
  if (v2 >> 62)
  {
LABEL_48:
    v4 = sub_1004A6A34();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_49:
    v34 = _swiftEmptySetSingleton;
LABEL_50:
    if (v34[2] <= *(v1 + 16) >> 3)
    {
      v45 = v1;

      sub_10031783C(v34);

      v35 = v45;
      if (v45[2])
      {
        goto LABEL_52;
      }
    }

    else
    {

      v35 = sub_100317EFC(v34, v1);

      if (v35[2])
      {
LABEL_52:
        v36 = sub_10033087C(v35);

        v45 = v3;
        sub_1003327AC(v36);
        return v45;
      }
    }

    return v3;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_49;
  }

LABEL_3:
  v38 = v1;
  v39 = v3;
  v5 = 0;
  v1 = v3 & 0xC000000000000001;
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  v44 = v3 + 32;
  p_attr = &stru_1005CAFF8.attr;
  v40 = v4;
  v41 = v3 & 0xFFFFFFFFFFFFFF8;
  v42 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v1)
    {
      v8 = sub_1004A6794();
    }

    else
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_44;
      }

      v8 = *(v44 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_43;
    }

    v11 = sub_1004A5734();
    [v9 p_attr[434]];

    v12 = [v9 primitiveAccount];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v3 = sub_1004A5764();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {

LABEL_15:
      v3 = 0;
      v15 = 0;
    }

    v17 = sub_1004A5734();
    [v9 didAccessValueForKey:v17];

    if (v15)
    {
      break;
    }

LABEL_5:
    if (v5 == v4)
    {
      v34 = v46;
      v1 = v38;
      v3 = v39;
      goto LABEL_50;
    }
  }

  v43 = v3;
  v18 = sub_1004A5734();
  [v9 p_attr[434]];

  v19 = [v9 primitiveName];
  if (!v19)
  {
    rawValue = 0;
    v3 = 0;
LABEL_36:
    v33 = sub_1004A5734();
    [v9 didAccessValueForKey:v33];

    if (rawValue)
    {
      sub_100362130(&v45, v43, v15, rawValue, v3);
    }

    else
    {
    }

    p_attr = (&stru_1005CAFF8 + 8);
    goto LABEL_5;
  }

  v20 = v19;
  v21 = sub_1004A6294();
  v22 = sub_1004A62A4();
  v3 = sub_1004A6294();
  v23 = sub_1004A62A4();
  if (v21 < v3 || v23 < v21)
  {
    goto LABEL_45;
  }

  v3 = sub_1004A6294();
  v24 = sub_1004A62A4();
  if (v22 < v3 || v24 < v22)
  {
    goto LABEL_46;
  }

  v1 = v22 - v21;
  if (__OFSUB__(v22, v21))
  {
    goto LABEL_47;
  }

  if (!v1)
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_35:
    v6 = v41;

    v32 = MailboxName.init(_:)(v3);
    rawValue = v32.bytes._rawValue;
    v3 = *&v32._hashValue._value;

    v1 = v42;
    goto LABEL_36;
  }

  if (v1 >= 1)
  {
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v3 = swift_allocObject();
    v25 = j__malloc_size(v3);
    *(v3 + 16) = v1;
    *(v3 + 24) = 2 * v25 - 64;
    v26 = sub_1004A6294();
    if (v26 != sub_1004A62A4())
    {
      v1 = v3 + 32;
      v27 = ~v21 + v22;
      while (1)
      {
        v28 = sub_1004A62B4();
        v29 = sub_1004A6294();
        v30 = sub_1004A62A4();
        if (v26 < v29 || v26 >= v30)
        {
          break;
        }

        *v1 = v28;
        if (!v27)
        {
          v4 = v40;
          goto LABEL_35;
        }

        ++v1;
        ++v26;
        --v27;
        if (v26 == sub_1004A62A4())
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_56:

    __break(1u);
  }

  result = sub_1004A6294();
  __break(1u);
  return result;
}

void *sub_10032FC58(uint64_t a1)
{
  v2 = [v1 registeredObjects];
  v3 = sub_1003306DC();
  sub_100309DBC();
  v4 = sub_1004A5D44();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1004A6594();
    sub_1004A5DB4();
    v4 = v61;
    v5 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  p_attr = &stru_1005CAFF8.attr;
LABEL_8:
  v14 = v7;
  while (1)
  {
    while (1)
    {
      if (v4 < 0)
      {
        if (!sub_1004A6604() || (swift_dynamicCast(), v18 = v60, v7 = v14, v17 = v8, !v60))
        {
LABEL_56:
          sub_100020D08(v4);

          return _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v15 = v14;
        v16 = v8;
        v7 = v14;
        if (!v8)
        {
          while (1)
          {
            v7 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_56;
            }

            v16 = *(v5 + 8 * v7);
            ++v15;
            if (v16)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_58;
        }

LABEL_15:
        v17 = (v16 - 1) & v16;
        v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v18)
        {
          goto LABEL_56;
        }
      }

      if (![v18 p_attr[499]] && !objc_msgSend(v18, "isDeleted"))
      {
        _s7MailboxCMa();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          break;
        }
      }

      v14 = v7;
      v8 = v17;
    }

    v20 = v19;
    v21 = sub_1004A5734();
    [v20 willAccessValueForKey:v21];

    v22 = [v20 primitiveName];
    v58 = v4;
    v59 = v3;
    v57 = v17;
    if (v22)
    {
      break;
    }

    rawValue = 0;
    value = 0;
LABEL_41:
    v42 = sub_1004A5734();
    [v20 didAccessValueForKey:v42];

    if (rawValue)
    {
      v43 = sub_1004A5734();
      [v20 willAccessValueForKey:v43];

      v44 = [v20 primitiveAccount];
      if (v44)
      {
        v45 = v44;
        v46 = sub_1004A5764();
        v48 = v47;

        v49 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v49 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          goto LABEL_48;
        }
      }

      v46 = 0;
      v48 = 0;
LABEL_48:
      v50 = sub_1004A5734();
      [v20 didAccessValueForKey:v50];

      if (v48)
      {
        v51 = sub_10030E12C(v46, v48, rawValue, value, a1);

        v4 = v58;
        if (v51)
        {
          v52 = v18;
          sub_1004A5BF4();
          v8 = v57;
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004A5C44();
          }

          sub_1004A5C84();

          v3 = v59;
          p_attr = (&stru_1005CAFF8 + 8);
          goto LABEL_8;
        }

        v14 = v7;
        v8 = v57;
        v3 = v59;
        p_attr = (&stru_1005CAFF8 + 8);
      }

      else
      {

        v14 = v7;
        v8 = v57;
        v4 = v58;
        v3 = v59;
        p_attr = (&stru_1005CAFF8 + 8);
      }
    }

    else
    {

      v14 = v7;
      v8 = v57;
      p_attr = (&stru_1005CAFF8 + 8);
    }
  }

  p_attr = v22;
  v23 = sub_1004A6294();
  v24 = sub_1004A62A4();
  v25 = sub_1004A6294();
  v26 = sub_1004A62A4();
  if (v23 < v25 || v26 < v23)
  {
    goto LABEL_59;
  }

  v27 = sub_1004A6294();
  v28 = sub_1004A62A4();
  if (v24 < v27 || v28 < v24)
  {
    goto LABEL_60;
  }

  v29 = v24 - v23;
  if (__OFSUB__(v24, v23))
  {
    goto LABEL_61;
  }

  if (!v29)
  {
    v38 = _swiftEmptyArrayStorage;
    v4 = v58;
LABEL_40:

    v41 = MailboxName.init(_:)(v38);
    rawValue = v41.bytes._rawValue;
    value = v41._hashValue._value;

    v3 = v59;
    goto LABEL_41;
  }

  v54 = v20;
  if (v29 < 1)
  {
    goto LABEL_63;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v30 = swift_allocObject();
  v31 = j__malloc_size(v30);
  v30[2] = v29;
  v30[3] = 2 * v31 - 64;
  v55 = v30;
  v32 = sub_1004A6294();
  if (v32 != sub_1004A62A4())
  {
    v33 = v30 + 4;
    v34 = ~v23 + v24;
    while (1)
    {
      v35 = sub_1004A62B4();
      v36 = sub_1004A6294();
      v37 = sub_1004A62A4();
      if (v32 < v36 || v32 >= v37)
      {
        break;
      }

      *v33 = v35;
      if (!v34)
      {
        v4 = v58;
        v20 = v54;
        v38 = v55;
        goto LABEL_40;
      }

      ++v33;
      ++v32;
      --v34;
      if (v32 == sub_1004A62A4())
      {
        goto LABEL_62;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

LABEL_62:

  __break(1u);
LABEL_63:
  result = sub_1004A6294();
  __break(1u);
  return result;
}

uint64_t sub_100330258(uint64_t a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v4 = [v2 initWithEntityName:v3];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004CEAA0;
  sub_10032E8E0(a1);
  v7 = v6;
  *(v5 + 56) = sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  *(v5 + 32) = v7;
  v8 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

  [v4 setPredicate:v10];
  [v4 setReturnsObjectsAsFaults:0];
  v18[0] = 0;
  v11 = [v4 execute:v18];
  v12 = v18[0];
  if (v11)
  {
    v13 = v11;
    _s7MailboxCMa();
    v14 = sub_1004A5C14();
    v15 = v12;

    return v14;
  }

  else
  {
    v17 = v18[0];
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void *sub_100330494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005D97C0, &qword_1004F68A0);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1004A5764();
      sub_1004A6E94();
      v27 = v7;
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      v8 = sub_1004A6F14();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1004A5764();
        v18 = v17;
        if (v16 == sub_1004A5764() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1004A6D34();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_100330688()
{
  result = qword_1005D97A8;
  if (!qword_1005D97A8)
  {
    result = swift_getWitnessTable(aM_4, &_s22UnknownOpaqueMailboxIDVN, v0, v1);
    atomic_store(result, &qword_1005D97A8);
  }

  return result;
}

unint64_t sub_1003306DC()
{
  result = qword_1005D8A10;
  if (!qword_1005D8A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D8A10);
  }

  return result;
}

uint64_t sub_100330728(uint64_t a1)
{
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v4 = [v2 initWithEntityName:v3];

  [v4 setReturnsObjectsAsFaults:0];
  sub_10031E5F0(a1);
  v12 = 0;
  v5 = [v4 execute:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5;
    _s7MailboxCMa();
    v8 = sub_1004A5C14();
    v9 = v6;

    return v8;
  }

  else
  {
    v11 = v12;
    sub_1004A4274();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_10033087C(uint64_t a1)
{
  v2 = sub_100350FA8(_swiftEmptyArrayStorage);
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v29 = a1;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = *(v29 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v6))));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v30 = *(v10 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v2;
    v15 = sub_10035E1B0(v12, v11);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_23;
    }

    v21 = v16;
    if (v2[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v15;
        sub_100361370();
        v15 = v26;
        v2 = v31;
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_10035F734(v20, isUniquelyReferenced_nonNull_native);
      v2 = v31;
      v15 = sub_10035E1B0(v12, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_25;
      }
    }

    if (v21)
    {
      goto LABEL_4;
    }

LABEL_16:
    v2[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v2[6] + 16 * v15);
    *v23 = v12;
    v23[1] = v11;
    *(v2[7] + 8 * v15) = _swiftEmptySetSingleton;
    v24 = v2[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_24;
    }

    v2[2] = v25;

LABEL_4:
    v6 &= v6 - 1;
    sub_100088220(&v31, v13, v30);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v27 = sub_100330728(v2);

      return v27;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100330AF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100330B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_100330BD4(uint64_t a1, int a2, uint64_t *a3, char *a4, int a5, _DWORD *a6)
{
  v61 = a4;
  v62 = a6;
  v58 = a5;
  v63 = a2;
  v64 = a1;
  v60 = type metadata accessor for MessageBeingDownloaded(0);
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v48 - v11;
  __chkstk_darwin(v12);
  v14 = (&v48 - v13);
  __chkstk_darwin(v15);
  v50 = &v48 - v16;
  __chkstk_darwin(v17);
  v54 = &v48 - v18;
  v19 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  __chkstk_darwin(v19 - 8);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v55 = &v48 - v23;
  __chkstk_darwin(v24);
  v56 = &v48 - v25;
  v27 = __chkstk_darwin(v26);
  v57 = &v48 - v28;
  v53 = a3;
  v29 = *a3;
  v30 = *(*a3 + 16);
  if (!v30)
  {
LABEL_12:
    v35 = v57;
    v39 = v60;
    (*(v8 + 56))(v57, 1, 1, v60, v27);
    v14 = v62;
    v40 = v59;
    sub_100357308(v35, v61, v58, v62);
    if (v40)
    {
LABEL_13:
      sub_100025F40(v35, &qword_1005D97C8, &unk_1004F6A70);

      return;
    }

    v41 = v56;
    sub_100331930(v35, v56);
    if ((*(v8 + 48))(v41, 1, v39) == 1)
    {
      sub_100025F40(v35, &qword_1005D97C8, &unk_1004F6A70);
      sub_100025F40(v41, &qword_1005D97C8, &unk_1004F6A70);
LABEL_26:

      goto LABEL_27;
    }

    v31 = v54;
    sub_1003319A0(v41, v54, type metadata accessor for MessageBeingDownloaded);
    if (*v31 != v64 || *(v31 + 16) != v63 || (v42 = sub_10033A5E0(), (v42 & 0x100000000) != 0) || v42 != v63)
    {
      sub_100025F40(v57, &qword_1005D97C8, &unk_1004F6A70);
      v46 = v31;
LABEL_25:
      sub_1003318D0(v46, type metadata accessor for MessageBeingDownloaded);
      goto LABEL_26;
    }

    sub_100331868(v31, v50, type metadata accessor for MessageBeingDownloaded);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_21:
      v43 = v53;
      v45 = v29[2];
      v44 = v29[3];
      if (v45 >= v44 >> 1)
      {
        v29 = sub_10035D8CC((v44 > 1), v45 + 1, 1, v29);
      }

      sub_100025F40(v57, &qword_1005D97C8, &unk_1004F6A70);
      v29[2] = v45 + 1;
      sub_1003319A0(v50, v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v45, type metadata accessor for MessageBeingDownloaded);
      *v43 = v29;
      v46 = v31;
      goto LABEL_25;
    }

LABEL_37:
    v29 = sub_10035D8CC(0, v29[2] + 1, 1, v29);
    goto LABEL_21;
  }

  v31 = 0;
  v49 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v32 = v29 + v49;
  while (1)
  {
    if (v31 >= v29[2])
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v6 = sub_1003364E0(v6);
      goto LABEL_31;
    }

    v6 = v29;
    v29 = v8;
    a3 = (*(v8 + 72) * v31);
    sub_100331868(a3 + v32, v14, type metadata accessor for MessageBeingDownloaded);
    if (*v14 == v64)
    {
      break;
    }

    sub_1003318D0(v14, type metadata accessor for MessageBeingDownloaded);
LABEL_4:
    ++v31;
    v8 = v29;
    v29 = v6;
    if (v30 == v31)
    {
      goto LABEL_12;
    }
  }

  v8 = v21;
  v33 = v14[4];
  sub_1003318D0(v14, type metadata accessor for MessageBeingDownloaded);
  v34 = v33 == v63;
  v21 = v8;
  if (!v34)
  {
    goto LABEL_4;
  }

  if (v31 >= v6[2])
  {
    goto LABEL_34;
  }

  v35 = v55;
  sub_100331868(a3 + v32, v55, type metadata accessor for MessageBeingDownloaded);
  v36 = v29;
  v37 = v29[7];
  v29 = v60;
  v37(v35, 0, 1, v60);
  v14 = v62;
  v38 = v59;
  sub_100357308(v35, v61, v58, v62);
  v64 = v38;
  if (v38)
  {
    goto LABEL_13;
  }

  sub_100331930(v35, v8);
  if ((v36[6])(v8, 1, v29) == 1)
  {
    sub_100025F40(v8, &qword_1005D97C8, &unk_1004F6A70);
    v47 = v51;
    sub_10034A6EC(v31, v51);
    sub_1003318D0(v47, type metadata accessor for MessageBeingDownloaded);
    sub_100025F40(v35, &qword_1005D97C8, &unk_1004F6A70);

    goto LABEL_27;
  }

  v21 = v52;
  sub_1003319A0(v8, v52, type metadata accessor for MessageBeingDownloaded);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  sub_100025F40(v55, &qword_1005D97C8, &unk_1004F6A70);
  if (v31 >= v6[2])
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_100331A08(v21, a3 + v6 + v49);

  *v53 = v6;
LABEL_27:
}

uint64_t sub_100331300@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004A4374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MessageBeingDownloaded.State(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10033A5E0();
  if (v13 & 0x100000000) != 0 || (v14 = v13, v15 = sub_10033B018(), (v16))
  {

    v17 = type metadata accessor for MessageBeingDownloaded(0);
    v18 = *(*(v17 - 8) + 56);

    return v18(a3, 1, 1, v17);
  }

  else
  {
    v20 = v15;
    if (qword_1005D8738 != -1)
    {
      swift_once();
    }

    v21 = sub_1001C203C(v6, qword_1005D8A40);
    (*(v7 + 16))(v9, v21, v6);
    MessageSectionData.Concatenator.init(expectedMessageSize:inMemoryThreshold:baseDirectory:)(v20, 1000000, v9, v12);
    v22 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v22 - 8) + 56))(v12, 0, 2, v22);
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v14;
    v23 = type metadata accessor for MessageBeingDownloaded(0);
    sub_1003319A0(v12, a3 + *(v23 + 28), type metadata accessor for MessageBeingDownloaded.State);
    return (*(*(v23 - 8) + 56))(a3, 0, 1, v23);
  }
}

uint64_t sub_1003315B8(__n128 a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for MessageBeingDownloaded.State(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageSectionData.Concatenator(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for MessageBeingDownloaded(0) + 28);
  sub_100331868(v4 + v13, v8, type metadata accessor for MessageBeingDownloaded.State);
  if ((*(v10 + 48))(v8, 2, v9))
  {
    return sub_1003318D0(v8, type metadata accessor for MessageBeingDownloaded.State);
  }

  v16 = *(v10 + 32);
  v16(v12, v8, v9);
  MessageSectionData.Concatenator.appendData(_:)(a2);
  sub_1003318D0(v4 + v13, type metadata accessor for MessageBeingDownloaded.State);
  if (v3)
  {
    (*(v10 + 56))(v4 + v13, 1, 2, v9);
    swift_willThrow();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v16((v4 + v13), v12, v9);
    return (*(v10 + 56))(v4 + v13, 0, 2, v9);
  }
}

uint64_t sub_100331868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003318D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100331930(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D97C8, &unk_1004F6A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003319A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100331A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageBeingDownloaded(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100331A6C(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v3 = sub_1004A5384();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Message(0);
  __chkstk_darwin(v5 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  __chkstk_darwin(v7 - 8);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v42 - v10;
  v50 = type metadata accessor for IndexableMessageInfo(0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C9C0(&qword_1005D97D0, &unk_1004F6A80);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  v56 = type metadata accessor for MessageSectionData.Concatenator.Completed(0);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessageBeingDownloaded.State(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MessageSectionData.Concatenator(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for MessageBeingDownloaded(0) + 28);
  v25 = v2;
  sub_100331868(v2 + v24, v19, type metadata accessor for MessageBeingDownloaded.State);
  if ((*(v21 + 48))(v19, 2, v20))
  {
    sub_1003318D0(v19, type metadata accessor for MessageBeingDownloaded.State);
LABEL_5:
    sub_100332250();
    swift_allocError();
    swift_willThrow();
    return v24;
  }

  v42 = v24;
  (*(v21 + 32))(v23, v19, v20);
  MessageSectionData.Concatenator.completed.getter(v14);
  if ((*(v55 + 48))(v14, 1, v56) == 1)
  {
    (*(v21 + 8))(v23, v20);
    sub_100025F40(v14, &qword_1005D97D0, &unk_1004F6A80);
    goto LABEL_5;
  }

  v27 = v23;
  v28 = v16;
  sub_1003319A0(v14, v16, type metadata accessor for MessageSectionData.Concatenator.Completed);
  v29 = v49;
  (*(v51 + 16))(v49, v16, v52);
  v30 = v46;
  Message.init(_:)(v29, v46);
  v31 = v54;

  v24 = v47;
  IndexableMessageInfo.init(message:maximumTextCount:cache:)(v30, v53, v31, v47);
  v32 = v48;
  v33 = v50;
  if ((*(v48 + 48))(v24, 1, v50) == 1)
  {
    sub_100025F40(v24, &qword_1005D6670, &qword_1004EBFB0);
    v34 = v42;
    sub_1003318D0(v25 + v42, type metadata accessor for MessageBeingDownloaded.State);
    (*(v21 + 56))(v25 + v34, 1, 2, v20);
    sub_1003322A4();
    swift_allocError();
    swift_willThrow();
    sub_1003318D0(v16, type metadata accessor for MessageSectionData.Concatenator.Completed);
    (*(v21 + 8))(v27, v20);
    return v24;
  }

  v35 = v43;
  sub_1003319A0(v24, v43, type metadata accessor for IndexableMessageInfo);
  v56 = v25;
  v24 = *(v25 + 8);
  v36 = v44;
  sub_100331868(v35, v44, type metadata accessor for IndexableMessageInfo);
  (*(v32 + 56))(v36, 0, 1, v33);
  v37 = sub_1004A5734();
  [v24 willChangeValueForKey:v37];

  v38 = v45;
  sub_10033B644(v24, v36);
  if (!v38)
  {
    v39 = sub_1004A5734();
    [v24 didChangeValueForKey:v39];

    sub_100025F40(v36, &qword_1005D6670, &qword_1004EBFB0);
    sub_1003318D0(v35, type metadata accessor for IndexableMessageInfo);
    sub_1003318D0(v28, type metadata accessor for MessageSectionData.Concatenator.Completed);
    (*(v21 + 8))(v27, v20);
    v40 = v42;
    v41 = v56;
    sub_1003318D0(v56 + v42, type metadata accessor for MessageBeingDownloaded.State);
    (*(v21 + 56))(v41 + v40, 2, 2, v20);
    return v24;
  }

  result = [v24 didChangeValueForKey:sub_1004A5734()];
  __break(1u);
  return result;
}

unint64_t sub_100332250()
{
  result = qword_1005D97D8;
  if (!qword_1005D97D8)
  {
    result = swift_getWitnessTable(byte_1004F6B18, &type metadata for MessageBeingDownloaded.InvalidState, v0, v1);
    atomic_store(result, &qword_1005D97D8);
  }

  return result;
}

unint64_t sub_1003322A4()
{
  result = qword_1005D97E0;
  if (!qword_1005D97E0)
  {
    result = swift_getWitnessTable(byte_1004F6AD8, &type metadata for MessageBeingDownloaded.ParsingMessageDidFail, v0, v1);
    atomic_store(result, &qword_1005D97E0);
  }

  return result;
}

uint64_t sub_10033232C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Concatenator(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003323AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MessageSectionData.Concatenator(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100332430(uint64_t a1)
{
  v1 = type metadata accessor for MessageSectionData.Concatenator(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10033249C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MessageBeingDownloaded.State(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10033255C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessageBeingDownloaded.State(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100332600(uint64_t a1)
{
  result = _s7MailboxCMa();
  if (v2 <= 0x3F)
  {
    result = _s7MessageCMa();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MessageBeingDownloaded.State(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_1003326A4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10035D618(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C9C0(&qword_1005D9938, &qword_1004F6B60);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1003327D8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10035D8F4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C9C0(&qword_1005D9928, &unk_1004F78F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100332908(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1004A6A34();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1004A6A34();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100332A08(void *a1, uint64_t a2, uint64_t a3)
{
  p_attr = v3;
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = sub_1004A5734();
  v13 = [v11 initWithEntityName:v12];

  v14 = v13;
  sub_10031E2EC(a1);
  sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
  v15 = sub_1004A5FE4();
  [v13 appendPredicate:v15];

  if ((a2 & 0x100000000) == 0 && a2 != 1)
  {
    LODWORD(v53[0]) = 1;
    if (!a2)
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    LODWORD(v51) = a2 - 1;
    v16 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v53, &v51, &type metadata for UID, &v54);
    sub_100016D2C();
    sub_1004A7114();
    v53[0] = v54;
    v51 = Range<>.init<A>(_:)(v53, &type metadata for UID, v16);
    if (HIDWORD(v51) != v51)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v17 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v17(v53, 0);
    }

    v18 = sub_10037A73C();
    v14 = v13;
    [v13 appendPredicate:v18];

    sub_100121C40(v10);
  }

  [v14 setFetchLimit:a3];
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004D3930;
  v20 = objc_allocWithZone(NSSortDescriptor);
  v21 = sub_1004A5734();
  v22 = [v20 initWithKey:v21 ascending:0];

  *(v19 + 32) = v22;
  sub_10019A8E4(0, &qword_1005D9940, NSSortDescriptor_ptr);
  isa = sub_1004A5C04().super.isa;

  [v14 setSortDescriptors:isa];

  if (qword_1005D8760 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v52[2] = xmmword_1005D9218;
    v52[3] = *&qword_1005D9228;
    v52[4] = xmmword_1005D9238;
    v52[0] = xmmword_1005D91F8;
    v52[1] = *&qword_1005D9208;
    v49 = sub_1003521DC(v52);
    v53[0] = _swiftEmptySetSingleton;
    v51 = _swiftEmptySetSingleton;
    v50 = 0;
    v24 = [v14 execute:&v50];
    v25 = v50;
    if (!v24)
    {
      v43 = v50;
      sub_1004A4274();

      swift_willThrow();
      return;
    }

    v26 = v24;
    v46 = p_attr;
    _s7MessageCMa();
    v27 = sub_1004A5C14();
    v28 = v25;

    v45 = v14;
    if (v27 >> 62)
    {
      break;
    }

    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_32;
    }

LABEL_11:
    v14 = 0;
    v48 = v27 & 0xC000000000000001;
    v47 = v27 & 0xFFFFFFFFFFFFFF8;
    p_attr = &stru_1005CAFF8.attr;
    while (1)
    {
      if (v48)
      {
        v30 = sub_1004A6794();
      }

      else
      {
        if (v14 >= *(v47 + 16))
        {
          goto LABEL_29;
        }

        v30 = *(v27 + 8 * v14 + 32);
      }

      v31 = v30;
      v32 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v33 = sub_1004A5734();
      [v31 willAccessValueForKey:v33];

      v34 = [v31 primitiveUid];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 longLongValue];

        v37 = (v36 - 0x100000000) < 0xFFFFFFFF00000001;
        if ((v36 - 0x100000000) >= 0xFFFFFFFF00000001)
        {
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
        v37 = 1;
      }

      v38 = sub_1004A5734();
      [v31 didAccessValueForKey:v38];

      if (v37)
      {
        goto LABEL_34;
      }

      v39 = sub_1004A5734();
      [v31 willAccessValueForKey:v39];

      v40 = [v31 primitiveIndexGeneration];
      if (v40)
      {
        v41 = v40;
        [v40 longLongValue];
      }

      v42 = sub_1004A5734();
      [v31 didAccessValueForKey:v42];

      sub_100362014(&v50, v36);
      ++v14;
      if (v32 == v29)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v29 = sub_1004A6A34();
  if (v29)
  {
    goto LABEL_11;
  }

LABEL_32:
}

void sub_100333104(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_1004A5734();
  v7 = [v5 initWithEntityName:v6];

  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v34[2] = xmmword_1005D9218;
  v34[3] = *&qword_1005D9228;
  v34[4] = xmmword_1005D9238;
  v34[0] = xmmword_1005D91F8;
  v34[1] = *&qword_1005D9208;
  v8 = sub_1003521DC(v34);
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004CEAA0;
  *(v9 + 56) = &type metadata for UInt64;
  *(v9 + 32) = v8;
  v10 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v12 = [objc_opt_self() predicateWithFormat:v10 argumentArray:isa];

  [v7 appendPredicate:v12];
  sub_10031E2EC(a1);
  v13 = sub_10037A73C();
  [v7 appendPredicate:v13];

  v35 = 0;
  v14 = [v7 execute:&v35];
  v15 = v35;
  if (!v14)
  {
    v30 = v35;
    sub_1004A4274();

    swift_willThrow();
    return;
  }

  v16 = v14;
  _s7MessageCMa();
  v17 = sub_1004A5C14();
  v18 = v15;

  sub_10002A54C(a2, a3);
  v31 = v7;
  if (v17 >> 62)
  {
    v19 = sub_1004A6A34();
    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_6:
      if (v19 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v19; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = sub_1004A6794();
        }

        else
        {
          v21 = *(v17 + 8 * i + 32);
        }

        v22 = v21;
        v23 = sub_1004A5734();
        [v22 willAccessValueForKey:{v23, v31}];

        v24 = [v22 primitiveUid];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 longLongValue];

          v27 = (v26 - 0x100000000) < 0xFFFFFFFF00000001;
          if ((v26 - 0x100000000) < 0xFFFFFFFF00000001)
          {
            LODWORD(v26) = 0;
          }
        }

        else
        {
          LODWORD(v26) = 0;
          v27 = 1;
        }

        v28 = sub_1004A5734();
        [v22 didAccessValueForKey:v28];

        if (!v27)
        {
          v33 = v26;
          v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
          MessageIdentifierSet.remove(_:)(&v33, v29, &v35);
        }
      }
    }
  }
}

void sub_100333518(int a1)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v15 - v6;
  v8 = [v1 managedObjectContext];
  if (v8)
  {
    v9 = v8;
    v16 = a1;
    v10 = sub_100016948();
    MessageIdentifierSet.init(_:)(&v16, &type metadata for UID, v10);
    sub_1003336DC(v1, v7, &v17);
    sub_100121C40(v7);

    if (v2)
    {
      return;
    }

    v11 = (v17 + 32);
    v12 = *(v17 + 16) + 1;
    while (--v12)
    {
      v13 = (v11 + 4);
      v14 = *v11;
      v11 += 4;
      if (v14 == a1)
      {
        *(v13 - 1);

        return;
      }
    }
  }

  sub_100333688();
  swift_allocError();
  swift_willThrow();
}

unint64_t sub_100333688()
{
  result = qword_1005D9920;
  if (!qword_1005D9920)
  {
    result = swift_getWitnessTable(aY_28, &_s15MessageNotFoundVN, v0, v1);
    atomic_store(result, &qword_1005D9920);
  }

  return result;
}

uint64_t sub_1003336DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v65 = a3;
  v70 = a1;
  v63 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v63);
  v6 = &v61 - v5;
  v72 = _swiftEmptyArrayStorage;
  v66 = a2;
  sub_10002A54C(a2, &v61 - v5);
  v7 = [v3 registeredObjects];
  v8 = sub_10019A8E4(0, &qword_1005D8A10, NSManagedObject_ptr);
  v9 = sub_100309DBC();
  v10 = sub_1004A5D44();

  v69 = v8;
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_1004A5DB4();
    v10 = v73[1];
    v11 = v73[2];
    v12 = v73[3];
    v13 = v73[4];
    v14 = v73[5];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v10 + 32);
    v11 = (v10 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(v10 + 56));
  }

  v67 = v12;
  v68 = v6;
  v18 = (v12 + 64) >> 6;
  v62 = _swiftEmptyArrayStorage;
  while (v10 < 0)
  {
    v9 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    v22 = sub_1004A6604();
    if (!v22)
    {
      goto LABEL_33;
    }

    v71 = v22;
    swift_dynamicCast();
    v21 = v73[0];
    if (!v73[0])
    {
      goto LABEL_33;
    }

LABEL_18:
    _s7MessageCMa();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      goto LABEL_8;
    }

    v24 = v23;
    v25 = [v23 mailbox];
    if (!v25)
    {
      goto LABEL_8;
    }

    v9 = v25;

    if (v9 != v70)
    {
      goto LABEL_8;
    }

    v26 = sub_1004A5734();
    [v24 willAccessValueForKey:v26];

    v27 = [v24 primitiveUid];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 longLongValue];

      LODWORD(v64) = (v29 - 0x100000000) < 0xFFFFFFFF00000001;
      if ((v29 - 0x100000000) < 0xFFFFFFFF00000001)
      {
        LODWORD(v29) = 0;
      }
    }

    else
    {
      LODWORD(v29) = 0;
      LODWORD(v64) = 1;
    }

    v9 = sub_1004A5734();
    [v24 didAccessValueForKey:v9];

    if (v64 & 1) == 0 && (LODWORD(v73[0]) = v29, v9 = v66, (MessageIdentifierSet.contains(_:)(v73, v63)))
    {
      v64 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_10035D8F4(0, v62[2] + 1, 1, v62);
      }

      v31 = v62[2];
      v30 = v62[3];
      if (v31 >= v30 >> 1)
      {
        v62 = sub_10035D8F4((v30 > 1), v31 + 1, 1, v62);
      }

      v33 = v62;
      v32 = v63;
      v62[2] = v31 + 1;
      v34 = &v33[2 * v31];
      *(v34 + 8) = v29;
      v34[5] = v24;
      v72 = v33;
      LODWORD(v71) = v29;
      v9 = v68;
      MessageIdentifierSet.remove(_:)(&v71, v32, v73);
    }

    else
    {
LABEL_8:
    }
  }

  v19 = v13;
  v20 = v14;
  if (v14)
  {
LABEL_14:
    v14 = ((v20 - 1) & v20);
    v21 = *(*(v10 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v13 >= v18)
    {
      break;
    }

    v20 = v11[v13];
    ++v19;
    if (v20)
    {
      goto LABEL_14;
    }
  }

LABEL_33:
  sub_100020D08(v10);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v35 = v68;
  if (sub_1004A70C4())
  {
LABEL_65:
    result = sub_100121C40(v35);
    *v65 = v72;
  }

  else
  {
    v36 = objc_allocWithZone(NSFetchRequest);
    v37 = sub_1004A5734();
    v38 = [v36 initWithEntityName:v37];

    [v38 setReturnsObjectsAsFaults:0];
    sub_10031E2EC(v70);
    v39 = sub_10037A73C();
    [v38 appendPredicate:v39];

    v73[0] = 0;
    v40 = [v38 execute:v73];
    v41 = v73[0];
    if (v40)
    {
      v42 = v40;
      _s7MessageCMa();
      v9 = sub_1004A5C14();
      v43 = v41;

      v67 = v38;
      if (v9 >> 62)
      {
        goto LABEL_62;
      }

      v70 = (v9 & 0xFFFFFFFFFFFFFF8);
      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
      {
        v45 = 0;
        v46 = _swiftEmptyArrayStorage;
LABEL_38:
        v69 = v46;
        v47 = v45;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v48 = sub_1004A6794();
          }

          else
          {
            if (v47 >= *(v70 + 2))
            {
              goto LABEL_61;
            }

            v48 = *(v9 + 8 * v47 + 32);
          }

          v49 = v48;
          v45 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          v50 = sub_1004A5734();
          [v49 willAccessValueForKey:v50];

          v51 = [v49 primitiveUid];
          if (v51)
          {
            v52 = v51;
            v53 = [v51 longLongValue];

            v54 = (v53 - 0x100000000) < 0xFFFFFFFF00000001;
            if ((v53 - 0x100000000) < 0xFFFFFFFF00000001)
            {
              LODWORD(v53) = 0;
            }
          }

          else
          {
            LODWORD(v53) = 0;
            v54 = 1;
          }

          v55 = sub_1004A5734();
          [v49 didAccessValueForKey:v55];

          if (!v54)
          {
            v46 = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_10035D8F4(0, v46[2] + 1, 1, v46);
            }

            v57 = v46[2];
            v56 = v46[3];
            if (v57 >= v56 >> 1)
            {
              v46 = sub_10035D8F4((v56 > 1), v57 + 1, 1, v46);
            }

            v46[2] = v57 + 1;
            v58 = &v46[2 * v57];
            *(v58 + 8) = v53;
            v58[5] = v49;
            if (v45 != i)
            {
              goto LABEL_38;
            }

            goto LABEL_64;
          }

          ++v47;
          if (v45 == i)
          {
            v46 = v69;
            goto LABEL_64;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        v70 = (v9 & 0xFFFFFFFFFFFFFF8);
      }

      v46 = _swiftEmptyArrayStorage;
LABEL_64:

      sub_1003327D8(v46);

      v35 = v68;
      goto LABEL_65;
    }

    v59 = v73[0];

    sub_1004A4274();

    swift_willThrow();
    return sub_100121C40(v35);
  }

  return result;
}