uint64_t sub_100018FA0()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_100019098()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_1000191AC()
{
  *(sub_10006061C() + 16) = v2;
  sub_100061184(sub_10005C010, v3, &type metadata accessor for LaunchServicesSnapshot, v4, v5, v6, v7, v8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v9 = sub_10005E12C();
  sub_100017954(v9, v10, &qword_10008DA08);

  if (v0)
  {
    v11 = sub_10005EEE0();
    v12(v11);
    sub_10005D23C();
    sub_10005F454();

    sub_10005D498();
  }

  else
  {
    sub_10005D4A8();
    if (v14)
    {
      v15 = sub_100060B74();
      v16(v15);
      sub_10005D4A8();
      if (!v14)
      {
        sub_100017954(*(v1 + 120), &qword_1000A6700, &qword_10008DA08);
      }
    }

    else
    {
      sub_10005F620();
      v17();
    }

    v18 = sub_10005EEE0();
    v19(v18);
    sub_10005CD7C();
    sub_1000605D4();

    sub_100012420();
  }

  return v13();
}

uint64_t sub_100019408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  sub_100017954(*(v18 + 176), &qword_1000A6700, &qword_10008DA08);
  v28 = *(v18 + 240);
  sub_10005D23C();
  sub_10005DCD4();

  sub_10001248C();
  sub_10005F3D0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_100019504()
{
  sub_100012404();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100088D48();
  v1[4] = v3;
  sub_100017A0C(v3);
  v1[5] = v4;
  v1[6] = sub_10005F3EC();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_100088DC8();
  v1[10] = v5;
  sub_100017A0C(v5);
  v1[11] = v6;
  v1[12] = sub_10005F3EC();
  v1[13] = swift_task_alloc();
  v7 = sub_100008DC0(&qword_1000A66F0, &qword_10008D9F8);
  sub_10005E3B0(v7);
  v1[14] = sub_10005F3EC();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = sub_100088E08();
  v1[23] = v8;
  sub_100017A0C(v8);
  v1[24] = v9;
  v1[25] = sub_10005F4D4();
  v10 = sub_10005CFA0();

  return _swift_task_switch(v10);
}

uint64_t sub_1000196FC()
{
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = sub_1000124F4();
  v8(v7);
  v9 = v5 + 88;
  v10 = sub_100012498();
  v12 = v11(v10);
  if (v12 != enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    if (v12 == enum case for ToolKitIndexingReason.Changeset.full(_:))
    {
      swift_task_alloc();
      sub_100012480();
      v0[26] = v53;
      *v53 = v54;
      v53[1] = sub_10001A050;
      sub_100012624();

      return static LinkSnapshot.complete()();
    }

    if (v12 != enum case for ToolKitIndexingReason.Changeset.none(_:))
    {
LABEL_37:
      sub_100012624();

      return sub_10008AA58();
    }

    sub_100088D18();
LABEL_41:
    sub_10005CD7C();
    sub_100060094();

    sub_100012420();
    goto LABEL_42;
  }

  v13 = sub_10005F600();
  v14(v13);
  v95 = *v4;
  v15 = *(v4 + 16);

  v16 = sub_100012448();
  sub_100009158(v16, v17, v18, v1);
  sub_10005E98C();
  sub_10005BF68();
  v19 = v15 + 56;
  sub_100012500();
  sub_100060D48();
  v102 = enum case for ToolKitIndexingReason.Changeset.Provenance.launchServicesSnapshot(_:);
  v100 = enum case for ToolKitIndexingReason.Changeset.Provenance.appIntentsChange(_:);
  v97 = enum case for ToolKitIndexingReason.Changeset.Provenance.appProtectionChange(_:);
  v101 = (v3 + 8);
  v94 = enum case for ToolKitIndexingReason.Changeset.Provenance.cascadeSync(_:);
  v96 = (v3 + 96);
  v99 = (v6 + 8);
  v93 = (v6 + 16);

  v20 = 0;
  if (v2)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return static LinkSnapshot.partial(_:failIfContainerNotFound:)();
    }

    if (v21 >= v9)
    {
      break;
    }

    ++v20;
    if (*(v19 + 8 * v21))
    {
      while (1)
      {
LABEL_6:
        sub_10006037C();
        v22 = sub_100060364();
        v6(v22);
        v23 = sub_10005E150();
        v6(v23);
        v24 = sub_10005E44C();
        v26 = v25(v24);
        if (v26 == v102)
        {
          v6 = v0[18];
          v27 = *v101;
          (*v101)(v0[13], v0[10]);
          sub_100012498();
          sub_10005BFBC();
          v28 = sub_10005F62C();
          v27(v28);
        }

        else if (v26 == v100)
        {
          v29 = v0[16];
          (*v96)(v0[12], v0[10]);
          v30 = sub_10005ECCC();
          v98 = v31;
          v31(v30);
          sub_10005F384();
          sub_10005BF68();
          sub_10005D2C8(v29);
          if (!v32)
          {
            v33 = sub_10006034C();
            v98(v33);
            sub_10005AE38(&qword_1000A66F8, &type metadata accessor for LinkSnapshot);
            sub_100060134();
            if (&qword_10008D9F8)
            {
              sub_10005F698();

              v81 = *v99;
              v82 = sub_10005E44C();
              v81(v82);
              sub_100060B08();
              v83 = sub_10005E464();
              v84(v83);
              sub_100012584();
              sub_100017954(v85, v86, v87);
              sub_100012584();
              sub_100017954(v88, v89, v90);
              v91 = sub_10005FB20();
              v81(v91);

              sub_10005D23C();

              sub_10001248C();
LABEL_42:
              sub_100012624();

              __asm { BRAA            X1, X16 }
            }

            (*v99)(v0[8], v0[4]);
          }

          sub_100060328();
          sub_100060B08();
          v34();
          v35 = sub_100060FB4();
          sub_100017954(v35, v36, &qword_10008D9F8);
          sub_10005FBAC();
          sub_100009158(v37, v38, v39, v40);
          v41 = sub_10005F090();
          sub_10005EFA4(v41, v42, v29);
          v44 = v0[17];
          v43 = v0[18];
          if (v45 == 1)
          {
            (*v93)(v43, v0[9], v0[4]);
            sub_10005D2C8(v44);
            if (!v32)
            {
              sub_100017954(v0[17], &qword_1000A66F0, &qword_10008D9F8);
            }
          }

          else
          {
            (v98)(v43, v0[17], v0[4]);
          }

          v6 = v0[4];
          sub_10005D968();
          sub_100009158(v47, v48, v49, v50);
          v51 = sub_100012498();
          v52(v51);
        }

        else
        {
          if (v26 != v97 && v26 != v94)
          {
            goto LABEL_37;
          }

          sub_10005DFC4();
          sub_100060B08();
          v46();
          sub_100012498();
          sub_10005BFBC();
        }

        sub_1000600BC();
      }
    }
  }

  v56 = v0[4];
  sub_10005FB08();
  sub_100017954(v57, v58, v59);

  sub_10005E428();
  sub_100060CC8();
  sub_10005BFBC();

  sub_10005E12C();
  sub_100060CC8();
  sub_10005BF68();
  v60 = sub_10005EC70();
  sub_10005DC64(v60, v61, v56);
  if (v32)
  {
    v66 = &_swiftEmptySetSingleton;
  }

  else
  {
    v62 = sub_10005E144();
    v63(v62);
    v64 = sub_100088CF8();
    sub_10001B5A4(v64);
    v66 = v65;
    v67 = sub_100012498();
    v68(v67);
  }

  v69 = sub_100049398(v66, v95);
  v0[28] = v69;

  if (!v69[2])
  {
    sub_1000611DC();
    sub_1000124C8();
    sub_10005BF68();
    v73 = sub_10005E2A4();
    v75 = sub_100008E78(v73, v74, v19);
    v76 = v0[22];
    if (v75 == 1)
    {
      sub_100088D18();
      sub_100017954(v76, &qword_1000A66F0, &qword_10008D9F8);
      sub_10005D4A8();
      if (!v32)
      {
        sub_100017954(v0[14], &qword_1000A66F0, &qword_10008D9F8);
      }
    }

    else
    {
      sub_100017954(v0[22], &qword_1000A66F0, &qword_10008D9F8);
      sub_10005E974();
      sub_10005F620();
      v78();
    }

    goto LABEL_41;
  }

  swift_task_alloc();
  sub_100012480();
  v0[29] = v70;
  *v70 = v71;
  sub_100060304(v70);
  sub_100012624();

  return static LinkSnapshot.partial(_:failIfContainerNotFound:)();
}

uint64_t sub_10001A050()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10001A148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  sub_10005CD7C();
  v30 = v20;
  v31 = v19;
  v32 = v18[9];
  v33 = v18[8];
  v34 = v18[7];
  v35 = v18[6];

  sub_100012420();
  sub_10005F3D0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, a16, a17, a18);
}

uint64_t sub_10001A234()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10001A348()
{
  *(sub_10006061C() + 16) = v2;
  sub_100061184(sub_10005BF04, v3, &type metadata accessor for LinkSnapshot, v4, v5, v6, v7, v8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v9 = sub_10005E12C();
  sub_100017954(v9, v10, &qword_10008D9F8);

  if (v0)
  {
    v11 = sub_10005EEE0();
    v12(v11);
    sub_10005D23C();
    sub_10005F454();

    sub_10005D498();
  }

  else
  {
    sub_10005D4A8();
    if (v14)
    {
      v15 = sub_100060B74();
      v16(v15);
      sub_10005D4A8();
      if (!v14)
      {
        sub_100017954(*(v1 + 120), &qword_1000A66F0, &qword_10008D9F8);
      }
    }

    else
    {
      sub_10005F620();
      v17();
    }

    v18 = sub_10005EEE0();
    v19(v18);
    sub_10005CD7C();
    sub_1000605D4();

    sub_100012420();
  }

  return v13();
}

uint64_t sub_10001A5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  v28 = *(v18 + 216);
  sub_10005D23C();
  sub_10005DCD4();

  sub_10001248C();
  sub_10005F3D0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_10001A688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  sub_100017954(*(v18 + 176), &qword_1000A66F0, &qword_10008D9F8);
  v28 = *(v18 + 240);
  sub_10005D23C();
  sub_10005DCD4();

  sub_10001248C();
  sub_10005F3D0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

void sub_10001A784(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 56;
  sub_10005EE64();
  if (v3)
  {
    while (1)
    {
LABEL_5:
      sub_10005F1C4();
      sub_100060274();
      sub_100054CF0(v7, v8, v9);
    }
  }

  while (1)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v6 >= v2)
    {

      return;
    }

    ++v4;
    if (*(v5 + 8 * v6))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_10001A83C(uint64_t a1)
{
  v3 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v31[1] = v1;
  v40 = _swiftEmptyArrayStorage;
  v38 = v4;
  sub_100081C98(0, v7, 0);
  v8 = v40;
  result = sub_100083920();
  v11 = result;
  v12 = v38;
  v14 = v13;
  v15 = 0;
  v16 = v38 + 56;
  v34 = v38 + 56;
  v35 = WFLocalizationUsageDisplay;
  v32 = v38 + 64;
  v33 = v7;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(v12 + 32))
    {
      v17 = v11 >> 6;
      if ((*(v16 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v12 + 36) != v10)
      {
        goto LABEL_25;
      }

      v39 = v10;
      swift_bridgeObjectRetain_n();
      sub_1000889F8();
      v18 = v37;
      v19 = v35;
      *&v6[*(v37 + 20)] = v35;
      *&v6[*(v18 + 24)] = 0;
      v20 = v19;

      v40 = v8;
      v22 = v8[2];
      v21 = v8[3];
      if (v22 >= v21 >> 1)
      {
        sub_100081C98(v21 > 1, v22 + 1, 1);
        v8 = v40;
      }

      v8[2] = v22 + 1;
      result = sub_10005B6A8(v6, v8 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v22);
      if (v14)
      {
        goto LABEL_29;
      }

      v12 = v38;
      v23 = 1 << *(v38 + 32);
      v16 = v34;
      if (v11 >= v23)
      {
        goto LABEL_26;
      }

      v24 = *(v34 + 8 * v17);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v38 + 36) != v39)
      {
        goto LABEL_28;
      }

      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v17 << 6;
        v27 = v17 + 1;
        v28 = (v32 + 8 * v17);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_100011DC4(v11, v39, 0);
            v12 = v38;
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_100011DC4(v11, v39, 0);
        v12 = v38;
      }

LABEL_19:
      if (++v15 == v33)
      {
        return v8;
      }

      v14 = 0;
      v10 = *(v12 + 36);
      v11 = v23;
      if (v23 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10001AB74(uint64_t a1)
{
  v49 = sub_100089918();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000899A8();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v44 = v7;
    v37 = v1;
    v53 = _swiftEmptyArrayStorage;
    v10 = v8;
    sub_100081BE8(0, v8, 0);
    v11 = v53;
    result = sub_100083920();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v52 = a1 + 56;
    v45 = v5;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v5 + 32;
    v38 = a1 + 64;
    v39 = v10;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v15 < 1 << *(a1 + 32))
      {
        v17 = v15 >> 6;
        if ((*(v52 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_26;
        }

        v51 = v13;
        v50 = v12;
        v18 = v46;
        v20 = v48;
        v19 = v49;
        (*(v46 + 16))(v48, *(a1 + 48) + *(v46 + 72) * v15, v49);
        v21 = v44;
        sub_1000898D8();
        v22 = v20;
        v23 = v11;
        (*(v18 + 8))(v22, v19);
        v53 = v11;
        v25 = v11[2];
        v24 = v11[3];
        if (v25 >= v24 >> 1)
        {
          sub_100081BE8(v24 > 1, v25 + 1, 1);
          v23 = v53;
        }

        v23[2] = v25 + 1;
        v11 = v23;
        result = (*(v45 + 32))(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v25, v21, v47);
        if (v51)
        {
          goto LABEL_30;
        }

        a1 = v40;
        v26 = 1 << *(v40 + 32);
        if (v15 >= v26)
        {
          goto LABEL_27;
        }

        v27 = *(v52 + 8 * v17);
        if ((v27 & (1 << v15)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v40 + 36) != v50)
        {
          goto LABEL_29;
        }

        v28 = v27 & (-2 << (v15 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v29 = v39;
        }

        else
        {
          v30 = v17 << 6;
          v31 = v17 + 1;
          v32 = (v38 + 8 * v17);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v35 = v39;
              result = sub_100011DC4(v15, v50, 0);
              v29 = v35;
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_19;
            }
          }

          v36 = v39;
          result = sub_100011DC4(v15, v50, 0);
          v29 = v36;
        }

LABEL_19:
        if (++v16 == v29)
        {
          return v11;
        }

        v13 = 0;
        v12 = *(a1 + 36);
        v15 = v26;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AF5C(uint64_t a1)
{
  v53 = sub_1000899A8();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100089888();
  v6 = __chkstk_darwin(v5);
  v9 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v50 = v6;
  v40[1] = v1;
  v60 = _swiftEmptyArrayStorage;
  v54 = v7;
  sub_100081DB8(0, v10, 0);
  v12 = v54;
  v11 = v60;
  result = sub_100083920();
  v16 = 0;
  v17 = a1 + 56;
  v49 = v3 + 16;
  v48 = enum case for TypeInstance.type(_:);
  v51 = v3;
  v46 = v3 + 8;
  v47 = (v12 + 104);
  v44 = a1;
  v45 = v12 + 32;
  v41 = a1 + 64;
  v42 = v10;
  v43 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v18 = result >> 6;
      v19 = 1 << result;
      if ((*(v17 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v14)
      {
        goto LABEL_25;
      }

      v58 = v15;
      v56 = result;
      v57 = v14;
      v55 = v16;
      v20 = *(a1 + 48);
      v21 = v51;
      v22 = v20 + *(v51 + 72) * result;
      v23 = *(v51 + 16);
      v59 = v11;
      v25 = v52;
      v24 = v53;
      v23(v52, v22, v53);
      v26 = swift_allocBox();
      v23(v27, v25, v24);
      *v9 = v26;
      v28 = v50;
      (*v47)(v9, v48, v50);
      v29 = v25;
      v11 = v59;
      (*(v21 + 8))(v29, v24);
      v60 = v11;
      v31 = v11[2];
      v30 = v11[3];
      if (v31 >= v30 >> 1)
      {
        sub_100081DB8(v30 > 1, v31 + 1, 1);
        v11 = v60;
      }

      v11[2] = v31 + 1;
      result = (*(v54 + 32))(v11 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v31, v9, v28);
      if (v58)
      {
        goto LABEL_29;
      }

      v17 = v43;
      a1 = v44;
      v32 = 1 << *(v44 + 32);
      result = v56;
      if (v56 >= v32)
      {
        goto LABEL_26;
      }

      v33 = *(v43 + 8 * v18);
      if ((v33 & v19) == 0)
      {
        goto LABEL_27;
      }

      if (*(v44 + 36) != v57)
      {
        goto LABEL_28;
      }

      v34 = v33 & (-2 << (v56 & 0x3F));
      if (v34)
      {
        v32 = __clz(__rbit64(v34)) | v56 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v18 << 6;
        v36 = v18 + 1;
        v37 = (v41 + 8 * v18);
        while (v36 < (v32 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_100011DC4(v56, v57, 0);
            v32 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        sub_100011DC4(v56, v57, 0);
      }

LABEL_19:
      v16 = v55 + 1;
      if (v55 + 1 == v42)
      {
        return v11;
      }

      v15 = 0;
      v14 = *(a1 + 36);
      result = v32;
      if (v32 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_10001B38C(uint64_t a1)
{
  v3 = sub_100089BA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v15[1] = v1;
    v22 = _swiftEmptyArrayStorage;
    sub_100081D20(0, v7, 0);
    v8 = v22;
    v21 = sub_10008A0B8();
    v9 = *(v21 - 8);
    v10 = *(v9 + 16);
    v9 += 16;
    v20 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = enum case for RuntimeRequirement.platform(_:);
    v19 = v9;
    v16 = *(v9 + 56);
    v17 = v4 + 32;
    do
    {
      v20(v6, v11, v21);
      (*(v4 + 104))(v6, v18, v3);
      v22 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_100081D20(v12 > 1, v13 + 1, 1);
        v8 = v22;
      }

      v8[2] = v13 + 1;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v6, v3);
      v11 += v16;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_10001B5A4(uint64_t a1)
{
  v4 = 0;
  sub_10008A418();
  sub_10005EE64();
  if (v2)
  {
    while (1)
    {
LABEL_5:
      sub_10005F1C4();
      sub_100060274();
      sub_100054CF0(v6, v7, v8);
    }
  }

  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= v1)
    {

      return;
    }

    ++v4;
    if (*(a1 + 64 + 8 * v5))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_10001B674(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  sub_10005AE38(&qword_1000A66C8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  v9 = sub_10008A418();
  v16 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_10005B654(v11, v6);
      sub_100055054(v8, v6);
      sub_10005B2EC(v8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
      v11 += v12;
      --v10;
    }

    while (v10);

    return v16;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

uint64_t sub_10001B82C(uint64_t a1)
{
  v2 = sub_1000899A8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  sub_10005AE38(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v9 = sub_10008A418();
  v20 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19 = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_100055C68(v8, v6);
      (*(v11 - 8))(v8, v2);
      v15 += v16;
      --v10;
    }

    while (v10);

    return v20;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

uint64_t sub_10001B9EC(uint64_t a1)
{
  v2 = sub_100089888();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  sub_10005AE38(&qword_1000A6660, &type metadata accessor for TypeInstance);
  v9 = sub_10008A418();
  v20 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19 = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_1000559A0(v8, v6);
      (*(v11 - 8))(v8, v2);
      v15 += v16;
      --v10;
    }

    while (v10);

    return v20;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

uint64_t sub_10001BBAC(uint64_t a1)
{
  result = sub_10008A418();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_100054CF0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BC6C(uint64_t a1)
{
  v2 = sub_1000897A8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  sub_10005AE38(&qword_1000A6638, &type metadata accessor for TypedValue);
  v9 = sub_10008A418();
  v20 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19 = a1;
    v15 = a1 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_1000556D8(v8, v6);
      (*(v11 - 8))(v8, v2);
      v15 += v16;
      --v10;
    }

    while (v10);

    return v20;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

void *sub_10001BE2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10004F5AC(*(a1 + 16), 0);
  v4 = sub_10005B040(&v6, v3 + 4, v2, a1);
  sub_100011E9C(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10001BEBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10008A9D8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10001BF0C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100057EF0(result, 1, sub_100080604);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001BFD8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100057EF0(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10001C0EC()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B3CC(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return sub_10005E694();
}

uint64_t sub_10001C158()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_10005FD14();
  sub_10005B39C(v2, v3);
  os_unfair_lock_unlock(v1 + 6);

  return sub_10005E694();
}

uint64_t sub_10001C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);

  os_unfair_lock_lock(v5 + 6);
  sub_10005FD14();
  sub_10005B344();
  os_unfair_lock_unlock(v5 + 6);

  sub_1000899A8();
  sub_100017A1C();
  return (*(v6 + 8))(a3);
}

uint64_t sub_10001C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 32);

  os_unfair_lock_lock(v5 + 6);
  sub_10005FD14();
  sub_10005B2D0();
  os_unfair_lock_unlock(v5 + 6);

  return sub_10005B2EC(a3, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
}

uint64_t sub_10001C308()
{
  sub_10005F538();
  if ((sub_100089998() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);

  return sub_100088A38();
}

uint64_t sub_10001C364()
{
  sub_1000899A8();
  sub_10005D134();
  sub_10005AE38(v0, v1);
  sub_1000124C8();
  sub_10008A218();
  type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_100088A68();
  sub_10005CCF0();
  sub_10005AE38(v2, v3);
  sub_1000124C8();
  return sub_10008A218();
}

Swift::Int sub_10001C414()
{
  sub_10008AB08();
  sub_1000899A8();
  sub_10005D134();
  v2 = sub_10005AE38(v0, v1);
  sub_100060F30(v2, v3, v4, v5, v6, v7, v8, v9, v21, v23);
  sub_10008A218();
  type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  sub_100088A68();
  sub_10005CCF0();
  v12 = sub_10005AE38(v10, v11);
  sub_100060F30(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  sub_10008A218();
  return sub_10008AB28();
}

Swift::Int sub_10001C4E4(uint64_t a1)
{
  sub_10008AB08();
  sub_1000899A8();
  sub_10005D134();
  v3 = sub_10005AE38(v1, v2);
  sub_100060F30(v3, v4, v5, v6, v7, v8, v9, v10, v22, v24);
  sub_10008A218();
  sub_100088A68();
  sub_10005CCF0();
  v13 = sub_10005AE38(v11, v12);
  sub_100060F30(v13, v14, v15, v16, v17, v18, v19, v20, v23, v25);
  sub_10008A218();
  return sub_10008AB28();
}

uint64_t sub_10001C5A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16) && (result = sub_100081308(a2, a3), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(*(v5 + 56) + 8 * result);
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_10001C614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    result = sub_100081308(a2, a3);
    if (v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a1;
      v11 = *(*a1 + 24);
      sub_100008DC0(&qword_1000A6488, &qword_10008D890);
      sub_10008A9A8(isUniquelyReferenced_nonNull_native, v11);

      result = sub_10008A9B8();
      *a1 = v14;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a1;
    result = sub_10004FB24(a4, a2, a3, v13);
    *a1 = v15;
  }

  return result;
}

uint64_t sub_10001C72C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000899A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a2, v8);
  if (a4)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a1;
    sub_10004FC4C(a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *a1 = v15;
  }

  else
  {
    sub_10004F89C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10001C884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = a3(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
    result = 0;
  }

  *a4 = v8;
  a4[1] = result;
  return result;
}

uint64_t sub_10001C8F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005B654(a2, v10);
  if (a4)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a1;
    sub_10004FE20(a3, a4, v10, isUniquelyReferenced_nonNull_native);
    *a1 = v14;
  }

  else
  {
    sub_10004F9E0(v10);
  }

  return sub_10005B2EC(v10, type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey);
}

uint64_t sub_10001CA10()
{
  sub_100017674();
  sub_100009BA0();

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_10001CA40()
{
  sub_100008DC0(&qword_1000A66B0, &qword_10008D9C0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  v0[2] = v1;
  sub_100008DC0(&qword_1000A66B8, &qword_10008D9C8);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  v0[3] = v2;
  sub_100008DC0(&qword_1000A66C0, &unk_10008D9D0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v0[4] = v3;
  return v0;
}

id ToolKitIndexer.init(clientIdentifier:)(uint64_t a1, uint64_t a2)
{

  sub_1000896F8();
  v4 = sub_1000896A8();
  if (v3)
  {
    type metadata accessor for ToolKitIndexer();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v2[OBJC_IVAR___WFToolKitIndexer_toolDatabase] = v4;
    v6.receiver = v2;
    v6.super_class = type metadata accessor for ToolKitIndexer();
    return objc_msgSendSuper2(&v6, "init");
  }
}

uint64_t ToolKitIndexer.reindex(request:)()
{
  sub_100012404();
  v1[28] = v2;
  v1[29] = v0;
  v3 = sub_100089008();
  v1[30] = v3;
  sub_100017A0C(v3);
  v1[31] = v4;
  v1[32] = sub_10005F3EC();
  v1[33] = swift_task_alloc();
  v5 = sub_100089408();
  v1[34] = v5;
  sub_100017A0C(v5);
  v1[35] = v6;
  v1[36] = sub_10005F4D4();
  v7 = sub_100088E08();
  v1[37] = v7;
  sub_100017A0C(v7);
  v1[38] = v8;
  v1[39] = sub_10005F4D4();
  v9 = sub_100008DC0(&qword_1000A6288, &qword_10008D698);
  sub_10005E3B0(v9);
  v1[40] = sub_10005F4D4();
  v10 = sub_100008DC0(&qword_1000A6290, &qword_10008D6A0);
  v1[41] = v10;
  sub_10005E3B0(v10);
  v1[42] = sub_10005F3EC();
  v1[43] = swift_task_alloc();
  v11 = sub_100089348();
  v1[44] = v11;
  sub_100017A0C(v11);
  v1[45] = v12;
  v1[46] = sub_10005F3EC();
  v1[47] = swift_task_alloc();
  v13 = sub_1000889E8();
  v1[48] = v13;
  sub_100017A0C(v13);
  v1[49] = v14;
  v1[50] = *(v15 + 64);
  v1[51] = sub_10005F3EC();
  v1[52] = swift_task_alloc();
  v16 = sub_10005CFA0();

  return _swift_task_switch(v16);
}

uint64_t sub_10001CED4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 232);
  *(v0 + 424) = os_transaction_create();
  sub_100088F08();
  *(v0 + 432) = CACurrentMediaTime();
  *(v0 + 440) = *(v4 + OBJC_IVAR___WFToolKitIndexer_toolDatabase);
  sub_100089388();
  (*(v3 + 104))(v1, enum case for ToolDatabase.Environment.simulation(_:), v2);
  sub_10005AE38(&qword_1000A6298, &type metadata accessor for ToolDatabase.Environment);
  sub_10005D9DC();
  sub_10005F910();
  v5 = sub_10008A228();
  v6 = *(v3 + 8);
  v7 = sub_10005EC4C();
  v6(v7);
  v8 = sub_10005E494();
  v6(v8);
  if (v5)
  {
    sub_100088F28();
    v9 = sub_100088FF8();
    v10 = sub_10008A5E8();
    if (sub_10005F6E4(v10))
    {
      sub_10005E3C8();
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Skipping re-indexing due to simulation mode", v11, 2u);
      sub_10005D4F8();
    }

    v12 = *(v0 + 256);

    v13 = sub_1000124C8();
    v14(v13);
    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10005DC7C();
    (*(v16 + 8))(v12);

    sub_10001248C();
    sub_10005F6C8();

    __asm { BRAA            X1, X16 }
  }

  v19 = *(v0 + 416);
  v20 = *(v0 + 384);
  v21 = *(v0 + 320);
  v22 = *(v0 + 232);
  v45 = *(v0 + 224);
  v23 = objc_opt_self();
  *(v0 + 448) = v23;
  v24 = [v23 defaultCenter];
  v25 = sub_10008A678();
  v26 = sub_10008A1E8();
  sub_10005A9BC(v25, 0, v26, v24);

  v27 = enum case for ToolDatabase.Transaction.Mode.immediate(_:);
  v28 = sub_100089358();
  sub_100017A1C();
  (*(v29 + 104))(v21, v27, v28);
  sub_10005DC34();
  sub_100009158(v30, v31, v32, v33);
  v34 = sub_1000124F4();
  v35(v34, v19, v20);
  v36 = swift_allocObject();
  *(v0 + 456) = v36;
  *(v36 + 16) = v22;
  *(v36 + 24) = v45;
  sub_10005F360();
  v37();
  v38 = v22;
  v39 = v45;
  swift_task_alloc();
  sub_100012480();
  *(v0 + 464) = v40;
  *v40 = v41;
  v40[1] = sub_10001D344;
  sub_10005F6C8();

  return ToolDatabase.inTransaction<A>(mode:work:)(v42);
}

uint64_t sub_10001D344()
{
  sub_100012604();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 472) = v0;

  sub_100017954(v5, &qword_1000A6288, &qword_10008D698);

  sub_100012554();

  return _swift_task_switch(v9);
}

uint64_t sub_10001D48C()
{
  sub_100012604();
  sub_1000893D8();
  sub_1000893C8();
  sub_10005F668();
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_10001D538;
  sub_10005EB1C();
  sub_10005ECB4();

  return ToolDatabase.checkpointWAL(maxRetries:waitInterval:)(v2);
}

uint64_t sub_10001D538()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 488) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10001D630()
{
  v1 = *(v0 + 336);
  sub_10005BF68();
  sub_10005D2C8(v1);
  if (v2)
  {
    sub_100017954(*(v0 + 336), &qword_1000A6290, &qword_10008D6A0);
  }

  else
  {
    v3 = *(v0 + 488);
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 336), *(v0 + 296));
    v4 = sub_100088DF8();
    if (v3)
    {
      v6 = *(v0 + 344);
      swift_unknownObjectRelease();
      v7 = sub_10005E088();
      v8(v7);
      sub_100017954(v6, &qword_1000A6290, &qword_10008D6A0);
      (*(*(v0 + 392) + 8))(*(v0 + 416), *(v0 + 384));

      sub_10005D498();
      goto LABEL_10;
    }

    v10 = v4;
    v11 = v5;
    v12 = *(v0 + 304);
    v13 = *(v0 + 288);
    v39 = *(v0 + 296);
    v40 = *(v0 + 312);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v38 = [*(v0 + 448) defaultCenter];
    v37 = sub_10008A688();
    sub_100008DC0(&qword_1000A62A0, &qword_10008D6B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008D610;
    *(v0 + 192) = 0x657365676E616863;
    *(v0 + 200) = 0xE900000000000074;
    sub_10005EC64();
    sub_10008A8B8();
    *(inited + 96) = sub_100008DC0(&qword_1000A62A8, qword_10008D6C0);
    *(inited + 72) = v10;
    *(inited + 80) = v11;
    *(v0 + 208) = 0x656372756F73;
    *(v0 + 216) = 0xE600000000000000;
    v17 = sub_10005E088();
    sub_10005AB3C(v17, v18);
    sub_10005EC64();
    sub_10008A8B8();
    (*(v14 + 104))(v13, enum case for ToolDatabase.DidChangeNotificationSource.local(_:), v15);
    v19 = sub_1000893F8();
    v20 = sub_10005F384();
    v21(v20);
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = v19;
    sub_10008A1E8();
    v22 = sub_10005F5F4();
    sub_10005A9BC(v22, v23, v24, v38);

    v25 = sub_10005E088();
    sub_10005ABA8(v25, v26);
    (*(v12 + 8))(v40, v39);
  }

  sub_100088F28();
  v27 = sub_100088FF8();
  v28 = sub_10008A5E8();
  if (sub_10005F6E4(v28))
  {
    v29 = *(v0 + 432);
    sub_10005E048();
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = CACurrentMediaTime() - v29;
    _os_log_impl(&_mh_execute_header, v27, v28, "Finished in %fs", v30, 0xCu);
    sub_10005D4F8();
  }

  v31 = *(v0 + 344);

  v32 = sub_10005D9DC();
  v33(v32);
  sub_100017954(v31, &qword_1000A6290, &qword_10008D6A0);
  v34 = sub_10005F2C4();
  v35(v34);
  swift_unknownObjectRelease();

  sub_100012420();
LABEL_10:

  return v9();
}

uint64_t sub_10001DAF4()
{
  swift_unknownObjectRelease();
  sub_10005DC7C();
  v0 = sub_1000604A8();
  v1(v0);

  sub_10001248C();

  return v2();
}

uint64_t sub_10001DBE4()
{
  v1 = *(v0 + 344);
  swift_unknownObjectRelease();
  sub_100017954(v1, &qword_1000A6290, &qword_10008D6A0);
  sub_10005DC7C();
  v2 = sub_1000604A8();
  v3(v2);

  sub_10001248C();

  return v4();
}

uint64_t sub_10001DCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = _s23IndexingPreflightResultVMa(0);
  v5[8] = swift_task_alloc();
  v6 = sub_100089008();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_1000889E8();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_100088E08();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001DEB8);
}

uint64_t sub_10001DEB8()
{
  sub_100060400();
  sub_10001F270(v0[5]);
  v1 = v0[5];
  v2 = v0[3];
  sub_100088A98();
  v3 = v1;
  v0[20] = sub_100088A88();
  v8 = (&async function pointer to dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(transaction:) + async function pointer to dispatch thunk of ToolKitIndexingPolicy.effectiveChangeset(transaction:));
  swift_task_alloc();
  sub_100012480();
  v0[21] = v4;
  *v4 = v5;
  v4[1] = sub_10001E010;
  v6 = v0[19];

  return v8(v6, v2);
}

uint64_t sub_10001E010()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10001E114(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10005F7EC();
  sub_100060250();
  v27 = v26[19];
  v28 = v26[16];
  v78 = v26[15];
  v79 = v26[18];
  v29 = v26[5];
  sub_100089818();
  sub_100089808();
  sub_100088F08();
  sub_1000897D8();

  v30 = sub_10005E51C();
  v31(v30);
  sub_100088F28();
  (*(v28 + 16))(v79, v27, v78);
  v32 = v29;
  v33 = sub_100088FF8();
  v34 = sub_10008A5E8();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v26[18];
  v37 = v26[16];
  v38 = v26[10];
  v39 = v26[9];
  if (v35)
  {
    v79 = v26[11];
    v40 = v26[5];
    swift_slowAlloc();
    v78 = v39;
    a11 = sub_10005F8BC();
    sub_10005DC40();
    a12 = swift_slowAlloc();
    a15 = a12;
    *v39 = 138412802;
    *(v39 + 4) = v40;
    *a11 = v40;
    sub_100060DC8();
    v41 = v40;
    sub_100088DD8();
    log = v33;
    HIDWORD(a9) = v34;
    v42 = *(v37 + 8);
    v43 = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44 = sub_100012498();
    v42(v44);
    v45 = sub_10005DB50();
    sub_100080D2C(v45, v46, v47);
    sub_10005E7B8();

    *(v39 + 14) = v36;
    *(v39 + 22) = 1024;
    *(v39 + 24) = BSPthreadGetCurrentPriority();
    _os_log_impl(&_mh_execute_header, v33, BYTE4(a9), "Indexing for request: %@, changeset: %s, priority: %d", v39, 0x1Cu);
    sub_100017954(a11, &qword_1000A6460, &qword_10008D878);
    sub_10005D4F8();

    sub_10005B1BC(a12);
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v38 + 8))(v79, v39);
  }

  else
  {

    v42 = *(v37 + 8);
    v43 = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v48 = sub_100012498();
    v42(v48);
    v49 = sub_10005D9DC();
    v51(v49, v50);
  }

  v26[23] = v42;
  v52 = v26[16];
  v53 = v26[17];
  v54 = v26[15];
  v55 = enum case for ToolKitIndexingReason.Changeset.none(_:);
  v56 = *(v52 + 104);
  v26[24] = v56;
  v26[25] = (v52 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v56(v53, v55, v54);
  sub_10005AE38(&qword_1000A6458, &type metadata accessor for ToolKitIndexingReason.Changeset);
  sub_100012498();
  v57 = sub_10008A228();
  v26[26] = v43;
  v58 = sub_1000124C8();
  v42(v58);
  if (v57)
  {
    v59 = v26[15];
    (v42)(v26[19], v59);
    sub_10005DA80();
    sub_100009158(v60, v61, v62, v59);
    sub_1000603F4();

    sub_100012420();
    sub_10005F3D0();

    return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, log, a11, a12, v78, v79, a15, a16, a17, a18);
  }

  else
  {
    swift_task_alloc();
    sub_100012480();
    v26[27] = v72;
    *v72 = v73;
    v72[1] = sub_10001E518;
    sub_10005F3D0();

    return sub_10000AA54(v74, v75, v76);
  }
}

uint64_t sub_10001E518()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

void sub_10001E610()
{
  sub_10001F660();
  v2 = v1;
  v37 = v0;
  v0[29] = v1;
  v3 = sub_10008391C();
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v38 = v2;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = sub_10008A928();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v38 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v9 = [v7 localizationUsage];
    v10 = sub_10008A268();
    v12 = v11;
    if (v10 == sub_10008A268() && v12 == v13)
    {
    }

    else
    {
      sub_100060D08();
      v15 = sub_10008AA68();

      if ((v15 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_10008A948();
    sub_10008A978();
    sub_10008A988();
    sub_10008A958();
LABEL_15:
    ++v4;
  }

  v16 = v37;
  v17 = v37[28];
  v18 = v37[19];
  v19 = v37[3];
  v37[30] = _swiftEmptyArrayStorage;
  type metadata accessor for ToolKitIndexer.SharedIndexingState();
  sub_100009BA0();
  v20 = swift_allocObject();
  v37[31] = v20;
  sub_10001CA40();
  sub_100029630(v19, v18);
  if (v17)
  {
    v26 = v37[23];
    v27 = v37[8];

    sub_10005CD08();
    sub_10005B2EC(v27, v28);
    v29 = sub_10005ED94();
    v26(v29);
    sub_1000603F4();
    sub_10005F09C();

    sub_10005D498();
    sub_10005F6C8();

    __asm { BRAA            X1, X16 }
  }

  sub_100028BEC(v37[3], v37[19], _swiftEmptyArrayStorage, v21, v22, v23, v24, v25, v36, v37, v38, _swiftEmptyArrayStorage, v39, v40, v41, v42, v43, v44, v45, v46);
  v16[32] = 0;

  type metadata accessor for ContainerIndexer();
  sub_10005D504();
  v32 = swift_allocObject();
  v16[33] = v32;
  *(v32 + 16) = v20;
  *(v32 + 24) = _swiftEmptyArrayStorage;
  type metadata accessor for TypeIndexer();
  sub_100009BA0();
  swift_allocObject();
  v33 = sub_10005D9B8();
  v16[34] = sub_100013468(v33, v20, v32);
  swift_retain_n();

  v34 = swift_task_alloc();
  v16[35] = v34;
  *v34 = v16;
  v34[1] = sub_10001E988;
  sub_10005F6C8();

  sub_100020080();
}

uint64_t sub_10001E988()
{
  sub_100012404();
  sub_100012474();
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;

  v3 = sub_10005CFA0();

  return _swift_task_switch(v3);
}

uint64_t sub_10001EA6C()
{
  sub_1000615C8();
  sub_10005EC9C();
  v1 = *(v0 + 184);
  (*(v0 + 192))(*(v0 + 136), enum case for ToolKitIndexingReason.Changeset.full(_:), *(v0 + 120));
  sub_100012498();
  v2 = sub_100088DE8();
  v3 = sub_1000124C8();
  v1(v3);
  if (v2)
  {
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    v4[1] = sub_10001EBC0;
    sub_10005E7C4(*(v0 + 24));
    sub_1000615B4();

    return sub_100026644(v5, v6, v7, v8);
  }

  else
  {

    *(v0 + 304) = *(v0 + 256);
    v10 = swift_task_alloc();
    *(v0 + 312) = v10;
    *v10 = v0;
    sub_10005E9CC(v10);
    sub_10005E7C4(*(v0 + 24));
    sub_1000615B4();

    return sub_100026758();
  }
}

uint64_t sub_10001EBC0()
{
  sub_100012604();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  v3[37] = v0;

  if (v0)
  {

    v7 = sub_10005CFA0();

    return _swift_task_switch(v7);
  }

  else
  {
    v3[38] = 0;
    v8 = swift_task_alloc();
    v3[39] = v8;
    *v8 = v5;
    sub_10005E9CC(v8);
    sub_10005E7C4(v3[3]);

    return sub_100026758();
  }
}

uint64_t sub_10001ED3C()
{
  sub_100012404();
  sub_100012474();
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;

  v3 = sub_10005CFA0();

  return _swift_task_switch(v3);
}

uint64_t sub_10001EE3C()
{
  sub_10005EAC8();
  v1 = v0[38];
  sub_10004887C(v0[8]);
  if (v1)
  {
    v2 = v0[23];
    v3 = v0[8];

    sub_10005CD08();
    sub_10005B2EC(v3, v4);
    v5 = sub_10005DC4C();
    v2(v5);
    sub_1000603F4();
    sub_10005F09C();

    sub_10005D498();
  }

  else
  {
    sub_1000488D0(v0[8] + *(v0[7] + 20));
    sub_100089368();
    sub_100089368();
    v7 = v0[15];
    v8 = v0[2];
    sub_10005CD08();
    sub_10005B2EC(v9, v10);

    sub_10005E0AC();
    v11();
    sub_100009158(v8, 0, 1, v7);
    sub_1000603F4();

    sub_100012420();
  }

  return v12();
}

uint64_t sub_10001F058()
{
  sub_10005EC9C();

  sub_10005EF50();

  sub_10001248C();

  return v0();
}

uint64_t sub_10001F0F0()
{
  sub_10005EC9C();
  (*(v0 + 184))(*(v0 + 152), *(v0 + 120));
  sub_10005EF50();

  sub_10001248C();

  return v1();
}

uint64_t sub_10001F194()
{
  sub_100060400();
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);

  sub_10005CD08();
  sub_10005B2EC(v2, v3);
  v4 = sub_10005DB50();
  v1(v4);
  sub_10005EF50();

  sub_10001248C();

  return v5();
}

void sub_10001F270(uint64_t a1)
{
  sub_1000602E0();
  v2 = v1;
  v3 = sub_100008DC0(&qword_1000A6710, &qword_10008DA10);
  sub_10005E3B0(v3);
  sub_1000602BC();
  __chkstk_darwin(v4);
  v6 = &v39 - v5;
  v7 = sub_100088EC8();
  sub_100012368();
  v40 = v8;
  v10 = __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_100008DC0(&qword_1000A6718, &qword_10008DA18);
  sub_10005E3B0(v15);
  sub_1000602BC();
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = sub_100088EE8();
  sub_100012368();
  __chkstk_darwin(v20);
  sub_1000123E8();
  v39 = v2;
  sub_100088EF8();
  if (sub_100008E78(v18, 1, v19) == 1)
  {
    v21 = &qword_1000A6718;
    v22 = &qword_10008DA18;
    v23 = v18;
LABEL_5:
    sub_100017954(v23, v21, v22);
LABEL_6:
    sub_1000601E4();
    return;
  }

  sub_10005E458();
  v24();
  sub_100088ED8();
  v25 = sub_10005EFF4();
  if (sub_100008E78(v25, v26, v7) == 1)
  {
    v27 = sub_10005FF1C();
    v28(v27);
    v21 = &qword_1000A6710;
    v22 = &qword_10008DA10;
    v23 = v6;
    goto LABEL_5;
  }

  v29 = v6;
  v30 = v40;
  (*(v40 + 32))(v14, v29, v7);
  v31 = sub_10005F2C4();
  v32(v31);
  if ((*(v30 + 88))(v12, v7) == enum case for ToolKitIndexingRequest.TestingConfig.Failure.retryingError(_:))
  {
    (*(v30 + 96))(v12, v7);
    v33 = *v12;
    if (sub_100088EB8() < v33)
    {
      sub_100088F18();
      sub_10005AE38(&qword_1000A6720, &type metadata accessor for ToolKitTestingRetryingError);
      sub_10005FBFC();
      sub_10005ECC0();
      swift_allocError();
      sub_10005D92C();
      (*(v34 + 104))();
      swift_willThrow();
    }

    v35 = sub_10005E810();
    v36(v35);
    v37 = sub_10005FF1C();
    v38(v37);
    goto LABEL_6;
  }

  sub_10008AA58();
  __break(1u);
}

void sub_10001F660()
{
  sub_1000611A4();
  v2 = type metadata accessor for ToolKitIndexer.LocaleWithUsage(0);
  sub_100012368();
  v125 = v3;
  v5 = __chkstk_darwin(v4);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  sub_100060BFC();
  sub_100088A68();
  sub_100012368();
  v128 = v9;
  v129 = v8;
  __chkstk_darwin(v8);
  sub_10005CFB0();
  v124 = v10;
  sub_10005EC34();
  __chkstk_darwin(v11);
  v121 = &v116 - v12;
  sub_10005EC34();
  __chkstk_darwin(v13);
  v122 = &v116 - v14;
  sub_10005FA24();
  v15 = sub_100089008();
  sub_100012368();
  v131 = v16;
  __chkstk_darwin(v17);
  sub_10005CFB0();
  v127 = v18;
  sub_10005EC34();
  __chkstk_darwin(v19);
  v126 = &v116 - v20;
  sub_10005EC34();
  v22 = __chkstk_darwin(v21);
  v24 = &v116 - v23;
  __chkstk_darwin(v22);
  v26 = &v116 - v25;
  sub_10005EC34();
  __chkstk_darwin(v27);
  sub_100060BE8();
  sub_100088A98();
  v28 = sub_100088A78();
  sub_10001A83C(v28);
  sub_100060280();

  v29 = sub_10001B674(0);
  v134 = v29;
  v30 = *(v29 + 16);
  v130 = v2;
  if (!v30)
  {
    sub_100088F28();
    v31 = sub_100088FF8();
    v32 = sub_10008A5D8();
    if (sub_10005F6E4(v32))
    {
      sub_10005E3C8();
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No preferred localizations. Falling back to English", v33, 2u);
      v2 = v130;
      sub_10005D4F8();
    }

    sub_10006025C();
    v34(v1, v15);
  }

  v35 = &unk_10008D000;
  if (VCIsInternalBuild() && *(v29 + 16) >= 0x15uLL)
  {
    v119 = v24;
    v120 = v15;
    sub_100088A58();
    v36 = v26;
    sub_100088F28();
    v37 = v121;
    v38 = sub_10005DC1C();
    v118 = v39;
    v117 = v40;
    (v40)(v38);
    v41 = sub_100088FF8();
    v42 = sub_10008A5C8();
    v43 = os_log_type_enabled(v41, v42);
    v123 = v0;
    if (v43)
    {
      sub_10005E048();
      v44 = swift_slowAlloc();
      sub_10005DC40();
      v45 = swift_slowAlloc();
      v133 = v45;
      *v44 = 136315138;
      sub_10005CCF0();
      sub_10005AE38(v46, v47);
      v116 = v36;
      v48 = v129;
      sub_10008AA28();
      v121 = *(v128 + 8);
      (v121)(v37, v48);
      v49 = sub_10005E9B4();
      v52 = sub_100080D2C(v49, v50, v51);

      *(v44 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v41, v42, "AppleInternal: Detected too many localizations, so only localizing in %s.", v44, 0xCu);
      sub_10005B1BC(v45);
      sub_10005D0A0();

      sub_10005CF50();

      sub_10006025C();
      v54 = v116;
    }

    else
    {

      v121 = *(v128 + 8);
      (v121)(v37, v129);
      sub_10006025C();
      v54 = v36;
    }

    v53(v54, v120);
    sub_100008DC0(&qword_1000A66D0, &qword_10008E3B0);
    v55 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10008C980;
    v57 = v56 + v55;
    v58 = v129;
    v117(v56 + v55, v122, v129);
    v59 = WFLocalizationUsageDisplay;
    v60 = v130;
    *(v57 + *(v130 + 20)) = WFLocalizationUsageDisplay;
    *(v57 + *(v60 + 24)) = 0;
    v61 = v59;
    sub_1000563B0(v56);
    v62 = sub_10005E434();
    (v121)(v62, v58);

    v134 = v56;
    v2 = v60;
    v0 = v123;
    v15 = v120;
    v35 = &unk_10008D000;
  }

  sub_1000889F8();
  v63 = WFLocalizationUsageDisplay;
  *&v7[*(v2 + 20)] = WFLocalizationUsageDisplay;
  *&v7[*(v2 + 24)] = 0;
  v64 = v63;
  v65 = sub_10005EB28();
  v67 = sub_100055054(v65, v66);
  sub_10005D370();
  v68 = WFLogCategoryToolKit;
  if (v67)
  {
    sub_100088F28();
    v69 = sub_100088FF8();
    v70 = sub_10008A5C8();
    if (sub_10005F6E4(v70))
    {
      sub_10005E3C8();
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Inserted en/display in preferred localizations.", v71, 2u);
      sub_10005D4F8();
    }

    sub_10006025C();
    v72 = sub_10005F2C4();
    v73(v72);
  }

  sub_1000889F8();
  v74 = WFLocalizationUsageLanguageModel;
  *&v7[*(v2 + 20)] = WFLocalizationUsageLanguageModel;
  *&v7[*(v2 + 24)] = 1;
  v75 = v74;
  v76 = sub_10005EB28();
  v78 = sub_100055054(v76, v77);
  sub_10005D370();
  if (v78)
  {
    sub_100088F28();
    v79 = sub_100088FF8();
    v80 = sub_10008A5C8();
    if (sub_10005F438(v80))
    {
      sub_10005E3C8();
      *swift_slowAlloc() = 0;
      sub_10005EEB4();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      sub_10005D4F8();
    }

    sub_10006025C();
    v86(v126, v15);
  }

  sub_100088F28();
  v87 = sub_100088FF8();
  v88 = sub_10008A5E8();
  if (sub_10005F438(v88))
  {
    sub_10005E048();
    v68 = swift_slowAlloc();
    sub_10005DC40();
    v89 = swift_slowAlloc();
    v133 = v89;
    *v68 = v35[204];
    sub_10005E4A0();
    swift_beginAccess();
    sub_10005EA80();
    sub_10005AE38(v90, v91);
    v123 = v0;

    sub_10008A408();

    v92 = sub_100060D08();
    v95 = sub_100080D2C(v92, v93, v94);

    *(v68 + 4) = v95;
    _os_log_impl(&_mh_execute_header, v87, v7, "Resolved Preferred localizations: %s", v68, 0xCu);
    sub_10005B1BC(v89);
    sub_10005D4F8();

    sub_10005D4F8();

    v96 = sub_10005F378();
    v0 = v123;
  }

  else
  {

    v96 = sub_10005F378();
  }

  v97(v96);
  sub_10005E4A0();
  swift_beginAccess();
  v98 = v134;

  sub_10002A684(v99);
  sub_100060280();

  v100 = *(v68 + 16);
  if (v100)
  {
    v127 = v98;
    v132 = _swiftEmptyArrayStorage;
    sub_10008A968();
    sub_10005D14C();
    v126 = v68;
    v102 = v68 + v101;
    v103 = v130;
    v131 = *(v104 + 72);
    do
    {
      sub_10005B654(v102, v0);
      sub_10005E458();
      v105();
      sub_100088A08();
      v107 = v106;
      v108 = objc_allocWithZone(INStringLocalizer);
      v109 = sub_10005E120();
      sub_10004F2E4(v109, v107);
      v110 = *(v0 + *(v103 + 20));
      v111 = objc_allocWithZone(WFLocalizationContext);
      v112 = v110;
      v113 = sub_10005E470();
      sub_10004F348(v113, v114, v115);
      sub_10005D370();
      sub_10008A948();
      sub_10008A978();
      sub_10008A988();
      sub_10008A958();
      v102 += v131;
      --v100;
    }

    while (v100);
  }

  sub_10006110C();
}

uint64_t sub_100020080()
{
  sub_100012404();
  v0[67] = v1;
  v0[66] = v2;
  v0[65] = v3;
  v0[63] = v4;
  v0[64] = v5;
  v6 = sub_100088A68();
  v0[68] = v6;
  sub_100017A0C(v6);
  v0[69] = v7;
  v0[70] = sub_10005F4D4();
  v8 = sub_100089008();
  v0[71] = v8;
  sub_100017A0C(v8);
  v0[72] = v9;
  v0[73] = sub_10005F3EC();
  v0[74] = swift_task_alloc();
  v0[75] = swift_task_alloc();
  v0[76] = swift_task_alloc();
  v10 = sub_100088FA8();
  v0[77] = v10;
  sub_100017A0C(v10);
  v0[78] = v11;
  v0[79] = sub_10005F3EC();
  v0[80] = swift_task_alloc();
  v0[81] = swift_task_alloc();
  v12 = sub_1000899A8();
  v0[82] = v12;
  sub_100017A0C(v12);
  v0[83] = v13;
  v0[84] = sub_10005F3EC();
  v0[85] = swift_task_alloc();
  v0[86] = swift_task_alloc();
  v14 = sub_100088F78();
  v0[87] = v14;
  sub_100017A0C(v14);
  v0[88] = v15;
  v0[89] = sub_10005F3EC();
  v0[90] = swift_task_alloc();
  v0[91] = swift_task_alloc();
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();
  v0[94] = swift_task_alloc();
  v0[95] = swift_task_alloc();
  v16 = sub_100088F98();
  v0[96] = v16;
  sub_100017A0C(v16);
  v0[97] = v17;
  v0[98] = sub_10005F3EC();
  v0[99] = swift_task_alloc();
  v0[100] = swift_task_alloc();
  v0[101] = swift_task_alloc();
  v0[102] = swift_task_alloc();
  v0[103] = swift_task_alloc();
  v0[104] = swift_task_alloc();
  v18 = sub_100088D98();
  v0[105] = v18;
  sub_100017A0C(v18);
  v0[106] = v19;
  v0[107] = sub_10005F3EC();
  v0[108] = swift_task_alloc();
  v0[109] = swift_task_alloc();
  v20 = sub_100089978();
  v0[110] = v20;
  sub_100017A0C(v20);
  v0[111] = v21;
  v0[112] = sub_10005F4D4();
  v22 = sub_100088E08();
  v0[113] = v22;
  sub_100017A0C(v22);
  v0[114] = v23;
  v0[115] = sub_10005F3EC();
  v0[116] = swift_task_alloc();
  v24 = sub_10005CFA0();

  return _swift_task_switch(v24);
}

uint64_t sub_100020498(uint64_t a1)
{
  v337 = v1;
  v2 = *(v1 + 912);
  *(v1 + 400) = _swiftEmptyArrayStorage;
  v3 = sub_10005E81C();
  v4(v3);
  sub_10005E428();
  v5 = sub_100088DE8();
  v6 = *(v2 + 8);
  v7 = sub_100012498();
  v6(v7);
  v8 = &WFLogCategoryToolKit;
  v9 = &unk_10008D000;
  v10 = &ContainerIndexer;
  v334 = v1;
  if (v5)
  {
    v308 = *(sub_100089968() + 16);
    if (v308)
    {
      v294 = v1 + 496;
      sub_10005D9C4();
      v302 = v11 + v12;
      v331 = (*(v1 + 704) + 8);
      v330 = *(v1 + 776) + 8;
      v305 = v13;
      v296 = (v13 + 8);
      v293 = (*(v1 + 624) + 8);
      v295 = enum case for OSSignpostError.doubleEnd(_:);
      v14 = 0;
      v297 = v11;
      do
      {
        v15 = *(v1 + 896);
        v16 = *(v1 + 880);
        sub_10004F858(v14, 1, v11);
        v316 = v14;
        (*(v305 + 16))(v15, v302 + *(v305 + 72) * v14, v16);
        sub_100089958();
        sub_10005EDEC();
        sub_10008A2C8(v338);
        v17 = v336;
        sub_10005D504();
        v18 = swift_allocObject();
        *(v18 + 16) = v335;
        *(v18 + 24) = v17;
        sub_10005D9D0();
        v19 = swift_allocObject();
        sub_10005EDE0(v19);
        sub_10005D9D0();
        v20 = swift_allocObject();
        *(v20 + 16) = 8;
        sub_10005D504();
        v21 = swift_allocObject();
        *(v21 + 16) = sub_10005C5DC;
        *(v21 + 24) = v18;
        sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008D620;
        *(inited + 32) = sub_10005C5C8;
        *(inited + 40) = v19;
        *(inited + 48) = sub_10005C5C8;
        *(inited + 56) = v20;
        *(inited + 64) = sub_10005C5D0;
        *(inited + 72) = v21;

        sub_100088D68();
        sub_100088F88();
        sub_100088F58();
        v23 = sub_100088F88();
        v24 = sub_10008A6A8();
        if (sub_10008A7B8())
        {
          sub_10005E048();
          v25 = swift_slowAlloc();
          sub_10005DC40();
          v26 = swift_slowAlloc();
          v27 = 0;
          v335 = v26;
          sub_10005E4D8(v25);
          while (v27 != 48)
          {
            v28 = *(inited + v27 + 32);

            v29 = sub_10005E4C8();
            v28(v29);

            v27 += 16;
          }

          v1 = v334;

          v30 = sub_100088F68();
          sub_10006132C(&_mh_execute_header, v23, v24, v30, "IndexType", "type=%{signpost.description:attribute}s");
          sub_10005B1BC(v26);
          sub_10005D4F8();

          sub_10005CF50();
        }

        else
        {

          v1 = v334;
        }

        v324 = *(v1 + 896);
        v31 = *(v1 + 824);
        v32 = *(v1 + 760);
        v33 = *(v1 + 696);
        v34 = *(v1 + 688);
        v35 = sub_10005E144();
        v36(v35, v32, v33);
        sub_100088FD8();
        sub_10005E928();
        swift_allocObject();
        sub_1000124D4();
        v37 = sub_10005FA98();
        v38(v37);
        sub_10005E4AC(v31, "IndexType");
        v315 = *v331;
        (*v331)(v32, v33);
        v39 = sub_10005F5BC();
        v312 = v40;
        v40(v39);
        sub_100015104(v324, v34);
        v323 = 0;

        sub_100089818();
        sub_100089808();
        sub_10005D9B8();
        sub_1000897E8();

        v41 = sub_10005E088();
        v42(v41);
        sub_100088D58();
        v43 = sub_100088D78();
        v45 = v44;
        sub_100088D88();
        v46 = sub_100088F88();
        sub_100088FB8();
        sub_10008A698();
        v47 = sub_10008A7B8();

        if (v47)
        {
          if (v45)
          {
            if (HIDWORD(v43))
            {
              goto LABEL_175;
            }

            sub_10005EBF0();
            if (v49)
            {
              goto LABEL_182;
            }

            v50 = v43 > 0x10FFFF;
            v43 = v294;
            if (v50)
            {
              goto LABEL_176;
            }
          }

          else if (!v43)
          {
            goto LABEL_174;
          }

          v1 = v334;
          v51 = *(v334 + 616);

          sub_100088FE8();

          v52 = sub_10005E144();
          v54 = "[Error] Interval already ended";
          if (v53(v52, v51) != v295)
          {
            (*v293)(*(v334 + 648), *(v334 + 616));
            v54 = "";
          }

          sub_10005E3C8();
          v55 = swift_slowAlloc();
          *v55 = 0;
          sub_100088F68();
          sub_100060424();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v56, v57, v43, v54, v55, 2u);
          sub_10005D0A0();
        }

        v58 = v46;
        v14 = v316 + 1;
        v325 = *(v1 + 896);
        v8 = *(v1 + 880);

        v59 = sub_10005DC1C();
        v315(v59);
        v60 = sub_10005E44C();
        v312(v60);
        sub_10006031C();
        v61 = sub_10005DC4C();
        v62(v61);
        (*v296)(v325, v8);
        v11 = v297;
      }

      while (v316 + 1 != v308);

      v9 = &unk_10008D000;
      v10 = &ContainerIndexer;
    }

    else
    {
    }

    v79 = [objc_opt_self() v10[51].ivar_lyt];
    sub_10005F674();
    v80 = sub_10008A6F8();
    sub_10001BF0C(v80);
  }

  else
  {
    v63 = sub_1000124F4();
    v64(v63);
    v65 = sub_100012498();
    if (v66(v65) == enum case for ToolKitIndexingReason.Changeset.partial(_:))
    {
      (*(*(v1 + 912) + 96))(*(v1 + 920), *(v1 + 904));

      v67 = [objc_opt_self() sharedRegistry];
      v68 = sub_10008A6F8();
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = (v68 + 32);
        v71 = _swiftEmptyArrayStorage;
        do
        {
          v72 = *v70;
          if (sub_10008A588())
          {
            v335 = v71;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_10005D7F4();
              sub_100081CE0(v73, v74, v75);
              v71 = v335;
            }

            v77 = v71[2];
            v76 = v71[3];
            if (v77 >= v76 >> 1)
            {
              v78 = sub_10005D920(v76);
              sub_100081CE0(v78, v77 + 1, 1);
              v71 = v335;
            }

            v71[2] = v77 + 1;
            v71[v77 + 4] = v72;
          }

          ++v70;
          --v69;
        }

        while (v69);
      }

      else
      {
        v71 = _swiftEmptyArrayStorage;
      }

      v1 = v334;
      sub_10001BF0C(v71);

      v9 = &unk_10008D000;
    }

    else
    {
      (v6)(*(v1 + 920), *(v1 + 904));
    }
  }

  v298 = v1 + 424;
  v303 = v1 + 440;
  v81 = *(v1 + 512);
  if ((*(v81 + *(_s23IndexingPreflightResultVMa(0) + 24)) & 0xC000000000000001) != 0)
  {

    sub_10008A878();
    sub_10005ECB4();
    sub_100011D84(v82, v83, v84);
    sub_10005C60C();
    sub_10005ECB4();
    sub_10005B4C0(v85, v86, v87);
    sub_10005E9C0();
    sub_10008A428();
    v88 = *(v1 + 256);
    v89 = *(v1 + 264);
    v90 = *(v1 + 272);
    v91 = *(v1 + 280);
    v92 = *(v1 + 288);
  }

  else
  {
    sub_10005EB04();
    v89 = (v93 + 56);
    v90 = ~v94;
    sub_10005E054();
    v92 = (v95 & v96);

    v91 = 0;
  }

  v97 = 0;
  *(v1 + 952) = v90;
  *(v1 + 944) = v89;
  *(v1 + 936) = v88;
  *(v1 + 960) = WFLogCategoryToolKitIndexing;
  *(v1 + 968) = WFLogCategoryToolKit;
  *(v1 + 1152) = enum case for OSSignpostError.doubleEnd(_:);
  v309 = v9[98];
LABEL_42:
  v321 = v97;
  while (1)
  {
    v98 = *(v1 + 936);
    if (v98 < 0)
    {
      v89 = (v98 & 0x7FFFFFFFFFFFFFFFLL);
      v110 = sub_10008A8A8();
      if (!v110)
      {
        break;
      }

      v111 = sub_100060F9C(v110);
      sub_100011D84(v111, &qword_1000A5EA8, WFAction_ptr);
      sub_10005F0B8();
      sub_10005ED24();
      swift_dynamicCast();
      v89 = *(v1 + 472);
      v100 = v91;
      v107 = v92;
    }

    else
    {
      sub_100060EDC();
      v100 = v91;
      if (!v92)
      {
        while (1)
        {
          v100 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            break;
          }

          sub_10005FF7C();
          if (v102 == v103)
          {
            goto LABEL_100;
          }

          sub_10005FF6C();
          if (v104)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

LABEL_49:
      sub_10005D470();
      v107 = (v106 & v105);
      v89 = sub_10005F868(v108, v109);
    }

    *(v1 + 992) = v107;
    *(v1 + 984) = v100;
    *(v1 + 976) = v89;
    if (!v89)
    {
      break;
    }

    v48 = sub_10008A788();
    v97 = *(v48 + 16);
    v112 = *(v1 + 400);
    v113 = *(v112 + 16);
    v90 = v113 + v97;
    if (__OFADD__(v113, v97))
    {
      goto LABEL_171;
    }

    v114 = v48;
    if (!swift_isUniquelyReferenced_nonNull_native() || v90 > *(v112 + 24) >> 1)
    {
      sub_100080604();
      v112 = v115;
    }

    if (*(v114 + 16))
    {
      sub_10005F348();
      if (v117 < v97)
      {
        goto LABEL_173;
      }

      memcpy((v112 + 8 * v116 + 32), (v114 + 32), 8 * v97);

      if (v97)
      {
        v118 = *(v112 + 16);
        v103 = __OFADD__(v118, v97);
        v119 = (v118 + v97);
        if (v103)
        {
          goto LABEL_180;
        }

        *(v112 + 16) = v119;
      }
    }

    else
    {

      if (v97)
      {
        goto LABEL_172;
      }
    }

    v1 = v334;
    *(v334 + 400) = v112;
    v120 = [v89 parameters];
    v121 = sub_10006028C();
    sub_100011D84(v121, &qword_1000A6530, WFParameter_ptr);
    v122 = sub_10008A328();
    *(v334 + 1000) = v122;

    if (v122 >> 62)
    {
      sub_10005FF5C();
      v123 = sub_10008A9D8();
    }

    else
    {
      v123 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v334 + 1008) = v123;
    if (v123)
    {
      v97 = v321;
      while (1)
      {
        *(v1 + 1016) = v97;
        sub_100060EE8();
        if (v49)
        {
          sub_10005D988();
          if (v126)
          {
            goto LABEL_184;
          }

          v124 = sub_1000604FC(v48, v125);
        }

        else
        {
          v124 = sub_10008A928();
        }

        v48 = sub_10005F138(v124);
        *(v1 + 1032) = v127;
        if (v103)
        {
          goto LABEL_181;
        }

        objc_opt_self();
        sub_10005E028();
        v128 = swift_dynamicCastObjCClass();
        *(v1 + 1040) = v128;
        if (v128)
        {
          goto LABEL_156;
        }

        v129 = *(v1 + 1024);
        v130 = [*(v1 + 976) identifier];
        v131 = sub_10008A268();
        v133 = v132;

        *(v1 + 368) = v131;
        *(v1 + 376) = v133;
        sub_10005FC3C();
        v134 = [v129 key];
        sub_10008A268();

        v339._countAndFlagsBits = sub_10005DB50();
        sub_10008A2C8(v339);

        v136 = *(v1 + 368);
        v135 = *(v1 + 376);
        *(v1 + 1072) = v135;
        sub_10005D504();
        v137 = swift_allocObject();
        *(v137 + 16) = v136;
        *(v137 + 24) = v135;
        sub_10005D9D0();
        v138 = swift_allocObject();
        sub_10005EDE0(v138);
        sub_10005D9D0();
        v139 = swift_allocObject();
        *(v139 + 16) = 8;
        sub_10005D504();
        swift_allocObject();
        sub_10005EA98();
        *(v140 + 16) = v141;
        *(v140 + 24) = v137;
        sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
        v142 = v1;
        v143 = swift_initStackObject();
        v144 = sub_10005C6B8(v143, v309);
        v144[2].n128_u64[0] = v145;
        v144[2].n128_u64[1] = v138;
        v144[3].n128_u64[0] = sub_10005C5C8;
        v144[3].n128_u64[1] = v139;
        v144[4].n128_u64[0] = sub_10005C5D0;
        v144[4].n128_u64[1] = v107;

        sub_100088D68();
        sub_100088F88();
        sub_100088F58();
        v146 = sub_100088F88();
        v147 = sub_10008A6A8();
        if (sub_10008A7B8())
        {
          sub_10005E048();
          v148 = swift_slowAlloc();
          sub_10005DC40();
          v149 = swift_slowAlloc();
          v150 = 0;
          v142[57] = 0;
          v142[58] = v149;
          *v148 = 258;
          v142[56] = v148 + 2;
          while (v150 != 3)
          {
            v151 = v143[v150 + 2].n128_u64[0];

            v151(v334 + 448, v334 + 456, v334 + 464);

            ++v150;
          }

          v142 = v334;

          v152 = sub_100088F68();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v146, v147, v152, "IndexType", "type=%{signpost.description:attribute}s", v148, 0xCu);
          sub_10005B1BC(v149);
          sub_10005D4F8();

          sub_10005D4F8();
        }

        else
        {
        }

        v153 = v142[103];
        v154 = v142[97];
        v155 = v142[88];
        v332 = v142[67];
        v156 = sub_10005D480();
        v157(v156);
        sub_100088FD8();
        sub_10005E928();
        swift_allocObject();
        sub_1000124D4();
        v158 = sub_10005D458();
        v159(v158);
        sub_10005E4AC(v153, "IndexType");
        v142[135] = *(v155 + 8);
        sub_100060E14();
        v142[136] = v160;
        v161 = sub_10005DC4C();
        v162(v161);
        v142[137] = *(v154 + 8);
        sub_100060E08();
        v142[138] = v163;
        v164 = sub_10005EB28();
        v165(v164);
        v1 = v142;
        v48 = v332 >> 62 ? sub_10005FB38() : sub_100060E38(v142[67]);
        v142[139] = v48;
        if (v48)
        {
          break;
        }

        v322 = v142[127];
        sub_100088D58();
        v166 = sub_100088D78();
        v168 = v167;
        sub_100088D88();
        v169 = sub_100088F88();
        sub_100088FB8();
        v170 = sub_10008A698();
        v171 = sub_10008A7B8();

        if (v171)
        {
          if (v168)
          {
            if (HIDWORD(v166))
            {
              goto LABEL_186;
            }

            sub_10005EBF0();
            if (v49)
            {
              goto LABEL_188;
            }

            v50 = v166 > 0x10FFFF;
            v166 = v303;
            if (v50)
            {
              goto LABEL_187;
            }
          }

          else if (!v166)
          {
            goto LABEL_185;
          }

          v333 = v170;
          v1 = v334;
          v175 = *(v334 + 1152);

          sub_100088FE8();

          v176 = sub_10005E694();
          v107 = "[Error] Interval already ended";
          if (v177(v176) != v175)
          {
            v178 = sub_10005F068();
            v179(v178);
            v107 = "";
          }

          v330 = *(v334 + 1104);
          v319 = *(v334 + 1096);
          v313 = *(v334 + 1080);
          v90 = *(v334 + 1024);
          v327 = *(v334 + 864);
          v180 = *(v334 + 848);
          v317 = *(v334 + 840);
          v310 = *(v334 + 800);
          v306 = *(v334 + 768);
          v89 = *(v334 + 728);
          sub_10005E3C8();
          v181 = swift_slowAlloc();
          *v181 = 0;
          v182 = sub_100088F68();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v169, v333, v182, v166, v107, v181, 2u);
          sub_10005D4F8();

          v183 = sub_10005E12C();
          v313(v183);
          v319(v310, v306);
          (*(v180 + 8))(v327, v317);
        }

        else
        {
          v326 = v142[137];
          v89 = v142[135];
          v90 = v142[128];
          v330 = v142[108];
          v172 = v142[106];
          v318 = *(v1 + 840);
          v107 = *(v1 + 696);

          v173 = sub_10005F294();
          (v89)(v173);
          v174 = sub_10005DC4C();
          v326(v174);
          (*(v172 + 8))(v330, v318);
        }

        sub_10005F058();
        v97 = v322;
        if (v49)
        {
          sub_100061464();

          v92 = *(v1 + 992);
          v91 = *(v1 + 984);
          goto LABEL_42;
        }
      }

      if (v48 >= 1)
      {
        v142[140] = 0;
        v237 = v142[67];
        if ((v237 & 0xC000000000000001) != 0)
        {
          v284 = sub_10008A928();
LABEL_167:
          *(v1 + 1128) = v284;
          swift_task_alloc();
          sub_100012480();
          *(v1 + 1136) = v285;
          *v285 = v286;
          sub_10005CC00(v285);
          sub_10005DD04();
          sub_100060FD8();

          return sub_100014AB4(v287, v288, v289, v290);
        }

LABEL_166:
        v284 = *(v237 + 32);
        goto LABEL_167;
      }

LABEL_189:
      __break(1u);
      return _swift_task_switch(v48);
    }

    v91 = v100;
    v92 = v107;
  }

  v101 = sub_100060F70();
LABEL_100:
  sub_10005FB8C(v101);
  v307 = v184;
  if (!v184)
  {
LABEL_149:

    sub_10005CDDC();

    sub_10001248C();
    sub_100060FD8();

    __asm { BRAA            X1, X16 }
  }

  v185 = sub_100061434();
  sub_10005FED4(v185);
  v301 = v186;
  v304 = v89;
  sub_100060D68();
  v299 = v187;
  v300 = v90;
LABEL_102:
  v188 = sub_10005E2A4();
  sub_10004F858(v188, v189, v90);
  v190 = v97;
  v191 = *(v301 + 8 * v97);
  *(v1 + 408) = v191;
  v192 = sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  v193 = sub_1000614C4(v192);
  v195 = v194;
  sub_10005D504();
  v196 = swift_allocObject();
  *(v196 + 16) = v193;
  *(v196 + 24) = v195;
  sub_10005D9D0();
  v197 = swift_allocObject();
  sub_10005EDE0(v197);
  sub_10005D9D0();
  v198 = swift_allocObject();
  sub_10005FF3C(v198);
  sub_10005D504();
  v199 = swift_allocObject();
  *(v199 + 16) = sub_10005C5DC;
  *(v199 + 24) = v196;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v200 = swift_initStackObject();
  v201 = sub_10005C6B8(v200, v309);
  v201[2].n128_u64[0] = v202;
  v201[2].n128_u64[1] = v197;
  v201[3].n128_u64[0] = sub_10005C5C8;
  v201[3].n128_u64[1] = v195;
  v201[4].n128_u64[0] = sub_10005C5D0;
  v201[4].n128_u64[1] = v199;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v203 = sub_100088F88();
  v204 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v205 = swift_slowAlloc();
    sub_10005DC40();
    v206 = swift_slowAlloc();
    sub_10005FF2C(v206);
    sub_10005E4D8(v205);
    v207 = v190;
    while (v1 != 48)
    {
      v208 = *(v200[2].n128_u64 + v1);

      v209 = sub_10005E4C8();
      v208(v209);

      v1 += 16;
    }

    v210 = v334;

    v211 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v203, v204, v211, "IndexType", "type=%{signpost.description:attribute}s", v205, 0xCu);
    sub_10005B1BC(v195);
    sub_10005D4F8();

    sub_10005D0A0();
  }

  else
  {

    v210 = v334;
    v207 = v190;
  }

  v320 = (v207 + 1);
  v212 = v210[103];
  v213 = v210[97];
  v214 = v210[90];
  v215 = v210[87];
  v216 = sub_1000124F4();
  v217(v216, v214, v215);
  sub_100088FD8();
  sub_10005E928();
  swift_allocObject();
  sub_1000124D4();
  sub_10005E0AC();
  v218();
  sub_10005E4AC(v212, "IndexType");
  v219 = sub_10005ECCC();
  v314 = v220;
  (v220)(v219);
  v221 = *(v213 + 8);
  v90 = v213 + 8;
  v222 = sub_10005DC4C();
  v221(v222);
  v223 = 0;
  v224 = _swiftEmptyArrayStorage;
  v225 = v210;
  v1 = v321;
  v226 = v323;
  v311 = v221;
  while (2)
  {
    if (v330 == v223)
    {
      v240 = v224[2];
      v321 = v1;
      v323 = v226;
      if (v240)
      {
        sub_100089818();
        sub_10005D9C4();
        v242 = v224 + v241;
        v328 = v304[9];
        v243 = v304[2];
        do
        {
          v244 = v225[83];
          v245 = sub_10005D978();
          v243(v245);
          sub_100089808();
          sub_10005E98C();
          sub_1000897E8();

          v1 = v244 + 8;
          v246 = sub_10005D9DC();
          v225 = v334;
          v247(v246);
          v242 += v328;
          --v240;
        }

        while (v240);
      }

      goto LABEL_138;
    }

    if ((v225[67] & 0xC000000000000001) != 0)
    {
      v229 = sub_10008A928();
    }

    else
    {
      sub_10005E804();
      if (v223 >= v228)
      {
        goto LABEL_153;
      }

      v229 = *(v227 + 8 * v223 + 32);
    }

    v230 = v229;
    if (!__OFADD__(v223, 1))
    {
      v226 = v1;
      sub_100013478(v191, v229);
      if (!v1)
      {
        v232 = v231;

        v90 = *(v232 + 16);
        v1 = v224[2];
        v233 = v1 + v90;
        if (__OFADD__(v1, v90))
        {
          goto LABEL_154;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v233 > v224[3] >> 1)
        {
          if (v1 <= v233)
          {
            v235 = v1 + v90;
          }

          else
          {
            v235 = v1;
          }

          sub_1000804D0(isUniquelyReferenced_nonNull_native, v235, 1, v224);
          v224 = v236;
        }

        if (*(v232 + 16))
        {
          sub_10005F0F8();
          if (v102 != v103)
          {
            __break(1u);
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          sub_10005E0A0();
          sub_10005FAA4();

          if (v90)
          {
            v238 = v224[2];
            v103 = __OFADD__(v238, v90);
            v239 = v238 + v90;
            if (v103)
            {
              goto LABEL_165;
            }

            v224[2] = v239;
          }
        }

        else
        {

          if (v90)
          {
            goto LABEL_155;
          }
        }

        v1 = 0;
        ++v223;
        continue;
      }

      sub_10006138C();
      swift_errorRetain();
      v248 = sub_100088FF8();
      v249 = sub_10008A5D8();

      v250 = os_log_type_enabled(v248, v249);
      v251 = v225[75];
      v252 = v225[72];
      v253 = v225[71];
      if (v250)
      {
        sub_10005E91C();
        v329 = v253;
        v254 = swift_slowAlloc();
        v255 = sub_10005FEE4();
        sub_10005DC40();
        v256 = swift_slowAlloc();
        v335 = v256;
        *v254 = 136315394;
        v257 = sub_10008AB38();
        sub_100080D2C(v257, v258, &v335);
        sub_100060454();

        *(v254 + 4) = v251;
        *(v254 + 12) = 2112;
        swift_errorRetain();
        v259 = _swift_stdlib_bridgeErrorToNSError();
        *(v254 + 14) = v259;
        *v255 = v259;
        _os_log_impl(&_mh_execute_header, v248, v249, "Failed to index content item type %s: %@", v254, 0x16u);
        sub_100017954(v255, &qword_1000A6460, &qword_10008D878);
        sub_10005FA30();
        sub_10005D4F8();

        sub_10005B1BC(v256);
        sub_10005D4F8();

        sub_10005D0A0();

        (*(v252 + 8))(v251, v329);
      }

      else
      {

        v260 = sub_10005E088();
        v261(v260);
      }

      sub_100089818();
      sub_100089808();
      sub_10005E068();
      v336 = v299;
      v340._countAndFlagsBits = sub_10008AB38();
      sub_10008A2C8(v340);

      swift_getErrorValue();
      sub_10008AAB8();
      v225 = v262;
      sub_10005DC4C();
      sub_1000897F8();
      sub_10005FA30();

      v323 = v1;

      v321 = 0;
LABEL_138:
      sub_100088D58();
      v263 = sub_100088D78();
      v265 = v264;
      sub_100088D88();
      v266 = sub_100088F88();
      sub_100088FB8();
      v267 = sub_10008A698();
      v48 = sub_10008A7B8();
      if (v48)
      {
        if (v265)
        {
          if (HIDWORD(v263))
          {
            goto LABEL_178;
          }

          sub_10005EBF0();
          if (v49)
          {
            goto LABEL_183;
          }

          sub_10006097C();
          v263 = v298;
          if (!v49 & v126)
          {
            goto LABEL_179;
          }
        }

        else if (!v263)
        {
          goto LABEL_177;
        }

        v1 = *(v225 + 288);

        sub_100088FE8();

        v268 = sub_10005E694();
        v270 = "[Error] Interval already ended";
        if (v269(v268) != v1)
        {
          v271 = sub_10005EF74();
          v272(v271);
          v270 = "";
        }

        sub_10005E3C8();
        v273 = swift_slowAlloc();
        *v273 = 0;
        v274 = sub_100088F68();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v266, v267, v274, v263, v270, v273, 2u);
        sub_10005D4F8();
      }

      v275 = *(v334 + 696);

      v276 = sub_100060BC4();
      v314(v276, v275);
      v277 = sub_10005DC4C();
      v311(v277);
      v278 = sub_10005E694();
      v279(v278);
      v97 = v320;
      v90 = v300;
      if (v320 == v307)
      {
        goto LABEL_149;
      }

      goto LABEL_102;
    }

    break;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  v282 = *(v1 + 976);
  if (![v90 key])
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  sub_1000613D4();
  sub_10005F674();
  *(v1 + 1056) = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10005CA4C();
  sub_100060FD8();

  return _swift_task_switch(v48);
}

uint64_t sub_100022484()
{
  sub_100012404();
  v1 = *(v0 + 1048);

  v2 = sub_100060FA8();
  *(v0 + 1064) = [v2 v3];

  v4 = sub_10005CFA0();

  return _swift_task_switch(v4);
}

uint64_t sub_100022508()
{
  v223 = v0;
  v192 = (v0 + 424);
  v197 = (v0 + 440);
  v5 = *(v0 + 1064);
  if (!v5)
  {
    v24 = (v0 + 976);
LABEL_7:

    goto LABEL_110;
  }

  v6 = [v5 valueType];
  v7 = [v6 wf_unionValueType];

  if (!v7)
  {
    v24 = (v0 + 1064);

    goto LABEL_7;
  }

  v8 = *(v0 + 1024);
  v9 = *(v0 + 976);

  sub_100088F28();
  v10 = v9;
  v11 = v8;
  v12 = sub_100088FF8();
  v13 = sub_10008A5D8();

  v14 = sub_100060890();
  v2 = *(v0 + 1064);
  v15 = *(v0 + 1024);
  v16 = *(v0 + 608);
  v17 = *(v0 + 576);
  v1 = *(v0 + 568);
  if (v14)
  {
    sub_10005E91C();
    v19 = v18;
    v208 = v18;
    swift_slowAlloc();
    v219 = v1;
    v4 = sub_10005F8BC();
    sub_10005DC40();
    v3 = swift_slowAlloc();
    v222[0] = v3;
    *v1 = 138412546;
    *(v1 + 4) = v15;
    *v4 = v15;
    sub_100060DC8();
    v216 = v15;
    v205 = v2;
    v2 = [v19 identifier];
    v15 = sub_10008A268();

    v20 = sub_1000124C8();
    sub_100080D2C(v20, v21, v22);
    sub_100060454();

    *(v1 + 14) = v15;
    sub_10005E620(&_mh_execute_header, v23, v13, "Skipping: %@ in %s because union values themselves are not treated as a type");
    sub_100017954(v4, &qword_1000A6460, &qword_10008D878);
    sub_10005D4F8();

    sub_10005B1BC(v3);
    v0 = v221;
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v17 + 8))(v16, v1);
  }

  else
  {

    v25 = sub_10005D9DC();
    v27(v25, v26);
  }

  v28 = *(v0 + 1016);
  while (2)
  {
    sub_10005F058();
    if (!v109)
    {
      goto LABEL_104;
    }

    sub_100061464();

    v2 = *(v0 + 992);
    v4 = *(v0 + 984);
    while (1)
    {
      v29 = *(v0 + 936);
      if (v29 < 0)
      {
        v12 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
        v37 = sub_10008A8A8();
        if (!v37)
        {
          goto LABEL_35;
        }

        v38 = sub_100060F9C(v37);
        sub_100011D84(v38, &qword_1000A5EA8, WFAction_ptr);
        sub_10005F0B8();
        sub_10005ED24();
        swift_dynamicCast();
        v12 = *(v0 + 472);
        v1 = v4;
        v34 = v2;
        goto LABEL_18;
      }

      sub_100060EDC();
      v1 = v4;
      if (!v2)
      {
        break;
      }

LABEL_15:
      sub_10005D470();
      v34 = (v33 & v32);
      v12 = *(*(v35 + 48) + ((v1 << 9) | (8 * v36)));
LABEL_18:
      *(v0 + 992) = v34;
      *(v0 + 984) = v1;
      *(v0 + 976) = v12;
      if (!v12)
      {
LABEL_35:
        v30 = sub_100060F70();
        goto LABEL_36;
      }

      v15 = v28;
      v39 = sub_10008A788();
      v28 = *(v39 + 16);
      v4 = *(v0 + 400);
      v0 = *(v4 + 16);
      v3 = v0 + v28;
      if (__OFADD__(v0, v28))
      {
        goto LABEL_96;
      }

      v2 = v39;
      if (!swift_isUniquelyReferenced_nonNull_native() || v3 > *(v4 + 24) >> 1)
      {
        sub_100080604();
        v4 = v40;
      }

      v0 = v221;
      if (*(v2 + 16))
      {
        sub_10005F348();
        if (v42 < v28)
        {
          goto LABEL_98;
        }

        memcpy((v4 + 8 * v41 + 32), (v2 + 32), 8 * v28);

        if (v28)
        {
          v43 = *(v4 + 16);
          v44 = __OFADD__(v43, v28);
          v45 = (v43 + v28);
          if (v44)
          {
            goto LABEL_102;
          }

          *(v4 + 16) = v45;
        }
      }

      else
      {

        if (v28)
        {
          goto LABEL_97;
        }
      }

      *(v221 + 400) = v4;
      v2 = [v12 parameters];
      sub_100011D84(0, &qword_1000A6530, WFParameter_ptr);
      v4 = sub_10008A328();
      *(v221 + 1000) = v4;

      if (v4 >> 62)
      {
        v46 = sub_10008A9D8();
      }

      else
      {
        v46 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v15;
      *(v221 + 1008) = v46;
      if (v46)
      {
        goto LABEL_104;
      }

      v4 = v1;
      v2 = v34;
    }

    while (1)
    {
      v1 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_95;
      }

      if (v1 >= ((*(v0 + 952) + 64) >> 6))
      {
        break;
      }

      ++v31;
      if (*(*(v0 + 944) + 8 * v1))
      {
        goto LABEL_15;
      }
    }

LABEL_36:
    sub_10005FB8C(v30);
    v198 = v47;
    if (!v47)
    {
LABEL_85:

      sub_10005CDDC();
      sub_1000602A4();
      sub_10005F258();
      sub_10005E6A0();

      sub_10001248C();
      sub_10005F3B4();

      __asm { BRAA            X1, X16 }
    }

    v206 = v28;
    v48 = 0;
    v195 = v15 + 32;
    v196 = sub_100061434();
    sub_100060D68();
    v197 = v12;
    v193 = v49;
    v194 = v15;
LABEL_38:
    v50 = sub_10005E2A4();
    sub_10004F858(v50, v51, v15);
    v4 = *&v195[8 * v48];
    *(v0 + 408) = v4;
    v52 = sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
    v53 = sub_1000614C4(v52);
    v55 = v54;
    sub_10005D504();
    v56 = swift_allocObject();
    *(v56 + 16) = v53;
    *(v56 + 24) = v55;
    sub_10005D9D0();
    v57 = swift_allocObject();
    sub_10005EDE0(v57);
    sub_10005D9D0();
    v58 = swift_allocObject();
    sub_10005FF3C(v58);
    sub_10005D504();
    v15 = swift_allocObject();
    sub_10005D18C(v15);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v60 = sub_10005C6B8(inited, xmmword_10008D620);
    v60[2].n128_u64[0] = v61;
    v60[2].n128_u64[1] = v57;
    v60[3].n128_u64[0] = sub_10005C5C8;
    v60[3].n128_u64[1] = v55;
    v60[4].n128_u64[0] = sub_10005C5D0;
    v60[4].n128_u64[1] = v15;
    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v62 = sub_100088F88();
    v63 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      v209 = v48;
      sub_10005E048();
      v15 = swift_slowAlloc();
      sub_10005DC40();
      v64 = swift_slowAlloc();
      v65 = 0;
      v222[0] = v64;
      sub_10005E4D8(v15);
      while (v65 != 3)
      {
        v66 = inited[v65 + 2].n128_u64[0];

        v67 = sub_10005E4C8();
        v66(v67);

        ++v65;
      }

      v68 = sub_100088F68();
      sub_10006132C(&_mh_execute_header, v62, v63, v68, "IndexType", "type=%{signpost.description:attribute}s");
      sub_10005B1BC(v64);
      sub_10005D0A0();

      sub_10005CF50();

      v48 = v209;
    }

    else
    {
    }

    v210 = v48 + 1;
    sub_10005D938();
    v69 = *(v0 + 704);
    sub_1000124F4();
    sub_10005FB08();
    v70();
    sub_100088FD8();
    sub_10005E928();
    swift_allocObject();
    sub_1000124D4();
    v71 = sub_10005DE88();
    v72(v71);
    sub_10005E4AC(v62, "IndexType");
    v0 = v69 + 8;
    v73 = sub_10005F62C();
    v3 = v221;
    v202 = v74;
    (v74)(v73);
    v75 = sub_10005E088();
    v200 = v76;
    v76(v75);
    v2 = 0;
    v1 = _swiftEmptyArrayStorage;
    v77 = v206;
    v28 = v197;
    while (2)
    {
      if (v196 == v2)
      {
        v90 = *(v1 + 16);
        v206 = v77;
        if (v90)
        {
          sub_100089818();
          sub_10005D9C4();
          v92 = v1 + v91;
          v213 = v197[9];
          v0 = v197[2];
          do
          {
            v93 = sub_10005DEB4();
            (v0)(v93);
            sub_100089808();
            sub_10005E434();
            v3 = v221;
            sub_1000897E8();

            v94 = sub_10005E7F8();
            v95(v94);
            v92 += v213;
            --v90;
          }

          while (v90);
        }

        v77 = v219;
        goto LABEL_74;
      }

      if ((*(v221 + 536) & 0xC000000000000001) != 0)
      {
        v80 = sub_10008A928();
      }

      else
      {
        sub_10005E804();
        if (v2 >= v79)
        {
          goto LABEL_90;
        }

        v80 = *(v78 + 8 * v2 + 32);
      }

      v15 = v80;
      if (!__OFADD__(v2, 1))
      {
        sub_100013478(v4, v80);
        if (!v77)
        {
          v82 = v81;
          v219 = 0;

          v15 = *(v82 + 16);
          v0 = *(v1 + 16);
          v83 = &v15[v0];
          if (__OFADD__(v0, v15))
          {
            goto LABEL_91;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v83 > *(v1 + 24) >> 1)
          {
            if (v0 <= v83)
            {
              v85 = &v15[v0];
            }

            else
            {
              v85 = v0;
            }

            sub_1000804D0(isUniquelyReferenced_nonNull_native, v85, 1, v1);
            v1 = v86;
          }

          if (*(v82 + 16))
          {
            sub_10005F0F8();
            if (v87 != v44)
            {
              goto LABEL_93;
            }

            sub_10005E0A0();
            sub_10005FAA4();

            if (v15)
            {
              v88 = *(v1 + 16);
              v44 = __OFADD__(v88, v15);
              v89 = &v15[v88];
              if (v44)
              {
                goto LABEL_94;
              }

              *(v1 + 16) = v89;
            }
          }

          else
          {

            if (v15)
            {
              goto LABEL_92;
            }
          }

          v77 = 0;
          ++v2;
          continue;
        }

        sub_10006135C();
        swift_errorRetain();
        v96 = sub_100088FF8();
        v97 = sub_10008A5D8();

        v98 = sub_100061314();
        v99 = *(v221 + 600);
        v100 = *(v221 + 576);
        v0 = *(v221 + 568);
        if (v98)
        {
          sub_10005E91C();
          v217 = v99;
          v220 = v0;
          v101 = swift_slowAlloc();
          v102 = sub_10005FEE4();
          sub_10005DC40();
          v0 = swift_slowAlloc();
          v222[0] = v0;
          *v101 = 136315394;
          v103 = sub_10008AB38();
          sub_100080D2C(v103, v104, v222);

          sub_100061144();
          v105 = _swift_stdlib_bridgeErrorToNSError();
          *(v101 + 14) = v105;
          *v102 = v105;
          _os_log_impl(&_mh_execute_header, v96, v97, "Failed to index content item type %s: %@", v101, 0x16u);
          sub_100017954(v102, &qword_1000A6460, &qword_10008D878);
          sub_10005D4F8();

          sub_10005B1BC(v0);
          sub_10005D4F8();

          sub_10005CF50();

          (*(v100 + 8))(v217, v220);
        }

        else
        {

          (*(v100 + 8))(v99, v0);
        }

        v3 = v221;
        sub_100089818();
        sub_100089808();
        sub_10005E068();
        v222[1] = v193;
        v224._countAndFlagsBits = sub_10008AB38();
        sub_10008A2C8(v224);

        swift_getErrorValue();
        sub_10008AAB8();
        sub_100060E98();
        v106 = sub_10005DC58();
        sub_100060810(v106);

        v206 = 0;
LABEL_74:
        v28 = *(v3 + 712);
        sub_100088D58();
        v4 = sub_100088D78();
        v108 = v107;
        v1 = sub_100088D88();
        v2 = sub_100088F88();
        sub_100088FB8();
        v15 = sub_10008A698();
        v219 = v77;
        if (sub_10008A7B8())
        {
          if (v108)
          {
            if (HIDWORD(v4))
            {
              goto LABEL_100;
            }

            sub_10005EBF0();
            if (v109)
            {
              goto LABEL_103;
            }

            sub_10006097C();
            v4 = v192;
            if (!v109 & v110)
            {
              goto LABEL_101;
            }
          }

          else if (!v4)
          {
            goto LABEL_99;
          }

          v111 = *(v3 + 1152);

          sub_100088FE8();

          v112 = sub_10005E9C0();
          v114 = "[Error] Interval already ended";
          if (v113(v112) != v111)
          {
            (*(*(v3 + 624) + 8))(*(v3 + 632), *(v3 + 616));
            v114 = "";
          }

          sub_10005E3C8();
          v115 = swift_slowAlloc();
          *v115 = 0;
          sub_100088F68();
          sub_100060424();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v116, v117, v4, v114, v115, 2u);
          sub_10005D4F8();
        }

        v118 = *(v221 + 712);
        v119 = *(v221 + 696);

        v0 = v221;
        v202(v118, v119);
        v120 = sub_10005DC4C();
        v200(v120);
        v121 = sub_100012498();
        v122(v121);
        v48 = v210;
        v15 = v194;
        if (v210 == v198)
        {
          goto LABEL_85;
        }

        goto LABEL_38;
      }

      break;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    *(v0 + 1016) = v28;
    sub_100060EE8();
    if (!v109)
    {
      v125 = sub_10008A928();
      goto LABEL_108;
    }

    sub_10005D988();
    if (v110)
    {
      goto LABEL_150;
    }

    v125 = sub_1000604FC(v126, v127);
LABEL_108:
    v126 = sub_10005F138(v125);
    *(v0 + 1032) = v128;
    if (v44)
    {
      __break(1u);
      goto LABEL_148;
    }

    objc_opt_self();
    sub_10005E028();
    v129 = swift_dynamicCastObjCClass();
    *(v0 + 1040) = v129;
    if (v129)
    {
      v183 = *(v0 + 976);
      if (![v15 key])
      {
        sub_10008A268();
        sub_10008A238();
        sub_10005D9B8();
      }

      sub_1000613D4();
      sub_10005F674();
      *(v0 + 1056) = sub_10008A3A8();
      sub_10005D9B8();
      sub_10008A388();
      sub_10005CA4C();
      sub_10005F3B4();

      return _swift_task_switch(v126);
    }

LABEL_110:
    v130 = *(v0 + 1024);
    v131 = [*(v0 + 976) identifier];
    sub_10008A268();
    sub_1000601B4();

    *(v0 + 368) = v1;
    *(v0 + 376) = v2;
    sub_10005FC3C();
    v132 = [v130 key];
    sub_10008A268();
    sub_10005F650();

    v225._countAndFlagsBits = sub_10005DC58();
    sub_10008A2C8(v225);

    v134 = *(v0 + 368);
    v133 = *(v0 + 376);
    *(v0 + 1072) = v133;
    sub_10005D504();
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    *(v135 + 24) = v133;
    sub_10005D9D0();
    v136 = swift_allocObject();
    *(v136 + 16) = 32;
    sub_10005D9D0();
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    sub_10005D504();
    swift_allocObject();
    sub_10005EA98();
    *(v138 + 16) = v139;
    *(v138 + 24) = v135;
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    v140 = swift_initStackObject();
    v141 = sub_10005C6B8(v140, xmmword_10008D620);
    v141[2].n128_u64[0] = v142;
    v141[2].n128_u64[1] = v136;
    v141[3].n128_u64[0] = sub_10005C5C8;
    v141[3].n128_u64[1] = v137;
    v141[4].n128_u64[0] = sub_10005C5D0;
    v141[4].n128_u64[1] = v3;

    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v143 = sub_100088F88();
    v144 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E048();
      v145 = swift_slowAlloc();
      sub_10005DC40();
      v146 = swift_slowAlloc();
      v147 = 0;
      *(v221 + 456) = 0;
      *(v221 + 464) = v146;
      *v145 = 258;
      *(v221 + 448) = v145 + 2;
      while (v147 != 3)
      {
        v148 = v140[v147 + 2].n128_u64[0];

        v148(v221 + 448, v221 + 456, v221 + 464);

        ++v147;
      }

      v149 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v143, v144, v149, "IndexType", "type=%{signpost.description:attribute}s", v145, 0xCu);
      sub_10005B1BC(v146);
      sub_10005D4F8();

      sub_10005D4F8();
    }

    else
    {
    }

    v150 = *(v221 + 824);
    sub_10005CFEC();
    v152 = *(v151 + 536);
    v153 = sub_10005D480();
    v154(v153);
    sub_100088FD8();
    sub_10005E928();
    swift_allocObject();
    sub_1000124D4();
    v155 = sub_10005D458();
    v156(v155);
    sub_10005E4AC(v150, "IndexType");
    *(v221 + 1080) = *(v4 + 8);
    sub_100060E14();
    *(v221 + 1088) = v157;
    v158 = sub_10005DC4C();
    v159(v158);
    *(v221 + 1096) = *(v221 + 8);
    sub_100060E08();
    *(v221 + 1104) = v160;
    v161 = sub_1000124C8();
    v162(v161);
    if (v152 >> 62)
    {
      v126 = sub_10005FB38();
    }

    else
    {
      v126 = sub_100060E38(*(v221 + 536));
    }

    *(v221 + 1112) = v126;
    if (v126)
    {
      if (v126 < 1)
      {
        goto LABEL_152;
      }

      *(v221 + 1120) = 0;
      v181 = *(v221 + 536);
      if ((v181 & 0xC000000000000001) != 0)
      {
        v182 = sub_10008A928();
      }

      else
      {
        v182 = *(v181 + 32);
      }

      *(v221 + 1128) = v182;
      v185 = swift_task_alloc();
      *(v221 + 1136) = v185;
      *v185 = v221;
      sub_10005CC00(v185);
      sub_10005F3B4();

      return sub_100014AB4(v186, v187, v188, v189);
    }

    v207 = *(v221 + 1016);
    sub_100088D58();
    v163 = sub_100088D78();
    v165 = v164;
    v15 = sub_100088D88();
    v166 = sub_100088F88();
    sub_100088FB8();
    v167 = sub_10008A698();
    v168 = sub_10008A7B8();

    if ((v168 & 1) == 0)
    {
      goto LABEL_123;
    }

    if ((v165 & 1) == 0)
    {
      if (!v163)
      {
        __break(1u);
LABEL_123:
        v214 = *(v221 + 1096);
        v12 = *(v221 + 1080);
        v3 = *(v221 + 1024);
        v218 = *(v221 + 864);
        v219 = *(v221 + 1104);
        v169 = *(v221 + 848);
        v211 = *(v221 + 840);
        v1 = *(v221 + 768);
        v2 = *(v221 + 728);
        v4 = *(v221 + 696);

        v0 = v221;
        v170 = sub_10005ECCC();
        (v12)(v170);
        v171 = sub_10005DC58();
        v214(v171);
        (*(v169 + 8))(v218, v211);
LABEL_130:
        v28 = v207;
        continue;
      }

LABEL_127:
      v219 = v166;
      v173 = *(v221 + 1152);

      sub_100088FE8();

      v174 = sub_10005ED94();
      v4 = "[Error] Interval already ended";
      if (v175(v174) != v173)
      {
        (*(*(v221 + 624) + 8))(*(v221 + 640), *(v221 + 616));
        v4 = "";
      }

      v212 = *(v221 + 1096);
      v203 = *(v221 + 1080);
      v1 = *(v221 + 1024);
      v215 = *(v221 + 864);
      v176 = *(v221 + 848);
      v204 = *(v221 + 840);
      v201 = *(v221 + 800);
      v199 = *(v221 + 768);
      v12 = *(v221 + 728);
      v2 = *(v221 + 696);
      sub_10005E3C8();
      v177 = swift_slowAlloc();
      *v177 = 0;
      v178 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v219, v167, v178, v163, v4, v177, 2u);
      sub_10005D4F8();

      v179 = sub_10005E9B4();
      v203(v179);
      v212(v201, v199);
      v180 = *(v176 + 8);
      v3 = v176 + 8;
      v180(v215, v204);
      v0 = v221;
      goto LABEL_130;
    }

    break;
  }

  if (HIDWORD(v163))
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  sub_10005EBF0();
  if (!v109)
  {
    v172 = v163 > 0x10FFFF;
    v163 = v197;
    if (!v172)
    {
      goto LABEL_127;
    }

LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
  }

  __break(1u);
LABEL_152:
  __break(1u);
  return _swift_task_switch(v126);
}

uint64_t sub_100023B00()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  *(v6 + 1144) = v0;

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_100023BF8()
{
  v235 = v0;
  v2 = *(v0 + 1128);
  v3 = *(v0 + 664);
  sub_100089818();
  sub_100089808();
  sub_10005D9B8();
  sub_1000897E8();

  LODWORD(v3) = v3 + 8;
  v4 = sub_1000124C8();
  v5(v4);
  v6 = sub_100060A24();
  if (!v7)
  {
LABEL_123:
    *(v0 + 1120) = v6;
    v197 = *(v0 + 536);
    if ((v197 & 0xC000000000000001) != 0)
    {
      v198 = sub_10008A928();
    }

    else
    {
      v198 = *(v197 + 8 * v6 + 32);
    }

    *(v0 + 1128) = v198;
    swift_task_alloc();
    sub_100012480();
    *(v0 + 1136) = v199;
    *v199 = v200;
    sub_10005CC00(v199);
    sub_10005DD04();
    sub_10005F3B4();

    return sub_100014AB4(v201, v202, v203, v204);
  }

  v208 = v0 + 424;
  v211 = v0 + 440;
  v8 = (v0 + 1144);
  v230 = (v0 + 1016);
  v233 = v0;
  while (1)
  {
    v224 = *v8;
    sub_100060568(v6);
    v9 = sub_100088D78();
    v11 = v10;
    sub_100088D88();
    v12 = sub_100088F88();
    sub_100088FB8();
    v13 = sub_10008A698();
    v14 = sub_10008A7B8();

    if (v14)
    {
      if (v11)
      {
        v0 = v233;
        if (HIDWORD(v9))
        {
          goto LABEL_141;
        }

        sub_10005EBF0();
        if (v7)
        {
          goto LABEL_144;
        }

        v20 = v9 > 0x10FFFF;
        v9 = v211;
        if (v20)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v0 = v233;
        if (!v9)
        {
          goto LABEL_140;
        }
      }

      v229 = v13;
      sub_100060044();
      sub_100088FE8();

      v12 += 88;
      v21 = sub_100012498();
      v13 = "[Error] Interval already ended";
      if (v22(v21) != v3)
      {
        v23 = sub_10005F068();
        v24(v23);
        v13 = "";
      }

      v216 = *(v0 + 1080);
      v25 = *(v0 + 1024);
      v220 = *(v0 + 1096);
      v222 = *(v0 + 864);
      v26 = *(v0 + 848);
      v219 = *(v0 + 840);
      v215 = *(v0 + 800);
      v213 = *(v0 + 768);
      v14 = *(v0 + 728);
      sub_10005E3C8();
      v27 = swift_slowAlloc();
      sub_100060448(v27);
      v28 = sub_100088F68();
      sub_10006001C(&_mh_execute_header, v29, v229, v28);
      sub_10005CF50();

      v30 = sub_10005E12C();
      v216(v30);
      v220(v215, v213);
      v31 = *(v26 + 8);
      v1 = (v26 + 8);
      v31(v222, v219);
    }

    else
    {
      v225 = *(v0 + 1096);
      sub_100060DE0();
      v228 = v15;
      v16 = *(v0 + 848);
      v221 = *(v0 + 840);
      sub_100060714();

      v17 = sub_10005E51C();
      (v14)(v17);
      v18 = sub_10005E494();
      v225(v18);
      v19 = *(v16 + 8);
      v11 = v16 + 8;
      v19(v228, v221);
    }

    sub_10005F058();
    if (v7)
    {
      break;
    }

LABEL_44:
    *(v0 + 1016) = v224;
    sub_100060EE8();
    if (v7)
    {
      sub_10005D988();
      if (v57)
      {
        goto LABEL_143;
      }

      v55 = sub_1000604FC(v6, v56);
    }

    else
    {
      v55 = sub_10008A928();
    }

    v6 = sub_10005F138(v55);
    *(v0 + 1032) = v58;
    if (v37)
    {
      goto LABEL_138;
    }

    objc_opt_self();
    sub_10005E028();
    v59 = swift_dynamicCastObjCClass();
    *(v0 + 1040) = v59;
    if (v59)
    {
      goto LABEL_115;
    }

    v60 = [sub_10005FB54() identifier];
    v61 = sub_10008A268();
    v63 = v62;

    *(v0 + 368) = v61;
    *(v0 + 376) = v63;
    sub_10005FC3C();
    v64 = [v11 key];
    sub_10008A268();
    sub_10005F668();

    v236._countAndFlagsBits = sub_1000124C8();
    sub_10008A2C8(v236);

    v66 = *(v0 + 368);
    v65 = *(v0 + 376);
    *(v0 + 1072) = v65;
    sub_10005D504();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v65;
    sub_10005D9D0();
    v3 = swift_allocObject();
    sub_10005EDE0(v3);
    sub_10005D9D0();
    v68 = swift_allocObject();
    v69 = v0;
    sub_10005FDAC(v68);
    sub_10005D504();
    v70 = swift_allocObject();
    sub_10005E900(v70);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v72 = sub_10005C6B8(inited, xmmword_10008D620);
    v72[2].n128_u64[0] = v73;
    v72[2].n128_u64[1] = v3;
    v72[3].n128_u64[0] = sub_10005C5C8;
    v72[3].n128_u64[1] = v13;
    v72[4].n128_u64[0] = sub_10005C5D0;
    v72[4].n128_u64[1] = v9;

    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v74 = sub_100088F88();
    sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E048();
      v75 = swift_slowAlloc();
      sub_10005DC40();
      v1 = swift_slowAlloc();
      v76 = 0;
      v69[57] = 0;
      v69[58] = v1;
      *v75 = 258;
      v69[56] = v75 + 2;
      while (v76 != 3)
      {
        v3 = inited[v76 + 2].n128_u64[0];

        v3(v69 + 56, v69 + 57, v69 + 58);

        ++v76;
      }

      sub_100088F68();
      sub_100060424();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v77, v78, "IndexType", "type=%{signpost.description:attribute}s", v75, 0xCu);
      sub_10005B1BC(v1);
      sub_10005D340();

      sub_10005D4F8();
    }

    else
    {
    }

    v79 = *(v233 + 824);
    sub_10005CFEC();
    v231 = *(v80 + 536);
    v81 = sub_10005D480();
    v82(v81);
    sub_100088FD8();
    sub_10005E928();
    swift_allocObject();
    sub_1000124D4();
    v83 = sub_10005D458();
    v84(v83);
    v0 = v233;
    sub_10005E4AC(v79, "IndexType");
    *(v233 + 1080) = v69[1];
    sub_100060E14();
    *(v233 + 1088) = v85;
    v86 = sub_10005DC4C();
    v87(v86);
    v88 = v1[1];
    ++v1;
    *(v233 + 1096) = v88;
    sub_100060E08();
    *(v233 + 1104) = v89;
    v90 = sub_1000124C8();
    v91(v90);
    if (v231 >> 62)
    {
      v6 = sub_10005FB38();
    }

    else
    {
      v6 = sub_100060E38(*(v233 + 536));
    }

    *(v233 + 1112) = v6;
    v8 = v230;
    if (v6)
    {
      goto LABEL_121;
    }
  }

  sub_100061464();

  v9 = *(v0 + 992);
  v32 = *(v0 + 984);
  while (1)
  {
    v6 = *(v0 + 936);
    if (v6 < 0)
    {
      v44 = sub_10008A8A8();
      if (!v44)
      {
        break;
      }

      v45 = sub_100060F9C(v44);
      sub_100011D84(v45, &qword_1000A5EA8, WFAction_ptr);
      sub_10005F0B8();
      sub_10005ED24();
      swift_dynamicCast();
      v43 = *(v0 + 472);
      v34 = v32;
      v13 = v9;
    }

    else
    {
      v33 = v32;
      v34 = v32;
      if (!v9)
      {
        do
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_130;
          }

          sub_10005FF7C();
          if (v36 == v37)
          {
            goto LABEL_62;
          }

          sub_10005FF6C();
        }

        while (!v38);
      }

      sub_10005D470();
      v13 = (v40 & v39);
      v43 = sub_10005F868(v41, v42);
    }

    *(v0 + 992) = v13;
    *(v0 + 984) = v34;
    *(v0 + 976) = v43;
    if (!v43)
    {
      break;
    }

    sub_10008A788();
    sub_1000609FC();
    if (v37)
    {
      goto LABEL_131;
    }

    sub_100060C1C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v9 > *(v11 + 24) >> 1)
    {
      sub_1000610AC(isUniquelyReferenced_nonNull_native);
      v11 = v47;
    }

    if (*(v12 + 16))
    {
      sub_10005F348();
      if (v49 < v32)
      {
        goto LABEL_133;
      }

      sub_10006108C(v48);

      if (v32)
      {
        v50 = *(v11 + 16);
        v37 = __OFADD__(v50, v32);
        v51 = v50 + v32;
        if (v37)
        {
          goto LABEL_137;
        }

        *(v11 + 16) = v51;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_132;
      }
    }

    *(v233 + 400) = v11;
    v52 = [v43 parameters];
    v53 = sub_10006028C();
    sub_100011D84(v53, &qword_1000A6530, WFParameter_ptr);
    v11 = sub_10008A328();
    *(v233 + 1000) = v11;

    if (v11 >> 62)
    {
      v54 = sub_10008A9D8();
    }

    else
    {
      v54 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v233 + 1008) = v54;
    if (v54)
    {
      v0 = v233;
      goto LABEL_44;
    }

    v32 = v34;
    v9 = v13;
    v0 = v233;
  }

  v35 = sub_100060F70();
LABEL_62:
  sub_10005FB8C(v35);
  v214 = v92;
  if (!v92)
  {
LABEL_108:

    sub_10005CDDC();
    sub_10005E6A0();

    sub_10001248C();
    sub_10005F3B4();

    __asm { BRAA            X1, X16 }
  }

  v93 = sub_100061434();
  sub_10005FED4(v93);
  v212 = v94;
  sub_100060D68();
  v209 = v95;
  *&v96 = 136315394;
  v207 = v96;
  v210 = v11;
LABEL_64:
  v97 = *(v0 + 968);
  v98 = sub_10005E2A4();
  sub_10004F858(v98, v99, v11);
  v232 = *(v212 + 8 * v12);
  *(v0 + 408) = v232;
  v100 = sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  v101 = sub_1000614C4(v100);
  v103 = v102;
  sub_10005D504();
  v104 = swift_allocObject();
  *(v104 + 16) = v101;
  *(v104 + 24) = v103;
  sub_10005D9D0();
  v105 = swift_allocObject();
  sub_10005EDE0(v105);
  sub_10005D9D0();
  v106 = swift_allocObject();
  sub_10005FF3C(v106);
  sub_10005D504();
  v107 = swift_allocObject();
  sub_10005D18C(v107);
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v108 = swift_initStackObject();
  v109 = sub_10005C6B8(v108, xmmword_10008D620);
  v109[2].n128_u64[0] = v110;
  v109[2].n128_u64[1] = v105;
  v109[3].n128_u64[0] = sub_10005C5C8;
  v109[3].n128_u64[1] = v103;
  v109[4].n128_u64[0] = sub_10005C5D0;
  v109[4].n128_u64[1] = v107;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v111 = sub_100088F88();
  v11 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v97 = swift_slowAlloc();
    sub_10005DC40();
    v112 = swift_slowAlloc();
    sub_10005FF2C(v112);
    sub_10005E4D8(v97);
    while (v0 != 48)
    {
      v113 = *(v108[2].n128_u64 + v0);

      v114 = sub_10005E4C8();
      v113(v114);

      v0 += 16;
    }

    v115 = v233;

    sub_100088F68();
    sub_100060424();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v111, v116, v117, "IndexType", "type=%{signpost.description:attribute}s", v97, 0xCu);
    sub_10005B1BC(v103);
    sub_10005D4F8();

    sub_10005D4F8();
  }

  else
  {

    v115 = v233;
  }

  v223 = v12 + 1;
  sub_10005D938();
  sub_1000124F4();
  sub_10005FB08();
  v120(v118, v119);
  sub_100088FD8();
  sub_10005E928();
  swift_allocObject();
  sub_1000124D4();
  v121 = sub_10005DE88();
  v122(v121);
  sub_10005E4AC(v97, "IndexType");
  v123 = sub_10005F62C();
  v218 = v124;
  v124(v123);
  v125 = *(v12 + 9);
  v126 = sub_10005E088();
  v125(v126);
  v127 = 0;
  v128 = _swiftEmptyArrayStorage;
  v129 = v115;
  v130 = v224;
  v0 = v232;
  v217 = v125;
  while (2)
  {
    if (v230 == v127)
    {
      v145 = v128[2];
      v224 = v130;
      if (v145)
      {
        sub_10005D14C();
        sub_100060968();
        v226 = v146;
        do
        {
          sub_10005E458();
          v226(v147, v148);
          sub_100089808();
          sub_10005E464();
          v129 = v233;
          sub_1000897E8();

          v149 = sub_10005DC4C();
          v150(v149);
          v11 += v232;
          --v145;
        }

        while (v145);
      }

      goto LABEL_97;
    }

    if ((*(v129 + 536) & 0xC000000000000001) != 0)
    {
      v133 = sub_10008A928();
    }

    else
    {
      sub_10005E804();
      if (v127 >= v132)
      {
        goto LABEL_112;
      }

      v133 = *(v131 + 8 * v127 + 32);
    }

    v11 = v133;
    if (!__OFADD__(v127, 1))
    {
      v134 = sub_10005F36C();
      sub_100013478(v134, v135);
      if (!v130)
      {
        v137 = v136;

        v11 = *(v137 + 16);
        v0 = v128[2];
        if (__OFADD__(v0, v11))
        {
          goto LABEL_113;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v0 + v11) > v128[3] >> 1)
        {
          sub_10005DC34();
          sub_1000804D0(v138, v139, v140, v141);
          v128 = v142;
        }

        v0 = v232;
        if (!*(v137 + 16))
        {

          if (v11)
          {
            goto LABEL_114;
          }

          goto LABEL_87;
        }

        sub_10005F0F8();
        if (v36 != v37)
        {
          __break(1u);
LABEL_121:
          if (v6 >= 1)
          {
            v6 = 0;
            goto LABEL_123;
          }
        }

        else
        {
          sub_10005E0A0();
          sub_10005FAA4();

          if (!v11)
          {
LABEL_87:
            v130 = 0;
            ++v127;
            continue;
          }

          v143 = v128[2];
          v37 = __OFADD__(v143, v11);
          v144 = v143 + v11;
          if (!v37)
          {
            v128[2] = v144;
            goto LABEL_87;
          }

          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
        }

        __break(1u);
        return _swift_task_switch(v6);
      }

      sub_10006135C();
      swift_errorRetain();
      v151 = sub_100088FF8();
      v152 = sub_10008A5D8();

      v153 = sub_100061314();
      v154 = *(v129 + 600);
      v155 = *(v129 + 576);
      v156 = *(v129 + 568);
      if (v153)
      {
        sub_10005E91C();
        swift_slowAlloc();
        v227 = v154;
        v157 = sub_10005F8BC();
        sub_10005DC40();
        v158 = swift_slowAlloc();
        v234[0] = v158;
        sub_100060948(v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
        v168 = sub_100061584();
        sub_100080D2C(v168, v169, v234);
        sub_100060924();

        *(v129 + 4) = v128;
        *(v129 + 12) = 2112;
        swift_errorRetain();
        v170 = _swift_stdlib_bridgeErrorToNSError();
        *(v129 + 14) = v170;
        *v157 = v170;
        sub_10005F754(&_mh_execute_header, v151, v152, "Failed to index content item type %s: %@", v207);
        sub_100017954(v157, &qword_1000A6460, &qword_10008D878);
        sub_10005D4F8();

        sub_10005B1BC(v158);
        sub_10005D4F8();

        sub_10005FA30();
        sub_10005D4F8();

        (*(v155 + 8))(v227, v156);
      }

      else
      {

        v171 = sub_10005DEB4();
        v173(v171, v172);
      }

      sub_100089808();
      sub_10005E068();
      v234[1] = v209;
      v237._countAndFlagsBits = sub_100061584();
      sub_10008A2C8(v237);

      sub_10005FFF4();
      sub_10006010C();
      sub_100060E98();
      v174 = sub_10005DC58();
      sub_100060810(v174);

      sub_10005FA30();

      v224 = 0;
LABEL_97:
      sub_100088D58();
      v175 = sub_100088D78();
      v177 = v176;
      sub_100088D88();
      v178 = sub_100088F88();
      sub_100088FB8();
      v179 = sub_10008A698();
      v6 = sub_10008A7B8();
      if (v6)
      {
        if (v177)
        {
          if (HIDWORD(v175))
          {
            goto LABEL_135;
          }

          sub_10005EBF0();
          if (v7)
          {
            goto LABEL_139;
          }

          sub_10006097C();
          v175 = v208;
          if (!v7 & v57)
          {
            goto LABEL_136;
          }
        }

        else if (!v175)
        {
          goto LABEL_134;
        }

        v129 = v233;
        v180 = *(v233 + 1152);

        sub_100088FE8();

        v181 = sub_100012498();
        v183 = "[Error] Interval already ended";
        if (v182(v181) != v180)
        {
          v184 = sub_10005EF74();
          v185(v184);
          v183 = "";
        }

        sub_10005E3C8();
        v186 = swift_slowAlloc();
        *v186 = 0;
        v187 = sub_100088F68();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v178, v179, v187, v175, v183, v186, 2u);
        sub_10005D4F8();
      }

      v188 = *(v129 + 784);
      v189 = *(v129 + 768);

      v190 = sub_10005E44C();
      v218(v190);
      v217(v188, v189);
      v191 = sub_100012498();
      v192(v191);
      v12 = v223;
      v0 = v129;
      v11 = v210;
      if (v223 == v214)
      {
        goto LABEL_108;
      }

      goto LABEL_64;
    }

    break;
  }

  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  v195 = *(v0 + 976);
  if (![v11 key])
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  sub_1000613D4();
  sub_10005F674();
  *(v0 + 1056) = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10005CA4C();
  sub_10005F3B4();

  return _swift_task_switch(v6);
}

uint64_t sub_100024EE0()
{
  v255 = v0;
  v1 = v0;
  v2 = v0[141];
  v3 = v1[128];
  v4 = v1[122];
  sub_100088F28();
  v5 = v4;
  v6 = v3;
  swift_errorRetain();
  v7 = v2;
  v8 = sub_100088FF8();
  v9 = sub_10008A5D8();

  if (os_log_type_enabled(v8, v9))
  {
    v234 = v1[141];
    v10 = v1[128];
    v11 = v1[122];
    v245 = v1[72];
    v247 = v1[71];
    v249 = v1[73];
    v237 = v9;
    v12 = v1[70];
    loga = v8;
    v13 = v1[69];
    v235 = v1[68];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v254[0] = swift_slowAlloc();
    *v14 = 138413058;
    *(v14 + 4) = v10;
    *v15 = v10;
    sub_100060DC8();
    v16 = v10;
    v17 = [v11 identifier];
    sub_10008A268();

    v18 = sub_10005E98C();
    v21 = sub_100080D2C(v18, v19, v20);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    v15[1] = v22;
    *(v14 + 32) = 2080;
    v23 = [v234 locale];
    sub_100088A48();

    sub_100088A08();
    (*(v13 + 8))(v12, v235);
    v24 = sub_10005DB50();
    sub_100080D2C(v24, v25, v26);
    sub_10005E7B8();

    *(v14 + 34) = v12;
    _os_log_impl(&_mh_execute_header, loga, v237, "Failed to index parameter type: %@ in %s: %@ for locale: %s", v14, 0x2Au);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    swift_arrayDestroy();
    sub_10005D340();

    swift_arrayDestroy();
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v245 + 8))(v249, v247);
  }

  else
  {

    v27 = sub_10005E694();
    v28(v27);
  }

  v29 = v1;
  v30 = v1[141];
  v31 = v1[128];
  v32 = v1[122];
  v33 = v1[70];
  v34 = v1[69];
  v248 = v1[68];
  v253 = v1;
  sub_100089818();
  v35 = sub_100089808();
  v29[48] = 0x6574656D61726170;
  v29[49] = 0xEA00000000002072;
  v36 = [v31 key];
  v37 = sub_10008A268();
  v39 = v38;

  sub_100060418();
  v256._countAndFlagsBits = v37;
  v256._object = v39;
  sub_10008A2C8(v256);

  sub_100060418();
  sub_10008A2C8(v257);
  v40 = [v32 identifier];
  sub_10008A268();

  sub_100060418();
  v258._countAndFlagsBits = sub_10005EB28();
  sub_10008A2C8(v258);

  sub_100060418();
  sub_10008A2C8(v259);
  v41 = [v30 locale];
  sub_100088A48();

  sub_100088A08();
  v43 = *(v34 + 8);
  v42 = (v34 + 8);
  v43(v33, v248);
  sub_100060418();
  v260._countAndFlagsBits = sub_10005EB28();
  sub_10008A2C8(v260);

  swift_getErrorValue();
  sub_10008AAB8();
  sub_100060E98();
  sub_10005EB28();
  sub_1000897F8();

  sub_100060BC4();

  v44 = sub_100060A24();
  if (!v45)
  {
LABEL_126:
    v29[140] = v44;
    v213 = v29[67];
    if ((v213 & 0xC000000000000001) != 0)
    {
      v214 = sub_10008A928();
    }

    else
    {
      v214 = *(v213 + 8 * v44 + 32);
    }

    v29[141] = v214;
    swift_task_alloc();
    sub_100012480();
    v29[142] = v215;
    *v215 = v216;
    sub_10005CC00(v215);
    sub_10005DD04();
    sub_100061010();

    return sub_100014AB4(v217, v218, v219, v220);
  }

  log = 0;
  v223 = (v29 + 53);
  v227 = (v29 + 55);
  while (1)
  {
    sub_100060568(v44);
    v46 = sub_100088D78();
    v48 = v47;
    sub_100088D88();
    v49 = sub_100088F88();
    sub_100088FB8();
    v50 = sub_10008A698();
    v51 = sub_10008A7B8();

    if (v51)
    {
      if (v48)
      {
        v29 = v253;
        if (HIDWORD(v46))
        {
          goto LABEL_144;
        }

        sub_10005EBF0();
        if (v45)
        {
          goto LABEL_147;
        }

        v58 = v46 > 0x10FFFF;
        v46 = v227;
        if (v58)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v29 = v253;
        if (!v46)
        {
          goto LABEL_143;
        }
      }

      LODWORD(v248) = v50;
      sub_100060044();
      sub_100088FE8();

      v49 += 88;
      v59 = sub_100012498();
      v50 = "[Error] Interval already ended";
      if (v60(v59) != v35)
      {
        v61 = sub_10005F068();
        v62(v61);
        v50 = "";
      }

      v238 = v29[137];
      v232 = v29[135];
      v63 = v29[128];
      v243 = v29[108];
      v64 = v29[106];
      v236 = v29[105];
      v229 = v29[96];
      v230 = v29[100];
      v51 = v29[91];
      v35 = v29[87];
      sub_10005E3C8();
      v65 = swift_slowAlloc();
      sub_100060448(v65);
      v66 = sub_100088F68();
      sub_10006001C(&_mh_execute_header, v67, v248, v66);
      sub_10005CF50();

      v68 = sub_10005E12C();
      v232(v68);
      v238(v230, v229);
      v69 = *(v64 + 8);
      v42 = (v64 + 8);
      v69(v243, v236);
    }

    else
    {
      sub_100060DE0();
      v248 = v52;
      v53 = v29[106];
      v242 = v29[105];
      v246 = v54;
      sub_100060714();

      v55 = sub_10005E51C();
      (v51)(v55);
      v56 = sub_10005E494();
      v246(v56);
      v57 = *(v53 + 8);
      v48 = v53 + 8;
      v57(v248, v242);
    }

    sub_10005F058();
    if (v45)
    {
      break;
    }

LABEL_47:
    v29[127] = log;
    sub_100060EE8();
    if (v45)
    {
      sub_10005D988();
      if (v94)
      {
        goto LABEL_146;
      }

      v92 = sub_1000604FC(v44, v93);
    }

    else
    {
      v92 = sub_10008A928();
    }

    v44 = sub_10005F138(v92);
    v29[129] = v95;
    if (v74)
    {
      goto LABEL_141;
    }

    objc_opt_self();
    sub_10005E028();
    v96 = swift_dynamicCastObjCClass();
    v29[130] = v96;
    if (v96)
    {
      goto LABEL_118;
    }

    v97 = [sub_10005FB54() identifier];
    v98 = sub_10008A268();
    v100 = v99;

    v29[46] = v98;
    v29[47] = v100;
    sub_10005FC3C();
    v101 = [v48 key];
    sub_10008A268();
    sub_10005F668();

    v261._countAndFlagsBits = sub_1000124C8();
    sub_10008A2C8(v261);

    v103 = v29[46];
    v102 = v29[47];
    v29[134] = v102;
    sub_10005D504();
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v102;
    sub_10005D9D0();
    v35 = swift_allocObject();
    sub_10005EDE0(v35);
    sub_10005D9D0();
    v105 = swift_allocObject();
    v106 = v29;
    sub_10005FDAC(v105);
    sub_10005D504();
    v107 = swift_allocObject();
    sub_10005E900(v107);
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v109 = sub_10005C6B8(inited, xmmword_10008D620);
    v109[2].n128_u64[0] = v110;
    v109[2].n128_u64[1] = v35;
    v109[3].n128_u64[0] = sub_10005C5C8;
    v109[3].n128_u64[1] = v50;
    v109[4].n128_u64[0] = sub_10005C5D0;
    v109[4].n128_u64[1] = v46;

    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v111 = sub_100088F88();
    v112 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E048();
      v113 = swift_slowAlloc();
      sub_10005DC40();
      v42 = swift_slowAlloc();
      v114 = 0;
      v106[57] = 0;
      v106[58] = v42;
      *v113 = 258;
      v106[56] = v113 + 1;
      while (v114 != 3)
      {
        v35 = inited[v114 + 2].n128_u64[0];

        (v35)(v106 + 56, v106 + 57, v106 + 58);

        ++v114;
      }

      v115 = sub_100088F68();
      sub_10006132C(&_mh_execute_header, v111, v112, v115, "IndexType", "type=%{signpost.description:attribute}s");
      sub_10005B1BC(v42);
      sub_10005D340();

      sub_10005CF50();
    }

    else
    {
    }

    v116 = v253[103];
    sub_10005CFEC();
    v250 = *(v117 + 536);
    v118 = sub_10005D480();
    v119(v118);
    sub_100088FD8();
    sub_10005E928();
    swift_allocObject();
    sub_1000124D4();
    v120 = sub_10005D458();
    v121(v120);
    v29 = v253;
    sub_10005E4AC(v116, "IndexType");
    v253[135] = v106[1];
    sub_100060E14();
    v253[136] = v122;
    v123 = sub_10005DC4C();
    v124(v123);
    v125 = v42[1];
    ++v42;
    v253[137] = v125;
    sub_100060E08();
    v253[138] = v126;
    v127 = sub_1000124C8();
    v128(v127);
    if (v250 >> 62)
    {
      v44 = sub_10005FB38();
    }

    else
    {
      v44 = sub_100060E38(v253[67]);
    }

    v253[139] = v44;
    if (v44)
    {
      goto LABEL_124;
    }

    log = v253[127];
  }

  sub_100061464();

  v46 = v29[124];
  v70 = v29[123];
  while (1)
  {
    v44 = v29[117];
    if (v44 < 0)
    {
      v81 = sub_10008A8A8();
      if (!v81)
      {
        break;
      }

      v82 = sub_100060F9C(v81);
      sub_100011D84(v82, &qword_1000A5EA8, WFAction_ptr);
      sub_10005F0B8();
      sub_10005ED24();
      swift_dynamicCast();
      v80 = v29[59];
      v35 = v70;
      v50 = v46;
    }

    else
    {
      v71 = v70;
      v35 = v70;
      if (!v46)
      {
        do
        {
          v35 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_133;
          }

          sub_10005FF7C();
          if (v73 == v74)
          {
            goto LABEL_65;
          }

          sub_10005FF6C();
        }

        while (!v75);
      }

      sub_10005D470();
      v50 = (v77 & v76);
      v80 = sub_10005F868(v78, v79);
    }

    v29[124] = v50;
    v29[123] = v35;
    v29[122] = v80;
    if (!v80)
    {
      break;
    }

    sub_10008A788();
    sub_1000609FC();
    if (v74)
    {
      goto LABEL_134;
    }

    sub_100060C1C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v46 > *(v48 + 24) >> 1)
    {
      sub_1000610AC(isUniquelyReferenced_nonNull_native);
      v48 = v84;
    }

    if (*(v49 + 16))
    {
      sub_10005F348();
      if (v86 < v70)
      {
        goto LABEL_136;
      }

      sub_10006108C(v85);

      if (v70)
      {
        v87 = *(v48 + 16);
        v74 = __OFADD__(v87, v70);
        v88 = &v70[v87];
        if (v74)
        {
          goto LABEL_140;
        }

        *(v48 + 16) = v88;
      }
    }

    else
    {

      if (v70)
      {
        goto LABEL_135;
      }
    }

    v253[50] = v48;
    v89 = [v80 parameters];
    v90 = sub_10006028C();
    sub_100011D84(v90, &qword_1000A6530, WFParameter_ptr);
    v48 = sub_10008A328();
    v253[125] = v48;

    if (v48 >> 62)
    {
      v91 = sub_10008A9D8();
    }

    else
    {
      v91 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v253[126] = v91;
    if (v91)
    {
      v29 = v253;
      goto LABEL_47;
    }

    v70 = v35;
    v46 = v50;
    v29 = v253;
  }

  v72 = sub_100060F70();
LABEL_65:
  sub_10005FB8C(v72);
  v228 = v129;
  if (!v129)
  {
LABEL_111:

    sub_10005CDDC();
    sub_1000602A4();
    sub_10005F258();

    sub_10001248C();
    sub_100061010();

    __asm { BRAA            X1, X16 }
  }

  v130 = sub_100061434();
  sub_10005FED4(v130);
  v226 = v131;
  sub_100060D68();
  v224 = v132;
  v225 = v48;
LABEL_67:
  v133 = sub_10005E2A4();
  sub_10004F858(v133, v134, v48);
  v251 = *(v226 + 8 * v49);
  v29[51] = v251;
  v135 = sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  sub_1000614C4(v135);
  sub_10005F650();
  sub_10005D504();
  v136 = swift_allocObject();
  *(v136 + 16) = v35;
  *(v136 + 24) = v50;
  sub_10005D9D0();
  v137 = swift_allocObject();
  sub_10005EDE0(v137);
  sub_10005D9D0();
  v138 = swift_allocObject();
  *(v138 + 16) = 8;
  sub_10005D504();
  v48 = swift_allocObject();
  sub_10005D18C(v48);
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v139 = swift_initStackObject();
  v140 = sub_10005C6B8(v139, xmmword_10008D620);
  v140[2].n128_u64[0] = v141;
  v140[2].n128_u64[1] = v137;
  v140[3].n128_u64[0] = sub_10005C5C8;
  v140[3].n128_u64[1] = v138;
  v140[4].n128_u64[0] = sub_10005C5D0;
  v140[4].n128_u64[1] = v48;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v142 = sub_100088F88();
  v143 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v48 = swift_slowAlloc();
    sub_10005DC40();
    v144 = swift_slowAlloc();
    sub_10005FF2C(v144);
    sub_10005E4D8(v48);
    while (v29 != 48)
    {
      v145 = *(v29 + v139 + 32);

      v146 = sub_10005E4C8();
      v145(v146);

      v29 += 2;
    }

    v147 = v253;

    v148 = sub_100088F68();
    sub_10006132C(&_mh_execute_header, v142, v143, v148, "IndexType", "type=%{signpost.description:attribute}s");
    sub_10005B1BC(v137);
    sub_10005D4F8();

    sub_10005CF50();
  }

  else
  {

    v147 = v253;
  }

  v239 = v49 + 1;
  sub_10005D938();
  sub_1000124F4();
  sub_10005FB08();
  v149();
  sub_100088FD8();
  sub_10005E928();
  swift_allocObject();
  sub_1000124D4();
  v150 = sub_10005DE88();
  v151(v150);
  sub_10005E4AC(v143, "IndexType");
  v152 = sub_10005F62C();
  v233 = v153;
  v153(v152);
  v154 = *(v49 + 9);
  v155 = sub_10005E088();
  v154(v155);
  v156 = 0;
  v157 = _swiftEmptyArrayStorage;
  v158 = v147;
  v159 = log;
  v29 = v251;
  v231 = v154;
  while (2)
  {
    if (v248 == v156)
    {
      v174 = v157[2];
      log = v159;
      if (v174)
      {
        sub_10005D14C();
        sub_100060968();
        v244 = v175;
        do
        {
          sub_10005E458();
          v244();
          sub_100089808();
          sub_10005E464();
          v158 = v253;
          sub_1000897E8();

          v176 = sub_10005DC4C();
          v177(v176);
          v48 += v251;
          --v174;
        }

        while (v174);
      }

      goto LABEL_100;
    }

    if ((v158[67] & 0xC000000000000001) != 0)
    {
      v162 = sub_10008A928();
    }

    else
    {
      sub_10005E804();
      if (v156 >= v161)
      {
        goto LABEL_115;
      }

      v162 = *(v160 + 8 * v156 + 32);
    }

    v48 = v162;
    if (!__OFADD__(v156, 1))
    {
      v163 = sub_10005F36C();
      sub_100013478(v163, v164);
      if (!v159)
      {
        v166 = v165;

        v48 = *(v166 + 16);
        v29 = v157[2];
        if (__OFADD__(v29, v48))
        {
          goto LABEL_116;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v29 + v48) > v157[3] >> 1)
        {
          sub_10005DC34();
          sub_1000804D0(v167, v168, v169, v170);
          v157 = v171;
        }

        v29 = v251;
        if (!*(v166 + 16))
        {

          if (v48)
          {
            goto LABEL_117;
          }

          goto LABEL_90;
        }

        sub_10005F0F8();
        if (v73 != v74)
        {
          __break(1u);
LABEL_124:
          if (v44 >= 1)
          {
            v44 = 0;
            goto LABEL_126;
          }
        }

        else
        {
          sub_10005E0A0();
          sub_10005FAA4();

          if (!v48)
          {
LABEL_90:
            v159 = 0;
            ++v156;
            continue;
          }

          v172 = v157[2];
          v74 = __OFADD__(v172, v48);
          v173 = v172 + v48;
          if (!v74)
          {
            v157[2] = v173;
            goto LABEL_90;
          }

          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
        }

        __break(1u);
        return _swift_task_switch(v44);
      }

      sub_10006135C();
      swift_errorRetain();
      v178 = sub_100088FF8();
      v179 = sub_10008A5D8();

      v180 = sub_100061314();
      v181 = v158[75];
      v182 = v158[72];
      v183 = v158[71];
      if (v180)
      {
        sub_10005E91C();
        v252 = v183;
        v184 = swift_slowAlloc();
        v158 = sub_10005FEE4();
        sub_10005DC40();
        v185 = swift_slowAlloc();
        v254[0] = v185;
        *v184 = 136315394;
        v186 = sub_100061584();
        sub_100080D2C(v186, v187, v254);
        sub_100060924();

        sub_100061144();
        v188 = _swift_stdlib_bridgeErrorToNSError();
        *(v184 + 14) = v188;
        *v158 = v188;
        _os_log_impl(&_mh_execute_header, v178, v179, "Failed to index content item type %s: %@", v184, 0x16u);
        sub_100017954(v158, &qword_1000A6460, &qword_10008D878);
        sub_10005FA30();
        sub_10005D4F8();

        sub_10005B1BC(v185);
        sub_10005D4F8();

        sub_10005CF50();

        (*(v182 + 8))(v181, v252);
      }

      else
      {

        (*(v182 + 8))(v181, v183);
      }

      sub_100089808();
      sub_10005E068();
      v254[1] = v224;
      v262._countAndFlagsBits = sub_100061584();
      sub_10008A2C8(v262);

      sub_10005FFF4();
      sub_10006010C();
      sub_100060E98();
      v189 = sub_10005DC58();
      sub_100060810(v189);

      sub_10005FA30();

      log = 0;
LABEL_100:
      v190 = v158;
      sub_100088D58();
      v191 = sub_100088D78();
      v193 = v192;
      sub_100088D88();
      v194 = sub_100088F88();
      sub_100088FB8();
      sub_10008A698();
      v44 = sub_10008A7B8();
      if (v44)
      {
        if (v193)
        {
          v195 = v253;
          if (HIDWORD(v191))
          {
            goto LABEL_138;
          }

          sub_10005EBF0();
          if (v45)
          {
            goto LABEL_142;
          }

          sub_10006097C();
          v191 = v223;
          if (!v45 & v94)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v195 = v253;
          if (!v191)
          {
            goto LABEL_137;
          }
        }

        v196 = *(v195 + 288);

        sub_100088FE8();

        v197 = sub_10005E12C();
        v199 = "[Error] Interval already ended";
        if (v198(v197) != v196)
        {
          v200 = sub_10005EF74();
          v201(v200);
          v199 = "";
        }

        sub_10005E3C8();
        v190 = v195;
        v202 = swift_slowAlloc();
        *v202 = 0;
        sub_100088F68();
        sub_100060424();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v194, v203, v204, v191, v199, v202, 2u);
        sub_10005D4F8();
      }

      v35 = v190[98];
      v50 = v190[96];

      v205 = sub_10005E44C();
      v233(v205);
      v206 = sub_10005DC58();
      v231(v206);
      v207 = sub_100012498();
      v208(v207);
      v29 = v190;
      v49 = v239;
      v48 = v225;
      if (v239 == v228)
      {
        goto LABEL_111;
      }

      goto LABEL_67;
    }

    break;
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  v211 = v29[122];
  if (![v48 key])
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  sub_1000613D4();
  sub_10005F674();
  v29[132] = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10005CA4C();
  sub_100061010();

  return _swift_task_switch(v44);
}

uint64_t sub_100026644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_10005CFA0();
  return _swift_task_switch(v5);
}

void sub_100026670()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100011D84(0, &qword_1000A6468, WFTrigger_ptr);
  v1 = sub_10008A7C8();
  v2 = v1 + 40;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 16;
    sub_100029F84(*(v2 - 8), *(v0 + 16));
    v2 = v5;
  }

  sub_100012420();
  sub_1000615B4();

  v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100026758()
{
  sub_100012404();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[15] = v5;
  v1[16] = v6;
  v7 = sub_100089008();
  v1[21] = v7;
  sub_100017A0C(v7);
  v1[22] = v8;
  v1[23] = sub_10005F3EC();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v9 = sub_10005CFA0();

  return _swift_task_switch(v9);
}

uint64_t sub_100027140()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
  }

  sub_100012554();

  return _swift_task_switch(v6);
}

uint64_t sub_1000289A4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100028A68;

  return ToolKitIndexer.reindex(request:)();
}

uint64_t sub_100028A68()
{
  sub_10005EC9C();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001237C();
  *v5 = v4;
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[4];
  if (v2)
  {
    v10 = sub_100088968();

    sub_100060214();
    v11 = sub_10005F378();
    v12(v11);
  }

  else
  {
    sub_100060214();
    v13(v9, 0);
  }

  _Block_release(v4[4]);
  v14 = v8[1];

  return v14();
}

void sub_100028BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000602E0();
  a19 = v22;
  a20 = v23;
  v100 = v21;
  v94 = v25;
  v95 = v24;
  v27 = v26;
  sub_100088F78();
  sub_100012368();
  v91 = v29;
  v92 = v28;
  __chkstk_darwin(v28);
  sub_10005CFB0();
  v88 = v30;
  sub_10005EC34();
  __chkstk_darwin(v31);
  sub_100088F98();
  sub_100012368();
  v89 = v33;
  v90 = v32;
  __chkstk_darwin(v32);
  sub_10005CFB0();
  v87 = v34;
  sub_10005EC34();
  __chkstk_darwin(v35);
  sub_100060BFC();
  sub_100088D98();
  sub_100012368();
  v97 = v37;
  v98 = v36;
  __chkstk_darwin(v36);
  sub_1000123E8();
  v96 = v39 - v38;
  sub_10005FA24();
  v99 = sub_100089008();
  sub_100012368();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_10005CFB0();
  v86 = v43;
  sub_10005EC34();
  __chkstk_darwin(v44);
  v46 = v84 - v45;
  v47 = sub_100088E08();
  sub_100012368();
  __chkstk_darwin(v48);
  sub_1000123E8();
  v51 = v50 - v49;
  sub_100060214();
  v93 = v27;
  v52(v51, v27, v47);
  v53 = sub_10005FBB8();
  v55 = v54(v53);
  LODWORD(v27) = enum case for ToolKitIndexingReason.Changeset.partial(_:);
  v56 = sub_10005FBB8();
  v57(v56);
  v101 = _swiftEmptyArrayStorage;
  if (v55 == v27)
  {
    v84[2] = WFLogCategoryToolKitIndexing;
    sub_100088F28();
    v58 = sub_100088FF8();
    v59 = sub_10008A5B8();
    if (os_log_type_enabled(v58, v59))
    {
      sub_10005E3C8();
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Clearing underspecified containers...", v60, 2u);
      sub_10005D340();
    }

    v85 = *(v41 + 8);
    v84[1] = v41 + 8;
    v85(v46, v99);
    sub_100088D68();
    sub_100088F88();
    sub_100088F58();
    v61 = sub_100088F88();
    v62 = sub_10008A6A8();
    if (sub_10008A7B8())
    {
      sub_10005E3C8();
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v62, v64, "ContainerCleanup", "Cleaning up underspecified containers", v63, 2u);
      sub_10005D340();
    }

    sub_1000609C8();
    v65 = sub_10005DC58();
    v66(v65);
    sub_100088FD8();
    sub_10005E928();
    swift_allocObject();
    sub_10005E434();
    sub_100088FC8();
    (*(v89 + 16))(v87, v20, v90);
    v67 = v96;
    sub_100088DA8();
    v68 = sub_10005EC58();
    v69(v68);
    v70 = sub_100060FB4();
    v72 = v71(v70);
    a10 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v72);
    v84[-4] = v93;
    v84[-3] = &a10;
    v84[-2] = v94;
    v73 = v100;
    sub_100089368();
    if (v73)
    {

      sub_10002B2D8(v67);
      (*(v97 + 8))(v67, v98);
    }

    else
    {
      v101 = a10;
      if (a10[2])
      {
        v74 = v86;
        sub_100088F28();
        v75 = sub_100088FF8();
        v76 = sub_10008A5E8();
        if (os_log_type_enabled(v75, v76))
        {
          sub_10005E048();
          v77 = swift_slowAlloc();
          sub_10005DC40();
          v78 = swift_slowAlloc();
          v102 = v78;
          *v77 = 136315138;

          sub_10008A338();
          sub_10005F650();

          v79 = sub_10005DC58();
          v82 = sub_100080D2C(v79, v80, v81);

          *(v77 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v75, v76, "Updated containers without localized names: %s", v77, 0xCu);
          sub_10005B1BC(v78);
          sub_10005D0A0();

          sub_10005D4F8();

          v83 = v86;
        }

        else
        {

          v83 = v74;
        }

        v85(v83, v99);
      }

      sub_10002B2D8(v67);
      (*(v97 + 8))(v67, v98);
    }
  }

  sub_1000601E4();
}

void sub_1000292A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v40 = sub_100088A68();
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100088E08();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v14, a2, v11);
  if ((*(v12 + 88))(v14, v11) == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    v34[2] = a1;
    v35 = v4;
    v34[0] = a3;
    (*(v12 + 96))(v14, v11);
    v15 = *v14;

    v34[1] = sub_10001BE2C(v15);
    v16 = sub_10008391C();
    v17 = 0;
    v38 = a4 & 0xC000000000000001;
    v39 = v16;
    v37 = a4 & 0xFFFFFFFFFFFFFF8;
    v18 = (v36 + 8);
    v19 = _swiftEmptyArrayStorage;
    v20 = a4;
    while (v39 != v17)
    {
      if (v38)
      {
        v21 = sub_10008A928();
      }

      else
      {
        if (v17 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v21 = *(a4 + 8 * v17 + 32);
      }

      v22 = v21;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v23 = [v21 locale];
      sub_100088A48();

      v24 = sub_100088A08();
      v26 = v25;

      (*v18)(v10, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000802EC();
        v19 = v29;
      }

      v27 = v19[2];
      if (v27 >= v19[3] >> 1)
      {
        sub_1000802EC();
        v19 = v30;
      }

      v19[2] = v27 + 1;
      v28 = &v19[2 * v27];
      v28[4] = v24;
      v28[5] = v26;
      ++v17;
      a4 = v20;
    }

    v31 = v35;
    v32 = sub_1000895D8();
    if (v31)
    {
    }

    else
    {
      v33 = v32;

      *v34[0] = v33;
    }
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }
}

void sub_100029630(uint64_t a1, uint64_t a2)
{
  sub_1000602E0();
  v45 = v5;
  v46 = v4;
  v43 = sub_100088F78();
  sub_100012368();
  v41 = v6;
  __chkstk_darwin(v7);
  sub_10005CFB0();
  v38 = v8;
  sub_10005EC34();
  __chkstk_darwin(v9);
  sub_100060BE8();
  v39 = sub_100088F98();
  sub_100012368();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10005CFB0();
  v37 = v13;
  sub_10005EC34();
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v44 = sub_100088D98();
  sub_100012368();
  v42 = v17;
  __chkstk_darwin(v18);
  sub_1000123E8();
  v40 = v20 - v19;
  sub_10005FA24();
  sub_100089008();
  sub_100012368();
  __chkstk_darwin(v21);
  sub_1000123E8();
  sub_100088F28();
  v22 = sub_100088FF8();
  v23 = sub_10008A5B8();
  if (os_log_type_enabled(v22, v23))
  {
    sub_10005E3C8();
    v24 = swift_slowAlloc();
    sub_100060448(v24);
    _os_log_impl(&_mh_execute_header, v22, v23, "Clearing database", v2, 2u);
    sub_10005CF50();
  }

  v25 = sub_10005E12C();
  v26(v25);
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v27 = sub_100088F88();
  v28 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E3C8();
    v29 = swift_slowAlloc();
    sub_100060448(v29);
    v30 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v28, v30, "DatabaseWipe", "Clearing database prior to indexing", v2, 2u);
    sub_10005CF50();
  }

  v31 = v41;
  v32 = v43;
  (*(v41 + 16))(v38, v3, v43);
  sub_100088FD8();
  sub_10005E928();
  swift_allocObject();
  sub_10005D9B8();
  sub_100088FC8();
  (*(v11 + 16))(v37, v16, v39);
  v33 = v40;
  sub_100088DA8();
  (*(v31 + 8))(v3, v32);
  v34 = sub_10005E470();
  v36 = v35(v34);
  __chkstk_darwin(v36);
  *(&v37 - 2) = v45;
  sub_100089368();
  sub_10002B2D8(v33);
  (*(v42 + 8))(v33, v44);
  sub_1000601E4();
}

void sub_100029A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100088E08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for ToolKitIndexingReason.Changeset.partial(_:))
  {
    (*(v5 + 96))(v7, v4);
    v9 = *v7;
    v10 = v7[1];

    sub_10001A784(v10, v9);
    v23 = v11;
    v12 = sub_10008A268();
    sub_100050BE8(v12, v13);
    v15 = v14;

    if (v15)
    {

      v16 = v23;

      v18._rawValue = sub_10001BE2C(v17);
      sub_100089648(v18, 1);

      if (v2)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v16 = v23;
    }

    v19 = sub_10001BE2C(v16);
    v20 = sub_100089658() & 1;
    v21._rawValue = v19;
    sub_100089648(v21, v20);
    goto LABEL_11;
  }

  if (v8 == enum case for ToolKitIndexingReason.Changeset.full(_:))
  {
    sub_100089698();
  }

  else if (v8 != enum case for ToolKitIndexingReason.Changeset.none(_:))
  {
    (*(v5 + 8))(v7, v4);
  }
}

id ToolKitIndexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ToolKitIndexer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolKitIndexer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100029D74(uint64_t a1, uint64_t a2)
{
  result = sub_10008391C();
  v4 = result;
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 == v5)
    {

      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = sub_10008A928();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      result = *(a1 + 8 * v5 + 32);
    }

    v7 = result;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = [result actionIdentifier];
    sub_10008A268();

    v9 = sub_10008A008();

    v10 = *(v9 + 16);
    v11 = v6[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
    {
      if (v11 <= v12)
      {
        v14 = v11 + v10;
      }

      else
      {
        v14 = v11;
      }

      sub_10008070C(isUniquelyReferenced_nonNull_native, v14, 1, v6);
      v6 = v15;
    }

    if (*(v9 + 16))
    {
      v16 = (v6[3] >> 1) - v6[2];
      result = sub_10008A018();
      if (v16 < v10)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v17 = v6[2];
        v18 = __OFADD__(v17, v10);
        v19 = v17 + v10;
        if (v18)
        {
          goto LABEL_28;
        }

        v6[2] = v19;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_26;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_100029F84(uint64_t a1, uint64_t a2)
{
  sub_1000602E0();
  v48 = v2;
  v44 = v3;
  v45 = v4;
  v6 = v5;
  v35 = v8;
  v36 = v7;
  v43 = v9;
  v10 = sub_10008A088();
  v11 = sub_10005E3B0(v10);
  __chkstk_darwin(v11);
  sub_1000123E8();
  v42 = v13 - v12;
  sub_10005FA24();
  v14 = sub_10008A128();
  v15 = sub_10005E3B0(v14);
  __chkstk_darwin(v15);
  sub_1000123E8();
  v41 = v17 - v16;
  sub_10005FA24();
  v40 = sub_10008A508();
  sub_100012368();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000123E8();
  if (sub_10008391C())
  {
    v34 = v6 & 0xFFFFFFFFFFFFFF8;
    v37 = v19 + 8;
    v38 = v6 & 0xC000000000000001;
    do
    {
      if (v38)
      {
        sub_10005FBB8();
        v21 = sub_10008A928();
      }

      else
      {
        if (!*(v34 + 16))
        {
          __break(1u);
          return;
        }

        v21 = *(v6 + 32);
      }

      v22 = v21;
      v47 = 0;
      sub_1000601D8();
      sub_10008A118();
      v23 = v22;
      sub_10008A4D8();
      sub_10008A4C8();
      v24 = sub_100088AB8();
      v25 = v24;
      if (*(v24 + 16))
      {
        v46 = v36;
        __chkstk_darwin(v24);
        v26 = v35;
        *(&v34 - 4) = v25;
        *(&v34 - 3) = v26;
        *(&v34 - 2) = v23;
        sub_100089378();
        sub_1000893A8();
        if (v48)
        {
          v32 = sub_10005EE14();
          v33(v32);

          goto LABEL_14;
        }

        v48 = 0;
        v27 = sub_10005EE14();
        v28(v27);
      }

      else
      {
        v29 = sub_10005EE14();
        v30(v29);
      }

      sub_10005E488();
    }

    while (v31 != 1);
  }

  sub_10004D2D0(v43, v36, v6, v44, v45);
LABEL_14:
  sub_1000601E4();
}

void sub_10002A290(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_10008A918(30);

    sub_100060D74();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_10008A918(27);

    sub_100060D74();
LABEL_5:
    v3._countAndFlagsBits = sub_1000124C8();
    sub_10008A2C8(v3);
    return;
  }

  switch(a1)
  {
    case 1:
    case 2:
      return;
    default:
      sub_10005E980();
      break;
  }
}

uint64_t sub_10002A3F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 1)
  {
    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_11:
  if (a1 != a4 || a2 != a5)
  {
    return sub_10008AA68();
  }

  return 1;
}

void sub_10002A4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10005F538();
  if (!v4)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 3;
LABEL_5:
    sub_10008AB18(v5);
    sub_100012498();

    sub_10008A2B8();
    return;
  }

  switch(v3)
  {
    case 1:
      v6 = 1;
      break;
    case 2:
      v6 = 4;
      break;
    case 3:
      v6 = 5;
      break;
    case 4:
      v6 = 6;
      break;
    default:
      v6 = 0;
      break;
  }

  sub_10008AB18(v6);
}

Swift::Int sub_10002A590(uint64_t a1, uint64_t a2)
{
  sub_10008AB08();
  sub_10002A4D0(v5, a1, a2);
  return sub_10008AB28();
}

Swift::Int sub_10002A608(uint64_t a1)
{
  sub_10008AB08();
  sub_10005ECB4();
  sub_10002A4D0(v1, v2, v3);
  return sub_10008AB28();
}

void *sub_10002A684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_10004F650(*(a1 + 16), 0, &qword_1000A66D0, &qword_10008E3B0, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  v4 = *(type metadata accessor for ToolKitIndexer.LocaleWithUsage(0) - 8);
  v5 = sub_10005B984(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v8;

  sub_100011E9C(v6);
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v8 = v3;
  sub_100057F68(&v8);
  return v8;
}

uint64_t sub_10002A7C4()
{
  sub_100012404();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v7 = sub_100088F78();
  v1[26] = v7;
  sub_100017A0C(v7);
  v1[27] = v8;
  v1[28] = sub_10005F3EC();
  v1[29] = swift_task_alloc();
  v9 = sub_100088F98();
  v1[30] = v9;
  sub_100017A0C(v9);
  v1[31] = v10;
  v1[32] = sub_10005F3EC();
  v1[33] = swift_task_alloc();
  v11 = sub_100088D98();
  v1[34] = v11;
  sub_100017A0C(v11);
  v1[35] = v12;
  v1[36] = sub_10005F4D4();
  v13 = sub_10005CFA0();

  return _swift_task_switch(v13);
}

uint64_t sub_10002A920()
{
  v54 = v0;
  v2 = *(v0 + 160);
  sub_10005E1F0();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  sub_10005D9D0();
  v4 = swift_allocObject();
  sub_10005EDE0(v4);
  sub_10005D9D0();
  v5 = swift_allocObject();
  sub_10005FDAC(v5);
  sub_10005D504();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10005B5B0;
  *(v6 + 24) = v3;
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008D620;
  *(inited + 32) = sub_10005B5CC;
  *(inited + 40) = v4;
  *(inited + 48) = sub_10005C5C8;
  *(inited + 56) = v1;
  *(inited + 64) = sub_10005B5E0;
  *(inited + 72) = v6;
  v8 = v2;
  sub_100088D68();
  sub_100088F88();
  sub_100088F58();
  v9 = sub_100088F88();
  v10 = sub_10008A6A8();
  if (sub_10008A7B8())
  {
    sub_10005E048();
    v11 = swift_slowAlloc();
    sub_10005DC40();
    v12 = swift_slowAlloc();
    v13 = 0;
    v52 = 0;
    v53 = v12;
    *v11 = 258;
    v51 = v11 + 2;
    while (v13 != 48)
    {
      v14 = *(inited + v13 + 32);

      v14(&v51, &v52, &v53);

      v13 += 16;
    }

    v15 = sub_100088F68();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v15, "IndexTool", "action=%{signpost.description:attribute}s", v11, 0xCu);
    sub_10005B1BC(v12);
    sub_10005D4F8();

    sub_10005D0A0();
  }

  else
  {
  }

  v16 = *(v0 + 256);
  v17 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = sub_10005E12C();
  v20(v19);
  sub_100088FD8();
  sub_10005E928();
  swift_allocObject();
  v21 = sub_1000124D4();
  sub_10005E770();
  v22();
  sub_10005E4AC(v16, "IndexTool");
  v23 = v18 + 8;
  v24 = sub_10005F5BC();
  v25(v24);
  v26 = sub_10005DB50();
  v27(v26);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v28 = 1;
    sub_10005D3D8();
    sub_10008084C();
    sub_10005FF4C();
LABEL_20:
    if (v17 >= v29 >> 1)
    {
      sub_10005CA84(v29);
      sub_10008084C();
      v23 = v50;
    }

    *(v23 + 16) = v21;
    v34 = v23 + 24 * v17;
    *(v34 + 32) = v28;
    *(v34 + 40) = 0;
    *(v34 + 48) = 2;
    goto LABEL_23;
  }

  v21 = *(v0 + 160);
  objc_opt_self();
  sub_10005E028();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  v21 = 0xEE006E6F69746341;
  v23 = 0x206E776F6E6B6E55;
  v30 = [*(v0 + 160) localizedName];
  v17 = sub_10008A268();
  v32 = v31;

  if (v17 == 0x206E776F6E6B6E55 && v32 == 0xEE006E6F69746341)
  {

    goto LABEL_19;
  }

  sub_10005FA3C();
  v21 = sub_10008AA68();

  if (v21)
  {
LABEL_19:
    sub_10005D3D8();
    sub_10008084C();
    sub_10005FF4C();
    v28 = 2;
    goto LABEL_20;
  }

  v21 = *(v0 + 160);
  objc_opt_self();
  sub_10005E028();
  if (swift_dynamicCastObjCClass() || (v21 = *(v0 + 160), objc_opt_self(), sub_10005E028(), swift_dynamicCastObjCClass()))
  {
    sub_10005D3D8();
    sub_10008084C();
    sub_10005FF4C();
    v28 = 4;
    goto LABEL_20;
  }

  v23 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
LABEL_23:
    sub_10002B2D8(*(v0 + 288));
    v35 = sub_10005E694();
    v36(v35);

    v37 = *(v0 + 8);

    return v37(v23);
  }

  sub_100003BC8(*(v0 + 160), (v0 + 96));
  if (!*(v0 + 104))
  {

    v23 = &off_10009E7B8;
    goto LABEL_23;
  }

  v39 = *(v0 + 184);
  v40 = *(v0 + 152);
  v41 = *(v0 + 144);
  v42 = *(v0 + 136);
  v43 = *(v39 + *(_s23IndexingPreflightResultVMa(0) + 28));

  v44 = sub_10005F288();
  v46 = sub_100009C10(v44, v45, v43);
  *(v0 + 296) = v46;

  if (v46)
  {
    v23 = v46;
  }

  v47 = swift_task_alloc();
  *(v0 + 304) = v47;
  *v47 = v0;
  v47[1] = sub_10002AFEC;
  v48 = *(v0 + 160);
  v58 = v40;
  v59 = v23;
  v57 = v41 & 1;
  v56 = v42;
  sub_10005E7C4(v48);
  sub_10005F6C8();

  return sub_10002B5D8();
}

uint64_t sub_10002AFEC()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (!v0)
  {

    sub_100017954(v3 + 96, &unk_1000A5A40, &qword_10008D8E0);
  }

  sub_100012554();

  return _swift_task_switch(v7);
}

uint64_t sub_10002B118()
{
  sub_100060400();
  sub_10002B2D8(*(v0 + 288));
  v1 = sub_100012498();
  v2(v1);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_10002B1E0()
{
  sub_100060400();

  sub_100017954(v0 + 96, &unk_1000A5A40, &qword_10008D8E0);
  sub_10002B2D8(*(v0 + 288));
  v1 = sub_1000124C8();
  v2(v1);

  sub_10001248C();

  return v3();
}

void sub_10002B2D8(uint64_t a1)
{
  sub_1000611A4();
  sub_100012578();
  v28 = sub_100088FA8();
  sub_100012368();
  __chkstk_darwin(v1);
  sub_1000123E8();
  sub_10005FA24();
  v2 = sub_100088F78();
  sub_100012368();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000123E8();
  v8 = v7 - v6;
  sub_100088F98();
  sub_100012368();
  __chkstk_darwin(v9);
  sub_1000123E8();
  sub_100088D58();
  v29 = sub_100088D78();
  v11 = v10;
  sub_100088D88();
  v12 = sub_100088F88();
  sub_100088FB8();
  v27 = sub_10008A698();
  if ((sub_10008A7B8() & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v8, v2);
    v23 = sub_10005E464();
    v24(v23);
    sub_10006110C();
    return;
  }

  v25 = v4;
  v26 = v2;
  if ((v11 & 1) == 0)
  {
    v13 = v29;
    if (v29)
    {
      v14 = v28;
LABEL_9:

      sub_100088FE8();

      v16 = sub_10005E0B8();
      if (v17(v16) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        v19 = sub_10005E0B8();
        v20(v19);
        v18 = "";
      }

      sub_10005E3C8();
      v21 = swift_slowAlloc();
      sub_100060448(v21);
      v22 = sub_100088F68();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v27, v22, v13, v18, v14, 2u);
      sub_10005CF50();

      v4 = v25;
      v2 = v26;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v29))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10005EBF0();
  if (!v15)
  {
    v14 = v28;
    if (v29 >> 16 <= 0x10)
    {
      v13 = &v30;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10002B5D8()
{
  sub_100012404();
  *(v0 + 552) = v71;
  *(v0 + 544) = v70;
  *(v0 + 2100) = v69;
  *(v0 + 536) = v68;
  *(v0 + 528) = v1;
  *(v0 + 520) = v2;
  *(v0 + 504) = v3;
  *(v0 + 512) = v4;
  *(v0 + 488) = v5;
  *(v0 + 496) = v6;
  *(v0 + 472) = v7;
  *(v0 + 480) = v8;
  v9 = sub_100089008();
  *(v0 + 560) = v9;
  sub_100017A0C(v9);
  *(v0 + 568) = v10;
  *(v0 + 576) = sub_10005F3EC();
  *(v0 + 584) = swift_task_alloc();
  *(v0 + 592) = swift_task_alloc();
  v11 = sub_100008DC0(&qword_1000A64F8, &qword_10008D8E8);
  *(v0 + 600) = v11;
  sub_10005E3B0(v11);
  *(v0 + 608) = sub_10005F3EC();
  *(v0 + 616) = swift_task_alloc();
  v12 = sub_100089158();
  *(v0 + 624) = v12;
  sub_100017A0C(v12);
  *(v0 + 632) = v13;
  *(v0 + 640) = sub_10005F3EC();
  *(v0 + 648) = swift_task_alloc();
  *(v0 + 656) = swift_task_alloc();
  *(v0 + 664) = swift_task_alloc();
  *(v0 + 672) = swift_task_alloc();
  *(v0 + 680) = swift_task_alloc();
  v14 = sub_1000891B8();
  *(v0 + 688) = v14;
  sub_100017A0C(v14);
  *(v0 + 696) = v15;
  *(v0 + 704) = sub_10005F3EC();
  *(v0 + 712) = swift_task_alloc();
  *(v0 + 720) = swift_task_alloc();
  v16 = sub_1000891C8();
  *(v0 + 728) = v16;
  sub_100017A0C(v16);
  *(v0 + 736) = v17;
  *(v0 + 744) = sub_10005F4D4();
  v18 = sub_100008DC0(&qword_1000A6500, &qword_10008D8F0);
  sub_10005E3B0(v18);
  *(v0 + 752) = sub_10005F3EC();
  *(v0 + 760) = swift_task_alloc();
  *(v0 + 768) = swift_task_alloc();
  *(v0 + 776) = swift_task_alloc();
  v19 = sub_1000889B8();
  *(v0 + 784) = v19;
  sub_100017A0C(v19);
  *(v0 + 792) = v20;
  *(v0 + 800) = sub_10005F4D4();
  v21 = sub_100008DC0(&qword_1000A6508, &qword_10008D8F8);
  sub_10005E3B0(v21);
  *(v0 + 808) = sub_10005F4D4();
  v22 = sub_100089068();
  *(v0 + 816) = v22;
  sub_100017A0C(v22);
  *(v0 + 824) = v23;
  *(v0 + 832) = sub_10005F4D4();
  v24 = sub_100089048();
  *(v0 + 840) = v24;
  sub_100017A0C(v24);
  *(v0 + 848) = v25;
  *(v0 + 856) = sub_10005F3EC();
  *(v0 + 864) = swift_task_alloc();
  v26 = sub_100089F58();
  *(v0 + 872) = v26;
  sub_100017A0C(v26);
  *(v0 + 880) = v27;
  *(v0 + 888) = sub_10005F4D4();
  v28 = sub_100008DC0(&qword_1000A6510, &qword_10008D900);
  sub_10005E3B0(v28);
  *(v0 + 896) = sub_10005F3EC();
  *(v0 + 904) = swift_task_alloc();
  *(v0 + 912) = swift_task_alloc();
  v29 = sub_10008A0B8();
  *(v0 + 920) = v29;
  sub_100017A0C(v29);
  *(v0 + 928) = v30;
  *(v0 + 936) = sub_10005F4D4();
  v31 = sub_100008DC0(&qword_1000A6518, &qword_10008D908);
  sub_10005E3B0(v31);
  *(v0 + 944) = sub_10005F3EC();
  *(v0 + 952) = swift_task_alloc();
  v32 = sub_100089A08();
  *(v0 + 960) = v32;
  sub_100017A0C(v32);
  *(v0 + 968) = v33;
  *(v0 + 976) = sub_10005F3EC();
  *(v0 + 984) = swift_task_alloc();
  *(v0 + 992) = swift_task_alloc();
  *(v0 + 1000) = swift_task_alloc();
  *(v0 + 1008) = swift_task_alloc();
  v34 = sub_100088B78();
  *(v0 + 1016) = v34;
  sub_100017A0C(v34);
  *(v0 + 1024) = v35;
  *(v0 + 1032) = sub_10005F4D4();
  v36 = sub_100089BA8();
  *(v0 + 1040) = v36;
  sub_100017A0C(v36);
  *(v0 + 1048) = v37;
  *(v0 + 1056) = sub_10005F3EC();
  *(v0 + 1064) = swift_task_alloc();
  *(v0 + 1072) = swift_task_alloc();
  *(v0 + 1080) = swift_task_alloc();
  *(v0 + 1088) = swift_task_alloc();
  *(v0 + 1096) = swift_task_alloc();
  *(v0 + 1104) = swift_task_alloc();
  *(v0 + 1112) = swift_task_alloc();
  *(v0 + 1120) = swift_task_alloc();
  *(v0 + 1128) = swift_task_alloc();
  v38 = sub_100089258();
  *(v0 + 1136) = v38;
  sub_100017A0C(v38);
  *(v0 + 1144) = v39;
  *(v0 + 1152) = sub_10005F4D4();
  v40 = sub_1000892D8();
  *(v0 + 1160) = v40;
  sub_100017A0C(v40);
  *(v0 + 1168) = v41;
  *(v0 + 1176) = sub_10005F3EC();
  *(v0 + 1184) = swift_task_alloc();
  *(v0 + 1192) = swift_task_alloc();
  v42 = sub_1000890F8();
  *(v0 + 1200) = v42;
  sub_100017A0C(v42);
  *(v0 + 1208) = v43;
  *(v0 + 1216) = sub_10005F4D4();
  v44 = _s15ActionParameterVMa(0);
  *(v0 + 1224) = v44;
  sub_100017A0C(v44);
  *(v0 + 1232) = v45;
  *(v0 + 1240) = sub_10005F3EC();
  *(v0 + 1248) = swift_task_alloc();
  v46 = sub_100088A68();
  *(v0 + 1256) = v46;
  sub_100017A0C(v46);
  *(v0 + 1264) = v47;
  *(v0 + 1272) = sub_10005F4D4();
  v48 = sub_100089C48();
  *(v0 + 1280) = v48;
  sub_100017A0C(v48);
  *(v0 + 1288) = v49;
  *(v0 + 1296) = sub_10005F4D4();
  v50 = sub_10008A0E8();
  *(v0 + 1304) = v50;
  sub_100017A0C(v50);
  *(v0 + 1312) = v51;
  *(v0 + 1320) = sub_10005F4D4();
  v52 = sub_100008DC0(&qword_1000A6520, &unk_10008D910);
  sub_10005E3B0(v52);
  *(v0 + 1328) = sub_10005F4D4();
  v53 = sub_1000897A8();
  *(v0 + 1336) = v53;
  sub_100017A0C(v53);
  *(v0 + 1344) = v54;
  *(v0 + 1352) = sub_10005F3EC();
  *(v0 + 1360) = swift_task_alloc();
  v55 = sub_10008A0D8();
  *(v0 + 1368) = v55;
  sub_100017A0C(v55);
  *(v0 + 1376) = v56;
  *(v0 + 1384) = sub_10005F3EC();
  *(v0 + 1392) = swift_task_alloc();
  v57 = sub_100008DC0(&qword_1000A64B0, &qword_10008D8B8);
  sub_10005E3B0(v57);
  *(v0 + 1400) = sub_10005F4D4();
  v58 = sub_100089888();
  *(v0 + 1408) = v58;
  sub_100017A0C(v58);
  *(v0 + 1416) = v59;
  *(v0 + 1424) = sub_10005F3EC();
  *(v0 + 1432) = swift_task_alloc();
  *(v0 + 1440) = swift_task_alloc();
  *(v0 + 1448) = swift_task_alloc();
  v60 = sub_100089918();
  *(v0 + 1456) = v60;
  sub_100017A0C(v60);
  *(v0 + 1464) = v61;
  *(v0 + 1472) = sub_10005F3EC();
  *(v0 + 1480) = swift_task_alloc();
  *(v0 + 1488) = swift_task_alloc();
  v62 = sub_10008A128();
  sub_10005E3B0(v62);
  *(v0 + 1496) = sub_10005F4D4();
  v63 = sub_10008A508();
  *(v0 + 1504) = v63;
  sub_100017A0C(v63);
  *(v0 + 1512) = v64;
  *(v0 + 1520) = sub_10005F4D4();
  v65 = sub_10005CFA0();

  return _swift_task_switch(v65);
}

uint64_t sub_10002FD50()
{
  sub_100012404();
  v1 = *(v0 + 1528);

  *(v0 + 1544) = [v1 metadata];
  v2 = sub_10005CFA0();

  return _swift_task_switch(v2);
}

uint64_t sub_100033A58()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_1000123F8();
  *v4 = v3;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  *(v3 + 1744) = v0;

  if (v0)
  {
  }

  sub_100012554();

  return _swift_task_switch(v7);
}

void sub_100033B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v17 = *(v12 + 1744);
  sub_10008A468();
  v959 = v17;
  v966 = v12;
  if (v17)
  {
    (*(*(v12 + 1416) + 8))(*(v12 + 1424), *(v12 + 1408));

    v18 = *(v12 + 1704);
    sub_100088F28();
    sub_10005E1F0();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = v19;
    sub_10005E1F0();
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    v22 = v21;
    v953 = v21;
    v23 = v18;
    sub_100060454();
    swift_errorRetain();
    v24 = v18;
    swift_errorRetain();
    v932 = sub_100088FF8();
    v937 = sub_10008A5D8();
    sub_10005D9D0();
    v25 = swift_allocObject();
    *(v25 + 16) = 64;
    sub_10005D9D0();
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    sub_10005D504();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10005B608;
    *(v27 + 24) = v20;
    sub_10005D504();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10005B63C;
    *(v28 + 24) = v27;
    sub_10005D9D0();
    v29 = swift_allocObject();
    *(v29 + 16) = 64;
    sub_10005D9D0();
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    sub_10005D504();
    swift_allocObject();
    sub_10005EA20();
    *(v31 + 16) = v32;
    *(v31 + 24) = v22;
    sub_10005D504();
    v33 = swift_allocObject();
    sub_10005EAB0(v33);
    sub_10005D504();
    v13 = swift_allocObject();
    *(v13 + 2) = sub_10005B63C;
    *(v13 + 3) = v33;
    sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
    inited = swift_initStackObject();
    v35 = sub_10005C6B8(inited, xmmword_10008D630);
    v35[2].n128_u64[0] = v36;
    v35[2].n128_u64[1] = v25;
    v35[3].n128_u64[0] = sub_10005C5C8;
    v35[3].n128_u64[1] = v26;
    v35[4].n128_u64[0] = sub_10005B644;
    v35[4].n128_u64[1] = v28;
    v35[5].n128_u64[0] = sub_10005C5C8;
    v35[5].n128_u64[1] = v29;
    v35[6].n128_u64[0] = sub_10005C5C8;
    v35[6].n128_u64[1] = v30;
    v35[7].n128_u64[0] = sub_10005C5CC;
    v35[7].n128_u64[1] = v13;

    v926 = v26;

    v37 = os_log_type_enabled(v932, v937);
    v14 = *(v12 + 1720);
    v38 = *(v12 + 1704);
    if (v37)
    {
      v39 = sub_100010370(22);
      v40 = swift_slowAlloc();
      *v39 = 514;
      *(v39 + 2) = 64;

      *(v39 + 3) = 8;

      *(v39 + 4) = v38;
      *v40 = v38;

      *(v39 + 12) = 64;

      *(v39 + 13) = 8;

      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v41;
      v40[1] = v41;

      _os_log_impl(&_mh_execute_header, v932, v937, "Failed to index action parameter: %@ due to %@", v39, 0x16u);
      sub_100008DC0(&qword_1000A6460, &qword_10008D878);
      swift_arrayDestroy();
      sub_10005CF50();

      sub_10005D4F8();

      v16 = v966;
      v42 = v966[213];
    }

    else
    {

      v16 = v12;
      v42 = v932;
    }

    v88 = v16[71];

    v44 = v88 + 8;
    v89 = sub_10005EB10();
    v90(v89);
    v12 = v16[214];
    goto LABEL_53;
  }

  v43 = *(v12 + 488);

  *(v12 + 408) = _swiftEmptyArrayStorage;
  v44 = sub_10008391C();
  v45 = &ContainerIndexer;
  while (v44 != v17)
  {
    if ((*(v12 + 488) & 0xC000000000000001) != 0)
    {
      v48 = sub_10008A928();
    }

    else
    {
      sub_10005E804();
      if (v17 >= v47)
      {
        goto LABEL_317;
      }

      v48 = *(v46 + 8 * v17 + 32);
    }

    v16 = v48;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:

LABEL_320:
      sub_10006150C();
      v546 = sub_10005CF18();
      goto LABEL_321;
    }

    v43 = [v48 localizationUsage];
    v15 = sub_10008A268();
    v13 = v49;
    v50 = sub_10008A268();
    v14 = v51;
    v52 = v15 == v50 && v13 == v51;
    if (v52)
    {
    }

    else
    {
      sub_10005EC58();
      v15 = sub_10008AA68();

      if ((v15 & 1) == 0)
      {

        goto LABEL_18;
      }
    }

    sub_10008A948();
    v13 = *(*(v12 + 408) + 16);
    sub_10008A978();
    sub_10008A988();
    v43 = v12 + 408;
    sub_10008A958();
LABEL_18:
    ++v17;
  }

  v44 = *(v12 + 408);
  v53 = sub_10001BEBC(v44);
  if (v53)
  {
    v54 = v53;
    *(v12 + 416) = _swiftEmptyArrayStorage;
    v43 = v12 + 416;
    sub_10004F51C(v53, sub_100081D78);
    if (v54 < 0)
    {
      __break(1u);
LABEL_390:
      __break(1u);
      goto LABEL_391;
    }

    v56 = 0;
    v918 = v44 & 0xC000000000000001;
    v920 = v54;
    v927 = v44;
    while (2)
    {
      if (v918)
      {
        v57 = sub_10008A928();
      }

      else
      {
        v57 = *(v44 + 8 * v56 + 32);
      }

      v58 = v57;
      v59 = *(v12 + 1704);
      v60 = [v57 locale];
      sub_100088A48();

      v61 = sub_100088A08();
      v954 = v62;
      v960 = v61;
      v63 = sub_100012498();
      v64(v63);
      v65 = [v59 localizedLabelWithContext:v58];
      v66 = sub_10008A268();
      v938 = v67;
      v944 = v66;

      v68 = [v59 localizedDescriptionWithContext:v58];
      if (v68)
      {
        v69 = v68;
        v933 = sub_10008A268();
        v71 = v70;
      }

      else
      {
        v933 = 0;
        v71 = 0;
      }

      objc_opt_self();
      sub_10005E028();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v73 = v72;
        v74 = *(v12 + 1704);
        v75 = [v73 localizedOnDisplayName];
        v76 = sub_10008A268();
        v78 = v77;

        v79 = [v73 localizedOffDisplayName];
        sub_10008A268();
        sub_1000601B4();

        v12 = v966;
        v80 = v966[52];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {

        v80 = *(v12 + 416);
        v76 = 0;
        v78 = 0;
        v75 = 0;
        v59 = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_31:
          v81 = sub_10005D7F4();
          sub_100081D78(v81, v82, v83);
          v80 = *(v12 + 416);
        }
      }

      v85 = v80[2];
      v84 = v80[3];
      if (v85 >= v84 >> 1)
      {
        v87 = sub_10005D920(v84);
        sub_100081D78(v87, v85 + 1, 1);
        v80 = v966[52];
      }

      ++v56;
      v80[2] = v85 + 1;
      v86 = &v80[10 * v85];
      v86[4] = v960;
      v86[5] = v954;
      v86[6] = v944;
      v86[7] = v938;
      v86[8] = v933;
      v86[9] = v71;
      v86[10] = v76;
      v86[11] = v78;
      v86[12] = v75;
      v86[13] = v59;
      v44 = v927;
      v12 = v966;
      if (v920 == v56)
      {

        goto LABEL_41;
      }

      continue;
    }
  }

  v80 = _swiftEmptyArrayStorage;
LABEL_41:
  v91 = *(v12 + 1560);
  if (v91)
  {
    v92 = [v91 identifier];
    if (!v92)
    {
      sub_10008A268();
      sub_10008A238();
      sub_100060C1C();
    }

    v93 = WFLinkActionIdentifierFromShortcutsActionIdentifier();

    if (v93)
    {
      v94 = *(v12 + 1704);
      v95 = [v93 actionIdentifier];
      sub_10008A268();
      sub_10005F650();

      v96 = [v94 key];
      sub_10008A268();
      sub_100060478();

      sub_10005D978();
      v97 = sub_10008A008();
    }

    else
    {
      v97 = _swiftEmptyArrayStorage;
    }

    v953 = v97;
  }

  else
  {
    v953 = _swiftEmptyArrayStorage;
  }

  v945 = *(v12 + 1728);
  v926 = v966[162];
  v932 = *(v12 + 1696);
  v98 = v966[161];
  v921 = v966[160];
  v99 = v966[156];
  v100 = v966[153];
  v101 = [*(v12 + 1704) key];
  v102 = sub_10008A268();
  v104 = v103;

  sub_10005E770();
  v105();
  (*(v98 + 16))(v99 + v100[8], v926, v921);
  *v99 = v102;
  v99[1] = v104;
  v99[2] = v932;
  v99[3] = v945;
  *(v99 + v100[9]) = v953;
  *(v99 + v100[10]) = v80;
  sub_10005EA68();
  sub_10005B654(v99, v106);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v966[210];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_388:
    v749 = sub_10005C874();
    sub_10008078C(v749, v750, v751, v752);
    v108 = v753;
  }

  v109 = *(v108 + 16);
  if (v109 >= *(v108 + 24) >> 1)
  {
    sub_100060268();
    sub_10008078C(v754, v755, v756, v108);
    v108 = v757;
  }

  v110 = v966[213];
  v959 = v966[178];
  v111 = v966[177];
  v112 = v966[176];
  v13 = v966[162];
  v113 = v966[161];
  v14 = v966[160];
  v114 = v966[156];
  *(v108 + 16) = v109 + 1;
  sub_10005E0A0();
  sub_10005EA68();
  sub_10005B6A8(v115, v116);

  v16 = v966;
  v966[50] = v108;
  sub_10005B2EC(v114, _s15ActionParameterVMa);
  v44 = v113 + 8;
  v117 = sub_10005DC4C();
  v118(v117);
  (*(v111 + 8))(v959, v112);
  v12 = v966[214];
  v966[210] = v108;
LABEL_53:
  v17 = (v16 + 45);
  v15 = (v16 + 50);
  v917 = v16 + 53;
  v45 = (v16 + 55);
  v16[211] = 0;
  v43 = &_os_log_impl_ptr;
  while (1)
  {
    v16[212] = v12;
    if (v12 == v16[199])
    {
      v122 = v16[195];

      sub_10005CD20();
      sub_10005AE38(v123, v124);
      sub_100060E80();
      sub_10008A828();
      v16[53] = _swiftEmptyArrayStorage;
      if (v122)
      {
        v125 = v16[195];
        v16[219] = sub_10008A3B8();
        v126 = v125;
        v16[220] = sub_10008A3A8();
        sub_10005E440();
        sub_10008A388();
        sub_10005CC20();
LABEL_303:
        sub_10005E47C();
        sub_100012640();

        _swift_task_switch(v540);
        return;
      }

      v224 = v16[143];
      v225 = [v16[59] requiresUnlock];
      v226 = *(v224 + 104);
      v227 = v16[144];
      v228 = v16[142];
      if (!v225)
      {
        v226(v227, enum case for ToolAuthenticationPolicy.none(_:), v228);
        v43 = _swiftEmptyArrayStorage;
LABEL_133:
        v16[54] = &OBJC_PROTOCOL___WFLinkActionProtocol;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          (*(v16[151] + 104))(v16[152], enum case for ToolTypeDefinition.appIntent(_:), v16[150]);
        }

        else
        {
          v243 = v16[151];
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v244 = &enum case for ToolTypeDefinition.siriIntent(_:);
          }

          else
          {
            v244 = &enum case for ToolTypeDefinition.action(_:);
          }

          (*(v243 + 104))(v16[152], *v244, v16[150]);
        }

        v16[233] = v43;
        v245 = v16[59];
        *v17 = 0;
        *(v17 + 8) = 0;
        v898 = v17;
        if ([v245 isDiscontinued])
        {
          v246 = v16[146];
          sub_100089268();
          v247 = sub_10005F36C();
          sub_10004987C(v247, v248);
          v249 = *(v246 + 8);
          v14 = v246 + 8;
          v43 = v249;
          v250 = sub_1000124C8();
          v249(v250);
          v251 = sub_10005E07C();
          v249(v251);
          objc_opt_self();
          v252 = swift_dynamicCastObjCClass();
          v16[234] = v252;
          if (v252)
          {
            sub_10005E094();
            sub_10008A3B8();
            v253 = v43;
            v16[235] = sub_10008A3A8();
            sub_10005E440();
            sub_10008A388();
            sub_10005C984();
            goto LABEL_303;
          }
        }

        v896 = v45;
        v895 = v15;
        v16[237] = 0;
        if ([v16[59] isResidentCompatible])
        {
          v254 = v16[146];
          sub_1000892C8();
          v255 = sub_10005F36C();
          sub_10004987C(v255, v256);
          v43 = *(v254 + 8);
          v257 = sub_1000124C8();
          (v43)(v257);
          v258 = sub_10005E07C();
          (v43)(v258);
        }

        v17 = v16[211];
        sub_10005E094();
        sub_100088C18();
        v259 = [v43 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
        v44 = WFResource_ptr;
        v13 = sub_100011D84(0, &qword_1000A6540, WFResource_ptr);
        sub_10005C60C();
        sub_10005B4C0(v260, &qword_1000A6540, WFResource_ptr);
        sub_10005E120();
        v261 = sub_10008A3F8();

        sub_10005C91C();
        sub_100017D30(v261, v262);
        sub_10005E440();

        if (sub_10008391C())
        {
          sub_100060AFC();
          if (v263 != v144)
          {
            __break(1u);
            goto LABEL_393;
          }

          v264 = 0;
          v44 = v16[131];
          sub_10005E138();
          v15 = v44 + 104;
          v45 = v16[233];
          v961 = v259;
          do
          {
            v266 = v265;
            if (v953)
            {
              sub_10005E470();
              sub_10008A928();
            }

            else
            {
              v267 = *(v259 + 8 * v264 + 32);
            }

            sub_10005F33C();
            sub_100088C08();
            v268 = sub_10005FC74();
            v269(v268);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v273 = sub_10005C9CC();
              sub_10008074C(v273, v274, v275, v276);
              v45 = v277;
            }

            v271 = *(v45 + 16);
            v270 = *(v45 + 24);
            if (v271 >= v270 >> 1)
            {
              sub_10005D920(v270);
              sub_10005DC34();
              sub_10008074C(v278, v279, v280, v281);
              v45 = v282;
            }

            ++v264;
            v13 = v966[139];
            v14 = v966[130];

            *(v45 + 16) = v271 + 1;
            sub_10005D2E8();
            sub_10005E0AC();
            v272();
            v265 = v266;
            v259 = v961;
          }

          while (v266 != v264);

          sub_10005F5B0();
          v16 = v966;
          v17 = v932;
        }

        else
        {

          v45 = v16[233];
        }

        sub_10005E094();
        sub_100088BD8();
        v283 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
        v284 = sub_10005EB7C(v283);

        sub_10005C904();
        sub_100017D30(v284, v285);
        sub_10005E440();

        v286 = sub_10008391C();
        v962 = v45;
        if (!v286)
        {

          v259 = v16[59];
          sub_100011D84(0, &qword_1000A6558, WFWritingToolsAvailabilityResource_ptr);
          v307 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
          v13 = sub_10005EB7C(v307);

          v308 = sub_10005E810();
          sub_100017B14(v308, v309);
          sub_10005EB1C();

          v310 = sub_10008391C();
          if (v310)
          {
            if (v310 < 1)
            {
LABEL_394:
              __break(1u);
              goto LABEL_395;
            }

            sub_100060394();
            v941 = enum case for RuntimeDeviceState.writingToolsAvailable(_:);
            LODWORD(v932) = *v312;
            v926 = (v44 + 32);
            v953 = WFWritingToolsAvailabilityResource_ptr;
            do
            {
              v313 = v311;
              if ((WFWritingToolsAvailabilityResource_ptr & 0xC000000000000001) != 0)
              {
                sub_10008A928();
              }

              else
              {
                v314 = *(WFWritingToolsAvailabilityResource_ptr + v45 + 4);
              }

              sub_1000604C0();
              v316 = *(v315 + 1096);
              sub_100060848();
              sub_10001238C();
              (*(v317 + 104))(v316, v941);
              (*(v44 + 104))(v316, v932, v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v322 = sub_10005C874();
                sub_10008074C(v322, v323, v324, v325);
              }

              sub_10005D398();
              if (v158)
              {
                v326 = sub_10005CD68(v318);
                sub_10008074C(v326, v327, v328, v15);
                v15 = v329;
              }

              sub_10005E488();
              v14 = *(v319 + 1096);
              v259 = *(v319 + 1040);

              *(v15 + 16) = v316;
              v13 = v15;
              v320 = sub_10005CA10();
              v321(v320);
              v311 = v313;
            }

            while (v313 != v45);

            *v917 = v15;
            v16 = v966;
          }

          else
          {

            v13 = v45;
          }

          sub_10005E094();
          sub_100088CD8();
          v330 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
          v331 = sub_10005EB7C(v330);

          sub_10005C8EC();
          sub_100017D30(v331, v332);
          v14 = v333;

          if (sub_10008391C())
          {
            sub_10005E398();
            if (v263 != v144)
            {
LABEL_395:
              __break(1u);
              goto LABEL_396;
            }

            sub_100060394();
            v953 = (v14 & 0xC000000000000001);
            v932 = (v44 + 32);
            v962 = v14;
            v335 = v334;
            do
            {
              if (v953)
              {
                sub_10008A928();
              }

              else
              {
                v336 = *(v14 + 8 * v45 + 32);
              }

              sub_1000604C0();
              v338 = *(v337 + 1088);
              sub_100060848();
              sub_10001238C();
              v339 = sub_10005FC74();
              v340(v339);
              v341 = sub_10005DF10();
              v342(v341);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v346 = sub_10005C874();
                sub_10008074C(v346, v347, v348, v349);
              }

              sub_10005D398();
              if (v158)
              {
                v350 = sub_10005CD68(v343);
                sub_10008074C(v350, v351, v352, v15);
                v15 = v353;
              }

              sub_10005E488();

              *(v15 + 16) = v338;
              v344 = sub_10005CA10();
              v345(v344);
              v14 = v962;
            }

            while (v335 != v45);

            *v917 = v15;
            v16 = v966;
            v17 = v926;
          }

          else
          {
            v15 = v13;
          }

          v259 = v16[59];
          sub_100011D84(0, &qword_1000A6560, WFLLMActionAvailabilityResource_ptr);
          v354 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
          v13 = sub_10005EB7C(v354);

          v355 = sub_10005E810();
          sub_100017B14(v355, v356);
          sub_10005E7B8();

          if (sub_10008391C())
          {
            sub_10005E398();
            if (v263 != v144)
            {
LABEL_396:
              __break(1u);
              goto LABEL_397;
            }

            sub_100060394();
            sub_10005E138();
            sub_10005DCB8(*v357);
            do
            {
              if (v953)
              {
                sub_10005DC1C();
                sub_10008A928();
              }

              else
              {
                sub_10005F4BC();
              }

              sub_1000604C0();
              v13 = *(v358 + 1080);
              sub_100060848();
              sub_10001238C();
              v359 = sub_10005FC74();
              v360(v359);
              v361 = sub_10005DF10();
              v362(v361);
              if ((sub_10005F680() & 1) == 0)
              {
                v367 = sub_10005C874();
                sub_10008074C(v367, v368, v369, v370);
              }

              sub_10005D398();
              if (v158)
              {
                v371 = sub_10005CD68(v363);
                sub_10008074C(v371, v372, v373, v15);
                v15 = v374;
              }

              sub_10005E488();
              v14 = *(v364 + 1080);

              *(v15 + 16) = v13;
              v365 = sub_10005CA10();
              v366(v365);
              v259 = v962;
            }

            while (v16 != v45);

            sub_10005DC98(v917);
          }

          else
          {
          }

          sub_10005E094();
          sub_100088CC8();
          v375 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
          v376 = sub_10005EB7C(v375);

          sub_10005C8D4();
          sub_100017D30(v376, v377);
          sub_10005E440();

          if (sub_10008391C())
          {
            sub_10005E398();
            if (v263 != v144)
            {
LABEL_397:
              __break(1u);
              goto LABEL_398;
            }

            sub_100060394();
            sub_10005E138();
            sub_10005DCB8(*v378);
            do
            {
              if (v953)
              {
                sub_10005DC1C();
                sub_10008A928();
              }

              else
              {
                sub_10005F4BC();
              }

              sub_1000604C0();
              v13 = *(v379 + 1072);
              sub_100060848();
              sub_10001238C();
              v380 = sub_10005FC74();
              v381(v380);
              v382 = sub_10005DF10();
              v383(v382);
              if ((sub_10005F680() & 1) == 0)
              {
                v388 = sub_10005C874();
                sub_10008074C(v388, v389, v390, v391);
              }

              sub_10005D398();
              if (v158)
              {
                v392 = sub_10005CD68(v384);
                sub_10008074C(v392, v393, v394, v15);
                v15 = v395;
              }

              sub_10005E488();
              v14 = *(v385 + 1072);

              *(v15 + 16) = v13;
              v386 = sub_10005CA10();
              v387(v386);
              v259 = v962;
            }

            while (v16 != v45);

            sub_10005DC98(v917);
          }

          else
          {
          }

          sub_10005E094();
          sub_100088CE8();
          v396 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
          v397 = sub_10005EB7C(v396);

          sub_10005C8BC();
          sub_100017D30(v397, v398);
          v259 = v399;
          v16[238] = v17;

          if (sub_10008391C())
          {
            sub_10005E398();
            if (v263 != v144)
            {
LABEL_398:
              __break(1u);
              goto LABEL_399;
            }

            sub_100060394();
            sub_10005E138();
            sub_10005DCB8(enum case for RuntimeRequirement.deviceState(_:));
            do
            {
              if (v953)
              {
                sub_10005DC1C();
                sub_10008A928();
              }

              else
              {
                sub_10005F4BC();
              }

              sub_1000604C0();
              v13 = *(v400 + 1064);
              sub_100060848();
              sub_10001238C();
              v401 = sub_10005FC74();
              v402(v401);
              v403 = sub_10005DF10();
              v404(v403);
              if ((sub_10005F680() & 1) == 0)
              {
                v409 = sub_10005C874();
                sub_10008074C(v409, v410, v411, v412);
              }

              sub_10005D398();
              if (v158)
              {
                v413 = sub_10005CD68(v405);
                sub_10008074C(v413, v414, v415, v15);
                v15 = v416;
              }

              sub_10005E488();
              v14 = *(v406 + 1064);

              *(v15 + 16) = v13;
              v407 = sub_10005CA10();
              v408(v407);
              v259 = v962;
            }

            while (v16 != v45);

            sub_10005DC98(v917);
          }

          else
          {
          }

          sub_1000609BC();
          if (v259)
          {
            sub_10008A3B8();
            v417 = v259;
            v16[240] = sub_10008A3A8();
            sub_10005E440();
            sub_10008A388();
            sub_10005C88C();
            goto LABEL_303;
          }

          if (sub_100083934(_swiftEmptyArrayStorage))
          {
            v418 = sub_1000567E4(_swiftEmptyArrayStorage);
          }

          else
          {
            v418 = &_swiftEmptySetSingleton;
          }

          v968 = v418;
          v963 = v15;
          if (sub_100083934(_swiftEmptyArrayStorage))
          {
            v419 = sub_1000567E4(_swiftEmptyArrayStorage);
          }

          else
          {
            v419 = &_swiftEmptySetSingleton;
          }

          v259 = v16[59];
          sub_1000613A4(v419);
          v420 = [v259 unevaluatedResourceObjectsOfClass:swift_getObjCClassFromMetadata()];
          v421 = sub_10005EB7C(v420);

          sub_10005C8A4();
          sub_100017D30(v421, v422);
          v424 = v423;
          v900 = v17;

          v425 = sub_10008391C();
          if (v425)
          {
            v17 = v425;
            if (v425 < 1)
            {
LABEL_399:
              __break(1u);
              goto LABEL_400;
            }

            sub_10005DFEC();
            v953 = v426;
            v13 = (v427 + 88);
            v948 = enum case for WFDeviceIdiomResource.Requirement.equalTo(_:);
            LODWORD(v932) = enum case for WFDeviceIdiomResource.Requirement.notEqualTo(_:);
            v14 = v427 + 96;
            v908 = (v428 + 8);
            v928 = v424;
            v942 = v17;
            do
            {
              if (v953)
              {
                sub_10005ECCC();
                v429 = sub_10008A928();
              }

              else
              {
                v429 = sub_1000612FC();
              }

              v15 = v429;
              v430 = v16[129];
              v44 = v16;
              v431 = v16[127];
              sub_100088B88();
              v432 = (*v13)(v430, v431);
              if (v432 == v948)
              {
                v433 = *(v44 + 960);
                (*v14)(*(v44 + 1032), *(v44 + 1016));
                sub_100060860();
                v434 = sub_10005EFF4();
                sub_10005DC64(v434, v435, v433);
                if (v52)
                {
                  v259 = *(v44 + 952);

                  sub_100017954(v259, &qword_1000A6518, &qword_10008D908);
                }

                else
                {
                  v440 = *(v44 + 1008);
                  v441 = *(v44 + 960);
                  sub_10005E590();
                  v442(v440);
                  v443 = sub_10005EAD4();
                  v444(v443, v440, v441);
                  v445 = sub_10005ECA8();
                  v17 = v942;
                  sub_100055410(v445, v446);

                  v15 = v908;
                  v259 = *v908;
                  v447 = sub_10005E44C();
                  (v259)(v447);
                  v448 = v441;
                  v424 = v928;
                  (v259)(v440, v448);
                }

                v16 = v44;
              }

              else
              {
                v259 = *(v44 + 1032);
                v436 = *(v44 + 1016);
                v16 = v44;
                if (v432 == v932)
                {
                  v437 = *(v44 + 944);
                  v438 = sub_10005EB10();
                  v439(v438);
                  sub_100060860();
                  sub_10005D114(v437);
                  if (v52)
                  {
                    v259 = *(v44 + 944);

                    sub_100017954(v259, &qword_1000A6518, &qword_10008D908);
                  }

                  else
                  {
                    v451 = *(v44 + 1000);
                    sub_10005FDBC();
                    sub_10005E590();
                    v452(v437);
                    sub_10005EAD4();
                    sub_100060CFC();
                    v453();
                    v454 = sub_10005E07C();
                    sub_100055410(v454, v455);

                    v259 = *v908;
                    (*v908)(v451, v424);
                    v456 = sub_10005E44C();
                    v424 = v928;
                    (v259)(v456);
                  }

                  v16 = v44;
                  v17 = v942;
                }

                else
                {

                  v449 = sub_10005E144();
                  v450(v449, v436);
                }
              }

              ++v45;
            }

            while (v17 != v45);
          }

          sub_100061344();
          v457 = [v259 disabledOnPlatforms];
          v458 = sub_100012578();
          type metadata accessor for WFExecutionPlatform(v458);
          sub_10005E028();
          v459 = sub_10008A328();

          if (sub_100083934(v459))
          {
            sub_100060490();
            if (v263 != v144)
            {
LABEL_400:
              __break(1u);
              goto LABEL_401;
            }

            v44 = v16[121] + 8;
            v460 = v16;
            v461 = 32;
            do
            {
              v462 = v460[124];
              v15 = v460[120];
              v45 = *(v459 + v461);
              sub_100049F9C(v462);
              v463 = sub_10005E494();
              sub_100055410(v463, v464);

              v465 = sub_10005D9DC();
              v466(v465);
              v461 += 8;
              v13 = (v13 - 1);
            }

            while (v13);

            v16 = v460;
          }

          else
          {
          }

          v12 = v968;
          if (*(v968 + 2))
          {
          }

          else
          {
            v467 = sub_1000899F8();
          }

          v967[0].n128_u64[0] = v467;
          v13 = v969;
          v259 = v967;
          sub_100050318(v969);
          v14 = v967[0].n128_u64[0];
          v17 = v900;
          sub_10004A390(v967[0].n128_i64[0]);
          sub_10005E434();

          v468 = sub_100083934(v967);
          if (v468)
          {
            if (v468 < 1)
            {
LABEL_401:
              __break(1u);
              goto LABEL_402;
            }

            sub_10005D3AC();
            v470 = v967 + v469;
            sub_10005DEFC(v471);
            v914 = enum case for RuntimeRequirement.platform(_:);
            v909 = (v472 + 104);
            v904 = (v473 + 8);
            v13 = v963;
            do
            {
              v474 = v16[132];
              v475 = v16[130];
              v476 = v16[117];
              v953 = v16[115];
              v45 = v16[114];
              (v932)(v16[122], v470, v16[120]);
              v477 = sub_100089EB8();
              sub_10005DA80();
              sub_100009158(v478, v479, v480, v477);
              v481 = sub_100012448();
              sub_100009158(v481, v482, v483, v477);
              sub_10005DA80();
              sub_100009158(v484, v485, v486, v477);
              sub_10005F5E8();
              sub_10008A0A8();
              sub_10005E590();
              v487(v474, v476, v953);
              (*v909)(v474, v914, v475);
              v488 = v13;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v495 = sub_10005CBF0();
                sub_10008074C(v495, v496, v497, v13);
                v488 = v498;
              }

              v490 = *(v488 + 16);
              v489 = *(v488 + 24);
              v12 = v490 + 1;
              v16 = v966;
              if (v490 >= v489 >> 1)
              {
                sub_10005D920(v489);
                sub_100060268();
                sub_10008074C(v499, v500, v501, v488);
                v488 = v502;
              }

              v491 = sub_100060FC0();
              (*v904)(v491);
              v13 = v488;
              *(v488 + 16) = v12;
              sub_10005D14C();
              v493 = sub_10005EE50(v488 + v492);
              v494(v493);
              sub_100060A88();
            }

            while (!v52);

            *v917 = v488;
            v17 = v900;
          }

          else
          {
          }

          v259 = v16[59];
          v15 = sub_10008A798();
          v16[55] = v15;
          v14 = _swiftEmptyArrayStorage;
          v16[56] = _swiftEmptyArrayStorage;
          v16[57] = &OBJC_PROTOCOL___WFLinkActionProtocol;
          v503 = sub_10005FD2C();
          if (v503)
          {
            v504 = v503;
            v13 = v16[69];
            v259 = v16[59];
            v12 = [v504 backingActionIdentifiers];
            v505 = sub_10008A328();

            sub_100017F50(v505);
            sub_10005FD20();

            v506 = sub_10005F378();
            v14 = sub_100029D74(v506, v507);
            v44 = v17;

            v16[56] = v14;
          }

          else
          {
            v44 = v17;
          }

          v17 = &type metadata for Any;
          v16[242] = v44;
          if (!sub_100083934(v14) && sub_100083934(v15))
          {
            sub_100060490();
            if (v263 != v144)
            {
              __break(1u);
              goto LABEL_404;
            }

            v45 = v16[106] + 16;
            sub_10005E0A0();
            v892 = v15;
            v509 = v15 + v508;
            v511 = v510;
            v512 = *(v45 + 56);
            v44 = v45 + 72;
            v953 = (v45 - 8);
            v964 = enum case for SystemToolProtocol.assistantSchema(_:);
            v910 = v513;
            v929 = (v514 + 8);
            v905 = v510;
            v935 = v512;
            do
            {
              v259 = v966[108];
              v12 = v966[105];
              v515 = sub_10005E12C();
              v511(v515);
              v516 = sub_10005EB10();
              if (v517(v516) == v964)
              {
                sub_10005F158();
                v518 = sub_10005EAD4();
                v519(v518);
                sub_10005E144();
                sub_100060274();
                v520();
                sub_100089EE8();
                v12 = sub_100089ED8();
                v259 = v12;
                sub_100089EC8();
                sub_10005E440();

                if (*(v12 + 16) && (v521 = sub_100081588(), (v522 & 1) != 0))
                {
                  v923 = v966[111];
                  v915 = v966[109];
                  v523 = v966[104];
                  v12 = v45;
                  v524 = v966[102];
                  (*(v910 + 16))(v523, *(v259 + 56) + *(v910 + 72) * v521, v524);

                  sub_100089058();
                  sub_10005C82C();
                  v259 = (v966 + 56);
                  sub_10001BFD8(v525, v526, &type metadata accessor for SampleInvocationDefinition);
                  v527 = v523;
                  v511 = v905;
                  v528 = v524;
                  v45 = v12;
                  (*(v910 + 8))(v527, v528);
                  (*v929)(v923, v915);
                }

                else
                {
                  sub_10006082C();
                  sub_10005E500();
                  v529 = sub_10005E07C();
                  v531(v529, v530);
                }

                v512 = v935;
              }

              else
              {
                (v953->isa)(v966[108], v966[105]);
              }

              v509 += v512;
              v13 = (v13 - 1);
            }

            while (v13);
            v16 = v966;
            v14 = v966[56];
            v15 = v892;
          }

          v16[243] = v14;
          if (!sub_100083934(v14))
          {
            goto LABEL_301;
          }

          v532 = sub_10005F128();
          (*(v533 + 104))(v532, enum case for SystemToolProtocol.assistantInvocable(_:));
          v534 = swift_isUniquelyReferenced_nonNull_native();
          v16[55] = v15;
          if (v534)
          {
LABEL_298:
            v12 = *(v15 + 16);
            sub_10005EC28();
            if (v158)
            {
              v766 = sub_10005CA84(v535);
              sub_1000806CC(v766, v767, v768, v15);
              v15 = v769;
              *v896 = v769;
            }

            sub_10005F108();
            *(v15 + 16) = v259;
            sub_10005CA38();
            v537 = sub_10005E94C(v536);
            v538(v537);
            v16[55] = v15;
LABEL_301:
            v16[244] = v15;
            v43 = v16[195];
            if (!v43)
            {
              v542 = sub_10005AE98(v16[59], &selRef_iconName);
              if (!v543)
              {
                goto LABEL_311;
              }

              sub_100060F24(v542, v543);
              v12 = enum case for ToolIcon.workflowAsset(_:);
              v44 = sub_1000892E8();
              sub_100017A1C();
              v544 = sub_10005FFAC();
              v545(v544);
              goto LABEL_308;
            }

            sub_10008A3B8();
            v539 = v43;
            v16[245] = sub_10008A3A8();
            sub_10005E440();
            sub_10008A388();
            sub_10005C814();
            goto LABEL_303;
          }

LABEL_402:
          v762 = sub_10005CBF0();
          sub_1000806CC(v762, v763, v764, v15);
          v15 = v765;
          *v896 = v765;
          goto LABEL_298;
        }

        if (v286 >= 1)
        {
          v287 = v966[138];
          v940 = v259 & 0xC000000000000001;
          v934 = enum case for RuntimeRequirement.featureFlag(_:);
          v947 = v286;
          for (i = v259; ; v259 = i)
          {
            if (v940)
            {
              sub_10005E150();
              sub_10008A928();
            }

            else
            {
              sub_10005FE1C();
            }

            sub_10005F33C();
            v289 = *(v288 + 1104);
            v290 = *(v288 + 1040);
            sub_100088BB8();
            sub_10005F650();
            v291 = sub_100088BC8();
            v293 = v292;
            v294 = sub_100088BA8();
            *v289 = v14;
            *(v287 + 8) = v15;
            *(v287 + 16) = v291;
            *(v287 + 24) = v293;
            *(v287 + 32) = v294 & 1;
            sub_10005E500();
            v295(v289, v934, v290);
            v296 = v962;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v299 = sub_10005CBF0();
              sub_10008074C(v299, v300, v301, v962);
              v296 = v302;
            }

            v15 = v947;
            v14 = *(v296 + 16);
            v297 = *(v296 + 24);
            if (v14 >= v297 >> 1)
            {
              sub_10005D920(v297);
              sub_100060268();
              sub_10008074C(v303, v304, v305, v296);
              v962 = v306;
            }

            else
            {
              v962 = v296;
            }

            sub_1000601FC();

            *(v962 + 16) = v14 + 1;
            sub_10005D2E8();
            sub_10005E770();
            v298();
          }
        }

LABEL_393:
        __break(1u);
        goto LABEL_394;
      }

      v13 = (v16 + 45);
      v229 = v16[140];
      v230 = v16[131];
      v14 = &enum case for RuntimeRequirement.deviceState(_:);
      v231 = v16[130];
      v226(v227, enum case for ToolAuthenticationPolicy.requiresAuthenticationOnOriginAndRemote(_:), v228);
      sub_100089B98();
      sub_10001238C();
      v232 = sub_100012498();
      v233(v232);
      (*(v230 + 104))(v229, enum case for RuntimeRequirement.deviceState(_:), v231);
      v234 = sub_10005D3D8();
      sub_10008074C(v234, v235, v236, v237);
      v43 = v238;
      v44 = *(v238 + 16);
      v55 = *(v238 + 24);
      v12 = v44 + 1;
      if (v44 < v55 >> 1)
      {
LABEL_127:
        v17 = v13;
        *(v43 + 16) = v12;
        sub_10005CA38();
        v241(v43 + v239 + *(v240 + 40) * v44);
        v16[53] = v43;
        goto LABEL_133;
      }

LABEL_391:
      sub_10005D920(v55);
      sub_100060268();
      sub_10008074C(v758, v759, v760, v43);
      v43 = v761;
      goto LABEL_127;
    }

    if ((v16[198] & 0xC000000000000001) != 0)
    {
      v121 = sub_10008A928();
    }

    else
    {
      sub_10005E804();
      if (v12 >= v120)
      {
        goto LABEL_310;
      }

      v121 = *(v119 + 8 * v12 + 32);
    }

    v44 = v121;
    v16[213] = v121;
    v16[214] = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    objc_opt_self();
    sub_10005FBFC();
    if (!swift_dynamicCastObjCClass())
    {
      v127 = [v44 resourceManager];
      sub_100011D84(0, &qword_1000A6538, WFParameterRelationResource_ptr);
      v128 = [v127 resourceObjectsOfClass:swift_getObjCClassFromMetadata()];

      if (v128)
      {
        sub_100011D84(0, &qword_1000A6540, WFResource_ptr);
        sub_10005C60C();
        sub_10005B4C0(v137, &qword_1000A6540, WFResource_ptr);
        sub_10005E120();
        v138 = sub_10008A3F8();

        v17 = 0;
        sub_100017B14(v138, WFParameterRelationResource_ptr);
        v15 = v139;
        v16[215] = v139;

        v932 = sub_10008391C();
        if (v932)
        {
          v140 = 0;
          v939 = v15 & 0xC000000000000001;
          v917 = v15;
          v922 = v15 + 32;
          v946 = _swiftEmptyArrayStorage;
          while (1)
          {
            v141 = sub_10005F014();
            sub_10004F878(v141, v142, v15);
            if (v939)
            {
              sub_10005ED94();
              v143 = sub_10008A928();
            }

            else
            {
              v143 = *(v922 + 8 * v140);
            }

            sub_100060D28(v143);
            if (v144)
            {
              __break(1u);
              goto LABEL_388;
            }

            v953 = v140;
            v14 = v16[197];
            v145 = [v959 parameterKey];
            v146 = sub_10008A268();
            v148 = v147;

            if (*(v14 + 16))
            {
              sub_10008AB08();
              sub_10008A2B8();
              sub_10008AB28();
              sub_10005EB04();
              v151 = ~v150;
              while (1)
              {
                v152 = v16[197];
                v14 = v149 & v151;
                if (((*(v152 + (((v149 & v151) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v149 & v151)) & 1) == 0)
                {
                  break;
                }

                v153 = (*(v152 + 48) + 16 * v14);
                if (*v153 != v146 || v153[1] != v148)
                {
                  v155 = sub_10008AA68();
                  v149 = v14 + 1;
                  if ((v155 & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_112;
              }
            }

            v156 = [v959 comparedValues];
            v43 = sub_10008A328();

            sub_100083934(v43);
            sub_10005FCAC();
            v157 = v43 + 32;
            v13 = _swiftEmptyArrayStorage;
LABEL_81:
            v12 = v157 + 32 * v15;
            while (v14 != v15)
            {
              sub_100060C10();
              if (v158)
              {
                goto LABEL_318;
              }

              v17 = v16[166];
              sub_10000A650(v12, (v16 + 34));
              sub_1000610EC();
              if (v17)
              {

                sub_10005B1BC((v16 + 34));
                sub_100012640();

                return;
              }

              v159 = v16[167];
              v45 = v16[166];
              sub_10005B1BC((v16 + 34));
              v160 = sub_10005F090();
              sub_10005DC64(v160, v161, v159);
              if (!v52)
              {
                v162 = v16[170];
                v163 = v16[169];
                v164 = v16[167];
                v165 = *(v16[168] + 32);
                (v165)(v162, v16[166], v164);
                v913 = v165;
                (v165)(v163, v162, v164);
                v166 = swift_isUniquelyReferenced_nonNull_native();
                if ((v166 & 1) == 0)
                {
                  v170 = sub_10005CBF0();
                  sub_10008080C(v170, v171, v172, v13);
                  v13 = v173;
                }

                v45 = *(v13 + 2);
                v167 = *(v13 + 3);
                if (v45 >= v167 >> 1)
                {
                  sub_10005D920(v167);
                  sub_100060268();
                  sub_10008080C(v174, v175, v176, v13);
                  v13 = v177;
                }

                ++v15;
                *(v13 + 2) = v45 + 1;
                sub_10005E0A0();
                v913(v13 + v168 + *(v169 + 72) * v45);
                v16 = v966;
                v157 = v43 + 32;
                goto LABEL_81;
              }

              sub_100017954(v16[166], &qword_1000A6520, &unk_10008D910);
              v12 += 32;
              ++v15;
            }

            v178 = v16[200];

            v179 = sub_10001BC6C(v13);
            v180 = [v959 relation];
            sub_10005FD20();
            v181 = sub_10008393C();

            if (v181)
            {
              v182 = *(v16 + 523);
              goto LABEL_95;
            }

            v183 = v12;
            sub_10005E810();
            v184 = sub_10008393C();

            if (v184)
            {
              v182 = *(v16 + 518);
              sub_10005F970();

              goto LABEL_106;
            }

            v185 = v183;
            sub_10005E810();
            v186 = sub_10008393C();

            if (v186)
            {
              break;
            }

            v187 = v185;
            sub_10005E810();
            v188 = sub_10008393C();

            if (v188)
            {
              v182 = *(v16 + 521);
              goto LABEL_102;
            }

            v189 = v187;
            sub_10005E810();
            v190 = sub_10008393C();

            if (v190)
            {
              v182 = *(v16 + 521);
              goto LABEL_105;
            }

            v205 = v189;
            sub_10005E810();
            v206 = sub_10008393C();

            if (v206)
            {
              v182 = *(v16 + 520);
LABEL_102:
              sub_10005F970();
              *v178 = v179;
              *(v178 + 8) = 0;
              goto LABEL_106;
            }

            v207 = v205;
            sub_10005E810();
            v208 = sub_10008393C();

            if (v208)
            {
              v182 = *(v16 + 520);
LABEL_105:
              sub_10005F970();
              *v178 = v179;
              *(v178 + 8) = 1;
              goto LABEL_106;
            }

            v209 = sub_10008393C();

            v210 = v16[174];
            v211 = v16[172];
            v212 = v16[171];
            if (v209)
            {
              v193 = *(v16 + 519);
              *v210 = v179;
              v191 = *(v211 + 104);
              v192 = v210;
            }

            else
            {
              v213 = *(v16 + 518);

              v191 = *(v211 + 104);
              v192 = v210;
              v193 = v213;
            }

            v194 = v212;
LABEL_107:
            v191(v192, v193, v194);
            v926 = v16[165];
            v45 = [v959 parameterKey];
            sub_10008A268();

            v195 = sub_10005E470();
            v196(v195);
            sub_10008A0C8();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v214 = sub_10005CBF0();
              sub_1000807CC(v214, v215, v216, v217);
              v946 = v218;
            }

            v198 = v946[2];
            v197 = v946[3];
            v16 = v966;
            if (v198 >= v197 >> 1)
            {
              v219 = sub_10005CA84(v197);
              sub_1000807CC(v219, v220, v221, v946);
              v946 = v222;
            }

            v946[2] = v198 + 1;
            sub_10005CA38();
            v202(v200 + v199 + *(v201 + 40) * v198);

            v203 = sub_10005F378();
            v204(v203);
            v15 = v917;
LABEL_112:
            v140 = v953;
            if (v953 == v932)
            {
              goto LABEL_129;
            }
          }

          v182 = *(v16 + 522);
LABEL_95:
          sub_10005F970();
          *v178 = v179;
LABEL_106:
          v191 = *(v15 + 104);
          v192 = v178;
          v193 = v182;
          v194 = v45;
          goto LABEL_107;
        }

        v946 = _swiftEmptyArrayStorage;
LABEL_129:
        v16[216] = v946;
        v242 = swift_task_alloc();
        v16[217] = v242;
        *v242 = v16;
        v242[1] = sub_100033A58;
        sub_10005E4A0();
        sub_100012640();

LABEL_405:
        WFParameter.toolkitTypeInstance(for:parameterKey:)(v129, v130, v131, v132, v133, v134, v135, v136, a9, a10, a11, a12);
        return;
      }

LABEL_404:
      __break(1u);
      goto LABEL_405;
    }

    ++v12;
  }

  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  sub_10005AE98(v16[59], &selRef_iconSymbolName);
  if (!v550)
  {
    goto LABEL_320;
  }

  v551 = sub_10005F148();
  sub_10005AE98(v551, &selRef_iconBackgroundColorName);
  if (!v552)
  {
    goto LABEL_319;
  }

  v553 = [sub_10005F118() definition];
  if (!v553)
  {
    sub_100060A68();
LABEL_367:
    sub_100017954((v16 + 38), &qword_1000A5A20, &qword_10008C9F0);
    goto LABEL_368;
  }

  v12 = v553;
  v15 = [v553 objectForKey:WFActionIconSymbolColorNameKey];

  if (v15)
  {
    sub_10008A7E8();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100060A5C();
  }

  sub_100060C40(v967[0], v967[1]);
  if (!v724)
  {
    goto LABEL_367;
  }

  sub_100060C28();
  if (swift_dynamicCast())
  {
    sub_1000613EC();
    goto LABEL_369;
  }

LABEL_368:
  sub_10005DA80();
  sub_100009158(v725, v726, v727, v728);
LABEL_369:
  sub_10005E570();
  v729 = v52 && v13 == 0xE400000000000000;
  if (v729 || (v730 = sub_10005DEB4(), (sub_10005D998(v730, v731) & 1) != 0))
  {
    sub_10005FE84();
    sub_10005BF68();
    sub_10005D114(v12);
    if (!v52)
    {
      v736 = sub_10005DD6C();
      sub_100017954(v736, &qword_1000A6500, &qword_10008D8F0);

      v737 = sub_10005EF2C();
      v13(v737);
      v738 = sub_10005D978();
      v13(v738);
      goto LABEL_386;
    }

    sub_100017954(v16[96], &qword_1000A6500, &qword_10008D8F0);
  }

  v732 = v16[95];
  v17 = v16[86];
  sub_10005DEB4();
  sub_1000891A8();
  sub_10005D0F4(v732);
  v733 = v16[95];
  if (v734 == 1)
  {
    sub_100060C34();
    v735();
    sub_10005D438(v733);
    if (!v52)
    {
      sub_100017954(v16[95], &qword_1000A6500, &qword_10008D8F0);
    }
  }

  else
  {
    (*(v16[87] + 32))(v16[89], v16[95], v16[86]);
  }

  sub_10005FE74();
  sub_10005BFBC();
  sub_10005D0F4(v733);
  v12 = v16[94];
  v13 = v16[86];
  if (v739 == 1)
  {
    sub_100060C34();
    v740();
    sub_10005D438(v12);
    if (!v52)
    {
      sub_100017954(v16[94], &qword_1000A6500, &qword_10008D8F0);
    }
  }

  else
  {
    (*(v16[87] + 32))(v16[88], v16[94], v16[86]);
  }

  sub_10005E528();
  v45 = *(sub_100008DC0(&qword_1000A6588, &qword_10008D920) + 48);
  v741 = *(v15 + 32);
  v15 += 32;
  sub_10005E0AC();
  v741();
  sub_10005EC64();
  v741();
  v16 = v966;
LABEL_386:
  v742 = sub_10005D308();
  v743(v742);
  v744 = sub_100008DC0(&qword_1000A6590, &qword_10008D928);
  v745 = sub_10005DD20(v744);
  v746(v745);
  v43 = enum case for ToolIcon.symbol(_:);
  v44 = sub_1000892E8();
  sub_100017A1C();
  v747 = sub_10005FF8C();
  v748(v747);
LABEL_308:
  sub_10005D968();
LABEL_321:
  sub_100009158(v546, v547, v548, v549);
  v554 = sub_10005AE98(v16[59], &selRef_fillingProvider);
  sub_100060F18(v554, v555);
  if (!v556)
  {
    sub_1000603DC();
    v595 = v16[195];
    v596 = v16[194];
    v899 = v16[190];
    v597 = v16[189];
    v897 = v16[188];
    v598 = v16[177];
    v943 = v16[176];
    v950 = v16[181];
    v599 = v16[152];
    v600 = v966[151];
    v930 = v966[150];
    v936 = v599;
    v601 = v966[146];
    v919 = v966[145];
    v924 = v966[149];
    v906 = v966[144];
    v602 = v966[143];
    v901 = v966[142];
    v603 = v966[101];

    sub_100008FE0();
    sub_10005ECC0();
    swift_allocError();
    *v604 = xmmword_10008D640;
    swift_willThrow();

    (*(v597 + 8))(v899, v897);
    sub_100017954(v603, &qword_1000A6508, &qword_10008D8F8);

    (*(v602 + 8))(v906, v901);
    sub_1000608A8();
    (*(v601 + 8))(v924, v919);
    (*(v600 + 8))(v936, v930);

    (*(v598 + 8))(v950, v943);
    goto LABEL_350;
  }

  v557 = swift_allocBox();
  sub_100060F0C(v557, v558);
  sub_10004A4D4(_swiftEmptyArrayStorage);
  v559 = sub_100089108();
  v560 = sub_1000614F4(v559);
  v16[252] = v560;
  if (v560)
  {
    sub_10005DFB0();
    sub_10005F0E8();
    v926 = v563;
    v932 = v562;
    while (1)
    {
      sub_10005E034(v561);
      if (v158)
      {
        goto LABEL_390;
      }

      v12 = v16[83];
      v564 = v16[79];
      sub_10005CD9C();
      v13 = (v564 + 16);
      v565 = *(v564 + 16);
      v566 = sub_100060FA8();
      v565(v566);
      v567 = sub_10005EAE0();
      v565(v567);
      sub_100089138();
      sub_10005C5F4();
      v44 = sub_10005AE38(&qword_1000A6568, v568);
      sub_10005E07C();
      v17 = sub_10008A228();
      v569 = *(v564 + 8);
      v14 = v564 + 8;
      v45 = v569;
      v16[255] = v569;
      sub_10005F564();
      v16[256] = v570;
      v571 = sub_10005E470();
      v569(v571);
      v43 = v16[84];
      if (v17)
      {
        v572 = sub_10005DEA4();
        (v45)(v572);
        if ([v12 visibleForUse:0])
        {
          v43 = v16[83];
          sub_100060EBC();
          sub_100089138();
          v573 = sub_10005E694();
          v565(v573);
          sub_10005C5F4();
          sub_10005AE38(&unk_1000A6578, v574);
          sub_10008A808();
          sub_10005E3BC();
          sub_10008A228();
          sub_100060F90();
          sub_10005E610();
          v12 = v575;
          *v575 = v576;
          if (v577)
          {
            v949 = v16[250];
            v953 = v16[85];
            v17 = v16[83];
            v15 = v16[82];
            v44 = v16[78];
            (v45)(v16[81], v44);
            (v565)(v12 + v43, v15, v44);
            v592 = sub_10005D9DC();
            v565(v592);
            v43 = v949;
            sub_10008A818();
            v593 = sub_10005EF0C();
            (v45)(v593);
            (v45)(v953, v44);
          }

          else
          {
            v15 = v16[85];
            v17 = v16[81];
            v578 = v16[79];
            v44 = v16[78];
            (v45)(v16[82], v44);
            v579 = sub_10005EF0C();
            (v45)(v579);
            v13 = (v578 + 32);
            sub_10005FA3C();
            v580();
          }

          sub_10005E000();
          sub_10005BFBC();
          sub_10005FCEC();
        }
      }

      else
      {
        sub_10005D360();
        sub_100089128();
        v15 = sub_10005D0B0();
        v581 = sub_10005E07C();
        (v45)(v581);
        v43 = v16[84];
        if (v15)
        {
          v582 = sub_10005DEA4();
          (v45)(v582);
          if (([v12 visibleForUse:1] & 1) == 0)
          {
            goto LABEL_340;
          }

          sub_10005CE94();
          sub_100089128();
          goto LABEL_336;
        }

        sub_10005D360();
        sub_100089118();
        sub_10005D0B0();
        v583 = sub_10005DCA8();
        (v45)(v583);
        if ((v43 & 1) == 0)
        {
          v700 = v16[84];
          sub_10005D360();
          sub_100089148();
          sub_10005D0B0();
          v701 = sub_10005DCA8();
          (v45)(v701);
          if (v700)
          {
            v702 = [v16[59] visibleForUse:0];
            if (v702)
            {
              v702 = [v16[59] isApprovedForPublicShortcutsDrawer];
            }

            sub_100060C4C(v702);
            v703 = swift_task_alloc();
            v704 = sub_100060A38(v703);
            *v704 = v705;
            sub_10005C640(v704);
            sub_10005CEF4();
            sub_100012640();

            WFAction.availableInSpotlight(sourceContainerBundleId:attributionContainerBundleId:toolType:runtimeRequirements:)(v706, v707, v708, v709, v710, v711, v712, v713, a9, a10, a11, a12);
          }

          else
          {
            v967[0].n128_u64[0] = sub_10005F76C();
            v967[0].n128_u64[1] = v714;
            sub_10005E3E0("Unknown visibility flag: ");
            sub_10005C5F4();
            v717 = sub_10005AE38(v715, v716);
            v970._countAndFlagsBits = sub_100060774(v717);
            sub_100061554(v970);

            sub_10008A2A8();
            sub_10005C9F8();
            sub_10005D3F8("Fatal error", v718, v719, v720, v721, "BackgroundShortcutRunner/ToolKitIndexer.swift", v722, v723, v770, v772);
            sub_100012640();
          }

          return;
        }

        sub_100060E8C();
        sub_10005D350();
        (v45)();
        v584 = sub_10005E470();
        v565(v584);
        sub_100089138();
        sub_10005C5F4();
        sub_10005AE38(&unk_1000A6578, v585);
        v43 = sub_10005F848();
        v586 = sub_1000124C8();
        (v45)(v586);
        v587 = sub_10005E07C();
        (v45)(v587);
        if (v43 & 1) != 0 && ([v16[59] isApprovedForPublicShortcutsDrawer])
        {
          sub_10005CE94();
          sub_100089118();
LABEL_336:
          v588 = sub_10005F36C();
          sub_100049B80(v588, v589);
          v590 = sub_1000124C8();
          (v45)(v590);
          v591 = sub_10005E07C();
          (v45)(v591);
        }
      }

LABEL_340:
      sub_10005D250();
      v594();
      if (v12 == v43)
      {
        sub_100061494();

        v605 = v926;
        goto LABEL_345;
      }

      sub_100060E2C();
    }
  }

  v12 = v16[196];

  v932 = v16[242];
  v605 = &WFLogCategoryToolKitIndexing;
LABEL_345:
  v606 = *v605;
  sub_10005F7CC();
  sub_10006138C();
  sub_10005E1F0();
  v607 = swift_allocObject();
  *(v607 + 16) = v17;
  sub_10005D504();
  v965 = swift_allocObject();
  *(v965 + 16) = sub_10005B6FC;
  *(v965 + 24) = v12;
  v608 = v17;
  sub_10005E440();
  swift_retain_n();
  v609 = v606;
  v956 = sub_100088FF8();
  v951 = sub_10008A5C8();
  sub_10005D9D0();
  v610 = swift_allocObject();
  *(v610 + 16) = 32;
  v611 = v610;
  sub_10005D9D0();
  v902 = swift_allocObject();
  sub_100060DD4(v902);
  sub_10005D504();
  v612 = swift_allocObject();
  sub_10005C99C(v612);
  sub_10005D504();
  v613 = swift_allocObject();
  sub_10005CD38(v613);
  sub_10005D9D0();
  v614 = swift_allocObject();
  *(v614 + 16) = 32;
  sub_10005D9D0();
  v615 = swift_allocObject();
  *(v615 + 16) = v12;
  sub_10005D504();
  swift_allocObject();
  sub_10005C844();
  *(v616 + 16) = v617;
  *(v616 + 24) = v965;
  sub_10005D504();
  v618 = swift_allocObject();
  sub_10005C85C(v618);
  sub_100008DC0(&unk_1000A64E8, &qword_10008D8D0);
  v619 = swift_initStackObject();
  v620 = sub_10005C6B8(v619, xmmword_10008D630);
  v620[2].n128_u64[0] = v621;
  v620[2].n128_u64[1] = v611;
  v620[3].n128_u64[0] = sub_10005C5C8;
  v620[3].n128_u64[1] = v902;
  v620[4].n128_u64[0] = sub_10005C5D0;
  v620[4].n128_u64[1] = v613;
  v620[5].n128_u64[0] = sub_10005C5C8;
  v620[5].n128_u64[1] = v614;
  v620[6].n128_u64[0] = sub_10005C5C8;
  v620[6].n128_u64[1] = v615;
  v620[7].n128_u64[0] = sub_10005C5D0;
  v620[7].n128_u64[1] = v618;

  sub_10006040C();

  if (os_log_type_enabled(v956, v951))
  {
    v890 = v16[83];
    v622 = v16[79];
    v888 = v16[250];
    v889 = v16[78];
    v894 = v16[74];
    v891 = v16[71];
    v893 = v16[70];
    v623 = v16[59];
    sub_100010370(22);
    v967[0].n128_u64[0] = sub_10005E7D0();
    *v613 = 514;
    *(v613 + 2) = 32;

    sub_100060430();

    v624 = [v623 identifier];
    sub_10008A268();

    v625 = sub_10005E810();
    v628 = sub_100080D2C(v625, v626, v627);

    *(v613 + 4) = v628;

    *(v613 + 12) = 32;

    *(v613 + 13) = 8;

    sub_10005E4A0();
    swift_beginAccess();
    sub_1000609C8();
    v629(v890, v888, v889);
    sub_10005C5F4();
    v632 = sub_10005AE38(v630, v631);
    sub_100060790(v632);
    v633 = v622 + 8;
    v634 = sub_1000124C8();
    v635(v634);
    v636 = sub_10005EB10();
    sub_100080D2C(v636, v637, v638);
    sub_10005E440();

    sub_100060184();

    sub_1000604CC(v639, v640, v641, v642, v643, v644, v645, v646, v770, v772, v774, v777, v780, v783, v786, v789, v792, v795, v798, v800, v802, v804, v806, v808, v810, v812, v814, v816, v818, v820, v822, v824, v826, v828, v830, v832, v834, v836, v838, v840, v842, v844, v846, v848, v850, v852, v854, v856, v858, v860, v862, v864, v866, v868, v870, v872, v874, v876, v878, v880, v882, v884, v886);
    sub_10005E620(&_mh_execute_header, v647, v951, "%s: Visibility flags: %s");
    sub_10005ED04(v648, v649, v650, v651, v652, v653, v654, v655, v771, v773, v775, v778, v781, v784, v787, v790, v793, v796, v799, v801, v803, v805, v807, v809, v811, v813, v815, v817, v819, v821, v823, v825, v827, v829, v831, v833, v835, v837, v839, v841, v843, v845, v847, v849, v851, v853, v855, v857, v859, v861, v863, v865, v867, v869, v871, v873, v875, v877, v879, v881, v883, v885, v887);
    sub_10005D4F8();

    sub_10005D4F8();

    (*(v891 + 8))(v894, v893);
  }

  else
  {
    v633 = v16[249];
    v656 = v16[59];

    v657 = sub_1000124C8();
    v658(v657);
  }

  v952 = v16[248];
  v957 = v16[250];
  sub_1000603AC();
  v907 = v659;
  v911 = v16[149];
  v916 = v16[144];
  sub_100060D9C();
  v931 = v660;
  v903 = v16[61];
  v661 = v16[59];
  v16[58] = v16[60];
  v663 = [v661 *(v662 + 2952)];
  v925 = sub_10008A268();

  v664 = swift_task_alloc();
  v665 = sub_10005E63C(v664);
  v665[7] = v907;
  v665[8] = v633;
  v665[9] = v898;
  v665[10] = v911;
  v665[11] = v917;
  v665[12] = v916;
  v665[13] = v607;
  v665[14] = v952;
  v665[15] = v957;
  v665[16] = v903;
  v665[17] = v931;
  v665[18] = v896;
  v665[19] = v895;
  v665[20] = v965;
  sub_100089378();
  sub_10005C624();
  sub_1000603A0();
  sub_1000893A8();
  sub_100060D5C();
  v666 = v16[195];
  v958 = v16[194];
  sub_10005F034();
  if (v932)
  {
    v667 = v16[177];
    sub_10005F2F4();
    v668 = v16[146];
    v912 = v16[145];
    v669 = v16[144];
    v670 = v16[143];
    v671 = v966[142];
    v672 = v966[101];
    (*(v673 + 8))();

    sub_100017954(v672, &qword_1000A6508, &qword_10008D8F8);
    sub_10006141C();
    sub_100061404();
    (*(v670 + 8))(v669, v671);

    (*(v668 + 8))(v916, v912);
    (*(v633 + 8))(v925, v917);

    (*(v667 + 8))(v932, v931);
LABEL_350:
    sub_10005CADC();
    sub_10005F258();

    sub_10001248C();
  }

  else
  {
    v674 = v16[177];
    v794 = v16[176];
    v797 = v16[181];
    v675 = v16[152];
    v676 = v16;
    v677 = v16[151];
    v788 = v676[150];
    v791 = v675;
    sub_10005D428();
    v782 = v676[145];
    v785 = v678;
    v679 = v676[143];
    v776 = v676[142];
    v779 = v676[144];
    v680 = v676[101];
    sub_10005EFBC();
    (*(v681 + 8))();

    sub_100017954(v680, &qword_1000A6508, &qword_10008D8F8);

    (*(v679 + 8))(v779, v776);

    v690 = sub_1000602F8(v682, v683, v684, v685, v686, v687, v688, v689, v770, v772, v776, v779, v782, v785);
    v691(v690);
    (*(v677 + 8))(v791, v788);

    (*(v674 + 8))(v797, v794);

    sub_100012420();
  }

  sub_100012640();

  v693(v692, v693, v694, v695, v696, v697, v698, v699, a9, a10, a11, a12);
}