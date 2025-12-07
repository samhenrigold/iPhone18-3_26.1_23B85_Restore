uint64_t sub_100642D6C()
{
  v2 = *v1;
  *(*v1 + 864) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100644B24;
  }

  else
  {
    v5 = sub_100642EA8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100642EA8()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v2 + 48))(v6, 1, v1);
  v8 = v0[51];
  v9 = v0[52];
  v10 = v0[49];
  v57 = v0[50];
  v12 = v0[47];
  v11 = v0[48];
  if (v7 != 1)
  {
    v18 = v0[45];
    v17 = v0[46];
    v19 = v0[44];
    (*(v18 + 32))(v17, v0[40], v19);
    v20 = Playlist.name.getter();
    v55 = v21;
    v56 = v20;
    v54 = Playlist.curatorName.getter();
    v22 = v9;
    v24 = v23;
    Playlist.artwork.getter();
    (*(v18 + 8))(v17, v19);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v22, v57);
    v25 = v0[80];
    v26 = v0[79];
    v27 = v0[26];
    v28 = v0[21];
    v29 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v27);

    if (v24)
    {
      v30 = v54;
    }

    else
    {
      v30 = 0;
    }

    *v27 = v56;
    v27[1] = v55;
    if (v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v27[2] = v30;
    v27[3] = v31;
    sub_100646F40(v25, v26);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      v32 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920, &qword_100EBCC50);

      sub_1000095E8(v32, &unk_101188920, &qword_100EBCC50);
      v34 = v0[25];
      v33 = v0[26];
      v35 = v0[24];
      v36 = v0[11];
      sub_100646FB0(v33, v36);
      (*(v34 + 56))(v36, 0, 1, v35);
      sub_100647014(v33);
      goto LABEL_11;
    }

    v39 = v0[26];
    v40 = v0[24];
    v41 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v45 = (v39 + *(v40 + 32));
    v46 = *v45;
    if ((*v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = v45[1];
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v47 > -9.22337204e18)
          {
            if (v47 < 9.22337204e18)
            {
              v48 = v46;
              v50 = v0[16];
              v49 = v0[17];
              v51 = v0[15];
              v52 = v47;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v50 + 104))(v49, enum case for Artwork.ImageFormat.jpeg(_:), v51);
              v53 = swift_task_alloc();
              v0[111] = v53;
              *v53 = v0;
              v53[1] = sub_100643BFC;
              v43 = v0[20];
              v44 = v0[17];
              v41 = v48;
              v42 = v52;

              return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
            }

LABEL_28:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  v13 = v0[40];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v9, v57);
  sub_1000095E8(v13, &unk_1011814D0, &qword_100EC12A0);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_11:

  v37 = v0[1];

  return v37();
}

uint64_t sub_1006434B4()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100644E94;
  }

  else
  {
    v5 = sub_1006435F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006435F0()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD9C(v6);
  (*(v4 + 8))(v3, v5);
  v7 = (*(v2 + 48))(v6, 1, v1);
  v8 = v0[38];
  v9 = v0[39];
  v10 = v0[36];
  v57 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  if (v7 != 1)
  {
    v18 = v0[32];
    v17 = v0[33];
    v19 = v0[31];
    (*(v18 + 32))(v17, v0[27], v19);
    v20 = Station.name.getter();
    v55 = v21;
    v56 = v20;
    v54 = Station.stationProviderName.getter();
    v22 = v9;
    v24 = v23;
    Station.artwork.getter();
    (*(v18 + 8))(v17, v19);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v22, v57);
    v25 = v0[80];
    v26 = v0[79];
    v27 = v0[26];
    v28 = v0[21];
    v29 = v0[22];
    GroupActivitiesManager.Activity.Metadata.init()(v27);

    if (v24)
    {
      v30 = v54;
    }

    else
    {
      v30 = 0;
    }

    *v27 = v56;
    v27[1] = v55;
    if (v24)
    {
      v31 = v24;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v27[2] = v30;
    v27[3] = v31;
    sub_100646F40(v25, v26);
    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      v32 = v0[79];
      sub_1000095E8(v0[80], &unk_101188920, &qword_100EBCC50);

      sub_1000095E8(v32, &unk_101188920, &qword_100EBCC50);
      v34 = v0[25];
      v33 = v0[26];
      v35 = v0[24];
      v36 = v0[11];
      sub_100646FB0(v33, v36);
      (*(v34 + 56))(v36, 0, 1, v35);
      sub_100647014(v33);
      goto LABEL_11;
    }

    v39 = v0[26];
    v40 = v0[24];
    v41 = (*(v0[22] + 32))(v0[23], v0[79], v0[21]);
    v45 = (v39 + *(v40 + 32));
    v46 = *v45;
    if ((*v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = v45[1];
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v47 > -9.22337204e18)
          {
            if (v47 < 9.22337204e18)
            {
              v48 = v46;
              v50 = v0[16];
              v49 = v0[17];
              v51 = v0[15];
              v52 = v47;
              static Artwork.CropStyle.sourceSize.getter();
              (*(v50 + 104))(v49, enum case for Artwork.ImageFormat.jpeg(_:), v51);
              v53 = swift_task_alloc();
              v0[111] = v53;
              *v53 = v0;
              v53[1] = sub_100643BFC;
              v43 = v0[20];
              v44 = v0[17];
              v41 = v48;
              v42 = v52;

              return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
            }

LABEL_28:
            __break(1u);
            return Artwork.image(width:height:cropStyle:format:)(v41, v42, v43, v44);
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[11];

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v9, v57);
  sub_1000095E8(v13, &unk_1011838C0, &qword_100EBD688);
  (*(v14 + 56))(v16, 1, 1, v15);
LABEL_11:

  v37 = v0[1];

  return v37();
}

uint64_t sub_100643BFC(uint64_t a1)
{
  v4 = *v2;
  v3 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 128);

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  v9 = v3[20];
  v10 = v3[18];
  v11 = v3[17];
  v12 = v3[15];
  if (v1)
  {

    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = v4[91];
    v14 = v4[90];
    v15 = sub_100645204;
  }

  else
  {
    v4[112] = a1;
    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = v4[91];
    v14 = v4[90];
    v15 = sub_100643E28;
  }

  return _swift_task_switch(v15, v14, v13);
}

uint64_t sub_100643E28()
{
  v1 = v0[112];
  v2 = v0[80];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  v7 = [v1 CGImage];

  (*(v5 + 8))(v4, v6);
  sub_1000095E8(v2, &unk_101188920, &qword_100EBCC50);

  *(v3 + 32) = v7;
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[11];
  sub_100646FB0(v8, v11);
  (*(v9 + 56))(v11, 0, 1, v10);
  sub_100647014(v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1006440E8()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_100644208, v3, v2);
}

uint64_t sub_100644208()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[11];

  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100644440()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[86];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for album=%{public}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70, &unk_100EC6540);
  }

  v13 = v0[101];
  v14 = v0[86];
  v15 = v0[81];
  v16 = v0[78];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v17 + 8))(v16, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1006447B4()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[85];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for song=%{public}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70, &unk_100EC6540);
  }

  v13 = v0[101];
  v14 = v0[85];
  v15 = v0[81];
  v16 = v0[65];
  v18 = v0[63];
  v17 = v0[64];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v17 + 8))(v16, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100644B24()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[84];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138477827;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for playlist=%{private}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70, &unk_100EC6540);
  }

  v13 = v0[101];
  v14 = v0[84];
  v15 = v0[81];
  v16 = v0[51];
  v17 = v0[52];
  v18 = v0[50];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v16 + 8))(v17, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100644E94()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[83];
  v4 = v0[81];
  v5 = v0[12];

  v1(v3, v2, v4);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138477827;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get metadata for station=%{private}@", v10, 0xCu);
    sub_1000095E8(v11, &unk_101183D70, &unk_100EC6540);
  }

  v13 = v0[101];
  v14 = v0[83];
  v15 = v0[81];
  v16 = v0[38];
  v17 = v0[39];
  v18 = v0[37];
  v19 = v0[25];
  v22 = v0[11];
  v23 = v0[24];

  v13(v14, v15);
  (*(v16 + 8))(v17, v18);
  (*(v19 + 56))(v22, 1, 1, v23);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100645204()
{
  v1 = v0[80];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  (*(v4 + 8))(v3, v5);
  sub_1000095E8(v1, &unk_101188920, &qword_100EBCC50);

  *(v2 + 32) = 0;
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[11];
  sub_100646FB0(v6, v9);
  (*(v7 + 56))(v9, 0, 1, v8);
  sub_100647014(v6);

  v10 = v0[1];

  return v10();
}

void sub_1006454A0(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&qword_10119A9C8, &qword_100ED9438);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10064710C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010B8518;
  v11 = _Block_copy(aBlock);

  [a2 performWithResponseHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100645650(id a1)
{
  if (a1)
  {
    v1 = [a1 results];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 firstItem];

      if (v3)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  sub_10010FC20(&qword_10119A9C8, &qword_100ED9438);
  return CheckedContinuation.resume(returning:)();
}

double sub_10064570C(__int128 *a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = &v27 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  sub_10053A574(a1, v31);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  sub_100344A84(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v6;
    v14 = v13;
    v27 = swift_slowAlloc();
    v30 = v27;
    *v14 = 136446210;
    v15 = a1[3];
    v31[2] = a1[2];
    v31[3] = v15;
    v32 = *(a1 + 8);
    v16 = a1[1];
    v31[0] = *a1;
    v31[1] = v16;
    sub_10053A574(a1, v29);
    v17 = String.init<A>(describing:)();
    v19 = v2;
    v20 = sub_1000105AC(v17, v18, &v30);

    *(v14 + 4) = v20;
    v2 = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "presentAlert called, with alert=%{public}s", v14, 0xCu);
    sub_10000959C(v27);

    (*(v7 + 8))(v9, v28);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  type metadata accessor for MainActor();
  sub_10053A574(a1, v31);

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = *a1;
  *(v23 + 56) = a1[1];
  v25 = a1[3];
  *(v23 + 72) = a1[2];
  *(v23 + 88) = v25;
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  *(v23 + 32) = v2;
  *(v23 + 104) = *(a1 + 8);
  *(v23 + 40) = v24;
  sub_1001F4CB8(0, 0, v5, &unk_100ED9388, v23);

  return result;
}

uint64_t sub_100645A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_100645AF0, v7, v6);
}

uint64_t sub_100645AF0()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = *(v2 + 32);
    if (v3 >= 0)
    {
      v4 = *(v2 + 32);
    }

    else
    {
      v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    }

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 248) = xmmword_100EBCEF0;
    v5 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    PresentationSource.init(viewController:position:)(v4, v0 + 208, v0 + 112);

    sub_10012B828(v0 + 112, v0 + 16);
    v6 = Alert.uiAlertController.getter();
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v6, 1, 1, 0, 0);

    sub_10012BA6C(v0 + 16);
    goto LABEL_6;
  }

  v9 = *(v1 + 24);
  *(v0 + 304) = v9;
  if (!v9)
  {

LABEL_6:
    v7 = *(v0 + 8);

    return v7();
  }

  v10 = swift_task_alloc();
  *(v0 + 312) = v10;
  *v10 = v0;
  v10[1] = sub_100645C84;
  v11 = *(v0 + 272);

  return PresentedViewState<A>.present(_:)(v11);
}

uint64_t sub_100645C84()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100645DA4, v3, v2);
}

uint64_t sub_100645DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100645E10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100645E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002F3F4;

  return sub_1006402A8(a1, a2, a3, a4);
}

uint64_t sub_100645F10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F6C0C;

  return sub_100646138();
}

uint64_t sub_100645FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001F6C0C;

  return sub_100646378();
}

uint64_t sub_10064609C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v0 = qword_101218AD8;
  v1 = qword_101218AD8;
  return v0;
}

id sub_1006460F8()
{
  v0 = [objc_opt_self() sharedApplication];

  return v0;
}

uint64_t sub_100646138()
{
  v1 = type metadata accessor for Logger();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100646228, v3, v2);
}

uint64_t sub_100646228()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  v4 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "PresentUpSell called", v7, 2u);
  }

  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 64);

  (*(v9 + 8))(v8, v10);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 56) = -3;
  static SubscriptionUpsellPresenter.present(for:)(v0 + 16);
  sub_100309980(v0 + 16);

  v11 = *(v0 + 8);

  return v11(1);
}

uint64_t sub_100646378()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v3;
  v0[9] = v2;

  return _swift_task_switch(sub_100646474, v3, v2);
}

uint64_t sub_100646474()
{
  type metadata accessor for AuthPresenter(0);
  v1 = swift_allocObject();
  *(v0 + 80) = v1;
  *(v0 + 104) = 0;
  Published.init(initialValue:)();
  *(v1 + OBJC_IVAR____TtC5Music13AuthPresenter_presentingViewController) = 0;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100646548;

  return sub_10071108C();
}

uint64_t sub_100646548(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  *(v4 + 96) = a1;
  *(v4 + 105) = a2;

  swift_setDeallocating();
  v6 = OBJC_IVAR____TtC5Music13AuthPresenter__isAuthenticating;
  v7 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  swift_deallocClassInstance();
  v8 = *(v3 + 72);
  v9 = *(v3 + 64);

  return _swift_task_switch(sub_100646728, v9, v8);
}

uint64_t sub_100646728()
{
  v33 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4 = Logger.groupActivities.unsafeMutableAddressor();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "requireAuthentification called", v8, 2u);
  }

  v9 = *(v0 + 105);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);

  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = *(v0 + 96);
  if (v9)
  {
    v5(*(v0 + 40), v4, *(v0 + 24));
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100646E74(v14, 1);
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 96);
    v19 = *(v0 + 40);
    v20 = *(v0 + 24);
    if (v17)
    {
      v31 = *(v0 + 40);
      v21 = swift_slowAlloc();
      v30 = v20;
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136446210;
      *(v0 + 16) = v14;
      swift_errorRetain();
      sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
      v23 = String.init<A>(describing:)();
      v25 = sub_1000105AC(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "requireAuthentification failed with error:%{public}s", v21, 0xCu);
      sub_10000959C(v22);

      sub_100646E74(v18, 1);
      v27 = v30;
      v26 = v31;
    }

    else
    {

      sub_100646E74(v18, 1);
      v26 = v19;
      v27 = v20;
    }

    v13(v26, v27);
    LOBYTE(v14) = 0;
  }

  v28 = *(v0 + 8);

  return v28(v14 & 1);
}

uint64_t sub_1006469EC(uint64_t a1)
{
  sub_10010FC20(&qword_10119A9B0, &qword_100ED9360);
  __chkstk_darwin();
  v31 = &v25 - v2;
  v3 = sub_10010FC20(&qword_10119A9B8, &qword_100ED9368);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.groupActivities.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  v14 = *(v4 + 16);
  v32 = a1;
  v14(v8, a1, v3);
  v15 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v15, v29);
  v30 = v14;
  if (v16)
  {
    v28 = v9;
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v17 = 136446210;
    v14(v6, v8, v3);
    v18 = (*(v4 + 88))(v6, v3);
    if (v18 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      v19 = 0xEB00000000646574;
      v20 = 0x6164696C61766E69;
    }

    else
    {
      if (v18 == enum case for GroupSession.State.waiting<A>(_:))
      {
        v19 = 0xE700000000000000;
        v21 = 0x676E6974696177;
        goto LABEL_10;
      }

      if (v18 == enum case for GroupSession.State.joined<A>(_:))
      {
        v19 = 0xE600000000000000;
        v21 = 0x64656E696F6ALL;
        goto LABEL_10;
      }

      v19 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    v26 = v20;
    (*(v4 + 8))(v6, v3);
    v21 = v26;
LABEL_10:
    (*(v4 + 8))(v8, v3);
    v22 = sub_1000105AC(v21, v19, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v29, "Session state changed: %{public}s", v17, 0xCu);
    sub_10000959C(v27);

    (*(v10 + 8))(v12, v28);
    goto LABEL_11;
  }

  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v12, v9);
LABEL_11:
  v23 = v31;
  v30(v31, v32, v3);
  (*(v4 + 56))(v23, 0, 1, v3);
  PassthroughSubject.send(_:)();
  return sub_1000095E8(v23, &qword_10119A9B0, &qword_100ED9360);
}

uint64_t sub_100646E74(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_100646E80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100645A58(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100646F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100646FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100647014(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100647070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006470B8()
{
  result = qword_101192200;
  if (!qword_101192200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101192200);
  }

  return result;
}

uint64_t sub_10064710C(void *a1)
{
  sub_10010FC20(&qword_10119A9C8, &qword_100ED9438);

  return sub_100645650(a1);
}

void *sub_100647198(unsigned __int8 a1, uint64_t a2)
{
  if (a1 < 2u)
  {
    return &off_101099598;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = (a2 + 32);
  v2 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *v4++;
    v7 = v8;
    if (v8 < 4 || v7 == 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10066C900(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10066C900((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v7;
    }

    --v3;
  }

  while (v3);
  return v2;
}

id sub_100647294(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      return 0;
    }

    if (a1 == 3)
    {
      v2 = MCDRadioMusicKitTableViewController;
    }

    else
    {
      v2 = MCDPlaylistsViewController;
    }
  }

  else
  {
    if (!a1)
    {
      v4 = type metadata accessor for CarPlayLibraryViewController();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource] = 0;
      v5[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded] = 0;
      v14.receiver = v5;
      v14.super_class = v4;
      v3 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
      v6 = String._bridgeToObjectiveC()();
      [v3 setPlayActivityFeatureName:v6];

      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v2 = MCDForYouTableViewController;
    }

    else
    {
      v2 = MCDBrowseTableViewController;
    }
  }

  v3 = [objc_allocWithZone(v2) init];
LABEL_13:
  v7 = v3;
  sub_100035AC8(a1);
  v8 = String._bridgeToObjectiveC()();

  [v7 setTitle:v8];

  v9 = [v7 tabBarItem];
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();

    v12 = [objc_opt_self() _systemImageNamed:v11];

    [v10 setImage:v12];
  }

  return v3;
}

void sub_100647604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC5Music15CarPlayObserver_playerState);
  *(v2 + OBJC_IVAR____TtC5Music15CarPlayObserver_playerState) = a1;
  if (v8 != a1)
  {
    v9 = [objc_opt_self() defaultCenter];
    String._bridgeToObjectiveC()();
    memset(v11, 0, sizeof(v11));
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    [v9 postNotification:isa];
  }
}

id sub_10064782C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter(&v8);

  v6 = v8;

  return v6;
}

uint64_t sub_1006478E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  v8 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_100647950(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return static Published.subscript.setter();
}

id sub_1006479C0()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayObserver(0)) init];
  qword_101219150 = result;
  return result;
}

char *sub_100647A50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v205 = sub_10010FC20(&qword_10119AA78, &qword_100ED94F8);
  v204 = *(v205 - 8);
  __chkstk_darwin();
  v202 = &v134 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = &v134 - v3;
  v195 = sub_10010FC20(&qword_10119AA80, &qword_100ED9500);
  v194 = *(v195 - 8);
  __chkstk_darwin();
  v193 = &v134 - v4;
  v198 = sub_10010FC20(&qword_10119AA88, &qword_100ED9508);
  v197 = *(v198 - 8);
  __chkstk_darwin();
  v196 = &v134 - v5;
  v201 = sub_10010FC20(&qword_10119AA90, &qword_100ED9510);
  v200 = *(v201 - 8);
  __chkstk_darwin();
  v199 = &v134 - v6;
  v192 = sub_10010FC20(&qword_10119AA98, &qword_100ED9518);
  v191 = *(v192 - 8);
  __chkstk_darwin();
  v189 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v134 - v8;
  v181 = sub_10010FC20(&qword_10119AAA0, &qword_100ED9520);
  v179 = *(v181 - 8);
  __chkstk_darwin();
  v177 = &v134 - v9;
  v182 = sub_10010FC20(&qword_10119AAA8, &qword_100ED9528);
  v180 = *(v182 - 8);
  __chkstk_darwin();
  v178 = &v134 - v10;
  v185 = sub_10010FC20(&qword_10119AAB0, &qword_100ED9530);
  v184 = *(v185 - 8);
  __chkstk_darwin();
  v183 = &v134 - v11;
  v188 = sub_10010FC20(&qword_10119AAB8, &qword_100ED9538);
  v187 = *(v188 - 8);
  __chkstk_darwin();
  v186 = &v134 - v12;
  v175 = sub_10010FC20(&qword_10119AAC0, &qword_100ED9540);
  v174 = *(v175 - 8);
  __chkstk_darwin();
  v172 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v134 - v14;
  v15 = sub_10010FC20(&qword_10119AAC8, &qword_100ED9548);
  v16 = *(v15 - 8);
  v210 = v15;
  v211 = v16;
  __chkstk_darwin();
  v209 = &v134 - v17;
  v164 = sub_10010FC20(&qword_10119AAD0, &qword_100ED9550);
  v163 = *(v164 - 8);
  __chkstk_darwin();
  v162 = &v134 - v18;
  v167 = sub_10010FC20(&qword_10119AAD8, &qword_100ED9558);
  v166 = *(v167 - 8);
  __chkstk_darwin();
  v165 = &v134 - v19;
  v170 = sub_10010FC20(&qword_10119AAE0, &qword_100ED9560);
  v169 = *(v170 - 8);
  __chkstk_darwin();
  v168 = &v134 - v20;
  v206 = sub_10010FC20(&qword_10119AAE8, &qword_100ED9568);
  v161 = *(v206 - 1);
  __chkstk_darwin();
  v158 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v134 - v22;
  v149 = sub_10010FC20(&qword_10119AAF0, &qword_100ED9570);
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v145 = &v134 - v23;
  v151 = sub_10010FC20(&qword_10119AAF8, &qword_100ED9578);
  v148 = *(v151 - 8);
  __chkstk_darwin();
  v146 = &v134 - v24;
  v154 = sub_10010FC20(&qword_10119AB00, &qword_100ED9580);
  v153 = *(v154 - 8);
  __chkstk_darwin();
  v152 = &v134 - v25;
  v157 = sub_10010FC20(&qword_10119AB08, &qword_100ED9588);
  v156 = *(v157 - 8);
  __chkstk_darwin();
  v155 = &v134 - v26;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v176 = &v134 - v27;
  v28 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v29 = *(v28 - 8);
  v224 = v28;
  v225 = v29;
  __chkstk_darwin();
  v171 = &v134 - v30;
  v31 = sub_10010FC20(&qword_10119AB10, &qword_100ED9590);
  v217 = *(v31 - 8);
  v218 = v31;
  __chkstk_darwin();
  v212 = &v134 - v32;
  v33 = sub_10010FC20(&qword_10119AB18, &qword_100ED9598);
  v219 = *(v33 - 8);
  v220 = v33;
  __chkstk_darwin();
  v216 = &v134 - v34;
  v215 = sub_10010FC20(&qword_10119AB20, &qword_100ED95A0);
  v138 = *(v215 - 1);
  __chkstk_darwin();
  v137 = &v134 - v35;
  v141 = sub_10010FC20(&qword_10119AB28, &qword_100ED95A8);
  v140 = *(v141 - 8);
  __chkstk_darwin();
  v139 = &v134 - v36;
  v208 = sub_10010FC20(&qword_10119AB30, &qword_100ED95B0);
  v222 = *(v208 - 8);
  __chkstk_darwin();
  v221 = &v134 - v37;
  v207 = sub_10010FC20(&qword_10119AB38, &qword_100ED95B8);
  v38 = *(v207 - 8);
  __chkstk_darwin();
  v40 = &v134 - v39;
  v41 = sub_10010FC20(&qword_10119AB40, &qword_100ED95C0);
  v42 = *(v41 - 8);
  __chkstk_darwin();
  v44 = &v134 - v43;
  v45 = sub_10010FC20(&qword_10119AB48, &unk_100ED95C8);
  v46 = *(v45 - 8);
  __chkstk_darwin();
  v48 = &v134 - v47;
  *&v1[OBJC_IVAR____TtC5Music15CarPlayObserver_playerState] = 0;
  v49 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingSong;
  v226 = 0;
  v136 = sub_10010FC20(&qword_10119AA40, &qword_100ED94D8);
  Published.init(initialValue:)();
  v50 = *(v46 + 32);
  v143 = v45;
  v50(&v1[v49], v48, v45);
  v51 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingPlaylist;
  v226 = 0;
  v142 = sub_10010FC20(&qword_10119AA50, &qword_100ED94E0);
  Published.init(initialValue:)();
  v52 = *(v42 + 32);
  v144 = v41;
  v52(&v1[v51], v44, v41);
  v53 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingPlaylistEntry;
  v226 = 0;
  v150 = sub_10010FC20(&qword_10119AA60, &qword_100ED94E8);
  Published.init(initialValue:)();
  (*(v38 + 32))(&v1[v53], v40, v207);
  v54 = OBJC_IVAR____TtC5Music15CarPlayObserver__currentPlayingRadioStation;
  v226 = 0;
  v55 = sub_10010FC20(&qword_10119AA70, &qword_100ED94F0);
  v56 = v221;
  v160 = v55;
  Published.init(initialValue:)();
  (*(v222 + 32))(&v1[v54], v56, v208);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v57 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC5Music15CarPlayObserver_subscriptions] = v57;
  v227.receiver = v1;
  v227.super_class = ObjectType;
  v58 = objc_msgSendSuper2(&v227, "init");
  v59 = qword_10117F5F8;
  v60 = v58;
  if (v59 != -1)
  {
    swift_once();
  }

  v213 = qword_101218AC8;
  v61 = (*qword_101218AC8 + 456);
  ObjectType = *v61;
  v214 = v61;
  v62 = v171;
  (ObjectType)();
  swift_getKeyPath();
  v222 = sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  v63 = v212;
  v64 = v224;
  Publisher.map<A>(_:)();

  v65 = *(v225 + 8);
  v225 += 8;
  v221 = v65;
  (v65)(v62, v64);
  v226 = 0;
  type metadata accessor for MPCPlayerState(0);
  v135 = &protocol conformance descriptor for Publishers.MapKeyPath<A, B>;
  sub_100020674(&qword_10119AB50, &qword_10119AB10, &qword_100ED9590, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  v66 = v216;
  v67 = v218;
  Publisher.replaceNil<A>(with:)();
  (*(v217 + 1))(v63, v67);
  sub_100020674(&qword_10119AB58, &qword_10119AB18, &qword_100ED9598, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10064A9E0();
  v68 = v137;
  v69 = v220;
  Publisher<>.removeDuplicates()();
  (*(v219 + 8))(v66, v69);
  v212 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v70 = static OS_dispatch_queue.main.getter();
  v226 = v70;
  v219 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v71 = *(v219 - 8);
  v218 = *(v71 + 56);
  v220 = v71 + 56;
  v72 = v176;
  v218(v176, 1, 1, v219);
  v217 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100020674(&qword_10119AB68, &qword_10119AB20, &qword_100ED95A0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v216 = sub_10001C070(&qword_101184920, &qword_101182960, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v73 = v139;
  v74 = v215;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v72);

  (*(v138 + 8))(v68, v74);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v215 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100020674(&qword_10119AB70, &qword_10119AB28, &qword_100ED95A8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v75 = v141;
  Publisher<>.sink(receiveValue:)();

  (*(v140 + 8))(v73, v75);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (ObjectType)(v76);
  swift_getKeyPath();
  v77 = v145;
  v78 = v224;
  Publisher.map<A>(_:)();

  (v221)(v62, v78);
  sub_100020674(&qword_10119AB78, &qword_10119AAF0, &qword_100ED9570, v135);
  v79 = v146;
  v80 = v149;
  Publisher.map<A>(_:)();
  (*(v147 + 8))(v77, v80);
  sub_100020674(&qword_10119AB80, &qword_10119AAF8, &qword_100ED9578, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10064AA40();
  v81 = v152;
  v82 = v151;
  Publisher<>.removeDuplicates()();
  (*(v148 + 8))(v79, v82);
  v83 = static OS_dispatch_queue.main.getter();
  v226 = v83;
  v218(v72, 1, 1, v219);
  sub_100020674(&qword_10119AB98, &qword_10119AB00, &qword_100ED9580, v217);
  v84 = v155;
  v85 = v154;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v72);

  (*(v153 + 8))(v81, v85);
  swift_beginAccess();
  v86 = v159;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119ABA0, &qword_10119AB08, &qword_100ED9588, v215);
  v87 = v157;
  Publisher<>.assign(to:)();
  (*(v156 + 8))(v84, v87);
  v88 = v161;
  v89 = v206;
  (*(v161 + 16))(v158, v86, v206);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v90 = (*(v88 + 8))(v86, v89);
  (ObjectType)(v90);
  v161 = sub_100009F78(0, &qword_10119ABA8, MPCPlayerResponseTracklist_ptr);
  v91 = v209;
  v92 = v224;
  Publisher.compactMap<A>(_:)();
  (v221)(v62, v92);
  v93 = v162;
  v94 = v210;
  Publishers.CompactMap.map<A>(_:)();
  v95 = *(v211 + 8);
  v211 += 8;
  v159 = v95;
  (v95)(v91, v94);
  v206 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_100020674(&qword_10119ABB0, &qword_10119AAD0, &qword_100ED9550, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_10064AAF0();
  v96 = v165;
  v97 = v164;
  Publisher<>.removeDuplicates()();
  (*(v163 + 8))(v93, v97);
  v98 = static OS_dispatch_queue.main.getter();
  v226 = v98;
  v218(v72, 1, 1, v219);
  sub_100020674(&qword_10119ABC8, &qword_10119AAD8, &qword_100ED9558, v217);
  v99 = v168;
  v100 = v167;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v72);

  (*(v166 + 8))(v96, v100);
  swift_beginAccess();
  v101 = v173;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119ABD0, &qword_10119AAE0, &qword_100ED9560, v215);
  v102 = v170;
  Publisher<>.assign(to:)();
  (*(v169 + 8))(v99, v102);
  v103 = v174;
  v104 = v175;
  (*(v174 + 16))(v172, v101, v175);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v105 = (*(v103 + 8))(v101, v104);
  (ObjectType)(v105);
  sub_100009F78(0, &qword_10118A258, MPModelGenericObject_ptr);
  v106 = v177;
  v107 = v224;
  Publisher.compactMap<A>(_:)();
  (v221)(v62, v107);
  v108 = v178;
  v109 = v181;
  Publishers.CompactMap.map<A>(_:)();
  (*(v179 + 8))(v106, v109);
  sub_100020674(&qword_10119ABD8, &qword_10119AAA8, &qword_100ED9528, v206);
  sub_10064ABA0();
  v110 = v183;
  v111 = v182;
  Publisher<>.removeDuplicates()();
  (*(v180 + 8))(v108, v111);
  v112 = static OS_dispatch_queue.main.getter();
  v226 = v112;
  v218(v72, 1, 1, v219);
  sub_100020674(&qword_10119ABF0, &qword_10119AAB0, &qword_100ED9530, v217);
  v113 = v186;
  v114 = v185;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v72);

  (*(v184 + 8))(v110, v114);
  swift_beginAccess();
  v115 = v190;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119ABF8, &qword_10119AAB8, &qword_100ED9538, v215);
  v116 = v188;
  Publisher<>.assign(to:)();
  (*(v187 + 8))(v113, v116);
  v117 = v191;
  v118 = v192;
  (*(v191 + 16))(v189, v115, v192);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  v119 = (*(v117 + 8))(v115, v118);
  (ObjectType)(v119);
  v120 = v209;
  v121 = v224;
  Publisher.compactMap<A>(_:)();
  (v221)(v62, v121);
  v122 = v193;
  v123 = v210;
  Publishers.CompactMap.map<A>(_:)();
  (v159)(v120, v123);
  sub_100020674(&qword_10119AC00, &qword_10119AA80, &qword_100ED9500, v206);
  sub_10064AC50();
  v124 = v196;
  v125 = v195;
  Publisher<>.removeDuplicates()();
  (*(v194 + 8))(v122, v125);
  v126 = static OS_dispatch_queue.main.getter();
  v226 = v126;
  v218(v72, 1, 1, v219);
  sub_100020674(&qword_10119AC20, &qword_10119AA88, &qword_100ED9508, v217);
  v127 = v199;
  v128 = v198;
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v72);

  (*(v197 + 8))(v124, v128);
  swift_beginAccess();
  v129 = v203;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_10119AC28, &qword_10119AA90, &qword_100ED9510, v215);
  v130 = v201;
  Publisher<>.assign(to:)();
  (*(v200 + 8))(v127, v130);
  v131 = v204;
  v132 = v205;
  (*(v204 + 16))(v202, v129, v205);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();

  (*(v131 + 8))(v129, v132);
  return v60;
}

void sub_100649DE0(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[OBJC_IVAR____TtC5Music15CarPlayObserver_playerState];
    *&Strong[OBJC_IVAR____TtC5Music15CarPlayObserver_playerState] = v7;
    if (v7 != v9)
    {
      v10 = Strong;
      v11 = [objc_opt_self() defaultCenter];
      String._bridgeToObjectiveC()();
      memset(v13, 0, sizeof(v13));
      Notification.init(name:object:userInfo:)();
      isa = Notification._bridgeToObjectiveC()().super.isa;
      (*(v4 + 8))(v6, v3);
      [v11 postNotification:isa];

      Strong = v10;
    }
  }
}

void sub_100649F74(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 tracklist];
  v4 = [v3 playingItem];

  if (v4)
  {
    v5 = [v4 metadataObject];

    if (v5)
    {
      v4 = [v5 innermostModelObject];
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

id sub_10064A028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v4 = result;
  if (result && (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    *a2 = result;

    return v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_10064A0A4(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v18 - v9;
  v11 = *a1;
  v12 = [v11 playingItemIndexPath];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v10, v7, v4);
  v14 = [v11 items];
  v15 = [v14 sectionAtIndex:IndexPath.section.getter()];

  v16 = [v15 metadataObject];
  if (!v16)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  if ([v16 type] != 4)
  {
    (*(v5 + 8))(v10, v4);

    goto LABEL_7;
  }

  v17 = [v16 playlist];

  (*(v5 + 8))(v10, v4);
LABEL_8:
  *a2 = v17;
}

void sub_10064A2C8(id *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = [v3 tracklist];
    v5 = [v4 playingItem];
    v6 = [v5 metadataObject];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

id sub_10064A370@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 type] == 5)
  {
    result = [v3 playlistEntry];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

id sub_10064A3D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result tracklist];
  }

  *a2 = result;
  return result;
}

void sub_10064A410(void **a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v18 - v9;
  v11 = *a1;
  v12 = [v11 playingItemIndexPath];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v10, v7, v4);
  v14 = [v11 items];
  v15 = [v14 sectionAtIndex:IndexPath.section.getter()];

  v16 = [v15 metadataObject];
  if (!v16)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  if ([v16 type] != 13)
  {
    (*(v5 + 8))(v10, v4);

    goto LABEL_7;
  }

  v17 = [v16 radioStation];

  (*(v5 + 8))(v10, v4);
LABEL_8:
  *a2 = v17;
}

uint64_t type metadata accessor for CarPlayObserver(uint64_t a1)
{
  result = qword_10119AA28;
  if (!qword_10119AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064A818(uint64_t a1)
{
  sub_1000054CC(319, &qword_10119AA38, &qword_10119AA40, &qword_100ED94D8);
  if (v1 <= 0x3F)
  {
    sub_1000054CC(319, &qword_10119AA48, &qword_10119AA50, &qword_100ED94E0);
    if (v2 <= 0x3F)
    {
      sub_1000054CC(319, &qword_10119AA58, &qword_10119AA60, &qword_100ED94E8);
      if (v3 <= 0x3F)
      {
        sub_1000054CC(319, &qword_10119AA68, &qword_10119AA70, &qword_100ED94F0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_10064A9E0()
{
  result = qword_10119AB60;
  if (!qword_10119AB60)
  {
    type metadata accessor for MPCPlayerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119AB60);
  }

  return result;
}

unint64_t sub_10064AA40()
{
  result = qword_10119AB88;
  if (!qword_10119AB88)
  {
    sub_1001109D0(&qword_10119AA40, &qword_100ED94D8);
    sub_10001C070(&qword_10119AB90, &qword_101183A28, MPModelSong_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119AB88);
  }

  return result;
}

unint64_t sub_10064AAF0()
{
  result = qword_10119ABB8;
  if (!qword_10119ABB8)
  {
    sub_1001109D0(&qword_10119AA50, &qword_100ED94E0);
    sub_10001C070(&qword_10119ABC0, &unk_10118A270, MPModelPlaylist_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119ABB8);
  }

  return result;
}

unint64_t sub_10064ABA0()
{
  result = qword_10119ABE0;
  if (!qword_10119ABE0)
  {
    sub_1001109D0(&qword_10119AA60, &qword_100ED94E8);
    sub_10001C070(&qword_10119ABE8, qword_101186D10, MPModelPlaylistEntry_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119ABE0);
  }

  return result;
}

unint64_t sub_10064AC50()
{
  result = qword_10119AC08;
  if (!qword_10119AC08)
  {
    sub_1001109D0(&qword_10119AA70, &qword_100ED94F0);
    sub_10001C070(&qword_10119AC10, &qword_10119AC18, MPModelRadioStation_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119AC08);
  }

  return result;
}

uint64_t static Logger.musicCarPlay(_:)(uint64_t a1, uint64_t a2)
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10064AD94(uint64_t a1)
{
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_101192950, &unk_100EBDF40);
  v6 = sub_10064BF90(v4, a1);
  sub_1000095E8(v4, &unk_101192950, &unk_100EBDF40);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v4, &unk_101192950, &unk_100EBDF40);
    swift_beginAccess();
    sub_10006B010(v4, v1 + v5, &unk_101192950, &unk_100EBDF40);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101192950, &unk_100EBDF40);
}

uint64_t sub_10064AFC0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v12 + v10, a5, a3, a4);
}

uint64_t sub_10064B0A0(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &unk_101188920, &qword_100EBCC50);
  v6 = sub_10064C2B0(v4, a1);
  sub_1000095E8(v4, &unk_101188920, &qword_100EBCC50);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v4, &unk_101188920, &qword_100EBCC50);
    swift_beginAccess();
    sub_10006B010(v4, v1 + v5, &unk_101188920, &qword_100EBCC50);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101188920, &qword_100EBCC50);
}

double sub_10064B308(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_10064B3D0(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(v4 + *a1) == a4)
  {
    *(v4 + *a1) = a4;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10064B4EC()
{
  swift_getKeyPath();
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);

  return v1;
}

void sub_10064B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_10064B5F0()
{
  swift_getKeyPath();
  sub_10064C638(&qword_101194F28, _s13ConfigurationCMa_0, &unk_100ED97A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  sub_100030444(v1, *(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged + 8));
  return v1;
}

uint64_t sub_10064B6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  v4 = *(a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
  v5 = *(a1 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_100030444(a2, a3);
  return sub_100020438(v4, v5);
}

uint64_t sub_10064B708(uint64_t a1)
{
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v3 = &v28[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v28[-1] - v4;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v28[-1] - v8;
  sub_1000089F8(a1, v28, &unk_101192850, &qword_100EE4C90);
  v10 = v29;
  if (v29)
  {
    v11 = v30;
    sub_10000954C(v28, v29);
    (*(*(v11 + 8) + 8))(v10);
    sub_10000959C(v28);
  }

  else
  {
    sub_1000095E8(v28, &unk_101192850, &qword_100EE4C90);
    v12 = type metadata accessor for VideoArtwork();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  sub_10064AD94(v9);
  sub_1000089F8(a1, v28, &unk_101192850, &qword_100EE4C90);
  v13 = v29;
  if (v29)
  {
    v14 = v30;
    sub_10000954C(v28, v29);
    (*(*(v14 + 16) + 8))(v13);
    sub_10000959C(v28);
    v15 = type metadata accessor for Artwork();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v3, 1, v15) != 1)
    {
      (*(v16 + 32))(v5, v3, v15);
      (*(v16 + 56))(v5, 0, 1, v15);
      return sub_10064B0A0(v5);
    }
  }

  else
  {
    sub_1000095E8(v28, &unk_101192850, &qword_100EE4C90);
    v17 = type metadata accessor for Artwork();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  }

  sub_1000089F8(a1, v28, &unk_101192850, &qword_100EE4C90);
  v18 = v29;
  if (!v29)
  {
    v22 = &unk_101192850;
    v23 = &qword_100EE4C90;
    v24 = v28;
    goto LABEL_12;
  }

  v19 = v30;
  sub_10000954C(v28, v29);
  (*(*(v19 + 8) + 8))(v18);
  v20 = type metadata accessor for VideoArtwork();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    sub_10000959C(v28);
    v22 = &unk_101192950;
    v23 = &unk_100EBDF40;
    v24 = v7;
LABEL_12:
    sub_1000095E8(v24, v22, v23);
    v25 = type metadata accessor for Artwork();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    goto LABEL_14;
  }

  VideoArtwork.previewFrame.getter();
  (*(v21 + 8))(v7, v20);
  v25 = type metadata accessor for Artwork();
  (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
  sub_10000959C(v28);
LABEL_14:
  type metadata accessor for Artwork();
  if ((*(*(v25 - 8) + 48))(v3, 1, v25) != 1)
  {
    sub_1000095E8(v3, &unk_101188920, &qword_100EBCC50);
  }

  return sub_10064B0A0(v5);
}

uint64_t sub_10064BC54()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork, &unk_101192950, &unk_100EBDF40);
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork, &unk_101188920, &qword_100EBCC50);

  sub_100020438(*(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged), *(v0 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged + 8));
  v1 = OBJC_IVAR____TtCV5Music4Uber13Configuration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s13ConfigurationCMa_0(uint64_t a1)
{
  result = qword_10119AC90;
  if (!qword_10119AC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064BDAC(uint64_t a1)
{
  sub_10064BF0C(319, &qword_101182200, &type metadata accessor for VideoArtwork);
  if (v1 <= 0x3F)
  {
    sub_10064BF0C(319, &qword_1011A4570, &type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10064BF0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_10064BF60()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = result;
  return result;
}

double sub_10064BF78()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = result;
  return result;
}

uint64_t sub_10064BF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoArtwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_10010FC20(&unk_101189E40, &unk_100ED6620);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v19 - v10, &unk_101192950, &unk_100EBDF40);
  sub_1000089F8(a2, &v11[v13], &unk_101192950, &unk_100EBDF40);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000089F8(v11, v9, &unk_101192950, &unk_100EBDF40);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_10064C638(&qword_101186E80, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_1000095E8(v11, &unk_101192950, &unk_100EBDF40);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &unk_101189E40, &unk_100ED6620);
    v15 = 1;
    return v15 & 1;
  }

  sub_1000095E8(v11, &unk_101192950, &unk_100EBDF40);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_10064C2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v19 - v10, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(a2, &v11[v13], &unk_101188920, &qword_100EBCC50);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000089F8(v11, v9, &unk_101188920, &qword_100EBCC50);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_10064C638(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &unk_101191420, &unk_100EC9120);
    v15 = 1;
    return v15 & 1;
  }

  sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_10064C638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_10064C680(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10064C7C0(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_10064C8DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10064E7B4(*a1);
  *a2 = result;
  return result;
}

void sub_10064C90C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x736B636950706F74;
  v5 = 0xEB00000000736573;
  v6 = 0x61656C655277656ELL;
  v7 = 0xEE00756F59726F46;
  v8 = 0x736E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000100E3C9C0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000756FLL;
  v10 = 0x59726F466564616DLL;
  if (v2 != 1)
  {
    v10 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10064CAB0()
{
  if (qword_10117FA50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for WidgetMusicRecommendation(0);
  v2 = sub_1000060E4(v1, qword_101219158);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v3 = v1[5];
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  v6 = (v2 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *v4 == *v6 && v5 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = (v0 + v9);
  v11 = *(v0 + v9 + 8);
  v12 = (v2 + v9);
  v13 = v12[1];
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = *v10 == *v12 && v11 == v13;
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v15 = v1[7];
  v16 = *(v0 + v15);
  v17 = *(v2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v17 == 6 || (sub_1006B9B20(v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v1[8];
  v19 = *(v0 + v18);
  v20 = *(v2 + v18);

  return sub_10047C594(v19, v20);
}

unint64_t sub_10064CC18()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0xD00000000000001ALL;
  v31 = 0x8000000100E52EB0;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v29, "fetchDate: ");
  BYTE5(v29._object) = 0;
  HIWORD(v29._object) = -5120;
  sub_10064E9A4(&qword_10118F100, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 2108450;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  String.append(_:)(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v29._countAndFlagsBits = 0x617A696C61636F6CLL;
  v29._object = 0xEF22203A6E6F6974;
  v7 = type metadata accessor for WidgetMusicRecommendation(0);
  v8 = (v0 + v7[5]);
  v9 = v8[1];
  v27 = *v8;
  v28 = v9;

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 2108450;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  String.append(_:)(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x8000000100E52ED0;
  if ((sub_10064CAB0() & 1) == 0)
  {
    if (qword_10117F570 != -1)
    {
      swift_once();
    }

    if (qword_101218A18)
    {
      sub_100311F3C();
    }
  }

  Date.addingTimeInterval(_:)();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  (*(v2 + 8))(v4, v1);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 2108450;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  String.append(_:)(v29);

  strcpy(&v29, "title: ");
  BYTE1(v29._object) = 0;
  WORD1(v29._object) = 0;
  HIDWORD(v29._object) = -402653184;
  v17 = (v0 + v7[6]);
  v18 = v17[1];
  v27 = *v17;
  v28 = v18;

  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2108450;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  String.append(_:)(v29);

  strcpy(&v29, "kind: ");
  v29._object = 0xE700000000000000;
  LOBYTE(v27) = *(v0 + v7[7]);
  sub_10010FC20(&qword_10119B140, &qword_100ED9B30);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 2108450;
  v22._object = 0xE300000000000000;
  String.append(_:)(v22);
  String.append(_:)(v29);

  strcpy(&v29, "items: ");
  BYTE1(v29._object) = 0;
  WORD1(v29._object) = 0;
  HIDWORD(v29._object) = -402653184;
  type metadata accessor for WidgetMusicItem(0);
  v23._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 2108450;
  v24._object = 0xE300000000000000;
  String.append(_:)(v24);
  String.append(_:)(v29);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return v30;
}

uint64_t sub_10064D110()
{
  v0 = type metadata accessor for WidgetMusicItem(0);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetMusicRecommendation(0);
  sub_100006080(v7, qword_101219158);
  v8 = sub_1000060E4(v7, qword_101219158);
  static Date.now.getter();
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 preferredLocalizations];

  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v11[2])
  {
    v12 = v11[4];
    v25 = v11[5];
    v26 = v12;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (qword_10117FB18 != -1)
  {
    swift_once();
  }

  v13 = *algn_1012192B8;
  v24 = qword_1012192B0;
  v14 = qword_10117F6F0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1000060E4(v0, qword_101218C90);
  sub_10064E9EC(v15, v3, type metadata accessor for WidgetMusicItem);
  v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v16 + 16) = 8;
  v17 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  sub_10064E9EC(v3, v17, type metadata accessor for WidgetMusicItem);
  v18 = *(v1 + 72);
  sub_10064E9EC(v3, v17 + v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 2 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 3 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 4 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 5 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064E9EC(v3, v17 + 6 * v18, type metadata accessor for WidgetMusicItem);
  sub_10064EA54(v3, v17 - v18 + 8 * v18);
  result = (*(v27 + 32))(v8, v6, v28);
  v20 = (v8 + v7[5]);
  v21 = v25;
  *v20 = v26;
  v20[1] = v21;
  v22 = (v8 + v7[6]);
  *v22 = v24;
  v22[1] = v13;
  *(v8 + v7[7]) = 6;
  *(v8 + v7[8]) = v16;
  return result;
}

uint64_t sub_10064D4A4(void *a1)
{
  v3 = v1;
  v5 = sub_10010FC20(&qword_10119B0F8, &unk_100ED9B10);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  sub_10000954C(a1, a1[3]);
  sub_10064E5B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  type metadata accessor for Date();
  sub_10064E9A4(&qword_10118F0E8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for WidgetMusicRecommendation(0);
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + *(v9 + 28));
    v13 = 3;
    sub_10064E60C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_10010FC20(&qword_10119B110, &qword_100EDF680);
    sub_10064E8A8(&qword_10119B118, &qword_10118EEB8, &unk_100ECC6F4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10064D768(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for Date();
  v23 = *(v4 - 8);
  __chkstk_darwin();
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10119B128, &unk_100ED9B20);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000954C(a1, a1[3]);
  sub_10064E5B8();
  v27 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
  }

  else
  {
    v12 = v23;
    v34 = 0;
    sub_10064E9A4(&qword_10118F0D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v13 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 32))(v11, v13, v4);
    v33 = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = &v11[v9[5]];
    *v15 = v14;
    v15[1] = v16;
    v32 = 2;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v25;
    v19 = &v11[v9[6]];
    *v19 = v17;
    v19[1] = v20;
    v30 = 3;
    sub_10064E854();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11[v9[7]] = v31;
    sub_10010FC20(&qword_10119B110, &qword_100EDF680);
    v29 = 4;
    sub_10064E8A8(&qword_10119B138, &qword_10118EEB0, &unk_100ECC71C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v27, v26);
    *&v11[v9[8]] = v28;
    sub_10064E9EC(v11, v22, type metadata accessor for WidgetMusicRecommendation);
    sub_10000959C(a1);
    sub_10064E944(v11, type metadata accessor for WidgetMusicRecommendation);
  }
}

uint64_t sub_10064DC4C()
{
  v1 = *v0;
  v2 = 0x7461446863746566;
  v3 = 0x656C746974;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617A696C61636F6CLL;
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

uint64_t sub_10064DCE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10064EBD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10064DD18(uint64_t a1)
{
  v2 = sub_10064E5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10064DD54(uint64_t a1)
{
  v2 = sub_10064E5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10064DDC8()
{
  type metadata accessor for RecommendationsWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10064DE08();
  qword_101219170 = result;
  return result;
}

id sub_10064DE08()
{
  v1 = v0;
  v2 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10050352C(0x6E656D6D6F636552, 0xEF736E6F69746164, v0 + OBJC_IVAR____TtC5Music33RecommendationsWidgetDataProvider_cache);
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2, v6);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v7 = [objc_opt_self() processInfo];
  v8 = [v7 processName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == 0x646957636973754DLL && v11 == 0xEC00000073746567)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return v1;
    }
  }

  if (qword_10117FA60 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_10119AEA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "running in widget process, disabling fallback cache", v17, 2u);
  }

  v18 = [objc_opt_self() defaultMediaLibrary];
  if ([v18 artworkDataSource])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v21 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10064E12C()
{
  sub_10064E944(v0 + OBJC_IVAR____TtC5Music33RecommendationsWidgetDataProvider_cache, type metadata accessor for WidgetRecommendationDiskCache);

  return swift_deallocClassInstance();
}

uint64_t sub_10064E1CC(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
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

uint64_t sub_10064E2A4(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10064E310()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10119AEA0);
  sub_1000060E4(v0, qword_10119AEA0);
  return static Logger.music(_:)(0xD000000000000021, 0x8000000100ED9890);
}

void sub_10064E3CC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000308A0(319, &qword_10118F6F0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_1000308A0(319, &qword_10119B098, &type metadata for WidgetMusicRecommendationKind);
      if (v3 <= 0x3F)
      {
        sub_10064E4A0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10064E4A0(uint64_t a1)
{
  if (!qword_10119B0A0)
  {
    type metadata accessor for WidgetMusicItem(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10119B0A0);
    }
  }
}

unint64_t sub_10064E4FC()
{
  result = qword_10119B0E0;
  if (!qword_10119B0E0)
  {
    sub_1001109D0(&qword_10119B0E8, qword_100ED9A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B0E0);
  }

  return result;
}

unint64_t sub_10064E564()
{
  result = qword_10119B0F0;
  if (!qword_10119B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B0F0);
  }

  return result;
}

unint64_t sub_10064E5B8()
{
  result = qword_10119B100;
  if (!qword_10119B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B100);
  }

  return result;
}

unint64_t sub_10064E60C()
{
  result = qword_10119B108;
  if (!qword_10119B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B108);
  }

  return result;
}

uint64_t sub_10064E660(uint64_t a1, uint64_t a2, __n128 a3)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for WidgetMusicRecommendation(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = v5[6];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (!v16)
  {
    if (!v18)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  if (*v15 != *v17 || v16 != v18)
  {
    v20 = v5;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v5 = v20;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_20:
  v22 = v5[7];
  v23 = *(a2 + v22);
  if (*(a1 + v22) == 6)
  {
    if (v23 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v23 == 6)
    {
      return 0;
    }

    v24 = v5;
    v25 = sub_1006B9B20(*(a1 + v22), v23);
    v5 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = v5[8];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);

  return sub_10047C594(v27, v28);
}

unint64_t sub_10064E7B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BFC8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10064E800()
{
  result = qword_10119B120;
  if (!qword_10119B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B120);
  }

  return result;
}

unint64_t sub_10064E854()
{
  result = qword_10119B130;
  if (!qword_10119B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B130);
  }

  return result;
}

uint64_t sub_10064E8A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_10119B110, &qword_100EDF680);
    sub_10064E9A4(a2, type metadata accessor for WidgetMusicItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10064E944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10064E9A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10064E9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10064EA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10064EACC()
{
  result = qword_10119B148;
  if (!qword_10119B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B148);
  }

  return result;
}

unint64_t sub_10064EB24()
{
  result = qword_10119B150;
  if (!qword_10119B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B150);
  }

  return result;
}

unint64_t sub_10064EB7C()
{
  result = qword_10119B158;
  if (!qword_10119B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B158);
  }

  return result;
}

uint64_t sub_10064EBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10064ED84()
{
  _s14descr101092F61V11PreferencesCMa(0);
  swift_allocObject();
  result = sub_10064EE38();
  qword_101219178 = result;
  return result;
}

uint64_t sub_10064EDC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10064EE38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO5Music14ClarityUIMusic11Preferences_selectedPlaylistsObserver;
  *(v0 + OBJC_IVAR____TtCO5Music14ClarityUIMusic11Preferences_selectedPlaylistsObserver) = 0;
  sub_10064F64C();
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 selectedPlaylists];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *(v5 + 16);
  if (v6)
  {
    sub_10066C9A0(0, v6, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = v5 + 40;
    do
    {

      v9 = MusicItemID.init(rawValue:)();
      aBlock[0] = v7;
      v12 = v7[2];
      v11 = v7[3];
      if (v12 >= v11 >> 1)
      {
        v21 = v10;
        v22 = v9;
        sub_10066C9A0((v11 > 1), v12 + 1, 1);
        v10 = v21;
        v9 = v22;
        v7 = aBlock[0];
      }

      v7[2] = v12 + 1;
      v13 = &v7[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v14 = sub_100670388(v7);

  swift_beginAccess();
  aBlock[6] = v14;
  sub_10010FC20(&unk_10119B1B0, &qword_100ED9C60);
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10064F794;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B86D8;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  v19 = [v18 observeUpdatesForSelector:"selectedPlaylists" handler:v17];

  _Block_release(v17);
  *(v1 + v2) = v19;
  swift_unknownObjectRelease();
  return v1;
}

double sub_10064F0F4(void *a1, uint64_t a2)
{
  v2 = [a1 selectedPlaylists];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    sub_10066C9A0(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v3 + 40;
    do
    {

      v7 = MusicItemID.init(rawValue:)();
      v23 = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_10066C9A0((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v5 = v23;
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v7;
      v11[5] = v8;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = sub_100670388(v5);

  if (!*(v14 + 16))
  {
    if (qword_10117F1F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101218608);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error: Playlist should not be empty", v18, 2u);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v22), , , , v19 = v22[0], , v20 = sub_1001906F8(v19, v14), , , (v20 & 1) != 0) || (swift_beginAccess(), !swift_weakLoadStrong()))
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10064F404()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic11Preferences__selectedPlaylists;
  v2 = sub_10010FC20(&qword_10119B2E8, &qword_100ED9D08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V11PreferencesCMa(uint64_t a1)
{
  result = qword_10119B198;
  if (!qword_10119B198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064F510(uint64_t a1)
{
  sub_10064F5A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10064F5A8(uint64_t a1)
{
  if (!qword_10119B1A8)
  {
    sub_1001109D0(&unk_10119B1B0, &qword_100ED9C60);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10119B1A8);
    }
  }
}

uint64_t sub_10064F60C@<X0>(uint64_t *a2@<X8>)
{
  _s14descr101092F61V11PreferencesCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_10064F64C()
{
  result = qword_10119B2E0;
  if (!qword_10119B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10119B2E0);
  }

  return result;
}

void sub_10064F698(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10064F718(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

char *sub_10064F79C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  type metadata accessor for PickerDataSource(0);
  swift_allocObject();
  *&v4[v12] = sub_100650034();
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  sub_100651210(&qword_10119B4C0, type metadata accessor for PickerDataSource, &unk_100ED9D68);
  v15 = v13;

  v31 = ObservedObject.init(wrappedValue:)();
  v32 = v16;
  v17 = objc_allocWithZone(sub_10010FC20(&qword_10119B4C8, &unk_100ED9E40));
  v18 = _UIHostingView.init(rootView:)();
  [v15 addSubview:{v18, v31, v32}];

  v19 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
  v20 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler + 8];
  v21 = (*&v13[v14] + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
  v22 = *v21;
  v23 = v21[1];
  *v21 = v19;
  v21[1] = v20;

  sub_100030444(v19, v20);
  sub_100020438(v22, v23);

  v24 = *&v13[v14];
  v25 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
  v26 = *&v15[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler + 8];

  sub_100030444(v25, v26);

  v27 = (v24 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
  v28 = *(v24 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
  v29 = *(v24 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler + 8);
  *v27 = v25;
  v27[1] = v26;
  sub_100020438(v28, v29);

  return v15;
}

double sub_10064FB50(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.setter();
  sub_10064FC50();

  return result;
}

uint64_t sub_10064FBDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_10064FC50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  if ((v7 & 1) == 0)
  {
    v1 = (v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v2 = *(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    if (v2)
    {
      v3 = v1[1];

      v2(v4);
      sub_100020438(v2, v3);
      v5 = *v1;
    }

    else
    {
      v5 = 0;
    }

    v6 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_100020438(v5, v6);
  }
}

uint64_t sub_10064FD14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10064FD88()
{
  v1 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__sourceTracks;
  v2 = sub_10010FC20(&qword_10119B4B8, &unk_100ED9E30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__isPresentingPicker;
  v4 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100020438(*(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler), *(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler + 8));
  sub_100020438(*(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler), *(v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PickerDataSource(uint64_t a1)
{
  result = qword_10119B380;
  if (!qword_10119B380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10064FEF8(uint64_t a1)
{
  sub_10064FFD0(319);
  if (v1 <= 0x3F)
  {
    sub_100008E30();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10064FFD0(uint64_t a1)
{
  if (!qword_10119B390)
  {
    sub_1001109D0(&qword_10119ED90, &unk_100ECF7A0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10119B390);
    }
  }
}

uint64_t sub_100650034()
{
  v1 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14[-v3];
  v5 = sub_10010FC20(&qword_10119B4B8, &unk_100ED9E30);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__sourceTracks;
  v15 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource__isPresentingPicker;
  v14[7] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v10, v4, v1);
  v11 = (v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
  *v12 = 0;
  v12[1] = 0;
  return v0;
}

uint64_t sub_100650224@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PickerDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100650264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  sub_10010FC20(&qword_10119EEF0, &qword_100ED30B0);
  __chkstk_darwin();
  v6 = v12 - v5;
  type metadata accessor for PickerDataSource(0);
  sub_100651210(&qword_10119B4C0, type metadata accessor for PickerDataSource, &unk_100ED9D68);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v13 = v15;
  v12[3] = v16;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 680))();
  MusicPicker.Reason.PlaybackSessionAttributes.init(isCollaborative:)();
  v7 = enum case for MusicPicker.Reason.playbackQueue(_:);
  v8 = type metadata accessor for MusicPicker.Reason();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_10010FC20(&qword_101180F00, &qword_100ED9EF0);
  type metadata accessor for Track();
  sub_10011881C();
  sub_100651210(&qword_1011950F8, &type metadata accessor for Track, &protocol conformance descriptor for Track);
  View.musicPicker<A>(isPresented:selection:reason:onCompletion:)();

  return sub_100651258(v6);
}

void sub_1006505E4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void sub_100650664(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10064FC50();
}

void sub_1006506DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10065075C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1006507D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  v3[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006508A8, v5, v4);
}

uint64_t sub_1006508A8()
{
  v1 = v0[3];

  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = v0[3];
    sub_100009F78(0, &qword_10118AB70, MPCPlaybackIntent_ptr);
    v0[2] = v3;
    v4 = type metadata accessor for Track();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

    sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
    sub_100029908(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0);
    v5 = MPCPlaybackIntent.init<A, B>(for:startingAt:)();
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v6 = (*(*qword_101218AC8 + 528))();
    if (v6)
    {
    }

    v7 = v0[4];
    MPCPlaybackIntent.isInGroupSession.setter();
    v8 = (v7 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
    v9 = *(v7 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
    if (v9)
    {
      v10 = v8[1];

      v9(v5);

      sub_100020438(v9, v10);
    }

    else
    {
    }

    v11 = v0[4];
    v12 = *v8;
    v13 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    sub_100020438(v12, v13);
    v14 = (v11 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v15 = *(v11 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v16 = *(v11 + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler + 8);
    *v14 = 0;
    v14[1] = 0;
    sub_100020438(v15, v16);
  }

  v17 = v0[1];

  return v17();
}

void sub_100650B10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin();
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  type metadata accessor for MusicPickerSheetContainerView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks;
  *&v10[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_sourceTracks] = a2;

  v12 = OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dataSource;
  v13 = *&v10[v11];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v13;

  static Published.subscript.setter();
  v14 = v10;
  v51 = a1;
  v15 = [a1 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 window];

    if (v17)
    {
      v18 = [v17 traitCollection];

      [v18 userInterfaceStyle];
    }

    UIView.traitOverrides.getter();
    UIMutableTraits.userInterfaceStyle.setter();
    UIView.traitOverrides.setter();

    v19 = &v14[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
    v20 = *&v14[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler];
    v21 = *&v14[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_completionHandler + 8];
    v22 = v50;
    *v19 = v50;
    v19[1] = a4;

    sub_100020438(v20, v21);
    v23 = (*&v10[v12] + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_completionHandler);
    v24 = *v23;
    v25 = v23[1];
    *v23 = v22;
    v23[1] = a4;

    sub_100020438(v24, v25);

    v26 = swift_allocObject();
    *(v26 + 2) = v14;
    *(v26 + 3) = v22;
    *(v26 + 4) = a4;
    v27 = &v14[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
    v28 = *&v14[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler];
    v29 = *&v14[OBJC_IVAR____TtC5Music29MusicPickerSheetContainerView_dismissedHandler + 8];
    *v27 = sub_1006510F8;
    v27[1] = v26;
    v30 = v14;

    sub_100020438(v28, v29);
    v31 = (*&v10[v12] + OBJC_IVAR____TtC5MusicP33_9483708C00E732EC5A275F87AB02BE8316PickerDataSource_dismissedHandler);
    v32 = *v31;
    v33 = v31[1];
    *v31 = sub_1006510F8;
    v31[1] = v26;

    sub_100020438(v32, v33);

    v34 = [v51 view];
    if (v34)
    {
      v35 = v34;
      [v34 addSubview:v30];

      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = v30;
      aBlock[4] = sub_100651134;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010B8750;
      v38 = _Block_copy(aBlock);
      v39 = v30;
      v40 = v44;
      static DispatchQoS.unspecified.getter();
      v52 = _swiftEmptyArrayStorage;
      sub_100651210(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970, &qword_100EBD250);
      sub_100029908(&qword_101183F70, &qword_101182970, &qword_100EBD250);
      v41 = v46;
      v42 = v49;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v48 + 8))(v41, v42);
      (*(v45 + 8))(v40, v47);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1006510F8()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  return v1(0);
}

uint64_t sub_100651168(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1006507D8(a1, v5, v4);
}

uint64_t sub_100651210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100651258(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119EEF0, &qword_100ED30B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100651328(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    _s10TVEpisodesV5ScopeOMa(319);
    if (v2 <= 0x3F)
    {
      sub_100651448(319, &qword_10119B538);
      if (v3 <= 0x3F)
      {
        sub_10018D5F0(319);
        if (v4 <= 0x3F)
        {
          sub_100651448(319, &unk_10119B540);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100651448(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100651494(uint64_t a1)
{
  result = type metadata accessor for TVShow();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TVSeason();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100651508@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of LibraryTVEpisodeFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100651550@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v15[5] = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15[9] = v15 - v4;
  v5 = type metadata accessor for TVEpisode();
  v15[8] = *(v5 - 8);
  __chkstk_darwin();
  v6 = sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v15[4] = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v15 - v9;
  type metadata accessor for TVSeason();
  sub_100652F50(&qword_10119B650, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_100652F50(&qword_101181C70, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v15[7] = v5;
  MusicLibrarySectionedRequest.init()();
  sub_100652474();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v15[6] = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + *(v2 + 32)));
  swift_getKeyPath();
  v21[0] = TVEpisode.id.getter();
  v21[1] = v11;
  MusicLibrarySectionedRequest.filterItems<A>(matching:equalTo:)();

  v21[3] = v6;
  v21[4] = sub_1006536B0();
  v12 = sub_10001C8B8(v21);
  v16 = v7;
  (*(v7 + 16))(v12, v10, v6);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v13 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v13 - 8) + 56))(v17, 0, 1, v13);
  return (*(v16 + 8))(v10, v6);
}

uint64_t sub_100651C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
  __chkstk_darwin();
  v23[9] = v23 - v6;
  v7 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v23[7] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23[13] = v23 - v9;
  __chkstk_darwin();
  v23[12] = v23 - v10;
  v23[8] = sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  __chkstk_darwin();
  v23[6] = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23[11] = v23 - v12;
  __chkstk_darwin();
  v14 = v23 - v13;
  v28[3] = v5;
  v28[4] = sub_1006536B0();
  sub_10001C8B8(v28);
  v15 = type metadata accessor for TVSeason();
  v16 = type metadata accessor for TVEpisode();
  v17 = sub_100652F50(&qword_10119B650, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v18 = sub_100652F50(&qword_101181C70, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v23[5] = v15;
  v23[4] = v17;
  v23[3] = v18;
  MusicLibrarySectionedRequest.init()();
  sub_100652474();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v23[10] = v7;
  MusicLibrarySectionedRequest.filterItems(text:)(*(v3 + *(v7 + 32)));
  sub_1006537DC(a1, v14);
  v19 = *(v16 - 8);
  if ((*(v19 + 48))(v14, 1, v16) == 1)
  {
    sub_1000095E8(v14, &unk_1011996D0, &unk_100ED8090);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  else
  {
    *(&v26 + 1) = v16;
    v27 = sub_100652F50(&qword_101199720, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v20 = sub_10001C8B8(&v25);
    (*(v19 + 32))(v20, v14, v16);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v21 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v21 - 8) + 56))(v24, 0, 1, v21);
}

uint64_t sub_100652474()
{
  v1 = type metadata accessor for TVSeason();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVShow();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10TVEpisodesVMa(0);
  sub_100653714(v0 + *(v11 + 24), v10, _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v10, v1);
    swift_getKeyPath();
    sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v10, v5);
    swift_getKeyPath();
    sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100652728(uint64_t a1)
{
  v2 = type metadata accessor for TVSeason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TVShow();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100653714(v1, v11, _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    Hasher._combine(_:)(1uLL);
    sub_100652F50(&qword_10119B738, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v11, v6);
    Hasher._combine(_:)(0);
    sub_100652F50(&qword_10119B740, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v7 + 8))(v9, v6);
  }
}

void sub_100652A74(__int128 *a1)
{
  v2 = v1;
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_100652F50(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v4 = _s10TVEpisodesVMa(0);
  sub_100652728(a1);
  Hasher._combine(_:)(v1[v4[7]]);
  String.hash(into:)();
  v5 = v1[v4[9] + 1];
  String.hash(into:)();

  Hasher._combine(_:)(v5);
  String.hash(into:)();
  sub_10010B570(a1, *&v2[v4[11]]);
  sub_10010B100(a1, *&v2[v4[12]]);
  String.hash(into:)();
  sub_10010B4B0(a1, *&v2[v4[14]]);
}

void sub_100652D0C(uint64_t a1)
{
  type metadata accessor for TVSeason();
  type metadata accessor for TVEpisode();
  sub_100652F50(&qword_10119B650, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_100652F50(&qword_101181C70, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  MusicLibrarySectionedRequest.init()();
  sub_100652474();

  sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + *(a1 + 32)));
}

Swift::Int sub_100652E5C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100652EC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100652F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100653028(uint64_t a1)
{
  result = sub_100652F50(&qword_10119B730, _s10TVEpisodesVMa, &unk_100ED9FA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100653080(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

uint64_t sub_1006530D0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = type metadata accessor for TVSeason();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVShow();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v23 - v11;
  sub_10010FC20(&qword_10119B748, &qword_100EDA050);
  __chkstk_darwin();
  v14 = &v23 - v13;
  v16 = *(v15 + 56);
  sub_100653714(v25, &v23 - v13, _s10TVEpisodesV5ScopeOMa);
  sub_100653714(v26, &v14[v16], _s10TVEpisodesV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100653714(v14, v10, _s10TVEpisodesV5ScopeOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v23;
      v17 = v24;
      (*(v23 + 32))(v4, &v14[v16], v24);
      v19 = static TVSeason.== infix(_:_:)();
      v20 = *(v18 + 8);
      v20(v4, v17);
      v20(v10, v17);
LABEL_9:
      sub_10065377C(v14, _s10TVEpisodesV5ScopeOMa);
      return v19 & 1;
    }

    (*(v23 + 8))(v10, v24);
  }

  else
  {
    sub_100653714(v14, v12, _s10TVEpisodesV5ScopeOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v14[v16], v5);
      v19 = static TVShow.== infix(_:_:)();
      v21 = *(v6 + 8);
      v21(v8, v5);
      v21(v12, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v12, v5);
  }

  sub_1000095E8(v14, &qword_10119B748, &qword_100EDA050);
  v19 = 0;
  return v19 & 1;
}

void sub_1006534A4(char *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  type metadata accessor for MusicLibrary();
  if (static MusicLibrary.== infix(_:_:)())
  {
    v11 = _s10TVEpisodesVMa(0);
    if ((sub_1006530D0(&a1[v11[6]], &a2[v11[6]]) & 1) != 0 && a1[v11[7]] == a2[v11[7]])
    {
      if (v12 = v11[8], v13 = *&a1[v12], v14 = *&a1[v12 + 8], v15 = &a2[v12], v13 == *v15) && v14 == *(v15 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v16 = v11[9];
        v17 = &a1[v16];
        v18 = a1[v16 + 1];
        v19 = &a2[v16];
        v20 = v19[1];
        if ((sub_1006B8B0C(*v17, *v19) & 1) != 0 && ((v18 ^ v20) & 1) == 0)
        {
          if (v21 = v11[10], v22 = *&a1[v21], v23 = *&a1[v21 + 8], v24 = &a2[v21], v22 == *v24) && v23 == *(v24 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            sub_10047B908(*&a1[v11[11]], *&a2[v11[11]]);
            if (v25 & 1) != 0 && (sub_10018FCA0(*&a1[v11[12]], *&a2[v11[12]]))
            {
              if (v26 = v11[13], v27 = *&a1[v26], v28 = *&a1[v26 + 8], v29 = &a2[v26], v27 == *v29) && v28 == *(v29 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                v30 = v11[14];
                v31 = *&a1[v30];
                v32 = *&a2[v30];

                sub_10047BC00(v31, v32);
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1006536B0()
{
  result = qword_10119B750;
  if (!qword_10119B750)
  {
    sub_1001109D0(&qword_10118D050, &qword_100EC8D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B750);
  }

  return result;
}

uint64_t sub_100653714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10065377C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006537DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100653878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100653970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ConditionalContent.Storage();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100653A68@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

void *sub_100653AD4@<X0>(_BYTE *a1@<X8>)
{
  sub_10028F250();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100653B94(uint64_t a1)
{
  type metadata accessor for RedactionReasons();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.redactionReasons.setter();
}

uint64_t sub_100653C5C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_10047BD40(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v3 == *a2 && v4 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100653CB4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_10010FC20(&qword_10119B798, &qword_100EDA218);
  __chkstk_darwin();
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v29 - v4;
  sub_10010FC20(&qword_10119B7A0, &qword_100EDA220);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v8 = sub_10010FC20(&qword_10119B7A8, &qword_100EDA228);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v29 - v11;
  v35 = *v1;
  v36 = *(v1 + 16);
  v13 = v35;
  if (v36)
  {
    v14 = *(&v35 + 1);
    if (*(v1 + 40))
    {
      v15 = 0;
      v16 = *(v1 + 4);
      v30 = 0;
      v31 = v16;
    }

    else
    {
      v15 = *(v1 + 4);
      v30 = *(v1 + 3);

      v31 = v15;
    }

    v18 = swift_allocObject();
    v19 = v1[1];
    *(v18 + 16) = *v1;
    *(v18 + 32) = v19;
    *(v18 + 41) = *(v1 + 25);
    *(v18 + 64) = v13;
    *(v18 + 72) = v14;
    *(v3 + 4) = swift_getKeyPath();
    v3[40] = 0;
    *(v3 + 6) = swift_getKeyPath();
    v3[56] = 0;
    v20 = *(v32 + 48);
    *&v3[v20] = swift_getKeyPath();
    sub_10010FC20(&qword_10118E3F8, &qword_100ECA6A0);
    swift_storeEnumTagMultiPayload();
    *v3 = sub_100655BC0;
    *(v3 + 1) = v18;
    *(v3 + 2) = v30;
    *(v3 + 3) = v15;
    sub_10003D17C(v3, v5, &qword_10119B798, &qword_100EDA218);
    sub_1000089F8(v5, v7, &qword_10119B798, &qword_100EDA218);
    swift_storeEnumTagMultiPayload();
    sub_100655C18(&v35, v34);
    sub_100655C18(&v35, v34);
    sub_100020674(&qword_10119B7B0, &qword_10119B7A8, &qword_100EDA228, &unk_100EDA3BC);
    sub_100020674(&qword_10119B7B8, &qword_10119B798, &qword_100EDA218, &unk_100EDA3BC);

    _ConditionalContent<>.init(storage:)();
    v21 = v5;
    v22 = &qword_10119B798;
    v23 = &qword_100EDA218;
  }

  else
  {
    if (*(v1 + 40))
    {
      v31 = 0;
      v17 = 0;
    }

    else
    {
      v24 = *(v1 + 4);
      v31 = *(v1 + 3);

      v17 = v24;
    }

    v25 = swift_allocObject();
    v26 = v1[1];
    *(v25 + 16) = *v1;
    *(v25 + 32) = v26;
    *(v25 + 41) = *(v1 + 25);
    *(v25 + 64) = v13;
    *(v10 + 4) = swift_getKeyPath();
    v10[40] = 0;
    *(v10 + 6) = swift_getKeyPath();
    v10[56] = 0;
    v27 = *(v8 + 48);
    *&v10[v27] = swift_getKeyPath();
    sub_10010FC20(&qword_10118E3F8, &qword_100ECA6A0);
    swift_storeEnumTagMultiPayload();
    *v10 = sub_100655C50;
    *(v10 + 1) = v25;
    *(v10 + 2) = v31;
    *(v10 + 3) = v17;
    sub_10003D17C(v10, v12, &qword_10119B7A8, &qword_100EDA228);
    sub_1000089F8(v12, v7, &qword_10119B7A8, &qword_100EDA228);
    swift_storeEnumTagMultiPayload();
    sub_100655C18(&v35, v34);
    sub_100655C18(&v35, v34);
    sub_100020674(&qword_10119B7B0, &qword_10119B7A8, &qword_100EDA228, &unk_100EDA3BC);
    sub_100020674(&qword_10119B7B8, &qword_10119B798, &qword_100EDA218, &unk_100EDA3BC);

    _ConditionalContent<>.init(storage:)();
    v21 = v12;
    v22 = &qword_10119B7A8;
    v23 = &qword_100EDA228;
  }

  return sub_1000095E8(v21, v22, v23);
}

uint64_t sub_1006541D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v60 = a1;
  v74 = type metadata accessor for Button();
  v97 = v74;
  v98 = type metadata accessor for BorderlessButtonStyle();
  v73 = v98;
  WitnessTable = swift_getWitnessTable();
  v99 = WitnessTable;
  v100 = sub_100656AC0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v70 = v100;
  swift_getOpaqueTypeMetadata2();
  v69 = type metadata accessor for _ConditionalContent();
  v5 = type metadata accessor for Group();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v56 - v7;
  sub_1001109D0(&qword_1011879C8, &qword_100EE1C80);
  v71 = v5;
  v9 = type metadata accessor for ModifiedContent();
  v61 = *(v9 - 8);
  __chkstk_darwin();
  v59 = &v56 - v10;
  type metadata accessor for AccessibilityAttachmentModifier();
  v66 = v9;
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v56 - v15;
  v16 = type metadata accessor for Optional();
  v65 = *(v16 - 8);
  __chkstk_darwin();
  v63 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v64 = &v56 - v19;
  v20 = *v2;
  if (*v2)
  {
    v57 = v12;
    __chkstk_darwin();
    v68 = v4;
    *(&v56 - 6) = v3;
    *(&v56 - 5) = v4;
    *(&v56 - 4) = v2;
    *(&v56 - 3) = v20;
    v56 = v21;
    *(&v56 - 2) = v21;

    v97 = v74;
    v98 = v73;
    v58 = v16;
    v99 = WitnessTable;
    v100 = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v81 = v68;
    v22 = swift_getWitnessTable();
    Group<A>.init(content:)();
    v97 = sub_100655490(v60, v23);
    v79 = v22;
    v24 = v71;
    v25 = swift_getWitnessTable();
    v60 = v11;
    v26 = v59;
    View.foregroundStyle<A>(_:)();

    (*(v6 + 8))(v8, v24);
    v27 = AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor();
    v28 = *v27;
    v29 = v27[1];
    v31 = v27[2];
    v30 = v27[3];
    v32 = sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    v77 = v25;
    v78 = v32;

    v33 = v66;
    v34 = swift_getWitnessTable();
    v35 = v31;
    v4 = v68;
    View.accessibilityIdentifier(_:)(v28, v29, v35, v30, v33, v34);
    sub_100020438(v20, v56);
    v16 = v58;

    v36 = v26;
    v37 = v60;
    (*(v61 + 8))(v36, v33);
    v38 = sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v75 = v34;
    v76 = v38;
    swift_getWitnessTable();
    v39 = v62;
    sub_100663950();
    v40 = v57;
    v41 = *(v57 + 8);
    v41(v14, v37);
    sub_100663950();
    v41(v39, v37);
    v42 = v63;
    (*(v40 + 32))(v63, v14, v37);
    (*(v40 + 56))(v42, 0, 1, v37);
  }

  else
  {
    v43 = v63;
    (*(v12 + 56))(v63, 1, 1, v11, v18);
    v97 = v74;
    v98 = v73;
    v99 = WitnessTable;
    v100 = v70;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = v4;
    v94 = swift_getWitnessTable();
    v44 = swift_getWitnessTable();
    v45 = sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    v92 = v44;
    v93 = v45;
    v46 = swift_getWitnessTable();
    v47 = sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v90 = v46;
    v91 = v47;
    v42 = v43;
    swift_getWitnessTable();
  }

  v48 = v65;
  v49 = v64;
  (*(v65 + 16))(v64, v42, v16);
  v50 = *(v48 + 8);
  v50(v42, v16);
  v97 = v74;
  v98 = v73;
  v99 = WitnessTable;
  v100 = v70;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v4;
  v87 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v52 = sub_100020674(&unk_101199EA0, &qword_1011879C8, &qword_100EE1C80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v85 = v51;
  v86 = v52;
  v53 = swift_getWitnessTable();
  v54 = sub_100656AC0(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v83 = v53;
  v84 = v54;
  v82 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100663950();
  return (v50)(v49, v16);
}

uint64_t sub_100654C9C@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a2;
  v58 = a3;
  v63 = a6;
  v9 = type metadata accessor for BorderlessButtonStyle();
  v56 = *(v9 - 8);
  __chkstk_darwin();
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a5;
  v11 = type metadata accessor for Button();
  v54 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v51 - v12;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_100656AC0(&qword_101180F80, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v64 = v11;
  v65 = v15;
  v70 = v11;
  v71 = v9;
  v62 = v9;
  v66 = WitnessTable;
  v72 = WitnessTable;
  v73 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = &v51 - v19;
  v20 = *(a4 - 8);
  __chkstk_darwin();
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v51 - v23;
  v25 = a4;
  v26 = type metadata accessor for _ConditionalContent();
  v60 = *(v26 - 8);
  v61 = v26;
  v27 = __chkstk_darwin();
  v59 = &v51 - v28;
  v29 = *(a1 + 16);
  if (v29)
  {
    v30 = *(a1 + 24);
    __chkstk_darwin();
    *(&v51 - 4) = v25;
    v51 = v25;
    v32 = v57;
    v31 = v58;
    *(&v51 - 3) = v67;
    *(&v51 - 2) = v32;
    *(&v51 - 1) = v31;
    sub_100030444(v29, v30);

    Button.init(action:label:)();
    v33 = v52;
    BorderlessButtonStyle.init()();
    v35 = v64;
    v34 = v65;
    v36 = v62;
    v37 = v66;
    View.buttonStyle<A>(_:)();
    (*(v56 + 8))(v33, v36);
    (*(v54 + 8))(v13, v35);
    v70 = v35;
    v71 = v36;
    v72 = v37;
    v73 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v53;
    sub_100663950();
    v40 = *(v55 + 8);
    v40(v18, OpaqueTypeMetadata2);
    sub_100663950();
    v41 = v59;
    sub_100653878(v18, OpaqueTypeMetadata2, v51, OpaqueTypeConformance2, v67);
    sub_100020438(v29, v30);
    v40(v18, OpaqueTypeMetadata2);
    v40(v39, OpaqueTypeMetadata2);
  }

  else
  {
    v57(v27);
    v42 = v25;
    v43 = v67;
    sub_100663950();
    v44 = *(v20 + 8);
    v44(v22, v42);
    sub_100663950();
    v45 = v62;
    v70 = v64;
    v71 = v62;
    v72 = v66;
    v73 = v65;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = v43;
    v41 = v59;
    sub_100653970(v22, OpaqueTypeMetadata2, v42, v46, v47);
    v44(v22, v42);
    v48 = v24;
    v36 = v45;
    v44(v48, v42);
  }

  v70 = v64;
  v71 = v36;
  v72 = v66;
  v73 = v65;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v67;
  v49 = v61;
  swift_getWitnessTable();
  sub_100663950();
  return (*(v60 + 8))(v41, v49);
}

uint64_t sub_10065535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  v10(v7);
  sub_100663950();
  v11 = *(v4 + 8);
  v11(v6, a3);
  sub_100663950();
  return (v11)(v9, a3);
}

void *sub_100655490(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for RedactionReasons();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v26[-v13];
  sub_100655800(a1, &v26[-v13]);
  static RedactionReasons.placeholder.getter();
  sub_100656AC0(&qword_10119B8F0, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v10 + 8);
  v15(v12, v9);
  v15(v14, v9);
  if ((a1 & 1) == 0)
  {
    v16 = *(v3 + 32);
    if (*(v3 + 40) != 1)
    {

      v17 = static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v19 = sub_1000D8F20(v16, 0);
      (*(v6 + 8))(v8, v5, v19);
      LOBYTE(v16) = v26[15];
    }

    if (v16 != 2 && (v16 & 1) != 0)
    {
      if (!*(v3 + 16))
      {
        return static Color.secondary.getter();
      }

      return static Color.accentColor.getter();
    }

    v21 = *(v3 + 48);
    if (*(v3 + 56) == 1)
    {
      v22 = *(v3 + 48);
    }

    else
    {

      v23 = static os_log_type_t.fault.getter();
      v24 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      v25 = sub_1000D8F20(v21, 0);
      (*(v6 + 8))(v8, v5, v25);
      v22 = v26[14];
    }

    if ((v22 & 0xFE) == 2)
    {
      if (!*(v3 + 16))
      {
        return static Color.secondary.getter();
      }

      return static Color.accentColor.getter();
    }
  }

  return static Color.primary.getter();
}

uint64_t sub_100655800@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118E3F8, &qword_100ECA6A0);
  __chkstk_darwin();
  v11 = &v16 - v10;
  sub_1000089F8(v3 + *(a1 + 48), &v16 - v10, &qword_10118E3F8, &qword_100ECA6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for RedactionReasons();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v9, v6);
  }
}

void sub_100655A0C(uint64_t a1@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v1;
  if (*(v1 + 16))
  {
    v6 = *(v1 + 8);
    KeyPath = swift_getKeyPath();

    sub_100656114(KeyPath, 0, a1);
    sub_1005F94A8(v5, v6, 1);
  }

  else
  {
    PlaylistCurators.View.init(configuration:)(*v1, v4);

    PlaylistCurators.View.fontTextStyle.getter(a1);
    sub_100656B14(v4, type metadata accessor for PlaylistCurators.View);
  }
}

unint64_t sub_100655B28(uint64_t a1)
{
  result = sub_100655B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100655B50()
{
  result = qword_10119B790;
  if (!qword_10119B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B790);
  }

  return result;
}

double sub_100655BC0@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;

  return result;
}

double sub_100655C50@<D0>(void *x8_0@<X8>)
{
  PlaylistCurators.View.init(configuration:)(*(v2 + 64), x8_0);

  return result;
}

uint64_t sub_100655C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v38 = a4;
  v6 = a3;
  v36 = a3;
  sub_10010FC20(&qword_101188610, &qword_100EC4D60);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v12 = _s11AttributionV4TextV5SpecsVMa(0) - 8;
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v40 = a2;
  v37 = a1;
  sub_100009838();
  v35 = a2;

  v15 = Text.init<A>(_:)();
  v33 = v17;
  v34 = v16;
  v19 = v18;
  sub_100655F2C(v6, v5 & 1, v14);
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  static Font.system(_:design:weight:)();
  sub_1000095E8(v11, &qword_101188610, &qword_100EC4D60);
  sub_100656B14(v14, _s11AttributionV4TextV5SpecsVMa);
  v21 = v34;
  v22 = Text.font(_:)();
  v31 = v23;
  v32 = v22;
  LOBYTE(v6) = v24;
  v30 = v25;
  sub_10011895C(v15, v21, v19 & 1);

  KeyPath = swift_getKeyPath();
  sub_100655F2C(v36, v38 & 1, v14);
  LOBYTE(a2) = v14[*(v12 + 32)];
  sub_100656B14(v14, _s11AttributionV4TextV5SpecsVMa);
  result = swift_getKeyPath();
  v28 = v31;
  *a5 = v32;
  *(a5 + 8) = v28;
  *(a5 + 16) = v6 & 1;
  *(a5 + 24) = v30;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 3;
  *(a5 + 48) = 0;
  *(a5 + 56) = result;
  *(a5 + 64) = a2;
  return result;
}

uint64_t sub_100655F2C@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v13 = sub_1000D8F20(a1, 0);
    (*(v8 + 8))(v10, v7, v13);
    LOBYTE(a1) = v18[15];
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_10117FA78 != -1)
    {
      swift_once();
    }

    v14 = qword_10119B778;
  }

  else
  {
    if (qword_10117FA70 != -1)
    {
      swift_once();
    }

    v14 = qword_10119B760;
  }

  v15 = _s11AttributionV4TextV5SpecsVMa(0);
  v16 = sub_1000060E4(v15, v14);
  return sub_1006565FC(v16, a3);
}

uint64_t sub_100656114@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s11AttributionV4TextV5SpecsVMa(0);
  __chkstk_darwin();
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v15 = &v26[-v14];
  if ((a2 & 1) == 0)
  {
    v16 = v13;

    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v19 = sub_1000D8F20(a1, 0);
    (*(v8 + 8))(v10, v7, v19);
    v13 = v16;
    LOBYTE(a1) = v26[15];
  }

  if (a1 == 2 || (a1 & 1) == 0)
  {
    if (qword_10117FA78 != -1)
    {
      v24 = v13;
      swift_once();
      v13 = v24;
    }

    v20 = qword_10119B778;
  }

  else
  {
    if (qword_10117FA70 != -1)
    {
      v25 = v13;
      swift_once();
      v13 = v25;
    }

    v20 = qword_10119B760;
  }

  v21 = sub_1000060E4(v13, v20);
  sub_1006565FC(v21, v12);
  sub_100656660(v12, v15);
  v22 = type metadata accessor for Font.TextStyle();
  return (*(*(v22 - 8) + 32))(a3, v15, v22);
}

uint64_t _s11AttributionV4TextV5SpecsVMa(uint64_t a1)
{
  result = qword_10119B818;
  if (!qword_10119B818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100656414()
{
  v0 = _s11AttributionV4TextV5SpecsVMa(0);
  sub_100006080(v0, qword_10119B760);
  v1 = sub_1000060E4(v0, qword_10119B760);
  v2 = enum case for Font.TextStyle.title2(_:);
  v3 = type metadata accessor for Font.TextStyle();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  static Font.Weight.regular.getter();
  *(v1 + *(v0 + 20)) = v4;
  *(v1 + *(v0 + 24)) = 0;
}

uint64_t sub_1006564C0()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11AttributionV4TextV5SpecsVMa(0);
  sub_100006080(v4, qword_10119B778);
  v5 = sub_1000060E4(v4, qword_10119B778);
  (*(v1 + 104))(v3, enum case for Font.TextStyle.title3(_:), v0);
  static Font.Weight.regular.getter();
  v7 = v6;
  result = (*(v1 + 32))(v5, v3, v0);
  *(v5 + *(v4 + 20)) = v7;
  *(v5 + *(v4 + 24)) = 1;
  return result;
}

uint64_t sub_1006565FC(uint64_t a1, uint64_t a2)
{
  v4 = _s11AttributionV4TextV5SpecsVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100656660(uint64_t a1, uint64_t a2)
{
  v4 = _s11AttributionV4TextV5SpecsVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1006566FC(uint64_t a1)
{
  sub_100656874(319, &qword_1011A11C0, &unk_10118F700, "dM\n", &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100656874(319, &qword_1011891F0, &unk_1011891F8, qword_100EDB130, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100656874(319, &qword_10118E378, &qword_10118E380, qword_100ECA620, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1003F6EA8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100656874(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1006568D8()
{
  result = qword_10119B8D8;
  if (!qword_10119B8D8)
  {
    sub_1001109D0(&qword_10119B8E0, &qword_100EDA348);
    sub_100020674(&qword_10119B7B0, &qword_10119B7A8, &qword_100EDA228, &unk_100EDA3BC);
    sub_100020674(&qword_10119B7B8, &qword_10119B798, &qword_100EDA218, &unk_100EDA3BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B8D8);
  }

  return result;
}

unint64_t sub_1006569D4(uint64_t a1)
{
  result = sub_1006569FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006569FC()
{
  result = qword_10119B8E8;
  if (!qword_10119B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B8E8);
  }

  return result;
}

uint64_t sub_100656AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100656B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100656B74()
{
  result = qword_10119B8F8;
  if (!qword_10119B8F8)
  {
    sub_1001109D0(&qword_10119B900, &unk_100EDA470);
    sub_10023BB90();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B8F8);
  }

  return result;
}

uint64_t sub_100656C2C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219180);
  sub_1000060E4(v0, qword_101219180);
  return static Logger.music(_:)(0x697469726F766146, 0xEA0000000000676ELL);
}

uint64_t sub_100656C94()
{
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = type metadata accessor for UITraitAccessibilityContrast();
  *(v0 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  result = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 48) = result;
  *(v0 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  qword_10119B908 = v0;
  return result;
}

Swift::Int sub_100656D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 >> 7);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

void sub_100656D64()
{
  v1 = *v0;
  Hasher._combine(_:)(v1 >> 7);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int sub_100656DA4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 >> 7);
  Hasher._combine(_:)(v2 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100656DF4(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

void sub_100656E20()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  v5(3);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v54 = v4;
  v55 = v2;
  v43 = String.init(localized:table:bundle:locale:comment:)();
  v46 = v7;
  v57 = v0;
  v8 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v44 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTransliterationEnabled;
  v13 = (v10 + 63) >> 6;
  v51 = "pronunciation.slash";
  v52 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTranslationEnabled;
  v49 = 0x8000000100E53300;
  v50 = "Show Translation";
  v42[1] = 0x8000000100E532A0;
  v53 = v8;

  v14 = 0;
  v48 = 0;
  v15 = 0;
  for (i = 0; v12; v48 = v28)
  {
LABEL_11:
    while (1)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v21 = *(*(v53 + 48) + (v20 | (i << 6)));
      v14 |= v21;
      v22 = v21 & 1;
      if (v21 < 0)
      {
        break;
      }

      v56 = v15;
      *(v57 + v52) = v22;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v17 = String._bridgeToObjectiveC()();

      v18 = [objc_opt_self() imageNamed:v17];

      swift_allocObject();
      swift_unknownObjectWeakInit();

      v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      if (!v12)
      {
        goto LABEL_7;
      }
    }

    *(v57 + v44) = v22;
    v23 = (v21 & 1) == 0;
    v24 = v15;
    v25 = v45;
    if (!v23)
    {
      v25 = v43;
    }

    v56 = v25;

    v42[0] = sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v26 = String._bridgeToObjectiveC()();

    v27 = [objc_opt_self() imageNamed:v26];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v15 = v24;
  }

LABEL_7:
  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      v29 = v57;
      if (v15)
      {
        v30 = v48;
        if (v48)
        {
          goto LABEL_19;
        }

LABEL_21:
        *(v29 + v44) = 0;
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        v33 = String._bridgeToObjectiveC()();
        v34 = [objc_opt_self() imageNamed:v33];

        v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      }

      else
      {
        *(v57 + v52) = 0;
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v31 = String._bridgeToObjectiveC()();
        v32 = [objc_opt_self() imageNamed:v31];

        v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v30 = v48;
        if (!v48)
        {
          goto LABEL_21;
        }

LABEL_19:
      }

      sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100EBC6D0;
      *(v35 + 32) = v30;
      *(v35 + 40) = v15;
      v36 = v15;
      v37 = v30;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v58.value.super.isa = 0;
      v58.is_nil = 0;
      v39.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v38, 0, v58, 0, 0xFFFFFFFFFFFFFFFFLL, v35, v41).super.super.isa;
      v40 = *(v29 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu);
      *(v29 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu) = v39;

      *(v29 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn) = v14 & 1;
      sub_1006582D0();

      return;
    }

    v12 = *(v9 + 8 * v19);
    ++i;
    if (v12)
    {
      i = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

id sub_10065775C()
{
  v1 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView);
  }

  else
  {
    v4 = sub_1006577BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1006577BC()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  v2 = UIView.forAutolayout.getter();
  v3 = v2;
  v4 = [v3 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  v5 = [v3 layer];
  [v5 setMasksToBounds:1];

  [v3 setUserInteractionEnabled:0];
  v6 = [v3 contentView];
  [v6 setUserInteractionEnabled:0];

  return v3;
}

char *sub_100657928()
{
  v1 = v0;
  swift_getObjectType();
  *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView] = 0;
  v2 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *&v1[v2] = v4;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn] = 0;
  v5 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock];
  *v8 = 0;
  v8[1] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTranslationEnabled] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTransliterationEnabled] = 0;
  v9 = &v1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  *v9 = sub_1006587CC([objc_allocWithZone(UITraitCollection) init]);
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  v63.receiver = v1;
  v63.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  v13 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  v14 = v13;
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v15 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView;
  v16 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView];
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v17 = v16;
  v18 = static UIFont.preferredFont(forTextStyle:weight:)();
  v19 = [objc_opt_self() configurationWithFont:v18];

  [v17 setSymbolConfiguration:v19];
  v20 = *&v14[v15];
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  [v20 setImage:v22];
  v23 = sub_10065775C();
  v24 = [v23 contentView];

  [v24 addSubview:*&v14[v15]];
  v25 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView;
  [v14 addSubview:*&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView]];
  [v14 setContextMenuInteractionEnabled:1];
  [v14 setShowsMenuAsPrimaryAction:1];
  v26 = UIAccessibilityTraitButton;
  v27 = [v14 accessibilityTraits];
  if ((v26 & ~v27) != 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  [v14 setAccessibilityTraits:v28 | v27];

  v29 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBEE70;
  v31 = [*&v14[v15] centerYAnchor];
  v32 = [*&v14[v25] contentView];
  v33 = [v32 centerYAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v30 + 32) = v34;
  v35 = [*&v14[v15] centerXAnchor];
  v36 = [*&v14[v25] contentView];
  v37 = [v36 centerXAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(v30 + 40) = v38;
  v39 = [*&v14[v25] topAnchor];
  v40 = [v14 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v30 + 48) = v41;
  v42 = [*&v14[v25] trailingAnchor];
  v43 = [v14 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v30 + 56) = v44;
  v45 = [*&v14[v25] bottomAnchor];
  v46 = [v14 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v30 + 64) = v47;
  v48 = [*&v14[v25] leadingAnchor];
  v49 = [v14 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v30 + 72) = v50;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  v52 = [v14 traitCollection];
  v53 = sub_1006587CC(v52);
  v54 = &v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v55 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v56 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 8];
  v58 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 16];
  v57 = *&v14[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 24];
  *v54 = v53;
  *(v54 + 1) = v59;
  *(v54 + 2) = v60;
  *(v54 + 3) = v61;

  if (qword_10117FA88 != -1)
  {
    swift_once();
  }

  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
  return v14;
}

void sub_1006581DC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, const char **a6, void *a7)
{
  v20.receiver = a1;
  v20.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  v12 = *a6;
  v13 = a3;
  v14 = a4;
  v15 = v20.receiver;
  swift_unknownObjectRetain();
  objc_msgSendSuper2(&v20, v12, v13, v14, a5);
  v16 = &v15[*a7];
  v17 = *v16;
  if (*v16)
  {
    v18 = *(v16 + 1);

    v17(v19);

    swift_unknownObjectRelease();
    sub_100020438(v17, v18);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

id sub_1006582D0()
{
  v1 = sub_10065775C();
  v2 = [v1 contentView];

  v3 = [v2 layer];
  v4 = [v0 traitCollection];
  v5 = [v4 accessibilityContrast];

  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = kCAFilterPlusL;
  }

  [v3 setCompositingFilter:v6];

  swift_unknownObjectRelease();
  v7 = [*&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView] contentView];
  v8 = v7;
  v9 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn;
  v10 = 24;
  if (v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn])
  {
    v10 = 16;
  }

  [v7 setBackgroundColor:*&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + v10]];

  v11 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView];
  v12 = 8;
  if (v0[v9])
  {
    v12 = 0;
  }

  v13 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + v12];

  return [v11 setTintColor:v13];
}

id sub_100658480(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NowPlayingLyricsTranslationButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for NowPlayingLyricsTranslationButton.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for NowPlayingLyricsTranslationButton.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100658774()
{
  result = qword_10119B998;
  if (!qword_10119B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119B998);
  }

  return result;
}

id sub_1006587CC(void *a1)
{
  v2 = [a1 accessibilityContrast];
  v3 = objc_opt_self();
  v4 = v3;
  if (v2 == 1)
  {
    v5 = [v3 whiteColor];
    v6 = [v4 tintColor];
    [v6 resolvedColorWithTraitCollection:a1];

    v7 = [v4 tintColor];
    [v7 resolvedColorWithTraitCollection:a1];

    v8 = [v4 tintColor];
    v9 = [v8 resolvedColorWithTraitCollection:a1];

    v10 = [v9 colorWithAlphaComponent:0.2];
  }

  else
  {
    v5 = [v3 blackColor];
    [v4 whiteColor];
    v11 = [v4 whiteColor];
    [v11 colorWithAlphaComponent:0.5];

    v9 = [v4 whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.18];
  }

  v12 = v10;

  return v5;
}

void sub_1006589BC(char *a1)
{
  v2 = sub_1006587CC([a1 traitCollection]);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v10 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs];
  v11 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 8];
  v12 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 16];
  v13 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs + 24];
  *v9 = v2;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *(v9 + 3) = v7;
  v17 = v2;
  v14 = v4;
  v15 = v6;
  v16 = v8;

  sub_1006582D0();
}

void sub_100658A90()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton____lazy_storage___containerView) = 0;
  v2 = OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_iconView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_isOn) = 0;
  v5 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTranslationEnabled) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_accessibilityTransliterationEnabled) = 0;
  v9 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_specs);
  *v9 = sub_1006587CC([objc_allocWithZone(UITraitCollection) init]);
  v9[1] = v10;
  v9[2] = v11;
  v9[3] = v12;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100658BEC()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menu);
  if (!v1)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v8[4] = NowPlaying.TrackMetadata.underlyingItem.getter;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100747EBC;
  v8[3] = &unk_1010B8BD0;
  v4 = _Block_copy(v8);
  v5 = v1;

  v6 = [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
  [v6 setPreferredMenuElementOrder:2];

  return v6;
}

char *sub_100658D84(void *a1)
{
  result = [a1 state];
  if ((result - 3) >= 3)
  {
    if (result == 1)
    {
      *(v1 + 56) = 1;
      v4 = *(v1 + 24);
      if (v4)
      {
        return v4();
      }
    }
  }

  else
  {
    if (*(v1 + 56) == 1)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        result = v3();
      }
    }

    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t sub_100658E60()
{
  sub_100020438(*(v0 + 24), *(v0 + 32));
  sub_100020438(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

id sub_100658F34(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate;
  v4 = *(v2 + OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate);
  }

  else
  {
    v6 = [objc_allocWithZone(type metadata accessor for CatchAllPassiveGestureRecognizer.AlwaysSimultaneousGestureRecognizerDelegate()) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100658FA4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC5Music32CatchAllPassiveGestureRecognizer____lazy_storage___alwaysSimultaneousGestureRecognizerDelegate] = 0;
  sub_1000189C0(a1, v18);
  v5 = v19;
  if (v19)
  {
    sub_10000954C(v18, v19);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v5);
    sub_10000959C(v18);
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for CatchAllPassiveGestureRecognizer();
  v17.receiver = v2;
  v17.super_class = v11;
  v12 = objc_msgSendSuper2(&v17, "initWithTarget:action:", v10, a2);
  swift_unknownObjectRelease();
  v13 = v12;
  v15 = sub_100658F34(v13, v14);
  [v13 setDelegate:v15];

  [v13 setMinimumPressDuration:0.0];
  [v13 setCancelsTouchesInView:0];
  [v13 setDelaysTouchesBegan:0];
  [v13 setDelaysTouchesEnded:0];

  sub_100011DF0(a1);
  return v13;
}

id sub_100659234(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100659308(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

void sub_100659390(double a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() blackColor];
  v6 = [v5 colorWithAlphaComponent:a1];

  *a3 = v6;
}

id sub_100659418(uint64_t a1, void *a2)
{
  result = [objc_opt_self() whiteColor];
  *a2 = result;
  return result;
}

void sub_100659484(uint64_t a1, double *a2, uint64_t *a3)
{
  sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  v4 = UIFontTextStyleBody;
  v5 = static UIFont.preferredFont(forTextStyle:weight:)();

  *a3 = v5;
}

id sub_100659504()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.4];
  qword_1012191E0 = result;
  return result;
}

id sub_100659544(char **a1)
{
  v103 = String._bridgeToObjectiveC()();
  v91 = String._bridgeToObjectiveC()();
  v108 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 defaultParagraphStyle];
  [v3 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v106 = sub_100009F78(0, &qword_101194D60, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();
  v4 = v115;
  [v115 setParagraphSpacing:6.0];
  [v115 setLineBreakStrategy:1];
  if (*(*&v1 + 96))
  {
    v5 = *(*&v1 + 88);

    [v115 setAlignment:{NSTextAlignment.init(languageCode:)(v5, v6)}];
  }

  v90 = v1;
  v7 = [v2 defaultParagraphStyle];
  [v7 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v101 = v115;
  [v115 setAlignment:0];
  sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = NSForegroundColorAttributeName;
  v9 = qword_10117FA98;
  v104 = NSForegroundColorAttributeName;
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1012191A0;
  v11 = sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  *(inited + 40) = v10;
  v96 = v11;
  *(inited + 64) = v11;
  *(inited + 72) = NSParagraphStyleAttributeName;
  *(inited + 80) = v4;
  *(inited + 104) = v106;
  *(inited + 112) = NSFontAttributeName;
  v12 = qword_10117FAA0;
  v13 = NSParagraphStyleAttributeName;
  v14 = NSFontAttributeName;
  v15 = v13;
  v16 = v14;
  v17 = v15;
  v18 = v16;
  v19 = v10;
  v98 = v4;
  if (v12 != -1)
  {
    swift_once();
  }

  v20 = qword_1012191A8;
  v99 = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  *(inited + 144) = v99;
  *(inited + 120) = v20;
  v21 = v20;
  v22 = sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101180420, &unk_100EDEFD0);
  swift_arrayDestroy();
  v118 = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100EBE260;
  *(v23 + 32) = v104;
  if (qword_10117FAC0 != -1)
  {
    swift_once();
  }

  v24 = qword_1012191C8;
  *(v23 + 40) = qword_1012191C8;
  *(v23 + 64) = v96;
  *(v23 + 72) = v17;
  *(v23 + 80) = v101;
  *(v23 + 104) = v106;
  *(v23 + 112) = v18;
  v25 = qword_10117FAC8;
  v26 = v24;
  v27 = v101;
  if (v25 != -1)
  {
    swift_once();
  }

  v28 = qword_1012191D0;
  *(v23 + 144) = v99;
  *(v23 + 120) = v28;
  v29 = v28;
  v102 = sub_10010BA14(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_100EBE260;
  *(v30 + 32) = v104;
  *(v30 + 40) = v26;
  *(v30 + 64) = v96;
  *(v30 + 72) = v17;
  *(v30 + 80) = v27;
  *(v30 + 104) = v106;
  *(v30 + 112) = v18;
  v107 = v18;
  v31 = qword_10117FAD0;
  v97 = v27;
  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_1012191D8;
  v33 = v99;
  *(v30 + 144) = v99;
  *(v30 + 120) = v32;
  v34 = v32;
  v93 = sub_10010BA14(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  v35 = &selRef__replacePlaceholderViewWithView_;
  v36 = [objc_allocWithZone(NSStringDrawingContext) init];
  v37 = &selRef_setContacts_;
  [v36 setWantsNumberOfLineFragments:1];
  type metadata accessor for Key(0);
  sub_10065AAEC();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = v36;
  v40 = &selRef_setContacts_;
  [v108 boundingRectWithSize:1 options:isa attributes:v39 context:{248.0, INFINITY}];
  v42 = v41;

  if ([v39 numberOfLineFragments] < 5)
  {
    goto LABEL_16;
  }

  if (qword_10117FAA8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v43 = qword_1012191B0;
    v111 = v33;
    *&aBlock = qword_1012191B0;
    sub_100016270(&aBlock, &v115);
    v44 = v43;
    v45 = v118;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114[0] = v45;
    sub_1006C702C(&v115, v107, isUniquelyReferenced_nonNull_native);
    v118 = v114[0];

    [v98 setParagraphSpacing:4.0];

    v47 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v108 v40[241]];
    v42 = v48;

LABEL_16:
    v95 = v39;

    v33 = &swift_retain_ptr;
    v49 = [objc_allocWithZone(NSStringDrawingContext) v35[321]];
    [v49 v37[240]];
    v39 = &selRef_setContacts_;
    [v49 setMaximumNumberOfLines:3];
    v50 = Dictionary._bridgeToObjectiveC()().super.isa;
    [v103 v40[241]];
    v52 = v51;
    v54 = v53;

    v55 = [objc_allocWithZone(NSStringDrawingContext) v35[321]];
    [v55 v37[240]];
    v56 = [v49 numberOfLineFragments];
    if (__OFSUB__(4, v56))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (((4 - v56) & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  [v55 setMaximumNumberOfLines:?];
  v57 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v91 v40[241]];
  v107 = v58;
  rect = v59;

  v60 = *(*&v90 + 16);
  v61 = 0;
  if (v60 == 1)
  {
    v62 = 34.0;
  }

  else
  {
    v62 = 0.0;
  }

  v115 = *&v62;
  v116 = xmmword_100EDA600;
  v63 = 0;
  v64 = v62;
  v65 = 0x4071800000000000;
  v94 = CGRectGetMinX(*(&v61 - 1)) + 16.0;
  v119.origin.y = 0.0;
  v119.size.height = 0.0;
  v119.origin.x = v62;
  v119.size.width = 280.0;
  v90 = CGRectGetMinY(v119) + 12.0;
  v120.origin.y = 0.0;
  v120.size.height = 0.0;
  v120.origin.x = v62;
  v120.size.width = 280.0;
  v100 = v54;
  MinX = CGRectGetMinX(v120);
  v121.size.width = 248.0;
  v121.origin.x = v94;
  v121.origin.y = v90;
  v121.size.height = v42;
  v89 = v42;
  v67 = CGRectGetMaxY(v121) + 12.0;
  v122.origin.y = 0.0;
  v122.size.height = 0.0;
  v122.origin.x = v62;
  v122.size.width = 280.0;
  Width = CGRectGetWidth(v122);
  *v114 = MinX;
  *&v114[1] = v67;
  v82 = Width;
  *&v114[2] = Width;
  v123.origin.y = 0.0;
  v123.size.height = 0.0;
  v123.origin.x = v62;
  v123.size.width = 280.0;
  v88 = CGRectGetMinX(v123) + 16.0;
  v124.size.height = 0.0;
  v124.origin.x = MinX;
  v124.origin.y = v67;
  v124.size.width = Width;
  v87 = CGRectGetMinY(v124) + 16.0;
  v125.origin.x = v88;
  v125.origin.y = v87;
  v125.size.width = 52.0;
  v125.size.height = 52.0;
  v69 = CGRectGetMaxX(v125) + 12.0;
  v126.origin.x = v88;
  v126.origin.y = v87;
  v126.size.width = 52.0;
  v126.size.height = 52.0;
  v70 = CGRectGetMinY(v126) + -2.0;
  v127.origin.x = v69;
  v127.origin.y = v70;
  v127.size.width = v52;
  v127.size.height = v100;
  v85 = CGRectGetMinX(v127);
  v128.origin.x = v69;
  v128.origin.y = v70;
  v128.size.width = v52;
  v128.size.height = v100;
  MaxY = CGRectGetMaxY(v128);
  v129.origin.x = v69;
  v129.origin.y = v70;
  v129.size.width = v52;
  v129.size.height = v100;
  v83 = CGRectGetMinX(v129);
  v130.origin.x = v85;
  v130.origin.y = MaxY;
  *&v130.size.width = v107;
  v130.size.height = rect;
  v71 = CGRectGetMaxY(v130) + 3.0;
  v131.size.width = 46.0;
  v131.size.height = 11.0;
  v131.origin.x = v83;
  v131.origin.y = v71;
  v72 = CGRectGetMaxY(v131) + 16.0;
  v132.origin.y = 0.0;
  v132.size.height = 0.0;
  v132.origin.x = v62;
  v132.size.width = 280.0;
  v73 = v72 - CGRectGetMinY(v132);
  v117 = v73;
  v133.size.height = 0.0;
  v133.origin.x = MinX;
  v133.size.width = v82;
  v133.origin.y = v67;
  v74 = v73 - CGRectGetMaxY(v133);
  v134.origin.y = 0.0;
  v134.origin.x = v62;
  v134.size.width = 280.0;
  v134.size.height = v73;
  *&v114[3] = v74 + CGRectGetMinY(v134);
  v135.origin.y = 0.0;
  v135.origin.x = v62;
  v135.size.width = 280.0;
  v135.size.height = v73;
  v86 = v49;
  v75 = v55;
  v76 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{dbl_100EDA688[v60], CGRectGetMaxY(v135) + 16.0}];
  v77 = swift_allocObject();
  *(v77 + 16) = &v115;
  *(v77 + 24) = v114;
  *(v77 + 32) = v108;
  *(v77 + 40) = v94;
  *(v77 + 48) = v90;
  *(v77 + 56) = 0x406F000000000000;
  *(v77 + 64) = v89;
  *(v77 + 72) = &v118;
  *(v77 + 80) = v103;
  *(v77 + 88) = v69;
  *(v77 + 96) = v70;
  *(v77 + 104) = v52;
  *(v77 + 112) = v100;
  *(v77 + 120) = v102;
  *(v77 + 128) = v91;
  *(v77 + 136) = v85;
  *(v77 + 144) = MaxY;
  *(v77 + 152) = v107;
  *(v77 + 160) = rect;
  *(v77 + 168) = v93;
  *(v77 + 176) = v83;
  *(v77 + 184) = v71;
  *(v77 + 192) = xmmword_100EDA610;
  *(v77 + 208) = v88;
  *(v77 + 216) = v87;
  *(v77 + 224) = vdupq_n_s64(0x404A000000000000uLL);
  v35 = a1;
  *(v77 + 240) = a1;
  v33 = swift_allocObject();
  v33[2] = sub_10065AB44;
  v33[3] = v77;
  v112 = sub_1001EBE40;
  v113 = v33;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v110 = sub_10006BD7C;
  v111 = &unk_1010B8C98;
  v78 = _Block_copy(&aBlock);
  v37 = v108;
  v40 = v103;
  v39 = v91;
  v79 = a1;

  v80 = [v76 imageWithActions:v78];

  _Block_release(v78);
  LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

  if (v75)
  {
    goto LABEL_25;
  }

  return v80;
}

void sub_10065A234(CGRect *a1, double *a2, CGRect *a3, void *a4, uint64_t *a5, void *a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, uint64_t a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, void *a30)
{
  v102 = a4;
  v103 = a7;
  v101 = a5;
  v43 = type metadata accessor for CGPathFillRule();
  v44 = *(v43 - 8);
  __chkstk_darwin();
  v46 = &v85 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = objc_opt_self();
  v48 = [v47 _bezierPathWithPillRect:*a2 cornerRadius:{a2[1], a2[2], a2[3], 16.0}];
  if (!v48)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v49 = v48;
  v104 = a3;
  v105 = v46;
  v94 = a9;
  v95 = a10;
  v96 = a11;
  v97 = a12;
  v98 = a6;
  v99 = a8;
  v100 = v43;
  v91 = v47;
  v93 = a21;
  v50 = [(CGRect *)a1 CGContext];
  v51 = [v49 CGPath];
  CGContextAddPath(v50, v51);

  v52 = [(CGRect *)a1 CGContext];
  if (qword_10117FA90 != -1)
  {
    swift_once();
  }

  v53 = [qword_101219198 CGColor];
  CGContextSetFillColorWithColor(v52, v53);

  v54 = [(CGRect *)a1 CGContext];
  v55 = enum case for CGPathFillRule.winding(_:);
  v57 = v44 + 104;
  v56 = *(v44 + 104);
  v58 = v105;
  v59 = v100;
  v56(v105, enum case for CGPathFillRule.winding(_:), v100);
  CGContextRef.fillPath(using:)();

  v61 = *(v44 + 8);
  v60 = v44 + 8;
  v92 = v61;
  v61(v58, v59);
  v89 = v49;
  [v49 addClip];
  v62 = CGPathCreateWithRect(*v104, 0);
  v63 = [(CGRect *)a1 CGContext];
  v86 = v62;
  CGContextAddPath(v63, v62);

  v64 = [(CGRect *)a1 CGContext];
  if (qword_10117FAB0 != -1)
  {
    swift_once();
  }

  v65 = [qword_1012191B8 CGColor];
  CGContextSetFillColorWithColor(v64, v65);

  v104 = a1;
  v66 = [(CGRect *)a1 CGContext];
  v88 = v55;
  v87 = v56;
  v56(v58, v55, v59);
  CGContextRef.fillPath(using:)();

  v90 = v60;
  v67 = v92;
  v92(v58, v59);
  type metadata accessor for Key(0);
  sub_10065AAEC();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v102 drawWithRect:33 options:isa attributes:0 context:{v94, v95, v96, v97}];

  v69 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v98 drawWithRect:33 options:v69 attributes:0 context:{a13, a14, a15, a16}];

  v70 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v99 drawWithRect:33 options:v70 attributes:0 context:{a17, a18, a19, a20}];

  v71 = objc_opt_self();
  v72 = String._bridgeToObjectiveC()();
  v73 = v57;
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v74 = [v71 imageNamed:v72 inBundle:qword_101218F90 compatibleWithTraitCollection:0];

  if (!v74)
  {
    goto LABEL_16;
  }

  v75 = v105;
  if (qword_10117FAD8 != -1)
  {
    swift_once();
  }

  v103 = v73;
  v76 = [v74 flattenedImageWithColor:qword_1012191E0];

  [v76 drawInRect:{a22, a23, a24, a25}];
  v77 = [(CGRect *)v104 CGContext];
  if (qword_10117FAB8 != -1)
  {
    swift_once();
  }

  v78 = [qword_1012191C0 CGColor];
  v106.width = 0.0;
  v106.height = 2.0;
  CGContextSetShadowWithColor(v77, v106, 4.0, v78);

  v79 = [v91 _bezierPathWithPillRect:a26 cornerRadius:{a27, a28, a29, 4.0}];
  if (v79)
  {
    v80 = v79;
    v81 = v104;
    v82 = [(CGRect *)v104 CGContext];
    v83 = [v80 CGPath];
    CGContextAddPath(v82, v83);

    v84 = [(CGRect *)v81 CGContext];
    v87(v75, v88, v59);
    CGContextRef.fillPath(using:)();

    v67(v75, v59);
    [v80 addClip];
    [a30 drawInRect:{a26, a27, a28, a29}];

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10065AA3C()
{

  return swift_deallocClassInstance();
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

unint64_t sub_10065AAEC()
{
  result = qword_10118AC30;
  if (!qword_10118AC30)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118AC30);
  }

  return result;
}

void sub_10065ABD0(__int128 *a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10065B00C();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

void sub_10065ADE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for Genre();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CFA0, &qword_100EC8C38);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
}

Swift::Int sub_10065AEAC()
{
  Hasher.init(_seed:)();
  sub_10065ABD0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10065AEF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10065ABD0(v2);
  return Hasher._finalize()();
}

unint64_t sub_10065AF30()
{
  result = qword_10119BBA8;
  if (!qword_10119BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BBA8);
  }

  return result;
}

unint64_t sub_10065AF90(uint64_t a1)
{
  result = sub_10065AFB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10065AFB8()
{
  result = qword_10119BC88;
  if (!qword_10119BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BC88);
  }

  return result;
}

unint64_t sub_10065B00C()
{
  result = qword_101180378;
  if (!qword_101180378)
  {
    type metadata accessor for MusicLibrary();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101180378);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_20;
  }

  v2 = a2 + 8;
  if (a2 + 8 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 8;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 8;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsAuthority.TabID(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 < 0xF8)
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10065B1BC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10065B1D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_10065B200()
{
  result = qword_10119BC90;
  if (!qword_10119BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BC90);
  }

  return result;
}

char *sub_10065B254()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertySongTraits])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [v0 traits];
  v2 = v1;
  if ((v1 & 2) == 0)
  {
    v3 = _swiftEmptyArrayStorage;
    if ((v1 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v3 = sub_1004990D0(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v3;
    v20 = *(v3 + 2);
    v21 = sub_1004990D0((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v3 = v21;
  }

  *(v3 + 2) = v7;
  v3[v5 + 32] = 6;
  if ((v2 & 4) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v9 = *(v3 + 3);
    v10 = v8 + 1;
    if (v8 >= v9 >> 1)
    {
      v22 = v3;
      v23 = *(v3 + 2);
      v24 = sub_1004990D0((v9 > 1), v8 + 1, 1, v22);
      v8 = v23;
      v3 = v24;
    }

    *(v3 + 2) = v10;
    v3[v8 + 32] = 5;
  }

LABEL_14:
  if ((v2 & 0x20) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v14 = *(v3 + 2);
    v15 = *(v3 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v28 = v3;
      v29 = *(v3 + 2);
      v30 = sub_1004990D0((v15 > 1), v14 + 1, 1, v28);
      v14 = v29;
      v3 = v30;
    }

    *(v3 + 2) = v16;
    v3[v14 + 32] = 3;
    if ((v2 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v12 = *(v3 + 3);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v25 = v3;
    v26 = *(v3 + 2);
    v27 = sub_1004990D0((v12 > 1), v11 + 1, 1, v25);
    v11 = v26;
    v3 = v27;
  }

  *(v3 + 2) = v13;
  v3[v11 + 32] = 4;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v2)
  {
LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1004990D0(0, *(v3 + 2) + 1, 1, v3);
    }

    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    if (v18 >= v17 >> 1)
    {
      v3 = sub_1004990D0((v17 > 1), v18 + 1, 1, v3);
    }

    *(v3 + 2) = v18 + 1;
    v3[v18 + 32] = 7;
  }

LABEL_33:
  v31 = v3;

  sub_10065BD54(&v31);

  return v31;
}

uint64_t sub_10065B558(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 1;
      case 7u:
        if (a2 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 1;
      case 8u:
        if (a2 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 1;
      case 4u:
        if (a2 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 1;
      case 5u:
        if (a2 != 5)
        {
          v2 = 2;
LABEL_24:
          if ((a2 - 3) >= 6u)
          {
            v5 = 6;
          }

          else
          {
            v5 = (a2 - 3);
          }

          v4 = v2 >= v5;
          goto LABEL_28;
        }

        return 1;
    }
  }

  if ((a2 - 3) < 6u)
  {
    v2 = 6;
    goto LABEL_24;
  }

  v4 = a1 >= a2;
LABEL_28:
  v6 = !v4;
  return v6 ^ 1u;
}

uint64_t sub_10065B658(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        if (a1 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 1;
      case 7u:
        if (a1 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 1;
      case 8u:
        if (a1 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        if (a1 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 1;
      case 4u:
        if (a1 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 1;
      case 5u:
        if (a1 != 5)
        {
          v2 = 2;
LABEL_24:
          if ((a1 - 3) >= 6u)
          {
            v5 = 6;
          }

          else
          {
            v5 = (a1 - 3);
          }

          v4 = v2 >= v5;
          goto LABEL_28;
        }

        return 1;
    }
  }

  if ((a1 - 3) < 6u)
  {
    v2 = 6;
    goto LABEL_24;
  }

  v4 = a2 >= a1;
LABEL_28:
  v6 = !v4;
  return v6 ^ 1u;
}

BOOL sub_10065B758(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    switch(a2)
    {
      case 6u:
        if (a1 != 6)
        {
          v2 = 3;
          goto LABEL_24;
        }

        return 0;
      case 7u:
        if (a1 != 7)
        {
          v2 = 4;
          goto LABEL_24;
        }

        return 0;
      case 8u:
        if (a1 != 8)
        {
          v2 = 5;
          goto LABEL_24;
        }

        return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 3u:
        if (a1 != 3)
        {
          v2 = 0;
          goto LABEL_24;
        }

        return 0;
      case 4u:
        if (a1 != 4)
        {
          v2 = 1;
          goto LABEL_24;
        }

        return 0;
      case 5u:
        if (a1 != 5)
        {
          v2 = 2;
          goto LABEL_24;
        }

        return 0;
    }
  }

  if ((a1 - 3) >= 6u)
  {
    return a2 < a1;
  }

  v2 = 6;
LABEL_24:
  if ((a1 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a1 - 3);
  }

  return v2 < v4;
}

uint64_t sub_10065B858(unsigned __int8 a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

Swift::Int sub_10065BA98()
{
  result = sub_10010E380(&off_101099198);
  qword_1012191E8 = result;
  return result;
}

Swift::Int sub_10065BAC0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    Hasher._combine(_:)(6uLL);
    v2 = a1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_UNKNOWN **sub_10065BB28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10065CD0C();
  *a1 = result;
  return result;
}

void sub_10065BB88()
{
  v1 = *v0;
  v2 = v1 - 3;
  if ((v1 - 3) >= 6)
  {
    Hasher._combine(_:)(6uLL);
    v2 = v1;
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10065BBD0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = v2 - 3;
  if ((v2 - 3) >= 6)
  {
    Hasher._combine(_:)(6uLL);
    v3 = v2;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_10065BC7C()
{
  result = qword_10119BCA8;
  if (!qword_10119BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119BCA8);
  }

  return result;
}

uint64_t sub_10065BD00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10065BD54(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F030(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_10065BDC0(v4);
  *a1 = v2;
}

void sub_10065BDC0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_10065BFE4(v7, v8, a1, v4);
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
    sub_10065BEB8(0, v2, 1, a1);
  }
}

uint64_t sub_10065BEB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v7 > 5)
      {
        switch(v7)
        {
          case 6:
            if (v10 == 6)
            {
              goto LABEL_4;
            }

            v11 = 3;
            goto LABEL_27;
          case 7:
            if (v10 == 7)
            {
              goto LABEL_4;
            }

            v11 = 4;
            goto LABEL_27;
          case 8:
            if (v10 == 8)
            {
              goto LABEL_4;
            }

            v11 = 5;
            goto LABEL_27;
        }
      }

      else
      {
        switch(v7)
        {
          case 3:
            if (v10 == 3)
            {
              goto LABEL_4;
            }

            v11 = 0;
            goto LABEL_27;
          case 4:
            if (v10 == 4)
            {
              goto LABEL_4;
            }

            v11 = 1;
            goto LABEL_27;
          case 5:
            if (v10 == 5)
            {
              goto LABEL_4;
            }

            v11 = 2;
            goto LABEL_27;
        }
      }

      if (v10 - 3 > 5)
      {
        if (v7 >= v10)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

      v11 = 6;
LABEL_27:
      result = (v10 - 3);
      if (v10 - 3 >= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = (v10 - 3);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_31:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v9 = v10;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void sub_10065BFE4(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_175:
    v4 = *a1;
    if (!*a1)
    {
      goto LABEL_216;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_177:
      v82 = v7 + 16;
      v83 = *(v7 + 2);
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = &v7[16 * v83];
          v85 = *v84;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_10065C7AC((*a3 + *v84), (*a3 + *v86), (*a3 + v87), v4);
          if (v92)
          {
            goto LABEL_184;
          }

          if (v87 < v85)
          {
            goto LABEL_202;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_203;
          }

          *v84 = v85;
          *(v84 + 1) = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_204;
          }

          v92 = 0;
          v83 = *v82 - 1;
          memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          if (v83 <= 1)
          {
            goto LABEL_184;
          }
        }

        goto LABEL_214;
      }

LABEL_184:

      return;
    }

LABEL_210:
    v7 = sub_10059F01C(v7);
    goto LABEL_177;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_81;
    }

    v9 = *(*a3 + v6);
    v10 = *(*a3 + v8);
    if (v9 > 5)
    {
      switch(v9)
      {
        case 6u:
          if (v10 != 6)
          {
            v11 = 3;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 7u:
          if (v10 != 7)
          {
            v11 = 4;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 8u:
          if (v10 != 8)
          {
            v11 = 5;
            goto LABEL_28;
          }

LABEL_25:
          v12 = 0;
          goto LABEL_35;
      }
    }

    else
    {
      switch(v9)
      {
        case 3u:
          if (v10 != 3)
          {
            v11 = 0;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 4u:
          if (v10 != 4)
          {
            v11 = 1;
            goto LABEL_28;
          }

          goto LABEL_25;
        case 5u:
          if (v10 != 5)
          {
            v11 = 2;
LABEL_28:
            LODWORD(v14) = v10 - 3;
            if (v14 >= 6)
            {
              v14 = 6;
            }

            else
            {
              v14 = v14;
            }

            v13 = v11 >= v14;
            goto LABEL_32;
          }

          goto LABEL_25;
      }
    }

    if (v10 - 3 < 6)
    {
      v11 = 6;
      goto LABEL_28;
    }

    v13 = v9 >= v10;
LABEL_32:
    v12 = !v13;
LABEL_35:
    v6 = v8 + 2;
    if (v8 + 2 >= v5)
    {
      goto LABEL_72;
    }

    do
    {
      v15 = *(*a3 + v6);
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6u:
            if (v9 == 6)
            {
              goto LABEL_37;
            }

            v16 = 3;
            goto LABEL_60;
          case 7u:
            if (v9 == 7)
            {
              goto LABEL_37;
            }

            v16 = 4;
            goto LABEL_60;
          case 8u:
            if (v9 == 8)
            {
              goto LABEL_37;
            }

            v16 = 5;
            goto LABEL_60;
        }
      }

      else
      {
        switch(v15)
        {
          case 3u:
            if (v9 == 3)
            {
              goto LABEL_37;
            }

            v16 = 0;
            goto LABEL_60;
          case 4u:
            if (v9 == 4)
            {
              goto LABEL_37;
            }

            v16 = 1;
            goto LABEL_60;
          case 5u:
            if (v9 == 5)
            {
              goto LABEL_37;
            }

            v16 = 2;
            goto LABEL_60;
        }
      }

      if ((v9 - 3) < 6u)
      {
        v16 = 6;
LABEL_60:
        LODWORD(v17) = (v9 - 3);
        if (v17 >= 6)
        {
          v17 = 6;
        }

        else
        {
          v17 = v17;
        }

        v18 = v16 >= v17;
        goto LABEL_64;
      }

      v18 = v15 >= v9;
      if (v15 == v9)
      {
LABEL_37:
        if (v12)
        {
          goto LABEL_73;
        }

        goto LABEL_38;
      }

LABEL_64:
      v19 = !v18;
      if (v12 != v19)
      {
        goto LABEL_72;
      }

LABEL_38:
      ++v6;
      LOBYTE(v9) = v15;
    }

    while (v5 != v6);
    v6 = v5;
LABEL_72:
    if (v12)
    {
LABEL_73:
      if (v6 < v8)
      {
        goto LABEL_207;
      }

      if (v8 < v6)
      {
        v20 = v6 - 1;
        v21 = v8;
        do
        {
          if (v21 != v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_213;
            }

            v24 = *(v23 + v21);
            *(v23 + v21) = *(v23 + v20);
            *(v23 + v20) = v24;
          }
        }

        while (++v21 < v20--);
        v5 = a3[1];
      }
    }

LABEL_81:
    if (v6 >= v5)
    {
      goto LABEL_124;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_206;
    }

    if (v6 - v8 >= a4)
    {
      goto LABEL_124;
    }

    if (__OFADD__(v8, a4))
    {
      goto LABEL_208;
    }

    if (v8 + a4 < v5)
    {
      v5 = v8 + a4;
    }

    if (v5 < v8)
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    if (v6 == v5)
    {
LABEL_124:
      if (v6 < v8)
      {
        goto LABEL_205;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100498FCC(0, *(v7 + 2) + 1, 1, v7);
      }

      v35 = *(v7 + 2);
      v34 = *(v7 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v7 = sub_100498FCC((v34 > 1), v35 + 1, 1, v7);
      }

      *(v7 + 2) = v36;
      v4 = (v7 + 32);
      v37 = &v7[16 * v35 + 32];
      *v37 = v8;
      *(v37 + 1) = v6;
      v38 = *a1;
      if (!*a1)
      {
        goto LABEL_215;
      }

      if (!v35)
      {
LABEL_3:
        v5 = a3[1];
        a4 = v89;
        if (v6 >= v5)
        {
          goto LABEL_175;
        }

        continue;
      }

      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_144:
          if (v43)
          {
            goto LABEL_192;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_194;
          }

          v62 = &v4[16 * v39];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_197;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_199;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_166;
          }

          goto LABEL_159;
        }

        if (v36 < 2)
        {
          goto LABEL_200;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_159:
        if (v61)
        {
          goto LABEL_196;
        }

        v69 = &v4[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_198;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_166:
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if (!*a3)
        {
          goto LABEL_212;
        }

        v77 = &v4[16 * v39 - 16];
        v78 = *v77;
        v79 = &v4[16 * v39];
        v80 = *(v79 + 1);
        sub_10065C7AC((*a3 + *v77), (*a3 + *v79), (*a3 + v80), v38);
        if (v92)
        {
          goto LABEL_184;
        }

        if (v80 < v78)
        {
          goto LABEL_187;
        }

        if (v39 > *(v7 + 2))
        {
          goto LABEL_188;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *(v7 + 2);
        if (v39 >= v81)
        {
          goto LABEL_189;
        }

        v92 = 0;
        v36 = v81 - 1;
        memmove(&v4[16 * v39], v79 + 16, 16 * (v81 - 1 - v39));
        *(v7 + 2) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v4[16 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_190;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_191;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_193;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_195;
      }

      if (v55 >= v47)
      {
        v73 = &v4[16 * v39];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_201;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_166;
      }

      goto LABEL_144;
    }

    break;
  }

  v25 = *a3;
  v26 = (*a3 + v6);
  v27 = v8 - v6;
  while (2)
  {
    v28 = *(v25 + v6);
    v29 = v27;
    v30 = v26;
LABEL_92:
    v31 = *(v30 - 1);
    if (v28 > 5)
    {
      switch(v28)
      {
        case 6:
          if (v31 == 6)
          {
            goto LABEL_90;
          }

          v32 = 3;
          break;
        case 7:
          if (v31 == 7)
          {
            goto LABEL_90;
          }

          v32 = 4;
          break;
        case 8:
          if (v31 == 8)
          {
            goto LABEL_90;
          }

          v32 = 5;
          break;
        default:
          goto LABEL_107;
      }

LABEL_113:
      if (v31 - 3 >= 6)
      {
        v33 = 6;
      }

      else
      {
        v33 = (v31 - 3);
      }

      if (v32 < v33)
      {
        goto LABEL_117;
      }

LABEL_90:
      ++v6;
      ++v26;
      --v27;
      if (v6 == v5)
      {
        v6 = v5;
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  switch(v28)
  {
    case 3:
      if (v31 == 3)
      {
        goto LABEL_90;
      }

      v32 = 0;
      goto LABEL_113;
    case 4:
      if (v31 == 4)
      {
        goto LABEL_90;
      }

      v32 = 1;
      goto LABEL_113;
    case 5:
      if (v31 == 5)
      {
        goto LABEL_90;
      }

      v32 = 2;
      goto LABEL_113;
  }

LABEL_107:
  if (v31 - 3 <= 5)
  {
    v32 = 6;
    goto LABEL_113;
  }

  if (v28 >= v31)
  {
    goto LABEL_90;
  }

LABEL_117:
  if (v25)
  {
    *v30 = v31;
    *--v30 = v28;
    v13 = __CFADD__(v29++, 1);
    if (v13)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
}

uint64_t sub_10065C7AC(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        if (v11 > 5)
        {
          switch(v11)
          {
            case 6u:
              if (v12 == 6)
              {
                goto LABEL_36;
              }

              v13 = 3;
              goto LABEL_28;
            case 7u:
              if (v12 == 7)
              {
                goto LABEL_36;
              }

              v13 = 4;
              goto LABEL_28;
            case 8u:
              if (v12 == 8)
              {
                goto LABEL_36;
              }

              v13 = 5;
              goto LABEL_28;
          }
        }

        else
        {
          switch(v11)
          {
            case 3u:
              if (v12 == 3)
              {
                goto LABEL_36;
              }

              v13 = 0;
              goto LABEL_28;
            case 4u:
              if (v12 == 4)
              {
                goto LABEL_36;
              }

              v13 = 1;
              goto LABEL_28;
            case 5u:
              if (v12 == 5)
              {
                goto LABEL_36;
              }

              v13 = 2;
              goto LABEL_28;
          }
        }

        if (v12 - 3 > 5)
        {
          if (v11 < v12)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }

        v13 = 6;
LABEL_28:
        if (v12 - 3 >= 6)
        {
          v14 = 6;
        }

        else
        {
          v14 = (v12 - 3);
        }

        if (v13 < v14)
        {
LABEL_32:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_36:
        v16 = v4 + 1;
        LOBYTE(v11) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v16)
          {
            goto LABEL_41;
          }
        }

LABEL_40:
        *v7 = v11;
LABEL_41:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_92;
    }

LABEL_91:
    if (v6 >= v10)
    {
      goto LABEL_92;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_90:
    if (v6 != v4)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  do
  {
    v17 = v6 - 1;
    --v5;
    v18 = v10;
    while (1)
    {
      v20 = *--v18;
      v19 = v20;
      v21 = *v17;
      if (v20 > 5)
      {
        break;
      }

      if (v19 == 3)
      {
        if (v21 != 3)
        {
          v22 = 0;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v19 != 4)
      {
        if (v19 == 5)
        {
          if (v21 != 5)
          {
            v22 = 2;
            goto LABEL_74;
          }

          goto LABEL_78;
        }

LABEL_68:
        if (v21 - 3 <= 5)
        {
          v22 = 6;
          goto LABEL_74;
        }

        if (v19 < v21)
        {
          goto LABEL_82;
        }

        goto LABEL_78;
      }

      if (v21 != 4)
      {
        v22 = 1;
        goto LABEL_74;
      }

LABEL_78:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v19;
      }

      --v5;
      v10 = v18;
      if (v18 <= v4)
      {
        v10 = v18;
        goto LABEL_90;
      }
    }

    if (v19 == 6)
    {
      if (v21 != 6)
      {
        v22 = 3;
        goto LABEL_74;
      }

      goto LABEL_78;
    }

    if (v19 != 7)
    {
      if (v19 == 8)
      {
        if (v21 != 8)
        {
          v22 = 5;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

      goto LABEL_68;
    }

    if (v21 == 7)
    {
      goto LABEL_78;
    }

    v22 = 4;
LABEL_74:
    if (v21 - 3 >= 6)
    {
      v23 = 6;
    }

    else
    {
      v23 = (v21 - 3);
    }

    if (v22 >= v23)
    {
      goto LABEL_78;
    }

LABEL_82:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v21;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v17 > v7);
  v6 = v17;
  if (v17 == v4)
  {
    goto LABEL_91;
  }

LABEL_92:
  memmove(v6, v4, v10 - v4);
  return 1;
}

BOOL sub_10065CB24(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    switch(a1)
    {
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
      case 5u:
        return a2 == 5;
    }

LABEL_16:
    if (a2 - 3 >= 6)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if (a1 != 7)
  {
    if (a1 == 8)
    {
      return a2 == 8;
    }

    goto LABEL_16;
  }

  return a2 == 7;
}

BOOL sub_10065CBE4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 5u)
  {
    switch(a1)
    {
      case 6u:
        if (a2 == 6)
        {
          return 0;
        }

        v3 = 3;
        goto LABEL_29;
      case 7u:
        if (a2 == 7)
        {
          return 0;
        }

        v3 = 4;
        goto LABEL_29;
      case 8u:
        if (a2 == 8)
        {
          return 0;
        }

        v3 = 5;
        goto LABEL_29;
    }
  }

  else
  {
    switch(a1)
    {
      case 3u:
        if (a2 == 3)
        {
          return 0;
        }

        v3 = 0;
        goto LABEL_29;
      case 4u:
        if (a2 == 4)
        {
          return 0;
        }

        v3 = 1;
        goto LABEL_29;
      case 5u:
        if (a2 == 5)
        {
          return 0;
        }

        v3 = 2;
        goto LABEL_29;
    }
  }

  if ((a2 - 3) >= 6u)
  {
    return a1 < a2;
  }

  v3 = 6;
LABEL_29:
  if ((a2 - 3) >= 6u)
  {
    v4 = 6;
  }

  else
  {
    v4 = (a2 - 3);
  }

  return v3 < v4;
}

_UNKNOWN **sub_10065CD0C()
{
  sub_10066CD74(0, 3, 0);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_10066CD74((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 0;
  v4 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    sub_10066CD74((v0 > 1), v1 + 2, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 1;
  if (v2 < (v1 + 3))
  {
    sub_10066CD74((v0 > 1), v1 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v1 + 3;
  *(&_swiftEmptyArrayStorage[4] + v4) = 2;
  sub_100125C50(_swiftEmptyArrayStorage);
  return &off_10109C0A0;
}

void sub_10065CE7C(char a1, char a2)
{
  v3 = v2;
  sub_10010FC20(&qword_10119C158, &unk_100EDACF8);
  __chkstk_darwin();
  v7 = &aBlock - v6;
  LOBYTE(aBlock) = 11;
  v8 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v8) & 1) == 0 || (v9 = [objc_opt_self() currentDevice], v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10 != 1))
  {
    v11 = *(v3 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
    if (v11)
    {
      if (a1)
      {
        v12 = v11;
        [v12 alpha];
        if (v13 != 0.0)
        {
          v14 = objc_opt_self();
          v15 = *(v3 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionAnimationDuration);
          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          v27 = sub_1001D2724;
          v28 = v16;
          aBlock = _NSConcreteStackBlock;
          v24 = 1107296256;
          v25 = sub_10002BC98;
          v26 = &unk_1010B9070;
          v17 = _Block_copy(&aBlock);
          v18 = v12;

          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          v27 = sub_1005EA7C8;
          v28 = v19;
          aBlock = _NSConcreteStackBlock;
          v24 = 1107296256;
          v25 = sub_1005C3688;
          v26 = &unk_1010B90C0;
          v20 = _Block_copy(&aBlock);
          v12 = v18;

          [v14 animateWithDuration:v17 animations:v20 completion:v15];
          _Block_release(v20);
          _Block_release(v17);
        }
      }

      else
      {
        [v11 removeFromSuperview];
      }
    }

    [*(v3 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
    if (a2)
    {
      v21 = sub_10010FC20(&qword_10119BDB8, &qword_100EDAB68);
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      v22 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
      swift_beginAccess();
      sub_10006B010(v7, v3 + v22, &qword_10119C158, &unk_100EDACF8);
      swift_endAccess();
    }
  }
}

id sub_10065D1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  result = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

void sub_10065D24C()
{
  v1 = v0;
  sub_10010FC20(&qword_10119C158, &unk_100EDACF8);
  __chkstk_darwin();
  v3 = &v30[-v2 - 8];
  v4 = sub_10010FC20(&qword_10119BDB8, &qword_100EDAB68);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin();
  v9 = &v30[-v8 - 8];
  v30[0] = 11;
  v10 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v10) & 1) == 0 || (v11 = [objc_opt_self() currentDevice], v12 = objc_msgSend(v11, "userInterfaceIdiom"), v11, v12 != 1))
  {
    v13 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
    swift_beginAccess();
    sub_1000089F8(&v1[v13], v3, &qword_10119C158, &unk_100EDACF8);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v14 = &qword_10119C158;
      v15 = &unk_100EDACF8;
      v16 = v3;
    }

    else
    {
      sub_100662C2C(v3, v9);
      if (*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] >= 0x4000u && (v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated] & 1) == 0)
      {
        v17 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
        [*&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setHidden:1];
        v18 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView;
        v19 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView];
        if (v19)
        {
          [v19 removeFromSuperview];
        }

        sub_1000089F8(v9, v7, &qword_10119BDB8, &qword_100EDAB68);
        v20 = objc_allocWithZone(sub_10010FC20(&qword_10119C168, &unk_100EDADA0));
        v21 = _UIHostingView.init(rootView:)();
        v22 = *&v1[v18];
        *&v1[v18] = v21;

        v23 = *&v1[v18];
        if (!v23 || (v24 = *&v1[v17], v25 = v23, v26 = v24, [v1 bounds], Artwork.View.sizeThatFits(_:)(v27, v28), v26, objc_msgSend(v25, "frame"), objc_msgSend(v25, "setFrame:"), v25, !*&v1[v18]))
        {
          __break(1u);
          return;
        }

        [v1 addSubview:?];
      }

      v14 = &qword_10119BDB8;
      v15 = &qword_100EDAB68;
      v16 = v9;
    }

    sub_1000095E8(v16, v14, v15);
  }
}

id sub_10065D5B4(unsigned __int8 a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (a1 - 1 < 2)
  {
    sub_10065ECCC(v4);
    sub_10065EEBC();
    goto LABEL_9;
  }

  if (a1)
  {
    v6 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_10065ECCC(v4);
    sub_10065EEBC();
    v5 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v5))
    {
LABEL_7:
      v7 = [objc_opt_self() currentDevice];
      v8 = [v7 userInterfaceIdiom];

      if (v8 == 1)
      {
        goto LABEL_9;
      }
    }
  }

  sub_10065E888();
  sub_10065E9C0();
LABEL_9:
  v9 = *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (v9)
  {
    [v9 setAlpha:0.0];
  }

  result = *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}