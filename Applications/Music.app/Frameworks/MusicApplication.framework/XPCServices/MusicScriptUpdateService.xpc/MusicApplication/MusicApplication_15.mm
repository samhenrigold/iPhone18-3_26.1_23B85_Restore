uint64_t sub_100187088()
{
  v1 = *v0;
  v2 = sub_100003ABC(&qword_100604D18, &qword_1004D07D8);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin();
  v27 = &v23 - v4;
  v5 = sub_100003ABC(&qword_100604D20, &qword_1004D07E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  sub_1004BB114();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_1000206D4(&qword_100604D28, &qword_100604D20, &qword_1004D07E0, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = sub_1004B8644();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_100199E40(&v30, v14);
  swift_endAccess();

  v15 = v27;
  sub_1004BB134();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  sub_1000206D4(&qword_100604D30, &qword_100604D18, &qword_1004D07D8, v25);
  v20 = v28;
  v21 = sub_1004B8644();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_100199E40(&v30, v21);
  swift_endAccess();
}

uint64_t sub_100187498(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_100604D38, &qword_1004D07E8);
  __chkstk_darwin();
  v5 = &v28 - v4;
  sub_100003ABC(&qword_100604D40, &unk_1004D07F0);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = sub_1004BB104();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v12 = sub_1004B80B4();
  sub_100007084(v12, static Logger.libraryActionableState);
  v34 = *(v9 + 16);
  v34(v11, a1, v8);
  v13 = v9;
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v5;
    v31 = v18;
    v35[0] = v18;
    *v17 = 136446210;
    sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v19 = v13;
    v29 = v13;
    v20 = sub_1004BD934();
    v30 = a1;
    v21 = v7;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = sub_100012018(v20, v23, v35);
    v7 = v21;
    a1 = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Add status has updated to %{public}s", v17, 0xCu);
    sub_100004C6C(v31);
    v5 = v33;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34(v7, a1, v8);
    (*(v25 + 56))(v7, 0, 1, v8);
    v27 = sub_1004BAF14();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    sub_100185154(v7, v5);

    sub_100007214(v5, &qword_100604D38, &qword_1004D07E8);
    return sub_100007214(v7, &qword_100604D40, &unk_1004D07F0);
  }

  return result;
}

uint64_t sub_1001878C4(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_100604D38, &qword_1004D07E8);
  __chkstk_darwin();
  v5 = &v28 - v4;
  sub_100003ABC(&qword_100604D40, &unk_1004D07F0);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = sub_1004BAF14();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v12 = sub_1004B80B4();
  sub_100007084(v12, static Logger.libraryActionableState);
  v33 = *(v9 + 16);
  v33(v11, a1, v8);
  v13 = v9;
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v31 = swift_slowAlloc();
    v32 = v5;
    v35[0] = v31;
    *v17 = 136446210;
    sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v18 = v13;
    v29 = v13;
    v19 = sub_1004BD934();
    v30 = a2;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v18 + 8))(v11, v34);
    v24 = sub_100012018(v19, v23, v35);
    a1 = v21;
    v7 = v20;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Download status has updated to %{public}s", v17, 0xCu);
    sub_100004C6C(v31);
    v5 = v32;

    v8 = v34;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = sub_1004BB104();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v33(v5, a1, v8);
    (*(v25 + 56))(v5, 0, 1, v8);
    sub_100185154(v7, v5);

    sub_100007214(v5, &qword_100604D38, &qword_1004D07E8);
    return sub_100007214(v7, &qword_100604D40, &unk_1004D07F0);
  }

  return result;
}

char *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_1001898C4((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100187E48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.libraryActionableState);
  sub_100007084(v2, static Logger.libraryActionableState);
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  sub_1004BD164();
  return sub_1004B80C4();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.libraryActionableState);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t sub_100187F94(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100003ABC(&qword_100603C50, &unk_1004CB550);
  }

  else
  {

    return sub_1004BD944();
  }
}

uint64_t sub_100188008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = sub_100044FF4;

  return sub_1001693E8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001880E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001384C;

  return sub_10016A130(a1, a2, a3, a4);
}

uint64_t sub_10018819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001384C;

  return sub_10016AE40(a1, a2, a3, a4);
}

uint64_t sub_100188254(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10016BB50(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188328(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10016C804(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001883FC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10016D4B8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001884D0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10016E16C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001885A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10016EE20(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188678(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10016FAD4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_10018874C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_100170788(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188820(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_10017143C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001888F4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_1001720F0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_1001889C8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_100046CDC;

  return sub_100172DA4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188A94(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_100173A28(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188B68(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_100047350;

  return sub_1001746DC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188C3C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_100175390(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188D10(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_10004AF9C;

  return sub_100176044(a1, a2, a3, (v4 + 16));
}

uint64_t sub_100188DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10001384C;

  return sub_100176CF8(a1, a2, a3, a4, v10);
}

uint64_t sub_100188EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000136EC;

  return sub_100177930(a1, a2, a3, a4);
}

uint64_t _s8MusicKit0A7LibraryC0A4CoreE15ActionableStateO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100189090()
{
  result = qword_100604C68;
  if (!qword_100604C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604C68);
  }

  return result;
}

uint64_t sub_1001890E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100189148()
{

  return swift_deallocObject();
}

uint64_t sub_100189180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10018919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v53 = a4;
  v54 = a5;
  v11 = *v7;
  sub_100003ABC(&qword_100604D38, &qword_1004D07E8);
  __chkstk_darwin();
  v13 = &v47 - v12;
  sub_100003ABC(&qword_100604D40, &unk_1004D07F0);
  __chkstk_darwin();
  v15 = (&v47 - v14);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = &v7[*(*v7 + 152)];
  *v16 = 0;
  *(v16 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_1004BD6A4())
  {
    v17 = sub_100019E14(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v17;
  v18 = v11[10];
  v19 = v11[12];
  v52 = a1;
  v55 = v18;
  v56 = v19;
  v20 = sub_1004BB064();
  *&v7[*(*v7 + 136)] = v20;
  v21 = qword_1005FFFC0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1004B80B4();
  sub_100007084(v22, static Logger.libraryActionableState);

  v23 = sub_1004B8094();
  v24 = sub_1004BC9A4();

  v25 = os_log_type_enabled(v23, v24);
  v51 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v49 = v13;
    v27 = v26;
    v28 = swift_slowAlloc();
    v48 = v15;
    v29 = v28;
    v57 = v20;
    v58 = v28;
    *v27 = 136446210;
    v30 = sub_1004BBF04();
    v50 = v11;
    v32 = a6;
    v33 = sub_100012018(v30, v31, &v58);
    v11 = v50;

    *(v27 + 4) = v33;
    a6 = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Initializing item state: %{public}s", v27, 0xCu);
    sub_100004C6C(v29);
    v15 = v48;

    v13 = v49;
  }

  v34 = v55;
  (*(*(v55 - 8) + 16))(&v7[*(*v7 + 128)], v52, v55);
  *(v7 + 2) = a2;
  *(v7 + 4) = v53;
  swift_unknownObjectWeakAssign();
  v35 = &v7[*(*v7 + 144)];
  *v35 = v54;
  v35[1] = a6;
  v36 = sub_1004BB104();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = sub_1004BAF14();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);

  sub_100185154(v15, v13);
  sub_100007214(v13, &qword_100604D38, &qword_1004D07E8);
  sub_100007214(v15, &qword_100604D40, &unk_1004D07F0);
  v38 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 sharedCloudController];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v34;
  v44 = v56;
  v43[3] = v11[11];
  v43[4] = v44;
  v43[5] = v11[13];
  v43[6] = v42;
  type metadata accessor for NotificationObserver(0, v45);
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v40, v41, 1, 1, sub_10018A1EC, v43);

  sub_100187088();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100189768(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v8 = *(v7 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_100183570(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1001898F0()
{
  result = qword_100604C88[0];
  if (!qword_100604C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100604C88);
  }

  return result;
}

uint64_t sub_100189944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_1001899E8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t _s15ActionableStateOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ActionableStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s15ActionableStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_100189AD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100189B08(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_100189B54(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100189C5C()
{
  result = qword_100604D10;
  if (!qword_100604D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604D10);
  }

  return result;
}

uint64_t sub_100189CB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100189CE8()
{

  return swift_deallocObject();
}

uint64_t sub_100189D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100189DB8()
{
  v1 = *(sub_100003ABC(&qword_100601DE0, &unk_1004D0810) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100189F44(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_100601DE0, &unk_1004D0810) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_100188EAC(a1, v6, v7, v1 + v5);
}

uint64_t sub_10018A04C()
{
  v1 = *(sub_100003ABC(&qword_100601DE0, &unk_1004D0810) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_1004BB914();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_10018A21C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10018A27C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CB8, &qword_1004D0590, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018A2D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001883FC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018A39C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CB8, &qword_1004D0590, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018A3F8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CB0, &qword_1004C9960, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018A454(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001884D0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018A518(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CB0, &qword_1004C9960, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018A598()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_100048974(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10018A65C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188DE4(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t sub_10018A728()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_100048974(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10018A808(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_10018A890(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1004B6B04() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000136EC;

  return sub_10010D1F4(a1, a2, v2 + v7);
}

uint64_t sub_10018A974(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10017889C(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018A9B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10018AA18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001889C8(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018AADC(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_10017889C(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018AB24(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601D00, &qword_1004C9A50, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018AB84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188A94(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018AC48(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601D00, &qword_1004C9A50, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018ACA4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CF8, &qword_1004D08E0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018AD00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188B68(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018ADC4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CF8, &qword_1004D08E0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018AE20(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CF0, &unk_1004C9A30, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018AE7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188C3C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018AF40(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CF0, &unk_1004C9A30, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018AF9C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CE8, &qword_1004D0930, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018AFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188D10(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B0BC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CE8, &qword_1004D0930, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018B118(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CD8, &qword_1004C99E8, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018B174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_10018874C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B238(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CD8, &qword_1004C99E8, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018B294(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CD0, &qword_1004C99E0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018B2F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188820(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B3B4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CD0, &qword_1004C99E0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018B410(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CC8, &qword_1004C99A0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018B46C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001888F4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B530(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CC8, &qword_1004C99A0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018B58C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CA8, &qword_1004D09D0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018B5E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001885A4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B6AC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CA8, &qword_1004D09D0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018B708(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CA0, &qword_1004C9930, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018B764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188328(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B828(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601CA0, &qword_1004C9930, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018B884(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601C98, &qword_1004D0A20, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018B8E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188254(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018B9A4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601C98, &qword_1004D0A20, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018BA00(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601C78, &qword_1004C98E8, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018BA5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188678(a1, v4, v5, (v1 + 32));
}

uint64_t sub_10018BB20(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_100169198(a1, v6, &qword_100601C78, &qword_1004C98E8, "%{public}s: waiting for finish to return…");
}

uint64_t sub_10018BBE8(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_100601C60, &qword_1004D0A70) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_1001880E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10018BD78(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_100601C68, &qword_1004C98A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_10018819C(a1, v6, v7, v1 + v5);
}

uint64_t sub_10018BE80(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100003ABC(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1004B7994();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_10018C0C8(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_100178640(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_10018C11C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10018C19C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_100188008(a1, v4, v5, v1 + 32);
}

uint64_t sub_10018C260(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_100178640(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_10018C3E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1004BD9C4();
  }

  return v9 & 1;
}

unint64_t sub_10018C4CC@<X0>(Swift::String *a1@<X0>, MusicCore::Library::ContentFilterOption_optional *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10018C4FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_10018C55C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_10018C600(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_10018C690()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = sub_1004BD9C4();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100003ABC(&qword_100604D60, &qword_1004D0AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = a1;
  v5 = sub_10001A080(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t Library.Context.musicLibrary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context(0) + 60));

  return v1;
}

uint64_t Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context(0);

  return result;
}

uint64_t Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(char *a1@<X8>)
{
  sub_1004BB1D4();
  *a1 = sub_1004BB1C4();
  v2 = type metadata accessor for Library.Context(0);
  v3 = v2[5];
  v4 = sub_1004BB434();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = sub_1004BB564();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = sub_1004B7C44();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[8];
  v10 = sub_1004BB464();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[9];
  v12 = sub_1004BBA84();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[10];
  v14 = sub_1004B7C34();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v2[11];
  v16 = sub_1004B7C94();
  result = (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  a1[v2[12]] = 0;
  a1[v2[13]] = 2;
  a1[v2[14]] = 3;
  v18 = &a1[v2[15]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[16]] = _swiftEmptyArrayStorage;
  a1[v2[17]] = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v36 = sub_1004B7C94();
  v33 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1004B7C34();
  v34 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1004BBA84();
  v37 = *(v42 - 8);
  __chkstk_darwin();
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004BB464();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1004B7C44();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004BB564();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BB434();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BD174();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v32 - v20;
  v50 = a3;
  sub_100191138(v52, a3);
  v52 = v17;
  v22 = *(v17 + 16);
  v22(v21, v51, v16);
  v51 = *(a2 - 8);
  if ((*(v51 + 48))(v21, 1, a2) != 1)
  {
    v32 = v16;
    v22(v19, v21, v16);
    v23 = a2;
    v24 = v19;
    if (swift_dynamicCast())
    {
      v25 = *(type metadata accessor for Library.Context(0) + 20);
      v26 = v50;
      sub_100007214(v50 + v25, &qword_100601E48, &qword_1004C9DA0);
      (*(v13 + 32))(v26 + v25, v15, v12);
      (*(v13 + 56))(v26 + v25, 0, 1, v12);
LABEL_17:
      (*(v51 + 8))(v24, v23);
      v16 = v32;
      return (*(v52 + 8))(v21, v16);
    }

    v27 = v49;
    if (swift_dynamicCast())
    {
      v28 = *(type metadata accessor for Library.Context(0) + 24);
      v29 = v50;
      sub_100007214(v50 + v28, &qword_100602720, &qword_1004CB570);
      v30 = v46;
    }

    else
    {
      v11 = v47;
      v27 = v48;
      if (swift_dynamicCast())
      {
        v28 = *(type metadata accessor for Library.Context(0) + 28);
        v29 = v50;
        sub_100007214(v50 + v28, &qword_100604D68, &qword_1004D0AE8);
        v30 = v43;
      }

      else
      {
        v11 = v44;
        v27 = v45;
        if (swift_dynamicCast())
        {
          v28 = *(type metadata accessor for Library.Context(0) + 32);
          v29 = v50;
          sub_100007214(v50 + v28, &qword_100604D70, &unk_1004D0AF0);
          v30 = v40;
        }

        else
        {
          v11 = v41;
          v27 = v42;
          if (swift_dynamicCast())
          {
            v28 = *(type metadata accessor for Library.Context(0) + 36);
            v29 = v50;
            sub_100007214(v50 + v28, &qword_100603CB0, &qword_1004CB660);
            v30 = v37;
          }

          else
          {
            v11 = v38;
            v27 = v39;
            if (swift_dynamicCast())
            {
              v28 = *(type metadata accessor for Library.Context(0) + 40);
              v29 = v50;
              sub_100007214(v50 + v28, &qword_100602878, &unk_1004D0B00);
              v30 = v34;
            }

            else
            {
              v11 = v35;
              v27 = v36;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v28 = *(type metadata accessor for Library.Context(0) + 44);
              v29 = v50;
              sub_100007214(v50 + v28, &qword_100602848, &qword_1004CB7E8);
              v30 = v33;
            }
          }
        }
      }
    }

    (*(v30 + 32))(v29 + v28, v11, v27);
    (*(v30 + 56))(v29 + v28, 0, 1, v27);
    goto LABEL_17;
  }

  return (*(v52 + 8))(v21, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_100191138(v1, a1);
  result = type metadata accessor for Library.Context(0);
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_100191138(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_100191138(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.with(filterText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100191138(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context(0) + 60));

  *v7 = a1;
  v7[1] = a2;
  return result;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  sub_1004BDBA4();
  sub_1004BDBB4(0);
  sub_1004BDBC4(a1 & 1);
  return sub_1004BDBF4();
}

Swift::Int sub_10018DEF4()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(0);
  sub_1004BDBC4(v1);
  return sub_1004BDBF4();
}

void sub_10018DF48()
{
  v1 = *v0;
  sub_1004BDBB4(0);
  sub_1004BDBC4(v1);
}

Swift::Int sub_10018DF88()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(0);
  sub_1004BDBC4(v1);
  return sub_1004BDBF4();
}

void Library.Context.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1004BB914();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  __chkstk_darwin();
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1004B7C94();
  v91 = *(v96 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100602848, &qword_1004CB7E8);
  __chkstk_darwin();
  v92 = &v69 - v7;
  v89 = sub_1004B7C34();
  v95 = *(v89 - 8);
  __chkstk_darwin();
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100602878, &unk_1004D0B00);
  __chkstk_darwin();
  v90 = &v69 - v9;
  v85 = sub_1004BBA84();
  v88 = *(v85 - 8);
  __chkstk_darwin();
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  __chkstk_darwin();
  v87 = &v69 - v11;
  v82 = sub_1004BB464();
  v86 = *(v82 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100604D70, &unk_1004D0AF0);
  __chkstk_darwin();
  v81 = &v69 - v13;
  v14 = sub_1004B7C44();
  v83 = *(v14 - 8);
  v84 = v14;
  __chkstk_darwin();
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100604D68, &qword_1004D0AE8);
  __chkstk_darwin();
  v80 = &v69 - v16;
  v17 = sub_1004BB564();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin();
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100602720, &qword_1004CB570);
  __chkstk_darwin();
  v77 = &v69 - v19;
  v20 = sub_1004BB434();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  __chkstk_darwin();
  v25 = &v69 - v24;
  v97 = *v1;
  sub_1004BB1D4();
  sub_100191E98(&qword_100604D78, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  sub_1004BBCE4();
  v26 = type metadata accessor for Library.Context(0);
  sub_10000F778(v1 + v26[5], v25, &qword_100601E48, &qword_1004C9DA0);
  if ((*(v21 + 48))(v25, 1, v20) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    (*(v21 + 32))(v23, v25, v20);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604D80, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    sub_1004BBCE4();
    (*(v21 + 8))(v23, v20);
  }

  v27 = v77;
  sub_10000F778(v1 + v26[6], v77, &qword_100602720, &qword_1004CB570);
  v29 = v78;
  v28 = v79;
  v30 = (*(v78 + 48))(v27, 1, v79);
  v32 = v80;
  v31 = v81;
  if (v30 == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    v33 = v27;
    v34 = v70;
    (*(v29 + 32))(v70, v33, v28);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604D88, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    sub_1004BBCE4();
    (*(v29 + 8))(v34, v28);
  }

  v35 = v87;
  v36 = v84;
  sub_10000F778(v1 + v26[7], v32, &qword_100604D68, &qword_1004D0AE8);
  v37 = v83;
  if ((*(v83 + 48))(v32, 1, v36) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    v38 = v71;
    (*(v37 + 32))(v71, v32, v36);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604D90, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    sub_1004BBCE4();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v82;
  sub_10000F778(v2 + v26[8], v31, &qword_100604D70, &unk_1004D0AF0);
  v40 = v86;
  if ((*(v86 + 48))(v31, 1, v39) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    v41 = v72;
    (*(v40 + 32))(v72, v31, v39);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604D98, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
    sub_1004BBCE4();
    (*(v40 + 8))(v41, v39);
  }

  v42 = v89;
  v43 = v91;
  sub_10000F778(v2 + v26[9], v35, &qword_100603CB0, &qword_1004CB660);
  v44 = v88;
  v45 = v85;
  if ((*(v88 + 48))(v35, 1, v85) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    v46 = v73;
    (*(v44 + 32))(v73, v35, v45);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604DA0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    sub_1004BBCE4();
    (*(v44 + 8))(v46, v45);
  }

  v47 = v90;
  sub_10000F778(v2 + v26[10], v90, &qword_100602878, &unk_1004D0B00);
  if ((*(v95 + 6))(v47, 1, v42) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    v48 = v95;
    v49 = v74;
    (*(v95 + 4))(v74, v47, v42);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604DA8, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    sub_1004BBCE4();
    (*(v48 + 1))(v49, v42);
  }

  v50 = v92;
  sub_10000F778(v2 + v26[11], v92, &qword_100602848, &qword_1004CB7E8);
  if ((*(v43 + 48))(v50, 1, v96) == 1)
  {
    sub_1004BDBC4(0);
  }

  else
  {
    v51 = v75;
    v52 = v96;
    (*(v43 + 32))(v75, v50, v96);
    sub_1004BDBC4(1u);
    sub_100191E98(&qword_100604DB0, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    sub_1004BBCE4();
    (*(v43 + 8))(v51, v52);
  }

  v53 = v93;
  sub_1004BDBC4(*(v2 + v26[12]));
  v54 = *(v2 + v26[13]);
  if (v54 == 2)
  {
    v55 = 0;
  }

  else
  {
    sub_1004BDBC4(1u);
    sub_1004BDBB4(0);
    v55 = v54 & 1;
  }

  sub_1004BDBC4(v55);
  v56 = *(v2 + v26[14]);
  if (v56 == 3)
  {
    sub_1004BDBC4(0);
    v57 = v76;
  }

  else
  {
    sub_1004BDBC4(1u);
    v57 = v76;
    sub_1004BBF84();
  }

  if (*(v2 + v26[15] + 8))
  {
    sub_1004BDBC4(1u);
    sub_1004BBF84();
  }

  else
  {
    sub_1004BDBC4(0);
  }

  v95 = v26;
  v96 = v2;
  v58 = *(v2 + v26[16]);
  sub_1004BDBB4(*(v58 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v57;
    v61 = v94 + 16;
    v62 = *(v94 + 16);
    v63 = v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v64 = *(v94 + 72);
    v65 = (v94 + 8);
    do
    {
      v66 = v61;
      v62(v60, v63, v53);
      sub_100191E98(&qword_100604DB8, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      sub_1004BBCE4();
      (*v65)(v60, v53);
      v61 = v66;
      v63 += v64;
      --v59;
    }

    while (v59);
  }

  v67 = *(v96 + v95[17]);
  if (v67 == 2)
  {
    v68 = 0;
  }

  else
  {
    sub_1004BDBC4(1u);
    v68 = v67 & 1;
  }

  sub_1004BDBC4(v68);
}

Swift::Int Library.Context.hashValue.getter()
{
  sub_1004BDBA4();
  Library.Context.hash(into:)(v1);
  return sub_1004BDBF4();
}

Swift::Int sub_10018EFD0()
{
  sub_1004BDBA4();
  Library.Context.hash(into:)(v1);
  return sub_1004BDBF4();
}

uint64_t sub_10018F00C()
{
  v0 = type metadata accessor for Library.Context(0);
  sub_100007108(v0, qword_100604D48);
  v1 = sub_100007084(v0, qword_100604D48);
  sub_1004BB1D4();
  *v1 = sub_1004BB1C4();
  v2 = v0[5];
  v3 = sub_1004BB434();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = sub_1004BB564();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = sub_1004B7C44();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = sub_1004BB464();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = sub_1004BBA84();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = sub_1004B7C34();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = sub_1004B7C94();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_10018F290@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005FFFC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context(0);
  v3 = sub_100007084(v2, qword_100604D48);

  return sub_100191138(v3, a1);
}

uint64_t sub_10018F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100191E98(&qword_100604DD8, type metadata accessor for Library.Context, &protocol conformance descriptor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_10019119C();

  return sub_1004B9194();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  sub_100191138(a1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10019119C();
  sub_1004B91A4();
  return sub_1001911F0(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_10019119C();
  sub_1004B9194();
  return sub_10018F590;
}

void sub_10018F590(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_100191138((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_100191138(v3[2], v3[1]);
    sub_1004B91A4();
    sub_1001911F0(v6);
  }

  else
  {
    sub_1004B91A4();
  }

  sub_1001911F0(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.libraryContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1004B9E44();
}

uint64_t sub_10018F6D4(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100191138(a1, &v7 - v4);
  sub_100191138(v5, v3);
  sub_10019119C();
  sub_1004B91A4();
  return sub_1001911F0(v5);
}

uint64_t MusicLibraryRequest.apply(_:)(void *a1, uint64_t a2)
{

  sub_1004BAB04();
  v4 = *(a1 + *(type metadata accessor for Library.Context(0) + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v146 = sub_1004B7C94();
  v147 = *(v146 - 8);
  __chkstk_darwin();
  v141 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100602848, &qword_1004CB7E8);
  __chkstk_darwin();
  v142 = &v138 - v5;
  v144 = sub_100003ABC(&qword_100604F08, &qword_1004D0D90);
  __chkstk_darwin();
  v145 = &v138 - v6;
  v152 = sub_1004B7C34();
  v153 = *(v152 - 8);
  __chkstk_darwin();
  v143 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100602878, &unk_1004D0B00);
  __chkstk_darwin();
  v150 = &v138 - v8;
  v149 = sub_100003ABC(&qword_100604F10, &qword_1004D0D98);
  __chkstk_darwin();
  v151 = &v138 - v9;
  v10 = sub_1004BBA84();
  v11 = *(v10 - 8);
  v158 = v10;
  v159 = v11;
  __chkstk_darwin();
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  __chkstk_darwin();
  v156 = &v138 - v13;
  v155 = sub_100003ABC(&qword_100604F18, &qword_1004D0DA0);
  __chkstk_darwin();
  v157 = &v138 - v14;
  v163 = sub_1004BB464();
  v165 = *(v163 - 8);
  __chkstk_darwin();
  v154 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100604D70, &unk_1004D0AF0);
  __chkstk_darwin();
  v171 = &v138 - v16;
  v161 = sub_100003ABC(&qword_100604F20, &qword_1004D0DA8);
  __chkstk_darwin();
  v162 = &v138 - v17;
  v18 = sub_1004B7C44();
  v168 = *(v18 - 8);
  v169 = v18;
  __chkstk_darwin();
  v160 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100604D68, &qword_1004D0AE8);
  __chkstk_darwin();
  v164 = &v138 - v20;
  v167 = sub_100003ABC(&qword_100604F28, &qword_1004D0DB0);
  __chkstk_darwin();
  v174 = &v138 - v21;
  v173 = sub_1004BB564();
  v175 = *(v173 - 8);
  __chkstk_darwin();
  v166 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100602720, &qword_1004CB570);
  __chkstk_darwin();
  v170 = &v138 - v23;
  v24 = sub_100003ABC(&qword_100604F30, &qword_1004D0DB8);
  __chkstk_darwin();
  v172 = &v138 - v25;
  v26 = sub_1004BB434();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  __chkstk_darwin();
  v31 = &v138 - v30;
  v32 = sub_100003ABC(&qword_100604F38, &qword_1004D0DC0);
  __chkstk_darwin();
  v34 = &v138 - v33;
  sub_1004BB1D4();
  if ((sub_1004BB014() & 1) == 0)
  {
    return 0;
  }

  v35 = type metadata accessor for Library.Context(0);
  v176 = a2;
  v36 = a1;
  v139 = v35;
  v37 = *(v35 + 20);
  v38 = *(v32 + 48);
  v140 = v36;
  sub_10000F778(v36 + v37, v34, &qword_100601E48, &qword_1004C9DA0);
  sub_10000F778(v176 + v37, &v34[v38], &qword_100601E48, &qword_1004C9DA0);
  v39 = *(v27 + 48);
  if (v39(v34, 1, v26) == 1)
  {
    if (v39(&v34[v38], 1, v26) == 1)
    {
      sub_100007214(v34, &qword_100601E48, &qword_1004C9DA0);
      goto LABEL_9;
    }

LABEL_7:
    v40 = &qword_100604F38;
    v41 = &qword_1004D0DC0;
    v42 = v34;
LABEL_44:
    sub_100007214(v42, v40, v41);
    return 0;
  }

  sub_10000F778(v34, v31, &qword_100601E48, &qword_1004C9DA0);
  if (v39(&v34[v38], 1, v26) == 1)
  {
    (*(v27 + 8))(v31, v26);
    goto LABEL_7;
  }

  (*(v27 + 32))(v29, &v34[v38], v26);
  sub_100191E98(&qword_100604F68, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v43 = sub_1004BBD84();
  v44 = *(v27 + 8);
  v44(v29, v26);
  v44(v31, v26);
  sub_100007214(v34, &qword_100601E48, &qword_1004C9DA0);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = v139;
  v46 = v139[6];
  v47 = *(v24 + 48);
  v48 = v172;
  sub_10000F778(v140 + v46, v172, &qword_100602720, &qword_1004CB570);
  v49 = v176 + v46;
  v50 = v176;
  sub_10000F778(v49, v48 + v47, &qword_100602720, &qword_1004CB570);
  v51 = *(v175 + 48);
  v52 = v173;
  if (v51(v48, 1, v173) == 1)
  {
    v53 = v51(v48 + v47, 1, v52);
    v54 = v171;
    v55 = v174;
    if (v53 == 1)
    {
      sub_100007214(v48, &qword_100602720, &qword_1004CB570);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v56 = v170;
  sub_10000F778(v48, v170, &qword_100602720, &qword_1004CB570);
  v57 = v51(v48 + v47, 1, v52);
  v55 = v174;
  if (v57 == 1)
  {
    (*(v175 + 8))(v56, v52);
LABEL_14:
    v40 = &qword_100604F30;
    v41 = &qword_1004D0DB8;
    v42 = v48;
    goto LABEL_44;
  }

  v58 = v175;
  v59 = v48 + v47;
  v60 = v45;
  v61 = v48;
  v62 = v166;
  (*(v175 + 32))(v166, v59, v52);
  sub_100191E98(&qword_100604F60, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  v63 = sub_1004BBD84();
  v64 = *(v58 + 8);
  v64(v62, v52);
  v64(v56, v52);
  v65 = v61;
  v45 = v60;
  v54 = v171;
  sub_100007214(v65, &qword_100602720, &qword_1004CB570);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v66 = v45[7];
  v67 = v50;
  v68 = *(v167 + 48);
  sub_10000F778(v140 + v66, v55, &qword_100604D68, &qword_1004D0AE8);
  sub_10000F778(v67 + v66, v55 + v68, &qword_100604D68, &qword_1004D0AE8);
  v70 = v168;
  v69 = v169;
  v71 = *(v168 + 48);
  if (v71(v55, 1, v169) == 1)
  {
    if (v71(v55 + v68, 1, v69) == 1)
    {
      sub_100007214(v55, &qword_100604D68, &qword_1004D0AE8);
      goto LABEL_23;
    }

LABEL_21:
    v40 = &qword_100604F28;
    v41 = &qword_1004D0DB0;
LABEL_43:
    v42 = v55;
    goto LABEL_44;
  }

  v72 = v164;
  sub_10000F778(v55, v164, &qword_100604D68, &qword_1004D0AE8);
  if (v71(v55 + v68, 1, v69) == 1)
  {
    (*(v70 + 8))(v72, v69);
    goto LABEL_21;
  }

  v73 = v55 + v68;
  v74 = v160;
  (*(v70 + 32))(v160, v73, v69);
  sub_100191E98(&qword_100604F58, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v75 = sub_1004BBD84();
  v76 = *(v70 + 8);
  v76(v74, v69);
  v76(v72, v69);
  sub_100007214(v55, &qword_100604D68, &qword_1004D0AE8);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v77 = v45[8];
  v55 = v162;
  v78 = *(v161 + 48);
  sub_10000F778(v140 + v77, v162, &qword_100604D70, &unk_1004D0AF0);
  sub_10000F778(v176 + v77, v55 + v78, &qword_100604D70, &unk_1004D0AF0);
  v79 = *(v165 + 48);
  v80 = v163;
  if (v79(v55, 1, v163) == 1)
  {
    if (v79(v55 + v78, 1, v80) == 1)
    {
      sub_100007214(v55, &qword_100604D70, &unk_1004D0AF0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_10000F778(v55, v54, &qword_100604D70, &unk_1004D0AF0);
  if (v79(v55 + v78, 1, v80) == 1)
  {
    (*(v165 + 8))(v54, v80);
LABEL_28:
    v40 = &qword_100604F20;
    v41 = &qword_1004D0DA8;
    goto LABEL_43;
  }

  v81 = v54;
  v82 = v165;
  v83 = v55 + v78;
  v84 = v154;
  (*(v165 + 32))(v154, v83, v80);
  sub_100191E98(&qword_100604F50, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
  v85 = sub_1004BBD84();
  v86 = *(v82 + 8);
  v86(v84, v80);
  v86(v81, v80);
  sub_100007214(v55, &qword_100604D70, &unk_1004D0AF0);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v87 = v45[9];
  v88 = *(v155 + 48);
  v55 = v157;
  sub_10000F778(v140 + v87, v157, &qword_100603CB0, &qword_1004CB660);
  sub_10000F778(v176 + v87, v55 + v88, &qword_100603CB0, &qword_1004CB660);
  v89 = v158;
  v90 = *(v159 + 48);
  if (v90(v55, 1, v158) == 1)
  {
    if (v90(v55 + v88, 1, v89) == 1)
    {
      sub_100007214(v55, &qword_100603CB0, &qword_1004CB660);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_10000F778(v55, v156, &qword_100603CB0, &qword_1004CB660);
  if (v90(v55 + v88, 1, v89) == 1)
  {
    (*(v159 + 8))(v156, v89);
LABEL_35:
    v40 = &qword_100604F18;
    v41 = &qword_1004D0DA0;
    goto LABEL_43;
  }

  v91 = v159;
  v92 = v55 + v88;
  v93 = v148;
  (*(v159 + 32))(v148, v92, v89);
  sub_100191E98(&qword_100604360, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v94 = v156;
  v95 = sub_1004BBD84();
  v96 = *(v91 + 8);
  v96(v93, v89);
  v96(v94, v89);
  sub_100007214(v55, &qword_100603CB0, &qword_1004CB660);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v97 = v45[10];
  v98 = *(v149 + 48);
  v55 = v151;
  sub_10000F778(v140 + v97, v151, &qword_100602878, &unk_1004D0B00);
  sub_10000F778(v176 + v97, v55 + v98, &qword_100602878, &unk_1004D0B00);
  v99 = *(v153 + 48);
  v100 = v152;
  if (v99(v55, 1, v152) == 1)
  {
    if (v99(v55 + v98, 1, v100) == 1)
    {
      sub_100007214(v55, &qword_100602878, &unk_1004D0B00);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_10000F778(v55, v150, &qword_100602878, &unk_1004D0B00);
  if (v99(v55 + v98, 1, v100) == 1)
  {
    (*(v153 + 8))(v150, v100);
LABEL_42:
    v40 = &qword_100604F10;
    v41 = &qword_1004D0D98;
    goto LABEL_43;
  }

  v102 = v153;
  v103 = v55 + v98;
  v104 = v143;
  (*(v153 + 32))(v143, v103, v100);
  sub_100191E98(&qword_100604F48, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v105 = v150;
  v106 = sub_1004BBD84();
  v107 = *(v102 + 8);
  v107(v104, v100);
  v107(v105, v100);
  sub_100007214(v55, &qword_100602878, &unk_1004D0B00);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v108 = v45[11];
  v109 = *(v144 + 48);
  v110 = v145;
  sub_10000F778(v140 + v108, v145, &qword_100602848, &qword_1004CB7E8);
  sub_10000F778(v176 + v108, v110 + v109, &qword_100602848, &qword_1004CB7E8);
  v111 = *(v147 + 48);
  v112 = v146;
  if (v111(v110, 1, v146) == 1)
  {
    if (v111(v110 + v109, 1, v112) == 1)
    {
      sub_100007214(v110, &qword_100602848, &qword_1004CB7E8);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v113 = v142;
  sub_10000F778(v110, v142, &qword_100602848, &qword_1004CB7E8);
  if (v111(v110 + v109, 1, v112) == 1)
  {
    (*(v147 + 8))(v113, v112);
LABEL_53:
    v40 = &qword_100604F08;
    v41 = &qword_1004D0D90;
    v42 = v110;
    goto LABEL_44;
  }

  v114 = v147;
  v115 = v110 + v109;
  v116 = v141;
  (*(v147 + 32))(v141, v115, v112);
  sub_100191E98(&qword_100604F40, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v117 = sub_1004BBD84();
  v118 = *(v114 + 8);
  v118(v116, v112);
  v118(v113, v112);
  sub_100007214(v110, &qword_100602848, &qword_1004CB7E8);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v140 + v45[12]) != *(v176 + v45[12]))
  {
    return 0;
  }

  v119 = v45[13];
  v120 = *(v140 + v119);
  v121 = *(v176 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v121 != 2 && ((v121 ^ v120) & 1) == 0)
  {
LABEL_61:
    v122 = v45[14];
    v123 = *(v140 + v122);
    v124 = *(v176 + v122);
    if (v123 == 3)
    {
      if (v124 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v124 == 3)
      {
        return 0;
      }

      v125 = 0xE900000000000073;
      v126 = 7105633;
      if (v123)
      {
        if (v123 == 1)
        {
          v127 = 0x657469726F766166;
        }

        else
        {
          v127 = 0x64616F6C6E776F64;
        }

        v128 = 0xE900000000000073;
      }

      else
      {
        v128 = 0xE300000000000000;
        v127 = 7105633;
      }

      if (v124)
      {
        if (v124 == 1)
        {
          v126 = 0x657469726F766166;
        }

        else
        {
          v126 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v125 = 0xE300000000000000;
      }

      if (v127 == v126 && v128 == v125)
      {

        v45 = v139;
      }

      else
      {
        v129 = sub_1004BD9C4();

        v45 = v139;
        if ((v129 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v130 = v45[15];
    v131 = (v140 + v130);
    v132 = *(v140 + v130 + 8);
    v133 = (v176 + v130);
    v134 = v133[1];
    if (v132)
    {
      if (v134 && (*v131 == *v133 && v132 == v134 || (sub_1004BD9C4() & 1) != 0))
      {
LABEL_87:
        if (sub_1000E8CF0(*(v140 + v139[16]), *(v176 + v139[16])))
        {
          v135 = v139[17];
          v136 = *(v140 + v135);
          v137 = *(v176 + v135);
          if (v136 == 2)
          {
            if (v137 == 2)
            {
              return 1;
            }
          }

          else if (v137 != 2 && ((v137 ^ v136) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v134)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}

unint64_t _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005A5520;
  v6._object = a2;
  v4 = sub_1004BD764(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for Library.Context(uint64_t a1)
{
  result = qword_100604E38;
  if (!qword_100604E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100191138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10019119C()
{
  result = qword_100604DC0;
  if (!qword_100604DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604DC0);
  }

  return result;
}

uint64_t sub_1001911F0(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100191294()
{
  result = qword_100604DC8;
  if (!qword_100604DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604DC8);
  }

  return result;
}

unint64_t sub_1001912EC()
{
  result = qword_100604DD0;
  if (!qword_100604DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604DD0);
  }

  return result;
}

uint64_t sub_1001913BC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_100003ABC(&qword_100602720, &qword_1004CB570);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_100003ABC(&qword_100604D68, &qword_1004D0AE8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = sub_100003ABC(&qword_100604D70, &unk_1004D0AF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = sub_100003ABC(&qword_100602878, &unk_1004D0B00);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = sub_100003ABC(&qword_100602848, &qword_1004CB7E8);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[11]];

  return v19(v20, a2, v18);
}

char *sub_1001916B0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100003ABC(&qword_100601E48, &qword_1004C9DA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100003ABC(&qword_100602720, &qword_1004CB570);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_100003ABC(&qword_100604D68, &qword_1004D0AE8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = sub_100003ABC(&qword_100604D70, &unk_1004D0AF0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = sub_100003ABC(&qword_100602878, &unk_1004D0B00);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = sub_100003ABC(&qword_100602848, &qword_1004CB7E8);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[11]];

  return v19(v20, a2, a2, v18);
}

void sub_100191990(uint64_t a1)
{
  sub_1004BB1D4();
  if (v1 <= 0x3F)
  {
    sub_100191CE4(319, &qword_100604E48, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100191CE4(319, &qword_100604E50, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100191CE4(319, &qword_100604E58, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100191CE4(319, &qword_100604E60, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100191CE4(319, &qword_100604E68, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100191CE4(319, &qword_100604E70, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100191CE4(319, &qword_100604E78, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_100029A78(319, &qword_100604E80, &type metadata for Library.Context.SortOption);
                  if (v9 <= 0x3F)
                  {
                    sub_100029A78(319, &qword_100604E88, &type metadata for Library.ContentFilterOption);
                    if (v10 <= 0x3F)
                    {
                      sub_100029A78(319, &qword_1006084E0, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        sub_100191CE4(319, &unk_100604E90, &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v12 <= 0x3F)
                        {
                          sub_100029A78(319, &unk_100602F90, &type metadata for Bool);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_100191CE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100191D58(uint64_t *a1)
{
  sub_100003B68(&qword_100604EF0, &qword_1004D0D38);
  sub_1004B8D64();
  sub_100191DD0();
  return swift_getWitnessTable();
}

unint64_t sub_100191DD0()
{
  result = qword_100604EF8;
  if (!qword_100604EF8)
  {
    sub_100003B68(&qword_100604EF0, &qword_1004D0D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604EF8);
  }

  return result;
}

unint64_t sub_100191E44()
{
  result = qword_100604F00;
  if (!qword_100604F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604F00);
  }

  return result;
}

uint64_t sub_100191E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100191EE4(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
      sub_100197B84(&v12, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL sub_100191FD0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_1004BD9C4();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_100192094(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "orites";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Playlists";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Artists";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Albums";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Songs";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.MadeForYou";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.MusicVideos";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Genres";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Compilations";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Composers";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Shows";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "orites";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Playlists";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Artists";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Albums";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Songs";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.MadeForYou";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.MusicVideos";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Genres";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Compilations";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Composers";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Shows";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = sub_1004BD9C4();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

Swift::Int sub_1001923F4(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004BDBA4();
    sub_1004BDBB4(v13);
    result = sub_1004BDBF4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100192564(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v24 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v28 = a2 + 56;
    v25 = v8;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v27 = (v7 - 1) & v7;
LABEL_13:
        v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
        sub_1004BDBA4();
        Library.Menu.Identifier.rawValue.getter(v12);
        sub_1004BBF84();

        v13 = sub_1004BDBF4();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "orites";
          switch(*(*(a2 + 48) + v15))
          {
            case 1:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v17 = 0xD000000000000023;
              v18 = "LibraryView.Playlists";
              break;
            case 3:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Artists";
              break;
            case 4:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Albums";
              break;
            case 5:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Songs";
              break;
            case 6:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.MadeForYou";
              break;
            case 7:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.MusicVideos";
              break;
            case 8:
              v17 = 0xD000000000000028;
              v18 = "LibraryView.Genres";
              break;
            case 9:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Compilations";
              break;
            case 0xA:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Composers";
              break;
            case 0xB:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Shows";
              break;
            case 0xC:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000029;
          v21 = "orites";
          switch(v12)
          {
            case 1:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v20 = 0xD000000000000023;
              v21 = "LibraryView.Playlists";
              break;
            case 3:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Artists";
              break;
            case 4:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Albums";
              break;
            case 5:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Songs";
              break;
            case 6:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.MadeForYou";
              break;
            case 7:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.MusicVideos";
              break;
            case 8:
              v20 = 0xD000000000000028;
              v21 = "LibraryView.Genres";
              break;
            case 9:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Compilations";
              break;
            case 10:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Composers";
              break;
            case 11:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Shows";
              break;
            case 12:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            break;
          }

          v22 = sub_1004BD9C4();

          if (v22)
          {
            goto LABEL_47;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return 0;
          }
        }

LABEL_47:
        v8 = v25;
        v3 = a1;
        v7 = v27;
      }

      while (v27);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        JUMPOUT(0x1001929A8);
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v24 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t sub_100192A10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004BDBA4();
    ApplicationCapabilities.Service.rawValue.getter();
    sub_1004BBF84();

    v14 = sub_1004BDBF4();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x80000001004FB9A0;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x80000001004FB9E0;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x80000001004FBA00;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x80000001004FBA00;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x80000001004FB9E0;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x80000001004FB9A0;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = sub_1004BD9C4();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, uint64_t a2)
{
  if (a1)
  {
    sub_100129808(a2);
  }

  else
  {
    sub_10019A0E0(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_10012FEEC(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    sub_10019A824();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = sub_10012FEEC(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = sub_10012FEEC(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = sub_100032DC8(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  sub_10003B0A0(a2, a2, result);
  result = sub_100032DC8(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return sub_10003B0A0(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3, v4);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  sub_1004B6554();
  swift_allocObject();
  sub_1004B6544();
  v11[2] = a3;
  sub_10019A878();
  v5 = sub_1004B6534();
  v7 = v6;

  v11[3] = &type metadata for Data;
  v11[0] = v5;
  v11[1] = v7;
  v10[0] = 0x4D7972617262694CLL;
  v10[1] = 0xEB00000000756E65;
  sub_10003E428(v5, v7);
  v8 = sub_10000E7F4();
  NSUserDefaults.subscript.setter(v11, v10, &type metadata for String, v8);
  return sub_100004D90(v5, v7);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

uint64_t static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;
}

id Library.Menu.Request.init()@<X0>(uint64_t a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = &_swiftEmptySetSingleton;
    *(a2 + 40) = 257;
    *(a2 + 42) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a3@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v8 = result;
    BYTE8(v8) = 0;
    v9 = 0uLL;
    *&v10 = &_swiftEmptySetSingleton;
    WORD4(v10) = 257;
    BYTE10(v10) = 0;
    v11 = 0u;
    v12 = 0u;
    result = a1(&v8);
    v6 = v11;
    a3[2] = v10;
    a3[3] = v6;
    a3[4] = v12;
    v7 = v9;
    *a3 = v8;
    a3[1] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100009130(0, &qword_100604490, NSObject_ptr);
      v4 = sub_1004BCFA4();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_1004BB1D4();
  v4 = sub_1004BB014();
  return v4 & 1;
}

uint64_t sub_100193760(uint64_t *a1, uint64_t *a2)
{
  if ((a1[1] & 1) == 0)
  {
    if ((a2[1] & 1) == 0)
    {
      sub_100009130(0, &qword_100604490, NSObject_ptr);
      v2 = sub_1004BCFA4();
      return v2 & 1;
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  sub_1004BB1D4();
  v2 = sub_1004BB014();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  sub_10019A8CC(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  sub_10019A8D8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.excludedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = v0[6];
  sub_10019A8E4(v1, v0[7], v0[8], v0[9]);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10019A944(v4[6], v4[7], v4[8], v4[9]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

uint64_t Library.Menu.Request.perform(_:_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v62 = a1;
  v7 = sub_1004BA904();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004BA8F4();
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = sub_1004BADD4();
  }

  else
  {
    v15 = v14;
  }

  v52 = v4[2];
  v53 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v60 = v7;
  v61 = a3;
  v58 = v10;
  v59 = v8;
  v57 = v13;
  v54 = v11;
  v55 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v56 = v16;
  *(v16 + 16) = v18;
  v63 = swift_allocObject();
  *(v63 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v51 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
    v33 = v27;
  }

  else
  {
    v32 = v27;
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v33;
  if (*(v4 + 41))
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  *(v35 + 24) = v23;
  *(v35 + 32) = v17;
  *(v35 + 40) = v34;
  v36 = v17;
  v37 = v52;
  v38 = v53;
  *(v35 + 48) = v53;
  *(v35 + 56) = v37;
  *(v35 + 64) = v20;
  *(v35 + 72) = v21;
  v40 = v55;
  v39 = v56;
  *(v35 + 80) = v63;
  *(v35 + 88) = v39;
  *(v35 + 96) = v62;
  *(v35 + 104) = v40;
  aBlock[4] = sub_10019AA7C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  aBlock[3] = &unk_1005B4588;
  v52 = _Block_copy(aBlock);
  v64 = _swiftEmptyArrayStorage;
  sub_10019A8E4(v26, v51, v28, v32);
  sub_1001A4478(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v62 = v23;
  v41 = v36;
  v42 = v38;

  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000206D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0, &protocol conformance descriptor for [A]);
  sub_1004BD2D4();
  v43 = sub_1004BA984();
  swift_allocObject();
  v44 = sub_1004BA964();

  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v46 = v58;
  v45 = v59;
  v47 = v60;
  (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.userInteractive(_:), v60);
  v48 = sub_1004BCB84();
  (*(v45 + 8))(v46, v47);
  sub_1004BCB64();

  v49 = v61;
  v61[3] = v43;
  v49[4] = &protocol witness table for DispatchWorkItem;

  *v49 = v44;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  sub_100198674();
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      sub_1004B6524();
      swift_allocObject();
      sub_1004B6514();
      sub_10019AAD8();
      sub_1004B6504();
      sub_100004D90(0x4D7972617262694CLL, 0xEB00000000756E65);

      return v6;
    }
  }

  else
  {
    sub_100007214(&v6, &qword_100605110, &unk_1004CD280);
  }

  if (qword_1005FFFD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();
  sub_100007084(v0, static Logger.libraryMenu);
  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No edits found — Returning stock menu revision", v3, 2u);
  }

  if (qword_1005FFFD0 != -1)
  {
    swift_once();
  }

  v4 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t sub_1001942BC(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (qword_1005FFFD0 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = *algn_100617528;
    swift_beginAccess();
    v16 = a1[3];
    v106 = a7;
    if (sub_1000E8D38(a1[2], v15) & 1) != 0 && (sub_100192564(v16, v14))
    {
      break;
    }

    sub_100196BF4(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];
    v20 = a1[5];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19, v20);
    v103 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v21 = a4[2];
    if (!v21)
    {
      v107 = 0;
      goto LABEL_68;
    }

    v22 = 0;
    v107 = 0;
    v23 = a4 + 4;
LABEL_39:
    v33 = v22;
    while (v33 < v21)
    {
      v22 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_149;
      }

      v34 = *(v23 + v33);
      if (v34 <= 4)
      {
        if (*(v23 + v33) <= 1u)
        {
          if (*(v23 + v33))
          {
            v35 = v107 | 0xC0;
          }

          else
          {
            v35 = v107 | 0x41;
          }

LABEL_38:
          v107 = v35;
          if (v22 == v21)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v34)
        {
          case 2u:
            v35 = v107 | 2;
            goto LABEL_38;
          case 3u:
            v35 = v107 | 1;
            goto LABEL_38;
          case 4u:
            v35 = v107 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v23 + v33) > 7u)
      {
        switch(v34)
        {
          case 8u:
            v35 = v107 | 4;
            goto LABEL_38;
          case 9u:
            v35 = v107 | 8;
            goto LABEL_38;
          case 0xAu:
            v35 = v107 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v34)
        {
          case 5u:
            v35 = v107 | 0x400;
            goto LABEL_38;
          case 6u:
            v35 = v107 | 0x20;
            goto LABEL_38;
          case 7u:
            v35 = v107 | 0x10;
            goto LABEL_38;
        }
      }

      ++v33;
      if (v22 == v21)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v103 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v96 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter(v96, v24);
  a7 = 0;
  v26 = *(v25 + 16);
  a1 = 0x8000000100501370;
  v107 = 0;
  v101 = v25 + 40;
LABEL_12:
  v28 = (v101 + 16 * a7);
  a3 = a7;
  while (v26 != a3)
  {
    if (a3 >= v26)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v30 = *(v28 - 1);
    v29 = *v28;
    v31 = v30 == 0xD000000000000014 && 0x8000000100501390 == v29;
    if (v31 || (sub_1004BD9C4() & 1) != 0)
    {
      v27 = 1247;
LABEL_11:
      v107 |= v27;
      goto LABEL_12;
    }

    if (v30 == 0xD00000000000001BLL && 0x8000000100501370 == v29 || (sub_1004BD9C4() & 1) != 0)
    {
      v27 = 32;
      goto LABEL_11;
    }

    if (v30 == 0xD00000000000001ALL && 0x80000001005027A0 == v29 || (sub_1004BD9C4() & 1) != 0)
    {
      v27 = 256;
      goto LABEL_11;
    }

    if (v30 != 0xD000000000000015 || 0x80000001005027C0 != v29)
    {
      a3 = (a3 + 1);
      v28 += 2;
      if ((sub_1004BD9C4() & 1) == 0)
      {
        continue;
      }
    }

    v27 = 512;
    goto LABEL_11;
  }

  a7 = v106;
  if ([v96 selectionMode] == 2)
  {

    a1 = v103;
    a3 = a4;
  }

  else
  {
    v32 = [v96 selectionMode];

    v31 = v32 == 3;
    a1 = v103;
    a3 = a4;
    if (!v31)
    {
      goto LABEL_68;
    }
  }

  v107 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v102 = [a5 filterAvailableContentGroups:v107 withOptions:{a6, v93}];
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  v36 = static ApplicationCapabilities.Controller.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  v94 = v36;
  sub_1004B85A4();

  v120[4] = v116;
  v120[5] = v117;
  v120[6] = v118;
  v120[7] = v119;
  v120[0] = v112;
  v120[1] = v113;
  v120[2] = v114;
  v120[3] = v115;
  LODWORD(a4) = BYTE2(v112);
  if (v118 == 2)
  {
    v97 = 1;
  }

  else
  {
    v97 = sub_1004BD9C4();
  }

  v37 = a3[2];

  v108 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v37)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v38 = 0;
  a3 += 4;
  LODWORD(v93) = (v102 & 0x300) != 0;
  HIDWORD(v93) = (v102 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v38;
    while (2)
    {
      if (a1 >= v37)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v38 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v39 = *(a1 + a3);
      if (sub_1000FEB10(v39, a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v40 = v103[5];

        v41 = sub_1000FEB10(v39, v40);

        if (v39 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v41 &= v97 & a4;
LABEL_100:
        v53 = (*(a9 + 16) ^ 1) & v41;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v41)
        {
          if (v39 > 6)
          {
            if (v39 > 9)
            {
              if ((v39 - 11) >= 2)
              {
                v53 = v93;
              }

              else
              {
                v53 = 1;
              }
            }

            else
            {
              if (v39 == 7)
              {
                v56 = -17;
              }

              else if (v39 == 8)
              {
                v56 = -5;
              }

              else
              {
                v56 = -9;
              }

LABEL_122:
              v53 = (v56 | v102) == -1;
            }
          }

          else if (v39 <= 2)
          {
            v53 = (v102 & 0x41) != 0;
            if (v39)
            {
              v53 = (v102 & 0xC0) != 0;
              if (v39 != 1)
              {
                v56 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v39 <= 4)
            {
              if (v39 == 3)
              {
                v56 = -2;
              }

              else
              {
                v56 = -129;
              }

              goto LABEL_122;
            }

            v53 = (v102 & 0x400) != 0;
            if (v39 != 5)
            {
              v56 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v41 = 1;
        if (v39 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v39 == 12)
        {
          v47 = [objc_opt_self() deviceMediaLibrary];
          if (v47)
          {
            v48 = v47;
            sub_100009130(0, &qword_1006050E0, MPMediaLibrary_ptr);
            v49 = v108;
            v50 = sub_1004BCFA4();
          }

          else
          {
            v50 = 0;
          }

          v51 = [objc_opt_self() sharedManager];
          v52 = [v51 hasActiveDownloads];

          if (v41)
          {
            v41 = v50 & v52;
            goto LABEL_100;
          }

          v53 = 0;
        }

        else
        {
          if (v39 != 11)
          {
            goto LABEL_100;
          }

          v42 = [objc_opt_self() deviceMediaLibrary];
          if (v42)
          {
            v43 = v42;
            sub_100009130(0, &qword_1006050E0, MPMediaLibrary_ptr);
            v44 = v108;
            v45 = sub_1004BCFA4();

            v46 = v45 ^ 1;
          }

          else
          {
            v46 = 1;
          }

          v54 = [objc_opt_self() sharedManager];
          v55 = [v54 hasActiveDownloads];

          v53 = 0;
          if ((v41 & 1) != 0 && (a6 & 2) == 0 && (v46 & 1) == 0)
          {
            v41 = (v102 != 0) | v55;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v53 &= v39 != 12;
      }

      a7 = v106;
      if ((v53 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v38 == v37)
        {
          a1 = v103;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_100018840(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v103;
    v58 = *(a5 + 2);
    v57 = *(a5 + 3);
    if (v58 >= v57 >> 1)
    {
      a5 = sub_100018840((v57 > 1), v58 + 1, 1, a5);
    }

    *(a5 + 2) = v58 + 1;
    a5[v58 + 32] = v39;
    if (v38 != v37)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v60 = a1[2];
  v59 = a1[3];
  v61 = a1[4];
  v62 = a1[5];
  *&v112 = a5;
  *(&v112 + 1) = a2;
  *&v113 = v60;
  *(&v113 + 1) = v59;
  *&v114 = v61;
  *(&v114 + 1) = v62;
  LOBYTE(v115) = 0;
  sub_100003ABC(&unk_1006035A0, &unk_1004CDAC0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1004C50B0;
  v64 = CFRange.init(_:)(0);
  v66 = v65;
  v68 = v67;
  *(v63 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v63 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v69 = swift_allocObject();
  *(v63 + 32) = v69;
  v69[1] = v64;
  v69[2].location = v66;
  v69[2].length = v68;
  v70 = qword_1005FFE90;

  v105 = a2;
  if (v70 != -1)
  {
    swift_once();
  }

  v71 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v72.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v72.length = v94;
  v73 = CFRange.init(_:)(v72);
  *(v63 + 96) = &type metadata for NotificationTrigger;
  *(v63 + 104) = &protocol witness table for NotificationTrigger;
  *(v63 + 72) = v73;
  v74 = qword_1005FFE70;
  swift_retain_n();
  v75 = v71;
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v77.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v77.length = v94;
  v78 = CFRange.init(_:)(v77);
  *(v63 + 136) = &type metadata for NotificationTrigger;
  *(v63 + 144) = &protocol witness table for NotificationTrigger;
  *(v63 + 112) = v78;
  v79.location = MPMediaLibraryDidChangeNotification;
  v79.length = v108;
  v80 = CFRange.init(_:)(v79);
  *(v63 + 176) = &type metadata for NotificationTrigger;
  *(v63 + 184) = &protocol witness table for NotificationTrigger;
  *(v63 + 152) = v80;
  v81 = v108;
  v82 = v76;
  v83 = MPMediaLibraryDidChangeNotification;
  if ((sub_1000FEB10(12, v106) & 1) == 0)
  {
    if (qword_1005FFF08 != -1)
    {
      swift_once();
    }

    v85 = static MusicLibrary.downloadingStateDidChange;
    v86 = CFRange.init(_:)(static MusicLibrary.downloadingStateDidChange);
    v87 = *(v63 + 16);
    v88 = *(v63 + 24);
    v89 = v85;
    if (v87 >= v88 >> 1)
    {
      v63 = sub_100018854((v88 > 1), v87 + 1, 1, v63);
    }

    v110 = &type metadata for NotificationTrigger;
    v111 = &protocol witness table for NotificationTrigger;
    v109 = v86;
    *(v63 + 16) = v87 + 1;
    sub_100013414(&v109.location, v63 + 40 * v87 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation(0, v84);
  swift_allocObject();
  v90 = BindingRequestResponseInvalidation.init(triggers:)(v63);
  v91 = sub_1001A4478(&qword_1006050E8, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  a11(&v112, v90, v91);

  sub_100051DEC(v120);
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (qword_1005FFFD0 != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFFD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_1004D1848[a1];
  }
}

uint64_t sub_100195334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(sub_1001A4184, v6, a3);
}

BOOL sub_1001953C4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9MusicCore7LibraryO4MenuV7RequestV23__derived_struct_equalsySbAG_AGtFZ_0(v8, v9);
}

unint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)(char a1, char a2)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v3 + 8))(v7, v2);
  return v9;
}

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL sub_100195A6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(uint64_t a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  sub_10000E7F4();
  v2 = sub_1004BD1D4();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100195CC0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_100195D48()
{
  v1 = *v0;
  sub_1004BDBA4();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100195DAC(uint64_t a1)
{
  Library.Menu.Identifier.rawValue.getter(*v1);
  sub_1004BBF84();
}

Swift::Int sub_100195E00()
{
  v1 = *v0;
  sub_1004BDBA4();
  Library.Menu.Identifier.rawValue.getter(v1);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_100195E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO4MenuV10IdentifierO8rawValueAGSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100195E90@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = sub_100003ABC(&qword_100604F98, &qword_1004D0DC8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_100009178(a1, a1[3]);
  sub_1001A34B4();
  sub_1004BDC44();
  v18 = a4;
  v20 = 1;
  sub_100003ABC(&qword_100604FA8, &qword_1004D0DD0);
  sub_1001A41D0(&qword_100604FB0, sub_1001A3508, &protocol conformance descriptor for <A> [A]);
  sub_1004BD894();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    sub_100003ABC(&qword_100604FC0, &qword_1004D0DD8);
    sub_1001A355C(&qword_100604FC8, sub_1001A3508, &protocol conformance descriptor for <> Set<A>);
    sub_1004BD894();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    sub_1001A35D4();
    sub_1004BD894();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100196218(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004BD9C4();
  }

  return v11 & 1;
}

Swift::Int sub_10019630C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1001963A8(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_100196430()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

unint64_t sub_1001964C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A367C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1001964F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100196550()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

unint64_t sub_1001965A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001A367C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001965D8(uint64_t a1)
{
  v2 = sub_1001A34B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196614(uint64_t a1)
{
  v2 = sub_1001A34B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1001966B0()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1001966F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1004BD9C4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1004BD9C4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001967D4(uint64_t a1)
{
  v2 = sub_1001A3628();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100196810(uint64_t a1)
{
  v2 = sub_1001A3628();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1000E8D38(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_100192564(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003ABC(&qword_100604FD8, &qword_1004D0DE0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_100009178(a1, a1[3]);
  sub_1001A3628();
  sub_1004BDC44();
  v14 = a2;
  v13 = 0;
  sub_100003ABC(&qword_100604FA8, &qword_1004D0DD0);
  sub_1001A41D0(&qword_100604FB0, sub_1001A3508, &protocol conformance descriptor for <A> [A]);
  sub_1004BD894();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100003ABC(&qword_100604FC0, &qword_1004D0DD8);
    sub_1001A355C(&qword_100604FC8, sub_1001A3508, &protocol conformance descriptor for <> Set<A>);
    sub_1004BD894();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100196ADC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001A36C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100196B24(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000E8D38(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_100192564(v2, v3);
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1, uint64_t a2)
{

  return a1;
}

uint64_t MPCPlaybackEngine.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_100196BF4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (qword_1005FFFD8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = sub_1004B80B4();
    sub_100007084(v7, static Logger.libraryMenu);
    v8 = sub_1004B8094();
    v9 = sub_1004BC9A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = sub_1004B8094();
    v12 = sub_1004BC9A4();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = sub_1004BBF04();
      v17 = sub_100012018(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      sub_100004C6C(v14);
    }

    v18 = sub_1004B8094();
    v19 = sub_1004BC9A4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = sub_1004BBF04();
      v24 = sub_100012018(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      sub_100004C6C(v21);
    }

    v5 = v46[2];

    v26 = sub_10012B170(v25);

    v28 = sub_10012B170(v27);

    if (*(v28 + 16) <= *(v26 + 16) >> 3)
    {
      v47 = v26;

      sub_1001A0C6C(v28);
      v6 = v47;
    }

    else
    {

      v6 = sub_1001A0D60(v28, v26);
    }

    if (*(v26 + 16) <= *(v28 + 16) >> 3)
    {
      v47 = v28;
      sub_1001A0C6C(v26);
      v29 = v47;
    }

    else
    {
      v29 = sub_1001A0D60(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = *(v26 + 16);

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      sub_100197558(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  sub_100191EE4(v6, &v49);

  sub_1001A23DC(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (*(v6 + 2) <= *(v37 + 16) >> 3)
    {

      sub_1001A0C6C(v6);

      v38 = v37;
    }

    else
    {

      v38 = sub_1001A0D60(v6, v37);
    }

    v42 = sub_1001A2650(v29, a1, a2);

    v43 = sub_100198368(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    sub_1001A43A4();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  sub_100197210(v41, a1, a2);
}

void sub_100197210(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = qword_1005FFFD8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, static Logger.libraryMenu);
  v5 = sub_1004B8094();
  v6 = sub_1004BC9A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = sub_1004BC2B4();
    v14 = v13;

    v15 = sub_100012018(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    sub_100004C6C(v11);
  }

  else
  {
  }

  oslog = sub_1004B8094();
  v16 = sub_1004BC9A4();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_10012B1E4();
    v19 = sub_1004BC674();
    v21 = v20;

    v22 = sub_100012018(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    sub_100004C6C(v18);
  }

  else
  {
  }
}

void *sub_100197558(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = sub_10012FEEC(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = sub_100197824(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (qword_1005FFFD8 != -1)
      {
        swift_once();
      }

      v24 = sub_1004B80B4();
      sub_100007084(v24, static Logger.libraryMenu);
      v16 = sub_1004B8094();
      v25 = sub_1004BC9A4();
      if (os_log_type_enabled(v16, v25))
      {
        v29 = v25;
        v26 = swift_slowAlloc();
        result = swift_slowAlloc();
        v28[0] = result;
        *v26 = 136315650;
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        if (v21 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v9 = result;
        v10 = Library.Menu.Identifier.description.getter(*(*a2 + v21 + 32));
        log = v16;
        v12 = v5;
        v13 = a2;
        v14 = v3;
        v15 = sub_100012018(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        sub_100004C6C(v9);
      }

      swift_beginAccess();
      sub_100032DC8(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = sub_10012FEEC(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t sub_100197824(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "orites";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Playlists";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Artists";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Albums";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Songs";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.MadeForYou";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.MusicVideos";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Genres";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Compilations";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Composers";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Shows";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "orites";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Playlists";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Artists";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Albums";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Songs";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.MadeForYou";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.MusicVideos";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Genres";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Compilations";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Composers";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Shows";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = sub_1004BD9C4();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t sub_100197B84(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "orites";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Playlists";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Artists";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Albums";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Songs";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Genres";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Compilations";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Composers";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Shows";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Playlists";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Artists";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Albums";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Songs";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Genres";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Compilations";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Composers";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Shows";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = sub_1004BD9C4();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = sub_10003B23C(v4);
        }
      }

      v13 = sub_1004BD9C4();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  sub_10003C3A4(v6, v14);
  return swift_endAccess();
}

uint64_t sub_100198250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  result = swift_beginAccess();
  do
  {
    if (a3 == v10)
    {
      return 13;
    }

    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (v10 < a3)
    {
      goto LABEL_11;
    }

    v13 = *a5;
    v14 = *(a2 + v10);

    v15 = sub_100192094(v14, v13);
  }

  while (!v15);
  __chkstk_darwin();
  v16 = v10;
  result = sub_1001A4400(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100198368(uint64_t result, uint64_t a2)
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
  for (i = (v5 + 63) >> 6; v7; result = sub_10019A0E0(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
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

uint64_t static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1000E8D38(a1, a5) & 1) == 0 || (sub_100192564(a2, a6) & 1) == 0 || (sub_1000E8D38(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_100192564(a4, a8);
}

void sub_1001984E4(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_1001A2DE4(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }
}

uint64_t sub_100198534(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1000E8D38(*a1, *a2) & 1) == 0 || (sub_100192564(v2, v5) & 1) == 0 || (sub_1000E8D38(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_100192564(v3, v6);
}

void *sub_1001985D0()
{
  result = sub_10001A2F0(&off_1005A55B8);
  static Library.Menu.Revision.Version.current = &off_1005A5588;
  *algn_100617528 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (qword_1005FFFD0 != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void sub_100198674()
{
  LOBYTE(v19[0]) = 0;
  v1 = sub_1001A4350();
  v2 = sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v20);
  if (!*(&v21 + 1))
  {
    goto LABEL_8;
  }

  sub_100003ABC(&unk_100603590, &unk_1004C8150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = v19[0];
  LOBYTE(v19[0]) = 1;
  NSUserDefaults.subscript.getter(&v20);
  if (!*(&v21 + 1))
  {
LABEL_7:

LABEL_8:
    sub_100007214(&v20, &qword_100605110, &unk_1004CD280);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v4 = v19[0];
  v19[0] = 0x4D7972617262694CLL;
  v19[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(&v20);
  if (*(&v21 + 1))
  {

    goto LABEL_7;
  }

  sub_100007214(&v20, &qword_100605110, &unk_1004CD280);
  if (qword_1005FFFD0 != -1)
  {
    swift_once();
  }

  v5 = sub_1001A28DC(v3, v4, static Library.Menu.Revision.Version.current, *algn_100617528);
  if (v0)
  {

    if (qword_1005FFFD8 != -1)
    {
      swift_once();
    }

    v9 = sub_1004B80B4();
    sub_100007084(v9, static Logger.libraryMenu);
    swift_errorRetain();
    v10 = sub_1004B8094();
    v11 = sub_1004BC984();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *&v20 = v0;
      swift_errorRetain();
      sub_100003ABC(&qword_100604C30, &qword_1004C8490);
      sub_1004BBF04();
      v14 = sub_1004BBE24();

      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to migrate legacy library menu: %@", v12, 0xCu);
      sub_100007214(v13, &qword_100602710, &qword_1004CB540);
    }

    else
    {
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;

    NSUserDefaults.libraryMenuRevision.setter(v15, v16, v17, v18);
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v19[0]) = 0;
    NSUserDefaults.subscript.setter(&v20, v19, &_s9LegacyKeyON, v1, v2);
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v19[0]) = 1;
    NSUserDefaults.subscript.setter(&v20, v19, &_s9LegacyKeyON, v1, v2);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_100198AEC;
}

void sub_100198AEC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v4, v3, v5, v6);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v3, v5, v6);
  }

  free(v2);
}

uint64_t sub_100198BB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "loading";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "loading";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_100198C58()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100198CD4(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_100198D3C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100198DB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A57A0;
  v8._object = v3;
  v5 = sub_1004BD764(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100198E14(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "loading";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100198E50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.libraryMenu);
  sub_100007084(v2, static Logger.libraryMenu);
  return sub_1004B80A4();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1005FFFD8 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.libraryMenu);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_100600468 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (qword_100600418 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (qword_100600428 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (qword_100600470 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (qword_100600458 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (qword_100600460 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (qword_100600450 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (qword_100600438 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (qword_100600430 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (qword_100600478 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (qword_100600440 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (qword_100600448 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (qword_100600410 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_100199324(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1004BDBA4();
  ActionType.rawValue.getter(a2);
  sub_1004BBF84();

  v7 = sub_1004BDBF4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(a2) && v13 == v14)
      {
        break;
      }

      v16 = sub_1004BD9C4();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_10019EE4C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001994AC(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1004BDBA4();
  ApplicationCapabilities.Service.rawValue.getter();
  sub_1004BBF84();

  v5 = sub_1004BDBF4();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004FB9A0;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004FB9E0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004FBA00;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a2 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a2 == 9)
      {
        v16 = 0x80000001004FBA00;
      }

      if (a2 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004FB9E0;
      }

      v17 = 0x746963696C707865;
      if (a2 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a2 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a2 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a2 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004FB9A0;
      }

      if (a2)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a2)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = sub_1004BD9C4();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    sub_10019F034(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001998B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004BB214();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001A4478(&qword_100603EA8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v33 = a2;
  v11 = sub_1004BBCD4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1001A4478(&qword_100603EB0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = sub_1004BBD84();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10019F498(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100199B94(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v7 = sub_1004BDBF4();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1004BBE64();
      v13 = v12;
      if (v11 == sub_1004BBE64() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1004BD9C4();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_10019F73C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100199D40(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_1004BDBA4();
  v7 = a2 & 1;
  sub_1004BDBB4(v7);
  v8 = sub_1004BDBF4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10019F924(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100199E40(uint64_t *a1, uint64_t a2)
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

    v8 = sub_1004BD344();

    if (v8)
    {

      sub_1004B84F4();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1004BD334();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_10019EB30(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_10019DDBC(v17 + 1);
    }

    sub_10019ED64(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1004B84F4();
  sub_1001A4478(&qword_1006012E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = sub_1004BBCD4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_10019FA78(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1001A4478(&qword_1006012F0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((sub_1004BBD84() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_10019A0E0(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1004BDBA4();
  Library.Menu.Identifier.rawValue.getter(a2);
  sub_1004BBF84();

  v5 = sub_1004BDBF4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "orites";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = sub_1004BD9C4();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    sub_10019FC60(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10019A4FC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1004BDBA4();
  sub_1004BDBB4(a2);
  v6 = sub_1004BDBF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001A00CC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10019A5F4(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1004BDB94();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001A022C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10019A6D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004BDBA4();
  sub_1004BBF84();
  v8 = sub_1004BDBF4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004BD9C4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1001A034C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_10019A824()
{
  result = qword_100604F80;
  if (!qword_100604F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604F80);
  }

  return result;
}

unint64_t sub_10019A878()
{
  result = qword_100604F88;
  if (!qword_100604F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604F88);
  }

  return result;
}

id sub_10019A8CC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void sub_10019A8D8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_10019A8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10019A944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10019A9B4()
{

  return swift_deallocObject();
}

uint64_t sub_10019AA04()
{

  return swift_deallocObject();
}

uint64_t sub_10019AAC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10019AAD8()
{
  result = qword_100604F90;
  if (!qword_100604F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604F90);
  }

  return result;
}

void *sub_10019AB40()
{
  v1 = v0;
  v2 = sub_1004BB214();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_1006050F8, &qword_1004D16D8);
  v6 = *v0;
  v7 = sub_1004BD3B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

id sub_10019AD78()
{
  v1 = v0;
  sub_100003ABC(&qword_100605070, &qword_1004D1650);
  v2 = *v0;
  v3 = sub_1004BD3B4();
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

void *sub_10019AEC8()
{
  v1 = v0;
  sub_100003ABC(&qword_1006050F0, &qword_1004D16D0);
  v2 = *v0;
  v3 = sub_1004BD3B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_10019B008()
{
  v1 = v0;
  sub_100003ABC(&qword_1006012E0, &qword_1004C8110);
  v2 = *v0;
  v3 = sub_1004BD3B4();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_10019B16C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100003ABC(a1, a2);
  v4 = *v2;
  v5 = sub_1004BD3B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10019B29C()
{
  v1 = v0;
  sub_100003ABC(&qword_100605088, &unk_1004D1660);
  v2 = *v0;
  v3 = sub_1004BD3B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_10019B3DC()
{
  v1 = v0;
  sub_100003ABC(&qword_100605068, &unk_1004D1640);
  v2 = *v0;
  v3 = sub_1004BD3B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

uint64_t sub_10019B538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100601368, &qword_1004D16E0);
  result = sub_1004BD3C4();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004BDBA4();
      ActionType.rawValue.getter(v16);
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
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

uint64_t sub_10019B774(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100605078, &qword_1004D1658);
  result = sub_1004BD3C4();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1004BDBA4();
      sub_1004BBF84();

      result = sub_1004BDBF4();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10019BB20(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1004BB214();
  v3 = *(v33 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100003ABC(&qword_1006050F8, &qword_1004D16D8);
  v7 = sub_1004BD3C4();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1001A4478(&qword_100603EA8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      result = sub_1004BBCD4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10019BE3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_100605070, &qword_1004D1650);
  result = sub_1004BD3C4();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      sub_1004BBE64();
      sub_1004BDBA4();
      v18 = v17;
      sub_1004BBF84();
      v19 = sub_1004BDBF4();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_10019C090(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_1006050F0, &qword_1004D16D0);
  result = sub_1004BD3C4();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1004BDBA4();
      sub_1004BDBB4(v16);
      result = sub_1004BDBF4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
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

uint64_t sub_10019C2B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003ABC(&qword_1006012E0, &qword_1004C8110);
  result = sub_1004BD3C4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v26 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1004B84F4();
      sub_1001A4478(&qword_1006012E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      result = sub_1004BBCD4();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
      v10 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v26 = (v16 - 1) & v16;
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