id BAPrivateAllKeys()
{
  v2[0] = @"analyticsID";
  v2[1] = @"userPrivateSeed";
  v2[2] = @"contentPrivateSeed";
  v0 = [NSArray arrayWithObjects:v2 count:3];

  return v0;
}

id BALog(uint64_t a1)
{
  if (qword_28F958[0] != -1)
  {
    sub_1E080C();
  }

  v2 = qword_28F950;

  return v2;
}

void sub_1E54(id a1)
{
  qword_28F950 = os_log_create("com.apple.iBooks", "BookAnalytics");

  _objc_release_x1();
}

void sub_204C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = [NSMutableDictionary dictionaryWithCapacity:3];
  dispatch_group_enter(v2);
  v4 = +[BDSSecureManager sharedManager];
  v5 = [v4 userDataManager];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_2338;
  v26[3] = &unk_25EB80;
  v6 = v3;
  v27 = v6;
  v7 = v2;
  v28 = v7;
  [v5 userDatumForKey:@"analyticsID" completion:v26];

  dispatch_group_enter(v7);
  v8 = +[BDSSecureManager sharedManager];
  v9 = [v8 userDataManager];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_245C;
  v23[3] = &unk_25EB80;
  v10 = v6;
  v24 = v10;
  v11 = v7;
  v25 = v11;
  [v9 userDatumForKey:@"contentPrivateSeed" completion:v23];

  dispatch_group_enter(v11);
  v12 = +[BDSSecureManager sharedManager];
  v13 = [v12 userDataManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_2580;
  v20[3] = &unk_25EB80;
  v14 = v10;
  v21 = v14;
  v22 = v11;
  v15 = v11;
  [v13 userDatumForKey:@"userPrivateSeed" completion:v20];

  v16 = [*(a1 + 32) workQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_26A4;
  v18[3] = &unk_25EBA8;
  v18[4] = *(a1 + 32);
  v19 = v14;
  v17 = v14;
  dispatch_group_notify(v15, v16, v18);
}

void sub_2338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BALog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 value];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BAPrivateDataSource - analyticsID Changed to: %@, error:%@", &v10, 0x16u);
  }

  v9 = [v5 value];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"analyticsID"];

  dispatch_group_leave(*(a1 + 40));
}

void sub_245C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BALog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 value];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BAPrivateDataSource - privateContentSeed Changed to: %@, error:%@", &v10, 0x16u);
  }

  v9 = [v5 value];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"contentPrivateSeed"];

  dispatch_group_leave(*(a1 + 40));
}

void sub_2580(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BALog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 value];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BAPrivateDataSource - privateUserSeed Changed to: %@, error:%@", &v10, 0x16u);
  }

  v9 = [v5 value];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"userPrivateSeed"];

  dispatch_group_leave(*(a1 + 40));
}

void sub_26A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 privateDataChanged:*(a1 + 40)];
}

void sub_27AC(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = objc_alloc_init(NSMutableDictionary);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = BAPrivateAllKeys();
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        dispatch_group_enter(v2);
        v9 = *(a1 + 32);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_29E8;
        v17[3] = &unk_25EBF8;
        v18 = v3;
        v19 = v8;
        v20 = v2;
        [v9 fetchPrivateDataForKey:v8 completion:v17];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v10 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A2C;
  block[3] = &unk_25EC20;
  v11 = *(a1 + 40);
  v15 = v3;
  v16 = v11;
  v12 = v3;
  dispatch_group_notify(v2, v10, block);
}

void sub_29E8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void sub_2A2C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_2B70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BALog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = [v5 value];
    *buf = 138412802;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v6;
  }

  v10 = [v5 value];
  if (v10 && (v11 = v10, [v5 value], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v11, v13))
  {
    v14 = [v5 value];
    v15 = objc_retainBlock(*(a1 + 40));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, v14, v6);
    }
  }

  else
  {
    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];

    if (([*(a1 + 32) isEqualToString:@"userPrivateSeed"] & 1) != 0 || (v19 = objc_msgSend(*(a1 + 32), "isEqualToString:", @"contentPrivateSeed"), v19))
    {
      v20 = BAGenerateSeed();

      v18 = v20;
    }

    v21 = BALog(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 32);
      *buf = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v18;
    }

    v23 = +[BDSSecureManager sharedManager];
    v24 = [v23 userDataManager];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_2E58;
    v27[3] = &unk_25EC70;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v28 = v18;
    v29 = v26;
    v14 = v18;
    [v24 setUserDataValue:v14 forKey:v25 completion:v27];

    v16 = v29;
  }
}

void sub_2E58(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, *(a1 + 32), v5);
  }
}

void sub_31CC(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_32E8;
  v8[3] = &unk_25ECE8;
  v9 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v5 = [*(a1 + 40) workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3468;
  v6[3] = &unk_25ED10;
  v7 = *(a1 + 48);
  dispatch_group_notify(v4, v5, v6);
}

void sub_32E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BALog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "syncPrivateData: key: %@ value: %@", buf, 0x16u);
  }

  dispatch_group_enter(*(a1 + 32));
  v8 = +[BDSSecureManager sharedManager];
  v9 = [v8 userDataManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3460;
  v10[3] = &unk_25ECC0;
  v11 = *(a1 + 32);
  [v9 setUserDataValue:v6 forKey:v5 completion:v10];
}

void sub_3468(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_35EC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 publisherFromStartTime:0.0];

  v4 = [v3 last];

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_372C;
  v8[3] = &unk_25EDA0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&stru_25ED78 receiveInput:v8];
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, *(v10 + 24));
  }

  _Block_object_dispose(&v9, 8);
}

void sub_370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_372C(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (v3)
  {
    LOBYTE(v3) = [v3 isStarting];
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;

  return _objc_release_x1();
}

id BAObfuscateID(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 dataUsingEncoding:4];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = +[NSNull null];
    if ([v3 isEqual:v7])
    {

LABEL_6:
      v6 = 0;
      goto LABEL_8;
    }

    v8 = +[NSNull null];
    v9 = [v5 isEqual:v8];

    if (v9)
    {
      goto LABEL_6;
    }

    memset(&v14, 0, sizeof(v14));
    CCHmacInit(&v14, 2u, [v5 bytes], objc_msgSend(v5, "length"));
    v10 = [v3 UTF8String];
    v11 = strlen(v10);
    CCHmacUpdate(&v14, v10, v11);
    memset(macOut, 0, sizeof(macOut));
    CCHmacFinal(&v14, macOut);
    v12 = [NSData dataWithBytes:macOut length:32];
    v6 = [v12 base64EncodedStringWithOptions:0];
  }

LABEL_8:

  return v6;
}

id BAGenerateSeed()
{
  if (SecRandomCopyBytes(kSecRandomDefault, 0x200uLL, bytes))
  {
    v0 = 0;
  }

  else
  {
    v1 = [NSData dataWithBytes:bytes length:512];
    v2 = [v1 base64EncodedDataWithOptions:0];
    v0 = [[NSString alloc] initWithData:v2 encoding:4];
  }

  return v0;
}

uint64_t BARoundIntegerToSignificantFigures(uint64_t a1, uint64_t a2)
{
  v2 = (a1 >> 63) | 1;
  v3 = 1;
  if (a2 >= 1)
  {
    do
    {
      v3 *= 10;
      --a2;
    }

    while (a2);
  }

  v4 = v2 * a1;
  if (v2 * a1 >= v3)
  {
    v6 = 1;
    do
    {
      v7 = v4;
      v4 /= 10;
      v6 *= 10;
    }

    while (v4 >= v3);
    v5 = v7 - 10 * v4 > 4;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  return v6 * v2 * (v5 + v4);
}

uint64_t sub_3B2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_3B8C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_5F94(v6, a3);
  v7 = sub_3B2C(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_3C50@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_3B2C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t BrowseCollectionScreenViewEvent.collectionSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_3D68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t BrowseCollectionScreenViewEvent.collectionSummaryData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BrowseCollectionScreenViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseCollectionScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseCollectionScreenViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrowseCollectionScreenViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrowseCollectionScreenViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseCollectionScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseCollectionScreenViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BrowseCollectionScreenViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BrowseCollectionScreenViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for BrowseCollectionScreenViewEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t BrowseCollectionScreenViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseCollectionScreenViewEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_42EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BrowseCollectionScreenViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseCollectionScreenViewEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseCollectionScreenViewEvent.Model.init(collectionSummaryData:eventData:timedData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for BrowseCollectionScreenViewEvent.Model(0);
  v8 = *(v7 + 20);
  v9 = sub_1E1150();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = *(v7 + 24);
  v11 = sub_1E11A0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

Swift::Int sub_448C()
{
  v1 = *v0;
  sub_1E1DC0();
  sub_1E1DD0(v1);
  return sub_1E1DE0();
}

Swift::Int sub_4500(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  sub_1E1DD0(v2);
  return sub_1E1DE0();
}

uint64_t sub_4544()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_45A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_5E60(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_45E4(uint64_t a1)
{
  v2 = sub_48FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4620(uint64_t a1)
{
  v2 = sub_48FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BrowseCollectionScreenViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27D7F8, &qword_1E3CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  sub_48B8(a1, a1[3]);
  sub_48FC();
  sub_1E1E00();
  v18 = *v3;
  v17[7] = 0;
  sub_4950();

  sub_1E1CF0();
  v18, v9, v10, v11, v12, v13, v14, v15;
  if (!v2)
  {
    type metadata accessor for BrowseCollectionScreenViewEvent.Model(0);
    v17[6] = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v17[5] = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_48B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_48FC()
{
  result = qword_27D800;
  if (!qword_27D800)
  {
    result = swift_getWitnessTable(a5_10, &type metadata for BrowseCollectionScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D800);
  }

  return result;
}

unint64_t sub_4950()
{
  result = qword_27D808;
  if (!qword_27D808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionSummaryData, &type metadata for CollectionSummaryData, v0, v1);
    atomic_store(result, &qword_27D808);
  }

  return result;
}

void BrowseCollectionScreenViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_1E11A0();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_27D820, &qword_1E3D00);
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for BrowseCollectionScreenViewEvent.Model(0);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v46 = a1;
  sub_48B8(a1, v14);
  sub_48FC();
  v44 = v10;
  v15 = v45;
  sub_1E1DF0();
  if (v15)
  {
    sub_4E48(v46, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v45 = v11;
    v23 = v42;
    v24 = v13;
    v37 = v4;
    v49 = 0;
    sub_4E94();
    v25 = v43;
    sub_1E1C20();
    *v24 = v50;
    v48 = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    (*(v41 + 32))(&v24[*(v45 + 20)], v7, v5);
    v47 = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v26 = v37;
    v27 = v40;
    v28 = v44;
    sub_1E1C20();
    (*(v23 + 8))(v28, v25);
    (*(v38 + 32))(&v24[*(v45 + 24)], v26, v27);
    sub_4F30(v24, v39);
    sub_4E48(v46, v29, v30, v31, v32, v33, v34, v35);
    sub_4F94(v24);
  }
}

void sub_4E48(BAEventReporter **a1, uint64_t a2, void *a3, void *a4, int64_t a5, void *a6, uint64_t a7, void *a8)
{
  v8 = *a1[3][-1].dataProviders;
  if ((*(v8 + 82) & 2) != 0)
  {
    *a1, a1[3], a3, a4, a5, a6, a7, a8;
  }

  else
  {
    (*(v8 + 8))();
  }
}

unint64_t sub_4E94()
{
  result = qword_27D828;
  if (!qword_27D828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionSummaryData, &type metadata for CollectionSummaryData, v0, v1);
    atomic_store(result, &qword_27D828);
  }

  return result;
}

uint64_t sub_4EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_4F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseCollectionScreenViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4F94(uint64_t a1)
{
  v2 = type metadata accessor for BrowseCollectionScreenViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5098@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_3B2C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_5160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_5298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_5410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27D7E0, &unk_1E3CE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_5580(uint64_t a1)
{
  sub_561C(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      sub_5750(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_561C(uint64_t a1)
{
  if (!qword_27D8A8)
  {
    sub_4E94();
    sub_4950();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8A8);
    }
  }
}

void sub_5684(uint64_t a1)
{
  if (!qword_27D8B0)
  {
    sub_1E1150();
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8B0);
    }
  }
}

void sub_5750(uint64_t a1)
{
  if (!qword_27D8B8)
  {
    sub_1E11A0();
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8B8);
    }
  }
}

uint64_t sub_5830(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_5968(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_5A8C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaxScrollDepthData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaxScrollDepthData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_5BA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for BrowseCollectionScreenViewEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseCollectionScreenViewEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5D5C()
{
  result = qword_27D9F8;
  if (!qword_27D9F8)
  {
    result = swift_getWitnessTable(aM_22, &type metadata for BrowseCollectionScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D9F8);
  }

  return result;
}

unint64_t sub_5DB4()
{
  result = qword_27DA00;
  if (!qword_27DA00)
  {
    result = swift_getWitnessTable(byte_1E3E8C, &type metadata for BrowseCollectionScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DA00);
  }

  return result;
}

unint64_t sub_5E0C()
{
  result = qword_27DA08;
  if (!qword_27DA08)
  {
    result = swift_getWitnessTable(asc_1E3EB4, &type metadata for BrowseCollectionScreenViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DA08);
  }

  return result;
}

uint64_t sub_5E60(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002135D0;
  if (a1 == 0xD000000000000015 && 0x80000000002135D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, v10, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t *sub_5F94(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t MediaData.mediaID.getter()
{
  v1 = *v0;

  return v1;
}

void MediaData.mediaID.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 8), a2, a3, a4, a5, a6, a7, a8;
  *v8 = a1;
  *(v8 + 8) = a2;
}

BookAnalytics::SingleCollectionData __swiftcall SingleCollectionData.init(collectionID:collectionItemCount:)(BookAnalytics::SingleCollectionData collectionID, Swift::Int32 collectionItemCount)
{
  *v2 = collectionID.collectionID;
  *(v2 + 16) = collectionItemCount;
  collectionID.collectionItemCount = collectionItemCount;
  return collectionID;
}

BOOL static SingleCollectionData.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1E1D30();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_6114()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

void sub_615C(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEC00000044496E6FLL;
  v13 = a1 == 0x697463656C6C6F63 && a2 == 0xEC00000044496E6FLL;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000000213800 == a2)
  {
    a2, 0x8000000000213800, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_6250(uint64_t a1)
{
  v2 = sub_645C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_628C(uint64_t a1)
{
  v2 = sub_645C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionIDData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27DA10, &qword_1E3FA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  sub_48B8(a1, a1[3]);
  sub_645C();
  sub_1E1E00();
  v12 = 0;
  v7 = v9[1];
  sub_1E1CB0();
  if (!v7)
  {
    v11 = 1;
    sub_1E1D00();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_645C()
{
  result = qword_27DA18;
  if (!qword_27DA18)
  {
    result = swift_getWitnessTable(byte_1E4184, &type metadata for CollectionIDData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DA18);
  }

  return result;
}

void CollectionIDData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27DA20, &qword_1E3FA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_645C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v37 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    v36 = 1;
    v20 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v20;

    sub_4E48(a1, v21, v22, v23, v24, v25, v26, v27);
    v18, v28, v29, v30, v31, v32, v33, v34;
  }
}

unint64_t sub_6690()
{
  result = qword_27DA28;
  if (!qword_27DA28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionIDData, &type metadata for CollectionIDData, v0, v1);
    atomic_store(result, &qword_27DA28);
  }

  return result;
}

unint64_t sub_66E8()
{
  result = qword_27DA30;
  if (!qword_27DA30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CollectionIDData, &type metadata for CollectionIDData, v0, v1);
    atomic_store(result, &qword_27DA30);
  }

  return result;
}

__n128 sub_67BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_67D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_6818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionIDData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CollectionIDData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_69C8()
{
  result = qword_27DA38;
  if (!qword_27DA38)
  {
    result = swift_getWitnessTable(asc_1E415C, &type metadata for CollectionIDData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DA38);
  }

  return result;
}

unint64_t sub_6A20()
{
  result = qword_27DA40;
  if (!qword_27DA40)
  {
    result = swift_getWitnessTable(aU_30, &type metadata for CollectionIDData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DA40);
  }

  return result;
}

unint64_t sub_6A78()
{
  result = qword_27DA48;
  if (!qword_27DA48)
  {
    result = swift_getWitnessTable(asc_1E40F4, &type metadata for CollectionIDData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DA48);
  }

  return result;
}

uint64_t ThemesAndSettingViewEvent.themesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThemesAndSettingViewEvent.themesData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ThemeCustomizeViewEvent.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizeViewEvent.textData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 20);
  v4 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizeViewEvent.layoutOptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizeViewEvent.layoutOptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 24);
  v4 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizeViewEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizeViewEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizeViewEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizeViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ThemeCustomizeViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ThemeCustomizeViewEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v12, v2, v13);
}

uint64_t ThemesAndSettingViewEvent.Model.themesData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t ThemeCustomizeViewEvent.Model.textData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 ThemeCustomizeViewEvent.Model.layoutOptionData.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 76);
  v3 = *(v1 + 84);
  result = *(v1 + 60);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[4] = v3;
  return result;
}

uint64_t ThemeCustomizeViewEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent.Model(0) + 28);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizeViewEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ThemeCustomizeViewEvent.Model(0) + 32);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThemeCustomizeViewEvent.Model.init(themesData:textData:layoutOptionData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 24) = v10;
  *(a6 + 32) = v11;
  *(a6 + 40) = v12;
  *(a6 + 48) = v13;
  *(a6 + 56) = v14;
  *(a6 + 60) = *a3;
  *(a6 + 76) = v15;
  *(a6 + 84) = v16;
  v17 = type metadata accessor for ThemeCustomizeViewEvent.Model(0);
  v18 = *(v17 + 28);
  v19 = sub_1E1150();
  (*(*(v19 - 8) + 32))(a6 + v18, a4, v19);
  v20 = *(v17 + 32);
  v21 = sub_1E11A0();
  v22 = *(*(v21 - 8) + 32);

  return v22(a6 + v20, a5, v21);
}

unint64_t sub_767C()
{
  v1 = *v0;
  v2 = 0x614473656D656874;
  v3 = 0xD000000000000010;
  v4 = 0x746144746E657665;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6174614474786574;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_7728@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_927C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_775C(uint64_t a1)
{
  v2 = sub_7B24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7798(uint64_t a1)
{
  v2 = sub_7B24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ThemeCustomizeViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27DA98, &qword_1E41F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  sub_48B8(a1, a1[3]);
  sub_7B24();
  sub_1E1E00();
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  *v48 = *v3;
  *&v48[8] = *(v3 + 8);
  v49 = v9;
  v50 = v10;
  v47 = 0;
  sub_7B78();

  sub_1E1CF0();
  if (v2)
  {
    v18 = *&v48[8];
    v49, v11, v12, v13, v14, v15, v16, v17;
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v26 = *&v48[8];
    v49, v11, v12, v13, v14, v15, v16, v17;
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = *(v3 + 48);
    v35 = *(v3 + 56);
    *v48 = *(v3 + 40);
    *&v48[8] = v34;
    v48[16] = v35;
    v47 = 1;
    sub_7BCC();

    sub_1E1CF0();
    *&v48[8], v36, v37, v38, v39, v40, v41, v42;
    v43 = *(v3 + 76);
    v44 = *(v3 + 84);
    *v48 = *(v3 + 60);
    *&v48[16] = v43;
    LOWORD(v49) = v44;
    v47 = 2;
    sub_7C20();
    sub_1E1C80();
    type metadata accessor for ThemeCustomizeViewEvent.Model(0);
    v48[0] = 3;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v48[0] = 4;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_7B24()
{
  result = qword_27DAA0;
  if (!qword_27DAA0)
  {
    result = swift_getWitnessTable(byte_1E43E4, &type metadata for ThemeCustomizeViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DAA0);
  }

  return result;
}

unint64_t sub_7B78()
{
  result = qword_27DAA8;
  if (!qword_27DAA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ThemesData, &type metadata for ThemesData, v0, v1);
    atomic_store(result, &qword_27DAA8);
  }

  return result;
}

unint64_t sub_7BCC()
{
  result = qword_27DAB0;
  if (!qword_27DAB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextData, &type metadata for TextData, v0, v1);
    atomic_store(result, &qword_27DAB0);
  }

  return result;
}

unint64_t sub_7C20()
{
  result = qword_27DAB8;
  if (!qword_27DAB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LayoutOptionData, &type metadata for LayoutOptionData, v0, v1);
    atomic_store(result, &qword_27DAB8);
  }

  return result;
}

void ThemeCustomizeViewEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = sub_1E11A0();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3D68(&qword_27DAC0, &qword_1E4200);
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for ThemeCustomizeViewEvent.Model(0);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v57 = a1;
  sub_48B8(a1, v15);
  sub_7B24();
  v55 = v11;
  v16 = v56;
  sub_1E1DF0();
  if (v16)
  {
    sub_4E48(v57, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v56 = v7;
    v48 = v4;
    v24 = v14;
    v25 = v52;
    v62 = 0;
    sub_8248();
    v26 = v53;
    sub_1E1C20();
    v27 = v59;
    v28 = v60;
    v29 = v61;
    *v14 = v58;
    *(v14 + 2) = v27;
    *(v14 + 3) = v28;
    v14[32] = v29;
    v62 = 1;
    sub_829C();
    sub_1E1C20();
    v30 = *(&v58 + 1);
    v31 = v59;
    *(v14 + 5) = v58;
    *(v14 + 6) = v30;
    v14[56] = v31;
    v62 = 2;
    sub_82F0();
    sub_1E1BB0();
    v47 = v12;
    v32 = v59;
    v33 = v60;
    *(v14 + 60) = v58;
    *(v14 + 76) = v32;
    *(v14 + 42) = v33;
    LOBYTE(v58) = 3;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v34 = v56;
    sub_1E1C20();
    v35 = *(v25 + 32);
    v36 = &v14[*(v47 + 28)];
    v56 = v5;
    v35(v36, v34, v5);
    LOBYTE(v58) = 4;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v37 = v48;
    v38 = v51;
    sub_1E1C20();
    (*(v54 + 8))(v55, v26);
    (*(v49 + 32))(v24 + *(v47 + 32), v37, v38);
    sub_8344(v24, v50);
    sub_4E48(v57, v39, v40, v41, v42, v43, v44, v45);
    sub_83A8(v24);
  }
}

unint64_t sub_8248()
{
  result = qword_27DAC8;
  if (!qword_27DAC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ThemesData, &type metadata for ThemesData, v0, v1);
    atomic_store(result, &qword_27DAC8);
  }

  return result;
}

unint64_t sub_829C()
{
  result = qword_27DAD0;
  if (!qword_27DAD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextData, &type metadata for TextData, v0, v1);
    atomic_store(result, &qword_27DAD0);
  }

  return result;
}

unint64_t sub_82F0()
{
  result = qword_27DAD8;
  if (!qword_27DAD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LayoutOptionData, &type metadata for LayoutOptionData, v0, v1);
    atomic_store(result, &qword_27DAD8);
  }

  return result;
}

uint64_t sub_8344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemeCustomizeViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_83A8(uint64_t a1)
{
  v2 = type metadata accessor for ThemeCustomizeViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_84A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = enum case for EventProperty.optional<A>(_:);
  v10 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  v12 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v13, v4, v14);
}

uint64_t sub_8688(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_88A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27DA80, &qword_1E41E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DA88, &qword_1E41E8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_3D68(&qword_27DA90, &qword_1E41F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_8AC0(uint64_t a1)
{
  sub_8C34(319, &qword_27DB48, sub_8248, sub_7B78, &type metadata for ThemesData);
  if (v1 <= 0x3F)
  {
    sub_8C34(319, &qword_27DB50, sub_829C, sub_7BCC, &type metadata for TextData);
    if (v2 <= 0x3F)
    {
      sub_8C34(319, &unk_27DB58, sub_82F0, sub_7C20, &type metadata for LayoutOptionData);
      if (v3 <= 0x3F)
      {
        sub_5684(319);
        if (v4 <= 0x3F)
        {
          sub_5750(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_8C34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_8CC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_8DFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1E1150();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_8F20(uint64_t a1)
{
  sub_8FD4();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      sub_1E11A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8FD4()
{
  if (!qword_27DC00)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27DC00);
    }
  }
}

uint64_t getEnumTagSinglePayload for ThemeCustomizeViewEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThemeCustomizeViewEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_9178()
{
  result = qword_27DC40;
  if (!qword_27DC40)
  {
    result = swift_getWitnessTable(byte_1E43BC, &type metadata for ThemeCustomizeViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DC40);
  }

  return result;
}

unint64_t sub_91D0()
{
  result = qword_27DC48;
  if (!qword_27DC48)
  {
    result = swift_getWitnessTable(byte_1E432C, &type metadata for ThemeCustomizeViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DC48);
  }

  return result;
}

unint64_t sub_9228()
{
  result = qword_27DC50;
  if (!qword_27DC50)
  {
    result = swift_getWitnessTable("ݒ\a", &type metadata for ThemeCustomizeViewEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DC50);
  }

  return result;
}

uint64_t sub_927C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x614473656D656874 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6174614474786574 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0x8000000000213820;
    if (a1 == 0xD000000000000010 && 0x8000000000213820 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

BookAnalytics::ICloudDriveStatus_optional __swiftcall ICloudDriveStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25EE60;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t DoNotDisturbStatus.rawValue.getter()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t _s13BookAnalytics21ScrollViewSettingDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE200000000000000;
  v10 = 28271;
  if (v8 != 1)
  {
    v10 = 6710895;
    v9 = 0xE300000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE200000000000000;
  v14 = 28271;
  if (*a2 != 1)
  {
    v14 = 6710895;
    v13 = 0xE300000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_95D0()
{
  result = qword_27DC58;
  if (!qword_27DC58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ICloudDriveStatus, &type metadata for ICloudDriveStatus, v0, v1);
    atomic_store(result, &qword_27DC58);
  }

  return result;
}

Swift::Int sub_9624()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE200000000000000;
  if (v1 != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_96B4(uint64_t a1)
{
  v2 = 0xE200000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_9730(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE200000000000000;
  if (v2 != 1)
  {
    v3 = 0xE300000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_97C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 28271;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_98D4()
{
  result = qword_27DC60;
  if (!qword_27DC60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ICloudDriveStatus, &type metadata for ICloudDriveStatus, v0, v1);
    atomic_store(result, &qword_27DC60);
  }

  return result;
}

BookAnalytics::Location_optional __swiftcall Location.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25EEC8;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 4;
  if (v5 < 4)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t Location.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x656D6F636C6577;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6553656369766564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_9A20()
{
  result = qword_27DC68;
  if (!qword_27DC68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Location, &type metadata for Location, v0, v1);
    atomic_store(result, &qword_27DC68);
  }

  return result;
}

Swift::Int sub_9A74()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE700000000000000;
  v3 = 0xE700000000000000;
  if (v1 != 2)
  {
    v3 = 0x8000000000212480;
  }

  if (v1)
  {
    v2 = 0xEE0073676E697474;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_9B48(uint64_t a1)
{
  v2 = 0xE700000000000000;
  v3 = 0xE700000000000000;
  if (*v1 != 2)
  {
    v3 = 0x8000000000212480;
  }

  if (*v1)
  {
    v2 = 0xEE0073676E697474;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1E17D0();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_9C08(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  if (v2 != 2)
  {
    v4 = 0x8000000000212480;
  }

  if (v2)
  {
    v3 = 0xEE0073676E697474;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1E17D0();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1E1DE0();
}

void sub_9CE4(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x656D6F636C6577;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000000212480;
  }

  if (*v1)
  {
    v3 = 0x6553656369766564;
    v2 = 0xEE0073676E697474;
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

uint64_t getEnumTagSinglePayload for Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Location(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_9F74()
{
  result = qword_27DC70;
  if (!qword_27DC70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Location, &type metadata for Location, v0, v1);
    atomic_store(result, &qword_27DC70);
  }

  return result;
}

uint64_t AppAnalyticsData.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = swift_getKeyPath();
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *a2 = v3;
  return result;
}

void *AppAnalyticsData.wrappedValue.getter()
{
  v1 = sub_1E1480();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v26 = *(v0 + 16);

    if (!v7[1].super.isa)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1E1990();
    v15 = sub_1E14E0();
    sub_1E1320();

    sub_1E1470();
    swift_getAtKeyPath();
    sub_A2E8(v7, 0, v16, v17, v18, v19, v20, v21);
    (*(v2 + 8))(v4, v1);
    v7 = v26;
    if (!v26[1].super.isa)
    {
LABEL_7:
      v23 = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }
  }

  v22 = sub_A550(v5, v6, sub_A618);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v23 = *(*v7[3].dataProviders + 8 * v22);

LABEL_8:
  v7, v8, v9, v10, v11, v12, v13, v14;
  return v23;
}

void *sub_A1E4@<X0>(void *a1@<X8>)
{
  sub_A848();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

void *sub_A234@<X0>(void *a1@<X8>)
{
  sub_A848();
  result = sub_1E1490();
  *a1 = v3;
  return result;
}

uint64_t sub_A284(uint64_t *a1)
{
  sub_A848();

  return sub_1E14A0();
}

void sub_A2E8(BAEventReporter *a1, SEL a2, id x2_0, id x3_0, id x4_0, int64_t x5_0, int64_t x6_0, id x7_0)
{
  if (a2)
  {
    a1, a2, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }

  else
  {
    a1, a2, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

__n128 sub_A318(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_A32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_A374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextAssetInfoAnalytics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0xC;
  v9 = v7 - 12;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContextAssetInfoAnalytics(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_A51C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_A530(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

uint64_t sub_A550(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1E1DC0();
  sub_1E17D0();
  v5 = sub_1E1DE0();

  return a3(a1, a2, v5);
}

unint64_t sub_A5D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AA0(*(v2 + 40));

  return sub_A6D0(a1, v4);
}

unint64_t sub_A618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E1D30())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_A6D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_A798(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1E1AB0();
      sub_A7F4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_A848()
{
  result = qword_27DC78;
  if (!qword_27DC78)
  {
    result = swift_getWitnessTable(aQ_23, &type metadata for DataStackKey, v0, v1);
    atomic_store(result, &qword_27DC78);
  }

  return result;
}

BookAnalytics::ExposureType_optional __swiftcall ExposureType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25EF48;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t ExposureType.rawValue.getter()
{
  v1 = 0x6573616863727570;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_A958(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE800000000000000;
  v10 = 0x6573616863727570;
  v11 = 0x80000000002124A0;
  if (v8 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x80000000002124A0;
  }

  if (*a1)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14 = 0x6573616863727570;
  if (*a2 == 1)
  {
    v11 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_AA58()
{
  result = qword_27DC80;
  if (!qword_27DC80)
  {
    result = swift_getWitnessTable("͎\a", &type metadata for ExposureType, v0, v1);
    atomic_store(result, &qword_27DC80);
  }

  return result;
}

Swift::Int sub_AAAC()
{
  v1 = *v0;
  sub_1E1DC0();
  v2 = 0xE800000000000000;
  if (v1 != 1)
  {
    v2 = 0x80000000002124A0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1E1DE0();
}

void sub_AB54(uint64_t a1)
{
  v2 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0x80000000002124A0;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_1E17D0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_ABE8(uint64_t a1)
{
  v2 = *v1;
  sub_1E1DC0();
  v3 = 0xE800000000000000;
  if (v2 != 1)
  {
    v3 = 0x80000000002124A0;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  sub_1E17D0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1E1DE0();
}

void sub_AC98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6573616863727570;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000000002124A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_ADBC()
{
  result = qword_27DC88;
  if (!qword_27DC88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExposureType, &type metadata for ExposureType, v0, v1);
    atomic_store(result, &qword_27DC88);
  }

  return result;
}

BookAnalytics::ViewData __swiftcall ViewData.init(viewType:viewAction:viewLocation:)(BookAnalytics::ViewType viewType, BookAnalytics::ViewAction viewAction, BookAnalytics::ViewLocation viewLocation)
{
  v4 = *viewAction;
  v5 = *viewLocation;
  *v3 = *viewType;
  v3[1] = v4;
  v3[2] = v5;
  result.viewType = viewType;
  return result;
}

uint64_t sub_AEB8()
{
  v1 = 0x6974634177656976;
  if (*v0 != 1)
  {
    v1 = 0x61636F4C77656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570795477656976;
  }
}

uint64_t sub_AF20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_BA40(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_AF48(uint64_t a1)
{
  v2 = sub_B50C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AF84(uint64_t a1)
{
  v2 = sub_B50C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  v4 = sub_3D68(&qword_27DC90, &qword_1E48B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  sub_48B8(a1, a1[3]);
  sub_B50C();
  sub_1E1E00();
  v20 = v8;
  v19 = 0;
  sub_B560();
  sub_1E1CF0();
  if (!v2)
  {
    v10 = v13;
    v18 = v14;
    v17 = 1;
    sub_B5B4();
    sub_1E1CF0();
    v16 = v10;
    v15 = 2;
    sub_B608();
    sub_1E1CF0();
  }

  return (*(v5 + 8))(v7, v4);
}

void ViewData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27DCB8, &qword_1E48B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_48B8(a1, a1[3]);
  sub_B50C();
  sub_1E1DF0();
  if (!v2)
  {
    v24 = 0;
    sub_B65C();
    sub_1E1C20();
    v16 = v25;
    v22 = 1;
    sub_B6B0();
    sub_1E1C20();
    v17 = v23;
    v20 = 2;
    sub_B704();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    v18 = v21;
    *a2 = v16;
    a2[1] = v17;
    a2[2] = v18;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics8ViewDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = a2[1];
  v11 = a2[2];
  if (sub_206CC(*a1, *a2, a3, a4, a5, a6, a7, a8) & 1) != 0 && (sub_20848(v8, v10, v12, v13, v14, v15, v16, v17))
  {
    v24 = 0xE700000000000000;
    v25 = 0x434F546D6F7266;
    if (v9 != 1)
    {
      v25 = 0x646165526D6F7266;
      v24 = 0xEB00000000676E69;
    }

    if (v9)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0x6E776F6E6B6E75;
    }

    if (v9)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0xE700000000000000;
    }

    v28 = 0xE700000000000000;
    v29 = 0x434F546D6F7266;
    if (v11 != 1)
    {
      v29 = 0x646165526D6F7266;
      v28 = 0xEB00000000676E69;
    }

    if (v11)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0x6E776F6E6B6E75;
    }

    if (v11)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    if (v26 == v30 && v27 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_1E1D30();
    }

    v27, v18, v30, v19, v20, v21, v22, v23;
    v31, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

unint64_t sub_B50C()
{
  result = qword_27DC98;
  if (!qword_27DC98)
  {
    result = swift_getWitnessTable(byte_1E4A8C, &type metadata for ViewData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DC98);
  }

  return result;
}

unint64_t sub_B560()
{
  result = qword_27DCA0;
  if (!qword_27DCA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewType, &type metadata for ViewType, v0, v1);
    atomic_store(result, &qword_27DCA0);
  }

  return result;
}

unint64_t sub_B5B4()
{
  result = qword_27DCA8;
  if (!qword_27DCA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewAction, &type metadata for ViewAction, v0, v1);
    atomic_store(result, &qword_27DCA8);
  }

  return result;
}

unint64_t sub_B608()
{
  result = qword_27DCB0;
  if (!qword_27DCB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewLocation, &type metadata for ViewLocation, v0, v1);
    atomic_store(result, &qword_27DCB0);
  }

  return result;
}

unint64_t sub_B65C()
{
  result = qword_27DCC0;
  if (!qword_27DCC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewType, &type metadata for ViewType, v0, v1);
    atomic_store(result, &qword_27DCC0);
  }

  return result;
}

unint64_t sub_B6B0()
{
  result = qword_27DCC8;
  if (!qword_27DCC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewAction, &type metadata for ViewAction, v0, v1);
    atomic_store(result, &qword_27DCC8);
  }

  return result;
}

unint64_t sub_B704()
{
  result = qword_27DCD0;
  if (!qword_27DCD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewLocation, &type metadata for ViewLocation, v0, v1);
    atomic_store(result, &qword_27DCD0);
  }

  return result;
}

unint64_t sub_B75C()
{
  result = qword_27DCD8;
  if (!qword_27DCD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewData, &type metadata for ViewData, v0, v1);
    atomic_store(result, &qword_27DCD8);
  }

  return result;
}

unint64_t sub_B7B4()
{
  result = qword_27DCE0;
  if (!qword_27DCE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewData, &type metadata for ViewData, v0, v1);
    atomic_store(result, &qword_27DCE0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ViewData(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_B93C()
{
  result = qword_27DCE8;
  if (!qword_27DCE8)
  {
    result = swift_getWitnessTable(byte_1E4A64, &type metadata for ViewData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DCE8);
  }

  return result;
}

unint64_t sub_B994()
{
  result = qword_27DCF0;
  if (!qword_27DCF0)
  {
    result = swift_getWitnessTable(aM_23, &type metadata for ViewData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DCF0);
  }

  return result;
}

unint64_t sub_B9EC()
{
  result = qword_27DCF8;
  if (!qword_27DCF8)
  {
    result = swift_getWitnessTable(a5_11, &type metadata for ViewData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DCF8);
  }

  return result;
}

uint64_t sub_BA40(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6974634177656976 && a2 == 0xEA00000000006E6FLL || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x61636F4C77656976 && a2 == 0xEC0000006E6F6974)
  {
    0xEC0000006E6F6974, 0xEC0000006E6F6974, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MediaData.mediaType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MediaData.mediaType.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t RoomData.roomName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void RoomData.roomName.setter(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

void __swiftcall RoomData.init(roomID:roomParentSection:roomType:roomName:)(BookAnalytics::RoomData *__return_ptr retstr, Swift::String roomID, Swift::String roomParentSection, BookAnalytics::RoomType roomType, Swift::String_optional roomName)
{
  v5 = *roomType;
  retstr->roomID = roomID;
  retstr->roomParentSection = roomParentSection;
  retstr->roomType = v5;
  retstr->roomName = roomName;
}

unint64_t sub_BCA8()
{
  v1 = 0x55746E65746E6F63;
  v2 = 0x54746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x49746E65746E6F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_BD40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_C7B0(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_BD74(uint64_t a1)
{
  v2 = sub_C42C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BDB0(uint64_t a1)
{
  v2 = sub_C42C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WantListRemovalItemData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27DD00, &qword_1E4AE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v13 = *(v1 + 32);
  v8 = *(v1 + 40);
  v12[0] = *(v1 + 48);
  v12[1] = v8;
  sub_48B8(a1, a1[3]);
  sub_C42C();
  sub_1E1E00();
  v21 = 0;
  v9 = v16;
  sub_1E1CB0();
  if (!v9)
  {
    v11 = v13;
    v20 = 1;
    sub_1E1CB0();
    v19 = v11;
    v18 = 2;
    sub_C480();
    sub_1E1CF0();
    v17 = 3;
    sub_1E1CB0();
  }

  return (*(v4 + 8))(v6, v3);
}

void WantListRemovalItemData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27DD18, &qword_1E4AE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  sub_48B8(a1, a1[3]);
  sub_C42C();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v63 = 0;
    v16 = sub_1E1BE0();
    v58 = v17;
    v62 = 1;
    v56 = sub_1E1BE0();
    v57 = v18;
    v60 = 2;
    sub_C4D4();
    sub_1E1C20();
    v55 = v61;
    v59 = 3;
    v19 = sub_1E1BE0();
    v28 = v27;
    v29 = *(v6 + 8);
    v54 = v19;
    v29(v8, v5);
    v31 = v57;
    v30 = v58;
    *a2 = v16;
    *(a2 + 8) = v30;
    *(a2 + 16) = v56;
    *(a2 + 24) = v31;
    *(a2 + 32) = v55;
    *(a2 + 40) = v54;
    *(a2 + 48) = v28;

    sub_4E48(a1, v32, v33, v34, v35, v36, v37, v38);
    v28, v39, v40, v41, v42, v43, v44, v45;
    v31, v46, v47, v48, v49, v50, v51, v52;
    v30, v20, v21, v22, v23, v24, v25, v26;
  }
}

uint64_t _s13BookAnalytics23WantListRemovalItemDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32);
  v11 = a1[5];
  v12 = a1[6];
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != v14) && (sub_1E1D30() & 1) == 0 || (v8 != v15 || v9 != v16) && (sub_1E1D30() & 1) == 0 || (sub_218F4(v10, v17, v13, v14, a5, a6, a7, a8) & 1) == 0)
  {
    return 0;
  }

  if (v11 == v18 && v12 == v19)
  {
    return 1;
  }

  return sub_1E1D30();
}

unint64_t sub_C42C()
{
  result = qword_27DD08;
  if (!qword_27DD08)
  {
    result = swift_getWitnessTable(byte_1E4CDC, &type metadata for WantListRemovalItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DD08);
  }

  return result;
}

unint64_t sub_C480()
{
  result = qword_27DD10;
  if (!qword_27DD10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentType, &type metadata for ContentType, v0, v1);
    atomic_store(result, &qword_27DD10);
  }

  return result;
}

unint64_t sub_C4D4()
{
  result = qword_27DD20;
  if (!qword_27DD20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentType, &type metadata for ContentType, v0, v1);
    atomic_store(result, &qword_27DD20);
  }

  return result;
}

unint64_t sub_C52C()
{
  result = qword_27DD28;
  if (!qword_27DD28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantListRemovalItemData, &type metadata for WantListRemovalItemData, v0, v1);
    atomic_store(result, &qword_27DD28);
  }

  return result;
}

unint64_t sub_C584()
{
  result = qword_27DD30;
  if (!qword_27DD30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WantListRemovalItemData, &type metadata for WantListRemovalItemData, v0, v1);
    atomic_store(result, &qword_27DD30);
  }

  return result;
}

__n128 sub_C5D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_C5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_C63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_C6AC()
{
  result = qword_27DD38;
  if (!qword_27DD38)
  {
    result = swift_getWitnessTable(byte_1E4CB4, &type metadata for WantListRemovalItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DD38);
  }

  return result;
}

unint64_t sub_C704()
{
  result = qword_27DD40;
  if (!qword_27DD40)
  {
    result = swift_getWitnessTable(byte_1E4C24, &type metadata for WantListRemovalItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DD40);
  }

  return result;
}

unint64_t sub_C75C()
{
  result = qword_27DD48;
  if (!qword_27DD48)
  {
    result = swift_getWitnessTable(byte_1E4C4C, &type metadata for WantListRemovalItemData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DD48);
  }

  return result;
}

uint64_t sub_C7B0(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002138D0;
  if (a1 == 0xD000000000000010 && 0x80000000002138D0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xED00004449726573;
    if (a1 == 0x55746E65746E6F63 && a2 == 0xED00004449726573 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEB00000000657079;
      if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E1D30() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044)
      {
        0xE900000000000044, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = sub_1E1D30();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t SeriesContextualSheetEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SeriesContextualSheetEvent.seriesData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SeriesContextualSheetEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesContextualSheetEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesContextualSheetEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesContextualSheetEvent(0) + 20);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesContextualSheetEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesContextualSheetEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesContextualSheetEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SeriesContextualSheetEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SeriesContextualSheetEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SeriesContextualSheetEvent(0);
  v5 = *(v4 + 20);
  v6 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  v8 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t SeriesContextualSheetEvent.Model.seriesData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return sub_CF18(v6, &v5);
}

uint64_t SeriesContextualSheetEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesContextualSheetEvent.Model(0) + 20);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesContextualSheetEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesContextualSheetEvent.Model(0) + 24);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SeriesContextualSheetEvent.Model.init(seriesData:eventData:timedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  *(a4 + 1) = v7;
  *(a4 + 2) = a1[2];
  v8 = type metadata accessor for SeriesContextualSheetEvent.Model(0);
  v9 = *(v8 + 20);
  v10 = sub_1E1150();
  (*(*(v10 - 8) + 32))(&a4[v9], a2, v10);
  v11 = *(v8 + 24);
  v12 = sub_1E11A0();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a4[v11], a3, v12);
}

uint64_t sub_D16C()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6144736569726573;
  }
}

uint64_t sub_D1D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_E5D8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_D1FC(uint64_t a1)
{
  v2 = sub_D528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D238(uint64_t a1)
{
  v2 = sub_D528();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SeriesContextualSheetEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27DD88, &qword_1E4D38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_48B8(a1, a1[3]);
  sub_D528();
  sub_1E1E00();
  v9 = v3[1];
  v23[0] = *v3;
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[2];
  v23[1] = v9;
  v23[2] = v12;
  v20 = v10;
  v21 = v11;
  v22 = v3[2];
  v19 = 0;
  sub_CF18(v23, &v16);
  sub_D57C();
  sub_1E1CF0();
  if (v2)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_D5D0(&v16);
  }

  else
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_D5D0(&v16);
    type metadata accessor for SeriesContextualSheetEvent.Model(0);
    v15 = 1;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v15 = 2;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_D528()
{
  result = qword_27DD90;
  if (!qword_27DD90)
  {
    result = swift_getWitnessTable(aU_31, &type metadata for SeriesContextualSheetEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DD90);
  }

  return result;
}

unint64_t sub_D57C()
{
  result = qword_27DD98;
  if (!qword_27DD98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesData, &type metadata for SeriesData, v0, v1);
    atomic_store(result, &qword_27DD98);
  }

  return result;
}

void SeriesContextualSheetEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = sub_1E11A0();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1150();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3D68(&qword_27DDA0, &qword_1E4D40);
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v36 - v8;
  v10 = type metadata accessor for SeriesContextualSheetEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v45 = a1;
  sub_48B8(a1, v13);
  sub_D528();
  v42 = v9;
  v14 = v44;
  sub_1E1DF0();
  if (v14)
  {
    sub_4E48(v45, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = v12;
    v44 = v4;
    v24 = v40;
    v23 = v41;
    v50 = 0;
    sub_DAD8();
    sub_1E1C20();
    v25 = v48;
    v26 = v22;
    *v22 = v47;
    *(v22 + 1) = v25;
    *(v22 + 2) = v49;
    LOBYTE(v46) = 1;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1C20();
    v36 = v10;
    (*(v23 + 32))(&v22[*(v10 + 20)], v7, v5);
    LOBYTE(v46) = 2;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v27 = v44;
    v28 = v39;
    sub_1E1C20();
    (*(v24 + 8))(v42, v43);
    (*(v37 + 32))(v26 + *(v36 + 24), v27, v28);
    sub_DB2C(v26, v38);
    sub_4E48(v45, v29, v30, v31, v32, v33, v34, v35);
    sub_DB90(v26);
  }
}

unint64_t sub_DAD8()
{
  result = qword_27DDA8;
  if (!qword_27DDA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SeriesData, &type metadata for SeriesData, v0, v1);
    atomic_store(result, &qword_27DDA8);
  }

  return result;
}

uint64_t sub_DB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeriesContextualSheetEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DB90(uint64_t a1)
{
  v2 = type metadata accessor for SeriesContextualSheetEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  v9 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

uint64_t sub_DDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_DF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_E0AC(uint64_t a1)
{
  sub_E148(319);
  if (v1 <= 0x3F)
  {
    sub_5684(319);
    if (v2 <= 0x3F)
    {
      sub_5750(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E148(uint64_t a1)
{
  if (!qword_27DE18)
  {
    sub_DAD8();
    sub_D57C();
    v1 = sub_1E0C90();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE18);
    }
  }
}

uint64_t sub_E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
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
    v9 = sub_1E1150();
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
      v14 = sub_1E11A0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_E308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_E42C(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_E4D4()
{
  result = qword_27DEE8;
  if (!qword_27DEE8)
  {
    result = swift_getWitnessTable(byte_1E4EDC, &type metadata for SeriesContextualSheetEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEE8);
  }

  return result;
}

unint64_t sub_E52C()
{
  result = qword_27DEF0;
  if (!qword_27DEF0)
  {
    result = swift_getWitnessTable("Շ\a", &type metadata for SeriesContextualSheetEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEF0);
  }

  return result;
}

unint64_t sub_E584()
{
  result = qword_27DEF8;
  if (!qword_27DEF8)
  {
    result = swift_getWitnessTable(byte_1E4E74, &type metadata for SeriesContextualSheetEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEF8);
  }

  return result;
}

uint64_t sub_E5D8(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x6144736569726573 && a2 == 0xEA00000000006174;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {
    0xE900000000000061, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t WelcomeActionEvent.welcomeScreenData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WelcomeActionEvent.welcomeScreenData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WelcomeActionEvent.welcomeActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27DF38, &qword_1E4F68);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeActionEvent.welcomeActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeActionEvent(0) + 20);
  v4 = sub_3D68(&qword_27DF38, &qword_1E4F68);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeActionEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeActionEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeActionEvent(0) + 24);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeActionEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeActionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WelcomeActionEvent(0) + 28);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WelcomeActionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WelcomeActionEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27DF38, &qword_1E4F68);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

void WelcomeScreenViewEvent.Model.welcomeScreenData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t WelcomeActionEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeActionEvent.Model(0) + 24);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeActionEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WelcomeActionEvent.Model(0) + 28);
  v4 = sub_1E11A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WelcomeActionEvent.Model.init(welcomeScreenData:welcomeActionData:eventData:timedData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 4);
  v9 = *a2;
  *a5 = *a1;
  *(a5 + 4) = v8;
  *(a5 + 8) = v9;
  v10 = type metadata accessor for WelcomeActionEvent.Model(0);
  v11 = *(v10 + 24);
  v12 = sub_1E1150();
  (*(*(v12 - 8) + 32))(a5 + v11, a3, v12);
  v13 = *(v10 + 28);
  v14 = sub_1E11A0();
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v13, a4, v14);
}

uint64_t sub_F070()
{
  v1 = 0x746144746E657665;
  if (*v0 != 2)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_F0F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_106A4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_F11C(uint64_t a1)
{
  v2 = sub_F424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F158(uint64_t a1)
{
  v2 = sub_F424();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WelcomeActionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27DF40, &qword_1E4F80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_48B8(a1, a1[3]);
  sub_F424();
  sub_1E1E00();
  v9 = *(v3 + 4);
  v11[8] = *v3;
  v12 = v9;
  v11[7] = 0;
  sub_F478();
  sub_1E1CF0();
  if (!v2)
  {
    v11[6] = *(v3 + 8);
    v11[5] = 1;
    sub_F4CC();
    sub_1E1CF0();
    type metadata accessor for WelcomeActionEvent.Model(0);
    v11[4] = 2;
    sub_1E1150();
    sub_4EE8(&qword_27D810, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
    v11[3] = 3;
    sub_1E11A0();
    sub_4EE8(&qword_27D818, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_F424()
{
  result = qword_27DF48;
  if (!qword_27DF48)
  {
    result = swift_getWitnessTable(byte_1E515C, &type metadata for WelcomeActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DF48);
  }

  return result;
}

unint64_t sub_F478()
{
  result = qword_27DF50;
  if (!qword_27DF50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeScreenData, &type metadata for WelcomeScreenData, v0, v1);
    atomic_store(result, &qword_27DF50);
  }

  return result;
}

unint64_t sub_F4CC()
{
  result = qword_27DF58;
  if (!qword_27DF58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeActionData, &type metadata for WelcomeActionData, v0, v1);
    atomic_store(result, &qword_27DF58);
  }

  return result;
}

void WelcomeActionEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v45 = sub_1E11A0();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E1150();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_3D68(&qword_27DF60, &qword_1E4F88);
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - v6;
  v8 = type metadata accessor for WelcomeActionEvent.Model(0);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_48B8(a1, a1[3]);
  sub_F424();
  v11 = v47;
  sub_1E1DF0();
  if (v11)
  {
    sub_4E48(a1, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v47 = v5;
    v38 = v8;
    v19 = v10;
    v20 = v42;
    v21 = v43;
    v23 = v44;
    v22 = v45;
    v52 = 0;
    sub_F9D0();
    sub_1E1C20();
    v24 = v54;
    v25 = v19;
    *v19 = v53;
    *(v19 + 1) = v24;
    v50 = 1;
    sub_FA24();
    sub_1E1C20();
    v19[8] = v51;
    v49 = 2;
    sub_4EE8(&qword_27D830, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
    v26 = v47;
    sub_1E1C20();
    v27 = v26;
    v28 = v38;
    v29 = *(v41 + 32);
    v37 = *(v38 + 24);
    v29(v25 + v37, v27, v21);
    v48 = 3;
    sub_4EE8(&qword_27D838, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1E1C20();
    (*(v20 + 8))(v7, v46);
    (*(v39 + 32))(v25 + *(v28 + 28), v23, v22);
    sub_FA78(v25, v40);
    sub_4E48(a1, v30, v31, v32, v33, v34, v35, v36);
    sub_FADC(v25);
  }
}

unint64_t sub_F9D0()
{
  result = qword_27DF68;
  if (!qword_27DF68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeScreenData, &type metadata for WelcomeScreenData, v0, v1);
    atomic_store(result, &qword_27DF68);
  }

  return result;
}

unint64_t sub_FA24()
{
  result = qword_27DF70;
  if (!qword_27DF70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WelcomeActionData, &type metadata for WelcomeActionData, v0, v1);
    atomic_store(result, &qword_27DF70);
  }

  return result;
}

uint64_t sub_FA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeActionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FADC(uint64_t a1)
{
  v2 = type metadata accessor for WelcomeActionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FBD8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27DF38, &qword_1E4F68);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

uint64_t sub_FD5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27DF38, &qword_1E4F68);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_FF28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27DF30, &qword_1E4F60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27DF38, &qword_1E4F68);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_100EC(uint64_t a1)
{
  sub_10210(319, &qword_27DFE0, sub_F9D0, sub_F478, &type metadata for WelcomeScreenData);
  if (v1 <= 0x3F)
  {
    sub_10210(319, &unk_27DFE8, sub_FA24, sub_F4CC, &type metadata for WelcomeActionData);
    if (v2 <= 0x3F)
    {
      sub_5684(319);
      if (v3 <= 0x3F)
      {
        sub_5750(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_102A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_103D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = a2 + 2;
  }

  else
  {
    v8 = sub_1E1150();
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
      v13 = sub_1E11A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_104F0(uint64_t a1)
{
  result = sub_1E1150();
  if (v2 <= 0x3F)
  {
    result = sub_1E11A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_105A0()
{
  result = qword_27E0B8;
  if (!qword_27E0B8)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for WelcomeActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E0B8);
  }

  return result;
}

unint64_t sub_105F8()
{
  result = qword_27E0C0;
  if (!qword_27E0C0)
  {
    result = swift_getWitnessTable(asc_1E50A4, &type metadata for WelcomeActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E0C0);
  }

  return result;
}

unint64_t sub_10650()
{
  result = qword_27E0C8;
  if (!qword_27E0C8)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for WelcomeActionEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E0C8);
  }

  return result;
}

uint64_t sub_106A4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = 0x80000000002138F0;
  if (a1 == 0xD000000000000011 && 0x80000000002138F0 == a2 || (sub_1E1D30() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x8000000000213910;
    if (a1 == 0xD000000000000011 && 0x8000000000213910 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }
}

Swift::Int sub_1083C()
{
  sub_1E1DC0();
  sub_1E1DD0(0);
  return sub_1E1DE0();
}

Swift::Int sub_108A8(uint64_t a1)
{
  sub_1E1DC0();
  sub_1E1DD0(0);
  return sub_1E1DE0();
}

void sub_10904(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, int64_t a6@<X5>, int64_t a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0xD000000000000014 && 0x8000000000213930 == a2)
  {
    a2, 0x8000000000213930, 0xD000000000000014, a4, a5, a6, a7, a8;
    v10 = 0;
  }

  else
  {
    v11 = sub_1E1D30();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v10 = v11 ^ 1;
  }

  *a3 = v10 & 1;
}

uint64_t sub_109A4(uint64_t a1)
{
  v2 = sub_10E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_109E0(uint64_t a1)
{
  v2 = sub_10E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GetStartedActionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E0D0, &qword_1E51B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_48B8(a1, a1[3]);
  sub_10E10();
  sub_1E1E00();
  v10 = v7;
  sub_10E64();
  sub_1E1CF0();
  return (*(v4 + 8))(v6, v3);
}

void GetStartedActionData.init(from:)(BAEventReporter **a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_3D68(&qword_27E0E8, &qword_1E51B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_48B8(a1, a1[3]);
  sub_10E10();
  sub_1E1DF0();
  if (!v2)
  {
    sub_10EB8();
    sub_1E1C20();
    (*(v6 + 8))(v8, v5);
    *a2 = v17;
  }

  sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t _s13BookAnalytics20GetStartedActionDataV2eeoiySbAC_ACtFZ_0(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE800000000000000;
  v10 = 0x65756E69746E6F63;
  if (v8 != 1)
  {
    v10 = 0x616E614D61746164;
    v9 = 0xEA00000000006567;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E776F6E6B6E75;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE800000000000000;
  v14 = 0x65756E69746E6F63;
  if (*a2 != 1)
  {
    v14 = 0x616E614D61746164;
    v13 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1E1D30();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

unint64_t sub_10E10()
{
  result = qword_27E0D8;
  if (!qword_27E0D8)
  {
    result = swift_getWitnessTable(byte_1E5388, &type metadata for GetStartedActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E0D8);
  }

  return result;
}

unint64_t sub_10E64()
{
  result = qword_27E0E0;
  if (!qword_27E0E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetStartedActionType, &type metadata for GetStartedActionType, v0, v1);
    atomic_store(result, &qword_27E0E0);
  }

  return result;
}

unint64_t sub_10EB8()
{
  result = qword_27E0F0;
  if (!qword_27E0F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetStartedActionType, &type metadata for GetStartedActionType, v0, v1);
    atomic_store(result, &qword_27E0F0);
  }

  return result;
}

unint64_t sub_10F10()
{
  result = qword_27E0F8;
  if (!qword_27E0F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetStartedActionData, &type metadata for GetStartedActionData, v0, v1);
    atomic_store(result, &qword_27E0F8);
  }

  return result;
}

unint64_t sub_10F68()
{
  result = qword_27E100;
  if (!qword_27E100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GetStartedActionData, &type metadata for GetStartedActionData, v0, v1);
    atomic_store(result, &qword_27E100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GetStartedActionData.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GetStartedActionData.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_110B8()
{
  result = qword_27E108;
  if (!qword_27E108)
  {
    result = swift_getWitnessTable(asc_1E5360, &type metadata for GetStartedActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E108);
  }

  return result;
}

unint64_t sub_11110()
{
  result = qword_27E110;
  if (!qword_27E110)
  {
    result = swift_getWitnessTable(aQ_24, &type metadata for GetStartedActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E110);
  }

  return result;
}

unint64_t sub_11168()
{
  result = qword_27E118;
  if (!qword_27E118)
  {
    result = swift_getWitnessTable(a9_11, &type metadata for GetStartedActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E118);
  }

  return result;
}

BookAnalytics::ModelType_optional __swiftcall ModelType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25EFB0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 7;
  if (v5 < 7)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t ModelType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x43676E6964616572;
  if (v1 != 5)
  {
    v3 = 0x6F72446563697270;
  }

  v4 = 0x736C616F67;
  if (v1 != 3)
  {
    v4 = 0x62756C636B6F6F62;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C61626F6C67;
  if (v1 != 1)
  {
    v5 = 0x6E656D6D6F636572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_11318()
{
  result = qword_27E120;
  if (!qword_27E120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelType, &type metadata for ModelType, v0, v1);
    atomic_store(result, &qword_27E120);
  }

  return result;
}

void sub_11378(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEF676E696863616FLL;
  if (v2 != 5)
  {
    v4 = 0xE900000000000070;
  }

  v5 = 0xE500000000000000;
  if (v2 != 3)
  {
    v5 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v4 = v5;
  }

  v6 = 0xE600000000000000;
  if (v2 != 1)
  {
    v6 = 0xEF736E6F69746164;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_114B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEF676E696863616FLL;
  v6 = 0x43676E6964616572;
  if (v2 != 5)
  {
    v6 = 0x6F72446563697270;
    v5 = 0xE900000000000070;
  }

  v7 = 0xE500000000000000;
  v8 = 0x736C616F67;
  if (v2 != 3)
  {
    v8 = 0x62756C636B6F6F62;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C61626F6C67;
  if (v2 != 1)
  {
    v10 = 0x6E656D6D6F636572;
    v9 = 0xEF736E6F69746164;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ViewAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_117A4()
{
  result = qword_27E128;
  if (!qword_27E128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModelType, &type metadata for ModelType, v0, v1);
    atomic_store(result, &qword_27E128);
  }

  return result;
}

BookAnalytics::ScrollViewStatus_optional __swiftcall ScrollViewStatus.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F078;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 3;
  if (v5 < 3)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t sub_11858()
{
  result = qword_27E130;
  if (!qword_27E130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewStatus, &type metadata for ScrollViewStatus, v0, v1);
    atomic_store(result, &qword_27E130);
  }

  return result;
}

unint64_t sub_11978()
{
  result = qword_27E138;
  if (!qword_27E138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewStatus, &type metadata for ScrollViewStatus, v0, v1);
    atomic_store(result, &qword_27E138);
  }

  return result;
}

BookAnalytics::ReaderType_optional __swiftcall ReaderType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F0E0;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 6;
  if (v5 < 6)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

unint64_t ReaderType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x655279646E657274;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x52636972656E6567;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6552736569726573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_11B0C()
{
  result = qword_27E140;
  if (!qword_27E140)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReaderType, &type metadata for ReaderType, v0, v1);
    atomic_store(result, &qword_27E140);
  }

  return result;
}

void sub_11B68(uint64_t a1)
{
  v2 = 0xEC00000072656461;
  v3 = *v1;
  v4 = 0x8000000000212530;
  v5 = 0x8000000000212550;
  if (v3 != 4)
  {
    v5 = 0xED00007265646165;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v6 = 0x8000000000212510;
  if (v3 == 1)
  {
    v6 = 0xEC00000072656461;
  }

  if (*v1)
  {
    v2 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  sub_1E17D0();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void sub_11C84(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x655279646E657274;
  v4 = 0xD000000000000010;
  v5 = 0x8000000000212530;
  v6 = 0x8000000000212550;
  v7 = 0xD000000000000011;
  if (v2 != 4)
  {
    v7 = 0x52636972656E6567;
    v6 = 0xED00007265646165;
  }

  if (v2 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6552736569726573;
  v9 = 0x8000000000212510;
  if (v2 == 1)
  {
    v9 = 0xEC00000072656461;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xEC00000072656461;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t getEnumTagSinglePayload for ReaderType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReaderType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_11F5C()
{
  result = qword_27E148;
  if (!qword_27E148)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReaderType, &type metadata for ReaderType, v0, v1);
    atomic_store(result, &qword_27E148);
  }

  return result;
}

uint64_t sub_11FB0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}

void sub_11FF8(uint64_t a1@<X0>, BAEventReporter *a2@<X1>, char *a3@<X8>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEC00000044496E6FLL;
  v13 = a1 == 0x697463656C6C6F63 && a2 == 0xEC00000044496E6FLL;
  if (v13 || (sub_1E1D30() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000000213950 == a2)
  {
    a2, 0x8000000000213950, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1E1D30();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_120E0(uint64_t a1)
{
  v2 = sub_122EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1211C(uint64_t a1)
{
  v2 = sub_122EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleCollectionData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E150, &qword_1E5740);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  sub_48B8(a1, a1[3]);
  sub_122EC();
  sub_1E1E00();
  v12 = 0;
  v7 = v9[1];
  sub_1E1CB0();
  if (!v7)
  {
    v11 = 1;
    sub_1E1D00();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_122EC()
{
  result = qword_27E158;
  if (!qword_27E158)
  {
    result = swift_getWitnessTable("Q}\a", &type metadata for SingleCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E158);
  }

  return result;
}

void SingleCollectionData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27E160, &qword_1E5748);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_48B8(a1, a1[3]);
  sub_122EC();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v37 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v19 = v16;
    v36 = 1;
    v20 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    *a2 = v19;
    *(a2 + 8) = v18;
    *(a2 + 16) = v20;

    sub_4E48(a1, v21, v22, v23, v24, v25, v26, v27);
    v18, v28, v29, v30, v31, v32, v33, v34;
  }
}

unint64_t sub_12520()
{
  result = qword_27E168;
  if (!qword_27E168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleCollectionData, &type metadata for SingleCollectionData, v0, v1);
    atomic_store(result, &qword_27E168);
  }

  return result;
}

unint64_t sub_12578()
{
  result = qword_27E170;
  if (!qword_27E170)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleCollectionData, &type metadata for SingleCollectionData, v0, v1);
    atomic_store(result, &qword_27E170);
  }

  return result;
}

unint64_t sub_12620()
{
  result = qword_27E178;
  if (!qword_27E178)
  {
    result = swift_getWitnessTable("i}\a", &type metadata for SingleCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E178);
  }

  return result;
}

unint64_t sub_12678()
{
  result = qword_27E180;
  if (!qword_27E180)
  {
    result = swift_getWitnessTable(byte_1E5870, &type metadata for SingleCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E180);
  }

  return result;
}

unint64_t sub_126D0()
{
  result = qword_27E188;
  if (!qword_27E188)
  {
    result = swift_getWitnessTable(byte_1E5898, &type metadata for SingleCollectionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E188);
  }

  return result;
}

BookAnalytics::CellularRadioAccessTechnology_optional __swiftcall CellularRadioAccessTechnology.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v15._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_25F190;
  v15._object = object;
  v5 = sub_1E1B70(v4, v15);
  object, v6, v7, v8, v9, v10, v11, v12;
  v14 = 16;
  if (v5 < 0x10)
  {
    v14 = v5;
  }

  *v3 = v14;
  return result;
}

uint64_t CellularRadioAccessTechnology.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1936879719;
      break;
    case 2:
      result = 1701274725;
      break;
    case 3:
      result = 0x616D646377;
      break;
    case 4:
      result = 0x6170647368;
      break;
    case 5:
      result = 0x6170757368;
      break;
    case 6:
      result = 0x7831616D6463;
      break;
    case 7:
    case 8:
    case 9:
      result = 0x6F647665616D6463;
      break;
    case 0xA:
      result = 0x6470726865;
      break;
    case 0xB:
      result = 6648940;
      break;
    case 0xC:
      result = 1768319351;
      break;
    case 0xD:
      result = 0x6863616552746F6ELL;
      break;
    case 0xE:
      result = 0x61736E726ELL;
      break;
    case 0xF:
      result = 29294;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1291C()
{
  v0 = CellularRadioAccessTechnology.rawValue.getter();
  v2 = v1;
  v3 = CellularRadioAccessTechnology.rawValue.getter();
  v11 = v4;
  if (v0 == v3 && v2 == v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E1D30();
  }

  v2, v4, v5, v6, v7, v8, v9, v10;
  v11, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

unint64_t sub_129BC()
{
  result = qword_27E190;
  if (!qword_27E190)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CellularRadioAccessTechnology, &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_27E190);
  }

  return result;
}

Swift::Int sub_12A10()
{
  sub_1E1DC0();
  CellularRadioAccessTechnology.rawValue.getter();
  v1 = v0;
  sub_1E17D0();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1E1DE0();
}

void sub_12A78(uint64_t a1)
{
  CellularRadioAccessTechnology.rawValue.getter();
  v2 = v1;
  sub_1E17D0();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_12ADC(uint64_t a1)
{
  sub_1E1DC0();
  CellularRadioAccessTechnology.rawValue.getter();
  v2 = v1;
  sub_1E17D0();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1E1DE0();
}

uint64_t sub_12B4C@<X0>(uint64_t *a1@<X8>)
{
  result = CellularRadioAccessTechnology.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CellularRadioAccessTechnology(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CellularRadioAccessTechnology(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_12D74()
{
  result = qword_27E198;
  if (!qword_27E198)
  {
    result = swift_getWitnessTable("A}\a", &type metadata for CellularRadioAccessTechnology, v0, v1);
    atomic_store(result, &qword_27E198);
  }

  return result;
}

uint64_t PlayEvent.contentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlayEvent.contentData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioSkipEvent.skipData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D8, &qword_1E5AE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.skipData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 20);
  v4 = sub_3D68(&qword_27E1D8, &qword_1E5AE0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSkipEvent.listeningActionSourceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.listeningActionSourceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 24);
  v4 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSkipEvent.bitRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.bitRateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 28);
  v4 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSkipEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 32);
  v4 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSkipEvent.seriesData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 36);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.seriesData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 36);
  v4 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSkipEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioSkipEvent(0) + 40);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioSkipEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioSkipEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E1D8, &qword_1E5AE0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = enum case for EventProperty.optional<A>(_:);
  v15 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v2, v17);
}

uint64_t PlayEvent.Model.contentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_13A5C(v9, &v8);
}

uint64_t AudioSkipEvent.Model.skipData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v6[0] = *(v1 + 96);
  v6[1] = v2;
  v7 = *(v1 + 128);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_13AF8(v6, v5);
}

void AudioSkipEvent.Model.bitRateData.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 140);
  *a1 = *(v1 + 132);
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
}

uint64_t AudioSkipEvent.Model.errorData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[21];
  *a1 = v1[18];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t SearchResultSelectEvent.Model.seriesData.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  v6 = v1[26];
  v7 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_13BDC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_13BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t AudioSkipEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioSkipEvent.Model(0) + 40);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioSkipEvent.Model.init(contentData:skipData:listeningActionSourceData:bitRateData:errorData:seriesData:eventData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a3;
  v11 = *a4;
  v12 = *(a4 + 4);
  v13 = a4[2];
  v14 = *a5;
  v15 = *(a5 + 2);
  v16 = *(a5 + 3);
  v17 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v17;
  v18 = a1[5];
  *(a8 + 64) = a1[4];
  *(a8 + 80) = v18;
  v19 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v19;
  v20 = *(a2 + 16);
  *(a8 + 96) = *a2;
  *(a8 + 112) = v20;
  *(a8 + 128) = *(a2 + 32);
  *(a8 + 129) = v10;
  *(a8 + 132) = v11;
  *(a8 + 136) = v12;
  *(a8 + 140) = v13;
  *(a8 + 144) = v14;
  *(a8 + 160) = v15;
  *(a8 + 168) = v16;
  v21 = a6[1];
  *(a8 + 176) = *a6;
  *(a8 + 192) = v21;
  *(a8 + 208) = a6[2];
  v22 = *(type metadata accessor for AudioSkipEvent.Model(0) + 40);
  v23 = sub_1E1150();
  v24 = *(*(v23 - 8) + 32);

  return v24(a8 + v22, a7, v23);
}

uint64_t sub_13D74()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6144736569726573;
  if (v1 != 5)
  {
    v3 = 0x746144746E657665;
  }

  v4 = 0x4465746152746962;
  if (v1 != 3)
  {
    v4 = 0x746144726F727265;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6174614470696B73;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_13E64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_15E6C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_13E98(uint64_t a1)
{
  v2 = sub_1437C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_13ED4(uint64_t a1)
{
  v2 = sub_1437C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AudioSkipEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_3D68(&qword_27E1F8, &qword_1E5AE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  sub_48B8(a1, a1[3]);
  sub_1437C();
  sub_1E1E00();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v66 = *(v3 + 32);
  v67 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v68 = *(v3 + 64);
  v69 = v12;
  v13 = *(v3 + 16);
  v65[0] = *v3;
  v65[1] = v13;
  v61 = v66;
  v62 = v11;
  v14 = *(v3 + 80);
  v63 = v68;
  v64 = v14;
  v59 = v65[0];
  v60 = v10;
  v72 = 0;
  sub_13A5C(v65, v58);
  sub_143D0();
  sub_1E1CF0();
  v58[2] = v61;
  v58[3] = v62;
  v58[4] = v63;
  v58[5] = v64;
  v58[0] = v59;
  v58[1] = v60;
  sub_14424(v58);
  if (!v2)
  {
    v15 = *(v3 + 112);
    v56[0] = *(v3 + 96);
    v56[1] = v15;
    v57 = *(v3 + 128);
    v16 = *(v3 + 112);
    v53 = *(v3 + 96);
    v54 = v16;
    v55 = *(v3 + 128);
    v71 = 1;
    sub_13AF8(v56, &v45);
    sub_14478();
    sub_1E1CF0();
    v51[0] = v53;
    v51[1] = v54;
    v52 = v55;
    sub_144CC(v51);
    LOWORD(v45) = *(v3 + 129);
    v70 = 2;
    sub_14520();
    sub_1E1CF0();
    v17 = *(v3 + 136);
    v18 = *(v3 + 140);
    LODWORD(v45) = *(v3 + 132);
    BYTE4(v45) = v17;
    LODWORD(v46) = v18;
    v70 = 3;
    sub_14574();
    sub_1E1CF0();
    v19 = *(v3 + 152);
    v20 = *(v3 + 160);
    v21 = *(v3 + 168);
    v45 = *(v3 + 144);
    v46 = v19;
    v47 = v20;
    v48 = v21;
    v70 = 4;
    sub_145C8();

    sub_1E1CF0();
    v22 = v46;
    v48, v23, v24, v25, v26, v27, v28, v29;
    v22, v30, v31, v32, v33, v34, v35, v36;
    v37 = *(v3 + 184);
    v38 = *(v3 + 192);
    v39 = *(v3 + 200);
    v40 = *(v3 + 208);
    v41 = *(v3 + 216);
    v45 = *(v3 + 176);
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v50 = v41;
    v70 = 5;
    sub_13BDC(v45, v37, v38, v39, v40, v41);
    sub_D57C();
    sub_1E1C80();
    sub_1461C(v45, v46, v47, v48, v49, v50, v42, v43);
    type metadata accessor for AudioSkipEvent.Model(0);
    LOBYTE(v45) = 6;
    sub_1E1150();
    sub_14E5C(&qword_27D810, &protocol conformance descriptor for EventData);
    sub_1E1CF0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1437C()
{
  result = qword_27E200;
  if (!qword_27E200)
  {
    result = swift_getWitnessTable(byte_1E5CDC, &type metadata for AudioSkipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E200);
  }

  return result;
}

unint64_t sub_143D0()
{
  result = qword_27E208;
  if (!qword_27E208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentData, &type metadata for ContentData, v0, v1);
    atomic_store(result, &qword_27E208);
  }

  return result;
}

unint64_t sub_14478()
{
  result = qword_27E210;
  if (!qword_27E210)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipData, &type metadata for SkipData, v0, v1);
    atomic_store(result, &qword_27E210);
  }

  return result;
}

unint64_t sub_14520()
{
  result = qword_27E218;
  if (!qword_27E218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningActionSourceData, &type metadata for ListeningActionSourceData, v0, v1);
    atomic_store(result, &qword_27E218);
  }

  return result;
}

unint64_t sub_14574()
{
  result = qword_27E220;
  if (!qword_27E220)
  {
    result = swift_getWitnessTable("\t4\a", &type metadata for BitRateData, v0, v1);
    atomic_store(result, &qword_27E220);
  }

  return result;
}

unint64_t sub_145C8()
{
  result = qword_27E228;
  if (!qword_27E228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ErrorData, &type metadata for ErrorData, v0, v1);
    atomic_store(result, &qword_27E228);
  }

  return result;
}

void sub_1461C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, BAEventReporter *a6, int64_t a7, void *a8)
{
  if (a6 != (&dword_0 + 1))
  {
    a6, a2, a3, a4, a5, a6, a7, a8;
  }
}

void AudioSkipEvent.Model.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1E1150();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_3D68(&qword_27E230, &qword_1E5AF0);
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AudioSkipEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v41 = a1;
  sub_48B8(a1, v12);
  sub_1437C();
  v40 = v8;
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(v41, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v34 = v9;
    v35 = v6;
    v20 = v38;
    v56 = 0;
    sub_14CB8();
    v21 = v39;
    sub_1E1C20();
    v22 = v51;
    *(v11 + 2) = v50;
    *(v11 + 3) = v22;
    v23 = v53;
    *(v11 + 4) = v52;
    *(v11 + 5) = v23;
    v24 = v49;
    *v11 = v48;
    *(v11 + 1) = v24;
    v55 = 1;
    sub_14D0C();
    sub_1E1C20();
    v25 = v46;
    *(v11 + 6) = v45;
    *(v11 + 7) = v25;
    v11[128] = v47;
    v54 = 2;
    sub_14D60();
    sub_1E1C20();
    *(v11 + 129) = v42;
    v54 = 3;
    sub_14DB4();
    sub_1E1C20();
    *&stru_68.segname[12] = v42;
    LOBYTE(stru_68.addr) = BYTE4(v42);
    HIDWORD(stru_68.addr) = DWORD2(v42);
    v54 = 4;
    sub_14E08();
    sub_1E1C20();
    *&stru_68.size = v42;
    *&stru_68.reloff = v43;
    v54 = 5;
    sub_DAD8();
    sub_1E1BB0();
    *&stru_68.reserved2 = v42;
    *&stru_B8.sectname[8] = v43;
    *&stru_B8.segname[8] = v44;
    LOBYTE(v42) = 6;
    sub_14E5C(&qword_27D830, &protocol conformance descriptor for EventData);
    v26 = v35;
    sub_1E1C20();
    (*(v20 + 8))(v40, v21);
    (*(v36 + 32))(*(v34 + 40), v26, v4);
    sub_14EA0(0, v37);
    sub_4E48(v41, v27, v28, v29, v30, v31, v32, v33);
    sub_14F04(0);
  }
}

unint64_t sub_14CB8()
{
  result = qword_27E238;
  if (!qword_27E238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentData, &type metadata for ContentData, v0, v1);
    atomic_store(result, &qword_27E238);
  }

  return result;
}

unint64_t sub_14D0C()
{
  result = qword_27E240;
  if (!qword_27E240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SkipData, &type metadata for SkipData, v0, v1);
    atomic_store(result, &qword_27E240);
  }

  return result;
}

unint64_t sub_14D60()
{
  result = qword_27E248;
  if (!qword_27E248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListeningActionSourceData, &type metadata for ListeningActionSourceData, v0, v1);
    atomic_store(result, &qword_27E248);
  }

  return result;
}

unint64_t sub_14DB4()
{
  result = qword_27E250;
  if (!qword_27E250)
  {
    result = swift_getWitnessTable("!4\a", &type metadata for BitRateData, v0, v1);
    atomic_store(result, &qword_27E250);
  }

  return result;
}

unint64_t sub_14E08()
{
  result = qword_27E258;
  if (!qword_27E258)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ErrorData, &type metadata for ErrorData, v0, v1);
    atomic_store(result, &qword_27E258);
  }

  return result;
}

uint64_t sub_14E5C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1E1150();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_14EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSkipEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14F04(uint64_t a1)
{
  v2 = type metadata accessor for AudioSkipEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15000@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_3D68(&qword_27E1D8, &qword_1E5AE0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = enum case for EventProperty.optional<A>(_:);
  v16 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  v18 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v4, v18);
}

uint64_t sub_1527C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_3D68(&qword_27E1D8, &qword_1E5AE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_15544(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_3D68(&qword_27E1D0, &qword_1E8400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_3D68(&qword_27E1D8, &qword_1E5AE0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_3D68(&qword_27E1E0, &unk_2099E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = sub_3D68(&qword_27E1E8, &unk_1F3530);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = sub_3D68(&qword_27E1F0, &unk_1ED4F0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  v19 = sub_3D68(&qword_27DD80, &qword_1E4D30);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v21 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[10];

  return v22(v23, a2, a2, v21);
}

void sub_15804(uint64_t a1)
{
  sub_15A50(319, &qword_27E2C8, sub_14CB8, sub_143D0, &type metadata for ContentData);
  if (v1 <= 0x3F)
  {
    sub_15A50(319, &qword_27E2D0, sub_14D0C, sub_14478, &type metadata for SkipData);
    if (v2 <= 0x3F)
    {
      sub_15A50(319, &qword_27E2D8, sub_14D60, sub_14520, &type metadata for ListeningActionSourceData);
      if (v3 <= 0x3F)
      {
        sub_15A50(319, &qword_27E2E0, sub_14DB4, sub_14574, &type metadata for BitRateData);
        if (v4 <= 0x3F)
        {
          sub_15A50(319, &unk_27E2E8, sub_14E08, sub_145C8, &type metadata for ErrorData);
          if (v5 <= 0x3F)
          {
            sub_15A50(319, &qword_27DE18, sub_DAD8, sub_D57C, &type metadata for SeriesData);
            if (v6 <= 0x3F)
            {
              sub_5684(319);
              if (v7 <= 0x3F)
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

void sub_15A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_1E0C90();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_15AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E1150();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_15BA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E1150();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15C44(uint64_t a1)
{
  sub_15D04();
  if (v1 <= 0x3F)
  {
    sub_1E1150();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_15D04()
{
  if (!qword_27E398)
  {
    v0 = sub_1E1A20();
    if (!v1)
    {
      atomic_store(v0, &qword_27E398);
    }
  }
}

unint64_t sub_15D68()
{
  result = qword_27E3E0;
  if (!qword_27E3E0)
  {
    result = swift_getWitnessTable(byte_1E5CB4, &type metadata for AudioSkipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3E0);
  }

  return result;
}

unint64_t sub_15DC0()
{
  result = qword_27E3E8;
  if (!qword_27E3E8)
  {
    result = swift_getWitnessTable(byte_1E5C24, &type metadata for AudioSkipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3E8);
  }

  return result;
}

unint64_t sub_15E18()
{
  result = qword_27E3F0;
  if (!qword_27E3F0)
  {
    result = swift_getWitnessTable(byte_1E5C4C, &type metadata for AudioSkipEvent.Model.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3F0);
  }

  return result;
}

uint64_t sub_15E6C(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x44746E65746E6F63 && a2 == 0xEB00000000617461;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6174614470696B73 && a2 == 0xE800000000000000 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = 0x8000000000213970;
    if (a1 == 0xD000000000000019 && 0x8000000000213970 == a2 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else if (a1 == 0x4465746152746962 && a2 == 0xEB00000000617461 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else if (a1 == 0x6144736569726573 && a2 == 0xEA00000000006174 || (sub_1E1D30() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 5;
    }

    else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061)
    {
      0xE900000000000061, v12, a3, a4, a5, a6, a7, a8;
      return 6;
    }

    else
    {
      v13 = sub_1E1D30();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }
  }
}

void __swiftcall MediaData.init(mediaID:mediaType:mediaDuration:)(BookAnalytics::MediaData *__return_ptr retstr, Swift::String mediaID, Swift::String mediaType, Swift::Int32 mediaDuration)
{
  retstr->mediaID = mediaID;
  retstr->mediaType = mediaType;
  retstr->mediaDuration = mediaDuration;
}

BOOL static MediaData.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1E1D30()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1E1D30()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_16198()
{
  v1 = 0x707954616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x727544616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449616964656DLL;
  }
}

uint64_t sub_16204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, BAEventReporter *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, int64_t a7@<X5>, int64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_169C4(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1622C(uint64_t a1)
{
  v2 = sub_16464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16268(uint64_t a1)
{
  v2 = sub_16464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MediaData.encode(to:)(void *a1)
{
  v3 = sub_3D68(&qword_27E3F8, &qword_1E5D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  v11 = *(v1 + 32);
  sub_48B8(a1, a1[3]);
  sub_16464();
  sub_1E1E00();
  v14 = 0;
  v8 = v10[3];
  sub_1E1CB0();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1E1CB0();
  v12 = 2;
  sub_1E1D00();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_16464()
{
  result = qword_27E400;
  if (!qword_27E400)
  {
    result = swift_getWitnessTable("]w\a", &type metadata for MediaData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E400);
  }

  return result;
}

void MediaData.init(from:)(BAEventReporter **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_3D68(&qword_27E408, &qword_1E5D38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_48B8(a1, a1[3]);
  sub_16464();
  sub_1E1DF0();
  if (v2)
  {
    sub_4E48(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    v49 = 0;
    v16 = sub_1E1BE0();
    v18 = v17;
    v46 = v16;
    v48 = 1;
    v44 = sub_1E1BE0();
    v45 = v19;
    v47 = 2;
    v20 = sub_1E1C30();
    (*(v6 + 8))(v8, v5);
    v21 = v45;
    *a2 = v46;
    *(a2 + 8) = v18;
    *(a2 + 16) = v44;
    *(a2 + 24) = v21;
    *(a2 + 32) = v20;

    sub_4E48(a1, v22, v23, v24, v25, v26, v27, v28);
    v21, v29, v30, v31, v32, v33, v34, v35;
    v18, v36, v37, v38, v39, v40, v41, v42;
  }
}

unint64_t sub_16720()
{
  result = qword_27E410;
  if (!qword_27E410)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaData, &type metadata for MediaData, v0, v1);
    atomic_store(result, &qword_27E410);
  }

  return result;
}

unint64_t sub_16778()
{
  result = qword_27E418;
  if (!qword_27E418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaData, &type metadata for MediaData, v0, v1);
    atomic_store(result, &qword_27E418);
  }

  return result;
}

__n128 sub_167FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_16810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_16858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_168C0()
{
  result = qword_27E420;
  if (!qword_27E420)
  {
    result = swift_getWitnessTable("uw\a", &type metadata for MediaData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E420);
  }

  return result;
}

unint64_t sub_16918()
{
  result = qword_27E428;
  if (!qword_27E428)
  {
    result = swift_getWitnessTable(byte_1E5E64, &type metadata for MediaData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E428);
  }

  return result;
}

unint64_t sub_16970()
{
  result = qword_27E430;
  if (!qword_27E430)
  {
    result = swift_getWitnessTable(byte_1E5E8C, &type metadata for MediaData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E430);
  }

  return result;
}

uint64_t sub_169C4(uint64_t a1, BAEventReporter *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, void *a8)
{
  v10 = a1 == 0x4449616964656DLL && a2 == 0xE700000000000000;
  if (v10 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1E1D30() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x727544616964656DLL && a2 == 0xED00006E6F697461)
  {
    0xED00006E6F697461, 0xED00006E6F697461, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1E1D30();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MediaEngageEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaEngageEvent.mediaData.setter(uint64_t a1)
{
  v3 = sub_3D68(&qword_27E468, &qword_1E5F70);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageEvent.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  v4 = sub_3D68(&qword_27E470, &qword_1E5F78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.mediaEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  v4 = sub_3D68(&qword_27E470, &qword_1E5F78);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.sectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.sectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  v4 = sub_3D68(&qword_27E478, &unk_1E5F80);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.pageData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.pageData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  v4 = sub_3D68(&qword_27E480, &unk_1E71C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  v4 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  v4 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.linkData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  v4 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_3D68(&qword_27E468, &qword_1E5F70);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageEvent(0);
  v5 = v4[5];
  v6 = sub_3D68(&qword_27E470, &qword_1E5F78);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = enum case for EventProperty.optional<A>(_:);
  v9 = sub_3D68(&qword_27E478, &unk_1E5F80);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  v11 = sub_3D68(&qword_27E480, &unk_1E71C0);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  v13 = sub_3D68(&qword_27D7E8, &unk_1E4F70);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  v15 = sub_3D68(&qword_27D7F0, &qword_1E3CF0);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  v17 = sub_3D68(&qword_27E488, &unk_1E5F90);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v8, v17);
}

uint64_t MediaEngageEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t MediaEngageEvent.Model.mediaEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v10 = *(v1 + 72);
  v11 = v2;
  v4 = *(v1 + 120);
  v12 = *(v1 + 104);
  v3 = v12;
  v13 = v4;
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_177D8(v9, &v8);
}

uint64_t MediaEngageEvent.Model.sectionData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 184);
  v4 = *(v1 + 216);
  v13 = *(v1 + 200);
  v3 = v13;
  v14 = v4;
  v15 = *(v1 + 232);
  v5 = v15;
  v6 = *(v1 + 152);
  v10[0] = *(v1 + 136);
  v10[1] = v6;
  v11 = *(v1 + 168);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  return sub_17AA4(v10, &v9, &qword_27E490, &qword_205F90);
}

void MediaEngageEvent.Model.pageData.getter(uint64_t *a1@<X8>)
{
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[33];
  v5 = v1[34];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_178BC(v2, v3, v4, v5);
}

void sub_178BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t MediaEngageEvent.Model.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent.Model(0) + 32);
  v4 = sub_1E1150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.Model.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 40);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_17AA4(v17, v16, &qword_27E4A0, &qword_1E8860);
}

uint64_t sub_17AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3D68(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 MediaEngageEvent.Model.init(mediaData:mediaEngagementData:sectionData:pageData:eventData:timedData:linkData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *a1;
  v12 = a2[3];
  *(a8 + 72) = a2[2];
  *(a8 + 88) = v12;
  v13 = a2[5];
  *(a8 + 104) = a2[4];
  *(a8 + 120) = v13;
  v14 = a2[1];
  *(a8 + 40) = *a2;
  *(a8 + 56) = v14;
  v15 = a3[3];
  *(a8 + 168) = a3[2];
  v16 = *a3;
  *(a8 + 152) = a3[1];
  *(a8 + 136) = v16;
  v17 = a3[5];
  *(a8 + 232) = a3[6];
  v18 = a3[4];
  *(a8 + 216) = v17;
  *(a8 + 200) = v18;
  *(a8 + 184) = v15;
  v19 = a4[1];
  *(a8 + 248) = *a4;
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  *(a8 + 16) = *(a1 + 16);
  *(a8 + 24) = v20;
  *(a8 + 32) = v21;
  *(a8 + 264) = v19;
  v22 = type metadata accessor for MediaEngageEvent.Model(0);
  v23 = v22[8];
  v24 = sub_1E1150();
  (*(*(v24 - 8) + 32))(a8 + v23, a5, v24);
  sub_17C54(a6, a8 + v22[9]);
  v25 = a8 + v22[10];
  v26 = *(a7 + 112);
  *(v25 + 96) = *(a7 + 96);
  *(v25 + 112) = v26;
  *(v25 + 128) = *(a7 + 128);
  *(v25 + 144) = *(a7 + 144);
  v27 = *(a7 + 48);
  *(v25 + 32) = *(a7 + 32);
  *(v25 + 48) = v27;
  v28 = *(a7 + 80);
  *(v25 + 64) = *(a7 + 64);
  *(v25 + 80) = v28;
  result = *a7;
  v30 = *(a7 + 16);
  *v25 = *a7;
  *(v25 + 16) = v30;
  return result;
}

uint64_t sub_17C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_3D68(&qword_27E498, &unk_1E5FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17CC4()
{
  v1 = *v0;
  v2 = 0x746144616964656DLL;
  v3 = 0x74614464656D6974;
  if (v1 != 5)
  {
    v3 = 0x617461446B6E696CLL;
  }

  v4 = 0x6174614465676170;
  if (v1 != 3)
  {
    v4 = 0x746144746E657665;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x446E6F6974636573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}