id sub_100001C1C()
{
  if (qword_10003C7E8[0] != -1)
  {
    sub_100001C08();
  }

  v1 = qword_10003C7E0;

  return v1;
}

void *LiveLookupStoreProxy.activeExtensions()()
{
  v44 = &_swiftEmptyArrayStorage;
  sub_1000021D0((v0 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v1 = sub_100023724();
  v3 = v1;
  if (v1 >> 62)
  {
    v4 = sub_100023B14();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_29:

    return &_swiftEmptyArrayStorage;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v42 = &_swiftEmptyArrayStorage;
  *&v2 = 136315394;
  v38 = v2;
  v40 = v3;
  v41 = v3 & 0xC000000000000001;
  v39 = v4;
  do
  {
    if (v6)
    {
      v10 = sub_100023AF4();
    }

    else
    {
      v10 = *(v3 + 8 * v5 + 32);
    }

    v11 = v10;
    v12 = [v10 identifier];
    v13 = sub_100023984();
    v15 = v14;
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = v13;
      v18 = objc_opt_self();
      v43[0] = 0;
      v19 = [v18 extensionWithIdentifier:v12 error:v43];

      if (v19)
      {
        v20 = v43[0];

        v21 = v11;
        sub_1000239E4();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100023A14();
        }

        sub_100023A24();

        v42 = v44;
      }

      else
      {
        v26 = v43[0];
        sub_1000235B4();

        swift_willThrow();
        if (qword_10003C5C8 != -1)
        {
          swift_once();
        }

        v27 = sub_1000238C4();
        sub_100014284(v27, qword_10003C8F0);

        swift_errorRetain();
        v28 = sub_1000238A4();
        v29 = sub_100023A94();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v45 = v32;
          *v30 = v38;
          v43[0] = v17;
          v43[1] = v15;
          v33 = sub_100023994();
          v35 = sub_100018BDC(v33, v34, &v45);

          *(v30 + 4) = v35;
          *(v30 + 12) = 2112;
          swift_errorRetain();
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 14) = v36;
          *v31 = v36;
          _os_log_impl(&_mh_execute_header, v28, v29, "ignoring extension in DB, but not installed on the system: %s error=%@", v30, 0x16u);
          sub_100019928(v31, &qword_10003C760, &qword_100028660);

          sub_1000194A4(v32);
          v6 = v41;
        }

        else
        {
        }

        v4 = v39;
        v3 = v40;
      }
    }

    else
    {

      if (qword_10003C5C8 != -1)
      {
        swift_once();
      }

      v22 = sub_1000238C4();
      sub_100014284(v22, qword_10003C8F0);
      v23 = v11;
      v24 = sub_1000238A4();
      v25 = sub_100023A94();

      if (os_log_type_enabled(v24, v25))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v23;
        *v8 = v23;
        v9 = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "ignoring extension in DB with null identifier: %@", v7, 0xCu);
        sub_100019928(v8, &qword_10003C760, &qword_100028660);

        v6 = v41;
      }

      else
      {
      }
    }

    ++v5;
  }

  while (v4 != v5);

  return v42;
}

void *sub_1000021D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100002214(uint64_t a1)
{
  v2 = sub_100014320(&qword_10003C740, &qword_100028640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FTServerBag.identityWaitSeconds.getter()
{
  v1 = sub_100023974();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100023AC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100019BFC();
    if (swift_dynamicCast())
    {
      v3 = [v5 unsignedIntegerValue];

      return v3;
    }
  }

  else
  {
    sub_100002214(v8);
  }

  return 5;
}

uint64_t sub_1000024A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000024DC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002528()
{
  v1 = sub_100014320(&qword_10003C730, &qword_1000285B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000025BC()
{
  swift_unknownObjectRelease();

  sub_100019450(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002604()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002644()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002AC8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = PBReaderReadString();
        v23 = *(a1 + 32);
        *(a1 + 32) = v22;

        goto LABEL_55;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(LiveLookupIcon);
      objc_storeStrong((a1 + 16), v14);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100005014(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v33[0] & 0x7F) << v24;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v26;
      }

LABEL_53:
      v30 = 8;
      goto LABEL_54;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v33[0] & 0x7F) << v15;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_49;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_49:
      v30 = 24;
LABEL_54:
      *(a1 + v30) = v21;
      goto LABEL_55;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_100003850(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_100003890(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003954;
    v7[3] = &unk_100034A68;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void sub_100003954(uint64_t a1)
{
  v2 = sub_100001C1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request with requestIdentifier %@ completed", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) extension];

  if (v4)
  {
    [*(a1 + 40) setExtension:0];
    v5 = [*(a1 + 40) completionHandler];
    v5[2](v5, 0);

    [*(a1 + 40) setCompletionHandler:0];
  }
}

void sub_100003A50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003B34;
    block[3] = &unk_100034AB8;
    v11 = v5;
    v12 = v6;
    v13 = v8;
    dispatch_async(v9, block);
  }
}

void sub_100003B34(uint64_t a1)
{
  v2 = sub_100001C1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request with requestIdentifier %@ was cancelled. Error: %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 48) extension];

  if (v5)
  {
    [*(a1 + 48) setExtension:0];
    v6 = [*(a1 + 48) completionHandler];
    v7 = [*(a1 + 48) hostCancellationError];
    v8 = v7;
    if (!v7)
    {
      v8 = *(a1 + 40);
    }

    (v6)[2](v6, v8);

    [*(a1 + 48) setCompletionHandler:0];
  }
}

void sub_100003C64(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003D28;
    v7[3] = &unk_100034A68;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void sub_100003D28(uint64_t a1)
{
  v2 = sub_100001C1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000211EC(a1, v2);
  }

  v3 = [*(a1 + 40) extension];

  if (v3)
  {
    [*(a1 + 40) setExtension:0];
    v4 = [NSError cx_callDirectoryManagerErrorWithCode:2];
    v5 = [*(a1 + 40) completionHandler];
    (v5)[2](v5, v4);

    [*(a1 + 40) setCompletionHandler:0];
  }
}

void sub_100003DEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003EC8;
  block[3] = &unk_100034AB8;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_100003EC8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = sub_100001C1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100021268(a1, v2, v3);
    }

    v4 = [*(a1 + 40) extension];

    if (v4)
    {
      [*(a1 + 40) setExtension:0];
      v5 = [*(a1 + 40) completionHandler];
      v5[2](v5, *(a1 + 32));

      [*(a1 + 40) setCompletionHandler:0];
    }
  }

  else
  {
    [*(a1 + 40) setRequestIdentifier:*(a1 + 48)];
    v6 = [*(a1 + 40) extension];
    v7 = [v6 _extensionContextForUUID:*(a1 + 48)];
    [*(a1 + 40) setContext:v7];

    v8 = *(a1 + 40);
    v9 = [v8 context];
    [v9 setDelegate:v8];

    v10 = [*(a1 + 40) context];
    [v10 activate];
  }
}

void sub_100004338(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v5 = 0;
  [v2 extensionDataRequest:v3 isIncrementalLoadingAllowedWithError:&v5];
  v4 = v5;

  if (v4)
  {
    [*(a1 + 32) _cancelWithError:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000044A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 addedBlockingEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100004600(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 removedBlockingEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000473C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [v2 extensionDataRequest:v3 removedAllBlockingEntriesWithError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000489C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 addedIdentificationEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000049FC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = 0;
  v5 = [v2 extensionDataRequest:v3 removedIdentificationEntryData:v4 error:&v7];
  v6 = v7;

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100004B38(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v6 = 0;
  v4 = [v2 extensionDataRequest:v3 removedAllIdentificationEntriesWithError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _cancelWithError:v5];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100005014(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000572C(uint64_t a1)
{
  v2 = [[AWDServerConnection alloc] initWithComponentId:80 andBlockOnConfiguration:1];
  [*(a1 + 32) setServerConnection:v2];
}

AWDCXCallDirectoryChanged *sub_100005840(uint64_t a1)
{
  v2 = objc_alloc_init(AWDCXCallDirectoryChanged);
  [(AWDCXCallDirectoryChanged *)v2 setTotalBlockedHandles:*(a1 + 40)];
  [(AWDCXCallDirectoryChanged *)v2 setTotalIdentifiedHandles:*(a1 + 48)];
  [(AWDCXCallDirectoryChanged *)v2 setIsEnabled:1];
  [(AWDCXCallDirectoryChanged *)v2 setProviderBundleId:*(a1 + 32)];
  if (*(a1 + 40) >> 31)
  {
    v3 = sub_100001C1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Number of blocking entries (%ld) greater than INT_MAX", &v8, 0xCu);
    }
  }

  if (*(a1 + 48) >> 31)
  {
    v5 = sub_100001C1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Number of identification entries (%ld) greater than INT_MAX", &v8, 0xCu);
    }
  }

  return v2;
}

AWDCXCallDirectoryChanged *sub_100005A50(uint64_t a1)
{
  v2 = objc_alloc_init(AWDCXCallDirectoryChanged);
  [(AWDCXCallDirectoryChanged *)v2 setProviderBundleId:*(a1 + 32)];
  [(AWDCXCallDirectoryChanged *)v2 setIsEnabled:*(a1 + 40)];

  return v2;
}

void sub_100005B64(uint64_t a1)
{
  v2 = [*(a1 + 32) serverConnection];
  v3 = [v2 newMetricContainerWithIdentifier:*(a1 + 48)];

  v4 = sub_100001C1C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v9 = 134217984;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got metric container for metricId=%lu", &v9, 0xCu);
    }

    v7 = (*(*(a1 + 40) + 16))();
    [v3 setMetric:v7];

    v4 = [*(a1 + 32) serverConnection];
    [v4 submitMetric:v3];
  }

  else if (v5)
  {
    v8 = *(a1 + 48);
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping reporting for metricId=%lu since no metric container was provided", &v9, 0xCu);
  }
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(CDXManager);
  v2 = +[NSXPCListener serviceListener];
  [v2 setDelegate:v1];
  [v2 resume];

  objc_autoreleasePoolPop(v0);
  exit(1);
}

void sub_100005E10(id a1)
{
  qword_10003C7E0 = os_log_create("com.apple.calls.calldirectory", "Default");

  _objc_release_x1();
}

void sub_1000060D8(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionsDataSource];
  v96 = 0;
  v3 = [v2 installedExtensionsWithError:&v96];
  v4 = v96;

  v5 = sub_100001C1C();
  v6 = v5;
  if (v3)
  {
    v77 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000212F8();
    }

    v74 = a1;

    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v92 = 0u;
    v69 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v8)
    {
      v9 = v8;
      v79 = 0;
      v10 = 0;
      v11 = *v93;
      v12 = CXLiveLookupExtensionPointIdentifier;
      v70 = CXLiveLookupExtensionPointIdentifier;
      v72 = v7;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v93 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v92 + 1) + 8 * i);
          v15 = [v14 extensionPointIdentifier];
          v16 = [v15 isEqualToString:v12];

          if (v16)
          {
            v17 = [v14 identifier];
            if (v17 && (v18 = v17, [v14 identifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18, v20))
            {
              v75 = v10;
              if (!v79)
              {
                v79 = objc_alloc_init(NSMutableArray);
              }

              v21 = [LSApplicationRecord alloc];
              v22 = [v14 _plugIn];
              v23 = [v22 containingUrl];
              v91 = v77;
              v24 = 1;
              v25 = [v21 initWithURL:v23 allowPlaceholder:1 error:&v91];
              v26 = v91;

              if (v25)
              {
                v24 = [v25 isAppStoreVendable];
              }

              v27 = [*(v74 + 32) liveLookupStore];
              v28 = [v14 identifier];
              v29 = [v27 extensionUpdateFor:v28 isAppStorVendable:v24];
              [v79 addObject:v29];

              v77 = v26;
              v10 = v75;
              v12 = v70;
              v7 = v72;
            }

            else
            {
              v25 = sub_100001C1C();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v98 = v14;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "extension %@ has no bundle identifier", buf, 0xCu);
              }
            }
          }

          else
          {
            if (!v10)
            {
              v10 = +[NSMutableSet set];
            }

            v25 = [v14 identifier];
            [v10 addObject:v25];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v9);
    }

    else
    {
      v79 = 0;
      v10 = 0;
    }

    v30 = [*(v74 + 32) afterFirstUnlock];
    v31 = sub_100001C1C();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      v33 = v77;
      if (v32)
      {
        sub_1000213A4();
      }

      v31 = [*(v74 + 32) liveLookupStore];
      [v31 updateExtensionsWith:v79];
    }

    else
    {
      v33 = v77;
      if (v32)
      {
        sub_100021360(v31);
      }
    }

    v34 = *(v74 + 32);
    v90 = v33;
    v35 = [v34 storedExtensionIdentifiersWithError:&v90];
    v36 = v90;

    v37 = sub_100001C1C();
    v38 = v37;
    if (v35)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        sub_10002140C();
      }

      v39 = *(v74 + 32);
      v89 = v36;
      v40 = [v39 enabledStoredExtensionIdentifiersWithError:&v89];
      v41 = v89;

      v42 = sub_100001C1C();
      v43 = v42;
      if (v40)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_100021474();
        }

        v44 = *(v74 + 32);
        v88 = v41;
        v45 = [v44 disabledStoredExtensionIdentifiersWithError:&v88];
        v46 = v88;

        v47 = sub_100001C1C();
        v48 = v47;
        if (v45)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            sub_1000214DC();
          }

          v49 = *(v74 + 32);
          v87 = v46;
          v50 = [v49 unavailableStoredExtensionIdentifiersWithError:&v87];
          v51 = v87;

          v52 = sub_100001C1C();
          v53 = v52;
          if (v50)
          {
            v76 = v51;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              sub_100021544();
            }

            v54 = [v10 mutableCopy];
            [v54 minusSet:v35];
            v55 = [v10 mutableCopy];
            [v55 intersectSet:v50];
            v56 = [v40 mutableCopy];
            [v56 minusSet:v10];
            v57 = [v45 mutableCopy];
            [v57 minusSet:v10];
            v78 = v45;
            v58 = ![v54 count] && !objc_msgSend(v55, "count") && !objc_msgSend(v56, "count") && objc_msgSend(v57, "count") == 0;
            v81[0] = _NSConcreteStackBlock;
            v81[1] = 3221225472;
            v81[2] = sub_10000697C;
            v81[3] = &unk_100034C88;
            v59 = v54;
            v60 = *(v74 + 32);
            v73 = v59;
            v82 = v59;
            v83 = v60;
            v71 = v55;
            v84 = v71;
            v61 = v56;
            v85 = v61;
            v62 = v57;
            v86 = v62;
            v63 = objc_retainBlock(v81);
            if (v58)
            {
              v51 = v76;
              v45 = v78;
            }

            else
            {
              v64 = [*(v74 + 32) store];
              v80 = v76;
              [v64 performTransactionWithBlock:v63 error:&v80];
              v65 = v50;
              v66 = v10;
              v67 = v80;

              v68 = v67;
              v10 = v66;
              v50 = v65;
              v51 = v68;
              v45 = v78;
            }

            (*(*(v74 + 40) + 16))();
            [*(v74 + 32) setCachedCallDirectoryStoreExtensions:0];
          }

          else
          {
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              sub_1000215AC();
            }

            (*(*(v74 + 40) + 16))();
          }

          v46 = v51;
        }

        else
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_100021614();
          }

          (*(*(v74 + 40) + 16))();
        }

        v41 = v46;
      }

      else
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_10002167C();
        }

        (*(*(v74 + 40) + 16))();
      }

      v36 = v41;
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000216E4();
      }

      (*(*(v74 + 40) + 16))();
    }

    v4 = v36;
    v3 = v69;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002174C();
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10000697C(id *a1, void *a2, void *a3)
{
  v63 = a2;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v86;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v86 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v85 + 1) + 8 * v8);
        v11 = sub_100001C1C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v92 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding extension with identifier %@", buf, 0xCu);
        }

        v12 = [a1[5] store];
        v84 = v9;
        v13 = [v12 addExtensionWithIdentifier:v10 error:&v84];
        v6 = v84;

        if (v13 == -1)
        {
          v14 = sub_100001C1C();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v58 = [a1[5] store];
            *buf = 138412802;
            v92 = v10;
            v93 = 2112;
            v94 = v58;
            v95 = 2112;
            v96 = v6;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error adding extension with identifier %@ into store %@: %@", buf, 0x20u);
          }

          v15 = v63;
          if (a3)
          {
            v16 = v6;
            *a3 = v6;
          }

          v83 = 0;
          v17 = (*(v63 + 2))(v63, &v83);
          v18 = v83;
          if ((v17 & 1) == 0)
          {
            v19 = sub_100001C1C();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_1000217B4();
            }

LABEL_72:
          }

          goto LABEL_73;
        }

        v8 = v8 + 1;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = a1[6];
  v20 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v80;
LABEL_22:
    v23 = 0;
    v24 = v6;
    while (1)
    {
      if (*v80 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v79 + 1) + 8 * v23);
      v26 = sub_100001C1C();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v92 = 4;
        v93 = 2112;
        v94 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Changing state to %ld for extension with identifier %@", buf, 0x16u);
      }

      v27 = [a1[5] store];
      v78 = v24;
      v28 = [v27 setState:4 forExtensionWithIdentifier:v25 error:&v78];
      v6 = v78;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v23 = v23 + 1;
      v24 = v6;
      if (v21 == v23)
      {
        v21 = [obj countByEnumeratingWithState:&v79 objects:v99 count:16];
        if (v21)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }
    }

    v48 = sub_100001C1C();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v59 = [a1[5] store];
      *buf = 134218754;
      v92 = 4;
      v93 = 2112;
      v94 = v25;
      v95 = 2112;
      v96 = v59;
      v97 = 2112;
      v98 = v6;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Error changing state to %ld for extension with identifier %@ from store %@: %@", buf, 0x2Au);
    }

    v15 = v63;
    if (a3)
    {
      v49 = v6;
      *a3 = v6;
    }

    v77 = 0;
    v50 = (*(v63 + 2))(v63, &v77);
    v18 = v77;
    if ((v50 & 1) == 0)
    {
      v19 = sub_100001C1C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000217B4();
      }

      goto LABEL_72;
    }

    goto LABEL_73;
  }

LABEL_30:

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = a1[7];
  v29 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v74;
LABEL_32:
    v32 = 0;
    v33 = v6;
    while (1)
    {
      if (*v74 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v73 + 1) + 8 * v32);
      v35 = sub_100001C1C();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v92 = 5;
        v93 = 2112;
        v94 = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Changing state to %ld for extension with identifier %@", buf, 0x16u);
      }

      v36 = [a1[5] store];
      v72 = v33;
      v37 = [v36 setState:5 forExtensionWithIdentifier:v34 error:&v72];
      v6 = v72;

      if ((v37 & 1) == 0)
      {
        break;
      }

      v32 = v32 + 1;
      v33 = v6;
      if (v30 == v32)
      {
        v30 = [obj countByEnumeratingWithState:&v73 objects:v90 count:16];
        if (v30)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    v51 = sub_100001C1C();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v60 = [a1[5] store];
      *buf = 134218754;
      v92 = 5;
      v93 = 2112;
      v94 = v34;
      v95 = 2112;
      v96 = v60;
      v97 = 2112;
      v98 = v6;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Error changing state to %ld for extension with identifier %@ from store %@: %@", buf, 0x2Au);
    }

    v15 = v63;
    if (a3)
    {
      v52 = v6;
      *a3 = v6;
    }

    v71 = 0;
    v53 = (*(v63 + 2))(v63, &v71);
    v18 = v71;
    if ((v53 & 1) == 0)
    {
      v19 = sub_100001C1C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000217B4();
      }

      goto LABEL_72;
    }

    goto LABEL_73;
  }

LABEL_40:

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = a1[8];
  v38 = [obj countByEnumeratingWithState:&v67 objects:v89 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v68;
LABEL_42:
    v41 = 0;
    v42 = v6;
    while (1)
    {
      if (*v68 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v67 + 1) + 8 * v41);
      v44 = sub_100001C1C();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v43;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Removing extension with identifier %@", buf, 0xCu);
      }

      v45 = [a1[5] store];
      v66 = v42;
      v46 = [v45 removeExtensionWithIdentifier:v43 error:&v66];
      v6 = v66;

      if ((v46 & 1) == 0)
      {
        break;
      }

      v41 = v41 + 1;
      v42 = v6;
      if (v39 == v41)
      {
        v39 = [obj countByEnumeratingWithState:&v67 objects:v89 count:16];
        if (v39)
        {
          goto LABEL_42;
        }

        goto LABEL_50;
      }
    }

    v54 = sub_100001C1C();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v61 = [a1[5] store];
      *buf = 138412802;
      v92 = v43;
      v93 = 2112;
      v94 = v61;
      v95 = 2112;
      v96 = v6;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Error removing extension with identifier %@ from store %@: %@", buf, 0x20u);
    }

    v15 = v63;
    if (a3)
    {
      v55 = v6;
      *a3 = v6;
    }

    v65 = 0;
    v56 = (*(v63 + 2))(v63, &v65);
    v18 = v65;
    if ((v56 & 1) == 0)
    {
      v19 = sub_100001C1C();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000217B4();
      }

      goto LABEL_72;
    }

LABEL_73:

    v47 = 0;
    goto LABEL_74;
  }

LABEL_50:

  obj = [a1[5] identificationEntriesChangedNotifier];
  [obj postNotification];
  v47 = 1;
  v15 = v63;
LABEL_74:

  return v47;
}

id sub_100007690(CXCallDirectoryNSExtensionManager *self, SEL a2, id *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100007838;
  v22 = sub_100007848;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100007838;
  v16 = sub_100007848;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007850;
  v8[3] = &unk_100034D50;
  v10 = &v18;
  v11 = &v12;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(CXCallDirectoryNSExtensionManager *)self extensionsWithCompletionHandler:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    *a3 = v13[5];
  }

  v6 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v6;
}

void sub_100007814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007838(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007850(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001C1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002181C();
  }

  v8 = 40;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v8 = 48;
    v9 = v6;
  }

  v10 = *(*(a1 + v8) + 8);
  v11 = v9;
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000078F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_10000791C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t sub_100007CEC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v48 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_65:
          v44 = 28;
LABEL_76:
          *(a1 + v44) = v22;
          break;
        case 4:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 36) |= 8u;
          while (1)
          {
            v50 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v50 & 0x7F) << v29;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              LOBYTE(v35) = 0;
              goto LABEL_67;
            }
          }

          v35 = (v31 != 0) & ~[a2 hasError];
LABEL_67:
          *(a1 + 32) = v35;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;

          break;
        default:
          goto LABEL_60;
      }

LABEL_77:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        v47 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v47 & 0x7F) << v36;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v11 = v37++ >= 9;
        if (v11)
        {
          v42 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v38;
      }

LABEL_71:
      *(a1 + 8) = v42;
      goto LABEL_77;
    }

    if (v13 != 2)
    {
LABEL_60:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_77;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a1 + 36) |= 2u;
    while (1)
    {
      v49 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v49 & 0x7F) << v16;
      if ((v49 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v11 = v17++ >= 9;
      if (v11)
      {
        v22 = 0;
        goto LABEL_75;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

LABEL_75:
    v44 = 24;
    goto LABEL_76;
  }

  return [a2 hasError] ^ 1;
}

void sub_100008B38(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v3 = [*(a1 + 32) extensionIdentifier];
  v6 = 0;
  v4 = [v2 extensionWithIdentifier:v3 error:&v6];
  v5 = v6;

  if (v4)
  {
    [v4 state];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100008F50(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) store];
  v4 = [*v2 extensionIdentifier];
  v39 = 0;
  v5 = [v3 extensionWithIdentifier:v4 error:&v39];
  v6 = v39;

  if (!v5)
  {
    v9 = 1;
LABEL_39:
    v17 = [NSError cx_callDirectoryManagerErrorWithCode:v9];
    goto LABEL_40;
  }

  v7 = [v5 state];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v24 = [*v2 isEnabled];
      v25 = sub_100001C1C();
      v12 = v25;
      if (v24)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*v2 isEnabled];
          v27 = [v5 state];
          *buf = 67109376;
          v41 = v26;
          v42 = 2048;
          v43 = v27;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested to set extension enabled status to %d and current state of extension is %ld, so attempting to load extension data", buf, 0x12u);
        }

        v28 = *v2;
        v38 = v6;
        v29 = [v28 _loadExtensionDataWithError:&v38];
        v17 = v38;

        v30 = sub_100001C1C();
        v6 = v30;
        if (v29)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded extension data successfully", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100021A1C(v17, v6);
        }

        goto LABEL_40;
      }

      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v7 != 2)
    {
      goto LABEL_41;
    }

    v10 = [*v2 isEnabled];
    v11 = sub_100001C1C();
    v12 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        sub_10002190C();
      }

LABEL_38:

      v9 = 0;
      goto LABEL_39;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*v2 isEnabled];
      v14 = [v5 state];
      *buf = 67109632;
      v41 = v13;
      v42 = 2048;
      v43 = v14;
      v44 = 2048;
      v45 = 4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested to set extension enabled status to %d and current state of extension is %ld, so updating state to %ld", buf, 0x1Cu);
    }

    v15 = [*v2 store];
    v37 = v6;
    v16 = [v15 setState:4 forExtensionWithID:objc_msgSend(v5 error:{"primaryKey"), &v37}];
    v17 = v37;

    if (!v16)
    {
      v6 = sub_100001C1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100021994();
      }

      goto LABEL_40;
    }

    v6 = [*v2 awdReporter];
    v18 = [*v2 extensionIdentifier];
    v19 = v6;
    v20 = 1;
  }

  else
  {
    if (v7 == 5)
    {
      v21 = sub_100001C1C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100021A94();
      }

      v9 = 102;
      goto LABEL_39;
    }

    if (v7 != 4)
    {
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      v8 = sub_100001C1C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100021A94();
      }

      v9 = 7;
      goto LABEL_39;
    }

    v22 = [*v2 isEnabled];
    v23 = sub_100001C1C();
    v12 = v23;
    if (v22)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*v2 isEnabled];
      v32 = [v5 state];
      *buf = 67109632;
      v41 = v31;
      v42 = 2048;
      v43 = v32;
      v44 = 2048;
      v45 = 2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Requested to set extension enabled status to %d and current state of extension is %ld, so updating state to %ld", buf, 0x1Cu);
    }

    v33 = [*v2 store];
    v36 = v6;
    v34 = [v33 setState:2 forExtensionWithID:objc_msgSend(v5 error:{"primaryKey"), &v36}];
    v17 = v36;

    if (!v34)
    {
      v6 = sub_100001C1C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100021884();
      }

      goto LABEL_40;
    }

    v6 = [*v2 awdReporter];
    v18 = [*v2 extensionIdentifier];
    v19 = v6;
    v20 = 0;
  }

  [v19 reportSetEnabled:v20 forExtensionWithIdentifier:v18];

LABEL_40:
  v6 = v17;
LABEL_41:
  if (!v6)
  {
    v35 = [*v2 identificationEntriesChangedNotifier];
    [v35 postNotification];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100009734(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000974C(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_10000990C(void **a1)
{
  v2 = *a1;

  return [v2 isEnabled];
}

id sub_100009924()
{

  return [v0 state];
}

void sub_100009B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009B58(uint64_t a1)
{
  v2 = sub_100001C1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to prepare store...", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained host];
  [v4 prepareStoreIfNecessary];
}

void sub_100009BE8(uint64_t a1)
{
  v2 = sub_100001C1C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained systemMonitor];
    v11[0] = 67109120;
    v11[1] = [v4 firstUnlocked];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "systemMonitor activated: firstUnlocked=%d", v11, 8u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 systemMonitor];
  v7 = [v6 firstUnlocked];

  if (v7)
  {
    v8 = sub_100001C1C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "calling prepare because we are unlocked", v11, 2u);
    }

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 host];
    [v10 prepareStoreIfNecessary];
  }
}

void sub_10000A070(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021C30();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A308(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100001C1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100021D18();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021D98();
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000A868(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100001C1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100021E30();
    }
  }

  if ([v5 count] || !_os_feature_enabled_impl())
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v16 = v5;
    v8 = objc_alloc_init(NSMutableDictionary);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 32);
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10000AAA4;
          v18[3] = &unk_100034E40;
          v19 = v8;
          v20 = v13;
          [v14 fetchLiveIdentityInfoFor:v13 cacheOnly:v15 completionHandler:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 48) + 16))();
    v5 = v16;
  }
}

void sub_10000AAA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_100001C1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "live lookup entry %@", &v11, 0xCu);
  }

  if (!a3)
  {
    v7 = [v5 localizedLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 localizedLabel];
      v10 = [v9 length];

      if (v10)
      {
        [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];
      }
    }
  }
}

void sub_10000AD94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 40) analyticsReporter];
  [v9 sendBlastDoorWithTimeInterval:*(a1 + 48) for:v8];

  if (v6)
  {
    v10 = [*(a1 + 40) analyticsReporter];
    [v10 sendBlockingWithError:objc_msgSend(v6 for:{"code"), *(a1 + 48)}];

    v11 = sub_100001C1C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100021E98();
    }

    v12 = 0;
  }

  else
  {
    v13 = [[NSURL alloc] initFileURLWithPath:@"/var/mobile/Library/CallDirectory/images"];
    v11 = [v13 URLByAppendingPathComponent:*(a1 + 48)];

    v14 = +[NSFileManager defaultManager];
    [v14 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:0];

    v15 = [v11 URLByAppendingPathComponent:*(a1 + 56)];
    v12 = [v15 URLByAppendingPathExtension:@"heic"];

    [v5 writeToURL:v12 atomically:1];
    v16 = sub_100001C1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100021F10();
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10000B394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 40) analyticsReporter];
  [v9 sendBlockingWithTimeInterval:*(a1 + 48) for:v8];

  v10 = sub_100001C1C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v21 = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received Data useCase: %@", &v21, 0xCu);
  }

  v12 = sub_100001C1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "block data = %@", &v21, 0xCu);
  }

  v13 = sub_100001C1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "error = %@", &v21, 0xCu);
  }

  if (v6)
  {
    v14 = *(a1 + 80);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, v6);
    }

    v15 = sub_100001C1C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "block request returned error: %@", &v21, 0xCu);
    }

    v16 = [*(a1 + 40) analyticsReporter];
    [v16 sendBlockingWithError:objc_msgSend(v6 for:{"code"), *(a1 + 48)}];
  }

  else
  {
    if ([v5 length] == 1)
    {
      v17 = *[v5 bytes] != 0;
    }

    else
    {
      v18 = sub_100001C1C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "data length != 1 ignoring", &v21, 2u);
      }

      v17 = 0;
    }

    v19 = *(a1 + 80);
    if (v19)
    {
      (*(v19 + 16))(v19, v17, 0);
    }

    v16 = [*(a1 + 40) liveLookupStore];
    [v16 updateBlockingInfoFor:*(a1 + 64) with:*(a1 + 72) shouldBlock:v17];
  }

  v20 = [*(a1 + 40) liveLookupGroup];
  dispatch_group_leave(v20);
}

void sub_10000B6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v8 = -v7;
  v9 = [*(a1 + 40) analyticsReporter];
  [v9 sendIdentityWithTimeInterval:*(a1 + 48) for:v8];

  v10 = sub_100001C1C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    *buf = 138412290;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received Data useCase: %@", buf, 0xCu);
  }

  v12 = sub_100001C1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "identity data = %@", buf, 0xCu);
  }

  v13 = sub_100001C1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "error = %@", buf, 0xCu);
  }

  if (v6)
  {
    v14 = [*(a1 + 40) analyticsReporter];
    [v14 sendIdentityWithError:-[LiveLookupCallIdentity code](v6 for:{"code"), *(a1 + 48)}];

    v15 = sub_100001C1C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "identity request returned error: %@", buf, 0xCu);
    }

    v16 = *(a1 + 80);
    if (v16)
    {
      (*(v16 + 16))(v16, 0, 0, 0, v6);
    }
  }

  else
  {
    v17 = [[LiveLookupCallIdentity alloc] initWithData:v5];
    v18 = sub_100001C1C();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "identity = %@", buf, 0xCu);
    }

    v19 = [(LiveLookupCallIdentity *)v17 name];
    v20 = [(LiveLookupCallIdentity *)v17 identityType];
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v23 = *(a1 + 64);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000BA58;
    v26[3] = &unk_100034EE0;
    v26[4] = v22;
    v27 = v23;
    v28 = *(a1 + 72);
    v29 = v19;
    v32 = v20;
    v30 = v17;
    v31 = *(a1 + 80);
    v24 = v17;
    v25 = v19;
    [v22 writeImageIfNecessary:v24 extensionIdentifier:v21 handle:v27 completionHandler:v26];
  }
}

void sub_10000BA58(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) liveLookupStore];
  [v3 updateIdentityInfoFor:*(a1 + 40) with:*(a1 + 48) name:*(a1 + 56) iconURL:v6 type:*(a1 + 80) ttlMinutes:{objc_msgSend(*(a1 + 64), "cacheExpiryMinutes")}];

  v4 = *(a1 + 72);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 56), v6, *(a1 + 80), 0);
  }

  v5 = [*(a1 + 32) liveLookupGroup];
  dispatch_group_leave(v5);
}

void sub_10000C638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_10000C698(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v10 localizedLabel];
  v7 = [v6 length];

  if (v7 && [v10 fromCache])
  {
    v8 = [*(a1 + 32) analyticsReporter];
    v9 = [v10 extensionIdentifier];
    [v8 sendIdentityCacheHitFor:v9];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000C778(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = sub_100001C1C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "got identity for %@", &v14, 0xCu);
  }

  if (!a5)
  {
    v13 = [*(a1 + 40) identificationEntryFrom:*(a1 + 32) withName:v9 withIconURL:v10 withType:a4 fromCache:0];
    os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
    [*(*(*(a1 + 64) + 8) + 40) addObject:v13];
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10000CF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CFDC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100001C1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "got blocking for %@ shouldBlock=%d", &v9, 0x12u);
  }

  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v8 = [*(a1 + 40) analyticsReporter];
    [v8 sendBlockingCacheHitFor:*(a1 + 32)];

    (*(*(a1 + 56) + 16))();
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10000D480(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100021FE0();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000D680(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022048();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000DA54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100001C1C();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrieved extensions %@", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10002212C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000DDB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022194();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E5C8(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [a1[4] identifier];
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "error disabling extension when resetting context %@", buf, 0xCu);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v7 = [WeakRetained liveLookupStore];
    v8 = [a1[4] identifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000E76C;
    v9[3] = &unk_100034FF8;
    v10 = a1[4];
    v11 = a1[5];
    [v7 setEnabled:1 forExtensionWith:v8 completionHandler:v9];
  }
}

void sub_10000E76C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100001C1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) identifier];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "error enabling extension when resetting context %@", &v7, 0xCu);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_10000EC1C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10000EDD0(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setExtensionIdentifier:v2];

  [*(a1 + 32) setExtensionID:-1];
  [*(a1 + 32) setUpdateDelegate:*(a1 + 48)];
  [*(a1 + 32) setDataRequest:*(a1 + 56)];
  v3 = *(a1 + 32);
  v4 = [v3 dataRequest];
  [v4 setDelegate:v3];

  [*(a1 + 32) setStore:*(a1 + 64)];
  [*(a1 + 32) setMaximumAllowedEntries:*(a1 + 80)];
  [*(a1 + 32) setIdentificationEntriesChangedNotifier:*(a1 + 72)];
  v5 = objc_alloc_init(CDXAWDReporter);
  [*(a1 + 32) setAwdReporter:v5];
}

void sub_10000F2A8(uint64_t a1)
{
  v2 = (a1 + 32);
  [*(a1 + 32) setBlockingEntriesAdded:0];
  [*v2 setIdentificationEntriesAdded:0];
  [*v2 setLastBlockingPhoneNumber:0];
  [*v2 setLastIdentificationPhoneNumber:0];
  v3 = [*v2 store];
  v4 = [*v2 extensionIdentifier];
  v34 = 0;
  v5 = [v3 extensionWithIdentifier:v4 error:&v34];
  v6 = v34;

  if (v5)
  {
    [*v2 setExtensionID:{objc_msgSend(v5, "primaryKey")}];
    v7 = [v5 state];
    v8 = 1;
    if (v7 > 2)
    {
      switch(v7)
      {
        case 3:
          v16 = sub_100001C1C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1000224B8(v2);
          }

          v10 = *(a1 + 40);
          v11 = 7;
          goto LABEL_37;
        case 4:
          [*v2 setIncrementalLoadingState:1];
          v8 = 0;
          break;
        case 5:
          v9 = sub_100001C1C();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10002242C(v2);
          }

          v10 = *(a1 + 40);
          v11 = 102;
          goto LABEL_37;
      }

      goto LABEL_26;
    }

    if (v7 == 1)
    {
      if (([*v2 allowLoadingDisabledExtensions] & 1) == 0)
      {
        v15 = sub_100001C1C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000225D0(v2);
        }

        goto LABEL_36;
      }
    }

    else if (v7 == 2)
    {
      v15 = sub_100001C1C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100022544(v2);
      }

LABEL_36:

      v10 = *(a1 + 40);
      v11 = 6;
LABEL_37:
      v29 = [NSError cx_callDirectoryManagerErrorWithCode:v11];
      (*(v10 + 16))(v10, v29);

      goto LABEL_38;
    }

LABEL_26:
    v17 = sub_100001C1C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*v2 incrementalLoadingState];
      v19 = [*v2 extensionIdentifier];
      *buf = 134218242;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "incrementalLoadingState: %ld for extension with identifier %@", buf, 0x16u);
    }

    v20 = [*v2 store];
    v21 = [*v2 extensionIdentifier];
    v33 = v6;
    v22 = [v20 setState:3 forExtensionWithIdentifier:v21 error:&v33];
    v23 = v33;

    if (v22)
    {
      v24 = [*(a1 + 32) dataRequest];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000F788;
      v30[3] = &unk_100035098;
      v25 = *(a1 + 40);
      v30[4] = *(a1 + 32);
      v32 = v8;
      v31 = v25;
      [v24 beginWithCompletion:v30];
    }

    else
    {
      v26 = sub_100001C1C();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100022680();
      }

      v27 = *(a1 + 40);
      v28 = [NSError cx_callDirectoryManagerErrorWithCode:0];
      (*(v27 + 16))(v27, v28);
    }

    v6 = v23;
    goto LABEL_38;
  }

  v12 = sub_100001C1C();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v13)
    {
      sub_100022740();
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:0];
  }

  else
  {
    if (v13)
    {
      sub_1000227D4(v2);
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:1];
  }

  (*(*(a1 + 40) + 16))();
  v6 = v14;
LABEL_38:
}

void sub_10000F788(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_10000F8BC;
  v11[4] = sub_10000F8CC;
  v3 = a2;
  v12 = v3;
  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F8D4;
  v7[3] = &unk_100035070;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v11;
  v7[4] = v5;
  v10 = *(a1 + 48);
  v8 = v6;
  dispatch_async(v4, v7);

  _Block_object_dispose(v11, 8);
}

void sub_10000F8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F8BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000F8D4(uint64_t a1)
{
  v2 = a1 + 48;
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = sub_100001C1C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022868();
    }

    v6 = [*(a1 + 32) store];
    v7 = [*(a1 + 32) extensionID];
    v43 = 0;
    v8 = [v6 removeBlockingEntriesForExtensionWithID:v7 error:&v43];
    v9 = v43;
    if (v8)
    {
      v10 = [*(a1 + 32) store];
      v11 = [*(a1 + 32) extensionID];
      v42 = v9;
      v12 = [v10 removeIdentificationEntriesForExtensionWithID:v11 error:&v42];
      v13 = v42;

      v9 = v13;
      if (v12)
      {
LABEL_22:
        if (*(a1 + 56))
        {
          v27 = 1;
        }

        else
        {
          v27 = 4;
        }

        v28 = [*(a1 + 32) store];
        v29 = [*(a1 + 32) extensionIdentifier];
        v41 = 0;
        v30 = [v28 setState:v27 forExtensionWithIdentifier:v29 error:&v41];
        v25 = v41;

        if ((v30 & 1) == 0)
        {
          v31 = sub_100001C1C();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v37 = [*(a1 + 32) extensionIdentifier];
            v38 = [*(a1 + 32) store];
            *buf = 134218754;
            v45 = v27;
            v46 = 2112;
            v47 = v37;
            v48 = 2112;
            v49 = v38;
            v50 = 2112;
            v51 = v25;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Error setting state to %ld for extension with identifier %@ into store %@: %@", buf, 0x2Au);
          }
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v26 = sub_100001C1C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v34 = [*(a1 + 32) extensionID];
      v35 = [*(a1 + 32) extensionIdentifier];
      v36 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218754;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      v48 = 2112;
      v49 = v36;
      v50 = 2112;
      v51 = v9;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error removing entries for extensionID %lld (identifier %@) from store (attempting to recover from data request error %@): %@", buf, 0x2Au);
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) extensionIdentifier];
    *buf = 138412290;
    v45 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Data request completed successfully for extension with identifier %@", buf, 0xCu);
  }

  v16 = (a1 + 32);
  v15 = *(a1 + 32);
  v17 = *(*(a1 + 48) + 8);
  obj = *(v17 + 40);
  v18 = [v15 performInitialDeletionIfNecessaryWithError:&obj];
  objc_storeStrong((v17 + 40), obj);
  if ((v18 & 1) == 0)
  {
    v19 = sub_100001C1C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100022918(v2, v19);
    }
  }

  v20 = [*v16 store];
  v21 = [*v16 extensionIdentifier];
  v39 = 0;
  v22 = [v20 setState:4 forExtensionWithIdentifier:v21 error:&v39];
  v9 = v39;

  if ((v22 & 1) == 0)
  {
    v23 = sub_100001C1C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10002299C();
    }
  }

  v24 = [*v16 updateDelegate];
  [v24 callDirectoryLastInformationUpdatedForPhoneNumber:{objc_msgSend(*v16, "lastIdentificationPhoneNumber")}];

  v25 = [*v16 identificationEntriesChangedNotifier];
  [v25 postNotification];
LABEL_29:

  (*(*(a1 + 40) + 16))();
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v32 = [*(a1 + 32) awdReporter];
    v33 = [*(a1 + 32) extensionIdentifier];
    [v32 reportLoadedDataForExtensionWithIdentifier:v33 blockingEntries:objc_msgSend(*(a1 + 32) identificationEntries:{"blockingEntriesAdded"), objc_msgSend(*(a1 + 32), "identificationEntriesAdded")}];
  }
}

void sub_100010EFC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1000110EC(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) store];
  v83 = 0;
  v3 = [v2 prioritizedExtensionsWithError:&v83];
  v4 = v83;

  if (!v3)
  {
    v56 = sub_100001C1C();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_1000230E8(v4, v56, v63, v64, v65, v66, v67, v68);
    }

    goto LABEL_47;
  }

  v5 = v4;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v69 = v3;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v80;
    v70 = *v80;
    do
    {
      v9 = 0;
      v71 = v7;
      do
      {
        if (*v80 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v79 + 1) + 8 * v9);
        v11 = [v10 state];
        if (v11 != 5)
        {
          if (v11 != 2)
          {
            goto LABEL_34;
          }

          v12 = sub_100001C1C();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v10 identifier];
            *buf = 138412290;
            v85 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing entries for extension with identifier %@", buf, 0xCu);
          }

          v14 = [*(v1 + 32) store];
          v15 = [v10 primaryKey];
          v78 = v5;
          v16 = [v14 removeBlockingEntriesForExtensionWithID:v15 error:&v78];
          v17 = v78;

          if (v16)
          {
            v18 = [*(v1 + 32) store];
            v19 = [v10 primaryKey];
            v77 = v17;
            v20 = [v18 removeIdentificationEntriesForExtensionWithID:v19 error:&v77];
            v21 = v77;

            v17 = v21;
            if (v20)
            {
LABEL_22:
              v30 = sub_100001C1C();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [v10 identifier];
                *buf = 134218242;
                v85 = 1;
                v86 = 2112;
                v87 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Changing state to %ld for extension with identifier %@", buf, 0x16u);
              }

              v32 = [*(v1 + 32) store];
              v33 = [v10 primaryKey];
              v76 = v17;
              v34 = [v32 setState:1 forExtensionWithID:v33 error:&v76];
              v5 = v76;

              v8 = v70;
              if (v34)
              {
                v7 = v71;
                goto LABEL_34;
              }

              v24 = sub_100001C1C();
              v7 = v71;
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_33;
              }

              v35 = [v10 primaryKey];
              v36 = [v10 state];
              v25 = [*(v1 + 32) store];
              *buf = 134219010;
              v85 = v35;
              v86 = 2048;
              v87 = v36;
              v88 = 2048;
              v89 = 1;
              v90 = 2112;
              v91 = v25;
              v92 = 2112;
              v93 = v5;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error updating state for extensionID %lld from %ld to %ld in store %@: %@", buf, 0x34u);
LABEL_17:

              goto LABEL_33;
            }
          }

          else
          {
          }

          v29 = sub_100001C1C();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v42 = [v10 primaryKey];
            v43 = [*(v1 + 32) store];
            *buf = 134218498;
            v85 = v42;
            v86 = 2112;
            v87 = v43;
            v88 = 2112;
            v89 = v17;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Error removing entries for extensionID %lld from store %@: %@", buf, 0x20u);
          }

          goto LABEL_22;
        }

        v22 = sub_100001C1C();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v10 identifier];
          *buf = 138412290;
          v85 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing extension with identifier %@", buf, 0xCu);
        }

        v24 = +[NSDate date];
        v25 = [v10 stateLastModified];
        [v24 timeIntervalSinceDate:v25];
        v27 = v26;
        [objc_opt_class() unavailableExtensionPurgeTimeout];
        if (v27 < v28)
        {
          goto LABEL_17;
        }

        v37 = v1;
        v38 = [*(v1 + 32) store];
        v39 = [v10 identifier];
        v75 = v5;
        v40 = [v38 removeExtensionWithIdentifier:v39 error:&v75];
        v41 = v75;

        if (v40)
        {
          v5 = v41;
          v1 = v37;
          v8 = v70;
          v7 = v71;
          goto LABEL_34;
        }

        v24 = sub_100001C1C();
        v7 = v71;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v44 = [v10 identifier];
          *buf = 138412546;
          v85 = v44;
          v86 = 2112;
          v87 = v41;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing extension with identifier %@: %@", buf, 0x16u);
        }

        v5 = v41;
        v1 = v37;
        v8 = v70;
LABEL_33:

LABEL_34:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
    }

    while (v7);
  }

  v3 = v69;
  v4 = v5;
  if (!v5)
  {
    v45 = [*(v1 + 32) store];
    v74 = 0;
    v46 = [v45 removeUnreferencedRecordsWithError:&v74];
    v4 = v74;

    if ((v46 & 1) == 0)
    {
      v47 = sub_100001C1C();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_100023010(v4, v47, v48, v49, v50, v51, v52, v53);
      }
    }

    if (!v4)
    {
      v54 = [*(v1 + 32) store];
      v73 = 0;
      v55 = [v54 vacuumWithError:&v73];
      v4 = v73;

      if ((v55 & 1) == 0)
      {
        v56 = sub_100001C1C();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_10002307C(v4, v56, v57, v58, v59, v60, v61, v62);
        }

LABEL_47:
      }
    }
  }

  (*(*(v1 + 40) + 16))();
}

void sub_100011AE4(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v26 = 0;
  v3 = [v2 prioritizedExtensionsWithError:&v26];
  v4 = v26;

  if (v3)
  {
    v5 = [*(a1 + 32) prioritizedExtensionIdentifiers];
    v6 = [v5 mutableCopy];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v6 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            v15 = [v12 identifier];
            [v6 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [*(a1 + 32) store];
    v17 = [v6 copy];
    v21 = v4;
    [v16 setPrioritizedExtensionIdentifiers:v17 error:&v21];
    v18 = v21;

    v19 = [*(a1 + 32) identificationEntriesChangedNotifier];
    [v19 postNotification];

    v4 = v18;
    v3 = v20;
  }

  else
  {
    v6 = sub_100001C1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100023154(v4, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100011FC4(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v11 = 0;
  v3 = [v2 prioritizedExtensionsWithError:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = [*(a1 + 32) extensionsDataSource];
    v10 = v4;
    v6 = [v5 installedExtensionsWithError:&v10];
    v7 = v10;

    if (v6)
    {
      v8 = [*(a1 + 32) _extensionsFromNSExtensions:v6 usingProritizedStoreExtensions:v3];
    }

    else
    {
      v9 = sub_100001C1C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000231CC(v7, v9);
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = sub_100001C1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100023154(v4, v6);
    }

    v8 = 0;
    v7 = v4;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000128C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000128E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000128FC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 48;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100012BC4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = [v2 phoneNumbers];
  v4 = [v2 _canonicalizedPhoneNumbersToPhoneNumbers:v3];

  v5 = [*(v1 + 32) store];
  v6 = [v4 allKeys];
  v29 = 0;
  v7 = [v5 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v6 error:&v29];
  v8 = v29;

  if (v7 && ([*(v1 + 32) _storeIdentificationEntryToIdentificationEntriesForDictionary:v7], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v22 = v7;
    v23 = v8;
    v24 = v1;
    v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:v17];
          v19 = [v4 objectForKeyedSubscript:v17];
          if (v19)
          {
            [v11 setObject:v18 forKeyedSubscript:v19];
          }

          else
          {
            v20 = sub_100001C1C();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Canonicalized phone number '%@' from store did not match any canonicalized phone numbers requested, so skipping it but this may indicate a problem with the phone number canonicalization logic", buf, 0xCu);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v14);
    }

    v21 = [v11 copy];
    v8 = v23;
    v1 = v24;
    v7 = v22;
  }

  else
  {
    v12 = 0;
    v21 = 0;
  }

  (*(*(v1 + 40) + 16))();
}

void sub_100013B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013B74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013B8C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100013F04(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100013F24()
{
  v0 = sub_1000238C4();
  sub_100014220(v0, qword_10003C8F0);
  sub_100014284(v0, qword_10003C8F0);
  return sub_1000238B4();
}

uint64_t *sub_100014220(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100014284(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void type metadata accessor for CGImage()
{
  if (!qword_10003C5D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10003C5D0);
    }
  }
}

uint64_t sub_100014320(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100014394(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v7 = (v5 + *a3);
  v8 = *v7;
  v9 = v7[1];
  v10 = (v5 + *a4);
  v12 = *v10;
  v11 = v10[1];
  sub_100014320(&qword_10003C5E8, &qword_1000284A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028480;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DB0;
  v14 = objc_allocWithZone(NSString);
  v15 = sub_100023974();
  v16 = [v14 initWithString:v15];

  *(inited + 48) = v16;
  v17 = sub_100015D60(inited, &qword_10003C6B8, &unk_1000284F8);
  swift_setDeallocating();
  sub_100015CC0(inited + 32);
  v18 = objc_allocWithZone(NSNumber);

  v19 = [v18 initWithDouble:a5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015924(v19, v12, v11, isUniquelyReferenced_nonNull_native);

  sub_100014DAC(v8, v9, v17);
}

uint64_t sub_100014598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_100014320(&qword_10003C5E8, &qword_1000284A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028480;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DB0;
  v11 = objc_allocWithZone(NSString);
  v12 = sub_100023974();
  v13 = [v11 initWithString:v12];

  *(inited + 48) = v13;
  v14 = sub_100015D60(inited, &qword_10003C6B8, &unk_1000284F8);
  swift_setDeallocating();
  sub_100015CC0(inited + 32);
  v15 = objc_allocWithZone(NSNumber);

  v16 = [v15 initWithBool:1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015924(v16, a3, a4, isUniquelyReferenced_nonNull_native);

  sub_100014DAC(a5, a6, v14);
}

uint64_t sub_100014758(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = (v4 + *a3);
  v7 = *v5;
  v6 = v5[1];
  v8 = (v4 + *a4);
  v9 = *v8;
  v10 = v8[1];
  sub_100014320(&qword_10003C5E8, &qword_1000284A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028480;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DB0;
  v12 = objc_allocWithZone(NSString);
  v13 = sub_100023974();
  v14 = [v12 initWithString:v13];

  *(inited + 48) = v14;
  v15 = sub_100015D60(inited, &qword_10003C6B8, &unk_1000284F8);
  swift_setDeallocating();
  sub_100015CC0(inited + 32);
  v16 = objc_allocWithZone(NSNumber);

  v17 = [v16 initWithBool:1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015924(v17, v7, v6, isUniquelyReferenced_nonNull_native);

  sub_100014DAC(v9, v10, v15);
}

uint64_t sub_10001494C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v8 = (v6 + *a4);
  v9 = v8[1];
  v22 = *v8;
  v10 = (v6 + *a5);
  v12 = *v10;
  v11 = v10[1];
  sub_100014320(&qword_10003C5E8, &qword_1000284A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028480;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000100028DB0;
  v14 = objc_allocWithZone(NSString);
  v15 = sub_100023974();
  v16 = [v14 initWithString:v15];

  *(inited + 48) = v16;
  v17 = sub_100015D60(inited, &qword_10003C6B8, &unk_1000284F8);
  swift_setDeallocating();
  sub_100015CC0(inited + 32);
  v18 = objc_allocWithZone(NSNumber);

  v19 = [v18 initWithUnsignedInteger:a1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100015924(v19, v12, v11, isUniquelyReferenced_nonNull_native);

  sub_100014DAC(v22, v9, v17);
}

uint64_t sub_100014B8C(void *a1, double a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, double))
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = a1;
  a5(v8, v10, a2);
}

uint64_t sub_100014C34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = a1;
  a5(a3, v8, v10);
}

uint64_t sub_100014D04(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_100023984();
  v10 = v9;
  v11 = &a1[*a4];
  v12 = *v11;
  v13 = v11[1];
  v14 = &a1[*a5];
  v15 = *v14;
  v16 = v14[1];
  v17 = a1;
  sub_100014598(v8, v10, v12, v13, v15, v16);
}

void sub_100014DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000238C4();
  sub_100014284(v8, qword_10003C8F0);

  v9 = sub_1000238A4();
  v10 = sub_100023A94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100018BDC(a1, a2, &aBlock);
    *(v11 + 12) = 2080;
    if (a3)
    {

      sub_100014320(&qword_10003C6A8, &qword_1000284F0);
      v12 = sub_100023994();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100018BDC(v12, v14, &aBlock);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "sending action: %s payload: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v4 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_analyticsEventPrefix + 8);
  aBlock = *(v4 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_analyticsEventPrefix);
  v21 = v16;

  v26._countAndFlagsBits = a1;
  v26._object = a2;
  sub_1000239C4(v26);
  v17 = sub_100023974();

  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v24 = sub_100015E5C;
  v25 = v18;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10001507C;
  v23 = &unk_100035298;
  v19 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

Class sub_10001507C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100015E7C();
    v4.super.isa = sub_100023954().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id SecureImageTranscoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreAnalyticsReporter.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_analyticsEventPrefix];
  *v2 = 0xD000000000000023;
  *(v2 + 1) = 0x8000000100028D20;
  v3 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_fetchKey];
  *v3 = 0x6863746566;
  *(v3 + 1) = 0xE500000000000000;
  v4 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_registrationKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_registrationKey], "registration");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v5 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_blastDoorErrorKey];
  *v5 = 0x6F6F647473616C62;
  *(v5 + 1) = 0xEF726F7272655F72;
  v6 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_blastDoorTimeKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_blastDoorTimeKey], "blastdoor_time");
  v6[15] = -18;
  v7 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_blockingCacheHitKey];
  *v7 = 0xD000000000000012;
  *(v7 + 1) = 0x8000000100028D50;
  v8 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_blockingFetchErrorKey];
  *v8 = 0xD000000000000014;
  *(v8 + 1) = 0x8000000100028D70;
  v9 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_blockingFetchTimeKey];
  *v9 = 0xD000000000000013;
  *(v9 + 1) = 0x8000000100028D90;
  v10 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_extensionIdentifierKey];
  *v10 = 0xD000000000000013;
  *(v10 + 1) = 0x8000000100028DB0;
  v11 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_identityCacheHitKey];
  *v11 = 0xD000000000000012;
  *(v11 + 1) = 0x8000000100028DD0;
  v12 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_identifyFetchErrorKey];
  *v12 = 0xD000000000000014;
  *(v12 + 1) = 0x8000000100028DF0;
  v13 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_identifyFetchTimeKey];
  *v13 = 0xD000000000000013;
  *(v13 + 1) = 0x8000000100028E10;
  v14 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_disableErrorKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_disableErrorKey], "disable_error");
  *(v14 + 7) = -4864;
  v15 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_disableTimeKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_disableTimeKey], "disable_time");
  v15[13] = 0;
  *(v15 + 7) = -5120;
  v16 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_enableErrorKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_enableErrorKey], "enable_error");
  v16[13] = 0;
  *(v16 + 7) = -5120;
  v17 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_enableTimeKey];
  *v17 = 0x745F656C62616E65;
  *(v17 + 1) = 0xEB00000000656D69;
  v18 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_installKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_installKey], "installation");
  v18[13] = 0;
  *(v18 + 7) = -5120;
  v19 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_uninstallKey];
  strcpy(&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter_uninstallKey], "uninstallation");
  v19[15] = -18;
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

id SecureImageTranscoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100015608(uint64_t a1, uint64_t a2)
{
  sub_100023BD4();
  sub_1000239B4();
  v4 = sub_100023BE4();

  return sub_100015A9C(a1, a2, v4);
}

uint64_t sub_100015680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100014320(&qword_10003C6B8, &unk_1000284F8);
  v35 = v4;
  result = sub_100023B34();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100023BD4();
      sub_1000239B4();
      result = sub_100023BE4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100015924(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100015608(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100015680(v16, a4 & 1);
      v11 = sub_100015608(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100023B84();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100015B54();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_100015A9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100023B64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_100015B54()
{
  v1 = v0;
  sub_100014320(&qword_10003C6B8, &unk_1000284F8);
  v2 = *v0;
  v3 = sub_100023B24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100015CC0(uint64_t a1)
{
  v2 = sub_100014320(&qword_10003C5F0, &qword_1000284A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015D60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100014320(a2, a3);
    v5 = sub_100023B44();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100015608(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100015E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015E7C()
{
  result = qword_10003C6B0;
  if (!qword_10003C6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C6B0);
  }

  return result;
}

id SecureImageTranscoder.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder_warmUpGIFBytes] = &off_1000351F8;
  v2 = BlastDoorInstanceTypeKnownSender;
  v3 = sub_100023894();
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v6 = sub_100023884();
  v7 = &v0[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder_blastDoor];
  v7[3] = v3;
  v7[4] = &off_1000352C0;
  *v7 = v6;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100015FA0();

  return v8;
}

uint64_t sub_100015FA0()
{
  v1 = v0;
  v2 = sub_100014320(&qword_10003C700, &qword_100028730);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000238C4();
  sub_100014284(v5, qword_10003C8F0);
  v6 = sub_1000238A4();
  v7 = sub_100023A94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Warming up BlastDoor interface", v8, 2u);
  }

  v9 = sub_100019748((*&v1[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder_warmUpGIFBytes] + 32), *(*&v1[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder_warmUpGIFBytes] + 16));
  v11 = v10;
  v12 = sub_100023A74();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v13[5] = v9;
  v13[6] = v11;
  v14 = v1;
  sub_1000175B8(0, 0, v4, &unk_1000285D0, v13);
}

uint64_t SecureImageTranscoder.generatePreviewImage(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100014320(&qword_10003C6D0, &qword_100028670);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_1000236B4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_100023614();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000163D4, 0, 0);
}

uint64_t sub_1000163D4()
{
  v42 = v0;
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  sub_100018668();
  sub_1000236A4();
  sub_100023694();
  (*(v5 + 8))(v4, v6);
  sub_1000235E4();

  v7 = *(v3 + 8);
  v0[16] = v7;
  v0[17] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v8 = v0[15];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = sub_1000238C4();
  sub_100014284(v12, qword_10003C8F0);
  v13 = v9;
  v14 = *(v11 + 16);
  v14(v13, v8, v10);
  v15 = sub_1000238A4();
  v16 = sub_100023A94();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[13];
  if (v17)
  {
    v38 = v16;
    v40 = v7;
    v20 = v0[10];
    v19 = v0[11];
    v22 = v0[5];
    v21 = v0[6];
    v23 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v23 = 136315138;
    v14(v21, v18, v20);
    (*(v19 + 56))(v21, 0, 1, v20);
    sub_1000198C0(v21, v22, &qword_10003C6D0, &qword_100028670);
    if ((*(v19 + 48))(v22, 1, v20) == 1)
    {
      sub_100019928(v0[5], &qword_10003C6D0, &qword_100028670);
      v24 = 0xE300000000000000;
      v25 = 7104878;
      v26 = v40;
    }

    else
    {
      v28 = v0[14];
      v29 = v0[12];
      v30 = v0[10];
      (*(v0[11] + 32))(v29, v0[5], v30);
      v14(v28, v29, v30);
      v25 = sub_100023994();
      v24 = v31;
      v26 = v40;
      v40(v29, v30);
    }

    v32 = v0[13];
    v33 = v0[10];
    sub_100019928(v0[6], &qword_10003C6D0, &qword_100028670);
    v26(v32, v33);
    v34 = sub_100018BDC(v25, v24, &v41);

    *(v23 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v15, v38, "Attempting to generate preview of image after writing to URL: %s", v23, 0xCu);
    sub_1000194A4(v39);
  }

  else
  {
    v27 = v0[10];

    v7(v18, v27);
  }

  sub_100023654();
  sub_1000021D0((v0[4] + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder_blastDoor), *(v0[4] + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder_blastDoor + 24));
  v35 = swift_task_alloc();
  v0[18] = v35;
  *v35 = v0;
  v35[1] = sub_1000168AC;
  v36 = v0[15];

  return sub_100017B04(v36);
}

uint64_t sub_1000168AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = sub_100016AC4;
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = sub_1000169E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000169E0()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[10];
  sub_100016BA8();
  v1(v2, v3);

  v4 = v0[1];
  v6 = v0[20];
  v5 = v0[21];

  return v4(v5, v6);
}

uint64_t sub_100016AC4()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[10];
  sub_100016BA8();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

id sub_100016BA8()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1000235D4(v1);
  v3 = v2;
  v8 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v8];

  v5 = v8;
  if (v4)
  {

    return v5;
  }

  else
  {
    v7 = v8;
    sub_1000235B4();

    swift_willThrow();
  }
}

uint64_t sub_100016E50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_100023644();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100016F2C;

  return SecureImageTranscoder.generatePreviewImage(from:)(v7, v9);
}

uint64_t sub_100016F2C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 16);
  v10 = *v3;

  sub_100019450(*(v7 + 32), *(v7 + 40));
  if (v4)
  {
    isa = sub_1000235A4();

    v12 = isa;
    v13 = 0;
  }

  else
  {
    isa = sub_100023634().super.isa;
    sub_100019450(a1, a2);
    v13 = isa;
    v12 = 0;
  }

  v14 = *(v8 + 24);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_1000170F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10001719C;

  return SecureImageTranscoder.generatePreviewImage(from:)(a5, a6);
}

uint64_t sub_10001719C(uint64_t a1, unint64_t a2)
{
  *(*v3 + 24) = v2;

  if (v2)
  {
    v6 = sub_1000173E0;
  }

  else
  {
    sub_100019450(a1, a2);
    v6 = sub_1000172CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000172CC()
{
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000238C4();
  sub_100014284(v1, qword_10003C8F0);
  v2 = sub_1000238A4();
  v3 = sub_100023A94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Warmed up BlastDoor interface", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000173E0()
{
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000238C4();
  sub_100014284(v1, qword_10003C8F0);
  v2 = sub_1000238A4();
  v3 = sub_100023A94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Warming up BlastDoor interface", v4, 2u);
  }

  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  sub_100014284(v1, qword_10003C8F0);
  v5 = sub_1000238A4();
  v6 = sub_100023A94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Warmed up BlastDoor interface", v7, 2u);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000175B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100014320(&qword_10003C700, &qword_100028730);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000198C0(a3, v25 - v10, &qword_10003C700, &qword_100028730);
  v12 = sub_100023A74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100019928(v11, &qword_10003C700, &qword_100028730);
  }

  else
  {
    sub_100023A64();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100023A34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000239A4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100019928(a3, &qword_10003C700, &qword_100028730);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100019928(a3, &qword_10003C700, &qword_100028730);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100017904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100014320(&qword_10003C730, &qword_1000285B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_100023874();
}

uint64_t sub_100017A54(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_100014320(&qword_10003C730, &qword_1000285B8);
    return sub_100023A54();
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
    }

    else
    {
      sub_100019558();
      swift_allocError();
      *v4 = 0;
    }

    sub_100014320(&qword_10003C730, &qword_1000285B8);
    return sub_100023A44();
  }
}

uint64_t sub_100017B04(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_100023924();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_100014320(&qword_10003C710, &qword_1000285A8);
  v2[10] = swift_task_alloc();
  v4 = sub_100023944();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_100023614();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100017CB4, 0, 0);
}

uint64_t sub_100017CB4()
{
  v23 = v0;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 40);
  v5 = sub_1000238C4();
  *(v0 + 136) = sub_100014284(v5, qword_10003C8F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000238A4();
  v7 = sub_100023A94();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_1000195AC();
    v14 = sub_100023B54();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100018BDC(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Generating preview from file: %s", v12, 0xCu);
    sub_1000194A4(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  v18[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  v20 = sub_100015E7C();
  *(v0 + 160) = v20;
  *v19 = v0;
  v19[1] = sub_100017F60;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000023, 0x80000001000291D0, sub_100019550, v18, v20);
}

uint64_t sub_100017F60()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1000185D4;
  }

  else
  {

    v2 = sub_10001807C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001807C()
{
  v54 = v0;
  v1 = *(v0 + 16);
  v2 = sub_1000238A4();
  v3 = sub_100023A94();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v53[0] = v5;
    *v4 = 136315138;
    *(v0 + 32) = v1;
    v6 = v1;
    v7 = sub_100023994();
    v9 = sub_100018BDC(v7, v8, v53);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generated preview with result: %s", v4, 0xCu);
    sub_1000194A4(v5);
  }

  sub_1000238F4();
  v10 = swift_dynamicCastClass();
  v11 = v1;
  if (!v10)
  {
    v29 = sub_1000238A4();
    v30 = sub_100023A94();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v53[0] = v32;
      *v31 = 136315138;
      *(v0 + 24) = swift_getObjectType();
      sub_100014320(&qword_10003C720, &qword_1000285B0);
      v33 = sub_100023994();
      v35 = sub_100018BDC(v33, v34, v53);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received unsupported result type: %s", v31, 0xCu);
      sub_1000194A4(v32);
    }

    ObjectType = swift_getObjectType();
    sub_100019558();
    swift_allocError();
    *v37 = ObjectType;
    swift_willThrow();
    goto LABEL_13;
  }

  v12 = sub_1000238E4();
  v13 = sub_1000238D4();

  if (!v13)
  {
    v38 = sub_1000238A4();
    v39 = sub_100023A84();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Received empty image result from BlastDoor", v40, 2u);
    }

    sub_100019558();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();

LABEL_13:
    goto LABEL_14;
  }

  v14 = *(v0 + 168);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 64);
  type metadata accessor for CGImage();
  v53[3] = v19;
  v53[4] = &protocol witness table for CGImageRef;
  v53[0] = v13;
  (*(v18 + 56))(v15, 1, 1, v17);
  v20 = v13;
  sub_100023934();
  sub_100023904();
  (*(v18 + 104))(v16, enum case for Image.Encoding.atx(_:), v17);
  v21 = sub_100023914();
  if (v14)
  {
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = *(v0 + 88);
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);
    v28 = *(v0 + 56);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
LABEL_14:

    v42 = *(v0 + 8);

    return v42();
  }

  v45 = *(v0 + 96);
  v44 = *(v0 + 104);
  v46 = *(v0 + 88);
  v51 = v21;
  v47 = *(v0 + 64);
  v48 = *(v0 + 72);
  v49 = *(v0 + 56);
  v52 = v22;

  (*(v47 + 8))(v48, v49);
  (*(v45 + 8))(v44, v46);

  v50 = *(v0 + 8);

  return v50(v51, v52);
}

uint64_t sub_1000185D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100018668()
{
  v0 = sub_100023614();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = NSTemporaryDirectory();
  sub_100023984();

  sub_1000235C4();

  sub_1000235E4();
  (*(v1 + 8))(v3, v0);
  v5 = [objc_opt_self() defaultManager];
  sub_1000235D4(v6);
  v8 = v7;
  v22 = 0;
  LODWORD(v3) = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v22];

  v9 = v22;
  if (v3)
  {

    v10 = v9;
  }

  else
  {
    v21[1] = v22;
    v11 = v22;
    v12 = sub_1000235B4();

    swift_willThrow();
    if (qword_10003C5C8 != -1)
    {
      swift_once();
    }

    v13 = sub_1000238C4();
    sub_100014284(v13, qword_10003C8F0);
    swift_errorRetain();
    v14 = sub_1000238A4();
    v15 = sub_100023A84();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v21[2] = v12;
      swift_errorRetain();
      sub_100014320(&qword_10003C738, &qword_1000285C0);
      v18 = sub_100023994();
      v20 = sub_100018BDC(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error creating temporary images directory: %s", v16, 0xCu);
      sub_1000194A4(v17);
    }

    else
    {
    }
  }
}

uint64_t sub_1000189EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100018AE4;

  return v6(a1);
}

uint64_t sub_100018AE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100018BDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100018CA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000194F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000194A4(v11);
  return v7;
}

unint64_t sub_100018CA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100018DB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100023B04();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100018DB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100018E00(a1, a2);
  sub_100018F30(&off_100035188);
  return v3;
}

char *sub_100018E00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001901C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100023B04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000239D4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001901C(v10, 0);
        result = sub_100023AD4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100018F30(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100019090(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001901C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100014320(&qword_10003C708, &qword_1000285A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100019090(char *result, int64_t a2, char a3, char *a4)
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
    sub_100014320(&qword_10003C708, &qword_1000285A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1000191A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001925C;

  return sub_100016E50(v2, v3, v4);
}

uint64_t sub_10001925C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100019350()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100019BF8;

  return sub_10001FF78(v2, v3, v4);
}

uint64_t sub_100019410()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100019450(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000194A4(void *a1)
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

uint64_t sub_1000194F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100019558()
{
  result = qword_10003C718;
  if (!qword_10003C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C718);
  }

  return result;
}

unint64_t sub_1000195AC()
{
  result = qword_10003C728;
  if (!qword_10003C728)
  {
    sub_100023614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C728);
  }

  return result;
}

uint64_t sub_100019604(void *a1, uint64_t a2)
{
  sub_100014320(&qword_10003C730, &qword_1000285B8);

  return sub_100017A54(a1, a2);
}

uint64_t sub_100019690(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_100019748(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100019690(a1, &a1[a2]);
  }

  sub_100023594();
  swift_allocObject();
  sub_100023584();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_100023624();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000197F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019BF8;

  return sub_1000170F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000198C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100014320(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019928(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100014320(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100019988(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019BF8;

  return sub_1000189EC(a1, v4);
}

uint64_t sub_100019A40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001925C;

  return sub_1000189EC(a1, v4);
}

uint64_t getEnumTagSinglePayload for BlastDoorError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BlastDoorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100019BAC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100019BC8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100019BFC()
{
  result = qword_10003C748;
  if (!qword_10003C748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C748);
  }

  return result;
}

uint64_t FTServerBag.blockingWaitSeconds.getter()
{
  v1 = sub_100023974();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_100023AC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100019BFC();
    if (swift_dynamicCast())
    {
      v3 = [v5 unsignedIntegerValue];

      return v3;
    }
  }

  else
  {
    sub_100002214(v8);
  }

  return 1;
}

id LiveLookupStoreProxy.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_allocWithZone(type metadata accessor for CoreAnalyticsReporter()) init];
  sub_1000237D4();
  v2 = sub_1000237C4();
  v3 = sub_100020444(v1, v2, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t LiveLookupStoreProxy.imagePath.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LiveLookupStoreProxy.imagePath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t LiveLookupStoreProxy.extensionIdentifier(for:)(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_100023984();

  return v2;
}

{
  v1 = [a1 dbExtension];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 identifier];

  v4 = sub_100023984();
  return v4;
}

id LiveLookupStoreProxy.extensionIdentifier(from:)(void *a1)
{
  result = [a1 dbExtension];
  if (result)
  {
    v2 = result;
    v3 = [result identifier];

    v4 = sub_100023984();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LiveLookupStoreProxy.identityType(for:)(void *a1)
{
  v1 = [a1 type];
  if (v1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 2);
  }
}

void *LiveLookupStoreProxy.getBlockingInfo(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000021D0((v3 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v3 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v4 = sub_1000237A4();
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000238C4();
  sub_100014284(v5, qword_10003C8F0);
  v6 = v4;
  v7 = sub_1000238A4();
  v8 = sub_100023A94();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v4;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "getBlockingInfo blockingInfo=%@", v9, 0xCu);
    sub_100019928(v10, &qword_10003C760, &qword_100028660);
  }

  return v4;
}

Swift::Bool __swiftcall LiveLookupStoreProxy.enabled(forExtensionWith:)(Swift::String forExtensionWith)
{
  object = forExtensionWith._object;
  countAndFlagsBits = forExtensionWith._countAndFlagsBits;
  sub_1000021D0((v1 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v1 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v4 = sub_100023784();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100023B14())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100023AF4();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_100023984();
      v14 = v13;

      if (v12 == countAndFlagsBits && v14 == object)
      {

LABEL_17:

        v17 = [v9 isEnabled];

        return v17;
      }

      v16 = sub_100023B64();

      if (v16)
      {
        goto LABEL_17;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t LiveLookupStoreProxy.setEnabled(_:forExtensionWith:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = a3;
  *(v4 + 312) = v3;
  *(v4 + 296) = a2;
  *(v4 + 544) = a1;
  sub_100014320(&qword_10003C6D0, &qword_100028670);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  v5 = sub_100023684();
  *(v4 + 344) = v5;
  *(v4 + 352) = *(v5 - 8);
  *(v4 + 360) = swift_task_alloc();
  v6 = sub_100023614();
  *(v4 + 368) = v6;
  *(v4 + 376) = *(v6 - 8);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v7 = sub_100023854();
  *(v4 + 416) = v7;
  *(v4 + 424) = *(v7 - 8);
  v8 = swift_task_alloc();
  *(v4 + 432) = v8;
  v9 = swift_task_alloc();
  *(v4 + 440) = v9;
  *v9 = v4;
  v9[1] = sub_10001AD3C;

  return static Host.context()(v8);
}

uint64_t sub_10001AD3C()
{

  return _swift_task_switch(sub_10001AE64, 0, 0);
}

uint64_t sub_10001AE64()
{
  v202 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  sub_100023824();
  sub_100023844();
  *(v0 + 448) = sub_100014320(&qword_10003C768, &qword_100028678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100028650;

  v204._countAndFlagsBits = 0x6B636F6C622ELL;
  v204._object = 0xE600000000000000;
  sub_1000239C4(v204);
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = [objc_allocWithZone(CMLUseCaseConfig) initWithType:0 maxShards:10000000 cacheElementCount:0];
  v200 = v2;
  v201 = v1;

  v205._countAndFlagsBits = 0x7469746E6564692ELL;
  v205._object = 0xE900000000000079;
  sub_1000239C4(v205);
  *(inited + 56) = v2;
  *(inited + 64) = v1;
  *(inited + 72) = [objc_allocWithZone(CMLUseCaseConfig) initWithType:0 maxShards:10000000 cacheElementCount:0];
  v4 = sub_100015D4C(inited);
  *(v0 + 456) = v4;
  swift_setDeallocating();
  sub_100014320(&qword_10003C770, &qword_100028680);
  swift_arrayDestroy();
  if (qword_10003C5C8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v5 = sub_1000238C4();
    *(v0 + 464) = sub_100014284(v5, qword_10003C8F0);

    v6 = sub_1000238A4();
    v7 = sub_100023A94();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v200 = v9;
      *v8 = 136315138;
      sub_100020C54();
      v10 = sub_100023964();
      v12 = sub_100018BDC(v10, v11, &v200);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "useCases=%s", v8, 0xCu);
      sub_1000194A4(v9);
    }

    v13 = *(v0 + 544);
    sub_100023674();
    v14 = &unk_10003C000;
    v198 = v4;
    v199 = v0;
    if (v13 == 1)
    {
      break;
    }

    v19 = 0;
    v20 = v4 + 64;
    v21 = -1;
    v22 = -1 << *(v4 + 32);
    if (-v22 < 64)
    {
      v21 = ~(-1 << -v22);
    }

    v23 = v21 & *(v4 + 64);
    v24 = (63 - v22) >> 6;
    while (v23)
    {
LABEL_18:
      v26 = (*(v4 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v23)))));
      v0 = *v26;
      v27 = v26[1];

      v28 = sub_1000238A4();
      v29 = sub_100023A94();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v200 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100018BDC(v0, v27, &v200);
        _os_log_impl(&_mh_execute_header, v28, v29, "unregistering group %s", v30, 0xCu);
        sub_1000194A4(v31);

        v4 = v198;
      }

      v23 &= v23 - 1;
      sub_100020864(v0, v27);
    }

    while (1)
    {
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v25 >= v24)
      {
        v14 = v199;
        v4 = *(v199 + 304);
        v32 = *(v199 + 312);

        v33 = *(v32 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
        sub_100023664();
        v35 = -v34;
        v36 = sub_100023974();
        [v33 sendDisableWithTimeInterval:v36 for:v35];

        goto LABEL_21;
      }

      v23 = *(v20 + 8 * v25);
      ++v19;
      if (v23)
      {
        v19 = v25;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v15 = sub_100023834();
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
LABEL_37:
    if (v17 != 2)
    {
      sub_100019450(v15, v16);
      goto LABEL_43;
    }

    v51 = v15[2];
    v50 = v15[3];
    sub_100019450(v15, v16);
  }

  else
  {
    if (!v17)
    {
      v18 = v16;
      sub_100019450(v15, v16);
      if ((v18 & 0xFF000000000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_41:
      v54 = sub_100023834();
      goto LABEL_44;
    }

    v52 = v15;
    sub_100019450(v15, v16);
    v51 = v52;
    v50 = v52 >> 32;
  }

  v49 = v51 == v50;
  v0 = v199;
  if (!v49)
  {
    goto LABEL_41;
  }

LABEL_43:
  v54 = 0;
  v53 = 0xF000000000000000;
LABEL_44:
  *(v0 + 472) = v54;
  *(v0 + 480) = v53;
  v55 = *(v0 + 400);
  v194 = v53;
  v57 = *(v0 + 368);
  v56 = *(v0 + 376);
  v58 = *(v0 + 336);
  v59 = (*(v0 + 312) + *(v14 + 1880));
  sub_1000021D0(v59, v59[3]);
  v60 = sub_1000236D4();
  v188 = v56[2];
  v188(v58, v55, v57);
  v190 = v56[7];
  v190(v58, 0, 1, v57);
  sub_100020BEC(v54, v194);
  sub_1000235D4(v61);
  v63 = v62;
  v192 = v56[6];
  if (v192(v58, 1, v57) == 1)
  {
    v64 = 0;
  }

  else
  {
    v65 = *(v199 + 376);
    v66 = *(v199 + 368);
    v67 = v60;
    v68 = *(v199 + 336);
    sub_1000235D4(v199);
    v64 = v69;
    v70 = v68;
    v60 = v67;
    (*(v65 + 8))(v70, v66);
    v0 = v199;
  }

  if (v194 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100023634().super.isa;
    sub_100020CA0(v54, v194);
  }

  v72 = [objc_allocWithZone(CMLNetworkManager) initWithType:2 endpoint:v63 issuer:v64 authenticationToken:isa privacyProxyFailOpen:(v60 & 1) == 0];
  *(v0 + 488) = v72;

  v73 = v72;
  v74 = sub_1000238A4();
  v75 = sub_100023A94();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v200 = v196;
    *v76 = 136315394;
    v77 = [v73 endpoint];
    if (v77)
    {
      v78 = v77;
      sub_1000235F4();

      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    v96 = *(v0 + 368);
    v98 = *(v0 + 320);
    v97 = *(v0 + 328);
    v190(v97, v79, 1, v96);
    sub_1000198C0(v97, v98, &qword_10003C6D0, &qword_100028670);
    if (v192(v98, 1, v96) == 1)
    {
      sub_100019928(*(v0 + 320), &qword_10003C6D0, &qword_100028670);
      v99 = 0xE300000000000000;
      v100 = 7104878;
    }

    else
    {
      v102 = *(v0 + 384);
      v101 = *(v0 + 392);
      v103 = *(v199 + 376);
      v104 = *(v199 + 368);
      (*(v103 + 32))(v101, *(v199 + 320), v104);
      v188(v102, v101, v104);
      v100 = sub_100023994();
      v99 = v105;
      (*(v103 + 8))(v101, v104);
      v0 = v199;
    }

    sub_100019928(*(v0 + 328), &qword_10003C6D0, &qword_100028670);
    v106 = sub_100018BDC(v100, v99, &v200);

    *(v76 + 4) = v106;
    *(v76 + 12) = 1024;
    LODWORD(v106) = [v73 privacyProxyFailOpen];

    *(v76 + 14) = v106;
    _os_log_impl(&_mh_execute_header, v74, v75, "networkConfig endpoint=%s privacyProxyFailOpen=%{BOOL}d", v76, 0x12u);
    sub_1000194A4(v196);
  }

  else
  {
  }

  v107 = *(v198 + 32);
  *(v0 + 545) = v107;
  v108 = -1;
  v109 = -1 << v107;
  if (-v109 < 64)
  {
    v108 = ~(-1 << -v109);
  }

  v110 = v108 & v198[8];
  if (v110)
  {
    v111 = 0;
    v112 = *(v0 + 456);
LABEL_70:
    *(v0 + 496) = v110;
    *(v0 + 504) = v111;
    v115 = *(v199 + 488);
    v116 = __clz(__rbit64(v110)) | (v111 << 6);
    v117 = (*(v112 + 48) + 16 * v116);
    v119 = *v117;
    v118 = v117[1];
    v120 = *(*(v112 + 56) + 8 * v116);
    *(v199 + 512) = v120;
    v121 = swift_initStackObject();
    *(v121 + 16) = xmmword_100028480;
    *(v121 + 32) = v119;
    *(v121 + 40) = v118;
    *(v121 + 48) = v120;
    swift_bridgeObjectRetain_n();
    v122 = v120;
    sub_100015D4C(v121);
    swift_setDeallocating();
    sub_100019928(v121 + 32, &qword_10003C770, &qword_100028680);
    v123 = objc_allocWithZone(CMLUseCaseGroup);
    sub_100020C54();
    v124 = v115;
    v125 = sub_100023954().super.isa;

    v126 = [v123 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:v125 networkConfig:v124];
    *(v199 + 520) = v126;

    v127 = [objc_opt_self() sharedManager];
    v128 = sub_100023974();
    *(v199 + 280) = 0;
    LODWORD(v124) = [v127 configureGroupWithName:v128 useCaseGroup:v126 error:v199 + 280];

    v129 = *(v199 + 280);
    if (v124)
    {

      v130 = v129;
      v131 = sub_1000238A4();
      v132 = sub_100023A94();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v200 = v134;
        *v133 = 136315138;
        *(v133 + 4) = sub_100018BDC(v119, v118, &v200);
        _os_log_impl(&_mh_execute_header, v131, v132, "configured group %s", v133, 0xCu);
        sub_1000194A4(v134);
      }

      v197 = objc_opt_self();
      v135 = objc_allocWithZone(CMLClientConfig);
      v136 = sub_100023974();

      v137 = sub_100023974();
      v138 = [v135 initWithUseCase:v136 sourceApplicationBundleIdentifier:v137];
      *(v199 + 528) = v138;

      *(v199 + 16) = v199;
      *(v199 + 56) = v199 + 288;
      *(v199 + 24) = sub_10001C4F8;
      v139 = swift_continuation_init();
      *(v199 + 216) = sub_100014320(&qword_10003C790, &qword_100028688);
      *(v199 + 160) = _NSConcreteStackBlock;
      *(v199 + 168) = 1107296256;
      *(v199 + 176) = sub_10001E154;
      *(v199 + 184) = &unk_100035478;
      *(v199 + 192) = v139;
      [v197 requestStatusForClientConfig:v138 options:10 completionHandler:v199 + 160];

      return _swift_continuation_await(v199 + 16);
    }

    v140 = v129;

    sub_1000235B4();

    swift_willThrow();

    swift_errorRetain();
    v141 = sub_1000238A4();
    v142 = sub_100023A94();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      *v143 = 138412290;
      swift_errorRetain();
      v145 = _swift_stdlib_bridgeErrorToNSError();
      *(v143 + 4) = v145;
      *v144 = v145;
      _os_log_impl(&_mh_execute_header, v141, v142, "configure failed %@", v143, 0xCu);
      sub_100019928(v144, &qword_10003C760, &qword_100028660);
    }

    v146 = v199;
    v147 = *(v199 + 312);

    v148 = *(v147 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
    v149 = sub_1000235A4();
    v150 = [v149 code];

    if ((v150 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v152 = *(v199 + 480);
    v151 = *(v199 + 488);
    v153 = *(v199 + 472);
    v154 = *(v199 + 296);
    v155 = *(v199 + 304);
    v156 = sub_100023974();
    [v148 sendEnableWithError:v150 for:v156];

    sub_100020864(v154, v155);
    swift_willThrow();

    sub_100020CA0(v153, v152);
    goto LABEL_88;
  }

  v113 = 0;
  v114 = ((63 - v109) >> 6) - 1;
  while (v114 != v113)
  {
    v111 = v113 + 1;
    v112 = *(v0 + 456);
    v110 = *(v112 + 8 * v113++ + 72);
    if (v110)
    {
      goto LABEL_70;
    }
  }

  v14 = v0;
  v157 = *(v0 + 488);
  v158 = *(v14 + 472);
  v4 = *(v14 + 480);
  v159 = *(v14 + 312);

  v160 = *(v159 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
  sub_100023664();
  v162 = -v161;
  v163 = sub_100023974();
  [v160 sendEnableWithTimeInterval:v163 for:v162];

  sub_100020CA0(v158, v4);
LABEL_21:
  v37 = (*(v14 + 312) + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore);
  sub_1000021D0(v37, v37[3]);
  sub_100023714();
  v191 = v37;
  sub_1000021D0(v37, v37[3]);
  v38 = sub_100023784();
  v39 = v38;
  v0 = v14;
  if (v38 >> 62)
  {
    v40 = sub_100023B14();
    if (v40)
    {
LABEL_23:
      v41 = 0;
      v195 = v39 & 0xC000000000000001;
      v193 = v39 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v195)
        {
          v15 = sub_100023AF4();
          v4 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v41 >= *(v193 + 16))
          {
            goto LABEL_82;
          }

          v15 = *(v39 + 8 * v41 + 32);
          v4 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v42 = v39;
        v43 = *(v0 + 296);
        v44 = *(v0 + 304);
        v198 = v15;
        v45 = [v15 identifier];
        v46 = sub_100023984();
        v48 = v47;

        v49 = v46 == v43 && v48 == v44;
        if (v49)
        {
          break;
        }

        v14 = sub_100023B64();

        v39 = v42;
        if (v14)
        {
          goto LABEL_55;
        }

        ++v41;
        if (v4 == v40)
        {
          goto LABEL_85;
        }
      }

LABEL_55:

      v80 = sub_1000238A4();
      v81 = sub_100023A94();

      if (os_log_type_enabled(v80, v81))
      {
        v83 = *(v0 + 296);
        v82 = *(v0 + 304);
        v84 = *(v199 + 544);
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v200 = v86;
        *v85 = 136315394;
        *(v85 + 4) = sub_100018BDC(v83, v82, &v200);
        *(v85 + 12) = 1024;
        *(v85 + 14) = v84;
        v0 = v199;
        _os_log_impl(&_mh_execute_header, v80, v81, "setting %s enabled to %{BOOL}d", v85, 0x12u);
        sub_1000194A4(v86);
      }

      v87 = *(v0 + 432);
      v88 = *(v199 + 424);
      v187 = *(v199 + 408);
      v189 = *(v199 + 416);
      v89 = *(v199 + 376);
      v90 = *(v199 + 368);
      v185 = *(v199 + 360);
      v186 = *(v199 + 400);
      v91 = *(v199 + 352);
      v184 = *(v199 + 344);
      sub_1000021D0(v191, v191[3]);
      sub_1000236F4();
      v92 = sub_100023AA4();
      sub_100023984();

      v93 = sub_1000239A4();

      notify_post((v93 + 32));

      (*(v91 + 8))(v185, v184);
      v94 = *(v89 + 8);
      v94(v186, v90);
      v94(v187, v90);
      (*(v88 + 8))(v87, v189);

      v95 = *(v199 + 8);
      goto LABEL_89;
    }
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_23;
    }
  }

LABEL_85:

  v164 = sub_1000238A4();
  v165 = sub_100023A84();

  if (os_log_type_enabled(v164, v165))
  {
    v167 = *(v0 + 296);
    v166 = *(v0 + 304);
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v200 = v169;
    *v168 = 136315138;
    *(v168 + 4) = sub_100018BDC(v167, v166, &v200);
    _os_log_impl(&_mh_execute_header, v164, v165, "Cannot find extension %s in DB", v168, 0xCu);
    sub_1000194A4(v169);
  }

  v171 = *(v0 + 296);
  v170 = *(v0 + 304);
  v200 = 0;
  v201 = 0xE000000000000000;
  sub_100023AE4(20);

  v200 = 0xD000000000000012;
  v201 = 0x80000001000292B0;
  v206._countAndFlagsBits = v171;
  v206._object = v170;
  sub_1000239C4(v206);
  v146 = v0;
  v172 = v200;
  v173 = v201;
  sub_100020B98();
  swift_allocError();
  *v174 = v172;
  v174[1] = v173;
  swift_willThrow();
LABEL_88:
  v176 = v146[53];
  v175 = v146[54];
  v178 = v146[51];
  v177 = v146[52];
  v179 = v146[50];
  v180 = v146[47];
  v181 = v146[46];
  (*(v146[44] + 8))(v146[45], v146[43]);
  v182 = *(v180 + 8);
  v182(v179, v181);
  v182(v178, v181);
  (*(v176 + 8))(v175, v177);

  v95 = v146[1];
LABEL_89:

  return v95();
}

uint64_t sub_10001C4F8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_10001D344;
  }

  else
  {
    v2 = sub_10001C634;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001C634()
{
  v121 = v0;
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);

  v4 = *(v0 + 288);
  v5 = *(v0 + 504);
  v6 = (*(v0 + 496) - 1) & *(v0 + 496);
  if (v6)
  {
    v7 = *(v0 + 456);
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v8 >= (((1 << *(v0 + 545)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v0 + 456);
    v6 = *(v7 + 8 * v8 + 64);
    ++v5;
    if (v6)
    {
      v5 = v8;
LABEL_7:
      *(v0 + 496) = v6;
      *(v0 + 504) = v5;
      v9 = *(v0 + 488);
      v10 = __clz(__rbit64(v6)) | (v5 << 6);
      v11 = (*(v7 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(v7 + 56) + 8 * v10);
      *(v0 + 512) = v14;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100028480;
      *(inited + 32) = v13;
      *(inited + 40) = v12;
      *(inited + 48) = v14;
      swift_bridgeObjectRetain_n();
      v16 = v14;
      sub_100015D4C(inited);
      swift_setDeallocating();
      sub_100019928(inited + 32, &qword_10003C770, &qword_100028680);
      v17 = objc_allocWithZone(CMLUseCaseGroup);
      sub_100020C54();
      v18 = v9;
      isa = sub_100023954().super.isa;

      v20 = [v17 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:isa networkConfig:v18];
      *(v0 + 520) = v20;

      v21 = [objc_opt_self() sharedManager];
      v22 = sub_100023974();
      *(v0 + 280) = 0;
      LODWORD(v18) = [v21 configureGroupWithName:v22 useCaseGroup:v20 error:v0 + 280];

      v23 = *(v0 + 280);
      if (v18)
      {

        v24 = v23;
        v25 = sub_1000238A4();
        v26 = sub_100023A94();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v119 = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_100018BDC(v13, v12, &v119);
          _os_log_impl(&_mh_execute_header, v25, v26, "configured group %s", v27, 0xCu);
          sub_1000194A4(v28);
        }

        v116 = objc_opt_self();
        v29 = objc_allocWithZone(CMLClientConfig);
        v30 = sub_100023974();

        v31 = sub_100023974();
        v32 = [v29 initWithUseCase:v30 sourceApplicationBundleIdentifier:v31];
        *(v0 + 528) = v32;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 288;
        *(v0 + 24) = sub_10001C4F8;
        v33 = swift_continuation_init();
        *(v0 + 216) = sub_100014320(&qword_10003C790, &qword_100028688);
        *(v0 + 160) = _NSConcreteStackBlock;
        *(v0 + 168) = 1107296256;
        *(v0 + 176) = sub_10001E154;
        *(v0 + 184) = &unk_100035478;
        *(v0 + 192) = v33;
        [v116 requestStatusForClientConfig:v32 options:10 completionHandler:v0 + 160];

        return _swift_continuation_await(v0 + 16);
      }

      v1 = *(v0 + 456);
      v34 = v23;

      sub_1000235B4();

      swift_willThrow();

      swift_errorRetain();
      v35 = sub_1000238A4();
      v36 = sub_100023A94();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        swift_errorRetain();
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v39;
        *v38 = v39;
        _os_log_impl(&_mh_execute_header, v35, v36, "configure failed %@", v37, 0xCu);
        sub_100019928(v38, &qword_10003C760, &qword_100028660);
      }

      v40 = *(v0 + 312);

      v41 = *(v40 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
      v42 = sub_1000235A4();
      v43 = [v42 code];

      if ((v43 & 0x8000000000000000) == 0)
      {
        v45 = *(v0 + 480);
        v44 = *(v0 + 488);
        v46 = *(v0 + 472);
        v48 = *(v0 + 296);
        v47 = *(v0 + 304);
        v49 = sub_100023974();
        [v41 sendEnableWithError:v43 for:v49];

        sub_100020864(v48, v47);
        swift_willThrow();

        sub_100020CA0(v46, v45);
LABEL_44:
        v99 = *(v0 + 424);
        v100 = *(v0 + 432);
        v102 = *(v0 + 408);
        v101 = *(v0 + 416);
        v103 = *(v0 + 400);
        v104 = *(v0 + 376);
        v105 = *(v0 + 368);
        (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
        v106 = *(v104 + 8);
        v106(v103, v105);
        v106(v102, v105);
        (*(v99 + 8))(v100, v101);

        v87 = *(v0 + 8);
        goto LABEL_45;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v60 = sub_100023B14();
      if (!v60)
      {
        goto LABEL_41;
      }

      goto LABEL_19;
    }
  }

  v50 = *(v0 + 480);
  v51 = *(v0 + 488);
  v52 = *(v0 + 472);
  v53 = *(v0 + 312);

  v54 = *(v53 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
  sub_100023664();
  v56 = -v55;
  v57 = sub_100023974();
  [v54 sendEnableWithTimeInterval:v57 for:v56];

  sub_100020CA0(v52, v50);
  v58 = (*(v0 + 312) + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore);
  sub_1000021D0(v58, v58[3]);
  sub_100023714();
  v114 = v58;
  sub_1000021D0(v58, v58[3]);
  v59 = sub_100023784();
  v1 = v59;
  if (v59 >> 62)
  {
    goto LABEL_40;
  }

  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v60)
  {
LABEL_41:

    v88 = sub_1000238A4();
    v89 = sub_100023A84();

    if (os_log_type_enabled(v88, v89))
    {
      v91 = *(v0 + 296);
      v90 = *(v0 + 304);
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v119 = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_100018BDC(v91, v90, &v119);
      _os_log_impl(&_mh_execute_header, v88, v89, "Cannot find extension %s in DB", v92, 0xCu);
      sub_1000194A4(v93);
    }

    v95 = *(v0 + 296);
    v94 = *(v0 + 304);
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_100023AE4(20);

    v119 = 0xD000000000000012;
    v120 = 0x80000001000292B0;
    v123._countAndFlagsBits = v95;
    v123._object = v94;
    sub_1000239C4(v123);
    v97 = v119;
    v96 = v120;
    sub_100020B98();
    swift_allocError();
    *v98 = v97;
    v98[1] = v96;
    swift_willThrow();
    goto LABEL_44;
  }

LABEL_19:
  v61 = 0;
  v115 = v1 & 0xFFFFFFFFFFFFFF8;
  v117 = (v1 & 0xC000000000000001);
  while (v117)
  {
    v62 = sub_100023AF4();
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_32;
    }

LABEL_23:
    v64 = v1;
    v65 = *(v0 + 296);
    v66 = *(v0 + 304);
    v118 = v62;
    v67 = [v62 identifier];
    v68 = sub_100023984();
    v70 = v69;

    if (v68 == v65 && v70 == v66)
    {
      goto LABEL_33;
    }

    v72 = sub_100023B64();

    v1 = v64;
    if (v72)
    {
      goto LABEL_34;
    }

    ++v61;
    if (v63 == v60)
    {
      goto LABEL_41;
    }
  }

  if (v61 >= *(v115 + 16))
  {
    goto LABEL_38;
  }

  v62 = *(v1 + 8 * v61 + 32);
  v63 = v61 + 1;
  if (!__OFADD__(v61, 1))
  {
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
LABEL_33:

LABEL_34:

  v73 = sub_1000238A4();
  v74 = sub_100023A94();

  if (os_log_type_enabled(v73, v74))
  {
    v76 = *(v0 + 296);
    v75 = *(v0 + 304);
    v77 = *(v0 + 544);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v119 = v79;
    *v78 = 136315394;
    *(v78 + 4) = sub_100018BDC(v76, v75, &v119);
    *(v78 + 12) = 1024;
    *(v78 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v73, v74, "setting %s enabled to %{BOOL}d", v78, 0x12u);
    sub_1000194A4(v79);
  }

  v80 = *(v0 + 424);
  v112 = *(v0 + 416);
  v113 = *(v0 + 432);
  v110 = *(v0 + 400);
  v111 = *(v0 + 408);
  v81 = *(v0 + 376);
  v82 = *(v0 + 368);
  v83 = *(v0 + 352);
  v108 = *(v0 + 344);
  v109 = *(v0 + 360);
  sub_1000021D0(v114, v114[3]);
  sub_1000236F4();
  v84 = sub_100023AA4();
  sub_100023984();

  v85 = sub_1000239A4();

  notify_post((v85 + 32));

  (*(v83 + 8))(v109, v108);
  v86 = *(v81 + 8);
  v86(v110, v82);
  v86(v111, v82);
  (*(v80 + 8))(v113, v112);

  v87 = *(v0 + 8);
LABEL_45:

  return v87();
}

uint64_t sub_10001D344(uint64_t a1)
{
  v127 = v1;
  v2 = *(v1 + 528);
  swift_willThrow();

  swift_errorRetain();
  v3 = sub_1000238A4();
  v4 = sub_100023A94();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 520);
  v7 = *(v1 + 512);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "register failed %@, ignoring", v8, 0xCu);
    sub_100019928(v9, &qword_10003C760, &qword_100028660);
  }

  else
  {
  }

  v11 = *(v1 + 504);
  v12 = (*(v1 + 496) - 1) & *(v1 + 496);
  if (v12)
  {
    v13 = *(v1 + 456);
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= (((1 << *(v1 + 545)) + 63) >> 6))
    {
      break;
    }

    v13 = *(v1 + 456);
    v12 = *(v13 + 8 * v14 + 64);
    ++v11;
    if (v12)
    {
      v11 = v14;
LABEL_10:
      *(v1 + 496) = v12;
      *(v1 + 504) = v11;
      v15 = *(v1 + 488);
      v16 = __clz(__rbit64(v12)) | (v11 << 6);
      v17 = (*(v13 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(*(v13 + 56) + 8 * v16);
      *(v1 + 512) = v20;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100028480;
      *(inited + 32) = v19;
      *(inited + 40) = v18;
      *(inited + 48) = v20;
      swift_bridgeObjectRetain_n();
      v22 = v20;
      sub_100015D4C(inited);
      swift_setDeallocating();
      sub_100019928(inited + 32, &qword_10003C770, &qword_100028680);
      v23 = objc_allocWithZone(CMLUseCaseGroup);
      sub_100020C54();
      v24 = v15;
      isa = sub_100023954().super.isa;

      v26 = [v23 initWithKeyExpirationMinutes:10080 keyRotationBeforeExpirationMinutes:1440 useCases:isa networkConfig:v24];
      *(v1 + 520) = v26;

      v27 = [objc_opt_self() sharedManager];
      v28 = sub_100023974();
      *(v1 + 280) = 0;
      LODWORD(v24) = [v27 configureGroupWithName:v28 useCaseGroup:v26 error:v1 + 280];

      v29 = *(v1 + 280);
      if (v24)
      {

        v30 = v29;
        v31 = sub_1000238A4();
        v32 = sub_100023A94();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v125 = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_100018BDC(v19, v18, &v125);
          _os_log_impl(&_mh_execute_header, v31, v32, "configured group %s", v33, 0xCu);
          sub_1000194A4(v34);
        }

        v122 = objc_opt_self();
        v35 = objc_allocWithZone(CMLClientConfig);
        v36 = sub_100023974();

        v37 = sub_100023974();
        v38 = [v35 initWithUseCase:v36 sourceApplicationBundleIdentifier:v37];
        *(v1 + 528) = v38;

        *(v1 + 16) = v1;
        *(v1 + 56) = v1 + 288;
        *(v1 + 24) = sub_10001C4F8;
        v39 = swift_continuation_init();
        *(v1 + 216) = sub_100014320(&qword_10003C790, &qword_100028688);
        *(v1 + 160) = _NSConcreteStackBlock;
        *(v1 + 168) = 1107296256;
        *(v1 + 176) = sub_10001E154;
        *(v1 + 184) = &unk_100035478;
        *(v1 + 192) = v39;
        [v122 requestStatusForClientConfig:v38 options:10 completionHandler:v1 + 160];

        return _swift_continuation_await(v1 + 16);
      }

      v6 = *(v1 + 456);
      v40 = v29;

      sub_1000235B4();

      swift_willThrow();

      swift_errorRetain();
      v41 = sub_1000238A4();
      v42 = sub_100023A94();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        swift_errorRetain();
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "configure failed %@", v43, 0xCu);
        sub_100019928(v44, &qword_10003C760, &qword_100028660);
      }

      v46 = *(v1 + 312);

      v47 = *(v46 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
      v48 = sub_1000235A4();
      v49 = [v48 code];

      if ((v49 & 0x8000000000000000) == 0)
      {
        v51 = *(v1 + 480);
        v50 = *(v1 + 488);
        v52 = *(v1 + 472);
        v54 = *(v1 + 296);
        v53 = *(v1 + 304);
        v55 = sub_100023974();
        [v47 sendEnableWithError:v49 for:v55];

        sub_100020864(v54, v53);
        swift_willThrow();

        sub_100020CA0(v52, v51);
LABEL_47:
        v105 = *(v1 + 424);
        v106 = *(v1 + 432);
        v108 = *(v1 + 408);
        v107 = *(v1 + 416);
        v109 = *(v1 + 400);
        v110 = *(v1 + 376);
        v111 = *(v1 + 368);
        (*(*(v1 + 352) + 8))(*(v1 + 360), *(v1 + 344));
        v112 = *(v110 + 8);
        v112(v109, v111);
        v112(v108, v111);
        (*(v105 + 8))(v106, v107);

        v93 = *(v1 + 8);
        goto LABEL_48;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      v66 = sub_100023B14();
      if (!v66)
      {
        goto LABEL_44;
      }

      goto LABEL_22;
    }
  }

  v56 = *(v1 + 480);
  v57 = *(v1 + 488);
  v58 = *(v1 + 472);
  v59 = *(v1 + 312);

  v60 = *(v59 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter);
  sub_100023664();
  v62 = -v61;
  v63 = sub_100023974();
  [v60 sendEnableWithTimeInterval:v63 for:v62];

  sub_100020CA0(v58, v56);
  v64 = (*(v1 + 312) + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore);
  sub_1000021D0(v64, v64[3]);
  sub_100023714();
  v120 = v64;
  sub_1000021D0(v64, v64[3]);
  v65 = sub_100023784();
  v6 = v65;
  if (v65 >> 62)
  {
    goto LABEL_43;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v66)
  {
LABEL_44:

    v94 = sub_1000238A4();
    v95 = sub_100023A84();

    if (os_log_type_enabled(v94, v95))
    {
      v97 = *(v1 + 296);
      v96 = *(v1 + 304);
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v125 = v99;
      *v98 = 136315138;
      *(v98 + 4) = sub_100018BDC(v97, v96, &v125);
      _os_log_impl(&_mh_execute_header, v94, v95, "Cannot find extension %s in DB", v98, 0xCu);
      sub_1000194A4(v99);
    }

    v101 = *(v1 + 296);
    v100 = *(v1 + 304);
    v125 = 0;
    v126 = 0xE000000000000000;
    sub_100023AE4(20);

    v125 = 0xD000000000000012;
    v126 = 0x80000001000292B0;
    v129._countAndFlagsBits = v101;
    v129._object = v100;
    sub_1000239C4(v129);
    v103 = v125;
    v102 = v126;
    sub_100020B98();
    swift_allocError();
    *v104 = v103;
    v104[1] = v102;
    swift_willThrow();
    goto LABEL_47;
  }

LABEL_22:
  v67 = 0;
  v121 = v6 & 0xFFFFFFFFFFFFFF8;
  v123 = (v6 & 0xC000000000000001);
  while (v123)
  {
    v68 = sub_100023AF4();
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_35;
    }

LABEL_26:
    v70 = v6;
    v71 = *(v1 + 296);
    v72 = *(v1 + 304);
    v124 = v68;
    v73 = [v68 identifier];
    v74 = sub_100023984();
    v76 = v75;

    if (v74 == v71 && v76 == v72)
    {
      goto LABEL_36;
    }

    v78 = sub_100023B64();

    v6 = v70;
    if (v78)
    {
      goto LABEL_37;
    }

    ++v67;
    if (v69 == v66)
    {
      goto LABEL_44;
    }
  }

  if (v67 >= *(v121 + 16))
  {
    goto LABEL_41;
  }

  v68 = *(v6 + 8 * v67 + 32);
  v69 = v67 + 1;
  if (!__OFADD__(v67, 1))
  {
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
LABEL_36:

LABEL_37:

  v79 = sub_1000238A4();
  v80 = sub_100023A94();

  if (os_log_type_enabled(v79, v80))
  {
    v82 = *(v1 + 296);
    v81 = *(v1 + 304);
    v83 = *(v1 + 544);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v125 = v85;
    *v84 = 136315394;
    *(v84 + 4) = sub_100018BDC(v82, v81, &v125);
    *(v84 + 12) = 1024;
    *(v84 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v79, v80, "setting %s enabled to %{BOOL}d", v84, 0x12u);
    sub_1000194A4(v85);
  }

  v86 = *(v1 + 424);
  v118 = *(v1 + 416);
  v119 = *(v1 + 432);
  v116 = *(v1 + 400);
  v117 = *(v1 + 408);
  v87 = *(v1 + 376);
  v88 = *(v1 + 368);
  v89 = *(v1 + 352);
  v114 = *(v1 + 344);
  v115 = *(v1 + 360);
  sub_1000021D0(v120, v120[3]);
  sub_1000236F4();
  v90 = sub_100023AA4();
  sub_100023984();

  v91 = sub_1000239A4();

  notify_post((v91 + 32));

  (*(v89 + 8))(v115, v114);
  v92 = *(v87 + 8);
  v92(v116, v88);
  v92(v117, v88);
  (*(v86 + 8))(v119, v118);

  v93 = *(v1 + 8);
LABEL_48:

  return v93();
}

uint64_t sub_10001E154(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000021D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100014320(&qword_10003C738, &qword_1000285C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10001E3B4(char a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_100023984();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10001E498;

  return LiveLookupStoreProxy.setEnabled(_:forExtensionWith:)(a1, v7, v9);
}

uint64_t sub_10001E498()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1000235A4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

Swift::Void __swiftcall LiveLookupStoreProxy.cleanup()()
{
  v51 = (v0 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore);
  sub_1000021D0((v0 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v0 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v1 = sub_100023764();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_100020864(v4, v5);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1000021D0(v51, v51[3]);
  v6 = sub_100023784();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_100023B14();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_6:
      v9 = objc_opt_self();
      if (v8 < 1)
      {
        __break(1u);
      }

      v11 = v9;
      v12 = 0;
      v52 = v7 & 0xC000000000000001;
      v13 = &OBJC_PROTOCOL____TtP31com_apple_CallKit_CallDirectory29CoreAnalyticsReporterProtocol_;
      *&v10 = 136315394;
      v46 = v10;
      v49 = v8;
      v50 = v7;
      v48 = v9;
      do
      {
        if (v52)
        {
          v14 = sub_100023AF4();
        }

        else
        {
          v14 = *(v7 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 v13[47].opt:v46 class:?meths];
        v17 = sub_100023984();
        v19 = v18;

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (!v20)
        {
          if (qword_10003C5C8 != -1)
          {
            swift_once();
          }

          v21 = sub_1000238C4();
          sub_100014284(v21, qword_10003C8F0);
          v22 = v15;
          v23 = sub_1000238A4();
          v24 = sub_100023A94();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412290;
            *(v25 + 4) = v22;
            *v26 = v22;
            v27 = v22;
            _os_log_impl(&_mh_execute_header, v23, v24, "found empty extension, marking it for deletion: %@", v25, 0xCu);
            sub_100019928(v26, &qword_10003C760, &qword_100028660);
          }

          sub_1000021D0(v51, v51[3]);
          sub_100023704();
          v13 = &OBJC_PROTOCOL____TtP31com_apple_CallKit_CallDirectory29CoreAnalyticsReporterProtocol_;
        }

        v28 = [v15 v13[47].opt_class_meths];
        v53[0] = 0;
        v29 = [v11 extensionWithIdentifier:v28 error:v53];

        if (v29)
        {
          v30 = v53[0];
        }

        else
        {
          v31 = v53[0];
          sub_1000235B4();

          swift_willThrow();
          if (qword_10003C5C8 != -1)
          {
            swift_once();
          }

          v32 = sub_1000238C4();
          sub_100014284(v32, qword_10003C8F0);
          v33 = v15;
          swift_errorRetain();
          v34 = sub_1000238A4();
          v35 = sub_100023A94();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v54 = v47;
            *v36 = v46;
            v38 = [v33 v13[47].opt_class_meths];
            v39 = sub_100023984();
            v41 = v40;

            v53[0] = v39;
            v53[1] = v41;
            v13 = &OBJC_PROTOCOL____TtP31com_apple_CallKit_CallDirectory29CoreAnalyticsReporterProtocol_;
            v42 = sub_100023994();
            v44 = sub_100018BDC(v42, v43, &v54);

            *(v36 + 4) = v44;
            *(v36 + 12) = 2112;
            swift_errorRetain();
            v45 = _swift_stdlib_bridgeErrorToNSError();
            *(v36 + 14) = v45;
            *v37 = v45;
            _os_log_impl(&_mh_execute_header, v34, v35, "extension in DB, but not installed on the system: %s error=%@", v36, 0x16u);
            sub_100019928(v37, &qword_10003C760, &qword_100028660);

            sub_1000194A4(v47);
          }

          sub_1000021D0(v51, v51[3]);
          sub_100023754();

          v8 = v49;
          v7 = v50;
          v11 = v48;
        }

        ++v12;
      }

      while (v8 != v12);

      return;
    }
  }
}

uint64_t LiveLookupStoreProxy.updateBlockingInfo(for:with:shouldBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v9 = sub_1000238C4();
  sub_100014284(v9, qword_10003C8F0);

  v10 = sub_1000238A4();
  v11 = sub_100023A94();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_100018BDC(a1, a2, &v15);
    *(v12 + 12) = 1024;
    *(v12 + 14) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "updating blocking info handle=%s shouldBlock=%{BOOL}d", v12, 0x12u);
    sub_1000194A4(v13);
  }

  sub_1000021D0((v5 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v5 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  return sub_100023774();
}

uint64_t LiveLookupStoreProxy.updateIdentityInfo(for:with:name:iconURL:type:ttlMinutes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v21 = a8;
  v20[3] = a5;
  v20[4] = a6;
  v20[1] = a3;
  v20[2] = a4;
  v10 = sub_1000237E4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v20 - v15;
  sub_1000021D0((v8 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v8 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v17 = &enum case for IdentityType.business(_:);
  v18 = &enum case for IdentityType.person(_:);
  if (a7 != 1)
  {
    v18 = &enum case for IdentityType.unknown(_:);
  }

  if (a7 != 2)
  {
    v17 = v18;
  }

  (*(v11 + 104))(v14, *v17, v10);
  (*(v11 + 32))(v16, v14, v10);
  sub_1000236E4();
  return (*(v11 + 8))(v16, v10);
}

uint64_t CXCallDirectoryIdentificationEntryType.identityType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000237E4();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for IdentityType.unknown(_:);
  if (a1 == 1)
  {
    v6 = &enum case for IdentityType.person(_:);
  }

  if (a1 == 2)
  {
    v6 = &enum case for IdentityType.business(_:);
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t LiveLookupStoreProxy.name(for:)(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100023984();

  return v3;
}

uint64_t LiveLookupStoreProxy.iconURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 iconURL];
  if (v3)
  {
    v4 = v3;
    sub_100023984();

    sub_100023604();
  }

  else
  {
    v6 = sub_100023614();
    v7 = *(*(v6 - 8) + 56);

    return v7(a2, 1, 1, v6);
  }
}

uint64_t LiveLookupStoreProxy.extensionUpdate(for:isAppStorVendable:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(sub_100023814());

  return sub_100023804();
}

Swift::Void __swiftcall LiveLookupStoreProxy.updateExtensions(with:)(Swift::OpaquePointer with)
{
  sub_1000021D0((v1 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(v1 + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  v2 = sub_100023734();
  v46 = v4;
  v48 = v2;
  if (v2 >> 62)
  {
    v5 = sub_100023B14();
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v6 = 0;
  v47 = OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter;
  v7 = qword_10003C8F0;
  *&v3 = 138412290;
  v44 = v3;
  v45 = v5;
  do
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v8 = sub_100023AF4();
    }

    else
    {
      v8 = *(v48 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 identifier];
    v11 = sub_100023984();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      [*(v50 + v47) sendInstallationFor:v10];
    }

    else
    {

      if (qword_10003C5C8 != -1)
      {
        swift_once();
      }

      v15 = sub_1000238C4();
      sub_100014284(v15, v7);
      v9 = v9;
      v10 = sub_1000238A4();
      v16 = sub_100023A94();

      if (os_log_type_enabled(v10, v16))
      {
        v17 = swift_slowAlloc();
        v18 = v7;
        v19 = swift_slowAlloc();
        *v17 = v44;
        *(v17 + 4) = v9;
        *v19 = v9;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v10, v16, "installed extension does not have identifier: %@", v17, 0xCu);
        sub_100019928(v19, &qword_10003C760, &qword_100028660);
        v7 = v18;

        v9 = v10;
        v10 = v20;
        v5 = v45;
      }
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_18:

  v21 = v46;
  if (v46 >> 62)
  {
    v22 = sub_100023B14();
    if (v22)
    {
LABEL_20:
      if (v22 >= 1)
      {
        v23 = 0;
        v24 = OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter;
        v25 = v46 & 0xC000000000000001;
        v26 = qword_10003C8F0;
        v49 = v22;
        do
        {
          if (v25)
          {
            v27 = sub_100023AF4();
          }

          else
          {
            v27 = *(v21 + 8 * v23 + 32);
          }

          v28 = v27;
          v29 = [v27 identifier];
          v30 = sub_100023984();
          v32 = v31;

          v33 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v33 = v30 & 0xFFFFFFFFFFFFLL;
          }

          if (v33)
          {
            [*(v50 + v24) sendUninstallationFor:v29];
          }

          else
          {

            if (qword_10003C5C8 != -1)
            {
              swift_once();
            }

            v34 = sub_1000238C4();
            sub_100014284(v34, v26);
            v28 = v28;
            v29 = sub_1000238A4();
            v35 = sub_100023A94();

            if (os_log_type_enabled(v29, v35))
            {
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              *v36 = 138412290;
              *(v36 + 4) = v28;
              *v37 = v28;
              v38 = v25;
              v39 = v24;
              v40 = v26;
              v41 = v28;
              _os_log_impl(&_mh_execute_header, v29, v35, "removed extension does not have identifier: %@", v36, 0xCu);
              sub_100019928(v37, &qword_10003C760, &qword_100028660);
              v21 = v46;

              v28 = v29;
              v29 = v41;
              v26 = v40;
              v24 = v39;
              v25 = v38;
              v22 = v49;
            }
          }

          ++v23;
        }

        while (v22 != v23);
        goto LABEL_35;
      }

LABEL_39:
      __break(1u);
      return;
    }
  }

  else
  {
    v22 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_20;
    }
  }

LABEL_35:

  v42 = sub_100023AA4();
  sub_100023984();

  v43 = sub_1000239A4();

  notify_post((v43 + 32));
}

uint64_t sub_10001FF78(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100019BF8;

  return v6();
}

uint64_t sub_100020060(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001925C;

  return v7();
}

uint64_t sub_100020148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100014320(&qword_10003C700, &qword_100028730);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000198C0(a3, v23 - v10, &qword_10003C700, &qword_100028730);
  v12 = sub_100023A74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100019928(v11, &qword_10003C700, &qword_100028730);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100023A64();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100023A34();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000239A4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100019928(a3, &qword_10003C700, &qword_100028730);

    return v21;
  }

LABEL_8:
  sub_100019928(a3, &qword_10003C700, &qword_100028730);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_100020444(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_1000237D4();
  v12[4] = &protocol witness table for LiveLookupStore;
  v12[0] = a2;
  *&a3[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_maxShards] = 10000000;
  *&a3[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_keyExpirationMinutes] = 10080;
  *&a3[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_keyRotationBeforeExpirationMinutes] = 1440;
  v7 = &a3[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_imagePath];
  *v7 = sub_1000237B4();
  *(v7 + 1) = v8;
  *&a3[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_analyticsReporter] = a1;
  sub_100021188(v12, &a3[OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore]);
  v11.receiver = a3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_1000194A4(v12);
  return v9;
}

void *_s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC19extensionIdentifier3forSSSg08IdentityG012BlockingInfoCSg_tF_0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 dbExtension];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 identifier];

      v5 = sub_100023984();
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC11llExtension_11containedInSb08IdentityG00fG11DBExtensionC_SayAF12BlockingInfoCGtF_0(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100023B14())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100023AF4();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 dbExtension];
      if (v8)
      {
        v9 = v8;
        sub_1000236C4();
        v10 = a1;
        v11 = sub_100023AB4();

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC38firstEnabledBlockedExtensionIdentifier3forSSSgSay08IdentityG012BlockingInfoCG_tF_0(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_18:
    v2 = sub_100023B14();
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_100023AF4();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v4 shouldBlock])
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  v7 = [v5 dbExtension];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 identifier];

    v10 = sub_100023984();
    return v10;
  }

  return 0;
}

void sub_100020864(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() sharedManager];
  v5 = sub_100023974();
  v20 = 0;
  v6 = [v4 configureGroupWithName:v5 useCaseGroup:0 error:&v20];

  if (v6)
  {
    v7 = qword_10003C5C8;
    v8 = v20;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_1000238C4();
    sub_100014284(v9, qword_10003C8F0);

    v10 = sub_1000238A4();
    v11 = sub_100023A94();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100018BDC(a1, a2, &v20);
      _os_log_impl(&_mh_execute_header, v10, v11, "set group %s to nil", v12, 0xCu);
      sub_1000194A4(v13);
    }

    goto LABEL_10;
  }

  v14 = v20;
  sub_1000235B4();

  swift_willThrow();
  if (qword_10003C5C8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000238C4();
  sub_100014284(v15, qword_10003C8F0);
  swift_errorRetain();
  v10 = sub_1000238A4();
  v16 = sub_100023A84();

  if (os_log_type_enabled(v10, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v10, v16, "unregister failed %@", v17, 0xCu);
    sub_100019928(v18, &qword_10003C760, &qword_100028660);

LABEL_10:

    return;
  }
}

unint64_t sub_100020B98()
{
  result = qword_10003C780;
  if (!qword_10003C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C780);
  }

  return result;
}

uint64_t sub_100020BEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100020C00(a1, a2);
  }

  return a1;
}

uint64_t sub_100020C00(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100020C54()
{
  result = qword_10003C788;
  if (!qword_10003C788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C788);
  }

  return result;
}

uint64_t sub_100020CA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100019450(result, a2);
  }

  return result;
}

BOOL _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC11shouldBlock4withSbSay08IdentityG012BlockingInfoCG_tF_0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_100023B14();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_100023AF4();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 shouldBlock];

    v4 = v5 + 1;
  }

  while (!v8);
  return v3 != v5;
}

__n128 sub_100020DE0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100020DEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100020E34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100020E88()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001925C;

  return sub_10001E3B4(v2, v3, v4, v5);
}

uint64_t sub_100020F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019BF8;

  return sub_100020060(a1, v4, v5, v6);
}

uint64_t sub_100021018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019BF8;

  return sub_1000189EC(a1, v4);
}

uint64_t sub_1000210D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001925C;

  return sub_1000189EC(a1, v4);
}

uint64_t sub_100021188(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000211EC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Request with requestIdentifier %@ was interrupted", &v3, 0xCu);
}

void sub_100021268(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request with requestIdentifier %@ failed to begin. Error: %@", &v5, 0x16u);
}

void sub_100021884()
{
  sub_1000098E0();
  [v0 primaryKey];
  sub_1000098EC();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10002190C()
{
  sub_1000098E0();
  sub_10000990C(v0);
  sub_100009924();
  sub_1000098B8();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100021994()
{
  sub_1000098E0();
  [v0 primaryKey];
  sub_1000098EC();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100021A1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error loading extension data: %@", &v2, 0xCu);
}

void sub_100021A94()
{
  sub_1000098E0();
  sub_10000990C(v0);
  sub_100009924();
  sub_1000098B8();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100021C30()
{
  sub_10000EBF0();
  sub_10000EBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100021D18()
{
  sub_10000EBF0();
  sub_10000EBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100021E98()
{
  sub_10000EBF0();
  sub_10000EBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000220B0()
{
  sub_100007910();
  sub_10000EBE0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100022264()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10000EC04();
  sub_10000EC1C(&_mh_execute_header, v1, v2, "failed to resolve temporary directory (%d): %s", v3, v4, v5, v6);
}

void sub_1000222EC()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_10000EC04();
  sub_10000EC1C(&_mh_execute_header, v1, v2, "failed to initialize temporary directory (%d): %s", v3, v4, v5, v6);
}

void sub_100022374()
{
  sub_1000098E0();
  v1 = v0;
  [v0 extensionID];
  v2 = [v1 store];
  sub_100010EE4();
  sub_1000098D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10002242C(uint64_t a1)
{
  v1 = [sub_100010EF0(a1) extensionIdentifier];
  sub_100007910();
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000224B8(uint64_t a1)
{
  v1 = [sub_100010EF0(a1) extensionIdentifier];
  sub_100007910();
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100022544(uint64_t a1)
{
  v1 = [sub_100010EF0(a1) extensionIdentifier];
  sub_100007910();
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000225D0(id *a1)
{
  v7 = [sub_100010EF0(a1) extensionIdentifier];
  [*a1 allowLoadingDisabledExtensions];
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100022680()
{
  sub_1000098E0();
  v1 = v0;
  v2 = [*v0 extensionIdentifier];
  v3 = [*v1 store];
  sub_100010EE4();
  sub_100010F18();
  sub_1000098D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100022740()
{
  sub_1000098E0();
  v1 = [sub_100010EF0(v0) extensionIdentifier];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000227D4(uint64_t a1)
{
  v1 = [sub_100010EF0(a1) extensionIdentifier];
  sub_100007910();
  sub_100010EE4();
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100022868()
{
  sub_1000098E0();
  v1 = [*(v0 + 32) extensionIdentifier];
  sub_100007910();
  sub_1000098D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100022918(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error performing initial deletion during request completion: %@", &v3, 0xCu);
}

void sub_10002299C()
{
  sub_1000098E0();
  v1 = v0;
  v2 = [*v0 extensionIdentifier];
  v3 = [*v1 store];
  sub_100010EE4();
  sub_100010F18();
  sub_1000098D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100022A5C(void *a1)
{
  [a1 maximumAllowedEntries];
  sub_100007910();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100022ADC()
{
  sub_1000098E0();
  [v0 lastBlockingPhoneNumber];
  sub_100010ECC();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022B5C()
{
  sub_1000098E0();
  [v0 lastBlockingPhoneNumber];
  sub_100010ECC();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022BDC()
{
  sub_1000098E0();
  [v0 extensionID];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022C90()
{
  sub_1000098E0();
  [v0 extensionID];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022D10()
{
  sub_1000098E0();
  [v0 extensionID];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022D90()
{
  sub_1000098E0();
  [v0 lastIdentificationPhoneNumber];
  sub_100010ECC();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022E10()
{
  sub_1000098E0();
  [v0 lastIdentificationPhoneNumber];
  sub_100010ECC();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022E90()
{
  sub_1000098E0();
  [v0 extensionID];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022F10()
{
  sub_1000098E0();
  [v0 extensionID];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100022F90()
{
  sub_1000098E0();
  [v0 extensionID];
  sub_100010EB4();
  sub_1000098D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100023010(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000078F4(&_mh_execute_header, a2, a3, "Error removing unreferenced records: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10002307C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000078F4(&_mh_execute_header, a2, a3, "Error vacuuming store: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000230E8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_1000078F4(&_mh_execute_header, a2, a3, "Error retrieving extensions: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100023154(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting extensions: %@", &v2, 0xCu);
}

void sub_1000231CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error getting installed extensions: %@", &v2, 0xCu);
}

void sub_10002349C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  sub_1000078F4(&_mh_execute_header, a2, a3, "Unable to initialize CXCallDirectoryStore for reading and writing: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}