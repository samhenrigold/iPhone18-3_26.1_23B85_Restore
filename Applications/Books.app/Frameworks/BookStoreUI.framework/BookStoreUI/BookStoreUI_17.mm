uint64_t sub_23DA5C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_72084((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_6620C(&unk_3BF5A0, &qword_2EC790);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_23DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v13;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a4;
  v8[29] = a5;
  sub_2C5C18();
  v8[34] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v8[35] = v10;
  v8[36] = v9;

  return _swift_task_switch(sub_23DBD0, v10, v9);
}

uint64_t sub_23DBD0()
{
  v1 = v0[29];
  v2 = v0[28];
  sub_6620C(&unk_3C44C0, &unk_2F11D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000000307420;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_677B4(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3BD8A0, &unk_2E4840);
  v0[26] = v4;
  v5 = sub_2C05A8();
  if (v6)
  {
    sub_1B6334(v5, v6, 0xD000000000000016, 0x8000000000307460);
  }

  v7 = sub_2BF028();
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_23DD4C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 27, v7, v7);
}

uint64_t sub_23DD4C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_23E1D0;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_23DE68;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23DE68()
{
  v1 = v0[32];
  v2 = v0[27];
  v0[39] = v2;
  v3 = sub_2C5888();
  v0[40] = v3;
  sub_2BE388(v4);
  v6 = v5;
  v0[41] = v5;
  sub_293488(v0[26]);

  isa = sub_2C57C8().super.isa;
  v0[42] = isa;

  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_23E01C;
  v8 = swift_continuation_init();
  v0[25] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_23DA5C;
  v0[21] = &unk_393430;
  v0[22] = v8;
  [v1 sampleAssetID:v3 url:v6 options:isa tracker:v2 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23E01C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);
  if (v2)
  {
    v5 = sub_23E3E8;
  }

  else
  {
    v5 = sub_23E14C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23E14C()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E1D0()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to sample asset %s: %@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23E3E8()
{
  v17 = v0;
  v1 = v0[42];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v5 = sub_2C00B8();
  sub_57AD8(v5, qword_3C2EB8);

  swift_errorRetain();
  v6 = sub_2C0098();
  v7 = sub_2C5DC8();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[28];
    v8 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_5CCF4(v9, v8, &v16);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_0, v6, v7, "Failed to sample asset %s: %@", v10, 0x16u);
    sub_69198(v11, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23E620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[23] = sub_2C5C18();
  v8[24] = sub_2C5C08();
  v9 = sub_2BF028();
  v10 = swift_task_alloc();
  v8[25] = v10;
  *v10 = v8;
  v10[1] = sub_23E6F4;

  return BaseObjectGraph.inject<A>(_:)(v8 + 18, v9, v9);
}

uint64_t sub_23E6F4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v5 = sub_23EB48;
  }

  else
  {
    *(v2 + 216) = v3;
    *(v2 + 224) = v4;
    v5 = sub_23E858;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23E858()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[18];
  v0[29] = v3;
  v4 = sub_2C5888();
  v0[30] = v4;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_23E9A8;
  v5 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23DA5C;
  v0[13] = &unk_393458;
  v0[14] = v5;
  [v2 previewAssetID:v4 asset:v1 tracker:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23E9A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_23ED60;
  }

  else
  {
    v5 = sub_23EAD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23EAD8()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23EB48()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to preview asset %s: %@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23ED60()
{
  v15 = v0;
  v1 = v0[30];
  v2 = v0[29];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v3 = sub_2C00B8();
  sub_57AD8(v3, qword_3C2EB8);

  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_5CCF4(v7, v6, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "Failed to preview asset %s: %@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v10);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 434) = v15;
  *(v8 + 336) = v14;
  *(v8 + 320) = v13;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 280) = a4;
  sub_2C5C18();
  *(v8 + 344) = sub_2C5C08();
  v10 = sub_2C5BB8();
  *(v8 + 352) = v10;
  *(v8 + 360) = v9;

  return _swift_task_switch(sub_23F048, v10, v9);
}

uint64_t sub_23F048()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = v1;
    *(v0 + 435) = [v2 isSG];
    v3 = swift_task_alloc();
    *(v0 + 368) = v3;
    *v3 = v0;
    v3[1] = sub_23F3C0;
    v4 = *(v0 + 296);

    return sub_23C004(v2, v4);
  }

  else
  {
    if (qword_3BB758 != -1)
    {
      swift_once();
    }

    v6 = sub_2C00B8();
    sub_57AD8(v6, qword_3C2EB8);
    v7 = sub_2C0098();
    v8 = sub_2C5DC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Not pushing ContentStoreData because the store asset is not provided", v9, 2u);
    }

    *(v0 + 436) = 0;
    if (*(v0 + 312))
    {
      v10 = sub_2BF028();
      v11 = swift_task_alloc();
      *(v0 + 384) = v11;
      *v11 = v0;
      v11[1] = sub_23F734;

      return BaseObjectGraph.inject<A>(_:)(v0 + 272, v10, v10);
    }

    else
    {
      v13 = *(v0 + 328);
      v12 = *(v0 + 336);
      v14 = *(v0 + 320);
      sub_6620C(&qword_3BF590, &qword_2E2F90);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2E3F30;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;

      isa = sub_2C5B18().super.isa;
      *(v0 + 400) = isa;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 432;
      *(v0 + 24) = sub_23F870;
      v17 = swift_continuation_init();
      *(v0 + 200) = sub_6620C(&qword_3BE890, &qword_2E6F90);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_B2618;
      *(v0 + 168) = &unk_393480;
      *(v0 + 176) = v17;
      [v14 downloadAssetIDs:isa completionHandler:v0 + 144];

      return _swift_continuation_await(v0 + 16);
    }
  }
}

uint64_t sub_23F3C0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_23FCF4;
  }

  else
  {
    v5 = sub_23F4FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23F4FC()
{
  *(v0 + 436) = *(v0 + 435);
  if (*(v0 + 312))
  {
    v1 = sub_2BF028();
    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v2[1] = sub_23F734;

    return BaseObjectGraph.inject<A>(_:)(v0 + 272, v1, v1);
  }

  else
  {
    v4 = *(v0 + 328);
    v3 = *(v0 + 336);
    v5 = *(v0 + 320);
    sub_6620C(&qword_3BF590, &qword_2E2F90);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2E3F30;
    *(v6 + 32) = v4;
    *(v6 + 40) = v3;

    isa = sub_2C5B18().super.isa;
    *(v0 + 400) = isa;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 432;
    *(v0 + 24) = sub_23F870;
    v8 = swift_continuation_init();
    *(v0 + 200) = sub_6620C(&qword_3BE890, &qword_2E6F90);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_B2618;
    *(v0 + 168) = &unk_393480;
    *(v0 + 176) = v8;
    [v5 downloadAssetIDs:isa completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_23F734()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_23FD60;
  }

  else
  {
    v5 = sub_23F9E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23F870()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);

  return _swift_task_switch(sub_23F978, v2, v1);
}

uint64_t sub_23F978()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23F9E4()
{
  v8 = *(v0 + 436);
  v1 = *(v0 + 434);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  *(v0 + 408) = v3;
  v4 = sub_2C5888();
  *(v0 + 416) = v4;
  v5 = sub_2C5888();
  *(v0 + 424) = v5;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 433;
  *(v0 + 88) = sub_23FB68;
  v6 = swift_continuation_init();
  *(v0 + 264) = sub_6620C(&qword_3BE890, &qword_2E6F90);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_B2618;
  *(v0 + 232) = &unk_3934A8;
  *(v0 + 240) = v6;
  [v2 downloadAssetID:v4 redownloadParameters:v5 isAudiobook:v1 hasRacSupport:v8 tracker:v3 completionHandler:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_23FB68()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);

  return _swift_task_switch(sub_23FC70, v2, v1);
}

uint64_t sub_23FC70()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23FCF4()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23FD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_2C5C18();
  v6[21] = sub_2C5C08();
  v8 = sub_2C5BB8();
  v6[22] = v8;
  v6[23] = v7;

  return _swift_task_switch(sub_23FE60, v8, v7);
}

uint64_t sub_23FE60()
{
  v1 = v0[18];
  v2 = sub_2C5888();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_23FF98;
  v3 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23DA5C;
  v0[13] = &unk_3934D0;
  v0[14] = v3;
  [v1 cancelDownloadForAssetID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23FF98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_2400C8;
  }

  else
  {
    v5 = sub_245FAC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2400C8()
{
  v14 = v0;
  v1 = v0[24];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2EB8);

  swift_errorRetain();
  v3 = sub_2C0098();
  v4 = sub_2C5DC8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_5CCF4(v6, v5, &v13);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_0, v3, v4, "Failed to cancel download of asset %s: %@", v7, 0x16u);
    sub_69198(v8, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2402F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 4664) = a5;
  *(v5 + 3944) = a4;
  sub_2C5C18();
  *(v5 + 3992) = sub_2C5C08();
  v7 = sub_2C5BB8();
  *(v5 + 4040) = v7;
  *(v5 + 4088) = v6;

  return _swift_task_switch(sub_240394, v7, v6);
}

uint64_t sub_240394()
{

  sub_6620C(&qword_3BD208, &qword_2E3FC0);
  swift_asyncLet_begin();

  sub_2BF028();
  swift_asyncLet_begin();

  sub_6620C(&qword_3C7AB8, &qword_2F7608);
  swift_asyncLet_begin();

  sub_6620C(&qword_3C7AC0, &qword_2F7620);
  swift_asyncLet_begin();

  sub_6620C(&qword_3C7AC8, &qword_2F7638);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 3256, sub_240558, v0 + 3376);
}

uint64_t sub_240558()
{
  v1[517] = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 162, v1 + 427, sub_240D48, v1 + 432);
  }

  else
  {
    return _swift_task_switch(sub_24059C, v1[505], v1[511]);
  }
}

uint64_t sub_24059C()
{
  sub_691F8((v0 + 407), (v0 + 437));
  v1 = v0[440];
  v0[523] = v1;
  v0[529] = v0[441];
  v0[535] = sub_72084(v0 + 437, v1);

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 417, sub_240628, v0 + 482);
}

uint64_t sub_240628()
{
  v1[541] = v0;
  if (v0)
  {
    v2 = v1[511];
    v3 = v1[505];

    return _swift_task_switch(sub_240EC8, v3, v2);
  }

  else
  {
    sub_691F8((v1 + 417), (v1 + 447));

    return _swift_asyncLet_get_throwing(v1 + 322, v1 + 477, sub_2406DC, v1 + 518);
  }
}

uint64_t sub_2406DC()
{
  v1[547] = v0;
  if (v0)
  {
    sub_68CD0(v1 + 447);
    v2 = v1[511];
    v3 = v1[505];

    return _swift_task_switch(sub_2410B4, v3, v2);
  }

  else
  {
    sub_691F8((v1 + 477), (v1 + 457));

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 427, sub_240798, v1 + 554);
  }
}

uint64_t sub_240798()
{
  v1[553] = v0;
  if (v0)
  {
    sub_68CD0(v1 + 457);
    sub_68CD0(v1 + 447);
    v2 = v1[511];
    v3 = v1[505];

    return _swift_task_switch(sub_2412B4, v3, v2);
  }

  else
  {
    sub_691F8((v1 + 427), (v1 + 467));

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 487, sub_24085C, v1 + 590);
  }
}

uint64_t sub_24085C()
{
  *(v1 + 4472) = v0;
  if (v0)
  {
    sub_68CD0((v1 + 3736));
    sub_68CD0((v1 + 3656));
    sub_68CD0((v1 + 3576));
    v2 = *(v1 + 4088);
    v3 = *(v1 + 4040);

    return _swift_task_switch(sub_2414B4, v3, v2);
  }

  else
  {
    v4 = *(v1 + 4232);
    v5 = *(v1 + 3896);
    *(v1 + 4520) = v5;
    v6 = *(v4 + 8);
    v7 = v5;
    v13 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v1 + 4568) = v8;
    *v8 = v1;
    v8[1] = sub_2409F8;
    v9 = *(v1 + 4232);
    v10 = *(v1 + 4184);
    v11 = *(v1 + 4664);

    return v13(v11, v1 + 3576, v1 + 3656, v1 + 3736, v5, v10, v9);
  }
}

uint64_t sub_2409F8()
{
  v2 = *v1;
  v3 = *(*v1 + 4520);
  v2[577] = v0;

  sub_68CD0(v2 + 467);
  sub_68CD0(v2 + 457);
  sub_68CD0(v2 + 447);
  v4 = v2[511];
  v5 = v2[505];
  if (v0)
  {
    v6 = sub_2416B4;
  }

  else
  {
    v6 = sub_240B50;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_240B50()
{
  sub_68CD0((v0 + 3496));

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3416, sub_240BC0, v0 + 5248);
}

uint64_t sub_240CD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240E54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240EC8()
{
  sub_68CD0((v0 + 3496));

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3416, sub_240F34, v0 + 3904);
}

uint64_t sub_241040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2410B4()
{
  sub_68CD0((v0 + 3496));

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3416, sub_241124, v0 + 4192);
}

uint64_t sub_241240()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412B4()
{
  sub_68CD0((v0 + 3496));

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3416, sub_241324, v0 + 4480);
}

uint64_t sub_241440()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2414B4()
{
  sub_68CD0((v0 + 3496));

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3416, sub_241524, v0 + 4768);
}

uint64_t sub_241640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2416B4()
{
  sub_68CD0((v0 + 3496));

  return _swift_asyncLet_finish(v0 + 1296, v0 + 3416, sub_241724, v0 + 5008);
}

uint64_t sub_241840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2418B4(uint64_t a1)
{
  v3 = sub_6620C(&qword_3BD208, &qword_2E3FC0);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_88BE0;

  return BaseObjectGraph.inject<A>(_:)(a1, v3, v3);
}

uint64_t sub_24197C(uint64_t a1)
{
  v3 = sub_2BF028();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7100C;

  return BaseObjectGraph.inject<A>(_:)(a1, v3, v3);
}

uint64_t sub_241A38(uint64_t a1)
{
  v3 = sub_6620C(&qword_3C7AB8, &qword_2F7608);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_88BE0;

  return BaseObjectGraph.inject<A>(_:)(a1, v3, v3);
}

uint64_t sub_241B00(uint64_t a1)
{
  v3 = sub_6620C(&qword_3C7AC0, &qword_2F7620);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_88BE0;

  return BaseObjectGraph.inject<A>(_:)(a1, v3, v3);
}

uint64_t sub_241BC8(uint64_t a1)
{
  v3 = sub_6620C(&qword_3C7AC8, &qword_2F7638);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_88BE0;

  return BaseObjectGraph.inject<A>(_:)(a1, v3, v3);
}

uint64_t sub_241C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v13;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  sub_2C5C18();
  v8[24] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v8[25] = v10;
  v8[26] = v9;

  return _swift_task_switch(sub_241D38, v10, v9);
}

uint64_t sub_241D38()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_242004;
    v4 = v0[20];

    return sub_23C004(v2, v4);
  }

  else
  {
    if (qword_3BB758 != -1)
    {
      swift_once();
    }

    v6 = sub_2C00B8();
    sub_57AD8(v6, qword_3C2EB8);
    v7 = sub_2C0098();
    v8 = sub_2C5DC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Not pushing ContentStoreData because the store asset is not provided", v9, 2u);
    }

    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    sub_6620C(&qword_3BF590, &qword_2E2F90);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2E3F30;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;

    isa = sub_2C5B18().super.isa;
    v0[29] = isa;

    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_2422D8;
    v15 = swift_continuation_init();
    v0[17] = sub_6620C(&qword_3BE890, &qword_2E6F90);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_B2618;
    v0[13] = &unk_3934F8;
    v0[14] = v15;
    [v12 updateAssetIDs:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_242004()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_24244C;
  }

  else
  {
    v5 = sub_242140;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_242140()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_6620C(&qword_3BF590, &qword_2E2F90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2E3F30;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;

  isa = sub_2C5B18().super.isa;
  *(v0 + 232) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_2422D8;
  v6 = swift_continuation_init();
  *(v0 + 136) = sub_6620C(&qword_3BE890, &qword_2E6F90);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_B2618;
  *(v0 + 104) = &unk_3934F8;
  *(v0 + 112) = v6;
  [v3 updateAssetIDs:isa completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_2422D8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_2423E0, v2, v1);
}

uint64_t sub_2423E0()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24244C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2424B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 864) = v13;
  *(v8 + 856) = a8;
  *(v8 + 848) = a7;
  *(v8 + 840) = a6;
  *(v8 + 832) = a5;
  *(v8 + 945) = a4;
  sub_2C5C18();
  *(v8 + 872) = sub_2C5C08();
  v10 = sub_2C5BB8();
  *(v8 + 880) = v10;
  *(v8 + 888) = v9;

  return _swift_task_switch(sub_242570, v10, v9);
}

uint64_t sub_242570()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 945);
  v3 = swift_allocObject();
  *(v0 + 896) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_6620C(&qword_3BDDA0, &qword_2E5200);
  swift_asyncLet_begin();
  *(v0 + 904) = sub_2C5888();
  *(v0 + 912) = sub_2BE4F8();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 824, sub_24267C, v0 + 720);
}

uint64_t sub_24267C()
{
  v1[115] = v0;
  if (v0)
  {
    v2 = sub_2429CC;
  }

  else
  {
    v2 = sub_2426B4;
  }

  return _swift_task_switch(v2, v1[110], v1[111]);
}

uint64_t sub_2426B4()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[105];
  v4 = v0[103];
  v0[116] = v4;
  v0[82] = v0;
  v0[87] = v0 + 118;
  v0[83] = sub_242804;
  v5 = swift_continuation_init();
  v0[102] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[99] = v5;
  v0[95] = _NSConcreteStackBlock;
  v0[96] = 1107296256;
  v0[97] = sub_23DA5C;
  v0[98] = &unk_393548;
  [v3 setFinishedDateForAssetID:v2 toDate:v1 tracker:v4 callback:v0 + 95];

  return _swift_continuation_await(v0 + 82);
}

uint64_t sub_242804()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  *(*v0 + 936) = v2;
  v3 = *(v1 + 888);
  v4 = *(v1 + 880);
  if (v2)
  {
    v5 = sub_242A5C;
  }

  else
  {
    v5 = sub_242934;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_242934()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 904);

  return _swift_asyncLet_finish(v0 + 16, v0 + 824, sub_2429B0, v0 + 720);
}

uint64_t sub_2429CC()
{
  v1 = *(v0 + 904);

  return _swift_asyncLet_finish(v0 + 16, v0 + 824, sub_242A40, v0 + 720);
}

uint64_t sub_242A5C(uint64_t a1)
{
  v2 = v1[116];
  v3 = v1[114];
  v4 = v1[113];
  swift_willThrow();

  return _swift_asyncLet_finish(v1 + 2, v1 + 103, sub_242AF0, v1 + 90);
}

uint64_t sub_242B0C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return _swift_task_switch(sub_242B30, 0, 0);
}

uint64_t sub_242B30()
{
  if (*(v0 + 56) == 1)
  {
    v1 = sub_2BF028();
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_242C28;

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
  }

  else
  {
    **(v0 + 24) = 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_242C28()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_245FA8;
  }

  else
  {
    v2 = sub_245F88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_242D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 864) = v13;
  *(v8 + 856) = a8;
  *(v8 + 848) = a7;
  *(v8 + 840) = a6;
  *(v8 + 832) = a5;
  *(v8 + 945) = a4;
  sub_2C5C18();
  *(v8 + 872) = sub_2C5C08();
  v10 = sub_2C5BB8();
  *(v8 + 880) = v10;
  *(v8 + 888) = v9;

  return _swift_task_switch(sub_242DF4, v10, v9);
}

uint64_t sub_242DF4()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 945);
  v3 = swift_allocObject();
  *(v0 + 896) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_6620C(&qword_3BDDA0, &qword_2E5200);
  swift_asyncLet_begin();
  *(v0 + 904) = sub_2C5888();
  *(v0 + 912) = sub_2BE4F8();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 824, sub_242F00, v0 + 720);
}

uint64_t sub_242F00()
{
  v1[115] = v0;
  if (v0)
  {
    v2 = sub_2432BC;
  }

  else
  {
    v2 = sub_242F38;
  }

  return _swift_task_switch(v2, v1[110], v1[111]);
}

uint64_t sub_242F38()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[105];
  v4 = v0[103];
  v0[116] = v4;
  v0[82] = v0;
  v0[87] = v0 + 118;
  v0[83] = sub_243088;
  v5 = swift_continuation_init();
  v0[102] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[99] = v5;
  v0[95] = _NSConcreteStackBlock;
  v0[96] = 1107296256;
  v0[97] = sub_23DA5C;
  v0[98] = &unk_393598;
  [v3 setFinishedYearForAssetID:v2 toYearOfDate:v1 tracker:v4 callback:v0 + 95];

  return _swift_continuation_await(v0 + 82);
}

uint64_t sub_243088()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  *(*v0 + 936) = v2;
  v3 = *(v1 + 888);
  v4 = *(v1 + 880);
  if (v2)
  {
    v5 = sub_24356C;
  }

  else
  {
    v5 = sub_2431B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_2431B8()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 904);

  return _swift_asyncLet_finish(v0 + 16, v0 + 824, sub_243234, v0 + 720);
}

uint64_t sub_243250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2432BC()
{
  v1 = *(v0 + 904);

  return _swift_asyncLet_finish(v0 + 16, v0 + 824, sub_243330, v0 + 720);
}

uint64_t sub_24334C()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[107];
    v5 = v0[106];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    v9 = sub_2BE348();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to set finished date for asset %s: %@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24356C(uint64_t a1)
{
  v2 = v1[116];
  v3 = v1[114];
  v4 = v1[113];
  swift_willThrow();

  return _swift_asyncLet_finish(v1 + 2, v1 + 103, sub_243600, v1 + 90);
}

uint64_t sub_24361C()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[107];
    v5 = v0[106];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    v9 = sub_2BE348();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to set finished date for asset %s: %@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24383C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return _swift_task_switch(sub_243860, 0, 0);
}

uint64_t sub_243860()
{
  if (*(v0 + 56) == 1)
  {
    v1 = sub_2BF028();
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_243958;

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
  }

  else
  {
    **(v0 + 24) = 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_243958()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_243A8C;
  }

  else
  {
    v2 = sub_243A6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_243AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_2C5C18();
  v6[21] = sub_2C5C08();
  v8 = sub_2C5BB8();
  v6[22] = v8;
  v6[23] = v7;

  return _swift_task_switch(sub_243B40, v8, v7);
}

uint64_t sub_243B40()
{
  v1 = v0[18];
  v2 = sub_2C5888();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_243C78;
  v3 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7AB0, &qword_2F75C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23DA5C;
  v0[13] = &unk_3935C0;
  v0[14] = v3;
  [v1 unsetFinishedDateForAssetID:v2 callback:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_243C78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_243E10;
  }

  else
  {
    v5 = sub_243DA8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_243DA8()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243E10()
{
  v14 = v0;
  v1 = v0[24];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2EB8);

  swift_errorRetain();
  v3 = sub_2C0098();
  v4 = sub_2C5DC8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_5CCF4(v6, v5, &v13);
    *(v7 + 12) = 2112;
    v10 = sub_2BE348();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_0, v3, v4, "Failed to unset finished date for asset %s: %@", v7, 0x16u);
    sub_69198(v8, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v9);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_244030(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_72084((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_6620C(&unk_3BF5A0, &qword_2EC790);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_244114()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2441B8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_2BEF78();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_244238(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_2BEF78();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, a2, v5);
}

uint64_t sub_2442A8(uint64_t a1, __n128 a2)
{
  result = sub_2BEF78();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_244318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_243AA4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2443E4(uint64_t a1)
{
  sub_2BE588();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_88BE0;

  return sub_242D3C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24450C()
{
  v1 = sub_2BE588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2445E8(uint64_t a1)
{
  sub_2BE588();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_88BE0;

  return sub_2424B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_244710()
{
  v1 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_2BEF78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_24482C(uint64_t a1)
{
  v3 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = v1[4];
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_88BE0;

  return sub_241C90(a1, v7, v8, v11, v1 + v4, v9, v10, v12);
}

uint64_t sub_244994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_2449D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_88BE0;

  return sub_2402F0(a1, v4, v5, v6, v7);
}

uint64_t sub_244A98()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_244AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_23FDC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_244BA8()
{
  v1 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_2BEF78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v4 + 17, v2 | 7);
}

uint64_t sub_244CE0(uint64_t a1)
{
  v3 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v12 = *(v1 + v5);
  v7 = v1[4];
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_88BE0;

  return sub_23EF8C(a1, v14, v13, v7, v1 + v4, v12, v8, v9);
}

uint64_t sub_244E64()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_244EBC(uint64_t a1)
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
  v11[1] = sub_88BE0;

  return sub_23E620(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_244F98()
{
  v1 = sub_2C0638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2BE3B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v12, v10 | 7);
}

uint64_t sub_245124(uint64_t a1)
{
  v3 = *(sub_2C0638() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_2BE3B8();
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_88BE0;

  return sub_23DB28(a1, v7, v8, v10, v11, v1 + v4, v9, v12);
}

uint64_t sub_2452BC()
{
  v1 = sub_2C0638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_2453B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2C0638() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_88BE0;

  return sub_23CF90(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_245504()
{
  v1 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_2BEF78();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, ((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_245634(uint64_t a1)
{
  v3 = *(type metadata accessor for AssetActionImplementation(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 24);
  v15 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_7100C;

  return sub_23B17C(a1, v15, v8, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_2457AC(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_23A50C(a1, v12, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_2458A8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 82, 7);
}

uint64_t sub_245900(uint64_t a1)
{
  v11 = v1[3];
  v12 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_88BE0;

  return sub_238920(a1, v12, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_245A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_245A78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_88BE0;

  return sub_2418B4(a1);
}

uint64_t sub_245B14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_88BE0;

  return sub_24197C(a1);
}

uint64_t sub_245BB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_88BE0;

  return sub_241A38(a1);
}

uint64_t sub_245C4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_88BE0;

  return sub_241B00(a1);
}

uint64_t sub_245CE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_88BE0;

  return sub_241BC8(a1);
}

uint64_t sub_245D84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_245DBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_242B0C(a1, v4, v5);
}

uint64_t sub_245E6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_88BE0;

  return sub_24383C(a1, v4, v5);
}

uint64_t SeriesSeeAllPaginationIntent.paginationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SeriesSeeAllPaginationIntent(0) + 24);
  v4 = sub_2C0E58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SeriesSeeAllPaginationIntent(uint64_t a1)
{
  result = qword_3C7B28;
  if (!qword_3C7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeriesSeeAllPaginationIntent.filterOption.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SeriesSeeAllPaginationIntent(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_24612C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2C0E58();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2461EC(uint64_t result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2C0E58();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_246290(uint64_t a1)
{
  result = sub_7848C();
  if (v2 <= 0x3F)
  {
    result = sub_2C0E58();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t ContentUnavailableComponentModel.init(iconName:title:message:layout:id:titleStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  *&v25 = a6;
  *(&v25 + 1) = a7;
  v14 = a5[1];
  v24 = *a5;
  v23 = *(a5 + 16);
  v26 = *a8;
  v15 = type metadata accessor for ContentUnavailableComponentModel(0);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_6932C(v28, v27, &unk_3BDC90, &unk_2E5620);
  sub_2C1DB8();
  sub_69198(v28, &unk_3BDC90, &unk_2E5620);
  v16 = v15[11];
  v17 = sub_2C5018();
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  *a9 = a1;
  *(a9 + 1) = a2;
  v18 = v15[5];
  v19 = sub_2BFDD8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&a9[v18], a3, v19);
  sub_6932C(a4, &a9[v15[6]], &qword_3BEF80, &qword_2E8D50);
  v21 = &a9[v15[7]];
  *v21 = v24;
  *(v21 + 1) = v14;
  v21[16] = v23;
  v28[0] = v25;
  sub_2C61A8();
  sub_69198(a4, &qword_3BEF80, &qword_2E8D50);
  result = (*(v20 + 8))(a3, v19);
  a9[v15[8]] = v26;
  return result;
}

uint64_t type metadata accessor for ContentUnavailableComponentModel(uint64_t a1)
{
  result = qword_3C7C40;
  if (!qword_3C7C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContentUnavailableComponentModel.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContentUnavailableComponentModel(0) + 20);
  v4 = sub_2BFDD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ContentUnavailableComponentModel.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContentUnavailableComponentModel(0) + 28));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t ContentUnavailableComponentModel.titleStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContentUnavailableComponentModel(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_246704(uint64_t a1)
{
  sub_6932C(a1, v3, &unk_3BDC90, &unk_2E5620);
  sub_6932C(v3, &v2, &unk_3BDC90, &unk_2E5620);
  type metadata accessor for ContentUnavailableComponentModel(0);
  sub_2C1DA8();
  return sub_69198(v3, &unk_3BDC90, &unk_2E5620);
}

uint64_t ContentUnavailableComponentModel.segue.setter(uint64_t a1)
{
  sub_6932C(a1, v3, &unk_3BDC90, &unk_2E5620);
  type metadata accessor for ContentUnavailableComponentModel(0);
  sub_2C1DA8();
  return sub_69198(a1, &unk_3BDC90, &unk_2E5620);
}

void (*ContentUnavailableComponentModel.segue.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ContentUnavailableComponentModel(0);
  *(v3 + 32) = sub_2C1D88();
  return sub_249B94;
}

double ContentUnavailableComponentModel.id.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContentUnavailableComponentModel(0);
  sub_6932C(v1 + *(v3 + 40), v6, &qword_3BE378, &qword_2E5DB0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t ContentUnavailableComponentModel.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ContentUnavailableComponentModel(0) + 40);

  return sub_1DC538(a1, v3);
}

uint64_t ContentUnavailableComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for ContentUnavailableComponentModel(0);
  sub_6932C(v1 + *(v6 + 44), v5, &qword_3BF898, &unk_2EA240);
  return sub_69130(v5, a1, &qword_3BDF58, &unk_2E5B70);
}

uint64_t sub_246A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ContentUnavailableComponentModel(0);
  sub_6932C(a1 + *(v7 + 44), v6, &qword_3BF898, &unk_2EA240);
  return sub_69130(v6, a2, &qword_3BDF58, &unk_2E5B70);
}

uint64_t sub_246B98()
{
  if (*v0)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

void sub_246BD4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657263536C6C7566 && a2 == 0xEA00000000006E65;
  if (v6 || (sub_2C65B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2C65B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_246CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_247300(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_246CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_247300(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_246D2C()
{
  if (*v0)
  {
    return 0x61506D6F74746F62;
  }

  else
  {
    return 0x6964646150706F74;
  }
}

void sub_246D78(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6964646150706F74 && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_2C65B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61506D6F74746F62 && a2 == 0xED0000676E696464)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2C65B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_246E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_247354(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_246EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_247354(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_246F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2473A8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_246F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2473A8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t ContentUnavailableComponentModel.Layout.encode(to:)(void *a1)
{
  v3 = sub_6620C(&qword_3C7B70, &qword_2F7708);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v29 - v4;
  v30 = sub_6620C(&qword_3C7B78, &qword_2F7710);
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v29 - v6;
  v34 = sub_6620C(&qword_3C7B80, &qword_2F7718);
  v8 = *(v34 - 8);
  __chkstk_darwin(v34);
  v10 = &v29 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = *(v1 + 16);
  v14 = sub_72084(a1, a1[3]);
  sub_247300(v14, v15, v16);
  v17 = sub_2C67B8();
  if (v13)
  {
    LOBYTE(v37) = 0;
    sub_2473A8(v17, v18, v19);
    v20 = v34;
    sub_2C64F8();
    (*(v5 + 8))(v7, v30);
    return (*(v8 + 8))(v10, v20);
  }

  else
  {
    LOBYTE(v37) = 1;
    sub_247354(v17, v18, v19);
    v22 = v31;
    v23 = v34;
    v24 = sub_2C64F8();
    v37 = v12;
    v36 = 0;
    sub_148370(v24, v25, v26);
    v27 = v33;
    v28 = v35;
    sub_2C6538();
    if (!v28)
    {
      v37 = v11;
      v36 = 1;
      sub_2C6538();
    }

    (*(v32 + 8))(v22, v27);
    return (*(v8 + 8))(v10, v23);
  }
}

unint64_t sub_247300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7B88;
  if (!qword_3C7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7B88);
  }

  return result;
}

unint64_t sub_247354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7B90;
  if (!qword_3C7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7B90);
  }

  return result;
}

unint64_t sub_2473A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7B98;
  if (!qword_3C7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7B98);
  }

  return result;
}

uint64_t ContentUnavailableComponentModel.Layout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = sub_6620C(&qword_3C7BA0, &qword_2F7720);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v36[-v3];
  v5 = sub_6620C(&qword_3C7BA8, &qword_2F7728);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36[-v6];
  v8 = sub_6620C(&qword_3C7BB0, &unk_2F7730);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36[-v10];
  v12 = a1[3];
  v44 = a1;
  v13 = sub_72084(a1, v12);
  sub_247300(v13, v14, v15);
  v16 = v43;
  sub_2C67A8();
  if (!v16)
  {
    v38 = v5;
    v43 = v9;
    v17 = v42;
    v18 = sub_2C64C8();
    v21 = v8;
    if (*(v18 + 16) == 1)
    {
      v37 = *(v18 + 32);
      if (v37)
      {
        LOBYTE(v47) = 1;
        sub_247354(v18, v19, v20);
        v22 = v4;
        v23 = v11;
        v24 = sub_2C63F8();
        v25 = v21;
        v30 = v17;
        v40 = v25;
        LOBYTE(v46) = 0;
        sub_BA968(v24, v25, v31);
        v32 = v39;
        sub_2C64A8();
        v33 = v43;
        v34 = v47;
        v45 = 1;
        sub_2C64A8();
        (*(v41 + 8))(v22, v32);
        (*(v33 + 8))(v23, v40);
        swift_unknownObjectRelease();
        v35 = v46;
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_2473A8(v18, v19, v20);
        sub_2C63F8();
        v30 = v17;
        (*(v40 + 8))(v7, v38);
        (*(v43 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v34 = 0;
        v35 = 0;
      }

      *v30 = v34;
      *(v30 + 8) = v35;
      *(v30 + 16) = v37 ^ 1;
    }

    else
    {
      v26 = sub_2C6238();
      swift_allocError();
      v28 = v27;
      sub_6620C(&qword_3BE558, &qword_2E6668);
      *v28 = &type metadata for ContentUnavailableComponentModel.Layout;
      sub_2C6408();
      sub_2C6228();
      (*(*(v26 - 8) + 104))(v28, enum case for DecodingError.typeMismatch(_:), v26);
      swift_willThrow();
      (*(v43 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return sub_68CD0(v44);
}

uint64_t sub_247944()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BookStoreUI::ContentUnavailableComponentModel::TitleStyle_optional __swiftcall ContentUnavailableComponentModel.TitleStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_389660;
  v8._object = object;
  v5 = sub_2C63E8(v4, v8);

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

  *v3 = v7;
  return result;
}

uint64_t ContentUnavailableComponentModel.TitleStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_247A4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261646E6F636573;
  }

  else
  {
    v3 = 0x7972616D697270;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (*a2)
  {
    v5 = 0x7261646E6F636573;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (*a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_247AF8()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

double sub_247B80(uint64_t a1)
{
  sub_2C5958();

  return result;
}

Swift::Int sub_247BF4(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

void sub_247C78(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389660;
  v7._object = v3;
  v5 = sub_2C63E8(v4, v7);

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

void sub_247CD8(uint64_t *a1@<X8>)
{
  v2 = 0x7972616D697270;
  if (*v1)
  {
    v2 = 0x7261646E6F636573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_247DCC()
{
  v1 = *v0;
  v2 = 0x656D614E6E6F6369;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x797453656C746974;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 2)
  {
    v5 = 0x74756F79616CLL;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_247EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24983C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_247EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_248834(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_247F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_248834(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t ContentUnavailableComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v52);
  v53 = v50 - v3;
  v4 = sub_2C1DC8();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  __chkstk_darwin(v6 - 8);
  v56 = v50 - v7;
  v8 = sub_2BFDD8();
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C7BB8, &qword_2F7740);
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v13 = v50 - v12;
  v14 = type metadata accessor for ContentUnavailableComponentModel(0);
  __chkstk_darwin(v14);
  v16 = (v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 36);
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  sub_6932C(&v67, v66, &unk_3BDC90, &unk_2E5620);
  v70 = v18;
  sub_2C1DB8();
  sub_69198(&v67, &unk_3BDC90, &unk_2E5620);
  v60 = v14;
  v19 = *(v14 + 44);
  v20 = sub_2C5018();
  v21 = *(*(v20 - 8) + 56);
  v63 = v19;
  v21(v16 + v19, 1, 1, v20);
  v22 = a1[3];
  v62 = a1;
  v23 = sub_72084(a1, v22);
  sub_248834(v23, v24, v25);
  v59 = v13;
  v26 = v61;
  sub_2C67A8();
  if (v26)
  {
    v29 = v64;
    v28 = v65;
    sub_68CD0(v62);
    (*(v29 + 8))(v16 + v70, v28);
    return sub_69198(v16 + v63, &qword_3BF898, &unk_2EA240);
  }

  else
  {
    v27 = v56;
    v61 = v8;
    LOBYTE(v67) = 0;
    *v16 = sub_2C6418();
    v16[1] = v30;
    LOBYTE(v67) = 1;
    v31 = sub_248BEC(&qword_3C36D8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
    v32 = v61;
    v50[1] = v31;
    sub_2C64A8();
    v34 = v64;
    v33 = v65;
    (*(v55 + 32))(v16 + v60[5], v10, v32);
    LOBYTE(v67) = 2;
    sub_2C6458();
    v35 = v60;
    v36 = sub_69130(v27, v16 + v60[6], &qword_3BEF80, &qword_2E8D50);
    v66[0] = 3;
    sub_248888(v36, v37, v38);
    v56 = 0;
    v39 = sub_2C64A8();
    v40 = v68;
    v41 = v16 + v35[7];
    *v41 = v67;
    v41[16] = v40;
    v66[0] = 4;
    sub_2488DC(v39, v42, v43);
    sub_2C64A8();
    *(v16 + v35[8]) = v67;
    LOBYTE(v67) = 5;
    sub_248BEC(&qword_3C36E0, &type metadata accessor for _CodeAnyActionModel_OrNil, &protocol conformance descriptor for _CodeAnyActionModel_OrNil);
    v44 = v54;
    v45 = v58;
    sub_2C64A8();
    (*(v34 + 40))(v16 + v70, v44, v33);
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v66[0] = 6;
    sub_248930();
    sub_2C64A8();
    v46 = v16 + v60[10];
    v47 = v68;
    *v46 = v67;
    *(v46 + 1) = v47;
    *(v46 + 4) = v69;
    LOBYTE(v67) = 7;
    sub_F2F40();
    v48 = v53;
    sub_2C64A8();
    (*(v57 + 8))(v59, v45);
    sub_A9708(v48, v16 + v63, &qword_3BF898, &unk_2EA240);
    sub_212C4C(v16, v51);
    sub_68CD0(v62);
    return sub_248994(v16);
  }
}

unint64_t sub_248834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7BC0;
  if (!qword_3C7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7BC0);
  }

  return result;
}

unint64_t sub_248888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7BC8;
  if (!qword_3C7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7BC8);
  }

  return result;
}

unint64_t sub_2488DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7BD0;
  if (!qword_3C7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7BD0);
  }

  return result;
}

unint64_t sub_248930()
{
  result = qword_3BE390;
  if (!qword_3BE390)
  {
    sub_718D4(&qword_3BE378, &qword_2E5DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE390);
  }

  return result;
}

uint64_t sub_248994(uint64_t a1)
{
  v2 = type metadata accessor for ContentUnavailableComponentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2489F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7BD8;
  if (!qword_3C7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7BD8);
  }

  return result;
}

uint64_t sub_248A90(uint64_t a1)
{
  sub_6932C(a1, v3, &unk_3BDC90, &unk_2E5620);
  sub_2C1DA8();
  return sub_69198(a1, &unk_3BDC90, &unk_2E5620);
}

void (*sub_248B0C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_2C1D88();
  return sub_248B88;
}

uint64_t sub_248BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_248C34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_6932C(v2 + *(a1 + 40), v6, &qword_3BE378, &qword_2E5DB0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_248CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 44), &v9 - v6, &qword_3BF898, &unk_2EA240);
  return sub_69130(v7, a2, &qword_3BDF58, &unk_2E5B70);
}

double sub_248DC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContentUnavailableComponentModel(0);
  sub_6932C(a1 + *(v4 + 40), v7, &qword_3BE378, &qword_2E5DB0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_248E28(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for ContentUnavailableComponentModel(0) + 40);

  return sub_1DF38C(a1, v3);
}

uint64_t sub_248E74(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for ContentUnavailableComponentModel(0) + 44);

  return sub_249ACC(a1, v3);
}

uint64_t sub_248ED0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2BFDD8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_2C1DC8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[10] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_6620C(&qword_3BF898, &unk_2EA240);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2490B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2BFDD8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3BEF80, &qword_2E8D50);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = sub_2C1DC8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_6620C(&qword_3BF898, &unk_2EA240);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24928C(uint64_t a1)
{
  sub_A63F4();
  if (v1 <= 0x3F)
  {
    sub_2BFDD8();
    if (v2 <= 0x3F)
    {
      sub_13A99C(319);
      if (v3 <= 0x3F)
      {
        sub_2C1DC8();
        if (v4 <= 0x3F)
        {
          sub_A62E4();
          if (v5 <= 0x3F)
          {
            sub_F370C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ContentUnavailableComponentModel.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContentUnavailableComponentModel.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_2493D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2493F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

unint64_t sub_249478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7C90;
  if (!qword_3C7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7C90);
  }

  return result;
}

unint64_t sub_2494D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7C98;
  if (!qword_3C7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7C98);
  }

  return result;
}

unint64_t sub_249528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CA0;
  if (!qword_3C7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CA0);
  }

  return result;
}

unint64_t sub_249580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CA8;
  if (!qword_3C7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CA8);
  }

  return result;
}

unint64_t sub_2495D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CB0;
  if (!qword_3C7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CB0);
  }

  return result;
}

unint64_t sub_249630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CB8;
  if (!qword_3C7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CB8);
  }

  return result;
}

unint64_t sub_249688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CC0;
  if (!qword_3C7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CC0);
  }

  return result;
}

unint64_t sub_2496E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CC8;
  if (!qword_3C7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CC8);
  }

  return result;
}

unint64_t sub_249738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CD0;
  if (!qword_3C7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CD0);
  }

  return result;
}

unint64_t sub_249790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CD8;
  if (!qword_3C7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CD8);
  }

  return result;
}

unint64_t sub_2497E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CE0;
  if (!qword_3C7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CE0);
  }

  return result;
}

uint64_t sub_24983C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE800000000000000;
  if (v4 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797453656C746974 && a2 == 0xEA0000000000656CLL || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_249ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDF58, &unk_2E5B70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_249B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C7CE8;
  if (!qword_3C7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7CE8);
  }

  return result;
}

uint64_t sub_249B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_6932C(a3, v25 - v10, &unk_3BDBB0, &qword_2E47D0);
  v12 = sub_2C5C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_69198(v11, &unk_3BDBB0, &qword_2E47D0);
  }

  else
  {
    sub_2C5C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2C5BB8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2C5938() + 32;
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

      sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);

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

  sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);
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

uint64_t sub_249E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_6932C(a3, v25 - v10, &unk_3BDBB0, &qword_2E47D0);
  v12 = sub_2C5C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_69198(v11, &unk_3BDBB0, &qword_2E47D0);
  }

  else
  {
    sub_2C5C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2C5BB8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2C5938() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_6620C(&unk_3C7E10, &qword_2F7EA0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);

      return v22;
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

  sub_69198(a3, &unk_3BDBB0, &qword_2E47D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_6620C(&unk_3C7E10, &qword_2F7EA0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *ContextMenuPresentationContextProtocol.isCompact.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 8))(a1);
  if (result)
  {
    v3 = result;
    v4 = [result traitCollection];

    v5 = [v4 horizontalSizeClass];
    return (v5 == &dword_0 + 1);
  }

  return result;
}

uint64_t ContextMenuPresentationContextProtocol.showShareSheet(with:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v63 = &v55 - v10;
  v55 = *(a4 - 8);
  __chkstk_darwin(v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a4;
  v58 = type metadata accessor for UnsafeSendable(0, a4, v14, v15);
  v57 = *(v58 - 8);
  v16 = *(v57 + 64);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v55 - v18;
  sub_691F8(a1, v70);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = a1[3];
  v21 = a1[4];
  sub_72084(a1, v20);
  v22 = *(v21 + 8);

  v23 = v22(v20, v21);
  if (!*(v23 + 16))
  {

    return sub_69198(v70, &qword_3C7CF8, &qword_2F7DE0);
  }

  sub_691F8(v23 + 32, v66);

  sub_68D1C(v66, v67);
  v24 = v68;
  v25 = v69;
  sub_72084(v67, v68);
  v26 = (*(v25 + 168))(v24, v25);
  v27 = v61;
  v28 = v60;
  v29 = v59;
  if ((v26 & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = v68;
  v31 = v69;
  sub_72084(v67, v68);
  (*(v31 + 264))(v30, v31);
  if (!v32)
  {
    goto LABEL_8;
  }

  v33 = (*(v27 + 8))(v28, v27);
  if (!v33)
  {

LABEL_8:
    v44 = v55;
    (*(v55 + 16))(v13, v29, v28);
    v45 = v62;
    (*(v44 + 32))(v62, v13, v28);
    v46 = sub_2C5C58();
    (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
    sub_691F8(v67, v66);
    sub_6932C(v70, v64, &qword_3C7CF8, &qword_2F7DE0);
    v47 = v57;
    v48 = v56;
    v49 = v27;
    v50 = v58;
    (*(v57 + 16))(v56, v45, v58);
    sub_2C5C18();

    v51 = sub_2C5C08();
    v52 = (*(v47 + 80) + 144) & ~*(v47 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *(v53 + 24) = &protocol witness table for MainActor;
    *(v53 + 32) = v28;
    *(v53 + 40) = v49;
    *(v53 + 48) = &unk_2F7DD0;
    *(v53 + 56) = v19;
    sub_68D1C(v66, v53 + 64);
    v54 = v64[1];
    *(v53 + 104) = v64[0];
    *(v53 + 120) = v54;
    *(v53 + 136) = v65;
    (*(v47 + 32))(v53 + v52, v48, v50);
    sub_249B98(0, 0, v63, &unk_2F7DE8, v53);

    (*(v47 + 8))(v62, v50);
    goto LABEL_9;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = sub_2C5888();

  v37 = a1[3];
  v38 = a1[4];
  sub_72084(a1, v37);
  v39 = (*(v38 + 88))(v37, v38);
  v40 = a1[3];
  v41 = a1[4];
  sub_72084(a1, v40);
  v42 = (*(v41 + 72))(v40, v41);
  [v35 shareURL:v36 fromViewController:v34 sourceView:v39 sourceBarButtonItem:v42];

LABEL_9:
  sub_69198(v70, &qword_3C7CF8, &qword_2F7DE0);
  return sub_68CD0(v67);
}

unint64_t ContextMenuPresentationContextProtocol.newOptionsForShowingHUD.getter(uint64_t a1, uint64_t a2)
{
  v2 = ContextMenuPresentationContextProtocol.transactionProvider.getter(a1, a2);
  if (v2)
  {
    v3 = v2;
    sub_6620C(qword_3C7D00, &unk_2F7DF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    sub_2C58C8();
    sub_2C61A8();
    v5 = [v3 newTransactionWithName:BCTransactionNameShowHUD];
    *(inited + 96) = swift_getObjectType();
    *(inited + 72) = v5;
    v6 = sub_6864C(inited);
    swift_setDeallocating();
    sub_69198(inited + 32, &qword_3BC1E8, &unk_2E2EC0);
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {

    return sub_6864C(_swiftEmptyArrayStorage);
  }
}

uint64_t ContextMenuPresentationContextProtocol.transactionProvider.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v5 = OBJC_IVAR___BSUIContextActionDataModel_transactionProvider;
  swift_beginAccess();
  v6 = *&v4[v5];
  swift_unknownObjectRetain();

  if (!v6)
  {
    v7 = ContextMenuPresentationContextProtocol.transaction.getter(a1, a2);
    if (v7 && (v8 = [v7 originatingSceneController], swift_unknownObjectRelease(), v8))
    {
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t ContextMenuPresentationContextProtocol.transaction.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  v3 = OBJC_IVAR___BSUIContextActionDataModel_transaction;
  swift_beginAccess();
  v4 = *&v2[v3];
  swift_unknownObjectRetain();

  return v4;
}

uint64_t sub_24AAD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_7100C;

  return v13(a1, v8, v9, v10, a4);
}

double sub_24ABFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a1;
  v35 = a4;
  v38 = a7;
  v12 = sub_2C48F8();
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v18 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - v19;
  v21 = a3;
  v22 = dispatch_semaphore_create(0);
  sub_6620C(&qword_3C7E40, &qword_2F7ED0);
  v23 = swift_allocObject();
  v24 = sub_2C5C58();
  *(v23 + 32) = 0u;
  *(v23 + 16) = 0u;
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  sub_691F8(a6, v39);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v26 = v34;
  v27 = v35;
  v25[4] = v23;
  v25[5] = v27;
  v25[6] = a5;
  v25[7] = v26;
  v25[8] = a2;
  v25[9] = v21;
  sub_68D1C(v39, (v25 + 10));
  v25[15] = v22;
  v28 = v21;

  v29 = v22;
  sub_249B98(0, 0, v20, &unk_2F7EE0, v25);

  v30 = v29;
  sub_2C48E8();
  sub_2C4918();
  v31 = v37;
  v32 = *(v36 + 8);
  v32(v14, v37);
  sub_2C5EC8();

  v32(v17, v31);
  swift_beginAccess();
  sub_6932C(v23 + 16, v38, qword_3C0250, &unk_2E4630);

  return result;
}

uint64_t sub_24AEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v11;
  *(v8 + 136) = v10;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  return _swift_task_switch(sub_24AF38, 0, 0);
}

uint64_t sub_24AF38()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v0[9] = v0[15];
  v0[10] = v2;
  v0[11] = v1;
  v4 = v1;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_24B060;
  v6 = v0[18];

  return (v8)(v0 + 2, v0 + 9, v0 + 11, v6);
}

uint64_t sub_24B060()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_24B174, 0, 0);
}

uint64_t sub_24B174()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  sub_CEFB8(v0 + 16, v1 + 16);
  swift_endAccess();
  sub_2C5ED8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v13;
  v8[29] = v14;
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  sub_2C5C18();
  v8[30] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v8[31] = v10;
  v8[32] = v9;

  return _swift_task_switch(sub_24B2AC, v10, v9);
}

uint64_t sub_24B2AC()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = (v0 + 80);
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  sub_691F8(*(v1 + 200), v1 + 144);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_68D1C((v1 + 144), v6 + 32);
  v7 = objc_allocWithZone(AEAssetActivityItemProvider);
  *(v1 + 112) = sub_24CC14;
  *(v1 + 120) = v6;
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_24BE14;
  *(v1 + 104) = &unk_393B30;
  v8 = _Block_copy(v3);

  v9 = [v7 initWithPropertySource:v8];
  *(v1 + 264) = v9;
  _Block_release(v8);

  sub_6620C(&qword_3BC308, &qword_2E2FE0);
  v10 = swift_allocObject();
  *(v1 + 272) = v10;
  *(v10 + 16) = xmmword_2E3F30;
  *(v10 + 56) = sub_66278(0, &qword_3C7E20, AEAssetActivityItemProvider_ptr);
  *(v10 + 32) = v9;
  v11 = objc_opt_self();
  v12 = v9;
  v13 = [v11 sharedController];
  *(v1 + 280) = v13;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_24B524;
  v14 = swift_continuation_init();
  *(v1 + 136) = sub_6620C(&qword_3C7E28, &qword_2F7EC8);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_24BC54;
  *(v1 + 104) = &unk_393B58;
  *(v1 + 112) = v14;
  [v13 activeContextWithCompletion:v3];

  return _swift_continuation_await(v2);
}

uint64_t sub_24B524()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_24B62C, v2, v1);
}

uint64_t sub_24B62C()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 144);

  if (v2)
  {
    v3 = *(v0 + 272);
    *(v0 + 104) = sub_66278(0, &qword_3C7E38, CLSContext_ptr);
    *(v0 + 80) = v2;
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_5C888((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    sub_693CC((v0 + 80), &v3[32 * v5 + 32]);
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 208);
  v8 = [v6 shareType];
  v9 = [v6 propertySource];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = objc_allocWithZone(IMActivityController);
  isa = sub_2C5B18().super.isa;

  *(v0 + 112) = sub_24CC9C;
  *(v0 + 120) = v10;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24BE14;
  *(v0 + 104) = &unk_393BA8;
  v13 = _Block_copy((v0 + 80));
  v14 = [v11 initWithActivityItems:isa applicationActivities:0 shareType:v8 propertySource:v13 tracker:0];

  _Block_release(v13);

  v15 = v7[3];
  v16 = v7[4];
  sub_72084(v7, v15);
  v17 = (*(v16 + 8))(v15, v16);
  if (*(v17 + 16))
  {
    sub_691F8(v17 + 32, v0 + 80);

    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    sub_72084((v0 + 80), v18);
    v20 = (*(v19 + 136))(v18, v19);
    sub_68CD0((v0 + 80));
    if (v20 != 2)
    {
      [v14 setManagedBook:v20 & 1];
    }
  }

  else
  {
  }

  v21 = *(v0 + 208);
  v22 = [v14 viewController];
  v23 = v7[3];
  v24 = v7[4];
  sub_72084(v21, v23);
  v25 = (*(v24 + 88))(v23, v24);
  if (v25)
  {
    v26 = v25;
    v27 = [v22 popoverPresentationController];
    if (v27)
    {
      v28 = v27;
      [v27 setSourceView:v26];
    }

    v29 = [v26 subviews];
    sub_66278(0, &qword_3C7E30, UIView_ptr);
    v30 = sub_2C5B28();

    if (v30 >> 62)
    {
      result = sub_2C6398();
      if (result)
      {
LABEL_14:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v32 = sub_2C6208();
        }

        else
        {
          if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v32 = *(v30 + 32);
        }

        v33 = v32;

        objc_opt_self();
        v34 = swift_dynamicCastObjCClass();
        if (v34)
        {
          v35 = v34;
          v36 = v33;
          [v35 intrinsicContentSize];
          v38 = v37;
          [v35 bounds];
          if (v39 <= v38)
          {
            [v35 intrinsicContentSize];
            v41 = v40;
            [v35 bounds];
            if (v42 <= v41)
            {
              [v35 intrinsicContentSize];
              [v35 frame];

              sub_2C5F38();
              v49 = v48;
              v51 = v50;
              v53 = v52;
              v55 = v54;

LABEL_29:
              v47 = [v22 popoverPresentationController];
              [v47 setSourceRect:{v49, v51, v53, v55}];
              goto LABEL_30;
            }
          }
        }

        else
        {
        }

LABEL_28:
        [v26 bounds];
        v49 = v56;
        v51 = v57;
        v53 = v58;
        v55 = v59;
        goto LABEL_29;
      }
    }

    else
    {
      result = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_28;
  }

  v44 = v7[3];
  v43 = v7[4];
  sub_72084(*(v0 + 208), v44);
  v45 = (*(v43 + 72))(v44, v43);
  if (v45)
  {
    v26 = v45;
    v46 = [v22 popoverPresentationController];
    if (!v46)
    {
LABEL_31:

      goto LABEL_32;
    }

    v47 = v46;
    [v46 setBarButtonItem:v26];
LABEL_30:

    goto LABEL_31;
  }

LABEL_32:
  v60 = *(v0 + 264);
  (*(*(v0 + 232) + 32))(v22, 1, *(v0 + 224));

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_24BC54(uint64_t a1, void *a2)
{
  v3 = sub_72084((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

double sub_24BCB8@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = sub_2C5888();
  v8 = (*(a3 + 16))(a3, v7, a2);

  if (v8)
  {
    sub_2C6128();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_24BD54()
{
  v1 = *(*v0 + 88);
  v2 = sub_2C60B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_24BE14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_2C58C8();
  v7 = v6;

  v8 = a3;
  v4(v17, v5, v7, v8);

  v9 = v18;
  if (v18)
  {
    v10 = sub_72084(v17, v18);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_2C6598();
    (*(v11 + 8))(v14, v9);
    sub_68CD0(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_24BFA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_24BFE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_88BE0;

  return sub_24AAD8(a1, a2, a3, a4, v10);
}

uint64_t sub_24C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 4);
  v6 = *(type metadata accessor for UnsafeSendable(0, v5, a3, a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 144) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  sub_68CD0(v4 + 8);
  sub_68CD0(v4 + 13);
  (*(*(v5 - 8) + 8))(&v4[v8], v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_24C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(type metadata accessor for UnsafeSendable(0, v4[4], a3, a4) - 8);
  v9 = (*(v8 + 80) + 144) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[6];
  v13 = v4[7];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_88BE0;

  return sub_24B200(a1, v10, v11, v12, v13, (v4 + 8), (v4 + 13), v4 + v9);
}

uint64_t sub_24C2DC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24C3D0;

  return v5(v2 + 32);
}

uint64_t sub_24C3D0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24C548(uint64_t a1)
{
  result = sub_2C60B8();
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

uint64_t sub_24C5F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24C664(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_24C7A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_24C9AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_88BE0;

  return sub_24C2DC(a1, v4);
}

uint64_t sub_24CA64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7100C;

  return sub_24C2DC(a1, v4);
}

uint64_t sub_24CB1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_88BE0;

  return sub_1CDE54(a1, v4);
}

uint64_t sub_24CBD4()
{

  sub_68CD0((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

double sub_24CC20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_24CC64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24CCA4()
{
  swift_unknownObjectRelease();

  sub_68CD0((v0 + 80));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_24CD0C(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_24AEFC(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t TextAttributesBuilder.init(attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = result;
  return result;
}

void TextAttributesBuilder.foregroundColor(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  v7 = v2[5];
  v16 = v2[4];
  v6 = v16;
  v17 = v7;
  v9 = v2[1];
  v13[0] = *v2;
  v8 = v13[0];
  v13[1] = v9;
  v10 = *(&v5 + 1);
  *(a2 + 32) = v14;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  sub_24CEC4(v13, &v12);
  v11 = a1;

  *(a2 + 56) = a1;
}

uint64_t TextAttributesBuilder.centered(_:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v11 = v2[2];
  v3 = v11;
  v12 = v4;
  v5 = v2[5];
  v13 = v2[4];
  v14 = v5;
  v7 = v2[1];
  v10[0] = *v2;
  v6 = v10[0];
  v10[1] = v7;
  a2[4] = v13;
  a2[5] = v5;
  a2[2] = v3;
  a2[3] = v4;
  *a2 = v6;
  a2[1] = v7;
  *(a2 + 64) = a1;
  return sub_24CEC4(v10, &v9);
}

uint64_t TextAttributesBuilder.truncated(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v11 = v2[2];
  v3 = v11;
  v12 = v4;
  v5 = v2[5];
  v13 = v2[4];
  v14 = v5;
  v7 = v2[1];
  v10[0] = *v2;
  v6 = v10[0];
  v10[1] = v7;
  *(a2 + 64) = v13;
  *(a2 + 80) = v5;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 65) = a1;
  return sub_24CEC4(v10, &v9);
}

void *TextAttributesBuilder.build()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v67 = *(v0 + 65);
  v9 = *(v0 + 72);
  v65 = *(v0 + 64);
  v66 = *(v0 + 80);
  v10 = *(v0 + 88);
  if (!v10 || !*(v10 + 16) || (v11 = sub_5D474(), (v12 & 1) == 0) || (sub_68C64(*(v10 + 56) + 32 * v11, &v69), sub_66278(0, &qword_3C7E48, UIFont_ptr), (swift_dynamicCast() & 1) == 0))
  {
    v14 = objc_opt_self();
    if (!v4)
    {
      v13 = UIFontTextStyleBody;
      v15 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v15 = v4;
    v13 = v4;
LABEL_10:
    v16 = v15;
    v17 = [v14 preferredFontDescriptorWithTextStyle:v13];
    goto LABEL_11;
  }

  v13 = v68[0];
  if (v4)
  {

    v14 = objc_opt_self();
    goto LABEL_8;
  }

  v17 = [v68[0] fontDescriptor];
LABEL_11:
  v18 = v17;

  if ((v3 & 1) == 0)
  {
    sub_6620C(&qword_3C7E50, &qword_2F7EE8);
    inited = swift_initStackObject();
    v64 = xmmword_2E3F30;
    *(inited + 16) = xmmword_2E3F30;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    sub_6620C(&qword_3C7E58, &qword_2F7EF0);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_2E3F30;
    *(v20 + 32) = UIFontWeightTrait;
    *(v20 + 40) = v2;
    v21 = UIFontDescriptorTraitsAttribute;
    v22 = UIFontWeightTrait;
    v23 = sub_68440(v20);
    swift_setDeallocating();
    sub_69198(v20 + 32, &qword_3C7E60, &qword_2F7EF8);
    *(inited + 64) = sub_6620C(&qword_3C7E68, &unk_2F7F00);
    *(inited + 40) = v23;
    sub_68530(inited);
    swift_setDeallocating();
    sub_69198(inited + 32, &qword_3BC2E8, &qword_2E2FC0);
    type metadata accessor for AttributeName(0);
    sub_24E954();
    isa = sub_2C57C8().super.isa;

    v25 = [v18 fontDescriptorByAddingAttributes:isa];

    v18 = v25;
  }

  if (v1)
  {
    v26 = v1;
    v27 = [v18 fontDescriptorWithDesign:v26];
    if (!v27)
    {
LABEL_26:

      goto LABEL_27;
    }

    v28 = v27;
    v29 = v4;
    v30 = v7;
    v31 = sub_2C58C8();
    v33 = v32;
    if (v31 == sub_2C58C8() && v33 == v34)
    {
    }

    else
    {
      v35 = sub_2C65B8();

      if ((v35 & 1) == 0)
      {

        v26 = v18;
        v18 = v28;
LABEL_25:
        v7 = v30;
        v4 = v29;
        goto LABEL_26;
      }
    }

    v36 = sub_2C1028();

    if (v36)
    {
      v26 = v28;
    }

    else
    {
      v26 = v18;
    }

    if ((v36 & 1) == 0)
    {
      v18 = v28;
    }

    goto LABEL_25;
  }

LABEL_27:
  if ((v6 & 1) == 0)
  {
    v37 = [v18 fontDescriptorWithSize:v5];

    v18 = v37;
  }

  v38 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  if (v7)
  {
    if (v4)
    {
      v39 = v4;
    }

    else
    {
      v39 = UIFontTextStyleBody;
    }

    v40 = objc_opt_self();
    v41 = objc_opt_self();
    v42 = v4;
    v43 = v7;
    v44 = [v41 traitCollectionWithPreferredContentSizeCategory:v43];
    v45 = [v40 preferredFontDescriptorWithTextStyle:v39 compatibleWithTraitCollection:v44];

    [v45 pointSize];
    v47 = v46;

    [v38 pointSize];
    if (v47 < v48)
    {
      v48 = v47;
    }

    v49 = [v38 fontWithSize:{v48, v64}];

    v38 = v49;
  }

  v70 = sub_66278(0, &qword_3C7E48, UIFont_ptr);
  *&v69 = v38;
  sub_68CC0(&v69, v68);
  v50 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_6260C(v68, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
  v71 = _swiftEmptyDictionarySingleton;
  if (v8)
  {
    v70 = sub_66278(0, &qword_3C5348, UIColor_ptr);
    *&v69 = v8;
    sub_68CC0(&v69, v68);
    v52 = NSForegroundColorAttributeName;
    v53 = v8;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_6260C(v68, v52, v54);

    v71 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v55 = NSForegroundColorAttributeName;
    sub_24D99C(&v69);

    sub_69198(&v69, qword_3C0250, &unk_2E4630);
  }

  v56 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v57 = v56;
  if (v65)
  {
    v58 = &dword_0 + 1;
  }

  else
  {
    v58 = [v56 alignment];
  }

  [v57 setAlignment:{v58, v64}];
  if (v67)
  {
    v59 = 4;
  }

  else
  {
    v59 = 0;
  }

  [v57 setLineBreakMode:v59];
  if (v66)
  {
    [v57 lineSpacing];
    v9 = v60;
  }

  [v57 setLineSpacing:v9];
  [v57 copy];
  sub_2C6128();
  swift_unknownObjectRelease();
  sub_68CC0(&v69, v68);
  v61 = v71;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_6260C(v68, NSParagraphStyleAttributeName, v62);

  return v61;
}

uint64_t TextAttributesBuilder.lineSpacing(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v3[3];
  v12 = v3[2];
  v4 = v12;
  v13 = v5;
  v6 = v3[5];
  v14 = v3[4];
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a3 + 64) = v14;
  *(a3 + 80) = v6;
  *(a3 + 32) = v4;
  *(a3 + 48) = v5;
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 72) = a1;
  *(a3 + 80) = a2 & 1;
  return sub_24CEC4(v11, &v10);
}

void TextAttributesBuilder.design(_:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  v7 = v2[5];
  v16 = v2[4];
  v6 = v16;
  v17 = v7;
  v9 = v2[1];
  v13[0] = *v2;
  v8 = v13[0];
  v13[1] = v9;
  v10 = *&v13[0];
  a2[2] = v14;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  *a2 = v8;
  a2[1] = v9;
  sub_24CEC4(v13, &v12);
  v11 = a1;

  *a2 = a1;
}

uint64_t TextAttributesBuilder.weight(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v3[3];
  v12 = v3[2];
  v4 = v12;
  v13 = v5;
  v7 = v3[5];
  v14 = v3[4];
  v6 = v14;
  v15 = v7;
  v8 = v3[1];
  v11[0] = *v3;
  v11[1] = v8;
  *a3 = v11[0];
  *(a3 + 16) = v8;
  *(a3 + 32) = v4;
  *(a3 + 48) = v5;
  *(a3 + 64) = v6;
  *(a3 + 80) = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2 & 1;
  return sub_24CEC4(v11, &v10);
}

uint64_t TextAttributesBuilder.pointSize(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a3 + 32) = v12;
  *(a3 + 48) = v4;
  *(a3 + 64) = v5;
  *(a3 + 80) = v6;
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return sub_24CEC4(v11, &v10);
}

void TextAttributesBuilder.textStyle(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  v7 = v2[5];
  v16 = v2[4];
  v6 = v16;
  v17 = v7;
  v8 = v2[1];
  v13[0] = *v2;
  v9 = v13[0];
  v13[1] = v8;
  v10 = *(&v8 + 1);
  *(a2 + 32) = v14;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *a2 = v9;
  *(a2 + 16) = v8;
  sub_24CEC4(v13, &v12);
  v11 = a1;

  *(a2 + 24) = a1;
}

void TextAttributesBuilder.maxContentSize(_:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[3];
  v14 = v2[2];
  v15 = v5;
  v7 = v2[5];
  v16 = v2[4];
  v6 = v16;
  v17 = v7;
  v9 = v2[1];
  v13[0] = *v2;
  v8 = v13[0];
  v13[1] = v9;
  v10 = v5;
  a2[2] = v14;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  *a2 = v8;
  a2[1] = v9;
  sub_24CEC4(v13, &v12);
  v11 = a1;

  *(a2 + 6) = a1;
}

double sub_24D99C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_5D474();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v10 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_63C90();
      v8 = v10;
    }

    sub_68CC0((*(v8 + 56) + 32 * v6), a1);
    sub_24E010(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_24DA3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_5D228(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_63FB8();
      v10 = v12;
    }

    sub_693D0((*(v10 + 56) + 40 * v8), a3);
    sub_24E434(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_24DB14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *, __n128)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v8 = v5;
  v10 = sub_5D228(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v16 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v16;
    }

    (a3)(*(v14 + 56) + 32 * v12, a5);
    sub_24E5F4(v12, v14);
    *v8 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

void sub_24DBD0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    do
    {
      sub_2C6738();

      sub_2C5958();
      v9 = sub_2C6778();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_24DD80(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    while (1)
    {
      sub_2C6738();
      sub_2C5958();

      result = sub_2C6778();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_2BE588() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_24E010(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2C58C8();
      sub_2C6738();
      v11 = v10;
      sub_2C5958();
      v12 = sub_2C6778();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

Swift::Int sub_24E1D8(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    do
    {
      sub_2C6738();
      sub_2C5958();

      result = sub_2C6778();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_24E434(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    do
    {
      sub_2C6738();

      sub_2C5958();
      v11 = sub_2C6778();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_24E5F4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    do
    {
      sub_2C6738();

      sub_2C5958();
      v10 = sub_2C6778();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_24E7A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2C6168() + 1) & ~v5;
    do
    {
      sub_2C6738();

      sub_2C5958();
      v9 = sub_2C6778();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

unint64_t sub_24E954()
{
  result = qword_3BC0C8;
  if (!qword_3BC0C8)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BC0C8);
  }

  return result;
}

uint64_t sub_24E9AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_24EA08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void Shelf.instrumentingAppAnalyticsClickEvent(using:dataStack:sizeProvider:additionalData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v32 = a1;
  v6 = a5;
  sub_91560(v5, a5);
  v7 = type metadata accessor for Shelf(0);
  v8 = *(v7 + 68);
  v9 = *(v5 + v8);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = v7;
    v31 = v6;
    v49 = _swiftEmptyArrayStorage;
    sub_64698(0, v10, 0);
    v12 = 0;
    v13 = v9 + 32;
    v11 = _swiftEmptyArrayStorage;
    v36 = *(v9 + 16);
    while (v36 != v12)
    {
      if (v12 >= *(v9 + 16))
      {
        goto LABEL_14;
      }

      sub_691F8(v13, v45);
      v43 = v12;
      sub_68D1C(v45, v44);
      sub_691F8(v44, &v46);
      sub_6620C(&qword_3BC278, &qword_2E2F50);
      sub_6620C(&qword_3BC1D8, &qword_2E2EB0);
      if (swift_dynamicCast())
      {
        sub_68D1C(&v37, v40);
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v14 = v41;
        v15 = v42;
        sub_8C564(v40, v41);
        sub_25707C(v12, v32, &v46, v33, v34, v35, v14, v15, &v37);
        sub_69198(&v46, &qword_3BE008, &unk_2E5630);
        v16 = *(&v38 + 1);
        v17 = v39;
        v18 = sub_72084(&v37, *(&v38 + 1));
        *(&v47 + 1) = v16;
        v48 = *(v17 + 8);
        v19 = sub_720C8(&v46);
        (*(*(v16 - 8) + 16))(v19, v18, v16);
        sub_68CD0(&v37);
        sub_68CD0(v40);
      }

      else
      {
        v39 = 0;
        v38 = 0u;
        v37 = 0u;
        sub_69198(&v37, &qword_3C1C78, &qword_2EC190);
        sub_691F8(v44, &v46);
      }

      sub_69198(&v43, &qword_3C1C80, &qword_2EC198);
      v49 = v11;
      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_64698((v20 > 1), v21 + 1, 1);
      }

      ++v12;
      v23 = *(&v47 + 1);
      v22 = v48;
      v24 = sub_8C564(&v46, *(&v47 + 1));
      v25 = __chkstk_darwin(v24);
      v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27, v25);
      sub_24EE68(v21, v27, &v49, v23, v22);
      sub_68CD0(&v46);
      v11 = v49;
      v13 += 40;
      if (v10 == v12)
      {
        v8 = *(v30 + 68);
        v6 = v31;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    *(v6 + v8) = v11;
  }
}

uint64_t sub_24EE68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_720C8(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_68D1C(&v12, v10 + 40 * a1 + 32);
}

uint64_t SharedWithYouActionItem.init(data:context:tracker:figaroProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 128) = 1;
  sub_68D1C(a1, a5);
  sub_68D1C(a2, a5 + 40);
  *(a5 + 80) = a3;

  return sub_68D1C(a4, a5 + 88);
}

BOOL SharedWithYouActionItem.isSupported.getter()
{
  v1 = sub_6620C(&qword_3BB9B0, &qword_2E15D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = v0[3];
  v9 = v0[4];
  sub_72084(v0, v8);
  ContextActionDataProtocol.selectionMode.getter(v8, v9, &v29);
  if (v32)
  {
    sub_C4620(&v29);
    return 0;
  }

  else
  {
    sub_68D1C(&v29, v33);
    sub_68D1C(v33, &v29);
    v11 = v30;
    v12 = v31;
    sub_72084(&v29, v30);
    (*(v12 + 272))(v11, v12);
    if (v13)
    {

      sub_68CD0(&v29);
      return 1;
    }

    else
    {
      if (qword_3BB710 != -1)
      {
        swift_once();
      }

      v14 = qword_3BB718;
      v15 = v30;
      v16 = v31;
      sub_72084(&v29, v30);
      v17 = (*(v16 + 8))(v15, v16);
      v19 = v18;
      sub_6620C(&qword_3BB9B8, &unk_2E15D8);
      sub_2BFB68();
      sub_2BFB68();
      v20 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
      v21 = swift_beginAccess();
      v22 = *(v14 + v20);
      if (v22)
      {
        __chkstk_darwin(v21);
        *(&v28 - 4) = v7;
        *(&v28 - 3) = v4;
        *(&v28 - 2) = v17;
        *(&v28 - 1) = v19;

        sub_58E04(sub_66254, (&v28 - 6), v22);
        v24 = v23;
        v26 = v25;

        if (v24)
        {
        }
      }

      else
      {

        v24 = 0;
      }

      v27 = *(v2 + 8);
      v27(v4, v1);
      v27(v7, v1);

      sub_68CD0(&v29);
      return v24 != 0;
    }
  }
}

uint64_t SharedWithYouActionItem.handle()()
{
  sub_2C5C18();
  *(v0 + 16) = sub_2C5C08();
  v2 = sub_2C5BB8();

  return _swift_task_switch(sub_24F36C, v2, v1);
}

uint64_t sub_24F36C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharedWithYouActionItem.menuItemView.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_6620C(&qword_3C7E70, &qword_2F7F78);
  a1[4] = sub_24FB5C();
  v2 = sub_720C8(a1);
  return sub_24F41C(v2);
}

uint64_t sub_24F41C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6620C(&qword_3BB9B0, &qword_2E15D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = v1[3];
  v12 = v1[4];
  sub_72084(v1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (!*(v13 + 16))
  {

LABEL_23:
    v49 = sub_6620C(&qword_3C7E88, &qword_2F7F80);
    return (*(*(v49 - 8) + 56))(a1, 1, 1, v49);
  }

  sub_691F8(v13 + 32, v56);

  sub_68D1C(v56, v57);
  v14 = v58;
  v15 = v59;
  sub_72084(v57, v58);
  v16 = (*(v15 + 272))(v14, v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    goto LABEL_4;
  }

  v54 = a1;
  if (qword_3BB710 != -1)
  {
    swift_once();
  }

  v33 = qword_3BB718;
  v34 = v58;
  v35 = v59;
  sub_72084(v57, v58);
  v36 = (*(v35 + 8))(v34, v35);
  v38 = v37;
  sub_6620C(&qword_3BB9B8, &unk_2E15D8);
  sub_2BFB68();
  sub_2BFB68();
  v39 = OBJC_IVAR____TtC11BookStoreUI27BSUISharedWithYouController_highlights;
  v40 = swift_beginAccess();
  v41 = *(v33 + v39);
  if (!v41)
  {

    a1 = v54;
    goto LABEL_21;
  }

  v53 = &v51;
  __chkstk_darwin(v40);
  *(&v51 - 4) = v10;
  *(&v51 - 3) = v7;
  *(&v51 - 2) = v36;
  *(&v51 - 1) = v38;

  v18 = sub_58E04(sub_25081C, (&v51 - 6), v41);
  v19 = v42;
  v44 = v43;

  a1 = v54;
  if (!v19)
  {
LABEL_21:
    v48 = *(v5 + 8);
    v48(v7, v4);
    v48(v10, v4);
    goto LABEL_22;
  }

  v45 = *(v5 + 8);
  v45(v7, v4);
  v45(v10, v4);
LABEL_4:
  v20 = v2[8];
  v21 = v2[9];
  sub_72084(v2 + 5, v20);
  v22 = (*(v21 + 8))(v20, v21);
  if (!v22)
  {

LABEL_22:
    sub_68CD0(v57);
    goto LABEL_23;
  }

  if (qword_3BB710 != -1)
  {
    v50 = v22;
    swift_once();
    v22 = v50;
  }

  v23 = v22;
  v24 = v22;
  v25 = sub_59A6C(v18, v19, v23);

  if (!v25)
  {

    goto LABEL_22;
  }

  v54 = a1;
  v26 = [v25 highlightMenu];
  v27 = [v26 children];
  sub_250508();
  v28 = sub_2C5B28();

  v55 = v28;
  sub_6620C(&qword_3C7E90, &unk_2F8008);
  sub_72B74(&qword_3C7E98, &qword_3C7E90, &unk_2F8008, &protocol conformance descriptor for [A]);
  LOBYTE(v27) = sub_2C5D28();

  if (v27)
  {
    v53 = &v51;
    __chkstk_darwin(v29);
    v52 = v26;
    *(&v51 - 4) = v26;
    *(&v51 - 3) = v18;
    *(&v51 - 2) = v19;
    *(&v51 - 1) = v24;
    __chkstk_darwin(v30);
    *(&v51 - 2) = v2;
    sub_6620C(&qword_3BE800, &qword_2E7C70);
    sub_6620C(&qword_3C7EA0, &qword_2F8018);
    sub_72B74(&unk_3C4390, &qword_3BE800, &qword_2E7C70, &protocol conformance descriptor for Label<A, B>);
    sub_2505DC();
    v31 = v54;
    sub_2C3958();

    v32 = sub_6620C(&qword_3C7E88, &qword_2F7F80);
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  }

  else
  {
    v46 = sub_6620C(&qword_3C7E88, &qword_2F7F80);
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
  }

  return sub_68CD0(v57);
}

unint64_t sub_24FB5C()
{
  result = qword_3C7E78;
  if (!qword_3C7E78)
  {
    sub_718D4(&qword_3C7E70, &qword_2F7F78);
    sub_72B74(&qword_3C7E80, &qword_3C7E88, &qword_2F7F80, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7E78);
  }

  return result;
}

uint64_t sub_24FC0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [a1 children];
  sub_250508();
  sub_2C5B28();

  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  v9 = a4;
  sub_6620C(&qword_3C7E90, &unk_2F8008);
  sub_6620C(&qword_3C7EB8, &unk_2F8020);
  sub_72B74(&qword_3C7EC0, &qword_3C7E90, &unk_2F8008, &protocol conformance descriptor for [A]);
  sub_72B74(&qword_3C7EB0, &qword_3C7EB8, &unk_2F8020, &protocol conformance descriptor for Button<A>);
  return sub_2C4558();
}

void sub_24FDA8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  v4 = sub_2C58C8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_24FE00(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = v7;

  v10 = a4;
  sub_6620C(&qword_3C7EC8, &qword_2F8058);
  sub_72B74(&qword_3C7ED0, &qword_3C7EC8, &qword_2F8058, &protocol conformance descriptor for Label<A, B>);
  return sub_2C43C8();
}

void sub_24FF04(void *a1, uint64_t a2, void *a3, void *a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    oslog = a1;
    v10 = [v9 identifier];
    v11 = sub_2C58C8();
    v13 = v12;

    if (v11 == sub_2C58C8() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_2C65B8();

      if ((v16 & 1) == 0)
      {
        [v9 performWithSender:0 target:0];
        goto LABEL_16;
      }
    }

    if (qword_3BB710 != -1)
    {
      swift_once();
    }

    sub_59600(a2, a3, a4);
  }

  else
  {
    if (qword_3BB778 != -1)
    {
      swift_once();
    }

    v17 = sub_2C00B8();
    sub_57AD8(v17, qword_3C2F18);
    v18 = a1;
    oslog = sub_2C0098();
    v19 = sub_2C5DC8();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = [v18 title];
      v23 = sub_2C58C8();
      v25 = v24;

      v26 = sub_5CCF4(v23, v25, &v28);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_0, oslog, v19, "Failed to convert SWY UIMenuElement %s to UIAction.", v20, 0xCu);
      sub_68CD0(v21);
    }
  }

LABEL_16:
}

uint64_t sub_2501BC()
{
  sub_6620C(&qword_3C7ED8, &unk_2F8060);
  sub_2507A0();
  return sub_2C42F8();
}

uint64_t sub_250258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_2C58C8();

  sub_7212C(v4, v5, v6);
  result = sub_2C3A48();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

id sub_2502DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 image];
  if (result)
  {
    result = sub_2C42A8();
  }

  *a2 = result;
  return result;
}

uint64_t sub_25031C@<X0>(uint64_t a2@<X8>)
{
  v9 = sub_2B2914();
  sub_7212C(v9, v3, v4);
  result = sub_2C3A48();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_250384()
{
  sub_2C5C18();
  *(v0 + 16) = sub_2C5C08();
  v2 = sub_2C5BB8();

  return _swift_task_switch(sub_250838, v2, v1);
}

__n128 sub_250418(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25044C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_250494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_250508()
{
  result = qword_3C0240;
  if (!qword_3C0240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3C0240);
  }

  return result;
}

unint64_t sub_2505DC()
{
  result = qword_3C7EA8;
  if (!qword_3C7EA8)
  {
    sub_718D4(&qword_3C7EA0, &qword_2F8018);
    sub_72B74(&qword_3C7EB0, &qword_3C7EB8, &unk_2F8020, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7EA8);
  }

  return result;
}

uint64_t sub_250694@<X0>(uint64_t *a2@<X8>)
{
  sub_2B17F0();
  result = sub_2C42B8();
  *a2 = result;
  return result;
}

uint64_t sub_2506E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_250734()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_2507A0()
{
  result = qword_3C7EE0;
  if (!qword_3C7EE0)
  {
    sub_718D4(&qword_3C7ED8, &unk_2F8060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7EE0);
  }

  return result;
}

void sub_25083C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = _swiftEmptyArrayStorage;
  for (i = (a1 + 32); ; ++i)
  {
    v4 = *i;
    v5 = *(*i + 16);
    v6 = v2[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= v2[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v2 = sub_5C4F0(isUniquelyReferenced_nonNull_native, v9, 1, v2);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v5)
        {
          goto LABEL_21;
        }

        sub_6620C(&qword_3BC3F0, &qword_2E3420);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = v2[2];
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          v2[2] = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t LocalizerManager.__allocating_init(objectGraph:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B2A98;

  return LocalizerManager.init(objectGraph:)(a1);
}

uint64_t sub_250A38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_250A58, v1, 0);
}

uint64_t sub_250A58()
{
  v1 = *(v0[3] + 160);
  v0[4] = v1;

  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = sub_6620C(&unk_3BD1A0, &qword_2E5AD0);
  v4 = sub_6620C(&unk_3BF5A0, &qword_2EC790);
  *v2 = v0;
  v2[1] = sub_250B50;
  v5 = v0[2];

  return Task.value.getter(v5, v1, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_250B50()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_250CE0;
  }

  else
  {
    v4 = sub_250C7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_250C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_250CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LocalizerManager.init(objectGraph:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v2[13] = sub_2C5EA8();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = sub_6620C(&qword_3C7EE8, &unk_2F80A8);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_250EAC, 0, 0);
}

uint64_t sub_250EAC()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  swift_defaultActor_initialize();
  *(v2 + 152) = 0;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 112) = v4;
  v5 = sub_2C5C58();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  swift_retain_n();
  *(v2 + 160) = sub_1C05DC(0, 0, v1, &unk_2F80C0, v6);

  return _swift_task_switch(sub_250FDC, v2, 0);
}

uint64_t sub_250FDC()
{
  v1 = v0[18];
  v2 = v0[17];
  v11 = v0[16];
  v3 = v0[11];
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  sub_2C5EB8();

  v6 = [v4 defaultCenter];
  sub_2C5EB8();

  sub_2513D0();
  sub_2C2398();
  swift_allocObject();
  swift_weakInit();
  sub_72B74(&qword_3C7EF8, &qword_3C7EE8, &unk_2F80A8, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v7 = sub_2C2458();

  (*(v2 + 8))(v1, v11);
  v0[5] = sub_2C23C8();
  v0[6] = &protocol witness table for AnyCancellable;

  v0[2] = v7;
  swift_beginAccess();
  sub_252044((v0 + 2), v3 + 120);
  swift_endAccess();

  v8 = v0[1];
  v9 = v0[11];

  return v8(v9);
}

uint64_t sub_251220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_88BE0;

  return sub_251460(a1, 0, a4);
}

uint64_t sub_2512D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_251310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_88BE0;

  return sub_251220(a1, v4, v5, v6);
}

unint64_t sub_2513D0()
{
  result = qword_3C7EF0;
  if (!qword_3C7EF0)
  {
    sub_2C5EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7EF0);
  }

  return result;
}

uint64_t sub_251428()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_251460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_251484, 0, 0);
}

uint64_t sub_251484()
{
  v1 = v0[4];
  if (v1)
  {
    v0[9] = v1;
    sub_2C0218();
    swift_allocObject();
    v2 = v1;
    v0[10] = sub_2C0208();
    v12 = (&async function pointer to dispatch thunk of BooksLocalizerFactory.storeLocalizer(asPartOf:) + async function pointer to dispatch thunk of BooksLocalizerFactory.storeLocalizer(asPartOf:));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_2518F0;
    v4 = v0[5];
    v5 = v0[3];

    return v12(v5, v4);
  }

  else
  {
    v7 = sub_6620C(&qword_3C8000, &unk_2F8170);
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 packagePromise];

    v0[6] = sub_2C5728();
    v10 = sub_72B74(&qword_3C8008, &qword_3C8000, &unk_2F8170, &protocol conformance descriptor for Promise<A>);
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_251698;

    return dispatch thunk of Future.then()(v0 + 2, v7, v10);
  }
}

uint64_t sub_251698()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 64) = *(v2 + 16);

    return _swift_task_switch(sub_251800, 0, 0);
  }
}

uint64_t sub_251800()
{
  v1 = v0[8];
  v2 = v0[4];
  v0[9] = v1;
  sub_2C0218();
  swift_allocObject();
  v3 = v2;
  v4 = v1;
  v0[10] = sub_2C0208();
  v9 = (&async function pointer to dispatch thunk of BooksLocalizerFactory.storeLocalizer(asPartOf:) + async function pointer to dispatch thunk of BooksLocalizerFactory.storeLocalizer(asPartOf:));
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2518F0;
  v6 = v0[5];
  v7 = v0[3];

  return v9(v7, v6);
}

uint64_t sub_2518F0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_251A70;
  }

  else
  {
    v2 = sub_251A04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_251A04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251A70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_251ADC(uint64_t a1, uint64_t a2)
{
  v3 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_2BE268();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C00B8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  v16 = sub_2BE258();
  v49 = v10;
  v50 = v13;
  v48 = v11;
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  *&v52 = sub_2C58C8();
  *(&v52 + 1) = v18;
  sub_2C61A8();
  if (!*(v17 + 16) || (v19 = sub_5D2A0(v51), (v20 & 1) == 0))
  {

    sub_68D90(v51);
LABEL_10:
    v52 = 0u;
    v53 = 0u;
    goto LABEL_11;
  }

  sub_68C64(*(v17 + 56) + 32 * v19, &v52);
  sub_68D90(v51);

  if (*(&v53 + 1))
  {
    sub_2C0248();
    if (swift_dynamicCast())
    {
      v21 = v51[0];
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_69198(&v52, qword_3C0250, &unk_2E4630);
  v21 = 0;
LABEL_12:
  v22 = v50;
  sub_2C0078();
  (*(v7 + 16))(v9, a1, v6);
  v23 = v21;
  v24 = sub_2C0098();
  v25 = sub_2C5DE8();
  v46 = v23;

  v26 = os_log_type_enabled(v24, v25);
  v47 = v21;
  if (v26)
  {
    v44 = v15;
    v45 = v5;
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51[0] = v43;
    *v27 = 136315394;
    v28 = sub_2BE248();
    v29 = sub_2C58C8();
    v31 = v30;

    (*(v7 + 8))(v9, v6);
    v32 = sub_5CCF4(v29, v31, v51);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    if (v21)
    {
      v33 = v46;
      v34 = sub_2C0228();
      v36 = v35;
      v5 = v45;
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 7104878;
      v5 = v45;
      v33 = v46;
    }

    v37 = sub_5CCF4(v34, v36, v51);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_0, v24, v25, "Invalidating Localizer due to notification %s, newPackage: %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v48 + 8))(v50, v49);
    v15 = v44;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    (*(v48 + 8))(v22, v49);
    v33 = v46;
  }

  sub_2C5C38();
  v38 = sub_2C5C58();
  (*(*(v38 - 8) + 56))(v5, 0, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v40 = v47;
  v39[4] = v15;
  v39[5] = v40;
  v41 = v33;

  sub_252134(0, 0, v5, &unk_2F8188, v39);

  return sub_69198(v5, &unk_3BDBB0, &qword_2E47D0);
}

uint64_t sub_252044(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C7F00, &qword_2F80C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_2520D4, a4, 0);
}

uint64_t sub_2520D4()
{
  sub_2523E4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_D4DF4(a3, v25 - v10);
  v12 = sub_2C5C58();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_69198(v11, &unk_3BDBB0, &qword_2E47D0);
  }

  else
  {
    sub_2C5C48();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2C5BB8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2C5938() + 32;
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

uint64_t sub_2523E4(void *a1)
{
  v3 = *v1;
  v4 = sub_2C00B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = v1[14];
  v12 = sub_2C5C58();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = v11;
  v13[6] = v3;
  v14 = a1;

  v1[20] = sub_1C05DC(0, 0, v10, &unk_2F8160, v13);

  sub_2C0078();
  v15 = v14;
  v16 = sub_2C0098();
  v17 = sub_2C5DE8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    if (a1)
    {
      v20 = sub_2C0228();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_5CCF4(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_0, v16, v17, "Invalidated Localizer, newPackage: %s", v18, 0xCu);
    sub_68CD0(v19);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2526D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_7100C;

  return sub_251460(a1, a4, a5);
}

uint64_t LocalizerManager.deinit()
{

  sub_69198(v0 + 120, &qword_3C7F00, &qword_2F80C8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocalizerManager.__deallocating_deinit()
{

  sub_69198(v0 + 120, &qword_3C7F00, &qword_2F80C8);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t dispatch thunk of LocalizerManager.localizer.getter(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_88BE0;

  return v6(a1);
}

uint64_t dispatch thunk of LocalizerManager.__allocating_init(objectGraph:)(uint64_t a1)
{
  v6 = (*(v1 + 168) + **(v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_B2A98;

  return v6(a1);
}

uint64_t sub_252AA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_252AEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_7100C;

  return sub_2526D4(a1, v4, v5, v6, v7);
}

uint64_t sub_252BB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_252BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_7100C;

  return sub_2520B4(a1, v4, v5, v7, v6);
}

uint64_t sub_252CBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_252D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_6620C(&qword_3BE408, &unk_2E5E10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_252E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BE400, &unk_2E5E00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_6620C(&qword_3BE408, &unk_2E5E10);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for InfoItemComponent(uint64_t a1)
{
  result = qword_3C8070;
  if (!qword_3C8070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253040(uint64_t a1)
{
  sub_253114(319, &qword_3BE478, &type metadata accessor for FontConstants);
  if (v1 <= 0x3F)
  {
    sub_253114(319, &qword_3BC850, &type metadata accessor for ColorConstants);
    if (v2 <= 0x3F)
    {
      sub_AB5C4(319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_253114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2531E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = sub_2C3678();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3C80C0, &qword_2F8280);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = sub_6620C(&qword_3C80C8, &qword_2F8288);
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  if (qword_3BB920 != -1)
  {
    swift_once();
  }

  v14 = qword_3C8010;
  type metadata accessor for InfoItemComponent(0);
  sub_6620C(&qword_3BE408, &unk_2E5E10);
  sub_2C2678();
  v15 = v23;
  *v10 = v14;
  *(v10 + 1) = v15;
  v10[16] = 0;
  v16 = sub_6620C(&qword_3C80D0, &qword_2F8290);
  sub_2534CC(a1, v2, &v10[*(v16 + 44)]);
  type metadata accessor for InfoItemComponentModel(0);
  sub_2C2AD8();
  sub_255E74(v10, v13);
  v17 = &v13[*(v11 + 36)];
  v18 = v28;
  *(v17 + 4) = v27;
  *(v17 + 5) = v18;
  *(v17 + 6) = v29;
  v19 = v24;
  *v17 = v23;
  *(v17 + 1) = v19;
  v20 = v26;
  *(v17 + 2) = v25;
  *(v17 + 3) = v20;
  sub_2C3658();
  sub_255EE4();
  sub_2C3FA8();
  (*(v5 + 8))(v7, v4);
  return sub_69198(v13, &qword_3C80C8, &qword_2F8288);
}

uint64_t sub_2534CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v4 = sub_6620C(&qword_3C80E8, &qword_2F8298);
  __chkstk_darwin(v4 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_6620C(&qword_3C80F0, &qword_2F82A0);
  __chkstk_darwin(v9);
  v11 = (&v35 - v10);
  v12 = sub_6620C(&qword_3C80F8, &qword_2F82A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v18 = *(type metadata accessor for InfoItemComponentModel(0) + 28);
  v36 = a1;
  v19 = a1 + v18;
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  *v11 = swift_getKeyPath();
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for InfoItemSymbolView(0);
  v24 = *(v23 + 20);
  *(v11 + v24) = swift_getKeyPath();
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  v40 = 0x4040000000000000;
  v25 = sub_255FA4(v21, v20);
  sub_AB620(v25, v26, v27);
  sub_2C2668();
  v28 = v11 + *(v23 + 28);
  *v28 = v21;
  *(v28 + 1) = v20;
  v28[16] = v22;
  if (qword_3BB920 != -1)
  {
    swift_once();
  }

  v29 = (v11 + *(v9 + 36));
  *v29 = qword_3C8010;
  v29[1] = sub_256804;
  v29[2] = 0;
  sub_255FAC();
  sub_2C3F88();
  sub_69198(v11, &qword_3C80F0, &qword_2F82A0);
  *v8 = sub_2C3338();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v30 = sub_6620C(&qword_3C8110, &qword_2F8320);
  sub_2538B8(v36, v37, &v8[*(v30 + 44)]);
  sub_6932C(v17, v14, &qword_3C80F8, &qword_2F82A8);
  v31 = v39;
  sub_6932C(v8, v39, &qword_3C80E8, &qword_2F8298);
  v32 = v38;
  sub_6932C(v14, v38, &qword_3C80F8, &qword_2F82A8);
  v33 = sub_6620C(&qword_3C8118, &qword_2F8328);
  sub_6932C(v31, v32 + *(v33 + 48), &qword_3C80E8, &qword_2F8298);
  sub_69198(v8, &qword_3C80E8, &qword_2F8298);
  sub_69198(v17, &qword_3C80F8, &qword_2F82A8);
  sub_69198(v31, &qword_3C80E8, &qword_2F8298);
  return sub_69198(v14, &qword_3C80F8, &qword_2F82A8);
}

uint64_t sub_2538B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v184 = a2;
  v185 = a1;
  v179 = a3;
  v178 = sub_6620C(&qword_3C8120, &unk_2F8330);
  __chkstk_darwin(v178);
  v183 = &v135 - v3;
  v164 = sub_2C33E8();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_2C2A58();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InfoItemComponentModel(0);
  v150 = *(v6 - 8);
  __chkstk_darwin(v6);
  v151 = v7;
  v152 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for InfoItemComponent(0);
  v146 = *(v166 - 8);
  __chkstk_darwin(v166);
  v147 = v8;
  v148 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&unk_3C43D0, &qword_2F1180);
  __chkstk_darwin(v9 - 8);
  v149 = &v135 - v10;
  v153 = sub_6620C(&qword_3C8128, &qword_2F8340);
  __chkstk_darwin(v153);
  v180 = &v135 - v11;
  v156 = sub_6620C(&qword_3C8130, &qword_2F8348);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v135 - v12;
  v182 = sub_6620C(&qword_3C8138, &qword_2F8350);
  v161 = *(v182 - 8);
  __chkstk_darwin(v182);
  v157 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v181 = &v135 - v15;
  v173 = sub_6620C(&qword_3C8140, &qword_2F8358);
  __chkstk_darwin(v173);
  v175 = &v135 - v16;
  v174 = sub_6620C(&qword_3C8148, &qword_2F8360);
  __chkstk_darwin(v174);
  v145 = &v135 - v17;
  v142 = sub_6620C(&qword_3C8150, &qword_2F8368);
  __chkstk_darwin(v142);
  v144 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v135 - v20;
  v22 = sub_6620C(&qword_3C8158, &unk_2F8370);
  __chkstk_darwin(v22 - 8);
  v177 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v176 = &v135 - v25;
  v168 = sub_2C0D48();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = (&v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v27 - 8);
  v29 = &v135 - v28;
  v30 = sub_2C3918();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2C0978();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v40 = (&v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = v6;
  v41 = (v185 + *(v6 + 32));
  v42 = *v41;
  v43 = v41[1];
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  v169 = v21;
  v141 = v30;
  v140 = v29;
  v139 = v31;
  v138 = v33;
  v137 = v36;
  v136 = v35;
  v135 = v40;
  if (v44)
  {
    v189[0] = v42;
    v189[1] = v43;
    sub_7212C(v36, v37, v38);

    v172 = sub_2C3A48();
    v171 = v45;
    v47 = v46;
    v170 = v48;
    sub_29AD08(v40);
    (*(v31 + 104))(v33, enum case for Font.TextStyle.footnote(_:), v30);
    v49 = sub_2C3848();
    (*(*(v49 - 8) + 56))(v29, 1, 1, v49);
    sub_2C3868();
    sub_2C38A8();
    sub_69198(v29, &qword_3BCB28, &qword_2E3B60);
    (*(v31 + 8))(v33, v30);
    (*(v35 + 8))(v40, v34);
    v50 = v172;
    v51 = v171;
    v52 = sub_2C39E8();
    v54 = v53;
    v56 = v55;
    sub_72180(v50, v51, v47 & 1);

    v57 = v165;
    sub_29A87C(v165);
    sub_2C0D08();
    v58 = v57;
    (*(v167 + 8))(v57, v168);
    v59 = sub_2C3998();
    v61 = v60;
    LOBYTE(v50) = v62;
    v64 = v63;
    sub_72180(v52, v54, v56 & 1);
    v21 = v169;

    v65 = v50 & 1;
    v66 = v59;
    v172 = v61;
    v170 = v65;
    sub_BE2CC(v59, v61, v65);
    v171 = v64;
  }

  else
  {
    v58 = v165;
    v66 = 0;
    v172 = 0;
    v170 = 0;
    v171 = 0;
  }

  sub_6932C(v185 + 40, &v186, &qword_3BE370, &qword_2E7520);
  if (v188)
  {
    v169 = v66;
    sub_693D0(&v186, v189);
    v67 = sub_2C24B8();
    (*(*(v67 - 8) + 56))(v149, 1, 1, v67);
    sub_691F8(v189, &v186);
    v68 = v148;
    sub_256078(v184, v148, type metadata accessor for InfoItemComponent);
    v69 = v152;
    sub_256078(v185, v152, type metadata accessor for InfoItemComponentModel);
    v70 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v71 = (v147 + *(v150 + 80) + v70) & ~*(v150 + 80);
    v72 = swift_allocObject();
    sub_256410(v68, v72 + v70, type metadata accessor for InfoItemComponent);
    sub_256410(v69, v72 + v71, type metadata accessor for InfoItemComponentModel);
    sub_6620C(&qword_3C8190, &qword_2F8400);
    sub_25654C();
    sub_2C0388();
    if (qword_3BB920 != -1)
    {
      swift_once();
    }

    v73 = v153;
    v74 = v180;
    v75 = &v180[*(v153 + 36)];
    *v75 = qword_3C8010;
    *(v75 + 1) = sub_256804;
    *(v75 + 2) = 0;
    v76 = v158;
    sub_2C2A48();
    v77 = sub_256634();
    v78 = sub_2566EC(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v79 = v154;
    v80 = v160;
    sub_2C3E38();
    (*(v159 + 8))(v76, v80);
    sub_69198(v74, &qword_3C8128, &qword_2F8340);
    v81 = v162;
    sub_2C2B18();
    *&v186 = v73;
    *(&v186 + 1) = v80;
    v187 = v77;
    v188 = v78;
    swift_getOpaqueTypeConformance2();
    sub_2566EC(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    v82 = v181;
    v83 = v156;
    v84 = v164;
    sub_2C3E88();
    (*(v163 + 8))(v81, v84);
    (*(v155 + 8))(v79, v83);
    v85 = sub_255850(v185);
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v161;
    v93 = *(v161 + 16);
    v94 = v157;
    v95 = v82;
    v96 = v182;
    (v93)(v157, v95, v182);
    v97 = v183;
    v93();
    v98 = (v97 + *(sub_6620C(&qword_3C81C8, &qword_2F8418) + 48));
    *v98 = v85;
    v98[1] = v87;
    v98[2] = v89;
    v98[3] = v91;
    sub_BE288(v85, v87, v89, v91);
    sub_BE288(v85, v87, v89, v91);
    sub_BE2DC(v85, v87, v89, v91);
    v99 = *(v92 + 8);
    v99(v94, v96);
    sub_6932C(v97, v175, &qword_3C8120, &unk_2F8330);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3C8178, &qword_3C8120, &unk_2F8330, &protocol conformance descriptor for TupleView<A>);
    sub_72B74(&qword_3C8180, &qword_3C8148, &qword_2F8360, &protocol conformance descriptor for TupleView<A>);
    v100 = v176;
    sub_2C33C8();
    sub_BE2DC(v85, v87, v89, v91);
    sub_69198(v183, &qword_3C8120, &unk_2F8330);
    v99(v181, v182);
    sub_68CD0(v189);
    v66 = v169;
  }

  else
  {
    sub_69198(&v186, &unk_3BDC90, &unk_2E5620);
    sub_A7894(*(v185 + *(v143 + 36)), *(v185 + *(v143 + 36) + 8), *(v185 + *(v143 + 36) + 16), v21);
    if (qword_3BB920 != -1)
    {
      swift_once();
    }

    v101 = qword_3C8010;
    v102 = &v21[*(sub_6620C(&qword_3C8160, &qword_2F8380) + 36)];
    *v102 = v101;
    v102[1] = sub_256804;
    v102[2] = 0;
    v103 = v135;
    v104 = v21;
    sub_29AD08(v135);
    v105 = v139;
    v106 = v138;
    v107 = v141;
    (*(v139 + 104))(v138, enum case for Font.TextStyle.footnote(_:), v141);
    v108 = sub_2C3848();
    v109 = v140;
    (*(*(v108 - 8) + 56))(v140, 1, 1, v108);
    sub_2C3868();
    v110 = sub_2C38A8();
    sub_69198(v109, &qword_3BCB28, &qword_2E3B60);
    (*(v105 + 8))(v106, v107);
    (*(v136 + 8))(v103, v137);
    KeyPath = swift_getKeyPath();
    v112 = (v104 + *(sub_6620C(&qword_3C8168, &qword_2F83B8) + 36));
    *v112 = KeyPath;
    v112[1] = v110;
    sub_29A87C(v58);
    v113 = sub_2C0CB8();
    (*(v167 + 8))(v58, v168);
    v114 = swift_getKeyPath();
    v115 = (v104 + *(v142 + 36));
    *v115 = v114;
    v115[1] = v113;
    v116 = sub_255850(v185);
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = v144;
    sub_6932C(v104, v144, &qword_3C8150, &qword_2F8368);
    v124 = v145;
    sub_6932C(v123, v145, &qword_3C8150, &qword_2F8368);
    v125 = (v124 + *(sub_6620C(&qword_3C8170, &qword_2F83F0) + 48));
    *v125 = v116;
    v125[1] = v118;
    v125[2] = v120;
    v125[3] = v122;
    sub_BE288(v116, v118, v120, v122);
    sub_BE288(v116, v118, v120, v122);
    sub_BE2DC(v116, v118, v120, v122);
    sub_69198(v123, &qword_3C8150, &qword_2F8368);
    sub_6932C(v124, v175, &qword_3C8148, &qword_2F8360);
    swift_storeEnumTagMultiPayload();
    sub_72B74(&qword_3C8178, &qword_3C8120, &unk_2F8330, &protocol conformance descriptor for TupleView<A>);
    sub_72B74(&qword_3C8180, &qword_3C8148, &qword_2F8360, &protocol conformance descriptor for TupleView<A>);
    v126 = v176;
    sub_2C33C8();
    v127 = v120;
    v100 = v126;
    sub_BE2DC(v116, v118, v127, v122);
    sub_69198(v124, &qword_3C8148, &qword_2F8360);
    sub_69198(v169, &qword_3C8150, &qword_2F8368);
  }

  v128 = v177;
  sub_6932C(v100, v177, &qword_3C8158, &unk_2F8370);
  v129 = v179;
  v130 = v172;
  *v179 = v66;
  v129[1] = v130;
  v131 = v170;
  v132 = v171;
  v129[2] = v170;
  v129[3] = v132;
  v133 = sub_6620C(&qword_3C8188, &qword_2F83F8);
  sub_6932C(v128, v129 + *(v133 + 48), &qword_3C8158, &unk_2F8370);
  sub_BE288(v66, v130, v131, v132);
  sub_BE2DC(v66, v130, v131, v132);
  sub_69198(v100, &qword_3C8158, &unk_2F8370);
  sub_69198(v128, &qword_3C8158, &unk_2F8370);
  return sub_BE2DC(v66, v130, v131, v132);
}

uint64_t sub_254E78@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[0] = a3;
  v4 = sub_2C3308();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3C81A8, &qword_2F8408);
  __chkstk_darwin(v8);
  v10 = v14 - v9;
  type metadata accessor for InfoItemComponent(0);
  sub_6620C(&qword_3BE408, &unk_2E5E10);
  sub_2C2678();
  v11 = v14[1];
  *v10 = sub_2C3178();
  *(v10 + 1) = v11;
  v10[16] = 0;
  v12 = sub_6620C(&qword_3C81D0, &qword_2F8420);
  sub_255070(a2, &v10[*(v12 + 44)]);
  sub_2C32A8();
  sub_72B74(&qword_3C81A0, &qword_3C81A8, &qword_2F8408, &protocol conformance descriptor for HStack<A>);
  sub_2C3FE8();
  (*(v5 + 8))(v7, v4);
  return sub_69198(v10, &qword_3C81A8, &qword_2F8408);
}

uint64_t sub_255070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = sub_6620C(&qword_3C81D8, &qword_2F8428) - 8;
  __chkstk_darwin(v68);
  v69 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = (&v55 - v5);
  v73 = sub_2C0D48();
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_2C3918();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C0978();
  v57 = v14;
  v74 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_6620C(&qword_3C81E0, &qword_2F8430) - 8;
  __chkstk_darwin(v65);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v71 = &v55 - v19;
  v21 = type metadata accessor for InfoItemComponentModel(0);
  sub_A7894(*(a1 + *(v21 + 36)), *(a1 + *(v21 + 36) + 8), *(a1 + *(v21 + 36) + 16), v20);
  v22 = v16;
  sub_29AD08(v16);
  v62 = enum case for Font.TextStyle.footnote(_:);
  v61 = *(v11 + 104);
  v55 = v10;
  v61(v13);
  v23 = sub_2C3848();
  v24 = *(v23 - 8);
  v59 = *(v24 + 56);
  v60 = v24 + 56;
  v59(v9, 1, 1, v23);
  sub_2C3868();
  v25 = sub_2C38A8();
  sub_69198(v9, &qword_3BCB28, &qword_2E3B60);
  v56 = *(v11 + 8);
  v56(v13, v10);
  v26 = *(v74 + 8);
  v74 += 8;
  v58 = v26;
  v26(v22, v14);
  KeyPath = swift_getKeyPath();
  v28 = sub_6620C(&qword_3C81E8, &qword_2F8438);
  v29 = v71;
  v30 = (v71 + *(v28 + 36));
  *v30 = KeyPath;
  v30[1] = v25;
  v64 = *(type metadata accessor for InfoItemComponent(0) + 20);
  v31 = v72;
  sub_29A87C(v72);
  v32 = sub_2C0CB8();
  v63 = *(v75 + 8);
  v75 += 8;
  v63(v31, v73);
  v33 = swift_getKeyPath();
  v34 = (v29 + *(v65 + 44));
  *v34 = v33;
  v34[1] = v32;
  v35 = sub_2C42B8();
  sub_29AD08(v22);
  v36 = v55;
  (v61)(v13, v62, v55);
  v59(v9, 1, 1, v23);
  sub_2C38A8();
  sub_69198(v9, &qword_3BCB28, &qword_2E3B60);
  v56(v13, v36);
  v37 = sub_2C3808();

  v58(v22, v57);
  v38 = swift_getKeyPath();
  v39 = sub_6620C(&qword_3C81F0, &unk_2F8440);
  v40 = v67;
  v41 = (v67 + *(v39 + 36));
  v42 = *(sub_6620C(&qword_3BD7E8, &qword_2E4500) + 28);
  v43 = enum case for Image.Scale.small(_:);
  v44 = sub_2C42D8();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  *v40 = v35;
  v40[1] = v38;
  v40[2] = v37;
  v45 = v72;
  sub_29A87C(v72);
  v46 = sub_2C0D08();
  v63(v45, v73);
  v47 = swift_getKeyPath();
  v48 = (v40 + *(sub_6620C(&qword_3C81F8, &qword_2F8480) + 36));
  *v48 = v47;
  v48[1] = v46;
  *(v40 + *(v68 + 44)) = 0x3FF0000000000000;
  v49 = v71;
  v50 = v66;
  sub_6932C(v71, v66, &qword_3C81E0, &qword_2F8430);
  v51 = v69;
  sub_6932C(v40, v69, &qword_3C81D8, &qword_2F8428);
  v52 = v70;
  sub_6932C(v50, v70, &qword_3C81E0, &qword_2F8430);
  v53 = sub_6620C(&qword_3C8200, &qword_2F8488);
  sub_6932C(v51, v52 + *(v53 + 48), &qword_3C81D8, &qword_2F8428);
  sub_69198(v40, &qword_3C81D8, &qword_2F8428);
  sub_69198(v49, &qword_3C81E0, &qword_2F8430);
  sub_69198(v51, &qword_3C81D8, &qword_2F8428);
  return sub_69198(v50, &qword_3C81E0, &qword_2F8430);
}

uint64_t sub_255850(uint64_t a1)
{
  v2 = sub_2C0D48();
  v39 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_2C3918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2C0978();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for InfoItemComponentModel(0);
  v17 = (a1 + *(v14 + 40));
  v18 = v17[1];
  if (v18)
  {
    v40 = *v17;
    v41 = v18;
    sub_7212C(v14, v15, v16);
    v36 = v2;

    v19 = sub_2C3A48();
    v34 = v20;
    v35 = v19;
    v22 = v21;
    v24 = v23;
    sub_29AD08(v13);
    (*(v8 + 104))(v10, enum case for Font.TextStyle.footnote(_:), v7);
    v25 = sub_2C3848();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_2C3878();
    sub_2C38A8();
    sub_69198(v6, &qword_3BCB28, &qword_2E3B60);
    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v37);
    v26 = v35;
    v27 = sub_2C39E8();
    v29 = v28;
    v31 = v30;
    sub_72180(v26, v22, v24 & 1);

    type metadata accessor for InfoItemComponent(0);
    v32 = v38;
    sub_29A87C(v38);
    sub_2C0D08();
    (*(v39 + 8))(v32, v36);
    v18 = sub_2C3998();
    sub_72180(v27, v29, v31 & 1);
  }

  return v18;
}

uint64_t sub_255C74(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_256078(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InfoItemComponent);
  sub_2566EC(&qword_3C80B0, type metadata accessor for InfoItemComponent, &unk_2F8214);
  return sub_2BFD18();
}

uint64_t sub_255E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25673C(a1, a2, a3);
  result = sub_2C3188();
  qword_3C8010 = result;
  return result;
}

uint64_t sub_255E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C80C0, &qword_2F8280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255EE4()
{
  result = qword_3C80D8;
  if (!qword_3C80D8)
  {
    sub_718D4(&qword_3C80C8, &qword_2F8288);
    sub_72B74(&qword_3C80E0, &qword_3C80C0, &qword_2F8280, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C80D8);
  }

  return result;
}

unint64_t sub_255FAC()
{
  result = qword_3C8100;
  if (!qword_3C8100)
  {
    sub_718D4(&qword_3C80F0, &qword_2F82A0);
    sub_2566EC(&qword_3C8108, type metadata accessor for InfoItemSymbolView, &unk_2E6588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8100);
  }

  return result;
}

uint64_t sub_256078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2560E0()
{
  v1 = type metadata accessor for InfoItemComponent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for InfoItemComponentModel(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v3 + v4 + v6;
  v8 = *(*(v5 - 1) + 64);
  v9 = v0 + v3;
  sub_6620C(&qword_3C0C88, &unk_2EAD00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0978();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  v11 = v7 & ~v6;
  v12 = *(v1 + 20);
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2C0D48();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  else
  {
  }

  v14 = *(v1 + 24);
  v15 = sub_6620C(&qword_3BE408, &unk_2E5E10);
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = v0 + v11;
  sub_68CD0((v0 + v11));
  if (*(v0 + v11 + 64))
  {
    sub_68CD0((v16 + 40));
  }

  v17 = v5[6];
  v18 = sub_2C5018();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v16 + v17, 1, v18))
  {
    (*(v19 + 8))(v16 + v17, v18);
  }

  sub_A9700(*(v16 + v5[7]), *(v16 + v5[7] + 8));

  sub_A93AC(*(v16 + v5[9]), *(v16 + v5[9] + 8), *(v16 + v5[9] + 16));

  return _swift_deallocObject(v0, v11 + v8, v2 | v6 | 7);
}

uint64_t sub_256410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_256478@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InfoItemComponent(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InfoItemComponentModel(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_254E78(v7, a1);
}

unint64_t sub_25654C()
{
  result = qword_3C8198;
  if (!qword_3C8198)
  {
    sub_718D4(&qword_3C8190, &qword_2F8400);
    sub_72B74(&qword_3C81A0, &qword_3C81A8, &qword_2F8408, &protocol conformance descriptor for HStack<A>);
    sub_2566EC(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8198);
  }

  return result;
}

unint64_t sub_256634()
{
  result = qword_3C81B0;
  if (!qword_3C81B0)
  {
    sub_718D4(&qword_3C8128, &qword_2F8340);
    sub_72B74(&qword_3C81B8, &qword_3C81C0, &qword_2F8410, &protocol conformance descriptor for BooksActionButton<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C81B0);
  }

  return result;
}

uint64_t sub_2566EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C8208;
  if (!qword_3C8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8208);
  }

  return result;
}

uint64_t sub_2567A0()
{
  sub_718D4(&qword_3C80C8, &qword_2F8288);
  sub_255EE4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_256828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_6620C(&qword_3C8218, &qword_2F8618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = 0x73646C656966;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a2;

  v7 = sub_68898(inited);
  swift_setDeallocating();
  sub_257014(inited + 32);
  v11 = v7;
  sub_6620C(&qword_3C8228, &qword_2F8628);
  v8 = sub_2C6658();
  v9 = [objc_opt_self() valueWithObject:v8 inContext:{a1, v11}];
  result = swift_unknownObjectRelease();
  if (v9)
  {
    result = sub_14D8EC();
    a3[3] = result;
    a3[4] = &protocol witness table for JSValue;
    *a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_256994(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  sub_6620C(&qword_3BD1F0, &unk_2F55C0);
  sub_2C4DB8();
  sub_691F8(v13, v12);
  v7 = swift_allocObject();
  sub_68D1C(v12, v7 + 16);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  sub_6620C(&qword_3C8210, &qword_2F8608);

  v8 = sub_2C5738();
  v9 = sub_2C5C58();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2F8600;
  v10[5] = v7;
  v10[6] = v8;

  sub_1CDB58(0, 0, v6, &unk_2F8610, v10);

  sub_68CD0(v13);
  return v8;
}

uint64_t sub_256B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_256B94, 0, 0);
}

uint64_t sub_256B94()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  sub_72084(v1, v3);
  v0[2] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  v8 = sub_80FD0(v5, v6, v7);
  *v5 = v0;
  v5[1] = sub_256C88;
  v9 = v0[6];
  v10 = v0[3];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v10, v0 + 2, v9, &_s22LintMetricsEventIntentVN, v8, v3, v4);
}

uint64_t sub_256C88()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_256DD8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_256DF8()
{
  sub_68CD0((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_256E40(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_7100C;

  return sub_256B70(a1, v1 + 16, v4, v5);
}

uint64_t sub_256EF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_256F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_7100C;

  return sub_1CE674(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257014(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C8220, &qword_2F8620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25707C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v33 = a1;
  v13 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_2BF088();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a7 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, v9, a7, v22);
  sub_2C4CC8();
  if (!v40)
  {
    sub_69198(v39, &unk_3BDC90, &unk_2E5620);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    goto LABEL_8;
  }

  sub_6620C(&qword_3BC248, &qword_2E2F20);
  sub_6620C(&qword_3CA270, &unk_2E5640);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_8;
  }

  if (!*(&v42 + 1))
  {
LABEL_8:
    sub_69198(&v41, &qword_3BDFF8, &qword_2F41E0);
    goto LABEL_9;
  }

  v32 = a8;
  sub_693D0(&v41, v44);
  v31 = v17;
  sub_72084(v44, v45);
  v25 = v31;
  sub_2C0288();
  if ((*(v25 + 48))(v15, 1, v16) != 1)
  {
    (*(v25 + 32))(v19, v15, v16);
    sub_2BF068();
    sub_72084(v44, v45);
    sub_2C4A18();
    sub_691F8(&v41, v39);
    v28 = v32;
    sub_2C03C8();
    a9[3] = a7;
    a9[4] = v28;
    v29 = sub_720C8(a9);
    (*(v20 + 32))(v29, v24, a7);
    sub_68CD0(&v41);
    (*(v25 + 8))(v19, v16);
    return sub_68CD0(v44);
  }

  sub_69198(v15, &unk_3CA260, &qword_2E3930);
  sub_68CD0(v44);
  a8 = v32;
LABEL_9:
  a9[3] = a7;
  a9[4] = a8;
  v26 = sub_720C8(a9);
  return (*(v20 + 32))(v26, v24, a7);
}

uint64_t sub_2574A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2BF368();
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
      v13 = sub_6620C(&qword_3BE238, &unk_2E8260);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2575E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2BF368();
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
      v13 = sub_6620C(&qword_3BE238, &unk_2E8260);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SeriesPageStoreResourceIntent(uint64_t a1)
{
  result = qword_3C8288;
  if (!qword_3C8288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257764(uint64_t a1)
{
  sub_2BF368();
  if (v1 <= 0x3F)
  {
    sub_112064(319);
    if (v2 <= 0x3F)
    {
      sub_257810(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257810(uint64_t a1)
{
  if (!qword_3C1480)
  {
    sub_2BF738();
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3C1480);
    }
  }
}

unint64_t sub_257868@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = sub_6620C(&qword_3BE238, &unk_2E8260);
  __chkstk_darwin(v4 - 8);
  v44 = &v38 - v5;
  v6 = sub_2BF4E8();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2BF368();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&unk_3C43A0, &unk_2EB530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E9090;
  *(inited + 32) = 0x4449736569726573;
  v43 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v13 = *v2;
  v14 = v2[1];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7954736569726573;
  *(inited + 88) = 0xEA00000000006570;
  v38 = type metadata accessor for SeriesPageStoreResourceIntent(0);
  (*(v9 + 104))(v11, enum case for SeriesType.audiobook(_:), v8);
  sub_257E10();

  v42 = v3;
  sub_2C5A88();
  sub_2C5A88();
  if (v49 == v47 && v50 == v48)
  {
    (*(v9 + 8))(v11, v8);

LABEL_5:
    sub_2BF5B8();
    v16 = v39;
    sub_2BF5A8();
    goto LABEL_7;
  }

  v15 = sub_2C65B8();
  (*(v9 + 8))(v11, v8);

  if (v15)
  {
    goto LABEL_5;
  }

  sub_2BF428();
  v16 = v39;
  sub_2BF418();
LABEL_7:
  v17 = v44;
  v18 = sub_2BF4D8();
  v20 = v19;
  (*(v40 + 8))(v16, v41);
  *(inited + 96) = v18;
  *(inited + 104) = v20;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x7344496D616461;
  *(inited + 136) = 0xE700000000000000;
  v21 = v38;
  v22 = v42;
  v23 = *(v42 + *(v38 + 24));
  v24 = sub_6620C(&qword_3C2D50, &unk_2EEAC8);
  *(inited + 144) = v23;
  *(inited + 168) = v24;
  *(inited + 176) = 0x6564724F74726F73;
  *(inited + 184) = 0xE900000000000072;
  sub_257E68(v22 + *(v21 + 28), v17);
  v25 = sub_2BF738();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v17, 1, v25);

  if (v27 == 1)
  {
    sub_C4338(v17);
    v28 = (inited + 192);
    *(inited + 216) = &type metadata for String;
LABEL_11:
    *v28 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_12;
  }

  v29 = sub_2BF728();
  v31 = v30;
  (*(v26 + 8))(v17, v25);
  v28 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v31)
  {
    goto LABEL_11;
  }

  *v28 = v29;
LABEL_12:
  *(inited + 200) = v31;
  v32 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220, &qword_2F0750);
  swift_arrayDestroy();
  v49 = v32;
  sub_6620C(&qword_3BD860, &qword_2EB540);
  v33 = sub_2C6658();
  v34 = [objc_opt_self() valueWithObject:v33 inContext:v45];
  swift_unknownObjectRelease();
  v35 = sub_6620C(&qword_3C13F8, &qword_2EB270);
  v36 = v46;
  v46[3] = v35;
  result = sub_111BE4();
  v36[4] = result;
  *v36 = v34;
  return result;
}

unint64_t sub_257E10()
{
  result = qword_3C1560;
  if (!qword_3C1560)
  {
    sub_2BF368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1560);
  }

  return result;
}

uint64_t sub_257E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE238, &unk_2E8260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257ED8()
{
  if (*v0)
  {
    return 0x737465737361;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_257F14(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000000303A70 == a2 || (sub_2C65B8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_2C65B8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_257FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25832C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_258034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25832C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_258070@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2580AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_2580AC(void *a1)
{
  v3 = sub_6620C(&qword_3C82C8, &qword_2F8748);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  sub_2BF8D8();
  v7 = sub_2C1AE8();
  v8 = sub_72084(a1, a1[3]);
  sub_25832C(v8, v9, v10);
  sub_2C67A8();
  if (v1)
  {
  }

  else
  {
    sub_6620C(&qword_3BF498, &qword_2EB550);
    v13 = 0;
    sub_72B74(&qword_3BF4A0, &qword_3BF498, &qword_2EB550, &protocol conformance descriptor for _MResourceDecoder_OrNil<A>);
    sub_2C64A8();

    v7 = v14;
    sub_6620C(&qword_3C1580, &unk_2EB558);
    v13 = 1;
    sub_72B74(&qword_3C1588, &qword_3C1580, &unk_2EB558, &protocol conformance descriptor for _MResourceDecoder_Many<A>);
    sub_2C64A8();
    (*(v4 + 8))(v6, v3);
  }

  sub_68CD0(a1);
  return v7;
}

unint64_t sub_25832C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C82D0;
  if (!qword_3C82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C82D0);
  }

  return result;
}

unint64_t sub_258394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C82D8;
  if (!qword_3C82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C82D8);
  }

  return result;
}

unint64_t sub_2583EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C82E0;
  if (!qword_3C82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C82E0);
  }

  return result;
}

unint64_t sub_258444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C82E8;
  if (!qword_3C82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C82E8);
  }

  return result;
}

uint64_t sub_258498@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2C29B8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2584C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  swift_beginAccess();
  return sub_259520(v1 + 16, a1);
}

uint64_t sub_258588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  swift_beginAccess();
  return sub_259520(v3 + 16, a2);
}

uint64_t sub_258648(uint64_t a1, uint64_t *a2)
{
  sub_259520(a1, v3);
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6E8();

  return sub_69198(v3, &qword_3C8330, &qword_2EBD30);
}

uint64_t sub_258738(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_264558(a2, a1 + 16);
  return swift_endAccess();
}

double sub_25879C()
{
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  return result;
}

double sub_258840@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  *a2 = *(v3 + 56);

  return result;
}

double sub_2588EC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6E8();

  return result;
}

uint64_t sub_2589B8()
{
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  return *(v0 + 64);
}

__n128 sub_258A5C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  v4 = v3[5].n128_u8[0];
  result = v3[4];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

void sub_258B0C(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(v3 + 80) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 64) == *&a1 && *(v3 + 72) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
    sub_2BE6E8();

    return;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 64) = *&a1;
  *(v3 + 72) = *&a2;
  *(v3 + 80) = a3 & 1;
}

uint64_t sub_258C5C()
{
  sub_69198(v0 + 16, &qword_3C8330, &qword_2EBD30);

  v1 = OBJC_IVAR____TtC11BookStoreUIP33_74585184CCE4B4E33BC602469FA5DD4524HostedComponentViewModel___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t HostedComponentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_6620C(&qword_3C82F0, &qword_2F3D80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - v4;
  v41 = sub_6620C(&qword_3C82F8, &unk_2F8868);
  __chkstk_darwin(v41);
  v7 = v29 - v6;
  v36 = sub_6620C(&qword_3C8300, &qword_2E5510);
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v29 - v8;
  v38 = sub_6620C(&qword_3C8308, &qword_2F8878);
  v34 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = v29 - v10;
  v37 = sub_6620C(&qword_3C8310, &qword_2F8880);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = v29 - v11;
  v40 = sub_6620C(&qword_3C8318, &qword_2F8888);
  __chkstk_darwin(v40);
  v39 = v29 - v12;
  v13 = *v1;
  swift_getKeyPath();
  v43 = v13;
  sub_2644C4(&qword_3C8328, type metadata accessor for HostedComponentViewModel, &unk_2F8AD8);
  sub_2BE6F8();

  swift_beginAccess();
  sub_259520(v13 + 16, &v45);
  if (*(&v46 + 1))
  {
    sub_68D1C(&v45, v44);
    swift_getKeyPath();
    *&v45 = v13;
    sub_2BE6F8();

    if (*(v13 + 56))
    {
      v30 = v2;
      swift_getKeyPath();
      *&v45 = v13;

      sub_2BE6F8();

      if ((*(v13 + 80) & 1) == 0)
      {
        v29[1] = *(v13 + 72);
        v16 = sub_691F8(v44, &v45);
        sub_9F8B8(v16, v17, v18);
        sub_2BFCA8();
        v19 = sub_72B74(&unk_3C8340, &qword_3C8300, &qword_2E5510, &protocol conformance descriptor for ComponentView<A>);
        v20 = v31;
        v21 = v36;
        sub_2C3B58();
        (*(v33 + 8))(v9, v21);
        *&v45 = v21;
        *(&v45 + 1) = v19;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v23 = v32;
        v24 = v38;
        sub_2C3C88();
        (*(v34 + 8))(v20, v24);
        *&v45 = v24;
        *(&v45 + 1) = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        v25 = v39;
        v26 = v37;
        sub_2C3C58();
        (*(v35 + 8))(v23, v26);
        sub_2C46A8();
        sub_2C2708();
        v27 = (v25 + *(v40 + 36));
        v28 = v46;
        *v27 = v45;
        v27[1] = v28;
        v27[2] = v47;
        sub_263ED0(v25, v7);
        swift_storeEnumTagMultiPayload();
        sub_263D14();
        sub_72B74(&qword_3BDE58, &qword_3C82F0, &qword_2F3D80, &protocol conformance descriptor for BooksFailureView<A>);
        sub_2C33C8();

        sub_263F40(v25);
        return sub_68CD0(v44);
      }

      sub_68CD0(v44);

      v2 = v30;
    }

    else
    {
      sub_68CD0(v44);
    }
  }

  else
  {
    sub_69198(&v45, &qword_3C8330, &qword_2EBD30);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000020;
  *(v14 + 24) = 0x8000000000307540;
  sub_2C0378();
  (*(v3 + 16))(v7, v5, v2);
  swift_storeEnumTagMultiPayload();
  sub_263D14();
  sub_72B74(&qword_3BDE58, &qword_3C82F0, &qword_2F3D80, &protocol conformance descriptor for BooksFailureView<A>);
  sub_2C33C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_259520(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C8330, &qword_2EBD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_259590@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ReviewBrickComponent(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = swift_getKeyPath();
  sub_6620C(&unk_3C8530, &qword_2E3850);
  swift_storeEnumTagMultiPayload();
  v6 = v5 + v3[7];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v3[8];
  *(v5 + v7) = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v8 = v5 + v3[9];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = sub_25C380(v5, _swiftEmptyDictionarySingleton);
  result = sub_264610(v5);
  *a1 = v9;
  return result;
}

void BooksUIComponentHostingController.update(rawComponentModel:size:feedControllerHost:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_2C5C58();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2C5C18();

  v12 = v3;
  v13 = sub_2C5C08();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = a1;
  *(v14 + 48) = v12;
  *(v14 + 56) = a2;
  *(v14 + 64) = a3;

  sub_249B98(0, 0, v9, &unk_2F8928, v14);
}

uint64_t sub_259934(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 96) = a6;
  v9 = sub_2C1618();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  v10 = sub_2C4B78();
  *(v8 + 160) = v10;
  *(v8 + 168) = *(v10 - 8);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v11 = sub_2C49F8();
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  sub_2C5C18();
  *(v8 + 216) = sub_2C5C08();
  v13 = sub_2C5BB8();
  *(v8 + 224) = v13;
  *(v8 + 232) = v12;

  return _swift_task_switch(sub_259AF4, v13, v12);
}

uint64_t sub_259AF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_6620C(&unk_3C8518, &unk_2F8AF8);

      sub_2C49E8();
      UIViewController.jetActionHandlerInContext.getter();
      v7 = v6;
      ObjectType = swift_getObjectType();
      v0[31] = (*(v7 + 8))(ObjectType, v7);
      swift_unknownObjectRelease();
      v9 = swift_task_alloc();
      v0[32] = v9;
      *v9 = v0;
      v9[1] = sub_259F18;

      return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
    }

    swift_unknownObjectRelease();
  }

  if (qword_3BB760 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2ED0);
  v3 = sub_2C0098();
  v4 = sub_2C5DC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Failed to get UIViewController to retrieve object graph", v5, 2u);
  }

  v11 = v0[1];

  return v11();
}