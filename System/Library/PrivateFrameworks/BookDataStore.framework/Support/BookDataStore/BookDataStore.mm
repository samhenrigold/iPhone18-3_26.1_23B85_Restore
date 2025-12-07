id sub_1000023E8(uint64_t a1)
{
  if (qword_100274968 != -1)
  {
    sub_1001BD7E0();
  }

  v2 = qword_100274960;

  return v2;
}

id sub_100002614(uint64_t a1)
{
  if (qword_100274978 != -1)
  {
    sub_1001BD7F4();
  }

  v2 = qword_100274970;

  return v2;
}

id sub_100002660(uint64_t a1)
{
  if (qword_100274918 != -1)
  {
    sub_1001BD77C();
  }

  v2 = qword_100274910;

  return v2;
}

void sub_1000027A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000027D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) currentToken];
    v4 = [WeakRetained plistContents];
    v5 = [v4 objectForKey:@"BDSICloudIdentityTokenTrackerToken"];

    v6 = [[BDSICloudIdentityToken alloc] initFromArchive:v5];
    v7 = v6;
    if (v6)
    {
      v6 = [v6 isEqual:v3];
      v8 = v6 ^ 1;
    }

    else
    {
      v8 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
    v9 = sub_100002660(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = 138543874;
      v12 = v10;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BDSICloudIdentityTokenTracker didUnacknowledgediCloudLogoutOccur=%{public}@ l=%{public}@ c=%{public}@", &v11, 0x20u);
    }
  }
}

void sub_100002E44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) currentToken];
    v4 = [BDSICloudIdentityToken alloc];
    v5 = [WeakRetained plistContents];
    v6 = [v5 objectForKey:@"BDSICloudIdentityTokenTrackerToken"];
    v7 = [(BDSICloudIdentityToken *)v4 initFromArchive:v6];

    if (v3 != v7 && ([v3 isEqual:v7] & 1) == 0)
    {
      v8 = [WeakRetained plistContents];
      v9 = v8;
      if (v3)
      {
        v10 = [v3 token];
        [v9 setObject:v10 forKey:@"BDSICloudIdentityTokenTrackerToken"];
      }

      else
      {
        [v8 removeObjectForKey:@"BDSICloudIdentityTokenTrackerToken"];
      }

      v11 = [WeakRetained plistContents];
      v12 = [WeakRetained plistURL];
      [v11 writeToURL:v12 atomically:1];

      v14 = sub_100002660(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [WeakRetained plistURL];
        v16 = 141558274;
        v17 = 1752392040;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Done acknowledge iCloud identity: %{mask.hash}@", &v16, 0x16u);
      }
    }
  }
}

void *sub_100003770@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000037EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003824()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = (v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_10000394C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003984()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000039C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003A10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003A48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003A80()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100003AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003B04()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003B3C()
{
  v1 = (type metadata accessor for ReadingHistoryModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100084528(&unk_10026F410, &unk_1001F0E40) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;
  v10 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = v1[7];
  v12 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  (*(*(v12 - 8) + 8))(v9 + v11, v12);

  v13 = v0 + v7;
  v14 = type metadata accessor for CRDTModelRevisionInfo(0);
  if (!(*(*(v14 - 8) + 48))(v0 + v7, 1, v14))
  {

    v15 = *(v14 + 24);
    v16 = sub_1001C4CA8();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v13 + v15, 1, v16))
    {
      (*(v17 + 8))(v13 + v15, v16);
    }
  }

  return _swift_deallocObject(v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_100003DD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003E08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003EF4()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_100003FF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004030()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100004100()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004140()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004180()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000041B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReadingHistoryModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1001C4CA8();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100004304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1001C4CA8();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10000445C()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000449C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000044D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000044E8()
{

  return _swift_deallocObject(v0, 74, 7);
}

uint64_t sub_100004520()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004558()
{
  v1 = *(sub_100084528(&qword_10026F7F8, &qword_1001F1420) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v11 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  v6 = *(v5 + 20);
  v7 = sub_1001C5EB8();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = (v0 + v3 + *(sub_100084528(&unk_10026F800, &qword_1001F1428) + 48));

    v8(v9 + *(v5 + 20), v7);
  }

  return _swift_deallocObject(v0, ((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000046F0()
{
  v1 = *(sub_100084528(&qword_10026F7F8, &qword_1001F1420) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v11 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  v6 = *(v5 + 20);
  v7 = sub_1001C5EB8();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = (v0 + v3 + *(sub_100084528(&unk_10026F800, &qword_1001F1428) + 48));

    v8(v9 + *(v5 + 20), v7);
  }

  return _swift_deallocObject(v0, v3 + v11, v2 | 7);
}

uint64_t sub_100004874()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000048B0()
{
  v1 = *(sub_100084528(&unk_10026F820, &unk_1001F1440) - 8);
  v34 = *(v1 + 80);
  v32 = *(v1 + 64);
  v35 = v0;
  v33 = (v34 + 16) & ~v34;
  v2 = v0 + v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v31 = *(*(v4 - 8) + 8);
  v31(v0 + v33, v4);
  v5 = type metadata accessor for ReadingHistoryModel(0);
  v6 = *(v5 + 20);
  v7 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v8 = (*(v7 - 8) + 8);
  v9 = v2 + v6;
  v10 = *v8;
  (*v8)(v9, v7);

  v11 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v12 = v2 + *(v11 + 48);
  v13 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v30 = *(*(v13 - 8) + 48);
  v14 = v30(v12, 2, v13);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v14)
    {
      v31(v12, v4);
      v10(v12 + *(v5 + 20), v7);
    }

    v29 = v10;
    v15 = v2 + *(v11 + 52);
    v16 = type metadata accessor for CRDTModelRevisionInfo(0);
    v27 = *(*(v16 - 8) + 48);
    if (!v27(v15, 1, v16))
    {

      v17 = *(v16 + 24);
      v18 = sub_1001C4CA8();
      v28 = *(v18 - 8);
      if (!(*(v28 + 48))(v15 + v17, 1, v18))
      {
        (*(v28 + 8))(v15 + v17, v18);
      }
    }

    v19 = v2 + *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
    v31(v19, v4);
    v29(v19 + *(v5 + 20), v7);

    v20 = v19 + *(v11 + 48);
    if (!v30(v20, 2, v13))
    {
      v31(v20, v4);
      v29(v20 + *(v5 + 20), v7);
    }

    v21 = v19 + *(v11 + 52);
    if (!v27(v21, 1, v16))
    {

      v22 = *(v16 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v14)
    {
      v31(v12, v4);
      v10(v12 + *(v5 + 20), v7);
    }

    v21 = v2 + *(v11 + 52);
    v23 = type metadata accessor for CRDTModelRevisionInfo(0);
    if (!(*(*(v23 - 8) + 48))(v21, 1, v23))
    {

      v22 = *(v23 + 24);
LABEL_15:
      v24 = sub_1001C4CA8();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v21 + v22, 1, v24))
      {
        (*(v25 + 8))(v21 + v22, v24);
      }
    }
  }

  return _swift_deallocObject(v35, ((v32 + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v34 | 7);
}

uint64_t sub_100004E18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100004E50()
{
  v1 = *(sub_100084528(&unk_10026FC70, &unk_1001F1430) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1001C4CA8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100004F7C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100004FB4()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000506C()
{
  v1 = *(sub_100084528(&unk_10026F820, &unk_1001F1440) - 8);
  v34 = *(v1 + 80);
  v32 = *(v1 + 64);

  v35 = v0;
  v33 = (v34 + 32) & ~v34;
  v2 = v0 + v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v31 = *(*(v4 - 8) + 8);
  v31(v0 + v33, v4);
  v5 = type metadata accessor for ReadingHistoryModel(0);
  v6 = *(v5 + 20);
  v7 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v8 = (*(v7 - 8) + 8);
  v9 = v2 + v6;
  v10 = *v8;
  (*v8)(v9, v7);

  v11 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v12 = v2 + *(v11 + 48);
  v13 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v30 = *(*(v13 - 8) + 48);
  v14 = v30(v12, 2, v13);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v14)
    {
      v31(v12, v4);
      v10(v12 + *(v5 + 20), v7);
    }

    v29 = v10;
    v15 = v2 + *(v11 + 52);
    v16 = type metadata accessor for CRDTModelRevisionInfo(0);
    v27 = *(*(v16 - 8) + 48);
    if (!v27(v15, 1, v16))
    {

      v17 = *(v16 + 24);
      v18 = sub_1001C4CA8();
      v28 = *(v18 - 8);
      if (!(*(v28 + 48))(v15 + v17, 1, v18))
      {
        (*(v28 + 8))(v15 + v17, v18);
      }
    }

    v19 = v2 + *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
    v31(v19, v4);
    v29(v19 + *(v5 + 20), v7);

    v20 = v19 + *(v11 + 48);
    if (!v30(v20, 2, v13))
    {
      v31(v20, v4);
      v29(v20 + *(v5 + 20), v7);
    }

    v21 = v19 + *(v11 + 52);
    if (!v27(v21, 1, v16))
    {

      v22 = *(v16 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v14)
    {
      v31(v12, v4);
      v10(v12 + *(v5 + 20), v7);
    }

    v21 = v2 + *(v11 + 52);
    v23 = type metadata accessor for CRDTModelRevisionInfo(0);
    if (!(*(*(v23 - 8) + 48))(v21, 1, v23))
    {

      v22 = *(v23 + 24);
LABEL_15:
      v24 = sub_1001C4CA8();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v21 + v22, 1, v24))
      {
        (*(v25 + 8))(v21 + v22, v24);
      }
    }
  }

  return _swift_deallocObject(v35, ((v32 + v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v34 | 7);
}

uint64_t sub_1000055E0()
{
  v1 = *(sub_100084528(&unk_10026F820, &unk_1001F1440) - 8);
  v34 = *(v1 + 80);
  v32 = *(v1 + 64);

  v35 = v0;
  v33 = (v34 + 32) & ~v34;
  v2 = v0 + v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v31 = *(*(v4 - 8) + 8);
  v31(v0 + v33, v4);
  v5 = type metadata accessor for ReadingHistoryModel(0);
  v6 = *(v5 + 20);
  v7 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v8 = (*(v7 - 8) + 8);
  v9 = v2 + v6;
  v10 = *v8;
  (*v8)(v9, v7);

  v11 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v12 = v2 + *(v11 + 48);
  v13 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  v30 = *(*(v13 - 8) + 48);
  v14 = v30(v12, 2, v13);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v14)
    {
      v31(v12, v4);
      v10(v12 + *(v5 + 20), v7);
    }

    v29 = v10;
    v15 = v2 + *(v11 + 52);
    v16 = type metadata accessor for CRDTModelRevisionInfo(0);
    v27 = *(*(v16 - 8) + 48);
    if (!v27(v15, 1, v16))
    {

      v17 = *(v16 + 24);
      v18 = sub_1001C4CA8();
      v28 = *(v18 - 8);
      if (!(*(v28 + 48))(v15 + v17, 1, v18))
      {
        (*(v28 + 8))(v15 + v17, v18);
      }
    }

    v19 = v2 + *(sub_100084528(&qword_10026F838, &unk_1001F1920) + 48);
    v31(v19, v4);
    v29(v19 + *(v5 + 20), v7);

    v20 = v19 + *(v11 + 48);
    if (!v30(v20, 2, v13))
    {
      v31(v20, v4);
      v29(v20 + *(v5 + 20), v7);
    }

    v21 = v19 + *(v11 + 52);
    if (!v27(v21, 1, v16))
    {

      v22 = *(v16 + 24);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v14)
    {
      v31(v12, v4);
      v10(v12 + *(v5 + 20), v7);
    }

    v21 = v2 + *(v11 + 52);
    v23 = type metadata accessor for CRDTModelRevisionInfo(0);
    if (!(*(*(v23 - 8) + 48))(v21, 1, v23))
    {

      v22 = *(v23 + 24);
LABEL_15:
      v24 = sub_1001C4CA8();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v21 + v22, 1, v24))
      {
        (*(v25 + 8))(v21 + v22, v24);
      }
    }
  }

  return _swift_deallocObject(v35, v33 + v32, v34 | 7);
}

uint64_t sub_100005BAC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005C00()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100005D1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100005DDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005E30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005EBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005EF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005F2C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005F74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005FC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100084528(&unk_10026F410, &unk_1001F0E40) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v0 + v8;
  v11 = type metadata accessor for CRDTModelRevisionInfo(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_1001C4CA8();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1000061F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006230()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001C4CA8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000632C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001C4CA8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000063D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001C5EB8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000647C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001C5EB8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100006520()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006558()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000065F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006628()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006660()
{
  v1 = sub_1001C5D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000673C()
{
  v1 = sub_1001C5D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006820()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006858()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000068DC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100006920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000069EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100084528(&qword_10026F508, &qword_1001F1150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100006AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001C4B28();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006B70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001C4B28();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100006C24()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006D00()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006DE4()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v3 + v6) & ~v3;
  v8 = (v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_100006F0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006F4C()
{
  v1 = *(sub_100084528(&unk_10026F350, &qword_1001F31E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = type metadata accessor for CRDTModelSyncVersion(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 20);
    v8 = sub_1001C5EB8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000070A8()
{
  v1 = (type metadata accessor for CRDTModelSyncVersion(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64) + v3;

  v5 = (v0 + v3);

  v6 = v1[7];
  v7 = sub_1001C5EB8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_1000071BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000071FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007244()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007298()
{
  v1 = (type metadata accessor for CRDTModelSyncVersion(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64) + v3;

  v5 = (v0 + v3);

  v6 = v1[7];
  v7 = sub_1001C5EB8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_10000738C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000073C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000073FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007434()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000746C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000074AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000074E4()
{
  v1 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v19 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v20 = v0;
  v18 = (v19 + 32) & ~v19;
  v2 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v18, v2);
  v4 = type metadata accessor for ReadingHistoryModel(0);
  v5 = *(v4 + 20);
  v6 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v18 + v5, v6);

  v8 = v0 + v18 + *(v1 + 48);
  v9 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
  if (!(*(*(v9 - 8) + 48))(v8, 2, v9))
  {
    v3(v8, v2);
    v7(v8 + *(v4 + 20), v6);
  }

  v10 = v0 + v18 + *(v1 + 52);
  v11 = type metadata accessor for CRDTModelRevisionInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_1001C4CA8();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = (v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v20, v15 + 8, v19 | 7);
}

uint64_t sub_1000077F0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007838()
{
  v1 = (type metadata accessor for ReadingHistoryModel(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_100007990()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000079C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007A10()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007A68()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007AB0()
{
  v1 = sub_1001C4CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007C30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007C68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007CAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007CE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007D1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007D58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007DAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007DE4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007E24()
{
  sub_10008E7BC((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100007E7C()
{
  v1 = sub_1001C5148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100007F2C()
{
  v1 = sub_1001C5148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100007FF4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008054()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008094()
{
  v1 = sub_100084528(&qword_100271018, &unk_1001F36F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000081B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100084528(&qword_100271108, &unk_1001F3720);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000826C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100084528(&qword_100271108, &unk_1001F3720);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008340()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008378()
{
  v1 = *(sub_100084528(&qword_100271368, &qword_1001F3AD0) - 8);
  v25 = *(v1 + 80);
  v23 = *(v1 + 64);
  v2 = sub_100084528(&qword_1002713A8, &qword_1001F3B10);
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 80);
  v20 = *(v28 + 64);
  v27 = sub_100084528(&qword_100271398, &qword_1001F3B00);
  v4 = *(v27 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v24 = sub_100084528(&qword_100271388, &qword_1001F3AF0);
  v6 = *(v24 - 8);
  v7 = *(v6 + 80);
  v17 = *(v6 + 64);
  v22 = sub_100084528(&qword_100271378, &qword_1001F3AE0);
  v8 = *(v22 - 8);
  v9 = *(v8 + 80);
  v19 = *(v8 + 64);
  swift_unknownObjectRelease();
  v21 = (v25 + 32) & ~v25;
  v10 = _s11PersistenceVMa(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v21, 1, v10))
  {
    v11 = sub_1001C4B28();
    (*(*(v11 - 8) + 8))(v0 + v21, v11);
  }

  v26 = v25 | v3 | v5 | v7 | v9;
  v12 = (v21 + v23 + v3) & ~v3;
  v13 = (((v20 + v12 + 31) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5;
  v14 = (((v18 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v15 = (((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
  (*(v28 + 8))(v0 + v12, v29);

  (*(v4 + 8))(v0 + v13, v27);

  (*(v6 + 8))(v0 + v14, v24);

  (*(v8 + 8))(v0 + v15, v22);

  return _swift_deallocObject(v0, v15 + v19, v26 | 7);
}

uint64_t sub_100008770()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000087A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(_s15PersistentStateOMa(0) - 8) + 84) == a2)
  {
    v6 = _s15PersistentStateO2V1VMa(0);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 0xFFFFFFFF)
      {
        LODWORD(v14) = -1;
      }

      return (v14 + 1);
    }
  }
}

uint64_t sub_100008904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(*(_s15PersistentStateOMa(0) - 8) + 84) == a3)
  {
    v8 = _s15PersistentStateO2V1VMa(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, a2, a2, v8);
  }

  else
  {
    result = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
    v11 = *(result - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = result;
      v13 = *(v11 + 56);
      v14 = a1 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
    }
  }

  return result;
}

double sub_100008AA8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = result;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_100008AC4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008B0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008B6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008BA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1001C4CA8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100008C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1001C4CA8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100008D10()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008D50()
{

  sub_1000887D0(*(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008D98()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_100008E68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008EA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008EE4()
{
  v1 = sub_100084528(&qword_100272340, &qword_1001F5308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001C4B28();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001C4CA8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000090A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001C4B28();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001C4CA8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000091C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009208@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_100009228()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009278()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000092DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001C4F18();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100009388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001C4F18();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000942C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4F18();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100009498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4F18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100009510(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001C4F18();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000095BC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1001C4F18();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000965C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1001C4F18();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100009708(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1001C4F18();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000097A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_1001C4F18();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100009920(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_1001C4F18();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_100009A88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001C4F18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100009BB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1001C4F18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100009CE8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001C4F18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100009E18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1001C4F18();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100009F50(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

_BYTE *sub_10000A0CC(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_100084528(&unk_10026FC40, &qword_1001F0E90);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100084528(&unk_10026F520, &unk_1001F1160);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_10000A24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100084528(&qword_10026F508, &qword_1001F1150);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10000A31C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = a2 + 2;
  }

  else
  {
    v7 = sub_100084528(&qword_10026F508, &qword_1001F1150);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A3C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A400()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A438()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ObservableContainer.Event(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(*(v5 - 8) + 8);
  v11(v4 + v8, v5);
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v11(v4 + v8 + *(TupleTypeMetadata2 + 48), v5);
  }

  return _swift_deallocObject(v4, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | 7);
}

uint64_t sub_10000A620()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A658()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ObservableContainer.Event(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(*(v5 - 8) + 8);
  v11(v4 + v8, v5);
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v11(v4 + v8 + *(TupleTypeMetadata2 + 48), v5);
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_10000A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C4B28();
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

uint64_t sub_10000A8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001C4B28();
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

uint64_t sub_10000A990()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A9CC()
{
  v1 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000AAB4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AAEC()
{
  v1 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000ABCC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000AC04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AC3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_10000AD28()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AD60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000ADB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ADEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000AE24()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000AE68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AEA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AEE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000AF30()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000AF70()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10000AFA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B000()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B070()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000B0C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B104()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C4CA8();
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

uint64_t sub_10000B23C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001C4CA8();
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

uint64_t sub_10000B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000B3B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100084528(&qword_1002740D8, &qword_1001F82F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000B4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C4CA8();
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

uint64_t sub_10000B57C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001C4CA8();
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

uint64_t sub_10000B634(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    updated = _s14UpdateScheduleVMa(0);
    v9 = *(updated - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = updated;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10000B764(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    updated = _s14UpdateScheduleVMa(0);
    v9 = *(updated - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = updated;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000B8A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_10000B934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C5E78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000BA4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001C5E78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000BB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000BC84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100084528(&qword_100272540, &unk_1001F5610);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100084528(&qword_10026F4E0, &unk_1001F1140);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10000BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100084528(&qword_10026F830, &qword_1001F0E80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000BEC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100084528(&unk_10026F470, &unk_1001F5600);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100084528(&qword_10026F830, &qword_1001F0E80);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t CRDTModelRevisionInfo.changeToken.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_10000C09C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t start(uint64_t a1)
{
  v1 = sub_1000023E8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Process launch.", buf, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = +[BDSDaemon daemon];
  [v3 start];

  objc_autoreleasePoolPop(v2);
  v4 = +[NSRunLoop mainRunLoop];
  [v4 run];

  v6 = sub_1000023E8(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Process exit.", v8, 2u);
  }

  return 0;
}

void sub_10000C22C(id a1)
{
  qword_1002748E0 = objc_opt_new();

  _objc_release_x1();
}

id sub_10000C50C(uint64_t a1)
{
  v2 = [*(a1 + 32) preflightStartup];
  v3 = v2;
  v4 = sub_1000023E8(v2);
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD374();
    }

    exit(0);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Startup: Starting up bookdatastored daemon", buf, 2u);
  }

  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C604;
  v8[3] = &unk_10023F6F8;
  v8[4] = v6;
  return [v6 lrq_setupBeforeListenersWithCompletion:v8];
}

void sub_10000C604(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000023E8(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD3B0();
    }
  }

  v6 = [*(a1 + 32) listenersReadyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C7C8;
  block[3] = &unk_10023F6B0;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);

  signal(15, 1);
  v7 = dispatch_get_global_queue(21, 0);
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7);
  [*(a1 + 32) setSigterm_source:v8];

  v9 = [*(a1 + 32) sigterm_source];
  dispatch_source_set_event_handler(v9, &stru_10023F6D0);

  v10 = [*(a1 + 32) sigterm_source];
  dispatch_activate(v10);

  v11 = [*(a1 + 32) startupQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C830;
  v12[3] = &unk_10023F6B0;
  v12[4] = *(a1 + 32);
  dispatch_async(v11, v12);
}

void sub_10000C7D0(id a1)
{
  v1 = sub_1000023E8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Startup: bookdatastored received sigterm signal", v2, 2u);
  }

  exit(0);
}

void sub_10000C830(uint64_t a1)
{
  v1 = sub_1000023E8([*(a1 + 32) sq_finishedStartingUp]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Startup: Daemon finished starting up.", v2, 2u);
  }
}

void sub_10000D410(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v3 = [v2 dataFile];
  [v3 save:*(a1 + 48)];
}

void sub_10000D568(id a1)
{
  qword_1002748F8 = objc_alloc_init(BDSBookWidgetReadingHistoryDataFile);

  _objc_release_x1();
}

void sub_10000D9F0(id a1)
{
  v1 = +[BUAppGroup books];
  v2 = [v1 containerURL];

  v3 = [v2 URLByAppendingPathComponent:@"Library/Application Support/bookdatastored" isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:@"currentWidgetReadingHistoryData.plist"];
  v5 = qword_100274900;
  qword_100274900 = v4;

  v6 = +[NSFileManager defaultManager];
  v11 = 0;
  v7 = [v6 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v10 = sub_10000DE28(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD714();
    }
  }
}

void sub_10000DB14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000DB3C(id a1)
{
  qword_100274910 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKit");

  _objc_release_x1();
}

id sub_10000DB80(uint64_t a1)
{
  if (qword_100274928 != -1)
  {
    sub_1001BD790();
  }

  v2 = qword_100274920;

  return v2;
}

void sub_10000DBC4(id a1)
{
  qword_100274920 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKit.Development");

  _objc_release_x1();
}

id sub_10000DC08(uint64_t a1)
{
  if (qword_100274938 != -1)
  {
    sub_1001BD7A4();
  }

  v2 = qword_100274930;

  return v2;
}

void sub_10000DC4C(id a1)
{
  qword_100274930 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKitSync");

  _objc_release_x1();
}

id sub_10000DC90(uint64_t a1)
{
  if (qword_100274948 != -1)
  {
    sub_1001BD7B8();
  }

  v2 = qword_100274940;

  return v2;
}

void sub_10000DCD4(id a1)
{
  qword_100274940 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.CloudKitAudiobook");

  _objc_release_x1();
}

id sub_10000DD18(uint64_t a1)
{
  if (qword_100274958 != -1)
  {
    sub_1001BD7CC();
  }

  v2 = qword_100274950;

  return v2;
}

void sub_10000DD5C(id a1)
{
  qword_100274950 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.ServiceCenter");

  _objc_release_x1();
}

void sub_10000DDA0(id a1)
{
  qword_100274960 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Service");

  _objc_release_x1();
}

void sub_10000DDE4(id a1)
{
  qword_100274970 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Service.XPCNotification");

  _objc_release_x1();
}

id sub_10000DE28(uint64_t a1)
{
  if (qword_100274988 != -1)
  {
    sub_1001BD808();
  }

  v2 = qword_100274980;

  return v2;
}

void sub_10000DE6C(id a1)
{
  qword_100274980 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Widget");

  _objc_release_x1();
}

id sub_10000DEB0(uint64_t a1)
{
  if (qword_100274998 != -1)
  {
    sub_1001BD81C();
  }

  v2 = qword_100274990;

  return v2;
}

void sub_10000DEF4(id a1)
{
  qword_100274990 = os_log_create("com.apple.iBooks.BookDataStore", "BookDataStore.Ubiquity");

  _objc_release_x1();
}

void sub_10000DF7C(id a1)
{
  qword_1002749A8 = objc_alloc_init(BDSBookWidgetDataFile);

  _objc_release_x1();
}

void sub_10000E40C(id a1)
{
  v1 = +[BUAppGroup books];
  v2 = [v1 containerURL];

  v3 = [v2 URLByAppendingPathComponent:@"Library/Application Support/bookdatastored/"];
  v4 = [v3 URLByAppendingPathComponent:@"/currentWidgetData.plist"];
  v5 = qword_1002749B0;
  qword_1002749B0 = v4;

  v6 = +[NSFileManager defaultManager];
  v11 = 0;
  v7 = [v6 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v10 = sub_10000DE28(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BD9F8();
    }
  }
}

void sub_10000E8E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removePointerAtIndex:0];
  [*(a1 + 32) bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:*(a1 + 48) successSoFar:a2 errorSoFar:v6 completion:*(a1 + 40)];
}

void sub_10000EB0C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 removePointerAtIndex:0];
  [*(a1 + 32) bds_chainSuccessAndErrorCompletionSelectorCallsForSelector:*(a1 + 48) successSoFar:a2 errorSoFar:v6 completion:*(a1 + 40)];
}

void sub_10000F73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F754(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000F76C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) currentUbiquityIdentityToken];

  return _objc_release_x1();
}

void sub_10000F9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000FA00(uint64_t a1)
{
  result = [*(a1 + 32) dq_isICloudDriveEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000FAEC(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_10000FBF8(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

void sub_10000FDD4(uint64_t a1)
{
  v2 = sub_10000DEB0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: restartObserving was called", &v17, 2u);
  }

  [*(a1 + 32) dq_refreshUbiquityAvailabilityStatus];
  v3 = [*(a1 + 32) lastArchivedUbiquityIdentityToken];
  v4 = [*(a1 + 32) currentUbiquityIdentityToken];
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) lastArchivedUbiquityIdentityToken];
    v6 = [*(a1 + 32) currentUbiquityIdentityToken];
    v7 = [v5 isEqual:v6] ^ 1;
  }

  v8 = +[BDSSyncUserDefaults isICloudDriveSyncOptedIn];
  v9 = sub_10000DEB0(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: restartObserving cloudDriveOptedIn:%@", &v17, 0xCu);
  }

  v11 = [*(a1 + 32) archivedCloudDriveOptedIn];
  if (v8 != v11)
  {
    v12 = sub_10000DEB0([*(a1 + 32) setArchivedCloudDriveOptedIn:v8]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"disabled";
      if (v8)
      {
        v13 = @"enabled";
      }

      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: restartObserving - Books / iCloud Drive switch was %@", &v17, 0xCu);
    }

    goto LABEL_17;
  }

  if (v7)
  {
LABEL_17:
    [*(a1 + 32) dq_archiveCurrentUbiquityIdentityToken];
    v14 = [*(a1 + 32) currentUbiquityIdentityToken];
    v15 = [*(a1 + 32) lastArchivedUbiquityIdentityToken];
    v16 = sub_10000DEB0(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BDSUbiquityStatusMonitor: restartObserving - notifying observers of a token change", &v17, 2u);
    }

    [*(a1 + 32) _notifyObserversForChangesWithCurrentToken:v14 lastToken:v15];
    goto LABEL_20;
  }

  v14 = sub_10000DEB0(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BDSUbiquityStatusMonitor: restartObserving - tokens match ... so we are not notifying anyone", &v17, 2u);
  }

LABEL_20:
}

void sub_100010270(uint64_t a1)
{
  v2 = +[BUAccountsProvider sharedProvider];
  [v2 ubiquityIdentityDidChange];

  v3 = [*(a1 + 32) currentUbiquityIdentityToken];
  [*(a1 + 32) dq_refreshUbiquityAvailabilityStatus];
  v4 = [*(a1 + 32) currentUbiquityIdentityToken];
  v5 = sub_10000DEB0([*(a1 + 32) dq_archiveCurrentUbiquityIdentityToken]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"YES";
    if (!v4)
    {
      v6 = @"NO";
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: p_ubiquityIdentityDidChange - iCloud identity changed. {iCloudEnabled: %@}", &v10, 0xCu);
  }

  if (v3 == v4 || (v7 = [v3 isEqual:v4], v7))
  {
    v8 = sub_10000DEB0(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BDSUbiquityStatusMonitor: p_ubiquityIdentityDidChange - Same underlying tokens detected. Skipping notification to observers", &v10, 2u);
    }
  }

  else
  {
    v9 = sub_10000DEB0(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BDSUbiquityStatusMonitor: p_ubiquityIdentityDidChange - notifying observers of a token change", &v10, 2u);
    }

    [*(a1 + 32) _notifyObserversForChangesWithCurrentToken:v4 lastToken:v3];
  }
}

id sub_1000106CC(uint64_t a1)
{
  v2 = sub_10000DEB0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: iCloud identity changed. Notifying newToken:%@ oldToken:%@", &v6, 0x16u);
  }

  return [*(a1 + 48) ubiquityStatusChangedToAvailableWithNewIdentity:*(a1 + 32) oldIdentity:*(a1 + 40)];
}

id sub_10001078C(uint64_t a1)
{
  v2 = sub_10000DEB0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: iCloud identity changed. Notifying coordinating observer newToken:%@ oldToken:%@", &v6, 0x16u);
  }

  return [*(a1 + 48) ubiquityStatusChangedToAvailableWithNewIdentity:*(a1 + 32) oldIdentity:*(a1 + 40)];
}

void sub_100010A54(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) containerIdentifier];
  v20 = v2;
  v4 = [v2 URLForUbiquityContainerIdentifier:v3];

  [*(a1 + 32) setContainerURL:v4];
  v5 = [v4 URLByAppendingPathComponent:@"Documents"];
  v6 = sub_10000DEB0([*(a1 + 32) setDocumentsURL:v5]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 141558274;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: Container URL set to: %{mask.hash}@", buf, 0x16u);
  }

  if (v5)
  {
    v19 = a1;
    v8 = objc_opt_new();
    v9 = [v5 path];
    v10 = [v20 contentsOfDirectoryAtPath:v9 error:0];

    v11 = 0;
    if ([v10 count])
    {
      v12 = 0;
      do
      {
        v13 = [v10 objectAtIndex:v12];
        if (![v13 rangeOfString:@".Trash"])
        {
          v14 = [v5 URLByAppendingPathComponent:v13];
          v25 = v11;
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100010DE0;
          v23[3] = &unk_10023F960;
          v24 = v20;
          [v8 coordinateWritingItemAtURL:v14 options:1 error:&v25 byAccessor:v23];
          v15 = v25;

          v11 = v15;
        }

        ++v12;
      }

      while (v12 < [v10 count]);
    }

    a1 = v19;
  }

  v16 = sub_10000DEB0(v7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 141558274;
    v27 = 1752392040;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: dq_refreshUbiquityAvailabilityStatus iCloud documentURL changed. {documentURL: %{mask.hash}@}", buf, 0x16u);
  }

  v17 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010ECC;
  block[3] = &unk_10023F938;
  block[4] = *(a1 + 32);
  v22 = v5;
  v18 = v5;
  dispatch_async(v17, block);
}

void sub_100010DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = 0;
  [v4 removeItemAtURL:v3 error:&v8];
  v5 = v8;
  v6 = v5;
  if (v5)
  {
    v7 = sub_10000DEB0(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: Error deleting the folder:[%@] : Error: {%@}", buf, 0x16u);
    }
  }
}

void sub_100010ECC(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) notifyQueue];
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_10001106C;
          v9[3] = &unk_10023F938;
          v9[4] = v7;
          v10 = *(a1 + 40);
          dispatch_async(v8, v9);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100011078(uint64_t a1)
{
  [*(a1 + 32) setContainerURL:0];
  v2 = sub_10000DEB0([*(a1 + 32) setDocumentsURL:0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BDSUbiquityStatusMonitor: Container URL set to: <nil>", v3, 2u);
  }
}

void sub_100011200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100011A40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a3;
  v6 = +[BDSReachability sharedReachabilityForInternetConnection];

  if (v6 == v5)
  {
    +[BDSReachability _updateIsOffline];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"kNetworkReachabilityChangedNotification" object:v5];

  objc_autoreleasePoolPop(v4);
}

id sub_100011F4C(uint64_t a1)
{
  v1 = [*(a1 + 32) reachabilityForInternetConnection];
  v2 = qword_1002749C0;
  qword_1002749C0 = v1;

  result = [qword_1002749C0 currentReachabilityStatus];
  byte_10026D5A0 = result == 0;
  return result;
}

void sub_1000124F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) ubiquityIdentityToken];
  [WeakRetained setIdentity:v3];

  v4 = [WeakRetained ubiquityStatusMonitor];
  v5 = [v4 containerURL];
  [WeakRetained setContainerURL:v5];

  v6 = [WeakRetained identity];

  if (!v6)
  {
    v10 = sub_10000DEB0(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BDA60();
    }

    goto LABEL_10;
  }

  v8 = [WeakRetained containerURL];

  v10 = sub_10000DEB0(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v11)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BDSUbiquityDocumentsObserver: No ubiquity URL", &v13, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v11)
  {
    v12 = [WeakRetained containerURL];
    v13 = 141558274;
    v14 = 1752392040;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "BDSUbiquityDocumentsObserver: Have ubiquity URL: %{mask.hash}@", &v13, 0x16u);
  }

  [WeakRetained q_createSubpathDirectories];
  [WeakRetained restartQuery];
LABEL_11:
}

id sub_1000127CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ubiquityStatusMonitor];
  v4 = [v3 isICloudDriveEnabled];

  v6 = sub_10000DEB0(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: iCloud identity changed. {iCloudEnabled: %d}", v13, 8u);
  }

  v7 = *(a1 + 32);
  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 setIdentity:v7];

  v10 = sub_10000DEB0(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v11)
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: restarting metadata query...", v13, 2u);
    }

    return [*(a1 + 40) restartQuery];
  }

  else
  {
    if (v11)
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: stopping metadata query...", v13, 2u);
    }

    return [*(a1 + 40) tearDownQuery];
  }
}

void sub_100012A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_10000DEB0(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 path];
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSUbiquityDocumentsObserver: Starting new metadata query: %@", buf, 0xCu);
    }

    v7 = objc_alloc_init(NSMetadataQuery);
    v8 = objc_alloc_init(NSOperationQueue);
    [v7 setOperationQueue:v8];

    v9 = [v7 operationQueue];
    [v9 setMaxConcurrentOperationCount:1];

    v10 = [v4 path];
    v11 = [NSPredicate predicateWithFormat:@"%K BEGINSWITH %@", NSMetadataItemPathKey, v10];
    [v7 setPredicate:v11];

    v13 = sub_10000DEB0(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BDA94();
    }

    v19 = NSMetadataQueryUbiquitousDocumentsScope;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    [v7 setSearchScopes:v14];

    v15 = [*(a1 + 32) metadataQueryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012C70;
    block[3] = &unk_10023F938;
    block[4] = *(a1 + 32);
    v18 = v7;
    v16 = v7;
    dispatch_async(v15, block);
  }
}

void sub_100012E20(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _documentsURL];
  (*(v1 + 16))(v1, v2);
}

void sub_1000133A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _replacementObjectForResultObject:a2];
  [v2 addObject:v3];
}

void sub_100013A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013A68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 path];
    LOBYTE(v5) = [v5 fileExistsAtPath:v6];

    if ((v5 & 1) == 0)
    {
      v7 = *(a1 + 32);
      v12 = 0;
      v8 = [v7 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v12];
      v9 = v12;
      v10 = v9;
      if ((v8 & 1) == 0)
      {
        v11 = sub_10000DEB0(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001BDC48();
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

void sub_100013C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _replacementObjectForResultObject:a2];
  [v2 addObject:v3];
}

void sub_100014278(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_100014294(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_100014DA4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x100014E88);
}

void sub_100014DAC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exc_buf);
      v10 = [v9 name];
      v11 = [v10 isEqualToString:NSObjectInaccessibleException];

      if (v11)
      {
        v13 = sub_100002660(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LODWORD(a9) = 138412290;
          *(&a9 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Handled Exception {%@}", &a9, 0xCu);
        }

        objc_end_catch();
        JUMPOUT(0x100014D3CLL);
      }

      objc_exception_throw(v9);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x100014D40);
  }

  _Unwind_Resume(exc_buf);
}

void sub_100014E64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x100014E74);
  }

  _Unwind_Resume(a1);
}

void sub_100014FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014FE0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteObject:{*(*(&v8 + 1) + 8 * v6), v8}];
        ++*(*(*(a1 + 48) + 8) + 24);
        v7 = *(*(a1 + 48) + 8);
        if (*(v7 + 24) == 100)
        {
          *(v7 + 24) = 0;
          [*(a1 + 40) save:0];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10001569C(uint64_t a1)
{
  if (([*(a1 + 32) initialGatherSentAtleastOnce] & 1) == 0 && (*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) observerCallbackQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015824;
    block[3] = &unk_10023F6B0;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }

  [*(a1 + 32) setInitialGatherSentAtleastOnce:1];
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    if (([*(a1 + 32) ubiquityObservingEnabled] & 1) == 0)
    {
      [*(a1 + 32) setUbiquityObservingEnabled:1];
      [*(a1 + 32) iq_setupUbiquityObservers];
      return;
    }

    v3 = *(a1 + 40);
  }

  if (!v3)
  {
    if ([*(a1 + 32) ubiquityObservingEnabled])
    {
      [*(a1 + 32) setUbiquityObservingEnabled:0];
      [*(a1 + 32) iq_teardownUbiquityObservers];
      v4 = [*(a1 + 32) iq_urlFromAssetID];
      [v4 removeAllObjects];

      v5 = [*(a1 + 32) observerCallbackQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100015878;
      v6[3] = &unk_10023F6B0;
      v6[4] = *(a1 + 32);
      dispatch_async(v5, v6);
    }
  }
}

void sub_100015824(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 ubiquityManagerDidFinishInitialGather:*(a1 + 32)];
}

void sub_100015878(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 ubiquityManagerDidFinishInitialGather:*(a1 + 32)];
}

void sub_10001598C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000159A4(uint64_t a1)
{
  result = [*(a1 + 32) ubiquityObservingEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100015B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015B3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015B54(uint64_t a1)
{
  v5 = [*(a1 + 32) iq_urlFromAssetID];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100015D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015D18(uint64_t a1)
{
  v5 = [*(a1 + 32) iq_urlFromAssetID];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100015EBC(uint64_t a1)
{
  v2 = [*(a1 + 32) iq_urlFromAssetID];
  v3 = [v2 allKeys];

  v4 = [v3 count];
  if (v4)
  {
    v5 = sub_10000DEB0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [v3 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: ubiquityStatusChangedToAvailableWithNewIdentity: Removing assets. count: %lu", &v6, 0xCu);
    }

    [*(a1 + 32) iq_clearCachesForAssetIDs:v3 notify:0];
  }
}

void sub_10001607C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = sub_10000DEB0(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: didLoadWithItems: count: %lu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = sub_100015B3C;
  v33 = sub_100015B4C;
  v34 = 0;
  v5 = [WeakRetained ivarQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016514;
  block[3] = &unk_10023F910;
  block[4] = WeakRetained;
  block[5] = &buf;
  dispatch_sync(v5, block);

  v6 = [a1[4] valueForKey:@"url"];
  v7 = [NSSet setWithArray:v6];
  v8 = [NSMutableSet setWithSet:*(*(&buf + 1) + 40)];
  [v8 minusSet:v7];
  v22 = v8;
  v9 = [NSMutableSet setWithSet:v7];
  [v9 minusSet:*(*(&buf + 1) + 40)];
  v10 = [NSMutableSet setWithSet:v7];
  [v10 intersectSet:*(*(&buf + 1) + 40)];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000165A4;
  v27[3] = &unk_10023FB10;
  v21 = v9;
  v28 = v21;
  v11 = [v6 indexesOfObjectsPassingTest:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000165B0;
  v25[3] = &unk_10023FB10;
  v12 = v10;
  v26 = v12;
  v13 = [v6 indexesOfObjectsPassingTest:v25];
  v14 = [a1[4] objectsAtIndexes:v11];
  v15 = [a1[4] objectsAtIndexes:v13];
  [WeakRetained mq_itemsDidBecomeAvailable:v14 block:1 notify:0];
  [WeakRetained mq_itemsDidChange:v15 block:1 notify:0];
  v16 = [v22 allObjects];
  [WeakRetained mq_itemsDidBecomeUnavailable:v16 block:1 notify:0];

  v18 = sub_10000DEB0(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: Initial gather complete", v24, 2u);
  }

  v19 = [a1[5] observer];

  if (v19)
  {
    v20 = [WeakRetained observerCallbackQueue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000165BC;
    v23[3] = &unk_10023F6B0;
    v23[4] = a1[5];
    dispatch_async(v20, v23);
  }

  _Block_object_dispose(&buf, 8);
}

void sub_100016514(uint64_t a1)
{
  v6 = [*(a1 + 32) iq_urlFromAssetID];
  v2 = [v6 allValues];
  v3 = [NSSet setWithArray:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000165BC(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 ubiquityManagerDidFinishInitialGather:*(a1 + 32)];
}

id sub_1000166A8(uint64_t a1)
{
  v2 = sub_10000DEB0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: itemsDidBecomeAvailable: count: %lu", &v5, 0xCu);
  }

  return [*(a1 + 40) mq_itemsDidBecomeAvailable:*(a1 + 32) block:0 notify:1];
}

void sub_1000167FC(uint64_t a1)
{
  v2 = sub_10000DEB0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: itemsDidBecomeUnavailable: count: %lu", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) valueForKey:@"url"];
  [v4 mq_itemsDidBecomeUnavailable:v5 block:0 notify:1];
}

id sub_100016970(uint64_t a1)
{
  v2 = sub_10000DEB0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BDSUbiquityManager: itemsDidChange: count: %lu", &v5, 0xCu);
  }

  return [*(a1 + 40) mq_itemsDidChange:*(a1 + 32) block:0 notify:1];
}

void sub_100017470(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) observer];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = v3;
  if (v2 == 1)
  {
    [v3 ubiquityManager:v4 addedItemWithAssetID:v5 metadata:v6];
  }

  else
  {
    [v3 ubiquityManager:v4 updatedItemWithAssetID:v5 metadata:v6];
  }
}

void sub_100017844(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 ubiquityManager:*(a1 + 32) removedItemWithAssetID:*(a1 + 40)];
}

void sub_1000179CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000179E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CFURLPromiseCopyPhysicalURL();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v10 = v6;

  v7 = [*(a1 + 32) _buildUbiquityMetadataDict:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100018BE8(id a1)
{
  v4 = +[NSBundle mainBundle];
  v1 = [v4 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v2 = [v1 copy];
  v3 = qword_1002749D0;
  qword_1002749D0 = v2;
}

void sub_100018CA4(id a1)
{
  v3[0] = @"BKLibrary.ReadingNow";
  v3[1] = @"BKAudioBookSkipForward";
  v3[2] = @"BKAudioBookSkipBackward";
  v3[3] = @"BCOverrideRecentBookAlgorithm";
  v3[4] = @"BCTimeThresholdPromotionOverride";
  v1 = [NSArray arrayWithObjects:v3 count:5];
  v2 = qword_1002749E0;
  qword_1002749E0 = v1;
}

void sub_100018F44(id a1)
{
  v1 = +[NSProcessInfo processInfo];
  v3 = [v1 environment];

  v2 = [v3 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  byte_1002749F0 = v2 != 0;
}

void sub_100019048(id a1)
{
  v1 = NSTemporaryDirectory();
  v5 = [v1 stringByAppendingPathComponent:@"BDSUnitTest"];

  v2 = +[NSFileManager defaultManager];
  [v2 removeItemAtPath:v5 error:0];

  v3 = [NSURL fileURLWithPath:v5];
  v4 = qword_100274A10;
  qword_100274A10 = v3;
}

void sub_10001928C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000192B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_10000DE28(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSWidgetTimelineController - reload timeline", v12, 2u);
  }

  v6 = [WeakRetained timelineController];
  v7 = [v6 reloadTimelineWithReason:@"bookdatastored"];

  if (v7)
  {
    v9 = sub_10000DE28(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001BDD80(v7, v9);
    }
  }

  v10 = objc_retainBlock(v3);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }
}

void sub_100019808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100019960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019BAC(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v6 = sub_10000DE28(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 40) count];
    v8 = *(a1 + 40);
    v12 = 134218242;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating current widget data to %ld with: %@", &v12, 0x16u);
  }

  v9 = [*(a1 + 48) copy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;
}

void sub_100019D64(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _moc_updateAndMonitorBookWidgetInfo];
}

void sub_10001ADB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) progressFetchedResultsController];

  v4 = *(a1 + 32);
  if (v2 == v3)
  {
    v13 = [*(a1 + 32) fetchedObjects];
    v14 = sub_10000DE28(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Recieved callback from FRC that reading progress has changed.", v24, 2u);
    }

    v15 = *(a1 + 40);
    v16 = [v15 currentWidgetDatasByAssetID];
    LOBYTE(v15) = [v15 _moc_updateWidgetDatas:v16 fromAssetDetails:v13];

    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = [*(a1 + 40) fetchedResultsController];

    if (v4 != v5)
    {
      goto LABEL_15;
    }

    v7 = sub_10000DE28(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received callback from FRC that WidgetInfo list has changed.", buf, 2u);
    }

    v8 = [*(a1 + 40) _newWidgetInfoFetchRequest];
    [v8 setFetchLimit:3];
    v22 = 0;
    v9 = [v8 execute:&v22];
    v10 = v22;
    v11 = v10;
    if (v9)
    {
      v12 = [*(a1 + 40) _moc_updateWidgetDataFromWidgetInfo:v9];

      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_11:
      v17 = 1;
LABEL_17:
      [*(a1 + 40) _saveWidgetDatasWithWidgetDatasHaveChanged:v17];
      return;
    }

    v18 = sub_10000DE28(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1001BDE70(v11, v18);
    }
  }

LABEL_15:
  v19 = [*(a1 + 40) dataFileDataIsNil];
  if (v19)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v20 = sub_10000DE28(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No changes as result of FRC, not notifying widget.", v21, 2u);
  }
}

void sub_10001B0F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _moc_updateAndMonitorBookWidgetInfo];
}

void sub_10001B27C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _moc_updateAndMonitorBookWidgetInfo];
}

void sub_10001CBE8(id a1)
{
  qword_100274A20 = objc_alloc_init(BDSServiceNotificationStoreDataFile);

  _objc_release_x1();
}

void sub_10001D070(id a1)
{
  v1 = +[BUAppGroup books];
  v2 = [v1 containerURL];

  v3 = [v2 URLByAppendingPathComponent:@"Library/Application Support/bookdatastored" isDirectory:1];
  v4 = [v3 URLByAppendingPathComponent:@"BDSServiceNotificationStoreData.plist"];
  v5 = qword_100274A28;
  qword_100274A28 = v4;

  v6 = +[NSFileManager defaultManager];
  v11 = 0;
  v7 = [v6 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v10 = sub_1000023E8(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE240();
    }
  }
}

void sub_10001D1D8(id a1)
{
  v10 = +[BCCloudKitConfiguration configuration];
  v1 = [[BCCloudKitController alloc] initWithConfiguration:v10];
  v2 = qword_100274A38;
  qword_100274A38 = v1;

  v3 = [v10 containerIdentifier];
  v4 = [CKContainer containerWithIdentifier:v3];

  v5 = [v10 appBundleIdentifier];
  [v4 setSourceApplicationBundleIdentifier:v5];

  v6 = +[_TtC14bookdatastored13BDSSyncEngine shared];
  v7 = [v4 privateCloudDatabase];
  [v6 setDatabase:v7 config:v10];

  v8 = [BCCloudKitTransactionManager alloc];
  v9 = [(BCCloudKitTransactionManager *)v8 initWithCloudKitController:qword_100274A38];
  [qword_100274A38 setTransactionManager:v9];
}

void sub_10001D34C(id a1)
{
  v1 = [BCCloudKitController alloc];
  v2 = +[BCCloudKitSecureConfiguration configuration];
  v3 = [(BCCloudKitController *)v1 initWithConfiguration:v2];
  v4 = qword_100274A48;
  qword_100274A48 = v3;

  v5 = [BCCloudKitTransactionManager alloc];
  v6 = [(BCCloudKitTransactionManager *)v5 initWithCloudKitController:qword_100274A48];
  [qword_100274A48 setTransactionManager:v6];
}

void sub_10001D598(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - registerForSecureNotifications", buf, 2u);
  }

  v3 = [*(a1 + 32) containerIdentifier];
  v4 = [CKContainer containerWithIdentifier:v3];

  v5 = [*(a1 + 32) appBundleIdentifier];
  [v4 setSourceApplicationBundleIdentifier:v5];

  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001D6EC;
    v9[3] = &unk_10023FDD0;
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = v6;
    v13 = v7;
    v11 = v8;
    v12 = v4;
    [v12 accountStatusWithCompletionHandler:v9];
  }
}

void sub_10001D6EC(uint64_t a1, uint64_t a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D7C0;
  block[3] = &unk_10023FDA8;
  v9 = a3;
  v5 = *(a1 + 56);
  v12 = a2;
  v13 = v5;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7 = v9;
  dispatch_async(v6, block);
}

void sub_10001D7C0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 1)
  {
    if (!v1)
    {
      v12 = sub_100002660(a1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BCCloudKitController - CKAccountStatusCouldNotDetermine: %@", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = [v14 userInfo];
        v2 = [v15 objectForKeyedSubscript:CKErrorRetryAfterKey];

        if (v2)
        {
          [v2 doubleValue];
          v17 = dispatch_time(0, (v16 * 1000000000.0));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001DB24;
          block[3] = &unk_10023F980;
          block[4] = *(a1 + 64);
          dispatch_after(v17, &_dispatch_main_q, block);
          goto LABEL_19;
        }
      }

      v2 = sub_100002660(v14);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v18 = *(a1 + 32);
      *buf = 138543362;
      v23 = v18;
      v3 = "BCCloudKitController - Could not determine iCloud status.  Not syncing anything.  Account status error=%{public}@";
      v4 = v2;
      v5 = OS_LOG_TYPE_INFO;
      v11 = 12;
      goto LABEL_18;
    }

    if (v1 != 1)
    {
      return;
    }

    v7 = sub_100002660(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BCCloudKitController - Account Available", buf, 2u);
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) privateCloudDatabase];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001DB84;
    v19[3] = &unk_10023F6B0;
    v10 = *(a1 + 48);
    v20 = *(a1 + 40);
    [v8 connectUserTo:v9 container:v10 updateSubscription:1 completion:&stru_10023FD80 subscriptionCompletion:v19];

    v2 = v20;
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = sub_100002660(a1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v3 = "BCCloudKitController - CKAccountStatusRestricted";
LABEL_16:
          v4 = v2;
          v5 = OS_LOG_TYPE_INFO;
LABEL_17:
          v11 = 2;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v4, v5, v3, buf, v11);
        }

        break;
      case 3:
        v2 = sub_100002660(a1);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v3 = "BCCloudKitController - CKAccountStatusNoAccount";
          goto LABEL_16;
        }

        break;
      case 4:
        v2 = sub_100002660(a1);
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          break;
        }

        *buf = 0;
        v3 = "BCCloudKitController - CKAccountStatusTemporarilyUnavailable. Account Temporarily Unavailable";
        v4 = v2;
        v5 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      default:
        return;
    }
  }

LABEL_19:
}

void sub_10001DB2C(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002660(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE2D0();
    }
  }
}

id sub_10001DB84(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - connectUserTo:container: subscription completed.", v4, 2u);
  }

  return [*(a1 + 32) detach];
}

void sub_10001E0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E108(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_10000DC08(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 configuration];
      v8 = [v7 containerIdentifier];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedAttachment", buf, 0xCu);
    }

    v9 = [v5 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001E2B0;
    v12[3] = &unk_10023FE48;
    objc_copyWeak(&v14, (a1 + 32));
    v13 = v3;
    dispatch_async(v9, v12);

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = objc_retainBlock(v3);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

void sub_10001E2B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained p_updateAttachment];

  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_10001E31C(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002660(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001BE338();
  }
}

void sub_10001E370(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_10000DC08(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 configuration];
      v8 = [v7 containerIdentifier];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedChangeAttachment", buf, 0xCu);
    }

    v9 = [v5 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001E514;
    v12[3] = &unk_10023FED8;
    v13 = v5;
    v14 = v3;
    dispatch_async(v9, v12);
  }

  else
  {
    v10 = objc_retainBlock(v3);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

void sub_10001E514(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001E5B8;
  v3[3] = &unk_10023FEB0;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 _updateAccountCacheWithCompletionBlock:v3];
}

void sub_10001E5B8(uint64_t a1, int a2)
{
  v4 = sub_10000DC08(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 containerIdentifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) _coalescedChangeAttachment hasChanged:%{BOOL}d", &v9, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) p_accountReallyChangedWithCompletion:*(a1 + 40)];
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_10001E6D4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_10000DC08(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001BE3A0();
  }
}

unsigned __int8 *sub_10001E8A8(unsigned __int8 *result)
{
  *(*(result + 4) + 11) = result[40];
  v2 = *(result + 4);
  v3 = result[41];
  if (*(v2 + 10) != v3)
  {
    v4 = result;
    *(v2 + 10) = v3;
    [*(result + 4) _reestablishSyncEngineSalt];
    v5 = *(v4 + 4);

    return [v5 aq_requestUpdateAttachment];
  }

  return result;
}

void sub_10001EBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001EC04(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained accessQueue];

  if (v7)
  {
    v9 = [WeakRetained accessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001ED18;
    v11[3] = &unk_10023FF68;
    objc_copyWeak(&v12, (a1 + 40));
    v13 = a2;
    v14 = a3;
    dispatch_async(v9, v11);

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = sub_100002660(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE408(a1);
    }
  }
}

void sub_10001ED18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 40) reachable:*(a1 + 41)];
}

void sub_10001F16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F1A0(uint64_t a1, char a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained accessQueue];

  if (v7)
  {
    v9 = [WeakRetained accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F2BC;
    block[3] = &unk_10023FFE0;
    objc_copyWeak(&v12, (a1 + 40));
    block[4] = *(a1 + 32);
    v13 = a2;
    v14 = a3;
    dispatch_async(v9, block);

    objc_destroyWeak(&v12);
  }

  else
  {
    v10 = sub_100002660(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE4B0(a1);
    }
  }
}

void sub_10001F2BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained gettingAccountInfo];
  if (v3)
  {
    goto LABEL_26;
  }

  v4 = sub_10000DC08(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 containerIdentifier];
    if (*(a1 + 48))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 138543874;
    v33 = v6;
    v34 = 2114;
    v35 = v7;
    v36 = 1024;
    v37 = [WeakRetained enableCloudSync];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - Update Attachment Current State: attached:%{public}@ enableCloudSync:%{BOOL}d", buf, 0x1Cu);
  }

  if (*(a1 + 48))
  {
    goto LABEL_8;
  }

  v8 = [WeakRetained enableCloudSync];
  if ((v8 & 1) == 0)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
LABEL_17:
      v16 = sub_10000DC08(v8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 32) configuration];
        v18 = [v17 containerIdentifier];
        *buf = 138543362;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BCCloudKitController (%{public}@) - Update Attachment: No change to attachment.", buf, 0xCu);
      }

      if ([WeakRetained enableCloudSync])
      {
        v19 = [WeakRetained container];
        if (v19)
        {
          v20 = *(a1 + 48);

          if (v20)
          {
            v22 = sub_10000DC08(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [*(a1 + 32) configuration];
              v24 = [v23 containerIdentifier];
              v25 = [*(a1 + 32) configuration];
              v26 = [v25 dbSubscriptionID];
              *buf = 138543618;
              v33 = v24;
              v34 = 2114;
              v35 = v26;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: Signaling fetch changes for %{public}@", buf, 0x16u);
            }

            v27 = [WeakRetained transactionManager];
            v28 = [*(a1 + 32) configuration];
            v29 = [v28 dbSubscriptionID];
            [v27 signalFetchChangesTransaction:v29];
          }
        }
      }

      [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 48) reachable:*(a1 + 49)];
      goto LABEL_26;
    }

LABEL_8:
    v8 = [WeakRetained enableCloudSync];
    if ((v8 & 1) == 0)
    {
      v9 = sub_10000DC08(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) configuration];
        v11 = [v10 containerIdentifier];
        *buf = 138543362;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: detaching from database controller", buf, 0xCu);
      }

      [*(a1 + 32) setContainer:0];
      v12 = [WeakRetained privateCloudDatabaseController];
      [v12 detach];

      [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocksWithAttached:*(a1 + 48) reachable:*(a1 + 49)];
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v13 = sub_10000DC08(v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) configuration];
    v15 = [v14 containerIdentifier];
    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Update Attachment: getting account info", buf, 0xCu);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001F75C;
  v30[3] = &unk_10023FFB8;
  v30[4] = *(a1 + 32);
  objc_copyWeak(&v31, (a1 + 40));
  [WeakRetained p_getAccountInfoWithCompletion:v30];
  objc_destroyWeak(&v31);
LABEL_26:
}

void sub_10001F75C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_10000DC08(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BE558(a1);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained p_flushPendingRequestUpdateAttachmentCompletionBlocks];
  }
}

void sub_10001FC48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001FD40;
    v9[3] = &unk_100240008;
    v6 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = a2;
    v10 = v5;
    [v6 accountInfoWithCompletionHandler:v9];
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, a2, v5, 0, 0);
    }
  }
}

void sub_10001FD40(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(a1 + 48), *(a1 + 32), v8, v5);
  }
}

void sub_1000200B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000200D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained accessQueue];

  if (v10)
  {
    v11 = [WeakRetained accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002020C;
    block[3] = &unk_1002400A8;
    objc_copyWeak(v16, (a1 + 40));
    v16[1] = a2;
    v13 = v7;
    v14 = v8;
    v15 = *(a1 + 32);
    dispatch_async(v11, block);

    objc_destroyWeak(v16);
  }
}

void sub_10002020C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained container];

    if (v4)
    {
      v5 = [v3 privateCloudDatabaseController];
      v6 = [v3 serviceMode];
      v7 = [v3 configuration];
      v8 = v7;
      if (v6)
      {
        [v7 serviceZones];
      }

      else
      {
        [v7 appZones];
      }
      v9 = ;

      v10 = (a1 + 64);
      v11 = sub_10000DC08([v3 setCurrentStatus:*(a1 + 64)]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1001BE604((a1 + 64), v11);
      }

      v13 = *v10;
      if (*v10 <= 1)
      {
        if (!v13)
        {
          v28 = sub_100002660(v12);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            *buf = 138543362;
            v57 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - CKAccountStatusCouldNotDetermine: %{public}@", buf, 0xCu);
          }

          [v5 detach];
          [v3 setGettingAccountInfo:0];
          v31 = (a1 + 32);
          v30 = *(a1 + 32);
          if (v30 && ([v30 userInfo], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "objectForKeyedSubscript:", CKErrorRetryAfterKey), v33 = objc_claimAutoreleasedReturnValue(), v32, v33))
          {
            [v33 doubleValue];
            v35 = dispatch_time(0, (v34 * 1000000000.0));
            v36 = [v3 accessQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100020810;
            block[3] = &unk_100240058;
            objc_copyWeak(&v55, (a1 + 56));
            dispatch_after(v35, v36, block);

            objc_destroyWeak(&v55);
          }

          else
          {
            v37 = sub_100002660(v30);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_1001BE680(v31, v37, v38, v39, v40, v41, v42, v43);
            }
          }

          goto LABEL_30;
        }

        if (v13 == 1)
        {
          v17 = sub_100002660(v12);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v3 configuration];
            v19 = [v18 containerIdentifier];
            *buf = 138543362;
            v57 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BCCloudKitController - Account Available for %{public}@", buf, 0xCu);
          }

          v20 = [v3 configuration];
          if ([v20 requiresDeviceToDeviceEncryption])
          {
            v21 = [*(a1 + 40) supportsDeviceToDeviceEncryption];

            if ((v21 & 1) == 0)
            {
              v23 = sub_100002660(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v3 configuration];
                v25 = [v24 containerIdentifier];
                *buf = 138543362;
                v57 = v25;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Container %{public}@ requires device-to-device encryption but user's account does not support it.  Not connecting.", buf, 0xCu);
              }

              goto LABEL_29;
            }
          }

          else
          {
          }

          v44 = [v3 configuration];
          v45 = [v44 shouldPerformDatabaseSubscriptionForServiceMode:v6];

          v46 = [*(a1 + 48) privateCloudDatabase];
          v47 = *(a1 + 48);
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100020850;
          v50[3] = &unk_100240080;
          v51 = v5;
          v52 = v9;
          v53 = v3;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100020950;
          v48[3] = &unk_10023F6B0;
          v49 = v53;
          [v51 connectUserTo:v46 container:v47 updateSubscription:v45 completion:v50 subscriptionCompletion:v48];
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v14 = sub_100002660(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(a1 + 32);
              *buf = 138543362;
              v57 = v26;
              v16 = "Account Restricted.  Not syncing anything.  Account status error=%{public}@";
              goto LABEL_27;
            }

LABEL_28:

LABEL_29:
            [v5 detach];
            [v3 setGettingAccountInfo:0];
            break;
          case 3:
            v14 = sub_100002660(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(a1 + 32);
              *buf = 138543362;
              v57 = v27;
              v16 = "Books isn't signed into iCloud.  Not syncing anything.  Account status error=%{public}@";
              goto LABEL_27;
            }

            goto LABEL_28;
          case 4:
            v14 = sub_100002660(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 32);
              *buf = 138543362;
              v57 = v15;
              v16 = "Account Temporarily Unavailable.  Not syncing anything.  Account status error=%{public}@";
LABEL_27:
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
              goto LABEL_28;
            }

            goto LABEL_28;
        }
      }

LABEL_30:
    }
  }
}

void sub_100020810(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_getAccountInfo];
}

void sub_100020850(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100020944;
    v10[3] = &unk_10023F6B0;
    v11 = *(a1 + 48);
    [v6 attachToZones:v7 completion:v10];

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [*(a1 + 48) setGettingAccountInfo:0];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v9 = sub_100002660(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1001BE6F0();
  }

LABEL_8:
}

void sub_100020950(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 containerIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BCCloudKitController - connectUserToContainer subscription completed for %{public}@", &v5, 0xCu);
  }
}

id sub_100020E70(uint64_t a1)
{
  result = [*(a1 + 32) enableCloudSync];
  if (result)
  {
    [*(a1 + 32) _reestablishSyncEngineSaltIfNeeded];
    v3 = *(a1 + 32);

    return [v3 aq_requestUpdateAttachment];
  }

  return result;
}

void sub_1000211BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000211E4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained transactionManager];
    [v6 signalFetchChangesTransaction:*(a1 + 32)];
  }

  else
  {
    v7 = [WeakRetained accessQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000212C0;
    v8[3] = &unk_10023F938;
    v8[4] = v5;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
  }
}

void sub_1000212C0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) enableCloudSync];
  v4 = v3;
  v5 = sub_10000DC08(v3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) configuration];
      v8 = [v7 containerIdentifier];
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudKitController (%{public}@) - Asked to fetch changes for %{public}@ while detached - attempt attachment.", &v10, 0x16u);
    }

    [*v2 aq_requestUpdateAttachment];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE758(v2);
    }
  }
}

void sub_1000213EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained enableCloudSync])
  {
    [WeakRetained _reestablishSyncEngineSaltIfNeeded];
  }
}

void sub_100021618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100021638(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained container];

  v4 = v3 == 0;
  v6 = sub_10000DC08(v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BE8C4(v7);
    }

    v11 = objc_retainBlock(a1[5]);
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a1[4] currentUserIDName];
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = [WeakRetained currentStatus];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_updateAccountCacheWithTimeout fetchUserRecordIDWithCompletionHandler currentUserIDName:%@ status:%ld ", buf, 0x16u);
    }

    v9 = [WeakRetained container];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021838;
    v14[3] = &unk_100240198;
    objc_copyWeak(&v16, a1 + 7);
    v14[4] = a1[4];
    v13 = *(a1 + 5);
    v10 = v13;
    v15 = v13;
    [v9 fetchUserRecordIDWithCompletionHandler:v14];

    objc_destroyWeak(&v16);
  }
}

void sub_100021838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained accessQueue];

  if (v8)
  {
    v10 = [WeakRetained accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000219C8;
    block[3] = &unk_100240170;
    v17 = v5;
    v11 = WeakRetained;
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    v22 = *(a1 + 48);
    v20 = v6;
    objc_copyWeak(&v23, (a1 + 56));
    v21 = *(a1 + 40);
    dispatch_async(v10, block);

    objc_destroyWeak(&v23);
    v13 = v17;
  }

  else
  {
    v14 = sub_10000DC08(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001BE908(v14);
    }

    v15 = objc_retainBlock(*(a1 + 40));
    v13 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void sub_1000219C8(uint64_t a1)
{
  v2 = [*(a1 + 32) recordName];
  v3 = [*(a1 + 40) currentUserIDName];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v14 = sub_10000DC08(v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 48) configuration];
      v16 = [v15 containerIdentifier];
      v17 = [*(a1 + 48) currentUserIDName];
      v18 = [*(a1 + 32) recordName];
      *buf = 138543874;
      v38 = v16;
      v39 = 2112;
      v40 = v17;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) currentUserIDName from:%@ to:%@ has changed! ", buf, 0x20u);
    }

    v19 = [*(a1 + 32) recordName];
    [*(a1 + 40) setCurrentUserIDName:v19];

    goto LABEL_13;
  }

  v6 = [*(a1 + 56) domain];
  v7 = [v6 isEqualToString:CKErrorDomain];

  if (!v7)
  {
    goto LABEL_14;
  }

  v9 = [*(a1 + 56) code];
  if (v9 != 9)
  {
    v20 = sub_10000DC08(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 48) configuration];
      v22 = [v21 containerIdentifier];
      v23 = [*(a1 + 48) currentUserIDName];
      *buf = 138543618;
      v38 = v22;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(%{public}@) Unknown error while fetching account. Assuming we had a change with currentUserIDName:%@ ", buf, 0x16u);
    }

LABEL_13:
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_14;
  }

  [*(a1 + 40) setCurrentUserIDName:0];
  v10 = [*(a1 + 40) setCurrentStatus:0];
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v11 = sub_10000DC08(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 48) configuration];
    v13 = [v12 containerIdentifier];
    *buf = 138543362;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) CKErrorNotAuthenticated  resetting current account values ", buf, 0xCu);
  }

LABEL_14:
  v24 = a1 + 72;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v25 = sub_10000DC08(v8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BE94C(a1, a1 + 72, v25);
    }

    v26 = objc_retainBlock(*(a1 + 64));
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, *(*(*v24 + 8) + 24));
    }
  }

  else
  {
    v28 = [*(a1 + 40) container];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100021E18;
    v33[3] = &unk_100240148;
    objc_copyWeak(&v36, (a1 + 80));
    v31 = *(a1 + 40);
    v29 = v31.i64[0];
    v34 = vextq_s8(v31, v31, 8uLL);
    v32 = *(a1 + 64);
    v30 = v32;
    v35 = v32;
    [v28 accountStatusWithCompletionHandler:v33];

    objc_destroyWeak(&v36);
  }
}

void sub_100021E18(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained accessQueue];

  if (v5)
  {
    v6 = [WeakRetained accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021F50;
    block[3] = &unk_100240120;
    v19 = a2;
    v7 = WeakRetained;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v13 = *(a1 + 48);
    v10 = v13;
    v18 = v13;
    dispatch_async(v6, block);
  }

  else
  {
    v11 = objc_retainBlock(*(a1 + 48));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, *(*(*(a1 + 56) + 8) + 24));
    }
  }
}

void sub_100021F50(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) currentStatus];
  v4 = sub_10000DC08(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v2 == v3)
  {
    if (v5)
    {
      sub_1001BEAFC(a1);
    }
  }

  else
  {
    if (v5)
    {
      sub_1001BEA1C(a1);
    }

    [*(a1 + 32) setCurrentStatus:*(a1 + 72)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v6 = objc_retainBlock(*(a1 + 56));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(*(*(a1 + 64) + 8) + 24));
  }
}

void sub_10002242C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100022458(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessQueue];

  if (v3)
  {
    v5 = [WeakRetained accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002256C;
    block[3] = &unk_10023F6B0;
    v10 = WeakRetained;
    dispatch_async(v5, block);

    v6 = v10;
  }

  else
  {
    v6 = sub_100002660(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BEE68(v6);
    }
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }
}

id sub_10002256C(uint64_t a1)
{
  [*(a1 + 32) setContainer:0];
  [*(a1 + 32) aq_setGettingAccountInfo:0 willRetryUpdateAttachment:1];
  v2 = *(a1 + 32);

  return [v2 aq_requestUpdateAttachment];
}

void sub_100022760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002278C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained accessQueue];

  if (v3)
  {
    v4 = [WeakRetained accessQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100022858;
    v7[3] = &unk_10023F938;
    v5 = WeakRetained;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

id sub_100022858(uint64_t a1)
{
  [*(a1 + 32) setContainer:0];
  [*(a1 + 32) aq_setGettingAccountInfo:0 willRetryUpdateAttachment:1];
  [*(a1 + 40) _reestablishSyncEngineSalt];
  v2 = *(a1 + 32);

  return [v2 aq_requestUpdateAttachment];
}

void sub_100022F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100022FA4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 containerIdentifier];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_coalescedArchive (%@)", buf, 0xCu);
    }

    v8 = [v5 accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100023150;
    block[3] = &unk_100240228;
    objc_copyWeak(&v14, (a1 + 40));
    v12 = *(a1 + 32);
    v13 = v3;
    dispatch_async(v8, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v9 = objc_retainBlock(v3);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

void sub_100023150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [WeakRetained p_archiveToData];
    [v2 writeToURL:*(a1 + 32) atomically:1];
  }

  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_1000231E0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002660(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "did not call completion after 10s in %{public}@", &v4, 0xCu);
  }
}

void sub_10002328C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 containerIdentifier];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_coalescedZoneFetch (%@)", buf, 0xCu);
    }

    v8 = [v5 accessQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100023424;
    v11[3] = &unk_10023FE48;
    objc_copyWeak(&v13, (a1 + 32));
    v12 = v3;
    dispatch_async(v8, v11);

    objc_destroyWeak(&v13);
  }

  else
  {
    v9 = objc_retainBlock(v3);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

void sub_100023424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained database], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100023548;
    v7[3] = &unk_100240298;
    v8 = v3;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    [v8 p_fetchZoneChanges:v7];

    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = objc_retainBlock(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

void sub_100023548(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_100002660(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001BEEAC();
    }
  }

  v6 = [a1[4] accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023640;
  v7[3] = &unk_10023FE48;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  dispatch_async(v6, v7);

  objc_destroyWeak(&v9);
}

void sub_100023640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained attachedToContainer] & 1) == 0 && objc_msgSend(v3, "fetchRecordZoneChangesSuccess"))
  {
    v4 = [v3 database];

    v6 = sub_100002660(v5);
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v3 containerIdentifier];
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - attached to container: %@", &v11, 0xCu);
      }

      [v3 setAttachedToContainer:1];
      [v3 p_informObserversOfAttachmentChange];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001BEF14(v3);
      }
    }
  }

  v9 = objc_retainBlock(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_1000237A0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002660(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001BEFA0();
  }
}

void sub_100023A14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100023B10;
    v5[3] = &unk_100240308;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    [WeakRetained p_fetchDatabaseChanges:v5];

    objc_destroyWeak(&v7);
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 32));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_100023B10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!v3)
    {
      v11 = [WeakRetained accessQueue];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100023C78;
      v12[3] = &unk_10023FE48;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = *(a1 + 32);
      dispatch_async(v11, v12);

      objc_destroyWeak(&v14);
      goto LABEL_12;
    }

    v6 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF008(v5);
    }

    v7 = objc_retainBlock(*(a1 + 32));
    v8 = v7;
    if (v7)
    {
      v9 = v7[2];
LABEL_9:
      v9();
    }
  }

  else
  {
    v10 = objc_retainBlock(*(a1 + 32));
    v8 = v10;
    if (v10)
    {
      v9 = v10[2];
      goto LABEL_9;
    }
  }

LABEL_12:
}

void sub_100023C78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 containerIdentifier];
      v6 = [v3 changedRecordZoneIDs];
      v7 = [v6 allObjects];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003104C;
      v16 = &unk_100240B70;
      v17 = objc_alloc_init(NSMutableArray);
      v8 = v17;
      [v7 enumerateObjectsUsingBlock:buf];
      v9 = [v8 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in fetchChangesWithCompletion for changedRecordZoneIDs:%{public}@", buf, 0x16u);
    }

    v10 = [v3 coalescedZoneFetch];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100023EC4;
    v13[3] = &unk_1002402E0;
    v14 = *(a1 + 32);
    [v10 signalWithCompletion:v13];
  }

  else
  {
    v11 = objc_retainBlock(*(a1 + 32));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0);
    }
  }
}

void sub_100023EC4(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100024024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained database];

  v5 = sub_100002660(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BF0AC(WeakRetained, v6);
    }

    v7 = [WeakRetained database];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000241D8;
    v13[3] = &unk_100240330;
    v8 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v7 fetchRecordWithID:v8 completionHandler:v13];

    v9 = v14;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = [WeakRetained attachedToContainer];
      v11 = @"NO";
      if (v10)
      {
        v11 = @"YES";
      }

      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WARNING: BCCloudKitDatabaseController - fetchRecordForRecordID called without a database.  attached: %@", buf, 0xCu);
    }

    v12 = objc_retainBlock(*(a1 + 40));
    v9 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void sub_1000241D8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_retainBlock(*(a1 + 32));
  if (v5)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v7;
    }

    (v5)[2](v5, v6);
  }
}

void sub_100024338(uint64_t a1)
{
  v2 = [*(a1 + 32) containerIdentifier];
  if (v2 && (v3 = v2, [*(a1 + 32) containerIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *(a1 + 40)), v4, v3, (v5 & 1) == 0))
  {
    v8 = sub_100002660(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) containerIdentifier];
      v10 = *(a1 + 40);
      *buf = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - containerIdentifer changed from: %{public}@ to: %{public}@", buf, 0x16u);
    }

    if ((*(a1 + 56) & 1) == 0)
    {
      v11 = [*(a1 + 32) containerIdentifier];
      v12 = [CKContainer containerWithIdentifier:v11];

      [*(a1 + 32) p_unsubscribeToContainer:v12];
    }

    [*(a1 + 32) setHasSubscription:0];
    [*(a1 + 32) setServerChangeToken:0];
    [*(a1 + 32) setContainerIdentifier:0];
    [*(a1 + 32) p_scheduleArchiveWithCompletion:&stru_100240350];
    v13 = objc_retainBlock(*(a1 + 48));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 1);
    }
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 48));
    if (v7)
    {
      v15 = v7;
      (*(v7 + 2))(v7, 0);
      v7 = v15;
    }
  }
}

void sub_100024548(id a1)
{
  v1 = sub_100002660(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (willAttachToContainer)", v2, 2u);
  }
}

void sub_10002475C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = sub_100002660(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF150();
    }

    v12 = objc_retainBlock(*(a1 + 64));
    v8 = v12;
    if (v12)
    {
      (v12[2].isa)(v12, 0, v7);
    }
  }

  else
  {
    v8 = [*(a1 + 32) accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000248D8;
    block[3] = &unk_1002403C0;
    v14 = *(a1 + 40);
    v15 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    v20 = *(a1 + 72);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    dispatch_async(v8, block);
  }
}

void sub_1000248D8(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 138543874;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - user recordID: %{public}@ database:%{public}@", &v12, 0x20u);
  }

  objc_storeStrong((*(a1 + 56) + 16), *(a1 + 48));
  objc_storeStrong((*(a1 + 56) + 24), *(a1 + 32));
  *(*(a1 + 56) + 13) = 0;
  v6 = [*(a1 + 32) containerIdentifier];
  v7 = [v6 copy];
  v8 = *(a1 + 56);
  v9 = *(v8 + 80);
  *(v8 + 80) = v7;

  objc_storeStrong((*(a1 + 56) + 88), *(a1 + 40));
  [*(a1 + 56) p_scheduleArchiveWithCompletion:&stru_100240398];
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 56) p_subscribeWithCompletion:*(a1 + 64)];
  }

  v10 = objc_retainBlock(*(a1 + 72));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 1, 0);
  }
}

void sub_100024A5C(id a1)
{
  v1 = sub_100002660(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (connectUserTo)", v2, 2u);
  }
}

void sub_100024C0C(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024D74;
  v12[3] = &unk_10023FED8;
  v13 = [[BDSOSTransaction alloc] initWithTransactionName:"attachToZone"];
  v14 = *(a1 + 48);
  v2 = v13;
  v3 = objc_retainBlock(v12);
  v4 = [*(a1 + 32) accessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100024DD4;
  v8[3] = &unk_100240488;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v4;
  v11 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v7, v8);
}

void sub_100024D74(uint64_t a1)
{
  [*(a1 + 32) endTransaction];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_100024DD4(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v25 = v3;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudKitDatabaseController (%@)] 1. attachToZones Creating Record Zones - zones:%@", buf, 0x16u);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100024FE8;
  v22[3] = &unk_100240410;
  v7 = v5;
  v23 = v7;
  [v6 enumerateObjectsUsingBlock:v22];
  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = *(a1 + 32);
  v13 = *(v12 + 112);
  *(v12 + 112) = v11;

  v14 = *(a1 + 32);
  v15 = [v14 desiredRecordZoneIDs];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002506C;
  v18[3] = &unk_100240460;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v19 = v16;
  v20 = v17;
  v21 = *(a1 + 56);
  [v14 p_createRecordZones:v15 completionHandler:v18];
}

void sub_100024FE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CKRecordZoneID alloc] initWithZoneName:v3 ownerName:CKCurrentUserDefaultName];

  [*(a1 + 32) addObject:v4];
}

void sub_10002506C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100025298;
    v16[3] = &unk_10023FED8;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v16[4] = *(a1 + 40);
    v17 = v9;
    dispatch_async(v8, v16);

    goto LABEL_14;
  }

  if (!sub_1000254B0(v3))
  {
    v10 = sub_100031154(@"BDSCloudKitClientError", 2002, v4);
    if (sub_100025690(v4))
    {
      v11 = 2006;
    }

    else
    {
      v12 = sub_100025880(v4);
      if (!v12)
      {
        v14 = sub_100002660(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [*(a1 + 40) containerIdentifier];
          *buf = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v4;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[BCCloudKitDatabaseController (%@)] attachToZones creating record zones failed, ERROR:%@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      v11 = 2007;
    }

    v13 = sub_100031154(@"BDSCloudKitClientError", v11, v4);

    v10 = v13;
LABEL_13:
    [*(a1 + 40) zonesTemporarilyUnreadableWithError:v10 completion:*(a1 + 48)];

    goto LABEL_14;
  }

  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
  v7 = [v6 allKeys];

  [*(a1 + 40) zonesUnreadableDueToMissingD2DEncryptionIdentity:v7 completion:*(a1 + 48)];
LABEL_14:
}

void sub_100025298(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100025328;
  v2[3] = &unk_100240438;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 p_createRecordIDSaltWithCompletion:v2];
}

void sub_100025328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) detachWithError:a2 completion:0];
    v4 = objc_retainBlock(*(a1 + 40));
    if (v4)
    {
      v5 = v4;
      v4[2]();
      v4 = v5;
    }
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100025410;
    v6[3] = &unk_100240438;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v3 fetchChangesWithCompletion:v6];
  }
}

void sub_100025410(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = sub_100031154(@"BDSCloudKitClientError", 2004, v6);
    [*(a1 + 32) detachWithError:v3 completion:0];
  }

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

uint64_t sub_1000254B0(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (!v3)
  {
    goto LABEL_17;
  }

  if ([v1 code] == 112)
  {
    v4 = 1;
    goto LABEL_18;
  }

  if ([v1 code] != 2)
  {
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  v5 = [v1 userInfo];
  v6 = [v5 objectForKey:CKPartialErrorsByItemIDKey];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 allValues];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 domain];
        if ([v13 isEqualToString:CKErrorDomain])
        {
          v14 = [v12 code];

          if (v14 == 112)
          {
            v4 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v4 = 0;
LABEL_19:

LABEL_18:
  return v4;
}

uint64_t sub_100025690(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = [v1 code];
  v5 = 1;
  if (v4 == 111 || v4 == 5008)
  {
    goto LABEL_19;
  }

  if ([v1 code] != 2)
  {
LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  v6 = [v1 userInfo];
  v7 = [v6 objectForKey:CKPartialErrorsByItemIDKey];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 allValues];
  v5 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v17 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 code];
        v13 = [v11 domain];
        v14 = [v13 isEqualToString:CKErrorDomain];

        if (v14)
        {
          if (v12 == 111 || v12 == 5008)
          {
            v5 = 1;
            goto LABEL_21;
          }
        }
      }

      v5 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

LABEL_21:
    v7 = v17;
  }

LABEL_19:
  return v5;
}

BOOL sub_100025880(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:CKErrorDomain];

  if (v3)
  {
    v4 = [v1 code];
    if (v4 == 2)
    {
      v6 = [v1 userInfo];
      v7 = [v6 objectForKey:CKPartialErrorsByItemIDKey];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 allValues];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 code];
            v15 = [v13 domain];
            v16 = [v15 isEqualToString:CKErrorDomain];

            if (v16 && v14 == 36)
            {
              v5 = 1;
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v5 = 0;
LABEL_16:
    }

    else
    {
      v5 = v4 == 36;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100025B38(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    v13 = 138543618;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - Detaching Container:%{public}@, ERROR:%@", &v13, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 112);
  *(v9 + 112) = 0;

  *(*(a1 + 32) + 13) = 0;
  [*(a1 + 32) p_informObserversOfAttachmentChange];
  v11 = objc_retainBlock(*(a1 + 48));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
  }
}

void sub_100025D20(uint64_t a1)
{
  v2 = +[BDSReachability isOffline];
  v3 = objc_retainBlock(*(a1 + 40));
  if (v3)
  {
    v4 = v3;
    v4[2](v4, [*(a1 + 32) attachedToContainer], v2 ^ 1);
    v3 = v4;
  }
}

void sub_100025EA0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[CKRecordZoneID alloc] initWithZoneName:*(a1 + 32) ownerName:CKCurrentUserDefaultName];
    v3 = *(a1 + 48);
    if (v2)
    {
      v8 = v2;
      v4 = [*(a1 + 40) recordZones];
      v5 = [v4 objectForKeyedSubscript:v8];
      v6 = [v5 recordZone];
      (*(v3 + 16))(v3, v6);

      return;
    }
  }

  else
  {
    v3 = *(a1 + 48);
  }

  v7 = *(v3 + 16);

  v7(v3, 0);
}

void sub_1000263D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100026414(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v8 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CKModifySubscriptionsOperation failed: %{public}@", buf, 0xCu);
    }

    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v10)
    {
      [v10 doubleValue];
      v12 = dispatch_time(0, (v11 * 1000000000.0));
      v13 = [v7 accessQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000265D0;
      v14[3] = &unk_10023F938;
      v15 = v7;
      v16 = *(a1 + 32);
      dispatch_after(v12, v13, v14);
    }
  }
}

void sub_100026954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002699C(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = sub_100002660(WeakRetained);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v9)
      {
        v10 = [a1[4] containerIdentifier];
        *buf = 138543618;
        v30 = v10;
        v31 = 2114;
        v32 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKModifySubscriptionsOperation (%{public}@) failed: %{public}@", buf, 0x16u);
      }

      v11 = [v5 userInfo];
      v12 = [v11 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v12)
      {
        [v12 doubleValue];
        v14 = dispatch_time(0, (v13 * 1000000000.0));
        v15 = [v7 accessQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100026CB8;
        block[3] = &unk_10023FED8;
        v27 = v7;
        v28 = a1[5];
        dispatch_after(v14, v15, block);

        v16 = v27;
      }

      else
      {
        v22 = objc_retainBlock(a1[5]);
        v16 = v22;
        if (v22)
        {
          (*(v22 + 2))(v22);
        }
      }

      goto LABEL_17;
    }

    if (v9)
    {
      v17 = [a1[4] containerIdentifier];
      *buf = 138543362;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKModifySubscriptionsOperation Success for: (%{public}@)", buf, 0xCu);
    }

    v18 = [v7 accessQueue];

    if (v18)
    {
      v19 = [v7 accessQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100026CC4;
      v23[3] = &unk_10023FED8;
      v24 = v7;
      v25 = a1[5];
      dispatch_async(v19, v23);

      goto LABEL_17;
    }
  }

  v20 = objc_retainBlock(a1[5]);
  v21 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20);
  }

LABEL_17:
}

id sub_100026CC4(uint64_t a1)
{
  [*(a1 + 32) setHasSubscription:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 p_scheduleArchiveWithCompletion:v3];
}

uint64_t sub_100027274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002728C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002660(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was deleted: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000273D4;
  v7[3] = &unk_10023F938;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1000273D4(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_10002742C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002660(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was purged: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027574;
  v7[3] = &unk_10023F938;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100027574(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1000275CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002660(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was deleted due to user encrypted data reset: %{public}@", buf, 0xCu);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  v5 = [*(a1 + 32) accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027714;
  v7[3] = &unk_10023F938;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100027714(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_10002776C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027824;
  v7[3] = &unk_10023F938;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

id sub_100027824(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation serverChangeToken was updated: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 40) setServerChangeToken:*(a1 + 32)];
  return [*(a1 + 40) p_scheduleArchiveWithCompletion:&stru_100240598];
}

void sub_1000278E4(id a1)
{
  v1 = sub_100002660(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (changeTokenUpdatedBlock)", v2, 2u);
  }
}

void sub_10002794C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027A18;
  block[3] = &unk_10023F720;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100027A18(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation zoneID was changed: %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) zoneName];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [*(a1 + 48) changedRecordZoneIDs];
    [v6 addObject:*(a1 + 32)];

    [*(a1 + 48) p_scheduleArchiveWithCompletion:&stru_1002405E0];
  }
}

void sub_100027B1C(id a1)
{
  v1 = sub_100002660(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneWithIDChangedBlock)", v2, 2u);
  }
}

void sub_100027B84(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(*(*(a1 + 48) + 8) + 40) count];
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(*(v10 + 8) + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100027E0C;
    v23[3] = &unk_100240630;
    v23[4] = v10;
    v8 = [v9 zonesDeletedOrReset:v11 completion:v23];
  }

  if (v7)
  {
    v12 = sub_100002660(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF2F0();
    }

    v13 = objc_retainBlock(*(a1 + 40));
    v14 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    v15 = v13[2];
LABEL_8:
    v15();
LABEL_9:

    goto LABEL_14;
  }

  v16 = sub_100002660(v8);
  v17 = v16;
  if (!v6)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "CKFetchDatabaseChangesOperation Success, but no serverChangeToken", buf, 2u);
    }

    v19 = objc_retainBlock(*(a1 + 40));
    v14 = v19;
    if (!v19)
    {
      goto LABEL_9;
    }

    v15 = v19[2];
    goto LABEL_8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation Success, serverChangeToken: %{public}@", buf, 0xCu);
  }

  v18 = [*(a1 + 32) accessQueue];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100027EBC;
  v20[3] = &unk_1002404D8;
  v20[4] = *(a1 + 32);
  v21 = v6;
  v22 = *(a1 + 40);
  dispatch_async(v18, v20);

LABEL_14:
}

void sub_100027E0C(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation - zonesDeletedOrReset DONE: %{public}@", &v4, 0xCu);
  }
}

void sub_100027EBC(id *a1)
{
  [a1[4] setServerChangeToken:a1[5]];
  v2 = objc_retainBlock(a1[6]);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, 0);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027F78;
  v5[3] = &unk_10023F6B0;
  v4 = a1[4];
  v6 = a1[5];
  [v4 p_scheduleArchiveWithCompletion:v5];
}

void sub_100027F78(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (fetchDatabaseChangesCompletionBlock), serverChangeToken: %{public}@", &v4, 0xCu);
  }
}

void sub_10002837C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000283A4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 allKeys];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v66 = sub_10003104C;
    v67 = &unk_100240B70;
    v68 = objc_alloc_init(NSMutableArray);
    v9 = v68;
    [v8 enumerateObjectsUsingBlock:&buf];
    v10 = [v9 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "3. BCCloudKitDatabaseController - fetchRecordZonesOperation.fetchRecordZonesCompletionBlock fetchedZones:[%{public}@]", &buf, 0xCu);
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100028CA0;
  v58[3] = &unk_1002406A8;
  objc_copyWeak(&v60, a1 + 8);
  v59 = a1[7];
  v11 = objc_retainBlock(v58);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100029018;
  v50[3] = &unk_100240748;
  v51 = a1[4];
  v12 = v5;
  v52 = v12;
  v53 = a1[5];
  v54 = a1[6];
  objc_copyWeak(&v57, a1 + 8);
  v55 = a1[7];
  v13 = v11;
  v56 = v13;
  v14 = objc_retainBlock(v50);
  v15 = v14;
  if (!v6)
  {
    v21 = [v12 allKeys];
    v20 = [NSSet setWithArray:v21];

    v22 = [NSSet setWithArray:a1[4]];
    v23 = [v20 isEqualToSet:v22];

    if (!v23)
    {
      v27 = sub_100002660(v24);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = a1[4];
        v29 = objc_alloc_init(NSMutableArray);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v66 = sub_10003104C;
        v67 = &unk_100240B70;
        v30 = v29;
        v68 = v30;
        [v28 enumerateObjectsUsingBlock:&buf];
        v31 = [v30 componentsJoinedByString:{@", "}];

        v32 = v31;
        v33 = [v12 allKeys];
        v34 = objc_alloc_init(NSMutableArray);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v66 = sub_10003104C;
        v67 = &unk_100240B70;
        v35 = v34;
        v68 = v35;
        [v33 enumerateObjectsUsingBlock:&buf];
        v36 = [v35 componentsJoinedByString:{@", "}];

        *v61 = 138412546;
        v62 = v32;
        v63 = 2112;
        v64 = v36;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "CKFetchRecordZonesOperation Wanted:%@ Received:%@", v61, 0x16u);
      }

      v15[2](v15);
      goto LABEL_30;
    }

    v25 = sub_100002660(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - calling saveResultsBlock", &buf, 2u);
    }

    v26 = [v12 allValues];
    (v13[2])(v13, v26, 0);
    goto LABEL_29;
  }

  v16 = sub_100002660(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - fetchRecordZonesOperation failed, ERROR:%@", &buf, 0xCu);
  }

  v17 = sub_1000254B0(v6);
  if ((v17 & 1) != 0 || (v17 = sub_100025690(v6), v17))
  {
    v18 = sub_100002660(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - No PCS Identity available", &buf, 2u);
    }

    v19 = objc_retainBlock(a1[7]);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, v6);
    }

    goto LABEL_30;
  }

  if ([v6 code] == 6 || objc_msgSend(v6, "code") == 7)
  {
    v37 = [v6 userInfo];
    v20 = [v37 objectForKeyedSubscript:CKErrorRetryAfterKey];

    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v26 = [WeakRetained accessQueue];

    if (v20 && v26)
    {
      v40 = sub_100002660(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - fetchRecordZonesOperation failed - retrying, ERROR:%@", &buf, 0xCu);
      }

      [v20 doubleValue];
      v42 = dispatch_time(0, (v41 * 1000000000.0));
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100029898;
      v46[3] = &unk_1002406F8;
      objc_copyWeak(&v49, a1 + 8);
      v48 = a1[7];
      v47 = a1[4];
      dispatch_after(v42, v26, v46);

      objc_destroyWeak(&v49);
    }

    else
    {
      v43 = sub_100002660(v39);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_1001BF3C0();
      }

      (v13[2])(v13, 0, v6);
    }

LABEL_29:

LABEL_30:
    goto LABEL_31;
  }

  if ([v6 code] == 3)
  {
    v44 = sub_100002660(3);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF3C0();
    }
  }

  else
  {
    v45 = sub_100025880(v6);
    if (!v45)
    {
      v15[2](v15);
      goto LABEL_31;
    }

    v44 = sub_100002660(v45);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF358();
    }
  }

  (v13[2])(v13, 0, v6);
LABEL_31:

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v60);
}

void sub_100028C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a32);
  _Unwind_Resume(a1);
}

void sub_100028CA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100028DB4;
    v12[3] = &unk_10023F938;
    v13 = v8;
    v14 = v5;
    dispatch_async(v9, v12);

    v10 = objc_retainBlock(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v6);
    }
  }
}

void sub_100028DB4(uint64_t a1)
{
  v2 = [*(a1 + 32) recordZones];
  v3 = sub_100002660(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v12 = sub_1000310A4;
    v13 = &unk_100240680;
    v14 = objc_alloc_init(NSMutableArray);
    v5 = v14;
    [v4 enumerateObjectsUsingBlock:&buf];
    v6 = [v5 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - assigning recordZones[%{public}@]", &buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028F84;
  v9[3] = &unk_100240680;
  v10 = v2;
  v8 = v2;
  [v7 enumerateObjectsUsingBlock:v9];
}

void sub_100028F84(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [[BCCloudKitRecordZone alloc] initWithRecordZone:v3];
  v4 = *(a1 + 32);
  v5 = [v3 zoneID];

  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_100029018(uint64_t a1)
{
  v2 = [NSMutableSet setWithArray:*(a1 + 32)];
  v3 = [*(a1 + 40) allValues];
  v4 = [*(a1 + 40) allKeys];
  v5 = [NSSet setWithArray:v4];
  [v2 minusSet:v5];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000293A8;
  v23[3] = &unk_1002406D0;
  v6 = objc_alloc_init(NSMutableArray);
  v24 = v6;
  v7 = sub_100002660([v2 enumerateObjectsUsingBlock:v23]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [v2 allObjects];
    v9 = objc_alloc_init(NSMutableArray);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v26 = sub_10003104C;
    v27 = &unk_100240B70;
    v28 = v9;
    v10 = v9;
    [v8 enumerateObjectsUsingBlock:&buf];
    v11 = [v10 componentsJoinedByString:{@", "}];

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController - One or more zones are missing newRecordZones:[%{public}@]", &buf, 0xCu);
  }

  v12 = [[CKModifyRecordZonesOperation alloc] initWithRecordZonesToSave:v6 recordZoneIDsToDelete:0];
  v13 = +[CKOperationConfiguration bds_defaultConfiguration];
  [v13 setContainer:*(a1 + 48)];
  [v12 setConfiguration:v13];
  [v12 setDatabase:*(a1 + 56)];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100029420;
  v16[3] = &unk_100240720;
  objc_copyWeak(&v22, (a1 + 80));
  v14 = v6;
  v17 = v14;
  v20 = *(a1 + 64);
  v18 = *(a1 + 32);
  v21 = *(a1 + 72);
  v15 = v3;
  v19 = v15;
  [v12 setModifyRecordZonesCompletionBlock:v16];
  [*(a1 + 56) addOperation:v12];

  objc_destroyWeak(&v22);
}

void sub_1000293A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CKRecordZone alloc] initWithZoneID:v3];

  [*(a1 + 32) addObject:v4];
}

void sub_100029420(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 userInfo];
    v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v12 = [WeakRetained accessQueue];

    if (v10)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = *(a1 + 64);
      v16 = [*(a1 + 48) arrayByAddingObjectsFromArray:v6];
      (*(v15 + 16))(v15, v16, v8);
    }

    else
    {
      v21 = sub_100002660(v13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000310A4;
        v33 = &unk_100240680;
        v34 = objc_alloc_init(NSMutableArray);
        v24 = v34;
        [v23 enumerateObjectsUsingBlock:buf];
        v25 = [v24 componentsJoinedByString:{@", "}];

        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "5a CKModifyRecordZonesOperation failed to modify %{public}@ retrying, ERROR:%@", buf, 0x16u);
      }

      [v10 doubleValue];
      v27 = dispatch_time(0, (v26 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100029818;
      block[3] = &unk_1002406F8;
      objc_copyWeak(&v31, (a1 + 72));
      v30 = *(a1 + 56);
      v29 = *(a1 + 40);
      dispatch_after(v27, v12, block);

      objc_destroyWeak(&v31);
    }
  }

  else
  {
    v10 = [*(a1 + 48) arrayByAddingObjectsFromArray:v6];
    v17 = sub_100002660(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v10;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000310A4;
      v33 = &unk_100240680;
      v34 = objc_alloc_init(NSMutableArray);
      v19 = v34;
      [v18 enumerateObjectsUsingBlock:buf];

      v20 = [v19 componentsJoinedByString:{@", "}];

      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CKModifyRecordZonesOperation success saving: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100029818(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_createRecordZones:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_100029898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained p_createRecordZones:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3, 0);
    }
  }
}

void sub_100029AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100029B18(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    v31 = [NSException alloc];
    v32 = [a1[4] containerIdentifier];
    v33 = [NSString stringWithFormat:@"Nil weak self after fetch salt record %@", v32];
    v56 = NSUnderlyingErrorKey;
    v34 = v6;
    if (!v6)
    {
      v34 = +[NSNull null];
    }

    v57 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v36 = [v31 initWithName:@"No Books Salt" reason:v33 userInfo:v35];
    v37 = v36;

    if (!v6)
    {
    }

    objc_exception_throw(v36);
  }

  v8 = WeakRetained;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_100027274;
  v54 = sub_100027284;
  v55 = 0;
  if (!v5 || v6)
  {
    v20 = sub_100002660(WeakRetained);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v30 = [a1[4] containerIdentifier];
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      *&buf[24] = v5;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(%{public}@) Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", buf, 0x20u);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    memset(buf, 0, sizeof(buf));
    if (SecRandomCopyBytes(kSecRandomDefault, 0x80uLL, buf))
    {
      v38 = [NSException alloc];
      v39 = [a1[4] containerIdentifier];
      v40 = [NSString stringWithFormat:@"Unable to generate random salt %@", v39];
      v58 = NSUnderlyingErrorKey;
      v41 = v6;
      if (!v6)
      {
        v41 = +[NSNull null];
      }

      v59 = v41;
      v42 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v43 = [v38 initWithName:@"No Books Record Salt" reason:v40 userInfo:v42];
      v44 = v43;

      if (!v6)
      {
      }

      objc_exception_throw(v43);
    }

    v21 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
    v22 = [[CKRecord alloc] initWithRecordType:@"recordIDSalt" recordID:v21];
    v23 = [NSData dataWithBytes:buf length:128];
    v24 = [v22 encryptedValuesByKey];
    [v24 setObject:v23 forKeyedSubscript:@"saltEncrypted"];

    v26 = sub_10000DC08(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [a1[4] containerIdentifier];
      *v60 = 138543362;
      v61 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "(%{public}@) Will save record salt", v60, 0xCu);
    }

    v28 = [a1[4] database];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10002A27C;
    v45[3] = &unk_100240798;
    objc_copyWeak(&v49, a1 + 6);
    v45[4] = a1[4];
    v48 = &v50;
    v29 = v23;
    v46 = v29;
    v47 = a1[5];
    [v28 saveRecord:v22 completionHandler:v45];

    objc_destroyWeak(&v49);
  }

  else
  {
    v9 = [v5 encryptedValuesByKey];
    v10 = [v9 objectForKeyedSubscript:@"saltEncrypted"];

    if (!v10)
    {
      v10 = [v5 objectForKeyedSubscript:@"salt"];
    }

    [v8 setRecordIDSalt:v10];
    v11 = [v5 recordChangeTag];
    v12 = v51[5];
    v51[5] = v11;

    v14 = sub_10000DC08(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [a1[4] containerIdentifier];
      v16 = v51[5];
      *buf = 138543874;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      *&buf[24] = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully read existing record salt salt:(%@) changeTag:(%@). Calling completion", buf, 0x20u);
    }

    v17 = v51[5];
    v18 = [a1[4] desiredRecordZoneIDs];
    v19 = [NSSet setWithArray:v18];
    [v8 p_informObserversOfSaltVersionIdentifierChanged:v17 forZones:v19 completion:a1[5]];
  }

  _Block_object_dispose(&v50, 8);
}

void sub_10002A160(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v21 = objc_begin_catch(a1);
    v22 = sub_10000DC08(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF428();
    }

    v23 = objc_retainBlock(*(v18 + 40));
    if (v23)
    {
      v24 = [NSError errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
      v23[2](v23, v24);
    }

    objc_end_catch();
    JUMPOUT(0x100029F04);
  }

  _Unwind_Resume(a1);
}

void sub_10002A27C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v44 = [NSException alloc];
    v45 = [*(a1 + 32) containerIdentifier];
    v46 = [NSString stringWithFormat:@"Nil weak self after save record %@", v45];
    v51 = NSUnderlyingErrorKey;
    v47 = v6;
    if (!v6)
    {
      v47 = +[NSNull null];
    }

    v52 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v49 = [v44 initWithName:@"No Books Record Salt" reason:v46 userInfo:v48];
    v50 = v49;

    if (!v6)
    {
    }

    objc_exception_throw(v49);
  }

  v8 = WeakRetained;
  v9 = sub_10000DC08(WeakRetained);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "(%{public}@) Saving record salt....", buf, 0xCu);
  }

  v11 = [v6 domain];
  if ([v11 isEqualToString:CKErrorDomain])
  {
    v12 = [v6 code];

    if (v12 == 14)
    {
      v14 = [v6 userInfo];
      v15 = [v14 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      v16 = [v15 encryptedValuesByKey];
      v17 = [v16 objectForKeyedSubscript:@"saltEncrypted"];

      if (v15)
      {
        v19 = sub_10000DC08(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 32) containerIdentifier];
          v21 = [v15 recordChangeTag];
          *buf = 138544130;
          v54 = v20;
          v55 = 2112;
          v56 = v17;
          v57 = 2112;
          v58 = v21;
          v59 = 2112;
          v60 = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully established record salt from server record salt:(%@) changeTag:(%@) error:(%@)", buf, 0x2Au);
        }

        [v8 setRecordIDSalt:v17];
        v22 = [v15 recordChangeTag];
        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v6 = 0;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v25 = sub_10000DC08(v13);
  v15 = v25;
  if (v6)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF490();
    }
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 32) containerIdentifier];
      v27 = *(a1 + 40);
      v28 = [v5 recordChangeTag];
      *buf = 138543874;
      v54 = v26;
      v55 = 2112;
      v56 = v27;
      v57 = 2112;
      v58 = v28;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(%{public}@) Successfully established record salt for NO ERROR salt:(%@) changeTag:(%@)", buf, 0x20u);
    }

    v29 = [v5 encryptedValuesByKey];
    v30 = [v29 objectForKeyedSubscript:@"saltEncrypted"];
    [v8 setRecordIDSalt:v30];

    v31 = [v5 recordChangeTag];
    v6 = 0;
    v32 = *(*(a1 + 56) + 8);
    v15 = *(v32 + 40);
    *(v32 + 40) = v31;
  }

LABEL_18:

  v33 = [v8 recordIDSalt];

  v35 = sub_10000DC08(v34);
  v36 = v35;
  if (v6 || !v33)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF4F8();
    }

    v43 = objc_retainBlock(*(a1 + 48));
    v41 = v43;
    if (v43)
    {
      (*(v43 + 2))(v43, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [v8 containerIdentifier];
      v38 = [*(a1 + 32) recordIDSalt];
      v39 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v54 = v37;
      v55 = 2112;
      v56 = v38;
      v57 = 2112;
      v58 = v39;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "(%{public}@) *** Got record salt:(%@) changeTag:(%@)", buf, 0x20u);
    }

    v40 = *(*(*(a1 + 56) + 8) + 40);
    v41 = [*(a1 + 32) desiredRecordZoneIDs];
    v42 = [NSSet setWithArray:v41];
    [v8 p_informObserversOfSaltVersionIdentifierChanged:v40 forZones:v42 completion:*(a1 + 48)];
  }
}

void sub_10002AA34(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) changedRecordZoneIDs];
  if ([v3 containsObject:v11])
  {
    v4 = [*(a1 + 32) tokenStores];
    v5 = [v4 objectForKeyedSubscript:v11];
    v6 = [v5 cloudSyncEnabled];

    if (v6)
    {
      v7 = 40;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = [*(a1 + 32) tokenStores];
  v9 = [v8 objectForKeyedSubscript:v11];
  v10 = [v9 cloudSyncEnabled];

  if (!v10)
  {
    goto LABEL_8;
  }

  v7 = 48;
LABEL_7:
  [*(a1 + v7) addObject:v11];
LABEL_8:
}

void sub_10002AB2C(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002660(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] containerIdentifier];
    v6 = a1[5];
    *buf = 138543618;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@)- record zone changes; unchangedRecordIDS :%{public}@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = a1[5];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = a1[4];
        v13 = [*(*(&v16 + 1) + 8 * v11) zoneName];
        [v12 p_informObserversOfCompletedFetchOfZone:v13];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = objc_retainBlock(a1[6]);
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v3);
  }
}

void sub_10002B064(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    if (![*(a1 + 40) containsObject:v5])
    {
      goto LABEL_5;
    }

    v3 = [[CKRecordZone alloc] initWithZoneID:v5];
    v4 = [[BCCloudKitRecordZone alloc] initWithRecordZone:v3];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }

LABEL_5:
}

void sub_10002B120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tokenStores];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    dispatch_group_enter(*(a1 + 40));
    v6 = [v3 copy];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002B230;
    v8[3] = &unk_100240838;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 40);
    v7 = v6;
    [v5 serverChangeTokenWithCompletion:v8];
  }
}

void sub_10002B230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B310;
  block[3] = &unk_10023F720;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);

  dispatch_group_leave(*(a1 + 56));
}

void sub_10002B310(void *a1)
{
  v2 = a1[4];
  if (a1[5])
  {
    v3 = a1[4];

    [v3 setObject:? forKey:?];
  }

  else
  {
    v4 = +[NSNull null];
    [v2 setObject:v4 forKey:a1[6]];
  }
}

void sub_10002B3A0(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = sub_100002660(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) containerIdentifier];
      v5 = *(a1 + 48);
      *buf = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - finished fetching tokens for zones %{public}@", buf, 0x16u);
    }

    v6 = objc_opt_new();
    v7 = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B584;
    v11[3] = &unk_100240810;
    v12 = *(a1 + 32);
    v13 = v6;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:v11];
    [*(a1 + 40) p_fetchRecordZoneChanges:*(a1 + 48) optionsByRecordZoneID:v8 completionHandler:*(a1 + 56)];
  }

  else
  {
    *(*(a1 + 40) + 15) = 1;
    v9 = objc_retainBlock(*(a1 + 56));
    if (v9)
    {
      v10 = v9;
      (*(v9 + 2))(v9, 0);
      v9 = v10;
    }
  }
}

void sub_10002B584(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  if (v3)
  {
    v5 = +[NSNull null];

    if (v3 != v5)
    {
      [v4 setPreviousServerChangeToken:v3];
    }
  }

  [*(a1 + 40) setObject:v4 forKeyedSubscript:v6];
}

void sub_10002BDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak((v46 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose((v47 - 256), 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10002BE64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BF20;
  block[3] = &unk_100240860;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_10002BF20(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = [*(a1 + 32) recordType];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController fetchRecordZoneChangesOperation.recordChangedBlock record=%@ %@", &v12, 0x16u);
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [*(a1 + 32) recordType];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = objc_opt_new();
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [*(a1 + 32) recordType];
    [v8 setObject:v7 forKey:v9];
  }

  [v7 addObject:*(a1 + 32)];
  if ([v7 count] >= 0x20)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) recordType];
    [v10 p_informObserversOfRecordsChanged:v7 forRecordType:v11];

    [v7 removeAllObjects];
  }
}

void sub_10002C0C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C1A0;
  block[3] = &unk_10023F720;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_10002C1A0(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController recordWithIDWasDeletedBlock recordID=%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) observers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) databaseController:*(a1 + 40) recordWithIDWasDeleted:*(a1 + 32) recordType:{*(a1 + 48), v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

void sub_10002C324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C414;
  block[3] = &unk_1002408D8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_10002C414(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    *v9 = _NSConcreteStackBlock;
    *&v9[8] = 3221225472;
    *&v9[16] = sub_10003104C;
    v10 = &unk_100240B70;
    v11 = objc_alloc_init(NSMutableArray);
    v5 = v11;
    [v4 enumerateObjectsUsingBlock:v9];
    v6 = [v5 componentsJoinedByString:{@", ", *v9, *&v9[8], *&v9[16], v10}];

    *v9 = 138543618;
    *&v9[4] = v3;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneChangeTokensUpdatedBlock recordZoneIDs=%{public}@ ", v9, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  v7 = [*(a1 + 32) tokenStores];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 48)];

  [v8 storeServerChangeToken:*(a1 + 56) completion:0];
}

void sub_10002C5E8(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = sub_100002660(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) containerIdentifier];
    v15 = *(a1 + 40);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v29 = &unk_100240B70;
    v30 = objc_alloc_init(NSMutableArray);
    v16 = v30;
    [v15 enumerateObjectsUsingBlock:buf];
    v17 = [v16 componentsJoinedByString:{@", "}];

    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 1024;
    LODWORD(v29) = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneFetchCompletionBlock recordZoneIDs=%{public}@ moreComing= %{BOOL}d", buf, 0x1Cu);
  }

  v18 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C858;
  block[3] = &unk_100240948;
  block[4] = *(a1 + 32);
  v23 = v10;
  v27 = a5;
  v26 = *(a1 + 48);
  v24 = v12;
  v25 = v11;
  v19 = v11;
  v20 = v12;
  v21 = v10;
  dispatch_async(v18, block);
}