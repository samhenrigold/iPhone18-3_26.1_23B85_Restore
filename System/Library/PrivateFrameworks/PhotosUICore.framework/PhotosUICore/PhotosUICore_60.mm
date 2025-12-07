uint64_t sub_1A43B0088()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B0184, 0, 0);
}

uint64_t sub_1A43B0184()
{
  v18 = v0;
  v1 = *(v0 + 192) & 0x18;
  if (v1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    KeyPath = swift_getKeyPath();
    v16[0] = v3;
    v16[1] = v2;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 128);

    v5 = *(v0 + 128);
    v6 = swift_getKeyPath();
    *&v17 = v3;
    *(&v17 + 1) = v2;
    OneUpSharePlayOverridableAsset.subscript.getter(v6, v0 + 136);

    v7 = *(v0 + 136);
    LOBYTE(v2) = sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (os_log_type_enabled(v8, v2))
    {
      v9 = v8;
      v15 = *(v0 + 208);
      v10 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v10 = 136446466;
      v11 = swift_getKeyPath();
      v17 = v15;
      OneUpSharePlayOverridableAsset.subscript.getter(v11, v0 + 32);

      sub_1A3C2EF94(*(v0 + 32), *(v0 + 40), v16);
    }

    *(v0 + 16) = *(v0 + 208);
    v12 = swift_task_alloc();
    *(v0 + 248) = v12;
    *v12 = v0;
    v12[1] = sub_1A43B0444;

    return sub_1A43B3F14((v0 + 16), v1, v5, v7);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1A43B0444()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A43B0538(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 272) = v3;
  *(v2 + 280) = *v3;
  v5 = sub_1A52411C4();
  *(v2 + 288) = v5;
  *(v2 + 296) = *(v5 - 8);
  *(v2 + 304) = swift_task_alloc();
  v6 = sub_1A52418E4();
  *(v2 + 312) = v6;
  *(v2 + 320) = *(v6 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = type metadata accessor for OneUpSharePlayStreamingVideoItem(0);
  *(v2 + 352) = swift_task_alloc();
  v7 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  *(v2 + 360) = v7;
  *(v2 + 368) = *(v7 - 8);
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  sub_1A43B99E0(0);
  *(v2 + 400) = v8;
  *(v2 + 408) = swift_task_alloc();
  sub_1A3C56708(0, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A43B07D0, 0, 0);
}

uint64_t sub_1A43B07D0()
{
  v21 = v0;
  v17 = *(v0 + 432);
  KeyPath = swift_getKeyPath();
  v20 = v17;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 504);

  v2 = *(v0 + 504);
  v3 = [objc_allocWithZone(PXVideoRequestOptions) init];
  *(v0 + 448) = v3;
  [v3 setDeliveryMode_];
  [v3 setAllowMediumHighQuality_];
  [v3 setStreamingAllowed_];
  [v3 setNetworkAccessAllowed_];
  [v3 setDownloadIntent_];
  [v3 setStreamingVideoIntent_];
  [v3 setRestrictToStreamable_];
  v4 = sub_1A524D264();
  v5 = sub_1A486DB9C();
  *(v0 + 456) = v5;
  v6 = *v5;
  if (os_log_type_enabled(*v5, v4))
  {
    v7 = v6;
    v18 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136446210;
    v9 = swift_getKeyPath();
    v20 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v9, v0 + 248);

    sub_1A3C2EF94(*(v0 + 248), *(v0 + 256), &v19);
  }

  v10 = *(v0 + 272);
  v11 = swift_task_alloc();
  *(v0 + 464) = v11;
  v12 = *(v0 + 432);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 40) = v3;
  *(v11 + 48) = v2 & 1;
  v13 = swift_task_alloc();
  *(v0 + 472) = v13;
  *v13 = v0;
  v13[1] = sub_1A43B0AD0;
  v15 = *(v0 + 400);
  v14 = *(v0 + 408);

  return MEMORY[0x1EEE6DDE0](v14, 0, 0, 0xD000000000000014, 0x80000001A53D4230, sub_1A43B9AA4, v11, v15);
}

uint64_t sub_1A43B0AD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B0BE8, 0, 0);
}

uint64_t sub_1A43B0BE8()
{
  v55 = v0;
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 360);
  v5 = *(v0 + 368);
  v6 = (v3 + *(*(v0 + 400) + 48));
  v8 = *v6;
  v7 = v6[1];
  sub_1A43B9AB4(v3, v1);
  sub_1A43BAA30(v1, v2, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  v9 = (*(v5 + 48))(v2, 1, v4);
  v10 = *(v0 + 416);
  if (v9 != 1)
  {
    v18 = *(v0 + 384);
    v17 = *(v0 + 392);
    v19 = *(v0 + 376);
    v20 = *(v0 + 352);
    v49 = *(v0 + 432);
    sub_1A43B9B48(v10, v17);
    sub_1A43BA748(v17, v18, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    sub_1A48162B4(v18, v20);
    KeyPath = swift_getKeyPath();
    v54 = v49;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 136);

    sub_1A4814A30(*(v0 + 136), *(v0 + 144), 2, v8, v7, v0 + 16);
    sub_1A43BA748(v17, v19, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v0 + 456);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v24 = sub_1A524D264();
        v25 = *v23;
        if (os_log_type_enabled(v25, v24))
        {
          v26 = v25;
          v50 = *(v0 + 432);
          v27 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v27 = 136446210;
          v28 = swift_getKeyPath();
          v54 = v50;
          OneUpSharePlayOverridableAsset.subscript.getter(v28, v0 + 216);

          sub_1A3C2EF94(*(v0 + 216), *(v0 + 224), &v53);
        }

        sub_1A43B9D0C(*(v0 + 376), type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
      }

      else
      {
        v37 = sub_1A524D264();
        v38 = *v23;
        if (os_log_type_enabled(v38, v37))
        {
          v39 = v38;
          v52 = *(v0 + 432);
          v40 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v40 = 136446210;
          v41 = swift_getKeyPath();
          v54 = v52;
          OneUpSharePlayOverridableAsset.subscript.getter(v41, v0 + 200);

          sub_1A3C2EF94(*(v0 + 200), *(v0 + 208), &v53);
        }
      }
    }

    else
    {
      sub_1A43B9D0C(*(v0 + 376), type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
      v32 = sub_1A524D264();
      v33 = *v23;
      if (os_log_type_enabled(v33, v32))
      {
        v34 = v33;
        v51 = *(v0 + 432);
        v35 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v35 = 136446210;
        v36 = swift_getKeyPath();
        v54 = v51;
        OneUpSharePlayOverridableAsset.subscript.getter(v36, v0 + 232);

        sub_1A3C2EF94(*(v0 + 232), *(v0 + 240), &v53);
      }
    }

    v42 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v42;
    *(v0 + 88) = *(v0 + 48);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = *(AssociatedConformanceWitness + 64);
    v45 = swift_checkMetadataState();
    v47 = v44 + *v44;
    v46 = swift_task_alloc();
    *(v0 + 480) = v46;
    sub_1A43B9BAC(&unk_1EB1391C0, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365E48);
    sub_1A435C580();
    sub_1A435C5D4();
    *v46 = v0;
    v46[1] = sub_1A43B14C0;
    v57 = v45;
    v58 = AssociatedConformanceWitness;

    __asm { BRAA            X8, X16 }
  }

  v11 = *(v0 + 456);

  sub_1A3C2C848(v10, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);
  v12 = sub_1A524D244();
  v13 = *v11;
  if (os_log_type_enabled(*v11, v12))
  {
    v14 = v13;
    v48 = *(v0 + 432);
    v15 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v15 = 136446210;
    v16 = swift_getKeyPath();
    v54 = v48;
    OneUpSharePlayOverridableAsset.subscript.getter(v16, v0 + 120);

    sub_1A3C2EF94(*(v0 + 120), *(v0 + 128), &v53);
  }

  v29 = *(v0 + 424);

  sub_1A3C2C848(v29, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A43B14C0()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1A43B1AF0;
  }

  else
  {
    sub_1A435BFA0(v2 + 16);
    v3 = sub_1A43B15DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43B15DC()
{
  v1 = *(v0 + 432);
  v2 = *(*(v0 + 272) + *(**(v0 + 272) + 104));
  *(v0 + 496) = v2;
  *(v0 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43B161C, v2, 0);
}

uint64_t sub_1A43B161C()
{
  sub_1A43B67F4(*(v0 + 336), (v0 + 168));

  return MEMORY[0x1EEE6DFA0](sub_1A43B168C, 0, 0);
}

uint64_t sub_1A43B168C()
{
  v29 = v0;
  v1 = *(v0 + 456);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = sub_1A524D264();
  v7 = *v1;
  (*(v5 + 16))(v3, v2, v4);
  if (os_log_type_enabled(v7, v6))
  {
    v8 = *(v0 + 328);
    v26 = *(v0 + 320);
    v27 = *(v0 + 312);
    v10 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 288);
    v7;
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136446466;
    sub_1A52418C4();
    sub_1A43B9BAC(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = sub_1A524EA44();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    (*(v26 + 8))(v8, v27);
    sub_1A3C2EF94(v13, v15, &v28);
  }

  v16 = *(v0 + 424);
  v17 = *(v0 + 392);
  v18 = *(v0 + 352);
  v20 = *(v0 + 328);
  v19 = *(v0 + 336);
  v21 = *(v0 + 312);
  v22 = *(v0 + 320);

  v23 = *(v22 + 8);
  v23(v20, v21);
  v23(v19, v21);
  sub_1A43B9D0C(v18, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  sub_1A43B9D0C(v17, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  sub_1A3C2C848(v16, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1A43B1AF0()
{
  v16 = v0;
  v1 = *(v0 + 456);
  sub_1A435BFA0(v0 + 16);
  v2 = sub_1A524D244();
  v3 = *v1;
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v3;
    v13 = *(v0 + 432);
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    KeyPath = swift_getKeyPath();
    v15 = v13;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 152);

    sub_1A3C2EF94(*(v0 + 152), *(v0 + 160), &v14);
  }

  v7 = *(v0 + 488);
  v8 = *(v0 + 424);
  v9 = *(v0 + 392);
  v10 = *(v0 + 352);

  sub_1A43B9D0C(v10, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  sub_1A43B9D0C(v9, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
  sub_1A3C2C848(v8, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720], sub_1A3C56708);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A43B1E70(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 480) = v3;
  *(v2 + 488) = *v3;
  v5 = sub_1A52411C4();
  *(v2 + 496) = v5;
  *(v2 + 504) = *(v5 - 8);
  *(v2 + 512) = swift_task_alloc();
  v6 = sub_1A52418E4();
  *(v2 + 520) = v6;
  *(v2 + 528) = *(v6 - 8);
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A43B1FD0, 0, 0);
}

uint64_t sub_1A43B1FD0()
{
  v28 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = [objc_allocWithZone(PXLivePhotoRequestOptions) init];
  v0[71] = v3;
  [v3 setDeliveryMode_];
  [v3 setNetworkAccessAllowed_];
  [v3 setDownloadIntent_];
  [v3 setPreferHDR_];
  KeyPath = swift_getKeyPath();
  v26[0] = v2;
  v26[1] = v1;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, (v0 + 58));

  v5 = v0[58];
  v6 = swift_getKeyPath();
  *&v27 = v2;
  *(&v27 + 1) = v1;
  OneUpSharePlayOverridableAsset.subscript.getter(v6, (v0 + 59));

  v7 = v5;
  v8 = v0[59];
  if (v5 >= 2612)
  {
    v9 = 2611.0 / v7;
    v7 = 2611.0 / v7 * v7;
    v8 = v9 * v8;
  }

  v10 = (v0 + 69);
  if (v8 > 1469.0)
  {
    v11 = v8 * (1469.0 / v8);
  }

  else
  {
    v11 = v8;
  }

  if (v8 > 1469.0)
  {
    v12 = v7 * (1469.0 / v8);
  }

  else
  {
    v12 = v7;
  }

  v13 = sub_1A524D264();
  v14 = sub_1A486DB9C();
  v0[72] = v14;
  v15 = *v14;
  if (os_log_type_enabled(*v14, v13))
  {
    v16 = v15;
    v25 = *v10;
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v17 = 136446210;
    v18 = swift_getKeyPath();
    v27 = v25;
    OneUpSharePlayOverridableAsset.subscript.getter(v18, (v0 + 56));

    sub_1A3C2EF94(v0[56], v0[57], v26);
  }

  v19 = v0[60];
  v20 = swift_task_alloc();
  v0[73] = v20;
  v21 = *v10;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 40) = v12;
  *(v20 + 48) = v11;
  *(v20 + 56) = v3;
  v22 = swift_task_alloc();
  v0[74] = v22;
  sub_1A43B9DEC(0);
  *v22 = v0;
  v22[1] = sub_1A43B2318;

  return MEMORY[0x1EEE6DDE0](v0 + 34, 0, 0, 0xD000000000000018, 0x80000001A53D4280, sub_1A43B9DD4, v20, v23);
}

uint64_t sub_1A43B2318()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B2430, 0, 0);
}

uint64_t sub_1A43B2430(_BOOL8 a1)
{
  v34 = v1;
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  *(v1 + 600) = v2;
  *(v1 + 608) = v3;
  if (v2)
  {
    if (v3)
    {
      v4 = *(v1 + 576);
      v5 = sub_1A524D264();
      v6 = *v4;
      if (os_log_type_enabled(v6, v5))
      {
        v7 = v6;
        v29 = *(v1 + 552);
        v8 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v8 = 136446210;
        KeyPath = swift_getKeyPath();
        v33 = v29;
        OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v1 + 432);

        sub_1A3C2EF94(*(v1 + 432), *(v1 + 440), &v32);
      }

      v10 = [objc_opt_self() defaultManager];
      *(v1 + 616) = v10;
      v11 = [objc_allocWithZone(MEMORY[0x1E6978708]) init];
      *(v1 + 624) = v11;
      [v11 setNetworkAccessAllowed_];
      v12 = swift_task_alloc();
      *(v1 + 632) = v12;
      v12[2] = v10;
      v12[3] = v2;
      v12[4] = v11;
      v13 = swift_task_alloc();
      *(v1 + 640) = v13;
      sub_1A43B9E74(0);
      *(v1 + 648) = v14;
      *v13 = v1;
      v13[1] = sub_1A43B293C;

      return MEMORY[0x1EEE6DDE0](v1 + 224, 0, 0, 0xD00000000000001BLL, 0x80000001A53D42A0, sub_1A43B9E68, v12, v14);
    }

    goto LABEL_12;
  }

  v15 = *(v1 + 576);
  v16 = sub_1A524D244();
  v17 = *v15;
  if (os_log_type_enabled(v17, v16))
  {
    v18 = v17;
    v30 = *(v1 + 552);
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v19 = 136446210;
    v20 = swift_getKeyPath();
    v33 = v30;
    OneUpSharePlayOverridableAsset.subscript.getter(v20, v1 + 304);

    sub_1A3C2EF94(*(v1 + 304), *(v1 + 312), &v32);
  }

  if (!v3)
  {
LABEL_12:
    v21 = *(v1 + 576);
    v22 = sub_1A524D244();
    v23 = *v21;
    if (os_log_type_enabled(v23, v22))
    {
      v24 = v23;
      v31 = *(v1 + 552);
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v25 = 136446210;
      v26 = swift_getKeyPath();
      v33 = v31;
      OneUpSharePlayOverridableAsset.subscript.getter(v26, v1 + 288);

      sub_1A3C2EF94(*(v1 + 288), *(v1 + 296), &v32);
    }

    goto LABEL_15;
  }

LABEL_15:

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_1A43B293C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B2A54, 0, 0);
}

uint64_t sub_1A43B2A54(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *(v1 + 656) = v2;
  *(v1 + 664) = v3;
  v4 = *(v1 + 240);
  if (v4)
  {
    v5 = *(v1 + 576);
    v6 = sub_1A524D244();
    v7 = *v5;
    v8 = os_log_type_enabled(v7, v6);
    v9 = v7;
    v10 = v4;
    v11 = *(v1 + 624);
    v12 = *(v1 + 616);
    v13 = *(v1 + 608);
    v25 = *(v1 + 600);
    if (v8)
    {
      *log = *(v1 + 552);
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v14 = 136446466;
      KeyPath = swift_getKeyPath();
      v27 = *log;
      OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v1 + 416);

      sub_1A3C2EF94(*(v1 + 416), *(v1 + 424), &v26);
    }

    sub_1A3C59280(v2, v3);

    v22 = *(v1 + 8);

    return v22();
  }

  else
  {
    v16 = *(v1 + 624);
    v17 = *(v1 + 616);
    v18 = *(v1 + 608);
    v19 = swift_task_alloc();
    *(v1 + 672) = v19;
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v16;
    v20 = swift_task_alloc();
    *(v1 + 680) = v20;
    *v20 = v1;
    v20[1] = sub_1A43B2E00;
    v21 = *(v1 + 648);

    return MEMORY[0x1EEE6DDE0](v1 + 248, 0, 0, 0xD00000000000001BLL, 0x80000001A53D42A0, sub_1A43BAB9C, v19, v21);
  }
}

uint64_t sub_1A43B2E00()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B2F18, 0, 0);
}

void sub_1A43B2F18(uint64_t a1)
{
  v32 = v1;
  v3 = *(v1 + 248);
  v2 = *(v1 + 256);
  *(v1 + 688) = v3;
  *(v1 + 696) = v2;
  v4 = *(v1 + 264);
  if (!v4)
  {
    v16 = *(v1 + 608);
    v17 = [*(v1 + 600) uniformTypeIdentifier];
    sub_1A524C674();

    PXDisplayCollectionDetailedCountsMake();
    v19 = v18;
    v21 = v20;
    *(v1 + 704) = v18;
    *(v1 + 712) = v20;
    *(v1 + 720) = v22;
    v23 = [v16 uniformTypeIdentifier];
    sub_1A524C674();

    PXDisplayCollectionDetailedCountsMake();
    *(v1 + 728) = v24;
    *(v1 + 736) = v25;
    *(v1 + 744) = v26;
    sub_1A3D602A8(v19, v21);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = *(v1 + 576);
  v6 = sub_1A524D244();
  v7 = *v5;
  v8 = os_log_type_enabled(v7, v6);
  v28 = v7;
  if (v8)
  {
    v29 = *(v1 + 552);
    swift_slowAlloc();
    swift_slowAlloc();
    v30 = swift_slowAlloc();
    KeyPath = swift_getKeyPath();
    v31 = v29;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v1 + 400);

    sub_1A3C2EF94(*(v1 + 400), *(v1 + 408), &v30);
  }

  v9 = *(v1 + 664);
  v10 = *(v1 + 656);
  v11 = *(v1 + 624);
  v12 = *(v1 + 616);
  v13 = *(v1 + 608);
  v14 = *(v1 + 600);

  sub_1A3C59280(v10, v9);
  sub_1A3C59280(v3, v2);

  v15 = *(v1 + 8);

  v15();
}

uint64_t sub_1A43B3518()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1A43B3B70;
  }

  else
  {
    sub_1A435BFA0(v2 + 144);
    v3 = sub_1A43B3634;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43B3634()
{
  v1 = *(*(v0 + 480) + *(**(v0 + 480) + 104));
  *(v0 + 768) = v1;
  *(v0 + 352) = *(v0 + 552);
  return MEMORY[0x1EEE6DFA0](sub_1A43B3678, v1, 0);
}

uint64_t sub_1A43B3678()
{
  sub_1A43B67F4(*(v0 + 544), (v0 + 352));

  return MEMORY[0x1EEE6DFA0](sub_1A43B36E8, 0, 0);
}

uint64_t sub_1A43B36E8()
{
  v39 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = sub_1A524D264();
  v7 = *v1;
  (*(v4 + 16))(v3, v2, v5);
  LODWORD(v2) = os_log_type_enabled(v7, v6);
  v37 = v7;
  if (v2)
  {
    v8 = *(v0 + 536);
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);
    v9 = *(v0 + 504);
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v12 = 136446466;
    sub_1A52418C4();
    sub_1A43B9BAC(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = sub_1A524EA44();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    (*(v28 + 8))(v8, v29);
    sub_1A3C2EF94(v13, v15, &v38);
  }

  v16 = *(v0 + 736);
  v17 = *(v0 + 728);
  v30 = *(v0 + 712);
  v18 = *(v0 + 704);
  v32 = *(v0 + 696);
  v31 = *(v0 + 688);
  v35 = *(v0 + 664);
  v34 = *(v0 + 656);
  v19 = *(v0 + 624);
  v20 = *(v0 + 616);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);
  v36 = *(v0 + 544);
  v33 = *(v0 + 536);
  v23 = *(v0 + 528);
  v24 = *(v0 + 520);

  sub_1A435CBA8(v0 + 16);
  sub_1A3C59280(v17, v16);

  sub_1A3C59280(v18, v30);

  sub_1A3C59280(v31, v32);
  sub_1A3C59280(v34, v35);
  v25 = *(v23 + 8);
  v25(v33, v24);
  v25(v36, v24);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A43B3B70()
{
  v26 = v0;
  v1 = *(v0 + 576);
  sub_1A435BFA0(v0 + 144);
  v2 = sub_1A524D244();
  v3 = *v1;
  v4 = os_log_type_enabled(v3, v2);
  v23 = v3;
  if (v4)
  {
    v17 = *(v0 + 552);
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v5 = 136446466;
    KeyPath = swift_getKeyPath();
    v25 = v17;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 336);

    sub_1A3C2EF94(*(v0 + 336), *(v0 + 344), &v24);
  }

  v18 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v19 = *(v0 + 624);
  v20 = *(v0 + 616);
  v21 = *(v0 + 608);
  v22 = *(v0 + 760);
  v14 = *(v0 + 600);

  sub_1A3C59280(v13, v12);
  sub_1A3C59280(v11, v10);
  sub_1A3C59280(v9, v8);

  sub_1A3C59280(v7, v18);

  sub_1A435CBA8(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A43B3F14(_OWORD *a1, uint64_t a2, double a3, double a4)
{
  v6 = v4;
  *(v5 + 384) = a2;
  *(v5 + 392) = v6;
  *(v5 + 368) = a3;
  *(v5 + 376) = a4;
  *(v5 + 400) = *v6;
  v8 = sub_1A52411C4();
  *(v5 + 408) = v8;
  *(v5 + 416) = *(v8 - 8);
  *(v5 + 424) = swift_task_alloc();
  v9 = sub_1A52418E4();
  *(v5 + 432) = v9;
  *(v5 + 440) = *(v9 - 8);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A43B4074, 0, 0);
}

uint64_t sub_1A43B4074()
{
  v35 = v0;
  v1 = *(v0 + 384);
  v30 = *(v0 + 464);
  v2 = [objc_allocWithZone(off_1E7721750) init];
  *(v0 + 480) = v2;
  [v2 setNetworkAccessAllowed_];
  [v2 setDeliveryMode_];
  [v2 setVersion_];
  KeyPath = swift_getKeyPath();
  v34 = v30;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 360);

  if (*(v0 + 360) == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v2 setResizeMode_];
  [v2 setDownloadIntent_];
  [v2 setDownloadPriority_];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  *(v0 + 488) = v6;
  v7 = *v6;
  v8 = os_log_type_enabled(*v6, v5);
  if ((v1 & 0x18) != 0)
  {
    if (v8)
    {
      v9 = v7;
      v31 = *(v0 + 464);
      v10 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = swift_getKeyPath();
      v34 = v31;
      OneUpSharePlayOverridableAsset.subscript.getter(v11, v0 + 344);

      sub_1A3C2EF94(*(v0 + 344), *(v0 + 352), &v33);
    }

    v12 = *(v0 + 392);
    v13 = swift_task_alloc();
    *(v0 + 496) = v13;
    v14 = *(v0 + 464);
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 40) = v2;
    v15 = swift_task_alloc();
    *(v0 + 504) = v15;
    sub_1A43BA494(0);
    v17 = v16;
    *v15 = v0;
    v15[1] = sub_1A43B455C;
    v18 = sub_1A43BA488;
    v19 = v0 + 96;
  }

  else
  {
    if (v8)
    {
      v20 = v7;
      v32 = *(v0 + 464);
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v21 = 136446722;
      v22 = swift_getKeyPath();
      v34 = v32;
      OneUpSharePlayOverridableAsset.subscript.getter(v22, v0 + 312);

      sub_1A3C2EF94(*(v0 + 312), *(v0 + 320), &v33);
    }

    v23 = *(v0 + 392);
    v25 = *(v0 + 368);
    v24 = *(v0 + 376);
    v13 = swift_task_alloc();
    *(v0 + 512) = v13;
    v26 = *(v0 + 464);
    *(v13 + 16) = v23;
    *(v13 + 24) = v26;
    *(v13 + 40) = v25;
    *(v13 + 48) = v24;
    *(v13 + 56) = v2;
    v27 = swift_task_alloc();
    *(v0 + 520) = v27;
    sub_1A43BA2A4(0);
    v17 = v28;
    *v27 = v0;
    v27[1] = sub_1A43B4E40;
    v18 = sub_1A43BA274;
    v19 = v0 + 128;
  }

  return MEMORY[0x1EEE6DDE0](v19, 0, 0, 0xD000000000000032, 0x80000001A53D4310, v18, v13, v17);
}

uint64_t sub_1A43B455C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B4674, 0, 0);
}

uint64_t sub_1A43B4674()
{
  v47 = v0;
  v1 = *(v0 + 488);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 120);
  v43 = *(v0 + 112);
  v5 = sub_1A524D264();
  v6 = *v1;
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v6;
    v39 = *(v0 + 464);
    v8 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v8 = 136446466;
    KeyPath = swift_getKeyPath();
    *v46 = v39;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 328);

    sub_1A3C2EF94(*(v0 + 328), *(v0 + 336), &v45);
  }

  if (v2 >> 60 != 15)
  {
    sub_1A3D602A8(v3, v2);
    *(v0 + 536) = v2;
    *(v0 + 528) = v3;
    v19 = sub_1A524D264();
    v20 = sub_1A486DB9C();
    *(v0 + 544) = v20;
    v21 = *v20;
    if (os_log_type_enabled(*v20, v19))
    {
      v40 = *(v0 + 464);
      sub_1A3D602A8(v3, v2);
      sub_1A3D602A8(v3, v2);
      v22 = v21;
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v23 = 136446722;
      v24 = swift_getKeyPath();
      *v46 = v40;
      OneUpSharePlayOverridableAsset.subscript.getter(v24, v0 + 264);

      sub_1A3C2EF94(*(v0 + 264), *(v0 + 272), &v45);
    }

    v25 = *(v0 + 384);
    sub_1A3D602A8(v3, v2);
    PXDisplayCollectionDetailedCountsMake();
    v27 = v26;
    v29 = v28;
    *(v0 + 552) = v26;
    *(v0 + 560) = v28;
    v30 = __ROR8__(v25 - 2, 1);
    v31 = 1;
    if (v30 > 2)
    {
      if (v30 != 7 && v30 != 3)
      {
LABEL_17:
        v31 = 0;
      }
    }

    else
    {
      if (v30)
      {
        if (v30 == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      *v46 = *(v0 + 464);
      v31 = (sub_1A43B8D30(v46) & 0x1C) == 0;
    }

LABEL_19:
    v41 = *(v0 + 464);
    v32 = sub_1A48143E8(v31, (*(v0 + 384) & 0x10) != 0, (v25 & 0x18) != 0);
    v33 = swift_getKeyPath();
    *v46 = v41;
    OneUpSharePlayOverridableAsset.subscript.getter(v33, v0 + 184);

    sub_1A4814A30(*(v0 + 184), *(v0 + 192), v32 & 0x10101, v43, v4, v0 + 16);
    *(v0 + 200) = v27;
    *(v0 + 208) = v29;
    v34 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v34;
    *(v0 + 88) = *(v0 + 48);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = *(AssociatedConformanceWitness + 64);
    v37 = swift_checkMetadataState();
    v42 = v36 + *v36;
    v38 = swift_task_alloc();
    *(v0 + 568) = v38;
    sub_1A435C204();
    sub_1A435C580();
    sub_1A435C5D4();
    *v38 = v0;
    v38[1] = sub_1A43B5AD0;
    v49 = v37;
    v50 = AssociatedConformanceWitness;

    __asm { BRAA            X8, X16 }
  }

  v10 = sub_1A524D244();
  v11 = *sub_1A486DB9C();
  v12 = os_log_type_enabled(v11, v10);
  v13 = v11;
  v14 = *(v0 + 480);
  if (v12)
  {
    v44 = *(v0 + 464);
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v15 = 136446210;
    v16 = swift_getKeyPath();
    *v46 = v44;
    OneUpSharePlayOverridableAsset.subscript.getter(v16, v0 + 168);

    sub_1A3C2EF94(*(v0 + 168), *(v0 + 176), &v45);
  }

  sub_1A3DB556C(v3, v2);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A43B4E40()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43B4F58, 0, 0);
}

id sub_1A43B4F58()
{
  v72 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);
  v3 = *(v0 + 488);
  if (!v1)
  {

    v15 = sub_1A524D244();
    v16 = *v3;
    if (os_log_type_enabled(v16, v15))
    {
      v17 = v16;
      v67 = *(v0 + 464);
      v18 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v18 = 136446210;
      KeyPath = swift_getKeyPath();
      v71 = v67;
      OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 152);

      sub_1A3C2EF94(*(v0 + 152), *(v0 + 160), &v70);
    }

    goto LABEL_22;
  }

  v66 = *(v0 + 136);
  v4 = sub_1A524D264();
  v5 = *v3;
  if (os_log_type_enabled(v5, v4))
  {
    v6 = v5;
    v62 = *(v0 + 464);
    v7 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = swift_getKeyPath();
    v71 = v62;
    OneUpSharePlayOverridableAsset.subscript.getter(v8, v0 + 296);

    sub_1A3C2EF94(*(v0 + 296), *(v0 + 304), &v70);
  }

  if ((*(v0 + 384) & 4) != 0)
  {
    v20 = [(UIImage *)v1 CGImage];
    if (!v20)
    {
      v34 = *(v0 + 488);

      v35 = sub_1A524D244();
      v36 = *v34;
      if (os_log_type_enabled(v36, v35))
      {
        v37 = v36;
        v68 = *(v0 + 464);
        v38 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v38 = 136446210;
        v39 = swift_getKeyPath();
        v71 = v68;
        OneUpSharePlayOverridableAsset.subscript.getter(v39, v0 + 280);

        sub_1A3C2EF94(*(v0 + 280), *(v0 + 288), &v70);
      }

      goto LABEL_22;
    }

    v21 = v20;
    v14 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v22 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    result = [v22 workingColorSpace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v25 = *MEMORY[0x1E695F910];
    sub_1A43BA350(MEMORY[0x1E69E7CC0]);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1A43B9BAC(&qword_1EB139258, type metadata accessor for CIImageRepresentationOption, &unk_1A5335EF0);
    v26 = sub_1A524C3D4();

    v10 = [v22 HEIFRepresentationOfImage:v14 format:v25 colorSpace:v24 options:v26];

    if (v10)
    {
      v11 = sub_1A5240EA4();
      v13 = v27;

LABEL_13:
      sub_1A3D602A8(v11, v13);
      *(v0 + 536) = v13;
      *(v0 + 528) = v11;
      v28 = sub_1A524D264();
      v29 = sub_1A486DB9C();
      *(v0 + 544) = v29;
      v30 = *v29;
      if (os_log_type_enabled(*v29, v28))
      {
        v63 = *(v0 + 464);
        sub_1A3D602A8(v11, v13);
        sub_1A3D602A8(v11, v13);
        v31 = v30;
        v32 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v32 = 136446722;
        v33 = swift_getKeyPath();
        v71 = v63;
        OneUpSharePlayOverridableAsset.subscript.getter(v33, v0 + 264);

        sub_1A3C2EF94(*(v0 + 264), *(v0 + 272), &v70);
      }

      v48 = *(v0 + 384);
      sub_1A3D602A8(v11, v13);
      PXDisplayCollectionDetailedCountsMake();
      v50 = v49;
      v52 = v51;
      *(v0 + 552) = v49;
      *(v0 + 560) = v51;
      v53 = __ROR8__(v48 - 2, 1);
      v54 = 1;
      if (v53 > 2)
      {
        if (v53 == 7 || v53 == 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (!v53)
        {
          v71 = *(v0 + 464);
          v54 = (sub_1A43B8D30(&v71) & 0x1C) == 0;
LABEL_34:
          v64 = *(v0 + 464);
          v55 = sub_1A48143E8(v54, (*(v0 + 384) & 0x10) != 0, (v48 & 0x18) != 0);
          v56 = swift_getKeyPath();
          v71 = v64;
          OneUpSharePlayOverridableAsset.subscript.getter(v56, v0 + 184);

          sub_1A4814A30(*(v0 + 184), *(v0 + 192), v55 & 0x10101, v66, v2, v0 + 16);
          *(v0 + 200) = v50;
          *(v0 + 208) = v52;
          v57 = *(v0 + 32);
          *(v0 + 56) = *(v0 + 16);
          *(v0 + 72) = v57;
          *(v0 + 88) = *(v0 + 48);
          swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v59 = *(AssociatedConformanceWitness + 64);
          v60 = swift_checkMetadataState();
          v65 = v59 + *v59;
          v61 = swift_task_alloc();
          *(v0 + 568) = v61;
          sub_1A435C204();
          sub_1A435C580();
          sub_1A435C5D4();
          *v61 = v0;
          v61[1] = sub_1A43B5AD0;
          v74 = v60;
          v75 = AssociatedConformanceWitness;

          __asm { BRAA            X8, X16 }
        }

        if (v53 == 1)
        {
          goto LABEL_34;
        }
      }

      v54 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v9 = UIImageJPEGRepresentation(v1, 0.899999976);
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A5240EA4();
      v13 = v12;
      v14 = v1;
      goto LABEL_13;
    }
  }

  v40 = sub_1A524D244();
  v41 = *sub_1A486DB9C();
  v42 = os_log_type_enabled(v41, v40);
  v43 = v41;
  v44 = *(v0 + 480);
  if (v42)
  {
    v69 = *(v0 + 464);
    v45 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v45 = 136446210;
    v46 = swift_getKeyPath();
    v71 = v69;
    OneUpSharePlayOverridableAsset.subscript.getter(v46, v0 + 168);

    sub_1A3C2EF94(*(v0 + 168), *(v0 + 176), &v70);
  }

  sub_1A3DB556C(0, 0xF000000000000000);

LABEL_22:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1A43B5AD0()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    sub_1A3DB556C(*(v2 + 528), *(v2 + 536));
    v3 = sub_1A43B6050;
  }

  else
  {
    sub_1A435BFA0(v2 + 16);
    v3 = sub_1A43B5BF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A43B5BF8()
{
  v1 = *(v0 + 464);
  v2 = *(*(v0 + 392) + *(**(v0 + 392) + 104));
  *(v0 + 584) = v2;
  *(v0 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43B5C38, v2, 0);
}

uint64_t sub_1A43B5C38()
{
  sub_1A43B67F4(*(v0 + 456), (v0 + 232));

  return MEMORY[0x1EEE6DFA0](sub_1A43B5CA8, 0, 0);
}

uint64_t sub_1A43B5CA8()
{
  v31 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = sub_1A524D264();
  v7 = *v1;
  (*(v5 + 16))(v2, v3, v4);
  LODWORD(v3) = os_log_type_enabled(v7, v6);
  log = v7;
  if (v3)
  {
    v8 = *(v0 + 448);
    v9 = *(v0 + 432);
    v28 = *(v0 + 440);
    v10 = *(v0 + 416);
    v11 = *(v0 + 424);
    v12 = *(v0 + 408);
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446722;
    sub_1A52418C4();
    sub_1A43B9BAC(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1A524EA44();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    (*(v28 + 8))(v8, v9);
    sub_1A3C2EF94(v14, v16, &v30);
  }

  v17 = *(v0 + 560);
  v18 = *(v0 + 552);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v22 = *(v0 + 448);
  v21 = *(v0 + 456);
  v24 = *(v0 + 432);
  v23 = *(v0 + 440);

  sub_1A3C59280(v18, v17);
  sub_1A3C59280(v20, v19);
  sub_1A3DB556C(v20, v19);
  v25 = *(v23 + 8);
  v25(v22, v24);
  v25(v21, v24);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A43B6050()
{
  v18 = v0;
  v1 = *(v0 + 544);
  sub_1A435BFA0(v0 + 16);
  v2 = sub_1A524D244();
  v3 = *v1;
  v4 = os_log_type_enabled(v3, v2);
  v5 = v3;
  if (v4)
  {
    v15 = *(v0 + 464);
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136446466;
    KeyPath = swift_getKeyPath();
    v17 = v15;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 216);

    sub_1A3C2EF94(*(v0 + 216), *(v0 + 224), &v16);
  }

  v8 = *(v0 + 576);
  v9 = *(v0 + 560);
  v10 = *(v0 + 552);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);

  sub_1A3C59280(v12, v11);
  sub_1A3C59280(v10, v9);

  v13 = *(v0 + 8);

  return v13();
}

void sub_1A43B62E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A43BA81C(0, &qword_1EB139270, sub_1A43BA494);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = aBlock - v12;
  v14 = *(a2 + *(*a2 + 112));
  (*(v10 + 16))(aBlock - v12, a1, v9, v11);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = sub_1A43BA5D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A43B64D0;
  aBlock[3] = &block_descriptor_54_0;
  v17 = _Block_copy(aBlock);

  [v14 requestImageDataForAsset:a3 options:a4 resultHandler:v17];
  _Block_release(v17);
}

double sub_1A43B64D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {

    v10 = v8;
    v8 = sub_1A5240EA4();
    v12 = v11;

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {

    v12 = 0xF000000000000000;
    if (a3)
    {
LABEL_3:
      v13 = sub_1A524C674();
      a3 = v14;
      if (!a5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v13 = 0;
  if (a5)
  {
LABEL_4:
    a5 = sub_1A524C3E4();
  }

LABEL_5:
  v9(v8, v12, v13, a3, a4, a5);

  sub_1A3DB556C(v8, v12);

  return result;
}

void sub_1A43B65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1A43BA81C(0, &qword_1EB139288, sub_1A43BA2A4);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = aBlock - v16;
  v18 = *(a2 + *(*a2 + 112));
  (*(v14 + 16))(aBlock - v16, a1, v13, v15);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  aBlock[4] = sub_1A43BA880;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DD5B38;
  aBlock[3] = &block_descriptor_60_4;
  v21 = _Block_copy(aBlock);

  [v18 requestImageForAsset:a3 targetSize:0 contentMode:a4 options:v21 resultHandler:{a5, a6}];
  _Block_release(v21);
}

double sub_1A43B67F4(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = *v3;
  KeyPath = swift_getKeyPath();
  v19 = *a2;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v18);

  v8 = v18[0];
  v9 = v18[1];
  swift_beginAccess();
  v16 = v8;
  v17 = v9;
  v11 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry(255, *(v6 + 80), *(v6 + 88), v10);
  sub_1A524C454();
  v12 = sub_1A524C474();
  if ((*(*(v11 - 8) + 48))(v13, 1, v11))
  {
    v12(v15, 0);

    swift_endAccess();
  }

  else
  {
    sub_1A43B86DC(a1);
    v12(v15, 0);
    swift_endAccess();
  }

  return result;
}

void sub_1A43B6990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v18[1] = a5;
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v18 - v14;
  (*(v12 + 16))(v18 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_1A43B9BF4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A43B7D94;
  aBlock[3] = &block_descriptor_167;
  _Block_copy(aBlock);
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43B6BA4(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a8;
  *(&v83 + 1) = a7;
  *&v83 = a6;
  LODWORD(v81) = a5;
  v82 = a2;
  v80 = a1;
  sub_1A43B99E0(0);
  v84 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1A3C56708(0, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v77 - v14;
  sub_1A3C56708(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], v12);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v77 - v17;
  v19 = sub_1A5240E64();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = MEMORY[0x1E69E7CA0];
  v27 = a3;
  v28 = a3 >> 60;
  if (!a4)
  {
    v90 = 0u;
    v91 = 0u;
    sub_1A3C2C848(&v90, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    if (v28 <= 0xE)
    {
      v90 = 0u;
      v91 = 0u;
      v38 = v82;
      v39 = v27;
      sub_1A3D602A8(v82, v27);
      sub_1A3C2C848(&v90, &qword_1EB126130, v26 + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
      v44 = 0;
      v43 = 0;
      v79 = 0;
      v36 = 0;
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  v87 = sub_1A524C674();
  v88 = v29;
  sub_1A524E384();
  if (!*(a4 + 16) || (v30 = sub_1A3D5C0BC(v92), (v31 & 1) == 0))
  {
    sub_1A3D5FAFC(v92);
    v90 = 0u;
    v91 = 0u;
LABEL_13:
    sub_1A3C2C848(&v90, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    if (v28 <= 0xE)
    {
      v36 = 0;
      v79 = 0;
      goto LABEL_15;
    }

LABEL_25:
    v35 = 0;
    v78 = 0;
LABEL_26:
    sub_1A43BAA30(v80, v18, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      sub_1A3C2C848(v18, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C56708);
      if (a4)
      {
        sub_1A43B7ABC(a4);
      }

      v70 = sub_1A524D244();
      v71 = *sub_1A486DB9C();
      if (os_log_type_enabled(v71, v70))
      {
        v72 = v71;
        v73 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v73 = 136446466;
        KeyPath = swift_getKeyPath();
        v92[0] = v83;
        OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, &v90);

        sub_1A3C2EF94(v90, *(&v90 + 1), &v87);
      }

      v75 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v75 - 8) + 56))(v15, 0, 1, v75);
      v76 = (v85 + *(v84 + 48));
      sub_1A43B9AB4(v15, v85);
      sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
      *v76 = 0;
      v76[1] = 0;
      sub_1A524CBE4();
    }

    else
    {
      (*(v20 + 32))(v25, v18, v19);
      v45 = sub_1A524D264();
      v46 = *sub_1A486DB9C();
      v47 = *(v20 + 16);
      v47(v22, v25, v19);
      if (os_log_type_enabled(v46, v45))
      {
        v82 = v46;
        v48 = swift_slowAlloc();
        v79 = v35;
        v49 = v48;
        v81 = swift_slowAlloc();
        v87 = v81;
        *v49 = 136446466;
        v50 = swift_getKeyPath();
        v92[0] = v83;
        *(&v83 + 1) = v47;
        OneUpSharePlayOverridableAsset.subscript.getter(v50, &v90);

        sub_1A3C2EF94(v90, *(&v90 + 1), &v87);
      }

      v66 = v22;
      v67 = *(v20 + 8);
      v67(v66, v19);
      v47(v15, v25, v19);
      v68 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v68 - 8) + 56))(v15, 0, 1, v68);
      v69 = (v85 + *(v84 + 48));
      sub_1A43B9AB4(v15, v85);
      *v69 = v78;
      v69[1] = v35;
      sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
      sub_1A524CBE4();
      v67(v25, v19);
    }

    return;
  }

  sub_1A3C2F0BC(*(a4 + 56) + 32 * v30, &v90);
  sub_1A3D5FAFC(v92);
  if (!*(&v91 + 1))
  {
    goto LABEL_13;
  }

  v32 = swift_dynamicCast();
  v33 = *&v92[0];
  if (!v32)
  {
    v33 = 0;
  }

  v78 = v33;
  if (v32)
  {
    v34 = *(&v92[0] + 1);
  }

  else
  {
    v34 = 0;
  }

  v79 = v34;
  if (v28 > 0xE)
  {
    v35 = v79;
    goto LABEL_26;
  }

  v36 = v78;
LABEL_15:
  v87 = sub_1A524C674();
  v88 = v37;
  v38 = v82;
  v39 = v27;
  sub_1A3D602A8(v82, v27);
  sub_1A524E384();
  if (!*(a4 + 16) || (v40 = sub_1A3D5C0BC(v92), (v41 & 1) == 0))
  {
    sub_1A3D5FAFC(v92);
    v90 = 0u;
    v91 = 0u;
    goto LABEL_32;
  }

  sub_1A3C2F0BC(*(a4 + 56) + 32 * v40, &v90);
  sub_1A3D5FAFC(v92);
  if (!*(&v91 + 1))
  {
LABEL_32:
    sub_1A3C2C848(&v90, &qword_1EB126130, v26 + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    v44 = 0;
    v43 = 0;
    goto LABEL_33;
  }

  v42 = swift_dynamicCast();
  if (v42)
  {
    v43 = *&v92[0];
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = *(&v92[0] + 1);
  }

  else
  {
    v44 = 0;
  }

LABEL_33:
  v87 = sub_1A524C674();
  v88 = v51;
  sub_1A524E384();
  if (!*(a4 + 16) || (v52 = sub_1A3D5C0BC(v92), (v53 & 1) == 0))
  {
    sub_1A3D5FAFC(v92);
LABEL_44:
    v90 = 0u;
    v91 = 0u;
    goto LABEL_45;
  }

  sub_1A3C2F0BC(*(a4 + 56) + 32 * v52, &v90);
  sub_1A3D5FAFC(v92);
  if (*(&v91 + 1))
  {
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = *&v92[0];
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = *(&v92[0] + 1);
    }

    else
    {
      v56 = 0;
    }

    goto LABEL_46;
  }

LABEL_45:
  sub_1A3C2C848(&v90, &qword_1EB126130, v26 + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
  v55 = 0;
  v56 = 0;
LABEL_46:
  sub_1A3D602A8(v38, v39);
  sub_1A4814FC8(v38, v39, v43, v44, v55, v56, (v81 & 1) == 0, v92);
  v57 = sub_1A524D264();
  v58 = *sub_1A486DB9C();
  if (os_log_type_enabled(v58, v57))
  {
    v59 = v58;
    v60 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v60 = 136446210;
    v61 = swift_getKeyPath();
    v90 = v83;
    OneUpSharePlayOverridableAsset.subscript.getter(v61, &v87);

    sub_1A3C2EF94(v87, v88, &v89);
  }

  v62 = v92[1];
  *v15 = v92[0];
  *(v15 + 1) = v62;
  *(v15 + 2) = v92[2];
  v15[48] = v93;
  v63 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v63 - 8) + 56))(v15, 0, 1, v63);
  v64 = (v85 + *(v84 + 48));
  sub_1A43B9AB4(v15, v85);
  v65 = v79;
  *v64 = v36;
  v64[1] = v65;
  sub_1A43B9CB0(v92, &v90);
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  sub_1A524CBE4();
  sub_1A3DB556C(v38, v39);
  sub_1A435AE04(v92);
}

void sub_1A43B7ABC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A407620C();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43B7D94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1A3C56708(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1A5240DE4();
    v12 = sub_1A5240E64();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1A5240E64();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (!a3)
  {
    v16 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v14 = a3;
  a3 = sub_1A5240EA4();
  v16 = v15;

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_1A524C3E4();
LABEL_9:
  v11(v10, a3, v16, v17);

  sub_1A3DB556C(a3, v16);

  return sub_1A3C2C848(v10, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A3C56708);
}

void sub_1A43B7FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1A43BA81C(0, &qword_1EB139240, sub_1A43B9DEC);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = aBlock - v16;
  v18 = *(a2 + *(*a2 + 112));
  (*(v14 + 16))(aBlock - v16, a1, v13, v15);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v17, v13);
  aBlock[4] = sub_1A43BA068;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A43B81C8;
  aBlock[3] = &block_descriptor_39_0;
  v21 = _Block_copy(aBlock);

  [v18 requestLivePhotoForAsset:a3 targetSize:0 contentMode:a4 options:v21 resultHandler:{a5, a6}];
  _Block_release(v21);
}

double sub_1A43B81C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = sub_1A524C3E4();
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectRetain();
  v3(v5, v4);

  swift_unknownObjectRelease();

  return result;
}

void sub_1A43B826C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v17 = a2;
  sub_1A43BA81C(0, &qword_1EB139238, sub_1A43B9E74);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A532F580;
  v24 = sub_1A43B9F0C;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1A43B8500;
  v23 = &block_descriptor_27_3;
  v12 = _Block_copy(&aBlock);

  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v24 = sub_1A43B9F6C;
  v25 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1A4086B70;
  v23 = &block_descriptor_33_3;
  v15 = _Block_copy(&aBlock);

  [v17 requestDataForAssetResource:v18 options:v19 dataReceivedHandler:v12 completionHandler:v15];
  _Block_release(v15);
  _Block_release(v12);
}

double sub_1A43B8500(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_1A5240EA4();
  v7 = v6;

  v3(v5, v7);
  sub_1A3C59280(v5, v7);

  return result;
}

uint64_t *sub_1A43B8588(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  v4 = *(*v1 + 112);
  v6 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry(255, *(v3 + 80), *(v3 + 88), v5);
  v7 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v8 = sub_1A524CAB4();
  v9 = sub_1A3C3DFB4(v8, v7, v6, MEMORY[0x1E69E6168]);

  *(v1 + v4) = v9;
  v10 = *(*v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v10, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t sub_1A43B86DC(uint64_t a1)
{
  v3 = sub_1A52418E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1A43B8B34(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1A43B8B34((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v7, v3);
  *(v1 + 16) = v8;
  return result;
}

uint64_t sub_1A43B8848()
{
  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1A43B8914()
{
  sub_1A43B8848();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t OneUpSharePlaySessionHostJournal.deinit()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t OneUpSharePlaySessionHostJournal.__deallocating_deinit()
{
  OneUpSharePlaySessionHostJournal.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A43B8A78(uint64_t a1)
{
  sub_1A43B9BAC(&qword_1EB139258, type metadata accessor for CIImageRepresentationOption, &unk_1A5335EF0);
  sub_1A43B9BAC(&qword_1EB1392D8, type metadata accessor for CIImageRepresentationOption, &unk_1A5335DDC);

  return sub_1A524E7E4();
}

void *sub_1A43B8B34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C56708(0, &qword_1EB1391E0, MEMORY[0x1E696B228], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A52418E4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A52418E4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A43B8D30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  KeyPath = swift_getKeyPath();
  v18[1] = v1;
  v18[2] = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v18);

  if (v18[0] > 1)
  {
    if (v18[0] == 2)
    {
      return 35;
    }

    return 0;
  }

  if (v18[0] != 1)
  {
    return 0;
  }

  v4 = swift_getKeyPath();
  v16 = v1;
  v17 = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(v4, &v14);

  v5 = v14;
  v6 = swift_getKeyPath();
  v16 = v1;
  v17 = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(v6, &v14);

  v7 = v14;
  v8 = swift_getKeyPath();
  v16 = v1;
  v17 = v2;
  OneUpSharePlayOverridableAsset.subscript.getter(v8, &v14);

  v9 = 67;
  if (v7)
  {
    v9 = 9;
  }

  if (v5)
  {
    result = 17;
  }

  else
  {
    result = v9;
  }

  if ((v5 & 1) == 0 && (v7 & 1) == 0 && (v14 & 8) == 0)
  {
    v11 = swift_getKeyPath();
    v16 = v1;
    v17 = v2;
    OneUpSharePlayOverridableAsset.subscript.getter(v11, &v14);

    if (v14)
    {
      v12 = 7;
    }

    else
    {
      v12 = 3;
    }

    v13 = swift_getKeyPath();
    v16 = v1;
    v17 = v2;
    OneUpSharePlayOverridableAsset.subscript.getter(v13, &v14);

    if (v15)
    {
      return v12;
    }

    else if (v14 == 2)
    {
      return v12 | 8;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

char *sub_1A43B8EF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(v3 + 112);
  v13 = [objc_opt_self() defaultManager];
  v14 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *&v1[v12] = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_unknownObjectRetain();
  v16(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = *(v7 + 16);
  v18(&v2[*(*v2 + 96)], v11, AssociatedTypeWitness);
  type metadata accessor for OneUpSharePlaySessionHostJournal.Library(0, v5, v4, v19);
  v20 = v24;
  v18(v24, v11, AssociatedTypeWitness);
  v21 = swift_allocObject();
  sub_1A43B8588(v20);
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  *&v2[*(*v2 + 104)] = v21;
  return v2;
}

uint64_t sub_1A43B9184()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A43ADAC8(v3, v4, v5, v2);
}

unint64_t sub_1A43B9234()
{
  result = qword_1EB139188;
  if (!qword_1EB139188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139188);
  }

  return result;
}

unint64_t sub_1A43B928C()
{
  result = qword_1EB139190;
  if (!qword_1EB139190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139190);
  }

  return result;
}

unint64_t sub_1A43B92E4()
{
  result = qword_1EB139198;
  if (!qword_1EB139198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139198);
  }

  return result;
}

unint64_t sub_1A43B933C()
{
  result = qword_1EB1391A0;
  if (!qword_1EB1391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1391A0);
  }

  return result;
}

uint64_t sub_1A43B93A0(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1A43B9490(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

void sub_1A43B9564(uint64_t a1)
{
  sub_1A3C56708(319, &qword_1EB138B38, MEMORY[0x1E696B228], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A43B9644(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if ((v7 & 0x80000000) != 0)
    {
      v20 = *(v6 + 48);

      return v20((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void sub_1A43B97E4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((*(v7 + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((*(v7 + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v8 & 0x80000000) != 0)
      {
        v18 = *(v7 + 56);

        v18((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  if (((*(v7 + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(v7 + 64) + ((v9 + 24) & ~v9) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

void sub_1A43B99E0(uint64_t a1)
{
  if (!qword_1EB1391A8)
  {
    sub_1A3C56708(255, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
    sub_1A3C4EE18(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1391A8);
    }
  }
}

uint64_t sub_1A43B9AB4(uint64_t a1, uint64_t a2)
{
  sub_1A3C56708(0, &unk_1EB1391B0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43B9B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43B9BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A43B9BF4(uint64_t a1, NSObject *a2, unint64_t a3, uint64_t a4)
{
  sub_1A43BA81C(0, &unk_1EB1391E8, sub_1A43B99E0);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = v4 + ((*(*(v9 - 8) + 80) + 40) & ~*(*(v9 - 8) + 80));

  sub_1A43B6BA4(a1, a2, a3, a4, v10, v11, v12, v13);
}

uint64_t sub_1A43B9D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A43B9D6C()
{
  if (!qword_1EB1391F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1391F8);
    }
  }
}

void sub_1A43B9DEC(uint64_t a1)
{
  if (!qword_1EB139200)
  {
    sub_1A3C4B7E8(255, &qword_1EB139208, &qword_1EB139210, 0x1E69786D8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139200);
    }
  }
}

void sub_1A43B9E74(uint64_t a1)
{
  if (!qword_1EB139218)
  {
    sub_1A3C56708(255, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139218);
    }
  }
}

uint64_t sub_1A43B9F0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A5240EC4();
  return swift_endAccess();
}

uint64_t sub_1A43B9F6C(void *a1)
{
  sub_1A43BA81C(0, &qword_1EB139238, sub_1A43B9E74);
  v4 = *(v1 + ((*(*(v3 - 8) + 64) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_beginAccess();
  sub_1A3D602A8(*(v4 + 16), *(v4 + 24));
  v5 = a1;
  return sub_1A524CBE4();
}

void sub_1A43BA068(uint64_t a1)
{
  sub_1A43BA81C(0, &qword_1EB139240, sub_1A43B9DEC);
  if (!a1 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1A524CBE4();
    return;
  }

  v3 = v2;
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  v5 = [v4 assetResourcesForLivePhoto_];
  sub_1A3C52C70(0, &qword_1EB139210, 0x1E69786D8);
  v6 = sub_1A524CA34();

  if (v6 >> 62)
  {
    v7 = sub_1A524E2B4();
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 < 1)
    {
      goto LABEL_12;
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v6);
    if (v7 != 1)
    {
      MEMORY[0x1A59097F0](1, v6);
    }

    goto LABEL_12;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v6 + 32);
  if (v7 == 1)
  {
LABEL_12:

    sub_1A524CBE4();
    swift_unknownObjectRelease();
    return;
  }

  if (v8 != 1)
  {
    v10 = *(v6 + 40);
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
}

void sub_1A43BA2A4(uint64_t a1)
{
  if (!qword_1EB139248)
  {
    sub_1A3C4B7E8(255, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8);
    sub_1A3C4EE18(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139248);
    }
  }
}

unint64_t sub_1A43BA350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A43BA6A8(0);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A43BA748(v4, &v11, sub_1A43BA7B0);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A43BA494(uint64_t a1)
{
  if (!qword_1EB139260)
  {
    v1 = MEMORY[0x1E69E6720];
    sub_1A3C4EE18(255, &qword_1EB126038, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1A3C4EE18(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139260);
    }
  }
}

uint64_t objectdestroy_35Tm(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  sub_1A43BA81C(0, a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

void sub_1A43BA5D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A43BA81C(0, &qword_1EB139270, sub_1A43BA494);
  sub_1A3DB506C(a1, a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43BA6A8(uint64_t a1)
{
  if (!qword_1EB139278)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    sub_1A43B9BAC(&qword_1EB139258, type metadata accessor for CIImageRepresentationOption, &unk_1A5335EF0);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139278);
    }
  }
}

uint64_t sub_1A43BA748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A43BA7B0(uint64_t a1)
{
  if (!qword_1EB139280)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB139280);
    }
  }
}

void sub_1A43BA81C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CBF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A43BA880(void *a1, uint64_t a2)
{
  sub_1A43BA81C(0, &qword_1EB139288, sub_1A43BA2A4);
  if (!a2)
  {
    goto LABEL_8;
  }

  *&v15 = sub_1A524C674();
  *(&v15 + 1) = v4;
  sub_1A524E384();
  if (!*(a2 + 16) || (v5 = sub_1A3D5C0BC(&v12), (v6 & 1) == 0))
  {
    sub_1A3D5FAFC(&v12);
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_1A3C2F0BC(*(a2 + 56) + 32 * v5, &v15);
  sub_1A3D5FAFC(&v12);
  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_1A3C2C848(&v15, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C4EE18);
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v7 = swift_dynamicCast();
  v8 = v12;
  v9 = v13;
  if (!v7)
  {
    v8 = 0;
    v9 = 0;
  }

LABEL_10:
  v12 = a1;
  v13 = v8;
  v14 = v9;
  v10 = a1;
  return sub_1A524CBE4();
}

uint64_t sub_1A43BAA30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56708(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A43BAC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  *(v7 + v14) = [objc_opt_self() systemWhiteColor];
  sub_1A43BAD80();
  sub_1A4112CF0(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_1A43BAD80()
{
  result = qword_1EB126570;
  if (!qword_1EB126570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126570);
  }

  return result;
}

void *sub_1A43BAE80()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A43BAECC(void *a1)
{
  v2 = v1;
  sub_1A42DC564(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  swift_beginAccess();
  v11 = *(v2 + v10);
  *(v2 + v10) = a1;
  v12 = a1;

  sub_1A524DE54();
  v13 = sub_1A524DE34();
  if (!(*(*(v13 - 8) + 48))(v9, 1, v13))
  {
    v14 = *(v2 + v10);
    sub_1A524DD74();
  }

  sub_1A42DC5BC(v9, v6);
  sub_1A524DE64();

  return sub_1A4113CCC(v9);
}

uint64_t (*sub_1A43BB034(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  sub_1A42DC564(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12PhotosUICore27PhotosPagingAccessoryButton_foregroundColor;
  v5[5] = v8;
  v5[6] = v9;
  swift_beginAccess();
  return sub_1A43BB11C;
}

void sub_1A43BB11C(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[5];
  if (a2)
  {
    v5 = v3[4];
  }

  else
  {
    sub_1A524DE54();
    v6 = sub_1A524DE34();
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {
      v7 = *(v3[3] + v3[6]);
      sub_1A524DD74();
    }

    v5 = v3[4];
    v4 = v3[5];
    sub_1A42DC5BC(v4, v5);
    sub_1A524DE64();
    sub_1A4113CCC(v4);
  }

  free(v4);
  free(v5);

  free(v3);
}

id sub_1A43BB2E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPagingAccessoryButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A43BB368(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for LemonadePeopleMergingContentView(0);
  sub_1A40C61BC(0);
  v6 = a1;
  v5 = a2;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v5;
  sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadePeopleMergingContentView(uint64_t a1)
{
  result = qword_1EB1BD180;
  if (!qword_1EB1BD180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43BB4C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A43BCA6C(0, &qword_1EB125C30, sub_1A3DEF040, type metadata accessor for PhotoKitItem);
  v26 = 2;
  v4 = v3;
  sub_1A3C6C180(&v24);
  v22 = v24;
  v23 = v25;
  v5 = sub_1A42011B0();
  sub_1A3C6C18C(&v20);
  v18 = v20;
  v19 = v21;
  v6 = sub_1A3C5A374();
  v7 = sub_1A3C30368();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C5A374();
  v10 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v22, 0, v5, 0, 1, &v18, v6 & 1, &v26, v17, v7, v8 & 1, v9 & 1, v10 & 1, 0);
  v12 = sub_1A3DEF040(0, v11);
  v14 = sub_1A3F6298C(v12, v13);
  PhotoKitItem.__allocating_init(value:options:metadata:)(v4, v17, v14);
  v17[0] = v15;
  sub_1A40C61BC(0);
  swift_allocObject();
  result = sub_1A5242994();
  *a1 = result;
  return result;
}

void sub_1A43BB648(uint64_t a1)
{
  if (!qword_1EB1392F0)
  {
    sub_1A43BCA6C(255, &qword_1EB1392F8, sub_1A43BB6DC, MEMORY[0x1E6981F40]);
    sub_1A43BB904();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1392F0);
    }
  }
}

void sub_1A43BB6DC(uint64_t a1)
{
  if (!qword_1EB139300)
  {
    sub_1A43BB750(255);
    sub_1A43BB8E4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB139300);
    }
  }
}

void sub_1A43BB750(uint64_t a1)
{
  if (!qword_1EB139308)
  {
    sub_1A40C61BC(255);
    type metadata accessor for PersonFaceView(255);
    sub_1A43BB89C(&qword_1EB1317F0, sub_1A40C61BC, MEMORY[0x1E69C2010]);
    sub_1A43BB89C(&qword_1EB1317F8, sub_1A40C61BC, MEMORY[0x1E69C2038]);
    sub_1A43BB89C(&qword_1EB131800, sub_1A40C61BC, MEMORY[0x1E69C2018]);
    sub_1A43BB89C(&qword_1EB125BC8, type metadata accessor for PersonFaceView, &unk_1A532F3C0);
    v1 = sub_1A52424F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139308);
    }
  }
}

uint64_t sub_1A43BB89C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A43BB904()
{
  result = qword_1EB139318;
  if (!qword_1EB139318)
  {
    sub_1A43BCA6C(255, &qword_1EB1392F8, sub_1A43BB6DC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139318);
  }

  return result;
}

uint64_t sub_1A43BB98C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  sub_1A43BB8E4(0);
  v79 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = (v65 - v6);
  v7 = type metadata accessor for LemonadePeopleMergingContentView(0);
  v8 = *(v7 - 8);
  v77 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = v9;
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43BCA6C(0, &qword_1EB124D70, MEMORY[0x1E69C2540], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v65 - v12;
  sub_1A43BB750(0);
  v82 = v14;
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v81 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v87 = v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v78 = v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v85 = v65 - v21;
  sub_1A43BCA6C(0, &qword_1EB139348, sub_1A40C61BC, MEMORY[0x1E697DA80]);
  v76 = v22;
  v67 = a1;
  sub_1A5247C84();
  v65[1] = v88;
  v74 = *MEMORY[0x1E69C2538];
  v23 = v74;
  v24 = sub_1A5243624();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v73 = v25 + 104;
  v75 = v26;
  v26(v13, v23, v24);
  v72 = *(v25 + 56);
  v65[0] = v13;
  v72(v13, 0, 1, v24);
  v71 = type metadata accessor for LemonadePeopleMergingContentView;
  v66 = v10;
  sub_1A43BCD94(a1, v10, type metadata accessor for LemonadePeopleMergingContentView);
  v27 = *(v8 + 80);
  v28 = (v27 + 16) & ~v27;
  v68 = v28;
  v69 = v27;
  v29 = swift_allocObject();
  sub_1A43BCAD0(v10, v29 + v28);
  sub_1A40C61BC(0);
  v65[7] = v30;
  v65[6] = type metadata accessor for PersonFaceView(0);
  v65[5] = sub_1A43BB89C(&qword_1EB1317F0, sub_1A40C61BC, MEMORY[0x1E69C2010]);
  v65[4] = sub_1A43BB89C(&qword_1EB1317F8, sub_1A40C61BC, MEMORY[0x1E69C2038]);
  v65[3] = sub_1A43BB89C(&qword_1EB131800, sub_1A40C61BC, MEMORY[0x1E69C2018]);
  v65[2] = sub_1A43BB89C(&qword_1EB125BC8, type metadata accessor for PersonFaceView, &unk_1A532F3C0);
  sub_1A5242504();
  v31 = sub_1A524B544();
  v32 = sub_1A524A264();
  KeyPath = swift_getKeyPath();
  sub_1A428F4F4(0);
  v35 = v86;
  v36 = (v86 + *(v34 + 36));
  sub_1A43BCA6C(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v38 = *(v37 + 28);
  v39 = *MEMORY[0x1E69816C0];
  v40 = sub_1A524B5B4();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  *v35 = v31;
  v35[1] = KeyPath;
  v35[2] = v32;
  LOBYTE(v32) = sub_1A524A054();
  sub_1A5247BC4();
  v41 = v35 + *(v79 + 44);
  *v41 = v32;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v46 = v67;
  sub_1A5247C84();
  v47 = v65[0];
  v75(v65[0], v74, v24);
  v72(v47, 0, 1, v24);
  v48 = v66;
  sub_1A43BCD94(v46, v66, v71);
  v49 = v68;
  v50 = swift_allocObject();
  sub_1A43BCAD0(v48, v50 + v49);
  v51 = v78;
  sub_1A5242504();
  v52 = v80;
  v53 = *(v80 + 16);
  v54 = v87;
  v55 = v82;
  v53(v87, v85, v82);
  v56 = v35;
  v57 = v83;
  sub_1A43BCD94(v56, v83, sub_1A43BB8E4);
  v58 = v81;
  v59 = v55;
  v53(v81, v51, v55);
  v60 = v84;
  v53(v84, v54, v59);
  sub_1A43BB6DC(0);
  v62 = v61;
  sub_1A43BCD94(v57, &v60[*(v61 + 48)], sub_1A43BB8E4);
  v53(&v60[*(v62 + 64)], v58, v59);
  v63 = *(v52 + 8);
  v63(v51, v59);
  sub_1A43BCDFC(v86, sub_1A43BB8E4);
  v63(v85, v59);
  v63(v58, v59);
  sub_1A43BCDFC(v57, sub_1A43BB8E4);
  return (v63)(v87, v59);
}

void sub_1A43BC294(uint64_t a1)
{
  if (!qword_1EB139320)
  {
    sub_1A43BCA6C(255, &qword_1EB1392F8, sub_1A43BB6DC, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139320);
    }
  }
}

void sub_1A43BC34C(uint64_t a1)
{
  if (!qword_1EB139338)
  {
    sub_1A43BB648(255);
    sub_1A43BB89C(&qword_1EB139328, sub_1A43BB648, MEMORY[0x1E69817F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139338);
    }
  }
}

void sub_1A43BC400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A43BC478@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A5243624();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  (*(v9 + 104))(v7, *MEMORY[0x1E69C2538], v5);
  v10 = v8;
  v11 = sub_1A3C5A374();
  return sub_1A4308C80(v7, 0, v11 & 1, a2);
}

uint64_t sub_1A43BC568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A5243624();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  (*(v9 + 104))(v7, *MEMORY[0x1E69C2538], v5);
  v10 = v8;
  v11 = sub_1A3C5A374();
  return sub_1A4308C80(v7, 0, v11 & 1, a2);
}

void sub_1A43BC658(uint64_t a1@<X8>)
{
  sub_1A43BB648(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A43BC294(0);
  sub_1A43BB98C(v1, &v5[*(v6 + 44)]);
  sub_1A43BB89C(&qword_1EB139328, sub_1A43BB648, MEMORY[0x1E69817F8]);
  sub_1A524A674();
  sub_1A43BCDFC(v5, sub_1A43BB648);
  v7 = sub_1A524A0C4();
  sub_1A5247BC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1A43BC32C(0);
  v17 = a1 + *(v16 + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  v18 = sub_1A524A054();
  sub_1A5247BC4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1A43BC400(0, &qword_1EB139340, sub_1A43BC32C);
  v28 = a1 + *(v27 + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
}

void sub_1A43BC83C(uint64_t a1, uint64_t a2)
{
  sub_1A3DEF040(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A43BCA6C(319, &qword_1EB139348, sub_1A40C61BC, MEMORY[0x1E697DA80]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A43BC8F0()
{
  result = qword_1EB139350;
  if (!qword_1EB139350)
  {
    sub_1A43BC400(255, &qword_1EB139340, sub_1A43BC32C);
    sub_1A43BC98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139350);
  }

  return result;
}

unint64_t sub_1A43BC98C()
{
  result = qword_1EB139358;
  if (!qword_1EB139358)
  {
    sub_1A43BC32C(255);
    sub_1A43BB648(255);
    sub_1A43BB89C(&qword_1EB139328, sub_1A43BB648, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139358);
  }

  return result;
}

void sub_1A43BCA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43BCAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleMergingContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = (type metadata accessor for LemonadePeopleMergingContentView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[8];
  sub_1A43BCA6C(0, &qword_1EB139360, sub_1A40C61BC, MEMORY[0x1E6981E90]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v3, v4);
  sub_1A43BCA6C(0, &qword_1EB139368, sub_1A40C61BC, MEMORY[0x1E6981E98]);

  v6(v2 + v1[9], v5);

  return swift_deallocObject();
}

uint64_t sub_1A43BCD10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleMergingContentView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A43BCD94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43BCDFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LemonadeICloudLinkGridConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A43BCEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A43BCF70()
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable(0);
  swift_unknownObjectRetain();
  sub_1A40740A4(v3);
  v4 = type metadata accessor for LemonadeDetailsContext(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  v6 = sub_1A40730A4;
  if (v5 == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = &v3[*(v4 + 20)];
    v7 = *v9;
    v8 = v9[1];
    sub_1A3C66EE8(*v9, v8);
    v6 = type metadata accessor for LemonadeDetailsContext;
  }

  sub_1A43BD9E4(v3, v6);
  v10 = sub_1A43BD118(&v13, v7, v8);
  sub_1A3C33378(v7, v8);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable(uint64_t a1)
{
  result = qword_1EB15C1B0;
  if (!qword_1EB15C1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A43BD118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A43BD44C();
  if (a2)
  {
    v10[4] = a2;
    v10[5] = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1A3D8EF18;
    v10[3] = &block_descriptor_168;
    v6 = _Block_copy(v10);
  }

  else
  {
    v6 = 0;
  }

  [v5 setCustomAssetSelectionHandler_];
  _Block_release(v6);
  v7 = type metadata accessor for CMMViewControllerContainerViewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_workflowCoordinator] = 0;
  *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmViewController] = 0;
  *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmContext] = v5;
  v11.receiver = v8;
  v11.super_class = v7;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1A43BD234@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = *(type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A43BCEE8(0, &unk_1EB139370, sub_1A40730A4, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A43BD2D0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A43BD308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43BDC28(&unk_1EB139420, &unk_1A53360D0);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A43BD388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43BDC28(&unk_1EB139420, &unk_1A53360D0);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A43BD408(uint64_t a1)
{
  sub_1A43BDC28(&unk_1EB139420, &unk_1A53360D0);
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A43BD44C()
{
  v1 = [v0 shareType];
  if (v1)
  {
    if (v1 != 1)
    {
      type metadata accessor for PXDisplayMomentShareType();
      result = sub_1A524EB44();
      __break(1u);
      return result;
    }

    [v0 acceptWithCompletionHandler_];
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  v3 = [v0 contextForActivityType_];

  return v3;
}

id sub_1A43BD594(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v3 = sub_1A43BD118(&v6, a2, a3);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  return v4;
}

void sub_1A43BD668()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for CMMViewControllerContainerViewController();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v1 = [objc_allocWithZone(PXCMMWorkflowCoordinator) init];
  [v1 setDelegate_];
  v2 = [v1 workflowViewControllerWithContext_];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 px:1 setOneUpPresentationStyle:?];
  v4 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_workflowCoordinator];
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_workflowCoordinator] = v1;
  v5 = v1;

  v6 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmViewController];
  *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_1278E7A798DEEBABE566D4B50AC0C9FC40CMMViewControllerContainerViewController_cmmViewController] = v3;
  v7 = v3;

  [v0 addChildViewController_];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  [v9 addSubview_];

  v12 = [v7 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setBounds_];
  v24 = [v7 view];
  if (v24)
  {
    v25 = v24;
    [v24 setAutoresizingMask_];

    [v7 didMoveToParentViewController_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1A43BD954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CMMViewControllerContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A43BD9E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for PXDisplayMomentShareType()
{
  if (!qword_1EB139418)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB139418);
    }
  }
}

unint64_t sub_1A43BDA98()
{
  result = qword_1EB139388;
  if (!qword_1EB139388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139388);
  }

  return result;
}

void sub_1A43BDB58(uint64_t a1)
{
  sub_1A43BCEE8(319, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A43BDC28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43BDC6C(uint64_t a1, uint64_t a2)
{
  sub_1A40730A4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A43BDCD4()
{
  if (*(v0 + 8) != 1)
  {
    return 0xD00000000000001CLL;
  }

  v1 = *v0;
  v2 = 0x6E756F4620746F4ELL;
  v3 = 0x2064696C61766E49;
  if (*v0 != 2)
  {
    v3 = 0xD00000000000003FLL;
  }

  if (!v1)
  {
    v2 = 0xD000000000000034;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A43BDD90(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x6E756F4620746F4ELL;
    v3 = 0x2064696C61766E49;
    if (a1 != 2)
    {
      v3 = 0xD00000000000002DLL;
    }

    if (!a1)
    {
      v2 = 0xD000000000000078;
    }

    if (a1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v5 = sub_1A524C634();
    v6 = PXLocalizedSharedCollectionsString(v5);

    v7 = sub_1A524C674();
    return v7;
  }
}

unint64_t sub_1A43BDEA0()
{
  result = qword_1EB139430;
  if (!qword_1EB139430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139430);
  }

  return result;
}

void *sub_1A43BDF1C(void *a1)
{
  v2 = swift_allocObject();
  v2[3] = 0x7465737341;
  v2[4] = 0xE500000000000000;
  [a1 fetchPropertySetsIfNeeded];
  v2[2] = a1;
  return v2;
}

id sub_1A43BDF84()
{
  sub_1A3C7D12C(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v98 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v98 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v98 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v98 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v98 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v98[2] = v98 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v98 - v23;
  v25 = *(v0 + 16);
  [v25 playbackVariation];
  v26 = PHAssetPlaybackVariationDebugDescription();
  v98[9] = v6;
  v98[8] = v3;
  v98[6] = v9;
  v98[5] = v18;
  v98[3] = v24;
  if (v26)
  {
    v27 = v26;
    *&v102 = sub_1A524C674();
    *(&v102 + 1) = v28;
  }

  else
  {
    *&v102 = 6369134;
    *(&v102 + 1) = 0xE300000000000000;
  }

  v29 = [v25 photosInfoPanelExtendedProperties];
  sub_1A3C7D12C(0, &qword_1EB139438, type metadata accessor for DebugSection, MEMORY[0x1E69E6F90]);
  v30 = *(type metadata accessor for DebugSection(0) - 8);
  v31 = *(v30 + 72);
  v98[11] = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v100 = swift_allocObject();
  v99 = xmmword_1A52FC9F0;
  *(v100 + 16) = xmmword_1A52FC9F0;
  sub_1A43BF70C(0);
  v33 = v32;
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v35 = *(v34 - 8);
  v106 = *(v35 + 72);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v98[13] = *(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A5336350;
  v98[12] = v37;
  v38 = v37 + v36;
  v39 = [v25 cloudIdentifier];
  v98[14] = v36;
  v98[7] = v12;
  v98[4] = v15;
  if (v39)
  {
    v40 = v39;
    v41 = sub_1A524C674();
    v43 = v42;

    v44 = MEMORY[0x1E69E6158];
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v44 = 0;
    v109 = 0;
  }

  *&v108 = v41;
  *(&v108 + 1) = v43;
  v110 = v44;
  v45 = MEMORY[0x1E69E7CA0];
  v46 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000010, 0x80000001A53D4710, &v108, 0, 0, 0, v46 & 1, v45 + 8, v38);
  v47 = [v25 localIdentifier];
  v48 = sub_1A524C674();
  v50 = v49;

  v110 = MEMORY[0x1E69E6158];
  *&v108 = v48;
  *(&v108 + 1) = v50;
  v51 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000010, 0x80000001A53D4730, &v108, 0, 0, 0, v51 & 1, v45 + 8, v38 + v106);
  v52 = [v25 uuid];
  v105 = v25;
  if (v52)
  {
    v53 = v52;
    v54 = sub_1A524C674();
    v56 = v55;

    v57 = MEMORY[0x1E69E6158];
  }

  else
  {
    v54 = 0;
    v56 = 0;
    v57 = 0;
    v109 = 0;
  }

  *&v108 = v54;
  *(&v108 + 1) = v56;
  v58 = v106;
  v59 = 2 * v106;
  v110 = v57;
  v60 = MEMORY[0x1E69E7CA0];
  v61 = sub_1A3C5A374();
  sub_1A492BBDC(1145656661, 0xE400000000000000, &v108, 0, 0, 0, v61 & 1, v60 + 8, v38 + v59);
  v62 = [v105 title];
  v98[10] = v59;
  if (v62)
  {
    v63 = v62;
    v64 = sub_1A524C674();
    v66 = v65;

    v110 = MEMORY[0x1E69E6158];
    if (v66)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v110 = MEMORY[0x1E69E6158];
  }

  v66 = 0xE100000000000000;
  v64 = 45;
LABEL_15:
  *&v108 = v64;
  *(&v108 + 1) = v66;
  v67 = MEMORY[0x1E69E7CA0];
  v68 = sub_1A3C5A374();
  sub_1A492BBDC(0x656C746954, 0xE500000000000000, &v108, 0, 0, 0, v68 & 1, v67 + 8, v38 + 3 * v58);
  v69 = [v105 filename];
  v103 = v29;
  v104 = v38;
  v101 = v31;
  v98[15] = v33;
  if (v69)
  {
    v70 = v69;
    v71 = sub_1A524C674();
    v73 = v72;

    v110 = MEMORY[0x1E69E6158];
    if (!v73)
    {
      v73 = 0xE100000000000000;
      v71 = 45;
    }

    v74 = MEMORY[0x1E69E6158];
  }

  else
  {
    v74 = MEMORY[0x1E69E6158];
    v110 = MEMORY[0x1E69E6158];
    v73 = 0xE100000000000000;
    v71 = 45;
  }

  *&v108 = v71;
  *(&v108 + 1) = v73;
  v75 = sub_1A3C5A374();
  v76 = v104;
  sub_1A492BBDC(0x6D614E20656C6946, 0xE900000000000065, &v108, 0, 0, 0, v75 & 1, v45 + 8, v104 + 4 * v58);
  v77 = v105;
  v107 = [v105 pixelWidth];
  *&v108 = sub_1A524EA44();
  *(&v108 + 1) = v78;
  MEMORY[0x1A5907B60](546816800, 0xA400000000000000);
  v107 = [v77 pixelHeight];
  v79 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v79);

  v110 = v74;
  v80 = sub_1A3C5A374();
  sub_1A492BBDC(0x6953206C65786950, 0xEA0000000000657ALL, &v108, 0, 0, 0, v80 & 1, v45 + 8, v76 + 5 * v58);
  LODWORD(v108) = [v77 exifOrientation];
  v81 = sub_1A524EA44();
  v110 = v74;
  *&v108 = v81;
  *(&v108 + 1) = v82;
  v83 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000010, 0x80000001A53D4750, &v108, 0, 0, 0, v83 & 1, v45 + 8, v76 + 6 * v58);
  v98[1] = v76 - v58;
  *&v108 = [v77 imageOrientation];
  v84 = sub_1A524EA44();
  v110 = v74;
  *&v108 = v84;
  *(&v108 + 1) = v85;
  v86 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000011, 0x80000001A53D4770, &v108, 0, 0, 0, v86 & 1, v45 + 8, v76 - v58 + 8 * v58);
  [v77 mediaType];
  result = PHAssetMediaTypeDebugDescription();
  if (result)
  {
    v88 = result;
    v89 = sub_1A524C674();
    v91 = v90;

    v110 = v74;
    *&v108 = v89;
    *(&v108 + 1) = v91;
    v92 = sub_1A3C5A374();
    sub_1A492BBDC(0x795420616964654DLL, 0xEA00000000006570, &v108, 0, 0, 0, v92 & 1, v45 + 8, v76 + 8 * v58);
    [v77 mediaSubtypes];
    result = PHAssetMediaSubtypesDebugDescription();
    if (result)
    {
      v93 = result;
      v94 = sub_1A524C674();
      v96 = v95;

      v110 = v74;
      *&v108 = v94;
      *(&v108 + 1) = v96;
      v97 = sub_1A3C5A374();
      sub_1A492BBDC(0x755320616964654DLL, 0xEE00736570797462, &v108, 0, 0, 0, v97 & 1, v45 + 8, v76 + 9 * v58);
      v108 = v102;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  return result;
}

void sub_1A43BF70C(uint64_t a1)
{
  if (!qword_1EB139440)
  {
    sub_1A43C2848(255, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139440);
    }
  }
}

uint64_t sub_1A43BF78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void *sub_1A43BF800(uint64_t a1)
{
  result = swift_allocObject();
  result[4] = 0xEF73656372756F73;
  result[2] = a1;
  result[3] = 0x6552207465737341;
  return result;
}

uint64_t sub_1A43BF858(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 39) = -18;
  *(result + 16) = a1;
  strcpy((result + 24), "Asset Curation");
  return result;
}

void sub_1A43BF8B0(void *a1)
{
  v2 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1A43C2848(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F9790;
  v5 = *(v1 + 16);
  *(v4 + 32) = v5;
  v6 = v5;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v9 = sub_1A524CA14();

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v7;
  aBlock[4] = sub_1A43C1E70;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_169;
  v11 = _Block_copy(aBlock);

  v12 = v7;

  [v8 px:v9 generateResourceFilesForAssets:v11 completionHandler:?];
  _Block_release(v11);

  sub_1A524D3D4();
  swift_beginAccess();
  v13 = *(v3 + 16);
  if (v13 && *(v13 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void *sub_1A43BFC78()
{
  sub_1A3C7D12C(0, &qword_1EB139458, type metadata accessor for DebugSection, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v25 = type metadata accessor for DebugSection(0);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v22 = &v21 - v7;
  result = [*(v0 + 16) pl_managedAsset];
  if (result)
  {
    v9 = result;
    v10 = [result resourcesSortedByQualityWithOptions_];

    sub_1A43C1EEC();
    v11 = sub_1A524CA34();

    if (v11 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      v13 = 0;
      v14 = (v23 + 48);
      v15 = MEMORY[0x1E69E7CC0];
      v21 = i;
      while ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1A59097F0](v13, v11);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        v26 = v16;
        sub_1A43BFFEC(&v26, v3);
        swift_unknownObjectRelease();
        if ((*v14)(v3, 1, v25) == 1)
        {
          sub_1A3C42CC0(v3, &qword_1EB139458, type metadata accessor for DebugSection);
        }

        else
        {
          v18 = v22;
          sub_1A43C1F50(v3, v22);
          sub_1A43C1F50(v18, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1A43C1FB4(0, v15[2] + 1, 1, v15);
          }

          v20 = v15[2];
          v19 = v15[3];
          if (v20 >= v19 >> 1)
          {
            v15 = sub_1A43C1FB4((v19 > 1), v20 + 1, 1, v15);
          }

          v15[2] = v20 + 1;
          sub_1A43C1F50(v24, v15 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20);
          i = v21;
        }

        ++v13;
        if (v17 == i)
        {
          goto LABEL_22;
        }
      }

      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v16 = *(v11 + 8 * v13 + 32);
      swift_unknownObjectRetain();
      v17 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A43BFFEC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50[-v9];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v50[-v13];
  v15 = *a1;
  result = [v15 uniformTypeIdentifier];
  if (result)
  {
    v17 = result;
    v18 = [result identifier];

    if (!v18)
    {
      sub_1A524C674();
      v18 = sub_1A524C634();
    }

    v19 = [objc_opt_self() typeWithIdentifier_];

    if (v19)
    {
      v62 = a2;
      sub_1A5246C44();

      v58 = *(v5 + 32);
      v59 = v5 + 32;
      v58(v14, v10, v4);
      sub_1A5246CD4();
      v57 = sub_1A5246CF4();
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_1A5246CC4();
      v56 = sub_1A5246CF4();
      v60 = v20;
      v61 = v5 + 8;
      v20(v7, v4);
      *&v63 = [v15 orientedWidth];
      *&v65 = sub_1A524EA44();
      *(&v65 + 1) = v21;
      MEMORY[0x1A5907B60](546816800, 0xA400000000000000);
      *&v63 = [v15 orientedHeight];
      v22 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v22);

      v54 = *(&v65 + 1);
      v55 = v65;
      sub_1A3C7D12C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A52F8E10;
      if ([v15 orientedHeight] < 1)
      {
        *(v23 + 32) = 0x3FF0000000000000;
        v25 = MEMORY[0x1E69E6438];
        v26 = MEMORY[0x1E69E63B0];
      }

      else
      {
        v24 = [v15 orientedWidth];
        *(v23 + 32) = v24 / [v15 orientedHeight];
        v25 = MEMORY[0x1E69E64A8];
        v26 = MEMORY[0x1E69E6448];
      }

      *(v23 + 56) = v26;
      *(v23 + 64) = v25;
      v29 = sub_1A524C6C4();
      v52 = v30;
      v53 = v29;
      v31 = [v15 localAvailability];
      v33 = v31 != -1 && v31 != -32768;
      v51 = v33;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v36 = sub_1A524C634();
        v37 = [v35 valueForKey_];

        if (v37)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        v65 = v63;
        v66 = v64;
        if (*(&v64 + 1))
        {
          sub_1A3C52C70(0, &qword_1EB139550, 0x1E695DFF8);
          if (swift_dynamicCast())
          {
            v38 = v63;
          }

          else
          {
            v38 = 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      sub_1A43C2468(&v65, &qword_1EB126130, MEMORY[0x1E69E6720]);
      v38 = 0;
LABEL_27:
      (*(v5 + 16))(v7, v14, v4);
      v39 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v40 = v39 + v6;
      v41 = (v39 + v6 + 9) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v15;
      v58((v42 + v39), v7, v4);
      v43 = (v42 + v40);
      *v43 = v57 & 1;
      v43[1] = v56 & 1;
      v44 = (v42 + v41);
      v45 = v54;
      *v44 = v55;
      v44[1] = v45;
      v46 = v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8);
      v47 = v52;
      *v46 = v53;
      *(v46 + 8) = v47;
      *(v46 + 16) = v51;
      swift_unknownObjectRetain();
      v48 = v62;
      sub_1A492BB6C(0, 0xE000000000000000, 0, sub_1A43C2750, v42, v62);

      v60(v14, v4);
      v49 = type metadata accessor for DebugSection(0);
      return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    }

    v27 = type metadata accessor for DebugSection(0);
    v28 = *(*(v27 - 8) + 56);

    return v28(a2, 1, 1, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A43C067C(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, int a5, int a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v82 = a7;
  v83 = a8;
  v84 = a6;
  v90 = a5;
  v86 = a2;
  v12 = MEMORY[0x1E69E7CA0];
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v82 - v24;
  v26 = 0xE000000000000000;
  v92 = 0;
  v93 = 0xE000000000000000;
  v27 = a3;
  [a3 resourceType];
  v28 = PLResourceTypeName();
  v85 = v21;
  if (v28)
  {
    v29 = v28;
    v30 = sub_1A524C674();
    v26 = v31;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x1A5907B60](v30, v26);

  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  v32 = sub_1A5246BF4();
  MEMORY[0x1A5907B60](v32);

  v33 = MEMORY[0x1E69E6158];
  v95 = MEMORY[0x1E69E6158];
  v34 = sub_1A3C5A374();
  sub_1A492BBDC(0x656372756F736552, 0xED00006570795420, &v92, 0, 0, 0, v34 & 1, v12 + 8, v25);
  a1(v25);
  sub_1A43C2468(v25, &unk_1EB139448, type metadata accessor for DebugRow);
  v35 = [objc_msgSend(v27 dataStore)];
  swift_unknownObjectRelease();
  v36 = sub_1A524C674();
  v38 = v37;

  v95 = v33;
  v92 = v36;
  v93 = v38;
  v39 = sub_1A3C5A374();
  v40 = v85;
  sub_1A492BBDC(0x6F74532061746144, 0xEA00000000006572, &v92, 0, 0, 0, v39 & 1, v12 + 8, v85);
  a1(v40);
  sub_1A43C2468(v40, &unk_1EB139448, type metadata accessor for DebugRow);
  v41 = v40;
  v91 = [v27 dataStoreSubtype];
  v92 = sub_1A524EA44();
  v93 = v42;
  MEMORY[0x1A5907B60](32, 0xE100000000000000);
  v43 = [objc_msgSend(v27 dataStore)];
  swift_unknownObjectRelease();
  v44 = sub_1A524C674();
  v46 = v45;

  v47 = v44;
  v48 = MEMORY[0x1E69E7CA0];
  MEMORY[0x1A5907B60](v47, v46);

  v95 = MEMORY[0x1E69E6158];
  v49 = sub_1A3C5A374();
  sub_1A492BBDC(0xD000000000000012, 0x80000001A53D4930, &v92, 0, 0, 0, v49 & 1, v48 + 8, v41);
  a1(v41);
  sub_1A43C2468(v41, &unk_1EB139448, type metadata accessor for DebugRow);
  [v27 localAvailability];
  v50 = PLResourceLocalAvailabilityName();
  if (v50)
  {
    v51 = v50;
    v52 = sub_1A524C674();
    v54 = v53;

    v55 = MEMORY[0x1E69E6158];
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v55 = 0;
    v94 = 0;
  }

  v92 = v52;
  v93 = v54;
  v95 = v55;
  v56 = sub_1A3C5A374();
  v57 = v87;
  sub_1A492BBDC(0xD000000000000012, 0x80000001A53D4950, &v92, 0, 0, 0, v56 & 1, v48 + 8, v87);
  a1(v57);
  sub_1A43C2468(v57, &unk_1EB139448, type metadata accessor for DebugRow);
  [v27 localAvailabilityTarget];
  v58 = PLResourceLocalAvailabilityTargetName();
  v59 = MEMORY[0x1E69E6158];
  if (v58)
  {
    v60 = v58;
    v61 = sub_1A524C674();
    v63 = v62;

    v64 = MEMORY[0x1E69E6158];
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v64 = 0;
    v94 = 0;
  }

  v92 = v61;
  v93 = v63;
  v95 = v64;
  v65 = sub_1A3C5A374();
  v66 = v88;
  sub_1A492BBDC(0xD000000000000019, 0x80000001A53D4970, &v92, 0, 0, 0, v65 & 1, v48 + 8, v88);
  a1(v66);
  sub_1A43C2468(v66, &unk_1EB139448, type metadata accessor for DebugRow);
  [v27 remoteAvailability];
  v67 = PLResourceRemoteAvailabilityName();
  if (v67)
  {
    v68 = v67;
    v69 = sub_1A524C674();
    v71 = v70;

    v72 = MEMORY[0x1E69E6158];
  }

  else
  {
    v69 = 0;
    v71 = 0;
    v72 = 0;
    v94 = 0;
  }

  v92 = v69;
  v93 = v71;
  v95 = v72;
  v73 = sub_1A3C5A374();
  v74 = v89;
  sub_1A492BBDC(0xD000000000000013, 0x80000001A53D4990, &v92, 0, 0, 0, v73 & 1, v48 + 8, v89);
  a1(v74);
  sub_1A43C2468(v74, &unk_1EB139448, type metadata accessor for DebugRow);
  result = [objc_opt_self() recipeFromID_];
  if (result)
  {
    v76 = result;
    v77 = [v76 description];
    v78 = sub_1A524C674();
    v80 = v79;

    v95 = v59;
    v92 = v78;
    v93 = v80;
    v81 = sub_1A3C5A374();
    sub_1A492BBDC(0x657069636552, 0xE600000000000000, &v92, 0, 0, 0, v81 & 1, v48 + 8, v41);
    a1(v41);

    result = sub_1A43C2468(v41, &unk_1EB139448, type metadata accessor for DebugRow);
  }

  if (v90 & 1) != 0 || (v84)
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_1A524E404();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

double sub_1A43C10BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

uint64_t sub_1A43C1110()
{
  v1 = v0;
  v2 = type metadata accessor for DebugSection(0);
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v34 - v5;
  v36 = sub_1A5240C64();
  v35 = *(v36 - 8);
  v6 = MEMORY[0x1EEE9AC00](v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v1 + 16) px_curationDebugValues];
  sub_1A5240C74();
  sub_1A5240C54();
  if (v48)
  {
    v42 = 0;
    v39 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = &unk_1EB1394C8;
    v12 = off_1E771DA98;
    v13 = MEMORY[0x1E69E7CC0];
    v40 = v8;
    do
    {
      sub_1A3C57128(&v47, v46);
      sub_1A3C2F0BC(v46, v45);
      sub_1A3C52C70(0, v11, v12);
      if (swift_dynamicCast())
      {
        v16 = v12;
        v17 = v11;
        v18 = v13;
        v19 = v44;
        v20 = [v44 label];
        v21 = sub_1A524C674();
        v23 = v22;

        v24 = [v19 string];
        v25 = sub_1A524C674();
        v27 = v26;

        v45[3] = MEMORY[0x1E69E6158];
        v45[0] = v25;
        v45[1] = v27;
        v28 = MEMORY[0x1E69E7CA0];
        v29 = sub_1A3C5A374();
        sub_1A492BBDC(v21, v23, v45, 0, 0, 0, v29 & 1, v28 + 8, v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A43C21B0(0, v10[2] + 1, 1, v10);
        }

        v31 = v10[2];
        v30 = v10[3];
        v13 = v18;
        if (v31 >= v30 >> 1)
        {
          v10 = sub_1A43C21B0((v30 > 1), v31 + 1, 1, v10);
        }

        v11 = v17;

        __swift_destroy_boxed_opaque_existential_0(v46);
        v10[2] = v31 + 1;
        sub_1A43BF78C(v43, v10 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v31, &unk_1EB139448, v28 + 8, type metadata accessor for DebugRow, sub_1A43C2848);
        v12 = v16;
        v8 = v40;
      }

      else
      {
        sub_1A3C2F0BC(v46, v45);
        sub_1A3C52C70(0, &qword_1EB1394D0, off_1E771DAA0);
        if (swift_dynamicCast())
        {
          v32 = v44;
          if (v42)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v14 = [v44 label];
          v39 = sub_1A524C674();
          v42 = v15;
        }

        __swift_destroy_boxed_opaque_existential_0(v46);
      }

      sub_1A5240C54();
    }

    while (v48);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v35 + 8))(v8, v36);

  return v13;
}

uint64_t PXDebugValueList.makeIterator()()
{
  swift_unknownObjectRetain();

  return sub_1A5240C74();
}

uint64_t sub_1A43C16F8()
{

  return swift_deallocClassInstance();
}

double sub_1A43C17CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t sub_1A43C1820()
{
  sub_1A3C7D12C(0, &qword_1EB139438, type metadata accessor for DebugSection, MEMORY[0x1E69E6F90]);
  v0 = *(type metadata accessor for DebugSection(0) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  sub_1A43BF70C(0);
  v3 = MEMORY[0x1E69E7CA0];
  sub_1A43C2848(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v5 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 16) = xmmword_1A52F8E10;
  v11 = v7;
  strcpy(v10, "Sample Value");
  HIBYTE(v10[6]) = 0;
  v10[7] = -5120;
  v8 = sub_1A3C5A374();
  sub_1A492BBDC(0x5220656C706D6153, 0xEA0000000000776FLL, v10, 0, 0, 0, v8 & 1, v3 + 8, v6 + v5);
  sub_1A492BB6C(0x5320656C706D6153, 0xEE006E6F69746365, v6, 0, 0, v2 + v1);
  return v2;
}

uint64_t sub_1A43C1A58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A43C1A90()
{
  result = swift_allocObject();
  *(result + 16) = 0x77656976657250;
  *(result + 24) = 0xE700000000000000;
  return result;
}

void *sub_1A43C1B14()
{
  type metadata accessor for DebugInfoPanelPHAssetProvider();
  v1 = swift_allocObject();
  v1[3] = 0x7465737341;
  v1[4] = 0xE500000000000000;
  [v0 fetchPropertySetsIfNeeded];
  v1[2] = v0;
  v2 = v0;
  return v1;
}

uint64_t sub_1A43C1B90()
{
  v1 = *v0;
  sub_1A43C24D4(*v0);
  v3 = v2;

  return v3;
}

uint64_t sub_1A43C1BE8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_1A5240C64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A5240C74();
  if (!a2)
  {
    (*(v7 + 32))(a1, v9, v6);
    return 0;
  }

  if (!a3)
  {
LABEL_10:
    (*(v7 + 32))(a1, v9, v6);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = 1;
    sub_1A43C23EC();
    while (1)
    {
      sub_1A524DF64();
      if (!v14)
      {
        break;
      }

      sub_1A3C57128(&v13, v15);
      sub_1A3C57128(v15, a2);
      if (a3 == v11)
      {
        goto LABEL_10;
      }

      a2 += 2;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1A43C2468(&v13, &qword_1EB126130, MEMORY[0x1E69E6720]);
    (*(v7 + 32))(a1, v9, v6);
    return v11 - 1;
  }

  __break(1u);
  return result;
}

void sub_1A43C1E70(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1A5240E64();
  sub_1A524CA24();
  swift_beginAccess();
  *(v3 + 16) = 0;

  dispatch_group_leave(v2);
}

unint64_t sub_1A43C1EEC()
{
  result = qword_1EB1394C0;
  if (!qword_1EB1394C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1394C0);
  }

  return result;
}

uint64_t sub_1A43C1F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1A43C1FB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C7D12C(0, &qword_1EB139438, type metadata accessor for DebugSection, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for DebugSection(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DebugSection(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A43C21B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  v10 = MEMORY[0x1E69E7CA0];
  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A43BF70C(0);
  sub_1A43C2848(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_1A43C2848(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

unint64_t sub_1A43C23EC()
{
  result = qword_1EB1394D8;
  if (!qword_1EB1394D8)
  {
    sub_1A5240C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1394D8);
  }

  return result;
}

uint64_t sub_1A43C2468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  sub_1A43C2848(0, a2, MEMORY[0x1E69E7CA0] + 8, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A43C24D4(uint64_t a1)
{
  v1 = sub_1A5240C64();
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A43C23EC();
  sub_1A524DF64();
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (v25)
  {
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    v7 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      sub_1A3C57128(&v24, v26);
      if (!v5)
      {
        v8 = v4[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_1A43C2848(0, &unk_1EB126170, v7 + 8, MEMORY[0x1E69E6F90]);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 1;
        }

        v14 = v13 >> 5;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 5);
        v15 = (v11 + 4);
        v16 = v4[3] >> 1;
        if (v4[2])
        {
          v17 = v4 + 4;
          if (v11 != v4 || v15 >= v17 + 32 * v16)
          {
            memmove(v11 + 4, v17, 32 * v16);
          }

          v4[2] = 0;
        }

        v6 = (v15 + 32 * v16);
        v5 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v4 = v11;
      }

      v18 = __OFSUB__(v5--, 1);
      if (v18)
      {
        break;
      }

      sub_1A3C57128(v26, v6);
      v6 += 2;
      sub_1A524DF64();
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  (*(v23 + 8))(v3, v1);
  sub_1A43C2468(&v24, &qword_1EB126130, MEMORY[0x1E69E6720]);
  v19 = v4[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v18 = __OFSUB__(v20, v5);
    v21 = v20 - v5;
    if (v18)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v4[2] = v21;
  }
}

id sub_1A43C2750(void (*a1)(char *), uint64_t a2)
{
  v5 = *(sub_1A5246D14() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A43C067C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 1), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1A43C2848(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A43C28A4(uint64_t a1)
{
  if (!qword_1EB12C468)
  {
    sub_1A43C79BC(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v1 = sub_1A524B974();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C468);
    }
  }
}

void sub_1A43C2920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43C2984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = sub_1A5247D34();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3600(0);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A5242D14();
  v7 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v88 - v11;
  v97 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = v13;
  v110 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C36BC(0);
  v102 = v14;
  v101 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C45DC(0);
  v99 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3778(0, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
  v103 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v88 - v19;
  sub_1A43C4618(0);
  v105 = *(v20 - 8);
  v106 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A5249234();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 40);
  v27 = *(v2 + 48);

  v109 = v25;
  if ((v27 & 1) == 0)
  {
    v28 = sub_1A524D254();
    v29 = a1;
    v30 = v7;
    v31 = v2;
    v32 = v12;
    v33 = v9;
    v34 = v23;
    v35 = v22;
    v36 = sub_1A524A014();
    sub_1A5246DF4(v28, &dword_1A3C1C000, v36, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v22 = v35;
    v23 = v34;
    v9 = v33;
    v12 = v32;
    v2 = v31;
    v7 = v30;
    a1 = v29;
    v37 = v109;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v26);
    (*(v23 + 8))(v37, v22);
    v26 = v115;
  }

  if (v26)
  {
    v88 = v23;
    v89 = v22;
    v91 = a1;
    v38 = v110;
    sub_1A43C794C(v2, v110, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
    v39 = *(v95 + 80);
    v40 = (v39 + 16) & ~v39;
    v90 = v40 + v96;
    v41 = (v40 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = v39;
    v42 = swift_allocObject();
    v96 = v40;
    sub_1A43C4BD8(v38, v42 + v40);
    *(v42 + v41) = v26;

    LOBYTE(v40) = sub_1A524A084();
    sub_1A43C632C();
    sub_1A5247BC4();
    v123 = 0;
    v115 = sub_1A43C4C3C;
    v116 = v42;
    LOBYTE(v117) = v40;
    v118 = v43;
    v119 = v44;
    v120 = v45;
    v121 = v46;
    v122 = 0;
    v47 = sub_1A524A074();
    sub_1A43C3778(0, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v49 = v48;
    v50 = sub_1A43C44F4();
    MEMORY[0x1A5906200](1, v47, v49, v50);

    sub_1A3D61808(v12);
    v51 = v98;
    (*(v7 + 104))(v9, *MEMORY[0x1E69C2200], v98);
    LOBYTE(v41) = sub_1A5242D04();
    v52 = *(v7 + 8);
    v52(v9, v51);
    v52(v12, v51);
    if (v41)
    {
      v53 = *(v2 + 56);
      v54 = v103;
      if (*(v2 + 64) == 1)
      {
        LOBYTE(v115) = v53 & 1;
      }

      else
      {

        v59 = sub_1A524D254();
        v60 = sub_1A524A014();
        sub_1A5246DF4(v59, &dword_1A3C1C000, v60, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        v61 = v109;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v53, 0);
        (*(v88 + 8))(v61, v89);
        LOBYTE(v53) = v115;
      }

      v58 = v107;
      v114 = v53 & 1;
      v113 = 1;
      if (static LemonadeRootViewOrientation.== infix(_:_:)(&v114, &v113))
      {
        v57 = sub_1A5248874();
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      v57 = 0;
      v58 = v107;
      v54 = v103;
    }

    v62 = sub_1A524A074();
    v63 = v100;
    (*(v101 + 32))(v100, v111, v102);
    v64 = &v63[*(v99 + 36)];
    *v64 = v57;
    v64[8] = v62;
    v65 = sub_1A5248884();
    v66 = sub_1A524A064();
    v67 = v63;
    v68 = v112;
    v69 = sub_1A43C78E4(v67, v112, sub_1A43C45DC);
    v70 = v68 + *(v54 + 36);
    *v70 = v65;
    *(v70 + 8) = v66;
    if ((*(**v2 + 584))(v69))
    {
      v71 = v92;
      sub_1A5247D24();
      v72 = v110;
      sub_1A43C794C(v2, v110, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
      v73 = swift_allocObject();
      sub_1A43C4BD8(v72, v73 + v96);
      v74 = swift_allocObject();
      *(v74 + 16) = sub_1A43C70AC;
      *(v74 + 24) = v73;
      v75 = v94;
      sub_1A524B9E4();

      (*(v93 + 8))(v71, v75);
      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    sub_1A43C3634(0);
    (*(*(v77 - 8) + 56))(v58, v76, 1, v77);
    sub_1A5247E64();
    v78 = sub_1A43C46F4();
    v79 = sub_1A43C4894();
    v80 = v104;
    v81 = v108;
    v82 = v112;
    sub_1A524AD64();
    sub_1A43C7754(v58, sub_1A43C3600);
    sub_1A3CF8538(v82);
    sub_1A43C2920(0, &qword_1EB126218, MEMORY[0x1E697C290], MEMORY[0x1E69E6F90]);
    sub_1A5248AB4();
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1A52F8E10;
    sub_1A5248A94();
    v115 = v54;
    v116 = v81;
    v117 = v78;
    v118 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v85 = v91;
    v86 = v106;
    MEMORY[0x1A5905FC0](2, v83, v106, OpaqueTypeConformance2);

    (*(v105 + 8))(v80, v86);
    sub_1A43C493C(0);
    return (*(*(v87 - 8) + 56))(v85, 0, 1, v87);
  }

  else
  {
    sub_1A43C493C(0);
    return (*(*(v55 - 8) + 56))(a1, 1, 1, v55);
  }
}

uint64_t type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(uint64_t a1)
{
  result = qword_1EB15EF30;
  if (!qword_1EB15EF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43C36BC(uint64_t a1)
{
  if (!qword_1EB1395D0)
  {
    sub_1A43C3778(255, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43C44F4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1395D0);
    }
  }
}

void sub_1A43C3778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A43C37E4(uint64_t a1)
{
  if (!qword_1EB1395E0)
  {
    sub_1A43C3778(255, &qword_1EB1395E8, sub_1A43C3880, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A43C440C();
    v1 = sub_1A5248414();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1395E0);
    }
  }
}

void sub_1A43C3880(uint64_t a1)
{
  if (!qword_1EB1395F0)
  {
    sub_1A43C3A54(255);
    sub_1A43C3C10(255);
    sub_1A43C3D94(255);
    sub_1A43C3EE8(255);
    sub_1A43C4004(255);
    sub_1A43C40F0(255);
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1395F0);
    }
  }
}

void sub_1A43C3A54(uint64_t a1)
{
  if (!qword_1EB1395F8)
  {
    sub_1A43C3C10(255);
    sub_1A43C3D94(255);
    sub_1A43C3EE8(255);
    sub_1A43C4004(255);
    sub_1A43C40F0(255);
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1395F8);
    }
  }
}

void sub_1A43C3C10(uint64_t a1)
{
  if (!qword_1EB139600)
  {
    sub_1A43C3D94(255);
    sub_1A43C3EE8(255);
    sub_1A43C4004(255);
    sub_1A43C40F0(255);
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139600);
    }
  }
}

void sub_1A43C3D94(uint64_t a1)
{
  if (!qword_1EB139608)
  {
    sub_1A43C3EE8(255);
    sub_1A43C4004(255);
    sub_1A43C40F0(255);
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139608);
    }
  }
}

void sub_1A43C3EE8(uint64_t a1)
{
  if (!qword_1EB139610)
  {
    sub_1A43C4004(255);
    sub_1A43C40F0(255);
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139610);
    }
  }
}

void sub_1A43C4004(uint64_t a1)
{
  if (!qword_1EB139618)
  {
    sub_1A43C40F0(255);
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139618);
    }
  }
}

void sub_1A43C40F0(uint64_t a1)
{
  if (!qword_1EB139620)
  {
    sub_1A43C41A4(255);
    sub_1A43C42C0(&qword_1EB139640, sub_1A43C41A4, &unk_1A535F1A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139620);
    }
  }
}

void sub_1A43C41A4(uint64_t a1)
{
  if (!qword_1EB139628)
  {
    v2 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(255);
    sub_1A43C4260(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = sub_1A43C42C0(&qword_1EB125118, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider, &unk_1A530BAD8);
    v6[3] = sub_1A43C4308();
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB139628);
    }
  }
}

void sub_1A43C4260(uint64_t a1)
{
  if (!qword_1EB139630)
  {
    sub_1A410AB24(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139630);
    }
  }
}

uint64_t sub_1A43C42C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A43C4308()
{
  result = qword_1EB139638;
  if (!qword_1EB139638)
  {
    sub_1A43C4260(255);
    sub_1A43C43B8();
    sub_1A43C42C0(&unk_1EB127B30, sub_1A410AB24, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139638);
  }

  return result;
}

unint64_t sub_1A43C43B8()
{
  result = qword_1EB164AA8[0];
  if (!qword_1EB164AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB164AA8);
  }

  return result;
}

unint64_t sub_1A43C440C()
{
  result = qword_1EB139648;
  if (!qword_1EB139648)
  {
    sub_1A43C3778(255, &qword_1EB1395E8, sub_1A43C3880, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A43C42C0(&qword_1EB139650, sub_1A43C3880, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139648);
  }

  return result;
}

unint64_t sub_1A43C44F4()
{
  result = qword_1EB139658;
  if (!qword_1EB139658)
  {
    sub_1A43C3778(255, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43C42C0(&qword_1EB139660, sub_1A43C37E4, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139658);
  }

  return result;
}

void sub_1A43C4618(uint64_t a1)
{
  if (!qword_1EB139678)
  {
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C3600(255);
    sub_1A43C46F4();
    sub_1A43C4894();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139678);
    }
  }
}

unint64_t sub_1A43C46F4()
{
  result = qword_1EB139680;
  if (!qword_1EB139680)
  {
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C47AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139680);
  }

  return result;
}

unint64_t sub_1A43C47AC()
{
  result = qword_1EB139688;
  if (!qword_1EB139688)
  {
    sub_1A43C45DC(255);
    sub_1A43C3778(255, &qword_1EB1395D8, sub_1A43C37E4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43C44F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139688);
  }

  return result;
}

unint64_t sub_1A43C4894()
{
  result = qword_1EB124560;
  if (!qword_1EB124560)
  {
    sub_1A43C3600(255);
    sub_1A43C42C0(&qword_1EB124578, sub_1A43C3634, MEMORY[0x1E697E238]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124560);
  }

  return result;
}

void sub_1A43C493C(uint64_t a1)
{
  if (!qword_1EB139690)
  {
    sub_1A43C4618(255);
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C3600(255);
    sub_1A43C46F4();
    sub_1A43C4894();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139690);
    }
  }
}

__n128 sub_1A43C4A50@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A43C3880(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_1A524BC74();
  v10[1] = v11;
  sub_1A43C787C(0);
  sub_1A43C4CE8(a1, a2, a3, v10 + *(v12 + 44));
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A43C78E4(v10, a4, sub_1A43C3880);
  sub_1A43C3778(0, &qword_1EB1395E8, sub_1A43C3880, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v14 = a4 + *(v13 + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1A43C4BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A43C4C3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_1A43C4A50(a1, (v2 + v6), v7, a2).n128_u64[0];
  return result;
}

uint64_t sub_1A43C4CE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a3;
  v114 = a4;
  v115 = sub_1A52425F4();
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1A5249D04();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1A52497E4();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A5249E44();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C41A4(0);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C40F0(0);
  v90 = v12;
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v86 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C4004(0);
  v93 = v14;
  v92 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v89 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3EE8(0);
  v103 = v16;
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3D94(0);
  v106 = v18;
  v104 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v102 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3C10(0);
  v108 = v20;
  v107 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v105 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A5244EE4();
  v122 = *(v22 - 8);
  v123 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v121 = v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v84 = v80 - v26;
  v120 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v120);
  v28 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v81 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v124 = v80 - v32;
  v33 = sub_1A5242D14();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v80 - v38;
  v117 = a1;
  sub_1A52482B4();
  v41 = v40;
  v42 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v43 = *(v42 + 36);
  v125 = a2;
  v44 = (a2 + v43);
  v45 = *v44;
  v119 = v44[1];
  v127 = v45;
  v128 = v119;
  sub_1A43C79BC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  v118 = v46;
  sub_1A524B6A4();
  v47 = v41 - v126;
  sub_1A52482B4();
  sub_1A43C5E0C(v48, v47);
  v116 = *(v42 + 32);
  sub_1A3D61808(v39);
  v49 = *MEMORY[0x1E69C2210];
  v50 = *(v34 + 104);
  v50(v36, v49, v33);
  v80[3] = sub_1A5242D04();
  v51 = *(v34 + 8);
  v51(v36, v33);
  v51(v39, v33);
  v127 = v45;
  v128 = v119;
  sub_1A524B6A4();
  sub_1A52482B4();
  sub_1A3D61808(v39);
  v50(v36, v49, v33);
  v52 = sub_1A5242D04();
  v51(v36, v33);
  v51(v39, v33);
  if (v52)
  {
    v53 = 0x3FFC71C71C71C71CLL;
  }

  else
  {
    v53 = 6;
  }

  v54 = sub_1A3C47918();
  v56 = v55;
  v57 = sub_1A3C47918();
  v59 = v58;
  v60 = sub_1A3C52D68();
  v62 = v61;
  v64 = v63;
  v65 = sub_1A3C4ED50(v60);
  LOBYTE(v126) = (v52 & 1) == 0;
  *v28 = xmmword_1A5317AF0;
  v28[16] = 0;
  *(v28 + 3) = v53;
  v28[32] = (v52 & 1) == 0;
  *(v28 + 5) = v54;
  *(v28 + 6) = v56;
  *(v28 + 7) = v57;
  *(v28 + 8) = v59;
  v66 = v121;
  *(v28 + 9) = v60;
  *(v28 + 10) = v62;
  v28[88] = v64;
  v67 = v124;
  v68 = v125;
  v28[89] = v65;
  swift_storeEnumTagMultiPayload();
  v69 = sub_1A3DC1AF8();
  sub_1A437C3B8(v28, 3, v69, v70 & 1, v67);
  v71 = *v68;
  v72 = *(*v68 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
  (*(v122 + 104))(v66, *MEMORY[0x1E69C12A8], v123);
  v73 = *(*v71 + 1408);
  v74 = v72;
  result = v73();
  if (result)
  {
    v76 = result;
    v77 = v81;
    sub_1A43C794C(v67, v81, type metadata accessor for LemonadeFeedBodyStyle);
    v78 = v84;
    sub_1A3F92A60(v74, v66, v76, v77, v84);
    sub_1A43C794C(v78, v82, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider);

    v79 = sub_1A440617C();
    MEMORY[0x1EEE9AC00](v79);
    sub_1A43C4260(0);
    sub_1A43C42C0(&qword_1EB125118, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider, &unk_1A530BAD8);
    sub_1A43C4308();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

double sub_1A43C5E0C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1A5249234();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  sub_1A3D61808(v14);
  v15 = *(v9 + 104);
  v30 = *MEMORY[0x1E69C2210];
  v15(v11);
  v16 = sub_1A5242D04();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  if (v16)
  {
    v18 = 0x3FEE666666666666;
  }

  else
  {
    sub_1A3D61808(v14);
    (v15)(v11, *MEMORY[0x1E69C2200], v8);
    v19 = sub_1A5242D04();
    v17(v11, v8);
    v17(v14, v8);
    if (v19)
    {
      v20 = *(v3 + 56);
      if (*(v3 + 64) == 1)
      {
        v33 = v20 & 1;
      }

      else
      {

        v26 = sub_1A524D254();
        v25 = sub_1A524A014();
        sub_1A5246DF4(v26, &dword_1A3C1C000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v20, 0);
        (*(v27 + 8))(v29, v28);
        LOBYTE(v20) = v33;
      }

      v32 = v20 & 1;
      v31 = 0;
      if (static LemonadeRootViewOrientation.== infix(_:_:)(&v32, &v31))
      {
        v21 = 0.9;
        goto LABEL_11;
      }
    }

    v18 = 0x3FE6666666666666;
  }

  v21 = *&v18;
LABEL_11:
  if (a1 < a2)
  {
    a2 = a1;
  }

  sub_1A3D61808(v14);
  (v15)(v11, v30, v8);
  v22 = sub_1A5242D04();
  v17(v11, v8);
  v17(v14, v8);
  v23 = 1.77777778;
  if ((v22 & 1) == 0)
  {
    v23 = 1.0;
  }

  return v21 * (a2 * v23);
}

double sub_1A43C61D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1A43C794C(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1A43C4BD8(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v12[8] = 0;
  *a2 = v7;
  *(a2 + 8) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_1A410AEF4;
  *(a2 + 56) = 0;
  *(a2 + 64) = sub_1A43C7B90;
  *(a2 + 72) = v10;

  return result;
}

double sub_1A43C632C()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v16 = *(v0 + 8);
  v17 = v8;
  v18 = v9;
  sub_1A43C28A4(0);
  MEMORY[0x1A5906C60](&v14);
  if (v15)
  {
    return 0.0;
  }

  v10 = v14;
  type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  sub_1A3D61808(v7);
  (*(v2 + 104))(v4, *MEMORY[0x1E69C2210], v1);
  sub_1A43C42C0(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
  v11 = sub_1A524C594();
  v12 = *(v2 + 8);
  v12(v4, v1);
  v12(v7, v1);
  if (v11)
  {
    return 0.0;
  }

  return v10;
}

double sub_1A43C6504(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A43C794C(a1, v5, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1A43C4BD8(v5, v12 + v11);
  sub_1A3D4D930(0, 0, v8, &unk_1A5336748, v12);

  return result;
}

uint64_t sub_1A43C66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A43C6760, v6, v5);
}

uint64_t sub_1A43C6760()
{
  v1 = *(v0 + 16);

  (*(**v1 + 592))(0);
  v2 = *(v0 + 8);

  return v2();
}

double sub_1A43C67F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = swift_getKeyPath();
  *(a6 + 48) = 0;
  *(a6 + 56) = swift_getKeyPath();
  *(a6 + 64) = 0;
  v7 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v8 = *(v7 + 32);
  *(a6 + v8) = swift_getKeyPath();
  sub_1A43C2920(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v9 = (a6 + *(v7 + 36));
  sub_1A524B694();
  result = v11;
  *v9 = v11;
  *(v9 + 1) = v12;
  return result;
}

uint64_t sub_1A43C68F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A43C3778(0, &qword_1EB1396A8, sub_1A43C7470, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = sub_1A5249234();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeStoryFeedbackButtonsView(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  sub_1A43C7470(0);
  v16 = v15;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *v1;
  v21 = (*(*v20 + 1432))(v17);
  if (v21)
  {
    v22 = v21;
    v41 = a1;
    PXDisplayCollectionDetailedCountsMake();
    *v19 = v23;
    sub_1A43C74AC(0);
    v25 = (v19 + *(v24 + 44));

    v40 = v22;
    sub_1A45DCAF4(v40, v14);
    sub_1A43C794C(v14, v11, type metadata accessor for GenerativeStoryFeedbackButtonsView);
    *v25 = v20;
    sub_1A43C758C(0, v26);
    sub_1A43C794C(v11, v25 + *(v27 + 48), type metadata accessor for GenerativeStoryFeedbackButtonsView);

    sub_1A43C7754(v14, type metadata accessor for GenerativeStoryFeedbackButtonsView);
    sub_1A43C7754(v11, type metadata accessor for GenerativeStoryFeedbackButtonsView);

    v28 = sub_1A524A054();
    v46 = *(v2 + 40);
    v29 = *(v2 + 3);
    v45[0] = *(v2 + 1);
    v45[1] = v29;
    if ((v46 & 1) == 0)
    {

      v31 = sub_1A524D254();
      v32 = sub_1A524A014();
      sub_1A5246DF4(v31, &dword_1A3C1C000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v33 = v42;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A40F501C(v45);
      (*(v43 + 8))(v33, v44);
    }

    sub_1A5247BC4();
    v34 = v19 + *(v16 + 36);
    *v34 = v28;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_1A43C794C(v19, v6, sub_1A43C7470);
    swift_storeEnumTagMultiPayload();
    sub_1A43C75F4();
    sub_1A5249744();

    return sub_1A43C7754(v19, sub_1A43C7470);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A43C75F4();
    return sub_1A5249744();
  }
}

uint64_t sub_1A43C6D88(uint64_t a1)
{
  sub_1A43C7D38(0);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*a1 + 416))(v3);
  v8 = v7;
  v9 = *MEMORY[0x1E69C0FE8];
  v10 = sub_1A5244854();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  (*(*a1 + 1896))(v6, v8, v5);

  return sub_1A43C7754(v5, sub_1A43C7D38);
}

uint64_t sub_1A43C6F30()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524B614();
}

uint64_t sub_1A43C6FE8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1A3E429B4();
  v5 = v4;
  v6 = sub_1A43C42C0(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);

  return sub_1A4A4E6EC(sub_1A43C7D30, v3, sub_1A43C6F30, 0, v5, v6, a1);
}

double sub_1A43C70AC()
{
  v1 = *(type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A43C6504(v2);
}

void sub_1A43C7150(uint64_t a1)
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A43C28A4(319);
    if (v2 <= 0x3F)
    {
      sub_1A43C2920(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A43C79BC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A43C2920(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A43C79BC(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
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

unint64_t sub_1A43C72DC()
{
  result = qword_1EB139698;
  if (!qword_1EB139698)
  {
    sub_1A43C2920(255, &qword_1EB1396A0, sub_1A43C493C, MEMORY[0x1E69E6720]);
    sub_1A43C4618(255);
    sub_1A43C3778(255, &qword_1EB139670, sub_1A43C45DC, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A43C3600(255);
    sub_1A43C46F4();
    sub_1A43C4894();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139698);
  }

  return result;
}

void sub_1A43C74AC(uint64_t a1)
{
  if (!qword_1EB1396B8)
  {
    sub_1A406D440(255);
    sub_1A43C7558(255);
    sub_1A43C42C0(&qword_1EB130F20, sub_1A406D440, MEMORY[0x1E697DDC8]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1396B8);
    }
  }
}

void sub_1A43C758C(uint64_t a1, double a2)
{
  if (!qword_1EB1396C8)
  {
    type metadata accessor for GenerativeStoryFeedbackButtonsView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1396C8);
    }
  }
}

unint64_t sub_1A43C75F4()
{
  result = qword_1EB1396D0;
  if (!qword_1EB1396D0)
  {
    sub_1A43C7470(255);
    sub_1A43C7674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1396D0);
  }

  return result;
}

unint64_t sub_1A43C7674()
{
  result = qword_1EB1396D8;
  if (!qword_1EB1396D8)
  {
    sub_1A43C74AC(255);
    sub_1A43C42C0(&qword_1EB1396E0, sub_1A406D440, MEMORY[0x1E697DDD0]);
    sub_1A43C42C0(&qword_1EB1396E8, sub_1A43C7558, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1396D8);
  }

  return result;
}

uint64_t sub_1A43C7754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43C77B4()
{
  v2 = *(type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A43C66C8(v4, v5, v6, v0 + v3);
}

void sub_1A43C787C(uint64_t a1)
{
  if (!qword_1EB1396F0)
  {
    sub_1A43C3A54(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1396F0);
    }
  }
}

uint64_t sub_1A43C78E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43C794C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A43C79BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  j__swift_release(*(v2 + 40));
  sub_1A3C53AEC(*(v2 + 56), *(v2 + 64));
  v3 = *(v1 + 32);
  sub_1A43C2920(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A43C7B90(uint64_t a1)
{
  type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  sub_1A43C79BC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

unint64_t sub_1A43C7C5C()
{
  result = qword_1EB1396F8;
  if (!qword_1EB1396F8)
  {
    sub_1A43C3778(255, &qword_1EB139700, sub_1A43C7470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A43C75F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1396F8);
  }

  return result;
}

void sub_1A43C7D6C(uint64_t a1)
{
  if (!qword_1EB139710)
  {
    sub_1A3E429B4();
    v3 = v2;
    v4 = sub_1A43C42C0(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    v6 = type metadata accessor for GenerativeStoryInlineActionButton(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB139710);
    }
  }
}

uint64_t PhotosObservableBasicItem<>.accessoryType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242FD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A43C83C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242FD4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1A43C84C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  sub_1A5241164();
  (*(v7 + 8))(v9, v6);
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_1A5246514();
}

unint64_t sub_1A43C8610()
{
  result = qword_1EB124A90;
  if (!qword_1EB124A90)
  {
    sub_1A43C8784(255, &qword_1EB124A88, off_1E7721230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124A90);
  }

  return result;
}

void sub_1A43C8684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A43C8784(255, &qword_1EB124A88, off_1E7721230);
    v7 = v6;
    v8 = sub_1A43C8610();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A43C8710()
{
  result = qword_1EB139720;
  if (!qword_1EB139720)
  {
    sub_1A43C8684(255, &qword_1EB124DF0, MEMORY[0x1E69C2250]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139720);
  }

  return result;
}

void sub_1A43C8784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3F47C30();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A43C87EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v7 = sub_1A3C47918();
  v9 = v8;
  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C52D68();
  v15 = v14;
  LOBYTE(a1) = v16;
  v17 = sub_1A3C4ED50(v13);
  v24 = 1;
  *v6 = xmmword_1A5301350;
  v6[16] = 1;
  *(v6 + 3) = 0;
  v6[32] = 1;
  *(v6 + 5) = v7;
  *(v6 + 6) = v9;
  *(v6 + 7) = v10;
  *(v6 + 8) = v12;
  *(v6 + 9) = v13;
  *(v6 + 10) = v15;
  v6[88] = a1;
  v6[89] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = sub_1A3DC1AF8();
  v20 = v19;
  v21 = type metadata accessor for LemonadeSharedWithYouFeedProvider(0);
  result = sub_1A437C3B8(v6, 1, v18, v20 & 1, a2 + *(v21 + 20));
  *a2 = v23;
  return result;
}

uint64_t type metadata accessor for LemonadeSharedWithYouFeedProvider(uint64_t a1)
{
  result = qword_1EB17B580;
  if (!qword_1EB17B580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43C89C8()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v0);
  sub_1A43C9550(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A43C8A5C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A43C9550(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  return sub_1A524C4B4();
}

uint64_t sub_1A43C8AE8(uint64_t a1)
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v1);
  sub_1A43C9550(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A43C8B78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  return static LemonadePhotoLibraryContext.== infix(_:_:)(v2, v3) & 1;
}

uint64_t sub_1A43C8BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A43C9040(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LemonadeSharedWithYouCell(0);
  MEMORY[0x1EEE9AC00](v33);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43C98A0(0, &qword_1EB139728, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  if (shouldUseNewCollectionsLayout()())
  {
    v41[0] = a1;
    v12 = type metadata accessor for LemonadeSharedWithYouModel(0);
    v13 = sub_1A43C9550(&qword_1EB139738, type metadata accessor for LemonadeSharedWithYouModel, &unk_1A535F2B8);

    v14 = MEMORY[0x1E6981E70];
    v15 = MEMORY[0x1E6981E60];
    v16 = sub_1A41F7694();
    v17 = sub_1A43C9BB4();
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v19;
    v21 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v41, 0x6567617373656DLL, 0xE700000000000000, 0, 0, 0, 1, sub_1A3F8B548, &v34, v16, v20, v21, v14, v12, v15, v13);
    v22 = v39;
    *(v11 + 4) = v38;
    *(v11 + 5) = v22;
    v11[96] = v40;
    v23 = v35;
    *v11 = v34;
    *(v11 + 1) = v23;
    v24 = v37;
    *(v11 + 2) = v36;
    *(v11 + 3) = v24;
    swift_storeEnumTagMultiPayload();
    sub_1A43C9098(0);
    sub_1A43C9550(&qword_1EB139740, sub_1A43C9098, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A43C9550(&qword_1EB139748, type metadata accessor for LemonadeSharedWithYouCell, &unk_1A5357890);
    return sub_1A5249744();
  }

  else
  {
    v26 = *(*a1 + 128);
    v26(&v34);
    v27 = v34;
    v32 = a2;
    v28 = *(&v35 + 1);
    swift_unknownObjectRelease();

    v26(v41);
    v29 = v41[0];
    v30 = v41[3];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_1A46BF2FC();
    sub_1A46BEE58(*(&v27 + 1), v30, v6, v8);
    sub_1A43C9148(v8, v11, type metadata accessor for LemonadeSharedWithYouCell);
    swift_storeEnumTagMultiPayload();
    sub_1A43C9098(0);
    sub_1A43C9550(&qword_1EB139740, sub_1A43C9098, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A43C9550(&qword_1EB139748, type metadata accessor for LemonadeSharedWithYouCell, &unk_1A5357890);
    sub_1A5249744();
    return sub_1A43C91B0(v8, v31);
  }
}

void sub_1A43C9040(uint64_t a1)
{
  if (!qword_1EB124840)
  {
    sub_1A5244084();
    v1 = sub_1A5247E54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124840);
    }
  }
}

void sub_1A43C9098(uint64_t a1)
{
  if (!qword_1EB139730)
  {
    v2 = type metadata accessor for LemonadeSharedWithYouModel(255);
    v3 = sub_1A43C9550(&qword_1EB139738, type metadata accessor for LemonadeSharedWithYouModel, &unk_1A535F2B8);
    v6[0] = MEMORY[0x1E6981E70];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E6981E60];
    v6[3] = v3;
    v4 = type metadata accessor for LemonadeMaterialTitleCell(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB139730);
    }
  }
}

uint64_t sub_1A43C9148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43C91B0(uint64_t a1, double a2)
{
  v3 = type metadata accessor for LemonadeSharedWithYouCell(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A43C9210()
{
  result = qword_1EB139750;
  if (!qword_1EB139750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139750);
  }

  return result;
}

unint64_t sub_1A43C9378()
{
  result = qword_1EB139758;
  if (!qword_1EB139758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139758);
  }

  return result;
}

uint64_t sub_1A43C9404(uint64_t a1)
{
  result = sub_1A43C9550(&qword_1EB129640, type metadata accessor for LemonadeSharedWithYouFeedProvider, &unk_1A53368F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43C9550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A43C95CC(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedWithYouItemListManager(0);
  sub_1A45B0AAC(v1);
}

uint64_t sub_1A43C9618@<X0>(void *a2@<X8>)
{
  v3 = swift_unknownObjectRetain();
  sub_1A3D96070(v3, &v5);
  *a2 = v5;
  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43C967C()
{
  sub_1A43C9550(&qword_1EB129638, type metadata accessor for LemonadeSharedWithYouFeedProvider, &unk_1A53368D8);

  return sub_1A3C47918();
}

unint64_t sub_1A43C9720(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C4B4AC(319, a2);
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for LemonadeFeedBodyStyle(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A43C97A4(double a1)
{
  result = qword_1EB139770;
  if (!qword_1EB139770)
  {
    sub_1A43C98A0(255, &qword_1EB139778, MEMORY[0x1E697F960]);
    sub_1A43C9550(&qword_1EB139740, sub_1A43C9098, &protocol conformance descriptor for LemonadeMaterialTitleCell<A, B>);
    sub_1A43C9550(&qword_1EB139748, type metadata accessor for LemonadeSharedWithYouCell, &unk_1A5357890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139770);
  }

  return result;
}

void sub_1A43C98A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A43C9098(255);
    v7 = v6;
    v8 = type metadata accessor for LemonadeSharedWithYouCell(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t PXMapOptionsMapStyle.systemIconName.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6C6C69662E70616DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t PXMapOptionsMapStyle.imageName.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x2D6863746977736DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t PXMapOptionsMapStyle.title.getter(unint64_t a1)
{
  if (a1 > 1)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v1 = sub_1A524C634();
    v2 = PXLocalizedString(v1);

    v3 = sub_1A524C674();
    return v3;
  }

  return result;
}

unint64_t PXMapOptionsMapStyle.usesImagery.getter(unint64_t result)
{
  if (result > 1)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34[0] = a13;
  v34[1] = a14;
  v34[2] = a15;
  v34[3] = a16;
  v23 = type metadata accessor for LemonadeMaterialTitleCell(0, v34);
  v24 = a9 + v23[20];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v23[21];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = *(a14 - 8);
  (*(v26 + 16))(a9, a1, a14);
  v27 = (a9 + v23[13]);
  *v27 = a2;
  v27[1] = a3;
  v28 = (a9 + v23[14]);
  *v28 = a4;
  v28[1] = a5;
  *(a9 + v23[15]) = a6;
  *(a9 + v23[16]) = a10;
  *(a9 + v23[17]) = a7;
  v29 = swift_unknownObjectRetain();
  a8(v29);
  swift_unknownObjectRelease();

  result = (*(v26 + 8))(a1, a14);
  *(a9 + v23[19]) = a12;
  return result;
}

void sub_1A43C9D98(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 80);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43C9EF4(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

void LemonadeMaterialTitleCell.body.getter(int *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v48 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v52 = v5;
  v50 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11[1].i64[0];
  v13 = v11[2];
  v67 = v7;
  v68 = v12;
  v53 = v12;
  v49 = v13;
  v51 = vextq_s8(v13, v13, 8uLL);
  v69 = v51;
  v14 = sub_1A5242A94();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v54 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = v45 - v17;
  v18 = sub_1A5243284();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v45 - v22;
  v24 = sub_1A43C9EF4(a1);
  v61 = v19;
  v62 = v18;
  if (v24)
  {
    v25 = MEMORY[0x1E69C23D0];
  }

  else
  {
    sub_1A43C9D98(a1, &v66);
    v65 = 0;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v67 == v63 && v68 == v64)
    {

      v25 = MEMORY[0x1E69C23E0];
    }

    else
    {
      v26 = sub_1A524EAB4();

      v25 = MEMORY[0x1E69C23D8];
      if (v26)
      {
        v25 = MEMORY[0x1E69C23E0];
      }
    }

    v19 = v61;
    v18 = v62;
  }

  v27 = *(v19 + 104);
  v27(v23, *v25, v18);
  v28 = *(v3 + a1[17]);
  v59 = v23;
  v45[2] = v10;
  if (v28)
  {
    (*(v8 + 16))(v10, v3, v7);
    goto LABEL_11;
  }

  v47 = v8;
  v31 = v60;
  v27(v60, *MEMORY[0x1E69C23D8], v18);
  sub_1A43D3320(&qword_1EB124DB8, MEMORY[0x1E69C23E8], MEMORY[0x1E69C23F0]);
  v32 = sub_1A524C594();
  (*(v19 + 8))(v31, v18);
  if ((v32 & 1) != 0 || (v33 = (v3 + a1[14]), (v34 = v33[1]) == 0))
  {
    (*(v47 + 16))(v10, v3, v7);
    v47 = 0;
    v46 = 0;
    v37 = v59;
  }

  else
  {
    v35 = *v33 & 0xFFFFFFFFFFFFLL;
    if ((v34 & 0x2000000000000000) != 0)
    {
      v36 = HIBYTE(v34) & 0xF;
    }

    else
    {
      v36 = v35;
    }

    (*(v47 + 16))(v10, v3, v7);
    v37 = v59;
    if (v36)
    {
LABEL_11:
      v29 = (v3 + a1[13]);
      v30 = v29[1];
      v47 = *v29;
      v46 = v30;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v47 = 0;
    v46 = 0;
  }

  v38 = a1[15];
  v45[1] = *(v3 + a1[14]);
  v45[0] = *(v3 + v38);
  (*(v61 + 16))(v60, v37, v62);
  v39 = v48;
  v40 = v50;
  (*(v48 + 16))(v50, v3, a1);
  v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *&v43 = v53;
  *(&v43 + 1) = v7;
  v44 = v49;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  (*(v39 + 32))(v42 + v41, v40, a1);
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43CA7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for LemonadeMaterialTitleCell(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 72), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

void sub_1A43CA8C8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43CAA24(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

uint64_t sub_1A43CAB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42905D4(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 72), v11, sub_1A42905D4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5244084();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43CAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31578(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 76), v11, sub_1A3F31578);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5247E04();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void LemonadeFolderMaterialTitleCell.init(_:_:aspectRatio:specs:backgroundColor:placeholderBackgroundColor:title:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v19 = type metadata accessor for LemonadeFolderMaterialTitleCell(0, a8, a11, a4);
  v20 = v19[9];
  v21 = v19[15];
  *(a9 + v21) = swift_getKeyPath();
  sub_1A43D0134(0);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v19[16];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v19[17];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v19[18];
  *(a9 + v24) = swift_getKeyPath();
  sub_1A42905D4(0);
  swift_storeEnumTagMultiPayload();
  v25 = v19[19];
  *(a9 + v25) = swift_getKeyPath();
  sub_1A3F31578(0);
  swift_storeEnumTagMultiPayload();
  (*(*(a8 - 8) + 16))(a9, a1, a8);
  *(a9 + v20) = a2;
  *(a9 + v19[10]) = a4;
  sub_1A43D3538(a5, a9 + v19[11], sub_1A43D0100);
  v26 = (a9 + v19[12]);
  *v26 = a6;
  v26[1] = a7;
  v27 = v19[13];
  v28 = sub_1A5243284();
  (*(*(v28 - 8) + 16))(a9 + v27, a3);
  *(a9 + v19[14]) = a10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43CB3F0(__n128 a1, uint64_t a2, void *a3)
{
  v4 = 7104878;
  v10 = sub_1A524EA44();
  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  if (a3 && (v5 = [a3 uuid]) != 0)
  {
    v6 = v5;
    v4 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1A5907B60](v4, v8);

  return v10;
}

uint64_t sub_1A43CB4B0@<X0>(uint64_t *a1@<X8>, __n128 a2@<Q0>)
{
  result = sub_1A43CB3F0(a2, *v2, *(v2 + 8));
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A43CB4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v51 = a2;
  v49 = a1;
  v5 = sub_1A5243834();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0100(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249234();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5247E04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1A52429A4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43CAD70(a3, v18);
  (*(v13 + 104))(v15, *MEMORY[0x1E697DBA8], v12);
  LOBYTE(a3) = sub_1A5247DF4();
  v23 = *(v13 + 8);
  v23(v15, v12);
  v23(v18, v12);
  if (a3)
  {
    sub_1A524B3D4();
  }

  else
  {
    sub_1A524B404();
  }

  sub_1A524B474();

  sub_1A5249224();
  sub_1A524B494();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  (*(v43 + 8))(v11, v44);
  *v22 = v25;
  v22[1] = v27;
  v22[2] = v29;
  v22[3] = v31;
  (*(v20 + 104))(v22, *MEMORY[0x1E69C2040], v19);
  v52 = 0u;
  v53 = 0u;
  v54 = 1;
  v32 = v45;
  (*(v20 + 16))(v45, v22, v19);
  (*(v20 + 56))(v32, 0, 1, v19);
  (*(v46 + 104))(v48, *MEMORY[0x1E69C2678], v47);
  swift_unknownObjectRetain();
  v33 = v50;
  sub_1A5243ED4();
  (*(v20 + 8))(v22, v19);
  KeyPath = swift_getKeyPath();
  sub_1A43D050C(0);
  v36 = (v33 + *(v35 + 36));
  sub_1A43D0540(0);
  v38 = *(v37 + 28);
  v39 = sub_1A5241FE4();
  v40 = *(v39 - 8);
  (*(v40 + 16))(v36 + v38, v51, v39);
  result = (*(v40 + 56))(v36 + v38, 0, 1, v39);
  *v36 = KeyPath;
  return result;
}

uint64_t sub_1A43CBA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *, double), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  a6(a1, &v15 - v12, v11);
  return a7(v13);
}

uint64_t LemonadeFolderMaterialTitleCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  sub_1A43D01E4(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0A80(0, v6);
  v75 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0ABC(0, v10);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0AF8(0);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0D1C(0);
  v79 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0D50(0);
  v86 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0E8C(0, &qword_1EB139898, sub_1A43D0D50, sub_1A43D0F18, MEMORY[0x1E69C3060]);
  v85 = v21;
  v84 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v71 - v22;
  v23 = sub_1A5243284();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A43CAA24(a1);
  v83 = v23;
  v81 = v24;
  if (v27)
  {
    (*(v24 + 104))(v26, *MEMORY[0x1E69C23D0], v23);
    goto LABEL_10;
  }

  sub_1A43CA8C8(a1, v96);
  v95 = 0;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v89 == v93 && v90 == v94)
  {
  }

  else
  {
    v28 = sub_1A524EAB4();

    if ((v28 & 1) == 0)
    {
      v29 = MEMORY[0x1E69C23D8];
      goto LABEL_9;
    }
  }

  v29 = MEMORY[0x1E69C23E0];
LABEL_9:
  (*(v24 + 104))(v26, *v29, v23);
LABEL_10:
  *v8 = sub_1A5249574();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_1A43D33EC(0, &qword_1EB1398E8, sub_1A43D0278, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v33 = &v8[*(v30 + 44)];
  v34 = v26;
  v87 = v3;
  v72 = v31;
  sub_1A43CC3C8(v26, v3, v32, v31, v33);
  sub_1A43D3090(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FF950;
  v36 = sub_1A524A074();
  *(inited + 32) = v36;
  v37 = sub_1A524A094();
  *(inited + 33) = v37;
  v38 = sub_1A524A0B4();
  *(inited + 34) = v38;
  v39 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v36)
  {
    v39 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v37)
  {
    v39 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v38)
  {
    v39 = sub_1A524A0A4();
  }

  sub_1A5243214();
  sub_1A5247BC4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v76;
  sub_1A43D1258(v8, v76, sub_1A43D01E4);
  v49 = v48 + *(v75 + 36);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  v50 = v78;
  sub_1A43D1258(v48, v78, sub_1A43D0A80);
  v51 = v50 + *(v74 + 36);
  *v51 = 0x3FF0000000000000;
  *(v51 + 8) = 256;
  v52 = sub_1A524BC74();
  v53 = v34;
  v55 = v54;
  v56 = &v16[*(v73 + 36)];
  v57 = v87;
  v58 = v72;
  sub_1A43CDB38(v87, v34, v32, v72, v56);
  sub_1A43D0B2C(0);
  v60 = (v56 + *(v59 + 36));
  *v60 = v52;
  v60[1] = v55;
  sub_1A43D1258(v50, v16, sub_1A43D0ABC);
  v61 = v16;
  v62 = v77;
  sub_1A43D1258(v61, v77, sub_1A43D0AF8);
  *(v62 + *(v79 + 36)) = 1;
  v63 = v80;
  sub_1A43D1258(v62, v80, sub_1A43D0D1C);
  v64 = v86;
  v65 = v63 + *(v86 + 36);
  *v65 = 0x3FF0000000000000;
  *(v65 + 8) = 0;
  v91 = v32;
  v92 = v58;
  v66 = __swift_allocate_boxed_opaque_existential_1(&v89);
  (*(*(v32 - 8) + 16))(v66, v57, v32);
  v67 = sub_1A43D0F18();
  v68 = v82;
  sub_1A524A554();
  sub_1A43D32C0(v63, sub_1A43D0D50);
  __swift_destroy_boxed_opaque_existential_0(&v89);
  v89 = v64;
  v90 = v67;
  swift_getOpaqueTypeConformance2();
  v69 = v85;
  sub_1A524A564();
  (*(v84 + 8))(v68, v69);
  return (*(v81 + 8))(v53, v83);
}

uint64_t sub_1A43CC3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v59 = a3;
  v57 = sub_1A5247E04();
  v56[18] = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56[17] = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56[16] = v56 - v10;
  sub_1A3EE1D04(0);
  v56[9] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697E830];
  sub_1A43D2FA4(0, &qword_1EB139818, sub_1A43D07B8, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v56[10] = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v56[14] = v56 - v16;
  sub_1A43D0700(0, v15);
  v56[13] = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v56[15] = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0674(0, v18);
  v56[12] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v56[21] = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D2FA4(0, &qword_1EB139800, sub_1A43D0674, MEMORY[0x1E697EC00], v13);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v56[19] = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v56[20] = v56 - v28;
  sub_1A43D05E4(0, v27);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v56 - v33;
  sub_1A43D02B4(0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v56 - v39;
  sub_1A5243214();
  v42 = v41;
  *v40 = sub_1A5249574();
  *(v40 + 1) = v42;
  v40[16] = 0;
  sub_1A43D33EC(0, &qword_1EB1398F8, sub_1A43D0348, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  v44 = &v40[*(v43 + 44)];
  v56[11] = a1;
  v45 = v59;
  v46 = v60;
  sub_1A43CCFE8(v59, v60, v44, v47);
  v59 = type metadata accessor for LemonadeFolderMaterialTitleCell(0, v45, v46, v48);
  v49 = *(v59 + 48);
  v60 = a2;
  v50 = (a2 + v49);
  v51 = v50[1];
  if (v51)
  {
    v56[4] = v24;
    v56[3] = v23;
    v56[5] = v37;
    v56[6] = v34;
    v56[7] = v31;
    v56[8] = a5;
    v61 = *v50;
    v62 = v51;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v24 + 56))(v34, 1, 1, v23);
  sub_1A43D3538(v40, v37, sub_1A43D02B4);
  sub_1A3CF9648(v34, v31, v52);
  sub_1A43D3538(v37, a5, sub_1A43D02B4);
  sub_1A43D12D8(0, &qword_1EB139790, sub_1A43D02B4, sub_1A43D05E4);
  sub_1A3CF9648(v31, a5 + *(v53 + 48), v54);
  sub_1A43D32C0(v34, sub_1A43D05E4);
  sub_1A43D34C0(v40, sub_1A43D02B4);
  sub_1A43D32C0(v31, sub_1A43D05E4);
  return sub_1A43D34C0(v37, sub_1A43D02B4);
}

uint64_t sub_1A43CCFE8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double d0_0@<D0>)
{
  v43 = a4;
  v46 = a5;
  sub_1A43D05A8(0, d0_0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v42 - v14;
  sub_1A43D03E0(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  sub_1A5243214();
  v25 = v24;
  *v23 = sub_1A5249314();
  *(v23 + 1) = v25;
  v23[16] = 0;
  sub_1A43D33EC(0, qword_1EB139900, sub_1A43D0474, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v27 = v26;
  v28 = a3;
  v29 = a3;
  v30 = v43;
  sub_1A43CD3D0(v29, v43, &v23[*(v26 + 44)]);
  sub_1A5243214();
  v32 = v31;
  *v20 = sub_1A5249314();
  *(v20 + 1) = v32;
  v20[16] = 0;
  sub_1A43CD78C(v28, v30, &v20[*(v27 + 44)]);
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A43D3458(v20, v12, sub_1A43D03E0);
  v33 = &v12[*(v8 + 44)];
  v34 = v52;
  *(v33 + 4) = v51;
  *(v33 + 5) = v34;
  *(v33 + 6) = v53;
  v35 = v48;
  *v33 = v47;
  *(v33 + 1) = v35;
  v36 = v50;
  *(v33 + 2) = v49;
  *(v33 + 3) = v36;
  v37 = v44;
  sub_1A43D3458(v12, v44, sub_1A43D05A8);
  sub_1A43D3538(v23, v17, sub_1A43D03E0);
  v38 = v45;
  sub_1A43D3538(v37, v45, sub_1A43D05A8);
  v39 = v46;
  sub_1A43D3538(v17, v46, sub_1A43D03E0);
  sub_1A43D12D8(0, &qword_1EB1397A8, sub_1A43D03E0, sub_1A43D05A8);
  sub_1A43D3538(v38, v39 + *(v40 + 48), sub_1A43D05A8);
  sub_1A43D34C0(v37, sub_1A43D05A8);
  sub_1A43D34C0(v23, sub_1A43D03E0);
  sub_1A43D34C0(v38, sub_1A43D05A8);
  return sub_1A43D34C0(v17, sub_1A43D03E0);
}

uint64_t sub_1A43CD3D0@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_1A43D050C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v34 = &v34 - v14;
  v38 = sub_1A5241FE4();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  sub_1A5243254();
  sub_1A5243214();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  v22 = type metadata accessor for LemonadeFolderMaterialTitleCell(0, a2, a3, v21);
  type metadata accessor for LemonadeFolderMaterialTitleCell.MultiAssetViewItem(0, a2, a3, v23);
  sub_1A524CB94();
  sub_1A43CB4DC(v40, v20, v22, v15);
  swift_unknownObjectRelease();
  sub_1A5243264();
  sub_1A5243254();
  sub_1A5243214();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  sub_1A524CB94();
  sub_1A43CB4DC(v40, v17, v22, v12);
  swift_unknownObjectRelease();
  v25 = v34;
  v24 = v35;
  sub_1A43D3538(v34, v35, sub_1A43D050C);
  v26 = v37;
  sub_1A43D3538(v12, v37, sub_1A43D050C);
  v27 = v39;
  sub_1A43D3538(v24, v39, sub_1A43D050C);
  sub_1A43D04A8(0);
  v29 = v27 + *(v28 + 48);
  v30 = v26;
  sub_1A43D3538(v26, v29, sub_1A43D050C);
  sub_1A43D34C0(v12, sub_1A43D050C);
  v31 = *(v36 + 8);
  v32 = v38;
  v31(v17, v38);
  sub_1A43D34C0(v25, sub_1A43D050C);
  v31(v20, v32);
  sub_1A43D34C0(v30, sub_1A43D050C);
  return sub_1A43D34C0(v24, sub_1A43D050C);
}

uint64_t sub_1A43CD78C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_1A43D050C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v34 = &v34 - v14;
  v38 = sub_1A5241FE4();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  v22 = type metadata accessor for LemonadeFolderMaterialTitleCell(0, a2, a3, v21);
  type metadata accessor for LemonadeFolderMaterialTitleCell.MultiAssetViewItem(0, a2, a3, v23);
  sub_1A524CB94();
  sub_1A43CB4DC(v40, v20, v22, v15);
  swift_unknownObjectRelease();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5243264();
  sub_1A5241FD4();
  sub_1A524CB94();
  sub_1A43CB4DC(v40, v17, v22, v12);
  swift_unknownObjectRelease();
  v25 = v34;
  v24 = v35;
  sub_1A43D3538(v34, v35, sub_1A43D050C);
  v26 = v37;
  sub_1A43D3538(v12, v37, sub_1A43D050C);
  v27 = v39;
  sub_1A43D3538(v24, v39, sub_1A43D050C);
  sub_1A43D04A8(0);
  v29 = v27 + *(v28 + 48);
  v30 = v26;
  sub_1A43D3538(v26, v29, sub_1A43D050C);
  sub_1A43D34C0(v12, sub_1A43D050C);
  v31 = *(v36 + 8);
  v32 = v38;
  v31(v17, v38);
  sub_1A43D34C0(v25, sub_1A43D050C);
  v31(v20, v32);
  sub_1A43D34C0(v30, sub_1A43D050C);
  return sub_1A43D34C0(v24, sub_1A43D050C);
}

uint64_t sub_1A43CDB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a2;
  v43 = a5;
  v44 = sub_1A5244084();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524B394();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5247E04();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  sub_1A43D0C08(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LemonadeFolderMaterialTitleCell(0, a3, a4, v23);
  v41 = a1;
  sub_1A43CAD70(v24, v18);
  (*(v13 + 104))(v15, *MEMORY[0x1E697DBB8], v12);
  LOBYTE(a4) = sub_1A5247DF4();
  v25 = *(v13 + 8);
  v25(v15, v12);
  v25(v18, v12);
  if (a4)
  {
    v26 = sub_1A524B434();
  }

  else
  {
    (*(v37 + 104))(v11, *MEMORY[0x1E69814D8], v38);
    v26 = sub_1A524B4B4();
  }

  v27 = v26;
  sub_1A5243254();
  v29 = v28;
  v30 = &v22[*(v20 + 36)];
  v31 = *(sub_1A5248A14() + 20);
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_1A52494A4();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  *v30 = v29;
  *(v30 + 1) = v29;
  sub_1A3E42C88(0);
  *&v30[*(v34 + 36)] = 256;
  *v22 = v27;
  *(v22 + 4) = 256;
  v35 = v40;
  sub_1A43CAB78(v24, v40);
  sub_1A43D0C3C();
  sub_1A524A784();
  (*(v42 + 8))(v35, v44);
  return sub_1A43D34C0(v22, sub_1A43D0C08);
}

void sub_1A43CDF34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0134(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 88), v11, sub_1A43D0134);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A43D3458(v11, a2, type metadata accessor for LemonadeItemsLayoutSpec);
  }

  else
  {
    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1A43CE114(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 92);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A43CE270(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

uint64_t sub_1A43CE3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2 + *(a1 + 100), v11, sub_1A3E71AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t LemonadeFavoritingMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v30[0] = a11;
  v30[1] = a12;
  v31 = a13;
  v32 = a14;
  v23 = type metadata accessor for LemonadeFavoritingMaterialTitleCell(0, v30);
  v24 = v23[22];
  *(a9 + v24) = swift_getKeyPath();
  sub_1A43D0134(0);
  swift_storeEnumTagMultiPayload();
  v25 = a9 + v23[23];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = a9 + v23[24];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v23[25];
  *(a9 + v27) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  result = swift_storeEnumTagMultiPayload();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a10;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

void LemonadeFavoritingMaterialTitleCell.body.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v4 = sub_1A5243284();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41170C8(0);
  v46 = *(v6 - 8);
  v40 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5243B94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v14;
  v15 = *(a1 + 16);
  v64 = *(a1 + 32);
  v65 = v15;
  v16 = sub_1A5243884();
  v56 = v16;
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v38 - v17;
  WitnessTable = swift_getWitnessTable();
  v66 = v16;
  v67 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v51 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v38 - v20;
  v21 = v2[2];
  v48 = v2[1];
  v43 = v21;
  v22 = v2[4];
  v47 = v2[3];
  v44 = v22;
  v42 = v2[5];
  v23 = v2[8];
  v50 = v2[7];
  v49 = v23;
  sub_1A4244368(0);
  v24 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52F8E10;
  v26 = v25 + v24;
  v27 = v14;
  v28 = v11;
  (*(v12 + 104))(v27, *MEMORY[0x1E69C2800], v11);
  v29 = v45;
  (*(v8 + 16))(v45, v2, a1);
  v30 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v31 = swift_allocObject();
  v46 = *(a1 + 24);
  v32 = v46;
  v33 = v64;
  *(v31 + 16) = v65;
  *(v31 + 24) = v32;
  *(v31 + 32) = v33;
  *(v31 + 40) = *(a1 + 40);
  v41 = *(a1 + 56);
  *(v31 + 56) = v41;
  (*(v8 + 32))(v31 + v30, v29, a1);
  v34 = *(v12 + 32);
  v35 = v52;
  v34(v52, v39, v28);
  v34(v26, v35, v28);
  v36 = (v26 + *(v40 + 56));
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1A43D1354;
  *(v37 + 24) = v31;
  *v36 = sub_1A4244548;
  v36[1] = v37;
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43CEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A52440F4();
  v13 = sub_1A5248804();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v16 = type metadata accessor for LemonadeFavoritingMaterialTitleCell(0, v19);
  sub_1A43CEF9C(v16, v15);
  v18[0] = swift_getWitnessTable();
  v18[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  return sub_1A524B8E4();
}

uint64_t sub_1A43CEF9C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = sub_1A5242D14();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25[1] = a1[5];
  v26 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52440F4();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = sub_1A5248804();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v27 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = v25 - v14;
  v37 = *v2;
  swift_unknownObjectRetain();
  sub_1A5242A84();
  sub_1A52440E4();
  v15 = v26;
  sub_1A43CDF34(a1, v26);
  sub_1A43CE114(a1, &v37);
  v16 = sub_1A43CE270(a1);
  v17 = v29;
  sub_1A43CE3C4(a1, v29);
  sub_1A43A2BB4(&v37, v16 & 1, v17);
  (*(v32 + 8))(v17, v33);
  sub_1A43D34C0(v15, type metadata accessor for LemonadeItemsLayoutSpec);
  WitnessTable = swift_getWitnessTable();
  v19 = v27;
  sub_1A524B0C4();
  (*(v31 + 8))(v10, v8);
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v20 = v30;
  v21 = *(v30 + 16);
  v22 = v28;
  v21(v28, v19, v11);
  v23 = *(v20 + 8);
  v23(v19, v11);
  v21(v34, v22, v11);
  return (v23)(v22, v11);
}

void sub_1A43CF3C4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D0134(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43D3538(v2, v10, sub_1A43D0134);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A43D3458(v10, a1, type metadata accessor for LemonadeItemsLayoutSpec);
  }

  else
  {
    v11 = sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4(v11, &dword_1A3C1C000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A43CF5A0()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LemonadeImmutableFavoritedBadgeView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4(v7, &dword_1A3C1C000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1A43CF6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E71AC8(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeImmutableFavoritedBadgeView(0);
  sub_1A43D3538(v1 + *(v10 + 28), v9, sub_1A3E71AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t LemonadeImmutableFavoritedBadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242264();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0x69662E7472616568;
  v14[1] = 0xEA00000000006C6CLL;
  (*(v11 + 104))(v14, *MEMORY[0x1E69C1D38], v10, v12);
  v47 = sub_1A5242B94();
  (*(v11 + 8))(v14, v10);
  v15 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  if (sub_1A43CF5A0())
  {
    v17 = sub_1A524A1D4();
  }

  else
  {
    v17 = sub_1A524A0F4();
  }

  v18 = v17;
  v19 = swift_getKeyPath();
  sub_1A43CF3C4(v48);
  v20 = v1 + *(type metadata accessor for LemonadeImmutableFavoritedBadgeView(0) + 20);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v50 = *v20;
  }

  else
  {

    v22 = v18;
    v23 = KeyPath;
    v24 = v3;
    v25 = sub_1A524D254();
    v26 = sub_1A524A014();
    v42 = v15;
    v27 = v26;
    v28 = v25;
    v3 = v24;
    KeyPath = v23;
    v18 = v22;
    sub_1A5246DF4(v28, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v15 = v42;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v43 + 8))(v7, v44);
    LOBYTE(v21) = v50;
  }

  v49 = v21;
  v29 = sub_1A43CF5A0();
  v30 = v45;
  sub_1A43CF6F8(v45);
  v31 = v48;
  sub_1A43A2BB4(&v49, v29 & 1, v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  (*(v46 + 8))(v30, v3);
  sub_1A43D34C0(v31, type metadata accessor for LemonadeItemsLayoutSpec);
  result = sub_1A524A064();
  *a1 = v47;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v15;
  *(a1 + 24) = v19;
  *(a1 + 32) = v18;
  *(a1 + 40) = result;
  *(a1 + 48) = v33;
  *(a1 + 56) = v35;
  *(a1 + 64) = v37;
  *(a1 + 72) = v39;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1A43CFD18@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A43D0134(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for LemonadeImmutableFavoritedBadgeView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_1A3E71AC8(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A43CFDE8(uint64_t a1)
{
  sub_1A5243B94();
  sub_1A43D3320(&qword_1EB124D20, MEMORY[0x1E69C2818], MEMORY[0x1E69C2820]);
  v2 = sub_1A524C4A4();
  return sub_1A43CFE7C(a1, v2);
}

unint64_t sub_1A43CFE7C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5243B94();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A43D3320(&qword_1EB1398F0, MEMORY[0x1E69C2818], MEMORY[0x1E69C2828]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1A43D0054@<X0>(char *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for LemonadeMaterialTitleCell(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1A43CA7A8(v8, v3, a1);
}

void sub_1A43D0168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A43D01E4(uint64_t a1)
{
  if (!qword_1EB139780)
  {
    sub_1A43D0278(255);
    sub_1A43D3320(&qword_1EB139848, sub_1A43D0278, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139780);
    }
  }
}

void sub_1A43D02B4(uint64_t a1)
{
  if (!qword_1EB139798)
  {
    sub_1A43D0348(255);
    sub_1A43D3320(&qword_1EB1397F0, sub_1A43D0348, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139798);
    }
  }
}

void sub_1A43D0384(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43D12D8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A43D03E0(uint64_t a1)
{
  if (!qword_1EB1397B0)
  {
    sub_1A43D0474(255);
    sub_1A43D3320(&qword_1EB1397E0, sub_1A43D0474, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1397B0);
    }
  }
}

void sub_1A43D04A8(uint64_t a1)
{
  if (!qword_1EB1397C0)
  {
    sub_1A43D050C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1397C0);
    }
  }
}

void sub_1A43D05E4(uint64_t a1, double a2)
{
  if (!qword_1EB1397F8)
  {
    sub_1A43D2FA4(255, &qword_1EB139800, sub_1A43D0674, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1397F8);
    }
  }
}

void sub_1A43D0674(uint64_t a1, double a2)
{
  if (!qword_1EB139808)
  {
    sub_1A43D0700(255, a2);
    sub_1A43D3090(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB139808);
    }
  }
}

void sub_1A43D0700(uint64_t a1, double a2)
{
  if (!qword_1EB139810)
  {
    sub_1A43D2FA4(255, &qword_1EB139818, sub_1A43D07B8, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A43D08F8(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB139810);
    }
  }
}

void sub_1A43D07F4(uint64_t a1)
{
  if (!qword_1EB139828)
  {
    sub_1A43D0D84(255, &qword_1EB139830, sub_1A3DF14C0, sub_1A43D0964);
    sub_1A3EE1D04(255);
    sub_1A43D09A0();
    sub_1A43D3320(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB139828);
    }
  }
}

void sub_1A43D08F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A43D3090(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A43D09A0()
{
  result = qword_1EB139838;
  if (!qword_1EB139838)
  {
    sub_1A43D0D84(255, &qword_1EB139830, sub_1A3DF14C0, sub_1A43D0964);
    sub_1A405D614();
    sub_1A43D3320(&qword_1EB139840, sub_1A43D0964, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139838);
  }

  return result;
}

void sub_1A43D0B2C(uint64_t a1)
{
  if (!qword_1EB139868)
  {
    sub_1A43D0E8C(255, &qword_1EB139870, sub_1A43D0C08, sub_1A43D0C3C, MEMORY[0x1E69C3170]);
    sub_1A43D0C08(255);
    sub_1A43D0C3C();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5249724();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139868);
    }
  }
}

unint64_t sub_1A43D0C3C()
{
  result = qword_1EB139880;
  if (!qword_1EB139880)
  {
    sub_1A43D0C08(255);
    sub_1A43D3320(&qword_1EB1248E8, sub_1A40EAF5C, MEMORY[0x1E697DB78]);
    sub_1A43D3320(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139880);
  }

  return result;
}

void sub_1A43D0D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A43D0DF8(uint64_t a1)
{
  if (!qword_1EB127A68)
  {
    sub_1A5243C74();
    sub_1A43D3320(&qword_1EB129010, MEMORY[0x1E69C2878], MEMORY[0x1E69C2870]);
    v1 = sub_1A5249DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127A68);
    }
  }
}

void sub_1A43D0E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A43D0F18()
{
  result = qword_1EB1398A0;
  if (!qword_1EB1398A0)
  {
    sub_1A43D0D50(255);
    sub_1A43D0FC8();
    sub_1A43D3320(&qword_1EB1398E0, sub_1A43D0DF8, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398A0);
  }

  return result;
}

unint64_t sub_1A43D0FC8()
{
  result = qword_1EB1398A8;
  if (!qword_1EB1398A8)
  {
    sub_1A43D0D1C(255);
    sub_1A43D1078();
    sub_1A43D3320(&qword_1EB127A80, sub_1A3EC1EB4, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398A8);
  }

  return result;
}

unint64_t sub_1A43D1078()
{
  result = qword_1EB1398B0;
  if (!qword_1EB1398B0)
  {
    sub_1A43D0AF8(255);
    sub_1A43D1128(v1);
    sub_1A43D3320(&unk_1EB1398D0, sub_1A43D0B2C, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398B0);
  }

  return result;
}

unint64_t sub_1A43D1128(double a1)
{
  result = qword_1EB1398B8;
  if (!qword_1EB1398B8)
  {
    sub_1A43D0ABC(255, a1);
    sub_1A43D11A8(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398B8);
  }

  return result;
}

unint64_t sub_1A43D11A8(double a1)
{
  result = qword_1EB1398C0;
  if (!qword_1EB1398C0)
  {
    sub_1A43D0A80(255, a1);
    sub_1A43D3320(&qword_1EB1398C8, sub_1A43D01E4, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1398C0);
  }

  return result;
}

uint64_t sub_1A43D1258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A43D12D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A43D1354()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for LemonadeFavoritingMaterialTitleCell(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1A43CEE54(v8, v1, v2, v3, v4, v5, v6);
}

unint64_t sub_1A43D1410(uint64_t a1)
{
  sub_1A41170C8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A43D320C(0, &qword_1EB120470, MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A43D3538(v10, v6, sub_1A41170C8);
      result = sub_1A43CFDE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5243B94();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for LemonadeImmutableFavoritedBadgeView(uint64_t a1)
{
  result = qword_1EB160670;
  if (!qword_1EB160670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43D173C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A43D3090(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A43D0168(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1A43D320C(319, &qword_1EB120E10, MEMORY[0x1E69E5E28]);
          if (v5 <= 0x3F)
          {
            sub_1A43D3090(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A43D3090(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
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

uint64_t sub_1A43D1910(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  if (v5 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 + 9;
  v12 = *(v6 + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((((v12 + ((v11 + ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1, v5, *(a3 + 24));
    }

    v22 = (v11 + (((((((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v9;
    if (v7 == v10)
    {
      return (*(v6 + 48))(v22);
    }

    v23 = *((v12 + v22) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1A43D1B38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(v8 + 64) + 7;
  v14 = ((((v13 + ((v11 + 9 + ((((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 >= a3)
  {
    v18 = 0;
    if (v12 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v15 = (a3 - v12 + 255) >> 8;
    if (v14 <= 3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v12 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v14] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v14] = 0;
      }

      else if (v18)
      {
        a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v12)
      {
        v21 = *(v6 + 56);

        v21();
      }

      else
      {
        v22 = (v11 + 9 + (((((((&a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11;
        if (v9 == v12)
        {
          v23 = *(v8 + 56);

          v23(v22);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = a2 - 1;
          }

          *((v13 + v22) & 0xFFFFFFFFFFFFFFF8) = v24;
        }
      }

      return;
    }
  }

  v19 = ~v12 + a2;
  bzero(a1, ((((v13 + ((v11 + 9 + ((((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v14 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v14] = v20;
      }

      else
      {
        *&a1[v14] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v14] = v20;
  }
}