BOOL sub_100072DEC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v27 = a2;
  v5 = sub_1000C0AF8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v28 = &v26 - v10;
  v11 = sub_100004D04(&qword_1000EFB70, &qword_1000C7C30);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = *a1;
  *(&v26 - v16) = *a1;
  sub_10007E410(v27, &v26 + *(v12 + 56) - v16, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
  sub_1000082B4(v17, v14, &qword_1000EFB70, &qword_1000C7C30);
  v19 = *v14;
  v20 = v18;

  v21 = v14 + *(v12 + 56);
  v22 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  (*(v6 + 16))(v8, v21 + *(v22 + 20), v5);
  sub_10007E478(v21, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
  v23 = v28;
  sub_1000C0A48();
  v24 = *(v6 + 8);
  v24(v8, v5);
  sub_10007CDD4(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LOBYTE(a1) = sub_1000C25C8();
  v24(v23, v5);
  sub_1000084C0(v17, &qword_1000EFB70, &qword_1000C7C30);
  return (a1 & 1) == 0;
}

uint64_t sub_100073098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  swift_beginAccess();
  v12 = *(v2 + 120);
  if (*(v12 + 16))
  {

    v13 = sub_1000799F0(a1);
    if (v14)
    {
      sub_10007E410(*(v12 + 56) + *(v6 + 72) * v13, v8, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);

      sub_10007E4DC(v8, v11, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
      if (*v11)
      {
        v15 = *(v5 + 20);
        v16 = sub_1000C0AF8();
        v17 = *(v16 - 8);
        (*(v17 + 32))(a2, &v11[v15], v16);
        return (*(v17 + 56))(a2, 0, 1, v16);
      }

      sub_10007E478(v11, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    }

    else
    {
    }
  }

  v19 = sub_1000C0AF8();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t sub_1000732F4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100073338()
{
  v1 = sub_1000C13E8();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    goto LABEL_2;
  }

  if (v6 != enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    if (v6 == enum case for REMRemindersListDataView.ShowCompleted.off(_:) || v6 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
    {
      return 0;
    }

    if (qword_1000EC968 != -1)
    {
      swift_once();
    }

    v10 = sub_1000C1568();
    sub_10000D978(v10, qword_1000EF8E8);
    v11 = sub_1000C1558();
    v12 = sub_1000C2948();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "TTRNewWidgetInteractorFetchConfiguration.ShowCompleted.additionalVisibleRemindersCount: unhandled case", v13, 2u);
    }

LABEL_2:
    (*(v2 + 8))(v5, v1);
    return 0;
  }

  (*(v2 + 96))(v5, v1);
  if ((*v5 & 0xC000000000000001) != 0)
  {
    v8 = sub_1000C2AC8();

    return v8;
  }

  else
  {
    v14 = *(*v5 + 16);

    return v14;
  }
}

uint64_t sub_10007359C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[24] = a6;
  v8[27] = sub_100004D04(&qword_1000EFC20, &unk_1000C7DC0);
  v8[28] = swift_task_alloc();
  v8[29] = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v8[30] = swift_task_alloc();
  v10 = sub_1000C11F8();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = sub_100004D04(&qword_1000EFC30, &qword_1000C7DD0);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[38] = v11;
  v8[39] = sub_1000C2848();
  v8[40] = sub_1000C2838();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[41] = v12;
  *v12 = v8;
  v12[1] = sub_1000737F8;

  return v14(v11);
}

uint64_t sub_1000737F8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = sub_1000C2818();
  if (v0)
  {
    v5 = sub_10007395C;
  }

  else
  {
    *(v2 + 344) = v3;
    *(v2 + 352) = v4;
    v5 = sub_100073BA4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10007395C()
{
  v14 = v0;

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v1 = sub_1000C1568();
  sub_10000D978(v1, qword_1000EF8E8);
  swift_errorRetain();
  v2 = sub_1000C1558();
  v3 = sub_1000C2948();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1000C2D08();
    v8 = sub_1000B7B58(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Widget interactor: fetched failed {error %s}", v4, 0xCu);
    sub_10002285C(v5);
  }

  v9 = v0[28];
  v10 = v0[25];
  *v9 = v0[42];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v10(v9);

  sub_1000084C0(v9, &qword_1000EFC20, &unk_1000C7DC0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100073BA4()
{
  v61 = v0;
  v1 = *(*(v0 + 304) + *(*(v0 + 280) + 40));
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v60[0] = _swiftEmptyArrayStorage;
    sub_1000BA3A4(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 32;
    do
    {
      sub_1000239F4(v5, v0 + 24);
      sub_100026D74((v0 + 24), *(v0 + 48));
      *(v0 + 16) = sub_1000C0DD8();
      v60[0] = v4;
      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000BA3A4((v6 > 1), v7 + 1, 1);
        v4 = v60[0];
      }

      v4[2] = v7 + 1;
      v8 = &v4[6 * v7];
      v9 = *(v0 + 16);
      v10 = *(v0 + 48);
      v8[3] = *(v0 + 32);
      v8[4] = v10;
      v8[2] = v9;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4[2])
  {
    sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
    v11 = sub_1000C2C68();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v12 = *(v0 + 336);
  v60[0] = v11;
  sub_10007F790(v4, 1, v60);
  if (v12)
  {
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 280);

  v15 = v60[0];
  *(v0 + 360) = v60[0];
  v16 = *(v13 + *(v14 + 36));
  v17 = *(v16 + 16);
  v54 = v15;
  if (v17)
  {
    v18 = *(v0 + 256);
    v60[0] = _swiftEmptyArrayStorage;
    sub_1000BA384(0, v17, 0);
    v3 = v60[0];
    v19 = *(v18 + 16);
    v18 += 16;
    v53 = v16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v55 = *(v18 + 56);
    v57 = v19;
    v21 = (v18 - 8);
    do
    {
      v22 = *(v0 + 272);
      v23 = *(v0 + 248);
      v57(v22, v20, v23);
      v24 = sub_1000C11D8();
      v25 = sub_1000C11C8();
      (*v21)(v22, v23);
      v60[0] = v3;
      v27 = v3[2];
      v26 = v3[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000BA384((v26 > 1), v27 + 1, 1);
        v3 = v60[0];
      }

      v3[2] = v27 + 1;
      v28 = &v3[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      v20 += v55;
      --v17;
    }

    while (v17);
    v16 = v53;
    v15 = v54;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v29 = &_swiftEmptyDictionarySingleton;
    goto LABEL_21;
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v29 = sub_1000C2C68();
LABEL_21:
  v60[0] = v29;
  sub_10007FA98(v3, 1, v60);

  v56 = v60[0];
  *(v0 + 368) = v60[0];
  v30 = *(v16 + 16);
  if (v30)
  {
    v31 = *(v0 + 256);
    v32 = *(v31 + 16);
    v31 += 16;
    v33 = v16 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v58 = *(v31 + 56);
    v59 = v32;
    v34 = (v31 - 8);
    v35 = _swiftEmptyArrayStorage;
    v32(*(v0 + 264), v33, *(v0 + 248));
    while (1)
    {
      v38 = sub_1000C11D8();
      v39 = v38;
      if (*(v15 + 16) && (v40 = sub_1000799F0(v38), (v41 & 1) != 0))
      {
        v42 = *(v0 + 264);
        v43 = *(v0 + 248);
        sub_1000239F4(*(v15 + 56) + 40 * v40, v0 + 104);

        (*v34)(v42, v43);
        sub_100004E0C((v0 + 104), v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1000221E0(0, v35[2] + 1, 1, v35);
        }

        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          v35 = sub_1000221E0((v44 > 1), v45 + 1, 1, v35);
        }

        v35[2] = v45 + 1;
        sub_100004E0C((v0 + 64), &v35[5 * v45 + 4]);
        v15 = v54;
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 248);

        (*v34)(v36, v37);
      }

      v33 += v58;
      if (!--v30)
      {
        break;
      }

      v59(*(v0 + 264), v33, *(v0 + 248));
    }
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  *(v0 + 376) = v35;
  v60[0] = *(*(v0 + 304) + *(*(v0 + 280) + 44));

  sub_10007CE1C(v60);
  v47 = *(v0 + 192);
  *(v0 + 384) = v60[0];
  *(v0 + 176) = v35;
  v48 = swift_task_alloc();
  *(v0 + 392) = v48;
  *(v48 + 16) = v47;
  *(v48 + 24) = v56;
  v49 = swift_task_alloc();
  *(v0 + 400) = v49;
  v50 = sub_100004D04(&qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 408) = v50;
  v51 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  *(v0 + 416) = v51;
  v52 = sub_10007FDB4(&qword_1000EFC08, &qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 424) = v52;
  *v49 = v0;
  v49[1] = sub_100074178;

  return Sequence.asyncMap<A>(_:)(&unk_1000C7DD8, v48, v50, v51, v52);
}

uint64_t sub_100074178(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 432) = a1;

  if (v1)
  {
  }

  else
  {

    v5 = *(v3 + 344);
    v6 = *(v3 + 352);

    return _swift_task_switch(sub_1000742B4, v5, v6);
  }
}

uint64_t sub_1000742B4()
{
  v1 = v0[46];
  v2 = v0[24];
  v0[23] = v0[48];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_100074394;
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[51];

  return Sequence.asyncMap<A>(_:)(&unk_1000C7DE0, v3, v7, v5, v6);
}

uint64_t sub_100074394(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v4[57] = a1;

    v6 = v4[43];
    v7 = v4[44];

    return _swift_task_switch(sub_100074500, v6, v7);
  }
}

uint64_t sub_100074500()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[38];
  v4 = v0[35];
  v6 = v0[29];
  v5 = v0[30];

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v4 + 32);
  v10 = v6[8];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 16))(&v5[v10], v3 + v9, v11);
  *v5 = v7;
  *(v5 + 1) = v8;
  *&v5[v6[9]] = v2;
  *&v5[v6[10]] = v1;
  v12 = qword_1000EC968;
  v13 = v7;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];
  v17 = sub_1000C1568();
  sub_10000D978(v17, qword_1000EF8E8);
  sub_1000082B4(v14, v15, &qword_1000EFC30, &qword_1000C7DD0);
  sub_1000082B4(v14, v16, &qword_1000EFC30, &qword_1000C7DD0);

  v18 = sub_1000C1558();
  v19 = sub_1000C2968();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[47];
  v22 = v0[36];
  v23 = v0[37];
  if (v20)
  {
    v24 = v0[35];
    v25 = swift_slowAlloc();
    *v25 = 134218496;
    v26 = *(*(v23 + *(v24 + 36)) + 16);
    sub_1000084C0(v23, &qword_1000EFC30, &qword_1000C7DD0);
    *(v25 + 4) = v26;
    *(v25 + 12) = 2048;
    v27 = *(*(v22 + *(v24 + 40)) + 16);
    sub_1000084C0(v22, &qword_1000EFC30, &qword_1000C7DD0);
    *(v25 + 14) = v27;
    *(v25 + 22) = 2048;
    v28 = *(v21 + 16);

    *(v25 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v18, v19, "Widget interactor: fetched total %ld reminders %ld result %ld", v25, 0x20u);
  }

  else
  {

    sub_1000084C0(v22, &qword_1000EFC30, &qword_1000C7DD0);
    sub_1000084C0(v23, &qword_1000EFC30, &qword_1000C7DD0);
  }

  v29 = v0[38];
  v30 = v0[30];
  v31 = v0[28];
  v32 = v0[25];
  sub_1000082B4(v30, v31, &qword_1000EFC28, &unk_1000C8CE0);
  swift_storeEnumTagMultiPayload();
  v32(v31);
  sub_1000084C0(v31, &qword_1000EFC20, &unk_1000C7DC0);
  sub_1000084C0(v30, &qword_1000EFC28, &unk_1000C8CE0);
  sub_1000084C0(v29, &qword_1000EFC30, &qword_1000C7DD0);

  v33 = v0[1];

  return v33();
}

uint64_t sub_10007489C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[24] = a6;
  v8[27] = sub_100004D04(&qword_1000EFC58, &qword_1000C7E40);
  v8[28] = swift_task_alloc();
  v8[29] = sub_100004D04(&qword_1000EFC60, &qword_1000C7E48);
  v8[30] = swift_task_alloc();
  v10 = sub_1000C11F8();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = sub_100004D04(&qword_1000EFC68, &qword_1000C7E50);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[38] = v11;
  v8[39] = sub_1000C2848();
  v8[40] = sub_1000C2838();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[41] = v12;
  *v12 = v8;
  v12[1] = sub_100074AF8;

  return v14(v11);
}

uint64_t sub_100074AF8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = sub_1000C2818();
  if (v0)
  {
    v5 = sub_100074C5C;
  }

  else
  {
    *(v2 + 344) = v3;
    *(v2 + 352) = v4;
    v5 = sub_100074EA4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100074C5C()
{
  v14 = v0;

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v1 = sub_1000C1568();
  sub_10000D978(v1, qword_1000EF8E8);
  swift_errorRetain();
  v2 = sub_1000C1558();
  v3 = sub_1000C2948();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1000C2D08();
    v8 = sub_1000B7B58(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Widget interactor: fetched failed {error %s}", v4, 0xCu);
    sub_10002285C(v5);
  }

  v9 = v0[28];
  v10 = v0[25];
  *v9 = v0[42];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v10(v9);

  sub_1000084C0(v9, &qword_1000EFC58, &qword_1000C7E40);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100074EA4()
{
  v61 = v0;
  v1 = *(*(v0 + 304) + *(*(v0 + 280) + 40));
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v60[0] = _swiftEmptyArrayStorage;
    sub_1000BA3A4(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 32;
    do
    {
      sub_1000239F4(v5, v0 + 24);
      sub_100026D74((v0 + 24), *(v0 + 48));
      *(v0 + 16) = sub_1000C0DD8();
      v60[0] = v4;
      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000BA3A4((v6 > 1), v7 + 1, 1);
        v4 = v60[0];
      }

      v4[2] = v7 + 1;
      v8 = &v4[6 * v7];
      v9 = *(v0 + 16);
      v10 = *(v0 + 48);
      v8[3] = *(v0 + 32);
      v8[4] = v10;
      v8[2] = v9;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4[2])
  {
    sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
    v11 = sub_1000C2C68();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v12 = *(v0 + 336);
  v60[0] = v11;
  sub_10007F790(v4, 1, v60);
  if (v12)
  {
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 280);

  v15 = v60[0];
  *(v0 + 360) = v60[0];
  v16 = *(v13 + *(v14 + 36));
  v17 = *(v16 + 16);
  v54 = v15;
  if (v17)
  {
    v18 = *(v0 + 256);
    v60[0] = _swiftEmptyArrayStorage;
    sub_1000BA384(0, v17, 0);
    v3 = v60[0];
    v19 = *(v18 + 16);
    v18 += 16;
    v53 = v16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v55 = *(v18 + 56);
    v57 = v19;
    v21 = (v18 - 8);
    do
    {
      v22 = *(v0 + 272);
      v23 = *(v0 + 248);
      v57(v22, v20, v23);
      v24 = sub_1000C11D8();
      v25 = sub_1000C11C8();
      (*v21)(v22, v23);
      v60[0] = v3;
      v27 = v3[2];
      v26 = v3[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000BA384((v26 > 1), v27 + 1, 1);
        v3 = v60[0];
      }

      v3[2] = v27 + 1;
      v28 = &v3[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      v20 += v55;
      --v17;
    }

    while (v17);
    v16 = v53;
    v15 = v54;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v29 = &_swiftEmptyDictionarySingleton;
    goto LABEL_21;
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v29 = sub_1000C2C68();
LABEL_21:
  v60[0] = v29;
  sub_10007FA98(v3, 1, v60);

  v56 = v60[0];
  *(v0 + 368) = v60[0];
  v30 = *(v16 + 16);
  if (v30)
  {
    v31 = *(v0 + 256);
    v32 = *(v31 + 16);
    v31 += 16;
    v33 = v16 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v58 = *(v31 + 56);
    v59 = v32;
    v34 = (v31 - 8);
    v35 = _swiftEmptyArrayStorage;
    v32(*(v0 + 264), v33, *(v0 + 248));
    while (1)
    {
      v38 = sub_1000C11D8();
      v39 = v38;
      if (*(v15 + 16) && (v40 = sub_1000799F0(v38), (v41 & 1) != 0))
      {
        v42 = *(v0 + 264);
        v43 = *(v0 + 248);
        sub_1000239F4(*(v15 + 56) + 40 * v40, v0 + 104);

        (*v34)(v42, v43);
        sub_100004E0C((v0 + 104), v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1000221E0(0, v35[2] + 1, 1, v35);
        }

        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          v35 = sub_1000221E0((v44 > 1), v45 + 1, 1, v35);
        }

        v35[2] = v45 + 1;
        sub_100004E0C((v0 + 64), &v35[5 * v45 + 4]);
        v15 = v54;
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 248);

        (*v34)(v36, v37);
      }

      v33 += v58;
      if (!--v30)
      {
        break;
      }

      v59(*(v0 + 264), v33, *(v0 + 248));
    }
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  *(v0 + 376) = v35;
  v60[0] = *(*(v0 + 304) + *(*(v0 + 280) + 44));

  sub_10007CE1C(v60);
  v47 = *(v0 + 192);
  *(v0 + 384) = v60[0];
  *(v0 + 176) = v35;
  v48 = swift_task_alloc();
  *(v0 + 392) = v48;
  *(v48 + 16) = v47;
  *(v48 + 24) = v56;
  v49 = swift_task_alloc();
  *(v0 + 400) = v49;
  v50 = sub_100004D04(&qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 408) = v50;
  v51 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  *(v0 + 416) = v51;
  v52 = sub_10007FDB4(&qword_1000EFC08, &qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 424) = v52;
  *v49 = v0;
  v49[1] = sub_100075478;

  return Sequence.asyncMap<A>(_:)(&unk_1000C7E58, v48, v50, v51, v52);
}

uint64_t sub_100075478(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 432) = a1;

  if (v1)
  {
  }

  else
  {

    v5 = *(v3 + 344);
    v6 = *(v3 + 352);

    return _swift_task_switch(sub_1000755B4, v5, v6);
  }
}

uint64_t sub_1000755B4()
{
  v1 = v0[46];
  v2 = v0[24];
  v0[23] = v0[48];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_100075694;
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[51];

  return Sequence.asyncMap<A>(_:)(&unk_1000C7E60, v3, v7, v5, v6);
}

uint64_t sub_100075694(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v4[57] = a1;

    v6 = v4[43];
    v7 = v4[44];

    return _swift_task_switch(sub_100075800, v6, v7);
  }
}

uint64_t sub_100075800()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[38];
  v4 = v0[35];
  v6 = v0[29];
  v5 = v0[30];

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v4 + 32);
  v10 = v6[8];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 16))(&v5[v10], v3 + v9, v11);
  *v5 = v7;
  *(v5 + 1) = v8;
  *&v5[v6[9]] = v2;
  *&v5[v6[10]] = v1;
  v12 = qword_1000EC968;
  v13 = v7;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];
  v17 = sub_1000C1568();
  sub_10000D978(v17, qword_1000EF8E8);
  sub_1000082B4(v14, v15, &qword_1000EFC68, &qword_1000C7E50);
  sub_1000082B4(v14, v16, &qword_1000EFC68, &qword_1000C7E50);

  v18 = sub_1000C1558();
  v19 = sub_1000C2968();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[47];
  v22 = v0[36];
  v23 = v0[37];
  if (v20)
  {
    v24 = v0[35];
    v25 = swift_slowAlloc();
    *v25 = 134218496;
    v26 = *(*(v23 + *(v24 + 36)) + 16);
    sub_1000084C0(v23, &qword_1000EFC68, &qword_1000C7E50);
    *(v25 + 4) = v26;
    *(v25 + 12) = 2048;
    v27 = *(*(v22 + *(v24 + 40)) + 16);
    sub_1000084C0(v22, &qword_1000EFC68, &qword_1000C7E50);
    *(v25 + 14) = v27;
    *(v25 + 22) = 2048;
    v28 = *(v21 + 16);

    *(v25 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v18, v19, "Widget interactor: fetched total %ld reminders %ld result %ld", v25, 0x20u);
  }

  else
  {

    sub_1000084C0(v22, &qword_1000EFC68, &qword_1000C7E50);
    sub_1000084C0(v23, &qword_1000EFC68, &qword_1000C7E50);
  }

  v29 = v0[38];
  v30 = v0[30];
  v31 = v0[28];
  v32 = v0[25];
  sub_1000082B4(v30, v31, &qword_1000EFC60, &qword_1000C7E48);
  swift_storeEnumTagMultiPayload();
  v32(v31);
  sub_1000084C0(v31, &qword_1000EFC58, &qword_1000C7E40);
  sub_1000084C0(v30, &qword_1000EFC60, &qword_1000C7E48);
  sub_1000084C0(v29, &qword_1000EFC68, &qword_1000C7E50);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100075B9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[24] = a6;
  v8[27] = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  v8[28] = swift_task_alloc();
  v8[29] = sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0);
  v8[30] = swift_task_alloc();
  v10 = sub_1000C11F8();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = sub_100004D04(&qword_1000EFBC8, &qword_1000C7D00);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[38] = v11;
  v8[39] = sub_1000C2848();
  v8[40] = sub_1000C2838();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v8[41] = v12;
  *v12 = v8;
  v12[1] = sub_100075DF8;

  return v14(v11);
}

uint64_t sub_100075DF8()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = sub_1000C2818();
  if (v0)
  {
    v5 = sub_100075F5C;
  }

  else
  {
    *(v2 + 344) = v3;
    *(v2 + 352) = v4;
    v5 = sub_1000761A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100075F5C()
{
  v14 = v0;

  if (qword_1000EC968 != -1)
  {
    swift_once();
  }

  v1 = sub_1000C1568();
  sub_10000D978(v1, qword_1000EF8E8);
  swift_errorRetain();
  v2 = sub_1000C1558();
  v3 = sub_1000C2948();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1000C2D08();
    v8 = sub_1000B7B58(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Widget interactor: fetched failed {error %s}", v4, 0xCu);
    sub_10002285C(v5);
  }

  v9 = v0[28];
  v10 = v0[25];
  *v9 = v0[42];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v10(v9);

  sub_1000084C0(v9, &qword_1000EFB98, &qword_1000C7C50);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000761A4()
{
  v61 = v0;
  v1 = *(*(v0 + 304) + *(*(v0 + 280) + 40));
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v60[0] = _swiftEmptyArrayStorage;
    sub_1000BA3A4(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 32;
    do
    {
      sub_1000239F4(v5, v0 + 24);
      sub_100026D74((v0 + 24), *(v0 + 48));
      *(v0 + 16) = sub_1000C0DD8();
      v60[0] = v4;
      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000BA3A4((v6 > 1), v7 + 1, 1);
        v4 = v60[0];
      }

      v4[2] = v7 + 1;
      v8 = &v4[6 * v7];
      v9 = *(v0 + 16);
      v10 = *(v0 + 48);
      v8[3] = *(v0 + 32);
      v8[4] = v10;
      v8[2] = v9;
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (v4[2])
  {
    sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
    v11 = sub_1000C2C68();
  }

  else
  {
    v11 = &_swiftEmptyDictionarySingleton;
  }

  v12 = *(v0 + 336);
  v60[0] = v11;
  sub_10007F790(v4, 1, v60);
  if (v12)
  {
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 280);

  v15 = v60[0];
  *(v0 + 360) = v60[0];
  v16 = *(v13 + *(v14 + 36));
  v17 = *(v16 + 16);
  v54 = v15;
  if (v17)
  {
    v18 = *(v0 + 256);
    v60[0] = _swiftEmptyArrayStorage;
    sub_1000BA384(0, v17, 0);
    v3 = v60[0];
    v19 = *(v18 + 16);
    v18 += 16;
    v53 = v16;
    v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v55 = *(v18 + 56);
    v57 = v19;
    v21 = (v18 - 8);
    do
    {
      v22 = *(v0 + 272);
      v23 = *(v0 + 248);
      v57(v22, v20, v23);
      v24 = sub_1000C11D8();
      v25 = sub_1000C11C8();
      (*v21)(v22, v23);
      v60[0] = v3;
      v27 = v3[2];
      v26 = v3[3];
      if (v27 >= v26 >> 1)
      {
        sub_1000BA384((v26 > 1), v27 + 1, 1);
        v3 = v60[0];
      }

      v3[2] = v27 + 1;
      v28 = &v3[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      v20 += v55;
      --v17;
    }

    while (v17);
    v16 = v53;
    v15 = v54;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v29 = &_swiftEmptyDictionarySingleton;
    goto LABEL_21;
  }

  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v29 = sub_1000C2C68();
LABEL_21:
  v60[0] = v29;
  sub_10007FA98(v3, 1, v60);

  v56 = v60[0];
  *(v0 + 368) = v60[0];
  v30 = *(v16 + 16);
  if (v30)
  {
    v31 = *(v0 + 256);
    v32 = *(v31 + 16);
    v31 += 16;
    v33 = v16 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v58 = *(v31 + 56);
    v59 = v32;
    v34 = (v31 - 8);
    v35 = _swiftEmptyArrayStorage;
    v32(*(v0 + 264), v33, *(v0 + 248));
    while (1)
    {
      v38 = sub_1000C11D8();
      v39 = v38;
      if (*(v15 + 16) && (v40 = sub_1000799F0(v38), (v41 & 1) != 0))
      {
        v42 = *(v0 + 264);
        v43 = *(v0 + 248);
        sub_1000239F4(*(v15 + 56) + 40 * v40, v0 + 104);

        (*v34)(v42, v43);
        sub_100004E0C((v0 + 104), v0 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1000221E0(0, v35[2] + 1, 1, v35);
        }

        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          v35 = sub_1000221E0((v44 > 1), v45 + 1, 1, v35);
        }

        v35[2] = v45 + 1;
        sub_100004E0C((v0 + 64), &v35[5 * v45 + 4]);
        v15 = v54;
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 248);

        (*v34)(v36, v37);
      }

      v33 += v58;
      if (!--v30)
      {
        break;
      }

      v59(*(v0 + 264), v33, *(v0 + 248));
    }
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  *(v0 + 376) = v35;
  v60[0] = *(*(v0 + 304) + *(*(v0 + 280) + 44));

  sub_10007CE1C(v60);
  v47 = *(v0 + 192);
  *(v0 + 384) = v60[0];
  *(v0 + 176) = v35;
  v48 = swift_task_alloc();
  *(v0 + 392) = v48;
  *(v48 + 16) = v47;
  *(v48 + 24) = v56;
  v49 = swift_task_alloc();
  *(v0 + 400) = v49;
  v50 = sub_100004D04(&qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 408) = v50;
  v51 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  *(v0 + 416) = v51;
  v52 = sub_10007FDB4(&qword_1000EFC08, &qword_1000EFC00, &qword_1000C7D60);
  *(v0 + 424) = v52;
  *v49 = v0;
  v49[1] = sub_100076778;

  return Sequence.asyncMap<A>(_:)(&unk_1000C7D58, v48, v50, v51, v52);
}

uint64_t sub_100076778(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 432) = a1;

  if (v1)
  {
  }

  else
  {

    v5 = *(v3 + 344);
    v6 = *(v3 + 352);

    return _swift_task_switch(sub_1000768B4, v5, v6);
  }
}

uint64_t sub_1000768B4()
{
  v1 = v0[46];
  v2 = v0[24];
  v0[23] = v0[48];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_100076994;
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[51];

  return Sequence.asyncMap<A>(_:)(&unk_1000C7D70, v3, v7, v5, v6);
}

uint64_t sub_100076994(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v4[57] = a1;

    v6 = v4[43];
    v7 = v4[44];

    return _swift_task_switch(sub_100076B00, v6, v7);
  }
}

uint64_t sub_100076B00()
{
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[38];
  v4 = v0[35];
  v6 = v0[29];
  v5 = v0[30];

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v4 + 32);
  v10 = v6[8];
  v11 = sub_1000C0E58();
  (*(*(v11 - 8) + 16))(&v5[v10], v3 + v9, v11);
  *v5 = v7;
  *(v5 + 1) = v8;
  *&v5[v6[9]] = v2;
  *&v5[v6[10]] = v1;
  v12 = qword_1000EC968;
  v13 = v7;
  if (v12 != -1)
  {
    swift_once();
  }

  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];
  v17 = sub_1000C1568();
  sub_10000D978(v17, qword_1000EF8E8);
  sub_1000082B4(v14, v15, &qword_1000EFBC8, &qword_1000C7D00);
  sub_1000082B4(v14, v16, &qword_1000EFBC8, &qword_1000C7D00);

  v18 = sub_1000C1558();
  v19 = sub_1000C2968();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[47];
  v22 = v0[36];
  v23 = v0[37];
  if (v20)
  {
    v24 = v0[35];
    v25 = swift_slowAlloc();
    *v25 = 134218496;
    v26 = *(*(v23 + *(v24 + 36)) + 16);
    sub_1000084C0(v23, &qword_1000EFBC8, &qword_1000C7D00);
    *(v25 + 4) = v26;
    *(v25 + 12) = 2048;
    v27 = *(*(v22 + *(v24 + 40)) + 16);
    sub_1000084C0(v22, &qword_1000EFBC8, &qword_1000C7D00);
    *(v25 + 14) = v27;
    *(v25 + 22) = 2048;
    v28 = *(v21 + 16);

    *(v25 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v18, v19, "Widget interactor: fetched total %ld reminders %ld result %ld", v25, 0x20u);
  }

  else
  {

    sub_1000084C0(v22, &qword_1000EFBC8, &qword_1000C7D00);
    sub_1000084C0(v23, &qword_1000EFBC8, &qword_1000C7D00);
  }

  v29 = v0[38];
  v30 = v0[30];
  v31 = v0[28];
  v32 = v0[25];
  sub_1000082B4(v30, v31, &qword_1000EFBE8, &unk_1000C8CB0);
  swift_storeEnumTagMultiPayload();
  v32(v31);
  sub_1000084C0(v31, &qword_1000EFB98, &qword_1000C7C50);
  sub_1000084C0(v30, &qword_1000EFBE8, &unk_1000C8CB0);
  sub_1000084C0(v29, &qword_1000EFBC8, &qword_1000C7D00);

  v33 = v0[1];

  return v33();
}

uint64_t sub_100076E9C(void *a1, void *a2)
{
  v5 = sub_1000C0AF8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  sub_100026D74(a1, a1[3]);
  v12 = sub_1000C0D98();
  if (v12)
  {
    v13 = v12;
    v21[1] = v2;
    sub_100026D74(a2, a2[3]);
    v14 = sub_1000C0D98();
    if (v14)
    {
      v15 = v14;
      v16 = [v13 date];
      sub_1000C0AA8();

      v17 = [v15 date];
      sub_1000C0AA8();

      v18 = sub_1000C0A98();
      v19 = *(v6 + 8);
      v19(v8, v5);
      v19(v11, v5);
    }

    else
    {

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v4[11] = swift_task_alloc();
  sub_1000C2848();
  v4[12] = sub_1000C2838();
  v6 = sub_1000C2818();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_100077158, v6, v5);
}

uint64_t sub_100077158()
{
  v1 = *(v0 + 64);
  sub_100026D74(v1, v1[3]);
  if (sub_1000C0DF8())
  {
    v2 = *(v0 + 64);
    v3 = *(*(v0 + 72) + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
    *(v0 + 120) = v3;
    sub_100026D74(v2, v1[3]);
    *(v0 + 128) = sub_1000C0DD8();

    return _swift_task_switch(sub_100077340, v3, 0);
  }

  else
  {
    v4 = *(v0 + 88);

    v5 = sub_1000C0AF8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    sub_1000239F4(v7, v0 + 16);
    sub_100026D74(v7, v7[3]);
    v8 = sub_1000C0DD8();
    v9 = v8;
    if (*(v6 + 16) && (v10 = sub_1000799F0(v8), (v11 & 1) != 0))
    {
      v12 = *(*(*(v0 + 80) + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v0 + 88);
    v14 = *(v0 + 56);

    sub_100004E0C((v0 + 16), v14);
    *(v14 + 40) = v12;
    v15 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    sub_10007FEBC(v13, v14 + *(v15 + 24));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100077340()
{
  v1 = v0[16];
  sub_100073098(v1, v0[11]);

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_1000773B0, v2, v3);
}

uint64_t sub_1000773B0()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  sub_1000239F4(v2, v0 + 16);
  sub_100026D74(v2, v2[3]);
  v3 = sub_1000C0DD8();
  v4 = v3;
  if (*(v1 + 16) && (v5 = sub_1000799F0(v3), (v6 & 1) != 0))
  {
    v7 = *(*(*(v0 + 80) + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 56);

  sub_100004E0C((v0 + 16), v9);
  *(v9 + 40) = v7;
  v10 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  sub_10007FEBC(v8, v9 + *(v10 + 24));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000774BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v4[11] = swift_task_alloc();
  sub_1000C2848();
  v4[12] = sub_1000C2838();
  v6 = sub_1000C2818();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_100077590, v6, v5);
}

uint64_t sub_100077590()
{
  v1 = *(v0 + 64);
  sub_100026D74(v1, v1[3]);
  if (sub_1000C0DF8())
  {
    v2 = *(v0 + 64);
    v3 = *(*(v0 + 72) + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache);
    *(v0 + 120) = v3;
    sub_100026D74(v2, v1[3]);
    *(v0 + 128) = sub_1000C0DD8();

    return _swift_task_switch(sub_100077778, v3, 0);
  }

  else
  {
    v4 = *(v0 + 88);

    v5 = sub_1000C0AF8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = *(v0 + 80);
    v7 = *(v0 + 64);
    sub_1000239F4(v7, v0 + 16);
    sub_100026D74(v7, v7[3]);
    v8 = sub_1000C0DD8();
    v9 = v8;
    if (*(v6 + 16) && (v10 = sub_1000799F0(v8), (v11 & 1) != 0))
    {
      v12 = *(*(*(v0 + 80) + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v0 + 88);
    v14 = *(v0 + 56);

    sub_100004E0C((v0 + 16), v14);
    *(v14 + 40) = v12;
    v15 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    sub_10007FEBC(v13, v14 + *(v15 + 24));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100077778()
{
  v1 = v0[16];
  sub_100073098(v1, v0[11]);

  v2 = v0[13];
  v3 = v0[14];

  return _swift_task_switch(sub_100083AE8, v2, v3);
}

uint64_t sub_1000777E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004D04(&qword_1000EFBA0, &qword_1000C7C58);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000082B4(a3, v25 - v10, &qword_1000EFBA0, &qword_1000C7C58);
  v12 = sub_1000C2868();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000084C0(v11, &qword_1000EFBA0, &qword_1000C7C58);
  }

  else
  {
    sub_1000C2858();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000C2818();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000C26B8() + 32;
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

      sub_1000084C0(a3, &qword_1000EFBA0, &qword_1000C7C58);

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

  sub_1000084C0(a3, &qword_1000EFBA0, &qword_1000C7C58);
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

uint64_t sub_100077B14(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v68 = a2;
  v8 = sub_1000C11F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100004D04(&qword_1000EFC40, &qword_1000C7DF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v52 - v16;
  v18 = __chkstk_darwin(v17);
  v19 = &v52;
  v21 = &v52 - v20;
  v22 = a4 >> 1;
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
    __break(1u);
    goto LABEL_21;
  }

  v67 = v11;
  v69 = v9;
  v70 = a1;
  v11 = *v4;
  v25 = *(*v4 + 16);
  v26 = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v19 = (v11[3] >> 1), v19 < v26))
  {
    if (v25 <= v26)
    {
      v28 = v25 + v24;
    }

    else
    {
      v28 = v25;
    }

    v11 = sub_10002245C(isUniquelyReferenced_nonNull_native, v28, 1, v11);
    v19 = (v11[3] >> 1);
  }

  v29 = &v19[-v11[2]];
  if (v22 == a3)
  {
    if (v24 <= 0)
    {
      v24 = 0;
      v19 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v29 < v24)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_16:
    v19 = v22;
LABEL_17:
    if (v24 != v29)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v65 = v19;
    v24 = v11[2];
    v26 = v69;
    v54 = *(v69 + 56);
    v55 = v69 + 56;
    v54(v21, 1, 1, v8, v18);
    v33 = v66;
    sub_1000082B4(v21, v66, &qword_1000EFC40, &qword_1000C7DF0);
    v62 = *(v26 + 48);
    v63 = v26 + 48;
    if (v62(v33, 1, v8) == 1)
    {
      v34 = v66;
LABEL_25:
      sub_1000084C0(v21, &qword_1000EFC40, &qword_1000C7DF0);
      swift_unknownObjectRelease();
      result = sub_1000084C0(v34, &qword_1000EFC40, &qword_1000C7DF0);
      goto LABEL_19;
    }

LABEL_27:
    v58 = (v26 + 32);
    v52 = (v26 + 8);
    v53 = (v26 + 16);
    v35 = v24;
    v34 = v66;
    v60 = v21;
    v61 = v14;
    do
    {
      sub_1000084C0(v34, &qword_1000EFC40, &qword_1000C7DF0);
      v37 = v11[3];
      v38 = v37 >> 1;
      v39 = v35;
      if ((v37 >> 1) < v35 + 1)
      {
        v11 = sub_10002245C((v37 > 1), v35 + 1, 1, v11);
        v38 = v11[3] >> 1;
      }

      v40 = *(v69 + 80);
      sub_1000082B4(v21, v14, &qword_1000EFC40, &qword_1000C7DF0);
      if (v62(v14, 1, v8) == 1)
      {
        v35 = v39;
        v41 = v61;
LABEL_34:
        sub_1000084C0(v41, &qword_1000EFC40, &qword_1000C7DF0);
        v36 = v35;
        v34 = v66;
        v14 = v41;
      }

      else
      {
        v57 = v11 + ((v40 + 32) & ~v40);
        v42 = *v58;
        v35 = v39;
        if (v39 <= v38)
        {
          v43 = v38;
        }

        else
        {
          v43 = v39;
        }

        v59 = v43;
        v41 = v61;
        v56 = v42;
        while (1)
        {
          v47 = v67;
          v42(v67, v41, v8);
          if (v59 == v35)
          {
            break;
          }

          v48 = v60;
          sub_1000084C0(v60, &qword_1000EFC40, &qword_1000C7DF0);
          v49 = v35;
          v50 = *(v69 + 72);
          v64 = v49;
          result = (v42)(&v57[v50 * v49], v47, v8);
          if (v65 == v22)
          {
            v44 = 1;
            v65 = v22;
            v45 = v61;
          }

          else
          {
            v45 = v61;
            if (v65 < a3 || v65 >= v22)
            {
              goto LABEL_47;
            }

            v51 = v65;
            (*v53)(v48, v68 + v50 * v65, v8);
            v44 = 0;
            v65 = v51 + 1;
          }

          (v54)(v48, v44, 1, v8);
          sub_1000082B4(v48, v45, &qword_1000EFC40, &qword_1000C7DF0);
          v46 = v62(v45, 1, v8);
          v35 = v64 + 1;
          v41 = v45;
          v42 = v56;
          if (v46 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v52)(v47, v8);
        v36 = v59;
        v35 = v59;
        v34 = v66;
        v14 = v61;
      }

      v21 = v60;
      v11[2] = v36;
      sub_1000082B4(v21, v34, &qword_1000EFC40, &qword_1000C7DF0);
    }

    while (v62(v34, 1, v8) != 1);
    goto LABEL_25;
  }

  v31 = v11[2];
  v23 = __OFADD__(v31, v24);
  v32 = v31 + v24;
  if (!v23)
  {
    v11[2] = v32;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

void sub_100078138(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_10007827C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v53 = a2;
  v9 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v51 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004D04(&qword_1000EFC48, &qword_1000C7DF8);
  __chkstk_darwin(v11 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = v45 - v15;
  v17 = __chkstk_darwin(v16);
  v18 = v45;
  v20 = v45 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = a1;
  v5 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v5[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v5 = sub_100022484(isUniquelyReferenced_nonNull_native, v27, 1, v5);
    v18 = (v5[3] >> 1);
  }

  v28 = v18 - v5[2];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v50 = v18;
    v23 = v5[2];
    v32 = v54;
    v45[0] = *(v54 + 56);
    v45[1] = v54 + 56;
    (v45[0])(v20, 1, 1, v9, v17);
    v33 = v52;
    sub_1000082B4(v20, v52, &qword_1000EFC48, &qword_1000C7DF8);
    v34 = v32;
    v25 = v33;
    v48 = *(v34 + 48);
    v49 = v34 + 48;
    if (v48(v33, 1, v9) == 1)
    {
LABEL_24:
      sub_1000084C0(v20, &qword_1000EFC48, &qword_1000C7DF8);
      swift_unknownObjectRelease();
      result = sub_1000084C0(v25, &qword_1000EFC48, &qword_1000C7DF8);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_1000084C0(v25, &qword_1000EFC48, &qword_1000C7DF8);
      v36 = v5[3];
      v37 = v36 >> 1;
      if ((v36 >> 1) < v23 + 1)
      {
        v5 = sub_100022484((v36 > 1), v23 + 1, 1, v5);
        v37 = v5[3] >> 1;
      }

      v38 = *(v54 + 80);
      sub_1000082B4(v20, v13, &qword_1000EFC48, &qword_1000C7DF8);
      if (v48(v13, 1, v9) == 1)
      {
LABEL_32:
        sub_1000084C0(v13, &qword_1000EFC48, &qword_1000C7DF8);
        v35 = v23;
      }

      else
      {
        v46 = v5 + ((v38 + 32) & ~v38);
        if (v23 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v23;
        }

        v47 = v39;
        v40 = v51;
        while (1)
        {
          sub_10007E4DC(v13, v40, type metadata accessor for TTRNewWidgetPresenter.Division);
          if (v47 == v23)
          {
            break;
          }

          sub_1000084C0(v20, &qword_1000EFC48, &qword_1000C7DF8);
          v42 = *(v54 + 72);
          result = sub_10007E4DC(v40, &v46[v42 * v23], type metadata accessor for TTRNewWidgetPresenter.Division);
          if (v50 == v21)
          {
            v41 = 1;
            v50 = v21;
          }

          else
          {
            if (v50 < a3 || v50 >= v21)
            {
              goto LABEL_45;
            }

            v43 = v53 + v42 * v50;
            v44 = v50;
            sub_10007E410(v43, v20, type metadata accessor for TTRNewWidgetPresenter.Division);
            v41 = 0;
            v50 = v44 + 1;
          }

          (v45[0])(v20, v41, 1, v9);
          sub_1000082B4(v20, v13, &qword_1000EFC48, &qword_1000C7DF8);
          ++v23;
          if (v48(v13, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_10007E478(v40, type metadata accessor for TTRNewWidgetPresenter.Division);
        v35 = v47;
        v23 = v47;
      }

      v5[2] = v35;
      v25 = v52;
      sub_1000082B4(v20, v52, &qword_1000EFC48, &qword_1000C7DF8);
    }

    while (v48(v25, 1, v9) != 1);
    goto LABEL_24;
  }

  v30 = v5[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v5[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_100078884()
{
  sub_1000084C0(v0 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle, &qword_1000EFB88, &qword_1000C7C40);

  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_100078940(uint64_t a1)
{
  sub_100083A30(319, &unk_1000EF948, &type metadata accessor for REMRemindersListDataView.SortingStyle);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100078A3C(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t sub_100078B00(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_1000C0AF8();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_100078B68(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_100078BE0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_100078C58(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *sub_100078CD0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t sub_100078D5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_1000C0AF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100078E1C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1000C0AF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100078EDC(uint64_t a1)
{
  result = sub_1000C0AF8();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100078F74(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 144) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;

  return _swift_task_switch(sub_10007900C, 0, 0);
}

uint64_t sub_10007900C()
{
  v1 = *(*(v0 + 72) + 24);
  *(v0 + 16) = 0;
  v2 = [v1 fetchReminderWithObjectID:*(v0 + 48) error:v0 + 16];
  *(v0 + 80) = v2;
  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = [v4 subtaskContext];
    if (!v6)
    {
LABEL_6:
      v12 = *(v0 + 64);
      v13 = [objc_allocWithZone(REMSaveRequest) initWithStore:v1];
      *(v0 + 88) = v13;
      sub_1000C0D38();
      *(v0 + 32) = v4;
      v14 = v12;
      v15 = v13;
      v16 = v4;
      sub_1000C0CE8();
      *(v0 + 96) = *(v0 + 24);
      sub_1000C0D18();
      swift_allocObject();
      *(v0 + 104) = sub_1000C0CF8();
      sub_1000C0D28();

      v17 = sub_1000C0D08();
      *(v0 + 112) = v17;
      v18 = swift_task_alloc();
      *(v0 + 120) = v18;
      *v18 = v0;
      v18[1] = sub_100079350;
      v19 = *(v0 + 56);
      v20 = *(v0 + 144);

      return sub_100072834(v17, v20, v19);
    }

    *(v0 + 40) = 0;
    v7 = v6;
    v8 = [v6 fetchRemindersWithError:v0 + 40];

    v9 = *(v0 + 40);
    if (v8)
    {
      sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
      sub_1000C27B8();
      v10 = v9;

      goto LABEL_6;
    }

    v22 = v9;
    sub_1000C0868();

    swift_willThrow();
  }

  else
  {
    v11 = v3;
    sub_1000C0868();

    swift_willThrow();
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100079350()
{

  return _swift_task_switch(sub_100079494, 0, 0);
}

uint64_t sub_100079494()
{
  v1 = *(*(v0 + 72) + 32);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100079568;

  return REMSaveRequest.saveAsync(with:)(v1);
}

uint64_t sub_100079568()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100079754;
  }

  else
  {
    v2 = sub_1000796A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000796A8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100079754()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100079800(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000798F8;

  return v6(a1);
}

uint64_t sub_1000798F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000799F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C2A38(*(v2 + 40));

  return sub_100079B40(a1, v4);
}

unint64_t sub_100079A34(uint64_t a1)
{
  sub_1000C2678();
  sub_1000C2D68();
  sub_1000C26C8();
  v2 = sub_1000C2D88();

  return sub_100079C34(a1, v2);
}

unint64_t sub_100079AC8(uint64_t a1, uint64_t a2)
{
  sub_1000C2D68();
  sub_1000C26C8();
  v4 = sub_1000C2D88();

  return sub_100079D38(a1, a2, v4);
}

unint64_t sub_100079B40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000C2A48();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100079C34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000C2678();
      v8 = v7;
      if (v6 == sub_1000C2678() && v8 == v9)
      {
        break;
      }

      v11 = sub_1000C2CD8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100079D38(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000C2CD8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100079DF0(uint64_t a1, Swift::Int a2)
{
  v3 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v3)
    {
      if (a2 < 0)
      {
        v4 = a2;
      }

      else
      {
        v4 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = sub_1000C2AC8();
      a2 = sub_10007A014(v4, v5);
      goto LABEL_8;
    }

    sub_1000C1058();
    sub_1000C2AB8();
    if (sub_1000C2AE8())
    {
      v7 = a1 + 56;
      do
      {
        swift_dynamicCast();
        if (*(a1 + 16) && (v8 = sub_1000C2A38(*(a1 + 40)), v9 = -1 << *(a1 + 32), v10 = v8 & ~v9, ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
        {
          v11 = ~v9;
          while (1)
          {
            v12 = *(*(a1 + 48) + 8 * v10);
            v13 = sub_1000C2A48();

            if (v13)
            {
              break;
            }

            v10 = (v10 + 1) & v11;
            if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v14 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v14)
          {
            sub_10007A394(v14 + 1);
          }

          sub_10007A5BC(v15, &_swiftEmptySetSingleton);
        }

        else
        {
LABEL_13:
        }
      }

      while (sub_1000C2AE8());
    }

    return &_swiftEmptySetSingleton;
  }

  else
  {
    if (v3)
    {
LABEL_8:

      return sub_10007A1F4(a1, a2);
    }

    return sub_10007A640(a1, a2);
  }
}

Swift::Int sub_10007A014(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
    v2 = sub_1000C2B18();
    v15 = v2;
    sub_1000C2AB8();
    if (sub_1000C2AE8())
    {
      sub_1000C1058();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10007A394(v9 + 1);
        }

        v2 = v15;
        result = sub_1000C2A38(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1000C2AE8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10007A1F4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_10007A804(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_10007EF1C(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_10007A394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  result = sub_1000C2B08();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1000C2A38(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_10007A5BC(uint64_t a1, void *a2)
{
  sub_1000C2A38(a2[5]);
  result = sub_1000C2AA8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_10007A640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_10007AC60((&v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_10007AB40(v12, v6, a2, a1);
  }

  return v10;
}

void sub_10007A804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000C2AB8();
    sub_1000C1058();
    sub_10007CDD4(&qword_1000EFB78, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    sub_1000C2888();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
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

    v8 = v11 & *(a3 + 56);

    v7 = 0;
  }

  v32 = 0;
  v12 = (v6 + 64) >> 6;
  v36 = a4 + 56;
  v34 = v5;
  v35 = v4;
LABEL_8:
  v13 = v7;
  v14 = v8;
  while (v4 < 0)
  {
    if (!sub_1000C2AE8())
    {
      goto LABEL_28;
    }

    sub_1000C1058();
    swift_dynamicCast();
    v18 = v43;
    v7 = v13;
    v17 = v14;
    if (!v43)
    {
      goto LABEL_28;
    }

LABEL_19:
    v19 = sub_1000C2A38(*(a4 + 40));
    v20 = -1 << *(a4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
    {
      goto LABEL_9;
    }

    sub_1000C1058();
    v24 = *(*(a4 + 48) + 8 * v21);
    v25 = sub_1000C2A48();

    if (v25)
    {
LABEL_24:

      v29 = a1[v22];
      a1[v22] = v29 | v23;
      v13 = v7;
      v4 = v35;
      v8 = v17;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
      if ((v29 & v23) == 0)
      {
        if (!__OFADD__(v32++, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_28:
        sub_10007C2F8(v4);

        sub_10007B014(a1, a2, v32, a4);
        return;
      }
    }

    else
    {
      v26 = ~v20;
      while (1)
      {
        v21 = (v21 + 1) & v26;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v27 = *(*(a4 + 48) + 8 * v21);
        v28 = sub_1000C2A48();

        if (v28)
        {
          goto LABEL_24;
        }
      }

LABEL_9:

      v13 = v7;
      v4 = v35;
      v14 = v17;
      v12 = (v6 + 64) >> 6;
      v5 = v34;
    }
  }

  v15 = v13;
  v16 = v14;
  v7 = v13;
  if (v14)
  {
LABEL_15:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_28;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_10007AB40(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_10007AC60(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_10007ABD0(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void **, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10007C880(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_10007AC60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v25 = 0;
    v47 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v34 = v31 | (v25 << 6);
      v35 = *(v5 + 48);
      v50 = v34;
      v36 = *(v4 + 40);
      v37 = *(v35 + 8 * v34);
      v38 = sub_1000C2A38(v36);
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        sub_1000C1058();
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = sub_1000C2A48();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v28 = v53;
        v24 = __OFADD__(v51++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v28 = v53;
        v5 = a3;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v47 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = sub_1000C2A38(v14);
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      sub_1000C1058();
      v4 = *(*(v5 + 48) + 8 * v18);
      v21 = sub_1000C2A48();

      if ((v21 & 1) == 0)
      {
        v22 = ~v17;
        do
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v18);
          v4 = sub_1000C2A48();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v24 = __OFADD__(v51++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_10007B014(a1, a2, v51, v5);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_10007B014(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  result = sub_1000C2B28();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1000C2A38(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10007B208(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1000C2AD8();

    if (v9)
    {

      sub_1000C1058();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1000C2AC8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10007A014(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10007A394(v20 + 1);
    }

    v18 = v8;
    sub_10007A5BC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000C1058();
  v11 = sub_1000C2A38(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10007B420(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1000C2A48();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_10007B420(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10007A394(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10007B580();
      goto LABEL_12;
    }

    sub_10007B6D0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1000C2A38(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000C1058();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1000C2A48();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1000C2CE8();
  __break(1u);
}

id sub_10007B580()
{
  v1 = v0;
  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  v2 = *v0;
  v3 = sub_1000C2AF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10007B6D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
  result = sub_1000C2B08();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1000C2A38(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10007B8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  result = sub_1000C2C58();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1000C2A38(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10007BB48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
  result = sub_1000C2C58();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_100004E0C(v21, v32);
      }

      else
      {
        sub_1000239F4(v21, v32);
        v22 = v20;
      }

      result = sub_1000C2A38(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100004E0C(v32, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10007BDC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100004D04(&qword_1000EFB68, &qword_1000C7C28);
  v38 = v4;
  result = sub_1000C2C58();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_10007E4DC(v25, v7, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
      }

      else
      {
        sub_10007E410(v25, v7, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
        v26 = v23;
      }

      result = sub_1000C2A38(*(v10 + 40));
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_10007E4DC(v7, *(v10 + 56) + v24 * v18, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

void sub_10007C110(uint64_t (*a1)(void **, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_10007ABD0(v10, v7, a3, v5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_10007C880(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

unint64_t sub_10007C290()
{
  result = qword_1000EFB60;
  if (!qword_1000EFB60)
  {
    sub_10007E3A8(255, &qword_1000EFB58, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFB60);
  }

  return result;
}

id sub_10007C300()
{
  v1 = v0;
  sub_100004D04(&qword_1000EFBF8, &qword_1000C7D48);
  v2 = *v0;
  v3 = sub_1000C2C48();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

id sub_10007C45C()
{
  v1 = v0;
  sub_100004D04(&qword_1000EFBF0, &qword_1000C7D40);
  v2 = *v0;
  v3 = sub_1000C2C48();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000239F4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100004E0C(v19, *(v4 + 56) + 40 * v17);
        result = v18;
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

id sub_10007C5E0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004D04(&qword_1000EFB68, &qword_1000C7C28);
  v4 = *v0;
  v5 = sub_1000C2C48();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_10007E410(*(v4 + 56) + v23, v26, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_10007E4DC(v22, *(v24 + 56) + v23, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
        result = v21;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10007C81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10007C880(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void **, char *))
{
  v33 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v32 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v7 = 0;
  v34 = a3;
  v10 = a3[8];
  v9 = a3 + 8;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = v31;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v35 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v7 << 6);
    v20 = v34[7];
    v37 = *(v34[6] + 8 * v19);
    v21 = v37;
    v22 = *(v32 + 72);
    v30 = v19;
    sub_10007E410(v20 + v22 * v19, v15, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v23 = v21;
    v24 = v36;
    v25 = v33(&v37, v15);
    sub_10007E478(v15, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);

    v36 = v24;
    if (v24)
    {
      return;
    }

    v13 = v35;
    if (v25)
    {
      *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        sub_10007CAB8(v28, v27, v29, v34);
        return;
      }
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v14)
    {
      goto LABEL_16;
    }

    v18 = v9[v7];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10007CAB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry(0);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = &v38 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100004D04(&qword_1000EFB68, &qword_1000C7C28);
  result = sub_1000C2C68();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v39 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v40;
    v43 = *(v41 + 72);
    sub_10007E410(v22 + v43 * v21, v40, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v25 = v24;
    v26 = v10;
    sub_10007E4DC(v25, v10, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    v27 = *(v14 + 40);
    v28 = v23;
    result = sub_1000C2A38(v27);
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v10 = v26;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v10 = v26;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v14 + 48) + 8 * v32) = v28;
    result = sub_10007E4DC(v10, *(v14 + 56) + v32 * v43, type metadata accessor for TTRNewWidgetInteractor.CompletedCacheEntry);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v15 = v42;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10007CDD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10007CE1C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10007E234(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10007CE88(v4);
  *a1 = v2;
}

void sub_10007CE88(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000C2C98(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004D04(&qword_1000ED948, &unk_1000C7D80);
        v5 = sub_1000C27E8();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10007D244(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10007CF90(0, v2, 1, a1);
  }
}

void sub_10007CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_1000C0AF8();
  __chkstk_darwin(v37);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v32 = *a4;
    v14 = v32 + 40 * a3;
    v15 = a1 - a3;
LABEL_7:
    v30 = v14;
    v31 = a3;
    v29 = v15;
    while (1)
    {
      sub_1000239F4(v14, &v35);
      sub_1000239F4(v14 - 40, v34);
      sub_100026D74(&v35, v36);
      v16 = sub_1000C0D98();
      if (!v16)
      {
        goto LABEL_5;
      }

      v17 = v16;
      sub_100026D74(v34, v34[3]);
      v18 = sub_1000C0D98();
      if (!v18)
      {

LABEL_5:
        sub_10002285C(v34);
        sub_10002285C(&v35);
LABEL_6:
        a3 = v31 + 1;
        v14 = v30 + 40;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_7;
      }

      v19 = v18;
      v20 = [v17 date];
      sub_1000C0AA8();

      v21 = [v19 date];
      v22 = v33;
      sub_1000C0AA8();

      LOBYTE(v21) = sub_1000C0A98();
      v23 = *v13;
      v24 = v37;
      (*v13)(v22, v37);
      v23(v12, v24);
      sub_10002285C(v34);
      sub_10002285C(&v35);
      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v32)
      {
        break;
      }

      sub_100004E0C(v14, &v35);
      v25 = *(v14 - 24);
      *v14 = *(v14 - 40);
      *(v14 + 16) = v25;
      *(v14 + 32) = *(v14 - 8);
      sub_100004E0C(&v35, v14 - 40);
      v14 -= 40;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_10007D244(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v109 = a1;
  v117 = sub_1000C0AF8();
  __chkstk_darwin(v117);
  v116 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v118 = &v104 - v11;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_99:
    v12 = *v109;
    if (!*v109)
    {
      goto LABEL_139;
    }

    v15 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_101;
    }

    goto LABEL_133;
  }

  v105 = a4;
  v13 = 0;
  v115 = (v10 + 8);
  v14 = _swiftEmptyArrayStorage;
  v15 = 40;
  while (1)
  {
    if (v13 + 1 >= v12)
    {
      v12 = v13 + 1;
    }

    else
    {
      v16 = *a3;
      sub_1000239F4(*a3 + 40 * (v13 + 1), &v121);
      sub_1000239F4(v16 + 40 * v13, v119);
      LODWORD(v114) = sub_100076E9C(&v121, v119);
      if (v5)
      {
        sub_10002285C(v119);
        sub_10002285C(&v121);
LABEL_111:

        return;
      }

      v106 = 0;
      v108 = v14;
      sub_10002285C(v119);
      sub_10002285C(&v121);
      v17 = v13 + 2;
      v107 = v13;
      v5 = 40 * v13;
      v18 = v16 + 40 * v13 + 80;
      v113 = v12;
      while (v12 != v17)
      {
        sub_1000239F4(v18, &v121);
        sub_1000239F4(v18 - 40, v119);
        sub_100026D74(&v121, v122);
        v20 = sub_1000C0D98();
        if (v20)
        {
          v21 = v20;
          sub_100026D74(v119, v120);
          v22 = sub_1000C0D98();
          if (v22)
          {
            v23 = v22;
            v24 = [v21 date];
            sub_1000C0AA8();

            v25 = [v23 date];
            v26 = v116;
            sub_1000C0AA8();

            v19 = sub_1000C0A98();
            v27 = *v115;
            v28 = v117;
            (*v115)(v26, v117);
            v27(v118, v28);
            v15 = 40;
          }

          else
          {

            v19 = 0;
          }

          v12 = v113;
        }

        else
        {
          v19 = 0;
        }

        sub_10002285C(v119);
        sub_10002285C(&v121);
        ++v17;
        v18 += 40;
        if ((v114 & 1) != (v19 & 1))
        {
          v12 = v17 - 1;
          break;
        }
      }

      v14 = v108;
      v13 = v107;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v12 < v107)
      {
        goto LABEL_132;
      }

      if (v107 < v12)
      {
        v29 = 40 * v12 - 40;
        v113 = v12;
        v30 = v12;
        v31 = v107;
        do
        {
          if (v31 != --v30)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            v33 = v32 + v5;
            v34 = v32 + v29;
            sub_100004E0C((v32 + v5), &v121);
            v35 = *(v34 + 32);
            v36 = *(v34 + 16);
            *v33 = *v34;
            *(v33 + 16) = v36;
            *(v33 + 32) = v35;
            sub_100004E0C(&v121, v34);
          }

          ++v31;
          v29 -= 40;
          v5 += 40;
        }

        while (v31 < v30);
        v14 = v108;
        v5 = v106;
        v12 = v113;
      }

      else
      {
LABEL_25:
        v5 = v106;
      }
    }

    v37 = a3[1];
    if (v12 < v37)
    {
      if (__OFSUB__(v12, v13))
      {
        goto LABEL_129;
      }

      if (v12 - v13 < v105)
      {
        break;
      }
    }

LABEL_48:
    if (v12 < v13)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1000220DC(0, *(v14 + 16) + 1, 1, v14);
    }

    v54 = *(v14 + 16);
    v53 = *(v14 + 24);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v14 = sub_1000220DC((v53 > 1), v54 + 1, 1, v14);
    }

    *(v14 + 16) = v55;
    v56 = v14 + 16 * v54;
    *(v56 + 32) = v13;
    *(v56 + 40) = v12;
    v57 = *v109;
    if (!*v109)
    {
      goto LABEL_138;
    }

    v110 = v12;
    if (v54)
    {
      while (1)
      {
        v12 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v14 + 32);
          v59 = *(v14 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_68:
          if (v61)
          {
            goto LABEL_117;
          }

          v74 = (v14 + 16 * v55);
          v76 = *v74;
          v75 = v74[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_120;
          }

          v80 = (v14 + 32 + 16 * v12);
          v82 = *v80;
          v81 = v80[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_124;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v12 = v55 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v84 = (v14 + 16 * v55);
        v86 = *v84;
        v85 = v84[1];
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_82:
        if (v79)
        {
          goto LABEL_119;
        }

        v87 = v14 + 16 * v12;
        v89 = *(v87 + 32);
        v88 = *(v87 + 40);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_89:
        v95 = v12 - 1;
        if (v12 - 1 >= v55)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v96 = *(v14 + 32 + 16 * v95);
        v97 = *(v14 + 32 + 16 * v12 + 8);
        sub_10007DC14((*a3 + 40 * v96), (*a3 + 40 * *(v14 + 32 + 16 * v12)), *a3 + 40 * v97, v57);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v97 < v96)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10007E220(v14);
        }

        if (v95 >= *(v14 + 16))
        {
          goto LABEL_114;
        }

        v98 = v14 + 16 * v95;
        *(v98 + 32) = v96;
        *(v98 + 40) = v97;
        v123 = v14;
        sub_10007E194(v12);
        v14 = v123;
        v55 = *(v123 + 16);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = v14 + 32 + 16 * v55;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_115;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_116;
      }

      v69 = (v14 + 16 * v55);
      v71 = *v69;
      v70 = v69[1];
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_118;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_121;
      }

      if (v73 >= v65)
      {
        v91 = (v14 + 32 + 16 * v12);
        v93 = *v91;
        v92 = v91[1];
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_125;
        }

        if (v60 < v94)
        {
          v12 = v55 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_3:
    v12 = a3[1];
    v13 = v110;
    if (v110 >= v12)
    {
      goto LABEL_99;
    }
  }

  if (__OFADD__(v13, v105))
  {
    goto LABEL_130;
  }

  if (v13 + v105 < v37)
  {
    v37 = v13 + v105;
  }

  if (v37 < v13)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    v14 = sub_10007E220(v14);
LABEL_101:
    v99 = v5;
    v123 = v14;
    v100 = *(v14 + 16);
    if (v100 >= 2)
    {
      while (*v15)
      {
        v101 = v14;
        v14 = *(v14 + 16 * v100);
        v5 = v101;
        v102 = *(v101 + 16 * (v100 - 1) + 40);
        sub_10007DC14((*v15 + 40 * v14), (*v15 + 40 * *(v101 + 16 * (v100 - 1) + 32)), *v15 + 40 * v102, v12);
        if (v99)
        {
          goto LABEL_111;
        }

        if (v102 < v14)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10007E220(v5);
        }

        if (v100 - 2 >= *(v5 + 16))
        {
          goto LABEL_127;
        }

        v103 = (v5 + 16 * v100);
        *v103 = v14;
        v103[1] = v102;
        v123 = v5;
        sub_10007E194(v100 - 1);
        v14 = v123;
        v100 = *(v123 + 16);
        if (v100 <= 1)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_111;
  }

  v110 = v37;
  if (v12 == v37)
  {
    goto LABEL_48;
  }

  v108 = v14;
  v106 = v5;
  v104 = a3;
  v114 = *a3;
  v38 = v114 + 40 * v12;
  v107 = v13;
  v39 = v13 - v12;
LABEL_39:
  v112 = v38;
  v113 = v12;
  v111 = v39;
  v40 = v38;
  while (1)
  {
    sub_1000239F4(v40, &v121);
    sub_1000239F4(v40 - 40, v119);
    sub_100026D74(&v121, v122);
    v41 = sub_1000C0D98();
    if (!v41)
    {
      goto LABEL_37;
    }

    v42 = v41;
    sub_100026D74(v119, v120);
    v43 = sub_1000C0D98();
    if (!v43)
    {

LABEL_37:
      sub_10002285C(v119);
      sub_10002285C(&v121);
LABEL_38:
      v12 = v113 + 1;
      v38 = v112 + 40;
      v39 = v111 - 1;
      if (v113 + 1 == v110)
      {
        v5 = v106;
        a3 = v104;
        v14 = v108;
        v15 = 40;
        v13 = v107;
        v12 = v110;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v44 = v43;
    v45 = [v42 date];
    v46 = v118;
    sub_1000C0AA8();

    v47 = [v44 date];
    v48 = v116;
    sub_1000C0AA8();

    LOBYTE(v47) = sub_1000C0A98();
    v49 = *v115;
    v50 = v117;
    (*v115)(v48, v117);
    v49(v46, v50);
    sub_10002285C(v119);
    sub_10002285C(&v121);
    if ((v47 & 1) == 0)
    {
      goto LABEL_38;
    }

    if (!v114)
    {
      break;
    }

    sub_100004E0C(v40, &v121);
    v51 = *(v40 - 24);
    *v40 = *(v40 - 40);
    *(v40 + 16) = v51;
    *(v40 + 32) = *(v40 - 8);
    sub_100004E0C(&v121, v40 - 40);
    v40 -= 40;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t sub_10007DC14(char *a1, char *a2, unint64_t a3, char *a4)
{
  v59 = sub_1000C0AF8();
  v8 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v53 - v11;
  v12 = (a2 - a1) / 40;
  v64 = a2;
  v13 = (a3 - a2) / 40;
  if (v12 >= v13)
  {
    if (a4 != v64 || &v64[40 * v13] <= a4)
    {
      memmove(a4, v64, 40 * v13);
    }

    v14 = &a4[40 * v13];
    if ((a3 - a2) < 40 || v64 <= a1)
    {
LABEL_42:
      v30 = v64;
      goto LABEL_43;
    }

    v54 = (v8 + 8);
    v55 = a4;
    while (1)
    {
      v30 = v64 - 40;
      v31 = (v14 - 40);
      a3 -= 40;
      v56 = v64 - 40;
      while (1)
      {
        sub_1000239F4(v31, v62);
        sub_1000239F4(v30, v60);
        sub_100026D74(v62, v63);
        v34 = sub_1000C0D98();
        if (v34)
        {
          v35 = v34;
          sub_100026D74(v60, v61);
          v36 = sub_1000C0D98();
          if (v36)
          {
            v37 = v36;
            v38 = [v35 date];
            v39 = v57;
            sub_1000C0AA8();

            v40 = [v37 date];
            v41 = v58;
            sub_1000C0AA8();

            v42 = sub_1000C0A98();
            v43 = *v54;
            v44 = v41;
            a4 = v55;
            v45 = v59;
            (*v54)(v44, v59);
            v46 = v39;
            v30 = v56;
            v43(v46, v45);
            goto LABEL_34;
          }
        }

        v42 = 0;
LABEL_34:
        sub_10002285C(v60);
        sub_10002285C(v62);
        if (v42)
        {
          break;
        }

        if (a3 + 40 != v31 + 40)
        {
          v47 = *v31;
          v48 = *(v31 + 16);
          *(a3 + 32) = *(v31 + 32);
          *a3 = v47;
          *(a3 + 16) = v48;
        }

        v32 = v31 - 40;
        a3 -= 40;
        v33 = v31 > a4;
        v31 -= 40;
        if (!v33)
        {
          v14 = (v32 + 40);
          goto LABEL_42;
        }
      }

      if ((a3 + 40) != v64)
      {
        v49 = *v30;
        v50 = *(v30 + 1);
        *(a3 + 32) = *(v30 + 4);
        *a3 = v49;
        *(a3 + 16) = v50;
      }

      v14 = (v31 + 40);
      if (v31 + 40 > a4)
      {
        v64 = v30;
        if (v30 > a1)
        {
          continue;
        }
      }

      v14 = (v31 + 40);
      goto LABEL_43;
    }
  }

  if (a4 != a1 || &a1[40 * v12] <= a4)
  {
    memmove(a4, a1, 40 * v12);
  }

  v14 = &a4[40 * v12];
  if (a2 - a1 >= 40 && v64 < a3)
  {
    v56 = (v8 + 8);
    v54 = &a4[40 * v12];
    while (1)
    {
      sub_1000239F4(v64, v62);
      sub_1000239F4(a4, v60);
      sub_100026D74(v62, v63);
      v15 = sub_1000C0D98();
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      sub_100026D74(v60, v61);
      v17 = sub_1000C0D98();
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = [v16 date];
      v20 = v57;
      sub_1000C0AA8();

      v21 = [v18 date];
      v22 = v58;
      sub_1000C0AA8();

      LOBYTE(v21) = sub_1000C0A98();
      v23 = *v56;
      v24 = v59;
      (*v56)(v22, v59);
      v25 = v20;
      v14 = v54;
      v23(v25, v24);
      sub_10002285C(v60);
      sub_10002285C(v62);
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }

      v26 = v64;
      v64 += 40;
      if (a1 != v26)
      {
        goto LABEL_16;
      }

LABEL_17:
      a1 += 40;
      if (a4 >= v14 || v64 >= a3)
      {
        goto LABEL_19;
      }
    }

LABEL_14:
    sub_10002285C(v60);
    sub_10002285C(v62);
LABEL_15:
    v26 = a4;
    v27 = a1 == a4;
    a4 += 40;
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    v28 = *v26;
    v29 = *(v26 + 1);
    *(a1 + 4) = *(v26 + 4);
    *a1 = v28;
    *(a1 + 1) = v29;
    goto LABEL_17;
  }

LABEL_19:
  v30 = a1;
LABEL_43:
  v51 = (v14 - a4) / 40;
  if (v30 != a4 || v30 >= &a4[40 * v51])
  {
    memmove(v30, a4, 40 * v51);
  }

  return 1;
}

uint64_t sub_10007E194(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007E220(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10007E248(unint64_t a1, __n128 a2)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000C1058();
    sub_10007CDD4(&qword_1000EFB78, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    result = sub_1000C2878();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000C2B48();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10007B208(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000C2C38();
  }

  v6 = result;
  v5 = sub_1000C2C38();
  result = v6;
  if (v5)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10007E3A8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007E410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007E478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007E4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007E544(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_1000718D8(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_10007E690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DC8C;

  return sub_100075B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007E76C()
{
  v1 = (type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000C1338();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v17 = v2 | v7;
  v18 = *(v6 + 64);

  v9 = v0 + v3;
  v10 = v0 + v3 + v1[7];
  v11 = sub_1000C0AF8();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v13 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v12(v10 + *(v13 + 36), v11);
  v14 = v1[8];
  v15 = sub_1000C1388();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v12(v9 + v1[9], v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v18, v17 | 7);
}

uint64_t sub_10007E978(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_100070E80(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_10007EAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000B028;

  return sub_100075B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10007EBA0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DC8C;

  return sub_1000703A8(a1, v6, v1 + v5);
}

uint64_t sub_10007EC84(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_10006F99C(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_10007EDD0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C1338() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000DC8C;

  return sub_10006E7C4(a1, v10, v1 + v6, v1 + v9);
}

void sub_10007EF1C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_10007A804(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

char *sub_10007EF50(char *a1, int64_t *a2)
{
  v4 = sub_1000C11F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = sub_1000C1388();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) + 24);
  v16 = *(v12 + 16);
  v33 = a2;
  v16(v14, a2 + v15, v11);
  v17 = (*(v12 + 88))(v14, v11);
  if (v17 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
LABEL_2:

    return a1;
  }

  if (v17 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    if (v17 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      if (qword_1000EC968 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    goto LABEL_2;
  }

  v14 = *(a1 + 2);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v32[0] = *(v5 + 16);
  v32[1] = v5 + 16;
  v18 = *(v5 + 72);
  v34 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v35 = v18;
  v11 = &a1[v34];
  v19 = (v5 + 32);
  v12 = v5 + 8;
  a1 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v32[0];
    (v32[0])(v10, v11, v4);
    v20(v7, v10, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10002245C(0, *(a1 + 2) + 1, 1, a1);
    }

    v22 = *(a1 + 2);
    v21 = *(a1 + 3);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      a1 = sub_10002245C((v21 > 1), v22 + 1, 1, a1);
    }

    *(a1 + 2) = v23;
    (*v19)(&a1[v34 + v22 * v35], v7, v4);
    v36 = a1;
    v24 = *v33;
    if (v23 >= *v33)
    {
      (*v12)(v10, v4);
      return a1;
    }

    v25 = sub_1000C11E8();
    if (!v25)
    {
      (*v12)(v10, v4);
      goto LABEL_7;
    }

    v26 = v24 - *(a1 + 2);
    if (v26 < 0)
    {
      break;
    }

    if (*(v25 + 16) < v26)
    {
      v26 = *(v25 + 16);
    }

    sub_100077B14(v25, v25 + v34, 0, (2 * v26) | 1);
    (*v12)(v10, v4);
    a1 = v36;
    if (*(v36 + 2) >= v24)
    {
      return a1;
    }

LABEL_7:
    v11 += v35;
    if (!--v14)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_21:
  v27 = sub_1000C1568();
  sub_10000D978(v27, qword_1000EF8E8);
  v28 = sub_1000C1558();
  v29 = sub_1000C2948();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Widget interactor: unknown fetch subtasks configuration", v30, 2u);
  }

  (*(v12 + 8))(v14, v11);
  return _swiftEmptyArrayStorage;
}

void sub_10007F3D4(unint64_t a1, __n128 a2)
{
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1000C2C38())
    {
LABEL_3:
      sub_100004D04(&qword_1000EFB80, &qword_1000C7C38);
      v4 = sub_1000C2B28();
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = sub_1000C2C38();
      if (!v6)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = &_swiftEmptySetSingleton;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

LABEL_9:
  v7 = (v4 + 7);
  v38 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_1000C2B48();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = sub_1000C2A38(v4[5]);
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *&v7[8 * (v14 >> 6)];
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1000C1058();
        while (1)
        {
          v19 = *(v4[6] + 8 * v14);
          v20 = sub_1000C2A48();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *&v7[8 * (v14 >> 6)];
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v6 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v6 = v38;
        if (v8 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v7[8 * v15] = v17 | v16;
        *(v4[6] + 8 * v14) = v11;
        v21 = v4[2];
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_32;
        }

        v4[2] = v22;
        if (v8 == v6)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v37)
    {
      v24 = v4[5];
      v25 = *(a1 + 32 + 8 * v23);
      v26 = sub_1000C2A38(v24);
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *&v7[8 * (v28 >> 6)];
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1000C1058();
        while (1)
        {
          v33 = *(v4[6] + 8 * v28);
          v34 = sub_1000C2A48();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *&v7[8 * (v28 >> 6)];
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v7[8 * v29] = v31 | v30;
        *(v4[6] + 8 * v28) = v25;
        v35 = v4[2];
        v10 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v10)
        {
          goto LABEL_34;
        }

        v4[2] = v36;
      }

      if (++v23 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10007F6A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007F6D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000DC8C;

  return sub_100079800(a1, v4);
}

unint64_t sub_10007F790(unint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1000082B4(result + 32, &v38, &qword_1000EFC10, &qword_1000C7D90);
  v7 = v38;
  sub_100004E0C(v39, v37);
  v8 = *a3;
  result = sub_1000799F0(v7);
  v10 = v8[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v14) = v9;
  if (v8[3] < v13)
  {
    sub_10007BB48(v13, v5 & 1);
    result = sub_1000799F0(v7);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    result = sub_1000C2CF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
    *(v20[6] + 8 * result) = v7;
    result = sub_100004E0C(v37, v20[7] + 40 * result);
    v21 = v20[2];
    v12 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v12)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v20[2] = v22;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_10007C45C();
  result = v19;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = *a3;
  v17 = 40 * result;
  sub_1000239F4(*(*a3 + 56) + 40 * result, v36);
  sub_10002285C(v37);

  v18 = v16[7];
  sub_10002285C((v18 + v17));
  result = sub_100004E0C(v36, v18 + v17);
  if (--v3)
  {
LABEL_14:
    v6 += 80;
    v7 = &qword_1000EFC10;
    v14 = &qword_1000C7D90;
    while (1)
    {
      sub_1000082B4(v6, &v38, &qword_1000EFC10, &qword_1000C7D90);
      v5 = v38;
      sub_100004E0C(v39, v37);
      v26 = *a3;
      result = sub_1000799F0(v5);
      v28 = *(v26 + 16);
      v29 = (v27 & 1) == 0;
      v12 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v12)
      {
        goto LABEL_23;
      }

      v31 = v27;
      if (*(v26 + 24) < v30)
      {
        sub_10007BB48(v30, 1);
        result = sub_1000799F0(v5);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v31)
      {
        v23 = *a3;
        v24 = 40 * result;
        sub_1000239F4(*(*a3 + 56) + 40 * result, v36);
        sub_10002285C(v37);

        v25 = *(v23 + 56);
        sub_10002285C((v25 + v24));
        result = sub_100004E0C(v36, v25 + v24);
      }

      else
      {
        v33 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v33[6] + 8 * result) = v5;
        result = sub_100004E0C(v37, v33[7] + 40 * result);
        v34 = v33[2];
        v12 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v12)
        {
          goto LABEL_24;
        }

        v33[2] = v35;
      }

      v6 += 48;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_10007FA98(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  LOBYTE(v5) = a2;
  v6 = a1;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = sub_1000799F0(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v8[3] < v15)
  {
    sub_10007B8E4(v15, v5 & 1);
    v10 = sub_1000799F0(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
    v10 = sub_1000C2CF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + 8 * v10) = v9;
    *(v18[7] + 8 * v10) = v7;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v21 = v10;
  sub_10007C300();
  v10 = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * v10);
  v20 = v10;

  *(v18[7] + 8 * v20) = v19;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = v6 + 7;
    v3 = 1;
    while (1)
    {
      v7 = *v5;
      v26 = *a3;
      v6 = *(v5 - 1);
      v27 = sub_1000799F0(v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v9 = v28;
      if (v26[3] < v31)
      {
        sub_10007B8E4(v31, 1);
        v27 = sub_1000799F0(v6);
        if ((v9 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v9)
      {
        v24 = *(v33[7] + 8 * v27);
        v25 = v27;

        *(v33[7] + 8 * v25) = v24;
      }

      else
      {
        v33[(v27 >> 6) + 8] |= 1 << v27;
        *(v33[6] + 8 * v27) = v6;
        *(v33[7] + 8 * v27) = v7;
        v34 = v33[2];
        v14 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v33[2] = v35;
      }

      v5 += 2;
      if (!--v16)
      {
        return;
      }
    }
  }
}

uint64_t sub_10007FCE0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return sub_100077084(a1, a2, v7, v6);
}

uint64_t sub_10007FDB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007FE08(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return sub_1000774BC(a1, a2, v7, v6);
}

uint64_t sub_10007FEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FF2C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DC8C;

  return sub_10006A654(a1, v6, v7, v1 + v5);
}

uint64_t sub_10008001C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DC8C;

  return sub_10007359C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000800FC()
{
  v1 = (type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_1000C0AF8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v7(v5 + *(v8 + 36), v6);
  v9 = v1[8];
  v10 = sub_1000C1388();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v7(v0 + v3 + v1[9], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008027C(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B028;

  return sub_100068EC4(a1, v6, v1 + v5);
}

uint64_t sub_100080368()
{
  v1 = (type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = sub_1000C0AF8();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v7(v5 + *(v8 + 36), v6);
  v9 = v1[8];
  v10 = sub_1000C1388();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v7(v0 + v3 + v1[9], v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000804F0(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DC8C;

  return sub_10006C160(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000805E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100080630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DC8C;

  return sub_10007489C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100080714(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1000C0E58();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000807FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((((((v11 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v18;
    (*(v9 + 16))(v19 + 1, v18 + 1, v17);
    v20 = ((((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    *((v22 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double sub_100080A00(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000C0E58();
  (*(*(v5 - 8) + 8))((v4 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80), v5);

  return result;
}

uint64_t sub_100080AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 16))(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100080C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14, v9);
  v15 = *(v11 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v15 + v14;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);

  v19 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 &= 0xFFFFFFFFFFFFFFF8;
  *v19 = *v18;

  *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v18 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100080D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14, v9);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_100080E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, v14, v9);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;

  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100080F9C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v8 - 8) + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((v14 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v10 == v13)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_100081220(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1000C0E58() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v10 + 64) + 7;
  v16 = ((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v19 = 0;
    v20 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v11 == v14)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((v15 + v24) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v14 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_100081508(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1000C0E58();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000815F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((((v11 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v18;
    (*(v9 + 16))(v19 + 1, v18 + 1, v17);
    v20 = ((((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double sub_1000817D4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000C0E58();
  (*(*(v5 - 8) + 8))((v4 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80), v5);

  return result;
}

uint64_t sub_1000818A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 16))(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1000819BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14, v9);
  v15 = *(v11 + 40) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v15 + v14;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);

  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v18 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100081AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14, v9);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_100081BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, v14, v9);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100081D04(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v8 - 8) + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v14 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v10 == v13)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_100081F80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1000C0E58() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v10 + 64) + 7;
  v16 = ((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v19 = 0;
    v20 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v11 == v14)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((v15 + v24) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v14 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

char *sub_100082260(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v6 = &a1[v5];
    v7 = &a2[v5];
    v10 = sub_1000C0AF8();
    v11 = *(*(v10 - 8) + 16);
    v11(v6, v7, v10);
    v12 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
    v11(&v6[*(v12 + 36)], &v7[*(v12 + 36)], v10);
    v13 = a3[6];
    v14 = sub_1000C1388();
    (*(*(v14 - 8) + 16))(&v3[v13], &a2[v13], v14);
    v11(&v3[a3[7]], &a2[a3[7]], v10);
  }

  return v3;
}

uint64_t sub_1000823D0(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];
  v5 = sub_1000C0AF8();
  v11 = *(*(v5 - 8) + 8);
  (v11)((v5 - 8), v4, v5);
  v6 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v11(v4 + *(v6 + 36), v5);
  v7 = a2[6];
  v8 = sub_1000C1388();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a1 + a2[7];

  return (v11)(v9, v5);
}

char *sub_1000824E4(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 16);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

char *sub_100082608(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 24);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

char *sub_10008272C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 32);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

char *sub_100082850(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 40);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 40))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

uint64_t sub_100082988(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000C1388();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = sub_1000C0AF8();
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_100082AE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1000C1388();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = sub_1000C0AF8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_100082C38(uint64_t a1)
{
  sub_100082D4C(319);
  if (v1 <= 0x3F)
  {
    sub_1000C1388();
    if (v2 <= 0x3F)
    {
      sub_1000C0AF8();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100082D4C(uint64_t a1)
{
  if (!qword_1000EFDE0)
  {
    sub_1000C0AF8();
    sub_10007CDD4(&qword_1000EE318, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = sub_1000C25F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000EFDE0);
    }
  }
}

char *sub_100082DE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 3);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    *(v4 + 5) = a2[5];
    v8 = *(a3 + 24);
    v9 = sub_1000C0AF8();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2 + v8, 1, v9))
    {
      v11 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
      memcpy(&v4[v8], a2 + v8, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], a2 + v8, v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }
  }

  return v4;
}

uint64_t sub_100082F80(char *a1, uint64_t a2)
{
  sub_10002285C(a1);
  v4 = *(a2 + 24);
  v5 = sub_1000C0AF8();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(&a1[v4], 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(&a1[v4], v5);
  }

  return result;
}

uint64_t sub_100083050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a3 + 24);
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t *sub_10008319C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_10008331C(a1, a2);
  a1[5] = a2[5];
  v6 = *(a3 + 24);
  v7 = sub_1000C0AF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      return a1;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy(a1 + v6, a2 + v6, *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
  return a1;
}

uint64_t *sub_10008331C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_100083538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_100083654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002285C(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  v8 = *(a3 + 24);
  v9 = sub_1000C0AF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, a2 + v8, v9);
      return a1;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v8), (a2 + v8), *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(a1 + v8, a2 + v8, v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
  return a1;
}

uint64_t sub_1000837F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000838C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100083970(uint64_t a1)
{
  sub_100083A30(319, &unk_1000EFE80, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_100083A30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C2A58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100083BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void *sub_100083C8C@<X0>(void *a1@<X8>)
{
  sub_10003C298();
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_100083CDC(uint64_t *a1)
{
  sub_10003C298();

  return sub_1000C1958();
}

uint64_t sub_100083D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = sub_100004D04(&qword_1000EFF30, &qword_1000C7FE8);
  __chkstk_darwin(v70);
  v72 = &v52 - v3;
  v71 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  __chkstk_darwin(v71);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000C0AF8();
  v56 = *(v69 - 8);
  __chkstk_darwin(v69);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1000C0EF8();
  v54 = *(v68 - 8);
  __chkstk_darwin(v68);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  __chkstk_darwin(v7 - 8);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C22C8();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000C22E8();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C22B8();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004D04(&qword_1000EFF38, &qword_1000C7FF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - v16;
  v18 = sub_100004D04(&qword_1000EFEB8, &qword_1000C7F98);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52 - v20;
  v22 = sub_1000C1148();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004D04(&qword_1000EFF40, &qword_1000C7FF8);
  v63 = a1;
  sub_1000C23C8();
  sub_1000C2298();
  v26 = v21;
  v27 = v22;
  v28 = v23;
  (*(v19 + 8))(v26, v18);
  if ((*(v23 + 48))(v17, 1, v27) == 1)
  {
    sub_1000084C0(v17, &qword_1000EFF38, &qword_1000C7FF0);
  }

  else
  {
    (*(v23 + 32))(v25, v17, v27);
    v29 = [objc_allocWithZone(REMStore) init];
    v30 = sub_1000C1138();
    v74[0] = 0;
    v31 = [v29 fetchReminderWithObjectID:v30 error:v74];

    v32 = v25;
    if (v31)
    {
      v33 = v74[0];
      sub_1000C23D8();
      v34 = v60;
      sub_1000C22D8();
      (*(v58 + 8))(v12, v59);
      v36 = v61;
      v35 = v62;
      if ((v61[11])(v34, v62) == enum case for AlarmPresentationState.Mode.countdown(_:))
      {
        (v36)[12](v34, v35);
        (*(v65 + 32))();
        v37 = v67;
        sub_10008479C(v31, v67);
        v38 = [v31 list];
        v74[3] = sub_10007E3A8(0, &qword_1000EFF48, REMList_ptr);
        v74[4] = &protocol witness table for REMList;
        v74[0] = v38;
        v39 = v53;
        sub_1000C0ED8();
        v40 = v55;
        sub_1000C22A8();
        v62 = v32;
        v63 = v27;
        v41 = v57;
        sub_100085DC8(v37, v57, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        v42 = v71;
        v43 = v54;
        (*(v54 + 16))(v41 + *(v71 + 20), v39, v68);
        v44 = v42[6];
        v61 = v31;
        v45 = v56;
        (*(v56 + 16))(v41 + v44, v40, v69);
        v46 = v42[7];
        *(v41 + v46) = swift_getKeyPath();
        sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
        swift_storeEnumTagMultiPayload();
        v47 = v42[8];
        *(v41 + v47) = swift_getKeyPath();
        sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
        swift_storeEnumTagMultiPayload();
        v48 = v41 + v42[9];
        *v48 = swift_getKeyPath();
        *(v48 + 8) = 0;
        v49 = v42[10];
        *(v41 + v49) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_100085DC8(v41, v72, type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView);
        swift_storeEnumTagMultiPayload();
        sub_1000856AC();
        sub_1000C1AE8();

        sub_100085E94(v41, type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView);
        (*(v45 + 8))(v40, v69);
        (*(v43 + 8))(v39, v68);
        sub_100085E94(v67, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        (*(v65 + 8))(v64, v66);
        return (*(v28 + 8))(v62, v63);
      }

      (*(v28 + 8))(v25, v27);

      (v36)[1](v34, v35);
    }

    else
    {
      v51 = v74[0];
      sub_1000C0868();

      swift_willThrow();

      (*(v23 + 8))(v25, v27);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1000856AC();
  return sub_1000C1AE8();
}

uint64_t sub_10008479C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000C1118();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v46 = &v46 - v6;
  v55 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  __chkstk_darwin(v55);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000C0B68();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v52 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v11 - 8);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v46 - v14);
  v16 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v19 = sub_1000C0AF8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  v26 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v29 + 3) = sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
  *(v29 + 4) = &protocol witness table for REMReminder;
  *v29 = a1;
  v30 = *(v27 + 32);
  (*(v20 + 56))(&v29[v30], 1, 1, v19);
  *(v29 + 5) = 0;
  sub_1000239F4(v29, v57);
  v31 = a1;
  sub_1000C0AE8();
  sub_1000082B4(&v29[v30], v18, &qword_1000EE300, &unk_1000C6370);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1000084C0(v18, &qword_1000EE300, &unk_1000C6370);
    sub_100026D74(v29, *(v29 + 3));
    v48 = sub_1000C0DA8();
    (*(v20 + 8))(v25, v19);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v48 = sub_1000C0A98();
    v32 = *(v20 + 8);
    v32(v22, v19);
    v32(v25, v19);
  }

  sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0);
  *v15 = [v31 objectID];
  sub_1000C10E8();
  v34 = v50;
  v33 = v51;
  (*(v50 + 104))(v15, enum case for REMNavigationSpecifier.reminder(_:), v51);
  (*(v34 + 56))(v15, 0, 1, v33);
  v35 = v52;
  sub_1000C0B58();
  sub_100026D74(v57, v58);
  v36 = sub_1000C0DC8();
  v37 = v55;
  if (!v36)
  {
    v36 = [objc_allocWithZone(NSAttributedString) init];
  }

  *v8 = v36;
  sub_100026D74(v57, v58);
  v8[1] = sub_1000C0D98();
  sub_100024434(v57, 1, v35, v8 + v37[6]);
  v38 = v49;
  sub_1000082B4(v15, v49, &qword_1000EFF50, &qword_1000C8D10);
  if ((*(v34 + 48))(v38, 1, v33) == 1)
  {
    sub_1000084C0(v38, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v57, v58);
    v39 = sub_1000C0DD8();
    v40 = [v39 urlRepresentation];

    sub_1000C0908();
  }

  else
  {
    v41 = v46;
    (*(v34 + 32))(v46, v38, v33);
    v42 = v47;
    sub_100026384(v57, v47);
    sub_1000C1108();
    v43 = *(v34 + 8);
    v43(v42, v33);
    v43(v41, v33);
  }

  sub_100026D74(v57, v58);
  *(v8 + v37[8]) = sub_1000C0DD8();
  *(v8 + v37[10]) = v48 & 1;
  *(v8 + v37[9]) = 0;
  sub_100026D74(v57, v58);
  v44 = sub_1000C0DF8();
  (*(v53 + 8))(v35, v54);
  sub_1000084C0(v15, &qword_1000EFF50, &qword_1000C8D10);
  *(v8 + v37[11]) = v44 & 1;
  sub_100085E30(v8, v56);
  sub_10002285C(v57);
  return sub_100085E94(v29, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
}

uint64_t sub_100084F70()
{
  sub_100004D04(&qword_1000EFEE0, &qword_1000C7FA8);
  sub_100008478(&qword_1000EFEE8, &qword_1000EFEE0, &qword_1000C7FA8, &protocol conformance descriptor for TupleView<A>);
  return sub_1000C23A8();
}

uint64_t sub_100085070@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v24 = sub_100004D04(&qword_1000EFEF0, &qword_1000C7FB0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v2 = &v19 - v1;
  v3 = sub_100004D04(&qword_1000EFEF8, &qword_1000C7FB8);
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_1000C2548();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  sub_1000C2528();
  sub_1000C24E8();
  sub_1000C2538();
  sub_1000C24E8();
  sub_1000C2518();
  sub_1000C24E8();
  v29 = v16;
  sub_100004D04(&qword_1000EFF08, &qword_1000C7FC8);
  v30 = &type metadata for EmptyView;
  v31 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  v19 = v5;
  sub_1000C24F8();
  v27 = v5;
  v28 = v13;
  sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  sub_100008478(&qword_1000EFF18, &qword_1000EFF10, &qword_1000C7FD0, &protocol conformance descriptor for TupleView<A>);
  sub_1000C24F8();
  v25 = v2;
  v26 = v10;
  sub_100004D04(&qword_1000EFEE0, &qword_1000C7FA8);
  sub_100008478(&qword_1000EFEE8, &qword_1000EFEE0, &qword_1000C7FA8, &protocol conformance descriptor for TupleView<A>);
  sub_1000C24F8();
  (*(v22 + 8))(v2, v24);
  (*(v20 + 8))(v19, v21);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  return (v17)(v16, v7);
}

uint64_t sub_100085530()
{
  sub_100004D04(&qword_1000EFEB8, &qword_1000C7F98);
  sub_100004D04(&qword_1000EFEC0, &qword_1000C7FA0);
  sub_100008478(&qword_1000EFEC8, &qword_1000EFEB8, &qword_1000C7F98, &protocol conformance descriptor for AlarmAttributes<A>);
  sub_100085620();
  return sub_1000C2428();
}

unint64_t sub_100085620()
{
  result = qword_1000EFED0;
  if (!qword_1000EFED0)
  {
    sub_100005334(&qword_1000EFEC0, &qword_1000C7FA0);
    sub_1000856AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFED0);
  }

  return result;
}

unint64_t sub_1000856AC()
{
  result = qword_1000EFED8;
  if (!qword_1000EFED8)
  {
    type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFED8);
  }

  return result;
}

uint64_t sub_100085744@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000EFF08, &qword_1000C7FC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100004D04(&qword_1000EFEF0, &qword_1000C7FB0);
  sub_1000C2508();
  sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  sub_1000C24D8();
  sub_100085BD4(v14, v11);
  v15 = *(v3 + 16);
  v15(v5, v8, v2);
  sub_100085BD4(v11, a1);
  v16 = sub_100004D04(&qword_1000EFF20, &qword_1000C7FD8);
  v15((a1 + *(v16 + 48)), v5, v2);
  v17 = *(v3 + 8);
  v17(v8, v2);
  sub_100085C44(v14);
  v17(v5, v2);
  return sub_100085C44(v11);
}

uint64_t sub_100085984@<X0>(char *a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000EFF08, &qword_1000C7FC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_100004D04(&qword_1000EFEF8, &qword_1000C7FB8);
  sub_1000C2508();
  sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  sub_1000C24D8();
  v15 = *(v3 + 16);
  v15(v8, v14, v2);
  v15(v5, v11, v2);
  v15(a1, v8, v2);
  v16 = sub_100004D04(&qword_1000EFF28, &qword_1000C7FE0);
  v15(&a1[*(v16 + 48)], v5, v2);
  v17 = *(v3 + 8);
  v17(v11, v2);
  v17(v14, v2);
  v17(v5, v2);
  return (v17)(v8, v2);
}

uint64_t sub_100085BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085C44(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100085D74@<X0>(void *a1@<X8>)
{
  sub_10003C298();
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_100085DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100085E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085E94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *_s24RemindersWidgetExtension20TTRNewWidgetProviderVwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for TTRNewWidgetProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for TTRNewWidgetProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

unint64_t sub_10008600C()
{
  result = qword_1000EFF80;
  if (!qword_1000EFF80)
  {
    type metadata accessor for TTRNewWidgetTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFF80);
  }

  return result;
}

uint64_t sub_100086064()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000EFF68);
  v1 = sub_10000D978(v0, qword_1000EFF68);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008612C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_1000C2488();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C24A8();
  swift_getKeyPath();
  sub_1000C2498();

  (*(v10 + 8))(v12, v9);
  sub_10008FEEC(a1, (a2 + *(v4 + 20)));

  sub_1000C0AE8();
  v13 = *(v4 + 24);
  v14 = sub_1000C2478();
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  if (qword_1000EC970 != -1)
  {
    swift_once();
  }

  v15 = sub_1000C1568();
  sub_10000D978(v15, qword_1000EFF68);
  sub_100087F80(a2, v8);
  v16 = sub_1000C1558();
  v17 = sub_1000C2968();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136446467;
    v29 = &type metadata for TTRNewWidgetProvider;
    v30 = v19;
    sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
    v20 = sub_1000C26A8();
    v22 = sub_1000B7B58(v20, v21, &v30);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2081;
    sub_100087F80(v8, v28);
    v23 = sub_1000C26A8();
    v25 = v24;
    sub_100087FE4(v8);
    v26 = sub_1000B7B58(v23, v25, &v30);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: Created placeholder {entry: %{private}s}", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100087FE4(v8);
  }
}

uint64_t sub_1000864D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v69 = a5;
  v65 = a3;
  v66 = a4;
  v8 = sub_1000C0AF8();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v67 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000C24B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v61 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v72 = &v58[-v14];
  v15 = sub_1000C2488();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = [a1 list];
  if (v20)
  {
    v21 = v10;
    v22 = v20;
    v23 = [v20 identifier];

    if (v23)
    {
      v63 = sub_1000C2678();
      v64 = v24;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
    }

    v10 = v21;
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
  }

  sub_1000C24A8();
  swift_getKeyPath();
  v62 = sub_1000C2498();

  (*(v16 + 8))(v19, v15);
  if (qword_1000EC970 != -1)
  {
    swift_once();
  }

  v25 = sub_1000C1568();
  sub_10000D978(v25, qword_1000EFF68);
  v26 = *(v11 + 16);
  v27 = v72;
  v26(v72, a2, v10);
  v28 = a1;
  v29 = sub_1000C1558();
  v30 = sub_1000C2968();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136446723;
    v73 = &type metadata for TTRNewWidgetProvider;
    v74 = v32;
    sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
    v33 = sub_1000C26A8();
    v35 = sub_1000B7B58(v33, v34, &v74);
    v59 = v30;
    v36 = v11;
    v37 = v10;
    v38 = v35;

    *(v31 + 4) = v38;
    *(v31 + 12) = 2081;
    v39 = v28;
    v40 = [v39 description];
    v41 = sub_1000C2678();
    v43 = v42;

    v44 = sub_1000B7B58(v41, v43, &v74);

    *(v31 + 14) = v44;
    *(v31 + 22) = 2082;
    v45 = v72;
    v26(v61, v72, v37);
    v46 = sub_1000C26A8();
    v48 = v47;
    (*(v36 + 8))(v45, v37);
    v49 = sub_1000B7B58(v46, v48, &v74);

    *(v31 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v29, v59, "%{public}s: Requesting snapshot {configuration: %{private}s context: %{public}s", v31, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v27, v10);
  }

  if (v62)
  {
    v50 = v62;
  }

  else
  {
    v50 = &off_1000E7A08;
  }

  v51 = swift_allocObject();
  v53 = v63;
  v52 = v64;
  v51[2] = v63;
  v51[3] = v52;
  v54 = v66;
  v51[4] = v65;
  v51[5] = v54;
  v55 = v68;
  v51[6] = v69;
  v51[7] = v55;
  v51[8] = v50;

  v56 = v67;
  sub_1000C0AE8();
  sub_10008F54C(v53, v52, v55, v50, v56, sub_100088090, v51);

  return (*(v70 + 8))(v56, v71);
}

uint64_t sub_100086AB4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v53 = a6;
  v54 = a5;
  v13 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v22 = &v49 - v21;
  if (*(a1 + 16))
  {
    sub_100087F80(a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), &v49 - v21);
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v23 = sub_1000C1568();
    sub_10000D978(v23, qword_1000EFF68);
    sub_100087F80(v22, v18);
    v24 = sub_1000C1558();
    v25 = sub_1000C2968();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      v53 = a4;
      *v26 = 136446467;
      v55 = &type metadata for TTRNewWidgetProvider;
      v56 = v27;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v28 = sub_1000C26A8();
      v30 = sub_1000B7B58(v28, v29, &v56);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2085;
      sub_100087F80(v18, v15);
      v31 = sub_1000C26A8();
      v33 = v32;
      sub_100087FE4(v18);
      v34 = sub_1000B7B58(v31, v33, &v56);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Completed snapshot {entry: %{sensitive}s}", v26, 0x16u);
      swift_arrayDestroy();
      a4 = v53;
    }

    else
    {

      sub_100087FE4(v18);
    }

    v15 = v22;
  }

  else
  {
    v50 = a2;
    v51 = a7;
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v35 = sub_1000C1568();
    sub_10000D978(v35, qword_1000EFF68);

    v36 = sub_1000C1558();
    v37 = sub_1000C2968();

    v52 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 136446467;
      v55 = &type metadata for TTRNewWidgetProvider;
      v56 = v40;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v41 = sub_1000C26A8();
      v43 = sub_1000B7B58(v41, v42, &v56);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_1000B7B58(v50, a3, &v56);
      v44 = v38;
      v45 = v52;
      _os_log_impl(&_mh_execute_header, v52, v44, "%{public}s: No timeline entries created placeholder snapshot {url: %{private}s}", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008FEEC(v51, &v15[*(v13 + 20)]);
    sub_1000C0AE8();
    v46 = *(v13 + 24);
    v47 = sub_1000C2478();
    (*(*(v47 - 8) + 56))(&v15[v46], 1, 1, v47);
  }

  a4(v15);
  return sub_100087FE4(v15);
}

uint64_t sub_100086FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v70 = a5;
  v66 = a3;
  v67 = a4;
  v8 = sub_1000C0AF8();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C24B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v57 - v14;
  v15 = sub_1000C2488();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 list];
  if (v20)
  {
    v21 = v10;
    v22 = v20;
    v23 = [v20 identifier];

    if (v23)
    {
      v64 = sub_1000C2678();
      v65 = v24;
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    v10 = v21;
  }

  else
  {
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  sub_1000C24A8();
  swift_getKeyPath();
  v62 = sub_1000C2498();

  (*(v16 + 8))(v19, v15);
  if (qword_1000EC970 != -1)
  {
    swift_once();
  }

  v25 = sub_1000C1568();
  sub_10000D978(v25, qword_1000EFF68);
  v26 = *(v11 + 16);
  v27 = v63;
  v26(v63, a2, v10);
  v28 = a1;
  v29 = sub_1000C1558();
  v30 = sub_1000C2968();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136446723;
    v73 = &type metadata for TTRNewWidgetProvider;
    v74 = v32;
    sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
    v33 = sub_1000C26A8();
    v35 = sub_1000B7B58(v33, v34, &v74);
    v58 = v26;
    v36 = v27;
    v37 = v35;

    *(v31 + 4) = v37;
    *(v31 + 12) = 2081;
    v38 = v28;
    v39 = [v38 description];
    v40 = sub_1000C2678();
    v59 = v30;
    v41 = v11;
    v42 = v10;
    v44 = v43;

    v45 = sub_1000B7B58(v40, v44, &v74);

    *(v31 + 14) = v45;
    *(v31 + 22) = 2082;
    v58(v61, v36, v42);
    v46 = sub_1000C26A8();
    v48 = v47;
    (*(v41 + 8))(v36, v42);
    v49 = sub_1000B7B58(v46, v48, &v74);

    *(v31 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v29, v59, "%{public}s: Requesting timeline {configuration: %{private}s context: %{public}s", v31, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v27, v10);
  }

  if (v62)
  {
    v50 = v62;
  }

  else
  {
    v50 = &off_1000E7A30;
  }

  v51 = swift_allocObject();
  v52 = v69;
  v51[2] = v70;
  v51[3] = v52;
  v53 = v66;
  v54 = v67;
  v51[4] = v50;
  v51[5] = v53;
  v51[6] = v54;

  v55 = v68;
  sub_1000C0AE8();
  sub_10008F54C(v64, v65, v52, v50, v55, sub_100087F70, v51);

  return (*(v71 + 8))(v55, v72);
}

uint64_t sub_100087594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v69 = a6;
  v70 = a5;
  v64 = a2;
  v65 = a4;
  v63 = a3;
  v7 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v66 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C0AF8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C2418();
  __chkstk_darwin(v14 - 8);
  v71 = sub_100004D04(&qword_1000EFF90, &qword_1000C8178);
  v15 = *(v71 - 8);
  __chkstk_darwin(v71);
  __chkstk_darwin(v16);
  v67 = &v62 - v17;
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  v25 = *(a1 + 16);
  v68 = &v62 - v23;
  if (v25)
  {

    sub_1000C0A28();
    sub_1000C2408();
    (*(v11 + 8))(v13, v10);
    sub_10008600C();
    sub_1000C2558();
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v26 = sub_1000C1568();
    sub_10000D978(v26, qword_1000EFF68);
    v27 = *(v15 + 16);
    v28 = v71;
    v27(v20, v24, v71);
    v29 = sub_1000C1558();
    v30 = sub_1000C2968();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136446467;
      v72 = &type metadata for TTRNewWidgetProvider;
      v73 = v32;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v33 = sub_1000C26A8();
      v35 = sub_1000B7B58(v33, v34, &v73);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2085;
      v27(v67, v20, v71);
      v36 = sub_1000C26A8();
      v38 = v37;
      v39 = *(v15 + 8);
      v39(v20, v71);
      v40 = sub_1000B7B58(v36, v38, &v73);

      *(v31 + 14) = v40;
      v28 = v71;
      _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s: Completed timeline {timeline: %{sensitive}s}", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v39 = *(v15 + 8);
      v39(v20, v28);
    }
  }

  else
  {
    v62 = v22;
    sub_10008FEEC(v63, &v9[*(v7 + 20)]);
    sub_1000C0AE8();
    v41 = *(v7 + 24);
    v42 = sub_1000C2478();
    (*(*(v42 - 8) + 56))(&v9[v41], 1, 1, v42);
    sub_100004D04(&qword_1000EFF98, &unk_1000C8180);
    v43 = v9;
    v44 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000C3590;
    v66 = v43;
    sub_100087F80(v43, v45 + v44);
    sub_1000C0A28();
    sub_1000C2408();
    (*(v11 + 8))(v13, v10);
    sub_10008600C();
    sub_1000C2558();
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v46 = sub_1000C1568();
    sub_10000D978(v46, qword_1000EFF68);
    v47 = *(v15 + 16);
    v48 = v62;
    v28 = v71;
    v47(v62, v24, v71);
    v49 = sub_1000C1558();
    v50 = sub_1000C2968();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 136446467;
      v72 = &type metadata for TTRNewWidgetProvider;
      v73 = v52;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v53 = sub_1000C26A8();
      v55 = sub_1000B7B58(v53, v54, &v73);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2081;
      v47(v67, v48, v71);
      v56 = sub_1000C26A8();
      v58 = v57;
      v39 = *(v15 + 8);
      v39(v48, v71);
      v59 = sub_1000B7B58(v56, v58, &v73);

      *(v51 + 14) = v59;
      v28 = v71;
      _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s: No timeline entries created placeholder {timeline %{private}s}", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v39 = *(v15 + 8);
      v39(v48, v28);
    }

    sub_100087FE4(v66);
  }

  v60 = v68;
  v70(v68);
  return (v39)(v60, v28);
}

uint64_t sub_100087DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B028;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}