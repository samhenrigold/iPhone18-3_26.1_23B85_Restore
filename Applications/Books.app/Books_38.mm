void *sub_1004F6858(unint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v39 = a2;
    v42 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v43 = v4;
    while (1)
    {
      if (v6)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        v7 = *(isUniquelyReferenced_nonNull_native + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 seriesID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1007A2254();
        v13 = v11;
        v14 = v12;
        if (_swiftEmptyDictionarySingleton[2] && (sub_10000E53C(v11, v12), (v15 & 1) != 0))
        {
        }

        else
        {
          v16 = [objc_opt_self() defaultManager];
          v17 = [v16 libraryAssetWithAssetID:v10 inManagedObjectContext:a2];

          if (v17)
          {
            v18 = [v17 title];
            if (v18)
            {
              v19 = isUniquelyReferenced_nonNull_native;
              v20 = v18;
              v40 = sub_1007A2254();
              v41 = v21;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23 = sub_10000E53C(v13, v14);
              v24 = _swiftEmptyDictionarySingleton[2];
              v25 = (v22 & 1) == 0;
              v26 = v24 + v25;
              if (__OFADD__(v24, v25))
              {
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                v4 = sub_1007A38D4();
                if (!v4)
                {
                  return _swiftEmptyDictionarySingleton;
                }

                goto LABEL_3;
              }

              a2 = v22;
              if (_swiftEmptyDictionarySingleton[3] >= v26)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1002F0D14();
                }
              }

              else
              {
                sub_1003D3E94(v26, isUniquelyReferenced_nonNull_native);
                v27 = sub_10000E53C(v13, v14);
                if ((a2 & 1) != (v28 & 1))
                {
                  goto LABEL_39;
                }

                v23 = v27;
              }

              isUniquelyReferenced_nonNull_native = v19;
              if (a2)
              {
                v32 = (_swiftEmptyDictionarySingleton[7] + 16 * v23);
                *v32 = v40;
                v32[1] = v41;
              }

              else
              {
                _swiftEmptyDictionarySingleton[(v23 >> 6) + 8] |= 1 << v23;
                v33 = (_swiftEmptyDictionarySingleton[6] + 16 * v23);
                *v33 = v13;
                v33[1] = v14;
                v34 = (_swiftEmptyDictionarySingleton[7] + 16 * v23);
                *v34 = v40;
                v34[1] = v41;
                v35 = _swiftEmptyDictionarySingleton[2];
                v36 = __OFADD__(v35, 1);
                v37 = v35 + 1;
                if (v36)
                {
                  goto LABEL_35;
                }

                _swiftEmptyDictionarySingleton[2] = v37;
              }

              a2 = v39;
            }

            else
            {
              v29 = sub_10000E53C(v13, v14);
              v31 = v30;

              if (v31)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1002F0D14();
                }

                sub_1002EF7D8(v29, _swiftEmptyDictionarySingleton);
              }
            }
          }

          else
          {
          }

          v6 = v42;
          v4 = v43;
        }
      }

      else
      {
      }

      if (v4 == ++v5)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }
  }

  __break(1u);
LABEL_39:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

char *sub_1004F6BD4(unint64_t a1, uint64_t a2)
{
  v14 = sub_1004F6858(a1, a2);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v32 = v6;
      sub_1004F4D80(&v32, v14, &v26);

      if (*(&v26 + 1))
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10066A520(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_10066A520((v9 > 1), v10 + 1, 1, v5);
        }

        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v11 = v20;
        v15 = v21;
        *(v5 + 2) = v10 + 1;
        v12 = &v5[96 * v10];
        *(v12 + 3) = v15;
        *(v12 + 6) = v18;
        *(v12 + 7) = v19;
        *(v12 + 4) = v16;
        *(v12 + 5) = v17;
        *(v12 + 2) = v11;
      }

      else
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        sub_100007840(&v20, &unk_100AE7F60, &qword_1008110C0);
      }

      ++v4;
      if (v8 == i)
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

  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  return v5;
}

char *sub_1004F6DE0(unint64_t a1, uint64_t a2)
{
  v14 = sub_1004F6858(a1, a2);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v32 = v6;
      sub_1004F5944(&v32, v14, &v26);

      if (*(&v26 + 1))
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10066BF88(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_10066BF88((v9 > 1), v10 + 1, 1, v5);
        }

        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v11 = v20;
        v15 = v21;
        *(v5 + 2) = v10 + 1;
        v12 = &v5[88 * v10];
        *(v12 + 3) = v15;
        v12[112] = v19;
        *(v12 + 5) = v17;
        *(v12 + 6) = v18;
        *(v12 + 4) = v16;
        *(v12 + 2) = v11;
      }

      else
      {
        v22 = v28;
        v23 = v29;
        v24 = v30;
        v25 = v31;
        v20 = v26;
        v21 = v27;
        sub_100007840(&v20, &unk_100AE7F10, &qword_100841270);
      }

      ++v4;
      if (v8 == i)
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

  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  return v5;
}

uint64_t sub_1004F7010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a3;
  v4[64] = a4;
  v4[61] = a1;
  v4[62] = a2;
  v5 = sub_1007990E4();
  v4[65] = v5;
  v4[66] = *(v5 - 8);
  v4[67] = swift_task_alloc();
  v6 = sub_100798F44();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v7 = sub_100798FE4();
  v4[71] = v7;
  v4[72] = *(v7 - 8);
  v4[73] = swift_task_alloc();
  sub_1007A26F4();
  v4[74] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v4[75] = v8;
  v4[76] = v9;

  return _swift_task_switch(sub_1004F71F8, v8, v9);
}

uint64_t sub_1004F71F8()
{
  v21 = v0;
  if (([*(v0 + 512) isPresentingWelcome] & 1) == 0)
  {
    if ([*(v0 + 504) isLocal] & 1) == 0 && (objc_msgSend(objc_opt_self(), "isOffline"))
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v2 = sub_10079ACE4();
      sub_100008B98(v2, qword_100AE7ED0);
      v3 = sub_10079ACC4();
      v4 = sub_1007A29B4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v20 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v20);
        _os_log_impl(&_mh_execute_header, v3, v4, "%s: Nonlocal audiobook cannot be played, device is offline.", v5, 0xCu);
        sub_1000074E0(v6);
      }

      sub_1004FA080();
      swift_allocError();
      *v7 = 1;
      goto LABEL_16;
    }

    v8 = [objc_opt_self() sharedAVSystemController];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() mainBundle];
      v11 = [v10 bundleIdentifier];

      v12 = AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute;
      *(v0 + 464) = 0;
      LODWORD(v10) = [v9 setAttribute:v11 forKey:v12 error:v0 + 464];

      v13 = *(v0 + 464);
      if (!v10)
      {
        v17 = v13;

        sub_1007967D4();

        goto LABEL_16;
      }

      v14 = *(v0 + 512);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 472;
      *(v0 + 24) = sub_1004F7644;
      v15 = swift_continuation_init();
      *(v0 + 376) = sub_1001F1160(&qword_100AE7EF0, &qword_10082AFE8);
      *(v0 + 320) = _NSConcreteStackBlock;
      *(v0 + 328) = 1107296256;
      *(v0 + 336) = sub_1003807B4;
      *(v0 + 344) = &unk_100A209E0;
      *(v0 + 352) = v15;
      v16 = v13;
      [v14 requestPrimaryScene:v0 + 320];
      v8 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v8);
  }

  sub_1004FA080();
  swift_allocError();
  *v1 = 9;
LABEL_16:
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1004F7644()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 600);

  return _swift_task_switch(sub_1004F7778, v2, v1);
}

uint64_t sub_1004F7778()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 472);
  *(v0 + 616) = v2;
  v3 = [v2 newShowAssetTransaction];
  *(v0 + 624) = v3;
  if (([v1 isNonLocalSample] & 1) != 0 || objc_msgSend(*(v0 + 504), "isSample"))
  {
    v4 = *(v0 + 560);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    sub_100798F74();
    (*(v5 + 104))(v4, enum case for MResourceType.audiobooks(_:), v6);
    sub_1007990F4();
    v7 = swift_task_alloc();
    *(v0 + 632) = v7;
    *v7 = v0;
    v7[1] = sub_1004F7BA8;

    JUMPOUT(0x100798FA4);
  }

  v8 = *(v0 + 512);
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD00000000000002BLL;
  *(inited + 88) = 0x80000001008BF710;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000031;
  *(inited + 136) = 0x80000001008CAA50;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  v11 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  v12 = [v8 bookPresenter];
  *(v0 + 656) = v12;
  swift_unknownObjectRetain();
  v13 = sub_1007A2214();
  *(v0 + 664) = v13;
  sub_10058096C(v11);

  isa = sub_1007A2024().super.isa;
  *(v0 + 672) = isa;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 448;
  *(v0 + 88) = sub_1004F82C4;
  v15 = swift_continuation_init();
  *(v0 + 440) = sub_1001F1160(&qword_100AE7EF8, &unk_10082D318);
  *(v0 + 384) = _NSConcreteStackBlock;
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_1004F3EAC;
  *(v0 + 408) = &unk_100A20A08;
  *(v0 + 416) = v15;
  [v12 showAssetWithTransaction:v3 assetID:v13 location:0 options:isa completion:v0 + 384];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1004F7BA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[80] = a1;
  v4[81] = v1;

  v5 = v3[73];
  v6 = v3[72];
  v7 = v3[71];
  v8 = v3[70];
  v9 = v3[69];
  v10 = v3[68];
  (*(v3[66] + 8))(v3[67], v3[65]);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v11 = v3[76];
  v12 = v3[75];
  if (v1)
  {
    v13 = sub_1004F8530;
  }

  else
  {
    v13 = sub_1004F7E28;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_1004F7E28()
{
  v24 = v0;
  v1 = *(v0 + 640);

  if (v1)
  {
    v2 = *(v0 + 640);
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    v5 = [*(v0 + 512) bookPresenter];
    swift_unknownObjectRetain();
    v6 = v2;
    sub_100013740(_swiftEmptyArrayStorage);
    isa = sub_1007A2024().super.isa;

    [v5 showStoreAsset:v3 asset:v6 options:isa];
    swift_unknownObjectRelease_n();

    swift_unknownObjectRelease();

    v8 = *(v0 + 8);
  }

  else
  {
    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100AE7ED0);
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v23);
      sub_1000074E0(v13);
    }

    v14 = *(v0 + 616);
    sub_100795AD4();
    sub_100214F44();
    v15 = swift_allocError();
    sub_100795AC4();
    swift_willThrow();
    swift_unknownObjectRelease();

    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    sub_100008B98(v9, qword_100AE7ED0);
    swift_errorRetain();
    v16 = sub_10079ACC4();
    v17 = sub_1007A29B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v23);
      *(v18 + 12) = 2080;
      *(v0 + 480) = v15;
      swift_errorRetain();
      sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
      v19 = sub_1007A22E4();
      v21 = sub_1000070F4(v19, v20, &v23);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: showAsset failed. error: %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_1004F82C4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);
  if (v2)
  {
    v5 = sub_1004F8794;
  }

  else
  {
    v5 = sub_1004F8420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F8420()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[77];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004F8530()
{
  v13 = v0;
  v1 = v0[77];

  swift_unknownObjectRelease();

  v2 = v0[81];
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AE7ED0);
  swift_errorRetain();
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v12);
    *(v6 + 12) = 2080;
    v0[60] = v2;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v7 = sub_1007A22E4();
    v9 = sub_1000070F4(v7, v8, &v12);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: showAsset failed. error: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004F8794()
{
  v15 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[77];

  swift_willThrow();
  swift_unknownObjectRelease_n();

  swift_unknownObjectRelease();
  v4 = v0[85];
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AE7ED0);
  swift_errorRetain();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008D8F40, &v14);
    *(v8 + 12) = 2080;
    v0[60] = v4;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v9 = sub_1007A22E4();
    v11 = sub_1000070F4(v9, v10, &v14);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: showAsset failed. error: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004F8A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1007A26F4();
  v5[7] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1004F8AC0, v7, v6);
}

uint64_t sub_1004F8AC0()
{
  v33 = v0;
  v1 = objc_opt_self();
  v0[10] = v1;
  v2 = [v1 sharedApplication];
  v3 = sub_1007A2214();
  v0[11] = [v2 beginBackgroundTaskWithName:v3 expirationHandler:0];

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v5 = sub_10079ACE4();
  sub_100008B98(v5, qword_100AE7ED0);

  v6 = sub_10079ACC4();
  v7 = sub_1007A29D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v31 = v0[4];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D9140, v32);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1000070F4(v10, v9, v32);
    *(v11 + 22) = 2080;
    if (v8)
    {
      v12 = v31;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    if (v8)
    {
      v13 = v4;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = sub_1000070F4(v12, v13, v32);

    *(v11 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: assetID: %s title: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = [objc_opt_self() defaultManager];
  v16 = sub_1007A2214();
  v17 = [v15 libraryAssetOnMainQueueWithAssetID:v16];
  v0[12] = v17;

  if (v17)
  {
    v18 = v17;
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_1004F8FA4;
    v20 = v0[6];
    v22 = v0[2];
    v21 = v0[3];

    return sub_1004F7010(v22, v21, v18, v20);
  }

  else
  {

    v24 = sub_10079ACC4();
    v25 = sub_1007A29B4();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[2];
      v26 = v0[3];
      v28 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D9140, v32);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1000070F4(v27, v26, v32);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s: Library asset not found. assetID: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    sub_1004FA080();
    swift_allocError();
    *v29 = 4;
    swift_willThrow();
    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1004F8FA4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1004F918C;
  }

  else
  {
    v5 = sub_1004F90E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F90E0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = [v3 sharedApplication];
  [v4 endBackgroundTask:v1];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F918C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F91FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  sub_1007A26F4();
  v3[21] = sub_1007A26E4();
  v5 = sub_1007A2694();
  v3[22] = v5;
  v3[23] = v4;

  return _swift_task_switch(sub_1004F9298, v5, v4);
}

uint64_t sub_1004F9298()
{
  v1 = v0[18];
  v2 = sub_1007A2214();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1004F93E8;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100298E88;
  v0[13] = &unk_100A209B8;
  v0[14] = v3;
  [v1 appLaunchCoordinatorOnConditionMask:0x2000 blockID:v2 performBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F93E8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return _swift_task_switch(sub_1004F94F0, v2, v1);
}

uint64_t sub_1004F94F0()
{
  v46 = v0;

  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  v3 = [v2 uiChildContext];
  *(v0 + 200) = v3;

  v4 = [v1 defaultManager];
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  isa = sub_1007A25D4().super.isa;
  v6 = [v4 mostRecentlyEngagedLibraryAssetWithTypes:isa inManagedObjectContext:v3];

  v7 = v6;
  if (!v6)
  {
    v8 = [v1 defaultManager];
    v9 = sub_1007A25D4().super.isa;
    v10 = [v8 mostRecentlyOpenedLibraryAssetWithTypes:v9 inManagedObjectContext:v3];

    if (!v10)
    {

      if (qword_100AD1798 != -1)
      {
        swift_once();
      }

      v33 = sub_10079ACE4();
      sub_100008B98(v33, qword_100AE7ED0);
      v34 = sub_10079ACC4();
      v35 = sub_1007A29B4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v45[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D8F20, v45);
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: Failed to find recent audiobook.", v36, 0xCu);
        sub_1000074E0(v37);
      }

      sub_1004FA080();
      swift_allocError();
      *v38 = 8;
      swift_willThrow();
      goto LABEL_21;
    }

    v7 = v10;
  }

  *(v0 + 208) = v7;
  v11 = v6;

  v12 = [v7 assetID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1007A2254();
    v16 = v15;

    *(v0 + 216) = v16;
    if (qword_100AD1798 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE7ED0);

    v18 = v7;
    v19 = sub_10079ACC4();
    v20 = sub_1007A29D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D8F20, v45);
      *(v21 + 12) = 2080;
      v44 = v14;
      *(v21 + 14) = sub_1000070F4(v14, v16, v45);
      *(v21 + 22) = 2080;
      v22 = [v18 title];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1007A2254();
        v26 = v25;
      }

      else
      {
        v26 = 0xE700000000000000;
        v24 = 0x6E776F6E6B6E75;
      }

      v41 = sub_1000070F4(v24, v26, v45);

      *(v21 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: assetID: %s title: %s", v21, 0x20u);
      swift_arrayDestroy();

      v14 = v44;
    }

    else
    {
    }

    v42 = swift_task_alloc();
    *(v0 + 224) = v42;
    *v42 = v0;
    v42[1] = sub_1004F9BC0;
    v43 = *(v0 + 152);

    return sub_1004F7010(v14, v16, v18, v43);
  }

  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v27 = sub_10079ACE4();
  sub_100008B98(v27, qword_100AE7ED0);
  v28 = sub_10079ACC4();
  v29 = sub_1007A29B4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v45[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000070F4(0xD000000000000015, 0x80000001008D8F20, v45);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s: nil assetID.", v30, 0xCu);
    sub_1000074E0(v31);
  }

  sub_1004FA080();
  swift_allocError();
  *v32 = 8;
  swift_willThrow();

LABEL_21:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1004F9BC0()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1004F9D88;
  }

  else
  {
    v5 = sub_1004F9D14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004F9D14()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F9D88()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004F9DFC()
{
  sub_1007A26F4();
  *(v0 + 16) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1004F9E90, v2, v1);
}

uint64_t sub_1004F9E90()
{
  v11 = v0;

  v1 = [objc_opt_self() sharedInstance];
  if (qword_100AD1798 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AE7ED0);
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008D8E90, &v10);
    *(v6 + 12) = 1024;
    *(v6 + 14) = [v3 isPlaying];

    _os_log_impl(&_mh_execute_header, v4, v5, "%s: audiobookPlayer.isPlaying: %{BOOL}d", v6, 0x12u);
    sub_1000074E0(v7);
  }

  else
  {
  }

  [v3 pause];
  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1004FA080()
{
  result = qword_100AE7EE8;
  if (!qword_100AE7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EE8);
  }

  return result;
}

double sub_1004FA110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1004FA1D8()
{
  v1 = *(sub_1001F1160(&unk_100ADA050, &qword_100833F70) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1004F4BA0(v0 + 16, v2);
}

uint64_t sub_1004FA2F0(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1007A2214();
  v6 = [v4 libraryAssetOnMainQueueWithAssetID:v5];

  if (!v6)
  {
    return 0;
  }

  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1007983D4(v19);
  if (v7)
  {
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    sub_1007983C4(v20);
    if (v8)
    {
      v9 = v6;
      [v9 contentType];
      sub_1007984D4();
      sub_1007984A4();

      if ([v9 isOwned])
      {
        v10 = [v9 storeID];
        if (v10)
        {
          v11 = v10;
          sub_1007A2254();

          sub_1002060B4();
          sub_1007A28A4();
        }
      }

      sub_100798004();
      v13 = sub_100797FF4();
      sub_100797FA4();

      if ([v9 isAudiobook])
      {
        v14 = [v9 hasRACSupport];
        if (v14)
        {
          v15 = v14;
          [v14 BOOLValue];
        }
      }

      if ([v9 contentType] == 3)
      {
        [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v9, "pageCount")}];
      }

      v16 = [v9 supplementalContentAssets];
      if (v16)
      {
        sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
        sub_1002E4850();
        v17 = sub_1007A2834();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v16 = sub_1007A3624();
        }

        else
        {
          v16 = *(v17 + 16);
        }
      }

      [objc_allocWithZone(NSNumber) initWithInteger:v16];
      objc_allocWithZone(sub_100798134());

      v18 = sub_100798114();

      return v18;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1004FA694(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FA6F4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001F1160(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1004FA804(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1001F1160(a2, a3) - 8);
  v7 = *(v4 + 56);
  v8 = *(v4 + 64);
  v9 = v4 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return a4(a1, v4 + 16, v7, v8, v9);
}

uint64_t sub_1004FA89C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001F1160(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for BooksAssetAppIntentsPerformer.BooksAssetAppIntentsPerformerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BooksAssetAppIntentsPerformer.BooksAssetAppIntentsPerformerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004FAB98()
{
  result = qword_100AE7FA0;
  if (!qword_100AE7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7FA0);
  }

  return result;
}

uint64_t sub_1004FAC58@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v22 = a2;
  v20 = sub_1007967F4();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100796CF4();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v23 = sub_1007A21D4();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v23);
  v17 = v21;
  (*(v5 + 16))(v7, v10, v21);
  *v4 = type metadata accessor for BundleFinder();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v17);
  return (*(v11 + 8))(v16, v23);
}

unint64_t sub_1004FB01C()
{
  result = qword_100AE7FB0;
  if (!qword_100AE7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7FB0);
  }

  return result;
}

uint64_t *REConstants.floatingButtonHeight.unsafeMutableAddressor()
{
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  return &static REConstants.floatingButtonHeight;
}

uint64_t sub_1004FB180(uint64_t a1)
{
  result = sub_10079E404();
  v2 = 18.0;
  if (result)
  {
    v2 = 25.0;
  }

  qword_100B23470 = *&v2;
  return result;
}

uint64_t sub_1004FB1B0()
{
  v0 = sub_1001F1160(&unk_100AE3FB0, &qword_1008138C0);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_10079C0E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = sub_1001F1160(&qword_100AD53B0, &qword_1008268D0);
  sub_100009A38(v13, qword_100B23478);
  v24 = sub_100008B98(v13, qword_100B23478);
  v14 = v7[13];
  v14(v12, enum case for DynamicTypeSize.xSmall(_:), v6);
  v14(v9, enum case for DynamicTypeSize.xxxLarge(_:), v6);
  sub_1004FB668();
  result = sub_1007A20F4();
  if (result)
  {
    v16 = v7[2];
    v16(v5, v12, v6);
    v16(&v5[*(v0 + 48)], v9, v6);
    sub_1004FB6C0(v5, v2);
    v17 = *(v0 + 48);
    v23 = v9;
    v21 = v0;
    v18 = v7[4];
    v19 = v24;
    v18(v24, v2, v6);
    v22 = v12;
    v20 = v7[1];
    v20(&v2[v17], v6);
    sub_1004FB730(v5, v2);
    v18(v19 + *(v13 + 36), &v2[*(v21 + 48)], v6);
    v20(v23, v6);
    v20(v22, v6);
    return (v20)(v2, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004FB4E8(uint64_t a1)
{
  result = sub_10079E404();
  v2 = 48.0;
  if ((result & 1) == 0)
  {
    v2 = 28.0;
  }

  static REConstants.floatingButtonHeight = *&v2;
  return result;
}

double static REConstants.floatingButtonHeight.getter()
{
  if (qword_100AD17D0 != -1)
  {
    swift_once();
  }

  return *&static REConstants.floatingButtonHeight;
}

id REConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REConstants();
  return objc_msgSendSuper2(&v2, "init");
}

id REConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for REConstants();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004FB668()
{
  result = qword_100AD6D58;
  if (!qword_100AD6D58)
  {
    sub_10079C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6D58);
  }

  return result;
}

uint64_t sub_1004FB6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AE3FB0, &qword_1008138C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FB730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AE3FB0, &qword_1008138C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004FB7A0(uint64_t a1, char a2, double a3, double a4)
{
  v8 = sub_10079CAE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v45[-v13];
  if (a4 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a4;
  }

  if (v15 >= 375.0)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 3.4;
  }

  v17 = *(v9 + 16);
  v48 = a1;
  if ((a2 & 1) == 0)
  {
    v31 = enum case for ContentSizeCategory.extraExtraLarge(_:);
    v19 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
    v20 = enum case for ContentSizeCategory.accessibilityLarge(_:);
    v21 = enum case for ContentSizeCategory.accessibilityExtraLarge(_:);
    v22 = enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:);
    v23 = enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
    v32 = 0.0;
    goto LABEL_41;
  }

  v47 = v17;
  v17(&v45[-v13], a1, v8);
  v18 = (*(v9 + 88))(v14, v8);
  v19 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v20 = enum case for ContentSizeCategory.accessibilityLarge(_:);
  v21 = enum case for ContentSizeCategory.accessibilityExtraLarge(_:);
  v22 = enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:);
  v23 = enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:);
  v46 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  if (v18 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v18 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    (*(v9 + 8))(v14, v8);
    v29 = 48.0;
    if (a3 < 375.0)
    {
      v29 = 40.8;
    }

    v33 = 48.0;
    if (a4 < 375.0)
    {
      v33 = 40.8;
    }

    if (a4 >= a3)
    {
      v30 = a3;
    }

    else
    {
      v29 = v33;
      v30 = a4;
    }

LABEL_37:
    v17 = v47;
    v31 = v46;
    goto LABEL_38;
  }

  if (a4 < a3)
  {
    v29 = 72.0;
    if (a4 < 375.0)
    {
      v29 = 61.2;
    }

    v30 = a4;
    goto LABEL_37;
  }

  v17 = v47;
  v31 = v46;
  if (a3 < 375.0)
  {
    v29 = 61.2;
    v30 = a3;
LABEL_38:
    v34 = v16 + v29;
    v35 = v30 < 375.0;
    v36 = 9.35;
    if (!v35)
    {
      v36 = 11.0;
    }

    goto LABEL_40;
  }

  v34 = v16 + 72.0;
  v36 = 11.0;
LABEL_40:
  v32 = v36 + v34;
LABEL_41:
  v17(v11, v48, v8);
  v37 = (*(v9 + 88))(v11, v8);
  if (v37 != v31 && v37 != v19 && v37 != v20 && v37 != v21 && v37 != v22 && v37 != v23)
  {
    (*(v9 + 8))(v11, v8);
    if (a4 >= a3)
    {
      if (a3 < 375.0)
      {
        goto LABEL_63;
      }
    }

    else if (a4 < 375.0)
    {
LABEL_63:
      v43 = 234.6;
      goto LABEL_69;
    }

    v44 = 0x4071400000000000;
LABEL_68:
    v43 = *&v44;
    goto LABEL_69;
  }

  if (a4 >= a3)
  {
    if (a3 < 375.0)
    {
      goto LABEL_60;
    }

LABEL_65:
    v44 = 0x4079E00000000000;
    goto LABEL_68;
  }

  if (a4 >= 375.0)
  {
    goto LABEL_65;
  }

LABEL_60:
  v43 = 351.9;
LABEL_69:
  sub_1004FBBD4(v43, a3 - (v16 + v16) - v32);
}

void sub_1004FBBDC(uint64_t a1, double a2, double a3)
{
  v6 = sub_10079CAE4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v11 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:) || v11 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v11 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v11 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v11 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
  {
    v17 = 84.0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v17 = 56.0;
  }

  if (a3 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = a3;
  }

  if (v18 >= 375.0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 * 0.85;
  }

  v20 = 33.0;
  if (v18 < 375.0)
  {
    v20 = 28.05;
  }

  v21 = a2 - v20;
  sub_1004FB7A0(a1, 1, a2, a3);
  sub_1004FBBD4(v19, v21 - v22);
}

void sub_1004FBDC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState);
  v2 = *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator);
  if (v1)
  {
    [v2 setHidden:v1 != 1];
    v4 = *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
    *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 2;
    if (v4 == 2)
    {
      return;
    }

    goto LABEL_5;
  }

  [v2 setHidden:0];
  v3 = *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
  *&v2[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 1;
  if (v3 != 1)
  {
LABEL_5:
    sub_100394C64();
  }
}

id sub_1004FBE74()
{
  result = [objc_opt_self() blackColor];
  qword_100AE8018 = result;
  return result;
}

id sub_1004FBEB0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  v2 = [objc_opt_self() bc_booksLabelColor];
  [v0 setTextColor:v2];

  [v0 setLineBreakMode:5];
  [v0 setNumberOfLines:2];
  return v0;
}

id sub_1004FBFBC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v1];

  v2 = [objc_opt_self() bc_booksSecondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setNumberOfLines:1];
  return v0;
}

id sub_1004FC0B4()
{
  if (qword_100AD17D8 != -1)
  {
    swift_once();
  }

  v0 = qword_100AE8018;
  v8.width = 9.0;
  v8.height = 9.0;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  [v0 set];
  v1 = [objc_allocWithZone(UIBezierPath) init];
  sub_10079B614();
  [v1 addArcWithCenter:1 radius:4.5 startAngle:4.5 endAngle:3.0 clockwise:{0.0, v2 + v2}];
  [v1 closePath];
  [v1 fill];
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (v3)
  {
    v4 = [(UIImage *)v3 imageWithRenderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  [v5 setContentMode:4];
  v6 = [objc_opt_self() bc_booksKeyColor];
  [v5 setTintColor:v6];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setHidden:1];

  return v5;
}

void sub_1004FC28C()
{
  type metadata accessor for NowPlayingIndicatorView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState];
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_playbackState] = 2;
  if (v1 != 2)
  {
    sub_100394C64();
  }

  [v0 setHidden:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels] = 4;
  sub_1003947FC();
  v2 = OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius;
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_levelCornerRadius] = 0x4000000000000000;
  v3 = OBJC_IVAR___BKNowPlayingIndicatorView_levelViews;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    v5 = sub_1007A38D4();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007A3784();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    v9 = [v7 layer];
    [v9 setCornerRadius:*&v0[v2]];
  }

  while (v5 != v6);

LABEL_12:
  v10 = [objc_opt_self() secondaryLabelColor];
  v11 = *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_levelColor];
  *&v0[OBJC_IVAR___BKNowPlayingIndicatorView_levelColor] = v10;
  v12 = v10;

  v13 = v0[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate];
  v0[OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate] = 1;
  if ((v13 & 1) == 0)
  {
    [v0 setNeedsDisplay];
  }
}

char *sub_1004FC4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime];
  *v8 = 0;
  v8[1] = 0;
  v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden] = 1;
  v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState] = 2;
  v9 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel;
  *&v3[v9] = sub_1004FBEB0();
  v10 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel;
  *&v3[v10] = sub_1004FBFBC();
  v11 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView;
  *&v3[v11] = sub_1004FC0B4();
  v12 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator;
  sub_1004FC28C();
  *&v3[v12] = v13;
  v14 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v15 = [objc_allocWithZone(UIView) init];
  v16 = objc_opt_self();
  v17 = [v16 clearColor];
  [v15 setBackgroundColor:v17];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v14] = v15;
  if (a3)
  {
    v18 = sub_1007A2214();
  }

  else
  {
    v18 = 0;
  }

  v96.receiver = v3;
  v96.super_class = type metadata accessor for AudiobookTOCCell();
  v19 = objc_msgSendSuper2(&v96, "initWithStyle:reuseIdentifier:", a1, v18);

  v20 = v19;
  v21 = [v16 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = v20;
  v23 = [v16 bc_booksKeyColor];
  [v22 setTintColor:v23];

  v24 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v92 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v95 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator;
  [*&v22[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView] addSubview:*&v22[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator]];
  v25 = [v22 contentView];
  v26 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel;
  [v25 addSubview:*&v22[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel]];

  v27 = [v22 contentView];
  v28 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel;
  [v27 addSubview:*&v22[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel]];

  v29 = [v22 contentView];
  v93 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView;
  [v29 addSubview:*&v22[OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView]];

  v30 = [v22 contentView];
  [v30 addSubview:*&v22[v24]];

  v31 = [v22 contentView];
  v32 = [v31 layoutMarginsGuide];

  v33 = [v22 contentView];
  [v33 setInsetsLayoutMarginsFromSafeArea:0];

  v94 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10082D660;
  v35 = [*&v22[v26] topAnchor];
  v36 = [v32 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [*&v22[v26] leadingAnchor];
  v39 = [v32 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v34 + 40) = v40;
  v41 = [*&v22[v26] trailingAnchor];
  v42 = [*&v22[v95] leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-10.0];

  *(v34 + 48) = v43;
  v44 = [*&v22[v28] topAnchor];
  v45 = [*&v22[v26] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v34 + 56) = v46;
  v47 = [*&v22[v28] trailingAnchor];
  v48 = [*&v22[v26] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v34 + 64) = v49;
  v50 = [*&v22[v28] leadingAnchor];
  v51 = [*&v22[v26] leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v34 + 72) = v52;
  v53 = [*&v22[v28] bottomAnchor];
  v54 = [v32 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v34 + 80) = v55;
  v56 = [*&v22[v28] heightAnchor];
  v57 = [v56 constraintGreaterThanOrEqualToConstant:10.0];

  *(v34 + 88) = v57;
  v58 = [*&v22[v93] centerYAnchor];
  v59 = [*&v22[v26] centerYAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v34 + 96) = v60;
  v61 = [*&v22[v93] leadingAnchor];
  v62 = [v22 contentView];

  v63 = [v62 leadingAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];

  *(v34 + 104) = v64;
  v65 = [*&v22[v93] trailingAnchor];
  v66 = [*&v22[v26] leadingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v34 + 112) = v67;
  v68 = [*&v22[v95] topAnchor];
  v69 = [*&v22[v92] topAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v34 + 120) = v70;
  v71 = [*&v22[v95] leadingAnchor];
  v72 = [*&v22[v92] leadingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v34 + 128) = v73;
  v74 = [*&v22[v95] trailingAnchor];
  v75 = [*&v22[v92] trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v34 + 136) = v76;
  v77 = [*&v22[v95] bottomAnchor];
  v78 = [*&v22[v92] bottomAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v34 + 144) = v79;
  v80 = [*&v22[v92] centerYAnchor];
  v81 = [v32 centerYAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v34 + 152) = v82;
  v83 = [*&v22[v92] trailingAnchor];
  v84 = [v32 trailingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v34 + 160) = v85;
  v86 = [*&v22[v92] heightAnchor];
  v87 = [v86 constraintEqualToConstant:20.0];

  *(v34 + 168) = v87;
  v88 = [*&v22[v92] widthAnchor];
  v89 = [v88 constraintEqualToConstant:20.0];

  *(v34 + 176) = v89;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v94 activateConstraints:isa];

  return v22;
}

void sub_1004FCFE4(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudiobookTOCCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v2 = &v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];
  *v2 = 0;
  *(v2 + 1) = 0;

  [*&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel] setText:0];
  v3 = &v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime];
  *v3 = 0;
  *(v3 + 1) = 0;

  [*&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel] setText:0];
  v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden] = 1;
  [*&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView] setHidden:1];
  v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState] = 2;
  sub_1004FBDC8();
}

uint64_t sub_1004FD124(char *isUniquelyReferenced_nonNull_native)
{
  v2 = *&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle + 8];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];

    v4 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10000B3D8((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = *&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime + 8];
  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10000B3D8(0, *(v4 + 2) + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_10000B3D8((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[16 * v11];
    *(v12 + 4) = v9;
    *(v12 + 5) = v8;
  }

  v23.receiver = v1;
  v23.super_class = type metadata accessor for AudiobookTOCCell();
  v13 = objc_msgSendSuper2(&v23, "accessibilityLabel");
  if (v13)
  {
    v14 = v13;
    v15 = sub_1007A2254();
    v17 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10000B3D8(0, *(v4 + 2) + 1, 1, v4);
    }

    v19 = *(v4 + 2);
    v18 = *(v4 + 3);
    if (v19 >= v18 >> 1)
    {
      v4 = sub_10000B3D8((v18 > 1), v19 + 1, 1, v4);
    }

    *(v4 + 2) = v19 + 1;
    v20 = &v4[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
  }

  else if (!*(v4 + 2))
  {

    return 0;
  }

  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10000B4E4();
  v21 = sub_1007A20B4();

  return v21;
}

id sub_1004FD398(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1004FD418()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState];
  v52 = v2;
  if (v15)
  {
    if (v15 != 1)
    {
      v22 = v1;
      v23 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v51 = v0;
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v4, v7, v1);
    v18 = sub_1007A22D4(v11, 0, 0, v17, v4, "Accessibility string indicating that an audiobook chapter is paused", 67, 2);
  }

  else
  {
    v51 = v0;
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:v20];
    (*(v2 + 16))(v4, v7, v1);
    v18 = sub_1007A22D4(v11, 0, 0, v21, v4, "Accessibility string indicating that an audiobook chapter is playing", 68, 2);
  }

  v49 = v19;
  v50 = v18;
  v22 = v1;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  v23 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_10000B3D8((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[16 * v25];
  v27 = v49;
  *(v26 + 4) = v50;
  *(v26 + 5) = v27;
  v0 = v51;
LABEL_9:
  if ((v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden] & 1) == 0)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    v28 = swift_getObjCClassFromMetadata();
    v51 = v8;
    v29 = [objc_opt_self() bundleForClass:v28];
    v30 = v52;
    (*(v52 + 16))(v4, v7, v22);
    v31 = sub_1007A22D4(v11, 0, 0, v29, v4, "Accessibility string indicating that an audiobook chapter was the one in which playback began for the current listening session", 127, 2);
    v33 = v32;
    (*(v30 + 8))(v7, v22);
    (*(v9 + 8))(v14, v51);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10000B3D8(0, *(v23 + 2) + 1, 1, v23);
    }

    v35 = *(v23 + 2);
    v34 = *(v23 + 3);
    if (v35 >= v34 >> 1)
    {
      v23 = sub_10000B3D8((v34 > 1), v35 + 1, 1, v23);
    }

    *(v23 + 2) = v35 + 1;
    v36 = &v23[16 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v33;
  }

  v37 = type metadata accessor for AudiobookTOCCell();
  v54.receiver = v0;
  v54.super_class = v37;
  v38 = objc_msgSendSuper2(&v54, "accessibilityValue");
  if (v38)
  {
    v39 = v38;
    v40 = sub_1007A2254();
    v42 = v41;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10000B3D8(0, *(v23 + 2) + 1, 1, v23);
    }

    v44 = *(v23 + 2);
    v43 = *(v23 + 3);
    if (v44 >= v43 >> 1)
    {
      v23 = sub_10000B3D8((v43 > 1), v44 + 1, 1, v23);
    }

    *(v23 + 2) = v44 + 1;
    v45 = &v23[16 * v44];
    *(v45 + 4) = v40;
    *(v45 + 5) = v42;
  }

  else if (!*(v23 + 2))
  {

    return 0;
  }

  v53 = v23;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10000B4E4();
  v46 = sub_1007A20B4();

  return v46;
}

void sub_1004FDA8C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_1007A2254();
    v6 = a1;
    v7 = sub_1007A2214();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for AudiobookTOCCell();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_1004FDB88(uint64_t a1)
{
  v2 = v1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AudiobookTOCCell();
  v3 = objc_msgSendSuper2(&v18, "accessibilityUserInputLabels");
  if (v3)
  {
    v4 = v3;
    v5 = sub_1007A25E4();
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = [v2 accessibilityLabel];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1007A2254();
    v10 = v9;

    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10080B690;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    v16 = v11;
    sub_100484B94(v5);
    v5 = v16;
  }

  v12 = *&v2[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle + 8];
  if (v12)
  {
    v13 = *&v2[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];
    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10080B690;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    v17 = v14;

    sub_100484B94(v5);
    return v17;
  }

  return v5;
}

id sub_1004FDD78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiobookTOCCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1004FDE9C()
{
  result = qword_100AE8098;
  if (!qword_100AE8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8098);
  }

  return result;
}

void sub_1004FDEF0()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden) = 1;
  *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState) = 2;
  v4 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel;
  *(v0 + v4) = sub_1004FBEB0();
  v5 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel;
  *(v0 + v5) = sub_1004FBFBC();
  v6 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView;
  *(v0 + v6) = sub_1004FC0B4();
  v7 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator;
  sub_1004FC28C();
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = [objc_opt_self() clearColor];
  [v10 setBackgroundColor:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v9) = v10;
  sub_1007A38A4();
  __break(1u);
}

id sub_1004FE05C(double a1, double a2, double a3, double a4)
{
  v9 = sub_10079B5E4();
  __chkstk_darwin(v9 - 8);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FloatingPlayerContainerView();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v10 _setSafeAreaInsetsFrozen:1];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setClipsToBounds:1];
  sub_10079B5D4();
  v12[3] = sub_10079B5F4();
  v12[4] = &protocol witness table for _Glass;
  sub_1002256EC(v12);
  sub_10079B604();
  sub_1007A30F4();

  return v10;
}

id sub_1004FE2B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FloatingPlayerContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id CarPlayController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___BKCarPlayController_acknowledgementObservation];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CarPlayController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id CarPlayController.init()()
{
  v1 = &v0[OBJC_IVAR___BKCarPlayController_dataManager];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR___BKCarPlayController_presenter];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_interfaceController] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_listenNowTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_recentsTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_tocTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_playbackRatesTemplate] = 0;
  v0[OBJC_IVAR___BKCarPlayController_isPushingTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_acknowledgementObservation] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CarPlayController();
  return objc_msgSendSuper2(&v4, "init");
}

double sub_1004FE5FC()
{
  v1 = OBJC_IVAR___BKCarPlayController_acknowledgementObservation;
  if (!*(v0 + OBJC_IVAR___BKCarPlayController_acknowledgementObservation))
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_1007A2E34();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v10[4] = sub_100503204;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006D0148;
    v10[3] = &unk_100A21060;
    v6 = _Block_copy(v10);
    v7 = v2;

    v8 = [v7 addObserverForName:v3 object:0 queue:0 usingBlock:v6];

    _Block_release(v6);
    *(v0 + v1) = v8;
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_1004FE768(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    *(swift_allocObject() + 16) = v5;
    v6 = v5;
    sub_1007A2CD4();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v9 = *(v7 + OBJC_IVAR___BKCarPlayController_acknowledgementObservation);
    v10 = v7;
    swift_unknownObjectRetain();

    if (v9)
    {
      [a3 removeObserver:v9];
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v11)
      {
        *&v11[OBJC_IVAR___BKCarPlayController_acknowledgementObservation] = 0;

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CarPlayController.templateApplicationScene(_:didConnect:)(CPTemplateApplicationScene _, CPInterfaceController didConnect)
{
  isa = _.super.super.super.isa;
  v112 = sub_1007A1D04();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = (&v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_100796CF4();
  v5 = *(v121 - 8);
  __chkstk_darwin(v121);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v102 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  v18 = *(v2 + OBJC_IVAR___BKCarPlayController_interfaceController);
  v108 = OBJC_IVAR___BKCarPlayController_interfaceController;
  *(v2 + OBJC_IVAR___BKCarPlayController_interfaceController) = didConnect;
  v19 = didConnect.super.isa;

  v102 = v19;
  v113 = v2;
  [(objc_class *)v19 setDelegate:v2];
  sub_1007A2154();
  sub_100796C94();
  v119 = *(v12 + 16);
  v127 = v12 + 16;
  v120 = v14;
  v119(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v126 = ObjCClassFromMetadata;
  v125 = objc_opt_self();
  v21 = [v125 bundleForClass:ObjCClassFromMetadata];
  v123 = *(v5 + 16);
  v124 = v5 + 16;
  v22 = v7;
  v116 = v7;
  v23 = v7;
  v24 = v121;
  v123(v23, v10, v121);
  sub_1007A22D4(v14, 0, 0, v21, v22, "Top level name used in CarPlay", 30, 2);
  v118 = *(v5 + 8);
  v118(v10, v24);
  v25 = v5 + 8;
  v26 = *(v12 + 8);
  v128 = v12 + 8;
  v122 = v26;
  v26(v17, v11);
  v27 = objc_allocWithZone(CPListTemplate);
  v28 = sub_1007A2214();

  v115 = sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
  v29 = sub_1007A25D4().super.isa;
  v114 = [v27 initWithTitle:v28 sections:v29];

  sub_1007A2154();
  sub_100796C94();
  v30 = v120;
  v31 = v11;
  v32 = v119;
  v119(v120, v17, v11);
  v33 = [v125 bundleForClass:v126];
  v34 = v116;
  v123(v116, v10, v24);
  *&v107 = sub_1007A22D4(v30, 0, 0, v33, v34, "No audiobooks title used in CarPlay", 35, 2);
  v106 = v35;
  v36 = v24;
  v37 = v24;
  v38 = v118;
  v118(v10, v36);
  v122(v17, v31);
  sub_1007A2154();
  sub_100796C94();
  v32(v30, v17, v31);
  v39 = [v125 bundleForClass:v126];
  v123(v34, v10, v37);
  v40 = sub_1007A22D4(v30, 0, 0, v39, v34, "No Audiobooks message used in CarPlay", 37, 2);
  v105 = v41;
  v109 = v10;
  v117 = v25;
  v38(v10, v37);
  v42 = v31;
  v122(v17, v31);
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v43 = swift_allocObject();
  v104 = xmmword_10080B690;
  *(v43 + 16) = xmmword_10080B690;
  v44 = v106;
  *(v43 + 32) = v107;
  *(v43 + 40) = v44;
  v45 = sub_1007A25D4().super.isa;

  v46 = v114;
  [v114 setEmptyViewTitleVariants:v45];

  v47 = swift_allocObject();
  *(v47 + 16) = v104;
  v48 = v105;
  *(v47 + 32) = v40;
  *(v47 + 40) = v48;
  v49 = sub_1007A25D4().super.isa;

  [v46 setEmptyViewSubtitleVariants:v49];

  v50 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v51 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v50))
  {
    v52 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v52 = 136315394;
    swift_getObjectType();
    v53 = sub_1007A3D34();
    v55 = sub_1000070F4(v53, v54, aBlock);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_1000070F4(0xD000000000000027, 0x80000001008D9EE0, aBlock);
    _os_log_impl(&_mh_execute_header, v51, v50, "%s %s creating loadingMessage", v52, 0x16u);
    swift_arrayDestroy();
  }

  v106 = v51;
  sub_1007A2154();
  v56 = v109;
  sub_100796C94();
  v57 = v120;
  v119(v120, v17, v42);
  v58 = [v125 bundleForClass:v126];
  v59 = v116;
  v60 = v121;
  v123(v116, v56, v121);
  sub_1007A22D4(v57, 0, 0, v58, v59, "CarPlay label while loading.", 28, 2);
  v118(v56, v60);
  v122(v17, v42);
  v61 = objc_allocWithZone(CPListItem);
  v62 = sub_1007A2214();

  v63 = [v61 initWithText:v62 detailText:0];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  inited = swift_initStackObject();
  v107 = xmmword_100811390;
  *(inited + 16) = xmmword_100811390;
  *(inited + 32) = v63;
  v65 = objc_allocWithZone(CPListSection);
  v105 = v63;
  sub_100502464(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v66 = sub_1007A25D4().super.isa;

  v67 = [v65 initWithItems:v66];

  v68 = swift_allocObject();
  *(v68 + 16) = v107;
  *(v68 + 32) = v67;
  v69 = v67;
  v70 = sub_1007A25D4().super.isa;

  v71 = v114;
  [v114 updateSections:v70];

  v72 = v113;
  v73 = *(v113 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
  *(v113 + OBJC_IVAR___BKCarPlayController_listenNowTemplate) = v71;
  v74 = v71;

  v75 = *(v72 + v108);
  if (v75)
  {
    [v75 setRootTemplate:v74 animated:0 completion:0];
  }

  sub_1007A2154();
  sub_100796C94();
  v76 = v120;
  v119(v120, v17, v42);
  v77 = [v125 bundleForClass:v126];
  v78 = v121;
  v123(v59, v56, v121);
  sub_1007A22D4(v76, 0, 0, v77, v59, "CarPlay library swoosh name", 27, 2);
  v118(v56, v78);
  v122(v17, v42);
  v79 = objc_allocWithZone(CPListTemplate);
  v80 = sub_1007A2214();

  v81 = sub_1007A25D4().super.isa;
  v82 = [v79 initWithTitle:v80 sections:v81];

  v83 = *(v72 + OBJC_IVAR___BKCarPlayController_recentsTemplate);
  *(v72 + OBJC_IVAR___BKCarPlayController_recentsTemplate) = v82;

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v84 = sub_1007A2D74();
  v85 = v110;
  *v110 = v84;
  v86 = v111;
  v87 = v112;
  (*(v111 + 104))(v85, enum case for DispatchPredicate.onQueue(_:), v112);
  LOBYTE(v80) = sub_1007A1D34();
  (*(v86 + 8))(v85, v87);
  if (v80)
  {
    v88 = [objc_opt_self() delegate];
    v89 = [v88 sceneManager];
    [v89 carPlayScene:isa didConnectInterfaceController:v102];

    v90 = sub_1007A29D4();
    v91 = v106;
    if (os_log_type_enabled(v106, v90))
    {
      v92 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v92 = 136315394;
      swift_getObjectType();
      v93 = sub_1007A3D34();
      v95 = sub_1000070F4(v93, v94, aBlock);

      *(v92 + 4) = v95;
      *(v92 + 12) = 2080;
      *(v92 + 14) = sub_1000070F4(0xD000000000000027, 0x80000001008D9EE0, aBlock);
      _os_log_impl(&_mh_execute_header, v91, v90, "%s %s app launch coordinator wait start", v92, 0x16u);
      swift_arrayDestroy();
    }

    v96 = [v88 appLaunchCoordinator];
    v97 = sub_1007A2214();
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = v88;
    aBlock[4] = sub_10050265C;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A20EB0;
    v100 = _Block_copy(aBlock);
    v101 = v88;

    [v96 appLaunchCoordinatorOnConditionMask:2 blockID:v97 performBlock:v100];
    _Block_release(v100);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1004FF88C(uint64_t a1, uint64_t a2, char *a3)
{
  v100 = a3;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v85 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v89 = v16;
    v92 = v9;
    v93 = v10;
    v94 = v4;
    v95 = v3;
    v19 = sub_1007A29D4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v88 = v13;
    v90 = v11;
    v91 = v6;
    v20 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v19))
    {
      v21 = swift_slowAlloc();
      v101[0] = swift_slowAlloc();
      *v21 = 136315394;
      swift_getObjectType();
      v22 = sub_1007A3D34();
      v24 = sub_1000070F4(v22, v23, v101);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1000070F4(0xD000000000000027, 0x80000001008D9EE0, v101);
      _os_log_impl(&_mh_execute_header, v20, v19, "%s %s app launch coordinator finished", v21, 0x16u);
      swift_arrayDestroy();
    }

    v97 = v20;
    v25 = [objc_opt_self() sharedInstance];
    v26 = [objc_opt_self() recentAudiobookAssetProviderForCarplay];
    v27 = objc_allocWithZone(type metadata accessor for CarPlayDataManager());
    v28 = v25;
    v98 = v26;
    v99 = v28;
    v29 = sub_100502944(v28, v98, v27);
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 sharedInstance];
    v33 = type metadata accessor for CarPlayInteractor();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_hasShownError] = 0;
    v35 = &v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_dataManager];
    *v35 = v31;
    v35[1] = &off_100A270D8;
    *&v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_persistenceController] = v32;
    v103.receiver = v34;
    v103.super_class = v33;
    v36 = objc_msgSendSuper2(&v103, "init");
    v37 = objc_opt_self();
    v38 = v36;
    v39 = [v37 defaultCacheManager];
    v40 = type metadata accessor for CarPlayPresenter();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton] = 0;
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton] = 0;
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v42 = &v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor];
    *v42 = v38;
    *(v42 + 1) = &off_100A15080;
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_coverCache] = v39;
    v102.receiver = v41;
    v102.super_class = v40;
    v43 = objc_msgSendSuper2(&v102, "init");
    sub_10035FB54(v44);
    *&v31[OBJC_IVAR____TtC5Books18CarPlayDataManager_delegate + 8] = &off_100A15048;
    swift_unknownObjectWeakAssign();
    v96 = v38;
    *&v38[OBJC_IVAR____TtC5Books17CarPlayInteractor_delegate + 8] = &off_100A16F80;
    swift_unknownObjectWeakAssign();
    *&v43[OBJC_IVAR____TtC5Books16CarPlayPresenter_delegate + 8] = &off_100A20ED8;
    swift_unknownObjectWeakAssign();
    v45 = &v18[OBJC_IVAR___BKCarPlayController_presenter];
    *v45 = v43;
    *(v45 + 1) = &off_100A16FC0;
    v46 = v43;
    swift_unknownObjectRelease();
    v47 = &v18[OBJC_IVAR___BKCarPlayController_dataManager];
    *v47 = v31;
    *(v47 + 1) = &off_100A270D8;
    v48 = v31;
    swift_unknownObjectRelease();
    v49 = [v100 engagementManager];
    if (v49)
    {
      v50 = v49;
      v51 = *&v49[OBJC_IVAR___BKEngagementManager_manager];
      v52 = sub_1007999E4();

      if (v52)
      {
        type metadata accessor for SessionDonor(0);
        v53 = swift_dynamicCastClass();
        if (v53)
        {
          if ((v53[OBJC_IVAR___BKSessionDonor_everUsedCarplayApp] & 1) == 0)
          {
            v53[OBJC_IVAR___BKSessionDonor_everUsedCarplayApp] = 1;
            [v53 propertyDidChange:v53 propertyConfiguration:*&v53[OBJC_IVAR___BKSessionDonor_everUsedCarplayAppConfig]];
          }

          v54 = *&v50[OBJC_IVAR___BKEngagementManager_eventController];
          sub_10079E994();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v55 = BUOnboardingBooksBundleID();
    if (!v55)
    {
      sub_1007A2254();
      v55 = sub_1007A2214();
    }

    v56 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v55];

    v57 = v97;
    if (v56)
    {
      v86 = v48;
      v87 = v46;
      v58 = sub_1007A29D4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v101[0] = v60;
        *v59 = 136315138;
        swift_getObjectType();
        v61 = sub_1007A3D34();
        v63 = sub_1000070F4(v61, v62, v101);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "%s showing privacy acknowledgement", v59, 0xCu);
        sub_1000074E0(v60);
      }

      sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_10080B690;
      v100 = v18;
      v65 = v89;
      sub_1007A2154();
      v66 = v92;
      sub_100796C94();
      v67 = v90;
      v68 = v88;
      v69 = v93;
      (*(v90 + 16))(v88, v65, v93);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v71 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v73 = v94;
      v72 = v95;
      v74 = v91;
      (*(v94 + 16))(v91, v66, v95);
      v75 = sub_1007A22D4(v68, 0, 0, v71, v74, "CarPlay message when privacy acknowledgement is needed on the phone", 67, 2);
      v77 = v76;
      (*(v73 + 8))(v66, v72);
      v78 = v65;
      v18 = v100;
      (*(v67 + 8))(v78, v69);
      *(v64 + 32) = v75;
      *(v64 + 40) = v77;
      v79 = objc_allocWithZone(CPAlertTemplate);
      isa = sub_1007A25D4().super.isa;

      sub_10000A7C4(0, &qword_100ADDB30, CPAlertAction_ptr);
      v81 = sub_1007A25D4().super.isa;
      v82 = [v79 initWithTitleVariants:isa actions:v81];

      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v83 = swift_allocObject();
      *(v83 + 16) = v18;
      *(v83 + 24) = v82;
      v18;
      v84 = v82;
      sub_1007A2CD4();

      sub_1004FE5FC();

      v46 = v87;
      v48 = v86;
    }
  }
}

void sub_1005004C0(char *a1, void *a2, double a3)
{
  v5 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v5))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = sub_1007A3D34();
    v10 = sub_1000070F4(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000015, 0x80000001008DA310, &v22);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *&a1[OBJC_IVAR___BKCarPlayController_dataManager];
  if (v11 && *&a1[OBJC_IVAR___BKCarPlayController_presenter])
  {
    v12 = *(v11 + OBJC_IVAR____TtC5Books18CarPlayDataManager_player);
    v13 = *&a1[OBJC_IVAR___BKCarPlayController_playbackRatesTemplate];
    *&a1[OBJC_IVAR___BKCarPlayController_playbackRatesTemplate] = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v14 = a2;

    v15 = [v12 precisionRates];
    sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    v16 = sub_1007A25E4();

    [v12 playbackRate];
    v18 = v17;
    type metadata accessor for CarPlayPresenter();
    sub_1003606DC(v14, v16, v18);

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v14;
    v20 = v14;
    v21 = a1;
    sub_1007A2CD4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

double sub_1005007E8(char *a1, void *a2, double a3)
{
  v5 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v5))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = sub_1007A3D34();
    v10 = sub_1000070F4(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000017, 0x80000001008D9FF0, &v17);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *&a1[OBJC_IVAR___BKCarPlayController_tocTemplate];
  *&a1[OBJC_IVAR___BKCarPlayController_tocTemplate] = a2;
  v12 = a2;

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  v14 = v12;
  v15 = a1;
  sub_1007A2CD4();

  return result;
}

void sub_1005009F0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, &v13);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD000000000000017, 0x80000001008DA170, &v13);
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(a1 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate);
  if (v10)
  {
    sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
    v11 = v10;
    isa = sub_1007A25D4().super.isa;
    [v11 updateSections:isa];
  }
}

void sub_100500BF4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, &v22);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD000000000000013, 0x80000001008CAC30, &v22);
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(a1 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
  if (v10)
  {
    sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
    v11 = v10;
    isa = sub_1007A25D4().super.isa;
    [v11 updateSections:isa];

    v13 = [*(a1 + OBJC_IVAR___BKCarPlayController_interfaceController) topTemplate];
    v14 = OBJC_IVAR___BKCarPlayController_tocTemplate;
    v15 = *(a1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
    if (v13)
    {
      v16 = v13;
      if (v15)
      {
        sub_10000A7C4(0, &unk_100AE8200, CPTemplate_ptr);
        v17 = v15;
        v18 = sub_1007A3184();

        if (v18)
        {
          return;
        }

        goto LABEL_15;
      }

      v20 = 0;
    }

    else
    {
      v19 = v15;

      if (!v15)
      {
        return;
      }

      v11 = v19;
    }

LABEL_15:
    v21 = *(a1 + v14);
    *(a1 + v14) = 0;
  }
}

double sub_100500EA0(char *a1, uint64_t a2, double a3)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = sub_1007A3D34();
    v10 = sub_1000070F4(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000018, 0x80000001008DA150, &v17);
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *&a1[OBJC_IVAR___BKCarPlayController_recentsTemplate];
  if (v11)
  {
    sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
    v12 = v11;
    isa = sub_1007A25D4().super.isa;
    [v12 updateSections:isa];

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v12;
    v15 = v12;
    v16 = a1;
    sub_1007A2CD4();
  }

  return result;
}

void sub_100501108(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v9 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v8))
  {
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getObjectType();
    v11 = sub_1007A3D34();
    v13 = sub_1000070F4(v11, v12, &v25);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1000070F4(0xD000000000000026, 0x80000001008DA190, &v25);
    _os_log_impl(&_mh_execute_header, v9, v8, "%s %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *&a1[OBJC_IVAR___BKCarPlayController_tocTemplate];
  if (v14)
  {
    v24 = v14;
    v15 = [v24 title];
    if (!v15)
    {
LABEL_12:
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      *(swift_allocObject() + 16) = a1;
      v22 = a1;
      sub_1007A2CD4();

      return;
    }

    v16 = v15;
    v17 = sub_1007A2254();
    v19 = v18;

    if (v17 == a2 && v19 == a3)
    {
    }

    else
    {
      v21 = sub_1007A3AB4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_10000A7C4(0, &qword_100ADDB28, CPListSection_ptr);
    isa = sub_1007A25D4().super.isa;
    [v24 updateSections:isa];
  }
}

double sub_100501418(char *a1, double a2)
{
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v3))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, &v11);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008DA1C0, &v11);
    _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*&a1[OBJC_IVAR___BKCarPlayController_tocTemplate])
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    *(swift_allocObject() + 16) = a1;
    v10 = a1;
    sub_1007A2CD4();
  }

  return result;
}

void sub_100501624(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v5))
  {
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = sub_1007A3D34();
    v10 = sub_1000070F4(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000010, 0x80000001008DA060, v16);
    _os_log_impl(&_mh_execute_header, v6, v5, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (*(a1 + OBJC_IVAR___BKCarPlayController_isPushingTemplate))
  {
    v11 = sub_1007A29B4();

    sub_10079AB44(v11, &_mh_execute_header, v6, "Error attempting to push another template while template already being pushed.", 78, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    *(a1 + OBJC_IVAR___BKCarPlayController_isPushingTemplate) = 1;
    v12 = *(a1 + OBJC_IVAR___BKCarPlayController_interfaceController);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16[4] = sub_1005031FC;
      v16[5] = v13;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_1002D63C0;
      v16[3] = &unk_100A20F70;
      v14 = _Block_copy(v16);
      v15 = v12;

      [v15 pushTemplate:a2 animated:1 completion:v14];
      _Block_release(v14);
    }
  }
}

double sub_1005018DC(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___BKCarPlayController_isPushingTemplate] = 0;
  }

  if ((a1 & 1) == 0 || a2)
  {
    v7 = sub_1007A29B4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v8 = qword_100AE15E0;
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10080B690;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_1007A3B84();
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10000E4C4();
    v12 = 0x206E776F6E6B6E75;
    if (v11)
    {
      v12 = a2;
    }

    v13 = 0xED0000726F727265;
    if (v11)
    {
      v13 = v11;
    }

    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    sub_10079AB44(v7, &_mh_execute_header, v8, "Error attempting to push template with error: %@", 48, 2, v9);
  }

  return result;
}

id sub_100501A68(uint64_t a1, double a2)
{
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v3))
  {
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0x6C706D6554706F70, 0xED00002928657461, &v19);
    _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = OBJC_IVAR___BKCarPlayController_interfaceController;
  v10 = [*(a1 + OBJC_IVAR___BKCarPlayController_interfaceController) topTemplate];
  v11 = OBJC_IVAR___BKCarPlayController_tocTemplate;
  v12 = *(a1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  if (v10)
  {
    v13 = v10;
    if (!v12)
    {
      v17 = 0;
      goto LABEL_13;
    }

    sub_10000A7C4(0, &unk_100AE8200, CPTemplate_ptr);
    v14 = v12;
    v15 = sub_1007A3184();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = *(a1 + v11);
  }

  else
  {
    if (v12)
    {
      goto LABEL_14;
    }

    v16 = 0;
    v13 = 0;
  }

  *(a1 + v11) = 0;
LABEL_13:

LABEL_14:
  result = *(a1 + v9);
  if (result)
  {

    return [result popTemplateAnimated:1 completion:0];
  }

  return result;
}

id sub_100501CC4(uint64_t a1, void *a2, double a3)
{
  v5 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315650;
    swift_getObjectType();
    v9 = sub_1007A3D34();
    v11 = sub_1000070F4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000013, 0x80000001008DA110, &v20);
    *(v7 + 22) = 2112;
    *(v7 + 24) = a2;
    *v8 = a2;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v6, v5, "%s %s: %@", v7, 0x20u);
    sub_100025F24(v8);

    swift_arrayDestroy();
  }

  v13 = OBJC_IVAR___BKCarPlayController_interfaceController;
  result = *(a1 + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (result)
  {
    v15 = [result presentedTemplate];
    if (v15 && (v16 = v15, sub_10000A7C4(0, &unk_100AE8200, CPTemplate_ptr), v17 = a2, v18 = sub_1007A3184(), v16, v17, (v18 & 1) != 0))
    {
      v19 = sub_1007A29B4();

      return sub_10079AB44(v19, &_mh_execute_header, v6, "Error attempting to present the same template that is already presented.", 72, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      result = *(a1 + v13);
      if (result)
      {

        return [result presentTemplate:a2 animated:1 completion:0];
      }
    }
  }

  return result;
}

id sub_100501F90(uint64_t a1, double a2)
{
  v3 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v4 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v3))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD000000000000011, 0x80000001008DA130, &v10);
    _os_log_impl(&_mh_execute_header, v4, v3, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  result = *(a1 + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (result)
  {

    return [result dismissTemplateAnimated:1 completion:0];
  }

  return result;
}

double sub_100502150(double a1)
{
  v2 = *(v1 + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (v2 && (v3 = [v2 carTraitCollection]) != 0)
  {
    v4 = v3;
    [v3 displayScale];
    v6 = v5;
    v7 = sub_1007A29D4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v8 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v7))
    {
      v9 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v9 = 136315650;
      swift_getObjectType();
      v10 = sub_1007A3D34();
      v12 = sub_1000070F4(v10, v11, &v20);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1000070F4(0x5379616C70736964, 0xEE002928656C6163, &v20);
      *(v9 + 22) = 2048;
      *(v9 + 24) = v6;
      _os_log_impl(&_mh_execute_header, v8, v7, "%s %s displayScale=%f", v9, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v13 = sub_1007A29D4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v14 = qword_100AE15E0;
    v6 = 2.0;
    if (os_log_type_enabled(qword_100AE15E0, v13))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v15 = 136315394;
      swift_getObjectType();
      v16 = sub_1007A3D34();
      v18 = sub_1000070F4(v16, v17, &v20);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1000070F4(0x5379616C70736964, 0xEE002928656C6163, &v20);
      _os_log_impl(&_mh_execute_header, v14, v13, "%s %s No carPlayTraitCollection() available, returning displayScale=2.", v15, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v6;
}

char *sub_100502464(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_10050266C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10050268C(i, a1);
        sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10050266C((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1001F1160(&qword_100ADDB58, &unk_10082D760);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_10050266C((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000076D4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_10050266C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100502834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10050268C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_1007A38F4();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    sub_1007A3744(85);
    v3 = "CPListTemplateItem";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  sub_1007A3744(82);
  v3 = "pushPlaybackRates(_:)";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_1007A23D4(v4);
  v6._object = 0x80000001008DA380;
  v6._countAndFlagsBits = 0xD000000000000012;
  sub_1007A23D4(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_1007A23D4(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_1007A3D34();
  sub_1007A23D4(v8);

  result = sub_1007A38B4();
  __break(1u);
  return result;
}

char *sub_100502834(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

id sub_100502944(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = a1;
  v17 = a2;
  v4 = sub_1007A2CF4();
  __chkstk_darwin(v4);
  v5 = sub_1007A1CA4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1007A2D64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC5Books18CarPlayDataManager_accessQueue;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  sub_1007A1C74();
  v19 = _swiftEmptyArrayStorage;
  sub_10050320C(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20, &qword_100824350);
  sub_100503254();
  sub_1007A3594();
  *&a3[v11] = sub_1007A2DA4();
  v12 = v17;
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_player] = v16;
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_libraryProvider] = v12;
  v13 = type metadata accessor for CarPlayDataManager();
  v18.receiver = a3;
  v18.super_class = v13;
  return objc_msgSendSuper2(&v18, "init");
}

void _s5Books17CarPlayControllerC24templateApplicationScene_022didDisconnectInterfaceD0ySo010CPTemplatefG0C_So011CPInterfaceD0CtF_0()
{
  v1 = (v0 + OBJC_IVAR___BKCarPlayController_presenter);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  v2 = (v0 + OBJC_IVAR___BKCarPlayController_dataManager);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR___BKCarPlayController_interfaceController);
  *(v0 + OBJC_IVAR___BKCarPlayController_interfaceController) = 0;

  v4 = *(v0 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_listenNowTemplate) = 0;

  v5 = *(v0 + OBJC_IVAR___BKCarPlayController_recentsTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_recentsTemplate) = 0;

  v6 = *(v0 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_tocTemplate) = 0;

  v7 = *(v0 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate) = 0;
}

void _s5Books17CarPlayControllerC18templateWillAppear_8animatedySo10CPTemplateC_SbtF_0(void *a1)
{
  if (!*(v1 + OBJC_IVAR___BKCarPlayController_presenter) || !*(v1 + OBJC_IVAR___BKCarPlayController_dataManager))
  {
    return;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v25 = sub_1006076D8(v2);
  swift_unknownObjectRelease();
  if (v25)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
      if (v5)
      {
        sub_10000A7C4(0, &qword_100AE8210, CPListTemplate_ptr);
        v23 = a1;
        v6 = v5;
        v7 = v1;
        v8 = sub_1007A3184();

        if (v8)
        {

          v9 = sub_1007A29D4();
          if (qword_100AD1530 != -1)
          {
            swift_once();
          }

          v10 = qword_100AE15E0;
          sub_1001F1160(&unk_100AD5090, &unk_100815670);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_10080B690;
          *(v11 + 56) = type metadata accessor for CarPlayListenNowData();
          *(v11 + 64) = sub_10050320C(&qword_100AE8218, type metadata accessor for CarPlayListenNowData, &protocol conformance descriptor for NSObject);
          *(v11 + 32) = v25;
          v12 = v25;
          sub_10079AB44(v9, &_mh_execute_header, v10, "Updating listen now reading progress %@", 39, 2, v11);

          sub_10035EEC4(v4, v12);
          swift_unknownObjectRelease();

          v13 = v23;
          goto LABEL_25;
        }
      }

      else
      {
        v7 = v1;
        v14 = a1;
      }

      v15 = *(v7 + OBJC_IVAR___BKCarPlayController_recentsTemplate);
      if (v15)
      {
        sub_10000A7C4(0, &qword_100AE8210, CPListTemplate_ptr);
        v16 = v15;
        v17 = sub_1007A3184();

        if (v17)
        {
          v18 = sub_1007A29D4();
          if (qword_100AD1530 != -1)
          {
            swift_once();
          }

          v19 = qword_100AE15E0;
          sub_1001F1160(&unk_100AD5090, &unk_100815670);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_10080B690;
          *(v20 + 56) = type metadata accessor for CarPlayListenNowData();
          *(v20 + 64) = sub_10050320C(&qword_100AE8218, type metadata accessor for CarPlayListenNowData, &protocol conformance descriptor for NSObject);
          *(v20 + 32) = v25;
          v21 = v25;
          sub_10079AB44(v18, &_mh_execute_header, v19, "Updating recents reading progress %@", 36, 2, v20);

          sub_10035F60C(v4, v21, v22);
          swift_unknownObjectRelease();

          v13 = a1;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v13 = v25;
LABEL_25:

    return;
  }

  swift_unknownObjectRelease();
}

void _s5Books17CarPlayControllerC21templateWillDisappear_8animatedySo10CPTemplateC_SbtF_0(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  v5 = *(v1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  if (v5 && (sub_10000A7C4(0, &unk_100AE8200, CPTemplate_ptr), v6 = a1, v7 = v5, v8 = sub_1007A3184(), v7, v6, (v8 & 1) != 0) || (v4 = (v2 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate), (v9 = *(v2 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate)) != 0) && (sub_10000A7C4(0, &unk_100AE8200, CPTemplate_ptr), v10 = a1, v11 = v9, v12 = sub_1007A3184(), v11, v10, (v12 & 1) != 0))
  {
    v13 = *v4;
    *v4 = 0;
  }
}

uint64_t sub_10050320C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100503254()
{
  result = qword_100AE8230;
  if (!qword_100AE8230)
  {
    sub_1001F1234(&unk_100AD1E20, &qword_100824350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8230);
  }

  return result;
}

double UIImage.frame(fittedIn:)()
{
  [v0 size];
  CGRectMakeWithSize();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 alignmentRectInsets];
  sub_1002840F0(v2, v4, v6, v8, v9, v10);
  BCNormalizedInsetsForRects();
  CGRectFitRectInRectAbsoluteNoRounding();

  BCRectByApplyingNormalizedInsets();
  return result;
}

uint64_t type metadata accessor for RemoveFromWantToReadActionItem(uint64_t a1)
{
  result = qword_100AE8290;
  if (!qword_100AE8290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100503580@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for RemoveFromWantToReadActionItem(0) + 36);
    v21 = enum case for ContextActionType.removeFromWantToRead(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5);
    sub_1000077C0(v27, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005037BC()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_10000E3E8(v0, v0[3]);
  sub_100797784();
  (*(v2 + 104))(v4, enum case for ContextActionSource.wantToReadEntry(_:), v1);
  sub_100498DFC();
  v8 = sub_1007A2124();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if ((v8 & 1) == 0)
  {
    sub_10025FCD8(&v13);
    if (v14)
    {
      sub_1001FF7C8(&v13, &v15);
      sub_10000E3E8(&v15, v16);
      v10 = sub_1007975B4();
      if (v10 != 2)
      {
        v11 = v10;
        sub_1000074E0(&v15);
        return v11 & 1;
      }

      sub_1000074E0(&v15);
    }

    else
    {
      sub_1001FF760(&v13);
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1005039A8()
{
  v1[14] = v0;
  v2 = sub_10079ACE4();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_1007A26F4();
  v1[18] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[19] = v4;
  v1[20] = v3;

  return _swift_task_switch(sub_100503A9C, v4, v3);
}

uint64_t sub_100503A9C()
{
  sub_10025FCD8((v0 + 64));
  if (*(v0 + 88))
  {
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v1 = sub_1007975B4();
    if (v1 != 2 && (v1 & 1) != 0)
    {
      sub_10000E3E8((v0 + 16), *(v0 + 40));
      v2 = sub_100797674();
      v4 = v3;

      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        v6 = *(v0 + 112);
        v7 = sub_10000E3E8(v6 + 16, v6[19]);
        v8 = v6[10];
        v9 = v7[1];
        v10 = swift_task_alloc();
        *(v0 + 168) = v10;
        *v10 = v0;
        v10[1] = sub_1002604B0;
        v11 = *(v0 + 112);

        return sub_1005F46A8(v11, v0 + 16, v8, (v6 + 5), v9);
      }
    }

    sub_1000074E0((v0 + 16));
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Action doesn't have sufficient information to handle action.", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100503D14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1005039A8();
}

void *BookReaderInteractionCoordinator.window.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker) + 16);
  v2 = v1;
  return v1;
}

void BookReaderInteractionCoordinator.window.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker);
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
  v3 = a1;
  sub_10001DA04(v4);
}

void (*BookReaderInteractionCoordinator.window.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker);
  a1[1] = v2;
  v3 = *(v2 + 16);
  *a1 = v3;
  v4 = v3;
  return sub_100503EAC;
}

void sub_100503EAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = *(v4 + 16);
  *(v4 + 16) = *a1;
  v5 = v3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_10001DA04(v8);
  }

  else
  {
    sub_10001DA04(v8);
  }
}

uint64_t sub_1005041F4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1007A25E4();
  v4[4] = v6;
  v7 = sub_1007A25E4();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1005042FC;

  return sub_1005045A4(v6, v7);
}

uint64_t sub_1005042FC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_1007967C4();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE8378, &unk_10082D8C0);
    isa = sub_1007A2024().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1005044E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1005041F4(v2, v3, v5, v4);
}

uint64_t sub_1005045A4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1007990E4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_100798FE4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005046C0, 0, 0);
}

uint64_t sub_1005046C0()
{
  v0[2] = v0[4];
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10023D44C();
  if (sub_1007A28A4() & 1) != 0 || (v0[3] = v0[5], (sub_1007A28A4()))
  {
    v2 = v0[4];
    v1 = v0[5];
    sub_100798F74();
    sub_1007990F4();
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_100504864;
    v4 = v0[8];

    return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v2, v1, 0, 0, 0, 150, v4);
  }

  else
  {
    v5 = sub_1001EF200(_swiftEmptyArrayStorage);

    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_100504864(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 56);
  v9 = *(*v2 + 48);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v10 = sub_100504BB8;
  }

  else
  {
    v10 = sub_100504A3C;
  }

  return _swift_task_switch(v10, 0, 0);
}

void sub_100504A3C()
{
  v1 = *(v0 + 104);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(v1 + 56) + ((v7 << 9) | (8 * v8)));
      sub_100799344();

      sub_100799354();

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  v10 = *(v0 + 104);

  sub_100581E84(v10);
  v12 = v11;

  v13 = *(v0 + 8);

  v13(v12);
}

uint64_t sub_100504BB8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100504C28()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE8380);
  sub_100008B98(v0, qword_100AE8380);
  result = BCSpotlightIndexLog();
  if (result)
  {
    return sub_10079ACF4();
  }

  __break(1u);
  return result;
}

double _sSo16BKLibraryIndexerC5BooksE9associate15assetIdentifier5title11isAudiobook12attributeSetySS_SSSbSo025CSSearchableItemAttributeK0CtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v25[0] = a4;
  v25[1] = a6;
  v10 = sub_100796814();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_100282BC4();
    v14 = sub_1007A3D34();
    v16 = v15;
    if (qword_100AD1B40 != -1)
    {
      swift_once();
    }

    v17 = qword_100B23A00;
  }

  else
  {
    v16 = 0xED0000797469746ELL;
    v14 = 0x457070416B6F6F42;
    if (qword_100AD1270 != -1)
    {
      swift_once();
    }

    v17 = qword_100B22E60;
  }

  v18 = sub_100796314();
  sub_100008B98(v18, v17);
  sub_1007962F4();
  v19 = sub_100796804();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v24 = sub_100019158(_swiftEmptyArrayStorage);
  v23.value._object = v21;
  v23.value._countAndFlagsBits = v19;
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v27._countAndFlagsBits = v14;
  v27._object = v16;
  v28._countAndFlagsBits = a3;
  v28._object = v25[0];
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  sub_1007A2FD4(v26, v27, v28, v29, _swiftEmptyArrayStorage, v23, _swiftEmptyArrayStorage, v24, 0);

  return result;
}

uint64_t _sSo16BKLibraryIndexerC5BooksE18extraConfigurationSSSgyFZ_0()
{
  v23 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage;

  sub_1001F1160(&qword_100AE0B48, &qword_100821460);
  sub_100005920(&qword_100AE8398, &qword_100AE0B48, &qword_100821460, &protocol conformance descriptor for KeyValuePairs<A, B>);
  if (sub_1007A28A4())
  {
    v22 = _swiftEmptyArrayStorage;
    v0 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1003BD780(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v0 = v22;
    }

    v2 = v0[2];
    v1 = v0[3];
    if (v2 >= v1 >> 1)
    {
      sub_1003BD780((v1 > 1), v2 + 1, 1);
      v0 = v22;
    }

    v0[2] = v2 + 1;
    v0[v2 + 4] = _swiftEmptyArrayStorage;
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  sub_100505364(&v23);
  v3 = v0[2];
  if (v3)
  {
    sub_1003BD0CC(0, v3, 0);
    v4 = 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {

      v6 = sub_1007A37A4();
      v8 = v7;

      v22 = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_1003BD0CC((v9 > 1), v10 + 1, 1);
        v5 = v22;
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v22 = v5;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v12 = sub_1007A20B4();
  v14 = v13;

  if (qword_100AD17E0 != -1)
  {
    swift_once();
  }

  v15 = sub_10079ACE4();
  sub_100008B98(v15, qword_100AE8380);

  v16 = sub_10079ACC4();
  v17 = sub_1007A2994();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000070F4(v12, v14, &v22);
    _os_log_impl(&_mh_execute_header, v16, v17, "Extra configuration: '%s'", v18, 0xCu);
    sub_1000074E0(v19);
  }

  v20 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    return 0;
  }

  return v12;
}

uint64_t sub_100505364(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0B48, &qword_100821460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005053CC()
{
  v0 = sub_100796314();
  sub_100009A38(v0, qword_100B23498);
  sub_100008B98(v0, qword_100B23498);
  return sub_1007962E4();
}

uint64_t sub_100505430()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1007967F4();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100796CF4();
  v62 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_1007A21D4();
  v60 = *(v9 - 8);
  v10 = v60;
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v57 = sub_100796814();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AE8470, &unk_10082DDD0);
  v17 = sub_1001F1160(&qword_100AD3AA0, &qword_10080CCA0);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_10080EFF0;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v10 + 16);
  v36 = v12;
  v21 = v9;
  v47(v12, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_100796104();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_100796124();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_1007A2154();
  sub_100796C94();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100796834();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_100796124();
  v34 = sub_1001EF214(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B234B0 = v34;
  return result;
}

uint64_t sub_100505BD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73756F6976657270;
  }

  else
  {
    v3 = 1954047342;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73756F6976657270;
  }

  else
  {
    v5 = 1954047342;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

unint64_t sub_100505C7C()
{
  result = qword_100AE83A0;
  if (!qword_100AE83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83A0);
  }

  return result;
}

Swift::Int sub_100505CD0()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_100505D4C(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_100505DB4(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

void sub_100505E2C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0D3D0;
  v7._object = v3;
  v5 = sub_1007A3964(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_100505E8C(uint64_t *a1@<X8>)
{
  v2 = 1954047342;
  if (*v1)
  {
    v2 = 0x73756F6976657270;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100505EC8()
{
  result = qword_100AE83A8;
  if (!qword_100AE83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83A8);
  }

  return result;
}

unint64_t sub_100505F20()
{
  result = qword_100AE83B0;
  if (!qword_100AE83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83B0);
  }

  return result;
}

unint64_t sub_100505F78()
{
  result = qword_100AE83B8;
  if (!qword_100AE83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83B8);
  }

  return result;
}

unint64_t sub_100505FD0()
{
  result = qword_100AE83C0;
  if (!qword_100AE83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83C0);
  }

  return result;
}

unint64_t sub_100506024()
{
  result = qword_100AE83C8;
  if (!qword_100AE83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83C8);
  }

  return result;
}

unint64_t sub_100506078()
{
  result = qword_100AE83D0;
  if (!qword_100AE83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83D0);
  }

  return result;
}

unint64_t sub_1005060D0()
{
  result = qword_100AE83D8;
  if (!qword_100AE83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83D8);
  }

  return result;
}

unint64_t sub_1005061AC()
{
  result = qword_100AE83E0;
  if (!qword_100AE83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83E0);
  }

  return result;
}

uint64_t sub_100506200(uint64_t a1)
{
  v2 = sub_1005061AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100506250()
{
  result = qword_100AE83E8;
  if (!qword_100AE83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83E8);
  }

  return result;
}

unint64_t sub_1005062A8()
{
  result = qword_100AE83F0;
  if (!qword_100AE83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83F0);
  }

  return result;
}

unint64_t sub_100506300()
{
  result = qword_100AE83F8;
  if (!qword_100AE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83F8);
  }

  return result;
}

double sub_100506354()
{
  if (qword_100AD17F0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1005063B0(uint64_t a1)
{
  v2 = sub_1005060D0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100506454()
{
  result = qword_100AE8410;
  if (!qword_100AE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8410);
  }

  return result;
}

unint64_t sub_1005064AC()
{
  result = qword_100AE8418;
  if (!qword_100AE8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8418);
  }

  return result;
}

uint64_t sub_100506538()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B234B8);
  v21 = sub_100008B98(v3, qword_100B234B8);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1005068DC()
{
  v0 = sub_1001F1160(&qword_100AE8450, &qword_10082DD58);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE8458, &qword_10082DD60);
  __chkstk_darwin(v1);
  sub_1005075C8();
  sub_1007961D4();
  v3._countAndFlagsBits = 0x206F74206E727554;
  v3._object = 0xE800000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE8460, &qword_10082DD90);
  sub_1007961B4();

  v4._countAndFlagsBits = 0x6E69206567617020;
  v4._object = 0xE900000000000020;
  sub_1007961C4(v4);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE8468, &unk_10082DDC0);
  sub_1007961B4();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1007961C4(v5);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_100506AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  sub_1007A26F4();
  v4[31] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[32] = v6;
  v4[33] = v5;

  return _swift_task_switch(sub_100506B80, v6, v5);
}

uint64_t sub_100506B80()
{
  sub_100795A94();
  sub_100795DF4();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_100506C34;

  return sub_1004F39A0(v0 + 16);
}

uint64_t sub_100506C34()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100506F54;
  }

  else
  {
    sub_1002A411C(v2 + 16);

    swift_unknownObjectRelease();
    *(v2 + 208) = *(v2 + 136);
    sub_100007840(v2 + 208, &qword_100AE6A50, &qword_10082AB30);
    *(v2 + 200) = *(v2 + 144);
    v6 = v2 + 200;
    sub_100007840(v6, &qword_100AE6A50, &qword_10082AB30);
    v3 = *(v6 + 56);
    v4 = *(v6 + 64);
    v5 = sub_100506DB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100506DB0()
{

  sub_100795DF4();
  v1 = *(v0 + 288);
  v2 = [objc_opt_self() delegate];
  v3 = [v2 menuController];

  v4 = sub_1005C99B8();
  if (v4)
  {
    *(v0 + 152) = *(v0 + 224);
    v5 = *(v0 + 232);
    if (v1)
    {
      v6 = "books_pageBackward:";
    }

    else
    {
      v6 = "books_pageForward:";
    }

    *(v0 + 168) = *(v0 + 240);
    *(v0 + 176) = &type metadata for BookReaderNavigatePageInBookIntent;
    *(v0 + 160) = v5;

    v7 = sub_100699F0C(v6, v0 + 152);
    sub_100007840(v0 + 152, &unk_100AD5B40, &unk_100811300);
    if (v7)
    {
      sub_100795D24();

      v8 = *(v0 + 8);
      goto LABEL_9;
    }
  }

  sub_100507EE8();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();
  v8 = *(v0 + 8);
LABEL_9:

  return v8();
}

uint64_t sub_100506F54()
{

  sub_1002A411C(v0 + 16);

  swift_unknownObjectRelease();
  *(v0 + 192) = *(v0 + 136);
  sub_100007840(v0 + 192, &qword_100AE6A50, &qword_10082AB30);
  *(v0 + 184) = *(v0 + 144);
  sub_100007840(v0 + 184, &qword_100AE6A50, &qword_10082AB30);
  sub_100507EE8();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100507094(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_100506AE4(a1, v4, v5, v6);
}

uint64_t sub_100507148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10050763C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100507174(uint64_t a1, double a2)
{
  v3 = sub_1005075C8();

  return static AppIntent.persistentIdentifier.getter(a1, v3);
}

unint64_t sub_1005071B4()
{
  result = qword_100AE8420;
  if (!qword_100AE8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8420);
  }

  return result;
}

uint64_t sub_100507208@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v22 = a2;
  v20 = sub_1007967F4();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100796CF4();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v23 = sub_1007A21D4();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v23);
  v17 = v21;
  (*(v5 + 16))(v7, v10, v21);
  *v4 = type metadata accessor for BundleFinder();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v17);
  return (*(v11 + 8))(v16, v23);
}

unint64_t sub_1005075C8()
{
  result = qword_100AE8428;
  if (!qword_100AE8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8428);
  }

  return result;
}

uint64_t sub_10050763C()
{
  v55 = sub_100796274();
  v64 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v53 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = &v39 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v5 - 8);
  v50 = &v39 - v6;
  v59 = sub_1007967F4();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_100796CF4();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v57 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_1007A21D4();
  v56 = v14;
  v61 = *(v14 - 8);
  v15 = v61;
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v60 = sub_100796814();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  v65 = 0u;
  v66 = 0u;
  *&v67 = 0;
  sub_100795B64();
  v51 = sub_100795AA4();
  v49 = sub_1001F1160(&qword_100AE8440, &unk_10082DD40);
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v15 + 2);
  v47(v17, v20, v14);
  v46 = *(v9 + 16);
  v22 = v48;
  v46(v57, v13, v48);
  v45 = type metadata accessor for BundleFinder();
  *v8 = v45;
  v43 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v23 = *(v62 + 104);
  v62 += 104;
  v44 = v23;
  v23(v8);
  sub_100796834();
  v24 = *(v9 + 8);
  v41 = v9 + 8;
  v42 = v24;
  v25 = v22;
  v24(v13, v22);
  v26 = *(v61 + 1);
  v61 += 8;
  v40 = v26;
  v27 = v56;
  v26(v20, v56);
  sub_1007A2154();
  sub_100796C94();
  v47(v17, v20, v27);
  v46(v57, v13, v25);
  *v8 = v45;
  v44(v8, v43, v59);
  v28 = v50;
  sub_100796834();
  v42(v13, v25);
  v40(v20, v56);
  v62 = *(v63 + 56);
  v63 += 56;
  v29 = v28;
  (v62)(v28, 0, 1, v60);
  LOBYTE(v65) = 0;
  v30 = sub_100795CE4();
  v31 = *(*(v30 - 8) + 56);
  v32 = v52;
  v31(v52, 1, 1, v30);
  v33 = v53;
  v31(v53, 1, 1, v30);
  v34 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v64 + 104);
  v64 += 104;
  v61 = v35;
  v36 = v54;
  v37 = v55;
  (v35)(v54, enum case for InputConnectionBehavior.default(_:), v55);
  sub_1005061AC();
  v59 = sub_100795E54();
  sub_1001F1160(&qword_100ADC580, &qword_1008361A0);
  (v62)(v29, 1, 1, v60);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v31(v32, 1, 1, v30);
  v31(v33, 1, 1, v30);
  (v61)(v36, v34, v37);
  sub_10020E834();
  sub_100795E64();
  return v51;
}

unint64_t sub_100507EE8()
{
  result = qword_100AE8448;
  if (!qword_100AE8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8448);
  }

  return result;
}

unint64_t sub_100507F50()
{
  result = qword_100AE8478;
  if (!qword_100AE8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8478);
  }

  return result;
}

uint64_t sub_100507FAC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100507FF0()
{
  v40 = sub_10079BC44();
  v1 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = v37 - v4;
  v5 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = sub_10079D4D4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = v0;
  v41 = (*(v0 + 8))(v10);
  v42 = v13;
  sub_100206ECC();
  v14 = sub_10079D5D4();
  v16 = v15;
  v18 = v17;
  (*(v9 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v8);
  v19 = sub_10079D3A4();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_10079D434();
  sub_100007840(v7, &unk_100AD1FC0, &unk_10080B850);
  (*(v9 + 8))(v12, v8);
  sub_10079D3E4();
  sub_10079D464();

  v20 = sub_10079D5A4();
  v22 = v21;
  v24 = v23;
  v37[1] = v25;

  v26 = v18 & 1;
  v27 = v37[0];
  sub_10020B430(v14, v16, v26);

  v28 = *(v27 + 72);
  if (v28)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v28;
    v30 = v38;
    sub_10079B9A4(v38);

    v32 = v39;
    v31 = v40;
    (*(v1 + 104))(v39, enum case for ColorScheme.light(_:), v40);
    v33 = sub_10079BC34();
    v34 = *(v1 + 8);
    v34(v32, v31);
    v34(v30, v31);
    if (v33)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v35 = sub_10079D564();

    sub_10020B430(v20, v22, v24 & 1);

    return v35;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100508474()
{
  v0 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v0 - 8);
  v43 = &v40 - v1;
  v2 = sub_10079D4D4();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100796CF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  sub_1007A2154();
  sub_100796C94();
  (*(v13 + 16))(v15, v18, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v6 + 16))(v8, v11, v5);
  v21 = sub_1007A22D4(v15, 0, 0, v20, v8, "Page prefix used in Page X of Y label in TOC", 44, 2);
  v23 = v22;
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
  v24 = v42;
  v44 = v21;
  v45 = v23;
  sub_100206ECC();
  v25 = sub_10079D5D4();
  v27 = v26;
  LOBYTE(v21) = v28;
  v30 = v40;
  v29 = v41;
  (*(v40 + 104))(v4, enum case for Font.TextStyle.subheadline(_:), v41);
  v31 = sub_10079D3A4();
  v32 = v43;
  (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
  sub_10079D434();
  sub_100007840(v32, &unk_100AD1FC0, &unk_10080B850);
  (*(v30 + 8))(v4, v29);
  v33 = sub_10079D5A4();
  v35 = v34;
  v37 = v36;

  sub_10020B430(v25, v27, v21 & 1);

  if (*(v24 + 72))
  {
    _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v38 = sub_10079D564();

    sub_10020B430(v33, v35, v37 & 1);

    return v38;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

void sub_100508998(uint64_t *a1@<X8>)
{
  v277 = a1;
  v256 = sub_1001F1160(&qword_100AE8480, &qword_10082DFB0);
  __chkstk_darwin(v256);
  v258 = &v218 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v257 = (&v218 - v4);
  v5 = sub_10079D074();
  v254 = *(v5 - 8);
  v255 = v5;
  __chkstk_darwin(v5);
  v253 = &v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_1001F1160(&qword_100AE8488, &qword_10082DFB8);
  __chkstk_darwin(v238);
  v249 = (&v218 - v7);
  v241 = sub_1001F1160(&qword_100AE8490, &qword_10082DFC0);
  v221 = *(v241 - 8);
  __chkstk_darwin(v241);
  v220 = &v218 - v8;
  v245 = sub_1001F1160(&qword_100AE8498, &qword_10082DFC8);
  v223 = *(v245 - 8);
  __chkstk_darwin(v245);
  v222 = &v218 - v9;
  v10 = sub_1001F1160(&qword_100AE84A0, &qword_10082DFD0);
  __chkstk_darwin(v10 - 8);
  v247 = &v218 - v11;
  v12 = sub_1001F1160(&qword_100AE84A8, &unk_10082DFD8);
  __chkstk_darwin(v12 - 8);
  v251 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v276 = (&v218 - v15);
  v16 = sub_10079CA64();
  v235 = *(v16 - 8);
  v236 = v16;
  __chkstk_darwin(v16);
  v234 = &v218 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v18 - 8);
  v231 = &v218 - v19;
  v232 = sub_10079D4D4();
  v230 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_1001F1160(&qword_100AE84B0, &qword_10082DFE8);
  __chkstk_darwin(v233);
  v240 = &v218 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v275 = &v218 - v23;
  v242 = sub_1001F1160(&qword_100AE84B8, &qword_10082DFF0);
  __chkstk_darwin(v242);
  v283 = (&v218 - v24);
  v250 = sub_1001F1160(&qword_100AE84C0, &qword_10082DFF8);
  v248 = *(v250 - 8);
  __chkstk_darwin(v250);
  v246 = &v218 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v244 = &v218 - v27;
  v28 = sub_10079DF34();
  v227 = *(v28 - 8);
  v228 = v28;
  __chkstk_darwin(v28);
  v226 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1001F1160(&qword_100AE84C8, &qword_10082E000);
  __chkstk_darwin(v237);
  v239 = &v218 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v274 = &v218 - v32;
  v243 = sub_1001F1160(&qword_100AE84D0, &qword_10082E008);
  __chkstk_darwin(v243);
  v252 = &v218 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v284 = (&v218 - v35);
  v279 = sub_100796CF4();
  v36 = *(v279 - 8);
  __chkstk_darwin(v279);
  v38 = &v218 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v218 - v40;
  v273 = sub_1007A21D4();
  v42 = *(v273 - 8);
  __chkstk_darwin(v273);
  v44 = &v218 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v218 - v46;
  v278 = v1;
  v48 = *v1;
  swift_getKeyPath();
  v49 = v48 + OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  *&v299[0] = v48;
  v280 = sub_10050C3E8(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  v281 = v49;
  sub_100797A14();

  v224 = OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage;
  v282 = v48;
  v50 = *(v48 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage);
  [v50 size];
  if (v52 == 0.0 && v51 == 0.0)
  {

    v225 = 80.0;
  }

  else
  {
    [v50 size];
    v54 = 80.0 / v53;
    [v50 size];
    v56 = v55;

    v225 = v54 * v56;
  }

  sub_1007A2154();
  sub_100796C94();
  v57 = v273;
  (*(v42 + 16))(v44, v47, v273);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v60 = v279;
  (*(v36 + 16))(v38, v41, v279);
  v61 = sub_1007A22D4(v44, 0, 0, v59, v38, "Page Numbers label from in picker in TOC", 40, 2);
  v63 = v62;
  (*(v36 + 8))(v41, v60);
  (*(v42 + 8))(v47, v57);
  v219 = v61;
  *&v299[0] = v61;
  *(&v299[0] + 1) = v63;
  v64 = sub_100206ECC();
  v263 = v63;

  v65 = sub_10079D5D4();
  v260 = v66;
  v261 = v65;
  v259 = v67;
  v262 = v68;
  v69 = v282;
  v70 = *(v282 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle + 8);
  v265 = *(v282 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle);
  v264 = (v278[3])();
  v279 = v71;
  v72 = sub_100507FF0();
  v271 = v73;
  v272 = v72;
  v270 = v74;
  v273 = v75;
  v76 = sub_100508474();
  v267 = v77;
  v268 = v76;
  v266 = v78;
  v269 = v79;
  v80 = sub_10079C8F4();
  v81 = v277;
  *v277 = v80;
  v81[1] = 0;
  *(v81 + 16) = 1;
  v82 = sub_10079C8F4();
  v83 = v284;
  *v284 = v82;
  v83[1] = 0;
  *(v83 + 16) = 1;
  swift_getKeyPath();
  *&v299[0] = v69;
  sub_100797A14();

  v84 = *(v69 + v224);
  sub_10079DF04();
  v86 = v226;
  v85 = v227;
  v87 = v228;
  (*(v227 + 104))(v226, enum case for Image.ResizingMode.stretch(_:), v228);
  v88 = sub_10079DF94();

  (*(v85 + 8))(v86, v87);
  sub_10079E484();
  sub_10079BE54();
  LOBYTE(v290) = 1;
  *&v298[6] = v304[0];
  *&v298[22] = v304[1];
  *&v298[38] = v304[2];
  LOBYTE(v85) = sub_10079D2C4();
  sub_10079BBA4();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  LOBYTE(v299[0]) = 0;
  LOBYTE(v87) = sub_10079D2E4();
  sub_10079BBA4();
  *(v291 + 2) = *v298;
  LOBYTE(v285) = 0;
  v290 = v88;
  LOWORD(v291[0]) = 1;
  *(&v291[1] + 2) = *&v298[16];
  *(&v291[2] + 2) = *&v298[32];
  *&v291[3] = *&v298[46];
  BYTE8(v291[3]) = v85;
  *&v292 = v90;
  *(&v292 + 1) = v92;
  *&v293 = v94;
  *(&v293 + 1) = v96;
  LOBYTE(v294) = 0;
  BYTE8(v294) = v87;
  *&v295 = v97;
  *(&v295 + 1) = v98;
  *&v296 = v99;
  *(&v296 + 1) = v100;
  v297 = 0;
  sub_1001F1160(&qword_100AE84D8, &qword_10082E038);
  sub_10050BF04();
  v101 = v274;
  sub_10079D944();
  v299[8] = v295;
  v299[9] = v296;
  v299[4] = v291[3];
  v299[5] = v292;
  v299[6] = v293;
  v299[7] = v294;
  v299[0] = v290;
  v299[1] = v291[0];
  v300 = v297;
  v299[2] = v291[1];
  v299[3] = v291[2];
  sub_100007840(v299, &qword_100AE84D8, &qword_10082E038);
  *(v101 + *(v237 + 36)) = 1;
  v102 = sub_10079CB34();
  v103 = v283;
  *v283 = v102;
  v103[1] = 0;
  *(v103 + 16) = 1;
  *&v290 = v265;
  *(&v290 + 1) = v70;
  v237 = v70;

  v227 = v64;
  v104 = sub_10079D5D4();
  v106 = v105;
  LOBYTE(v85) = v107;
  v228 = v108;
  v110 = v229;
  v109 = v230;
  v111 = v232;
  (*(v230 + 104))(v229, enum case for Font.TextStyle.headline(_:), v232);
  v112 = sub_10079D3A4();
  v113 = v231;
  (*(*(v112 - 8) + 56))(v231, 1, 1, v112);
  sub_10079D434();
  sub_100007840(v113, &unk_100AD1FC0, &unk_10080B850);
  (*(v109 + 8))(v110, v111);
  sub_10079D3F4();
  sub_10079D464();

  v232 = sub_10079D5A4();
  v115 = v114;
  LOBYTE(v110) = v116;
  v118 = v117;

  sub_10020B430(v104, v106, v85 & 1);

  KeyPath = swift_getKeyPath();
  v120 = swift_getKeyPath();
  LOBYTE(v305) = v110 & 1;
  v303 = 0;
  *&v285 = v232;
  *(&v285 + 1) = v115;
  LOBYTE(v286) = v110 & 1;
  *(&v286 + 1) = v118;
  *&v287 = KeyPath;
  *(&v287 + 1) = 2;
  LOBYTE(v288) = 0;
  *(&v288 + 1) = v120;
  v289 = 0x3FE0000000000000;
  v121 = v234;
  sub_10079CA54();
  sub_1001F1160(&qword_100AE8508, &unk_10082E0B8);
  sub_10050C0A8();
  v122 = v275;
  sub_10079D9D4();
  (*(v235 + 8))(v121, v236);
  v291[0] = v286;
  v291[1] = v287;
  v291[2] = v288;
  *&v291[3] = v289;
  v290 = v285;
  sub_100007840(&v290, &qword_100AE8508, &unk_10082E0B8);
  *(v122 + *(v233 + 36)) = 1;
  sub_10079E474();
  sub_10079BE54();
  v234 = v307;
  v235 = v305;
  v232 = v310;
  v233 = v309;
  v303 = 1;
  v302 = v306;
  v301 = v308;
  v123 = sub_10079C8F4();
  v124 = v276;
  *v276 = v123;
  v124[1] = 0;
  *(v124 + 16) = 1;
  swift_getKeyPath();
  v125 = v282;
  *&v285 = v282;
  sub_100797A14();

  v236 = OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages;
  if (*(v125 + OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages) == 1)
  {
    __chkstk_darwin(v126);
    v127 = v278;
    v129 = v260;
    v128 = v261;
    *(&v218 - 6) = v278;
    *(&v218 - 5) = v128;
    *(&v218 - 4) = v129;
    *(&v218 - 24) = v259 & 1;
    *(&v218 - 2) = v262;
    __chkstk_darwin(v127);
    v130 = v267;
    *(&v218 - 18) = v268;
    *(&v218 - 17) = v130;
    *(&v218 - 128) = v266 & 1;
    v131 = v271;
    v132 = v272;
    *(&v218 - 15) = v269;
    *(&v218 - 14) = v132;
    *(&v218 - 13) = v131;
    *(&v218 - 96) = v270 & 1;
    *(&v218 - 11) = v273;
    *(&v218 - 10) = v133;
    *(&v218 - 9) = v134;
    *(&v218 - 8) = v135;
    *(&v218 - 56) = v136;
    v137 = v264;
    *(&v218 - 6) = v138;
    *(&v218 - 5) = v137;
    v139 = v219;
    *(&v218 - 4) = v279;
    *(&v218 - 3) = v139;
    *(&v218 - 2) = v263;
    sub_1001F1160(&qword_100AE8580, &qword_10082E148);
    sub_1001F1160(&qword_100AE8588, &qword_10082E150);
    sub_10050C2BC();
    sub_100005920(&qword_100AE85A8, &qword_100AE8588, &qword_10082E150, &protocol conformance descriptor for Picker<A, B, C>);
    v140 = v220;
    sub_10079D534();
    v141 = sub_100005920(&qword_100AE8520, &qword_100AE8490, &qword_10082DFC0, &protocol conformance descriptor for Menu<A, B>);
    v142 = v222;
    v143 = v241;
    sub_10079DCC4();
    (*(v221 + 8))(v140, v143);
    v144 = v223;
    v145 = v245;
    (*(v223 + 16))(v249, v142, v245);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AE8518, &qword_10082E0F0);
    *&v285 = v143;
    *(&v285 + 1) = v141;
    swift_getOpaqueTypeConformance2();
    sub_10050C160();
    v146 = v247;
    sub_10079CCA4();
    (*(v144 + 8))(v142, v145);
  }

  else
  {
    v147 = sub_10079D584();
    v149 = v148;
    v151 = v150;
    v152 = sub_10079D584();
    v154 = v153;
    v156 = v155;
    sub_10020B430(v147, v149, v151 & 1);

    *&v285 = v264;
    *(&v285 + 1) = v279;
    v157 = sub_10079D574();
    v159 = v158;
    v161 = v160;
    v163 = v162;
    sub_10020B430(v152, v154, v156 & 1);

    v164 = v249;
    *v249 = v157;
    v164[1] = v159;
    *(v164 + 16) = v161 & 1;
    v164[3] = v163;
    *(v164 + 32) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AE8518, &qword_10082E0F0);
    v165 = sub_100005920(&qword_100AE8520, &qword_100AE8490, &qword_10082DFC0, &protocol conformance descriptor for Menu<A, B>);
    *&v285 = v241;
    *(&v285 + 1) = v165;
    swift_getOpaqueTypeConformance2();
    sub_10050C160();
    v146 = v247;
    sub_10079CCA4();
  }

  v166 = sub_1001F1160(&qword_100AE8530, &qword_10082E0F8);
  v277 = (v277 + *(v166 + 44));
  v167 = sub_1001F1160(&qword_100AE8538, &qword_10082E100);
  v249 = (v284 + *(v167 + 44));
  v168 = sub_1001F1160(&qword_100AE8540, &qword_10082E108);
  v169 = v283 + *(v168 + 44);
  v170 = sub_1001F1160(&qword_100AE8548, &qword_10082E110);
  v171 = v276;
  sub_10003EC34(v146, v276 + *(v170 + 44));
  v172 = v275;
  v173 = v240;
  sub_1000077D8(v275, v240, &qword_100AE84B0, &qword_10082DFE8);
  v174 = v303;
  v175 = v302;
  v176 = v301;
  v177 = v251;
  sub_1000077D8(v171, v251, &qword_100AE84A8, &unk_10082DFD8);
  sub_1000077D8(v173, v169, &qword_100AE84B0, &qword_10082DFE8);
  v178 = sub_1001F1160(&qword_100AE8550, &qword_10082E118);
  v179 = v169 + *(v178 + 48);
  *v179 = 0;
  *(v179 + 8) = v174;
  v180 = v234;
  *(v179 + 16) = v235;
  *(v179 + 24) = v175;
  *(v179 + 32) = v180;
  *(v179 + 40) = v176;
  v181 = v232;
  *(v179 + 48) = v233;
  *(v179 + 56) = v181;
  sub_1000077D8(v177, v169 + *(v178 + 64), &qword_100AE84A8, &unk_10082DFD8);
  sub_100007840(v171, &qword_100AE84A8, &unk_10082DFD8);
  sub_100007840(v172, &qword_100AE84B0, &qword_10082DFE8);
  sub_100007840(v177, &qword_100AE84A8, &unk_10082DFD8);
  sub_100007840(v173, &qword_100AE84B0, &qword_10082DFE8);
  v182 = v253;
  sub_10079D064();
  sub_100005920(&qword_100AE8558, &qword_100AE84B8, &qword_10082DFF0, &protocol conformance descriptor for VStack<A>);
  v183 = v244;
  v184 = v283;
  sub_10079D9A4();
  (*(v254 + 8))(v182, v255);
  sub_100007840(v184, &qword_100AE84B8, &qword_10082DFF0);
  v185 = v274;
  v186 = v239;
  sub_1000077D8(v274, v239, &qword_100AE84C8, &qword_10082E000);
  v187 = v248;
  v188 = *(v248 + 16);
  v189 = v246;
  v190 = v250;
  v188(v246, v183, v250);
  v191 = v249;
  sub_1000077D8(v186, v249, &qword_100AE84C8, &qword_10082E000);
  v192 = sub_1001F1160(&qword_100AE8560, &unk_10082E120);
  v188(v191 + *(v192 + 48), v189, v190);
  v193 = *(v187 + 8);
  v193(v183, v190);
  sub_100007840(v185, &qword_100AE84C8, &qword_10082E000);
  v193(v189, v190);
  sub_100007840(v186, &qword_100AE84C8, &qword_10082E000);
  swift_getKeyPath();
  v194 = v282;
  *&v285 = v282;
  sub_100797A14();

  LOBYTE(v193) = *(v194 + v236);
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10080EFF0;
  v196 = v264;
  v197 = v237;
  *(v195 + 32) = v265;
  *(v195 + 40) = v197;
  v198 = v279;
  *(v195 + 48) = v196;
  *(v195 + 56) = v198;
  v199 = v284;
  v200 = v284 + *(v243 + 36);
  type metadata accessor for AccessibilityConditionallyCombined(0);

  sub_10079CA54();
  *v200 = (v193 & 1) == 0;
  *(v200 + 1) = v195;
  v201 = sub_10079CB24();
  v202 = v257;
  *v257 = v201;
  *(v202 + 8) = 0;
  *(v202 + 16) = 1;
  v203 = sub_1001F1160(&qword_100AE8568, &qword_10082E130);
  sub_10050B6BC(v278, v202 + *(v203 + 44));
  sub_10079E474();
  sub_10079BE54();
  v204 = (v202 + *(sub_1001F1160(&qword_100AE8570, &qword_10082E138) + 36));
  v205 = v286;
  *v204 = v285;
  v204[1] = v205;
  v204[2] = v287;
  LOBYTE(v195) = sub_10079D2E4();
  sub_10079BBA4();
  v206 = v202 + *(v256 + 36);
  *v206 = v195;
  *(v206 + 8) = v207;
  *(v206 + 16) = v208;
  *(v206 + 24) = v209;
  *(v206 + 32) = v210;
  *(v206 + 40) = 0;
  v211 = v199;
  v212 = v199;
  v213 = v252;
  sub_1000077D8(v211, v252, &qword_100AE84D0, &qword_10082E008);
  v214 = v258;
  sub_1000077D8(v202, v258, &qword_100AE8480, &qword_10082DFB0);
  v215 = v277;
  sub_1000077D8(v213, v277, &qword_100AE84D0, &qword_10082E008);
  v216 = sub_1001F1160(&qword_100AE8578, &qword_10082E140);
  v217 = v215 + *(v216 + 48);
  *v217 = 0;
  v217[8] = 1;
  sub_1000077D8(v214, v215 + *(v216 + 64), &qword_100AE8480, &qword_10082DFB0);
  sub_100007840(v202, &qword_100AE8480, &qword_10082DFB0);
  sub_100007840(v212, &qword_100AE84D0, &qword_10082E008);
  sub_100007840(v214, &qword_100AE8480, &qword_10082DFB0);
  sub_100007840(v213, &qword_100AE84D0, &qword_10082E008);
  sub_10020B430(v268, v267, v266 & 1);

  sub_10020B430(v272, v271, v270 & 1);

  sub_10020B430(v261, v260, v259 & 1);
}

uint64_t sub_10050A49C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1007A26F4();
  sub_10050C430(a1, &v18);
  v9 = sub_1007A26E4();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = *(a1 + 48);
  *(v10 + 64) = *(a1 + 32);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a1 + 64);
  *(v10 + 112) = *(a1 + 80);
  v12 = *(a1 + 16);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  sub_10050C430(a1, &v18);
  v13 = sub_1007A26E4();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  v15 = *(a1 + 48);
  *(v14 + 64) = *(a1 + 32);
  *(v14 + 80) = v15;
  *(v14 + 96) = *(a1 + 64);
  *(v14 + 112) = *(a1 + 80);
  v16 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v16;
  sub_10079E204();
  sub_1001F1894(a2, a3, a4 & 1);

  sub_1001F1160(&qword_100AE85D8, &qword_10082E240);
  sub_100005920(&qword_100AE85E0, &qword_100AE85D8, &qword_10082E240, &protocol conformance descriptor for TupleView<A>);
  return sub_10079E0F4();
}

uint64_t sub_10050A6B4@<X0>(char *a1@<X8>)
{
  v74 = a1;
  v76 = sub_100796CF4();
  v1 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v58 - v5;
  v7 = sub_1007A21D4();
  v75 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  v59 = &v58 - v12;
  v70 = sub_1001F1160(&qword_100AE85E8, &qword_10082E248);
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v58 - v16;
  __chkstk_darwin(v17);
  v68 = (&v58 - v18);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  sub_1007A2154();
  sub_100796C94();
  v22 = v8;
  v69 = *(v8 + 16);
  v58 = v10;
  v69(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = ObjCClassFromMetadata;
  v66 = objc_opt_self();
  v24 = [v66 bundleForClass:ObjCClassFromMetadata];
  v65 = *(v1 + 16);
  v60 = v3;
  v25 = v76;
  v65(v3, v6, v76);
  v26 = sub_1007A22D4(v10, 0, 0, v24, v3, "Digital Book option for page number label in TOC", 48, 2);
  v28 = v27;
  v29 = *(v1 + 8);
  v63 = v1 + 8;
  v64 = v29;
  v29(v6, v25);
  v30 = *(v22 + 8);
  v61 = v22 + 8;
  v62 = v30;
  v31 = v59;
  v32 = v75;
  v30(v59, v75);
  v77 = v26;
  v78 = v28;
  sub_100206ECC();
  *v21 = sub_10079D5D4();
  *(v21 + 1) = v33;
  v21[16] = v34 & 1;
  *(v21 + 3) = v35;
  *(v21 + 16) = 256;
  sub_1007A2154();
  v36 = v6;
  sub_100796C94();
  v37 = v58;
  v69(v58, v31, v32);
  v38 = [v66 bundleForClass:v67];
  v39 = v60;
  v40 = v76;
  v65(v60, v36, v76);
  v41 = sub_1007A22D4(v37, 0, 0, v38, v39, "Print Edition option for page number label in TOC", 49, 2);
  v43 = v42;
  v64(v36, v40);
  v62(v31, v75);
  v77 = v41;
  v78 = v43;
  v44 = sub_10079D5D4();
  v45 = v68;
  *v68 = v44;
  v45[1] = v46;
  *(v45 + 16) = v47 & 1;
  v45[3] = v48;
  *(v45 + 16) = 257;
  v49 = v73;
  v50 = *(v73 + 16);
  v51 = v70;
  v52 = v71;
  v50(v71, v21, v70);
  v53 = v72;
  v50(v72, v45, v51);
  v54 = v74;
  v50(v74, v52, v51);
  v55 = sub_1001F1160(&qword_100AE85F0, &qword_10082E250);
  v50(&v54[*(v55 + 48)], v53, v51);
  v56 = *(v49 + 8);
  v56(v45, v51);
  v56(v21, v51);
  v56(v53, v51);
  return (v56)(v52, v51);
}

uint64_t sub_10050ACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v39 = a7;
  v40 = a4;
  v41 = a5;
  v35[1] = a3;
  v37 = a2;
  v36 = a1;
  v49 = a9;
  v47 = a17;
  v48 = a18;
  v44 = a15;
  v45 = a16;
  v38 = sub_1001F1160(&qword_100AE8598, &qword_10082E158);
  __chkstk_darwin(v38);
  v21 = v35 - v20;
  v22 = sub_1001F1160(&qword_100AE85B0, &qword_10082E160);
  v42 = *(v22 - 8);
  v43 = v22;
  __chkstk_darwin(v22);
  v24 = v35 - v23;
  v46 = sub_1001F1160(&qword_100AE8580, &qword_10082E148);
  __chkstk_darwin(v46);
  v26 = v35 - v25;
  *v21 = sub_10079C8F4();
  *(v21 + 1) = 0x4010000000000000;
  v21[16] = 0;
  v27 = sub_1001F1160(&qword_100AE85B8, &qword_10082E168);
  sub_10050B05C(v41, a6, v39 & 1, a8, &v21[*(v27 + 44)], a10, a11, a12, a13 & 1, a14);
  v28 = sub_100005920(&qword_100AE85A0, &qword_100AE8598, &qword_10082E158, &protocol conformance descriptor for HStack<A>);
  v29 = v38;
  sub_10079D8C4();
  sub_100007840(v21, &qword_100AE8598, &qword_10082E158);
  v31 = v44;
  v30 = v45;
  v52 = v44;
  v53 = v45;
  v50 = v29;
  v51 = v28;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v32 = v43;
  sub_10079D8E4();
  (*(v42 + 8))(v24, v32);
  sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10080EFF0;
  *(v33 + 32) = v47;
  *(v33 + 40) = v48;
  *(v33 + 48) = v31;
  *(v33 + 56) = v30;

  sub_10079C264();

  return sub_100007840(v26, &qword_100AE8580, &qword_10082E148);
}

void sub_10050B05C(uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v69 = a8;
  v64 = a7;
  v66 = a5;
  v67 = a6;
  v63 = a10;
  v15 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v15 - 8);
  v17 = v60 - v16;
  v18 = sub_10079BC44();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v60 - v23;
  v25 = sub_1001F1160(&qword_100AE85C0, &qword_10082E170);
  __chkstk_darwin(v25 - 8);
  v70 = v60 - v26;
  v68 = sub_1001F1160(&qword_100AE85C8, &qword_10082E178);
  __chkstk_darwin(v68);
  v72 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v65 = v60 - v29;
  __chkstk_darwin(v30);
  v71 = v60 - v31;
  v32 = sub_10079D584();
  v34 = v33;
  v36 = v35;
  v37 = sub_10079D584();
  v66 = v38;
  v67 = v37;
  v64 = v39;
  v69 = v40;
  sub_10020B430(v32, v34, v36 & 1);

  v41 = sub_10079DF24();
  v42 = *(v63 + 72);
  if (v42)
  {
    v43 = v41;
    v63 = a14;
    v60[1] = a13;
    v62 = a12;
    v61 = a11;
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v42;
    sub_10079B9A4(v24);

    (*(v19 + 104))(v21, enum case for ColorScheme.light(_:), v18);
    v45 = sub_10079BC34();
    v46 = *(v19 + 8);
    v46(v21, v18);
    v46(v24, v18);
    if (v45)
    {
      v47 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v47 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v48 = v47;

    KeyPath = swift_getKeyPath();
    v50 = sub_10079D3A4();
    (*(*(v50 - 8) + 56))(v17, 1, 1, v50);
    sub_10079D424();
    sub_100007840(v17, &unk_100AD1FC0, &unk_10080B850);
    sub_10079D3F4();
    v51 = sub_10079D464();

    v52 = swift_getKeyPath();
    v73 = v43;
    v74 = KeyPath;
    v75 = v48;
    v76 = v52;
    v77 = v51;
    sub_1001F1160(&qword_100AD6DB8, &qword_100813AE8);
    sub_10024AAA8();
    v53 = v70;
    sub_10079D8D4();

    v54 = v65;
    sub_10020B3C8(v53, v65, &qword_100AE85C0, &qword_10082E170);
    *(v54 + *(v68 + 36)) = 1;
    v55 = v71;
    sub_10020B3C8(v54, v71, &qword_100AE85C8, &qword_10082E178);
    v56 = v72;
    sub_1000077D8(v55, v72, &qword_100AE85C8, &qword_10082E178);
    v58 = v66;
    v57 = v67;
    *a9 = v67;
    *(a9 + 8) = v58;
    LOBYTE(v54) = v64 & 1;
    *(a9 + 16) = v64 & 1;
    *(a9 + 24) = v69;
    *(a9 + 32) = 1;
    v59 = sub_1001F1160(&qword_100AE85D0, &qword_10082E238);
    sub_1000077D8(v56, a9 + *(v59 + 48), &qword_100AE85C8, &qword_10082E178);
    sub_1001F1894(v57, v58, v54);

    sub_100007840(v55, &qword_100AE85C8, &qword_10082E178);
    sub_100007840(v56, &qword_100AE85C8, &qword_10082E178);
    sub_10020B430(v57, v58, v54);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    sub_10079C474();
    __break(1u);
  }
}

uint64_t sub_10050B6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE85F8, &qword_10082E280);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  type metadata accessor for ChromeStyle(0);
  sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  v13 = sub_10079C484();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v24 = 0;
  *&v19 = v13;
  *(&v19 + 1) = v15;
  *&v20 = KeyPath;
  WORD4(v20) = 0;
  v21 = 0uLL;
  *&v22 = v12;
  *(&v22 + 1) = v11;
  v23 = 257;
  sub_1001F1160(&qword_100AE8600, &qword_10082E2B0);
  sub_10050C518();
  sub_10079DA04();
  v25[2] = v21;
  v25[3] = v22;
  v26 = v23;
  v25[0] = v19;
  v25[1] = v20;
  sub_100007840(v25, &qword_100AE8600, &qword_10082E2B0);
  v10[*(v5 + 44)] = 1;
  sub_1000077D8(v10, v7, &qword_100AE85F8, &qword_10082E280);
  sub_1000077D8(v7, a2, &qword_100AE85F8, &qword_10082E280);
  v17 = a2 + *(sub_1001F1160(&qword_100AE8618, &qword_10082E2B8) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_100007840(v10, &qword_100AE85F8, &qword_10082E280);
  return sub_100007840(v7, &qword_100AE85F8, &qword_10082E280);
}

void sub_10050B904(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10050C3E8(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages);
}

uint64_t sub_10050BA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = sub_1001F1160(&qword_100AE86D0, &qword_10082E340);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_10079D074();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE86D8, &qword_10082E348);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v31 = sub_1001F1160(&qword_100AE86E0, &qword_10082E350);
  __chkstk_darwin(v31);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  if (*v2 == 1)
  {
    sub_10079D054();
    v28 = v10;
    v29 = v4;
    v18 = sub_1001F1160(&qword_100AE86E8, &unk_10082E358);
    v27 = v9;
    v19 = v18;
    v26 = sub_100005920(&qword_100AE86F8, &qword_100AE86E8, &unk_10082E358, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10079D9A4();
    (*(v6 + 8))(v8, v5);
    v36 = *(v2 + 8);

    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
    v20 = sub_1007A20B4();
    v22 = v21;

    v36 = v20;
    v37 = v22;
    v34 = v19;
    v35 = v26;
    swift_getOpaqueTypeConformance2();
    sub_100206ECC();
    v23 = v27;
    sub_10079D8E4();

    (*(v28 + 8))(v12, v23);
    type metadata accessor for AccessibilityConditionallyCombined(0);
    sub_10079C234();
    sub_100007840(v14, &qword_100AE86E0, &qword_10082E350);
    sub_1000077D8(v17, v29, &qword_100AE86E0, &qword_10082E350);
    swift_storeEnumTagMultiPayload();
    sub_10050C720();
    sub_10079CCA4();
    return sub_100007840(v17, &qword_100AE86E0, &qword_10082E350);
  }

  else
  {
    v25 = sub_1001F1160(&qword_100AE86E8, &unk_10082E358);
    (*(*(v25 - 8) + 16))(v4, v30, v25);
    swift_storeEnumTagMultiPayload();
    sub_10050C720();
    sub_100005920(&qword_100AE86F8, &qword_100AE86E8, &unk_10082E358, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_10079CCA4();
  }
}

unint64_t sub_10050BF04()
{
  result = qword_100AE84E0;
  if (!qword_100AE84E0)
  {
    sub_1001F1234(&qword_100AE84D8, &qword_10082E038);
    sub_10050BF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84E0);
  }

  return result;
}

unint64_t sub_10050BF90()
{
  result = qword_100AE84E8;
  if (!qword_100AE84E8)
  {
    sub_1001F1234(&qword_100AE84F0, &qword_10082E040);
    sub_10050C01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84E8);
  }

  return result;
}

unint64_t sub_10050C01C()
{
  result = qword_100AE84F8;
  if (!qword_100AE84F8)
  {
    sub_1001F1234(&qword_100AE8500, &qword_10082E048);
    sub_10032A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84F8);
  }

  return result;
}

unint64_t sub_10050C0A8()
{
  result = qword_100AE8510;
  if (!qword_100AE8510)
  {
    sub_1001F1234(&qword_100AE8508, &unk_10082E0B8);
    sub_100324064();
    sub_100005920(&qword_100AE04A8, &qword_100AE04B0, &unk_100820CB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8510);
  }

  return result;
}

unint64_t sub_10050C160()
{
  result = qword_100AE8528;
  if (!qword_100AE8528)
  {
    sub_1001F1234(&qword_100AE8518, &qword_10082E0F0);
    sub_100303C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8528);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilityConditionallyCombined(uint64_t a1)
{
  result = qword_100AE8678;
  if (!qword_100AE8678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10050C2BC()
{
  result = qword_100AE8590;
  if (!qword_100AE8590)
  {
    sub_1001F1234(&qword_100AE8580, &qword_10082E148);
    sub_1001F1234(&qword_100AE8598, &qword_10082E158);
    sub_100005920(&qword_100AE85A0, &qword_100AE8598, &qword_10082E158, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10050C3E8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8590);
  }

  return result;
}

uint64_t sub_10050C3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10050C474()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

unsigned __int8 *sub_10050C4E4(unsigned __int8 *result)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    return v2(*result);
  }

  return result;
}

unint64_t sub_10050C518()
{
  result = qword_100AE8608;
  if (!qword_100AE8608)
  {
    sub_1001F1234(&qword_100AE8600, &qword_10082E2B0);
    sub_10050C5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8608);
  }

  return result;
}

unint64_t sub_10050C5A4()
{
  result = qword_100AE8610;
  if (!qword_100AE8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8610);
  }

  return result;
}

void sub_10050C620(uint64_t a1)
{
  sub_10050C6B4();
  if (v1 <= 0x3F)
  {
    sub_10079CA64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10050C6B4()
{
  if (!qword_100AE8688)
  {
    v0 = sub_1007A2654();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE8688);
    }
  }
}

unint64_t sub_10050C720()
{
  result = qword_100AE86F0;
  if (!qword_100AE86F0)
  {
    sub_1001F1234(&qword_100AE86E0, &qword_10082E350);
    sub_1001F1234(&qword_100AE86E8, &unk_10082E358);
    sub_100005920(&qword_100AE86F8, &qword_100AE86E8, &unk_10082E358, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_10050C3E8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE86F0);
  }

  return result;
}

unint64_t sub_10050C84C()
{
  result = qword_100AE8700;
  if (!qword_100AE8700)
  {
    sub_1001F1234(&qword_100AE8708, &unk_10082E368);
    sub_10050C720();
    sub_100005920(&qword_100AE86F8, &qword_100AE86E8, &unk_10082E358, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8700);
  }

  return result;
}

char *sub_10050C904(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AssetActivityItemProviderWrapper(0);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_paginationService];
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_paginationService + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_bookProvider];
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_bookProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_cachedStoreShortURL;
  v12 = sub_1007969B4();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_book] = a1;
  *(v10 + 1) = sub_100027EF0(&qword_100AE8748, type metadata accessor for BookProviderService, &protocol conformance descriptor for BookProviderService);
  swift_unknownObjectWeakAssign();
  *(v9 + 1) = &protocol witness table for PaginatingService;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_progressKitController] = a4;
  v13 = objc_opt_self();
  v14 = a4;
  v15 = a1;
  v16 = [v13 propertySourceFromBook:v15];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = objc_allocWithZone(AEAssetActivityItemProvider);
  aBlock[4] = sub_100217B94;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100217B9C;
  aBlock[3] = &unk_100A21800;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithPropertySource:v19];
  _Block_release(v19);

  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider] = v20;
  v25.receiver = v8;
  v25.super_class = v7;
  v21 = objc_msgSendSuper2(&v25, "init");
  v22 = *&v21[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider];
  v23 = v21;
  [v22 setPaginationDataSource:v23];

  return v23;
}

uint64_t sub_10050CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000077D8(a3, v22 - v9, &qword_100AD67D0, &qword_100814660);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007840(v10, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1007A2694();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1007A2304() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000077D8(a3, v22 - v9, &qword_100AD67D0, &qword_100814660);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007840(v10, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1007A2694();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1007A2304() + 32;
      sub_1007A1EE4();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
  sub_1007A1EE4();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000077D8(a3, v22 - v9, &qword_100AD67D0, &qword_100814660);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007840(v10, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1007A2694();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1007A2304() + 32;
      sub_10000A7C4(0, &qword_100AD9BD0, BKLibraryManager_ptr);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
  sub_10000A7C4(0, &qword_100AD9BD0, BKLibraryManager_ptr);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050D430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  sub_1000077D8(a3, v26 - v13, &qword_100AD67D0, &qword_100814660);
  v15 = sub_1007A2744();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_100007840(v14, &qword_100AD67D0, &qword_100814660);
  }

  else
  {
    sub_1007A2734();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1007A2694();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1007A2304() + 32;

      sub_1001F1160(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0, &qword_100814660);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0, &qword_100814660);
  sub_1001F1160(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

double sub_10050D6E0(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v24[2] = a1;
  v3 = sub_1001F1160(&qword_100AE8810, &qword_10082E620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - v5;
  v25 = sub_1001F1160(&qword_100AE8818, &qword_10082E628);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v24 - v8;
  v10 = sub_1001F1160(&qword_100AE8820, &qword_10082E630);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  v14 = sub_1001F1160(&qword_100AE8828, &qword_10082E638);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  __chkstk_darwin(v14);
  v26 = v24 - v16;
  *(v2 + 48) = &off_100A23DB0;
  v27 = v2;
  swift_unknownObjectWeakAssign();

  sub_1007A1834();
  swift_beginAccess();
  sub_1001F1160(&qword_100AE2860, &unk_100824740);
  sub_10079B974();
  swift_endAccess();
  sub_1007A0634();
  sub_100005920(&qword_100AE8830, &qword_100AE8810, &qword_10082E620, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10079BA74();
  (*(v4 + 8))(v6, v3);
  sub_100005920(&qword_100AE8838, &qword_100AE8818, &qword_10082E628, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100027EF0(&qword_100AEB780, &type metadata accessor for PageMovementState, &protocol conformance descriptor for PageMovementState);
  v17 = v25;
  sub_10079BAF4();
  (*(v7 + 8))(v9, v17);
  sub_100005920(&qword_100AE8840, &qword_100AE8820, &qword_10082E630, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v18 = sub_10079BA14();
  (*(v11 + 8))(v13, v10);
  v31 = v18;
  type metadata accessor for PageCurlViewController(0);
  v30 = sub_1005980E0();
  sub_1001F1160(&unk_100AEA100, &qword_10082E640);
  sub_100005920(&qword_100AE63F8, &unk_100AEA100, &qword_10082E640, &protocol conformance descriptor for AnyPublisher<A, B>);
  v19 = v26;
  sub_10079B7A4();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10051C824;
  *(v21 + 24) = v20;
  sub_100005920(&qword_100AE8848, &qword_100AE8828, &qword_10082E638, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v22 = v28;
  sub_10079BB04();

  (*(v29 + 8))(v19, v22);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

uint64_t sub_10050DCC0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2818, &unk_100824690);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  *(*(*a2 + 16) + 112) = *a1;
  v7 = _s5StateOMa(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1004156F0();
  return sub_100007840(v6, &qword_100AE2818, &unk_100824690);
}

uint64_t sub_10050DDB4(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2818, &unk_100824690);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  *(*(*a2 + 16) + 120) = *a1;
  v7 = _s5StateOMa(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1004156F0();
  return sub_100007840(v6, &qword_100AE2818, &unk_100824690);
}

char *sub_10050DED0@<X0>(void (*a1)(char *, uint64_t)@<X1>, char *a2@<X2>, void *a3@<X3>, objc_class *a4@<X4>, objc_class *a5@<X5>, double *a6@<X6>, void *a7@<X7>, char **a8@<X8>, void *a9, char *a10)
{
  result = sub_10051B1EC(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  *a8 = result;
  a8[1] = v12;
  return result;
}

uint64_t sub_10050DF28()
{
  v0[9] = [objc_opt_self() standardUserDefaults];
  v0[10] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[11] = v2;
  v0[12] = v1;

  return _swift_task_switch(sub_10050DFD8, v2, v1);
}

uint64_t sub_10050DFD8()
{
  v1 = v0[9];
  v2 = v0[6];
  v0[2] = v2;
  sub_10079F804();
  swift_allocObject();
  v3 = v2;
  v4 = v1;
  v0[13] = sub_10079F7F4();
  v7 = (&async function pointer to dispatch thunk of BookThemeImportAndUpdateOperation.run() + async function pointer to dispatch thunk of BookThemeImportAndUpdateOperation.run());
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10050E0DC;

  return v7();
}

uint64_t sub_10050E0DC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_10050E29C;
  }

  else
  {
    v5 = sub_10050E218;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10050E218()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[7];
  v4 = v0[8];

  return _swift_task_switch(sub_1004AACB8, v3, v4);
}

uint64_t sub_10050E29C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return _swift_task_switch(sub_10050E324, v2, v3);
}

uint64_t sub_10050E324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050E388@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1001F1160(&qword_100AE8858, &qword_10082E650);
  sub_1007A19A4();
  sub_1007A19C4();
  sub_10000E3E8(a1, a1[3]);
  v8 = sub_10079EBD4();
  v34 = v9;
  v35 = v8;
  v33 = sub_1007A19B4();
  v36 = *(a3 + 16);
  if (qword_100AD18D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ReadingSettingsView(0);
  v11 = v10[11];
  *(a5 + v11) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  v12 = (a5 + v10[12]);
  type metadata accessor for ChromeStyle(0);
  sub_100027EF0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  *v12 = sub_10079C484();
  v12[1] = v13;
  v14 = v10[13];
  *(a5 + v14) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4C0, &qword_100813DC0);
  swift_storeEnumTagMultiPayload();
  v15 = v10[14];
  *(a5 + v15) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v10[15];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a5 + v10[16];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a5 + v10[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a5 + v10[18];
  sub_10079DFE4();
  *v19 = v39;
  *(v19 + 8) = *(&v39 + 1);
  v20 = (a5 + v10[19]);
  sub_10079DFE4();
  *v20 = v39;
  v21 = v10[20];
  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  [v23 orientation];

  type metadata accessor for UIDeviceOrientation(0);
  sub_10079DFE4();
  *(a5 + v21) = v39;
  v24 = v10[21];
  v25 = [v22 currentDevice];
  [v25 orientation];

  sub_10079DFE4();
  *(a5 + v24) = v39;
  sub_10079CF54();
  v26 = a5 + v10[24];
  sub_1001F1160(&unk_100AE3F30, qword_100826870);
  sub_10079DFE4();
  *v26 = v39;
  *(v26 + 8) = BYTE8(v39);
  *(v26 + 16) = v40;
  v27 = a5 + v10[25];
  sub_10079DFE4();
  *v27 = v39;
  *(v27 + 8) = BYTE8(v39);
  *(v27 + 16) = v40;
  sub_100009864(v41, a5);
  sub_1007A14E4();
  sub_100027EF0(&qword_100AE8860, &type metadata accessor for ReadingSettingsViewModel, &protocol conformance descriptor for ReadingSettingsViewModel);

  sub_10079E324();
  v28 = (a5 + v10[6]);
  *v28 = v35;
  v28[1] = v34;
  *(a5 + v10[7]) = v33 & 1;
  *(a5 + v10[8]) = a2 & 1;
  v29 = (a5 + v10[9]);
  type metadata accessor for OrientationLockHintViewModel(0);
  sub_100027EF0(&qword_100AD8CC8, type metadata accessor for OrientationLockHintViewModel, &protocol conformance descriptor for OrientationLockHintViewModel);
  v30 = v36;
  *v29 = sub_10079C024();
  v29[1] = v31;
  *(a5 + v10[10]) = a4;
  type metadata accessor for BrightnessController(0);
  sub_100027EF0(&qword_100AE4230, type metadata accessor for BrightnessController, &unk_100833480);

  sub_10079E324();

  return sub_1000074E0(v41);
}

double sub_10050E910(void *a1, uint64_t a2)
{
  v5 = sub_1007A1C54();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007A1CA4();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakAssign();
  *(*(a1[21] + 16) + 24) = &off_100A2BB30;
  swift_unknownObjectWeakAssign();
  v11 = a1[22];
  if (v11)
  {
    *(*(v11 + 16) + 24) = &off_100A2BB28;
    swift_unknownObjectWeakAssign();
  }

  *(*sub_10000E3E8(a1 + 23, a1[26]) + 24) = &off_100A2BB18;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectUnownedAssign();
  swift_weakAssign();
  swift_unknownObjectUnownedAssign();
  swift_weakAssign();
  sub_1006A2C38();
  swift_weakAssign();

  sub_1006A2E1C(a1);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v12 = sub_1007A2D74();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_10051C7CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A21698;
  v14 = _Block_copy(aBlock);

  v15 = v2;
  sub_1007A1C74();
  v20 = _swiftEmptyArrayStorage;
  sub_100027EF0(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v14);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);

  return result;
}

uint64_t sub_10050ED80(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10079BC44();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10079EF54();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAssetID];
  v11 = *&a1[OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAssetID + 8];
  v12 = swift_allocObject();
  swift_weakInit();

  sub_10060BDD8(v10, v11, sub_10051C7D8, v12, 150.0, 225.0);

  v13 = *(a3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService);
  v14 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v13 + v14, v33);
  sub_10000E3E8(v33, v33[3]);
  v15 = sub_10079EC04() & 1;
  if (v15 == a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages])
  {
    a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages] = v15;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v28 - 2) = a1;
    *(&v28 - 8) = v15;
    v32 = a1;
    sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  sub_1000074E0(v33);
  swift_getObjectType();
  v17 = sub_1007A0A54() & 1;
  if (v17 == a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages])
  {
    a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages] = v17;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    *(&v28 - 2) = a1;
    *(&v28 - 8) = v17;
    v33[0] = a1;
    sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A04();
  }

  swift_getObjectType();
  sub_1007A1344();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = sub_10079EE14();
    sub_1005787C0(v21);
    v22 = sub_10079EF24();
    sub_100579480(v22);
    v23 = sub_10079EE44();
    v24 = v28;
    v25 = &enum case for ColorScheme.dark(_:);
    if ((v23 & 1) == 0)
    {
      v25 = &enum case for ColorScheme.light(_:);
    }

    (*(v29 + 104))(v28, *v25, v30);
    sub_100579640(v24);
    sub_10044A40C(v9, v20, v26);
    sub_100697090(v9);
  }

  return (*(v7 + 8))(v9, v31);
}

uint64_t sub_10050F288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = a1;
  v30 = sub_1007A2D64();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A2CF4();
  __chkstk_darwin(v8);
  v9 = sub_1007A1CA4();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for BookActionMenuDataSource();
  v39[3] = v10;
  v39[4] = &off_100A19810;
  v39[0] = a2;
  type metadata accessor for REActionMenuState(0);
  v11 = swift_allocObject();
  v12 = sub_10022569C(v39, v10);
  v13 = __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v38[3] = v10;
  v38[4] = &off_100A19810;
  v38[0] = v17;
  *(v11 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 72) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for EdgeInsetPublisher(0);
  v18 = swift_allocObject();
  v19 = *&UIEdgeInsetsZero.bottom;
  v36 = *&UIEdgeInsetsZero.top;
  v37 = v19;
  type metadata accessor for UIEdgeInsets(0);
  sub_10079B964();
  *(v11 + 120) = v18;
  *(v11 + 136) = 0;
  *(v11 + 144) = [objc_allocWithZone(type metadata accessor for ScrubberMarkerController()) init];
  swift_unknownObjectWeakInit();
  *(v11 + 184) = 0;
  swift_unknownObjectWeakInit();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  sub_1007A1C84();
  *&v36 = _swiftEmptyArrayStorage;
  sub_100027EF0(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20, &qword_100824350);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20, &qword_100824350, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  (*(v29 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *(v11 + 192) = sub_1007A2DA4();
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_1001F1160(&unk_100AD1E30, &unk_10080B7F0);
  swift_allocObject();
  *(v11 + 200) = sub_10079B924();
  v36 = 0uLL;
  sub_1001F1160(&unk_100AF28B0, &qword_10082E7D0);
  swift_allocObject();
  *(v11 + 208) = sub_10079B924();
  *(v11 + 216) = 1;
  *(v11 + 224) = 0;
  *(v11 + 232) = 0;
  *(v11 + 240) = 0;
  *(v11 + 248) = -64;
  *(v11 + 256) = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 280) = 258;
  LOBYTE(v36) = 1;
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  swift_allocObject();
  *(v11 + 288) = sub_10079B924();
  *(v11 + 296) = 0;
  *(v11 + 298) = 0;
  *(v11 + 304) = 0;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0;
  *(v11 + 328) = 0x8000000000000000;
  *(v11 + 336) = &_swiftEmptySetSingleton;
  *(v11 + 344) = 0x3F847AE147AE147BLL;
  *(v11 + 352) = 0;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  type metadata accessor for GatedActionHandler();
  v20 = swift_allocObject();
  v20[3] = 0;
  swift_unknownObjectWeakInit();
  v20[5] = 0;
  v20[3] = &off_100A2BBB8;
  v20[4] = variable initialization expression of SearchBar.Coordinator.isEditing;
  v21 = v31;
  swift_unknownObjectWeakAssign();

  *(v11 + 16) = v20;
  *(v11 + 24) = &off_100A16500;
  sub_100009864(v38, v11 + 80);
  v22 = v33;
  *(v11 + 152) = v32;
  *(v11 + 128) = v22;
  v23 = v34;
  swift_unknownObjectWeakAssign();

  v24 = sub_1007A2214();
  v25 = v35;
  LOBYTE(v18) = [v35 BOOLForKey:v24];

  sub_1000074E0(v38);
  *(v11 + 168) = v18;
  v26 = swift_allocObject();
  swift_weakInit();
  v20[4] = sub_10051C914;
  v20[5] = v26;

  sub_1000074E0(v39);
  return v11;
}

uint64_t sub_10050F924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v85) = a3;
  v5 = type metadata accessor for State(0);
  __chkstk_darwin(v5 - 8);
  v111 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1007A2E74();
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1001F1160(&qword_100AE8888, &qword_10082E7D8);
  __chkstk_darwin(v109);
  v102 = v72 - v8;
  v97 = sub_1001F1160(&qword_100AE8890, &qword_10082E7E0);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v72 - v9;
  v103 = sub_1001F1160(&qword_100AE8898, &qword_10082E7E8);
  __chkstk_darwin(v103);
  v96 = v72 - v10;
  v104 = sub_1001F1160(&qword_100AE88A0, &qword_10082E7F0);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v72 - v11;
  v108 = sub_1001F1160(&qword_100AE88A8, &qword_10082E7F8);
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v100 = v72 - v12;
  v13 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v13 - 8);
  v118 = v72 - v14;
  v82 = sub_1001F1160(&unk_100AE6AA0, &unk_10082AB70);
  v120 = *(v82 - 8);
  __chkstk_darwin(v82);
  v114 = v72 - v15;
  v83 = sub_1001F1160(&qword_100AE88B0, &unk_10083DFF0);
  v122 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = v72 - v16;
  v115 = sub_1001F1160(&qword_100AF26D0, &qword_10082E800);
  v121 = *(v115 - 1);
  __chkstk_darwin(v115);
  v81 = v72 - v17;
  v91 = sub_1001F1160(&qword_100AE88B8, &qword_10082E808);
  __chkstk_darwin(v91);
  v86 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v72 - v20;
  v89 = sub_1001F1160(&qword_100AE88C0, &qword_10082E810);
  __chkstk_darwin(v89);
  v112 = v72 - v21;
  v87 = sub_1001F1160(&qword_100AE88C8, &qword_10082E818);
  __chkstk_darwin(v87);
  v79 = v72 - v22;
  v90 = sub_1001F1160(&qword_100AE88D0, &qword_10082E820);
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = v72 - v23;
  v93 = sub_1001F1160(&qword_100AE88D8, &qword_10082E828);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = v72 - v24;
  *(a4 + 16) = 0;
  LOBYTE(v123) = 0;
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  swift_allocObject();
  *(a4 + 32) = sub_10079B924();
  *(a4 + 40) = 0;
  *(a4 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 88) = &_swiftEmptySetSingleton;
  v117 = a4 + 88;
  type metadata accessor for BookOrientationTracker(0);
  swift_allocObject();
  *(a4 + 48) = sub_100435DDC();
  v119 = objc_opt_self();
  v25 = [v119 standardUserDefaults];
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001008D4D40;
  *(inited + 48) = 0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0x80000001008D4D60;
  *(inited + 96) = 0;
  sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  isa = sub_1007A2024().super.isa;

  [v25 registerDefaults:isa];

  type metadata accessor for BookReaderChromeController(0);
  swift_allocObject();
  *(a4 + 24) = sub_100444E04(v85);
  *(a4 + 104) = &protocol witness table for ReadingSettingsManager;
  swift_unknownObjectUnownedInit();
  *(a4 + 120) = &protocol witness table for BookLayoutModeManager;
  swift_unknownObjectUnownedInit();
  v113 = a4;
  sub_100436FB8();
  sub_1007A0EF4();
  v123 = sub_1007A1394();
  v85 = sub_1001F1160(&unk_100AEB8B0, &unk_10083DD40);
  v78 = sub_100005920(&unk_100AF25D0, &unk_100AEB8B0, &unk_10083DD40, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079B9E4();

  sub_10079F4C4();
  v123 = sub_10079F504();
  v77 = sub_1001F1160(&unk_100AEA1A0, &unk_10082E830);
  v76 = sub_100005920(&qword_100AF2900, &unk_100AEA1A0, &unk_10082E830, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079B9E4();

  swift_beginAccess();
  v75 = sub_1001F1160(&qword_100AE3CD0, &qword_1008261E8);
  v28 = v114;
  sub_10079B974();
  swift_endAccess();
  swift_getKeyPath();
  v74 = sub_100005920(&unk_100AE6AB0, &unk_100AE6AA0, &unk_10082AB70, &protocol conformance descriptor for Published<A>.Publisher);
  v29 = v80;
  v30 = v82;
  sub_10079BA64();

  v31 = *(v120 + 8);
  v120 += 8;
  v73 = v31;
  v31(v28, v30);
  v72[1] = sub_100005920(&qword_100AE88E0, &qword_100AE88B0, &unk_10083DFF0, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v32 = v81;
  v33 = v83;
  sub_10079BAF4();
  v34 = *(v122 + 8);
  v122 += 8;
  v34(v29, v33);
  v35 = sub_100005920(&unk_100AF2940, &qword_100AF26D0, &qword_10082E800, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v36 = v115;
  sub_10079B9E4();
  v37 = *(v121 + 8);
  v121 += 8;
  v37(v32, v36);
  swift_beginAccess();
  v38 = v114;
  sub_10079B974();
  swift_endAccess();
  swift_getKeyPath();
  sub_10079BA64();

  v73(v38, v30);
  sub_10079BAF4();
  v34(v29, v33);
  v39 = v115;
  sub_10079B9E4();
  v37(v32, v39);
  v123 = v85;
  v124 = v78;
  swift_getOpaqueTypeConformance2();
  v123 = v77;
  v124 = v76;
  swift_getOpaqueTypeConformance2();
  v123 = v39;
  v124 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v84;
  sub_10079B804();
  v114 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v41 = sub_1007A2D74();
  v123 = v41;
  v121 = sub_1007A2D24();
  v42 = *(v121 - 8);
  v120 = *(v42 + 56);
  v122 = v42 + 56;
  v43 = v118;
  (v120)(v118, 1, 1, v121);
  sub_100005920(&qword_100AE88E8, &qword_100AE88D0, &qword_10082E820, &protocol conformance descriptor for Publishers.Merge4<A, B, C, D>);
  v116 = sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v44 = v88;
  v45 = v90;
  sub_10079BAB4();
  sub_100007840(v43, &qword_100AD7EB0, &qword_10080EFD0);
  (*(v92 + 8))(v40, v45);

  v46 = swift_allocObject();
  v47 = v113;
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10051C91C;
  *(v48 + 24) = v46;
  v115 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&qword_100AE88F0, &qword_100AE88D8, &qword_10082E828, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v49 = v93;
  sub_10079BB04();

  (*(v94 + 8))(v44, v49);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v50 = [v119 standardUserDefaults];
  swift_getKeyPath();
  v51 = v95;
  sub_1007968C4();

  v52 = sub_100005920(&qword_100AE88F8, &qword_100AE8890, &qword_10082E7E0, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
  v53 = v97;
  sub_10079B9E4();
  v54 = v51;
  v55 = v53;
  (*(v98 + 8))(v54, v53);
  v56 = [objc_opt_self() defaultCenter];
  v57 = v101;
  sub_1007A2E84();

  v58 = sub_100027EF0(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v59 = v106;
  sub_10079B9E4();
  (*(v107 + 8))(v57, v59);
  v123 = v55;
  v124 = v52;
  swift_getOpaqueTypeConformance2();
  v123 = v59;
  v124 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v99;
  sub_10079B7F4();
  v61 = sub_1007A2D74();
  v123 = v61;
  v62 = v118;
  (v120)(v118, 1, 1, v121);
  sub_100005920(&qword_100AE8900, &qword_100AE88A0, &qword_10082E7F0, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v63 = v100;
  v64 = v104;
  sub_10079BAB4();
  sub_100007840(v62, &qword_100AD7EB0, &qword_10080EFD0);
  (*(v105 + 8))(v60, v64);

  swift_allocObject();
  swift_weakInit();

  sub_100005920(&qword_100AE8908, &qword_100AE88A8, &qword_10082E7F8, v115);
  v65 = v108;
  sub_10079BB04();

  (*(v110 + 8))(v63, v65);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v66 = *(v47 + 24);
  v67 = [v119 standardUserDefaults];
  LOBYTE(v65) = [v67 readerShowStatusBar];

  v68 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  v69 = v66 + v68;
  v70 = v111;
  sub_10051C938(v69, v111, type metadata accessor for State);
  *(v70 + 1) = v65;
  sub_100444C5C(v70);
  return v47;
}

double sub_100510F38(uint64_t a1, void *a2)
{
  v89 = a1;
  v3 = sub_1001F1160(&qword_100AE8910, &qword_10082E8C0);
  v4 = *(v3 - 8);
  v104 = v3;
  v105 = v4;
  __chkstk_darwin(v3);
  v103 = v71 - v5;
  v6 = sub_1001F1160(&qword_100AE8918, &qword_10082E8C8);
  v7 = *(v6 - 8);
  v99 = v6;
  v100 = v7;
  __chkstk_darwin(v6);
  v97 = v71 - v8;
  v9 = sub_1001F1160(&qword_100AE8920, &qword_10082E8D0);
  v10 = *(v9 - 8);
  v101 = v9;
  v102 = v10;
  __chkstk_darwin(v9);
  v98 = v71 - v11;
  v91 = sub_1001F1160(&qword_100AE8928, &qword_10082E8D8);
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = v71 - v12;
  v92 = sub_1001F1160(&qword_100AE8930, &qword_10082E8E0);
  v94 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = v71 - v13;
  v14 = sub_1001F1160(&qword_100AE8938, &qword_10082E8E8);
  v15 = *(v14 - 8);
  v95 = v14;
  v96 = v15;
  __chkstk_darwin(v14);
  v90 = v71 - v16;
  v85 = sub_1001F1160(&qword_100ADD120, &unk_10081C750);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = v71 - v17;
  v18 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v18 - 8);
  v79 = v71 - v19;
  v80 = sub_1001F1160(&qword_100AE99A0, &unk_10082FFA0);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = v71 - v20;
  v82 = sub_1001F1160(&qword_100AE8940, &qword_10082E8F0);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = v71 - v21;
  v73 = sub_1001F1160(&qword_100AE8948, &qword_10082E8F8);
  v74 = *(v73 - 1);
  __chkstk_darwin(v73);
  v72 = v71 - v22;
  v23 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v71 - v25;
  swift_getObjectType();
  sub_10079F9B4();
  swift_allocObject();
  swift_weakInit();
  v76 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10079BB04();

  (*(v24 + 8))(v26, v23);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v106 = a2[21];
  v27 = OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider;
  type metadata accessor for CurrentLocationProvider(0);
  sub_100027EF0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  v28 = sub_1007A0554();

  v108 = v28;
  swift_allocObject();
  swift_weakInit();
  sub_1001F1160(&qword_100AE6460, &qword_10082A148);
  v75 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AEB880, &qword_100AE6460, &qword_10082A148, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v71[1] = v27;

  v29 = sub_1007A05D4();

  v107 = v29;

  v30 = sub_1007A05E4();
  v32 = v31;

  v108 = v30;
  v109 = v32;
  v33 = sub_1001F1160(&qword_100AF28C0, &unk_10082E900);
  v34 = sub_100005920(&qword_100AE8950, &qword_100AF28C0, &unk_10082E900, &protocol conformance descriptor for AnyPublisher<A, B>);
  v35 = v72;
  sub_10079BA04();

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10051C9B0;
  *(v37 + 24) = v36;
  v108 = v33;
  v109 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v73;
  sub_10079BB04();

  (*(v74 + 8))(v35, v38);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v39 = sub_1007A05D4();

  v108 = v39;
  swift_allocObject();
  swift_weakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getObjectType();
  v40 = v77;
  sub_1007A14F4();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v41 = sub_1007A2D74();
  v108 = v41;
  v42 = sub_1007A2D24();
  v43 = *(v42 - 8);
  v73 = *(v43 + 56);
  v74 = v43 + 56;
  v44 = v79;
  (v73)(v79, 1, 1, v42);
  sub_100005920(&qword_100AE8958, &qword_100AE99A0, &unk_10082FFA0, v76);
  v106 = sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v45 = v78;
  v46 = v80;
  sub_10079BAB4();
  v47 = v44;
  sub_100007840(v44, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v81 + 8))(v40, v46);
  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AE8960, &qword_100AE8940, &qword_10082E8F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v82;
  sub_10079BB04();

  (*(v83 + 8))(v45, v48);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getObjectType();
  v108 = sub_1007A0A64();
  v49 = sub_1007A2D74();
  v107 = v49;
  (v73)(v47, 1, 1, v42);
  sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  v50 = v75;
  sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, v75);
  v51 = v84;
  sub_10079BAB4();
  sub_100007840(v47, &qword_100AD7EB0, &qword_10080EFD0);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&unk_100AF27E0, &qword_100ADD120, &unk_10081C750, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v52 = v85;
  sub_10079BB04();

  (*(v86 + 8))(v51, v52);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v53 = v89;
  v108 = *(v89 + 264);
  sub_1001F1160(&qword_100ADED00, &qword_10081ED70);
  sub_100005920(&qword_100ADED08, &qword_100ADED00, &qword_10081ED70, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v107 = sub_10079BA14();
  sub_1001F1160(&qword_100AE8968, &qword_10082E910);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10080B690;
  swift_beginAccess();
  v55 = *(v53 + 88);
  *(v54 + 32) = v55;
  *(v54 + 40) = &protocol witness table for UITraitCollection;
  v56 = v55;
  sub_1001F1160(&qword_100AE8970, &qword_10082E918);
  sub_100005920(&qword_100AE8978, &qword_100AE8970, &qword_10082E918, v50);
  v57 = v87;
  sub_10079BAA4();

  swift_getKeyPath();
  sub_100005920(&qword_100AE8980, &qword_100AE8928, &qword_10082E8D8, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v58 = v88;
  v59 = v91;
  sub_10079BA64();

  (*(v93 + 8))(v57, v59);
  sub_100005920(&qword_100AE8988, &qword_100AE8930, &qword_10082E8E0, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v60 = v90;
  v61 = v92;
  sub_10079BAF4();
  (*(v94 + 8))(v58, v61);
  swift_getKeyPath();
  v107 = a2[22];
  v62 = v107;
  sub_100005920(&qword_100AE8990, &qword_100AE8938, &qword_10082E8E8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  swift_retain_n();
  v63 = v95;
  sub_10079BB14();

  (*(v96 + 8))(v60, v63);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v107 = *(v53 + 48);
  sub_1001F1160(&qword_100ADECD8, &qword_10082E970);
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8, &qword_10082E970, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v107 = sub_10079BA14();
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE8998, &qword_10082E9A0);
  sub_100005920(&qword_100AF2800, &qword_100AE8998, &qword_10082E9A0, v50);
  v64 = v97;
  sub_10079BA64();

  sub_100005920(&qword_100AE89A0, &qword_100AE8918, &qword_10082E8C8, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_1004CEFC0();
  v66 = v98;
  v65 = v99;
  sub_10079BAF4();
  (*(v100 + 8))(v64, v65);
  swift_getKeyPath();
  v107 = v62;
  sub_100005920(&qword_100AE89A8, &qword_100AE8920, &qword_10082E8D0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v67 = v101;
  sub_10079BB14();

  (*(v102 + 8))(v66, v67);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  type metadata accessor for BookReaderDataManager();
  v107 = sub_1005B6CF4();
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE63E8, &qword_10082A0C0);
  sub_100005920(&qword_100AE63F0, &qword_100AE63E8, &qword_10082A0C0, v50);
  v68 = v103;
  sub_10079BA64();

  swift_getKeyPath();
  v107 = v62;
  sub_100005920(&qword_100AE89B0, &qword_100AE8910, &qword_10082E8C0, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v69 = v104;
  sub_10079BB14();

  (*(v105 + 8))(v68, v69);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

void sub_1005124DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1001F1160(&qword_100ADD128, &qword_10081C760);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v19 = &v17 - v8;
  type metadata accessor for AnnotationProviderService(0);
  sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService, &protocol conformance descriptor for AnnotationProviderService);
  sub_1007A0894();
  v9 = sub_10079F284();
  v10 = sub_10079F294();
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
  }

  else
  {
    v17 = v7;
    v18 = v6;
    if (*(a2 + 136) == v11)
    {

      *(a2 + 136) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v17 - 2) = a2;
      *(&v17 - 1) = v11;
      v20 = a2;
      sub_100027EF0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
      sub_100797A04();
    }

    v20 = sub_1007A08D4();
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v13 = sub_1007A2D74();
    v21 = v13;
    v14 = sub_1007A2D24();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_1001F1160(&qword_100ADD130, &qword_10081C768);
    sub_100005920(&qword_100ADD138, &qword_100ADD130, &qword_10081C768, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v15 = v19;
    sub_10079BAB4();
    sub_100007840(v5, &qword_100AD7EB0, &qword_10080EFD0);

    swift_allocObject();
    swift_weakInit();
    sub_100005920(&qword_100ADD140, &qword_100ADD128, &qword_10081C760, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v16 = v18;
    sub_10079BB04();

    (*(v17 + 8))(v15, v16);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();
  }
}

unint64_t sub_100512978(void *a1, char *a2, void *a3, _BYTE *a4)
{
  v8 = sub_100796BB4();
  __chkstk_darwin(v8 - 8);
  v47 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v10 - 8);
  v12 = v45 - v11;
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC] = 0;
  v13 = &a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
  *v13 = 0;
  v13[1] = 0;
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationMOC] = a1;
  v14 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(&a2[v14], &a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity]);
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationModifier] = a3;
  a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookInstanceHasClosed] = 0;
  sub_100009864(&a2[v14], v51);
  sub_10000E3E8(v51, v52);
  v48 = a1;
  v46 = a3;
  sub_10079EC34();
  sub_100009864(&a2[v14], v50);
  sub_10000E3E8(v50, v50[3]);
  sub_10079EC34();
  sub_10079FD04();
  sub_1000074E0(v50);
  v15 = sub_10079FD44();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_100796A84();
  sub_1007A1154();
  swift_allocObject();
  v16 = sub_1007A1144();
  sub_1000074E0(v51);
  swift_beginAccess();
  v50[0] = v16;

  sub_10079B964();
  swift_endAccess();
  *v13 = 0;
  v13[1] = 0;

  v17 = type metadata accessor for CurrentLocationPersistenceService(0);
  v49.receiver = a4;
  v49.super_class = v17;
  v18 = objc_msgSendSuper2(&v49, "init");
  v19 = objc_allocWithZone(NSFetchRequest);
  v20 = v18;
  v21 = sub_1007A2214();
  v22 = [v19 initWithEntityName:v21];

  v23 = objc_opt_self();
  v45[1] = v14;
  sub_100009864(&a2[v14], v51);
  sub_10000E3E8(v51, v52);
  sub_10079ECA4();
  v24 = sub_1007A2214();

  sub_1000074E0(v51);
  v25 = [v23 predicateForGlobalAnnotationWithAssetID:v24];

  [v22 setPredicate:v25];
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100811390;
  v27 = objc_allocWithZone(NSSortDescriptor);
  v28 = v48;
  v29 = sub_1007A2214();
  v30 = [v27 initWithKey:v29 ascending:0];

  *(v26 + 32) = v30;
  sub_10000A7C4(0, &unk_100AE9A50, NSSortDescriptor_ptr);
  isa = sub_1007A25D4().super.isa;

  [v22 setSortDescriptors:isa];

  [v22 setFetchLimit:1];
  sub_10000A7C4(0, &qword_100AECB40, AEAnnotation_ptr);
  result = sub_1007A2F34();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return v20;
  }

  v43 = result;
  v44 = sub_1007A38D4();
  result = v43;
  if (!v44)
  {
    goto LABEL_8;
  }

LABEL_3:
  v47 = v16;
  if ((result & 0xC000000000000001) != 0)
  {
    v33 = v20;
    v34 = sub_1007A3784();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = v20;
    v34 = *(result + 32);
LABEL_6:
    v35 = v34;

    v36 = sub_100550AF0();
    swift_getKeyPath();
    swift_getKeyPath();
    v51[0] = v36;
    v37 = v33;
    v38 = v33;
    v20 = v37;
    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v51);

    v39 = sub_1007A02F4();
    v41 = v40;

    v42 = &v38[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
    *v42 = v39;
    v42[1] = v41;

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100513270(void *a1, void *a2, uint64_t (**a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a4;
  v42 = a1;
  v40 = sub_1001F1160(&qword_100AE89C8, &qword_10082EA88);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - v15;
  v35 = sub_10079F844();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10079F7E4();
  __chkstk_darwin(v17 - 8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *(a9 + 96) = UIEdgeInsetsZero.top;
  *(a9 + 104) = left;
  *(a9 + 112) = bottom;
  *(a9 + 120) = right;
  *(a9 + 240) = 0;
  *(a9 + 336) = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 336) = a3;
  *(a9 + 344) = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  *(a9 + 88) = [a2 traitCollection];
  *(a9 + 152) = &type metadata for BookReaderLayoutController.ActionButtonLayout;
  *(a9 + 160) = sub_10051CA14();
  [a2 safeAreaInsets];
  *(a9 + 168) = v21;
  *(a9 + 176) = v22;
  *(a9 + 184) = v23;
  *(a9 + 192) = v24;
  *(a9 + 296) = a5;
  *(a9 + 304) = a6;
  *(a9 + 312) = a7;
  *(a9 + 320) = a8;
  v38 = sub_10079F4C4();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(a9 + 288) = sub_10079F4F4();
  sub_1001F1160(&qword_100ADECF0, &unk_10082EA90);
  swift_allocObject();
  *(a9 + 256) = sub_10079B8D4();
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 208) = UIEdgeInsetsZero.top;
  *(a9 + 216) = left;
  *(a9 + 224) = bottom;
  *(a9 + 232) = right;
  v48 = 0u;
  v49 = 0u;
  sub_1001F1160(&qword_100ADECD8, &qword_10082E970);
  swift_allocObject();
  *(a9 + 48) = sub_10079B924();
  swift_beginAccess();
  v25 = *(a9 + 184);
  v48 = *(a9 + 168);
  v49 = v25;
  sub_1001F1160(&qword_100ADECC8, &unk_10081ED50);
  swift_allocObject();
  *(a9 + 200) = sub_10079B924();
  sub_1001F1160(&qword_100ADED00, &qword_10081ED70);
  swift_allocObject();
  *(a9 + 264) = sub_10079B8D4();
  v26 = [a2 traitCollection];
  sub_10079F7C4();
  sub_1001F1160(&qword_100ADED10, &qword_10081ED78);
  swift_allocObject();
  *(a9 + 272) = sub_10079B924();
  sub_1001F1160(&qword_100ADECE0, &unk_10081ED60);
  swift_allocObject();
  *(a9 + 248) = sub_10079B8D4();
  (*(v34 + 104))(v33, enum case for BookContentApplicationForegroundState.unknown(_:), v35);
  sub_1001F1160(&qword_100ADED20, &qword_10081ED88);
  swift_allocObject();
  *(a9 + 280) = sub_10079B924();
  memset(v46, 0, sizeof(v46));
  v47 = 1;
  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  sub_10038873C(v46, &v48);
  v45 = *(a9 + 48);
  swift_unownedRetainStrong();

  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8, &qword_10082E970, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v27 = ObjectType;
  v35 = a3[1](ObjectType, a3);
  v45 = v35;
  v44 = a3[2](v27, a3);
  v43 = a3[3](v27, a3);
  ObjectType = sub_1001F1160(&qword_100AE8998, &qword_10082E9A0);
  v34 = sub_1001F1160(&qword_100ADC880, qword_10082E4C0);
  sub_1001F1160(&qword_100AE89D8, &unk_10082EAA0);
  sub_100005920(&qword_100AF2800, &qword_100AE8998, &qword_10082E9A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100ADC888, &qword_100ADC880, qword_10082E4C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100AE89E0, &qword_100AE89D8, &unk_10082EAA0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v28 = v39;
  sub_10079BA34();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = a9;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10051CA70;
  *(v30 + 24) = v29;
  sub_100005920(&qword_100AE89E8, &qword_100AE89C8, &qword_10082EA88, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v31 = v40;
  sub_10079BB04();

  (*(v41 + 8))(v28, v31);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v45 = sub_10079F504();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_1001F1160(&unk_100AEA1A0, &unk_10082E830);
  sub_100005920(&qword_100AF2900, &unk_100AEA1A0, &unk_10082E830, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1000074E0(v42);
  return a9;
}

void sub_100513BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v9 = OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationsChangeSubject;
  sub_1001F1160(&qword_100AD20A8, &unk_10080B870);
  swift_allocObject();
  *&a6[v9] = sub_10079B8D4();
  v10 = OBJC_IVAR____TtC5Books25AnnotationProviderService_bookmarkChangeSubject;
  sub_1001F1160(&qword_100AD20B0, &qword_100833D70);
  swift_allocObject();
  *&a6[v10] = sub_10079B8D4();
  v11 = OBJC_IVAR____TtC5Books25AnnotationProviderService_highlightChangeSubject;
  sub_1001F1160(&qword_100AD20B8, &unk_10080B880);
  swift_allocObject();
  *&a6[v11] = sub_10079B8D4();
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  v13 = OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity;
  sub_100009864(a2 + v12, &a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity]);
  *&a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier] = a3;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v14 = objc_opt_self();
  swift_unknownObjectRetain();
  v15 = [v14 standardUserDefaults];
  v16 = sub_1007A2214();
  v17 = [v15 BOOLForKey:v16];

  v18 = sub_1007A2214();
  v19 = [v15 integerForKey:v18];

  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v19 <= 0x7FFFFFFF)
  {
    if (v19 <= 2)
    {
      switch(v19)
      {
        case 0:
          if (v17)
          {
            v20 = 5;
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_20;
        case 1:
          v20 = 1;
          goto LABEL_20;
        case 2:
          v20 = 2;
          goto LABEL_20;
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        v20 = 4;
        goto LABEL_20;
      }

      if (v19 == 6)
      {
        v20 = 5;
        goto LABEL_20;
      }
    }

    else if (v19 != 3)
    {
      v20 = 3;
LABEL_20:
      a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle] = v20;
      sub_100009864(&a6[v13], v26);
      sub_10000E3E8(v26, v26[3]);
      sub_10079ECA4();
      sub_10079F2D4();
      swift_allocObject();
      v21 = sub_10079F2C4();
      sub_1000074E0(v26);
      swift_beginAccess();
      v25 = v21;
      sub_10079B964();
      swift_endAccess();
      sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0xD000000000000017;
      *(inited + 40) = 0x80000001008DAB50;
      *(inited + 48) = 3;
      *(inited + 72) = &type metadata for Int32;
      *(inited + 80) = 0xD000000000000017;
      *(inited + 88) = 0x80000001008DAB30;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 0;
      sub_100019158(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
      swift_arrayDestroy();
      isa = sub_1007A2024().super.isa;

      [v15 registerDefaults:isa];

      v24.receiver = a6;
      v24.super_class = type metadata accessor for AnnotationProviderService(0);
      objc_msgSendSuper2(&v24, "init");

      return;
    }

    v20 = 0;
    goto LABEL_20;
  }

  __break(1u);
}

char *sub_100514094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v34 = a2;
  v10 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  v13 = sub_1007A18D4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v40[3] = sub_1007A17F4();
  v40[4] = &protocol witness table for NavigationHistoryController;
  v40[0] = a4;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_cancellables] = &_swiftEmptySetSingleton;
  v17 = OBJC_IVAR____TtC5Books25CurrentLocationController_cfiUpdatesByOrdinal;
  *&a5[v17] = sub_1001EED04(_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtC5Books25CurrentLocationController_storedUpdate;
  v19 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  a5[OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate] = 0;
  v20 = &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_sendTimer];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  sub_1007A33F4();
  v21 = &a5[OBJC_IVAR____TtC5Books25CurrentLocationController____lazy_storage___largestDocumentIndex];
  *v21 = 0;
  v21[8] = 1;
  a5[OBJC_IVAR____TtC5Books25CurrentLocationController_started] = 0;
  sub_100009864(a1, &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity]);
  v22 = sub_1007A1C14();
  v33 = v22;
  v23 = *(v22 - 8);
  (*(v23 + 16))(v16, a2, v22);
  (*(v23 + 56))(v16, 0, 1, v22);
  sub_10000E3E8(a1, a1[3]);
  v24 = sub_10079EC34();
  type metadata accessor for CurrentLocationProvider(0);
  swift_allocObject();
  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider] = sub_100235374(v16, v24);
  v25 = &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_paginationProvider];
  *v25 = a3;
  v25[1] = &protocol witness table for PaginatingService;
  sub_10000E3E8(a1, a1[3]);

  a5[OBJC_IVAR____TtC5Books25CurrentLocationController_pageProgressDirection] = sub_10079EC44() & 1;
  sub_100009864(v40, &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_historyController]);
  sub_1007A18C4();
  sub_100027EF0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);
  sub_1007A1104();
  swift_allocObject();

  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_locationHistoryObserver] = sub_1007A10E4();
  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_cfiByOrdinal] = sub_1001EEEE0(_swiftEmptyArrayStorage);
  v26 = type metadata accessor for CurrentLocationController(0);
  v39.receiver = a5;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  sub_100709414();

  v28 = sub_1007A10F4();

  v38 = v28;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1001F1160(&qword_100AE89B8, &qword_10082EA30);
  sub_100005920(&qword_100AE89C0, &qword_100AE89B8, &qword_10082EA30, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1007A0664();
  v29 = v35;
  sub_10079F9B4();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, &protocol conformance descriptor for Published<A>.Publisher);
  v30 = v36;
  sub_10079BB04();

  (*(v37 + 8))(v29, v30);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  (*(v23 + 8))(v34, v33);
  sub_1000074E0(v40);
  sub_1000074E0(a1);
  return v27;
}

void *sub_100514778(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1001F1160(&qword_100AE3540, &unk_100825880);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  __chkstk_darwin(v8);
  v34 = &v29 - v10;
  v11 = sub_1001F1160(&qword_100AE3538, &qword_100825878);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = sub_1001F1160(&qword_100AE8868, &unk_10082E790);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  __chkstk_darwin(v15);
  v29 = &v29 - v17;
  a4[5] = 0;
  swift_unknownObjectWeakInit();
  a4[6] = &_swiftEmptySetSingleton;
  a4[7] = 0;
  a4[2] = a1;
  a4[5] = &protocol witness table for BookReaderStateManager;
  swift_unknownObjectWeakAssign();
  a4[3] = a3;
  type metadata accessor for BookReaderStateManager();
  v18 = a1;
  v19 = a3;
  v20 = a2;
  v37[0] = BookReaderStateManager.isOrientationLockedPublisher.getter();
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();

  sub_1001F1160(&qword_100AE31A0, &qword_1008256D0);
  sub_10079B974();
  swift_endAccess();

  sub_100005920(&qword_100AE8870, &qword_100AE3538, &qword_100825878, &protocol conformance descriptor for Published<A>.Publisher);
  v22 = v29;
  v21 = v30;
  sub_10079BAD4();
  (*(v31 + 8))(v14, v21);
  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AE8878, &qword_100AE8868, &unk_10082E790, &protocol conformance descriptor for Publishers.Drop<A>);
  v23 = v32;
  sub_10079BB04();

  (*(v33 + 8))(v22, v23);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();

  sub_1001F1160(&qword_100ADEA18, &qword_10081E7B0);
  v24 = v34;
  sub_10079B974();
  swift_endAccess();

  v25 = swift_allocObject();
  swift_weakInit();

  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v20;
  v26[4] = &protocol witness table for BookReaderStateManager;
  sub_100005920(&qword_100AE8880, &qword_100AE3540, &unk_100825880, &protocol conformance descriptor for Published<A>.Publisher);

  v27 = v35;
  sub_10079BB04();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v37[3] = type metadata accessor for OrientationLockHintController();
  v37[0] = a4;

  sub_1007A2B14();
  sub_1000074E0(v37);
  return a4;
}

id sub_100514DD8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService, &protocol conformance descriptor for AnnotationProviderService);
  swift_unknownObjectWeakInit();
  v5 = &a3[OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_annotationProviderService];
  *&a3[OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_currentTheme;
  v7 = sub_10079EF54();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *&a3[OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor] = 0;
  swift_unknownObjectWeakAssign();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  v9.receiver = a3;
  v9.super_class = type metadata accessor for BookReaderHighlightEditorController(0);
  return objc_msgSendSuper2(&v9, "init");
}

void sub_100514F14(void (*a1)(char *, uint64_t), uint64_t a2, char *a3, uint64_t a4, char *a5, void *a6, void *a7, char *a8, uint64_t a9, void *a10, objc_class *a11, void *a12, void *a13, uint64_t a14, char *a15, char *a16, objc_class *a17, void *a18, uint64_t a19, void *a20, char *a21, uint64_t a22, char *a23, objc_class *a24, char *a25, char **a26, void *a27, _UNKNOWN **a28)
{
  v606 = a8;
  v571 = a7;
  v609 = a6;
  v618 = a5;
  v617 = a4;
  v585 = a3;
  v587 = a1;
  v594 = a28;
  v613 = a27;
  v610 = a26;
  v601 = a13;
  v605 = a21;
  v615 = a19;
  v604 = a20;
  v619 = a11;
  v29 = sub_1007A1D04();
  v522 = *(v29 - 8);
  v523 = v29;
  __chkstk_darwin(v29);
  v521 = (v518 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_100796CD4();
  v556 = *(v31 - 8);
  v557 = v31;
  __chkstk_darwin(v31);
  v555 = v518 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = sub_1007967F4();
  v599 = *(v593 - 1);
  __chkstk_darwin(v593);
  v554 = (v518 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v576 = sub_100796CF4();
  v608 = *(v576 - 8);
  __chkstk_darwin(v576);
  v552 = v518 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v553 = v518 - v36;
  v551 = sub_1007A21D4();
  v607 = *(v551 - 8);
  __chkstk_darwin(v551);
  v575 = v518 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v550 = v518 - v39;
  v40 = sub_100796814();
  __chkstk_darwin(v40 - 8);
  *&v592 = v518 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v567 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v567);
  v548 = v518 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v549 = v518 - v44;
  v547 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v547);
  v546 = v518 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v545 = v518 - v47;
  v563 = sub_1001F1160(&qword_100AE76A0, qword_10082BFB0);
  v561 = *(v563 - 1);
  __chkstk_darwin(v563);
  v558 = v518 - v48;
  v49 = sub_1001F1160(&qword_100AF4290, &unk_10082E420);
  __chkstk_darwin(v49 - 8);
  v542 = v518 - v50;
  v51 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v578 = *(v51 - 8);
  v579 = v51;
  __chkstk_darwin(v51);
  v577 = v518 - v52;
  v560 = sub_1001F1160(&unk_100AE8768, &unk_10082E430);
  v544 = *(v560 - 1);
  __chkstk_darwin(v560);
  v543 = v518 - v53;
  v54 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v54 - 8);
  v539 = v518 - v55;
  v564 = sub_1001F1160(&unk_100AE8770, &unk_10082E440);
  v541 = *(v564 - 8);
  __chkstk_darwin(v564);
  v540 = v518 - v56;
  v57 = sub_1001F1160(&qword_100AE2818, &unk_100824690);
  __chkstk_darwin(v57 - 8);
  v582 = v518 - v58;
  v568 = sub_1001F1160(&qword_100AE2860, &unk_100824740);
  v566 = *(v568 - 1);
  __chkstk_darwin(v568);
  v565 = v518 - v59;
  v581 = _s5StateOMa(0);
  v569 = *(v581 - 1);
  __chkstk_darwin(v581);
  v537 = (v518 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v61);
  v573 = v518 - v62;
  v63 = sub_1007A0634();
  __chkstk_darwin(v63 - 8);
  v536 = v518 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1007A1C14();
  __chkstk_darwin(v65 - 8);
  v603 = v518 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v602 = sub_100796BB4();
  v598 = *(v602 - 8);
  __chkstk_darwin(v602);
  v596 = v518 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v589 = sub_1001F1160(&unk_100AE8778, &unk_10082E448);
  v590 = *(v589 - 1);
  __chkstk_darwin(v589);
  v588 = v518 - v68;
  v616 = sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  v614 = *(v616 - 8);
  __chkstk_darwin(v616);
  v600 = v518 - v69;
  v70 = sub_1001F1160(&qword_100AD9B00, &qword_100816FC0);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = v518 - v72;
  v611 = sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService, &protocol conformance descriptor for AnnotationProviderService);
  v591 = sub_100027EF0(&unk_100AE8780, type metadata accessor for CurrentLocationPersistenceService, &protocol conformance descriptor for CurrentLocationPersistenceService);
  v666[3] = sub_10079F534();
  v666[4] = &protocol witness table for BookThemeDatabaseManager;
  v666[0] = a12;
  v74 = &a3[OBJC_IVAR___REBookProviderService_bookEntity];
  v595 = &a3[OBJC_IVAR___REBookProviderService_bookEntity];
  swift_beginAccess();
  sub_100009864(v74, v664);
  v75 = objc_opt_self();
  v76 = a12;
  v77 = [v75 standardUserDefaults];
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  v78 = swift_allocObject();
  *(v78 + 32) = 0xD00000000000001BLL;
  *(v78 + 16) = xmmword_100812CF0;
  *(v78 + 40) = 0x80000001008D1800;
  *(v78 + 48) = 0;
  *(v78 + 72) = &type metadata for Bool;
  *(v78 + 80) = 0xD00000000000001BLL;
  *(v78 + 88) = 0x80000001008DAAC0;
  *(v78 + 96) = 0;
  *(v78 + 120) = &type metadata for Bool;
  *(v78 + 128) = 0x657365522E494552;
  *(v78 + 136) = 0xEF73656D65685474;
  *(v78 + 168) = &type metadata for Bool;
  *(v78 + 144) = 0;
  sub_100019158(v78);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isa = sub_1007A2024().super.isa;

  [v77 registerDefaults:isa];

  type metadata accessor for CoverCacheService();
  v580 = swift_allocObject();
  type metadata accessor for InfoBarModule();
  v80 = swift_allocObject();
  type metadata accessor for InfoBar.MessageQueue(0);
  v81 = swift_allocObject();
  swift_defaultActor_initialize();
  v82 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  *&v633 = 0;
  sub_1001F1160(&qword_100ADA370, &qword_10082E460);
  sub_10079B964();
  (*(v71 + 32))(v81 + v82, v73, v70);
  *(v81 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask) = 0;
  *(v81 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages) = _swiftEmptyArrayStorage;
  *(v81 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = 0;
  type metadata accessor for InfoBarPresenter();
  swift_allocObject();
  v83 = sub_1002AEC34(0, 0, v81);

  v586 = v80;
  *(v80 + 16) = v83;
  sub_100009864(v664, &v633);
  v574 = v75;
  v84 = [v75 standardUserDefaults];
  v538 = sub_1007A0714();
  swift_allocObject();

  v612 = sub_1007A06C4();
  sub_1007A0C64();
  swift_allocObject();
  v85 = sub_1007A0C54();
  type metadata accessor for ScrubberStatePublisher(0);
  v86 = swift_allocObject();
  *(v86 + 32) = 0;
  swift_unknownObjectWeakInit();
  v87 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  *&v633 = 0;
  BYTE8(v633) = 2;
  v88 = v600;
  sub_10079B964();
  (*(v614 + 32))(v86 + v87, v88, v616);
  v597 = v86;
  *(v86 + 16) = v85;
  type metadata accessor for PageCurlState(0);
  v89 = swift_allocObject();
  LOBYTE(v633) = 0;
  sub_10079B964();
  *&v633 = 0;
  type metadata accessor for NavigationDirection(0);
  v614 = v89;
  sub_10079B964();
  v90 = sub_100027EF0(&qword_100AE8748, type metadata accessor for BookProviderService, &protocol conformance descriptor for BookProviderService);
  v600 = v90;
  sub_1007A1024();
  v616 = sub_1007A1014();
  v91 = type metadata accessor for BookReaderDataManager();
  v92 = objc_allocWithZone(v91);
  swift_unknownObjectWeakInit();
  *&v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_stateTask] = 0;
  v93 = OBJC_IVAR____TtC5Books21BookReaderDataManager_stateSubject;
  LOBYTE(v633) = 2;
  *(&v633 + 1) = 0;
  *(&v633 + 5) = 0;
  *(&v633 + 1) = 5;
  v634 = 0;
  sub_1001F1160(&qword_100AE8788, &qword_10082E468);
  swift_allocObject();
  *&v92[v93] = sub_10079B924();
  sub_100009864(v595, &v633);
  sub_10000E3E8(&v633, v635);
  LODWORD(v584) = sub_10079EC44();
  sub_1000074E0(&v633);
  v94 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_bookProviderService];
  v95 = v585;
  *v94 = v585;
  v94[1] = v90;
  v96 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_annotationProviderService];
  v97 = v609;
  v98 = v611;
  *v96 = v609;
  *(v96 + 1) = v98;
  v99 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_purchaseHandler];
  v100 = v604;
  *v99 = v604;
  *(v99 + 1) = &off_100A110B8;
  v101 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_configurationHandler];
  v102 = v605;
  *v101 = v605;
  *(v101 + 1) = &off_100A30070;
  v103 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager];
  *v103 = v619;
  v103[1] = &protocol witness table for ReadingSettingsManager;
  *&v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_themeAppearanceManager] = v616;
  v663.receiver = v92;
  v663.super_class = v91;
  v585 = v95;
  v570 = v97;
  v520 = v100;
  v519 = v102;

  v104 = objc_msgSendSuper2(&v663, "init");
  *(*&v104[OBJC_IVAR____TtC5Books21BookReaderDataManager_purchaseHandler] + OBJC_IVAR____TtC5Books25BookReaderPurchaseHandler_delegate + 8) = &off_100A245E8;
  swift_unknownObjectWeakAssign();
  *(*&v104[OBJC_IVAR____TtC5Books21BookReaderDataManager_configurationHandler] + OBJC_IVAR____TtC5Books30BookReaderConfigurationHandler_delegate + 8) = &off_100A245D0;
  swift_unknownObjectWeakAssign();
  v605 = v104;
  *&v633 = sub_1007A0FF4();
  v105 = sub_1007A0EF4();
  *&v623 = sub_1007A1394();
  v604 = v105;
  v645[0] = sub_1007A13F4();
  v609 = sub_1001F1160(&unk_100AE8790, &unk_10082E470);
  v583 = sub_1001F1160(&unk_100AEB8B0, &unk_10083DD40);
  sub_1001F1160(&qword_100AE8798, &unk_10082E480);
  sub_100005920(&unk_100AE87A0, &unk_100AE8790, &unk_10082E470, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&unk_100AF25D0, &unk_100AEB8B0, &unk_10083DD40, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100AEB890, &qword_100AE8798, &unk_10082E480, &protocol conformance descriptor for AnyPublisher<A, B>);
  v106 = v588;
  sub_10079B7B4();
  v107 = swift_allocObject();
  v108 = v605;
  swift_unknownObjectWeakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v584 & 1;
  sub_100005920(&unk_100AE87A8, &unk_100AE8778, &unk_10082E448, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v110 = v589;
  v111 = sub_10079BB04();

  (*(v590 + 1))(v106, v110);
  *&v108[OBJC_IVAR____TtC5Books21BookReaderDataManager_stateTask] = v111;

  v112 = v108;

  type metadata accessor for BookReaderInteractor(0);
  v113 = swift_allocObject();
  v113[3] = 0;
  swift_unknownObjectWeakInit();
  v113[5] = 0;
  swift_unknownObjectWeakInit();
  v113[7] = 0;
  swift_unknownObjectWeakInit();
  v113[20] = &_swiftEmptySetSingleton;
  v113[23] = 0;
  v113[24] = 0;
  *(v113 + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) = 0;
  *(v113 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) = 0;
  v114 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentReadingProgressSubject;
  sub_1001F1160(&qword_100AE6388, &unk_10082A070);
  swift_allocObject();
  v115 = v112;
  v116 = v612;

  *(v113 + v114) = sub_10079B8D4();
  v113[8] = v115;
  v113[9] = &off_100A24600;
  v117 = v585;
  v118 = v600;
  v113[10] = v585;
  v113[11] = v118;
  v119 = v618;
  v113[12] = v618;
  v113[13] = &protocol witness table for PaginatingService;
  v120 = v606;
  v121 = v591;
  v113[18] = v606;
  v113[19] = v121;

  v590 = v117;
  v562 = v115;
  v122 = v120;
  v123 = v596;
  sub_100796A84();
  (v598)[4](v113 + OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate, v123, v602);
  v113[14] = v116;
  v113[15] = &protocol witness table for PageNumberProvider;
  v113[16] = v601;
  v113[17] = &protocol witness table for ContentSizeCategoryManager;
  sub_100009864(v595, &v633);
  sub_100009864(&v633, &v623);
  type metadata accessor for CurrentLocationPersistenceService(0);

  sub_1007A1504();
  v124 = v603;
  sub_1007A1114();

  v559 = 0;
  v125 = objc_allocWithZone(type metadata accessor for CurrentLocationController(0));

  v126 = v615;

  v127 = sub_100514094(&v623, v124, v119, v126, v125);

  v113[21] = v127;
  sub_10000E3E8(&v633, v635);
  v128 = v127;
  LODWORD(v616) = sub_10079EC44();
  v605 = [objc_opt_self() shared];
  if (!v605)
  {
    goto LABEL_58;
  }

  v572 = a25;
  v589 = a24;
  v535 = a23;
  v602 = a22;
  v534 = a17;
  v606 = a16;
  v603 = a15;
  v615 = a14;
  v598 = sub_100027EF0(&qword_100AE63A8, type metadata accessor for CurrentLocationController, &unk_100841AB8);
  v588 = type metadata accessor for PageMovementController();
  v129 = swift_allocObject();
  *(v129 + 32) = &_swiftEmptySetSingleton;
  *(v129 + 48) = 0;
  swift_unknownObjectWeakInit();
  v596 = a18;
  sub_1007A0614();
  sub_1001F1160(&qword_100AE63D8, &unk_10082E490);
  swift_allocObject();
  *(v129 + 64) = sub_10079B924();
  type metadata accessor for PageTurnController(0);
  v130 = swift_allocObject();
  *(v130 + 56) = 0u;
  *(v130 + 72) = 0u;
  *(v130 + 88) = 0u;
  v536 = sub_1001F1160(&qword_100AEB8C0, &qword_1008328A0);
  swift_allocObject();
  v131 = v128;
  *(v130 + 104) = sub_10079B8D4();
  *(v130 + 128) = 0;
  v132 = OBJC_IVAR____TtC5Books18PageTurnController__state;
  v133 = v573;
  v134 = v581;
  swift_storeEnumTagMultiPayload();
  sub_10051C938(v133, v537, _s5StateOMa);
  v135 = v565;
  sub_10079B964();
  v591 = _s5StateOMa;
  sub_10051C6D8(v133, _s5StateOMa);
  (*(v566 + 32))(v130 + v132, v135, v568);
  *(v130 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = 0;
  v136 = v598;
  *(v130 + 16) = v131;
  *(v130 + 24) = v136;
  v137 = v605;
  *(v130 + 32) = v605;
  *(v130 + 112) = 0;
  *(v130 + 120) = 0;
  type metadata accessor for PageTurnViewModel(0);
  swift_allocObject();
  v138 = v131;
  v605 = v137;
  v139 = sub_1003ADC60(v616 & 1, 2);
  v140 = v596;
  *(v130 + 40) = v596;
  *(v130 + 48) = v139;
  v141 = v582;
  (*(v569 + 7))(v582, 1, 1, v134);
  v142 = v140;
  sub_1004156F0();
  sub_100007840(v141, &qword_100AE2818, &unk_100824690);
  swift_storeEnumTagMultiPayload();
  sub_100416728(v133);

  v605 = v142;
  sub_10051C6D8(v133, v591);
  *(v129 + 16) = v130;
  v143 = v602;
  type metadata accessor for PageScrollController();
  v144 = swift_allocObject();
  v144[5] = 0;
  swift_unknownObjectWeakInit();
  v145 = v598;
  v144[2] = v138;
  v144[3] = v145;
  *(v129 + 24) = v144;
  *(v129 + 56) = 2;
  v113[22] = v129;
  sub_100510F38(v617, v113);

  sub_1000074E0(&v633);
  if (v143)
  {

    sub_1002990A0(v146, &off_100A1EE20);
  }

  v532 = a10;
  v531 = a9;
  v609 = v113;
  v147 = *(v113[21] + OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider);
  v148 = sub_100027EF0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);
  sub_100009864(v666, &v633);
  sub_1001F1160(&unk_100AE87B0, &unk_10082E4A0);
  swift_allocObject();
  swift_retain_n();

  v149 = v619;

  v150 = v615;

  v151 = v603;

  v533 = v151;
  v616 = v147;
  v603 = v148;
  v596 = sub_1007A19E4();
  type metadata accessor for TOCModuleFactory();
  v152 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_weakInit();
  v585 = v152;
  v153 = v605;
  *(v152 + 32) = v605;
  type metadata accessor for BookmarkNotesModuleFactory();
  v154 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v584 = v154;
  swift_weakInit();
  v155 = objc_opt_self();
  v591 = v153;
  v156 = v610;
  v157 = v613;
  v158 = v594;

  v565 = v155;
  v159 = [v155 sharedController];
  v581 = v156;
  v573 = v157;
  v160 = sub_10050C904(v156, v157, v158, v159);
  type metadata accessor for ShareModuleFactory();
  v161 = swift_allocObject();
  v162 = sub_100027EF0(&unk_100AE87B8, type metadata accessor for AssetActivityItemProviderWrapper, &unk_100811260);
  *(v161 + 16) = v160;
  *(v161 + 24) = v162;
  v583 = v161;
  v605 = v162;
  sub_1001F1160(&unk_100AE87C0, &unk_10082E4A8);
  swift_allocObject();
  swift_unknownObjectRetain();

  v163 = v590;

  v164 = v534;

  v569 = v163;
  v582 = sub_1007A0B34();
  sub_10000E3E8(v664, v665);

  LOBYTE(v160) = sub_10079EC84();
  v566 = type metadata accessor for BookReaderStateManager();
  v165 = swift_allocObject();
  v166 = sub_10050F924(v149, v150, v160 & 1, v165);
  v167 = v597;
  swift_beginAccess();
  *(v167 + 32) = &protocol witness table for BookReaderStateManager;
  v613 = v166;
  swift_unknownObjectWeakAssign();
  sub_10000E3E8(v664, v665);
  v168 = sub_10079EC84();
  v610 = 0;
  if (v168)
  {
    sub_100009864(v664, &v633);
    type metadata accessor for SampleHeaderModule();
    v623 = 0u;
    v624 = 0u;
    v625 = 0;
    v169 = swift_allocObject();
    v170 = v635;
    v171 = v636;
    v172 = sub_10000E3E8(&v633, v635);
    type metadata accessor for SampleHeaderDataManager();

    v173 = v580;

    v174 = sub_10035AB44(v172, v173, &off_100A27200, v170, v171);
    type metadata accessor for SampleHeaderInteractor();
    v175 = swift_allocObject();
    v175[3] = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    v175[4] = v174;
    v175[5] = &off_100A16F60;
    swift_weakAssign();
    v174[11] = &off_100A13410;
    swift_unknownObjectWeakAssign();
    sub_1000077D8(&v623, v645, &qword_100AD4FA0, &qword_10081F020);
    type metadata accessor for SampleHeaderPresenter();
    v176 = swift_allocObject();
    *(v176 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v176 + 72) = 0u;
    *(v176 + 56) = 0u;
    *(v176 + 88) = 0;
    *(v176 + 96) = &_swiftEmptySetSingleton;
    *(v176 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v176 + 40) = v175;
    *(v176 + 48) = &off_100A13420;
    swift_beginAccess();

    sub_100282A38(v645, v176 + 56);
    swift_endAccess();

    *(v176 + 32) = sub_10068A008(v177, v603);
    sub_10046EFDC(v176 + 56);

    sub_100007840(v645, &qword_100AD4FA0, &qword_10081F020);
    v175[3] = &off_100A1D368;
    swift_unknownObjectWeakAssign();
    v610 = v169;
    v169[2] = v176;

    sub_10046E3C4();

    sub_100007840(&v623, &qword_100AD4FA0, &qword_10081F020);
    sub_1000074E0(&v633);
  }

  v534 = type metadata accessor for ChromeStyle(0);
  v568 = [objc_allocWithZone(v534) init];
  v178 = v581;
  v179 = v573;
  v180 = v594;

  v181 = v565;
  v529 = sub_10050C904(v178, v179, v180, [v565 sharedController]);
  v182 = v178;
  v183 = v179;

  v184 = [v181 sharedController];
  v537 = v182;
  v535 = v183;
  v185 = sub_10050C904(v182, v183, v180, v184);
  v590 = *(&protocol witness table for BookLayoutModeManager + 1);
  v589 = *(&protocol witness table for ReadingSettingsManager + 1);
  v581 = type metadata accessor for BookReaderPresenter(0);
  v186 = objc_allocWithZone(v581);
  swift_weakInit();
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_externalContentLoadEventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_router + 8] = 0;
  swift_unknownObjectWeakInit();
  v527 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService];
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  v528 = OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProvider;
  swift_unknownObjectWeakInit();
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_subscribers] = _swiftEmptyArrayStorage;
  v187 = OBJC_IVAR____TtC5Books19BookReaderPresenter_searchHighlightID;
  v188 = sub_10079FFA4();
  (*(*(v188 - 8) + 56))(&v186[v187], 1, 1, v188);
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController] = 0;
  v189 = OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentPresentedState;
  v573 = type metadata accessor for PublishedBool(0);
  v190 = swift_allocObject();
  swift_beginAccess();
  LOBYTE(v623) = 0;
  v191 = v569;
  v530 = v570;

  v569 = v591;
  v192 = v609;

  v526 = v571;

  v571 = v568;
  v193 = v613;

  sub_10079B964();
  swift_endAccess();
  *&v186[v189] = v190;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController] = 0;
  v194 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame];
  *v194 = 0u;
  *(v194 + 1) = 0u;
  v194[32] = 1;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator] = 0;
  v195 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  *v195 = v192;
  *(v195 + 1) = &off_100A1EE50;
  Strong = swift_unknownObjectWeakLoadStrong();
  _s26ContentSelectionInteractorCMa(0);
  v196 = swift_allocObject();
  *(v196 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v196 + 9) = 0;
  swift_unknownObjectWeakInit();
  *(v196 + 10) = 0;
  v197 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
  v198 = sub_10079F364();
  (*(*(v198 - 8) + 56))(&v196[v197], 1, 1, v198);
  v199 = &v196[OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor__state];
  *v199 = 0u;
  *(v199 + 1) = 0u;
  *(v199 + 2) = 0u;
  *(v199 + 3) = 0u;
  *(v199 + 57) = 0u;
  *(v199 + 73) = v662[0];
  *(v199 + 19) = *(v662 + 3);
  *(v199 + 5) = 0u;
  *(v199 + 6) = 0u;
  *(v199 + 105) = 0u;
  *(v199 + 121) = *v661;
  *(v199 + 31) = *&v661[3];
  v199[256] = 0;
  *(v199 + 14) = 0u;
  *(v199 + 15) = 0u;
  *(v199 + 12) = 0u;
  *(v199 + 13) = 0u;
  *(v199 + 10) = 0u;
  *(v199 + 11) = 0u;
  *(v199 + 8) = 0u;
  *(v199 + 9) = 0u;
  *(v199 + 257) = *v660;
  *(v199 + 65) = *&v660[3];
  *(v199 + 33) = 0;
  v199[272] = 0;
  *(v199 + 273) = *v659;
  *(v199 + 69) = *&v659[3];
  *(v199 + 35) = 0;
  swift_weakAssign();
  v200 = v191;
  *(v196 + 5) = v191;
  *(v196 + 6) = v185;
  *(v196 + 7) = v605;
  *(v196 + 9) = v611;
  v201 = v530;
  swift_unknownObjectWeakAssign();
  *(v196 + 11) = v193;
  *(v196 + 12) = &protocol witness table for BookReaderStateManager;
  type metadata accessor for AnnotationProviderService(0);
  v202 = v200;
  swift_retain_n();
  v203 = v185;
  v570 = v202;
  v524 = v201;

  v591 = v203;
  v530 = sub_1007A08C4();
  *&v633 = v530;
  v204 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v205 = sub_1007A2D74();
  *&v623 = v205;
  v206 = sub_1007A2D24();
  v207 = v539;
  (*(*(v206 - 8) + 56))(v539, 1, 1, v206);
  sub_1001F1160(&unk_100AE87C8, &unk_10082E4B0);
  v568 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AE87D0, &unk_100AE87C8, &unk_10082E4B0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v208 = v540;
  v518[2] = v204;
  sub_10079BAB4();
  sub_100007840(v207, &qword_100AD7EB0, &qword_10080EFD0);

  swift_allocObject();
  swift_weakInit();
  v530 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AE87D8, &unk_100AE8770, &unk_10082E440, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v209 = v564;
  v210 = sub_10079BB04();

  v211 = v524;
  v212 = v613;

  swift_unknownObjectRelease();

  v541[1](v208, v209);
  *(v196 + 10) = v210;

  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_contentSelectionInteractor] = v196;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookReaderLayoutController] = v617;
  *(v527 + 8) = v611;
  v213 = v211;
  swift_unknownObjectWeakAssign();
  v214 = v526;
  swift_unknownObjectWeakAssign();
  v215 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationSharingAssetActivityItemProvider];
  v216 = v529;
  v217 = v605;
  *v215 = v529;
  v215[1] = v217;
  v218 = objc_allocWithZone(type metadata accessor for BookReaderHighlightEditorController(0));
  v219 = v213;

  v220 = v214;
  v221 = v216;
  v222 = sub_100514DD8(v220, v219, v218);

  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_highlightEditorController] = v222;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController] = [objc_allocWithZone(type metadata accessor for BookReaderMenuController()) init];
  type metadata accessor for BookReaderAchievementManager();
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_achievementManager] = swift_allocObject();
  v223 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_currentLocationProvider];
  v224 = v603;
  *v223 = v616;
  v223[1] = v224;
  v225 = v569;
  v226 = v570;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService] = v570;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager] = v212;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_engagementManager] = v225;
  v227 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_layoutModeProvider];
  v228 = v590;
  *v227 = v615;
  *(v227 + 1) = v228;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_pageCurlState] = v614;
  v229 = &v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider];
  v230 = v589;
  *v229 = v619;
  v229[1] = v230;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_chromeStyle] = v571;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_stylesheetProvider] = v606;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsModuleFactory] = v596;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_tocModuleFactory] = v585;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookmarkNotesModuleFactory] = v584;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_shareModuleFactory] = v583;
  *&v186[OBJC_IVAR____TtC5Books19BookReaderPresenter_searchModuleFactory] = v582;
  v658.receiver = v186;
  v658.super_class = v581;
  v231 = v226;

  v232 = objc_msgSendSuper2(&v658, "init");
  v233 = v609;
  v609[3] = &off_100A2BEE8;
  swift_unknownObjectWeakAssign();

  v605 = sub_10079F134();
  v234 = v233[21];
  v235 = v233[22];
  v541 = v234;
  v635 = v588;
  v564 = sub_100027EF0(&qword_100AE63B8, type metadata accessor for PageMovementController, &unk_100833544);
  v636 = v564;
  *&v633 = v235;
  v591 = sub_100027EF0(&qword_100AE8758, type metadata accessor for BookReaderLayoutController, &protocol conformance descriptor for BookReaderLayoutController);
  v540 = sub_100027EF0(&unk_100AE87E0, type metadata accessor for BookReaderPresenter, &unk_10083DAE8);
  v529 = *(&protocol witness table for ContentSizeCategoryManager + 1);
  v539 = *(v235 + 16);
  v528 = sub_100027EF0(&unk_100AE87E8, type metadata accessor for PageTurnController, &unk_1008245E0);
  v527 = sub_100027EF0(&unk_100AE87F0, type metadata accessor for BookReaderPresenter, &unk_10083D9C0);
  v236 = v232;

  v570 = v231;
  v237 = v219;

  v238 = v236;
  v541 = v541;

  v539 = v237;
  v239 = v619;
  v240 = v238;
  v241 = v618;
  v242 = v603;
  v243 = v598;
  v244 = sub_10079F074();
  sub_10079EF94();
  *&v240[OBJC_IVAR____TtC5Books19BookReaderPresenter_externalContentLoadEventHandler + 8] = v245;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for CloseGestureManager();
  v581 = swift_allocObject();
  v581[2] = _swiftEmptyArrayStorage;
  v246 = type metadata accessor for BookActionMenuDataSource();
  sub_100009864(v664, &v633);
  v247 = v587;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v611 = v244;
  v249 = sub_10079F064();
  v524 = ObjectType;
  v250 = v239;
  v251 = v612;
  v252 = sub_1003C7D04(&v633, v247, v249, v250, v241, &protocol witness table for PaginatingService, v612, v246, ObjectType, v604, v538, &protocol witness table for ReadingSettingsManager, &protocol witness table for PageNumberProvider);
  swift_unknownObjectRelease();

  v253 = v240;

  v254 = v597;

  v255 = [v574 standardUserDefaults];
  v256 = v569;
  v540 = v253;
  v518[1] = v252;
  v538 = v256;
  v257 = sub_10050F288(v253, v252, v251, v254, v256, v255);
  v259 = v609[21];
  v258 = v609[22];
  v636 = v564;
  v635 = v588;
  *&v633 = v258;
  v260 = type metadata accessor for BookActionMediator();
  v261 = objc_allocWithZone(v260);
  *&v261[OBJC_IVAR____TtC5Books18BookActionMediator_cancellables] = &_swiftEmptySetSingleton;
  *&v261[OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState] = v257;
  v262 = &v261[OBJC_IVAR____TtC5Books18BookActionMediator_paginationService];
  *v262 = v241;
  v262[1] = &protocol witness table for PaginatingService;
  v263 = &v261[OBJC_IVAR____TtC5Books18BookActionMediator_currentLocationProvider];
  *v263 = v616;
  v263[1] = v242;
  v264 = &v261[OBJC_IVAR____TtC5Books18BookActionMediator_currentLocationController];
  *v264 = v259;
  *(v264 + 1) = v243;
  v265 = &v261[OBJC_IVAR____TtC5Books18BookActionMediator_orientationLockHandler];
  *v265 = v613;
  *(v265 + 1) = &protocol witness table for BookReaderStateManager;
  sub_100009864(&v633, &v261[OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController]);
  v266 = &v261[OBJC_IVAR____TtC5Books18BookActionMediator_readingLoupeProvider];
  *v266 = v619;
  v266[1] = &protocol witness table for ReadingSettingsManager;
  v657.receiver = v261;
  v657.super_class = v260;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v532 = v259;

  v267 = objc_msgSendSuper2(&v657, "init");
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v268 = sub_1007A0554();
  swift_unknownObjectRelease();
  *&v623 = v268;
  v269 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v270 = swift_allocObject();
  *(v270 + 16) = v269;
  *(v270 + 24) = v257;
  v605 = v257;

  v271 = v267;
  sub_1001F1160(&qword_100AE6460, &qword_10082A148);
  sub_100005920(&unk_100AEB880, &qword_100AE6460, &qword_10082A148, v568);
  sub_10079BB04();

  v569 = v271;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v272 = sub_1007A0664();
  v273 = v577;
  v541 = v272;
  sub_10079F9B4();
  v274 = [objc_opt_self() mainRunLoop];
  *&v623 = v274;
  v275 = sub_1007A3324();
  v276 = v542;
  (*(*(v275 - 8) + 56))(v542, 1, 1, v275);
  sub_10000A7C4(0, &qword_100AE19D8, NSRunLoop_ptr);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10051C650(&qword_100AE19E8, &qword_100AE19D8, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v277 = v543;
  v278 = v579;
  sub_10079BAB4();
  v279 = v276;
  v280 = v569;
  sub_100007840(v279, &qword_100AF4290, &unk_10082E420);
  v578[1](v273, v278);

  v281 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v282 = swift_allocObject();
  v283 = v618;
  v282[2] = v281;
  v282[3] = v283;
  v282[4] = &protocol witness table for PaginatingService;
  sub_100005920(&unk_100AE87F8, &unk_100AE8768, &unk_10082E430, v530);

  v284 = v560;
  sub_10079BB04();

  v544[1](v277, v284);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *&v623 = BookReaderStateManager.isOrientationLockedPublisher.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v285 = sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  v568 = sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, v568);
  v560 = v285;
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *&v623 = sub_1007A13E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *&v623 = sub_1007A1404();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
  v286 = v605;

  sub_1000074E0(&v633);
  swift_beginAccess();
  *(v286 + 7) = &off_100A198B0;
  swift_unknownObjectWeakAssign();
  v287 = v602;
  if (v602)
  {
    v288 = sub_100027EF0(&qword_100AE8760, type metadata accessor for ReadingAnalyticsProvider, &unk_100816830);
  }

  else
  {
    v288 = 0;
  }

  v289 = v605;
  *(v605 + 5) = v288;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v289 + 9) = &off_100A198A0;
  swift_unknownObjectWeakAssign();
  *&v633 = *(v617 + 200);
  sub_1001F1160(&qword_100ADECC8, &unk_10081ED50);
  sub_100005920(&qword_100ADECD0, &qword_100ADECC8, &unk_10081ED50, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  *&v633 = sub_10079BA14();
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&qword_100ADC880, qword_10082E4C0);
  sub_100005920(&qword_100ADC888, &qword_100ADC880, qword_10082E4C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1005124DC(v539, v289);
  sub_10034249C();

  v290 = v613;
  *(v613 + 10) = &off_100A198D8;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v291 = v290[8];
    v292 = swift_getObjectType();
    v293 = *(v291 + 8);
    v294 = v280;
    v293(v292, v291);
    v290 = v613;

    swift_unknownObjectRelease();
  }

  v295 = [objc_allocWithZone(type metadata accessor for OrientationLockHintViewModel(0)) init];
  type metadata accessor for OrientationLockHintController();
  v296 = swift_allocObject();
  v297 = v538;

  v298 = v295;
  v299 = sub_100514778(v298, v290, v297, v296);

  v560 = v298;
  v300 = &v298[OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_orientationLockHandler];
  swift_beginAccess();
  *(v300 + 1) = &protocol witness table for OrientationLockHintController;
  v604 = v299;
  swift_unknownObjectWeakAssign();
  v301 = sub_10079F034();
  swift_getKeyPath();
  v302 = v301;
  v303 = v558;
  sub_1007968C4();

  sub_100005920(&qword_100AE76A8, &qword_100AE76A0, qword_10082BFB0, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
  v304 = v563;
  sub_10079BA14();
  v544 = v302;

  (v561[1])(v303, v304);
  if (v287)
  {

    sub_100299B6C(v305);
  }

  v306 = [v574 standardUserDefaults];
  v307 = sub_1007A2214();
  v308 = [v306 BOOLForKey:v307];

  sub_100009864(v664, &v633);
  v309 = swift_allocObject();
  sub_1000077C0(&v633, v309 + 16);
  *(v309 + 56) = v308;
  v310 = v605;
  *(v309 + 64) = v604;
  *(v309 + 72) = v310;

  sub_1007A19D4();

  sub_100009864(v666, &v633);
  sub_10079F0B4();
  sub_1001F1160(&unk_100AE8800, &unk_10082E518);
  swift_allocObject();
  v563 = v570;

  v311 = v533;

  v312 = sub_1007A16C4();
  v543 = type metadata accessor for ThemeOptionsContainerPresenter();
  swift_allocObject();
  v313 = sub_1004B000C(v312);
  v601 = sub_10079F0B4();
  v542 = v314;
  v558 = *(*(v609[22] + 16) + 48);
  type metadata accessor for BookReaderViewModel(0);
  v315 = swift_allocObject();
  *(v315 + 24) = 0;
  swift_unknownObjectWeakInit();
  v316 = swift_allocObject();
  swift_beginAccess();
  LOBYTE(v623) = 0;

  v539 = v571;
  v538 = v569;

  v561 = v313;

  sub_10079B964();
  swift_endAccess();
  *(v315 + 32) = v316;
  *(v315 + 152) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v317 = OBJC_IVAR____TtC5Books19BookReaderViewModel__overlay;
  v318 = type metadata accessor for OverlayViewModel.Overlay(0);
  v319 = *(*(v318 - 8) + 56);
  v319(v315 + v317, 1, 1, v318);
  v320 = OBJC_IVAR____TtC5Books19BookReaderViewModel_overlayViewModel;
  type metadata accessor for OverlayViewModel(0);
  v321 = swift_allocObject();
  v322 = v545;
  v319(v545, 1, 1, v318);
  sub_1000077D8(v322, v546, &qword_100ADB1C0, &qword_10082A4E0);
  sub_10079B964();
  sub_100007840(v322, &qword_100ADB1C0, &qword_10082A4E0);
  *(v315 + v320) = v321;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible) = 1;
  v323 = [objc_allocWithZone(UIImage) init];
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage) = v323;
  v324 = objc_opt_self();
  v325 = [v324 whiteColor];
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor) = v325;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookCharacterFlowMatchesAppCharacterFlow) = 1;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode) = 0;
  v326 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets);
  *v326 = 0u;
  v326[1] = 0u;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) = 0;
  v327 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin);
  v328 = *&UIEdgeInsetsZero.bottom;
  *v327 = *&UIEdgeInsetsZero.top;
  v327[1] = v328;
  v329 = [v324 blackColor];
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor) = v329;
  v330 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  v331 = enum case for ColorScheme.light(_:);
  v332 = sub_10079BC44();
  (*(*(v332 - 8) + 104))(v315 + v330, v331, v332);
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages) = 0;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages) = 0;
  type metadata accessor for HistoryViewModel(0);
  v333 = swift_allocObject();
  v334 = type metadata accessor for HistoryModel.Entry(0);
  v335 = *(*(v334 - 8) + 56);
  v336 = v549;
  v335(v549, 1, 1, v334);
  v335(&v336[*(v567 + 20)], 1, 1, v334);
  sub_10051C938(v336, v548, type metadata accessor for HistoryModel);
  sub_10079B964();
  sub_10051C6D8(v336, type metadata accessor for HistoryModel);
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__historyViewModel) = v333;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) = 0;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) = 0;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__presentBubbleTips) = 0;
  v337 = v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState) = 0;
  v338 = type metadata accessor for BookReaderChromeState(0);
  v339 = v338[6];
  v340 = enum case for BookContentHeaderStyle.primary(_:);
  v341 = sub_10079F4E4();
  (*(*(v341 - 8) + 104))(v337 + v339, v340, v341);
  *(v337 + v338[7]) = 0;
  *(v337 + v338[8]) = 1;
  *(v337 + v338[9]) = 0;
  *(v337 + v338[10]) = 0;
  *(v337 + v338[11]) = 0;
  *(v337 + v338[12]) = 0;
  *(v337 + v338[13]) = 0;
  *(v337 + v338[14]) = 1;
  *(v337 + v338[15]) = 0;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingExpandedContent) = 0;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle) = 1;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge) = 0;
  v342 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  v343 = enum case for LayoutDirection.leftToRight(_:);
  v344 = sub_10079C104();
  (*(*(v344 - 8) + 104))(v315 + v342, v343, v344);
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) = 0;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) = 0;
  v345 = OBJC_IVAR____TtC5Books19BookReaderViewModel_isBookOpenSubject;
  LOBYTE(v633) = 0;
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  swift_allocObject();
  *(v315 + v345) = sub_10079B924();
  v346 = OBJC_IVAR____TtC5Books19BookReaderViewModel_showThemeCustomizationTipSubject;
  LOBYTE(v633) = 1;
  swift_allocObject();
  *(v315 + v346) = sub_10079B924();
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables) = _swiftEmptyArrayStorage;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) = 0;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  sub_100009864(v595, &v623);
  v549 = *&v563[OBJC_IVAR___REBookProviderService_bookInfo];
  sub_10000E3E8(&v623, *(&v624 + 1));
  v347 = sub_10079ECA4();
  v547 = v348;
  v548 = v347;
  sub_10000E3E8(&v623, *(&v624 + 1));
  v545 = sub_10079EC64();
  v533 = v349;
  sub_10000E3E8(&v623, *(&v624 + 1));
  v350 = sub_10079EC74();
  v531 = v351;
  v532 = v350;
  sub_1001F1160(&unk_100AD9510, &qword_1008168C8);
  v530 = sub_100795DC4();
  v546 = sub_100795DC4();
  v529 = sub_100795DC4();
  v352 = v550;
  sub_1007A2154();
  v353 = v553;
  sub_100796C94();
  v354 = *(v607 + 2);
  v595 = v607 + 16;
  v606 = v354;
  v355 = v551;
  (v354)(v575, v352, v551);
  v356 = *(v608 + 2);
  v572 = v608 + 16;
  v574 = v356;
  v357 = v552;
  (v356)(v552, v353, v576);
  v571 = type metadata accessor for BundleFinder();
  v358 = v554;
  *v554 = v571;
  LODWORD(v570) = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v359 = v599[13];
  v599 += 13;
  v569 = v359;
  (v359)(v358);
  sub_100796834();
  v360 = *(v608 + 1);
  v608 += 8;
  v568 = v360;
  v361 = v576;
  (v360)(v353, v576);
  v362 = *(v607 + 1);
  v607 += 8;
  v567 = v362;
  v362(v352, v355);
  v528 = sub_100795DB4();
  sub_1001F1160(&qword_100AE8370, &unk_1008168D0);
  v527 = sub_100795DA4();
  v526 = sub_1001F1160(&unk_100AD9520, &unk_10082D3B0);
  sub_1007A2154();
  sub_100796C94();
  v363 = v575;
  (v606)(v575, v352, v355);
  (v574)(v357, v353, v361);
  *v358 = v571;
  (v569)(v358, v570, v593);
  sub_100796834();
  (v568)(v353, v361);
  (v567)(v352, v355);
  sub_100211A50();
  v526 = sub_100795D74();
  Strong = sub_1001F1160(&unk_100AD9530, &unk_1008168E0);
  sub_1007A2154();
  sub_100796C94();
  (v606)(v363, v352, v355);
  (v574)(v357, v353, v361);
  *v358 = v571;
  (v569)(v358, v570, v593);
  sub_100796834();
  v364 = v361;
  v365 = v558;
  (v568)(v353, v364);
  (v567)(v352, v355);
  sub_100005920(&unk_100AE7F80, &qword_100AD9540, &qword_10082D3C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v366 = sub_100795D84();
  *&v633 = v545;
  *(&v633 + 1) = v533;
  v367 = v530;
  sub_100795D64();
  *&v633 = v532;
  *(&v633 + 1) = v531;
  v368 = v529;
  sub_100795D64();
  LOBYTE(v633) = 0;
  v369 = v526;
  sub_100795D64();
  *(&v640 + 1) = v637[0];
  DWORD1(v640) = *(v637 + 3);
  *&v639 = v548;
  *(&v639 + 1) = v547;
  LOBYTE(v640) = 0;
  *(&v640 + 1) = v367;
  *&v641 = v546;
  *(&v641 + 1) = v368;
  *&v642 = v528;
  *(&v642 + 1) = v527;
  *&v643 = v369;
  *(&v643 + 1) = v366;
  v644 = 0uLL;
  v645[0] = v548;
  v645[1] = v547;
  v646 = 0;
  *v647 = v637[0];
  *&v647[3] = *(v637 + 3);
  v648 = v367;
  v649 = v546;
  v650 = v368;
  v651 = v528;
  v652 = v527;
  v653 = v369;
  v654 = v366;
  v655 = 0;
  v656 = 0;
  sub_1002A40C0(&v639, &v633);
  sub_1002A411C(v645);
  v370 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAppEntity);
  v371 = v642;
  v370[2] = v641;
  v370[3] = v371;
  v372 = v644;
  v370[4] = v643;
  v370[5] = v372;
  v373 = v640;
  *v370 = v639;
  v370[1] = v373;
  swift_unknownObjectRetain();
  sub_10002B130(v315 + 16);
  *(v315 + 24) = v542;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v374 = v591;
  *(v315 + 40) = v617;
  *(v315 + 48) = v374;
  v375 = v619;
  *(v315 + 56) = &protocol witness table for BookReaderLayoutController;
  *(v315 + 64) = v375;
  v376 = v615;
  *(v315 + 72) = v589;
  *(v315 + 80) = v376;
  *(v315 + 128) = v614;
  v378 = v538;
  v377 = v539;
  *(v315 + 88) = v590;
  *(v315 + 96) = v378;
  *(v315 + 104) = v377;

  v606 = v377;
  v379 = v378;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor) = sub_10079DDC4();
  v607 = v379;
  v380 = v604;
  *(v315 + 112) = *&v379[OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState];
  *(v315 + 120) = v380;
  *(v315 + 136) = v365;
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__paginatingService + 8) = &protocol witness table for PaginatingService;
  swift_unknownObjectUnownedInit();
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel__pageNumberProvider + 8) = &protocol witness table for PageNumberProvider;
  swift_unknownObjectUnownedInit();
  sub_10000E3E8(&v623, *(&v624 + 1));

  v381 = sub_10079ECA4();
  v382 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAssetID);
  *v382 = v381;
  v382[1] = v383;
  sub_10000E3E8(&v623, *(&v624 + 1));
  v384 = sub_10079EBD4();
  v385 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage);
  *v385 = v384;
  v385[1] = v386;
  sub_10000E3E8(&v623, *(&v624 + 1));
  v387 = sub_10079EC64();
  v388 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle);
  *v388 = v387;
  v388[1] = v389;
  sub_10000E3E8(&v623, *(&v624 + 1));
  v390 = sub_10079EC74();
  v391 = (v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAuthor);
  *v391 = v390;
  v391[1] = v392;
  sub_10000E3E8(&v623, *(&v624 + 1));
  *(v315 + 224) = sub_10079EC84() & 1;
  sub_10000E3E8(&v623, *(&v624 + 1));
  v393 = v577;
  sub_10079EC24();
  (v578[4])(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_preorderedPublisher, v393, v579);
  v394 = v549;
  if (v549)
  {
    v394 = [v549 isStoreBook];
  }

  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_isStoreBook) = v394;
  sub_10000E3E8(&v623, *(&v624 + 1));
  sub_10079EC44();
  v395 = sub_1007A0CE4();
  v397 = v396;
  v398 = 1;
  v399 = sub_1007A0CE4();
  v401 = v586;
  v402 = v610;
  v403 = v561;
  if (v395 != v399 || v397 != v400)
  {
    v398 = sub_1007A3AB4();
  }

  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_isPageProgressionRTL) = v398 & 1;
  sub_10000E3E8(&v623, *(&v624 + 1));
  sub_10079EBD4();
  v404 = v555;
  sub_100796CA4();
  v405 = sub_100796CC4();
  (*(v556 + 8))(v404, v557);
  *(v315 + OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL) = v405 == 2;

  swift_weakDestroy();
  swift_weakInit();

  *(v315 + 168) = v401;
  *(v315 + 176) = v402;
  *(v315 + 208) = v543;
  *(v315 + 216) = &off_100A1F170;
  *(v315 + 184) = v403;
  if (byte_100B23530 == 1)
  {

LABEL_22:
    sub_10057AE90(0);
    goto LABEL_23;
  }

  v406 = objc_opt_self();

  v407 = [v406 sharedApplication];
  v408 = [v407 launchedToTest];

  if (v408)
  {

    goto LABEL_22;
  }

  swift_getKeyPath();
  *&v633 = v315;
  sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  sub_10079B904();
  if (v633 != 1)
  {
    KeyPath = swift_getKeyPath();
    v608 = v518;
    __chkstk_darwin(KeyPath);
    *&v633 = v315;
    v515 = v559;
    sub_100797A04();
    v559 = v515;
  }

LABEL_23:
  sub_10057D260();
  sub_10057B444();
  swift_unknownObjectRelease();

  sub_1000074E0(&v623);
  if (v402)
  {
    swift_weakAssign();
  }

  swift_weakInit();
  v409 = v540;

  swift_weakInit();

  swift_weakInit();
  v638 = &off_100A2BE60;
  swift_unknownObjectWeakInit();

  sub_100303E7C(v637, v632);
  *(&v623 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v630 = *(v315 + 112);
  sub_100303E7C(v632, &v631);
  *(&v623 + 1) = &off_100A2BE60;
  swift_unknownObjectWeakAssign();
  v627 = v315;
  v410 = *(v315 + 104);
  sub_100027EF0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
  swift_retain_n();
  v411 = v409;

  v412 = v410;
  *&v624 = sub_10079C024();
  *(&v624 + 1) = v413;
  swift_weakAssign();
  if (*(v315 + 176))
  {
  }

  else
  {
    sub_10068A008(0, 0);
  }

  type metadata accessor for SampleHeaderViewModel(0);
  sub_100027EF0(&qword_100ADC3A0, type metadata accessor for SampleHeaderViewModel, &unk_10083C878);
  v625 = sub_10079C024();
  v626 = v414;
  sub_100027EF0(&qword_100AF2980, type metadata accessor for PublishedBool, &unk_10083A69C);

  v415 = sub_10079C024();
  v417 = v416;

  v628 = v415;
  v629 = v417;
  v418 = v559;
  sub_10079B624();
  v574 = v411;
  if (v418)
  {

    sub_10051C758(v632);
    v573 = 0;
  }

  else
  {
    v573 = 0;
    sub_10051C758(v632);
  }

  sub_10030254C(&v623, &v633);
  v600 = v315;
  v419 = *(v315 + 112);

  v599 = v419;

  v420 = v544;
  v590 = sub_10079F5C4();
  sub_100303E7C(v637, &v623);
  v608 = sub_10079F0B4();
  v593 = v421;
  sub_10000E3E8(v664, v665);

  LODWORD(v579) = sub_10079EC84();
  v592 = *&v607[OBJC_IVAR____TtC5Books18BookActionMediator_currentLocationController];
  sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  v601 = v420;
  v595 = v592;
  swift_unknownObjectRetain();
  sub_10079B9A4(v632);

  v578 = sub_1007A3144();
  v589 = type metadata accessor for PageCurlViewController(0);
  v422 = objc_allocWithZone(v589);
  v423 = &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_contentLayoutProviderProviding];
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_contentLayoutProviderProviding + 8] = 0;
  swift_unknownObjectWeakInit();
  v575 = OBJC_IVAR____TtC5Books22PageCurlViewController_bookContentLayoutController;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v424 = &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_readingSettingsProvider];
  *(v424 + 8) = 0;
  v576 = v424;
  swift_unknownObjectWeakInit();
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_beganCurls] = _swiftEmptyArrayStorage;
  v422[OBJC_IVAR____TtC5Books22PageCurlViewController_needResetAfterCurlEnd] = 0;
  v425 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadForResetAfterCurlEnd;
  v426 = sub_1007A0F74();
  v427 = *(*(v426 - 8) + 56);
  v427(&v422[v425], 1, 1, v426);
  v422[OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled] = 0;
  v427(&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl], 1, 1, v426);
  v427(&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_pendingDestinationSpread], 1, 1, v426);
  if (_swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
  {

    v428 = v617;

    sub_1001F2C68(_swiftEmptyArrayStorage);
  }

  else
  {

    v428 = v617;

    v429 = &_swiftEmptySetSingleton;
  }

  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_tapActionViews] = v429;
  v430 = OBJC_IVAR____TtC5Books22PageCurlViewController_curlHappenedPublisher;
  sub_1001F1160(&qword_100AEB7D0, &qword_10082E590);
  swift_allocObject();
  *&v422[v430] = sub_10079B8D4();
  v431 = OBJC_IVAR____TtC5Books22PageCurlViewController_curlCompletedPublisher;
  swift_allocObject();
  v432 = sub_10079B8D4();
  v577 = v431;
  *&v422[v431] = v432;
  v433 = &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_oldColumnCount];
  *v433 = 0;
  v433[8] = 1;
  v422[OBJC_IVAR____TtC5Books22PageCurlViewController_isObservingChanges] = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v436 = sub_1007A38D4();
    v435 = v603;
    if (v436)
    {
      v434 = sub_1001F0DB4(_swiftEmptyArrayStorage);
    }

    else
    {
      v434 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v434 = &_swiftEmptySetSingleton;
    v435 = v603;
  }

  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_cancellables] = v434;
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController____lazy_storage___panGestureRecognizer] = 0;
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_actionMenuState] = v599;
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_state] = v614;
  swift_weakAssign();
  v437 = &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_bookLayoutController];
  v438 = v591;
  *v437 = v428;
  v437[1] = v438;
  v437[2] = &protocol witness table for BookReaderLayoutController;
  sub_100303E7C(&v623, &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_containerBuilder]);
  *(v423 + 1) = v593;
  swift_unknownObjectWeakAssign();
  v439 = &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_currentLocationProvider];
  *v439 = v616;
  v439[1] = v435;
  v422[OBJC_IVAR____TtC5Books22PageCurlViewController_isSample] = v579 & 1;
  swift_unknownObjectWeakAssign();
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_locationController] = v592;
  v440 = v578;
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor] = v578;
  v441 = &v422[OBJC_IVAR____TtC5Books22PageCurlViewController_paginatingService];
  *v441 = v618;
  v441[1] = &protocol witness table for PaginatingService;
  *(v576 + 8) = &protocol witness table for ReadingSettingsManager;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRetain();
  v442 = v440;

  swift_getObjectType();
  sub_10079F814();
  swift_getObjectType();
  v443 = sub_10079F684();
  swift_unknownObjectRelease();
  *&v422[OBJC_IVAR____TtC5Books22PageCurlViewController_columns] = v443;
  sub_1001F1160(&unk_100AE8808, &unk_10082E598);
  v444 = swift_allocObject();
  *(v444 + 16) = xmmword_10080B690;
  *(v444 + 32) = UIPageViewControllerOptionSpineLocationKey;
  v445 = UIPageViewControllerOptionSpineLocationKey;
  sub_10079F9D4();
  v446 = sub_100598814(v443);

  *(v444 + 64) = &type metadata for Int;
  *(v444 + 40) = v446;
  sub_1001EF3FC(v444);
  swift_setDeallocating();
  sub_100007840(v444 + 32, &qword_100AD3BD8, &qword_10080CD80);
  swift_deallocClassInstance();
  v447 = v601;
  sub_10079F5D4();

  sub_1007A1824();

  type metadata accessor for OptionsKey(0);
  sub_100027EF0(&qword_100AD3FA8, type metadata accessor for OptionsKey, &unk_10080E0E4);
  v448 = sub_1007A2024().super.isa;

  v622.receiver = v422;
  v622.super_class = v589;
  v449 = objc_msgSendSuper2(&v622, "initWithTransitionStyle:navigationOrientation:options:", 0, 0, v448);

  v450 = v449;
  [v450 setDataSource:v450];
  [v450 setDelegate:v450];
  v451 = [objc_opt_self() shared];
  [v451 setPageCurlDelegate:v450];
  sub_10079FCE4();
  sub_10079FC94();
  [v451 setTapAnimationDuration:?];

  sub_10058D9C4();
  sub_10051C758(&v623);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  [v447 addChildViewController:v450];
  v452 = [v447 view];
  if (!v452)
  {
    goto LABEL_59;
  }

  v453 = v452;
  v454 = [v450 view];
  v455 = v609;
  v456 = v610;
  if (!v454)
  {
LABEL_60:

    __break(1u);
    goto LABEL_61;
  }

  v457 = v454;
  [v453 addSubview:v454];

  v458 = [v450 view];
  if (!v458)
  {
LABEL_61:

    __break(1u);
    goto LABEL_62;
  }

  v459 = v458;
  v460 = [v447 view];
  if (!v460)
  {
LABEL_62:

    __break(1u);
    goto LABEL_63;
  }

  v461 = v460;
  v610 = v456;
  [v460 bounds];
  v463 = v462;
  v465 = v464;
  v467 = v466;
  v469 = v468;

  [v459 setFrame:{v463, v465, v467, v469}];
  v470 = [v450 view];
  if (!v470)
  {
LABEL_63:

    __break(1u);
    return;
  }

  v471 = v470;
  [v470 setAutoresizingMask:18];

  [v450 didMoveToParentViewController:v447];
  *(v560 + OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_tapActionViewListener + 8) = &off_100A23D90;
  swift_unknownObjectWeakAssign();
  v472 = swift_getKeyPath();
  __chkstk_darwin(v472);
  v473 = v600;
  *&v623 = v600;
  sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  v474 = v450;
  sub_100797A04();

  v475 = sub_10079F034();
  v476 = sub_10079F5D4();

  v575 = v474;
  sub_10050D6E0(v474, v476);

  v477 = v574;
  sub_10050E910(v473, v580);
  v478 = v613;
  v479 = v537;
  v480 = v535;
  v481 = v594;

  v482 = v477;

  v483 = sub_10050C904(v479, v480, v481, [v565 sharedController]);
  v484 = type metadata accessor for BookReaderToolbarPresenter();
  v621.receiver = objc_allocWithZone(v484);
  v621.super_class = v484;
  v599 = objc_msgSendSuper2(&v621, "init");

  v485 = type metadata accessor for BookReaderActionTarget();
  v486 = objc_allocWithZone(v485);
  *&v486[OBJC_IVAR____TtC5Books22BookReaderActionTarget_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_100A2BC40;
  swift_unknownObjectWeakAssign();
  v620.receiver = v486;
  v620.super_class = v485;
  v487 = objc_msgSendSuper2(&v620, "init");
  sub_100302514(&v633, &v623);
  v488 = v478[3];
  v619 = v484;
  v608 = v482;
  v593 = v487;
  if (v610)
  {
    v595 = v610[2];

    v594 = &off_100A1D378;
  }

  else
  {
    v595 = 0;
    v594 = 0;
  }

  v489 = v520;
  v490 = v563;
  v632[4] = v564;
  v492 = v455[21];
  v491 = v455[22];
  v632[3] = v588;
  v632[0] = v491;

  swift_unknownObjectRetain();

  v591 = v492;
  v493 = v611;
  v579 = sub_10079F064();
  v494 = &off_100A12AB8;
  v495 = v602;
  if (!v602)
  {
    v494 = 0;
  }

  v590 = v494;
  v577 = type metadata accessor for BookReaderContainerViewController(0);
  v576 = sub_10079F4C4();
  swift_retain_n();
  *&v592 = v488;
  v496 = v618;

  v589 = v490;
  v588 = v489;
  v578 = v519;
  v497 = v616;

  v498 = v617;

  v499 = v608;

  v500 = v600;

  v501 = v581;

  v502 = v593;
  v503 = v599;
  v517 = v619;
  v516 = v498;
  v619 = v502;
  v504 = v503;
  v505 = sub_10056AB30(&v623, v592, v493, v589, v499, v501, v588, &off_100A110B8, v578, &off_100A30070, v613, v613, v595, v594, v587, v497, v603, v632, v503, v615, v516, v591, v598, v579, v502, v500, v496, &protocol witness table for PaginatingService, v495, v590, v577, v517, v566, v524, v566, v576, &off_100A146C8, &protocol witness table for BookReaderStateManager, &protocol witness table for BookReaderStateManager, &protocol witness table for BookLayoutModeManager);
  *&v499[OBJC_IVAR____TtC5Books19BookReaderPresenter_router + 8] = &off_100A231D0;
  swift_unknownObjectWeakAssign();
  v506 = swift_allocObject();
  *(v506 + 16) = v499;
  v618 = v499;
  v507 = v505;
  v508 = sub_1007A2D74();
  v510 = v521;
  v509 = v522;
  *v521 = v508;
  v511 = v523;
  (*(v509 + 104))(v510, enum case for DispatchPredicate.onQueue(_:), v523);
  LOBYTE(v499) = sub_1007A1D34();
  (*(v509 + 8))(v510, v511);
  if ((v499 & 1) == 0)
  {
    __break(1u);
LABEL_58:

    __break(1u);
LABEL_59:

    __break(1u);
    goto LABEL_60;
  }

  sub_1006A2708(*(v506 + 16));

  sub_100302D44(&v633);
  sub_10051C758(v637);

  v512 = v602;
  if (v602)
  {
    *(v602 + 96) = &off_100A231B8;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v512 + 112) = &off_100A231A0;
    swift_unknownObjectWeakAssign();
  }

  v513 = v609;
  v609[5] = &off_100A23298;
  swift_unknownObjectWeakAssign();
  v513[7] = &off_100A23270;
  swift_unknownObjectWeakAssign();

  *(v605 + 23) = &off_100A23190;
  swift_unknownObjectWeakAssign();

  sub_1000074E0(v664);
  sub_1000074E0(v666);
}