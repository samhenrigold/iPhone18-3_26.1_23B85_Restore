void sub_100000F38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100001040(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(sub_100001A04() - 8);
  v8 = __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v8;
    swift_errorRetain();
    sub_1000019F4();
    sub_1000017F8(&qword_1000081A8, &qword_100001D08);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100001CB0;
    swift_getErrorValue();
    v12 = sub_100001A74();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000018EC();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_100001A34();

    v8 = (*(v7 + 8))(v10, v17);
  }

  return a2(v8);
}

id sub_100001318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IndexRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001380()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000013C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100001A04();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000019F4();
  sub_100001A14();
  (*(v6 + 8))(v8, v5);
  v9 = *(v2 + OBJC_IVAR____TtC18TipsSpotlightIndex19IndexRequestHandler_searchQueryClient);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_1000019B8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100000F38;
  aBlock[3] = &unk_100004290;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  [v12 reindexAllSearchableItemsWithCompletionHandler:v11];
  _Block_release(v11);
}

void sub_100001580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v7 = sub_100001A04();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000019F4();
  sub_1000017F8(&qword_1000081A8, &qword_100001D08);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100001CB0;
  aBlock[0] = a1;
  sub_1000017F8(&qword_1000081B0, &unk_100001D10);
  sub_100001840();
  v12 = sub_100001A44();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000018EC();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_100001A24(v10, "Reindex specific items; item identifiers = %@", 45, 2, v11);

  (*(v8 + 8))(v10, v7);
  v15 = *(v4 + OBJC_IVAR____TtC18TipsSpotlightIndex19IndexRequestHandler_searchQueryClient);
  isa = sub_100001A54().super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100001940;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100000F38;
  aBlock[3] = &unk_100004218;
  v18 = _Block_copy(aBlock);

  [v15 reindexSearchableItemsWithIdentifiers:isa completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1000017F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100001840()
{
  result = qword_1000081B8;
  if (!qword_1000081B8)
  {
    sub_1000018A4(&qword_1000081B0, &unk_100001D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081B8);
  }

  return result;
}

uint64_t sub_1000018A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000018EC()
{
  result = qword_1000081C0;
  if (!qword_1000081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000081C0);
  }

  return result;
}

uint64_t sub_100001968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001980()
{

  return _swift_deallocObject(v0, 32, 7);
}