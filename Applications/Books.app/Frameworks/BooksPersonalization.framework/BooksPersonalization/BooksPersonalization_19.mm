uint64_t sub_14BF94()
{

  if (v0)
  {

    v1 = sub_82284;
  }

  else
  {
    v1 = sub_14C0AC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_14C0AC()
{
  v1 = v0[301];
  v2 = v0[296];
  v3 = (*(v0[297] + 48))(v1, 1, v2);
  v4 = v0[310];
  if (v3 == 1)
  {
    v5 = v0[291];
    (*(v0[303] + 8))(v0[304], v0[302]);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }

  v8 = v0[300];
  v9 = v0[299];
  v10 = v0[298];
  v11 = *(v2 + 48);
  v12 = *(v1 + v11);
  v13 = sub_1B40F4();
  v14 = *(v13 - 8);
  v41 = v13;
  (*(v14 + 32))(v8, v1);
  *(v8 + v11) = v12;
  v15 = &qword_229360;
  sub_43050(v8, v9, &qword_229360, &qword_1BC400);

  sub_43050(v8, v10, &qword_229360, &qword_1BC400);
  v16 = *(v10 + *(v2 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[290] = v4;
  v18 = sub_3AC78(v9);
  v20 = *(v4 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_20:
    v40 = v18;
    sub_185F44();
    v18 = v40;
LABEL_12:
    v26 = v0[290];
    v27 = v0[300];
    if (v15)
    {
      *(v26[7] + 8 * v18) = v16;

      sub_42F48(v27, &qword_229360, &qword_1BC400);
    }

    else
    {
      v28 = v0[299];
      v26[(v18 >> 6) + 8] |= 1 << v18;
      v29 = v18;
      (*(v14 + 16))(v26[6] + *(v14 + 72) * v18, v28, v41);
      *(v26[7] + 8 * v29) = v16;
      v30 = sub_42F48(v27, &qword_229360, &qword_1BC400);
      v35 = v26[2];
      v22 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v22)
      {
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v30, v31, v32, v33, v34);
      }

      v26[2] = v36;
    }

    v37 = v0[298];
    v38 = *(v14 + 8);
    v38(v0[299], v41);
    v38(v37, v41);
    v0[310] = v26;
    v39 = swift_task_alloc();
    v0[311] = v39;
    *v39 = v0;
    v39[1] = sub_14BF94;
    v33 = v0[302];
    v30 = v0[301];
    v34 = v0 + 289;
    v31 = 0;
    v32 = 0;

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v30, v31, v32, v33, v34);
  }

  LOBYTE(v15) = v19;
  if (*(v0[310] + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v24 = v0[299];
  sub_17F10C(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_3AC78(v24);
  if ((v15 & 1) == (v25 & 1))
  {
    goto LABEL_12;
  }

  return sub_1B5784();
}

uint64_t sub_14C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[145] = a6;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  return _swift_task_switch(sub_14C50C, 0, 0);
}

uint64_t sub_14C50C()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[142];
  v4 = sub_1B40F4();
  v0[146] = v4;
  v5 = *(v4 - 8);
  v0[147] = v5;
  (*(v5 + 16))(v3, v2, v4);
  memcpy(v0 + 2, v1, 0x460uLL);
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_82580;
  v7 = v0[143];

  return sub_14C620(v7, v0 + 2);
}

uint64_t sub_14C620(uint64_t a1, const void *a2)
{
  v3[451] = v2;
  v3[450] = a1;
  v5 = sub_1B40F4();
  v3[452] = v5;
  v3[453] = *(v5 - 8);
  v3[454] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_14C6F8, 0, 0);
}

uint64_t sub_14C6F8(uint64_t a1)
{
  v2 = v1[454];
  v3 = v1[453];
  v4 = v1[452];
  sub_1B40E4();
  v1[455] = sub_1B40D4();
  v1[456] = v5;
  (*(v3 + 8))(v2, v4);
  memcpy(v1 + 142, v1 + 2, 0x460uLL);
  v6 = swift_task_alloc();
  v1[457] = v6;
  *v6 = v1;
  v6[1] = sub_14C7E8;
  v7 = v1[450];

  return sub_14D860((v1 + 444), v7, (v1 + 142));
}

uint64_t sub_14C7E8()
{
  *(*v1 + 3664) = v0;

  if (v0)
  {

    v2 = sub_14D320;
  }

  else
  {
    v2 = sub_14C904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14C904()
{
  v114 = v0;
  v1 = v0[444];
  v2 = v0[445];
  v3 = v0[446];
  v4 = v0[447];
  v5 = v0[448];
  v6 = v0[449];
  v7 = sub_F1750();
  v8 = sub_F1A00();
  *&v108 = v1;
  *(&v108 + 1) = v2;
  *&v109 = v3;
  *(&v109 + 1) = v4;
  *&v110 = v5;
  *(&v110 + 1) = v6;
  v9 = sub_F14D8();
  v99 = v7;
  if (!*(v1 + 16))
  {
    sub_F1484();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 7;
    swift_willThrow();

    goto LABEL_5;
  }

  v97 = v8;
  v98 = v9;
  v10 = v0[458];
  *&v108 = *(v1 + 32);
  sub_F1014(v9);
  if (v10)
  {

LABEL_5:

    v13 = v0[1];

    return v13();
  }

  v96 = v0;
  v15 = v0[450];
  v16 = v11;

  v17 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v18 = *(v15 + *(v17 + 32));
  v19 = *(v15 + *(v17 + 20));
  v20 = v96;
  memcpy(v96 + 141, v96 + 104, 0x16BuLL);
  sub_71E28((v20 + 13), (v20 + 328));
  v21 = sub_159364(v16);

  v113[0] = _swiftEmptyDictionarySingleton;
  sub_71E28((v20 + 13), (v20 + 374));

  sub_1553FC(v19, v21, (v96 + 141), v113, v18);
  sub_72470(v96 + 104);
  swift_bridgeObjectRelease_n();
  v22 = v113[0];
  v23 = *(v113[0] + 16);
  if (v23)
  {
    v24 = sub_35304(*(v113[0] + 16), 0);
    v3 = sub_3FF88(&v108, v24 + 2, v23, v22);
    v25 = v108;

    result = sub_417B8(v25);
    if (v3 != v23)
    {
      __break(1u);
      return result;
    }

    sub_72470(v96 + 104);

    v26 = v97;
    v27 = v98;
    v28 = v99;
    v29 = v24;
    v30 = v24[2];
    if (v30)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_72470(v96 + 104);

    v29 = _swiftEmptyArrayStorage;
    v26 = v97;
    v27 = v98;
    v28 = v99;
    v30 = _swiftEmptyArrayStorage[2];
    if (v30)
    {
LABEL_11:
      sub_37574(0, v30, 0);
      if (v29[2])
      {
        v31 = 0;
        v3 = (v96 + 210);
        v32 = _swiftEmptyArrayStorage;
        v93 = v29 + 4;
        v94 = v30;
        v33 = 1;
        v95 = v29;
        do
        {
          v105 = v33;
          v106 = v32;
          v34 = &v93[8 * v31];
          v35 = v34[3];
          v37 = *v34;
          v36 = v34[1];
          v96[212] = v34[2];
          v96[213] = v35;
          *v3 = v37;
          v96[211] = v36;
          v38 = *v3;
          if (v28[2] && (v39 = sub_43124(*v3), (v40 & 1) != 0))
          {
            v41 = *(v28[7] + 8 * v39);

            if (!v26[2])
            {
              goto LABEL_21;
            }
          }

          else
          {
            v41 = _swiftEmptyArrayStorage;
            if (!v26[2])
            {
              goto LABEL_21;
            }
          }

          v42 = sub_43124(v38);
          if ((v43 & 1) == 0)
          {
LABEL_21:
            v44 = _swiftEmptyArrayStorage;
            if (!v27[2])
            {
              goto LABEL_24;
            }

            goto LABEL_22;
          }

          v44 = *(v26[7] + 8 * v42);

          if (!v27[2])
          {
            goto LABEL_24;
          }

LABEL_22:
          v45 = sub_43124(v38);
          if (v46)
          {
            v47 = v27[7] + 40 * v45;
            v103 = *(v47 + 8);
            v104 = *v47;
            v101 = *(v47 + 16);
            v102 = *(v47 + 24);
            v100 = *(v47 + 32);
            goto LABEL_25;
          }

LABEL_24:
          v103 = 0;
          v104 = 0;
          v100 = 0;
          v101 = 2;
          v102 = 0;
LABEL_25:
          sub_42BA4(v3, (v20 + 428));
          sub_42BA4(v3, (v20 + 436));
          v48 = sub_1B4CC4();
          v49 = v48;
          v50 = v41[2];
          v107 = v44;
          if (v50)
          {
            v51 = 0;
            v52 = v48 + 56;
            do
            {
              while (1)
              {
                v53 = v41[v51++ + 4];
                v54 = sub_1B57E4();
                v55 = -1 << *(v49 + 32);
                v56 = v54 & ~v55;
                if ((*(v52 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
                {
                  break;
                }

LABEL_32:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v108 = v49;
                sub_115EFC(v53, v56, isUniquelyReferenced_nonNull_native);
                v49 = v108;
                if (v51 == v50)
                {
                  goto LABEL_34;
                }

                v52 = v108 + 56;
              }

              v57 = ~v55;
              while (*(*(v49 + 48) + 8 * v56) != v53)
              {
                v56 = (v56 + 1) & v57;
                if (((*(v52 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
                {
                  goto LABEL_32;
                }
              }
            }

            while (v51 != v50);
LABEL_34:

            v44 = v107;
          }

          else
          {
          }

          v59 = sub_1B4CC4();
          v60 = v44[2];
          if (v60)
          {
            v61 = 0;
            v62 = v44 + 4;
            do
            {
              v64 = v59 + 56;
              while (1)
              {
                v65 = v62[v61++];
                v66 = sub_1B57E4();
                v67 = -1 << *(v59 + 32);
                v68 = v66 & ~v67;
                if (((*(v64 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
                {
                  break;
                }

                v69 = ~v67;
                while (*(*(v59 + 48) + 8 * v68) != v65)
                {
                  v68 = (v68 + 1) & v69;
                  if (((*(v64 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
                  {
                    goto LABEL_38;
                  }
                }

                if (v61 == v60)
                {
                  goto LABEL_46;
                }
              }

LABEL_38:
              v63 = swift_isUniquelyReferenced_nonNull_native();
              *&v108 = v59;
              sub_115EFC(v65, v68, v63);
              v59 = v108;
            }

            while (v61 != v60);
          }

LABEL_46:

          sub_42EA0();
          v113[0] = sub_1B4CC4();
          sub_1122C4(&v112, 0);
          sub_43FF4(v3);
          v70 = v113[0];
          v71 = v96[213];
          v110 = v96[212];
          v111 = v71;
          v72 = v96[211];
          v108 = *v3;
          v109 = v72;
          v32 = v106;
          v74 = v106[2];
          v73 = v106[3];
          if (v74 >= v73 >> 1)
          {
            sub_37574((v73 > 1), v74 + 1, 1);
            v32 = v106;
          }

          v32[2] = v74 + 1;
          v75 = &v32[17 * v74];
          v76 = v108;
          v77 = v109;
          v78 = v111;
          *(v75 + 4) = v110;
          *(v75 + 5) = v78;
          *(v75 + 2) = v76;
          *(v75 + 3) = v77;
          v75[12] = v49;
          v75[13] = v59;
          v75[14] = v70;
          v75[15] = _swiftEmptySetSingleton;
          v75[16] = v104;
          v75[17] = v103;
          v75[18] = v101;
          v75[19] = v102;
          *(v75 + 160) = v100;
          v30 = v94;
          v31 = v105;
          if (v105 == v94)
          {
            v3 = v32;

            v20 = v96;
            goto LABEL_54;
          }

          v33 = v105 + 1;
          v20 = v96;
          v26 = v97;
          v27 = v98;
          v28 = v99;
        }

        while (v105 < v95[2]);
      }

      __break(1u);
      goto LABEL_66;
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_54:
  v30 = 0;
  if (qword_228300 != -1)
  {
LABEL_66:
    swift_once();
  }

  v79 = sub_1B4644();
  sub_50E58(v79, qword_260C60);

  v80 = sub_1B4624();
  v81 = sub_1B4DB4();

  v82 = os_log_type_enabled(v80, v81);
  v83 = v20[456];
  if (v82)
  {
    v84 = v20[455];
    v85 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    *v85 = 136446466;
    v86 = sub_60FF4(v84, v83, v113);

    *(v85 + 4) = v86;
    *(v85 + 12) = 2080;
    *&v108 = v3;

    sub_14AD54(&v108);
    if (v30)
    {
    }

    sub_C04B0(v108);
    v88 = v87;
    v90 = v89;

    v91 = sub_60FF4(v88, v90, v113);

    *(v85 + 14) = v91;
    _os_log_impl(&dword_0, v80, v81, "for %{public}s, returning result %s", v85, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v92 = v20[1];

  return v92(v3);
}

uint64_t sub_14D320()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_14D384(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v49 = sub_2B0C(&qword_22E178, &unk_1CF3C0);
  v3 = __chkstk_darwin(v49);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v47 = &v40 - v5;
  v6 = sub_2B0C(&qword_229360, &qword_1BC400);
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v54 = _swiftEmptyArrayStorage;
    sub_377AC(0, v9, 0);
    v10 = v54;
    v11 = a2 + 64;
    v12 = sub_1B4F84();
    v13 = 0;
    v14 = *(a2 + 36);
    v40 = a2 + 72;
    v41 = v9;
    v42 = v14;
    v43 = a2 + 64;
    v44 = a2;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a2 + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v14 != *(a2 + 36))
      {
        goto LABEL_26;
      }

      v52 = 1 << v12;
      v53 = v12 >> 6;
      v51 = v13;
      v16 = *(a2 + 48);
      v17 = sub_1B40F4();
      v18 = *(v17 - 8);
      v19 = v18;
      v20 = v10;
      v21 = *(v18 + 16);
      v22 = v8;
      v23 = v47;
      v21(v47, v16 + *(v18 + 72) * v12, v17);
      v24 = *(*(a2 + 56) + 8 * v12);
      v25 = v48;
      v26 = v23;
      v8 = v22;
      (*(v19 + 32))(v48, v26, v17);
      *(v25 + *(v49 + 48)) = v24;
      v27 = *(v46 + 48);
      v21(v22, v25, v17);
      v10 = v20;

      *(v22 + v27) = sub_150218(v50, v24);
      sub_42F48(v25, &qword_22E178, &unk_1CF3C0);
      v54 = v20;
      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        sub_377AC((v28 > 1), v29 + 1, 1);
        v10 = v54;
      }

      v10[2] = v29 + 1;
      sub_15476C(v22, v10 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v29);
      a2 = v44;
      v15 = 1 << *(v44 + 32);
      if (v12 >= v15)
      {
        goto LABEL_27;
      }

      v11 = v43;
      v30 = *(v43 + 8 * v53);
      if ((v30 & v52) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v14) = v42;
      if (v42 != *(v44 + 36))
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v12 & 0x3F));
      if (v31)
      {
        v15 = __clz(__rbit64(v31)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v53 << 6;
        v33 = v53 + 1;
        v34 = (v40 + 8 * v53);
        while (v33 < (v15 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_42FF0(v12, v42, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        sub_42FF0(v12, v42, 0);
      }

LABEL_4:
      v13 = v51 + 1;
      v12 = v15;
      if (v51 + 1 == v41)
      {
        goto LABEL_20;
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
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (v10[2])
    {
      sub_2B0C(&qword_22E180, &unk_1D1530);
      v37 = sub_1B52B4();
    }

    else
    {
      v37 = _swiftEmptyDictionarySingleton;
    }

    v54 = v37;

    sub_150DB8(v38, 1, &v54);

    return v54;
  }

  return result;
}

uint64_t sub_14D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 2576) = v3;
  *(v4 + 2568) = a2;
  *(v4 + 2560) = a1;
  v6 = sub_1B40F4();
  *(v4 + 2584) = v6;
  *(v4 + 2592) = *(v6 - 8);
  *(v4 + 2600) = swift_task_alloc();
  *(v4 + 2608) = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(v4 + 2616) = swift_task_alloc();
  *(v4 + 2624) = swift_task_alloc();
  *(v4 + 2632) = swift_task_alloc();
  *(v4 + 2640) = swift_task_alloc();
  memcpy((v4 + 1856), a3, 0x170uLL);
  *(v4 + 2648) = *(a3 + 368);
  *(v4 + 2512) = *(a3 + 376);
  *(v4 + 2656) = *(a3 + 392);
  memcpy((v4 + 1136), (a3 + 400), 0x2D0uLL);

  return _swift_task_switch(sub_14D9BC, 0, 0);
}

uint64_t sub_14D9BC()
{
  v90 = v0;
  v2 = *(*(v0 + 2568) + *(*(v0 + 2608) + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_351DC(*(v2 + 16), 0);
    v5 = sub_3EF0C(v89, v4 + 32, v3, v2);
    v6 = v89[0];
    v1 = v89[4];

    sub_417B8(v6);
    if (v5 != v3)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v89[0] = v4;
  sub_14B0F4(v89, sub_56BA8, &type metadata for SeedBook, sub_152180, sub_151780);
  v8 = *(v0 + 2608);
  v6 = *(v0 + 2568);
  v9 = v89[0];
  *(v0 + 2664) = v89[0];
  sub_2B0C(&qword_2293A0, &qword_1BC440);
  v10 = swift_allocObject();
  v86 = 1;
  *(v10 + 16) = xmmword_1BCA80;
  *(v10 + 32) = _swiftEmptyArrayStorage;

  v11 = *(v6 + *(v8 + 56));
  *(v0 + 2672) = v11;
  v12 = *(v6 + *(v8 + 52));
  *(v0 + 2680) = v12;
  if (!v12)
  {
    goto LABEL_49;
  }

  if (v11 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_51;
  }

  v14 = v11 / v12;
  if (*(v0 + 2648) >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v0 + 2648);
  }

  if (v15)
  {
    v16 = v9[2];

    v17 = sub_154B48(0, v16, v15, v15, v9);
    v88 = 0;

    v18 = v17;
    v19 = v17[2];
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_2B0C(&qword_2293A8, &qword_1BC448);
    v18 = swift_allocObject();
    v88 = 0;
    *(v18 + 16) = xmmword_1BCA80;
    *(v18 + 32) = _swiftEmptyArrayStorage;
    *(v18 + 40) = &_swiftEmptyArrayStorage[4];
    *(v18 + 48) = xmmword_1C00C0;
    v19 = 1;
  }

  *(v0 + 2696) = v19;
  *(v0 + 2688) = v18;
  v20 = *(v0 + 2656);
  v6 = *(v0 + 2608);
  v21 = *(v0 + 2592);
  if (v20 < 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = *(v0 + 2656);
  }

  *(v0 + 2704) = v22;
  *(v0 + 2760) = v10;
  *(v0 + 2712) = 0u;
  *(v0 + 2728) = 0u;
  *(v0 + 2744) = 0u;
  if (!*(v18 + 16))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v23 = *(v18 + 32);
  *(v0 + 2768) = v23;
  if (v20 < 0)
  {
LABEL_28:
    v49 = *(v0 + 2560);

    *v49 = v10;
    *(v49 + 8) = 0u;
    *(v49 + 24) = 0u;
    *(v49 + 40) = 0;

    v50 = *(v0 + 8);

    return v50();
  }

  v24 = (v21 + 16);
  v26 = *(v18 + 40);
  v25 = *(v18 + 48);
  v27 = *(v18 + 56);
  v83 = *(v0 + 2680);
  v84 = *(v0 + 2672);
  v85 = (v21 + 8);
  v28 = *(v0 + 2640);
  v29 = *(v0 + 2600);
  v82 = *(v0 + 2584);
  v30 = *(v0 + 2568);
  swift_unknownObjectRetain();
  sub_1B40E4();
  v81 = v26;
  v86 = v25;
  v31 = sub_41158(v26, v25, v27);
  v32 = v23;
  v33 = v31;
  (*v24)(v28, v29, v82);
  v34 = (v30 + v6[6]);
  v36 = *v34;
  v35 = v34[1];
  v37 = *(v30 + v6[8]);
  v38 = *(v30 + v6[9]);
  v39 = (v30 + v6[7]);
  v40 = *(v30 + v6[10]);
  v41 = *(v30 + v6[11]);
  v42 = *v39;
  v43 = v39[1];
  *(v28 + v6[5]) = v33;
  v1 = v27;
  v44 = (v28 + v6[6]);
  *v44 = v36;
  v44[1] = v35;
  v45 = (v28 + v6[7]);
  *v45 = v42;
  v45[1] = v43;
  *(v28 + v6[8]) = v37;
  *(v28 + v6[9]) = v38;
  *(v28 + v6[10]) = v40;
  *(v28 + v6[11]) = v41;
  *(v28 + v6[12]) = _swiftEmptySetSingleton;
  *(v28 + v6[13]) = v83;
  *(v28 + v6[14]) = v84;
  v46 = *v85;

  v46(v29, v82);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

  v47 = v86;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v51 = swift_dynamicCastClass();
  v6 = v32;
  if (!v51)
  {
    swift_unknownObjectRelease();
    v51 = _swiftEmptyArrayStorage;
  }

  v52 = v51[2];

  if (__OFSUB__(v27 >> 1, v86))
  {
    goto LABEL_52;
  }

  if (v52 != (v27 >> 1) - v86)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v32 = v6;
LABEL_27:
    v47 = v86;
    sub_51454(v32, v81, v86, v1);
    goto LABEL_37;
  }

  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = _swiftEmptyArrayStorage;
  }

LABEL_37:
  *(v0 + 2528) = v48;
  sub_14AF70((v0 + 2528));
  if (v88)
  {
  }

  else
  {
    v53 = *(v0 + 2528);
    *(v0 + 2776) = v53;
    if (qword_228300 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 2640);
    v55 = *(v0 + 2632);
    v56 = *(v0 + 2624);
    v57 = *(v0 + 2568);
    v58 = sub_1B4644();
    *(v0 + 2784) = sub_50E58(v58, qword_260C60);
    sub_8478C(v54, v55);
    sub_8478C(v57, v56);
    swift_unknownObjectRetain_n();

    v59 = sub_1B4624();
    v60 = sub_1B4DB4();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 2632);
    if (v61)
    {
      v87 = v60;
      v63 = swift_slowAlloc();
      *(v0 + 2552) = swift_slowAlloc();
      *v63 = 136446978;
      v64 = sub_1B40D4();
      v66 = v65;
      sub_155848(v62);
      v67 = sub_60FF4(v64, v66, (v0 + 2552));

      *(v63 + 4) = v67;
      *(v63 + 12) = 2048;
      result = swift_unknownObjectRelease();
      if (__OFSUB__(v1 >> 1, v47))
      {
        __break(1u);
        return result;
      }

      v68 = *(v0 + 2624);
      *(v63 + 14) = (v1 >> 1) - v47;
      swift_unknownObjectRelease();
      *(v63 + 22) = 2082;
      v69 = sub_1B40D4();
      v71 = v70;
      sub_155848(v68);
      v72 = sub_60FF4(v69, v71, (v0 + 2552));

      *(v63 + 24) = v72;
      *(v63 + 32) = 2080;
      v73 = sub_14F0AC(v53);
      v75 = sub_60FF4(v73, v74, (v0 + 2552));

      *(v63 + 34) = v75;
      _os_log_impl(&dword_0, v59, v87, "issuing subrequest %{public}s with %ld seed books for request %{public}s seedBooks=%s", v63, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v76 = *(v0 + 2624);
      swift_unknownObjectRelease_n();

      sub_155848(v76);
      sub_155848(v62);
    }

    v77 = *(v0 + 2656);
    v78 = *(v0 + 2648);
    memcpy((v0 + 16), (v0 + 1856), 0x170uLL);
    *(v0 + 384) = v78;
    *(v0 + 392) = *(v0 + 2512);
    *(v0 + 408) = v77;
    memcpy((v0 + 416), (v0 + 1136), 0x2D0uLL);
    v79 = swift_task_alloc();
    *(v0 + 2792) = v79;
    *v79 = v0;
    v79[1] = sub_14E268;
    v80 = *(v0 + 2640);

    return sub_14F254(v0 + 2224, v80, v0 + 16);
  }
}

uint64_t sub_14E268()
{
  *(*v1 + 2800) = v0;

  if (v0)
  {

    v2 = sub_14EFF4;
  }

  else
  {
    v2 = sub_14E404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14E404()
{
  v118 = v0;
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2248);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2264);
  *(v0 + 2320) = *(v0 + 2224);
  *(v0 + 2328) = v1;
  *(v0 + 2336) = v2;
  v108 = v3;
  *(v0 + 2344) = v3;
  *(v0 + 2352) = v4;
  *(v0 + 2360) = v5;
  v6 = sub_F1CB0(sub_14FDF4, 0, (v0 + 2272));
  v7 = *(v0 + 2272);
  v113 = *(v0 + 2280);
  v8 = *(v0 + 2288);
  v9 = *(v0 + 2296);
  v10 = *(v0 + 2304);
  v11 = *(v0 + 2312);
  if (!*(v7 + 16))
  {
    sub_F1484();
    swift_allocError();
    *v14 = 2;
    *(v14 + 8) = 7;
    swift_willThrow();
    goto LABEL_5;
  }

  v12 = *(v0 + 2800);
  *(v0 + 2536) = *(v7 + 32);
  sub_F1014(v6);
  if (v12)
  {
LABEL_5:
    sub_155848(*(v0 + 2640));

    swift_unknownObjectRelease();

    v15 = *(v0 + 8);
LABEL_6:

    return v15();
  }

  *(v0 + 2544) = v13;

  sub_14B0F4((v0 + 2544), sub_56C0C, &_s15RecommendedBookVN, sub_153340, sub_151A94);
  v104 = v8;
  v105 = v9;
  v106 = v10;
  v107 = v11;
  v17 = *(v0 + 2640);
  v18 = *(v0 + 2616);

  v19 = *(v0 + 2544);
  sub_8478C(v17, v18);

  v20 = sub_1B4624();
  v21 = sub_1B4DB4();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 2616);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v117[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = sub_1B40D4();
    v27 = v26;
    sub_155848(v23);
    v28 = sub_60FF4(v25, v27, v117);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = sub_14FE0C(v19);
    v31 = v30;

    v32 = sub_60FF4(v29, v31, v117);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_0, v20, v21, "subrequest %{public}s filteredResponse=%s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_155848(v23);
  }

  v33 = *(v0 + 2720);
  v115 = *(v0 + 2696);
  v109 = *(v0 + 2640);
  v111 = *(v0 + 2712) + 1;
  *(v0 + 2416) = *(v0 + 2760);
  v34 = vextq_s8(*(v0 + 2728), *(v0 + 2728), 8uLL);
  *(v0 + 2424) = vextq_s8(*(v0 + 2744), *(v0 + 2744), 8uLL);
  *(v0 + 2440) = v34;
  *(v0 + 2456) = v33;
  *(v0 + 2464) = v7;
  *(v0 + 2472) = v113;
  *(v0 + 2480) = v104;
  *(v0 + 2488) = v105;
  *(v0 + 2496) = v106;
  *(v0 + 2504) = v107;
  sub_F1E5C((v0 + 2416), (v0 + 2464), (v0 + 2368));
  swift_unknownObjectRelease();
  v35 = *(v0 + 2448);

  sub_155848(v109);

  v36 = *(v0 + 2368);
  v37 = *(v0 + 2376);
  v38 = *(v0 + 2384);
  v39 = *(v0 + 2392);
  v40 = *(v0 + 2400);
  v41 = *(v0 + 2408);
  if (v111 == v115)
  {
    goto LABEL_15;
  }

  v42 = *(v0 + 2712);
  *(v0 + 2760) = v36;
  *(v0 + 2752) = v37;
  *(v0 + 2744) = v38;
  *(v0 + 2736) = v39;
  *(v0 + 2728) = v40;
  *(v0 + 2720) = v41;
  *(v0 + 2712) = v42 + 1;
  v43 = *(v0 + 2688);
  if ((v42 + 1) >= *(v43 + 16))
  {
    __break(1u);
  }

  else
  {
    v44 = *(v0 + 2704);
    v45 = (v43 + 32 * (v42 + 1));
    v46 = v45[4];
    *(v0 + 2768) = v46;
    if (v42 == v44)
    {
LABEL_15:
      v47 = *(v0 + 2560);

      *v47 = v36;
      v47[1] = v37;
      v47[2] = v38;
      v47[3] = v39;
      v47[4] = v40;
      v47[5] = v41;

      v15 = *(v0 + 8);
      goto LABEL_6;
    }

    v48 = v45[5];
    v49 = v45[6];
    v50 = v45[7];
    v110 = *(v0 + 2680);
    v112 = *(v0 + 2672);
    v51 = *(v0 + 2640);
    v52 = *(v0 + 2608);
    v53 = *(v0 + 2600);
    v54 = *(v0 + 2592);
    v55 = *(v0 + 2584);
    v56 = *(v0 + 2568);
    v113 = v46;
    swift_unknownObjectRetain();
    sub_1B40E4();
    v108 = v48;
    v115 = v49;
    v57 = sub_41158(v48, v49, v50);
    (*(v54 + 16))(v51, v53, v55);
    v58 = (v56 + v52[6]);
    v60 = *v58;
    v59 = v58[1];
    v61 = (v56 + v52[7]);
    v62 = *(v56 + v52[8]);
    v63 = *(v56 + v52[9]);
    v64 = *(v56 + v52[10]);
    v65 = *(v56 + v52[11]);
    v66 = *v61;
    v67 = v61[1];
    *(v51 + v52[5]) = v57;
    v68 = (v51 + v52[6]);
    *v68 = v60;
    v68[1] = v59;
    v69 = (v51 + v52[7]);
    *v69 = v66;
    v69[1] = v67;
    *(v51 + v52[8]) = v62;
    *(v51 + v52[9]) = v63;
    *(v51 + v52[10]) = v64;
    *(v51 + v52[11]) = v65;
    *(v51 + v52[12]) = _swiftEmptySetSingleton;
    *(v51 + v52[13]) = v110;
    v70 = v52[14];
    v35 = v50;
    *(v51 + v70) = v112;
    v71 = *(v54 + 8);

    v71(v53, v55);
    if ((v50 & 1) == 0)
    {
      goto LABEL_17;
    }

    v72 = v115;
    sub_1B5744();
    swift_unknownObjectRetain_n();
    v74 = swift_dynamicCastClass();
    if (!v74)
    {
      swift_unknownObjectRelease();
      v74 = _swiftEmptyArrayStorage;
    }

    v75 = v74[2];

    if (!__OFSUB__(v35 >> 1, v115))
    {
      if (v75 == (v35 >> 1) - v115)
      {
        v73 = swift_dynamicCastClass();
        if (!v73)
        {
          swift_unknownObjectRelease();
          v73 = _swiftEmptyArrayStorage;
        }

        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_35:
  swift_unknownObjectRelease();
LABEL_17:
  v72 = v115;
  sub_51454(v113, v108, v115, v35);
LABEL_24:
  *(v0 + 2528) = v73;
  sub_14AF70((v0 + 2528));
  v76 = *(v0 + 2528);
  *(v0 + 2776) = v76;
  if (qword_228300 != -1)
  {
    swift_once();
  }

  v77 = *(v0 + 2640);
  v78 = *(v0 + 2632);
  v79 = *(v0 + 2624);
  v80 = *(v0 + 2568);
  v81 = sub_1B4644();
  *(v0 + 2784) = sub_50E58(v81, qword_260C60);
  sub_8478C(v77, v78);
  sub_8478C(v80, v79);
  swift_unknownObjectRetain_n();

  v82 = sub_1B4624();
  v83 = sub_1B4DB4();

  v116 = v82;
  v84 = os_log_type_enabled(v82, v83);
  v85 = *(v0 + 2632);
  if (v84)
  {
    v114 = v83;
    v86 = swift_slowAlloc();
    *(v0 + 2552) = swift_slowAlloc();
    *v86 = 136446978;
    v87 = sub_1B40D4();
    v89 = v88;
    sub_155848(v85);
    v90 = sub_60FF4(v87, v89, (v0 + 2552));

    *(v86 + 4) = v90;
    *(v86 + 12) = 2048;
    result = swift_unknownObjectRelease();
    if (__OFSUB__(v35 >> 1, v72))
    {
      __break(1u);
      return result;
    }

    v91 = *(v0 + 2624);
    *(v86 + 14) = (v35 >> 1) - v72;
    swift_unknownObjectRelease();
    *(v86 + 22) = 2082;
    v92 = sub_1B40D4();
    v94 = v93;
    sub_155848(v91);
    v95 = sub_60FF4(v92, v94, (v0 + 2552));

    *(v86 + 24) = v95;
    *(v86 + 32) = 2080;
    v96 = sub_14F0AC(v76);
    v98 = sub_60FF4(v96, v97, (v0 + 2552));

    *(v86 + 34) = v98;
    _os_log_impl(&dword_0, v116, v114, "issuing subrequest %{public}s with %ld seed books for request %{public}s seedBooks=%s", v86, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v99 = *(v0 + 2624);
    swift_unknownObjectRelease_n();

    sub_155848(v99);
    sub_155848(v85);
  }

  v100 = *(v0 + 2656);
  v101 = *(v0 + 2648);
  memcpy((v0 + 16), (v0 + 1856), 0x170uLL);
  *(v0 + 384) = v101;
  *(v0 + 392) = *(v0 + 2512);
  *(v0 + 408) = v100;
  memcpy((v0 + 416), (v0 + 1136), 0x2D0uLL);
  v102 = swift_task_alloc();
  *(v0 + 2792) = v102;
  *v102 = v0;
  v102[1] = sub_14E268;
  v103 = *(v0 + 2640);

  return sub_14F254(v0 + 2224, v103, v0 + 16);
}

uint64_t sub_14EFF4()
{
  v1 = *(v0 + 2640);
  swift_unknownObjectRelease();
  sub_155848(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_14F0AC(uint64_t a1)
{
  v18 = 0x202020200A5BLL;
  v19 = 0xE600000000000000;
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_3747C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      memcpy(v16, v4, 0x231uLL);
      v5 = sub_14B190();
      v17 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_3747C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v2 = v17;
      }

      v2[2] = v8 + 1;
      v9 = &v2[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 568;
      --v1;
    }

    while (v1);
  }

  v16[0] = v2;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
  v12 = sub_1B4764();
  v14 = v13;

  v20._countAndFlagsBits = v12;
  v20._object = v14;
  sub_1B48D4(v20);

  v21._countAndFlagsBits = 93;
  v21._object = 0xE100000000000000;
  sub_1B48D4(v21);
  return v18;
}

uint64_t sub_14F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[75] = v3;
  v4[74] = a2;
  v4[73] = a1;
  v4[76] = *(a3 + 464);
  return _swift_task_switch(sub_14F284, 0, 0);
}

uint64_t sub_14F284(uint64_t a1)
{
  v69 = v1;
  v3 = *(v1 + 592);
  v4 = sub_1B40D4();
  v6 = v5;
  v62 = v4;
  *(v1 + 616) = v4;
  *(v1 + 624) = v5;
  v7 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v8 = v7;
  v9 = *(v3 + *(v7 + 20));
  v10 = *(v9 + 16);
  if (v10)
  {
    v63 = v7;
    v64 = v1;
    v1 = v6;
    v11 = sub_351DC(v10, 0);
    v2 = sub_3EF0C(&v65, v11 + 32, v10, v9);
    v12 = v65;
    v14 = v67;
    v13 = v68;

    sub_417B8(v12);
    if (v2 != v10)
    {
      __break(1u);
      goto LABEL_30;
    }

    v8 = v63;
    v1 = v64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v65 = v11;
  sub_14B0F4(&v65, sub_56BA8, &type metadata for SeedBook, sub_152180, sub_151780);
  v14 = *(v1 + 592);
  v15 = v65;
  v13 = swift_task_alloc();
  *(v13 + 16) = v14;
  v16 = sub_1A9E3C(sub_1558A4, v13, v15);

  v17 = *(v16 + 2);
  v18 = *(v14 + v8[13]);
  if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  v19 = *(v1 + 592);
  if (*(v19 + v8[14]) >= v17 * v18)
  {
    v20 = v17 * v18;
  }

  else
  {
    v20 = *(v19 + v8[14]);
  }

  sub_F0C94(v16, &v65);

  v13 = v65;
  v14 = v66;
  sub_2B0C(&qword_22E198, &qword_1CF408);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCA80;
  v21 = v8;
  if (*(v19 + v8[9]))
  {
    v22 = _swiftEmptySetSingleton;
  }

  else
  {

    v22 = sub_40854(v23);
  }

  sub_F0DA8(v22, v20, v2 + 32);
  v64 = v6;
  v24 = *(v1 + 592);

  v25 = (v24 + v21[7]);
  v59 = *v25;
  v60 = v25[1];
  v26 = qword_228300;

  if (v26 != -1)
  {
    goto LABEL_31;
  }

LABEL_13:
  v61 = v13;
  v27 = (v1 + 16);
  v28 = sub_1B4644();
  *(v1 + 632) = sub_50E58(v28, qword_260C60);

  v29 = sub_1B4624();
  v30 = sub_1B4DB4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v14;
    v33 = swift_slowAlloc();
    v65 = v33;
    *v31 = 136446210;
    v34 = v62;
    *(v31 + 4) = sub_60FF4(v62, v64, &v65);
    _os_log_impl(&dword_0, v29, v30, "initiating request for %{public}s", v31, 0xCu);
    sub_2BF8(v33);
    v14 = v32;
  }

  else
  {

    v34 = v62;
  }

  v35 = (v1 + 408);
  v36 = 0xD00000000000002ELL;
  v37 = *(v1 + 600);

  sub_F212C(0, 0, 0, 0, 0, 0);
  *(v1 + 408) = v34;
  *(v1 + 416) = v64;
  *(v1 + 424) = 0;
  *(v1 + 432) = 0;
  *(v1 + 440) = v59;
  *(v1 + 448) = v60;
  *(v1 + 456) = v61;
  *(v1 + 464) = v14;
  *(v1 + 472) = v2;
  *(v1 + 480) = 0;
  if (*(v37 + 48) > 1u)
  {
    if (*(v37 + 48) == 2)
    {
      v39 = "rsonalization-server.apple.com";
      v36 = 0xD00000000000003FLL;
      goto LABEL_24;
    }

    v38 = "https://books-personalization-server.apple.com";
  }

  else
  {
    if (*(v37 + 48))
    {
      v39 = "ation-server.newsapps.apple.com";
      v36 = 0xD00000000000004CLL;
      goto LABEL_24;
    }

    v36 = 0xD00000000000003DLL;
    v38 = "https://devel-books-personalization-server.newsapps.apple.com";
  }

  v39 = (v38 - 32);
LABEL_24:
  v40 = *(v1 + 600);
  v41 = v39 | 0x8000000000000000;
  v42 = v40[2];
  v43 = v40[3];
  v44 = v40[4];
  v45 = v40[5];
  sub_404C4((v40 + 12), v1 + 544);
  *(v1 + 168) = v36;
  *(v1 + 176) = v41;
  *(v1 + 184) = v42;
  *(v1 + 192) = v43;
  *(v1 + 200) = v44;
  *(v1 + 208) = v45;
  sub_404C4(v1 + 544, v1 + 216);
  v65 = v42;
  v66 = v43;
  v67 = v44;
  v68 = v45;
  sub_41BF8(v42, v43);
  sub_41BF8(v44, v45);
  sub_41BF8(v42, v43);
  sub_41BF8(v44, v45);
  ClientConverter.init(configuration:)(&v65, v1 + 256);
  sub_2BF8((v1 + 544));
  v46 = *(v1 + 368);
  *(v1 + 112) = *(v1 + 352);
  *(v1 + 128) = v46;
  *(v1 + 144) = *(v1 + 384);
  *(v1 + 160) = *(v1 + 400);
  v47 = *(v1 + 304);
  *(v1 + 48) = *(v1 + 288);
  *(v1 + 64) = v47;
  v48 = *(v1 + 336);
  *(v1 + 80) = *(v1 + 320);
  *(v1 + 96) = v48;
  v49 = *(v1 + 272);
  *v27 = *(v1 + 256);
  *(v1 + 32) = v49;

  v50 = sub_1B4624();
  v51 = sub_1B4DB4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_60FF4(v62, v64, &v65);
    _os_log_impl(&dword_0, v50, v51, "fetching recommendations for %{public}s", v52, 0xCu);
    sub_2BF8(v53);
  }

  v54 = swift_task_alloc();
  *(v1 + 640) = v54;
  *(v54 + 16) = v27;
  *(v54 + 24) = v35;
  v55 = swift_task_alloc();
  *(v1 + 648) = v55;
  *(v55 + 16) = v27;
  v56 = swift_task_alloc();
  *(v1 + 656) = v56;
  *(v56 + 16) = v27;
  v57 = swift_task_alloc();
  *(v1 + 664) = v57;
  *v57 = v1;
  v57[1] = sub_14FA20;

  return sub_F4974(v1 + 488, v35, sub_F44B4, v54, &unk_1CF410, v55, sub_F4958, v56);
}

uint64_t sub_14FA20()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {

    v3 = sub_14FD88;
  }

  else
  {
    sub_1559C4(v2 + 408);

    v3 = sub_14FB94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_14FB94()
{
  v24 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v21 = *(v0 + 512);
  v4 = *(v0 + 520);
  v5 = *(v0 + 528);
  v6 = *(v0 + 536);

  v7 = sub_1B4624();
  v8 = sub_1B4DB4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 624);
  if (v9)
  {
    v20 = v1;
    v11 = *(v0 + 616);
    v19 = v2;
    v12 = swift_slowAlloc();
    v18 = v3;
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136446210;
    v14 = sub_60FF4(v11, v10, v22);

    *(v12 + 4) = v14;
    v1 = v20;
    _os_log_impl(&dword_0, v7, v8, "fetched recommendations for %{public}s", v12, 0xCu);
    sub_2BF8(v13);
    v3 = v18;

    v2 = v19;
  }

  else
  {
  }

  v15 = *(v0 + 584);
  v22[0] = v1;
  v22[1] = v2;
  v22[2] = v3;
  v22[3] = v21;
  v22[4] = v4;
  v22[5] = v5;
  v23 = v6;
  sub_F0EB4(v15);
  sub_136AC4(v0 + 16);
  sub_155A18(v1, v2, v3, v21, v4, v5, v6);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_14FD88()
{
  sub_1559C4(v0 + 408);
  sub_136AC4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14FE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3747C(0, v1, 0);
    v3 = a1 + 48;
    do
    {
      v4 = *(v3 - 8);

      v19 = sub_1B5594();
      v20 = v5;
      v21._countAndFlagsBits = 58;
      v21._object = 0xE100000000000000;
      sub_1B48D4(v21);
      v22._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v22);

      v23._countAndFlagsBits = 58;
      v23._object = 0xE100000000000000;
      sub_1B48D4(v23);
      if (*(v4 + 16) && (v6 = sub_3AFEC(0, 0), (v7 & 1) != 0))
      {
        v8 = *(*(v4 + 56) + 8 * v6);
        sub_2B0C(&qword_22A048, &unk_1BFC60);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1BCA80;
        *(v9 + 56) = &type metadata for Double;
        *(v9 + 64) = &protocol witness table for Double;
        *(v9 + 32) = v8;
        v10._countAndFlagsBits = sub_1B47F4();
        object = v10._object;
      }

      else
      {
        object = 0xE300000000000000;
        v10._countAndFlagsBits = 7104878;
      }

      v10._object = object;
      sub_1B48D4(v10);

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_3747C((v12 > 1), v13 + 1, 1);
      }

      v3 += 24;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v19;
      v14[5] = v20;
      --v1;
    }

    while (v1);
  }

  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590, &protocol conformance descriptor for [A]);
  v15 = sub_1B4764();
  v17 = v16;

  v24._countAndFlagsBits = v15;
  v24._object = v17;
  sub_1B48D4(v24);

  v25._countAndFlagsBits = 93;
  v25._object = 0xE100000000000000;
  sub_1B48D4(v25);
  return 0x202020200A5BLL;
}

uint64_t sub_1500DC()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_41C08(v0[2], v0[3]);
  sub_41C08(v1, v2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_150170(uint64_t a1, const void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_14B554(a1, a2);
}

void *sub_150218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v145 = _swiftEmptyArrayStorage;
  v78 = v2;
  sub_37574(0, v2, 0);
  v5 = 0;
  result = _swiftEmptyArrayStorage;
  v77 = a2 + 32;
  v105 = a1;
  while (1)
  {
    v7 = v77 + 136 * v5;
    v8 = *(v7 + 112);
    v142 = *(v7 + 96);
    v143 = v8;
    v144 = *(v7 + 128);
    v9 = *(v7 + 48);
    v138 = *(v7 + 32);
    v139 = v9;
    v10 = *(v7 + 80);
    v140 = *(v7 + 64);
    v141 = v10;
    v11 = *(v7 + 16);
    v137[0] = *v7;
    v137[1] = v11;
    v12 = v11;
    v13 = BYTE8(v11);
    v84 = result;
    v85 = v5;
    v82 = *(&v138 + 1);
    v83 = *(&v141 + 1);
    v89 = v141;
    v87 = v138;
    v88 = v140;
    v86 = v11;
    v81 = BYTE8(v137[0]);
    v80 = *&v137[0];
    if (v9)
    {
      break;
    }

    sub_43688(v12, v13);

    v63 = 0;
    v64 = v78;
LABEL_43:
    v67 = v142;
    v68 = v143;
    LODWORD(v116) = *__dst;
    *(&v116 + 3) = *&__dst[3];
    __src[0] = *v126;
    *(__src + 3) = *&v126[3];
    result = v84;
    v69 = v85;
    v71 = v84[2];
    v70 = v84[3];
    v72 = v144;
    v73 = *(&v139 + 1);
    v145 = v84;
    if (v71 >= v70 >> 1)
    {
      v113 = v143;
      v115 = v142;
      sub_37574((v70 > 1), v71 + 1, 1);
      v68 = v113;
      v67 = v115;
      v69 = v85;
      v64 = v78;
      result = v145;
    }

    result[2] = v71 + 1;
    v74 = &result[17 * v71];
    v74[4] = v80;
    v5 = v69 + 1;
    *(v74 + 40) = v81;
    v75 = *(&v116 + 3);
    *(v74 + 41) = v116;
    *(v74 + 11) = v75;
    v74[6] = v86;
    *(v74 + 56) = v13;
    v76 = __src[0];
    *(v74 + 15) = *(__src + 3);
    *(v74 + 57) = v76;
    v74[8] = v87;
    v74[9] = v82;
    v74[10] = v63;
    v74[11] = v73;
    *(v74 + 6) = v88;
    v74[14] = v89;
    v74[15] = v83;
    *(v74 + 8) = v67;
    *(v74 + 9) = v68;
    *(v74 + 160) = v72;
    if (v5 == v64)
    {
      return result;
    }
  }

  v79 = BYTE8(v11);
  v14 = *(v9 + 16);
  v15 = v9;
  if (!v14)
  {
    swift_bridgeObjectRetain_n();
    sub_429F8(v137, __dst);

    sub_42BA4(v137, __dst);
    sub_43688(v86, v13);

    v65 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_39:
      sub_2B0C(&qword_22A510, &qword_1C0208);
      v66 = sub_1B52B4();
    }

    else
    {
LABEL_41:
      v66 = _swiftEmptyDictionarySingleton;
    }

    *__dst = v66;
    v64 = v78;
    sub_15130C(v65, 1, __dst);
    v13 = v79;

    sub_43FF4(v137);

    sub_5C740(v137);
    v63 = *__dst;
    goto LABEL_43;
  }

  swift_bridgeObjectRetain_n();
  sub_429F8(v137, __dst);

  sub_42BA4(v137, __dst);
  sub_43688(v86, v13);
  v136 = _swiftEmptyArrayStorage;

  sub_37A58(0, v14, 0);
  v104 = v136;
  v16 = v15 + 64;
  v17 = -1 << *(v15 + 32);
  v18 = sub_1B4F84();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
  }

  else
  {
    v93 = v15;
    v94 = -v17;
    v90 = v15 + 72;
    v91 = v14;
    v19 = 1;
    v103 = *(v15 + 36);
    v20 = v103;
    v92 = v15 + 64;
    while (v18 < v94)
    {
      if (v20 != v103)
      {
        goto LABEL_50;
      }

      v21 = v18 >> 6;
      v22 = 1 << v18;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_50;
      }

      v102 = v19;
      v23 = *(*(v15 + 48) + v18);
      v24 = *(*(v15 + 56) + 8 * v18);
      v135 = v23;
      v25 = *(v24 + 16);
      if (v25)
      {
        v95 = 1 << v18;
        v96 = v18 >> 6;
        v98 = v20;
        v100 = v18;
        v134 = _swiftEmptyArrayStorage;

        sub_3749C(0, v25, 0);
        v26 = v134;
        v114 = v25 - 1;
        v27 = 32;
        for (i = v24; ; v24 = i)
        {
          memcpy(__dst, (v24 + v27), sizeof(__dst));
          v28 = *__dst;
          if (*(a1 + 16) && (v29 = sub_43124(*__dst), (v30 & 1) != 0))
          {
            memcpy(v126, (*(a1 + 56) + 568 * v29), sizeof(v126));
            v112 = v126[560];
            v28 = *v126;
            v110 = *&v126[88];
            v111 = *&v126[552];
            v108 = *&v126[48];
            v109 = *&v126[64];
            v31 = v126[80];
            v32 = *&v126[32];
            v33 = v126[40];
            v107 = *&v126[16];
            v34 = v126[8];
            sub_4299C(v126, &v116);
            v35 = v126;
          }

          else
          {
            v112 = __dst[560];
            v110 = *&__dst[88];
            v111 = *&__dst[552];
            v108 = *&__dst[48];
            v109 = *&__dst[64];
            v31 = __dst[80];
            v32 = *&__dst[32];
            v33 = __dst[40];
            v107 = *&__dst[16];
            v34 = __dst[8];
            sub_4299C(__dst, v126);
            v35 = __dst;
          }

          v36 = *(v35 + 9);
          v129 = *(v35 + 8);
          v130 = v36;
          v131 = *(v35 + 20);
          v37 = *(v35 + 6);
          v128 = *(v35 + 7);
          v127 = v37;
          memcpy(__src, v35 + 168, 0x179uLL);
          v134 = v26;
          v39 = v26[2];
          v38 = v26[3];
          if (v39 >= v38 >> 1)
          {
            sub_3749C((v38 > 1), v39 + 1, 1);
            v26 = v134;
          }

          v121 = v33;
          v118 = v129;
          v119 = v130;
          v120 = v131;
          v116 = v127;
          v117 = v128;
          memcpy(v126, __src, 0x179uLL);
          v26[2] = v39 + 1;
          v40 = &v26[71 * v39];
          v40[4] = v28;
          *(v40 + 40) = v34;
          v41 = *&v125[3];
          *(v40 + 41) = *v125;
          *(v40 + 11) = v41;
          *(v40 + 3) = v107;
          v40[8] = v32;
          *(v40 + 72) = v33;
          v42 = *&v124[3];
          *(v40 + 73) = *v124;
          *(v40 + 19) = v42;
          *(v40 + 5) = v108;
          *(v40 + 6) = v109;
          *(v40 + 112) = v31;
          v43 = *&v123[3];
          *(v40 + 113) = *v123;
          *(v40 + 29) = v43;
          v40[15] = v110;
          *(v40 + 8) = v116;
          v44 = v117;
          v45 = v118;
          v46 = v119;
          v40[24] = v120;
          *(v40 + 10) = v45;
          *(v40 + 11) = v46;
          *(v40 + 9) = v44;
          memcpy(v40 + 25, v126, 0x179uLL);
          v47 = *&v122[3];
          *(v40 + 577) = *v122;
          *(v40 + 145) = v47;
          v40[73] = v111;
          *(v40 + 592) = v112;
          if (!v114)
          {
            break;
          }

          --v114;
          v27 += 568;
          a1 = v105;
        }

        v23 = v135;
        v48 = v104;
        a1 = v105;
        v20 = v98;
        v18 = v100;
        v22 = v95;
        v21 = v96;
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
        v48 = v104;
      }

      v136 = v48;
      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v99 = v20;
        v101 = v18;
        v97 = v21;
        v62 = v22;
        sub_37A58((v49 > 1), v50 + 1, 1);
        v22 = v62;
        v21 = v97;
        v20 = v99;
        v18 = v101;
        v48 = v136;
      }

      v48[2] = v50 + 1;
      v51 = &v48[2 * v50];
      *(v51 + 32) = v23;
      v51[5] = v26;
      v15 = v93;
      v52 = 1 << *(v93 + 32);
      if (v18 >= v52)
      {
        goto LABEL_51;
      }

      v16 = v92;
      v53 = *(v92 + 8 * v21);
      if ((v53 & v22) == 0)
      {
        goto LABEL_52;
      }

      if (v103 != *(v93 + 36))
      {
        goto LABEL_53;
      }

      v104 = v48;
      v54 = v53 & (-2 << (v18 & 0x3F));
      if (v54)
      {
        v55 = v18;
        sub_42FF0(v18, v20, 0);
        v18 = __clz(__rbit64(v54)) | v55 & 0x7FFFFFFFFFFFFFC0;
        v56 = v91;
      }

      else
      {
        v57 = v21 << 6;
        v58 = v21 + 1;
        v56 = v91;
        v59 = (v90 + 8 * v21);
        while (v58 < (v52 + 63) >> 6)
        {
          v61 = *v59++;
          v60 = v61;
          v57 += 64;
          ++v58;
          if (v61)
          {
            sub_42FF0(v18, v20, 0);
            v18 = __clz(__rbit64(v60)) + v57;
            goto LABEL_34;
          }
        }

        sub_42FF0(v18, v20, 0);
        v18 = v52;
      }

LABEL_34:
      if (v102 == v56)
      {
        v65 = v104;
        if (!v104[2])
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      v20 = *(v93 + 36);
      v19 = v102 + 1;
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_150AB0()
{
  v1 = *(v0 + 48) >> 62;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v8 = *(v0 + 56);
      ReviewInfo.starRating.getter(&v7);
      v9._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v9);

      v10._countAndFlagsBits = 41;
      v10._object = 0xE100000000000000;
      sub_1B48D4(v10);
      return 0x6974615272617473;
    }

    else
    {
      v3 = *(v0 + 8);
      if (v3 > 3)
      {
        v6 = 0xD00000000000001DLL;
        if (v3 != 4)
        {
          v6 = 0x6C706D6153736177;
        }

        if (*(v0 + 8) <= 5u)
        {
          return v6;
        }

        else
        {
          return 0xD000000000000014;
        }
      }

      else
      {
        v4 = 0x6863727550736177;
        if (v3 == 2)
        {
          v4 = 0xD000000000000015;
        }

        v5 = 0xD00000000000001FLL;
        if (!*(v0 + 8))
        {
          v5 = 0xD000000000000019;
        }

        if (*(v0 + 8) <= 1u)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }
    }
  }

  else if (v1)
  {
    return 0x656B694C65726F6DLL;
  }

  else
  {
    return 0x656B694C7373656CLL;
  }
}

uint64_t sub_150CF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_7A038;

  return sub_14B95C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_150DB8(void *a1, char a2, void *a3)
{
  v7 = sub_1B40F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B0C(&qword_229360, &qword_1BC400);
  v12 = __chkstk_darwin(v11);
  v15 = v54 - v14;
  v59 = a1[2];
  if (!v59)
  {
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v54[0] = v17;
  sub_43050(a1 + v17, v54 - v14, &qword_229360, &qword_1BC400);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_3AC78(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_17F10C(v25, a2 & 1);
    v20 = sub_3AC78(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1B5784();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_185F44();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    v29 = swift_dynamicCast();
    v30 = v62;
    if ((v29 & 1) == 0)
    {

      (*(v55 + 8))(v10, v30);
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
    }

    v39 = v60 + v58 + v54[0];
    v40 = 1;
    while (v40 < v38[2])
    {
      sub_43050(v39, v15, &qword_229360, &qword_1BC400);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_3AC78(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_17F10C(v47, 1);
        v43 = sub_3AC78(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1B5084(30);
  v66._object = 0x80000000001D57D0;
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1B48D4(v66);
  sub_1B51F4();
  v67._countAndFlagsBits = 39;
  v67._object = 0xE100000000000000;
  sub_1B48D4(v67);
  result = sub_1B5234();
  __break(1u);
  return result;
}

uint64_t sub_15130C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  if (!v8)
  {
  }

  v9 = *a3;
  v10 = sub_3AB0C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_183284(v15, v6 & 1);
    v10 = sub_3AB0C(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B5784();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = v10;
  sub_187DC0();
  v10 = v19;
  if (v16)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v20[6] + v10) = v7;
  *(v20[7] + 8 * v10) = v8;
  v21 = v20[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B5084(30);
    v34._object = 0x80000000001D57D0;
    v34._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1B48D4(v34);
    sub_1B51F4();
    v35._countAndFlagsBits = 39;
    v35._object = 0xE100000000000000;
    sub_1B48D4(v35);
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  v20[2] = v22;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v23 = 1;
    while (v23 < *(a1 + 16))
    {
      v7 = *(v6 - 8);
      v8 = *v6;

      if (!v8)
      {
      }

      v24 = *a3;
      v25 = sub_3AB0C(v7);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v26;
      if (v24[3] < v29)
      {
        sub_183284(v29, 1);
        v25 = sub_3AB0C(v7);
        if ((v16 & 1) != (v30 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v31 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      *(v31[6] + v25) = v7;
      *(v31[7] + 8 * v25) = v8;
      v32 = v31[2];
      v14 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v23;
      v31[2] = v33;
      v6 += 2;
      if (v4 == v23)
      {
      }
    }

    goto LABEL_27;
  }
}

Swift::Int sub_151670(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1B5584(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = sub_1B4B34();
        v10[2] = v7 / 2;
      }

      v12[0] = v10 + 4;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_151780(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v33 = *a4;
  v4 = *a4 + 568 * a3 - 568;
  v5 = result - a3 + 1;
LABEL_5:
  v31 = v4;
  v32 = a3;
  v30 = v5;
  for (i = v5; ; i = v27 + 1)
  {
    memcpy(__dst, (v4 + 568), 0x231uLL);
    result = memcpy(v41, v4, 0x231uLL);
    v7 = __dst[18];
    if (__dst[18] >> 1 == 0xFFFFFFFFLL)
    {
      break;
    }

    v42 = i;
    v8 = __dst[12];
    v9 = __dst[13];
    v10 = __dst[14];
    v11 = __dst[15];
    v12 = __dst[16];
    v13 = __dst[17];
    if ((__dst[18] >> 62) > 2)
    {
      v14 = __dst[12];
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BCA80;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      *(v14 + 48) = v10;
      *(v14 + 56) = v11;
      *(v14 + 64) = v12;
      *(v14 + 72) = v13;
      *(v14 + 80) = v7 & 1;
    }

    sub_4299C(__dst, __src);
    sub_4299C(v41, __src);
    sub_43050(&__dst[12], __src, &qword_22A4E0, &unk_1C01D0);
    v15 = COERCE_DOUBLE(Array<A>.affinity.getter(v14));
    v17 = v16;

    if (v17)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v15;
    }

    v36 = v41[8];
    v37 = v41[9];
    v38 = *&v41[10];
    v34 = v41[6];
    v35 = v41[7];
    v19 = v41[9];
    if (*&v41[9] >> 1 == 0xFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    v20 = v34;
    v21 = v35;
    v22 = v36;
    if ((*&v41[9] >> 62) > 2)
    {
      v23 = v34;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1BCA80;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
      *(v23 + 64) = v22;
      *(v23 + 80) = v19 & 1;
    }

    sub_42CD4(&v34, __src);
    v24 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
    v26 = v25;

    sub_2601C(v41);
    result = sub_2601C(__dst);
    v27 = v42;
    if (v26)
    {
      if (v18 == 0.0)
      {
        goto LABEL_21;
      }

      v28 = 0.0;
    }

    else
    {
      v28 = v24;
      if (v18 == v24)
      {
LABEL_21:
        if (__dst[0] >= *&v41[0])
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    if (v28 >= v18)
    {
      goto LABEL_4;
    }

LABEL_24:
    if (!v33)
    {
      goto LABEL_29;
    }

    memcpy(__src, (v4 + 568), 0x231uLL);
    memcpy((v4 + 568), v4, 0x238uLL);
    result = memcpy(v4, __src, 0x231uLL);
    if (!v27)
    {
LABEL_4:
      a3 = v32 + 1;
      v4 = v31 + 568;
      v5 = v30 - 1;
      if (v32 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    v4 -= 568;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_151A94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v7 >= v10)
      {
        v11 = v7 != v10 || *v9 >= *(v9 - 3);
        if (v11)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v12 = *v9;
      v13 = v9[1];
      *v9 = *(v9 - 3);
      v9[2] = *(v9 - 1);
      *(v9 - 2) = v13;
      *(v9 - 1) = v7;
      *(v9 - 3) = v12;
      v9 -= 3;
      v11 = __CFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_151B2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v7);
      v7 = result;
    }

    v82 = v7 + 2;
    v83 = v7[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v7[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_153964((*a3 + 136 * *v84), (*a3 + 136 * *v86), (*a3 + 136 * v87), v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6);
      v10 = 136 * v8;
      v11 = (*a3 + 136 * v8);
      v14 = *v11;
      v13 = v11 + 17;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[17];
        v13 += 17;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 136 * v6 - 136;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v104 = *(v22 + v10 + 96);
            v106 = *(v22 + v10 + 112);
            v108 = *(v22 + v10 + 128);
            v96 = *(v22 + v10 + 32);
            v98 = *(v22 + v10 + 48);
            v100 = *(v22 + v10 + 64);
            v102 = *(v22 + v10 + 80);
            v92 = *(v22 + v10);
            v94 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x88uLL);
            *(v21 + 96) = v104;
            *(v21 + 112) = v106;
            *(v21 + 128) = v108;
            *(v21 + 32) = v96;
            *(v21 + 48) = v98;
            *(v21 + 64) = v100;
            *(v21 + 80) = v102;
            *v21 = v92;
            *(v21 + 16) = v94;
          }

          ++v20;
          v18 -= 136;
          v10 += 136;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v35 = v7[2];
    v34 = v7[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_32F04((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v36;
    v37 = v7 + 4;
    v38 = &v7[2 * v35 + 4];
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = v7[4];
          v41 = v7[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v37[2 * v39];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v37[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
        {
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
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v37[2 * v39 - 2];
        v78 = *v77;
        v79 = &v37[2 * v39];
        v80 = v79[1];
        sub_153964((*a3 + 136 * *v77), (*a3 + 136 * *v79), (*a3 + 136 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > v7[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v7[2];
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        result = memmove(&v37[2 * v39], v79 + 2, 16 * (v81 - 1 - v39));
        v7[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v37[2 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v37[2 * v39];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 136 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 136);
    if (*v27 >= *(v27 - 136))
    {
LABEL_29:
      ++v6;
      v24 += 136;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v105 = *(v27 + 96);
    v107 = *(v27 + 112);
    v109 = *(v27 + 128);
    v97 = *(v27 + 32);
    v99 = *(v27 + 48);
    v101 = *(v27 + 64);
    v103 = *(v27 + 80);
    v93 = *v27;
    v95 = *(v27 + 16);
    v29 = *(v27 - 56);
    *(v27 + 64) = *(v27 - 72);
    *(v27 + 80) = v29;
    v30 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 40);
    *(v27 + 112) = v30;
    *(v27 + 128) = *(v27 - 8);
    v31 = *(v27 - 88);
    *(v27 + 32) = *(v27 - 104);
    *(v27 + 48) = v31;
    v32 = *(v27 - 120);
    *v27 = *v28;
    *(v27 + 16) = v32;
    *(v27 - 72) = v101;
    *(v27 - 56) = v103;
    *(v27 - 40) = v105;
    *(v27 - 24) = v107;
    *(v27 - 8) = v109;
    *(v27 - 104) = v97;
    *(v27 - 88) = v99;
    v27 -= 136;
    *v28 = v93;
    v28[1] = v95;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_152180(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  v118 = result;
  v123 = v6;
  v7 = *(v6 + 8);
  if (v7 >= 1)
  {
    v117 = v5;
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8 + 1;
      v122 = v9;
      v120 = v8;
      if (v8 + 1 >= v7)
      {
        v33 = v8 + 1;
        goto LABEL_36;
      }

      v1 = *v123;
      v11 = (*v123 + 568 * v10);
      memcpy(v141, v11, 0x231uLL);
      memcpy(__dst, v11, 0x231uLL);
      v3 = v1 + 568 * v8;
      memcpy(v142, v3, sizeof(v142));
      memcpy(__src, v3, 0x231uLL);
      sub_4299C(v141, v138);
      sub_4299C(v142, v138);
      LODWORD(v144) = sub_12CA44(__dst, __src);
      if (v2)
      {
        memcpy(v137, __src, 0x231uLL);
        sub_2601C(v137);
        memcpy(v138, __dst, 0x231uLL);
        sub_2601C(v138);
      }

      memcpy(v137, __src, 0x231uLL);
      sub_2601C(v137);
      memcpy(v138, __dst, 0x231uLL);
      result = sub_2601C(v138);
      v12 = v8 + 2;
      if (v8 + 2 >= v7)
      {
        v33 = v8 + 2;
LABEL_31:
        if ((v144 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        if (v33 >= v120)
        {
          if (v120 <= v10)
          {
            v1 = 568 * v33 - 568;
            v108 = 568 * v120;
            v3 = v33;
            v109 = v120;
            while (1)
            {
              if (v109 != --v3)
              {
                v110 = v33;
                v111 = *v123;
                if (!*v123)
                {
                  goto LABEL_172;
                }

                memcpy(v136, (v111 + v108), sizeof(v136));
                memmove((v111 + v108), (v111 + v1), 0x238uLL);
                result = memcpy((v111 + v1), v136, 0x231uLL);
                v33 = v110;
              }

              ++v109;
              v1 -= 568;
              v108 += 568;
              if (v109 >= v3)
              {
                goto LABEL_36;
              }
            }
          }

          goto LABEL_36;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        result = sub_52E40(v1);
        goto LABEL_131;
      }

      v13 = v1 + 568 * v8 + 568;
      v127 = v7;
      while (1)
      {
        v124 = v12;
        memcpy(v135, (v13 + 568), 0x231uLL);
        result = memcpy(v136, v13, sizeof(v136));
        v14 = v135[18];
        if (v135[18] >> 1 == 0xFFFFFFFFLL)
        {
          goto LABEL_170;
        }

        v15 = v135[12];
        v16 = v135[13];
        v17 = v135[14];
        v18 = v135[15];
        v19 = v135[16];
        v20 = v135[17];
        if ((v135[18] >> 62) > 2)
        {
          v21 = v135[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1BCA80;
          *(v21 + 32) = v15;
          *(v21 + 40) = v16;
          *(v21 + 48) = v17;
          *(v21 + 56) = v18;
          *(v21 + 64) = v19;
          *(v21 + 72) = v20;
          *(v21 + 80) = v14 & 1;
        }

        sub_4299C(v135, &v130);
        sub_4299C(v136, &v130);
        sub_43050(&v135[12], &v130, &qword_22A4E0, &unk_1C01D0);
        v22 = COERCE_DOUBLE(Array<A>.affinity.getter(v21));
        v24 = v23;

        if (v24)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = v22;
        }

        v132 = *&v136[128];
        v133 = *&v136[144];
        v134 = *&v136[160];
        v130 = *&v136[96];
        v131 = *&v136[112];
        v26 = v136[144];
        if (*&v136[144] >> 1 == 0xFFFFFFFFLL)
        {
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v27 = v130;
        v1 = *(&v131 + 1);
        v28 = v131;
        v29 = v132;
        if ((*&v136[144] >> 62) > 2)
        {
          v3 = v130;
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_1BCA80;
          *(v3 + 32) = v27;
          *(v3 + 48) = v28;
          *(v3 + 56) = v1;
          *(v3 + 64) = v29;
          *(v3 + 80) = v26 & 1;
        }

        sub_42CD4(&v130, v129);
        v30 = COERCE_DOUBLE(Array<A>.affinity.getter(v3));
        v32 = v31;

        sub_2601C(v136);
        result = sub_2601C(v135);
        if (v32)
        {
          v33 = v124;
          if (v25 == 0.0)
          {
            goto LABEL_24;
          }

          v34 = 0.0;
        }

        else
        {
          v34 = v30;
          v35 = v25 == v30;
          v33 = v124;
          if (v35)
          {
LABEL_24:
            v36 = v135[0] < *v136;
            v37 = v127;
            goto LABEL_26;
          }
        }

        v37 = v127;
        v36 = v34 < v25;
LABEL_26:
        if ((v144 ^ v36))
        {
          break;
        }

        v12 = v33 + 1;
        v13 += 568;
        if (v37 == v33 + 1)
        {
          v10 = v33;
          v33 = v37;
          goto LABEL_31;
        }
      }

      v10 = v33 - 1;
      if (v144)
      {
        goto LABEL_34;
      }

LABEL_36:
      v38 = v123[1];
      if (v33 >= v38)
      {
        goto LABEL_69;
      }

      if (__OFSUB__(v33, v120))
      {
        goto LABEL_161;
      }

      if (v33 - v120 >= v117)
      {
        goto LABEL_69;
      }

      v39 = v120 + v117;
      if (__OFADD__(v120, v117))
      {
        goto LABEL_162;
      }

      if (v39 >= v38)
      {
        v39 = v123[1];
      }

      if (v39 < v120)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      if (v33 == v39)
      {
        goto LABEL_69;
      }

      v126 = *v123;
      v1 = v120 - v33 + 1;
      v40 = *v123 + 568 * v33 - 568;
      v119 = v39;
      while (2)
      {
        v125 = v33;
        v41 = v1;
        v121 = v40;
        v42 = v40;
        v128 = v1;
        while (2)
        {
          memcpy(v141, (v42 + 568), 0x231uLL);
          result = memcpy(v142, v42, sizeof(v142));
          v43 = v141[18];
          if (v141[18] >> 1 == 0xFFFFFFFFLL)
          {
            goto LABEL_167;
          }

          v144 = v41;
          v44 = v141[12];
          v45 = v141[13];
          v46 = v141[14];
          v47 = v141[15];
          v48 = v141[16];
          v49 = v141[17];
          if ((v141[18] >> 62) > 2)
          {
            v50 = v141[12];
          }

          else
          {
            sub_2B0C(&qword_229488, &qword_1BC520);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1BCA80;
            *(v50 + 32) = v44;
            *(v50 + 40) = v45;
            *(v50 + 48) = v46;
            *(v50 + 56) = v47;
            *(v50 + 64) = v48;
            *(v50 + 72) = v49;
            *(v50 + 80) = v43 & 1;
          }

          sub_4299C(v141, __dst);
          sub_4299C(v142, __dst);
          sub_43050(&v141[12], __dst, &qword_22A4E0, &unk_1C01D0);
          v51 = COERCE_DOUBLE(Array<A>.affinity.getter(v50));
          v53 = v52;

          if (v53)
          {
            v54 = 0.0;
          }

          else
          {
            v54 = v51;
          }

          __src[2] = *&v142[128];
          __src[3] = *&v142[144];
          *&__src[4] = *&v142[160];
          __src[0] = *&v142[96];
          __src[1] = *&v142[112];
          v55 = v142[144];
          if (*&v142[144] >> 1 == 0xFFFFFFFFLL)
          {
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          v56 = __src[0];
          v57 = __src[1];
          v58 = __src[2];
          if ((*&v142[144] >> 62) > 2)
          {
            v3 = *&__src[0];
          }

          else
          {
            sub_2B0C(&qword_229488, &qword_1BC520);
            v3 = swift_allocObject();
            *(v3 + 16) = xmmword_1BCA80;
            *(v3 + 32) = v56;
            *(v3 + 48) = v57;
            *(v3 + 64) = v58;
            *(v3 + 80) = v55 & 1;
          }

          sub_42CD4(__src, __dst);
          v59 = COERCE_DOUBLE(Array<A>.affinity.getter(v3));
          v61 = v60;

          sub_2601C(v142);
          result = sub_2601C(v141);
          v62 = v144;
          if ((v61 & 1) == 0)
          {
            v63 = v59;
            if (v54 != v59)
            {
              goto LABEL_64;
            }

LABEL_62:
            if (v141[0] >= *v142)
            {
              break;
            }

            goto LABEL_65;
          }

          if (v54 == 0.0)
          {
            goto LABEL_62;
          }

          v63 = 0.0;
LABEL_64:
          if (v63 >= v54)
          {
            break;
          }

LABEL_65:
          if (!v126)
          {
            goto LABEL_168;
          }

          memcpy(__dst, (v42 + 568), 0x231uLL);
          memcpy((v42 + 568), v42, 0x238uLL);
          memcpy(v42, __dst, 0x231uLL);
          if (v62)
          {
            v42 -= 568;
            v41 = v62 + 1;
            continue;
          }

          break;
        }

        v33 = v125 + 1;
        v40 = v121 + 568;
        v1 = v128 - 1;
        if (v125 + 1 != v119)
        {
          continue;
        }

        break;
      }

      v33 = v119;
LABEL_69:
      if (v33 < v120)
      {
        goto LABEL_160;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v122;
      }

      else
      {
        result = sub_32F04(0, *(v122 + 2) + 1, 1, v122);
        v9 = result;
      }

      v1 = *(v9 + 2);
      v64 = *(v9 + 3);
      v3 = v1 + 1;
      if (v1 >= v64 >> 1)
      {
        result = sub_32F04((v64 > 1), v1 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v3;
      v65 = &v9[16 * v1];
      *(v65 + 4) = v120;
      *(v65 + 5) = v33;
      v66 = *v118;
      if (!*v118)
      {
        goto LABEL_174;
      }

      v8 = v33;
      if (v1)
      {
        while (1)
        {
          v67 = v3 - 1;
          if (v3 >= 4)
          {
            break;
          }

          if (v3 == 3)
          {
            v68 = *(v9 + 4);
            v69 = *(v9 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_89:
            if (v71)
            {
              goto LABEL_149;
            }

            v84 = &v9[16 * v3];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_152;
            }

            v90 = &v9[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_155;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_156;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v67 = v3 - 2;
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          v94 = &v9[16 * v3];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_103:
          if (v89)
          {
            goto LABEL_151;
          }

          v97 = &v9[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_154;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_110:
          v1 = v67 - 1;
          if (v67 - 1 >= v3)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          if (!*v123)
          {
            goto LABEL_169;
          }

          v105 = v9;
          v106 = *&v9[16 * v1 + 32];
          v3 = *&v9[16 * v67 + 40];
          sub_153B94((*v123 + 568 * v106), (*v123 + 568 * *&v9[16 * v67 + 32]), (*v123 + 568 * v3), v66);
          if (v2)
          {
          }

          if (v3 < v106)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_52E40(v105);
          }

          if (v1 >= *(v105 + 2))
          {
            goto LABEL_146;
          }

          v107 = &v105[16 * v1];
          *(v107 + 4) = v106;
          *(v107 + 5) = v3;
          v143 = v105;
          result = sub_52DB4(v67);
          v9 = v143;
          v3 = *(v143 + 16);
          if (v3 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v9[16 * v3 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_147;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_148;
        }

        v79 = &v9[16 * v3];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_150;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_153;
        }

        if (v83 >= v75)
        {
          v101 = &v9[16 * v67 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_157;
          }

          if (v70 < v104)
          {
            v67 = v3 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_89;
      }

LABEL_3:
      v7 = v123[1];
      if (v8 >= v7)
      {
        goto LABEL_128;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_128:
  v3 = *v118;
  if (*v118)
  {
    v1 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_165;
    }

    result = v1;
LABEL_131:
    v143 = result;
    v112 = *(result + 16);
    if (v112 < 2)
    {
    }

    v1 = 568;
    while (*v123)
    {
      v113 = *(result + 16 * v112);
      v114 = result;
      v115 = *(result + 16 * (v112 - 1) + 40);
      sub_153B94((*v123 + 568 * v113), (*v123 + 568 * *(result + 16 * (v112 - 1) + 32)), (*v123 + 568 * v115), v3);
      if (v2)
      {
      }

      if (v115 < v113)
      {
        goto LABEL_158;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_52E40(v114);
      }

      if (v112 - 2 >= *(v114 + 2))
      {
        goto LABEL_159;
      }

      v116 = &v114[16 * v112];
      *v116 = v113;
      *(v116 + 1) = v115;
      v143 = v114;
      sub_52DB4(v112 - 1);
      result = v143;
      v112 = *(v143 + 16);
      if (v112 <= 1)
      {
      }
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_152D5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v87 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_90:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_52E40(v7);
      v7 = result;
    }

    v75 = v7 + 2;
    v76 = v7[2];
    if (v76 >= 2)
    {
      while (*v87)
      {
        v77 = &v7[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1542A8((*v87 + 568 * *v77), (*v87 + 568 * *v79), (*v87 + 568 * v80), v85);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_116;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_117;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_118;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v87 + 568 * v6);
      v10 = 568 * v8;
      v11 = (*v87 + 568 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 71;
      while (v5 != v13)
      {
        v15 = v14[71];
        v16 = *v14;
        v14 += 71;
        ++v13;
        if (v9 < v12 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v17 = 568 * v6 - 568;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v20 = *v87;
            if (!*v87)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v20 + v10), sizeof(__dst));
            memmove((v20 + v10), (v20 + v17), 0x238uLL);
            result = memcpy((v20 + v17), __dst, 0x231uLL);
          }

          ++v19;
          v17 -= 568;
          v10 += 568;
        }

        while (v19 < v18);
        v5 = v87[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v28 = v7[2];
    v27 = v7[3];
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      result = sub_32F04((v27 > 1), v28 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v29;
    v30 = v7 + 4;
    v31 = &v7[2 * v28 + 4];
    *v31 = v8;
    v31[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_129;
    }

    if (v28)
    {
      while (1)
      {
        v32 = v29 - 1;
        if (v29 >= 4)
        {
          break;
        }

        if (v29 == 3)
        {
          v33 = v7[4];
          v34 = v7[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_59:
          if (v36)
          {
            goto LABEL_106;
          }

          v49 = &v7[2 * v29];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_108;
          }

          v55 = &v30[2 * v32];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_113;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v32 = v29 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v29 < 2)
        {
          goto LABEL_114;
        }

        v59 = &v7[2 * v29];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_74:
        if (v54)
        {
          goto LABEL_110;
        }

        v62 = &v30[2 * v32];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_112;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v32 - 1 >= v29)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_123;
        }

        if (!*v87)
        {
          goto LABEL_126;
        }

        v70 = &v30[2 * v32 - 2];
        v71 = *v70;
        v72 = &v30[2 * v32];
        v73 = v72[1];
        sub_1542A8((*v87 + 568 * *v70), (*v87 + 568 * *v72), (*v87 + 568 * v73), v85);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_101;
        }

        if (v32 > v7[2])
        {
          goto LABEL_102;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v7[2];
        if (v32 >= v74)
        {
          goto LABEL_103;
        }

        v29 = v74 - 1;
        result = memmove(&v30[2 * v32], v72 + 2, 16 * (v74 - 1 - v32));
        v7[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v30[2 * v29];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_104;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_105;
      }

      v44 = &v7[2 * v29];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_107;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_109;
      }

      if (v48 >= v40)
      {
        v66 = &v30[2 * v32];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_115;
        }

        if (v35 < v69)
        {
          v32 = v29 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v87[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v85 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v85;
    goto LABEL_39;
  }

  v21 = *v87;
  v22 = *v87 + 568 * v6;
  v82 = v8;
  v23 = v8 - v6;
LABEL_31:
  v24 = v23;
  v25 = v22;
  while (1)
  {
    if (*v25 >= *(v25 - 71))
    {
LABEL_30:
      ++v6;
      v22 += 568;
      --v23;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v82;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    memcpy(__dst, v25, sizeof(__dst));
    memcpy(v25, v25 - 71, 0x238uLL);
    result = memcpy(v25 - 71, __dst, 0x231uLL);
    v25 -= 71;
    if (__CFADD__(v24++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_153340(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_108:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_110;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_34;
    }

    v11 = (*a3 + 24 * v10);
    v12 = v11[2];
    v13 = (*a3 + 24 * v7);
    v14 = v13[2];
    if (v12 >= v14)
    {
      v16 = *v13;
      v17 = v12 != v14 || *v11 >= v16;
      v15 = !v17;
    }

    else
    {
      v15 = 1;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      v18 = *v11;
      v19 = (*a3 + 24 * v9 + 64);
      do
      {
        v20 = v12;
        v21 = *(v19 - 2);
        v12 = *v19;
        if (*v19 < v20)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (*v19 == v20)
        {
          if (((v15 ^ (v21 >= v18)) & 1) == 0)
          {
            v10 = v7 - 1;
            if ((v15 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v22 = 24 * v7 - 8;
                v23 = 24 * v9;
                v24 = v7;
                v25 = v9;
                do
                {
                  if (v25 != --v24)
                  {
                    v26 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_143;
                    }

                    v27 = (v26 + v23);
                    v28 = (v26 + v22);
                    v29 = *v27;
                    v30 = *(v27 + 2);
                    v31 = *v28;
                    *v27 = *(v28 - 1);
                    *(v27 + 2) = v31;
                    *(v28 - 1) = v29;
                    *v28 = v30;
                  }

                  ++v25;
                  v22 -= 24;
                  v23 += 24;
                }

                while (v25 < v24);
                v5 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_139:
            __break(1u);
LABEL_140:
            result = sub_52E40(v8);
            v8 = result;
LABEL_110:
            v89 = v8 + 16;
            v90 = *(v8 + 2);
            if (v90 >= 2)
            {
              while (*a3)
              {
                v91 = &v8[16 * v90];
                v92 = *v91;
                v93 = &v89[2 * v90];
                v94 = v93[1];
                sub_154508((*a3 + 24 * *v91), (*a3 + 24 * *v93), *a3 + 24 * v94, v97);
                if (v4)
                {
                }

                if (v94 < v92)
                {
                  goto LABEL_132;
                }

                if (v90 - 2 >= *v89)
                {
                  goto LABEL_133;
                }

                *v91 = v92;
                *(v91 + 1) = v94;
                v95 = *v89 - v90;
                if (*v89 < v90)
                {
                  goto LABEL_134;
                }

                v90 = *v89 - 1;
                result = memmove(v93, v93 + 2, 16 * v95);
                *v89 = v90;
                if (v90 <= 1)
                {
                }
              }

              goto LABEL_144;
            }
          }
        }

        else if (v15)
        {
          v10 = v7 - 1;
          goto LABEL_26;
        }

        v19 += 3;
        ++v7;
        v18 = v21;
      }

      while (v5 != v7);
      v7 = v5;
    }

    if (v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_136;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_137;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v43 = *(v8 + 2);
    v42 = *(v8 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_32F04((v42 > 1), v43 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v44;
    v45 = &v8[16 * v43];
    *(v45 + 4) = v9;
    *(v45 + 5) = v7;
    v46 = *v97;
    if (!*v97)
    {
      goto LABEL_145;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_75:
          if (v51)
          {
            goto LABEL_123;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_126;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_130;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_89:
        if (v69)
        {
          goto LABEL_125;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_96:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        sub_154508((*a3 + 24 * v86), (*a3 + 24 * *&v8[16 * v47 + 32]), *a3 + 24 * v87, v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_52E40(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_120;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_52DB4(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_121;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_122;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_124;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_127;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_131;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_108;
    }
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7;
  v34 = v9 - v7;
LABEL_44:
  v35 = *(v32 + 24 * v7 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 1);
    if (v35 >= v38 && (v35 != v38 || *v37 >= *(v37 - 3)))
    {
LABEL_43:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 != v5)
      {
        goto LABEL_44;
      }

      v7 = v5;
      goto LABEL_55;
    }

    if (!v32)
    {
      break;
    }

    v40 = *v37;
    v41 = v37[1];
    *v37 = *(v37 - 3);
    v37[2] = *(v37 - 1);
    *(v37 - 2) = v41;
    *(v37 - 1) = v35;
    *(v37 - 3) = v40;
    v37 -= 3;
    v17 = __CFADD__(v36++, 1);
    if (v17)
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_153964(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 136;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 136;
  if (v9 < v11)
  {
    v12 = 136 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 136)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 136;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 136;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 136;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x88uLL);
    goto LABEL_9;
  }

  v16 = 136 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 136 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 136 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 136;
    v5 -= 136;
    v18 = v13;
    do
    {
      v19 = v5 + 136;
      v20 = *(v18 - 17);
      v18 -= 136;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          memmove(v5, v6 - 136, 0x88uLL);
        }

        if (v13 <= v4 || (v6 -= 136, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v13)
      {
        memmove(v5, v18, 0x88uLL);
      }

      v5 -= 136;
      v13 = v18;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v21 = 136 * ((v13 - v4) / 136);
  if (v6 != v4 || v6 >= &v4[v21])
  {
    memmove(v6, v4, v21);
  }

  return 1;
}

void *sub_153B94(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 568;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 568;
  if (v9 >= v11)
  {
    v40 = 568 * v11;
    if (a4 != __src || &__src[v40] <= a4)
    {
      memmove(a4, __src, 568 * v11);
    }

    v13 = &v4[v40];
    if (v10 < 568 || v6 <= v7)
    {
      goto LABEL_74;
    }

    v73 = v7;
    __srcb = v4;
LABEL_39:
    v68 = v6;
    v41 = v6 - 568;
    v42 = v13;
    v70 = v6 - 568;
    while (1)
    {
      v43 = v5;
      v84 = v42;
      v42 -= 568;
      memcpy(__dsta, v42, 0x231uLL);
      result = memcpy(v83, v41, 0x231uLL);
      v44 = __dsta[18];
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_80;
      }

      v45 = __dsta[12];
      v46 = __dsta[13];
      v47 = __dsta[14];
      v48 = __dsta[15];
      v49 = __dsta[16];
      v50 = __dsta[17];
      v71 = v43;
      if ((__dsta[18] >> 62) > 2)
      {
        v51 = __dsta[12];
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1BCA80;
        *(v51 + 32) = v45;
        *(v51 + 40) = v46;
        *(v51 + 48) = v47;
        *(v51 + 56) = v48;
        *(v51 + 64) = v49;
        *(v51 + 72) = v50;
        *(v51 + 80) = v44 & 1;
      }

      sub_4299C(__dsta, &v77);
      sub_4299C(v83, &v77);
      sub_43050(&__dsta[12], &v77, &qword_22A4E0, &unk_1C01D0);
      v52 = COERCE_DOUBLE(Array<A>.affinity.getter(v51));
      v54 = v53;

      if (v54)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = v52;
      }

      v79 = v83[8];
      v80 = v83[9];
      v81 = *&v83[10];
      v77 = v83[6];
      v78 = v83[7];
      v56 = v83[9];
      if (*&v83[9] >> 1 == 0xFFFFFFFFLL)
      {
LABEL_81:
        __break(1u);
        return result;
      }

      v57 = v77;
      v58 = v78;
      v59 = v79;
      if ((*&v83[9] >> 62) > 2)
      {
        v60 = v77;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1BCA80;
        *(v60 + 32) = v57;
        *(v60 + 48) = v58;
        *(v60 + 64) = v59;
        *(v60 + 80) = v56 & 1;
      }

      sub_42CD4(&v77, v76);
      v61 = COERCE_DOUBLE(Array<A>.affinity.getter(v60));
      v63 = v62;

      sub_2601C(v83);
      sub_2601C(__dsta);
      v41 = v70;
      if (v63)
      {
        v4 = __srcb;
        v64 = v71;
        if (v55 == 0.0)
        {
          goto LABEL_58;
        }

        v65 = 0.0;
      }

      else
      {
        v65 = v61;
        v39 = v55 == v61;
        v4 = __srcb;
        v64 = v71;
        if (v39)
        {
LABEL_58:
          v5 = v64 - 568;
          v13 = v84;
          if (__dsta[0] < *&v83[0])
          {
            goto LABEL_65;
          }

          goto LABEL_61;
        }
      }

      v13 = v84;
      v5 = v64 - 568;
      if (v65 < v55)
      {
LABEL_65:
        if (v64 < v68 || v5 >= v68)
        {
          memmove(v5, v70, 0x238uLL);
          v66 = v73;
        }

        else
        {
          v66 = v73;
          if (v64 != v68)
          {
            memmove(v5, v70, 0x238uLL);
          }
        }

        if (v13 <= v4 || (v6 = v70, v70 <= v66))
        {
          v6 = v70;
          goto LABEL_74;
        }

        goto LABEL_39;
      }

LABEL_61:
      if (v64 < v13 || v5 >= v13 || v13 != v64)
      {
        memmove(v5, v42, 0x238uLL);
      }

      if (v42 <= v4)
      {
        v13 = v42;
        v6 = v68;
        goto LABEL_74;
      }
    }
  }

  v12 = 568 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 568 && v6 < v5)
  {
    v84 = v13;
    v69 = v5;
    do
    {
      v72 = v7;
      v14 = v6;
      memcpy(__dsta, v6, 0x231uLL);
      result = memcpy(v83, v4, 0x231uLL);
      v16 = __dsta[18];
      if (__dsta[18] >> 1 == 0xFFFFFFFFLL)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v17 = __dsta[12];
      v18 = __dsta[13];
      v19 = __dsta[14];
      v20 = __dsta[15];
      v21 = __dsta[16];
      v22 = __dsta[17];
      __srca = v4;
      if ((__dsta[18] >> 62) > 2)
      {
        v23 = __dsta[12];
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1BCA80;
        *(v23 + 32) = v17;
        *(v23 + 40) = v18;
        *(v23 + 48) = v19;
        *(v23 + 56) = v20;
        *(v23 + 64) = v21;
        *(v23 + 72) = v22;
        *(v23 + 80) = v16 & 1;
      }

      sub_4299C(__dsta, &v77);
      sub_4299C(v83, &v77);
      sub_43050(&__dsta[12], &v77, &qword_22A4E0, &unk_1C01D0);
      v24 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
      v26 = v25;

      if (v26)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24;
      }

      v79 = v83[8];
      v80 = v83[9];
      v81 = *&v83[10];
      v77 = v83[6];
      v78 = v83[7];
      v28 = v83[9];
      if (*&v83[9] >> 1 == 0xFFFFFFFFLL)
      {
        goto LABEL_79;
      }

      v29 = v77;
      v30 = v78;
      v31 = v79;
      if ((*&v83[9] >> 62) > 2)
      {
        v32 = v77;
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1BCA80;
        *(v32 + 32) = v29;
        *(v32 + 48) = v30;
        *(v32 + 64) = v31;
        *(v32 + 80) = v28 & 1;
      }

      sub_42CD4(&v77, v76);
      v33 = COERCE_DOUBLE(Array<A>.affinity.getter(v32));
      v35 = v34;

      sub_2601C(v83);
      sub_2601C(__dsta);
      v13 = v84;
      if (v35)
      {
        v4 = __srca;
        if (v27 == 0.0)
        {
          goto LABEL_23;
        }

        v36 = 0.0;
      }

      else
      {
        v36 = v33;
        v4 = __srca;
        if (v27 == v33)
        {
LABEL_23:
          v6 = v14;
          v37 = v72;
          if (__dsta[0] >= *&v83[0])
          {
            goto LABEL_28;
          }

          goto LABEL_24;
        }
      }

      v6 = v14;
      v37 = v72;
      if (v36 >= v27)
      {
LABEL_28:
        v38 = v4;
        v39 = v37 == v4;
        v4 += 568;
        if (v39)
        {
          goto LABEL_30;
        }

LABEL_29:
        memmove(v37, v38, 0x238uLL);
        goto LABEL_30;
      }

LABEL_24:
      v38 = v6;
      v39 = v37 == v6;
      v6 += 568;
      if (!v39)
      {
        goto LABEL_29;
      }

LABEL_30:
      v7 = v37 + 568;
    }

    while (v4 < v13 && v6 < v69);
  }

  v6 = v7;
LABEL_74:
  v67 = 568 * ((v13 - v4) / 568);
  if (v6 != v4 || v6 >= &v4[v67])
  {
    memmove(v6, v4, v67);
  }

  return &dword_0 + 1;
}

uint64_t sub_1542A8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 568;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 568;
  if (v9 >= v11)
  {
    v16 = 568 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 568 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 568 && v6 > v7)
    {
LABEL_21:
      v17 = v6 - 568;
      v5 -= 568;
      do
      {
        v18 = v5 + 568;
        v19 = (v13 - 568);
        if (*(v13 - 71) < *v17)
        {
          if (v18 != v6)
          {
            memmove(v5, v6 - 568, 0x238uLL);
          }

          if (v13 <= v4 || (v6 -= 568, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v18 != v13)
        {
          memmove(v5, v13 - 568, 0x238uLL);
        }

        v5 -= 568;
        v13 -= 568;
      }

      while (v19 > v4);
      v13 = v19;
    }
  }

  else
  {
    v12 = 568 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 568)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 568;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 568;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 568;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0x238uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 568 * ((v13 - v4) / 568);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

uint64_t sub_154508(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 2);
      v17 = *(v4 + 2);
      if (v16 >= v17 && (v16 != v17 || *v6 >= *v4))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_25:
    v19 = v6 - 24;
    v5 -= 24;
    do
    {
      v20 = (v5 + 24);
      v21 = *(v12 - 1);
      v22 = *(v6 - 1);
      if (v21 < v22 || ((v23 = v12 - 24, v21 == v22) ? (v24 = *(v12 - 3) >= *v19) : (v24 = 1), !v24))
      {
        if (v20 != v6)
        {
          v26 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v26;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_41;
        }

        goto LABEL_25;
      }

      if (v20 != v12)
      {
        v25 = *v23;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v25;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v23 > v4);
    v12 = v23;
  }

LABEL_41:
  v27 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v28 = (v27 >> 2) + (v27 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v28])
  {
    memmove(v6, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_15476C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229360, &qword_1BC400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1547DC()
{
  v1 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_1B40F4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v4);

  if (*(v0 + v4 + 904))
  {
  }

  if (v6[116])
  {
  }

  if (v6[124])
  {
  }

  if (v6[134])
  {
  }

  return _swift_deallocObject(v0, v4 + 1120, v2 | 7);
}

uint64_t sub_154A10(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_226C;

  return sub_14C4E0(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

void *sub_154B48(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  sub_37728(0, v8, 0);
  v32 = v6;
  if (v8)
  {
    result = a5;
    v30 = a5 + 4;
    v31 = a5[2];
    while (1)
    {
      v14 = v7 <= v6;
      if (a3 > 0)
      {
        v14 = v7 >= v6;
      }

      if (v14)
      {
        break;
      }

      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_50;
      }

      if (v31 >= v7 + a4)
      {
        v16 = v7 + a4;
      }

      else
      {
        v16 = v31;
      }

      if (v16 < v7)
      {
        goto LABEL_51;
      }

      if (v7 < 0)
      {
        goto LABEL_52;
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v19 = result;

      if (v18 >= v17 >> 1)
      {
        sub_37728((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v20 = &_swiftEmptyArrayStorage[4 * v18];
      v20[4] = v19;
      v20[5] = v30;
      v20[6] = v7;
      v20[7] = (2 * v16) | 1;
      v7 = v15;
      --v8;
      result = v19;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
    v15 = v7;
    result = a5;
LABEL_29:
    v21 = v15 <= v6;
    if (a3 > 0)
    {
      v21 = v15 >= v6;
    }

    if (v21)
    {
      return _swiftEmptyArrayStorage;
    }

    v22 = result + 4;
    while (1)
    {
      v23 = __OFADD__(v15, a3) ? ((v15 + a3) >> 63) ^ 0x8000000000000000 : v15 + a3;
      if (__OFADD__(v15, a4))
      {
        break;
      }

      if (result[2] >= v15 + a4)
      {
        v24 = v15 + a4;
      }

      else
      {
        v24 = result[2];
      }

      if (v24 < v15)
      {
        goto LABEL_54;
      }

      if (v15 < 0)
      {
        goto LABEL_55;
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      v27 = result;

      if (v26 >= v25 >> 1)
      {
        sub_37728((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v28 = &_swiftEmptyArrayStorage[4 * v26];
      v28[4] = v27;
      v28[5] = v22;
      v28[6] = v15;
      v28[7] = (2 * v24) | 1;
      v29 = v23 <= v32;
      if (a3 > 0)
      {
        v29 = v23 >= v32;
      }

      v15 = v23;
      result = v27;
      if (v29)
      {
        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void sub_154DD4(uint64_t a1, uint64_t a2, void *a3, const void *a4, char a5, double a6)
{
  v76 = a2;
  v75 = a4;
  v10 = sub_2B0C(&qword_22E188, &qword_1D1540);
  __chkstk_darwin(v10);
  (*(v12 + 16))(&v65 - v11, a1, v10);
  sub_42094(&qword_22E190, &qword_22E188, &qword_1D1540, &protocol conformance descriptor for NonEmpty<A>);
  sub_1B4974();
  v13 = a5 & 1;
  v14 = v85;
  v15 = v85 + 40;
  v16 = *(v85 + 16);
  *(&v17 + 1) = 2;
  v74 = xmmword_1BCA80;
  *&v17 = 134217984;
  v73 = v17;
LABEL_2:
  v18 = v86;
  v19 = (v15 + 24 * v86);
  v20 = v86;
  while (1)
  {
    if (v16 == v20)
    {

      return;
    }

    if (v18 < 0)
    {
      break;
    }

    if (v20 >= *(v14 + 16))
    {
      goto LABEL_39;
    }

    v21 = *(v19 - 1);
    v22 = *v19;
    v86 = ++v20;
    v19 += 3;
    if (*(v22 + 16))
    {

      v23 = sub_3AFEC(0, 0);
      if ((v24 & 1) == 0)
      {

        goto LABEL_2;
      }

      v25 = (*(*(v22 + 56) + 8 * v23) + *(v76 + 352)) / (*(v76 + 352) + 1.0);
      v72 = v15;
      if (v25 <= 0.0)
      {
        if (qword_228358 != -1)
        {
          swift_once();
        }

        v39 = sub_1B4644();
        sub_50E58(v39, qword_260C80);
        v40 = sub_1B4624();
        v41 = sub_1B4D94();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v71 = v13;
          *v42 = v73;
          *(v42 + 4) = v21;
          _os_log_impl(&dword_0, v40, v41, "received negative conditional score for %llu. ignoring", v42, 0xCu);
          v13 = v71;
        }

        goto LABEL_35;
      }

      v26 = *a3;
      v27 = 0uLL;
      v28 = 0.0;
      if (!*(*a3 + 16))
      {
        v30 = 0uLL;
        v31 = 0uLL;
        goto LABEL_20;
      }

      v29 = sub_43124(v21);
      v27 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      if ((v32 & 1) == 0 || (v33 = (*(v26 + 56) + (v29 << 6)), v35 = v33[2], v34 = v33[3], v36 = v33[1], v78 = *v33, v79 = v36, *v80 = v35, *&v80[16] = v34, v68 = v36, v69 = v78, v37 = v35, v67 = *&v80[8], v28 = *(&v34 + 1), sub_42BA4(&v78, v81), v31 = v67, v30 = v68, v27 = v69, v38 = v28, !v37))
      {
LABEL_20:
        v37 = 0;
        v38 = 0.0;
      }

      v81[0] = v27;
      v81[1] = v30;
      v82 = v37;
      v83 = v31;
      v84 = v28;
      sub_42F48(v81, &qword_22BC40, &unk_1C5DC0);
      v43 = *a3;
      v44 = *(*a3 + 16);
      v70 = a3;
      v71 = v13;
      if (v44)
      {
        v45 = sub_43124(v21);
        if (v46)
        {
          v47 = (*(v43 + 56) + (v45 << 6));
          v49 = v47[2];
          v48 = v47[3];
          v50 = v47[1];
          v78 = *v47;
          v79 = v50;
          *v80 = v49;
          *&v80[16] = v48;
          v52 = *(&v78 + 1);
          v51 = v78;
          *&v69 = *(&v50 + 1);
          v53 = v50;
          *&v68 = *(&v49 + 1);
          v54 = v48;
          v66 = v49;
          *&v67 = *(&v48 + 1);
          sub_42BA4(&v78, &v77);
          if (v66)
          {
            v78 = __PAIR128__(v52, v51);
            *&v79 = v53;
            *(&v79 + 1) = v69;
            *v80 = v66;
            *&v80[8] = v68;
            *&v80[16] = v54;
            *&v80[24] = v67;

            sub_42F48(&v78, &qword_22BC40, &unk_1C5DC0);
            if (v54)
            {
              if (!*(v54 + 16))
              {
LABEL_33:
                v59 = _swiftEmptyArrayStorage;
                goto LABEL_34;
              }

LABEL_31:
              v57 = sub_3AB0C(0);
              if ((v58 & 1) == 0)
              {
                goto LABEL_33;
              }

              v59 = *(*(v54 + 56) + 8 * v57);

LABEL_34:
              sub_2B0C(&qword_229218, &unk_1C0210);
              v60 = swift_allocObject();
              *(v60 + 16) = v74;
              v61 = v75;
              memcpy((v60 + 32), v75, 0x231uLL);
              v77 = v59;
              sub_4299C(v61, &v78);
              sub_5FE24(v60);
              v62 = v77;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v78 = v54;
              sub_54CDC(v62, 0, isUniquelyReferenced_nonNull_native);
              *&v87 = v21;
              v13 = v71;
              BYTE8(v87) = v71;
              v88 = 0;
              v89 = -1;
              v90 = _swiftEmptyArrayStorage;
              v91 = v25;
              v92 = v78;
              v93 = v25 * a6 + v38;

              a3 = v70;
              v64 = swift_isUniquelyReferenced_nonNull_native();
              *&v78 = *a3;
              *a3 = 0x8000000000000000;
              sub_540BC(&v87, v21, v64);
              *a3 = v78;

LABEL_35:
              v15 = v72;
              goto LABEL_2;
            }

LABEL_30:
            v54 = sub_130214(_swiftEmptyArrayStorage);

            if (!*(v54 + 16))
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

          v44 = v67;
          v55 = v68;
          v56 = v69;
LABEL_29:
          *&v78 = v51;
          *(&v78 + 1) = v52;
          *&v79 = v53;
          *(&v79 + 1) = v56;
          *v80 = 0;
          *&v80[8] = v55;
          *&v80[16] = v54;
          *&v80[24] = v44;
          sub_42F48(&v78, &qword_22BC40, &unk_1C5DC0);
          goto LABEL_30;
        }

        v44 = 0;
      }

      v54 = 0;
      v55 = 0;
      v56 = 0;
      v53 = 0;
      v52 = 0;
      v51 = 0;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1553FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v47 = a5;
  v45 = a3;
  v46 = a4;
  v58 = a2;
  v6 = sub_2B0C(&qword_22E188, &qword_1D1540);
  v7 = __chkstk_darwin(v6);
  v54 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v39 - v10;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v52 = v9 + 32;
  v53 = v9 + 16;
  v55 = v9;
  v51 = (v9 + 8);

  v17 = 0;
  v49 = xmmword_1BCA80;
  v56 = v6;
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    result = memcpy(v60, (*(a1 + 48) + 568 * (v19 | (v17 << 6))), sizeof(v60));
    if (*(v58 + 16))
    {
      result = sub_43124(*v60);
      if (v20)
      {
        v21 = a1;
        v23 = v54;
        v22 = v55;
        (*(v55 + 16))(v54, *(v58 + 56) + *(v55 + 72) * result, v6);
        (*(v22 + 32))(v57, v23, v6);
        v61 = *&v60[96];
        v62 = *&v60[112];
        v63 = *&v60[128];
        v64 = *&v60[144];
        v65 = *&v60[160];
        v24 = v60[144];
        if (*&v60[144] >> 1 == 0xFFFFFFFFLL)
        {
          sub_4299C(v60, v59);
          a1 = v21;
        }

        else
        {
          v25 = v61;
          v48 = v21;
          if ((*&v60[144] >> 62) > 1)
          {
            if (*&v60[144] >> 62 == 2)
            {
              v43 = *(&v63 + 1);
              v44 = *(&v62 + 1);
              v41 = v63;
              v42 = v62;
              v30 = *(&v61 + 1);
              sub_2B0C(&qword_229488, &qword_1BC520);
              v26 = swift_allocObject();
              *(v26 + 16) = v49;
              *(v26 + 32) = v25;
              *(v26 + 40) = v30;
              v31 = v44;
              *(v26 + 48) = v42;
              *(v26 + 56) = v31;
              v32 = v43;
              *(v26 + 64) = v41;
              *(v26 + 72) = v32;
              *(v26 + 80) = v24 & 1;
            }

            else
            {
              v26 = v61;
            }
          }

          else
          {
            v40 = *(&v61 + 1);
            v41 = v63;
            v42 = v62;
            v43 = *(&v63 + 1);
            v44 = *(&v62 + 1);
            sub_2B0C(&qword_229488, &qword_1BC520);
            v26 = swift_allocObject();
            *(v26 + 16) = v49;
            v27 = v40;
            *(v26 + 32) = v25;
            *(v26 + 40) = v27;
            v28 = v44;
            *(v26 + 48) = v42;
            *(v26 + 56) = v28;
            v29 = v43;
            *(v26 + 64) = v41;
            *(v26 + 72) = v29;
            *(v26 + 80) = v24;
          }

          sub_4299C(v60, v59);
          sub_43050(&v61, v59, &qword_22A4E0, &unk_1C01D0);
          v33 = COERCE_DOUBLE(Array<A>.affinity.getter(v26));
          v35 = v34;

          if (v35)
          {
            a1 = v48;
          }

          else
          {
            v36 = v33;
            a1 = v48;
            if (v33 > 0.0)
            {
              sub_4299C(v60, v59);
              v37 = v45;
              sub_71C74(v45, v59);
              v38 = v50;
              sub_154DD4(v57, v37, v46, v60, v47 & 1, v36);
              v50 = v38;
              sub_2601C(v60);
              sub_71DC0(v37);
            }
          }
        }

        v6 = v56;
        (*v51)(v57, v56);
        result = sub_2601C(v60);
      }
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_155848(uint64_t a1)
{
  v2 = type metadata accessor for SeedBasedRecommendationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1558A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = type metadata accessor for SeedBasedRecommendationRequest(0);
  v7 = *(v4 + *(result + 32));
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = -1;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_155914(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7A038;

  return sub_F44D0(a1, a2, v6);
}

uint64_t sub_155A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 - 1 < 3)
  {
  }

  if (!a7)
  {
  }

  return v8;
}

uint64_t sub_155AD4(uint64_t a1)
{
  if ((*(a1 + 8) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_155AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_155B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_155B7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_155BA4(double (*a1)(__int128 *), uint64_t a2, void (*a3)(__int128 *__return_ptr, _OWORD *, double), uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v8 = *(a5 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_37708(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v40 = v8;
    v41 = v5;
    for (i = (v5 + 32); ; i += 4)
    {
      --v8;
      v11 = i[1];
      v49 = *i;
      v50 = v11;
      v12 = i[3];
      v14 = *i;
      v13 = i[1];
      v51 = i[2];
      v52 = v12;
      v45 = v14;
      v46 = v13;
      v15 = i[3];
      v47 = i[2];
      v48 = v15;
      sub_42BA4(&v49, v44);
      v16 = a1(&v45);
      sub_43FF4(&v49);
      v42 = v9;
      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        sub_37708((v17 > 1), v18 + 1, 1);
        v9 = v42;
      }

      v9[2] = v18 + 1;
      *&v9[v18 + 4] = fabs(v16);
      if (!v8)
      {
        break;
      }
    }

    v8 = v40;
    v5 = v41;
  }

  v19 = v9[2];
  if (v19)
  {
    v20 = *(v9 + 4);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v9 + 5);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v20 < v23)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    v25 = _swiftEmptyArrayStorage;
    if (v8 && v20 != 0.0)
    {
      v43 = _swiftEmptyArrayStorage;
      sub_375F8(0, v8, 0);
      v25 = _swiftEmptyArrayStorage;
      for (j = (v5 + 32); ; j += 4)
      {
        --v8;
        v27 = j[1];
        v45 = *j;
        v46 = v27;
        v28 = j[3];
        v30 = *j;
        v29 = j[1];
        v47 = j[2];
        v48 = v28;
        v44[0] = v30;
        v44[1] = v29;
        v31 = j[3];
        v44[2] = j[2];
        v44[3] = v31;
        sub_42BA4(&v45, &v42);
        v32 = a1(v44);
        a3(&v49, v44, v32 / v20);
        sub_43FF4(&v45);
        v43 = v25;
        v34 = v25[2];
        v33 = v25[3];
        if (v34 >= v33 >> 1)
        {
          sub_375F8((v33 > 1), v34 + 1, 1);
          v25 = v43;
        }

        v25[2] = v34 + 1;
        v35 = &v25[8 * v34];
        v36 = v49;
        v37 = v50;
        v38 = v52;
        v35[4] = v51;
        v35[5] = v38;
        v35[2] = v36;
        v35[3] = v37;
        if (!v8)
        {
          break;
        }
      }
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v25;
}

void *Array<A>.positionScored()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_375F8(0, v1, 0);
  v3 = (a1 + 80);
  for (i = v1 - 1; ; --i)
  {
    v16 = *(v3 - 6);
    v15 = *(v3 - 40);
    v5 = *(v3 - 4);
    v6 = *(v3 - 24);
    v8 = *(v3 - 2);
    v7 = *(v3 - 1);
    v9 = *v3;
    sub_43688(v5, v6);

    sub_43688(v5, v6);

    sub_43CE0(v5, v6);

    v20 = *v18;
    HIBYTE(v20) = v18[3];
    v19 = *v17;
    HIBYTE(v19) = v17[3];
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_375F8((v10 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v12 = &_swiftEmptyArrayStorage[8 * v11];
    v12[4] = v16;
    *(v12 + 40) = v15;
    *(v12 + 41) = v20;
    *(v12 + 11) = *&v18[3];
    v12[6] = v5;
    *(v12 + 56) = v6;
    *(v12 + 15) = *&v17[3];
    *(v12 + 57) = v19;
    v12[8] = v8;
    v12[9] = v7;
    v12[10] = v9;
    *(v12 + 11) = i;
    if (!i)
    {
      break;
    }

    v3 += 7;
  }

  v13 = sub_155BA4(sub_43354, 0, sub_4335C, 0, _swiftEmptyArrayStorage);

  return v13;
}

uint64_t sub_156010@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v9 = __chkstk_darwin(v8 - 8);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v66 - v12;
  v13 = __chkstk_darwin(v11);
  v66 = (&v66 - v14);
  __chkstk_darwin(v13);
  v16 = &v66 - v15;
  v17 = sub_1B4414();
  v18 = __chkstk_darwin(v17 - 8);
  v74 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v73 = &v66 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v66 - v23;
  __chkstk_darwin(v22);
  v79 = a4;
  sub_1B45C4();
  v78 = a2;
  v80 = a2;
  v81 = a3;

  v82._countAndFlagsBits = 0x44496D6164612ELL;
  v82._object = 0xE700000000000000;
  sub_1B48D4(v82);
  sub_1B43F4();
  v25 = *(a1 + 16);
  v71 = a3;
  v72 = v25;
  v69 = v24;
  v70 = a1;
  if (v25)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_3747C(0, v25, 0);
    v26 = v80;
    v27 = (a1 + 40);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v80 = v26;
      v31 = v26[2];
      v30 = v26[3];

      if (v31 >= v30 >> 1)
      {
        sub_3747C((v30 > 1), v31 + 1, 1);
        v26 = v80;
      }

      v26[2] = v31 + 1;
      v32 = &v26[2 * v31];
      v32[4] = v28;
      v32[5] = v29;
      v27 += 5;
      --v25;
    }

    while (v25);
    a3 = v71;
    v25 = v72;
    a1 = v70;
  }

  sub_1B4574();
  v33 = sub_1B4594();
  v34 = *(v33 - 8);
  v35 = v34;
  v76 = *(v34 + 56);
  v77 = v33;
  v75 = v34 + 56;
  v76(v16, 0, 1);
  sub_1B45F4();
  v80 = v78;
  v81 = a3;

  v83._countAndFlagsBits = 0x6F6964754173692ELL;
  v83._object = 0xEC0000006B6F6F42;
  sub_1B48D4(v83);
  sub_1B43F4();
  v36 = _swiftEmptyArrayStorage;
  if (v25)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_377EC(0, v25, 0);
    v36 = v80;
    v37 = v80[2];
    v38 = (a1 + 48);
    v39 = v25;
    do
    {
      v41 = *v38;
      v38 += 10;
      v40 = v41;
      v80 = v36;
      v42 = v36[3];
      if (v37 >= v42 >> 1)
      {
        sub_377EC((v42 > 1), v37 + 1, 1);
        v36 = v80;
      }

      v36[2] = v37 + 1;
      *(v36 + v37++ + 8) = v40;
      --v39;
    }

    while (v39);
  }

  v43 = v66;
  *v66 = v36;
  v44 = v77;
  (*(v35 + 104))(v43, enum case for Feature.int32List(_:), v77);
  (v76)(v43, 0, 1, v44);
  sub_1B45F4();
  v80 = v78;
  v81 = a3;

  v84._countAndFlagsBits = 0x444965726E65672ELL;
  v84._object = 0xE900000000000073;
  sub_1B48D4(v84);
  sub_1B43F4();
  v45 = _swiftEmptyArrayStorage;
  if (v25)
  {
    v46 = a1 + 64;
    v47 = v25;
    do
    {
      v80 = *(v46 - 8);

      sub_2B0C(&qword_228590, &qword_1B6590);
      sub_76824();
      v48 = sub_1B4764();
      v50 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_3301C(0, *(v45 + 2) + 1, 1, v45);
      }

      v52 = *(v45 + 2);
      v51 = *(v45 + 3);
      if (v52 >= v51 >> 1)
      {
        v45 = sub_3301C((v51 > 1), v52 + 1, 1, v45);
      }

      *(v45 + 2) = v52 + 1;
      v53 = &v45[16 * v52];
      *(v53 + 4) = v48;
      *(v53 + 5) = v50;
      v46 += 40;
      --v47;
    }

    while (v47);
  }

  v54 = v67;
  sub_1B4574();
  (v76)(v54, 0, 1, v77);
  sub_1B45F4();
  v80 = v78;
  v81 = v71;

  v85._countAndFlagsBits = 0x49726F687475612ELL;
  v85._object = 0xEA00000000007344;
  sub_1B48D4(v85);
  sub_1B43F4();
  v55 = v72;
  if (v72)
  {
    v56 = (v70 + 64);
    v57 = _swiftEmptyArrayStorage;
    do
    {
      v80 = *v56;

      sub_2B0C(&qword_228590, &qword_1B6590);
      sub_76824();
      v58 = sub_1B4764();
      v60 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_3301C(0, *(v57 + 2) + 1, 1, v57);
      }

      v62 = *(v57 + 2);
      v61 = *(v57 + 3);
      if (v62 >= v61 >> 1)
      {
        v57 = sub_3301C((v61 > 1), v62 + 1, 1, v57);
      }

      *(v57 + 2) = v62 + 1;
      v63 = &v57[16 * v62];
      *(v63 + 4) = v58;
      *(v63 + 5) = v60;
      v56 += 5;
      --v55;
    }

    while (v55);
  }

  v64 = v68;
  sub_1B4574();
  (v76)(v64, 0, 1, v77);
  return sub_1B45F4();
}

uint64_t sub_156794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_935CC;

  return sub_15685C(a1, a4, a5);
}

uint64_t sub_15685C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1B3B64();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_156920, 0, 0);
}

uint64_t sub_156920()
{
  v1 = sub_1B3B34();
  v0[14] = v1;
  v0[15] = v2;
  if (v2 >> 60 == 15)
  {
    v14 = (v0[8] + *v0[8]);
    v3 = swift_task_alloc();
    v0[18] = v3;
    *v3 = v0;
    v3[1] = sub_156D74;
    v4 = v0[7];
  }

  else
  {
    v5 = v1;
    v6 = v2;
    sub_2698((v0[10] + 16), *(v0[10] + 40));
    v7 = sub_75F44(v5, v6);
    v9 = v8;
    v10 = v0[8];
    v11 = v7;
    (*(v0[12] + 16))(v0[13], v0[7], v0[11]);
    v17._object = 0x80000000001D8420;
    v16.value._countAndFlagsBits = v11;
    v16.value._object = v9;
    v17._countAndFlagsBits = 0xD000000000000017;
    sub_1B3B54(v16, v17);

    v14 = (v10 + *v10);
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_156BAC;
    v4 = v0[13];
  }

  return v14(v4);
}

uint64_t sub_156BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = v3;
  v5[17] = v3;

  if (v3)
  {
    v6 = sub_156EB8;
  }

  else
  {
    v6 = sub_156CCC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_156CCC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_85D94(v0[14], v0[15]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];

  v7 = v0[1];

  return v7(v5, v4, v6);
}

uint64_t sub_156D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;

  v12 = *(v8 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t sub_156EB8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_85D94(v0[14], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence<>.grouped<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a7;
  v8[7] = a1;
  v8[8] = a2;
  return Sequence<>.grouped<A>(by:)(sub_15A40C, v8, a3, a4, a5, a6, a7);
}

{
  swift_getAssociatedTypeWitness();
  sub_1B4CF4();
  sub_1B4664();
  sub_1B4724();
  sub_1B49F4();
  swift_getWitnessTable();
  sub_1B43B4();
  v7 = sub_1B46D4();

  return v7;
}

uint64_t Sequence.grouped<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  v7[6] = a1;
  v7[7] = a2;
  return Sequence.grouped<A>(by:)(sub_15ABF8, v7, a3, a4, a5, a6);
}

{
  swift_getAssociatedTypeWitness();
  sub_1B4B94();
  sub_1B4664();
  sub_1B4724();
  sub_1B49F4();
  swift_getWitnessTable();
  sub_1B43B4();
  v6 = sub_1B46D4();

  return v6;
}

void *sub_156FDC(uint64_t a1)
{
  v1 = sub_157268(a1);
  if (v1[2])
  {
    sub_2B0C(&qword_229700, &qword_1BCB58);
    v2 = sub_1B52B4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_15BE9C(v1, 1, &v4);

  return v4;
}

void *sub_157084(uint64_t a1)
{
  v1 = sub_1573E8(a1);
  if (v1[2])
  {
    sub_2B0C(&qword_22E250, &qword_1D14F0);
    v2 = sub_1B52B4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_15C2D8(v1, 1, &v4);

  return v4;
}

uint64_t Sequence.hashedUniquely<A>(by:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v17 = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_15767C(sub_15AC08, v11, a3, TupleTypeMetadata2, &type metadata for Never, a5, &protocol witness table for Never, v9);
  sub_1B4B94();
  swift_getWitnessTable();
  return sub_1B4734();
}

void *sub_157268(uint64_t a1)
{
  v2 = *(a1 + 16);
  v43 = _swiftEmptyArrayStorage;
  sub_37594(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = a1 + 32;
    for (i = v2 - 1; ; --i)
    {
      v6 = *(v4 + 80);
      v7 = *(v4 + 112);
      v31 = *(v4 + 96);
      v32 = v7;
      v8 = *(v4 + 16);
      v9 = *(v4 + 48);
      v27 = *(v4 + 32);
      v28 = v9;
      v10 = *(v4 + 48);
      v11 = *(v4 + 80);
      v29 = *(v4 + 64);
      v30 = v11;
      v12 = *(v4 + 16);
      v26[0] = *v4;
      v26[1] = v12;
      v13 = *(v4 + 112);
      v40 = v31;
      v41 = v13;
      v36 = v27;
      v37 = v10;
      v38 = v29;
      v39 = v6;
      v33 = *(v4 + 128);
      v14 = *&v26[0];
      v42 = *(v4 + 128);
      v34 = v26[0];
      v35 = v8;
      sub_429F8(v26, v25);
      v43 = v3;
      v16 = v3[2];
      v15 = v3[3];
      if (v16 >= v15 >> 1)
      {
        sub_37594((v15 > 1), v16 + 1, 1);
        v3 = v43;
      }

      v3[2] = v16 + 1;
      v17 = &v3[18 * v16];
      v17[4] = v14;
      *(v17 + 5) = v34;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      *(v17 + 13) = v38;
      *(v17 + 11) = v20;
      *(v17 + 9) = v19;
      *(v17 + 7) = v18;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      *(v17 + 168) = v42;
      *(v17 + 19) = v23;
      *(v17 + 17) = v22;
      *(v17 + 15) = v21;
      if (!i)
      {
        break;
      }

      v4 += 136;
    }
  }

  return v3;
}

void *sub_1573E8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v29 = _swiftEmptyArrayStorage;
  sub_37978(0, v2, 0);
  v3 = v1 + 56;
  v4 = _swiftEmptyArrayStorage;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v24 = v2;
  v25 = v1;
  if (v2)
  {

    v10 = 0;
    v11 = 0;
    while (v7)
    {
LABEL_10:
      v13 = (*(v1 + 48) + 568 * (__clz(__rbit64(v7)) | (v10 << 6)));
      memcpy(__dst, v13, 0x231uLL);
      v14 = __dst[0];
      memcpy(__src, v13, sizeof(__src));
      sub_4299C(__dst, v26);
      v29 = v4;
      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        sub_37978((v15 > 1), v16 + 1, 1);
        v4 = v29;
      }

      ++v11;
      v7 &= v7 - 1;
      v4[2] = v16 + 1;
      v17 = &v4[72 * v16];
      v17[4] = v14;
      result = memcpy(v17 + 5, __src, 0x231uLL);
      v1 = v25;
      if (v11 == v24)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_26;
      }

      v7 = *(v3 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    v10 = 0;
LABEL_15:
    if (v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v18 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v18 >= v8)
      {

        return v4;
      }

      v7 = *(v3 + 8 * v18);
      ++v10;
      if (v7)
      {
        v10 = v18;
        do
        {
LABEL_20:
          v19 = (*(v1 + 48) + 568 * (__clz(__rbit64(v7)) | (v10 << 6)));
          memcpy(__dst, v19, 0x231uLL);
          v20 = __dst[0];
          memcpy(__src, v19, sizeof(__src));
          sub_4299C(__dst, v26);
          v29 = v4;
          v22 = v4[2];
          v21 = v4[3];
          if (v22 >= v21 >> 1)
          {
            sub_37978((v21 > 1), v22 + 1, 1);
            v4 = v29;
          }

          v7 &= v7 - 1;
          v4[2] = v22 + 1;
          v23 = &v4[72 * v22];
          v23[4] = v20;
          result = memcpy(v23 + 5, __src, 0x231uLL);
          v1 = v25;
        }

        while (v7);
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_15767C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = __chkstk_darwin(v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v57 = &v42 - v18;
  v19 = sub_1B4EA4();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = __chkstk_darwin(v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = __chkstk_darwin(v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v55 = *(a3 - 1);
  __chkstk_darwin(v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  __chkstk_darwin(v62);
  v31 = &v42 - v30;
  v32 = sub_1B49A4();
  v63 = sub_1B51D4();
  v58 = sub_1B51E4();
  sub_1B5194(v32);
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1B4974();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B4ED4();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_1B51C4();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1B4ED4();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1B51C4();
      sub_1B4ED4();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_157D70(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_157E64(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Sequence.mappedUniquely<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B4684();
  sub_1B4CF4();
  sub_1B49F4();
  return v7;
}

uint64_t Sequence<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_1B4684();
  sub_1B4CF4();
  sub_1B49F4();
  return v4;
}

uint64_t sub_1580D0(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v41 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v5 = __chkstk_darwin(v41);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v8;
  v39 = _swiftEmptyDictionarySingleton;
  v44 = _swiftEmptyDictionarySingleton;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v40 = (v7 + 48);
  v35 = v7;
  v37 = (v7 + 32);
  v42 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v15 << 9) | (8 * v17);
    v19 = *(*(v42 + 48) + v18);
    v43 = *(*(v42 + 56) + v18);

    sub_2B0C(&qword_229710, &unk_1D32C0);
    sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
    sub_1B43C4();
    if ((*v40)(v4, 1, v41) == 1)
    {
      result = sub_42F48(v4, &qword_229708, &unk_1BCB60);
    }

    else
    {
      v20 = v36;
      v21 = *v37;
      (*v37)(v36, v4, v41);
      v21(v38, v20, v41);
      v22 = v39;
      v23 = v39[2];
      if (v39[3] <= v23)
      {
        sub_17DB3C(v23 + 1, 1);
        v22 = v44;
      }

      v24 = v22;
      result = sub_1B57E4();
      v25 = v24 + 8;
      v39 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v24[(v27 >> 6) + 8]) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = v25[v28];
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~v24[(v27 >> 6) + 8])) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = v39;
      *(v39[6] + 8 * v29) = v19;
      result = (v21)(v34[7] + *(v35 + 72) * v29, v38, v41);
      ++v34[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v39;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1584E0(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22E258, &qword_1CF5A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - v3;
  v41 = sub_2B0C(&qword_22E188, &qword_1D1540);
  v5 = __chkstk_darwin(v41);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v35 - v8;
  v39 = _swiftEmptyDictionarySingleton;
  v44 = _swiftEmptyDictionarySingleton;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v40 = (v7 + 48);
  v35 = v7;
  v37 = (v7 + 32);
  v42 = a1;

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v15 << 9) | (8 * v17);
    v19 = *(*(v42 + 48) + v18);
    v43 = *(*(v42 + 56) + v18);

    sub_2B0C(&qword_22E260, &qword_1CF5A8);
    sub_42094(&qword_22E268, &qword_22E260, &qword_1CF5A8, &protocol conformance descriptor for [A]);
    sub_1B43C4();
    if ((*v40)(v4, 1, v41) == 1)
    {
      result = sub_42F48(v4, &qword_22E258, &qword_1CF5A0);
    }

    else
    {
      v20 = v36;
      v21 = *v37;
      (*v37)(v36, v4, v41);
      v21(v38, v20, v41);
      v22 = v39;
      v23 = v39[2];
      if (v39[3] <= v23)
      {
        sub_182C98(v23 + 1, 1);
        v22 = v44;
      }

      v24 = v22;
      result = sub_1B57E4();
      v25 = v24 + 8;
      v39 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v24[(v27 >> 6) + 8]) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = v25[v28];
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~v24[(v27 >> 6) + 8])) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = v39;
      *(v39[6] + 8 * v29) = v19;
      result = (v21)(v34[7] + *(v35 + 72) * v29, v38, v41);
      ++v34[2];
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v39;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_158920(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v25 = a2;
  v38 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = xmmword_1BCA80;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(a1 + 56) + 136 * (__clz(__rbit64(v6)) | (v10 << 6));
      v30[0] = *v11;
      v12 = *(v11 + 64);
      v14 = *(v11 + 16);
      v13 = *(v11 + 32);
      v32 = *(v11 + 48);
      v33 = v12;
      v30[1] = v14;
      v31 = v13;
      v16 = *(v11 + 96);
      v15 = *(v11 + 112);
      v17 = *(v11 + 80);
      v37 = *(v11 + 128);
      v35 = v16;
      v36 = v15;
      v34 = v17;
      v18 = v33;
      v28[6] = v16;
      v28[7] = v15;
      v29 = v37;
      v28[2] = v31;
      v28[3] = v32;
      v28[4] = v33;
      v28[5] = v17;
      v28[0] = v30[0];
      v28[1] = v14;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = v26;
      sub_429F8(v30, &v27);
      result = sub_2070(v18);
      if (v20)
      {
        break;
      }

      v6 &= v6 - 1;
      *(inited + 32) = result;
      v21 = sub_9EE2C(inited);
      v22 = swift_setDeallocating();
      __chkstk_darwin(v22);
      v24[2] = &v38;
      v24[3] = v28;
      sub_157E64(v25, v24, v21);

      result = sub_5C740(v30);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v23 = sub_1580D0(v38);

        return v23;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_158B60(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v25 = a2;
  v38 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v26 = xmmword_1BCA80;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(a1 + 56) + 136 * (__clz(__rbit64(v6)) | (v10 << 6));
      v30[0] = *v11;
      v12 = *(v11 + 64);
      v14 = *(v11 + 16);
      v13 = *(v11 + 32);
      v32 = *(v11 + 48);
      v33 = v12;
      v30[1] = v14;
      v31 = v13;
      v16 = *(v11 + 96);
      v15 = *(v11 + 112);
      v17 = *(v11 + 80);
      v37 = *(v11 + 128);
      v35 = v16;
      v36 = v15;
      v34 = v17;
      v18 = *(&v33 + 1);
      v28[6] = v16;
      v28[7] = v15;
      v29 = v37;
      v28[2] = v31;
      v28[3] = v32;
      v28[4] = v33;
      v28[5] = v17;
      v28[0] = v30[0];
      v28[1] = v14;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = v26;
      sub_429F8(v30, &v27);
      result = sub_2070(v18);
      if (v20)
      {
        break;
      }

      v6 &= v6 - 1;
      *(inited + 32) = result;
      v21 = sub_9EE2C(inited);
      v22 = swift_setDeallocating();
      __chkstk_darwin(v22);
      v24[2] = &v38;
      v24[3] = v28;
      sub_157E64(v25, v24, v21);

      result = sub_5C740(v30);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        v23 = sub_1580D0(v38);

        return v23;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_158D88(uint64_t a1)
{
  v2 = sub_2B0C(&qword_229708, &unk_1BCB60);
  __chkstk_darwin(v2 - 8);
  v59 = &v51 - v3;
  v60 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v55 = *(v60 - 8);
  v4 = __chkstk_darwin(v60);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v51 - v6;
  v73 = _swiftEmptyDictionarySingleton;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + 32;
    v61 = xmmword_1BCA80;
    do
    {
      v9 = *(v8 + 80);
      v10 = *(v8 + 112);
      v70 = *(v8 + 96);
      v71 = v10;
      v11 = *(v8 + 16);
      v12 = *(v8 + 48);
      v66 = *(v8 + 32);
      v67 = v12;
      v13 = *(v8 + 48);
      v14 = *(v8 + 80);
      v68 = *(v8 + 64);
      v69 = v14;
      v15 = *(v8 + 16);
      v65[0] = *v8;
      v65[1] = v15;
      v16 = *(v8 + 112);
      v63[6] = v70;
      v63[7] = v16;
      v63[0] = v65[0];
      v63[1] = v11;
      v63[2] = v66;
      v63[3] = v13;
      v72 = *(v8 + 128);
      v64 = *(v8 + 128);
      v63[4] = v68;
      v63[5] = v9;
      v17 = BYTE8(v65[0]);
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      inited = swift_initStackObject();
      *(inited + 16) = v61;
      *(inited + 32) = v17;
      sub_429F8(v65, &v62);
      v19 = sub_9EABC(inited);
      v20 = swift_setDeallocating();
      __chkstk_darwin(v20);
      *(&v51 - 2) = &v73;
      *(&v51 - 1) = v63;
      sub_157D70(sub_15BE48, (&v51 - 4), v19);

      sub_5C740(v65);
      v8 += 136;
      --v7;
    }

    while (v7);
    v21 = v73;
  }

  else
  {
    v21 = _swiftEmptyDictionarySingleton;
  }

  v56 = _swiftEmptyDictionarySingleton;
  *&v63[0] = _swiftEmptyDictionarySingleton;
  v22 = v21 + 8;
  v23 = 1 << *(v21 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21[8];
  v26 = (v23 + 63) >> 6;
  *&v61 = v55 + 48;
  v52 = (v55 + 32);

  v28 = 0;
  v58 = v21;
  if (v25)
  {
    while (1)
    {
      v29 = v28;
LABEL_14:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v30 | (v29 << 6);
      v32 = v21[7];
      v57 = *(v21[6] + v31);
      *&v65[0] = *(v32 + 8 * v31);
      swift_bridgeObjectRetain_n();
      sub_2B0C(&qword_229710, &unk_1D32C0);
      sub_42094(&qword_229718, &qword_229710, &unk_1D32C0, &protocol conformance descriptor for [A]);
      v33 = v59;
      sub_1B43C4();
      if ((*v61)(v33, 1, v60) == 1)
      {

        result = sub_42F48(v33, &qword_229708, &unk_1BCB60);
      }

      else
      {
        v34 = *v52;
        v35 = v33;
        v36 = v60;
        (*v52)(v54, v35, v60);
        v51 = v34;
        v34(v53, v54, v36);
        v37 = v56;
        v38 = v56[2];
        if (v56[3] <= v38)
        {
          sub_17DEAC(v38 + 1, 1);
          v37 = *&v63[0];
        }

        sub_1B57F4();
        v39 = v57;
        sub_1B4884();

        result = sub_1B5844();
        v40 = v37 + 8;
        v56 = v37;
        v41 = -1 << *(v37 + 32);
        v42 = result & ~v41;
        v43 = v42 >> 6;
        if (((-1 << v42) & ~v37[(v42 >> 6) + 8]) == 0)
        {
          v45 = 0;
          v46 = (63 - v41) >> 6;
          while (++v43 != v46 || (v45 & 1) == 0)
          {
            v47 = v43 == v46;
            if (v43 == v46)
            {
              v43 = 0;
            }

            v45 |= v47;
            v48 = v40[v43];
            if (v48 != -1)
            {
              v44 = __clz(__rbit64(~v48)) + (v43 << 6);
              goto LABEL_30;
            }
          }

LABEL_33:
          __break(1u);
          return result;
        }

        v44 = __clz(__rbit64((-1 << v42) & ~v37[(v42 >> 6) + 8])) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
        *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        v49 = v55;
        v50 = v56;
        *(v56[6] + v44) = v39;
        v51((v50[7] + *(v49 + 72) * v44), v53, v60);
        ++v50[2];
      }

      v28 = v29;
      v21 = v58;
      if (!v25)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v29 >= v26)
    {
      break;
    }

    v25 = v22[v29];
    ++v28;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  return v56;
}

uint64_t sub_159364(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v14 = _swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    v12 = xmmword_1BCA80;
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v13[0] = *(v3 - 2);
      v13[1] = v4;
      v13[2] = v5;
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = v12;
      *(inited + 32) = v5;
      v7 = sub_9EE2C(inited);
      v8 = swift_setDeallocating();
      __chkstk_darwin(v8);
      v11[2] = &v14;
      v11[3] = v13;

      sub_157E64(sub_15C5AC, v11, v7);

      v3 += 3;
      --v2;
    }

    while (v2);
    v1 = v14;
  }

  v9 = sub_1584E0(v1);

  return v9;
}

void *sub_159614(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_FEA58(a5, a5);
  swift_allocObject();
  v11 = sub_1B4AF4();
  a2(a1);
  v12 = sub_77558(v11, a5);
  if (sub_1B4B84())
  {
    v13 = sub_FED9C(v12, a5, a7);
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  return v13;
}

uint64_t sub_159728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a3(a2);
  sub_1B4CF4();
  swift_getWitnessTable();
  sub_1B4A14();
}

uint64_t sub_159818(char a1, char **a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *a2;
  v7 = v32;
  *a2 = 0x8000000000000000;
  v8 = a1 & 1;
  v10 = sub_3A9D8(a1 & 1);
  v11 = *(v7 + 2);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  if (*(v7 + 3) >= v13)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1858B0();
      v7 = v32;
    }
  }

  else
  {
    sub_17E278(v13, isUniquelyReferenced_nonNull_native);
    v7 = v32;
    v15 = sub_3A9D8(v8);
    if ((v14 & 1) != (v16 & 1))
    {
LABEL_17:
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v10 = v15;
  }

  *a2 = v7;

  v17 = *a2;
  if (v14)
  {
    goto LABEL_10;
  }

  *&v17[8 * (v10 >> 6) + 64] |= 1 << v10;
  *(*(v17 + 6) + v10) = v8;
  *(*(v17 + 7) + 8 * v10) = _swiftEmptyArrayStorage;
  v18 = *(v17 + 2);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v17 + 2) = v20;
LABEL_10:
  a2 = *(v17 + 7);
  v7 = a2[v10];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  a2[v10] = v7;
  if ((v21 & 1) == 0)
  {
LABEL_15:
    v7 = sub_33358(0, *(v7 + 2) + 1, 1, v7);
    a2[v10] = v7;
  }

  v23 = *(v7 + 2);
  v22 = *(v7 + 3);
  if (v23 >= v22 >> 1)
  {
    v7 = sub_33358((v22 > 1), v23 + 1, 1, v7);
    a2[v10] = v7;
  }

  *(v7 + 2) = v23 + 1;
  v24 = &v7[136 * v23];
  *(v24 + 2) = *a3;
  v25 = *(a3 + 16);
  v26 = *(a3 + 32);
  v27 = *(a3 + 64);
  *(v24 + 5) = *(a3 + 48);
  *(v24 + 6) = v27;
  *(v24 + 3) = v25;
  *(v24 + 4) = v26;
  v28 = *(a3 + 80);
  v29 = *(a3 + 96);
  v30 = *(a3 + 112);
  v24[160] = *(a3 + 128);
  *(v24 + 8) = v29;
  *(v24 + 9) = v30;
  *(v24 + 7) = v28;
  return sub_429F8(a3, &v32);
}

uint64_t sub_159A3C(uint64_t a1, char **a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *a2;
  v7 = v31;
  *a2 = 0x8000000000000000;
  v9 = sub_43124(a1);
  v10 = *(v7 + 2);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  if (*(v7 + 3) >= v12)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1856BC();
      v7 = v31;
    }
  }

  else
  {
    sub_17DB60(v12, isUniquelyReferenced_nonNull_native);
    v7 = v31;
    v14 = sub_43124(a1);
    if ((v13 & 1) != (v15 & 1))
    {
LABEL_17:
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v9 = v14;
  }

  *a2 = v7;

  v16 = *a2;
  if (v13)
  {
    goto LABEL_10;
  }

  *&v16[8 * (v9 >> 6) + 64] |= 1 << v9;
  *(*(v16 + 6) + 8 * v9) = a1;
  *(*(v16 + 7) + 8 * v9) = _swiftEmptyArrayStorage;
  v17 = *(v16 + 2);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v16 + 2) = v19;
LABEL_10:
  a2 = *(v16 + 7);
  v7 = a2[v9];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  a2[v9] = v7;
  if ((v20 & 1) == 0)
  {
LABEL_15:
    v7 = sub_33358(0, *(v7 + 2) + 1, 1, v7);
    a2[v9] = v7;
  }

  v22 = *(v7 + 2);
  v21 = *(v7 + 3);
  if (v22 >= v21 >> 1)
  {
    v7 = sub_33358((v21 > 1), v22 + 1, 1, v7);
    a2[v9] = v7;
  }

  *(v7 + 2) = v22 + 1;
  v23 = &v7[136 * v22];
  *(v23 + 2) = *a3;
  v24 = *(a3 + 16);
  v25 = *(a3 + 32);
  v26 = *(a3 + 64);
  *(v23 + 5) = *(a3 + 48);
  *(v23 + 6) = v26;
  *(v23 + 3) = v24;
  *(v23 + 4) = v25;
  v27 = *(a3 + 80);
  v28 = *(a3 + 96);
  v29 = *(a3 + 112);
  v23[160] = *(a3 + 128);
  *(v23 + 8) = v28;
  *(v23 + 9) = v29;
  *(v23 + 7) = v27;
  return sub_429F8(a3, &v31);
}

uint64_t sub_159C44(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a2;
  v29 = *a2;
  *a2 = 0x8000000000000000;
  v13 = sub_43124(a1);
  v14 = *(v11 + 2);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  if (*(v11 + 3) >= v16)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_187C60();
      v11 = v29;
    }
  }

  else
  {
    sub_183008(v16, isUniquelyReferenced_nonNull_native);
    v11 = v29;
    v18 = sub_43124(a1);
    if ((v17 & 1) != (v19 & 1))
    {
LABEL_17:
      result = sub_1B5784();
      __break(1u);
      return result;
    }

    v13 = v18;
  }

  *a2 = v11;

  v20 = *a2;
  if (v17)
  {
    goto LABEL_10;
  }

  *&v20[8 * (v13 >> 6) + 64] |= 1 << v13;
  *(*(v20 + 6) + 8 * v13) = a1;
  *(*(v20 + 7) + 8 * v13) = _swiftEmptyArrayStorage;
  v21 = *(v20 + 2);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v20 + 2) = v23;
LABEL_10:
  a1 = *(v20 + 7);
  v11 = *(a1 + 8 * v13);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 8 * v13) = v11;
  if ((v24 & 1) == 0)
  {
LABEL_15:
    v11 = sub_3427C(0, *(v11 + 2) + 1, 1, v11);
    *(a1 + 8 * v13) = v11;
  }

  v26 = *(v11 + 2);
  v25 = *(v11 + 3);
  if (v26 >= v25 >> 1)
  {
    v11 = sub_3427C((v25 > 1), v26 + 1, 1, v11);
    *(a1 + 8 * v13) = v11;
  }

  *(v11 + 2) = v26 + 1;
  v27 = &v11[24 * v26];
  *(v27 + 4) = a3;
  *(v27 + 5) = a4;
  *(v27 + 6) = a5;
}

uint64_t sub_159E28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a3;
  v38 = a1;
  v35 = *(a5 - 8);
  __chkstk_darwin(a1);
  v34 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = v33 - v15;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = *(v14 + 16);
  v36 = v16;
  v18(v16, v37, AssociatedTypeWitness);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = sub_15C6A4;
  v19[7] = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *a2;
  v21 = v39;
  v37 = a2;
  *a2 = 0x8000000000000000;
  v22 = a7;
  v33[1] = sub_15B790(v38, a5, a7);
  v24 = *(v21 + 16);
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
LABEL_8:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

  v27 = v23;
  sub_1B4B94();
  sub_1B5224();
  v28 = sub_1B5204(isUniquelyReferenced_nonNull_native, v26);
  v29 = v39;
  if (v28)
  {
    sub_15B790(v38, a5, v22);
    if ((v27 & 1) != (v30 & 1))
    {
      goto LABEL_8;
    }
  }

  *v37 = v29;

  if ((v27 & 1) == 0)
  {
    v39 = (v19[6])(v31);
    (*(v35 + 16))(v34, v38, a5);
    sub_1B5214();
  }

  sub_1B4B64();
}

uint64_t sub_15A15C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1B4B94();

  swift_getWitnessTable();
  return sub_1B43C4();
}

uint64_t sub_15A208@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  a2(a1);
  return (*(*(AssociatedTypeWitness - 8) + 16))(a6 + v10, a1, AssociatedTypeWitness);
}

uint64_t sub_15A2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  v10 = __chkstk_darwin(a1);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v14(v13);
  sub_1B4CF4();
  sub_1B4CE4();
  return (*(v9 + 8))(v12, a6);
}

uint64_t sub_15A450(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = sub_2B0C(&qword_22E240, &qword_1CF598);
  __chkstk_darwin(v4 - 8);
  v60 = &v52[-v5];
  v61 = sub_2B0C(&qword_228460, &qword_1B6370);
  v57 = *(v61 - 8);
  v6 = __chkstk_darwin(v61);
  v56 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v54 = &v52[-v8];
  v58 = _swiftEmptyDictionarySingleton;
  v67 = _swiftEmptyDictionarySingleton;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v63 = 0;
  v62 = xmmword_1BCA80;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      memcpy(v66, (*(a1 + 56) + 568 * (v16 | (v15 << 6))), 0x231uLL);
      memcpy(v65, v66, 0x231uLL);
      v17 = v65[1];
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      v18 = swift_allocObject();
      *(v18 + 16) = v62;
      *(v18 + 32) = v17;
      sub_4299C(v66, &v64);
      v19 = sub_9EABC(v18);
      swift_setDeallocating();
      v20 = swift_deallocClassInstance();
      __chkstk_darwin(v20);
      *&v52[-16] = &v67;
      *&v52[-8] = v65;
      v21 = v63;
      sub_157D70(a2, &v52[-32], v19);
      v63 = v21;

      result = sub_2601C(v66);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(a1 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v65[0] = _swiftEmptyDictionarySingleton;
  v22 = v67 + 8;
  v23 = 1 << *(v67 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v67[8];
  v26 = (v23 + 63) >> 6;
  v59 = (v57 + 48);
  v55 = (v57 + 32);
  *&v62 = v67;

  v27 = 0;
  while (v25)
  {
    v28 = v27;
LABEL_20:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v28 << 6);
    v31 = *(*(v62 + 48) + v30);
    v66[0] = *(*(v62 + 56) + 8 * v30);
    swift_bridgeObjectRetain_n();
    sub_2B0C(&qword_229300, &qword_1BC3B8);
    sub_42094(&qword_22E248, &qword_229300, &qword_1BC3B8, &protocol conformance descriptor for Set<A>);
    v32 = v60;
    sub_1B43C4();
    if ((*v59)(v32, 1, v61) == 1)
    {

      result = sub_42F48(v32, &qword_22E240, &qword_1CF598);
      v27 = v28;
    }

    else
    {
      v53 = v31;
      v33 = v54;
      v34 = *v55;
      v35 = v32;
      v36 = v61;
      (*v55)(v54, v35, v61);
      v34(v56, v33, v36);
      v37 = v58;
      v38 = v58[2];
      if (v58[3] <= v38)
      {
        sub_17D838(v38 + 1, 1);
        v37 = v65[0];
      }

      v39 = v37;
      sub_1B57F4();
      v40 = v53;
      sub_1B4884();

      result = sub_1B5844();
      v41 = v39 + 8;
      v58 = v39;
      v42 = -1 << *(v39 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~v39[(v43 >> 6) + 8]) == 0)
      {
        v46 = 0;
        v47 = (63 - v42) >> 6;
        while (++v44 != v47 || (v46 & 1) == 0)
        {
          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = v41[v44];
          if (v49 != -1)
          {
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
            goto LABEL_34;
          }
        }

        goto LABEL_38;
      }

      v45 = __clz(__rbit64((-1 << v43) & ~v39[(v43 >> 6) + 8])) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_34:
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v50 = v57;
      v51 = v58;
      *(v58[6] + v45) = v40;
      v34((v51[7] + *(v50 + 72) * v45), v56, v61);
      ++v51[2];

      v27 = v28;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      return v58;
    }

    v25 = v22[v28];
    ++v27;
    if (v25)
    {
      goto LABEL_20;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_15ACE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a3(a2);
  sub_1B4CF4();
  swift_getWitnessTable();
  sub_1B4A14();
}

uint64_t sub_15ADDC(char a1, void *a2, const void *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  __src[0] = *a2;
  v8 = __src[0];
  *a2 = 0x8000000000000000;
  v9 = a1 & 1;
  v11 = sub_3A9D8(v9);
  v12 = *(v8 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v10;
  if (*(v8 + 24) >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1854D0();
    v8 = __src[0];
    goto LABEL_6;
  }

  sub_17D530(v14, isUniquelyReferenced_nonNull_native);
  v8 = __src[0];
  v15 = sub_3A9D8(v9);
  if ((v3 & 1) != (v16 & 1))
  {
    goto LABEL_13;
  }

  v11 = v15;
LABEL_6:
  *a2 = v8;

  v17 = *a2;
  if (v3)
  {
LABEL_9:
    sub_4299C(a3, __src);
    sub_111DC0(__src, a3);
    memcpy(v22, __src, 0x231uLL);
    return sub_2601C(v22);
  }

  v17[(v11 >> 6) + 8] |= 1 << v11;
  *(v17[6] + v11) = v9;
  *(v17[7] + 8 * v11) = _swiftEmptySetSingleton;
  v18 = v17[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    v17[2] = v20;
    goto LABEL_9;
  }

  __break(1u);
LABEL_13:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_15AF70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a3;
  v46 = a8;
  v47 = a2;
  v48 = a1;
  v41 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = __chkstk_darwin(AssociatedTypeWitness);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v43 = v39 - v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = a6;
  v21 = v45;
  v22 = v46;
  v19[6] = v46;
  v44 = v14;
  v23 = *(v14 + 16);
  v42 = v17;
  v23(v17, v21, AssociatedTypeWitness);
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = v20;
  v24[5] = a7;
  v24[6] = v22;
  v24[7] = sub_15C60C;
  v24[8] = v19;
  v25 = v47;
  LODWORD(v45) = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v25;
  v26 = v49;
  *v25 = 0x8000000000000000;
  v39[1] = sub_15B790(v48, a5, a7);
  v28 = *(v26 + 16);
  v29 = (v27 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_10;
  }

  v31 = v27;
  v46 = sub_1B4CF4();
  sub_1B5224();
  v32 = sub_1B5204(v45, v30);
  v33 = v49;
  if (!v32)
  {
    v35 = AssociatedTypeWitness;
    goto LABEL_6;
  }

  sub_15B790(v48, a5, a7);
  if ((v31 & 1) != (v34 & 1))
  {
LABEL_10:
    result = sub_1B5784();
    __break(1u);
    return result;
  }

  v35 = AssociatedTypeWitness;
LABEL_6:
  *v47 = v33;

  if ((v31 & 1) == 0)
  {
    v49 = (v24[7])(v36);
    (*(v41 + 16))(v40, v48, a5);
    sub_1B5214();
  }

  v37 = v43;
  sub_1B4CE4();
  (*(v44 + 8))(v37, v35);
}