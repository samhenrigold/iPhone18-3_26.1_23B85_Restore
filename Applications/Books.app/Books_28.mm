uint64_t sub_1003E77D0(id *a1, uint64_t a2)
{
  v3 = sub_100796BB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = v15 - v9;
  v11 = [*a1 lastEngagedDate];
  if (v11)
  {
    v12 = v11;
    sub_100796B64();

    (*(v4 + 32))(v10, v6, v3);
    v13 = sub_100796B04();
    (*(v4 + 8))(v10, v3);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1003E7930(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 assetID];
  if (v4)
  {
    v5 = v4;
    v45 = a2;
    v6 = [v3 cloudAssetType];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1007A2254();
      v10 = v9;
      if (v8 == sub_1007A2254() && v10 == v11)
      {
        goto LABEL_17;
      }

      v13 = sub_1007A3AB4();

      if (v13)
      {
        goto LABEL_18;
      }
    }

    v14 = [v3 cloudAssetType];
    if (!v14)
    {
      goto LABEL_14;
    }

    v7 = v14;
    v15 = sub_1007A2254();
    v17 = v16;
    if (v15 != sub_1007A2254() || v17 != v18)
    {
      v20 = sub_1007A3AB4();

      if ((v20 & 1) == 0)
      {
LABEL_14:
        v21 = [v3 coverURL];
        if (!v21)
        {
LABEL_15:
          v22 = 0;
          v23 = [v3 title];
          goto LABEL_20;
        }

LABEL_19:
        v25 = v21;
        v44 = sub_1007A2254();
        v22 = v26;

        v23 = [v3 title];
LABEL_20:
        v27 = v23;
        if (v27)
        {
          v28 = v27;
          sub_1007A2254();
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = [v3 pageProgressionDirection];
        if (v31)
        {
          v32 = v31;
          sub_1007A2254();
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v35 = [v3 cloudAssetType];
        v36 = [v3 contentType];
        if (v36 && (v37 = v36, v38 = sub_1007A2874(), v37, (v38 - 1) <= 5))
        {
          v39 = *(&off_100A1A200 + v38 - 1);
        }

        else
        {
          v39 = &BDSLibraryContentAssetTypeUnknown;
        }

        v40 = *v39;
        if (v30)
        {
          v41 = sub_1007A2214();

          if (v22)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v41 = 0;
          if (v22)
          {
LABEL_32:
            v42 = sub_1007A2214();

            if (v34)
            {
LABEL_33:
              v43 = sub_1007A2214();

LABEL_37:
              v24 = [objc_allocWithZone(BDSBookWidgetInfo) initWithAssetID:v5 title:v41 coverURL:v42 pageProgressionDirection:v43 cloudAssetType:v35 libraryContentAssetType:v40];

              a2 = v45;
              goto LABEL_38;
            }

LABEL_36:
            v43 = 0;
            goto LABEL_37;
          }
        }

        v42 = 0;
        if (v34)
        {
          goto LABEL_33;
        }

        goto LABEL_36;
      }

LABEL_18:
      v21 = [v3 fileURL];
      if (!v21)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_18;
  }

  v24 = 0;
LABEL_38:
  *a2 = v24;
}

uint64_t sub_1003E7CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1003E7D74;

  return sub_1003E8A80(a5);
}

uint64_t sub_1003E7D74()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1003E7ECC;
  v4 = *(v1 + 24);

  return sub_1003E81B0(v4);
}

uint64_t sub_1003E7ECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1003E7FC0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v2 assetID];
  v10 = sub_1007A2254();
  v12 = v11;

  v13 = [v2 cloudAssetType];
  v14 = [v2 libraryContentAssetType];
  if (!v14)
  {
    v14 = BDSLibraryContentAssetTypeUnknown;
  }

  v15 = [v2 coverURL];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1007A2254();
    v25 = v18;
    v26 = v17;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v19 = [v2 pageProgressionDirection];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1007A2254();
    v23 = v22;

    if (v21 == 7107698 && v23 == 0xE300000000000000)
    {

      v24 = 1;
    }

    else
    {
      v24 = sub_1007A3AB4();
    }
  }

  else
  {
    v24 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v26;
  *(a1 + 72) = v25;
  *(a1 + 80) = v24 & 1;
}

uint64_t sub_1003E81B0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1003E81D0, 0, 0);
}

char *sub_1003E81D0(__n128 a1)
{
  v38 = v1;
  v2 = v1;
  v3 = *(v1[9] + OBJC_IVAR___BKWidgetService_widgetInfoManager);
  if (v3)
  {
    v4 = v2[8];
    if (v4 >> 62)
    {
      v5 = sub_1007A38D4();
      v35 = v3;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v3;
      if (v5)
      {
LABEL_4:
        v37 = _swiftEmptyArrayStorage;
        v6 = v3;
        result = sub_1003BD0CC(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          return result;
        }

        v8 = 0;
        v9 = v2;
        v10 = v37;
        v11 = v4 & 0xC000000000000001;
        v36 = v2[8] + 32;
        do
        {
          if (v11)
          {
            v12 = sub_1007A3784();
          }

          else
          {
            v12 = *(v36 + 8 * v8);
          }

          v13 = v12;
          v14 = [v12 assetID];
          v15 = sub_1007A2254();
          v17 = v16;

          v37 = v10;
          v19 = v10[2];
          v18 = v10[3];
          if (v19 >= v18 >> 1)
          {
            sub_1003BD0CC((v18 > 1), v19 + 1, 1);
            v10 = v37;
          }

          ++v8;
          v10[2] = v19 + 1;
          v20 = &v10[2 * v19];
          v20[4] = v15;
          v20[5] = v17;
        }

        while (v5 != v8);
        v2 = v9;
        goto LABEL_16;
      }
    }

    v23 = v3;
LABEL_16:
    v24 = sub_1007A29D4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v25 = sub_1007A33D4();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      v28 = sub_1007A25F4();
      v30 = v29;

      v31 = sub_1000070F4(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v24, "WidgetService: trying to setBookWidgetInfo %s", v26, 0xCu);
      sub_1000074E0(v27);
    }

    else
    {
    }

    sub_10000A7C4(0, &unk_100AE1A40, BDSBookWidgetInfo_ptr);
    isa = sub_1007A25D4().super.isa;
    v2[6] = sub_1003E85BC;
    v2[7] = 0;
    v2[2] = _NSConcreteStackBlock;
    v2[3] = 1107296256;
    v2[4] = sub_100641374;
    v2[5] = &unk_100A1A188;
    v33 = _Block_copy(v2 + 2);
    v22 = v35;
    [v35 setBookWidgetInfo:isa completion:v33];
    _Block_release(v33);

    goto LABEL_20;
  }

  v21 = sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v22 = sub_1007A33D4();
  sub_10079AB44(v21, &_mh_execute_header, v22, "self.widgetInfoManager is uninitialized. Unable to save bookInfos", 65, 2, _swiftEmptyArrayStorage);
LABEL_20:

  v34 = v2[1];

  return v34();
}

void sub_1003E85BC(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    v2 = sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    log = sub_1007A33D4();
    if (os_log_type_enabled(log, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v10 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = sub_1007A3B84();
      v7 = sub_1000070F4(v5, v6, &v10);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, log, v2, "WidgetService: setBookWidgetInfo %s", v3, 0xCu);
      sub_1000074E0(v4);

      return;
    }
  }

  else
  {
    v8 = sub_1007A29D4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    log = sub_1007A33D4();
    sub_10079AB44(v8, &_mh_execute_header, log, "WidgetService: setBookWidgetInfo succeeded", 42, 2, _swiftEmptyArrayStorage);
  }
}

id WidgetService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003E88B4(void *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (a2)
  {
    v6 = sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v7 = sub_1007A33D4();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1007A3B84();
      v12 = sub_1000070F4(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v7, v6, "WidgetService: error in getCurrentConfigurations %s", v8, 0xCu);
      sub_1000074E0(v9);
    }

    v13 = a1;
    v14 = 1;
  }

  else
  {
    v16 = a1;
    sub_1001F1160(&qword_100AE1AD0, &unk_100822A80);
    sub_100005920(&qword_100AE1AD8, &qword_100AE1AD0, &unk_100822A80, &protocol conformance descriptor for [A]);
    v13 = sub_1007A28A4() & 1;
    v14 = 0;
  }

  return a3(v13, v14);
}

uint64_t sub_1003E8AA0(__n128 a1)
{
  v29 = v1;
  v2 = v1[32];
  if (v2 >> 62)
  {
    v3 = sub_1007A38D4();
    v1[33] = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v25 = v1[1];

    return v25(a1);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v1[33] = v3;
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    a1.n128_u64[0] = 136315138;
    v27 = a1;
    while (1)
    {
      v1[34] = v4;
      v12 = v1[32];
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = sub_1007A3784();
      }

      else
      {
        v13 = *(v12 + 8 * v4 + 32);
      }

      v14 = v13;
      v1[35] = v13;
      v15 = [v13 v5[467]];
      if (!v15)
      {
        sub_1007A2254();
        v15 = sub_1007A2214();
      }

      v16 = sub_1007A2254();
      v18 = v17;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v16, v18, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v16, v18, 1) & 1) == 0)
      {
        break;
      }

      v19 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v20 = sub_1007A33D4();
      if (os_log_type_enabled(v20, v19))
      {
        v7 = p_inst_props;
        v8 = v5;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v28 = v10;
        *v9 = v27.n128_u32[0];
        v11 = sub_1000070F4(v16, v18, &v28);

        *(v9 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v20, v19, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v9, 0xCu);
        sub_1000074E0(v10);

        v5 = v8;
        p_inst_props = v7;
      }

      else
      {
      }

      v4 = v1[34] + 1;
      if (v4 == v1[33])
      {
        goto LABEL_22;
      }
    }

    v21 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v15];
    v1[36] = v21;

    [v21 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v21 setImageSize:?];
    [v21 setPriority:4];
    v22 = [objc_opt_self() defaultCacheManager];
    v1[37] = v22;
    v1[2] = v1;
    v1[7] = v1 + 29;
    v1[3] = sub_1003E8F1C;
    v23 = swift_continuation_init();
    v1[28] = sub_1001F1160(&unk_100AE1AC0, &qword_1008127B8);
    v1[21] = _NSConcreteStackBlock;
    v1[22] = 1107296256;
    v1[23] = sub_10022B374;
    v1[24] = &unk_100A1A1D8;
    v1[25] = v23;
    v24 = v21;
    [v22 fetchCGImageFor:v24 forRequest:v24 completion:v1 + 21];
    v3 = (v1 + 2);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_1003E8F1C()
{

  return _swift_task_switch(sub_1003E8FFC, 0, 0);
}

uint64_t sub_1003E8FFC()
{
  v46 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  *(v0 + 304) = v1;

  if (v1)
  {
    if ([swift_unknownObjectRetain() isGeneric])
    {
      v42 = v0 + 232;
      v43 = *(v0 + 280);
      v4 = sub_1007A29B4();
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v5 = sub_1007A33D4();
      sub_10079AB44(v4, &_mh_execute_header, v5, "We got a generic cover. Skip generating untreated thumbnail and backdrop.", 73, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v8 = [v1 image];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 CGImage];
        *(v0 + 312) = v10;

        if (v10)
        {
          v11 = v0 + 80;
          swift_unknownObjectRelease();
          v12 = qword_100AD1490;
          v13 = v10;
          if (v12 != -1)
          {
            swift_once();
          }

          v14 = [objc_allocWithZone(UIImage) initWithCGImage:v13 scale:0 orientation:*&qword_100B23158];
          *(v0 + 320) = v14;

          sub_1003E7FC0(v11);
          v15 = swift_task_alloc();
          *(v0 + 328) = v15;
          *v15 = v0;
          v15[1] = sub_1003E9758;

          return sub_1003808BC(v14, 0, v11);
        }
      }

      v42 = v0 + 232;
      v43 = *(v0 + 280);
      v17 = sub_1007A29B4();
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v5 = sub_1007A33D4();
      sub_10079AB44(v17, &_mh_execute_header, v5, "rawCover is nil. Skip generating untreated thumbnail and backdrop.", 66, 2, _swiftEmptyArrayStorage);
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v42 = v0 + 232;
    v43 = *(v0 + 280);
    v6 = sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v7 = sub_1007A33D4();
    sub_10079AB44(v6, &_mh_execute_header, v7, "Fetch returned nil. Skip generating untreated thumbnail and backdrop.", 69, 2, _swiftEmptyArrayStorage);
  }

  v18 = *(v0 + 272) + 1;
  if (v18 == *(v0 + 264))
  {
LABEL_15:
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v20 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    v22 = qword_100B23130;
    v44 = v0;
    while (1)
    {
      *(v0 + 272) = v18;
      v29 = *(v0 + 256);
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = sub_1007A3784();
      }

      else
      {
        v30 = *(v29 + 8 * v18 + 32);
      }

      v31 = v30;
      *(v0 + 280) = v30;
      v32 = [v30 v20[467]];
      if (!v32)
      {
        sub_1007A2254();
        v32 = sub_1007A2214();
      }

      v33 = sub_1007A2254();
      v35 = v34;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(v22, v22[3]);
      if ((sub_1005490C0(v33, v35, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(v22, v22[3]);
      if ((sub_1005490C0(v33, v35, 1) & 1) == 0)
      {
        break;
      }

      v36 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v37 = sub_1007A33D4();
      if (os_log_type_enabled(v37, v36))
      {
        v23 = v22;
        v24 = p_inst_props;
        v25 = v20;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v45 = v27;
        *v26 = 136315138;
        v28 = sub_1000070F4(v33, v35, &v45);

        *(v26 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v37, v36, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v26, 0xCu);
        sub_1000074E0(v27);

        v20 = v25;
        p_inst_props = v24;
        v22 = v23;
        v0 = v44;
      }

      else
      {
      }

      v18 = *(v0 + 272) + 1;
      if (v18 == *(v0 + 264))
      {
        goto LABEL_15;
      }
    }

    v38 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v32];
    *(v0 + 288) = v38;

    [v38 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v38 setImageSize:?];
    [v38 setPriority:4];
    v39 = [objc_opt_self() defaultCacheManager];
    *(v0 + 296) = v39;
    *(v0 + 16) = v0;
    *(v0 + 56) = v42;
    *(v0 + 24) = sub_1003E8F1C;
    v40 = swift_continuation_init();
    *(v0 + 224) = sub_1001F1160(&unk_100AE1AC0, &qword_1008127B8);
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10022B374;
    *(v0 + 192) = &unk_100A1A1D8;
    *(v0 + 200) = v40;
    v41 = v38;
    [v39 fetchCGImageFor:v41 forRequest:v41 completion:v0 + 168];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1003E9758()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003E98E8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[43] = v3;
    *v3 = v2;
    v3[1] = sub_1003E9AD0;
    v4 = v2[40];

    return sub_1003815D4(v4, (v2 + 10));
  }
}

uint64_t sub_1003E98E8(__n128 a1)
{
  v14 = v1;
  v2 = sub_1007A29B4();
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v3 = sub_1007A33D4();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v1[42];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v1[31] = v4;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v7 = sub_1007A22E4();
    v9 = sub_1000070F4(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v2, "Failed to generate untreated cover thumbnail and cache the image. error: %s.", v5, 0xCu);
    sub_1000074E0(v6);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v1[43] = v10;
  *v10 = v1;
  v10[1] = sub_1003E9AD0;
  v11 = v1[40];

  return sub_1003815D4(v11, (v1 + 10));
}

uint64_t sub_1003E9AD0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1003EA058;
  }

  else
  {
    v2 = sub_1003E9BE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E9BE4()
{
  v30 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 280);

  sub_1003EA8E8(v0 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 272) + 1;
  if (v5 == *(v0 + 264))
  {
LABEL_2:
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    *&v4 = 136315138;
    v28 = v4;
    while (1)
    {
      *(v0 + 272) = v5;
      v15 = *(v0 + 256);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        v16 = *(v15 + 8 * v5 + 32);
      }

      v17 = v16;
      *(v0 + 280) = v16;
      v18 = [v16 v8[467]];
      if (!v18)
      {
        sub_1007A2254();
        v18 = sub_1007A2214();
      }

      v19 = sub_1007A2254();
      v21 = v20;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v19, v21, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v19, v21, 1) & 1) == 0)
      {
        break;
      }

      v22 = sub_1007A29D4();
      sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
      v23 = sub_1007A33D4();
      if (os_log_type_enabled(v23, v22))
      {
        v10 = p_inst_props;
        v11 = v8;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v29 = v13;
        *v12 = v28;
        v14 = sub_1000070F4(v19, v21, &v29);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v23, v22, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v12, 0xCu);
        sub_1000074E0(v13);

        v8 = v11;
        p_inst_props = v10;
      }

      else
      {
      }

      v5 = *(v0 + 272) + 1;
      if (v5 == *(v0 + 264))
      {
        goto LABEL_2;
      }
    }

    v24 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v18];
    *(v0 + 288) = v24;

    [v24 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v24 setImageSize:?];
    [v24 setPriority:4];
    v25 = [objc_opt_self() defaultCacheManager];
    *(v0 + 296) = v25;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_1003E8F1C;
    v26 = swift_continuation_init();
    *(v0 + 224) = sub_1001F1160(&unk_100AE1AC0, &qword_1008127B8);
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10022B374;
    *(v0 + 192) = &unk_100A1A1D8;
    *(v0 + 200) = v26;
    v27 = v24;
    [v25 fetchCGImageFor:v27 forRequest:v27 completion:v0 + 168];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1003EA058(__n128 a1)
{
  v44 = v1;
  v2 = sub_1007A29B4();
  v3 = sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  v4 = sub_1007A33D4();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = *(v1 + 352);
    v41 = *(v1 + 320);
    v6 = *(v1 + 288);
    v39 = *(v1 + 312);
    v40 = *(v1 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136315138;
    *(v1 + 240) = v5;
    swift_errorRetain();
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v9 = sub_1007A22E4();
    v11 = sub_1000070F4(v9, v10, &v43);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v2, "Failed to generate backdrop and cache the image. error: %s.", v7, 0xCu);
    sub_1000074E0(v8);

    sub_1003EA8E8(v1 + 80);

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *(v1 + 312);
    v12 = *(v1 + 320);
    v14 = *(v1 + 280);

    sub_1003EA8E8(v1 + 80);
    swift_unknownObjectRelease();
  }

  v15 = *(v1 + 272) + 1;
  if (v15 == *(v1 + 264))
  {
LABEL_5:
    v16 = *(v1 + 8);

    return v16();
  }

  else
  {
    v18 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    v42 = v1;
    while (1)
    {
      *(v1 + 272) = v15;
      v26 = *(v1 + 256);
      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = sub_1007A3784();
      }

      else
      {
        v27 = *(v26 + 8 * v15 + 32);
      }

      v28 = v27;
      *(v1 + 280) = v27;
      v29 = [v27 v18[467]];
      if (!v29)
      {
        sub_1007A2254();
        v29 = sub_1007A2214();
      }

      v30 = sub_1007A2254();
      v32 = v31;
      if (p_inst_props[145] != -1)
      {
        swift_once();
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v30, v32, 0) & 1) == 0)
      {
        break;
      }

      sub_10000E3E8(qword_100B23130, qword_100B23148);
      if ((sub_1005490C0(v30, v32, 1) & 1) == 0)
      {
        break;
      }

      v33 = sub_1007A29D4();
      v34 = sub_1007A33D4();
      if (os_log_type_enabled(v34, v33))
      {
        v20 = swift_slowAlloc();
        v21 = p_inst_props;
        v22 = v3;
        v23 = v18;
        v24 = swift_slowAlloc();
        v43 = v24;
        *v20 = 136315138;
        v25 = sub_1000070F4(v30, v32, &v43);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v34, v33, "No need to pre-cache untreated thumbnail or backdrop for assetID: %s because they already exist in cache.", v20, 0xCu);
        sub_1000074E0(v24);
        v18 = v23;
        v3 = v22;
        p_inst_props = v21;
        v1 = v42;
      }

      else
      {
      }

      v15 = *(v1 + 272) + 1;
      if (v15 == *(v1 + 264))
      {
        goto LABEL_5;
      }
    }

    v35 = [objc_allocWithZone(BICDescribedImage) initWithIdentifier:v29];
    *(v1 + 288) = v35;

    [v35 setProcessingOptions:0];
    CGSizeScaleToScreen();
    [v35 setImageSize:?];
    [v35 setPriority:4];
    v36 = [objc_opt_self() defaultCacheManager];
    *(v1 + 296) = v36;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 232;
    *(v1 + 24) = sub_1003E8F1C;
    v37 = swift_continuation_init();
    *(v1 + 224) = sub_1001F1160(&unk_100AE1AC0, &qword_1008127B8);
    *(v1 + 168) = _NSConcreteStackBlock;
    *(v1 + 176) = 1107296256;
    *(v1 + 184) = sub_10022B374;
    *(v1 + 192) = &unk_100A1A1D8;
    *(v1 + 200) = v37;
    v38 = v35;
    [v36 fetchCGImageFor:v38 forRequest:v38 completion:v1 + 168];

    return _swift_continuation_await(v1 + 16);
  }
}

double _s5Books13WidgetServiceC6player_18stateDidChangeFrom2toySo19BKAudiobookControls_p_So0J11PlayerStateVAItF_0()
{
  v0 = objc_opt_self();
  v1 = [v0 shared];
  v2 = [v1 currentAudiobook];

  if (v2)
  {
    v3 = [v2 assetID];
    swift_unknownObjectRelease();
    sub_1007A2254();

    v4 = [v0 shared];
    LOBYTE(v3) = [v4 isPlaying];

    if ((v3 & 1) == 0)
    {
    }
  }

  v5 = [objc_opt_self() books];
  v6 = [v5 userDefaults];

  v7 = sub_1007A2214();

  v8 = sub_1007A2214();
  [v6 setValue:v7 forKey:v8];

  sub_1007A2004();
  sub_1007A1FF4();
  sub_1007A1FD4();

  return result;
}

uint64_t sub_1003EA810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002812C;

  return sub_1003E7CDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1003EA93C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE1AE0);
  sub_100008B98(v0, qword_100AE1AE0);
  return sub_10079ACD4();
}

uint64_t sub_1003EA9BC()
{
  v1 = v0;
  v2 = sub_1007969B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10079ACE4();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1007965C4();
  v8 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v51 - v11;
  v12 = sub_1001F1160(&qword_100AE1B88, &unk_100822B20);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_100796614();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v1;
  sub_1007965E4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100007840(v14, &qword_100AE1B88, &unk_100822B20);
LABEL_23:
    v32 = v63;
    goto LABEL_24;
  }

  v55 = v2;
  v56 = v3;
  (*(v16 + 32))(v18, v14, v15);
  v19 = sub_100796604();
  v21 = v59;
  if (!v20)
  {
    goto LABEL_22;
  }

  if (v19 == 0x6F6F626F69647561 && v20 == 0xE90000000000006BLL)
  {
  }

  else
  {
    v22 = sub_1007A3AB4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v23 = sub_1007965F4();
  if (!v24)
  {
    goto LABEL_22;
  }

  if (v23 == 0x62696C616964656DLL && v24 == 0xEC00000079726172)
  {

    goto LABEL_13;
  }

  v25 = sub_1007A3AB4();

  if ((v25 & 1) == 0)
  {
LABEL_22:
    (*(v16 + 8))(v18, v15);
    v2 = v55;
    v3 = v56;
    goto LABEL_23;
  }

LABEL_13:
  result = sub_1007965D4();
  if (!result)
  {
    goto LABEL_22;
  }

  v27 = result;
  v52 = v5;
  if (!*(result + 16))
  {
LABEL_21:
    (*(v16 + 8))(v18, v15);

    v32 = v63;
    v2 = v55;
    v3 = v56;
    v5 = v52;
LABEL_24:
    if (qword_100AD1540 != -1)
    {
      swift_once();
    }

    v33 = sub_100008B98(v32, qword_100AE1AE0);
    v34 = v62;
    (*(v6 + 16))(v62, v33, v32);
    (*(v3 + 16))(v5, v61, v2);
    v35 = sub_10079ACC4();
    v36 = v5;
    v37 = v2;
    v38 = sub_1007A29B4();
    if (os_log_type_enabled(v35, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v6;
      v41 = v40;
      v64 = v40;
      *v39 = 136315138;
      v42 = sub_1007968F4();
      v44 = v43;
      (*(v3 + 8))(v36, v37);
      v45 = sub_1000070F4(v42, v44, &v64);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v35, v38, "Invalid media library URL %s", v39, 0xCu);
      sub_1000074E0(v41);

      (*(v58 + 8))(v34, v63);
    }

    else
    {

      (*(v3 + 8))(v36, v37);
      (*(v6 + 8))(v34, v32);
    }

    return 0;
  }

  v28 = *(result + 16);
  v29 = 0;
  v53 = v8 + 16;
  v54 = (v8 + 8);
  v58 = v6;
  while (1)
  {
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v8 + 16))(v60, v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v21);
    if (sub_1007965A4() == 0x7469546D75626C61 && v30 == 0xEA0000000000656CLL)
    {
      break;
    }

    v31 = sub_1007A3AB4();

    if (v31)
    {
      goto LABEL_31;
    }

    ++v29;
    result = (*v54)(v60, v21);
    v6 = v58;
    if (v28 == v29)
    {
      goto LABEL_21;
    }
  }

LABEL_31:

  v46 = v57;
  (*(v8 + 32))(v57, v60, v21);
  v47 = sub_1007965B4();
  v49 = v48;
  (*(v8 + 8))(v46, v21);
  (*(v16 + 8))(v18, v15);
  v50 = v49;
  v32 = v63;
  v6 = v58;
  v2 = v55;
  v3 = v56;
  v5 = v52;
  if (!v50)
  {
    goto LABEL_24;
  }

  return v47;
}

uint64_t sub_1003EB16C()
{
  v1 = v0;
  v68 = sub_1007969B4();
  v2 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007965C4();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v56 - v12;
  v13 = sub_1001F1160(&qword_100AE1B88, &unk_100822B20);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_100796614();
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v1;
  v20 = v19;
  sub_1007965E4();
  v67 = v20;
  if ((*(v20 + 6))(v15, 1, v16) == 1)
  {
    sub_100007840(v15, &qword_100AE1B88, &unk_100822B20);
    goto LABEL_24;
  }

  v61 = v5;
  (*(v67 + 4))(v18, v15, v16);
  v21 = sub_100796604();
  if (!v22)
  {
    goto LABEL_22;
  }

  if (v21 == 0x6F6F626F69647561 && v22 == 0xE90000000000006BLL)
  {
  }

  else
  {
    v23 = sub_1007A3AB4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v24 = sub_1007965F4();
  if (!v25)
  {
    goto LABEL_22;
  }

  if (v24 == 0x62696C616964656DLL && v25 == 0xEC00000079726172)
  {

    goto LABEL_13;
  }

  v26 = sub_1007A3AB4();

  if ((v26 & 1) == 0)
  {
LABEL_22:
    (*(v67 + 1))(v18, v16);
    goto LABEL_23;
  }

LABEL_13:
  result = sub_1007965D4();
  if (!result)
  {
    goto LABEL_22;
  }

  v28 = result;
  v29 = *(result + 16);
  v57 = v4;
  v58 = v29;
  if (!v29)
  {
LABEL_21:
    (*(v67 + 1))(v18, v16);

    v4 = v57;
LABEL_23:
    v5 = v61;
    goto LABEL_24;
  }

  v30 = 0;
  v31 = 0x4964756F6C437369;
  v59 = v63 + 16;
  v60 = (v63 + 8);
  while (1)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v63 + 16))(v10, v28 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v30, v64);
    if (sub_1007965A4() == v31 && v32 == 0xEB000000006D6574)
    {
      break;
    }

    v33 = v31;
    v34 = sub_1007A3AB4();

    if (v34)
    {
      goto LABEL_31;
    }

    ++v30;
    result = (*v60)(v10, v64);
    v31 = v33;
    if (v58 == v30)
    {
      goto LABEL_21;
    }
  }

LABEL_31:

  v47 = v62;
  v48 = v63 + 32;
  v49 = v64;
  (*(v63 + 32))(v62, v10, v64);
  sub_1007965B4();
  v51 = v50;
  (*(v48 - 24))(v47, v49);
  v4 = v57;
  v5 = v61;
  if (v51)
  {
    v52 = objc_allocWithZone(NSString);
    v53 = sub_1007A2214();

    v54 = [v52 initWithString:v53];

    v55 = [v54 BOOLValue];
    (*(v67 + 1))(v18, v16);
    return v55;
  }

  (*(v67 + 1))(v18, v16);
LABEL_24:
  v35 = v66;
  if (qword_100AD1540 != -1)
  {
    swift_once();
  }

  v36 = sub_100008B98(v4, qword_100AE1AE0);
  (*(v5 + 16))(v7, v36, v4);
  (*(v2 + 16))(v35, v65, v68);
  v37 = sub_10079ACC4();
  v38 = sub_1007A29B4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v35;
    v67 = v7;
    v42 = v40;
    v69 = v40;
    *v39 = 136315138;
    v43 = sub_1007968F4();
    v45 = v44;
    (*(v2 + 8))(v41, v68);
    v46 = sub_1000070F4(v43, v45, &v69);

    *(v39 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Invalid media library URL  %s", v39, 0xCu);
    sub_1000074E0(v42);

    (*(v5 + 8))(v67, v4);
  }

  else
  {

    (*(v2 + 8))(v35, v68);
    (*(v5 + 8))(v7, v4);
  }

  return 2;
}

void sub_1003EBA60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = (Strong + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider);
  v3 = *(*sub_10000E3E8((Strong + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(Strong + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24)) + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = [*(v3 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v5 = sub_1007A25E4();

  os_unfair_lock_unlock((v3 + 24));
  if (v5 >> 62)
  {
    v6 = sub_1007A38D4();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v8 audiobookProductProfileDidChangeTo:0];
    swift_unknownObjectRelease();
  }

LABEL_12:

  v9 = *(v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
  *(v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset) = 0;

  v10 = [objc_opt_self() sharedInstance];
  [v10 setSessionID:0];

  [*(v1 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) setCurrentAudiobook:0];
  sub_10000E3E8(v2, v2[3]);
  sub_10049FC54(0);
  v11 = *(*sub_10000E3E8(v2, v2[3]) + 16);
  os_unfair_lock_lock((v11 + 24));
  v12 = [*(v11 + 16) allObjects];
  v13 = sub_1007A25E4();

  os_unfair_lock_unlock((v11 + 24));
  if (v13 >> 62)
  {
    v14 = sub_1007A38D4();
    if (v14)
    {
LABEL_14:
      if (v14 >= 1)
      {
        for (j = 0; j != v14; ++j)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = sub_1007A3784();
          }

          else
          {
            v16 = *(v13 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          [v16 audiobookStoreIDDidChangeTo:0];
          swift_unknownObjectRelease();
        }

        goto LABEL_21;
      }

LABEL_25:
      __break(1u);
      return;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  swift_unknownObjectRelease();
}

id sub_1003EBD64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_optionsStoreIDKey + 8);
  v15[0] = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_optionsStoreIDKey);
  v15[1] = v7;

  sub_1007A36B4();
  if (*(a4 + 16) && (v8 = sub_10000E2A4(v16), (v9 & 1) != 0))
  {
    sub_100007484(*(a4 + 56) + 32 * v8, v15);
    sub_10002899C(v16);
    sub_10000E3E8(v15, v15[3]);
    v10 = sub_1007A3AA4();
    sub_1000074E0(v15);
  }

  else
  {
    sub_10002899C(v16);
    v10 = 0;
  }

  v11 = objc_opt_self();
  v12 = sub_1007A2214();
  v13 = [v11 bk_queryWithStoreID:v10 albumTitle:v12 isCloudItem:a3 & 1];
  swift_unknownObjectRelease();

  return v13;
}

id sub_1003EBE98(uint64_t a1, char *a2, void *a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v76 = a8;
  v75 = a7;
  v79 = a6;
  v74 = a5;
  v73 = a4;
  v80 = a3;
  v11 = sub_10079ACE4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = &v68 - v16;
  v18 = __chkstk_darwin(v17);
  v20 = &v68 - v19;
  v72 = *&a2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_persistenceController];
  [v72 registerAEPersistencePlugins];
  v77 = a2;
  *&a2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_audiobook] = a1;
  swift_unknownObjectRelease();
  v21 = qword_100AD1540;
  v78 = a1;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_100008B98(v11, qword_100AE1AE0);
  v23 = *(v12 + 16);
  v23(v20, v22, v11);
  v24 = sub_10079ACC4();
  v25 = sub_1007A2994();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "helper set: fetching bookmark time", v26, 2u);
  }

  v27 = *(v12 + 8);
  v27(v20, v11);
  *&v86[0] = 0xD000000000000020;
  *(&v86[0] + 1) = 0x80000001008D26F0;
  sub_1007A36B4();
  result = [v80 options];
  if (result)
  {
    v29 = result;
    v30 = sub_1007A2044();

    v31 = *(v30 + 16);
    v71 = v27;
    if (v31 && (v32 = sub_10000E2A4(aBlock), (v33 & 1) != 0))
    {
      sub_100007484(*(v30 + 56) + 32 * v32, v86);
      sub_10002899C(aBlock);
    }

    else
    {

      sub_10002899C(aBlock);
      memset(v86, 0, 32);
    }

    sub_10000AE20(v86, aBlock);
    if (v83)
    {
      sub_10000A7C4(0, &unk_100AE1B78, BKAudioLocation_ptr);
      if (swift_dynamicCast())
      {
        v34 = v81;
        v35 = v70;
        v23(v70, v22, v11);
        v36 = v34;
        v37 = sub_10079ACC4();
        v38 = sub_1007A2994();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          aBlock[0] = v69;
          *v39 = 136315138;
          v40 = [v36 description];
          v41 = v36;
          v42 = sub_1007A2254();
          v44 = v43;

          v45 = v42;
          v36 = v41;
          v46 = sub_1000070F4(v45, v44, aBlock);

          *(v39 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "opening to BKAudioLocation %s", v39, 0xCu);
          sub_1000074E0(v69);

          v47 = v70;
        }

        else
        {

          v47 = v35;
        }

        v71(v47, v11);
        v59 = v78;
        [v72 audiobookTimeForLocation:v36 audiobook:v78];
        v61 = v60;
        sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
        v62 = swift_allocObject();
        *(v62 + 16) = v73;
        v63 = v77;
        v64 = v79;
        v65 = v80;
        *(v62 + 24) = v77;
        *(v62 + 32) = v65;
        *(v62 + 40) = v74;
        *(v62 + 48) = v64;
        *(v62 + 56) = v75;
        *(v62 + 64) = v76;
        *(v62 + 72) = a9;
        *(v62 + 80) = v59;
        *(v62 + 88) = v61;

        swift_unknownObjectRetain();
        v66 = v63;
        v67 = v65;

        sub_1007A2CD4();

        return sub_100007840(v86, &unk_100AD5B40, &unk_100811300);
      }
    }

    else
    {
      sub_100007840(aBlock, &unk_100AD5B40, &unk_100811300);
    }

    v23(v14, v22, v11);
    v48 = sub_10079ACC4();
    v49 = sub_1007A2994();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "checking persistence controller for bookmark time", v50, 2u);
    }

    v71(v14, v11);
    v51 = swift_allocObject();
    *(v51 + 16) = v73;
    v53 = v77;
    v52 = v78;
    v54 = v79;
    v55 = v80;
    *(v51 + 24) = v77;
    *(v51 + 32) = v55;
    *(v51 + 40) = v74;
    *(v51 + 48) = v54;
    *(v51 + 56) = v75;
    *(v51 + 64) = v76;
    *(v51 + 72) = a9;
    *(v51 + 80) = v52;
    v84 = sub_1003F00FC;
    v85 = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D6FD4;
    v83 = &unk_100A1A358;
    v56 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v57 = v53;
    v58 = v55;

    [v72 bookmarkTimeForAudiobook:v52 completion:v56];
    _Block_release(v56);
    return sub_100007840(v86, &unk_100AD5B40, &unk_100811300);
  }

  __break(1u);
  return result;
}

void sub_1003EC628(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, NSString a8, double a9, uint64_t a10)
{
  v43 = a7;
  v44 = a4;
  v41 = a1;
  v42 = a6;
  v45 = a5;
  v13 = sub_10079ACE4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007A1D04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v20 = sub_1007A2D74();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v21 = sub_1007A1D34();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if (qword_100AD1540 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = sub_100008B98(v13, qword_100AE1AE0);
  (*(v14 + 16))(v16, v22, v13);
  v23 = sub_10079ACC4();
  v24 = sub_1007A2994();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "helper set: notifying delegate", v25, 2u);
  }

  (*(v14 + 8))(v16, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = [a3 isStreaming];
    v29 = (v27 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider);
    v30 = *(*sub_10000E3E8((v27 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(v27 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24)) + 16);
    os_unfair_lock_lock((v30 + 24));
    v31 = [*(v30 + 16) allObjects];
    sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
    v32 = sub_1007A25E4();

    os_unfair_lock_unlock((v30 + 24));
    if (v32 >> 62)
    {
      v33 = sub_1007A38D4();
      if (v33)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_8:
        if (v33 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v33; ++i)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = sub_1007A3784();
          }

          else
          {
            v35 = *(v32 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          [v35 audiobookProductProfileDidChangeTo:0];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_10000E3E8(v29, v29[3]);
    swift_unknownObjectRetain();
    sub_10049FC54(v28);
    sub_10000E3E8(v29, v29[3]);
    sub_10049FDA4(v44, v45);
    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      *(v36 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay) = (v41 ^ 1) & 1;
      *(v36 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground) = (v42 == 2) | v42 & 1;
      v37 = v36 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen;
      *v37 = a9;
      *(v37 + 8) = 0;
      swift_unknownObjectRelease();
    }

    v38 = *(v27 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
    *(v27 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset) = 0;

    v39 = [objc_opt_self() sharedInstance];
    if (a8)
    {
      a8 = sub_1007A2214();
    }

    [v39 setSessionID:a8];

    [*(v27 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) setCurrentAudiobook:a10 initialPosition:a9];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

double sub_1003ECB74(double a1, double a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = a1 - a2;
  if (v19 < 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v19;
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = a7;
  *(v21 + 40) = a8;
  *(v21 + 48) = a9;
  *(v21 + 56) = a10;
  *(v21 + 64) = a11;
  *(v21 + 72) = a12;
  *(v21 + 80) = a13;
  *(v21 + 88) = v20;
  *(v21 + 96) = a4;
  v22 = a6;
  v23 = a7;

  swift_unknownObjectRetain();
  swift_errorRetain();
  sub_1007A2CD4();

  return result;
}

uint64_t sub_1003ECCA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, void *a13)
{
  v59 = a8;
  v60 = a4;
  LODWORD(v58) = a7;
  v61 = a5;
  v62 = a6;
  v15 = sub_10079ACE4();
  v65 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007A1C54();
  v64 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A1CA4();
  v63 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (!a2 && a1)
    {
      v53 = a1;
      v56 = a11;
      v55 = a10;
      v54 = a9;
      *&Strong[OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_audiobook] = a1;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      v57 = sub_1007A2D74();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v65 = v21;
      v28 = v60;
      v29 = v61;
      *(v27 + 16) = v26;
      *(v27 + 24) = v28;
      v30 = v62;
      *(v27 + 32) = v29;
      *(v27 + 40) = v30;
      *(v27 + 48) = v58;
      v31 = v54;
      *(v27 + 56) = v59;
      *(v27 + 64) = v31;
      *(v27 + 72) = v55;
      *(v27 + 80) = v56;
      *(v27 + 88) = a12;
      v59 = v18;
      *(v27 + 96) = v53;
      aBlock[4] = sub_1003F00B8;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A1A308;
      v58 = _Block_copy(aBlock);

      swift_unknownObjectRetain();
      v32 = v28;
      v33 = v29;
      v34 = v30;

      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100234698();
      v35 = v59;
      sub_1007A3594();
      v36 = v58;
      v37 = v57;
      sub_1007A2D94();
      _Block_release(v36);
      swift_unknownObjectRelease();

      (*(v64 + 8))(v20, v35);
      return (*(v63 + 8))(v23, v65);
    }
  }

  if (qword_100AD1540 != -1)
  {
    swift_once();
  }

  v39 = sub_100008B98(v15, qword_100AE1AE0);
  v40 = v65;
  (*(v65 + 16))(v17, v39, v15);
  swift_errorRetain();
  v41 = a13;
  v42 = sub_10079ACC4();
  v43 = sub_1007A29B4();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v44 = 136315394;
    if (a2)
    {
      swift_getErrorValue();
      v47 = sub_1007A3B84();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v50 = sub_1000070F4(v47, v49, aBlock);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    *v45 = v41;
    v51 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "Error %s producing audiobook from identifer %@", v44, 0x16u);
    sub_100007840(v45, &unk_100AD9480, &qword_1008113B0);

    sub_1000074E0(v46);

    return (*(v65 + 8))(v17, v15);
  }

  else
  {

    return (*(v40 + 8))(v17, v15);
  }
}

void sub_1003ED2F8(uint64_t a1, void *a2, char *a3, void *a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_1003ED3C0(a2);
    sub_1003EBE98(a11, a3, a4, a5, a6, a7, a8, a9, a10);
  }
}

id sub_1003ED3C0(void *a1)
{
  v2 = [a1 items];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_10000A7C4(0, &qword_100ADDB40, MPMediaItem_ptr);
  v4 = sub_1007A25E4();

  if (v4 >> 62)
  {
    result = sub_1007A38D4();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007A3784();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [objc_opt_self() bk_audibleDRMGroupIDForItem:v7];

LABEL_11:
  v9 = *(v1 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_audiobookControls);

  return [v9 setAudibleDRMGroupID:v8];
}

uint64_t sub_1003ED4EC(void *a1)
{
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = v49 - v7;
  v57 = sub_1007969B4();
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = sub_1003F022C;
  v63 = v11;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100201C54;
  v61 = &unk_100A1A3D0;
  v12 = _Block_copy(&aBlock);

  [a1 helperCoverImageWithCompletion:v12];
  _Block_release(v12);
  [a1 previewDuration];
  v14 = v13;
  v15 = [a1 previewURL];
  sub_100796974();

  v16 = [a1 helperMetadataForKey:AEHelperStringMetadataStoreIDKey needsCoordination:1];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    aBlock = 0;
    v59 = 0;
    sub_1007A2244();

    if (v59)
    {
      v54 = aBlock;
      v18 = [a1 helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:1];
      if (v18)
      {
        v19 = v18;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_19;
        }

        aBlock = 0;
        v59 = 0;
        sub_1007A2244();

        if (v59)
        {
          v53 = v59;
          v52 = aBlock;
          v20 = [a1 helperMetadataForKey:AEHelperStringMetadataAuthorKey needsCoordination:1];
          if (!v20)
          {
LABEL_16:

            goto LABEL_17;
          }

          v19 = v20;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            aBlock = 0;
            v59 = 0;
            sub_1007A2244();

            if (v59)
            {
              v49[2] = v59;
              v49[1] = aBlock;
              v21 = [a1 lockupProfileDictionary];
              v50 = sub_1007A2044();

              v51 = [a1 mAsset];
              if (qword_100AD1540 != -1)
              {
                swift_once();
              }

              v22 = sub_100008B98(v2, qword_100AE1AE0);
              v23 = v55;
              (*(v3 + 16))(v55, v22, v2);
              v24 = sub_10079ACC4();
              v25 = sub_1007A29D4();
              if (os_log_type_enabled(v24, v25))
              {
                v26 = swift_slowAlloc();
                *v26 = 0;
                _os_log_impl(&_mh_execute_header, v24, v25, "helper set: producing audiobook", v26, 2u);
              }

              (*(v3 + 8))(v23, v2);
              v27 = [objc_allocWithZone(BKPreviewAudiobookProducer) init];
              v28 = objc_opt_self();
              sub_100796944(v29);
              v31 = v30;
              v32 = sub_1007A2214();

              v33 = sub_1007A2214();

              v34 = sub_1007A2214();

              v35 = [v28 audiobookIdentifierWithPreviewURL:v31 storeID:v32 title:v33 author:v34 duration:v14];

              v36 = swift_allocObject();
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();
              v38 = v35;

              v39 = swift_allocObject();
              v40 = v50;
              v41 = v51;
              v39[2] = v36;
              v39[3] = v41;
              v42 = v56;
              v39[4] = sub_1003F0224;
              v39[5] = v42;
              v39[6] = v40;
              v62 = sub_1003F0234;
              v63 = v39;
              aBlock = _NSConcreteStackBlock;
              v59 = 1107296256;
              v60 = sub_100393608;
              v61 = &unk_100A1A420;
              v43 = _Block_copy(&aBlock);
              swift_unknownObjectRetain();

              [v27 audiobookForIdentifier:v38 completion:v43];
              _Block_release(v43);

              swift_unknownObjectRelease();

              goto LABEL_25;
            }

            goto LABEL_16;
          }

LABEL_19:

          goto LABEL_20;
        }
      }

LABEL_17:
    }
  }

  else
  {
  }

LABEL_20:
  if (qword_100AD1540 != -1)
  {
    swift_once();
  }

  v44 = sub_100008B98(v2, qword_100AE1AE0);
  (*(v3 + 16))(v5, v44, v2);
  v45 = sub_10079ACC4();
  v46 = sub_1007A29B4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Can't produce preview audiobook due to missing metadata", v47, 2u);
  }

  (*(v3 + 8))(v5, v2);
LABEL_25:
  (*(v8 + 8))(v10, v57);
  return swift_unknownObjectWeakDestroy();
}

void sub_1003EDD3C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a2;
  v6 = sub_10079ACE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1D04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v13 = sub_1007A2D74();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1007A1D34();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_100AD1540 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_100008B98(v6, qword_100AE1AE0);
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_10079ACC4();
  v17 = sub_1007A29D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "helper set: notifying delegate", v18, 2u);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = swift_unknownObjectWeakLoadStrong();

    if (v21)
    {
      v51 = a3;
      v22 = [a1 assetID];
      v53 = sub_1007A2254();
      v50 = v23;

      v48[0] = v21;
      v24 = *(v21 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24);
      v49 = (v21 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider);
      v25 = *(*sub_10000E3E8((v21 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), v24) + 16);
      os_unfair_lock_lock((v25 + 24));
      v26 = [*(v25 + 16) allObjects];
      v48[1] = sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
      v27 = sub_1007A25E4();

      os_unfair_lock_unlock((v25 + 24));
      v52 = a1;
      if (v27 >> 62)
      {
        v28 = sub_1007A38D4();
        if (!v28)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v28)
        {
          goto LABEL_18;
        }
      }

      if (v28 < 1)
      {
        __break(1u);
        goto LABEL_32;
      }

      v29 = 0;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = sub_1007A3784();
        }

        else
        {
          v30 = *(v27 + 8 * v29 + 32);
          swift_unknownObjectRetain();
        }

        ++v29;
        isa = sub_1007A2024().super.isa;
        [v30 audiobookProductProfileDidChangeTo:isa];
        swift_unknownObjectRelease();
      }

      while (v28 != v29);
LABEL_18:

      v32 = v49;
      sub_10000E3E8(v49, v49[3]);
      v33 = v52;
      swift_unknownObjectRetain();
      sub_10049FC54(1);
      v34 = *(*sub_10000E3E8(v32, v32[3]) + 16);
      os_unfair_lock_lock((v34 + 24));
      v35 = [*(v34 + 16) allObjects];
      v36 = sub_1007A25E4();

      os_unfair_lock_unlock((v34 + 24));
      if (v36 >> 62)
      {
        v37 = sub_1007A38D4();
        v38 = v51;
        if (v37)
        {
LABEL_20:
          if (v37 >= 1)
          {
            v39 = 0;
            do
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                v40 = sub_1007A3784();
              }

              else
              {
                v40 = *(v36 + 8 * v39 + 32);
                swift_unknownObjectRetain();
              }

              ++v39;
              v41 = sub_1007A2214();
              [v40 audiobookStoreIDDidChangeTo:v41];
              swift_unknownObjectRelease();
            }

            while (v37 != v39);
            goto LABEL_27;
          }

LABEL_32:
          __break(1u);
          return;
        }
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v38 = v51;
        if (v37)
        {
          goto LABEL_20;
        }
      }

LABEL_27:

      v42 = v48[0];
      swift_beginAccess();
      v43 = swift_unknownObjectWeakLoadStrong();
      if (v43)
      {
        *(v43 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_allowAutoplay) = 1;
        *(v43 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_beginPlaybackInBackground) = 1;
        v44 = v43 + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_initialPositionOnOpen;
        *v44 = 0;
        *(v44 + 8) = 0;
        swift_unknownObjectRelease();
      }

      v45 = *(v42 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset);
      *(v42 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_currentMAsset) = v38;
      v46 = v38;

      v47 = [objc_opt_self() sharedInstance];
      [v47 setSessionID:0];

      [*(v42 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) setCurrentAudiobook:v33 initialPosition:0.0];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

void *sub_1003EE3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v32 = a5;
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1C54();
  v36 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007A1CA4();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a1 && (sub_100799444(), (v19 = swift_dynamicCastClass()) != 0))
    {
      v20 = v19;
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v31 = sub_1007A2D74();
      v21 = swift_allocObject();
      v22 = v33;
      v21[2] = v32;
      v21[3] = v22;
      v23 = v34;
      v21[4] = a1;
      v21[5] = v23;
      v21[6] = v20;
      aBlock[4] = sub_1003F0244;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A1A470;
      v32 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100234698();
      sub_1007A3594();
      v24 = v31;
      v25 = v32;
      sub_1007A2D94();
      _Block_release(v25);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v36 + 8))(v14, v12);
      return (*(v35 + 8))(v17, v15);
    }

    else
    {
      if (qword_100AD1540 != -1)
      {
        swift_once();
      }

      v26 = sub_100008B98(v8, qword_100AE1AE0);
      (*(v9 + 16))(v11, v26, v8);
      v27 = sub_10079ACC4();
      v28 = sub_1007A29B4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Can't produce preview audiobook", v29, 2u);
      }

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void sub_1003EE85C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = [a1 CGImage];
      sub_10000E3E8((v5 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(v5 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24));
      sub_10049FB1C(v6);
      v7 = [objc_opt_self() sharedInstance];
      [v7 coverWillChangeTo:v6];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1003EE950(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10079ACE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1540 != -1)
  {
    swift_once();
  }

  v9 = sub_100008B98(v5, qword_100AE1AE0);
  (*(v6 + 16))(v8, v9, v5);
  v10 = a1;
  v11 = sub_10079ACC4();
  v12 = sub_1007A2994();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v32 = v10;
    v16 = v15;
    v34[0] = v15;
    *v14 = 136315138;
    if (a1)
    {
      v17 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v17 = 7104878;
    }

    if (a1)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_1000070F4(v17, v18, v34);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "helper set: finished attempting to fetch cover from library image is %s", v14, 0xCu);
    sub_1000074E0(v16);
    v10 = v32;

    a3 = v33;
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v21 = Strong;
  v22 = swift_unknownObjectWeakLoadStrong();

  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = [v10 CGImage];
  v24 = *(*sub_10000E3E8((v22 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider), *(v22 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_sharedStateProvider + 24)) + 16);
  os_unfair_lock_lock((v24 + 24));
  v25 = [*(v24 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v26 = sub_1007A25E4();

  os_unfair_lock_unlock((v24 + 24));
  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_15;
    }

LABEL_22:

    v30 = [objc_opt_self() sharedInstance];
    [v30 coverWillChangeTo:v23];
    swift_unknownObjectRelease();

LABEL_23:
    (*(a3 + 16))(a3);
    return;
  }

  v27 = sub_1007A38D4();
  if (!v27)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v27 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_1007A3784();
      }

      else
      {
        v29 = *(v26 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v29 audiobookCoverWillChangeTo:v23];
      swift_unknownObjectRelease();
    }

    goto LABEL_22;
  }

  __break(1u);
}

void sub_1003EED50(void *a1, char *a2, void (**a3)(void))
{
  v139 = a1;
  v140 = a2;
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  v137 = v4;
  v138 = v5;
  __chkstk_darwin(v4);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079ACE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v132 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v121 - v12;
  __chkstk_darwin(v13);
  v133 = &v121 - v14;
  __chkstk_darwin(v15);
  v17 = &v121 - v16;
  __chkstk_darwin(v18);
  v20 = &v121 - v19;
  _Block_copy(a3);
  if (qword_100AD1540 != -1)
  {
    swift_once();
  }

  v21 = sub_100008B98(v8, qword_100AE1AE0);
  v22 = *(v9 + 16);
  v135 = v21;
  v136 = v22;
  (v22)(v20);
  v23 = sub_10079ACC4();
  v24 = sub_1007A29D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "_didSetAudiobookHelper", v25, 2u);
  }

  v26 = *(v9 + 8);
  v26(v20, v8);
  v27 = v139;
  v28 = [v139 assetUrl];
  if (!v28)
  {
    goto LABEL_29;
  }

  v29 = v28;
  sub_100796974();

  v30 = [v27 options];
  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = v30;
  v32 = sub_1007A2044();

  v33 = sub_1003EA9BC();
  if (!v34)
  {
    (*(v138 + 8))(v7, v137);
LABEL_28:

    goto LABEL_29;
  }

  v35 = v34;
  v131 = v32;
  v36 = v33;
  v37 = sub_1003EB16C();
  if (v37 == 2 || (v38 = sub_1003EBD64(v36, v35, v37 & 1, v131)) == 0)
  {
    (*(v138 + 8))(v7, v137);

    goto LABEL_28;
  }

  v130 = v38;
  v142 = sub_1007A2254();
  v143 = v39;

  sub_1007A36B4();
  v40 = [v139 options];
  if (!v40)
  {
    _Block_release(a3);
    _Block_release(a3);
    __break(1u);
    goto LABEL_84;
  }

  v41 = v40;

  v42 = sub_1007A2044();

  if (!*(v42 + 16) || (v43 = sub_10000E2A4(aBlock), (v44 & 1) == 0))
  {

    sub_10002899C(aBlock);
LABEL_26:
    (*(v138 + 8))(v7, v137);
LABEL_29:
    sub_1003EBA60();
    a3[2](a3);
LABEL_30:
    _Block_release(a3);
    return;
  }

  sub_100007484(*(v42 + 56) + 32 * v43, &v144);
  sub_10002899C(aBlock);

  if (!swift_dynamicCast())
  {
    (*(v138 + 8))(v7, v137);

    goto LABEL_28;
  }

  v129 = v142;
  v128 = v143;
  v144 = sub_1007A2254();
  v145 = v45;

  sub_1007A36B4();
  v46 = [v139 options];
  if (!v46)
  {
LABEL_84:
    _Block_release(a3);
    _Block_release(a3);
    __break(1u);
LABEL_85:
    _Block_release(a3);
    _Block_release(a3);
    __break(1u);
LABEL_86:
    _Block_release(a3);
    _Block_release(a3);
    __break(1u);
    goto LABEL_87;
  }

  v47 = v46;

  v48 = sub_1007A2044();

  if (*(v48 + 16) && (v49 = sub_10000E2A4(aBlock), (v50 & 1) != 0))
  {
    sub_100007484(*(v48 + 56) + 32 * v49, &v144);
    sub_10002899C(aBlock);

    v51 = swift_dynamicCast();
    v52 = v142;
    if (!v51)
    {
      v52 = 0;
    }

    v125 = v52;
    if (v51)
    {
      v53 = v143;
    }

    else
    {
      v53 = 0;
    }

    v127 = v53;
  }

  else
  {

    sub_10002899C(aBlock);
    v125 = 0;
    v127 = 0;
  }

  v54 = v139;
  v144 = sub_1007A2254();
  v145 = v55;

  sub_1007A36B4();
  v56 = [v54 options];
  if (!v56)
  {
    goto LABEL_85;
  }

  v57 = v56;

  v58 = sub_1007A2044();

  if (*(v58 + 16) && (v59 = sub_10000E2A4(aBlock), (v60 & 1) != 0))
  {
    sub_100007484(*(v58 + 56) + 32 * v59, &v144);
    sub_10002899C(aBlock);

    v61 = swift_dynamicCast();
    v62 = v142;
    if (!v61)
    {
      v62 = 0;
    }

    v124 = v62;
    if (v61)
    {
      v63 = v143;
    }

    else
    {
      v63 = 0;
    }

    v126 = v63;
  }

  else
  {

    sub_10002899C(aBlock);
    v124 = 0;
    v126 = 0;
  }

  v64 = v139;
  v142 = sub_1007A2254();
  v143 = v65;

  sub_1007A36B4();
  v66 = [v64 options];
  if (!v66)
  {
    goto LABEL_86;
  }

  v67 = v66;

  v68 = sub_1007A2044();

  if (*(v68 + 16) && (v69 = sub_10000E2A4(aBlock), (v70 & 1) != 0))
  {
    sub_100007484(*(v68 + 56) + 32 * v69, &v144);
    sub_10002899C(aBlock);

    sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    v71 = swift_dynamicCast();
    v72 = v139;
    if (v71)
    {
      v73 = v139;
      v74 = v142;
      v123 = [v142 BOOLValue];

      v72 = v73;
      goto LABEL_50;
    }
  }

  else
  {

    sub_10002899C(aBlock);
    v72 = v139;
  }

  v123 = 2;
LABEL_50:
  v142 = sub_1007A2254();
  v143 = v75;

  sub_1007A36B4();
  v76 = [v72 options];
  if (!v76)
  {
LABEL_87:
    _Block_release(a3);
    _Block_release(a3);
    __break(1u);
    goto LABEL_88;
  }

  v77 = v76;

  v78 = sub_1007A2044();

  if (!*(v78 + 16) || (v79 = sub_10000E2A4(aBlock), (v80 & 1) == 0))
  {

    sub_10002899C(aBlock);
    goto LABEL_56;
  }

  sub_100007484(*(v78 + 56) + 32 * v79, &v144);
  sub_10002899C(aBlock);

  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  if (!swift_dynamicCast())
  {
LABEL_56:
    v122 = 2;
    goto LABEL_57;
  }

  v81 = v142;
  v122 = [v142 BOOLValue];

LABEL_57:
  v131 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v133 = Strong;
    v136(v17, v135, v8);
    v83 = sub_10079ACC4();
    v84 = sub_1007A2994();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "helper set: fetching cover from library", v85, 2u);
    }

    v26(v17, v8);
    v86 = v133;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_endAccess();
    swift_unknownObjectWeakInit();
    _Block_copy(a3);
    v87 = v128;
    sub_100466C48(v129, v128, v86, aBlock, a3, 1536.0, 1536.0);
    _Block_release(a3);
    swift_unknownObjectRelease();
    swift_unknownObjectWeakDestroy();
  }

  else
  {
    v136(v133, v135, v8);
    v88 = sub_10079ACC4();
    v89 = sub_1007A29B4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "helper set: No delegate, won't be able to fetch cover image for animation in time", v90, 2u);
    }

    v26(v133, v8);
    a3[2](a3);
    v87 = v128;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100466978(v129, v87);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v91 = sub_10046688C(v129, v87);
    swift_unknownObjectRelease();

    if (v91)
    {

      v92 = v132;
      v136(v132, v135, v8);
      v93 = sub_10079ACC4();
      v94 = sub_1007A29D4();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "Attaching to existing, playing audiobook", v95, 2u);
      }

      v26(v92, v8);
LABEL_82:
      (*(v138 + 8))(v7, v137);
      goto LABEL_30;
    }
  }

  else
  {
  }

  v136(v134, v135, v8);
  v96 = sub_10079ACC4();
  v97 = sub_1007A2994();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "setHelper produceAudiobook", v98, 2u);
  }

  v26(v134, v8);
  v144 = sub_1007A2254();
  v145 = v99;

  sub_1007A36B4();
  v100 = [v139 options];
  if (v100)
  {
    v101 = v100;

    v102 = sub_1007A2044();

    if (*(v102 + 16) && (v103 = sub_10000E2A4(aBlock), (v104 & 1) != 0))
    {
      sub_100007484(*(v102 + 56) + 32 * v103, &v144);
      sub_10002899C(aBlock);

      sub_1001F1160(&unk_100AE1B60, &unk_100822B00);
      swift_dynamicCast();
    }

    else
    {

      sub_10002899C(aBlock);
    }

    sub_1001F1160(&qword_100AE1B58, &qword_100822AF8);
    isa = sub_1007A25D4().super.isa;

    v106 = objc_opt_self();
    v107 = v130;
    v108 = [v106 identifierFromMediaQuery:v130 supplementalAssetIdentifiers:isa];

    v109 = [objc_allocWithZone(BKMLAudiobookProducer) initWithStoreDemoMode:0];
    v110 = swift_allocObject();
    v111 = v140;
    swift_unknownObjectWeakInit();
    v112 = swift_allocObject();
    *(v112 + 16) = v110;
    *(v112 + 24) = v107;
    v113 = v139;
    *(v112 + 32) = v111;
    *(v112 + 40) = v113;
    *(v112 + 48) = v123;
    v114 = v127;
    *(v112 + 56) = v125;
    *(v112 + 64) = v114;
    *(v112 + 72) = v122;
    v115 = v126;
    *(v112 + 80) = v124;
    *(v112 + 88) = v115;
    *(v112 + 96) = v108;
    aBlock[4] = sub_1003F0064;
    aBlock[5] = v112;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100393608;
    aBlock[3] = &unk_100A1A2B8;
    v116 = _Block_copy(aBlock);
    v117 = v108;
    v118 = v107;
    v119 = v111;
    v120 = v113;

    [v109 audiobookForIdentifier:v117 completion:v116];
    _Block_release(v116);

    goto LABEL_82;
  }

LABEL_88:
  _Block_release(a3);
  _Block_release(a3);
  __break(1u);
}

void sub_1003EFF64(uint64_t a1, char *a2, void *aBlock)
{
  v6 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingMediaLibraryService_helper;
  _Block_copy(aBlock);
  *&a2[v6] = a1;
  swift_unknownObjectRelease();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    _Block_copy(aBlock);
    swift_unknownObjectRetain();
    sub_1003EED50(v8, a2, aBlock);
    _Block_release(aBlock);
  }

  else
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (v9)
    {
      sub_1003ED4EC(v9);
    }

    else
    {
      sub_1003EBA60();
    }

    (*(aBlock + 2))(aBlock);
  }

  _Block_release(aBlock);
}

uint64_t sub_1003F013C(uint64_t a1)
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003F02A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F02E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003F0364()
{
  v0 = sub_100796CF4();
  v48 = *(v0 - 8);
  v49 = v0;
  __chkstk_darwin(v0);
  v45 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v46 = &v37 - v3;
  v47 = sub_1007A21D4();
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v37 - v6;
  v7 = sub_1007A1C14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  type metadata accessor for CurrentLocationProvider(0);
  sub_1003F2548(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  sub_1007A0544();

  v11 = sub_1007A0A24();
  (*(v8 + 8))(v10, v7);
  v12 = sub_1007A0704(v11);
  v14 = v13;
  v15 = sub_1007A06E4();
  v17 = v16;
  if (v11 == _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {

    return 0;
  }

  else
  {
    v19 = v43;
    sub_1007A2154();
    v20 = v46;
    sub_100796C94();
    v21 = v44;
    v22 = *(v44 + 16);
    v41 = v17;
    v23 = v42;
    v24 = v47;
    v22(v42, v19, v47);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v39 = v12;
    v40 = v15;
    v27 = v48;
    v28 = *(v48 + 16);
    v29 = v45;
    v38 = v14;
    v30 = v49;
    v28(v45, v20, v49);
    sub_1007A22D4(v23, 0, 0, v26, v29, "X of Y in TOC header", 20, 2);
    (*(v27 + 8))(v20, v30);
    (*(v21 + 8))(v19, v24);
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10080EFF0;
    *(v31 + 56) = &type metadata for String;
    v32 = sub_10000E4C4();
    v33 = v38;
    *(v31 + 32) = v39;
    *(v31 + 40) = v33;
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v32;
    v35 = v40;
    v34 = v41;
    *(v31 + 64) = v32;
    *(v31 + 72) = v35;
    *(v31 + 80) = v34;
    v36 = sub_1007A2224();

    return v36;
  }
}

uint64_t sub_1003F0838()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v22[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v22[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  sub_1007A22D4(v10, 0, 0, v15, v3, "Page X of Y in TOC header for accessibility", 43, 2);
  (*(v1 + 8))(v6, v0);
  (*(v8 + 8))(v13, v7);
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10080B690;
  v17 = sub_1003F0364();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000E4C4();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = sub_1007A2224();

  return v20;
}

uint64_t sub_1003F0B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v117 = type metadata accessor for TOCLegacyView(0);
  __chkstk_darwin(v117);
  v120 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1001F1160(&qword_100AE1C08, &qword_100822BE8);
  __chkstk_darwin(v116);
  v119 = &v107 - v4;
  v121 = sub_1001F1160(&qword_100AE1C10, &qword_100822BF0);
  __chkstk_darwin(v121);
  v118 = &v107 - v5;
  v6 = sub_1001F1160(&qword_100AE1C18, &qword_100822BF8);
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v122 = &v107 - v9;
  v10 = sub_100796CF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v107 - v15;
  v17 = sub_1007A21D4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v107 - v23;
  v127 = a1;
  v115 = *(a1 + 41);
  if (v115 == 1)
  {
    v25 = v22;
    v114 = v22;
    sub_1007A2154();
    sub_100796C94();
    (*(v18 + 16))(v20, v24, v25);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v11 + 16))(v13, v16, v10);
    v28 = sub_1007A22D4(v20, 0, 0, v27, v13, "The header for the table of contents popover", 44, 2);
    v30 = v29;
    (*(v11 + 8))(v16, v10);
    (*(v18 + 8))(v24, v114);
    v31 = sub_10079D284();
    LOBYTE(v209) = 1;
    *&v189 = v28;
    *(&v189 + 1) = v30;
    LOBYTE(v190[0]) = v31;
    *(v190 + 8) = 0u;
    *(&v190[1] + 8) = 0u;
    BYTE8(v190[2]) = 1;
    sub_1003F241C(&v189);
    v156 = v199;
    v157 = v200;
    v158 = v201;
    v159 = v202;
    v152 = v195;
    v153 = v196;
    v154 = v197;
    v155 = v198;
    v148 = v191;
    v149 = v192;
    v150 = v193;
    v151 = v194;
    v144 = v189;
    v145 = v190[0];
    v146 = v190[1];
    v147 = v190[2];
    sub_1001F1160(&qword_100AF44B0, &qword_100822C08);
    sub_1001F1160(&qword_100AE1C28, &qword_100822C10);
    sub_1003F20EC();
    sub_100005920(&qword_100AE1C38, &qword_100AE1C28, &qword_100822C10, &protocol conformance descriptor for TupleView<A>);
    sub_10079CCA4();
  }

  else
  {
    sub_10079E474();
    sub_10079BE54();
    v113 = v205;
    v114 = v203;
    v111 = v208;
    v112 = v207;
    v162 = 1;
    v161 = v204;
    v160 = v206;
    v32 = v127;
    v33 = v127[8];
    sub_1003F2000(v127, &v209);
    v34 = swift_allocObject();
    v35 = v212;
    *(v34 + 48) = v211;
    *(v34 + 64) = v35;
    *(v34 + 80) = v213;
    v36 = v210;
    *(v34 + 16) = v209;
    *(v34 + 32) = v36;
    sub_1003F2000(v32, &v209);
    v37 = swift_allocObject();
    v38 = v212;
    *(v37 + 48) = v211;
    *(v37 + 64) = v38;
    *(v37 + 80) = v213;
    v39 = v210;
    *(v37 + 16) = v209;
    *(v37 + 32) = v39;
    v40 = sub_10000E3E8(v32, v32[3]);
    *(&v210 + 1) = &type metadata for TOCPresenter;
    *&v211 = &off_100A1BE88;
    *&v209 = swift_allocObject();
    sub_10030396C(v40, v209 + 16);
    sub_100009864(&v209, &v189);
    v110 = swift_allocObject();
    sub_1001FF7E0(&v189, v110 + 16);

    sub_1000074E0(&v209);
    sub_1003F2000(v32, &v209);
    v41 = swift_allocObject();
    v42 = v212;
    *(v41 + 48) = v211;
    *(v41 + 64) = v42;
    *(v41 + 80) = v213;
    v43 = v210;
    *(v41 + 16) = v209;
    *(v41 + 32) = v43;
    type metadata accessor for ChromeStyle(0);
    sub_1003F2548(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    v44 = sub_10079C484();
    v108 = v45;
    v109 = v44;
    LOBYTE(v40) = sub_10079D2A4();
    sub_10079BBA4();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v209) = 0;
    v54 = sub_10079D2B4();
    sub_10079BBA4();
    LOBYTE(v144) = 0;
    *&v163 = v33;
    *(&v163 + 1) = sub_1003F2038;
    *&v164 = v34;
    *(&v164 + 1) = sub_1003F205C;
    *&v165 = v37;
    *(&v165 + 1) = sub_1003F2080;
    *&v166 = v110;
    *(&v166 + 1) = sub_1003F20D8;
    *&v167 = v41;
    *(&v167 + 1) = v109;
    *&v168 = v108;
    BYTE8(v168) = v40;
    *&v169 = v47;
    *(&v169 + 1) = v49;
    *&v170 = v51;
    *(&v170 + 1) = v53;
    LOBYTE(v171) = 0;
    DWORD1(v171) = *(&v209 + 3);
    *(&v171 + 1) = v209;
    BYTE8(v171) = v54;
    *(&v171 + 9) = v189;
    HIDWORD(v171) = *(&v189 + 3);
    *&v172 = v55;
    *(&v172 + 1) = v56;
    *&v173 = v57;
    *(&v173 + 1) = v58;
    v137 = v172;
    v138 = v173;
    v136 = v171;
    v130 = v165;
    v131 = v166;
    v128 = v163;
    v129 = v164;
    v134 = v169;
    v135 = v170;
    v132 = v167;
    v133 = v168;
    v175[8] = v171;
    v175[9] = v172;
    v175[10] = v173;
    v175[4] = v167;
    v175[5] = v168;
    v175[6] = v169;
    v175[7] = v170;
    v175[0] = v163;
    v175[1] = v164;
    v175[2] = v165;
    v175[3] = v166;
    v185 = v171;
    v186 = v172;
    v187 = v173;
    v174 = 0;
    LOBYTE(v40) = v162;
    LOBYTE(v41) = v161;
    LOBYTE(v33) = v160;
    LOBYTE(v139) = 0;
    v176 = 0;
    v188 = 0;
    v181 = v167;
    v182 = v168;
    v183 = v169;
    v184 = v170;
    v177 = v163;
    v178 = v164;
    v179 = v165;
    v180 = v166;
    sub_1000077D8(&v163, &v209, &qword_100AE1C20, &qword_100822C00);
    sub_1000077D8(v175, &v209, &qword_100AE1C20, &qword_100822C00);
    sub_100007840(&v128, &qword_100AE1C20, &qword_100822C00);
    *&v189 = 0;
    BYTE8(v189) = v40;
    *&v190[0] = v114;
    BYTE8(v190[0]) = v41;
    *&v190[1] = v113;
    BYTE8(v190[1]) = v33;
    *&v190[2] = v112;
    *(&v190[2] + 1) = v111;
    v199 = v185;
    v200 = v186;
    v201 = v187;
    LOBYTE(v202) = v188;
    v195 = v181;
    v196 = v182;
    v197 = v183;
    v198 = v184;
    v191 = v177;
    v192 = v178;
    v193 = v179;
    v194 = v180;
    sub_1003F20E0(&v189);
    v221 = v199;
    v222 = v200;
    v223 = v201;
    v224 = v202;
    v217 = v195;
    v218 = v196;
    v219 = v197;
    v220 = v198;
    v213 = v191;
    v214 = v192;
    v215 = v193;
    v216 = v194;
    v209 = v189;
    v210 = v190[0];
    v211 = v190[1];
    v212 = v190[2];
    sub_1001F1160(&qword_100AF44B0, &qword_100822C08);
    sub_1001F1160(&qword_100AE1C28, &qword_100822C10);
    sub_1003F20EC();
    sub_100005920(&qword_100AE1C38, &qword_100AE1C28, &qword_100822C10, &protocol conformance descriptor for TupleView<A>);
    sub_10079CCA4();
    sub_100007840(&v163, &qword_100AE1C20, &qword_100822C00);
    v221 = v156;
    v222 = v157;
    v223 = v158;
    v217 = v152;
    v218 = v153;
    v219 = v154;
    v220 = v155;
    v213 = v148;
    v214 = v149;
    v215 = v150;
    v216 = v151;
    v209 = v144;
    v210 = v145;
    v211 = v146;
    v212 = v147;
    v224 = v159;
  }

  v59 = v127[7];
  v60 = v127[8];
  v114 = *(v127 + 40);
  v61 = v127[6];
  LODWORD(v113) = *(v127 + 42);
  v62 = sub_10000E3E8(v127, v127[3]);
  *(&v190[0] + 1) = &type metadata for TOCPresenter;
  *&v190[1] = &off_100A1BE88;
  *&v189 = swift_allocObject();
  sub_10030396C(v62, v189 + 16);
  sub_100009864(&v189, &v144);
  v63 = swift_allocObject();
  sub_1001FF7E0(&v144, v63 + 16);
  v110 = v59;

  v64 = v61;
  v65 = v61;
  sub_1000074E0(&v189);
  LOBYTE(v144) = 0;
  sub_10079E214();
  v112 = *(&v189 + 1);
  v127 = v189;
  LODWORD(v111) = LOBYTE(v190[0]);
  KeyPath = swift_getKeyPath();
  v67 = swift_getKeyPath();
  v68 = v117;
  v69 = v120;
  *&v120[*(v117 + 52)] = v67;
  sub_1001F1160(&unk_100ADB740, &qword_100819F00);
  swift_storeEnumTagMultiPayload();
  *(v69 + *(v68 + 56)) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  *v69 = v110;
  *(v69 + 8) = v60;
  *(v69 + 16) = v114;
  *(v69 + 24) = v65;
  *(v69 + 32) = v113;
  *(v69 + 33) = v115;
  *(v69 + 40) = sub_1003F21CC;
  *(v69 + 48) = v63;
  *(v69 + 56) = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  *(v69 + 64) = 0;
  *(v69 + 72) = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  *(v69 + 80) = 0;
  *(v69 + 88) = KeyPath;
  *(v69 + 96) = 0;
  v70 = v69 + *(v68 + 60);
  v71 = v112;
  *v70 = v127;
  *(v70 + 8) = v71;
  *(v70 + 16) = v111;
  LOBYTE(v63) = sub_10079D2B4();
  sub_10079BBA4();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v119;
  sub_1003F21D4(v69, v119);
  v81 = v80 + *(v116 + 36);
  *v81 = v63;
  *(v81 + 8) = v73;
  *(v81 + 16) = v75;
  *(v81 + 24) = v77;
  *(v81 + 32) = v79;
  *(v81 + 40) = 0;
  LOBYTE(v63) = sub_10079D2B4();
  v82 = sub_10079C2C4();
  v83 = v118;
  sub_1003F2238(v80, v118);
  v84 = v83 + *(v121 + 36);
  *v84 = v82;
  *(v84 + 8) = v63;
  sub_1003F22A8();
  v85 = v122;
  sub_10079DA44();
  sub_100007840(v83, &qword_100AE1C10, &qword_100822BF0);
  v140 = v221;
  v141 = v222;
  v142 = v223;
  v143 = v224;
  v136 = v217;
  v137 = v218;
  v138 = v219;
  v139 = v220;
  v132 = v213;
  v133 = v214;
  v134 = v215;
  v135 = v216;
  v128 = v209;
  v129 = v210;
  v130 = v211;
  v131 = v212;
  v87 = v123;
  v86 = v124;
  v88 = *(v124 + 16);
  v89 = v125;
  v88(v123, v85, v125);
  v90 = v139;
  v156 = v140;
  v157 = v141;
  v91 = v141;
  v158 = v142;
  v152 = v136;
  v153 = v137;
  v93 = v136;
  v92 = v137;
  v94 = v138;
  v154 = v138;
  v155 = v139;
  v95 = v132;
  v96 = v133;
  v148 = v132;
  v149 = v133;
  v97 = v134;
  v98 = v135;
  v150 = v134;
  v151 = v135;
  v99 = v128;
  v100 = v129;
  v144 = v128;
  v145 = v129;
  v101 = v130;
  v102 = v131;
  v146 = v130;
  v147 = v131;
  v103 = v126;
  *(v126 + 192) = v140;
  *(v103 + 208) = v91;
  *(v103 + 224) = v142;
  *(v103 + 128) = v93;
  *(v103 + 144) = v92;
  *(v103 + 160) = v94;
  *(v103 + 176) = v90;
  *(v103 + 64) = v95;
  *(v103 + 80) = v96;
  *(v103 + 96) = v97;
  *(v103 + 112) = v98;
  *v103 = v99;
  *(v103 + 16) = v100;
  v159 = v143;
  *(v103 + 240) = v143;
  *(v103 + 32) = v101;
  *(v103 + 48) = v102;
  v104 = sub_1001F1160(&qword_100AE1C58, &qword_100822CB8);
  v88((v103 + *(v104 + 48)), v87, v89);
  sub_1000077D8(&v144, &v189, &qword_100AE1C60, &unk_100822CC0);
  v105 = *(v86 + 8);
  v105(v85, v89);
  v105(v87, v89);
  v199 = v140;
  v200 = v141;
  v201 = v142;
  v202 = v143;
  v195 = v136;
  v196 = v137;
  v197 = v138;
  v198 = v139;
  v191 = v132;
  v192 = v133;
  v193 = v134;
  v194 = v135;
  v189 = v128;
  v190[0] = v129;
  v190[1] = v130;
  v190[2] = v131;
  return sub_100007840(&v189, &qword_100AE1C60, &unk_100822CC0);
}

uint64_t sub_1003F1A84(char a1, void *a2)
{
  sub_10000E3E8(a2, a2[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1007A06B4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003F1B14(uint64_t a1)
{
  v1 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v9 - v2);
  if (!swift_weakLoadStrong())
  {
    v8 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    return sub_100007840(v3, &qword_100ADB1C0, &qword_10082A4E0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v3);

  v4 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    return sub_100007840(v3, &qword_100ADB1C0, &qword_10082A4E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1003F24EC(v3, v6);
  if (EnumCaseMultiPayload == 4)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_1003F1CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  sub_10000E3E8(a3, a3[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1007A2744();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_1007A26F4();
    swift_unknownObjectRetain();

    v12 = sub_1007A26E4();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    v13[5] = a1;
    v13[6] = a2;
    sub_1003457A0(0, 0, v8, &unk_100822CD0, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003F1E40()
{
  v1 = sub_10079E3F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE1BF0, &qword_100822BD8);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10079CB34();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_1001F1160(&qword_100AE1BF8, &qword_100822BE0);
  sub_1003F0B2C(v0, &v7[*(v8 + 44)]);
  sub_10079E3C4();
  sub_100005920(&qword_100AE1C00, &qword_100AE1BF0, &qword_100822BD8, &protocol conformance descriptor for VStack<A>);
  sub_10079D9F4();
  (*(v2 + 8))(v4, v1);
  return sub_100037E3C(v7);
}

uint64_t sub_1003F2088()
{
  sub_1000074E0((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_1003F20EC()
{
  result = qword_100AE1C30;
  if (!qword_100AE1C30)
  {
    sub_1001F1234(&qword_100AF44B0, &qword_100822C08);
    sub_1003F2178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1C30);
  }

  return result;
}

unint64_t sub_1003F2178()
{
  result = qword_100AE4410;
  if (!qword_100AE4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4410);
  }

  return result;
}

uint64_t sub_1003F21D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TOCLegacyView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F2238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE1C08, &qword_100822BE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003F22A8()
{
  result = qword_100AE1C40;
  if (!qword_100AE1C40)
  {
    sub_1001F1234(&qword_100AE1C10, &qword_100822BF0);
    sub_1003F2360();
    sub_100005920(&qword_100AF44E0, &qword_100AE1C50, &qword_100822CB0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1C40);
  }

  return result;
}

unint64_t sub_1003F2360()
{
  result = qword_100AE1C48;
  if (!qword_100AE1C48)
  {
    sub_1001F1234(&qword_100AE1C08, &qword_100822BE8);
    sub_1003F2548(&qword_100AF10B0, type metadata accessor for TOCLegacyView, &unk_10083AF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1C48);
  }

  return result;
}

uint64_t sub_1003F2424(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1006BEA20(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003F24EC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F2548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003F2590()
{
  result = [objc_allocWithZone(type metadata accessor for PPTRunner()) init];
  qword_100B232B8 = result;
  return result;
}

uint64_t sub_1003F2694(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  p_aBlock = &aBlock;
  v8 = sub_100580218(sub_100266288, v37, &off_100A0CF50);
  swift_arrayDestroy();
  if (v8)
  {
    return (v8 & 1) == 0;
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = sub_1007A2214();
  v11 = sub_1007A2214();
  v12 = [v9 pathForResource:v10 ofType:v11];

  if (v12)
  {
    v13 = [objc_allocWithZone(NSDictionary) initWithContentsOfFile:v12];

    if (v13)
    {
      *&v44 = a1;
      *(&v44 + 1) = a2;

      v14 = [v13 __swift_objectForKeyedSubscript:sub_1007A3B04()];
      swift_unknownObjectRelease();
      if (v14)
      {
        sub_1007A3504();
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      aBlock = v44;
      v40 = v45;
      if (*(&v45 + 1))
      {
        sub_1001F1160(&qword_100AD6710, &unk_10080B890);
        if (swift_dynamicCast())
        {
          v15 = v43;
          v36 = v8;
          if (*(v43 + 16) && (v16 = sub_10000E53C(0x7079742D6B6F6F62, 0xE900000000000065), (v17 & 1) != 0))
          {
            sub_100007484(*(v15 + 56) + 32 * v16, &aBlock);
            sub_1000230BC(&aBlock);
            v18 = [objc_opt_self() delegate];
            [v18 _createCoverCacheForcingEmptyPPTCache:1];
          }

          else
          {
            aBlock = 0u;
            v40 = 0u;
            sub_1000230BC(&aBlock);
          }

          v19 = OBJC_IVAR____TtC5Books9PPTRunner_testCaseQueue;
          swift_beginAccess();
          v20 = *&v4[v19];

          v21 = a3;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v4[v19] = v20;
          v23 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v20 = sub_10066B954(0, *(v20 + 2) + 1, 1, v20);
            *&v4[v19] = v20;
          }

          v25 = *(v20 + 2);
          v24 = *(v20 + 3);
          if (v25 >= v24 >> 1)
          {
            v20 = sub_10066B954((v24 > 1), v25 + 1, 1, v20);
          }

          *(v20 + 2) = v25 + 1;
          v26 = &v20[32 * v25];
          *(v26 + 4) = a1;
          *(v26 + 5) = a2;
          *(v26 + 6) = v21;
          *(v26 + 7) = v15;
          *&v4[v19] = v20;
          swift_endAccess();
          if (qword_100AD1548 != -1)
          {
            swift_once();
          }

          v27 = sub_10079ACE4();
          sub_100008B98(v27, qword_100AE1C68);
          v28 = sub_10079ACC4();
          v29 = sub_1007A2994();
          v8 = v36;
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "checking to see if tab bar is loaded", v30, 2u);
          }

          v31 = [objc_opt_self() sceneManager];
          v32 = swift_allocObject();
          *(v32 + 16) = v4;
          v41 = sub_1003F5EB8;
          v42 = v32;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v40 = sub_100201C54;
          *(&v40 + 1) = &unk_100A1A928;
          v33 = _Block_copy(&aBlock);
          v34 = v4;

          [v31 requestTabBarSceneController:v33];

          _Block_release(v33);
          return (v8 & 1) == 0;
        }
      }

      else
      {
        sub_1000230BC(&aBlock);
      }

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1007A3744(21);

      *&aBlock = 0x7473655420545050;
      *(&aBlock + 1) = 0xE900000000000020;
      v46._countAndFlagsBits = a1;
      v46._object = a2;
      sub_1007A23D4(v46);
      v47._countAndFlagsBits = 0x756F6620746F6E20;
      v47._object = 0xEA0000000000646ELL;
      sub_1007A23D4(v47);
    }
  }

  result = sub_1007A38A4();
  __break(1u);
  return result;
}

void sub_1003F2CD0(void *a1, void *a2)
{
  v3 = [a1 launchCoordinator];
  v4 = sub_1007A2214();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v8[4] = sub_1003F5EC0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10021B6B0;
  v8[3] = &unk_100A1A978;
  v6 = _Block_copy(v8);
  v7 = a2;

  [v3 appLaunchCoordinatorOnConditionMask:4096 blockID:v4 performBlock:v6];
  _Block_release(v6);
}

uint64_t sub_1003F2E90()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1007A1CA4();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v13 = sub_10079ACE4();
  sub_100008B98(v13, qword_100AE1C68);
  v14 = sub_10079ACC4();
  v15 = sub_1007A2994();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "waiting one second to ensure tabs are settled", v16, 2u);
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v17 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v25 = *(v7 + 8);
  v25(v9, v6);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_1003F5E94;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1A8D8;
  v19 = _Block_copy(aBlock);
  v20 = v1;

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  v21 = v6;
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  v22 = v27;
  v23 = v30;
  sub_1007A3594();
  sub_1007A2D04();
  _Block_release(v19);

  (*(v29 + 8))(v22, v23);
  (*(v26 + 8))(v5, v28);
  return (v25)(v12, v21);
}

void sub_1003F32FC()
{
  v1 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v1 - 8);
  v60 = &v54 - v2;
  v3 = OBJC_IVAR____TtC5Books9PPTRunner_testCaseQueue;
  swift_beginAccess();
  v63[0] = *(v0 + v3);
  sub_1001F1160(&qword_100AE1D20, &qword_100822D78);
  sub_100005920(&qword_100AE1D28, &qword_100AE1D20, &qword_100822D78, &protocol conformance descriptor for [A]);
  if ((sub_1007A28A4() & 1) == 0)
  {
    return;
  }

  v4 = [objc_opt_self() shared];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 emulateCurrentLightLevelChange:0];

  swift_beginAccess();
  v58 = sub_10048AC84(0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_endAccess();
  if (*(v11 + 16) && (v12 = sub_10000E53C(0x6F74732D6B6F6F62, 0xEA00000000006572), (v13 & 1) != 0) && (sub_100007484(*(v11 + 56) + 32 * v12, v63), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v61;
    if (!*(v11 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    if (!*(v11 + 16))
    {
      goto LABEL_16;
    }
  }

  v15 = sub_10000E53C(7107189, 0xE300000000000000);
  if (v16)
  {
    sub_100007484(*(v11 + 56) + 32 * v15, v63);
    v17 = swift_dynamicCast();
    v18 = v61;
    if (!v17)
    {
      v18 = 0;
    }

    v55 = v18;
    if (v17)
    {
      v19 = v62;
    }

    else
    {
      v19 = 0;
    }

    v59 = v19;
    goto LABEL_17;
  }

LABEL_16:
  v55 = 0;
  v59 = 0;
LABEL_17:
  v20 = objc_opt_self();
  v21 = [v20 sceneManager];
  v22 = [v21 currentSceneController];

  if (v22)
  {
    if (qword_100AD1548 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100AE1C68);

    v24 = sub_10079ACC4();
    v25 = sub_1007A2994();

    v26 = v25;
    v27 = os_log_type_enabled(v24, v25);
    v57 = v20;
    LODWORD(v56) = v14;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v9;
      v30 = v29;
      v63[0] = v29;
      *v28 = 136446210;

      v31 = sub_1000070F4(v58, v7, v63);

      *(v28 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v26, "about to start next test named: %{public}s", v28, 0xCu);
      sub_1000074E0(v30);
      v9 = v54;
    }

    v32 = [objc_opt_self() defaultCenter];
    if (qword_100AD18C8 != -1)
    {
      swift_once();
    }

    v33 = qword_100B23660;
    v34 = [objc_opt_self() sharedApplication];
    [v32 postNotificationName:v33 object:v34];

    v35 = [v22 newShowURLTransaction];
    if (v56)
    {

      v36 = [v57 sceneManager];
      v37 = [v36 storePresenter];

      [v37 showStoreWithTransaction:v35];
    }

    else if (v59)
    {
      v56 = v22;
      v42 = v60;
      sub_1007969A4();

      v43 = sub_1007969B4();
      v44 = *(v43 - 8);
      v46 = 0;
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        v47 = v60;
        sub_100796944(v45);
        v46 = v48;
        (*(v44 + 8))(v47, v43);
      }

      v49 = [objc_opt_self() URLWithURL:v46];

      v50 = [v57 sceneManager];
      v51 = [v50 storePresenter];

      [v51 showStoreWithURL:v49 transaction:v35];
    }

    else
    {
      v52 = [v57 sceneManager];
      v53 = [v52 libraryCollectionPresenter];

      [v53 showLibraryWithTransaction:v35 animated:0 completion:0];
    }

    swift_unknownObjectRelease();
    sub_1003F3AD8(v58, v7, v9, v11);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_100AD1548 != -1)
    {
      swift_once();
    }

    v38 = sub_10079ACE4();
    sub_100008B98(v38, qword_100AE1C68);
    v39 = sub_10079ACC4();
    v40 = sub_1007A29B4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "failed to obtain currentSceneController", v41, 2u);
    }
  }
}

void sub_1003F3AD8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1003F4EA0(a1, a2, a3, a4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_1003F5D5C;
  v26 = v10;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1003323D0;
  v24 = &unk_100A1A720;
  v11 = _Block_copy(&v21);

  [v9 setOnIdle:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v25 = sub_1003F5D64;
  v26 = v12;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1003323D0;
  v24 = &unk_100A1A770;
  v13 = _Block_copy(&v21);

  [v9 setOnStart:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v25 = sub_1003F5DD4;
  v26 = v14;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1003323D0;
  v24 = &unk_100A1A7C0;
  v15 = _Block_copy(&v21);

  [v9 setOnSuccess:v15];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = v16;
  v25 = sub_1003F5DFC;
  v26 = v17;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1003323D0;
  v24 = &unk_100A1A838;
  v18 = _Block_copy(&v21);

  v19 = v9;

  [v19 setOnFatalError:v18];
  _Block_release(v18);
  v20 = *(v4 + OBJC_IVAR____TtC5Books9PPTRunner_currentTestRunner);
  *(v4 + OBJC_IVAR____TtC5Books9PPTRunner_currentTestRunner) = v9;

  [v19 start];
}

void sub_1003F3E50(uint64_t a1)
{
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE1C68);
  v2 = sub_10079ACC4();
  v3 = sub_1007A2994();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "runner is idle", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC5Books9PPTRunner_currentTestRunner];
    *&Strong[OBJC_IVAR____TtC5Books9PPTRunner_currentTestRunner] = 0;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1003F32FC();
  }
}

void sub_1003F3F98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100AE1C68);

  oslog = sub_10079ACC4();
  v9 = sub_1007A2994();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1000070F4(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, oslog, v9, a5, v10, 0xCu);
    sub_1000074E0(v11);
  }
}

uint64_t sub_1003F4118(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1007A1C54();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007A1CA4();
  v34 = *(v13 - 8);
  v35 = v13;
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100AE1C68);

  v17 = sub_10079ACC4();
  v18 = sub_1007A2994();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a4;
    v20 = a1;
    v21 = v19;
    v22 = swift_slowAlloc();
    v33 = v15;
    v23 = v12;
    v24 = v10;
    v25 = a5;
    v26 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1000070F4(v20, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "failed test named: %{public}s", v21, 0xCu);
    sub_1000074E0(v26);
    a5 = v25;
    v10 = v24;
    v12 = v23;
    v15 = v33;

    a1 = v20;
    a4 = v32;
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v27 = sub_1007A2D74();
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = a3;
  v28[5] = a4;
  v28[6] = a5;
  aBlock[4] = sub_1003F5E64;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1A888;
  v29 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v29);

  (*(v36 + 8))(v12, v10);
  return (*(v34 + 8))(v15, v35);
}

void sub_1003F4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_1007A2214();
  v7 = [v5 isRunningTest:v6];

  if ((v7 & 1) == 0)
  {
    v8 = sub_1007A2214();
    [v5 startedTest:v8];
  }

  v9 = sub_1007A2214();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong errorMessage];

    sub_1007A2254();
  }

  v13 = sub_1007A2214();

  [v5 failedTest:v9 withFailure:v13];
}

id sub_1003F4748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTRunner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003F47E0()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 _launchTestName];
  v12 = [v1 isRunningTest:v11];

  if (!v12)
  {
    if (qword_100AD1548 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE1C68);
    v29 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (!os_log_type_enabled(v29, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Not really running launch test";
    goto LABEL_11;
  }

  if (byte_100B232C0)
  {
    if (qword_100AD1548 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AE1C68);
    v29 = sub_10079ACC4();
    v14 = sub_1007A2994();
    if (!os_log_type_enabled(v29, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Ignoring duplicate extended launch completion. PPT kills us if we call finishedTest() now";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v29, v14, v16, v15, 2u);

LABEL_12:
    v18 = v29;

    return;
  }

  byte_100B232C0 = 1;
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v28 = v7;
  v29 = v3;
  v19 = sub_10079ACE4();
  sub_100008B98(v19, qword_100AE1C68);
  v20 = sub_10079ACC4();
  v21 = sub_1007A2994();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "finishedTest", v22, 2u);
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v27 = sub_1007A2D74();
  aBlock[4] = sub_1003F4D34;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1A6D0;
  v23 = _Block_copy(aBlock);
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  v24 = v27;
  sub_1007A2D94();
  _Block_release(v23);

  (v29[1].isa)(v5, v2);
  (*(v28 + 8))(v10, v6);
  v25 = [v1 _launchTestName];
  [v1 finishedTest:v25 extraResults:0];
}

void sub_1003F4D34()
{
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AE1C68);
  oslog = sub_10079ACC4();
  v1 = sub_1007A2994();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "actually finishedTest", v2, 2u);
  }
}

id sub_1003F4EA0(NSString a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = [objc_allocWithZone(PPTTestRunner) init];
  if (*(a4 + 16) && (v8 = sub_10000E53C(0xD000000000000011, 0x80000001008D2830), (v9 & 1) != 0) && (sub_100007484(*(a4 + 56) + 32 * v8, &v74), sub_1001F1160(&qword_100ADEC60, &unk_10081EB80), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v73._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = _swiftEmptyArrayStorage;
  }

  v11 = countAndFlagsBits[2];
  v69 = a2;
  v70 = a4;
  v72 = a1;
  if (!v11)
  {

    if (!*(a4 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  v12 = (countAndFlagsBits + 4);
  do
  {
    sub_100007484(v12, &v74);
    if (swift_dynamicCast())
    {
      v13 = sub_1007A2214();
      object = NSClassFromString(v13);

      if (!object || (swift_getObjCClassMetadata(), sub_10000A7C4(0, &qword_100AE1D18, &off_1009F85E0), !swift_dynamicCastMetatype()))
      {
LABEL_59:
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_1007A3744(29);

        v74 = 0x616C632074736574;
        v75 = 0xEB00000000207373;
        v67 = v73;
        goto LABEL_60;
      }

      if (qword_100AD1548 != -1)
      {
        swift_once();
      }

      v15 = sub_10079ACE4();
      sub_100008B98(v15, qword_100AE1C68);

      v16 = sub_10079ACC4();
      v17 = sub_1007A2994();

      v18 = a2;
      if (os_log_type_enabled(v16, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v74 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_1000070F4(v72, v18, &v74);
        _os_log_impl(&_mh_execute_header, v16, v17, "adding test named: %{public}s", v19, 0xCu);
        sub_1000074E0(v20);
      }

      sub_10058096C(a3);
      sub_10058096C(v70);
      a2 = v21;
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      a1 = sub_1007A2214();
      object = &protocol witness table for AnyHashable;
      isa = sub_1007A2024().super.isa;

      v23 = sub_1007A2024().super.isa;

      v24 = [v22 initWithName:a1 options:isa testDefinition:v23 isMainTest:0];

      if (!v24)
      {
        goto LABEL_61;
      }

      v25 = v24;
      v26 = [v71 testQueue];
      [v26 addObject:v25];

      a2 = v69;
      a1 = v72;
    }

    else
    {
      if (qword_100AD1548 != -1)
      {
        swift_once();
      }

      v27 = sub_10079ACE4();
      sub_100008B98(v27, qword_100AE1C68);

      v28 = sub_10079ACC4();
      v29 = sub_1007A29B4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        isa = swift_slowAlloc();
        v74 = isa;
        *v30 = 136446210;
        *(v30 + 4) = sub_1000070F4(a1, a2, &v74);
        _os_log_impl(&_mh_execute_header, v28, v29, "malformed job in preliminary-tests: %{public}s", v30, 0xCu);
        sub_1000074E0(isa);
      }
    }

    v12 += 32;
    --v11;
  }

  while (v11);

  a4 = v70;
  if (*(v70 + 16))
  {
LABEL_26:
    v31 = sub_10000E53C(0x7365742D6E69616DLL, 0xE900000000000074);
    if (v32)
    {
      sub_100007484(*(a4 + 56) + 32 * v31, &v74);
      if (swift_dynamicCast())
      {
        isa = v73._object;
        object = v73._countAndFlagsBits;
        v33 = sub_1007A2214();
        v34 = NSClassFromString(v33);

        if (!v34)
        {
          goto LABEL_63;
        }

        swift_getObjCClassMetadata();
        sub_10000A7C4(0, &qword_100AE1D18, &off_1009F85E0);
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_63;
        }

        if (qword_100AD1548 != -1)
        {
          swift_once();
        }

        v35 = sub_10079ACE4();
        sub_100008B98(v35, qword_100AE1C68);

        v36 = sub_10079ACC4();
        v37 = sub_1007A2994();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v74 = v39;
          *v38 = 136446210;
          *(v38 + 4) = sub_1000070F4(a1, v69, &v74);
          _os_log_impl(&_mh_execute_header, v36, v37, "adding test named: %{public}s", v38, 0xCu);
          sub_1000074E0(v39);
        }

        sub_10058096C(a3);
        sub_10058096C(a4);
        object = objc_allocWithZone(swift_getObjCClassFromMetadata());
        a2 = sub_1007A2214();
        a1 = &protocol witness table for AnyHashable;
        v40 = sub_1007A2024().super.isa;

        v41 = sub_1007A2024().super.isa;

        v42 = [(objc_class *)object initWithName:a2 options:v40 testDefinition:v41 isMainTest:1];

        if (!v42)
        {
LABEL_61:
          v74 = 0;
          v75 = 0xE000000000000000;
          sub_1007A3744(51);
          v79._object = 0x80000001008D2870;
          v79._countAndFlagsBits = 0xD000000000000031;
          sub_1007A23D4(v79);
          v80._countAndFlagsBits = sub_1007A3D34();
          sub_1007A23D4(v80);

          while (1)
          {
            sub_1007A38A4();
            __break(1u);
LABEL_63:
            v74 = 0;
            v75 = 0xE000000000000000;
            sub_1007A3744(29);

            v74 = 0x616C632074736574;
            v75 = 0xEB00000000207373;
            v67._countAndFlagsBits = object;
            v67._object = isa;
LABEL_60:
            sub_1007A23D4(v67);
            v76._countAndFlagsBits = 543584032;
            v76._object = 0xE400000000000000;
            sub_1007A23D4(v76);
            v77._countAndFlagsBits = a1;
            v77._object = a2;
            sub_1007A23D4(v77);
            v78._countAndFlagsBits = 0x756F6620746F6E20;
            v78._object = 0xEA0000000000646ELL;
            sub_1007A23D4(v78);
          }
        }

        v43 = v42;
        v44 = [v71 testQueue];
        [v44 addObject:v43];

        a2 = v69;
        a4 = v70;
        a1 = v72;
      }
    }
  }

LABEL_36:
  if (*(a4 + 16) && (v45 = sub_10000E53C(0x2D70756E61656C63, 0xED00007374736574), (v46 & 1) != 0) && (sub_100007484(*(a4 + 56) + 32 * v45, &v74), sub_1001F1160(&qword_100ADEC60, &unk_10081EB80), (swift_dynamicCast() & 1) != 0))
  {
    v47 = v73._countAndFlagsBits;
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  v48 = v47[2];
  if (v48)
  {
    isa = &type metadata for Any;
    v49 = (v47 + 4);
    do
    {
      sub_100007484(v49, &v74);
      if (swift_dynamicCast())
      {
        object = v73._object;
        v50 = sub_1007A2214();
        v51 = NSClassFromString(v50);

        if (!v51)
        {
          goto LABEL_59;
        }

        swift_getObjCClassMetadata();
        sub_10000A7C4(0, &qword_100AE1D18, &off_1009F85E0);
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        if (qword_100AD1548 != -1)
        {
          swift_once();
        }

        v52 = sub_10079ACE4();
        sub_100008B98(v52, qword_100AE1C68);

        v53 = sub_10079ACC4();
        v54 = sub_1007A2994();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v74 = v56;
          *v55 = 136446210;
          *(v55 + 4) = sub_1000070F4(v72, a2, &v74);
          _os_log_impl(&_mh_execute_header, v53, v54, "adding test named: %{public}s", v55, 0xCu);
          sub_1000074E0(v56);
        }

        sub_10058096C(a3);
        sub_10058096C(v70);
        v57 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        a1 = sub_1007A2214();
        object = &type metadata for Any;
        a2 = sub_1007A2024().super.isa;

        isa = sub_1007A2024().super.isa;

        v58 = [v57 initWithName:a1 options:a2 testDefinition:isa isMainTest:0];

        if (!v58)
        {
          goto LABEL_61;
        }

        v59 = v58;
        v60 = [v71 testQueue];
        [v60 addObject:v59];

        a2 = v69;
        a1 = v72;
        isa = &type metadata for Any;
      }

      else
      {
        if (qword_100AD1548 != -1)
        {
          swift_once();
        }

        v61 = sub_10079ACE4();
        sub_100008B98(v61, qword_100AE1C68);

        v62 = sub_10079ACC4();
        v63 = sub_1007A29B4();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v74 = v65;
          *v64 = 136446210;
          *(v64 + 4) = sub_1000070F4(a1, a2, &v74);
          _os_log_impl(&_mh_execute_header, v62, v63, "malformed job in cleanup-tests: %{public}s", v64, 0xCu);
          sub_1000074E0(v65);
          isa = &type metadata for Any;
        }
      }

      v49 += 32;
      --v48;
    }

    while (v48);
  }

  return v71;
}

uint64_t sub_1003F5D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1003F5E14()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall BookMessagesDebugViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_1007A1C54();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007A1CA4();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BookMessagesDebugViewController();
  v23.receiver = v0;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v9 = *&v0[OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration];
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = [v0 navigationItem];
    v11 = [v9 eventName];
    sub_1007A2254();

    v12 = sub_1007A2214();

    [v10 setTitle:v12];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = [v0 navigationItem];
    v12 = sub_1007A2214();
    [v10 setTitle:v12];
  }

  sub_100017E74();
  v13 = sub_1007A2D74();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003F66B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1A9C8;
  v15 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  (*(v5 + 8))(v7, v20);
  v16 = [v1 tableView];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for BookMessagesCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = sub_1007A2214();
    [v17 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v19];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003F6560(uint64_t a1)
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = [v3 engagementManager]) != 0)
    {
      v5 = v4;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = *(Strong + OBJC_IVAR___BKBookMessagesDebugViewController_manager);
        *(Strong + OBJC_IVAR___BKBookMessagesDebugViewController_manager) = v5;
        v8 = Strong;
        v9 = v5;
      }

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        sub_1003F6734();
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1003F6734()
{
  v1 = *&v0[OBJC_IVAR___BKBookMessagesDebugViewController_manager];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration];
    v11 = *&v0[OBJC_IVAR___BKBookMessagesDebugViewController_manager];
    if (v2)
    {
      v3 = v1;
      swift_unknownObjectRetain();
      v4 = [v0 navigationItem];
      v5 = [v2 eventName];
      sub_1007A2254();

      v6 = sub_1007A2214();

      [v4 setTitle:v6];

      v7 = *&v3[OBJC_IVAR___BKEngagementManager_manager];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = v7;

      sub_100799914();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = *&v1[OBJC_IVAR___BKEngagementManager_manager];
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = v11;
      v8 = v9;

      sub_100799974();
    }
  }
}

uint64_t sub_1003F693C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v9 = sub_1007A1C54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007A1CA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *a3) = a1;
    v18 = v10;
    v19 = v13;
    v20 = a5;
    v21 = Strong;

    a5 = v20;
    v13 = v19;
    v10 = v18;
  }

  sub_100017E74();
  v22 = sub_1007A2D74();
  aBlock[4] = v25;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = a5;
  v23 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v23);

  (*(v10 + 8))(v12, v9);
  return (*(v14 + 8))(v16, v13);
}

void sub_1003F6C08(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong tableView];

    if (v3)
    {
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Int __swiftcall BookMessagesDebugViewController.tableView(_:numberOfRowsInSection:)(UITableView _, Swift::Int numberOfRowsInSection)
{
  if (*(v2 + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration))
  {
    return *(*(v2 + OBJC_IVAR___BKBookMessagesDebugViewController_properties) + 16);
  }

  v4 = *(v2 + OBJC_IVAR___BKBookMessagesDebugViewController_configurations);
  if (v4 >> 62)
  {
    return sub_1007A38D4();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t BookMessagesDebugViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v3 = sub_1007A2214();
  isa = sub_100796DF4().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  v6 = [v5 textLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines:0];
  }

  v8 = [v5 textLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setLineBreakMode:0];
  }

  v10 = *(v1 + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration);
  result = sub_100796E34();
  if (v10)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v1 + OBJC_IVAR___BKBookMessagesDebugViewController_properties);
      if (result < *(v12 + 16))
      {
        v13 = (v12 + 48 * result);
        v14 = v13[2];
        v15 = v13[3];
        *&v29[9] = *(v13 + 57);
        v28 = v14;
        *v29 = v15;
        sub_100359B60(&v28, v27);
        v16 = [v5 textLabel];
        if (v16)
        {
          v17 = v16;
          sub_1007997A4();
          sub_100359BBC(&v28);
          v18 = sub_1007A2214();

          [v17 setText:v18];
        }

        else
        {
          sub_100359BBC(&v28);
        }

        [v5 setAccessoryType:0];
        return v5;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v19 = *(v1 + OBJC_IVAR___BKBookMessagesDebugViewController_configurations);
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_24:

    v20 = sub_1007A3784();

    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 8 * result + 32);
    swift_unknownObjectRetain();
LABEL_14:
    v21 = [v5 textLabel];
    if (v21)
    {
      v22 = v21;
      v23 = [v20 eventName];
      [v22 setText:v23];
    }

    v24 = [v5 detailTextLabel];
    if (v24)
    {
      v25 = v24;
      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      sub_1001F1160(&qword_100AE1D48, &unk_100822D80);
      sub_1007A3894();
      v26 = sub_1007A2214();

      [v25 setText:{v26, v20}];
    }

    [v5 setAccessoryType:1];
    swift_unknownObjectRelease();
    return v5;
  }

  __break(1u);
  return result;
}

void BookMessagesDebugViewController.tableView(_:didSelectRowAt:)(void *a1, __n128 a2)
{
  v3 = v2;
  isa = sub_100796DF4().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  if (*&v2[OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration])
  {
    return;
  }

  v6 = sub_100796E34();
  v7 = *&v2[OBJC_IVAR___BKBookMessagesDebugViewController_configurations];
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = sub_1007A3784();

    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = *(v7 + 8 * v6 + 32);
  swift_unknownObjectRetain();
LABEL_6:
  v9 = type metadata accessor for BookMessagesDebugViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___BKBookMessagesDebugViewController_manager] = 0;
  v11 = OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration;
  *&v10[OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration] = 0;
  *&v10[OBJC_IVAR___BKBookMessagesDebugViewController_configurations] = _swiftEmptyArrayStorage;
  *&v10[OBJC_IVAR___BKBookMessagesDebugViewController_properties] = _swiftEmptyArrayStorage;
  *&v10[v11] = v8;
  v15.receiver = v10;
  v15.super_class = v9;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v15, "initWithStyle:", 2);
  v13 = [v3 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];
  }

  swift_unknownObjectRelease();
}

id BookMessagesDebugViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle:a1];
}

id sub_1003F75D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t _s5Books31BookMessagesDebugViewControllerC05tableE0_23titleForHeaderInSectionSSSgSo07UITableE0C_SitF_0()
{
  v1 = *(v0 + OBJC_IVAR___BKBookMessagesDebugViewController_propertyConfiguration);
  if (!v1)
  {
    return 0xD000000000000017;
  }

  v2 = [v1 eventName];
  v3 = sub_1007A2254();
  v5 = v4;

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_1007A23D4(v7);

  return 0;
}

id sub_1003F7828(id a1, SEL a2)
{

  _s8BookEPUB25HighlightAnnotationEntityC5BooksE14annotationUuidSSvg_0();

  v2 = sub_1007A2214();

  return v2;
}

int sub_1003F7898(id a1, SEL a2)
{

  v2 = sub_1007A15E4();

  return dword_100822E24[v2];
}

id sub_1003F7904(id a1, SEL a2)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  _s8BookEPUB25HighlightAnnotationEntityC5BooksE26annotationModificationDate10Foundation0I0Vvg_0();

  v6.super.isa = sub_100796AF4().super.isa;
  (*(v3 + 8))(v5, v2);

  return v6.super.isa;
}

BOOL sub_1003F79FC(id a1, SEL a2)
{

  sub_1007A15E4();
  v2 = sub_1007A00E4();
  v4 = v3;
  if (v2 == sub_1007A00E4() && v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1007A3AB4();
  }

  return v6 & 1;
}

uint64_t HighlightAnnotationEntity.annotationIsUnderline.getter(__n128 a1)
{
  sub_1007A15E4();
  v1 = sub_1007A00E4();
  v3 = v2;
  if (v1 == sub_1007A00E4() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1007A3AB4();
  }

  return v5 & 1;
}

BOOL sub_1003F7B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_1003FA7B0(a4, a5, a6);
  }

  while ((sub_1007A2124() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1003F7C6C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B232C8);
  sub_100008B98(v0, qword_100B232C8);
  return sub_10079ACD4();
}

uint64_t sub_1003F7CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKGenreRecommendationProvider____lazy_storage___recommendationManager;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v8, &qword_100AE1E70, &qword_100822E70);
  if (*(&v9 + 1))
  {
    return sub_1000077C0(&v8, a1);
  }

  v5 = sub_100007840(&v8, &qword_100AE1E70, &qword_100822E70);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __chkstk_darwin(v5);
  sub_100798C94();
  result = sub_1000077D8(&v8, &v6, &qword_100AE1E70, &qword_100822E70);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
    sub_100007840(&v8, &qword_100AE1E70, &qword_100822E70);
    sub_100009864(a1, &v8);
    swift_beginAccess();
    sub_1002391EC(&v8, v1 + v3, &qword_100AE1E70, &qword_100822E70);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F7E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKGenreRecommendationProvider____lazy_storage___collectionRecommendationService;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v8, &qword_100AE1E60, &qword_100822E60);
  if (*(&v9 + 1))
  {
    return sub_1000077C0(&v8, a1);
  }

  v5 = sub_100007840(&v8, &qword_100AE1E60, &qword_100822E60);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  __chkstk_darwin(v5);
  sub_100798C94();
  result = sub_1000077D8(&v8, &v6, &qword_100AE1E60, &qword_100822E60);
  if (v7)
  {
    sub_1000077C0(&v6, a1);
    sub_100007840(&v8, &qword_100AE1E60, &qword_100822E60);
    sub_100009864(a1, &v8);
    swift_beginAccess();
    sub_1002391EC(&v8, v1 + v3, &qword_100AE1E60, &qword_100822E60);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F7FE8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = [objc_opt_self() delegate];
  v11 = [v10 containerHost];
  sub_1000076D8(v14);

  sub_10000E3E8(v14, v14[3]);
  sub_1001F1160(a2, a3);
  sub_100798CD4();

  sub_1002391EC(&v13, a1, a4, a5);
  return sub_1000074E0(v14);
}

uint64_t sub_1003F80DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_10079A1E4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_10079A854();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_100799BB4();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003F826C, 0, 0);
}

uint64_t sub_1003F826C()
{
  sub_1003F7CF0((v0 + 2));
  sub_10000E3E8(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1003F8314;

  return sub_100546E68();
}

uint64_t sub_1003F8314(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1003F8A44;
  }

  else
  {
    v4 = sub_1003F8428;
  }

  return _swift_task_switch(v4, 0, 0);
}

char *sub_1003F8428()
{
  v1 = v0[21];
  sub_1000074E0(v0 + 2);
  v51 = v1;
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[13];
    sub_1003BD1D0(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v4 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v56 = (v6 + 8);
    v58 = v7;
    v62 = v0;
    v52 = *(v5 + 56);
    v54 = (v5 - 8);
    do
    {
      v9 = v3;
      v10 = v0[18];
      v3 = v0[15];
      v11 = v0[16];
      v12 = v0[12];
      v58(v10, v8, v11);
      sub_100799B94();
      v13 = sub_10079A824();
      (*v56)(v3, v12);
      result = (*v54)(v10, v11);
      if (v13 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      v3 = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1003BD1D0((v15 > 1), v16 + 1, 1);
        v3 = v9;
      }

      v3[2] = v16 + 1;
      v3[v16 + 4] = v13;
      v8 += v52;
      --v2;
      v0 = v62;
    }

    while (v2);
    v49 = *(v1 + 16);
    if (!v49)
    {
      goto LABEL_15;
    }

    v17 = 0;
    v18 = v62[17];
    v19 = v62[10];
    v55 = (v62[13] + 8);
    v53 = enum case for RecommendationSource.siri(_:);
    v57 = (v19 + 8);
    v59 = (v18 + 8);
    v48 = v18;
    while (v17 < *(v51 + 16))
    {
      v60 = v3;
      v20 = v0[14];
      v22 = v0[11];
      v21 = v0[12];
      v23 = v62[9];
      (*(v18 + 16))(v0[19], v0[21] + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v17, v0[16]);
      v50 = v17 + 1;
      sub_100799B94();
      v24 = sub_10079A804();
      (*v55)(v20, v21);
      v0 = v62;
      (*(v19 + 104))(v22, v53, v23);
      v25 = 0;
      v26 = *(v24 + 16);
      while (v26 != v25)
      {
        v27 = v25 + 1;
        sub_1003FA7B0(&qword_100AE1E88, &type metadata accessor for RecommendationSource, &protocol conformance descriptor for RecommendationSource);
        v28 = sub_1007A2124();
        v25 = v27;
        if (v28)
        {
          v33 = v62[19];
          v34 = v62[16];
          v35 = v62[11];
          v36 = v62[9];

          (*v57)(v35, v36);
          (*v59)(v33, v34);
          LOBYTE(v9) = 1;
          v3 = v60;
          goto LABEL_16;
        }
      }

      v29 = v62[19];
      v30 = v62[16];
      v31 = v62[11];
      v32 = v62[9];

      (*v57)(v31, v32);
      result = (*v59)(v29, v30);
      v17 = v50;
      v3 = v60;
      v18 = v48;
      if (v50 == v49)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    LOBYTE(v9) = 0;
LABEL_16:

    if (qword_100AD1558 != -1)
    {
LABEL_24:
      swift_once();
    }

    v37 = sub_10079ACE4();
    sub_100008B98(v37, qword_100B232C8);

    v38 = sub_10079ACC4();
    v39 = sub_1007A29D4();
    v61 = v9;
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v3[2];

      _os_log_impl(&_mh_execute_header, v38, v39, "recommendedGenres: genreIDs: %ld", v40, 0xCu);
    }

    else
    {
    }

    v41 = v3;

    v42 = v0[8];
    v43 = [objc_opt_self() sharedInstance];
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10080EFF0;
    *(v44 + 56) = sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
    *(v44 + 32) = v41;
    *(v44 + 88) = &type metadata for Bool;
    *(v44 + 64) = v61;
    v65._countAndFlagsBits = 0x80000001008D2B50;
    v45.super.isa = v42;
    v64.value._rawValue = v44;
    v64.is_nil = 109;
    v65._object = 62;
    sub_1007A32F4(v45, v64, v65, v46);

    v47 = v0[1];

    return v47();
  }

  return result;
}

uint64_t sub_1003F8A44()
{
  sub_1000074E0(v0 + 2);
  if (qword_100AD1558 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100B232C8);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "recommendedGenres: fetchRecommendedGenres failed. error: %@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  else
  {
  }

  if (qword_100AD1558 != -1)
  {
    swift_once();
  }

  sub_100008B98(v1, qword_100B232C8);

  v7 = sub_10079ACC4();
  v8 = sub_1007A29D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v7, v8, "recommendedGenres: genreIDs: %ld", v9, 0xCu);
  }

  else
  {
  }

  v10 = v0[8];
  v11 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080EFF0;
  *(v12 + 56) = sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
  *(v12 + 32) = _swiftEmptyArrayStorage;
  *(v12 + 88) = &type metadata for Bool;
  *(v12 + 64) = 0;
  v19._countAndFlagsBits = 0x80000001008D2B50;
  v13.super.isa = v10;
  v18.value._rawValue = v12;
  v18.is_nil = 109;
  v19._object = 62;
  sub_1007A32F4(v13, v18, v19, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003F8EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = sub_10079A734();
  v6[38] = v7;
  v6[39] = *(v7 - 8);
  v6[40] = swift_task_alloc();
  v8 = sub_10079A1E4();
  v6[41] = v8;
  v6[42] = *(v8 - 8);
  v6[43] = swift_task_alloc();
  v9 = sub_10079A854();
  v6[44] = v9;
  v6[45] = *(v9 - 8);
  v6[46] = swift_task_alloc();
  v10 = sub_10079A0A4();
  v6[47] = v10;
  v6[48] = *(v10 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v11 = sub_10079A574();
  v6[51] = v11;
  v6[52] = *(v11 - 8);
  v6[53] = swift_task_alloc();
  sub_1001F1160(&qword_100AE1E78, &qword_100822E98);
  v6[54] = swift_task_alloc();
  v12 = sub_10079A704();
  v6[55] = v12;
  v6[56] = *(v12 - 8);
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_1003F91F4, 0, 0);
}

uint64_t sub_1003F91F4()
{
  if (![*(v0 + 280) isArray] || (v1 = objc_msgSend(*(v0 + 280), "toArray")) == 0 || (v2 = v1, v3 = sub_1007A25E4(), v2, v4 = sub_1005AB520(v3), , !v4))
  {
    if (qword_100AD1558 == -1)
    {
LABEL_16:
      v18 = sub_10079ACE4();
      sub_100008B98(v18, qword_100B232C8);
      v19 = sub_10079ACC4();
      v20 = sub_1007A29B4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "recommendedCollectionGenres: sale types provided doesn't match existing types.", v21, 2u);
      }

      v22 = *(v0 + 288);

      v23 = [objc_opt_self() sharedInstance];
      v50.value._rawValue = _swiftEmptyArrayStorage;
      v51._countAndFlagsBits = 0x80000001008D2B50;
      v24.super.isa = v22;
      v50.is_nil = 109;
      v51._object = 74;
      sub_1007A32F4(v24, v50, v51, v25);

      v26 = *(v0 + 8);

      return v26();
    }

LABEL_35:
    swift_once();
    goto LABEL_16;
  }

  v48 = v4[2];
  if (v48)
  {
    v5 = 0;
    v6 = *(v0 + 448);
    v7 = (v6 + 48);
    v44 = v6;
    v46 = (v6 + 32);
    v8 = v4 + 5;
    v9 = _swiftEmptyArrayStorage;
    while (v5 < v4[2])
    {
      v11 = *(v0 + 432);
      v10 = *(v0 + 440);

      sub_10079A6E4();
      if ((*v7)(v11, 1, v10) == 1)
      {
        sub_100007840(*(v0 + 432), &qword_100AE1E78, &qword_100822E98);
      }

      else
      {
        v12 = v4;
        v13 = *v46;
        (*v46)(*(v0 + 480), *(v0 + 432), *(v0 + 440));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10066BA88(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_10066BA88((v14 > 1), v15 + 1, 1, v9);
        }

        v16 = *(v0 + 480);
        v17 = *(v0 + 440);
        *(v9 + 2) = v15 + 1;
        v13(&v9[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v15], v16, v17);
        v4 = v12;
      }

      ++v5;
      v8 += 2;
      if (v48 == v5)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_22:

  v28 = *(v9 + 2);
  if (v28)
  {
    v29 = *(v0 + 448);
    v47 = *(v29 + 16);
    v30 = &v9[(*(v29 + 80) + 32) & ~*(v29 + 80)];
    v42 = (v29 + 8);
    v43 = *(v29 + 72);
    v45 = *(v0 + 416);
    v31 = _swiftEmptyArrayStorage;
    do
    {
      v33 = *(v0 + 464);
      v32 = *(v0 + 472);
      v34 = *(v0 + 440);
      v47(v32, v30, v34);
      v47(v33, v32, v34);
      sub_10079A564();
      (*v42)(v32, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10066BA60(0, v31[2] + 1, 1, v31);
      }

      v36 = v31[2];
      v35 = v31[3];
      if (v36 >= v35 >> 1)
      {
        v31 = sub_10066BA60((v35 > 1), v36 + 1, 1, v31);
      }

      v37 = *(v0 + 424);
      v38 = *(v0 + 408);
      v31[2] = v36 + 1;
      (*(v45 + 32))(v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36, v37, v38);
      v30 += v43;
      --v28;
    }

    while (v28);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  *(v0 + 488) = v31;
  sub_1003F7E6C(v0 + 240);
  v39 = *(v0 + 264);
  v40 = *(v0 + 272);
  sub_10000E3E8((v0 + 240), v39);
  v41 = swift_task_alloc();
  *(v0 + 496) = v41;
  *v41 = v0;
  v41[1] = sub_1003F97F4;

  return dispatch thunk of GenreCollectionRecommendationServiceType.fetchRecommendedGenreCollections(for:)(v31, v39, v40);
}

uint64_t sub_1003F97F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = v1;

  if (v1)
  {
    v4 = sub_1003FA0CC;
  }

  else
  {
    v4 = sub_1003F9928;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003F9928()
{
  v1 = v0[63];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[48];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = (v3 + 72);
    v66 = (v3 - 8);
    v8 = v0[45];
    v54 = (v8 + 32);
    v55 = (v3 + 80);
    v9 = v0[56];
    v53 = (v9 + 32);
    v10 = v0[42];
    v51 = (v10 + 8);
    v52 = (v10 + 104);
    v49 = (v9 + 8);
    v50 = (v0[39] + 8);
    v48 = (v8 + 8);
    v67 = _swiftEmptyArrayStorage;
    v65 = *(v3 + 56);
    v64 = enum case for GenreCollection.topCharts(_:);
    v47 = enum case for RecommendationSource.siri(_:);
    v57 = v5;
    v56 = (v3 + 72);
    do
    {
      v14 = v0[49];
      v15 = v0[50];
      v16 = v0[47];
      v4(v15, v6, v16);
      v4(v14, v15, v16);
      if ((*v7)(v14, v16) == v64)
      {
        v58 = v2;
        v17 = v0[57];
        v18 = v0[55];
        v19 = v0[49];
        v20 = v0[46];
        v62 = v0[47];
        v63 = v0[50];
        v21 = v0[43];
        v22 = v0[44];
        v61 = v22;
        v23 = v0[41];
        v59 = v0[40];
        v60 = v0[38];
        (*v55)(v19);
        v24 = *(sub_1001F1160(&qword_100AE1E80, &qword_100822EA8) + 48);
        (*v54)(v20, v19, v22);
        (*v53)(v17, v19 + v24, v18);
        sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100815060;
        *(inited + 32) = 0x4664656372756F73;
        *(inited + 40) = 0xEF697269536D6F72;
        v26 = sub_10079A804();
        (*v52)(v21, v47, v23);
        LOBYTE(v22) = sub_1003F7B64(v21, v26, &type metadata accessor for RecommendationSource, &qword_100AE1E88, &type metadata accessor for RecommendationSource, &protocol conformance descriptor for RecommendationSource);

        (*v51)(v21, v23);
        *(inited + 48) = v22 & 1;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 80) = 0xD000000000000010;
        *(inited + 88) = 0x80000001008D2BC0;
        *(inited + 96) = sub_10079A6F4();
        *(inited + 104) = v27;
        *(inited + 120) = &type metadata for String;
        *(inited + 128) = 0x444965726E6567;
        *(inited + 136) = 0xE700000000000000;
        *(inited + 144) = sub_10079A824();
        *(inited + 168) = &type metadata for UInt64;
        strcpy((inited + 176), "genreMediaType");
        *(inited + 191) = -18;
        sub_10079A844();
        v28 = sub_10079A724();
        v30 = v29;
        (*v50)(v59, v60);
        *(inited + 216) = &type metadata for String;
        *(inited + 192) = v28;
        *(inited + 200) = v30;
        v31 = sub_100019158(inited);
        swift_setDeallocating();
        sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
        swift_arrayDestroy();
        (*v49)(v17, v18);
        (*v48)(v20, v61);
        (*v66)(v63, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_10066B4D0(0, v67[2] + 1, 1, v67);
        }

        v33 = v67[2];
        v32 = v67[3];
        v4 = v57;
        v7 = v56;
        v2 = v58;
        if (v33 >= v32 >> 1)
        {
          v67 = sub_10066B4D0((v32 > 1), v33 + 1, 1, v67);
        }

        v67[2] = v33 + 1;
        v67[v33 + 4] = v31;
      }

      else
      {
        v11 = v0[49];
        v12 = v0[47];
        v13 = *v66;
        (*v66)(v0[50], v12);
        v13(v11, v12);
      }

      v6 += v65;
      --v2;
    }

    while (v2);
  }

  else
  {

    v67 = _swiftEmptyArrayStorage;
  }

  sub_1000074E0(v0 + 30);
  v34 = qword_100AD1558;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_10079ACE4();
  sub_100008B98(v35, qword_100B232C8);

  v36 = sub_10079ACC4();
  v37 = sub_1007A29D4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    v39 = v67[2];

    *(v38 + 4) = v39;

    _os_log_impl(&_mh_execute_header, v36, v37, "recommendedCollectionGenres: genres: %ld", v38, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v40 = v0[36];
  v41 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10080B690;
  *(v42 + 56) = sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
  *(v42 + 32) = v67;
  v69.is_nil = 109;
  v70._countAndFlagsBits = 0x80000001008D2B50;
  v43.super.isa = v40;
  v69.value._rawValue = v42;
  v70._object = 90;
  sub_1007A32F4(v43, v69, v70, v44);

  v45 = v0[1];

  return v45();
}

uint64_t sub_1003FA0CC()
{
  sub_1000074E0(v0 + 30);
  if (qword_100AD1558 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100B232C8);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "recommendedCollectionGenres: fetchRecommendedGenres failed. error: %@", v4, 0xCu);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);
  }

  v7 = v0[36];

  v8 = [objc_opt_self() sharedInstance];
  v14.value._rawValue = _swiftEmptyArrayStorage;
  v15._countAndFlagsBits = 0x80000001008D2B50;
  v9.super.isa = v7;
  v14.is_nil = 109;
  v15._object = 93;
  sub_1007A32F4(v9, v14, v15, v10);

  v11 = v0[1];

  return v11();
}

id sub_1003FA4E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenreRecommendationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003FA614(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1003F8EFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003FA6E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1003F80DC(a1, v4, v5, v6, v7);
}

uint64_t sub_1003FA7B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1003FA7F8(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering] = 0;
  v9 = [objc_allocWithZone(UIHoverGestureRecognizer) init];
  *&v4[OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_hoverRecognizer] = v9;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ToolbarStyleButtonBase();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_hoverRecognizer;
  v12 = *&v10[OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_hoverRecognizer];
  v13 = v10;
  [v12 addTarget:v13 action:"didHover:"];
  [v13 addGestureRecognizer:*&v10[v11]];

  return v13;
}

char *sub_1003FAABC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightCornerRadius] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_lightInitialWhite] = 0;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_darkInitialWhite] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_hoveringAlphaDelta] = 0x3FA999999999999ALL;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightedTransparencyReducedDelta] = 0x3FC3333333333333;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightedTransparencyNormalDelta] = 0x3FA999999999999ALL;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_selectedAlphaDelta] = 0x3FA999999999999ALL;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{a1, a2, a3, a4}];
  v10 = OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightView;
  *&v4[OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightView] = v9;
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [*&v4[v10] layer];
  [v14 setCornerRadius:6.0];

  v15 = [*&v4[v10] layer];
  [v15 setCornerCurve:kCACornerCurveContinuous];

  [*&v4[v10] setUserInteractionEnabled:0];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ToolbarStyleButton();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [v16 addSubview:*&v16[OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightView]];
  }

  return v16;
}

void sub_1003FACFC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering) = a1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightView);
    v3 = sub_1003FAD80();
    [v2 setBackgroundColor:v3];
  }
}

id sub_1003FAD80()
{
  if ([v0 isHighlighted] & 1) != 0 || (objc_msgSend(v0, "isSelected") & 1) != 0 || (*(v0 + OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering))
  {
    v1 = [v0 traitCollection];
    v2 = [v1 userInterfaceStyle];

    if (v2 == 1)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }

    if (*(v0 + OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering))
    {
      v4 = 0.05;
    }

    else
    {
      v4 = 0.0;
    }

    if ([v0 isHighlighted])
    {
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
      v6 = 0.15;
      if (!IsReduceTransparencyEnabled)
      {
        v6 = 0.05;
      }

      v4 = v4 + v6;
    }

    if ([v0 isSelected])
    {
      v4 = v4 + 0.05;
    }

    v7 = objc_allocWithZone(UIColor);

    return [v7 initWithWhite:v3 alpha:v4];
  }

  else
  {
    v9 = [objc_opt_self() clearColor];

    return v9;
  }
}

id sub_1003FAFB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003FB01C(char a1)
{
  v1[OBJC_IVAR____TtC5Books22ToolbarStyleButtonBase_isHovering] = a1;
  v3 = objc_opt_self();
  v4 = &selRef_secondaryLabelColor;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_tertiaryLabelColor;
  }

  v5 = [v3 *v4];
  [v1 setTintColor:v5];
}

uint64_t sub_1003FB144(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1003FB1A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1003FB220(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for ChromeStyle(0);
  sub_1002B3600();
  v3 = sub_10079C484();
  sub_10079DC04();
}

void sub_1003FB2B4(void *a1@<X0>, void *a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    sub_10079B9A4(&v6);

    *a3 = v6;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002B3600();
    sub_10079C474();
    __break(1u);
  }
}

uint64_t sub_1003FB368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = sub_10079E474();
  v9 = v8;
  sub_1003FB2B4(v6, &v17);
  v10 = v17;
  v11 = sub_10079E474();
  v13 = v12;
  v14 = sub_1001F1160(&qword_100AE1F60, &qword_100822FA8);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = sub_1001F1160(&qword_100AE1F68, &qword_100822FB0);
  v16 = (a2 + *(result + 36));
  *v16 = v7;
  v16[1] = v9;
  v16[2] = v10;
  v16[3] = v5;
  v16[4] = v11;
  v16[5] = v13;
  return result;
}

unint64_t sub_1003FB460()
{
  result = qword_100AE1F70;
  if (!qword_100AE1F70)
  {
    sub_1001F1234(&qword_100AE1F68, &qword_100822FB0);
    sub_100005920(&qword_100AE1F78, &qword_100AE1F60, &qword_100822FA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AE1F80, &qword_100AE1F88, &qword_100823000, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1F70);
  }

  return result;
}

uint64_t sub_1003FB544()
{
  type metadata accessor for DisplayLink();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *(v0 + 24) = _swiftEmptyArrayStorage;
  qword_100B232E0 = v0;
  return result;
}

uint64_t sub_1003FB594()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_1003FB5F8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 24);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1002F9694(0, *(v4 + 16));
  }

  else
  {
    *(v1 + 24) = sub_1005D6588(0, *(v4 + 24) >> 1);
  }

  swift_endAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v2 + 40;
    do
    {
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1003FB6F0();
}

void sub_1003FB6F0()
{
  v1 = v0;
  swift_beginAccess();
  v7 = *(v0 + 24);
  sub_1001F1160(&qword_100AE2038, &unk_100823030);
  sub_1003FB898();
  v2 = sub_1007A28A4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    if (Strong)
    {
    }

    else
    {
      v5 = [objc_opt_self() displayLinkWithTarget:v1 selector:{"tick", v7}];
      v6 = [objc_opt_self() mainRunLoop];
      [v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];

      swift_unknownObjectWeakAssign();
    }
  }

  else if (Strong)
  {
    v4 = Strong;
    [Strong invalidate];

    swift_unknownObjectWeakAssign();
  }
}

unint64_t sub_1003FB898()
{
  result = qword_100AE2040;
  if (!qword_100AE2040)
  {
    sub_1001F1234(&qword_100AE2038, &unk_100823030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2040);
  }

  return result;
}

uint64_t sub_1003FB8FC()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B232E8);
  v21[1] = sub_100008B98(v18, qword_100B232E8);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_1003FBD18()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v80 = v48 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v81 = v48 - v3;
  v83 = sub_1007967F4();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = (v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_100796CF4();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v48 - v8;
  v48[0] = sub_1007A21D4();
  v10 = *(v48[0] - 8);
  __chkstk_darwin(v48[0]);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  v78 = sub_100796814();
  v84 = *(v78 - 8);
  __chkstk_darwin(v78);
  v51 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AE2120, &unk_1008235B0);
  v17 = sub_1001F1160(&qword_100AD3AC0, &qword_10080CCC0);
  v82 = v17;
  v18 = *(v17 - 8);
  v72 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v73 = xmmword_10080EFF0;
  v74 = v20;
  *(v20 + 16) = xmmword_10080EFF0;
  v79 = v20 + v19;
  v69 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_1007A2154();
  v21 = v9;
  sub_100796C94();
  v22 = *(v10 + 16);
  v70 = v10 + 16;
  v71 = v22;
  v55 = v12;
  v23 = v15;
  v49 = v15;
  v24 = v48[0];
  v22(v12, v15, v48[0]);
  v25 = *(v5 + 16);
  v67 = v5 + 16;
  v68 = v25;
  v26 = v9;
  v52 = v9;
  v27 = v76;
  v25(v75, v26, v76);
  v66 = type metadata accessor for BundleFinder();
  v28 = v77;
  *v77 = v66;
  v64 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v85 + 104);
  v85 += 104;
  v65 = v29;
  v29(v28);
  sub_100796834();
  v30 = *(v5 + 8);
  v62 = v5 + 8;
  v63 = v30;
  v30(v21, v27);
  v31 = *(v10 + 8);
  v60 = v10 + 8;
  v61 = v31;
  v32 = v24;
  v31(v23, v24);
  v33 = v84 + 56;
  v59 = *(v84 + 56);
  v59(v81, 1, 1, v78);
  v34 = v80;
  sub_1007960F4();
  v57 = sub_100796104();
  v35 = *(v57 - 8);
  v56 = *(v35 + 56);
  v58 = v35 + 56;
  v56(v34, 0, 1, v57);
  v54 = sub_1001F1160(&qword_100AD4A80, &qword_1008119B0);
  v84 = v33;
  v36 = *(v33 + 16);
  v53 = *(v33 + 24);
  v50 = (v53 + 32) & ~v53;
  *(swift_allocObject() + 16) = xmmword_100813170;
  sub_1007967E4();
  sub_1007967E4();
  v48[1] = 2 * v36;
  sub_1007967E4();
  sub_1007967E4();
  sub_1007967E4();
  sub_1007967E4();
  v37 = v79;
  v38 = v81;
  sub_100796114();
  v69 = (v37 + v72);
  v72 = *(v82 + 48);
  *v69 = 1;
  v39 = v49;
  sub_1007A2154();
  v40 = v52;
  sub_100796C94();
  v41 = v32;
  v71(v55, v39, v32);
  v42 = v76;
  v43 = v40;
  v68(v75, v40, v76);
  v44 = v77;
  *v77 = v66;
  v65(v44, v64, v83);
  sub_100796834();
  v63(v43, v42);
  v61(v39, v41);
  v59(v38, 1, 1, v78);
  v45 = v80;
  sub_1007960F4();
  v56(v45, 0, 1, v57);
  *(swift_allocObject() + 16) = v73;
  sub_1007967E4();
  sub_1007967E4();
  sub_100796114();
  v46 = sub_1001EE3F8(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B23300 = v46;
  return result;
}

uint64_t sub_1003FC74C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E72755465676170;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001008BFE50;
  }

  else
  {
    v4 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v5 = 0x6E72755465676170;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676E69;
  }

  else
  {
    v6 = 0x80000001008BFE50;
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

unint64_t sub_1003FC804()
{
  result = qword_100AE2048;
  if (!qword_100AE2048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2048);
  }

  return result;
}

Swift::Int sub_1003FC858()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_1003FC8E8(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_1003FC964(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

void sub_1003FC9F0(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0CFB0;
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

void sub_1003FCA50(unint64_t *a1@<X8>)
{
  v2 = 0x80000001008BFE50;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6E72755465676170;
    v2 = 0xEB00000000676E69;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1003FCAA0()
{
  result = qword_100AE2050;
  if (!qword_100AE2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2050);
  }

  return result;
}

unint64_t sub_1003FCAF8()
{
  result = qword_100AE2058;
  if (!qword_100AE2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2058);
  }

  return result;
}

unint64_t sub_1003FCB50()
{
  result = qword_100AE2060;
  if (!qword_100AE2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2060);
  }

  return result;
}

unint64_t sub_1003FCBA8()
{
  result = qword_100AE2068;
  if (!qword_100AE2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2068);
  }

  return result;
}

unint64_t sub_1003FCBFC()
{
  result = qword_100AE2070;
  if (!qword_100AE2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2070);
  }

  return result;
}

unint64_t sub_1003FCC50()
{
  result = qword_100AE2078;
  if (!qword_100AE2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2078);
  }

  return result;
}

unint64_t sub_1003FCCA8()
{
  result = qword_100AE2080;
  if (!qword_100AE2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2080);
  }

  return result;
}

unint64_t sub_1003FCD84()
{
  result = qword_100AE2088;
  if (!qword_100AE2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2088);
  }

  return result;
}

uint64_t sub_1003FCDD8(uint64_t a1)
{
  v2 = sub_1003FCD84();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1003FCE28()
{
  result = qword_100AE2090;
  if (!qword_100AE2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2090);
  }

  return result;
}

unint64_t sub_1003FCE80()
{
  result = qword_100AE2098;
  if (!qword_100AE2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2098);
  }

  return result;
}

unint64_t sub_1003FCED8()
{
  result = qword_100AE20A0;
  if (!qword_100AE20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE20A0);
  }

  return result;
}

double sub_1003FCF2C()
{
  if (qword_100AD1570 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1003FCF88(uint64_t a1)
{
  v2 = sub_1003FCCA8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1003FD02C()
{
  result = qword_100AE20B8;
  if (!qword_100AE20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE20B8);
  }

  return result;
}

uint64_t sub_1003FD084()
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
  sub_100009A38(v3, qword_100B23308);
  v21 = sub_100008B98(v3, qword_100B23308);
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

uint64_t sub_1003FD428()
{
  v0 = sub_1001F1160(&qword_100AE2100, &qword_100823538);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE2108, &qword_100823540);
  __chkstk_darwin(v1);
  sub_1003FE9D4();
  sub_1007961D4();
  v3._object = 0x80000001008D3010;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE2110, &qword_100823570);
  sub_1007961B4();

  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_1007961C4(v4);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE2118, &unk_1008235A0);
  sub_1007961B4();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1007961C4(v5);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_1003FD624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1001F1160(&qword_100AE20F0, &qword_100823530);
  v3[6] = swift_task_alloc();
  v4 = sub_100795DD4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  type metadata accessor for _BookReaderInteractorState(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1003FD75C, 0, 0);
}

uint64_t sub_1003FD75C()
{
  v0[12] = objc_opt_self();
  v0[13] = sub_1007A26F4();
  v0[14] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1003FD804, v2, v1);
}

uint64_t sub_1003FD804()
{
  v1 = *(v0 + 96);

  *(v0 + 120) = [v1 delegate];

  return _swift_task_switch(sub_1003FD88C, 0, 0);
}

uint64_t sub_1003FD88C(uint64_t a1)
{
  *(v1 + 128) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1003FD918, v3, v2);
}

uint64_t sub_1003FD918()
{
  v1 = *(v0 + 120);

  *(v0 + 136) = [v1 menuController];

  return _swift_task_switch(sub_1003FD9A0, 0, 0);
}

uint64_t sub_1003FD9A0(uint64_t a1)
{
  *(v1 + 144) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1003FDA2C, v3, v2);
}

uint64_t sub_1003FDA2C()
{
  v1 = *(v0 + 136);

  *(v0 + 152) = sub_1005C99B8();

  return _swift_task_switch(sub_1003FDAA0, 0, 0);
}

uint64_t sub_1003FDAA0(uint64_t a1)
{
  if (v1[19])
  {
    v1[20] = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_1003FDBD0, v3, v2);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_1003FDBD0()
{

  *(v0 + 168) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_1003FDC50, 0, 0);
}

uint64_t sub_1003FDC50(uint64_t a1)
{
  if (*(v1 + 168))
  {
    *(v1 + 176) = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_1003FDD88, v3, v2);
  }

  else
  {

    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_1003FDD88()
{
  v1 = *(v0 + 88);

  *(v0 + 184) = OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor;
  sub_1004A79C8(v1);

  return _swift_task_switch(sub_1003FDE0C, 0, 0);
}

uint64_t sub_1003FDE0C()
{
  v1 = sub_1007A0A14();
  v3 = v2;
  if (v1 == sub_1007A0A14() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1007A3AB4();

    v7 = v6 ^ 1;
  }

  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);
  sub_10029819C(*(v0 + 88));
  sub_100795DF4();
  v13 = *(v0 + 216);
  sub_100795DF4();
  v14 = *(v12 + 48);
  *v11 = v13;
  (*(v9 + 32))(&v11[v14], v8, v10);
  v15 = (*(v9 + 88))(&v11[v14], v10);
  if ((v13 & 1) == 0)
  {
    if (v15 == enum case for ChangeOperation.disable(_:))
    {
      goto LABEL_12;
    }

    if (v15 != enum case for ChangeOperation.enable(_:))
    {
      goto LABEL_15;
    }

LABEL_14:
    v7 = 1;
    goto LABEL_16;
  }

  if (v15 == enum case for ChangeOperation.disable(_:))
  {
    goto LABEL_14;
  }

  if (v15 == enum case for ChangeOperation.enable(_:))
  {
LABEL_12:
    v7 = 0;
LABEL_16:
    *(v0 + 217) = v7 & 1;
    *(v0 + 192) = sub_1007A26E4();
    v17 = sub_1007A2694();

    return _swift_task_switch(sub_1003FE0C8, v17, v16);
  }

LABEL_15:
  if (v15 == enum case for ChangeOperation.toggle(_:))
  {
    goto LABEL_16;
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 48);
  sub_1001FE9A0();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_1003FFD80(v19);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1003FE0C8()
{
  v1 = *(v0 + 80);

  sub_1004A79C8(v1);

  return _swift_task_switch(sub_1003FE14C, 0, 0);
}

uint64_t sub_1003FE14C()
{
  v1 = sub_1007A0A14();
  v3 = v2;
  v5 = sub_1007A0A14();
  v6 = v1;
  v7 = *(v0 + 217);
  v8 = *(v0 + 80);
  if (v6 == v5 && v3 == v4)
  {

    sub_10029819C(v8);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = sub_1007A3AB4();

    sub_10029819C(v8);
    if ((v7 ^ v10))
    {
LABEL_6:
      *(v0 + 200) = sub_1007A26E4();
      v12 = sub_1007A2694();

      return _swift_task_switch(sub_1003FE31C, v12, v11);
    }
  }

  v13 = *(v0 + 152);
  sub_1003FFDE8();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003FE31C()
{

  swift_getObjectType();
  sub_1007A1384();
  v1 = sub_1007A0A14();
  v3 = v2;
  if (v1 == sub_1007A0A14() && v3 == v4)
  {

    v6 = sub_1003FE428;
  }

  else
  {
    *(v0 + 218) = sub_1007A3AB4() & 1;

    v6 = sub_1003FE578;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003FE428(uint64_t a1)
{
  if (*(v1 + 217) == 1)
  {
    v2 = *(v1 + 152);
    sub_1003FFDE8();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    *(v1 + 208) = sub_1007A26E4();
    v7 = sub_1007A2694();

    return _swift_task_switch(sub_1003FE6CC, v7, v6);
  }
}

uint64_t sub_1003FE578(uint64_t a1)
{
  if (*(v1 + 218) == *(v1 + 217))
  {
    v4 = *(v1 + 152);
    sub_1003FFDE8();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v6 = *(v1 + 8);

    return v6();
  }

  else
  {
    *(v1 + 208) = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_1003FE6CC, v3, v2);
  }
}

uint64_t sub_1003FE6CC()
{
  v1 = *(v0 + 217);

  sub_1006AE638(v1);

  return _swift_task_switch(sub_1003FE744, 0, 0);
}

uint64_t sub_1003FE744(uint64_t a1)
{
  v2 = *(v1 + 152);
  sub_100795D24();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1003FE7F8(uint64_t a1)
{
  v2 = sub_100795DD4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100795E04();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1003FE8E8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_100220080;
}

void (*sub_1003FE95C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1003FFEA4;
}

unint64_t sub_1003FE9D4()
{
  result = qword_100AE20C0;
  if (!qword_100AE20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE20C0);
  }

  return result;
}

unint64_t sub_1003FEA2C()
{
  result = qword_100AE20C8;
  if (!qword_100AE20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE20C8);
  }

  return result;
}

unint64_t sub_1003FEA84()
{
  result = qword_100AE20D0;
  if (!qword_100AE20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE20D0);
  }

  return result;
}

uint64_t sub_1003FEB30(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1003FD624(a1, v5, v4);
}

char *sub_1003FEBDC@<X0>(char **a1@<X8>)
{
  result = sub_1003FF104();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1003FEC08(uint64_t a1)
{
  v2 = sub_1003FE9D4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1003FEC64@<X0>(uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_1007967F4();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v21 = v17;
  v18 = v17;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v18);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v23);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  return (*(v11 + 8))(v16, v21);
}

char *sub_1003FF104()
{
  v82 = sub_100796274();
  v91 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v58 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0, &unk_100811910);
  __chkstk_darwin(v1 - 8);
  v79 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v78 = &v58 - v4;
  v5 = sub_1001F1160(&qword_100AD5CB8, &unk_100823500);
  __chkstk_darwin(v5 - 8);
  v67 = &v58 - v6;
  v7 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v7 - 8);
  v73 = &v58 - v8;
  v84 = sub_1007967F4();
  v92 = *(v84 - 8);
  __chkstk_darwin(v84);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_100796CF4();
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = sub_1007A21D4();
  v68 = v17;
  v93 = *(v17 - 8);
  v18 = v93;
  __chkstk_darwin(v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v81 = sub_100796814();
  v85 = *(v81 - 8);
  __chkstk_darwin(v81);
  v72 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1001F1160(&qword_100AD5CC8, &unk_100823510);
  sub_1007A2154();
  sub_100796C94();
  v83 = *(v18 + 16);
  v77 = v18 + 16;
  v83(v20, v23, v17);
  v25 = v11;
  v26 = *(v11 + 16);
  v89 = v11 + 16;
  v90 = v26;
  v70 = v13;
  v27 = v69;
  v26(v13, v16, v69);
  v88 = type metadata accessor for BundleFinder();
  *v10 = v88;
  v87 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v86 = *(v92 + 104);
  v92 += 104;
  v28 = v10;
  v71 = v10;
  v29 = v84;
  v86(v28);
  sub_100796834();
  v76 = *(v25 + 8);
  v30 = v27;
  v76(v16, v27);
  v75 = v25 + 8;
  v31 = *(v93 + 8);
  v93 += 8;
  v32 = v68;
  v31(v23, v68);
  v74 = v31;
  v58 = v23;
  sub_1007A2154();
  sub_100796C94();
  v59 = v20;
  v83(v20, v23, v32);
  v90(v70, v16, v30);
  v33 = v71;
  *v71 = v88;
  (v86)(v33, v87, v29);
  v34 = v73;
  sub_100796834();
  v76(v16, v30);
  v35 = v58;
  v31(v58, v32);
  v36 = *(v85 + 56);
  v85 += 56;
  v65 = v36;
  v36(v34, 0, 1, v81);
  v37 = enum case for ChangeOperation.enable(_:);
  v38 = sub_100795DD4();
  v39 = *(v38 - 8);
  v40 = v67;
  (*(v39 + 104))(v67, v37, v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = sub_100795CE4();
  v60 = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v61 = v43;
  v62 = v42 + 56;
  v43(v78, 1, 1, v41);
  v43(v79, 1, 1, v41);
  v63 = enum case for InputConnectionBehavior.default(_:);
  v44 = *(v91 + 104);
  v91 += 104;
  v64 = v44;
  v44(v80);
  sub_10022182C(&qword_100AD5CD0, &protocol conformance descriptor for ChangeOperation);
  sub_1007A3754();
  sub_10022182C(&qword_100AD5CD8, &protocol conformance descriptor for ChangeOperation);
  v67 = sub_100795E54();
  v66 = sub_1001F1160(&qword_100AE20E8, &qword_10083C5D0);
  v45 = v35;
  sub_1007A2154();
  v46 = v16;
  sub_100796C94();
  v47 = v59;
  v48 = v68;
  v83(v59, v45, v68);
  v49 = v70;
  v50 = v69;
  v90(v70, v16, v69);
  v51 = v71;
  *v71 = v88;
  (v86)(v51, v87, v84);
  sub_100796834();
  v52 = v76;
  v76(v46, v50);
  v74(v45, v48);
  sub_1007A2154();
  sub_100796C94();
  v83(v47, v45, v48);
  v53 = v50;
  v90(v49, v46, v50);
  *v51 = v88;
  (v86)(v51, v87, v84);
  v54 = v73;
  sub_100796834();
  v52(v46, v53);
  v74(v45, v48);
  v65(v54, 0, 1, v81);
  LOBYTE(v94) = 1;
  v55 = v60;
  v56 = v61;
  v61(v78, 1, 1, v60);
  v56(v79, 1, 1, v55);
  v64(v80, v63, v82);
  sub_1003FCD84();
  sub_100795E54();
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  v94 = 0u;
  v95 = 0u;
  v96 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v67;
}

uint64_t sub_1003FFD80(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE20F0, &qword_100823530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003FFDE8()
{
  result = qword_100AE20F8;
  if (!qword_100AE20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE20F8);
  }

  return result;
}

unint64_t sub_1003FFE50()
{
  result = qword_100AE2128;
  if (!qword_100AE2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2128);
  }

  return result;
}

void *sub_1003FFEB0(char a1, uint64_t a2)
{
  v2 = sub_1007A00C4();
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1007A37F4();
    sub_10023D5EC();
    sub_10079E904();
    v4 = 32;
    do
    {
      if (a1)
      {
        sub_100786DC0(*(v2 + v4));
      }

      sub_10079E8F4();
      sub_1007A00E4();
      sub_1007A3414();
      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      ++v4;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100400064(void *a1)
{
  if ([a1 propertyList])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {

    sub_1000230BC(v6);
    return 6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 6;
  }

  v2 = sub_1007A00D4();

  result = v2;
  if (v2 == 6)
  {
    return 6;
  }

  return result;
}

uint64_t AEAnnotationStyle.annotationStyle.getter(unsigned int a1)
{
  if (a1 >= 7)
  {
    return 0;
  }

  else
  {
    return (0x5040300020100uLL >> (8 * a1));
  }
}

uint64_t AEAnnotation.normalizedStyle.getter()
{
  v1 = [v0 annotationStyle];
  v2 = [v0 annotationIsUnderline];
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 != 1)
      {
        if (v1 == 2)
        {
          return 2;
        }

        return 0;
      }

      return 1;
    }

    else if (v2)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 != 3)
      {
        return 3;
      }

      return 0;
    }

    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 5;
      }

      return 0;
    }

    return 4;
  }
}

uint64_t static AEAnnotation.normalizedStyle(with:isUnderline:)(uint64_t result, char a2)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result != 1 && result != 2)
      {
        return 0;
      }
    }

    else if (a2)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (result <= 4)
    {
      if (result != 3)
      {
        return 3;
      }

      return 0;
    }

    if (result != 5)
    {
      if (result == 6)
      {
        return 5;
      }

      return 0;
    }

    return 4;
  }

  return result;
}

uint64_t sub_10040029C(uint64_t a1, void *a2, __int16 a3, uint64_t a4)
{
  v8 = sub_100796CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AE2138, &qword_1008236E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_1001F1160(&qword_100AE2140, &qword_1008236E8);
  __chkstk_darwin(v15 - 8);
  v17 = &v34 - v16;
  result = 0;
  if ((a3 & 0x100) == 0)
  {
    v40 = 28519;
    v41 = 0xE200000000000000;
    v36 = v9;
    if (a3)
    {
      v19._countAndFlagsBits = 0x64726177726F66;
      v19._object = 0xE700000000000000;
    }

    else
    {
      v19._countAndFlagsBits = 0x647261776B636162;
      v19._object = 0xE800000000000000;
    }

    sub_1007A23D4(v19);
    v38 = v40;
    v39 = v41;

    v42._countAndFlagsBits = 46;
    v42._object = 0xE100000000000000;
    sub_1007A23D4(v42);
    v37 = a4;
    v43._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v43);

    v35 = a2;
    v20 = sub_1004006E8(v38, v39, a2);
    v22 = v21;

    if (v22)
    {

      v40 = v20;
      v41 = v22;
      sub_100400820(a1, v14);
      v23 = sub_100796CF4();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v14, 1, v23) == 1)
      {
        sub_100007840(v14, &qword_100AE2138, &qword_1008236E0);
      }

      else
      {
        sub_100796CE4();
        (*(v24 + 8))(v14, v23);
        sub_100796CB4();
        (*(v36 + 8))(v11, v8);
        v26 = sub_100796C34();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v17, 1, v26) == 1)
        {
          sub_100007840(v17, &qword_100AE2140, &qword_1008236E8);
        }

        else
        {
          v28 = sub_100796C24();
          v30 = v29;
          (*(v27 + 8))(v17, v26);
          v38 = v20;
          v39 = v22;

          v44._countAndFlagsBits = 46;
          v44._object = 0xE100000000000000;
          sub_1007A23D4(v44);
          v45._countAndFlagsBits = v28;
          v45._object = v30;
          sub_1007A23D4(v45);

          v31 = sub_1004006E8(v38, v39, v35);
          v33 = v32;

          if (v33)
          {

            v40 = v31;
            v41 = v33;
          }
        }
      }
    }

    else
    {
      if (a3)
      {
        v25._countAndFlagsBits = 0x73756C702ELL;
        v25._object = 0xE500000000000000;
      }

      else
      {
        v25._countAndFlagsBits = 0x73756E696D2ELL;
        v25._object = 0xE600000000000000;
      }

      sub_1007A23D4(v25);
    }

    return v40;
  }

  return result;
}

uint64_t sub_1004006E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = *a3;
  if (!*(*a3 + 16) || (v7 = sub_10000E53C(a1, a2), (v8 & 1) == 0))
  {
    v9 = sub_1007A2214();
    v10 = [objc_opt_self() systemImageNamed:v9];

    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a3;
      sub_1002F4CF0(0, v5, a2, isUniquelyReferenced_nonNull_native);
      v5 = 0;
      *a3 = v15;
      return v5;
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a3;
    sub_1002F4CF0(1, v5, a2, v11);
    *a3 = v14;
    goto LABEL_7;
  }

  if (*(*(v6 + 56) + v7) == 1)
  {
LABEL_7:

    return v5;
  }

  return 0;
}

uint64_t sub_100400820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2138, &qword_1008236E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100400890()
{
  result = sub_1001ED548(_swiftEmptyArrayStorage);
  qword_100AE2130 = result;
  return result;
}

void sub_1004008B8(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    sub_100402738(&qword_100AD9FD0, &qword_100ADA990, BKLibraryAsset_ptr);
    sub_1007A2864();
    v5 = v28;
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v23 = v5;
  v24 = _swiftEmptyArrayStorage;
  while (v5 < 0)
  {
    v18 = sub_1007A3654();
    if (!v18)
    {
      goto LABEL_26;
    }

    *&v25 = v18;
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    swift_dynamicCast();
    v17 = *&v27[0];
    v15 = v8;
    v16 = v9;
    if (!*&v27[0])
    {
LABEL_27:
      v5 = v23;
LABEL_26:
      sub_10004DC54(v5);
      return;
    }

LABEL_19:
    v33 = v17;
    a1(&v25, &v33);
    if (v4)
    {

      sub_10004DC54(v23);

      return;
    }

    if (v26)
    {
      sub_1000077C0(&v25, v27);
      sub_1000077C0(v27, &v25);
      v19 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10066AC08(0, v24[2] + 1, 1, v24);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_10066AC08((v20 > 1), v21 + 1, 1, v19);
      }

      v19[2] = v21 + 1;
      v24 = v19;
      sub_1000077C0(&v25, &v19[5 * v21 + 4]);
    }

    else
    {
      sub_100007840(&v25, &unk_100AF1C40, &unk_100818DB0);
    }

    v8 = v15;
    v9 = v16;
    v5 = v23;
  }

  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100400BDC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10000A7C4(0, &unk_100AE5830, BKCollectionMember_ptr);
    sub_100402738(&qword_100AE2258, &unk_100AE5830, BKCollectionMember_ptr);
    sub_1007A2864();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
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

  v21 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_1007A3654() || (sub_10000A7C4(0, &unk_100AE5830, BKCollectionMember_ptr), swift_dynamicCast(), (v11 = v27) == 0))
    {
LABEL_25:
      sub_10004DC54(v1);
      return;
    }

LABEL_17:
    v12 = [v11 collection];
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = v12;
    v14 = [v12 collectionID];

    if (v14)
    {
      v20 = sub_1007A2254();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10000B3D8(0, *(v21 + 2) + 1, 1, v21);
      }

      v18 = *(v21 + 2);
      v17 = *(v21 + 3);
      if (v18 >= v17 >> 1)
      {
        v21 = sub_10000B3D8((v17 > 1), v18 + 1, 1, v21);
      }

      *(v21 + 2) = v18 + 1;
      v19 = &v21[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
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
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_100400EB4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v4 = sub_1001F1160(&qword_100AE2278, &qword_1008237E8);
  __chkstk_darwin(v4 - 8);
  v6 = v33 - v5;
  v43 = sub_100798F64();
  v35 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = v33 - v9;
  v42 = v6;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    sub_100402738(&qword_100AD9FD0, &qword_100ADA990, BKLibraryAsset_ptr);
    v6 = v42;
    sub_1007A2864();
    a3 = v47;
    v10 = v48;
    v11 = v49;
    v12 = v50;
    v13 = v51;
  }

  else
  {
    v14 = -1 << *(a3 + 32);
    v10 = a3 + 56;
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

    v13 = v16 & *(a3 + 56);

    v12 = 0;
  }

  v33[1] = v11;
  v17 = (v11 + 64) >> 6;
  v36 = (v35 + 32);
  v37 = (v35 + 48);
  v44 = _swiftEmptyArrayStorage;
  v41 = a3;
  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v18 = sub_1007A3654();
  if (!v18)
  {
    goto LABEL_26;
  }

  v46 = v18;
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  swift_dynamicCast();
  v19 = v52;
  v20 = v12;
  v21 = v13;
  v6 = v42;
  if (!v52)
  {
LABEL_27:
    a3 = v41;
LABEL_26:
    sub_10004DC54(a3);
    return;
  }

  while (1)
  {
    v52 = v19;
    v24 = v45;
    v39(&v52);
    if (v24)
    {

      sub_10004DC54(v41);

      return;
    }

    v45 = 0;

    v25 = v43;
    if ((*v37)(v6, 1, v43) == 1)
    {
      sub_100007840(v6, &qword_100AE2278, &qword_1008237E8);
      v12 = v20;
      v13 = v21;
      a3 = v41;
      if (v41 < 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = *v36;
      v27 = v34;
      (*v36)(v34, v6, v25);
      v26(v38, v27, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a3 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_10066AC2C(0, *(v44 + 2) + 1, 1, v44);
      }

      v30 = *(v44 + 2);
      v29 = *(v44 + 3);
      if (v30 >= v29 >> 1)
      {
        v44 = sub_10066AC2C((v29 > 1), v30 + 1, 1, v44);
      }

      v31 = v43;
      v32 = v44;
      *(v44 + 2) = v30 + 1;
      v26(&v32[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30], v38, v31);
      v12 = v20;
      v13 = v21;
      v6 = v42;
      if (a3 < 0)
      {
        goto LABEL_10;
      }
    }

LABEL_13:
    v22 = v12;
    v23 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_17:
    v21 = (v23 - 1) & v23;
    v19 = *(*(a3 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_26;
    }

    v23 = *(v10 + 8 * v20);
    ++v22;
    if (v23)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void *sub_100401368(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007A3784();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_1007A25C4();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100401514(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v18 = v8;
      a1(&v15, &v18);
      if (v3)
      {

        return v7;
      }

      if (v16)
      {
        sub_1000077C0(&v15, v17);
        sub_1000077C0(v17, &v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10066AC08(0, v7[2] + 1, 1, v7);
        }

        v12 = v7[2];
        v11 = v7[3];
        if (v12 >= v11 >> 1)
        {
          v7 = sub_10066AC08((v11 > 1), v12 + 1, 1, v7);
        }

        v7[2] = v12 + 1;
        sub_1000077C0(&v15, &v7[5 * v12 + 4]);
      }

      else
      {
        sub_100007840(&v15, &unk_100AF1C40, &unk_100818DB0);
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100401700(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AE2238, &qword_100832E20);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10079AA04();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v29 = &v27 - v13;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v25)
  {
    v15 = 0;
    v34 = a3 & 0xFFFFFFFFFFFFFF8;
    v35 = a3 & 0xC000000000000001;
    v31 = (v30 + 32);
    v32 = (v30 + 48);
    v37 = v12;
    v38 = _swiftEmptyArrayStorage;
    v27 = a1;
    v28 = a3;
    v33 = i;
    while (v35)
    {
      v12 = sub_1007A3784();
      v16 = v12;
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v39 = v16;
      a1(&v39);
      if (v3)
      {

        return v38;
      }

      v18 = v37;
      if ((*v32)(v8, 1, v37) == 1)
      {
        v12 = sub_100007840(v8, &qword_100AE2238, &qword_100832E20);
      }

      else
      {
        v19 = *v31;
        v20 = v29;
        (*v31)(v29, v8, v18);
        v19(v36, v20, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_10066C2FC(0, v38[2] + 1, 1, v38);
        }

        v22 = v38[2];
        v21 = v38[3];
        if (v22 >= v21 >> 1)
        {
          v38 = sub_10066C2FC((v21 > 1), v22 + 1, 1, v38);
        }

        v23 = v37;
        v24 = v38;
        v38[2] = v22 + 1;
        v12 = (v19)(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v22, v36, v23);
        a1 = v27;
        a3 = v28;
      }

      ++v15;
      if (v17 == v33)
      {
        return v38;
      }
    }

    if (v15 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    v16 = *(a3 + 8 * v15 + 32);

    v17 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v25 = v12;
    i = sub_1007A38D4();
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100401A7C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(sub_10079A274() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    a1(v14, v8);
    if (v3)
    {
      break;
    }

    if (v14[3])
    {
      sub_1000076D4(v14, v15);
      sub_1000076D4(v15, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10066A640(0, *(v10 + 2) + 1, 1, v10);
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        v10 = sub_10066A640((v11 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      sub_1000076D4(v14, &v10[32 * v12 + 32]);
    }

    else
    {
      sub_100007840(v14, &unk_100AD5B40, &unk_100811300);
    }

    v8 += v9;
    if (!--v4)
    {
      return v10;
    }
  }

  return v10;
}