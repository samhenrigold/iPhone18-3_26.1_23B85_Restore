uint64_t sub_100197088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1001970B0, 0, 0);
}

uint64_t sub_1001970B0()
{
  v0[8] = os_transaction_create();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10019715C;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_100197338(v6, v7, v4, v5, v2, v3);
}

uint64_t sub_10019715C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1001972D4;
  }

  else
  {
    v2 = sub_100197270;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100197270()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001972D4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100197338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_1001CFD60();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  v6[15] = swift_task_alloc();
  v9 = sub_1001D08A0();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for ThimbledEvent(0);
  v6[20] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001975AC, 0, 0);
}

uint64_t sub_1001975AC()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v64 = v3;
  v72 = *(v0 + 136);
  v73 = *(v0 + 128);
  v69 = *(v0 + 120);
  v71 = *(v0 + 40);
  v67 = *(v0 + 32);
  v5 = *(v0 + 24);
  *(v0 + 192) = *(**(v0 + 16) + 328);
  swift_storeEnumTagMultiPayload();
  *(v0 + 200) = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  sub_1001D1BC0();
  v7 = *(v2 + 8);
  v6 = (v2 + 8);
  *(v0 + 208) = v7;
  *(v0 + 216) = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  v8 = (v4 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
  v9 = *(v5 + *(*v5 + 368));
  v10 = *(*v9 + 320);
  v11 = sub_1001CFDA0();
  *(v0 + 224) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  *(v0 + 232) = v13;
  *(v0 + 240) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63 = v9;
  v13(v4, v9 + v10, v11);
  v14 = *(v67 + 88);
  *v8 = *(v67 + 80);
  v8[1] = v14;
  swift_storeEnumTagMultiPayload();

  sub_1001D1BC0();
  v7(v1, v64);
  sub_100096A60(v69);
  if ((*(v72 + 48))(v69, 1, v73) != 1)
  {
    v16 = *(v0 + 112);
    v17 = *(v0 + 16);
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
    v18 = *(v17 + *(*v17 + 320));
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v19 = *(v18 + 16);
    v20 = v18 + qword_10022F7E8;
    os_unfair_lock_lock((v18 + qword_10022F7E8));
    v21 = swift_task_alloc();
    *(v21 + 16) = v16;
    *(v21 + 24) = v18;
    v22 = (v20 + 8);
    v23 = sub_10005E7D8(sub_10005EE28, v21);
    v24 = *(*(v20 + 8) + 16);
    if (v24 < v23)
    {
      __break(1u);
      goto LABEL_24;
    }

    v25 = *(v0 + 144);
    sub_10005B55C(v23, v24);

    v26 = *(v20 + 8);
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    v28 = sub_10005E334(sub_1001AB9D8, v27, v26);
    v30 = v29;

    LOBYTE(v71) = v30;
    if ((v30 & 1) == 0)
    {
      v6 = (v0 + 80);
      v40 = *(v0 + 80);
      v41 = *(v0 + 136);
      v68 = *(v0 + 128);
      v70 = *(v0 + 144);
      v42 = *(v0 + 104);
      v43 = *(v0 + 88);
      v44 = *(v0 + 96);
      v65 = *(v0 + 56);
      v66 = *(v0 + 112);
      sub_10019B278(v28, v43);
      sub_100011F00(v43, &unk_100230260, &qword_1001D3660);
      (*(v42 + 16))(v40, v66, v44);
      (*(v41 + 16))(v40 + *(v65 + 52), v70, v68);
LABEL_14:
      v22 = *(v20 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8) = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_15:
        v47 = v22[2];
        v46 = v22[3];
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v22 = sub_1000095F0((v46 > 1), v48, 1, v22);
          v49 = *v6;
          *(v20 + 8) = v22;
          v48 = v47 + 1;
        }

        else
        {
          v49 = *v6;
        }

        v51 = *(v0 + 136);
        v50 = *(v0 + 144);
        v52 = *(v0 + 128);
        v53 = *(v0 + 104);
        v54 = *(v0 + 112);
        v55 = *(v0 + 96);
        v56 = *(v0 + 64);
        v22[2] = v48;
        sub_1000DBEF4(v49, *(v20 + 8) + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v47, &unk_100230260, &qword_1001D3660);
        os_unfair_lock_unlock(v20);
        sub_10019B3BC(v54);
        (*(v53 + 8))(v54, v55);
        (*(v51 + 8))(v50, v52);
        v15 = v71;
        goto LABEL_18;
      }

LABEL_24:
      v62 = v22[2];

      *(v20 + 8) = sub_1000095F0(0, v62 + 1, 1, v22);

      v22 = *(v20 + 8);
      goto LABEL_15;
    }

    v32 = *(*(v20 + 8) + 16);
    v33 = v32 - v19;
    if (v32 < v19)
    {
      goto LABEL_12;
    }

    if (__OFSUB__(v32, v19))
    {
      __break(1u);
    }

    else
    {
      v34 = v33 + 1;
      if (!__OFADD__(v33, 1))
      {
        if (v33 != -1)
        {
          if ((v34 & 0x8000000000000000) == 0)
          {
            if (v32 >= v34)
            {
              sub_10005B55C(0, v34);
              goto LABEL_12;
            }

LABEL_29:
            __break(1u);
            return result;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_12:
        v6 = (v0 + 72);
        v35 = *(v0 + 72);
        v37 = *(v0 + 136);
        v36 = *(v0 + 144);
        v38 = *(v0 + 128);
        v39 = *(v0 + 56);
        (*(*(v0 + 104) + 16))(v35, *(v0 + 112), *(v0 + 96));
        (*(v37 + 16))(v35 + *(v39 + 52), v36, v38);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_100011F00(*(v0 + 120), &qword_1002292B0, &unk_1001D6420);
  v15 = 0;
LABEL_18:
  *(v0 + 264) = v15 & 1;
  sub_1001D0170();
  sub_1001D1840();

  v57 = os_variant_allows_internal_security_policies();

  if (v57)
  {
    v58 = *(v0 + 48);
    v59 = *(v0 + 16) + *(**(v0 + 16) + 344);
    os_unfair_lock_lock(v59);

    v60 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v59 + 8);
    *(v59 + 8) = 0x8000000000000000;
    sub_10001B4EC(v63, v58, v60);
    *(v59 + 8) = v74;
    os_unfair_lock_unlock(v59);
  }

  v61 = swift_task_alloc();
  *(v0 + 248) = v61;
  *v61 = v0;
  v61[1] = sub_100197C48;

  return sub_10016B800();
}

uint64_t sub_100197C48()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100197FF4;
  }

  else
  {
    v2 = sub_100197D5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100197D5C(uint64_t a1)
{
  if (*(v1 + 264) == 1)
  {
    v2 = sub_1001D0E50();
    v3 = sub_1001D1E00();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "need to prefetch attestations for this workload", v4, 2u);
    }

    v25 = *(v1 + 208);
    v5 = *(v1 + 184);
    v6 = *(v1 + 160);
    v24 = *(v1 + 168);
    v8 = *(v1 + 128);
    v7 = *(v1 + 136);
    v9 = *(v1 + 40);

    (*(v7 + 16))(v6, v9, v8);
    swift_storeEnumTagMultiPayload();
    sub_1001D1BC0();
    v25(v5, v24);
  }

  v21 = *(v1 + 232);
  v10 = *(v1 + 224);
  v23 = *(v1 + 208);
  v11 = *(v1 + 184);
  v12 = *(v1 + 160);
  v22 = *(v1 + 168);
  v14 = *(v1 + 128);
  v13 = *(v1 + 136);
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  v17 = *(v1 + 16);
  v18 = *(sub_100011AC0(&unk_1002301B0, &unk_1001E1610) + 48);
  v21(v12, v15, v10);
  (*(v13 + 16))(v12 + v18, v16, v14);
  swift_storeEnumTagMultiPayload();
  sub_1001D1BC0();
  v23(v11, v22);
  sub_1001980CC(v17, v15);

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_100197FF4()
{
  sub_1001980CC(*(v0 + 16), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001980CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v58 = sub_1001CFD60();
  v7 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D0720();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v56 = &v48 - v15;
  v16 = __chkstk_darwin(v14);
  v55 = &v48 - v17;
  __chkstk_darwin(v16);
  v59 = &v48 - v18;
  sub_1001D0170();
  sub_1001D1840();

  v19 = os_variant_allows_internal_security_policies();

  if (v19)
  {
    v49 = v13;
    v20 = a1 + *(*a1 + 344);
    os_unfair_lock_lock(v20);
    sub_1001A3024(v20 + 1, a2, a1);
    os_unfair_lock_unlock(v20);
    os_unfair_lock_lock(v20);
    v48 = v20;
    v21 = *(v20 + 2);
    v54 = v20 + 16;
    v23 = (v21 + 24);
    v22 = *(v21 + 3);
    if (v22)
    {
      v52 = (v7 + 8);
      v53 = v10 + 16;
      v50 = (v10 + 56);
      v51 = (v10 + 8);
      while (1)
      {
        v26 = v22 - 1;
        if (__OFSUB__(v22, 1))
        {
          break;
        }

        if (v26 < 0)
        {
          goto LABEL_24;
        }

        if (v26 >= v22)
        {
          goto LABEL_25;
        }

        v27 = v6;
        v28 = *(v21 + 4) + v26;
        v29 = *(v21 + 2);
        if (v28 < v29)
        {
          v29 = 0;
        }

        v30 = (*(v10 + 80) + 40) & ~*(v10 + 80);
        v31 = *(v10 + 72);
        v32 = v56;
        (*(v10 + 16))(v56, &v21[v30 + (v28 - v29) * v31], v9);
        v33 = *(v10 + 32);
        v34 = v55;
        v33(v55, v32, v9);
        v33(v59, v34, v9);
        v35 = v57;
        sub_1001D0710();
        sub_1001CFD00();
        v37 = v36;
        (*v52)(v35, v58);
        if (v37 >= -300.0)
        {
          (*v51)(v59, v9);
          goto LABEL_21;
        }

        if (*v23)
        {
          v25 = v54;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001190FC();
          }

          v40 = *v25;
          v41 = *(*v25 + 24);
          v42 = __OFSUB__(v41, 1);
          v43 = v41 - 1;
          if (v42)
          {
            goto LABEL_26;
          }

          v44 = *(v40 + 4) + v43;
          v45 = *(v40 + 2);
          if (v44 < v45)
          {
            v45 = 0;
          }

          v33(v39, &v40[v30 + (v44 - v45) * v31], v9);
          v46 = *(v40 + 3);
          v42 = __OFSUB__(v46, 1);
          v47 = v46 - 1;
          if (v42)
          {
            goto LABEL_27;
          }

          *(v40 + 3) = v47;
          (*v51)(v59, v9);
          v6 = v27;
          v33(v27, v39, v9);
          v24 = 0;
        }

        else
        {
          (*v51)(v59, v9);
          v24 = 1;
          v6 = v27;
          v25 = v54;
        }

        (*v50)(v6, v24, 1, v9);
        sub_100011F00(v6, &qword_100228AF0, &qword_1001E1630);
        v21 = *v25;
        v23 = (*v25 + 24);
        v22 = *v23;
        if (!*v23)
        {
          goto LABEL_21;
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
    }

    else
    {
LABEL_21:
      os_unfair_lock_unlock(v48);
    }
  }
}

uint64_t sub_1001985C8(uint64_t a1)
{
  v47 = a1;
  v1 = sub_1001D02F0();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001D0E60();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001D1810();
  __chkstk_darwin(v5 - 8);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001D0720();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1001D06E0();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001CF7E0();
  __chkstk_darwin(v12);
  sub_1001CF820();
  swift_allocObject();
  sub_1001CF810();
  sub_100011AC0(&qword_10022FCB8, &qword_1001E1648);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001D5410;
  sub_1001CF7D0();
  sub_1001CF7C0();
  v48 = v13;
  sub_1001B0458(&qword_10022FCC0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100011AC0(&qword_10022FCC8, &qword_1001E1650);
  sub_100024B78(&qword_10022FCD0, &qword_10022FCC8, &qword_1001E1650, &protocol conformance descriptor for [A]);
  v14 = v44;
  sub_1001D1FA0();
  sub_1001CF7F0();
  (*(v7 + 16))(v9, v47, v45);
  sub_1001D06F0();
  sub_1001B0458(&qword_10022FCD8, &type metadata accessor for TrustedRequestLogEntry, &protocol conformance descriptor for TrustedRequestLogEntry);
  v19 = sub_1001CF800();
  v21 = v20;
  v23 = v41;
  v22 = v42;
  v24 = v43;
  v25 = v40;
  (*(v46 + 8))(v11, v14);
  sub_1001D1800();
  v26 = sub_1001D17F0();
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v30 = v24;
    (*(v22 + 104))(v23, enum case for TC2LogCategory.requestLog(_:), v24);
    v31 = v25;
    sub_1001D08B0();
    (*(v22 + 8))(v23, v30);

    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      v36 = sub_1000954E0(v29, v28, &v48);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s", v34, 0xCu);
      sub_100011CF0(v35);
    }

    else
    {
    }

    sub_100011E48(v19, v21);

    return (*(v37 + 8))(v31, v38);
  }

  else
  {
    sub_100011E48(v19, v21);
    v15 = sub_1001D0E50();
    v16 = sub_1001D1DE0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "unable to encode and log request", v17, 2u);
    }
  }
}

void sub_100198CF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001CFBE0().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100198D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  v9[17] = type metadata accessor for NWAsyncConnection.Inbound(0);
  v9[18] = swift_task_alloc();
  type metadata accessor for NWConnectionWrapper.State(0);
  v9[19] = swift_task_alloc();
  v10 = sub_1001CFDA0();
  v9[20] = v10;
  v9[21] = *(v10 - 8);
  v9[22] = swift_task_alloc();
  v11 = sub_1001D02F0();
  v9[23] = v11;
  v9[24] = *(v11 - 8);
  v9[25] = swift_task_alloc();
  v12 = sub_1001D0E60();
  v9[26] = v12;
  v9[27] = *(v12 - 8);
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();

  return _swift_task_switch(sub_100198F58, 0, 0);
}

uint64_t sub_100198F58()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_100198FEC;

  return sub_10013F08C(v1);
}

uint64_t sub_100198FEC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1001998D0;
  }

  else
  {
    v2 = sub_100199100;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199100()
{
  v56 = v0;
  sub_1001D11A0();

  v1 = sub_1001D1110();
  v0[33] = v1;
  if (v1)
  {
    v45 = v0[30];
    v2 = v0[27];
    v38 = v0[29];
    v3 = v0[25];
    v5 = v0[23];
    v4 = v0[24];
    v47 = v0[22];
    v48 = v0[26];
    v51 = v0[21];
    v49 = v0[20];
    v41 = v0[19];
    v52 = v0[16];
    v46 = v0[11];
    v39 = v0[10];
    v53 = v1;
    sub_100011AC0(&qword_10022EE80, &qword_1001E01A8);
    v6 = swift_allocObject();
    v0[34] = v6;
    *(v6 + 16) = 0;
    *(v6 + 24) = _swiftEmptyArrayStorage;
    *(v6 + 32) = 0;
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    v0[35] = sub_1001D1E40();
    v7 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    v8 = enum case for TC2LogCategory.network(_:);
    v9 = *(v4 + 104);

    v44 = v8;
    v43 = v9;
    v9(v3, v8, v5);
    sub_1001D08B0();
    v42 = *(v4 + 8);
    v42(v3, v5);
    v10 = *(v2 + 16);
    v10(v38, v45, v48);
    (*(v51 + 16))(v47, v52 + v7, v49);
    type metadata accessor for NWConnectionWrapper(0);
    v11 = swift_allocObject();
    v0[36] = v11;
    v12 = (v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    v13 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    (*(*(v13 - 8) + 56))(v41, 1, 2, v13);
    *v12 = 0;
    v14 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    v15 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
    bzero(v12 + v14, *(*(v15 - 8) + 64));
    sub_1001B0368(v41, v12 + v14, type metadata accessor for NWConnectionWrapper.State);
    *(v11 + 16) = v53;
    v40 = v10;
    v10((v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v38, v48);
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    v54 = sub_1001D23A0();
    v55 = v16;
    v58._countAndFlagsBits = 1130045498;
    v58._object = 0xE400000000000000;
    sub_1001D18B0(v58);
    v0[6] = sub_1001D1000();
    v59._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v59);

    v60._countAndFlagsBits = 2629725;
    v60._object = 0xE300000000000000;
    sub_1001D18B0(v60);
    v61._countAndFlagsBits = v39;
    v61._object = v46;
    sub_1001D18B0(v61);
    v62._countAndFlagsBits = 41;
    v62._object = 0xE100000000000000;
    sub_1001D18B0(v62);
    v17 = v55;
    v18 = (v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
    *v18 = v54;
    v18[1] = v17;
    *(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = v6;

    sub_1001D10B0();
    (*(v51 + 8))(v47, v49);
    v19 = *(v2 + 8);
    v0[37] = v19;
    v0[38] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v38, v48);
    v0[39] = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

    v20 = sub_1001D0E50();
    v21 = sub_1001D1DD0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1000954E0(*(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v11 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v54);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s start", v22, 0xCu);
      sub_100011CF0(v23);
    }

    v24 = v0[30];
    v26 = v0[25];
    v25 = v0[26];
    v27 = v0[23];
    v29 = v0[17];
    v28 = v0[18];
    v50 = *(v0 + 5);
    sub_1001D1170();
    v40(v28 + *(v29 + 20), v24, v25);
    v30 = *(v29 + 24);
    sub_100011AC0(qword_100227990, &unk_1001D34D0);
    v31 = swift_allocObject();
    *(v31 + 20) = 0;
    *(v31 + 16) = 0;
    *(v28 + v30) = v31;
    *v28 = v11;

    v43(v26, v44, v27);
    sub_1001D08B0();
    v42(v26, v27);
    v54 = sub_1001D23A0();
    v55 = v32;
    v63._countAndFlagsBits = 1130045498;
    v63._object = 0xE400000000000000;
    sub_1001D18B0(v63);
    v0[7] = sub_1001D1000();
    v64._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v64);

    v65._countAndFlagsBits = 2629725;
    v65._object = 0xE300000000000000;
    sub_1001D18B0(v65);
    sub_1001D18B0(v50);
    v66._countAndFlagsBits = 41;
    v66._object = 0xE100000000000000;
    sub_1001D18B0(v66);
    v33 = v55;
    v0[40] = v54;
    v0[41] = v33;
    v34 = swift_task_alloc();
    v0[42] = v34;
    *v34 = v0;
    v34[1] = sub_10019998C;

    return sub_10013F08C(v34);
  }

  else
  {
    sub_100141174();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1001998D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019998C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {

    v2 = sub_100199CB8;
  }

  else
  {
    v2 = sub_100199AA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199AA8()
{
  v3 = (*(v0 + 96) + **(v0 + 96));
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_100199B94;

  return v3();
}

uint64_t sub_100199B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[45] = a1;
  v6[46] = a2;
  v6[47] = a3;
  v6[48] = a4;
  v6[49] = v4;

  if (v4)
  {

    v7 = sub_10019A52C;
  }

  else
  {
    v7 = sub_100199ED8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100199CB8()
{
  v14 = v0;
  v1 = *(v0 + 144);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
  sub_1001AFB98(v1, type metadata accessor for NWAsyncConnection.Inbound);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s cancel", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  v9 = *(v0 + 240);
  v10 = *(v0 + 208);
  sub_1001D1180();

  v7(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_100199ED8()
{
  v60 = v0;
  v1 = (v0 + 360);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  sub_100012038(*(v0 + 360), *(v0 + 368));
  sub_100012038(v2, v3);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1DD0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 384);
  if (!v6)
  {
    v15 = *(v0 + 376);
    sub_100011E48(*(v0 + 360), *(v0 + 368));
    sub_100011E48(v15, v7);
    goto LABEL_24;
  }

  v9 = *(v0 + 320);
  v8 = *(v0 + 328);
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v59[0] = v11;
  *v10 = 136315650;
  result = sub_1000954E0(v9, v8, v59);
  *(v10 + 4) = result;
  *(v10 + 12) = 2048;
  v13 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = *(v0 + 390);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v16 = *(*(v0 + 376) + 16);
  v17 = *(*(v0 + 376) + 24);
  v18 = __OFSUB__(v17, v16);
  v14 = v17 - v16;
  if (v18)
  {
    __break(1u);
LABEL_10:
    v19 = *(v0 + 376);
    v20 = *(v0 + 380);
    v18 = __OFSUB__(v20, v19);
    LODWORD(v14) = v20 - v19;
    if (v18)
    {
      __break(1u);
      goto LABEL_37;
    }

    v14 = v14;
  }

LABEL_13:
  v21 = *(v0 + 368);
  *(v10 + 14) = v14;
  *(v10 + 22) = 2048;
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_23;
    }

    v24 = *(*v1 + 16);
    v25 = *(*v1 + 24);
    v18 = __OFSUB__(v25, v24);
    v23 = v25 - v24;
    if (!v18)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v26 = *(v0 + 364);
    LODWORD(v23) = v26 - *v1;
    if (!__OFSUB__(v26, *v1))
    {
      v23 = v23;
      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
    return result;
  }

  if (v22)
  {
    goto LABEL_20;
  }

  v23 = BYTE6(v21);
LABEL_23:
  v28 = *(v0 + 376);
  v27 = *(v0 + 384);
  v29 = *(v0 + 360);
  *(v10 + 24) = v23;
  sub_100011E48(v29, v21);
  sub_100011E48(v28, v27);
  _os_log_impl(&_mh_execute_header, v4, v5, "%s updating obliviousHTTPConnection aeadNonce.count=%ld, aeadKey.count=%ld", v10, 0x20u);
  sub_100011CF0(v11);

LABEL_24:

  v30 = *v1;
  *(v0 + 16) = *(v0 + 376);
  *(v0 + 32) = v30;
  if (sub_1001D1130())
  {

    v31 = sub_1001D0E50();
    v32 = sub_1001D1DD0();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 328);
    if (v33)
    {
      v35 = *(v0 + 320);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59[0] = v37;
      *v36 = 136315138;
      v38 = sub_1000954E0(v35, v34, v59);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s did update obliviousHTTPConnection", v36, 0xCu);
      sub_100011CF0(v37);
    }

    else
    {
    }

    v58 = (*(v0 + 112) + **(v0 + 112));
    v55 = swift_task_alloc();
    *(v0 + 400) = v55;
    *v55 = v0;
    v55[1] = sub_10019A74C;
    v56 = *(v0 + 144);
    v57 = *(v0 + 64);

    return v58(v57, v56);
  }

  else
  {
    v40 = *(v0 + 376);
    v39 = *(v0 + 384);
    v42 = *(v0 + 360);
    v41 = *(v0 + 368);

    sub_100141174();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    sub_100011E48(v42, v41);
    sub_100011E48(v40, v39);
    v44 = *(v0 + 144);
    (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
    sub_1001AFB98(v44, type metadata accessor for NWAsyncConnection.Inbound);

    v45 = sub_1001D0E50();
    v46 = sub_1001D1E00();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 288);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v59[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1000954E0(*(v47 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v47 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), v59);
      _os_log_impl(&_mh_execute_header, v45, v46, "%s cancel", v48, 0xCu);
      sub_100011CF0(v49);
    }

    v50 = *(v0 + 296);
    v51 = *(v0 + 280);
    v52 = *(v0 + 240);
    v53 = *(v0 + 208);
    sub_1001D1180();

    v50(v52, v53);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_10019A52C()
{
  v14 = v0;
  v1 = *(v0 + 144);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
  sub_1001AFB98(v1, type metadata accessor for NWAsyncConnection.Inbound);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(*(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v4 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s cancel", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  v9 = *(v0 + 240);
  v10 = *(v0 + 208);
  sub_1001D1180();

  v7(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10019A74C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_10019AAA0;
  }

  else
  {
    v2 = sub_10019A860;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019A860()
{
  v19 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[37];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[18];
  sub_100011E48(v0[45], v0[46]);
  sub_100011E48(v1, v2);
  v3(v4, v5);
  sub_1001AFB98(v6, type metadata accessor for NWAsyncConnection.Inbound);

  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1000954E0(*(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v9 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s cancel", v10, 0xCu);
    sub_100011CF0(v11);
  }

  v12 = v0[37];
  v13 = v0[35];
  v14 = v0[30];
  v15 = v0[26];
  sub_1001D1180();

  v12(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10019AAA0()
{
  v16 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  sub_100011E48(*(v0 + 360), *(v0 + 368));
  sub_100011E48(v1, v2);
  v3 = *(v0 + 144);
  (*(v0 + 296))(*(v0 + 224), *(v0 + 208));
  sub_1001AFB98(v3, type metadata accessor for NWAsyncConnection.Inbound);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v15);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s cancel", v7, 0xCu);
    sub_100011CF0(v8);
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 280);
  v11 = *(v0 + 240);
  v12 = *(v0 + 208);
  sub_1001D1180();

  v9(v11, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10019ACD8(uint64_t a1)
{
  v44 = a1;
  v2 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  __chkstk_darwin(v2 - 8);
  v34 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = sub_100011AC0(&qword_10022F170, &unk_1001E18C0);
  v4 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v30[-v5];
  v42 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  v7 = __chkstk_darwin(v42);
  v41 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v30[-v9];
  v11 = sub_100011AC0(&qword_10022F158, &qword_1001E06C0);
  __chkstk_darwin(v11);
  v13 = &v30[-v12];
  sub_10001208C(v1, &v30[-v12], &qword_10022F158, &qword_1001E06C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload == 1)
  {
    sub_100011F00(v13, &qword_10022F158, &qword_1001E06C0);
    return v15 != 1;
  }

  v31 = EnumCaseMultiPayload;
  v32 = v11;
  v33 = v1;
  v40 = v6;
  result = sub_100011F00(v1, &qword_10022F158, &qword_1001E06C0);
  v17 = *v13;
  if (v17 >> 62)
  {
    goto LABEL_18;
  }

  v43 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v43)
  {
LABEL_19:

    sub_10001208C(v44, v33, &qword_10022F188, &qword_1001E06F0);
    swift_storeEnumTagMultiPayload();
    v15 = v31;
    return v15 != 1;
  }

  while (v43 >= 1)
  {
    v18 = 0;
    v19 = (v4 + 48);
    v38 = (v4 + 16);
    v39 = v17 & 0xFFFFFFFFFFFFFF8;
    v36 = v17 & 0xC000000000000001;
    v37 = (v4 + 8);
    v4 = v17 & 0xC000000000000001;
    v35 = v17;
    while (v4)
    {
      v23 = sub_1001D2040();
LABEL_13:
      sub_10001208C(v44, v10, &qword_10022F188, &qword_1001E06F0);
      v24 = (v23 + *(*v23 + 88));
      os_unfair_lock_lock(v24);
      v25 = *(sub_100011AC0(&qword_10022F160, &qword_1001E06C8) + 28);
      if (!(*v19)(v24 + v25, 1, v45))
      {
        v26 = v24 + v25;
        v27 = v40;
        v28 = v45;
        (*v38)(v40, v26, v45);
        v29 = v41;
        sub_10001208C(v10, v41, &qword_10022F188, &qword_1001E06F0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v20 = *v29;
          sub_100011AC0(&qword_100227A58, &qword_1001D3600);
          v21 = swift_allocError();
          *v22 = v20;
          v46 = v21;
          sub_1001D1A90();
        }

        else
        {
          sub_1001B0368(v29, v34, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
          sub_1001D1AA0();
        }

        (*v37)(v27, v28);
        v17 = v35;
        v4 = v36;
      }

      ++v18;
      os_unfair_lock_unlock(v24);

      sub_100011F00(v10, &qword_10022F188, &qword_1001E06F0);
      if (v43 == v18)
      {
        goto LABEL_19;
      }
    }

    if (v18 < *(v39 + 16))
    {
      v23 = *(v17 + 8 * v18 + 32);

      goto LABEL_13;
    }

    __break(1u);
LABEL_18:
    result = sub_1001D2190();
    v43 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10019B1C8(uint64_t a1, uint64_t a2)
{
  sub_1001D08A0();
  sub_100011AC0(&unk_100230260, &qword_1001D3660);
  sub_1001B0458(&qword_100229508, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
  return sub_1001D1790() & 1;
}

uint64_t sub_10019B278@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005E7C4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_100011AC0(&unk_100230260, &qword_1001D3660) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1000DBEF4(v11, a2, &unk_100230260, &qword_1001D3660);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_10019B3BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = sub_1001CFB10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(v2 + qword_10022F7D8, v6, &unk_100230170, &unk_1001E0D90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100011F00(v6, &unk_100230170, &unk_1001E0D90);
    v11 = sub_1001D0E50();
    v12 = sub_1001D1DC0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "declining to persist lrucache without location", v13, 2u);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v14 = v2 + qword_10022F7E8;
    os_unfair_lock_lock((v2 + qword_10022F7E8));
    __chkstk_darwin(v15);
    v21[-2] = a1;
    v21[-1] = v2;
    v16 = sub_10005E7D8(sub_1001B057C, &v21[-4]);
    v17 = *(*(v14 + 8) + 16);
    if (v17 < v16)
    {
      __break(1u);
    }

    else
    {
      sub_10005B55C(v16, v17);
      v21[0] = *(v14 + 8);

      sub_100011AC0(&qword_10022FC90, &unk_1001E1620);
      sub_1001AB9F8();
      v18 = sub_1001CF940();
      v20 = v19;

      sub_1001CFC20();
      sub_100011E48(v18, v20);
      os_unfair_lock_unlock(v14);
      (*(v8 + 8))(v10, v7);
    }
  }
}

uint64_t sub_10019B804()
{
  v1 = v0;
  v2 = sub_100011AC0(&unk_1002300C0, &qword_1001E1538);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_1001D20D0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  v15 = *(*v0 + 112);
  swift_beginAccess();
  sub_10001208C(v0 + v15, v7, &unk_1002300C0, &qword_1001E1538);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100011F00(v7, &unk_1002300C0, &qword_1001E1538);
    (*(v9 + 32))(v5, v14, v8);
  }

  else
  {
    v20 = *(v9 + 32);
    v21 = v5;
    v20(v12, v7, v8);
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_1001D2110();
    v16 = sub_1001D2620();
    v17 = *(v9 + 8);
    v17(v12, v8);
    if ((v16 & 1) == 0)
    {
      v17(v14, v8);
      return 0;
    }

    v5 = v21;
    v20(v21, v14, v8);
  }

  v18 = 1;
  (*(v9 + 56))(v5, 0, 1, v8);
  swift_beginAccess();
  sub_10001BAC8(v5, v1 + v15, &unk_1002300C0, &qword_1001E1538);
  swift_endAccess();
  return v18;
}

uint64_t sub_10019BB9C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return v6(a1);
}

uint64_t sub_10019BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v8 = sub_1001D20F0();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v7[11] = *(v9 + 64);
  v7[12] = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_10019BD9C, 0, 0);
}

uint64_t sub_10019BD9C()
{
  v1 = v0[13];
  v2 = v0[10];
  v16 = v0[12];
  v17 = v0[11];
  v18 = v0[7];
  v19 = v0[8];
  v14 = v0[6];
  v15 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1001D1BA0();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;

  sub_10019C66C(v1, &unk_1001E1C10, v7);
  sub_100011F00(v1, &qword_100229350, &unk_1001D6BA0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v16, v14, v15);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v2 + 32))(v9 + v8, v16, v15);
  v10 = (v9 + ((v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v18;
  v10[1] = v19;
  sub_10019C66C(v1, &unk_1001E1C20, v9);
  sub_100011F00(v1, &qword_100229350, &unk_1001D6BA0);
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_100011AC0(&qword_10022FF08, &qword_1001E1C28);
  v0[15] = v12;
  *v11 = v0;
  v11[1] = sub_10019C01C;

  return ThrowingTaskGroup.next(isolation:)(v0 + 19, 0, 0, v12);
}

uint64_t sub_10019C01C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10019C1E4;
  }

  else
  {
    v2 = sub_10019C130;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10019C130()
{
  if (*(v0 + 152))
  {
    __break(1u);
  }

  else
  {
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    sub_1001D1C70();

    v1 = *(v0 + 8);

    v1();
  }
}

uint64_t sub_10019C1E4()
{
  v0[2] = v0[16];
  swift_errorRetain();
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  if (swift_dynamicCast())
  {
    sub_1001D1C70();
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_10019C350;
    v2 = v0[15];

    return ThrowingTaskGroup.next(isolation:)(v0 + 153, 0, 0, v2);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10019C350()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_10019C4F4;
  }

  else
  {
    v2 = sub_10019C46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019C46C()
{
  if (*(v0 + 153))
  {
    __break(1u);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_10019C4F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019C574(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10005B61C;

  return v8(a1);
}

uint64_t sub_10019C66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10001208C(a1, v18 - v8, &qword_100229350, &unk_1001D6BA0);
  v10 = sub_1001D1BA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100011F00(v9, &qword_100229350, &unk_1001D6BA0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1001D1A70();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1001D1B90();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_10019C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_10019C928;

  return sub_10019CAC8(a5, a6, 0, 0, 1);
}

uint64_t sub_10019C928()
{

  if (v0)
  {

    v1 = sub_1001B0618;
  }

  else
  {
    v1 = sub_10019CA40;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10019CA40()
{
  sub_1001B02DC();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1001D20D0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10019CBC8, 0, 0);
}

uint64_t sub_10019CBC8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1001D20F0();
  v5 = sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2100();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10019CD58;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10019CD58()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10019CF14, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10019CF14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019CF80(void (*a1)(uint64_t, uint64_t))
{
  v3 = swift_isaMask & *v1;
  v4 = sub_1001D02E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10019D1AC(0) & 1) == 0 && (sub_10019D1AC(5u) & 1) == 0)
  {
    return (a1)(0, 0xE000000000000000);
  }

  v8 = &v1[*((swift_isaMask & *v1) + 0x78)];
  v18 = a1;
  v9 = *(v8 + 3);
  v10 = *(v8 + 4);
  sub_100024DC8(v8, v9);
  v11 = *((swift_isaMask & *v1) + 0x80);
  v17 = *(v3 + 80);
  v20 = v17;
  v12 = sub_10003B47C(v19);
  (*(*(v17 - 8) + 16))(v12, &v1[v11]);
  Configuration.environment(systemInfo:)(v19, v9, v10, v7);
  sub_100011CF0(v19);
  v13 = sub_1001D02B0();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v18(v13, v15);
}

uint64_t sub_10019D1AC(unsigned __int8 a1)
{
  v3 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  v4 = sub_1001D17A0();

  v5 = [v3 valueForEntitlement:v4];

  if (!v5)
  {
    v18 = sub_1001D0E50();
    v19 = sub_1001D1E00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48[0] = v21;
      *v20 = 136315138;
      v22 = 0xD000000000000036;
      if (a1 == 4)
      {
        v23 = "ecloudcompute.knownRateLimits";
      }

      else
      {
        v22 = 0xD00000000000002FLL;
        v23 = "ndleIdentifierOverride";
      }

      if (a1 == 3)
      {
        v22 = 0xD00000000000002DLL;
      }

      v24 = "ecloudcompute.admin";
      if (a1 == 3)
      {
        v23 = "ecloudcompute.prefetchRequest";
      }

      if (a1 == 1)
      {
        v25 = 0xD000000000000026;
      }

      else
      {
        v25 = 0xD00000000000002DLL;
      }

      if (a1 != 1)
      {
        v24 = "ecloudcompute.requests";
      }

      if (!a1)
      {
        v25 = 0xD000000000000023;
        v24 = "";
      }

      if (a1 <= 2u)
      {
        v26 = v25;
      }

      else
      {
        v26 = v22;
      }

      if (a1 <= 2u)
      {
        v27 = v24;
      }

      else
      {
        v27 = v23;
      }

      v28 = sub_1000954E0(v26, v27 | 0x8000000000000000, v48);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "entitlement not present: %s", v20, 0xCu);
      sub_100011CF0(v21);
    }

    return 0;
  }

  sub_1001D1F90();
  swift_unknownObjectRelease();
  sub_100089F9C(v48, v47);
  if (!swift_dynamicCast())
  {
    sub_1001AA890(v47, v46);
    sub_100089F9C(v46, v45);
    v29 = sub_1001D0E50();
    v30 = sub_1001D1E00();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v31 = 136315394;
      v32 = 0xD000000000000036;
      if (a1 == 4)
      {
        v33 = "ecloudcompute.knownRateLimits";
      }

      else
      {
        v32 = 0xD00000000000002FLL;
        v33 = "ndleIdentifierOverride";
      }

      if (a1 == 3)
      {
        v32 = 0xD00000000000002DLL;
      }

      v34 = "ecloudcompute.admin";
      if (a1 == 3)
      {
        v33 = "ecloudcompute.prefetchRequest";
      }

      if (a1 == 1)
      {
        v35 = 0xD000000000000026;
      }

      else
      {
        v35 = 0xD00000000000002DLL;
      }

      if (a1 != 1)
      {
        v34 = "ecloudcompute.requests";
      }

      if (!a1)
      {
        v35 = 0xD000000000000023;
        v34 = "";
      }

      if (a1 <= 2u)
      {
        v36 = v35;
      }

      else
      {
        v36 = v32;
      }

      if (a1 <= 2u)
      {
        v37 = v34;
      }

      else
      {
        v37 = v33;
      }

      v38 = sub_1000954E0(v36, v37 | 0x8000000000000000, &v44);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      sub_100024DC8(v45, v45[3]);
      swift_getDynamicType();
      v39 = sub_1001D2660();
      v41 = v40;
      sub_100011CF0(v45);
      v42 = sub_1000954E0(v39, v41, &v44);

      *(v31 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v29, v30, "entitlement is wrong type: %s = %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100011CF0(v45);
    }

    sub_100011CF0(v46);
    sub_100011CF0(v48);
    return 0;
  }

  v6 = LOBYTE(v45[0]);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1E00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v46[0] = v10;
    *v9 = 136315394;
    v11 = 0xD000000000000036;
    if (a1 == 4)
    {
      v12 = "ecloudcompute.knownRateLimits";
    }

    else
    {
      v11 = 0xD00000000000002FLL;
      v12 = "ndleIdentifierOverride";
    }

    if (a1 == 3)
    {
      v11 = 0xD00000000000002DLL;
    }

    v13 = "ecloudcompute.admin";
    if (a1 == 3)
    {
      v12 = "ecloudcompute.prefetchRequest";
    }

    if (a1 == 1)
    {
      v14 = 0xD000000000000026;
    }

    else
    {
      v14 = 0xD00000000000002DLL;
    }

    if (a1 != 1)
    {
      v13 = "ecloudcompute.requests";
    }

    if (!a1)
    {
      v14 = 0xD000000000000023;
      v13 = "";
    }

    if (a1 <= 2u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    if (a1 <= 2u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    v17 = sub_1000954E0(v15, v16 | 0x8000000000000000, v46);

    *(v9 + 4) = v17;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "entitlement observed: %s = %{BOOL}d", v9, 0x12u);
    sub_100011CF0(v10);
  }

  sub_100011CF0(v48);
  sub_100011CF0(v47);
  return v6;
}

void sub_10019D7A8(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v4 = a1;
  sub_10019CF80(sub_1001B0620);
  _Block_release(v5);
}

uint64_t sub_10019D818(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t))
{
  sub_1001D2030(17);

  v11[0] = 0x64656C626D696874;
  v11[1] = 0xEF203A6F68634520;
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  sub_1001D18B0(v13);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000954E0(a1, a2, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "echo: %s", v8, 0xCu);
    sub_100011CF0(v9);
  }

  a3(0x64656C626D696874, 0xEF203A6F68634520);
}

uint64_t sub_10019D9D8(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = sub_1001D17D0();
  v8 = v7;
  v9 = a1;
  sub_10019D818(v6, v8, sub_1001B0508);
  _Block_release(v5);
}

uint64_t sub_10019DA6C(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), void *a5, void (*a6)(char *, char *, uint64_t), unint64_t a7, NSObject *a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void, unint64_t), uint64_t a12)
{
  v25 = a8;
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v26 = a12;
  v27 = a11;
  v16 = sub_1001D0200();
  v17 = __chkstk_darwin(v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  sub_10019DCB4(a1, a2, a3, a4, v22, v23, v24, v25, a9, a10, v19);
  v20 = swift_unknownObjectRetain();
  v27(v20, 0, 0xF000000000000000);
  return swift_unknownObjectRelease_n();
}

void sub_10019DCB4(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), void *a5, void (*a6)(char *, char *, uint64_t), unint64_t a7, NSObject *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v12 = v11;
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v42 = a4;
  v48 = a2;
  v15 = sub_100011AC0(&qword_1002292B0, &unk_1001D6420);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_1001D08A0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10019D1AC(1u) & 1) != 0 && (v37 = v21, v38 = a1, v36 = a8, v39 = v19, v40 = a11, v22 = *(v11 + *((swift_isaMask & *v11) + 0x70)), [v22 auditToken], v23 = sub_10019E6F8(v47[0], v47[1], v47[2], v47[3]), v25 = v24, v26 = sub_10019D1AC(4u), objc_msgSend(v22, "auditToken"), v25))
  {
    v27 = (v12 + *((swift_isaMask & *v12) + 0x68));
    v28 = sub_100024DC8(v27, v27[3]);
    v29 = *v28;
    v30 = *v28 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_structuredRequestFactoriesBySetup;
    os_unfair_lock_lock(v30);
    v31 = v46;
    sub_1001BE3D4((v30 + 8), v23, v25, v26 & 1, v29, v47);
    if (v31)
    {
      os_unfair_lock_unlock(v30);
      __break(1u);
    }

    else
    {

      os_unfair_lock_unlock(v30);
      sub_100012038(v38, v48);
      sub_1001B0458(&qword_10022FC50, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      sub_1001B0458(&qword_10022FC58, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
      sub_1001D07C0();
      v32 = v39;
      if ((*(v39 + 48))(v17, 1, v18) == 1)
      {
        sub_100011F00(v17, &qword_1002292B0, &unk_1001D6420);
        sub_1001D01F0();
        sub_1001D0200();
        sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
        swift_willThrowTypedImpl();
      }

      else
      {
        v33 = v37;
        (*(v32 + 32))(v37, v17, v18);
        LOBYTE(v47[0]) = 1;
        if (sub_100193F70(v41, v33, v42, v43, v44, v45, v36, a9, a10, &_mh_execute_header))
        {
          v34 = (v12 + *((swift_isaMask & *v12) + 0x90));
          os_unfair_lock_lock(v34);

          sub_1001D19B0();
          if (*((*&v34[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v34[2]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1001D19F0();
          }

          sub_1001D1A20();
          os_unfair_lock_unlock(v34);

          (*(v32 + 8))(v37, v18);
        }

        else
        {
          sub_1001D01F0();
          sub_1001D0200();
          sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
          swift_willThrowTypedImpl();

          (*(v32 + 8))(v33, v18);
        }
      }
    }
  }

  else
  {
    sub_1001D01F0();
    sub_1001D0200();
    sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_willThrowTypedImpl();
  }
}

uint64_t sub_10019E354(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, NSObject *a7, void *a8, const void *a9)
{
  v16 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v16 - 8);
  v49 = &v45 - v17;
  v18 = sub_1001CFDA0();
  v55 = *(v18 - 8);
  v56 = v18;
  __chkstk_darwin(v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = _Block_copy(a9);
  v21 = a3;
  v22 = a4;
  v54 = a1;
  v23 = a5;
  v47 = a6;
  v24 = a6;
  v46 = a7;
  v25 = a7;
  v45 = a8;
  v26 = a8;
  v27 = sub_1001CFC00();
  v51 = v28;
  v52 = v27;

  v50 = v20;
  sub_1001CFD80();

  if (v23)
  {
    v29 = sub_1001D17D0();
    v48 = v30;

    v31 = v49;
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = 0;
    v48 = 0;
    v31 = v49;
    if (v24)
    {
LABEL_3:
      v32 = sub_1001D17D0();
      v47 = v33;

      if (v25)
      {
        goto LABEL_4;
      }

LABEL_8:
      v46 = 0;
      v35 = 0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_9:
      v36 = 1;
      goto LABEL_10;
    }
  }

  v32 = 0;
  v47 = 0;
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_4:
  v46 = sub_1001D17D0();
  v35 = v34;

  if (!v26)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1001CFD80();

  v36 = 0;
LABEL_10:
  v37 = v55;
  (*(v55 + 56))(v31, v36, 1, v56);
  v38 = swift_allocObject();
  *(v38 + 16) = v53;
  v44 = v35;
  v39 = v52;
  v41 = v50;
  v40 = v51;
  v42 = v54;
  sub_10019DA6C(v52, v51, v50, v29, v48, v32, v47, v46, v44, v31, sub_1001AB4D8, v38);

  sub_100011E48(v39, v40);

  sub_100011F00(v31, &qword_1002288B0, &qword_1001D5FC0);
  return (*(v37 + 8))(v41, v56);
}

void sub_10019E67C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1001CFBE0().super.isa;
  }

  v7 = isa;
  (*(a4 + 16))(a4, a1);
}

uint64_t sub_10019E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v4 = sub_1001D0E50();
    v5 = sub_1001D1DE0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "could not retain client bundle identifier";
      goto LABEL_6;
    }
  }

  else
  {
    v4 = sub_1001D0E50();
    v5 = sub_1001D1DE0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "could not get client bundle identifier";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  return 0;
}

uint64_t sub_10019E8BC(uint64_t (*a1)(uint64_t, unint64_t))
{
  v3 = sub_1001D07A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(0, 0xF000000000000000);
  }

  v7 = (v1 + *((swift_isaMask & *v1) + 0x68));
  v8 = *sub_100024DC8(v7, v7[3]) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_structuredRequestFactoriesBySetup;
  os_unfair_lock_lock(v8);
  sub_1001BAFA0((v8 + 8), &v14);
  os_unfair_lock_unlock(v8);
  sub_1001D0790();
  sub_1001B0458(&qword_10022FC40, &type metadata accessor for TC2TrustedRequestFactoriesMetadata, &protocol conformance descriptor for TC2TrustedRequestFactoriesMetadata);
  sub_1001B0458(&qword_10022FC48, &type metadata accessor for TC2TrustedRequestFactoriesMetadata, &protocol conformance descriptor for TC2TrustedRequestFactoriesMetadata);
  v9 = sub_1001D07B0();
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  a1(v9, v11);
  return sub_100011E48(v9, v11);
}

uint64_t sub_10019EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, unint64_t), uint64_t a5)
{
  v11 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  if ((sub_10019D1AC(2u) & 1) == 0)
  {
    return a4(0, 0xF000000000000000);
  }

  v14 = sub_1001D1BA0();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;
  v15[9] = a5;
  v16 = v5;

  sub_10015C9F4(0, 0, v13, &unk_1001E1588, v15);
}

uint64_t sub_10019EC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_10019EC98, 0, 0);
}

uint64_t sub_10019EC98()
{
  v1 = (v0[2] + *((swift_isaMask & *v0[2]) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_10019ED68;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_100075244(v5, v3, v4);
}

uint64_t sub_10019ED68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_10019EE68, 0, 0);
}

uint64_t sub_10019EE68()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  (*(v0 + 48))(v2, v1);
  sub_10002683C(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10019EEEC(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = sub_1001D17D0();
  v9 = v8;
  v10 = sub_1001D1700();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = a1;
  sub_10019EAFC(v7, v9, v10, sub_1001B0614, v11);
}

uint64_t sub_10019EFD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(void), uint64_t a10)
{
  v56 = a6;
  v57 = a7;
  v58 = a3;
  v59 = a4;
  v60 = a2;
  v55 = a1;
  v13 = a9;
  v14 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v48[-v15];
  v17 = type metadata accessor for ThimbledEvent(0);
  __chkstk_darwin(v17);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v54 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v48[-v21];
  if (sub_10019D1AC(2u))
  {
    v52 = a10;
    v53 = a9;
    [*(v10 + *((swift_isaMask & *v10) + 0x70)) auditToken];
    v23 = sub_10019E6F8(v61[0], v61[1], v61[2], v61[3]);
    v25 = v24;
    v26 = sub_10019D1AC(4u);
    if (!v25)
    {
      return (v53)(v26);
    }

    if ((v26 & (a5 != 0)) == 1)
    {

      v25 = a5;
    }

    else
    {
      v59 = v23;
    }

    v28 = v60;
    v13 = v53;
    if ((a8 & 1) == 0)
    {
      v39 = sub_1001D1BA0();
      (*(*(v39 - 8) + 56))(v16, 1, 1, v39);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v41 = v55;
      v40[4] = v10;
      v40[5] = v41;
      v40[6] = v28;
      v42 = v59;
      v40[7] = v58;
      v40[8] = v42;
      v43 = v56;
      v40[9] = v25;
      v40[10] = v43;
      v40[11] = v57;
      v40[12] = v13;
      v40[13] = v52;

      v44 = v10;

      sub_10015C9F4(0, 0, v16, &unk_1001E1570, v40);
    }

    v29 = (v10 + *((swift_isaMask & *v10) + 0x68));
    v30 = *sub_100024DC8(v29, v29[3]);

    v31 = v58;

    v51 = v30;
    v32 = sub_1001D0E50();
    v33 = sub_1001D1E00();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61[0] = v50;
      *v34 = 136315394;
      v49 = v33;
      v35 = v55;
      *(v34 + 4) = sub_1000954E0(v55, v60, v61);
      *(v34 + 12) = 2080;
      v36 = sub_1001D1710();
      v38 = sub_1000954E0(v36, v37, v61);

      *(v34 + 14) = v38;
      v31 = v58;
      _os_log_impl(&_mh_execute_header, v32, v49, "event stream prewarm workloadType=%s workloadParameters=%s", v34, 0x16u);
      swift_arrayDestroy();
      v13 = v53;

      v28 = v60;
    }

    else
    {

      v35 = v55;
    }

    *v19 = v35;
    v19[1] = v28;
    v45 = v59;
    v19[2] = v31;
    v19[3] = v45;
    v46 = v56;
    v47 = v57;
    v19[4] = v25;
    v19[5] = v46;
    v19[6] = v47;
    swift_storeEnumTagMultiPayload();

    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();
    (*(v54 + 8))(v22, v20);
  }

  return v13();
}

uint64_t sub_10019F530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(sub_10019F570, 0, 0);
}

uint64_t sub_10019F570()
{
  v1 = (v0[2] + *((swift_isaMask & *v0[2]) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10019F648;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return sub_100073C9C(v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_10019F648(uint64_t a1, unint64_t a2)
{

  sub_10002683C(a1, a2);

  return _swift_task_switch(sub_10019F758, 0, 0);
}

uint64_t sub_10019F758()
{
  (*(v0 + 80))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019F7BC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = sub_1001D17D0();
  v13 = v12;
  v14 = sub_1001D1700();
  if (a5)
  {
    v15 = sub_1001D17D0();
    a5 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_1001D17D0();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  v21 = a1;
  sub_10019EFD8(v11, v13, v14, v15, a5, v17, v19, a7, sub_1001B061C, v20);
}

uint64_t sub_10019F914(uint64_t (*a1)(void *), uint64_t a2)
{
  v5 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v8 = sub_1001D1BA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_10015C9F4(0, 0, v7, &unk_1001E1558, v9);
}

uint64_t sub_10019FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10019FA7C, 0, 0);
}

uint64_t sub_10019FA7C()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_10019FB40;

  return sub_1001CD194();
}

uint64_t sub_10019FB40(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10019FC40, 0, 0);
}

uint64_t sub_10019FC40()
{
  (*(v0 + 24))(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019FD1C(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return (a1)(_swiftEmptyArrayStorage);
  }

  v6 = (v3 + *((swift_isaMask & *v3) + 0x68));
  sub_100024DC8(v6, v6[3]);
  a3();
  a1();
}

uint64_t sub_10019FE10(void *a1, int a2, void *aBlock, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  sub_10019FD1C(a5, v10, a6);
}

uint64_t sub_10019FEA4(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(0);
  }

  v8 = sub_1001D1BA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_10015C9F4(0, 0, v7, &unk_1001E1548, v9);
}

uint64_t sub_10019FFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A0008, 0, 0);
}

uint64_t sub_1001A0008()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001A00CC;

  return sub_1001CE534();
}

uint64_t sub_1001A00CC(char a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1001A01CC, 0, 0);
}

uint64_t sub_1001A01CC()
{
  (*(v0 + 24))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A0268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void, unint64_t), uint64_t a7)
{
  v15 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  if ((sub_10019D1AC(3u) & 1) == 0)
  {
    return a6(0, 0xF000000000000000);
  }

  v18 = sub_10019D1AC(4u);
  v30 = a6;
  if (v18)
  {
    v19 = a2;
    if (a2)
    {
LABEL_11:
      v25 = sub_1001D1BA0();
      (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = a5 & 1;
      *(v26 + 40) = v7;
      *(v26 + 48) = a1;
      *(v26 + 56) = v19;
      *(v26 + 64) = a3;
      v27 = v30;
      *(v26 + 72) = a4;
      *(v26 + 80) = v27;
      *(v26 + 88) = a7;

      v28 = v7;
      sub_10015C9F4(0, 0, v17, &unk_1001E1528, v26);
    }

LABEL_10:
    [*(v7 + *((swift_isaMask & *v7) + 0x70)) auditToken];
    a1 = sub_10019E6F8(v31, v32, v33, v34);
    v19 = v24;
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v21 = sub_1001D0E50();
  v22 = sub_1001D1E00();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "attempt to set bundleIdentifierOverride without entitlement rejected", v23, 2u);
  }

  return v30(0, 0xF000000000000000);
}

uint64_t sub_1001A0514(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 184) = a4;
  v9 = sub_1001CFD60();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1001A05F0, 0, 0);
}

uint64_t sub_1001A05F0()
{
  v1 = *(v0 + 184);
  v2 = (*(v0 + 48) + *((swift_isaMask & **(v0 + 48)) + 0x68));
  v3 = sub_100024DC8(v2, v2[3]);
  *(v0 + 128) = v3;
  if (v1 == 1)
  {
    v4 = *(*v3 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v0 + 136) = v4;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v5 = sub_1001A06F8;
    v6 = v4;
  }

  else
  {
    v6 = *(*(v0 + 48) + *((swift_isaMask & **(v0 + 48)) + 0x88));
    *(v0 + 152) = v6;
    v5 = sub_1001A09BC;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001A06F8()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  swift_beginAccess();
  v9 = sub_1000EA074(v2, v8, v7, v6, v5);
  swift_endAccess();
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;
  *(v10 + 24) = v2;
  v0[18] = sub_1000FC050(sub_1000FCE6C, v10, v9);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1001A0830, 0, 0);
}

uint64_t sub_1001A0830()
{
  *(v0 + 40) = *(v0 + 144);
  sub_100011AC0(&qword_10022CB18, &qword_1001E1530);
  sub_100024B78(&qword_10022CB20, &qword_10022CB18, &qword_1001E1530, &protocol conformance descriptor for <A> [A]);
  sub_1001AAF48(&qword_10022CB28, &qword_10022CB30, &protocol conformance descriptor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for <A> [A]);
  sub_1001AAF48(&qword_10022CB38, &qword_10022CB40, &protocol conformance descriptor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for <A> [A]);
  v1 = sub_1001D07B0();
  v3 = v2;

  (*(v0 + 88))(v1, v3);
  sub_10002683C(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A09BC()
{
  v1 = sub_10019B804();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1001A0A74;
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  return sub_1000FC254(v6, v5, v3, v4, v1 & 1);
}

uint64_t sub_1001A0A74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;

  return _swift_task_switch(sub_1001A0B74, 0, 0);
}

uint64_t sub_1001A0B74()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  (*(v0 + 88))(v2, v1);
  sub_10002683C(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(void, unint64_t), uint64_t a7)
{
  v15 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v22 - v16;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a6(0, 0xF000000000000000);
  }

  v18 = sub_1001D1BA0();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v7;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = a3;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5 & 1;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;

  v20 = v7;

  sub_10015C9F4(0, 0, v17, &unk_1001E1518, v19);
}

uint64_t sub_1001A0DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v11;
  *(v8 + 64) = v12;
  *(v8 + 96) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return _swift_task_switch(sub_1001A0E18, 0, 0);
}

uint64_t sub_1001A0E18()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1001A0EEC;
  v3 = *(v0 + 96);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_1000FC254(v7, v6, v4, v5, v3);
}

uint64_t sub_1001A0EEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_1001A0FEC, 0, 0);
}

uint64_t sub_1001A0FEC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  (*(v0 + 56))(v2, v1);
  sub_10002683C(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A10C0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a3)
  {
    v15 = sub_1001D17D0();
    a3 = v16;
    if (a4)
    {
LABEL_3:
      v17 = sub_1001D17D0();
      a4 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = a1;
  a9(v15, a3, v17, a4, a5, a8, v19);
}

uint64_t sub_1001A11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), double a9, double a10, double a11, uint64_t a12)
{
  v34 = a5;
  v23 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v23 - 8);
  v25 = &v33 - v24;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a8();
  }

  v26 = sub_1001D1BA0();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = swift_allocObject();
  v28 = a7;
  v29 = v27;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v12;
  *(v27 + 40) = a1;
  *(v27 + 48) = a2;
  *(v27 + 56) = a3;
  v30 = v34;
  *(v27 + 64) = a4;
  *(v27 + 72) = v30;
  *(v27 + 80) = a6;
  *(v27 + 88) = v28;
  *(v27 + 96) = a9;
  *(v27 + 104) = a10;
  *(v27 + 112) = a11;
  *(v27 + 120) = a8;
  *(v27 + 128) = a12;

  v31 = v12;

  sub_10015C9F4(0, 0, v25, &unk_1001E1500, v29);
}

uint64_t sub_1001A1388(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 128) = v19;
  *(v11 + 136) = v20;
  *(v11 + 112) = a2;
  *(v11 + 120) = a3;
  *(v11 + 104) = a1;
  *(v11 + 96) = v18;
  *(v11 + 80) = v17;
  *(v11 + 64) = a10;
  *(v11 + 72) = a11;
  *(v11 + 48) = a8;
  *(v11 + 56) = a9;
  *(v11 + 40) = a7;
  *(v11 + 144) = type metadata accessor for RateLimitConfiguration(0);
  *(v11 + 152) = swift_task_alloc();
  v12 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  *(v11 + 160) = v12;
  *(v11 + 168) = *(v12 - 8);
  *(v11 + 176) = swift_task_alloc();
  *(v11 + 184) = swift_task_alloc();
  *(v11 + 192) = swift_task_alloc();
  v13 = sub_1001D05B0();
  *(v11 + 200) = v13;
  *(v11 + 208) = *(v13 - 8);
  *(v11 + 216) = swift_task_alloc();
  v14 = sub_1001CFD60();
  *(v11 + 224) = v14;
  *(v11 + 232) = *(v14 - 8);
  *(v11 + 240) = swift_task_alloc();
  *(v11 + 248) = type metadata accessor for RateLimitTimingDetails(0);
  *(v11 + 256) = swift_task_alloc();
  *(v11 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_1001A15BC, 0, 0);
}

uint64_t sub_1001A15BC()
{
  v35 = *(v0 + 256);
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v36 = *(v0 + 160);
  v37 = *(v0 + 184);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v33 = *(v0 + 168);
  v34 = *(v0 + 96);
  v7 = (*(v0 + 40) + *((swift_isaMask & **(v0 + 40)) + 0x68));
  v8 = sub_100024DC8(v7, v7[3]);
  v9 = *v8;
  *(v0 + 272) = *v8;

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v42 = v9;
  (*(v2 + 16))(v1, v9 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config, v3);
  *v35 = v34;
  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  sub_1001D0510();
  sub_1001D0210();
  v10 = *(v33 + 8);
  v10(v4, v36);
  if (*(v0 + 16) < v6)
  {
    v6 = *(v0 + 16);
  }

  *(v35 + 8) = v6;
  sub_1001D04A0();
  sub_1001D0210();
  v10(v37, v36);
  sub_1001CFCE0();
  if (v5 == 0.0)
  {
    v11 = *(v0 + 232);
    v40 = *(v0 + 240);
    v12 = *(v0 + 216);
    v38 = *(v0 + 224);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);
    sub_1001D0490();
    sub_1001D0210();
    v10(v15, v16);
    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v40, v38);
    v17 = *(v0 + 32);
  }

  else
  {
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 224);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    (*(v19 + 8))(v18, v20);
    v17 = *(v0 + 120);
  }

  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = 1.0;
  if (v17 <= 1.0)
  {
    v27 = v17;
  }

  v28 = v17 < 0.0;
  v29 = 0.0;
  if (!v28)
  {
    v29 = v27;
  }

  v39 = *(v0 + 64);
  v41 = *(v0 + 48);
  *(v21 + *(*(v0 + 248) + 28)) = v6 * v29;
  sub_1001B0368(v21, v22, type metadata accessor for RateLimitTimingDetails);
  sub_1001AFCB4(v22, v23 + *(v24 + 20), type metadata accessor for RateLimitTimingDetails);
  *v23 = v41;
  *(v23 + 16) = v39;
  *(v23 + 32) = v26;
  *(v23 + 40) = v25;
  *(v23 + 48) = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter;
  *(v0 + 280) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter;
  v31 = *(v42 + v30);
  *(v0 + 288) = v31;

  return _swift_task_switch(sub_1001A1980, v31, 0);
}

uint64_t sub_1001A1980()
{
  sub_1000EE0E8(*(v0 + 152));

  return _swift_task_switch(sub_1001A19EC, 0, 0);
}

uint64_t sub_1001A19EC()
{
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_1001A1A80;

  return sub_1000ED278();
}

uint64_t sub_1001A1A80()
{

  return _swift_task_switch(sub_1001A1B7C, 0, 0);
}

uint64_t sub_1001A1B7C(__n128 a1)
{
  v2 = v1[33];
  v3 = v1[16];
  sub_1001AFB98(v1[19], type metadata accessor for RateLimitConfiguration);
  v4 = sub_1001AFB98(v2, type metadata accessor for RateLimitTimingDetails);
  v3(v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1001A1C94(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, double a8, double a9, double a10)
{
  v18 = _Block_copy(aBlock);
  if (a3)
  {
    v19 = sub_1001D17D0();
    a3 = v20;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v19 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = sub_1001D17D0();
  a4 = v22;
  if (a5)
  {
LABEL_4:
    v23 = sub_1001D17D0();
    a5 = v24;
    goto LABEL_8;
  }

LABEL_7:
  v23 = 0;
LABEL_8:
  v25 = a1;
  v26 = swift_allocObject();
  *(v26 + 16) = v18;
  sub_1001A11CC(v19, a3, v21, a4, v23, a5, a6, sub_1001B061C, a8, a9, a10, v26);
}

uint64_t sub_1001A1E04(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1();
  }

  v8 = sub_1001D1BA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_10015C9F4(0, 0, v7, &unk_1001E14F0, v9);
}

uint64_t sub_1001A1F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A1F64, 0, 0);
}

uint64_t sub_1001A1F64()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001A2038;

  return sub_1000F203C();
}

uint64_t sub_1001A2038()
{

  return _swift_task_switch(sub_1001A2134, 0, 0);
}

uint64_t sub_1001A2134()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A21CC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1001A2260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A2284, 0, 0);
}

uint64_t sub_1001A2284()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001A2348;

  return sub_100109090();
}

uint64_t sub_1001A2348(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1001B0598, 0, 0);
}

uint64_t sub_1001A2484(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t (*a5)(void, unint64_t), uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  sub_1001A2520(a5, v12, a6, a7);
}

uint64_t sub_1001A2520(uint64_t (*a1)(void, unint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a1(0, 0xC000000000000000);
  }

  v11 = sub_1001D1BA0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v4;

  sub_10015C9F4(0, 0, v10, a4, v12);
}

uint64_t sub_1001A2658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001A267C, 0, 0);
}

uint64_t sub_1001A267C()
{
  v1 = (*(v0 + 16) + *((swift_isaMask & **(v0 + 16)) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001A2740;

  return sub_10010BA44();
}

uint64_t sub_1001A2740(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1001A2840, 0, 0);
}

uint64_t sub_1001A2840()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  (*(v0 + 24))(v2, v1);
  sub_100011E48(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001A2900(uint64_t a1, unint64_t a2, uint64_t (*a3)(void, unint64_t), uint64_t a4)
{
  v9 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  if ((sub_10019D1AC(0) & 1) == 0)
  {
    return a3(0, 0xC000000000000000);
  }

  v12 = sub_1001D1BA0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  sub_100012038(a1, a2);

  sub_10015C9F4(0, 0, v11, &unk_1001E14A8, v13);
}

uint64_t sub_1001A2A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1001A2A8C, 0, 0);
}

uint64_t sub_1001A2A8C()
{
  v1 = (v0[2] + *((swift_isaMask & *v0[2]) + 0x68));
  sub_100024DC8(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1001A2B58;
  v4 = v0[3];
  v3 = v0[4];

  return sub_10010BDB4(v4, v3);
}

uint64_t sub_1001A2B58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;

  return _swift_task_switch(sub_1001A2C58, 0, 0);
}

uint64_t sub_1001A2C58()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  (*(v0 + 40))(v2, v1);
  sub_100011E48(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1001A2CDC(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = a3;
  v12 = a1;
  v8 = sub_1001CFC00();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_1001A2900(v8, v10, sub_1001AA65C, v11);

  sub_100011E48(v8, v10);
}

id sub_1001A2DF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A2E2C(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0x60);
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  sub_100011CF0(&a1[*((swift_isaMask & *a1) + 0x68)]);

  sub_100011CF0(&a1[*((swift_isaMask & *a1) + 0x78)]);
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x80)]);

  return sub_100011F00(&a1[*((swift_isaMask & *a1) + 0x90) + 8], &qword_10022FF68, &unk_1001E1CA8);
}

char *sub_1001A2FF4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_10022FC38, &unk_1001E1490);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1001A3024(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v131 = a3;
  v122 = sub_1001CFD60();
  v126 = *(v122 - 8);
  v7 = __chkstk_darwin(v122);
  v121 = v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v120 = v105 - v9;
  v10 = sub_100011AC0(&qword_10022FCA8, &qword_1001E1638);
  v117 = *(v10 - 8);
  __chkstk_darwin(v10);
  v125 = v105 - v11;
  v12 = sub_100011AC0(&qword_10022FCB0, &qword_1001E1640);
  v13 = __chkstk_darwin(v12 - 8);
  v124 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = (v105 - v15);
  v16 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  __chkstk_darwin(v16 - 8);
  v116 = (v105 - v17);
  v18 = sub_1001D0720();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v112 = v105 - v24;
  v25 = __chkstk_darwin(v23);
  v111 = v105 - v26;
  v27 = __chkstk_darwin(v25);
  v118 = v105 - v28;
  __chkstk_darwin(v27);
  v30 = v105 - v29;
  result = sub_100006598(a2);
  if ((v32 & 1) == 0)
  {
    return result;
  }

  v119 = v10;
  v113 = v19;
  v33 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  v130[0] = *a1;
  if (!isUniquelyReferenced_nonNull_native)
  {
LABEL_56:
    sub_1000110EC();
    v35 = v130[0];
  }

  v36 = *(v35 + 48);
  v37 = sub_1001CFDA0();
  (*(*(v37 - 8) + 8))(v36 + *(*(v37 - 8) + 72) * v33, v37);
  v38 = *(*(v35 + 56) + 8 * v33);
  sub_10001A494(v33, v35);
  *a1 = v35;
  sub_1001B8A00(v30);
  sub_1001985C8(v30);
  v41 = a1[1];
  v40 = a1 + 1;
  v39 = v41;
  v42 = *(v41 + 24);
  v108 = v4;
  if (v42 >= 5)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    v67 = v113;
    if ((result & 1) == 0)
    {
      result = sub_1001190FC();
    }

    v68 = *v40;
    v69 = *(*v40 + 24);
    v70 = __OFSUB__(v69, 1);
    v71 = v69 - 1;
    if (v70)
    {
      __break(1u);
    }

    else
    {
      v72 = *(v67 + 32);
      v73 = *(v68 + 4) + v71;
      v74 = *(v68 + 2);
      if (v73 < v74)
      {
        v74 = 0;
      }

      v75 = &v68[((*(v67 + 80) + 40) & ~*(v67 + 80)) + (v73 - v74) * *(v67 + 72)];
      v76 = v118;
      result = v72(v118, v75, v18);
      v77 = *(v68 + 3);
      v70 = __OFSUB__(v77, 1);
      v78 = v77 - 1;
      if (!v70)
      {
        *(v68 + 3) = v78;
        v79 = v76;
        v80 = v22;
        v81 = v38;
        v82 = v116;
        v72(v116, v79, v18);
        v43 = v113;
        (*(v113 + 56))(v82, 0, 1, v18);
        v83 = v82;
        v38 = v81;
        v22 = v80;
        sub_100011F00(v83, &qword_100228AF0, &qword_1001E1630);
        v39 = v68;
        v42 = *(v68 + 3);
        if (v42)
        {
          goto LABEL_5;
        }

LABEL_25:
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v85 = *v40;
        if (*(*v40 + 16) < 1 || (v84 & 1) == 0)
        {
          sub_1000F7E00(v84, 1, 0);
          v85 = *v40;
        }

        sub_1000F82AC((v85 + 16), v85 + ((*(v43 + 80) + 40) & ~*(v43 + 80)), v30);

        return (*(v43 + 8))(v30, v18);
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v43 = v113;
  if (!v42)
  {
    goto LABEL_25;
  }

LABEL_5:
  v115 = v22;
  v105[1] = v38;
  v106 = v40;
  v44 = *(v39 + 4);
  v45 = v44 + v42;
  if (*(v39 + 2) >= v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = *(v39 + 2);
  }

  v110 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v118 = (v117 + 7);
  v109 = (v43 + 16);
  v127 = v39;
  v128 = v44;
  v129 = v46;
  v131 = (v43 + 32);
  v114 = (v126 + 8);
  v116 = (v43 + 8);
  v117 += 6;
  v107 = v39;

  v126 = 0;
  v22 = v120;
  while (1)
  {
    v4 = v119;
    v33 = v125;
    if (v44 == v46)
    {
      if ((sub_1000FA2C0(v47) & 1) == 0)
      {
        v56 = 1;
        v55 = v124;
        goto LABEL_15;
      }

      v44 = v128;
    }

    v128 = v44 + 1;
    v48 = v113;
    v49 = v112;
    (*(v113 + 16))(v112, &v127[v110 + *(v113 + 72) * v44], v18);
    v50 = *(v48 + 32);
    v51 = v111;
    v52 = v49;
    a1 = v131;
    v50(v111, v52, v18);
    v53 = *(v4 + 48);
    v54 = v126;
    *v33 = v126;
    v50((v33 + v53), v51, v18);
    v126 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    v55 = v124;
    sub_1000DBEF4(v33, v124, &qword_10022FCA8, &qword_1001E1638);
    v56 = 0;
LABEL_15:
    (*v118)(v55, v56, 1, v4);
    v57 = v55;
    v58 = v123;
    sub_1000DBEF4(v57, v123, &qword_10022FCB0, &qword_1001E1640);
    if ((*v117)(v58, 1, v4) == 1)
    {
      v86 = v18;

      v87 = *(v107 + 3);
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_59;
      }

      v89 = v106;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v91 = *v89;
      if (*(*v89 + 16) < v88 || (v90 & 1) == 0)
      {
        sub_1000F7E00(v90, v88, 0);
        v91 = *v89;
      }

      sub_1000F82AC((v91 + 16), v91 + v110, v30);

      return (*v116)(v30, v86);
    }

    v59 = *v58;
    v60 = v115;
    (*v131)(v115, v58 + *(v4 + 48), v18);
    v61 = v30;
    sub_1001D0710();
    v62 = v121;
    sub_1001D0710();
    v63 = sub_1001CFCC0();
    v64 = *v114;
    v65 = v62;
    v66 = v122;
    (*v114)(v65, v122);
    result = (v64)(v22, v66);
    if (v63)
    {
      break;
    }

    v47 = (*v116)(v60, v18);
    v44 = v128;
    v46 = v129;
    v30 = v61;
  }

  if (v59 < 0)
  {
    goto LABEL_60;
  }

  v92 = *(v107 + 3);
  v93 = v106;
  v94 = v115;
  if (v92 >= v59)
  {
    v95 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      goto LABEL_62;
    }

    v96 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    v97 = *v93;
    if (*(*v93 + 16) < v95 || (result & 1) == 0)
    {
      result = sub_1000F7E00(result, v95, 0);
      v97 = *v93;
    }

    v98 = v97 + v110;
    if (v59)
    {
      if (v59 == v97[3])
      {
        sub_1001A3AF4(v61, v97 + 2, v98);
        goto LABEL_52;
      }

LABEL_47:

      sub_1001A3CFC(1uLL, v59, v97 + 2, v98, v130);
      result = v130[0];
      if (!v130[0])
      {
        goto LABEL_65;
      }

      (*v109)(v130[0], v61, v96);
    }

    else
    {
      v99 = v97[4];
      if (v99)
      {
        v100 = v99 - 1;
        if (__OFSUB__(v99, 1))
        {
          __break(1u);
          goto LABEL_47;
        }
      }

      else
      {
        v101 = v97[2];
        v100 = v101 - 1;
        if (__OFSUB__(v101, 1))
        {
          goto LABEL_64;
        }
      }

      result = (*(v113 + 16))(v98 + v100 * *(v113 + 72), v61, v96);
      v97[4] = v100;
      v102 = v97[3];
      v70 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v70)
      {
        goto LABEL_63;
      }

      v97[3] = v103;
LABEL_52:
    }

    v104 = *v116;
    (*v116)(v94, v96);

    return v104(v61, v96);
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1001A3AF4(uint64_t result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *a2);
      if (v5 < *a2 || (v5 -= *a2, !v9))
      {
LABEL_9:
        v10 = sub_1001D0720();
        result = (*(*(v10 - 8) + 16))(a3 + *(*(v10 - 8) + 72) * v5, v8, v10);
        v11 = a2[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          a2[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *a2);
      v5 += *a2;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t *sub_1001A3BB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1001A6F0C(v9, a2, a3, a4, a5);
    v11 = v10;

    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

unint64_t sub_1001A3C70(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A3CFC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a3[1];
  v9 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    __break(1u);
    goto LABEL_167;
  }

  v12 = result;
  v13 = a3[2];
  if (v9 <= a2)
  {
    goto LABEL_10;
  }

  v6 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v14 = v13 - result;
  if (__OFADD__(v13, v6))
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v6 < 0)
  {
LABEL_25:
    v8 = *a3;
    if (v14 < 0)
    {
      v15 = __OFADD__(v14, v8);
      v14 += v8;
      if (v15)
      {
        goto LABEL_184;
      }
    }

LABEL_27:
    v19 = v13 + a2;
    if (v13 + a2 >= v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = 0;
    }

    v9 = v19 - v20;
    v21 = v19 - v20 + v6;
    if (!__OFADD__(v19 - v20, v6))
    {
      if (v6 < 0)
      {
        goto LABEL_47;
      }

      v22 = __OFSUB__(v21, v8);
      if (v21 < v8)
      {
        goto LABEL_49;
      }

      v21 -= v8;
      if (!v22)
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v8 = *a3;
  v15 = __OFSUB__(v14, *a3);
  if (v14 < *a3)
  {
    goto LABEL_27;
  }

  v14 -= *a3;
  if (!v15)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_10:
  v5 = v13 + v8;
  if (__OFADD__(v13, v8))
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v16 = __OFSUB__(v5, *a3);
    if (v5 < *a3)
    {
      goto LABEL_18;
    }

    v5 -= *a3;
    if (!v16)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (v5 < 0)
  {
    v15 = __OFADD__(v5, *a3);
    v5 += *a3;
    if (v15)
    {
      goto LABEL_183;
    }
  }

LABEL_18:
  v15 = __OFADD__(v8, result);
  v17 = v8 + result;
  if (v15)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v14 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v8 = *a3;
    v18 = __OFSUB__(v14, *a3);
    if (v14 < *a3)
    {
      goto LABEL_38;
    }

    v14 -= *a3;
    if (!v18)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_36:
  v8 = *a3;
  if (v14 < 0)
  {
    v15 = __OFADD__(v14, v8);
    v14 += v8;
    if (v15)
    {
      goto LABEL_185;
    }
  }

LABEL_38:
  v23 = v13 + a2;
  if (v13 + a2 >= v8)
  {
    v24 = v8;
  }

  else
  {
    v24 = 0;
  }

  v21 = v23 - v24;
  v13 = v23 - v24 + result;
  if (__OFADD__(v23 - v24, result))
  {
    goto LABEL_173;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v25 = __OFSUB__(v13, v8);
    if (v13 < v8)
    {
      goto LABEL_75;
    }

    v13 -= v8;
    if (!v25)
    {
      goto LABEL_75;
    }

    __break(1u);
LABEL_47:
    if (v21 < 0)
    {
      v15 = __OFADD__(v21, v8);
      v21 += v8;
      if (v15)
      {
        goto LABEL_186;
      }
    }

LABEL_49:
    if (v9 <= 0)
    {
      v26 = v8;
    }

    else
    {
      v26 = v9;
    }

    if (v21 <= 0)
    {
      v27 = v8;
    }

    else
    {
      v27 = v21;
    }

    if (v26 >= v13)
    {
      if (v27 < v14)
      {
        v31 = v8 - v14;
        if (__OFSUB__(v8, v14))
        {
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        if (v31 <= 0)
        {
          goto LABEL_127;
        }

        v32 = *(*(sub_1001D0720() - 8) + 72);
        result = a4 + v32 * v14;
        if (v32 * v14 >= v32 * v13 && result < a4 + v32 * v13 + v32 * v31)
        {
          if (v32 * v14 == v32 * v13)
          {
            goto LABEL_127;
          }

          goto LABEL_72;
        }

        goto LABEL_126;
      }

      if (a2 <= 0)
      {
        goto LABEL_133;
      }

      v40 = *(*(sub_1001D0720() - 8) + 72);
      result = a4 + v40 * v14;
      if (v40 * v14 >= v40 * v13 && result < a4 + v40 * v13 + v40 * a2)
      {
        if (v40 * v14 == v40 * v13)
        {
LABEL_133:
          a3[2] = v14;
          v50 = a3[1];
          v15 = __OFADD__(v50, v12);
          v51 = v50 + v12;
          if (!v15)
          {
            a3[1] = v51;
            if (v9 <= 0)
            {
              v52 = *a3;
            }

            else
            {
              v52 = v9;
            }

LABEL_165:
            result = sub_1001A4500(v21, v52, a3, a4, v61);
            v59 = v62;
            v60 = v61[1];
            *a5 = v61[0];
            *(a5 + 16) = v60;
            *(a5 + 32) = v59;
            return result;
          }

          goto LABEL_174;
        }

LABEL_131:
        result = swift_arrayInitWithTakeBackToFront();
        goto LABEL_133;
      }
    }

    else
    {
      v28 = v8 - v13;
      v29 = __OFSUB__(v8, v13);
      if (v27 < v14)
      {
        if (v29)
        {
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (v28 > 0)
        {
          v30 = *(*(sub_1001D0720() - 8) + 72);
          result = a4 + v30 * v14;
          if (v30 * v14 < v30 * v13 || result >= a4 + v30 * v13 + v30 * v28)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 * v14 != v30 * v13)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v12 < 1)
        {
          goto LABEL_127;
        }

        v43 = *a3 + v6;
        result = sub_1001D0720();
        v44 = *(*(result - 8) + 72);
        v45 = v44 * v43;
        if (((v44 * v43) & 0x8000000000000000) == 0 && v45 < v44 * v12)
        {
          if (v45)
          {
LABEL_72:
            result = swift_arrayInitWithTakeBackToFront();
          }

LABEL_127:
          if (v21 < 1)
          {
            goto LABEL_133;
          }

          result = sub_1001D0720();
          v49 = *(*(result - 8) + 72);
          if (v49 * v12 <= 0 && a4 + v49 * v12 + v49 * v21 > a4)
          {
            if (!(v49 * v12))
            {
              goto LABEL_133;
            }

            goto LABEL_131;
          }

          goto LABEL_132;
        }

LABEL_126:
        result = swift_arrayInitWithTakeFrontToBack();
        goto LABEL_127;
      }

      if (v29)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v28 > 0)
      {
        v38 = *(*(sub_1001D0720() - 8) + 72);
        result = a4 + v38 * v14;
        if (v38 * v14 < v38 * v13 || result >= a4 + v38 * v13 + v38 * v28)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v38 * v14 != v38 * v13)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }
      }

      if (v9 < 1)
      {
        goto LABEL_133;
      }

      v46 = *a3 + v6;
      result = sub_1001D0720();
      v47 = *(*(result - 8) + 72);
      v48 = v47 * v46;
      if (((v47 * v46) & 0x8000000000000000) == 0 && v48 < v47 * v9)
      {
        if (!v48)
        {
          goto LABEL_133;
        }

        goto LABEL_131;
      }
    }

LABEL_132:
    result = swift_arrayInitWithTakeFrontToBack();
    goto LABEL_133;
  }

  if (v13 < 0)
  {
    v15 = __OFADD__(v13, v8);
    v13 += v8;
    if (v15)
    {
      goto LABEL_187;
    }
  }

LABEL_75:
  if (v5 <= 0)
  {
    v33 = v8;
  }

  else
  {
    v33 = v5;
  }

  if (v14 <= 0)
  {
    v34 = v8;
  }

  else
  {
    v34 = v14;
  }

  if (v33 >= v21)
  {
    if (v34 >= v13)
    {
      if (v9 <= 0)
      {
        goto LABEL_161;
      }

      goto LABEL_156;
    }

    if (__OFSUB__(0, result))
    {
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    if (v14 <= 0)
    {
      goto LABEL_149;
    }

    v5 = v8 - result;
    result = sub_1001D0720();
    v37 = *(*(result - 8) + 72);
    if (v37 * v5 <= 0 && a4 + v37 * v5 + v37 * v14 > a4)
    {
      if (v37 * v5)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_149;
    }

LABEL_148:
    result = swift_arrayInitWithTakeFrontToBack();
LABEL_149:
    v15 = __OFSUB__(v9, v14);
    v9 -= v14;
    if (!v15)
    {
      goto LABEL_155;
    }

    __break(1u);
    goto LABEL_152;
  }

  if (v34 >= v13)
  {
    if (v5 > 0)
    {
      result = sub_1001D0720();
      v41 = *(*(result - 8) + 72);
      v42 = v41 * v12;
      if (v41 * v12 < 0 || v42 >= v41 * v5)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v42)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }
    }

    v9 = *a3 - v21;
    if (!__OFSUB__(*a3, v21))
    {
      goto LABEL_155;
    }

    __break(1u);
    goto LABEL_148;
  }

  if (v5 > 0)
  {
    result = sub_1001D0720();
    v35 = *(*(result - 8) + 72);
    v36 = v35 * v12;
    if (v35 * v12 < 0 || v36 >= v35 * v5)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v36)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }
  }

  if (__OFSUB__(0, v12))
  {
    goto LABEL_180;
  }

  if (v12 >= 1)
  {
    v53 = *a3 - v12;
    result = sub_1001D0720();
    v54 = *(*(result - 8) + 72);
    if (v54 * v53 <= 0 && a4 + v54 * v53 + v54 * v12 > a4)
    {
      if (v54 * v53)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      goto LABEL_153;
    }

LABEL_152:
    result = swift_arrayInitWithTakeFrontToBack();
  }

LABEL_153:
  v55 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v9 = v55 - v5;
  if (!__OFSUB__(v55, v5))
  {
LABEL_155:
    if (v9 < 1)
    {
      goto LABEL_161;
    }

LABEL_156:
    v56 = *(*(sub_1001D0720() - 8) + 72);
    result = a4 + v56 * v13;
    if (v56 * v13 < v56 * v21 || result >= a4 + v56 * v21 + v56 * v9)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 * v13 != v56 * v21)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

LABEL_161:
    v57 = a3[1];
    v15 = __OFADD__(v57, v12);
    v58 = v57 + v12;
    if (!v15)
    {
      a3[1] = v58;
      if (v13 <= 0)
      {
        v52 = *a3;
      }

      else
      {
        v52 = v13;
      }

      goto LABEL_165;
    }

    goto LABEL_175;
  }

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
  return result;
}

uint64_t sub_1001A4500@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2;
  v7 = result;
  if (result >= a2)
  {
    v12 = *a3 - result;
    if (!__OFSUB__(*a3, result))
    {
      v14 = a2 == 0;
      if (a2)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }

      v15 = sub_1001D0720();
      v16 = *(v15 - 8);
      result = v15 - 8;
      v10 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = sub_1001D0720();
    v11 = *(v9 - 8);
    result = v9 - 8;
    v10 = v11;
    v12 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      v13 = 0;
      v6 = 0;
      v14 = 1;
LABEL_9:
      *a5 = a4 + *(v10 + 72) * v7;
      *(a5 + 8) = v12;
      *(a5 + 16) = v13;
      *(a5 + 24) = v6;
      *(a5 + 32) = v14;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A45F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000130E0;

  return sub_10016EC78(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1001A46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  *(v8 + 16) = a1;
  v11 = *a8;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_1001A47C4;

  return sub_1001705AC(a2, a3, a4, a5, a6, a7, v11, v19);
}

uint64_t sub_1001A47C4(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1001A48E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = *v18;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001B0610;

  return sub_1001A7578(a4, a5, a6, a7, a8, v13, v19, v20);
}

uint64_t sub_1001A49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001A4AAC;

  return sub_1001A84F0(a4, a5, a6, a7, a8);
}

uint64_t sub_1001A4AAC(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  *(v5 + 8) = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1001A4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_1001A4C80;

  return sub_10017498C(2, a5, a6);
}

uint64_t sub_1001A4C80()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1001A4DC0;
  }

  else
  {
    v2 = sub_1001A4D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A4D94()
{
  if (*(v0 + 32))
  {
    v1 = 65;
  }

  else
  {
    v1 = 64;
  }

  *(*(v0 + 16) + 8) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1001A4DC0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = 65;
  }

  else
  {
    v3 = 64;
  }

  *v2 = v1;
  *(v2 + 8) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1001A4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a1;
  v14 = swift_task_alloc();
  *(v8 + 40) = v14;
  *v14 = v8;
  v14[1] = sub_1001A4ECC;

  return sub_100174E98(v8 + 16, a4, a5, a6, a7, a8, v17);
}

uint64_t sub_1001A4ECC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1001A5014;
  }

  else
  {
    v2 = sub_1001A4FE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A4FE0()
{
  v1 = *(v0 + 32);
  if (*(v0 + 48))
  {
    v2 = 97;
  }

  else
  {
    v2 = 96;
  }

  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1001A5014()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = 97;
  }

  else
  {
    v3 = 96;
  }

  *v2 = v1;
  *(v2 + 8) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1001A5044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = sub_100024DC8(a4, a4[3]);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1001B0610;

  return sub_1001ACFBC(v7, a5);
}

uint64_t sub_1001A50F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D20D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D10E0();
  v16[3] = v8;
  v16[4] = &off_10021DF88;
  v9 = sub_10003B47C(v16);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v7, v4);
  v10 = v15[3];
  v11 = v15[4];
  v12 = (a2 + *(*a2 + 144));
  os_unfair_lock_lock(v12);
  v13 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10015DD28(v12 + *(v13 + 28), v10, v11, v16);
  os_unfair_lock_unlock(v12);
  return sub_100011CF0(v16);
}

uint64_t sub_1001A5348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1001B059C;

  return sub_100184730(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001A5434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 104) = v12;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 33) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  return _swift_task_switch(sub_1001A5474, 0, 0);
}

uint64_t sub_1001A5474()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 33);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  *(v6 + 56) = v7;
  *(v6 + 72) = v8;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v11 = sub_100011AC0(&qword_10022FDC0, &qword_1001E18A8);
  *v10 = v0;
  v10[1] = sub_1001A55BC;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 16, &unk_1001E1938, v6, sub_1001AE40C, v9, 0, 0, v11);
}

uint64_t sub_1001A55BC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v2 + 32);
    *v5 = *(v2 + 16);
    *(v5 + 16) = v6;
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_1001A570C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1001A5800;

  return v5(v2 + 16);
}

uint64_t sub_1001A5800()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001A591C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1001A5A10;

  return sub_100187310(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1001A5A10(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3 & 1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1001A5B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_1001A5C34;

  return sub_100187BA4(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001A5C34(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1001A5D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_1001A5E24;

  return sub_100188594(a4, a5, a6, a7, a8);
}

uint64_t sub_1001A5E24(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1001A5F24, 0, 0);
}

uint64_t sub_1001A5F24()
{
  v1 = *(v0 + 16);
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  return (*(v0 + 8))();
}

uint64_t sub_1001A5F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = sub_1001B059C;

  return sub_1001A9B60(a4, a5, a6, v9, a8, v17, v18, v19);
}

uint64_t sub_1001A6040(void *a1, uint64_t a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1001A6064, 0, 0);
}

uint64_t sub_1001A6064()
{
  v1 = v0[3];
  v2 = qword_100243500;
  v3 = (v1 + *(type metadata accessor for TrustedRequestConfiguration(0) + 128) + v2);
  v4 = *v3;
  v5 = v3[1];
  sub_1001D1090();
  v6 = sub_1001D1060();
  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1001A61DC;

  return (sub_100138CDC)(v4, v5, v6, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1001A61DC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008F93C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001A632C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1001A6420;

  return v5(v2 + 16);
}

uint64_t sub_1001A6420()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1001A6554(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_10005B61C;

  return sub_100173F34(v9, a5, a6);
}

uint64_t sub_1001A6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10005B61C;

  return sub_10017EFD4(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_1001A66E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_10005B61C;

  return sub_10017F804(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1001A67F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10005B61C;

  return sub_1001766D8(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1001A68C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  *(v3 + 56) = *(a2 + 24);
  return _swift_task_switch(sub_1001A68F8, 0, 0);
}

uint64_t sub_1001A68F8()
{
  v1 = sub_1001A8C38(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  sub_100089C38(v1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A6990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a3;
  v7 = sub_1001D0F80();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v5[2] = *a2;

  return _swift_task_switch(sub_1001A6A60, 0, 0);
}

uint64_t sub_1001A6A60()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_1001D1090();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1001D1080();
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1001A6BDC;
  v8 = v0[3];
  v7 = v0[4];

  return (sub_100138CDC)(v8, v7, v5, 1, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1001A6BDC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001A6D40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001A6D40()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int sub_1001A6DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100011AC0(&qword_100229518, &qword_1001D67D8);
    v3 = sub_1001D2000();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1001D2580();

      sub_1001D1880();
      result = sub_1001D25C0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1001D2470();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1001A6F0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = 0;
  v5 = a4;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v37 = a4 + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    if (*(v5 + 16))
    {
      sub_1001D2580();

      sub_1001D1880();
      v19 = sub_1001D25C0();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_24;
      }

      v22 = ~v20;
      while (1)
      {
        v23 = (*(a4 + 48) + 16 * v21);
        v24 = *v23 == v18 && v23[1] == v17;
        if (v24 || (sub_1001D2470() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v30 = __OFADD__(v34++, 1);
      v10 = v36;
      v5 = a4;
      if (v30)
      {
        __break(1u);
LABEL_29:
        sub_1000F2F48(a1, a2, v34, a3);
        return;
      }
    }

    else
    {

LABEL_24:

      v25 = sub_1001D0E50();
      v26 = sub_1001D1DE0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v27 = 136315394;
        sub_1001CFDA0();
        v32 = v26;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v39 = sub_1001D23A0();
        v40 = v28;
        v42._countAndFlagsBits = 58;
        v42._object = 0xE100000000000000;
        sub_1001D18B0(v42);
        v29 = sub_1000954E0(v39, v40, &v41);

        *(v27 + 4) = v29;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_1000954E0(v18, v17, &v41);
        _os_log_impl(&_mh_execute_header, v25, v32, "%s found workload parameter not in allow list: %s", v27, 0x16u);
        swift_arrayDestroy();
      }

      v10 = v36;
      v5 = a4;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_29;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_1001A735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  swift_bridgeObjectRetain_n();
  v11 = swift_retain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_1001A3BB8(v15, v9, a1, a2, a3);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v11);
  bzero(&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_1001A6F0C((&v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:

  return v13;
}

uint64_t sub_1001A7578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v14;
  v8[12] = v15;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = type metadata accessor for Proto_Ropes_HttpService_InvokeRequest(0);
  v8[17] = swift_task_alloc();
  sub_1001D0F60();
  v8[18] = swift_task_alloc();
  v10 = sub_1001D0F80();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = sub_1001D0ED0();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001A777C, 0, 0);
}

uint64_t sub_1001A777C()
{
  sub_100172AC4(v0[4], v0[5], v0[6], v0[25]);
  v1 = v0[24];
  v2 = v0[23];
  v8 = v0[22];
  v9 = v0[25];
  v11 = v0[17];
  v10 = v0[6];
  v3 = v0[3];
  v0[2] = v0[8];
  sub_1001D0F50();
  type metadata accessor for TrustedRequestConfiguration(0);
  (*(v2 + 16))(v1, v9, v8);

  sub_1001D0F70();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v10;
  sub_1001B0458(&qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest);
  sub_1001D0B50();

  v0[26] = sub_1001A89CC(v11, 0, 1, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &qword_10022ABB8, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeRequest);
  v0[27] = v5;
  v6 = swift_task_alloc();
  v0[28] = v6;
  *v6 = v0;
  v6[1] = sub_1001A7AA4;

  return sub_100175B14();
}

uint64_t sub_1001A7AA4()
{

  return _swift_task_switch(sub_1001A7BA0, 0, 0);
}

uint64_t sub_1001A7BA0()
{
  v7 = *(v0 + 208);
  v1 = *(v0 + 168);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v7;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_1001A7CB8;
  v5 = *(v0 + 200);

  return sub_10015E234(sub_10015E234, v5, &unk_1001E1B18);
}

uint64_t sub_1001A7CB8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1001A8194;
  }

  else
  {
    v2 = sub_1001A7DEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A7DEC()
{
  v1 = v0[10];
  os_unfair_lock_lock((v1 + 16));
  if ((*(v1 + 33) & 1) == 0)
  {
    v2 = *(v1 + 24);
    v22 = *(v1 + 32);
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v1;
    if (v2 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1001D2190())
    {
      v5 = 0;
      v6 = v0[14];
      v27 = (v6 + 48);
      v28 = v2 & 0xC000000000000001;
      v24 = (v6 + 8);
      v25 = (v6 + 16);
      v26 = v3;
      while (v28)
      {
        v7 = sub_1001D2040();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v9 = v0[13];
        v10 = (v7 + *(*v7 + 88));
        os_unfair_lock_lock(v10);
        v11 = *(sub_100011AC0(&qword_10022F1D8, &unk_1001E0860) + 28);
        if (!(*v27)(v10 + v11, 1, v9))
        {
          v12 = v0[15];
          v13 = v2;
          v14 = v0[13];
          (*v25)(v12, v10 + v11, v14);
          sub_1001D1AA0();
          v15 = v14;
          v2 = v13;
          v3 = v26;
          (*v24)(v12, v15);
        }

        os_unfair_lock_unlock(v10);

        ++v5;
        if (v8 == i)
        {
          goto LABEL_16;
        }
      }

      if (v5 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(v2 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    sub_1001AFB84(v2, v22, 0, sub_1001428C4);
    v1 = v23;
    *(v23 + 24) = 0;
    *(v23 + 32) = 256;
  }

  os_unfair_lock_unlock((v1 + 16));
  v16 = swift_task_alloc();
  v0[32] = v16;
  *v16 = v0;
  v16[1] = sub_1001A8080;
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[7];

  return sub_100176AEC(v20, v19, v17, v18);
}

uint64_t sub_1001A8080()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1001A83D4;
  }

  else
  {
    v2 = sub_1001A82B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A8194()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[3];
  sub_100011E48(v0[26], v0[27]);
  sub_1001AFB98(v4, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  (*(v2 + 8))(v1, v3);
  sub_100176514(v5);
  v6 = v0[31];
  (*(v0[23] + 8))(v0[25], v0[22]);

  v7 = v0[1];

  return v7(v6, 1);
}

uint64_t sub_1001A82B0()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[3];
  sub_100011E48(v0[26], v0[27]);
  sub_1001AFB98(v7, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  (*(v5 + 8))(v4, v6);
  sub_100176514(v8);
  (*(v3 + 8))(v1, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A83D4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[3];
  sub_100011E48(v0[26], v0[27]);
  sub_1001AFB98(v4, type metadata accessor for Proto_Ropes_HttpService_InvokeRequest);
  (*(v2 + 8))(v1, v3);
  sub_100176514(v5);
  v6 = v0[33];
  (*(v0[23] + 8))(v0[25], v0[22]);

  v7 = v0[1];

  return v7(v6, 1);
}

uint64_t sub_1001A84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1001A8588;

  return sub_10013F08C(v6);
}

uint64_t sub_1001A8588()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001A897C;
  }

  else
  {
    v2 = sub_1001A869C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1001A869C()
{
  v1 = *(v0 + 48);
  type metadata accessor for TrustedRequestConfiguration(0);
  v4 = *(v0 + 32);
  *(v0 + 16) = 1;
  v6._countAndFlagsBits = sub_1001D23A0();
  sub_1001D18B0(v6);

  *(v0 + 72) = 0xE600000000000000;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v4;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1001A8828;

  JUMPOUT(0x10013A2CCLL);
}

uint64_t sub_1001A8828()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1001A89B0;
  }

  else
  {
    v2 = sub_1001A8998;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A89CC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  a4(0);
  sub_1001B0458(a5, a6, a7);
  v14 = a1;
  v15 = sub_1001D0B00();
  if (!v7)
  {
    v17 = v15;
    v18 = v16;
    v36 = v15;
    v37 = v16;
    if ((a3 & 1) == 0)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v19 = sub_1001A3C70(a2 + 1);
      v20 = sub_1001583E0(v19);
      if (v21 >> 60 != 15)
      {
        v22 = v20;
        v23 = v21;
        sub_1001CFC30();
        sub_10002683C(v22, v23);
        v17 = v36;
        v18 = v37;
      }
    }

    v24 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_21;
      }

      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (!v28)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v33 = (v18 >> 24) & 0xFF000000;
      v35 = xmmword_1001D3A00;
      v25 = BYTE6(v18);
      goto LABEL_24;
    }

    LODWORD(v29) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    v29 = v29;
LABEL_15:
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v29))
    {
      v33 = bswap32(v29);
      v35 = xmmword_1001D3A00;
      if (v24 != 2)
      {
        LODWORD(v25) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_32;
        }

        v25 = v25;
        goto LABEL_24;
      }

      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      v28 = __OFSUB__(v30, v31);
      v25 = v30 - v31;
      if (!v28)
      {
LABEL_24:
        if (!__OFADD__(v25, 4))
        {
          sub_1001CFBA0(v25 + 4);
          v34[3] = &type metadata for UnsafeRawBufferPointer;
          v34[4] = &protocol witness table for UnsafeRawBufferPointer;
          v34[0] = &v33;
          v34[1] = v34;
          sub_100024DC8(v34, &type metadata for UnsafeRawBufferPointer);
          sub_1001CFBB0();
          sub_100011CF0(v34);
          sub_1001CFC30();
          v14 = v35;
          sub_100011E48(v17, v18);
          return v14;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_21:
      v25 = 0;
      v33 = 0;
      v35 = xmmword_1001D3A00;
      goto LABEL_24;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return v14;
}

uint64_t sub_1001A8C38(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v92 = a4;
  v10 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  __chkstk_darwin(v10 - 8);
  v83 = &v76[-v11];
  v12 = sub_1001D0ED0();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = __chkstk_darwin(v12);
  v80 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v84 = &v76[-v16];
  __chkstk_darwin(v15);
  v81 = &v76[-v17];
  v18 = sub_100011AC0(&qword_1002295C0, &qword_1001D6910);
  __chkstk_darwin(v18 - 8);
  v94 = &v76[-v19];
  v20 = sub_1001D0FF0();
  v93 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v85 = &v76[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v89 = &v76[-v23];
  v24 = *(*v4 + 392);
  sub_100089C38(a1, a2);

  sub_100089C38(a1, a2);

  sub_100089C38(a1, a2);

  sub_100089C38(a1, a2);

  v88 = v24;
  v25 = sub_1001D0E50();
  v26 = sub_1001D1E00();

  v27 = os_log_type_enabled(v25, v26);
  v90 = v4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v82 = v20;
    v29 = v28;
    v79 = swift_slowAlloc();
    v97 = v79;
    *v29 = 136315906;
    sub_1001CFDA0();
    v91 = v5;
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v95 = sub_1001D23A0();
    v96 = v30;
    v98._countAndFlagsBits = 2629690;
    v98._object = 0xE300000000000000;
    sub_1001D18B0(v98);
    v99._countAndFlagsBits = 1953460082;
    v99._object = 0xE400000000000000;
    sub_1001D18B0(v99);
    v100._countAndFlagsBits = 41;
    v100._object = 0xE100000000000000;
    sub_1001D18B0(v100);
    v31 = sub_1000954E0(v95, v96, &v97);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2080;
    v95 = a1;
    v96 = a2;
    sub_100089C38(a1, a2);
    sub_100011AC0(qword_100229648, &unk_1001D6B30);
    v32 = sub_1001D1820();
    v34 = sub_1000954E0(v32, v33, &v97);

    *(v29 + 14) = v34;
    *(v29 + 22) = 1024;
    sub_10002683C(a1, a2);

    *(v29 + 24) = a3 != 0;
    v6 = v91;
    sub_10002683C(a1, a2);

    *(v29 + 28) = 1024;
    sub_10002683C(a1, a2);

    *(v29 + 30) = v92 & 1;
    sub_10002683C(a1, a2);

    _os_log_impl(&_mh_execute_header, v25, v26, "%s received content: %s, contentContextPresent: %{BOOL}d, isComplete: %{BOOL}d", v29, 0x22u);
    swift_arrayDestroy();

    v20 = v82;

    v35 = v94;
    if (!a3)
    {
      return a1;
    }

LABEL_5:

    sub_1001D1050();
    v36 = v93;
    if ((*(v93 + 48))(v35, 1, v20) == 1)
    {

      sub_100011F00(v35, &qword_1002295C0, &qword_1001D6910);
      return a1;
    }

    v78 = a1;
    v79 = a2;
    v37 = v89;
    (*(v36 + 32))(v89, v35, v20);
    v38 = v85;
    (*(v36 + 16))(v85, v37, v20);

    v39 = v36;
    v40 = sub_1001D0E50();
    v41 = sub_1001D1DC0();

    v42 = os_log_type_enabled(v40, v41);
    v91 = v6;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v97 = v82;
      *v43 = 136315394;
      v77 = v41;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v95 = sub_1001D23A0();
      v96 = v44;
      v101._countAndFlagsBits = 2629690;
      v101._object = 0xE300000000000000;
      sub_1001D18B0(v101);
      v102._countAndFlagsBits = 1953460082;
      v102._object = 0xE400000000000000;
      sub_1001D18B0(v102);
      v103._countAndFlagsBits = 41;
      v103._object = 0xE100000000000000;
      sub_1001D18B0(v103);
      v45 = sub_1000954E0(v95, v96, &v97);

      *(v43 + 4) = v45;
      *(v43 + 12) = 2080;
      v46 = v81;
      v47 = v85;
      sub_1001D0F90();
      v48 = HTTPFields.loggingDescription.getter();
      v50 = v49;
      (*(v86 + 8))(v46, v87);
      v94 = *(v39 + 8);
      (v94)(v47, v20);
      v51 = sub_1000954E0(v48, v50, &v97);

      *(v43 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v40, v77, "%s received headers\n%s", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v94 = *(v39 + 8);
      (v94)(v38, v20);
    }

    sub_1001D12A0();
    sub_1001D1250();
    v52 = sub_1001D1070();

    v54 = v86;
    v53 = v87;
    v55 = v84;
    if (v52)
    {
      sub_1001D1290();
      if (swift_dynamicCastClass())
      {
        v56 = v83;
        sub_1001D1280();

        if ((*(v54 + 48))(v56, 1, v53) != 1)
        {
          (*(v54 + 32))(v55, v56, v53);
          (*(v54 + 16))(v80, v55, v53);

          v57 = sub_1001D0E50();
          v58 = sub_1001D1DC0();

          if (os_log_type_enabled(v57, v58))
          {
            a1 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v97 = v88;
            *a1 = 136315394;
            sub_1001CFDA0();
            sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v95 = sub_1001D23A0();
            v96 = v59;
            v104._countAndFlagsBits = 2629690;
            v104._object = 0xE300000000000000;
            sub_1001D18B0(v104);
            v105._countAndFlagsBits = 1953460082;
            v105._object = 0xE400000000000000;
            sub_1001D18B0(v105);
            v106._countAndFlagsBits = 41;
            v106._object = 0xE100000000000000;
            sub_1001D18B0(v106);
            v60 = sub_1000954E0(v95, v96, &v97);

            *(a1 + 4) = v60;
            *(a1 + 12) = 2080;
            v61 = v80;
            v62 = HTTPFields.loggingDescription.getter();
            v64 = v63;
            LODWORD(v85) = v58;
            v86 = *(v86 + 8);
            (v86)(v61, v87);
            v65 = sub_1000954E0(v62, v64, &v97);

            *(a1 + 14) = v65;
            _os_log_impl(&_mh_execute_header, v57, v85, "%s received trailers\n%s", a1, 0x16u);
            swift_arrayDestroy();

            (v86)(v84, v87);
          }

          else
          {

            v75 = *(v54 + 8);
            a1 = v54 + 8;
            v75(v80, v53);
            v75(v55, v53);
          }

          goto LABEL_20;
        }

LABEL_17:
        sub_100011F00(v56, &unk_100230110, &unk_1001D6520);

        v66 = sub_1001D0E50();
        a1 = sub_1001D1DC0();

        if (os_log_type_enabled(v66, a1))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v82 = v20;
          v69 = v68;
          v97 = v68;
          *v67 = 136315138;
          sub_1001CFDA0();
          sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v95 = sub_1001D23A0();
          v96 = v70;
          v107._countAndFlagsBits = 2629690;
          v107._object = 0xE300000000000000;
          sub_1001D18B0(v107);
          v108._countAndFlagsBits = 1953460082;
          v108._object = 0xE400000000000000;
          sub_1001D18B0(v108);
          v109._countAndFlagsBits = 41;
          v109._object = 0xE100000000000000;
          sub_1001D18B0(v109);
          v71 = sub_1000954E0(v95, v96, &v97);

          *(v67 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v66, a1, "%s received no trailers", v67, 0xCu);
          sub_100011CF0(v69);
          v20 = v82;
        }

LABEL_20:
        v72 = v91;
        v73 = v89;
        if (v92)
        {
          sub_10017BD24(v89, a3);
          if (v72)
          {
            (v94)(v73, v20);

            return a1;
          }

          (v94)(v73, v20);
        }

        else
        {
          sub_10017DA48(v89, a3);
          if (v72)
          {
            swift_errorRetain();
            sub_10015F120(v73, v72);

            swift_willThrow();

            (v94)(v73, v20);
            return a1;
          }

          sub_10015F120(v73, 0);

          (v94)(v73, v20);
        }

        return v78;
      }
    }

    v56 = v83;
    (*(v54 + 56))(v83, 1, 1, v53);
    goto LABEL_17;
  }

  sub_10002683C(a1, a2);

  sub_10002683C(a1, a2);

  sub_10002683C(a1, a2);

  sub_10002683C(a1, a2);

  v35 = v94;
  if (a3)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_1001A9AA8(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = *result;
    if (*result > 2)
    {
      if (v1 == 4)
      {
        v3 = 23;
      }

      else
      {
        v3 = 24;
      }

      if (v1 == 3)
      {
        v2 = 22;
      }

      else
      {
        v2 = v3;
      }
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      if (v1 == 1)
      {
        v2 = 20;
      }

      else
      {
        v2 = 21;
      }
    }
  }

  else
  {
    v2 = 19;
  }

  sub_100089BE4();
  swift_allocError();
  *v4 = v2;
  *(v4 + 1) = 23;
  *(v4 + 8) = _swiftEmptyArrayStorage;
  return swift_willThrow();
}

uint64_t sub_1001A9B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 280) = v12;
  *(v8 + 288) = v13;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 392) = a4;
  *(v8 + 232) = a2;
  *(v8 + 240) = a3;
  *(v8 + 224) = a1;
  v9 = sub_100011AC0(&qword_10022FE00, &qword_1001E19B8);
  *(v8 + 296) = v9;
  *(v8 + 304) = *(v9 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = type metadata accessor for ValidatedAttestationOrAttestation(0);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = type metadata accessor for ValidatedAttestation(0);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1001A9CB4, 0, 0);
}

uint64_t sub_1001A9CB4()
{
  v31 = v0;
  sub_1001AFCB4(*(v0 + 224), *(v0 + 328), type metadata accessor for ValidatedAttestationOrAttestation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 328);
    v2 = v1[1];
    *(v0 + 16) = *v1;
    *(v0 + 32) = v2;
    v3 = v1[5];
    v5 = v1[2];
    v4 = v1[3];
    *(v0 + 80) = v1[4];
    *(v0 + 96) = v3;
    *(v0 + 48) = v5;
    *(v0 + 64) = v4;

    v6 = sub_1001D0E50();
    v7 = sub_1001D1E00();

    if (os_log_type_enabled(v6, v7))
    {
      v27 = *(v0 + 240);
      v8 = *(v0 + 392);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = sub_1001D23A0();
      v30 = v11;
      v33._countAndFlagsBits = 2629690;
      v33._object = 0xE300000000000000;
      sub_1001D18B0(v33);
      v34._countAndFlagsBits = sub_10016B71C(v27, v8);
      sub_1001D18B0(v34);

      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      sub_1001D18B0(v35);
      v12 = sub_1000954E0(v29, v30, &v28);

      *(v9 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s verifying attestation", v9, 0xCu);
      sub_100011CF0(v10);
    }

    v13 = *(*(v0 + 232) + *(**(v0 + 232) + 368));
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);

    sub_100089C90(v0 + 16, v0 + 112);
    v16 = swift_task_alloc();
    *(v0 + 376) = v16;
    *v16 = v0;
    v16[1] = sub_1001AA2EC;
    v17 = *(v0 + 344);
    v18 = *(v0 + 232);

    return sub_10011DBD4(v17, v14, v15, v13, v18, v0 + 16);
  }

  else
  {
    sub_1001B0368(*(v0 + 328), *(v0 + 352), type metadata accessor for ValidatedAttestation);
    v20 = swift_task_alloc();
    *(v0 + 360) = v20;
    *v20 = v0;
    v20[1] = sub_1001AA05C;
    v21 = *(v0 + 352);
    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);

    return sub_100188DE8(v21, v26, v24, v25, v22, v23);
  }
}

uint64_t sub_1001AA05C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1001AA228;
  }

  else
  {
    v2 = sub_1001AA170;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AA170(__n128 a1)
{
  sub_1001AFB98(v1[44], type metadata accessor for ValidatedAttestation);
  v2 = v1[46] != 0;

  v3 = v1[1];

  return v3(1, v2);
}

uint64_t sub_1001AA228(__n128 a1)
{
  v2 = v1[46];
  sub_1001AFB98(v1[44], type metadata accessor for ValidatedAttestation);
  v3 = v1[46] != 0;

  v4 = v1[1];

  return v4(v2, v3);
}

uint64_t sub_1001AA2EC()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1001AA558;
  }

  else
  {
    v2 = sub_1001AA400;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AA400()
{
  v1 = v0[44];
  v2 = v0[42];
  sub_1001B0368(v0[43], v1, type metadata accessor for ValidatedAttestation);
  v3 = (v1 + *(v2 + 32));
  v4 = v3[1];
  if (v4)
  {
    v0[26] = *v3;
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[37];
    v0[27] = v4;

    sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
    sub_1001D1BC0();
    sub_10005AF88((v0 + 2));
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    sub_10005AF88((v0 + 2));
  }

  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_1001AA05C;
  v9 = v0[44];
  v10 = v0[35];
  v11 = v0[36];
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];

  return sub_100188DE8(v9, v14, v12, v13, v10, v11);
}

uint64_t sub_1001AA558()
{
  v1 = *(v0 + 384);
  sub_10005AF88(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_1001AA624()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AA674()
{
  swift_unknownObjectRelease();

  sub_100011E48(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001AA6C4(uint64_t a1)
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
  v11[1] = sub_10005B61C;

  return sub_1001A2A64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AA7A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_100059300(a1, v4);
}

uint64_t sub_1001AA858()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_1001AA890(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1001AA8A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A2658(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AA96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A2260(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AAA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A1F40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AAB0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_1001AAB6C(uint64_t a1)
{
  v14 = *(v1 + 3);
  v15 = *(v1 + 2);
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 8);
  v9 = v1[12];
  v10 = v1[13];
  v11 = v1[14];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000130E0;

  return sub_1001A1388(v9, v10, v11, a1, v15, v14, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AAC98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001AACF0(uint64_t a1)
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
  v9[1] = sub_10005B61C;

  return sub_1001A0DDC(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AADF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001AAE48(uint64_t a1)
{
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
  v11[1] = sub_10005B61C;

  return sub_1001A0514(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AAF48(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(&qword_10022CB18, &qword_1001E1530);
    sub_1001B0458(a2, &type metadata accessor for TrustedCloudComputeRateLimit, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001AAFE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_10019FFE4(a1, v4, v5, v6, v7, v8);
}

void sub_1001AB0B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  isa = sub_1001D19C0().super.isa;
  (*(v2 + 16))(v2, isa);
}

uint64_t sub_1001AB110()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001AB158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_10019FA58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AB220()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001AB288(uint64_t a1)
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
  v11[1] = sub_10005B61C;

  return sub_10019F530(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AB394()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001AB3EC(uint64_t a1)
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
  v11[1] = sub_10005B61C;

  return sub_10019EC68(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AB4E0()
{
  v1 = type metadata accessor for TrustedRequestConfiguration(0);
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v20 = sub_1001D08A0();
  v3 = *(v20 - 8);
  v4 = *(v3 + 80);
  v16 = *(v3 + 64);
  v5 = sub_1001CFDA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v18 = *(v6 + 64);
  swift_unknownObjectRelease();

  v19 = (v2 + 48) & ~v2;
  v8 = v0 + v19;

  v9 = v1[16];
  v10 = sub_1001CFB10();
  (*(*(v10 - 8) + 8))(v0 + v19 + v9, v10);

  v11 = v1[29];
  if (!(*(v6 + 48))(v0 + v19 + v11, 1, v5))
  {
    (*(v6 + 8))(v8 + v11, v5);
  }

  v12 = v2 | v4 | v7;
  v13 = (v19 + v17 + v4) & ~v4;
  v14 = (v13 + v16 + v7) & ~v7;

  sub_100011E48(*(v8 + v1[32]), *(v8 + v1[32] + 8));
  (*(v3 + 8))(v0 + v13, v20);
  (*(v6 + 8))(v0 + v14, v5);

  return _swift_deallocObject(v0, v14 + v18, v12 | 7);
}

uint64_t sub_1001AB810(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TrustedRequestConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1001D08A0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1001CFDA0() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1[5];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10005B61C;

  return sub_100197088(a1, v13, v14, v15, v16, v1 + v6, v1 + v9, v1 + v12);
}

unint64_t sub_1001AB9F8()
{
  result = qword_10022FC98;
  if (!qword_10022FC98)
  {
    sub_100011DF4(&qword_10022FC90, &unk_1001E1620);
    sub_100024B78(&qword_10022FCA0, &unk_100230260, &qword_1001D3660, &unk_1001E0EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FC98);
  }

  return result;
}

uint64_t sub_1001ABAA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_10016BFF4(a1, v1);
}

unint64_t sub_1001ABB44()
{
  result = qword_10022FCE8;
  if (!qword_10022FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FCE8);
  }

  return result;
}

unint64_t sub_1001ABB9C(unint64_t result)
{
  if (!(result >> 62))
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1001ABBAC(unint64_t result)
{
  if (result >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1001ABBDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1000130E0;

  return sub_1001A45F0(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_1001ABCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001ABCD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_10016FFB0(a1, v1);
}

uint64_t sub_1001ABD70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_100170200(a1, v4);
}

uint64_t sub_1001ABE28(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_1001ABE34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A46C0);
}

uint64_t sub_1001ABF58()
{
  v1 = (type metadata accessor for NWAsyncConnection.Inbound(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v12 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v12 + v6 + 8) & ~v6;
  v13 = v2 | v6;
  v8 = (((((*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_100011E48(*(v0 + 40), *(v0 + 48));
  sub_100011E48(*(v0 + 56), *(v0 + 64));
  sub_100011E48(*(v0 + 72), *(v0 + 80));

  v9 = v1[7];
  v10 = sub_1001D0E60();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  (*(v5 + 8))(v0 + v7, v4);

  return _swift_deallocObject(v0, v8 + 8, v13 | 7);
}

void sub_1001AC174()
{
  type metadata accessor for NWAsyncConnection.Inbound(0);
  sub_100011AC0(&qword_10022FD28, &qword_1001E1718);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A48E8);
}

uint64_t sub_1001AC368()
{
  v1 = (type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = (v0 + v3);

  v6 = v1[9];
  v7 = sub_1001CFDA0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v0 + v4;
  sub_100011E48(*(v0 + v4), *(v0 + v4 + 8));
  sub_100011E48(*(v8 + 16), *(v8 + 24));
  sub_100011E48(*(v8 + 32), *(v8 + 40));

  return _swift_deallocObject(v0, v4 + 48, v2 | 7);
}

uint64_t sub_1001AC4C0(uint64_t a1)
{
  v3 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10005B61C;

  return sub_1001A49E4(a1, v8, v9, v11, v1 + v4, v10, v12, v1 + v7);
}

uint64_t sub_1001AC624()
{
  v1 = sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + v5 + 8) & ~v7;
  v13 = *(*v6 + 64);
  v9 = v3 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = v6[9];
  v11 = sub_1001CFDA0();
  (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);

  return _swift_deallocObject(v0, v8 + v13, v9 | 7);
}

void sub_1001AC808()
{
  sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A4DF0);
}

uint64_t sub_1001AC9C8()
{
  swift_unknownObjectRelease();
  sub_100011CF0((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001ACA10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_1001A5044(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_1001ACADC(uint64_t a1, char a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1001ACAF0(a1, a2);
  }

  return a1;
}

uint64_t sub_1001ACAF0(uint64_t result, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return sub_100142304(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1001ACB00(uint64_t result, char a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1001ACB14(result, a2);
  }

  return result;
}

uint64_t sub_1001ACB14(uint64_t result, char a2)
{
  if ((a2 & 0x80) == 0)
  {
    return sub_1001428C0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1001ACB24()
{
  v1 = (type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[9];
  v6 = sub_1001CFDA0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001ACC34(uint64_t a1)
{
  v4 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_1001A4BCC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1001ACD44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001ACDD4;

  return sub_10012A0A4();
}

uint64_t sub_1001ACDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

uint64_t sub_1001ACEF8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10005B61C;

  return sub_1001903D8(a1, a2, v6, v7, v8);
}

uint64_t sub_1001ACFBC(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v4 = sub_1001D10E0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v2[13] = v5;
  v2[5] = v5;
  v2[6] = &off_100221910;
  v6 = sub_10003B47C(v2 + 2);
  sub_1001AFCB4(a1, v6, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  return _swift_task_switch(sub_1001AD0D8, 0, 0);
}

uint64_t sub_1001AD0D8()
{
  sub_100024DC8(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1001AD174;

  return sub_10013F08C(v1);
}

uint64_t sub_1001AD174()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1001AD4EC;
  }

  else
  {
    v2 = sub_1001AD288;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AD288()
{
  v0[16] = *(v0[7] + *(*v0[7] + 368));
  sub_10015DAB8();
  sub_100024DC8(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1001AD3D8;
  v2 = v0[12];
  v3 = v0[13];

  return (sub_10013D828)(v2, v3, &off_100221910);
}

uint64_t sub_1001AD3D8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1001AD8D0;
  }

  else
  {
    v2 = sub_1001AD5AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001AD4EC()
{
  sub_10015DE10(v0[15]);

  sub_100011CF0(v0 + 2);

  v1 = v0[1];

  return v1(0, 128);
}

uint64_t sub_1001AD5AC()
{
  v30 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  sub_1001A50F0(v2, v0[16]);
  v5 = *(v4 + 16);
  v5(v1, v2, v3);

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  if (v8)
  {
    v26 = v0[9];
    v24 = v0[10];
    v25 = v0[8];
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = sub_1001D23A0();
    v29 = v12;
    v32._countAndFlagsBits = 58;
    v32._object = 0xE100000000000000;
    sub_1001D18B0(v32);
    v13 = sub_1000954E0(v28, v29, &v27);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v5(v24, v10, v25);
    v14 = sub_1001D1830();
    v16 = v15;
    v17 = *(v26 + 8);
    v17(v10, v25);
    v18 = sub_1000954E0(v14, v16, &v27);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %s", v11, 0x16u);
    swift_arrayDestroy();

    v17(v9, v25);
  }

  else
  {
    v19 = v0[8];
    v20 = v0[9];

    v21 = *(v20 + 8);
    v21(v10, v19);
    v21(v9, v19);
  }

  sub_100011CF0(v0 + 2);

  v22 = v0[1];

  return v22(0, 128);
}

uint64_t sub_1001AD8D0()
{
  sub_10015DE10(v0[18]);

  sub_100011CF0(v0 + 2);

  v1 = v0[1];

  return v1(0, 128);
}

uint64_t sub_1001AD990()
{
  v1 = sub_100011AC0(&qword_10022FDB8, &qword_1001E1888);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001ADA38()
{
  v2 = *(sub_100011AC0(&qword_10022FDB8, &qword_1001E1888) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_100184120(v0 + v3, v4);
}

void sub_1001ADB48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A5348);
}

unint64_t sub_1001ADC54(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001ADC70(a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1001ADC70(unint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return sub_1001ADC7C(a1);
  }
}

unint64_t sub_1001ADC7C(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1001ADC8C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001ADCA8(a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1001ADCA8(unint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return sub_1001ADCB4(a1);
  }
}

unint64_t sub_1001ADCB4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1001ADCC4()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = *(v6 + 64);
  v22 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8 = *(*(v22 - 8) + 80);
  v23 = *(*(v22 - 8) + 64);
  swift_unknownObjectRelease();

  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v11 = *(v0 + v3 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    if (v11 >> 60 != 15)
    {
      sub_100011E48(*(v9 + 16), v11);
    }
  }

  else
  {
    v20 = v4;
    if (v11 >> 60 != 15)
    {
      sub_100011E48(*(v9 + 16), v11);
    }

    sub_100011E48(*(v9 + 104), *(v9 + 112));
    v12 = *(type metadata accessor for ValidatedAttestation(0) + 28);
    v13 = sub_1001CFD60();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);

    v4 = v20;
  }

  v14 = v2 | v7 | v8;
  v15 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v16 = (((((v21 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  (*(v6 + 8))(v0 + v15, v5);

  v17 = *(v22 + 28);
  v18 = sub_1001CFDA0();
  (*(*(v18 - 8) + 8))(v0 + v16 + v17, v18);

  return _swift_deallocObject(v0, v16 + v23, v14 | 7);
}

void sub_1001AE028()
{
  type metadata accessor for ValidatedAttestationOrAttestation(0);
  sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A5434);
}

uint64_t sub_1001AE258(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_1001A570C(a1, v4);
}

void sub_1001AE310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A591CLL);
}

void sub_1001AE44C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A5B38);
}

uint64_t sub_1001AE55C()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v8 = *(*(v21 - 8) + 80);
  v22 = *(*(v21 - 8) + 64);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v11 = *(v0 + v3 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    if (v11 >> 60 != 15)
    {
      sub_100011E48(*(v9 + 16), v11);
    }
  }

  else
  {
    v19 = v4;
    if (v11 >> 60 != 15)
    {
      sub_100011E48(*(v9 + 16), v11);
    }

    sub_100011E48(*(v9 + 104), *(v9 + 112));
    v12 = *(type metadata accessor for ValidatedAttestation(0) + 28);
    v13 = sub_1001CFD60();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);

    v4 = v19;
  }

  v14 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7;
  v15 = (v8 + ((((((((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

  (*(v6 + 8))(v0 + v14, v5);

  v16 = *(v21 + 28);
  v17 = sub_1001CFDA0();
  (*(*(v17 - 8) + 8))(v0 + v15 + v16, v17);

  return _swift_deallocObject(v0, v15 + v22, v2 | v7 | v8 | 7);
}

void sub_1001AE8D8()
{
  type metadata accessor for ValidatedAttestationOrAttestation(0);
  sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0);
  v0 = swift_task_alloc();
  *(v1 + 16) = v0;
  *v0 = v1;
  v0[1] = sub_10005B61C;

  JUMPOUT(0x1001A5F48);
}

uint64_t sub_1001AEB2C()
{
  v1 = *(type metadata accessor for ValidatedAttestationOrAttestation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v7 = *(v0 + v3 + 24);
  if (EnumCaseMultiPayload == 1)
  {
    if (v7 >> 60 != 15)
    {
      sub_100011E48(*(v5 + 16), v7);
    }
  }

  else
  {
    if (v7 >> 60 != 15)
    {
      sub_100011E48(*(v5 + 16), v7);
    }

    sub_100011E48(*(v5 + 104), *(v5 + 112));
    v8 = *(type metadata accessor for ValidatedAttestation(0) + 28);
    v9 = sub_1001CFD60();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_1001AED04(uint64_t a1)
{
  v3 = *(type metadata accessor for ValidatedAttestationOrAttestation(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10005B61C;

  return sub_1001A5D5C(a1, v7, v8, v9, v1 + v4, v10, v11, v12);
}

uint64_t sub_1001AEE68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_1001150B4(a1, v4, v5, v6);
}

uint64_t sub_1001AEF28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_1001A632C(a1, v4);
}

uint64_t sub_1001AEFE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005B61C;

  return sub_1001A6040(v2, v3);
}

uint64_t sub_1001AF08C()
{
  v1 = sub_100011AC0(&qword_10022FE20, &qword_1001E19F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001AF15C()
{
  v2 = *(sub_100011AC0(&qword_10022FE20, &qword_1001E19F0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_10018FBD4(v4, v0 + v3);
}

uint64_t sub_1001AF240(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 61;
  if ((a4 >> 61) <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return v5;
      }
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
      }

      else if (v4 == 4)
      {
      }

      return v5;
    }
  }
}

unint64_t sub_1001AF304()
{
  result = qword_10022FE38;
  if (!qword_10022FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FE38);
  }

  return result;
}

void sub_1001AF358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100012038(a3, a4);
  }
}

void sub_1001AF3A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100011E48(a3, a4);
  }
}

unint64_t sub_1001AF3F0()
{
  result = qword_10022FE58;
  if (!qword_10022FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FE58);
  }

  return result;
}

unint64_t sub_1001AF444(unint64_t result, unint64_t a2)
{
  v3 = result >> 62;
  if ((result >> 62) <= 1)
  {
    if (v3)
    {
    }

LABEL_7:
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001AF4B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_10005B61C;

  return sub_1001A6554(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_1001AF5A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_1001A6608(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1001AF684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1001A66E8);
}

uint64_t sub_1001AF798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005B61C;

  return sub_10015CCF4(a1, v4, v5, v7, v6);
}

uint64_t sub_1001AF874(uint64_t result, char a2)
{
  if (a2 == 3)
  {
  }

  return v2;
}

uint64_t sub_1001AF91C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_1001A632C(a1, v4);
}

uint64_t sub_1001AF9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005B61C;

  return sub_1001A67F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001AFACC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005B61C;

  return sub_1001A68C0(a1, a2, v2);
}

uint64_t sub_1001AFB84(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1001AFB98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AFBF8()
{
  result = qword_10022FEC8;
  if (!qword_10022FEC8)
  {
    sub_100011DF4(&qword_10022FEA0, &qword_1001E1B88);
    sub_1001B0458(&qword_10022FED0, &type metadata accessor for RopesResponseMetadata.ErrorCode, &protocol conformance descriptor for RopesResponseMetadata.ErrorCode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FEC8);
  }

  return result;
}

uint64_t sub_1001AFCB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001AFD1C()
{
  result = qword_10022FEE8;
  if (!qword_10022FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FEE8);
  }

  return result;
}

uint64_t sub_1001AFD70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005B61C;

  return sub_1001A6990(a1, v4, v5, v7, v6);
}

uint64_t sub_1001AFE4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_10019BB9C(a1, v4);
}

uint64_t sub_1001AFF04(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10005B61C;

  return sub_10019BC94(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1001AFFDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B001C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_10019C574(a1, v4, v5, v6);
}

uint64_t sub_1001B00DC()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001B01AC(uint64_t a1)
{
  v4 = *(sub_1001D20F0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10005B61C;

  return sub_10019C85C(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1001B02DC()
{
  result = qword_10022FF10;
  if (!qword_10022FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022FF10);
  }

  return result;
}

uint64_t sub_1001B0368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B03D0()
{

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_1001B0458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B04A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1001B0520(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v5 = a3(a1, a2);
  (*(v4 + 16))(v4, v5);
}

__n128 sub_1001B062C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001B0648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001B0690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B06F4(uint64_t a1)
{
  result = sub_1001CFD60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1001D0E60();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1001B0808(uint64_t a1, void *a2)
{
  sub_1001CFC80();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  isa = sub_1001D1CE0().super.super.isa;
  v5 = sub_1001D17A0();
  [a2 setValue:isa forKey:v5];
}

uint64_t *sub_1001B08D8()
{
  v1 = *v0;
  v2 = qword_10022FF70;
  v3 = sub_1001CFD60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v4 = *(*v0 + 120);
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001B09EC()
{
  sub_1001B08D8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B0A40(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v7 = sub_1001D02F0();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100011AC0(&unk_1002302E0, &qword_1001E2220);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1001CFE60();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001CFDE0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v5 + 312) = 58;
  *(v5 + 320) = 0xE100000000000000;
  (*(v17 + 104))(v19, enum case for Calendar.Identifier.gregorian(_:), v16);
  sub_1001CFDF0();
  (*(v17 + 8))(v19, v16);
  sub_1001CFE50();
  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1001CFE20();
    v22 = v32;
    v21 = v33;
    v23 = v34;
    (*(v33 + 104))(v32, enum case for TC2LogCategory.metricReporter(_:), v34);
    sub_1001D08B0();
    (*(v21 + 8))(v22, v23);
    v24 = a4[8];
    v25 = a4[10];
    *(v5 + 264) = a4[9];
    *(v5 + 280) = v25;
    v26 = a4[6];
    *(v5 + 232) = a4[7];
    *(v5 + 248) = v24;
    v27 = a4[2];
    *(v5 + 168) = a4[3];
    v28 = a4[5];
    *(v5 + 184) = a4[4];
    *(v5 + 200) = v28;
    *(v5 + 216) = v26;
    v29 = a4[1];
    *(v5 + 120) = *a4;
    *(v5 + 136) = v29;
    v30 = v36;
    *(v5 + 112) = v35;
    v31 = v37;
    *(v5 + 296) = v30;
    *(v5 + 304) = v31;
    *(v5 + 152) = v27;
    return v5;
  }

  return result;
}

uint64_t sub_1001B0DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1001CFD60();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001B0EA0, v3, 0);
}

uint64_t sub_1001B0EA0()
{
  v23 = v0;
  *(v0 + 72) = *(**(v0 + 40) + 160);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v22);
    _os_log_impl(&_mh_execute_header, v1, v2, "Request succeeded featureId=%s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v13 = *(v10 + 312);
  v14 = *(v10 + 320);
  sub_1001CFE00();
  sub_1000123B4(v7, v12, v11, v13, v14);
  v16 = v15;
  v18 = v17;
  (*(v8 + 8))(v7, v9);
  sub_100011AC0(&unk_100230270, &unk_1001D3610);
  v19 = swift_allocObject();
  *(v0 + 80) = v19;
  *(v19 + 16) = xmmword_1001D39F0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = swift_task_alloc();
  *(v0 + 88) = v20;
  *v20 = v0;
  v20[1] = sub_1001B10E4;

  return sub_100013C9C(v19);
}

uint64_t sub_1001B10E4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_1001B1248, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1001B1248()
{
  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to write to file: %@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001B13B8(uint64_t a1)
{
  v3 = sub_1001D0760();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v38 = v1;
  v76 = _swiftEmptyArrayStorage;
  sub_1001517B8(0, v7, 0);
  v8 = v76;
  v9 = a1 + 64;
  result = sub_1001D1FB0();
  if (result < 0 || (v11 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    v12 = *(a1 + 36);
    v41 = a1 + 64;
    v42 = v47 + 32;
    v39 = a1 + 72;
    v40 = v7;
    v13 = 1;
    v44 = v6;
    v45 = a1;
    v43 = v12;
    while ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      if (v12 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v49 = 1 << v11;
      v50 = v11 >> 6;
      v48 = v13;
      v14 = (*(a1 + 48) + 16 * v11);
      v16 = *v14;
      v15 = v14[1];
      v17 = (*(a1 + 56) + 72 * v11);
      v57[0] = *v17;
      v19 = v17[2];
      v18 = v17[3];
      v20 = v17[1];
      v58 = *(v17 + 8);
      v57[2] = v19;
      v57[3] = v18;
      v57[1] = v20;
      v21 = *v17;
      v22 = v17[1];
      v23 = v17[2];
      v24 = v17[3];
      v56 = *(v17 + 8);
      v54 = v23;
      v55 = v24;
      v52 = v21;
      v53 = v22;
      memmove(&v59, v17, 0x48uLL);
      v64[0] = v16;
      v64[1] = v15;
      v67 = v54;
      v68 = v55;
      v69 = v56;
      v65 = v52;
      v66 = v53;
      swift_bridgeObjectRetain_n();
      sub_10001208C(v57, v51, &qword_100230140, &qword_1001D36F0);
      sub_10001208C(&v59, v51, &qword_100230140, &qword_1001D36F0);
      sub_100011F00(v64, &qword_100230148, &unk_1001E1F18);
      v75 = v63;
      v73 = v61;
      v74 = v62;
      v71 = v59;
      v72 = v60;
      v70[0] = v16;
      v70[1] = v15;
      v51[0] = 0;
      v51[1] = 0xE000000000000000;
      v77 = v8;
      if (v60)
      {
        if (v60 == 2)
        {
          v25 = 0xE800000000000000;
          v26._countAndFlagsBits = 0x6465696669726576;
        }

        else if (v60 == 1)
        {
          v25 = 0xE900000000000067;
          v26._countAndFlagsBits = 0x6E69796669726576;
        }

        else
        {
          v26._countAndFlagsBits = 0x6465696669726576;
          v25 = 0xEE0064656C696146;
        }
      }

      else
      {
        v25 = 0xEA00000000006465;
        v26._countAndFlagsBits = 0x6966697265766E75;
      }

      v26._object = v25;
      sub_1001D18B0(v26);

      v27 = v44;
      sub_1001D0750();
      sub_100011F00(v70, &qword_100230148, &unk_1001E1F18);
      v8 = v77;
      v76 = v77;
      v29 = v77[2];
      v28 = v77[3];
      if (v29 >= v28 >> 1)
      {
        sub_1001517B8((v28 > 1), v29 + 1, 1);
        v8 = v76;
      }

      v8[2] = v29 + 1;
      result = (*(v47 + 32))(v8 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v29, v27, v46);
      a1 = v45;
      v30 = 1 << *(v45 + 32);
      LODWORD(v12) = v43;
      if (v11 >= v30)
      {
        goto LABEL_34;
      }

      v9 = v41;
      v31 = *(v41 + 8 * v50);
      if ((v31 & v49) == 0)
      {
        goto LABEL_35;
      }

      if (v43 != *(v45 + 36))
      {
        goto LABEL_36;
      }

      v32 = v31 & (-2 << (v11 & 0x3F));
      if (v32)
      {
        v11 = __clz(__rbit64(v32)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v50 << 6;
        v34 = v50 + 1;
        v35 = (v39 + 8 * v50);
        while (v34 < (v30 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_10001202C(v11, v43, 0);
            v11 = __clz(__rbit64(v36)) + v33;
            goto LABEL_26;
          }
        }

        result = sub_10001202C(v11, v43, 0);
        v11 = v30;
      }

LABEL_26:
      if (v48 == v40)
      {
        return v8;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        v13 = v48 + 1;
        if (v11 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_1001B18FC(uint64_t a1)
{
  v32 = sub_1001D0720();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v26 = v1;
    v36 = _swiftEmptyArrayStorage;
    sub_1001517FC(0, v6, 0);
    v35 = v36;
    v8 = a1 + 64;
    result = sub_1001D1FB0();
    v9 = result;
    v10 = 0;
    v30 = v3 + 32;
    v31 = v3;
    v27 = a1 + 72;
    v28 = v6;
    v29 = a1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v13 = *(a1 + 36);
      v33 = v10;
      v34 = v13;

      sub_1001B8A00(v5);

      v14 = v35;
      v36 = v35;
      v15 = a1;
      v17 = v35[2];
      v16 = v35[3];
      if (v17 >= v16 >> 1)
      {
        sub_1001517FC((v16 > 1), v17 + 1, 1);
        v14 = v36;
      }

      v14[2] = v17 + 1;
      v18 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v35 = v14;
      result = (*(v31 + 32))(v14 + v18 + *(v31 + 72) * v17, v5, v32);
      v11 = 1 << *(v15 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v8 = v29;
      v19 = *(v29 + 8 * v12);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v15;
      if (v34 != *(v15 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v27 + 8 * v12);
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10001202C(v9, v34, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        result = sub_10001202C(v9, v34, 0);
LABEL_19:
        a1 = v15;
      }

      v10 = v33 + 1;
      v9 = v11;
      if (v33 + 1 == v28)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B1C04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100011AC0(&qword_1002301F0, &qword_1001E2120);
  v2[4] = swift_task_alloc();
  v3 = sub_1001CFF00();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001B1CFC, 0, 0);
}

uint64_t sub_1001B1CFC()
{
  v1 = *(v0[2] + 32);
  v0[8] = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      sub_1001D17D0();
      v2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  v0[9] = v2;
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  sub_1001CFEF0();
  sub_1001CFF20();
  v12 = *v10;
  v13 = v10[1];
  v14 = *v11;
  v0[10] = *v11;
  v15 = v11[1];
  v0[11] = v15;
  v16 = v11[2];
  v0[12] = v16;
  v17 = sub_1001C8E94(v16);
  v0[13] = v17;
  (*(v6 + 16))(v9, v7, v8);
  (*(v6 + 56))(v9, 0, 1, v8);
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1001B1EF0;
  v19 = v0[4];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v12, v13, v14, v15, v17, v19);
}

uint64_t sub_1001B1EF0()
{
  v2 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  sub_100011F00(v2, &qword_1002301F0, &qword_1001E2120);

  if (v0)
  {

    v3 = sub_1001B22AC;
  }

  else
  {
    v3 = sub_1001B2068;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B2068()
{
  v19 = v0;
  type metadata accessor for MetricReporter(0);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = v0[6];
    v16 = v0[5];
    v17 = v0[7];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000954E0(v5, v4, &v18);
    *(v7 + 12) = 2080;
    v8 = sub_1001B2AFC(v3, &qword_1002301F8, &unk_1001E2128, &type metadata for FirstInvokeRequestSendMetric.EventName);
    v10 = sub_1000954E0(v8, v9, &v18);

    *(v7 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v1, v2, "Logged metric %s\n%s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v17, v16);
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001B22AC()
{
  v10 = v0;
  (*(v0[6] + 8))(v0[7], v0[5]);
  type metadata accessor for MetricReporter(0);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[10];
    v3 = v0[11];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to report metric %s", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001B2454(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100011AC0(&qword_1002301F0, &qword_1001E2120);
  v2[4] = swift_task_alloc();
  v3 = sub_1001CFF00();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001B254C, 0, 0);
}

uint64_t sub_1001B254C()
{
  v1 = *(v0[2] + 32);
  v0[8] = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      sub_1001D17D0();
      v2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  v0[9] = v2;
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  sub_1001CFEF0();
  sub_1001CFF20();
  v12 = *v10;
  v13 = v10[1];
  v14 = *v11;
  v0[10] = *v11;
  v15 = v11[1];
  v0[11] = v15;
  v16 = v11[2];
  v0[12] = v16;
  v17 = sub_1001C9514(v16);
  v0[13] = v17;
  (*(v6 + 16))(v9, v7, v8);
  (*(v6 + 56))(v9, 0, 1, v8);
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1001B2740;
  v19 = v0[4];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v12, v13, v14, v15, v17, v19);
}

uint64_t sub_1001B2740()
{
  v2 = *(*v1 + 32);
  *(*v1 + 120) = v0;

  sub_100011F00(v2, &qword_1002301F0, &qword_1001E2120);

  if (v0)
  {

    v3 = sub_1001CC618;
  }

  else
  {
    v3 = sub_1001B28B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B28B8()
{
  v19 = v0;
  type metadata accessor for MetricReporter(0);

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = v0[6];
    v16 = v0[5];
    v17 = v0[7];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000954E0(v5, v4, &v18);
    *(v7 + 12) = 2080;
    v8 = sub_1001B2AFC(v3, &qword_100230240, &qword_1001E2168, &type metadata for FirstPrefetchRequestSendMetric.EventName);
    v10 = sub_1000954E0(v8, v9, &v18);

    *(v7 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v1, v2, "Logged metric %s\n%s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v17, v16);
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001B2AFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v93 = a4;
  v7 = sub_1001CFDA0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = (&v65 - v16);
  v91 = a2;
  v92 = a3;
  v89 = sub_100011AC0(a2, a3);
  v17 = __chkstk_darwin(v89);
  v98 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v65 - v19;
  v20 = *(a1 + 16);
  v21 = _swiftEmptyArrayStorage;
  if (!v20)
  {
LABEL_39:
    v100 = v21;

    sub_100152064(&v100);

    sub_100011AC0(&unk_100230200, &qword_1001D4F80);
    sub_100024B78(&qword_1002281F0, &unk_100230200, &qword_1001D4F80, &protocol conformance descriptor for [A]);
    v63 = sub_1001D1750();

    return v63;
  }

  v68 = v15;
  v69 = v10;
  v70 = v7;
  v102 = _swiftEmptyArrayStorage;
  sub_1001514F8(0, v20, 0);
  v21 = v102;
  v22 = a1 + 64;
  v23 = sub_1001D1FB0();
  v24 = v8;
  v25 = v23;
  v26 = 0;
  v27 = v11;
  v28 = *(a1 + 36);
  v87 = v12 + 16;
  v84 = v12 + 88;
  v85 = v12 + 32;
  v83 = enum case for EventValue.string(_:);
  v76 = enum case for EventValue.int(_:);
  v74 = enum case for EventValue.uint(_:);
  v73 = enum case for EventValue.double(_:);
  v72 = enum case for EventValue.BOOL(_:);
  v67 = (v12 + 8);
  v86 = v12;
  v77 = (v12 + 96);
  v66 = (v24 + 32);
  v65 = (v24 + 8);
  v75 = a1 + 72;
  v71 = enum case for EventValue.uuid(_:);
  v79 = v27;
  v78 = v20;
  v81 = a1 + 64;
  v80 = v28;
  v82 = a1;
  while ((v25 & 0x8000000000000000) == 0 && v25 < 1 << *(a1 + 32))
  {
    if ((*(v22 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
    {
      goto LABEL_41;
    }

    if (v28 != *(a1 + 36))
    {
      goto LABEL_42;
    }

    v95 = 1 << v25;
    v96 = v25 >> 6;
    v94 = v26;
    v97 = v21;
    v31 = v88;
    v30 = v89;
    v32 = *(v89 + 48);
    v33 = *(a1 + 56);
    v34 = *(*(a1 + 48) + v25);
    v35 = v86;
    v36 = *(v86 + 16);
    v36(&v88[v32], v33 + *(v86 + 72) * v25, v27);
    v37 = v98;
    *v98 = v34;
    v38 = *(v30 + 48);
    (*(v35 + 32))(&v37[v38], &v31[v32], v27);
    v100 = 0;
    v101 = 0xE000000000000000;
    LOBYTE(v99) = v34;
    sub_1001D2120();
    v103._countAndFlagsBits = 8250;
    v103._object = 0xE200000000000000;
    sub_1001D18B0(v103);
    v39 = v90;
    v36(v90, &v37[v38], v27);
    v40 = (*(v35 + 88))(v39, v27);
    if (v40 == v83)
    {
      (*v77)(v39, v27);
      v42 = *v39;
      v41 = v39[1];
      a1 = v82;
      v21 = v97;
      goto LABEL_18;
    }

    a1 = v82;
    if (v40 == v76)
    {
      (*v77)(v39, v27);
      v99 = *v39;
      v42 = sub_1001D23A0();
      v41 = v43;
      v21 = v97;
      goto LABEL_18;
    }

    v21 = v97;
    if (v40 == v74)
    {
      (*v77)(v39, v27);
      v99 = *v39;
      v44 = sub_1001D23A0();
LABEL_17:
      v42 = v44;
      v41 = v45;
      goto LABEL_18;
    }

    if (v40 == v73)
    {
      (*v77)(v39, v27);
      v44 = sub_1001D1CA0();
      goto LABEL_17;
    }

    if (v40 == v72)
    {
      (*v77)(v39, v27);
      if (*v39)
      {
        v42 = 1702195828;
      }

      else
      {
        v42 = 0x65736C6166;
      }

      if (*v39)
      {
        v41 = 0xE400000000000000;
      }

      else
      {
        v41 = 0xE500000000000000;
      }
    }

    else if (v40 == v71)
    {
      (*v77)(v39, v27);
      v58 = v69;
      v59 = v39;
      v60 = v70;
      (*v66)(v69, v59, v70);
      v42 = sub_1001CFD70();
      v41 = v61;
      (*v65)(v58, v60);
    }

    else
    {
      v36(v68, &v98[v38], v27);
      v42 = sub_1001D1820();
      v41 = v62;
      (*v67)(v39, v27);
    }

LABEL_18:
    v104._countAndFlagsBits = v42;
    v104._object = v41;
    sub_1001D18B0(v104);

    v105._countAndFlagsBits = 10;
    v105._object = 0xE100000000000000;
    sub_1001D18B0(v105);
    v46 = v100;
    v47 = v101;
    sub_100011F00(v98, v91, v92);
    v102 = v21;
    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    if (v49 >= v48 >> 1)
    {
      sub_1001514F8((v48 > 1), v49 + 1, 1);
      v21 = v102;
    }

    *(v21 + 2) = v49 + 1;
    v50 = &v21[16 * v49];
    *(v50 + 4) = v46;
    *(v50 + 5) = v47;
    v29 = 1 << *(a1 + 32);
    if (v25 >= v29)
    {
      goto LABEL_43;
    }

    v22 = v81;
    v51 = *(v81 + 8 * v96);
    if ((v51 & v95) == 0)
    {
      goto LABEL_44;
    }

    LODWORD(v28) = v80;
    if (v80 != *(a1 + 36))
    {
      goto LABEL_45;
    }

    v52 = v51 & (-2 << (v25 & 0x3F));
    if (v52)
    {
      v29 = __clz(__rbit64(v52)) | v25 & 0x7FFFFFFFFFFFFFC0;
      v27 = v79;
    }

    else
    {
      v53 = v96 << 6;
      v54 = v96 + 1;
      v55 = (v75 + 8 * v96);
      v27 = v79;
      while (v54 < (v29 + 63) >> 6)
      {
        v57 = *v55++;
        v56 = v57;
        v53 += 64;
        ++v54;
        if (v57)
        {
          sub_10001202C(v25, v80, 0);
          v29 = __clz(__rbit64(v56)) + v53;
          goto LABEL_4;
        }
      }

      sub_10001202C(v25, v80, 0);
    }

LABEL_4:
    v26 = v94 + 1;
    v25 = v29;
    if (v94 + 1 == v78)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);

  __break(1u);
  return result;
}

_OWORD *sub_1001B3428(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v24 = a1;
  v25 = a2;
  v8 = sub_1001CFB10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001D02F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_1001CF820();
  swift_allocObject();
  v4[14] = sub_1001CF810();
  v4[15] = 10;
  (*(v13 + 104))(v15, enum case for TC2LogCategory.metricReporter(_:), v12);
  sub_1001D08B0();
  (*(v13 + 8))(v15, v12);
  v16 = v25;
  v4[16] = v24;
  v4[17] = v16;
  (*(v9 + 16))(v11, a3, v8);
  type metadata accessor for NodeDistributionAnalyzerStoreHelper(0);
  swift_allocObject();
  v17 = sub_1000252DC(v11);
  (*(v9 + 8))(a3, v8);
  *(v5 + *(*v5 + 144)) = v17;
  v18 = a4[9];
  v5[17] = a4[8];
  v5[18] = v18;
  v5[19] = a4[10];
  v19 = a4[5];
  v5[13] = a4[4];
  v5[14] = v19;
  v20 = a4[7];
  v5[15] = a4[6];
  v5[16] = v20;
  v21 = a4[1];
  v5[9] = *a4;
  v5[10] = v21;
  v22 = a4[3];
  v5[11] = a4[2];
  v5[12] = v22;
  return v5;
}

uint64_t sub_1001B36A8(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1001B36CC, v2, 0);
}

uint64_t sub_1001B36CC()
{
  v21 = v0;
  v1 = 0x6863746566657270;
  *(v0 + 32) = *(**(v0 + 24) + 136);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1001D19E0();
    v8 = sub_1000954E0(v6, v7, &v20);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = 0x6D726177657270;
    if (v4 != 1)
    {
      v9 = 0x74736575716572;
    }

    if (v4)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x6863746566657270;
    }

    if (v4)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE800000000000000;
    }

    v12 = sub_1000954E0(v10, v11, &v20);

    *(v5 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Receiving nodes %s from %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 64);
  sub_100011AC0(&unk_100230270, &unk_1001D3610);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001D39F0;
  if (v13)
  {
    v15 = 0xE700000000000000;
    if (v13 == 1)
    {
      v1 = 0x6D726177657270;
    }

    else
    {
      v1 = 0x74736575716572;
    }
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  *(v14 + 32) = v1;
  *(v14 + 40) = v15;
  v20 = v14;

  sub_10003A288(v16);
  v17 = v20;
  *(v0 + 40) = v20;
  v18 = swift_task_alloc();
  *(v0 + 48) = v18;
  *v18 = v0;
  v18[1] = sub_1001B39B0;

  return sub_100025030(v17);
}

uint64_t sub_1001B39B0()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];

    return _swift_task_switch(sub_1001B3B0C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1001B3B0C()
{
  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1DE0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed writing to file: %@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1001B3C70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001D02E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  sub_1001D0170();
  sub_1001D1840();

  v11 = os_variant_allows_internal_security_policies();

  if (v11)
  {
    sub_1001D0170();
    sub_1001D1840();

    v12 = os_variant_allows_internal_security_policies();

    if (!v12)
    {
      __break(1u);
      return;
    }

    sub_1001B5970(v10);
    v13 = *(v5 + 48);
    if (v13(v10, 1, v4) == 1)
    {
      sub_1001B5F5C(a1, a2);
      if (v13(v10, 1, v4) != 1)
      {
        sub_100011F00(v10, &unk_100230300, &qword_1001D7138);
      }
    }

    else
    {
      (*(v5 + 32))(a2, v10, v4);
    }
  }

  else
  {
    sub_1001B5714(a2);
  }

  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v14 = sub_1001D0E60();
  sub_10003A37C(v14, qword_1002298E0);
  (*(v5 + 16))(v7, a2, v4);
  v15 = sub_1001D0E50();
  v16 = sub_1001D1E00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    v19 = sub_1001D02B0();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_1000954E0(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "current environment=%{public}s", v17, 0xCu);
    sub_100011CF0(v18);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1001B3FF8(uint64_t a1, void *a2)
{
  v3 = v2;
  v36 = a2;
  v41 = a1;
  v4 = sub_100011AC0(&unk_1002302E0, &qword_1001E2220);
  __chkstk_darwin(v4 - 8);
  v39 = &v31 - v5;
  v40 = sub_1001CFE60();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1001CFDE0();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001CFE40();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  swift_defaultActor_initialize();
  v15 = qword_100229848;
  v16 = sub_1001CFD60();
  v17 = *(*(v16 - 8) + 56);
  v17(v3 + v15, 1, 1, v16);
  v18 = qword_100229850;
  v17(v3 + qword_100229850, 1, 1, v16);
  v19 = *(v41 + 160);
  *(v3 + qword_100242F28) = v19;
  v43 = v19;
  v20 = *(*v3 + 152);
  v21 = v36;
  *(v3 + v20) = v36;
  sub_1001CC4C0(&v43, v42);
  v22 = v21;
  sub_1000931F4(v22, v14);
  swift_beginAccess();
  sub_10001BAC8(v14, v3 + v15, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v23 = *(v3 + v20);
  v24 = v37;
  sub_100096820(v14);

  v25 = v39;
  swift_beginAccess();
  v26 = v3 + v18;
  v27 = v40;
  v28 = v35;
  sub_10001BAC8(v14, v26, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v29 = v38;
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v38);
  sub_1001CFDF0();
  (*(v7 + 8))(v9, v29);
  sub_1001CFE50();
  result = (*(v24 + 48))(v25, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100088D84(v41);

    (*(v24 + 32))(v34, v25, v27);
    sub_1001CFE20();
    (*(v32 + 32))(v3 + qword_100242F30, v28, v33);
    return v3;
  }

  return result;
}

void sub_1001B44B8(unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v6 = v5;
  v76 = a3;
  v77 = a4;
  v81 = a2;
  v82 = a5;
  v7 = sub_1001CFDD0();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v86 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001CFDA0();
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  __chkstk_darwin(v9);
  v88 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001CFD60();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v83 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v87 = &v72 - v17;
  __chkstk_darwin(v16);
  v19 = &v72 - v18;
  v20 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v21 = __chkstk_darwin(v20 - 8);
  v80 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v72 - v24;
  __chkstk_darwin(v23);
  v27 = &v72 - v26;
  v28 = qword_100229848;
  swift_beginAccess();
  sub_10001208C(v6 + v28, v27, &qword_100227A38, &unk_1001D35F0);
  v29 = v13;
  sub_10001208C(v27, v25, &qword_100227A38, &unk_1001D35F0);
  if ((*(v13 + 48))(v25, 1, v12) == 1)
  {
    sub_100011F00(v27, &qword_100227A38, &unk_1001D35F0);
    sub_100011F00(v25, &qword_100227A38, &unk_1001D35F0);
  }

  else
  {
    (*(v13 + 32))(v19, v25, v12);
    v75 = v6;
    v30 = v87;
    sub_1001CFCA0();
    sub_1001CC51C(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31 = sub_1001D1780();
    v32 = *(v13 + 8);
    v6 = v75;
    v32(v30, v12);
    v32(v19, v12);
    sub_100011F00(v27, &qword_100227A38, &unk_1001D35F0);
    if ((v31 & 1) == 0)
    {
      v70 = 0;
      v69 = 0;
      v66 = 0;
      goto LABEL_9;
    }
  }

  v33 = v87;
  sub_1001CFE00();
  v34 = v80;
  (*(v29 + 16))(v80, v33, v12);
  v74 = v29;
  v75 = v12;
  (*(v29 + 56))(v34, 0, 1, v12);
  swift_beginAccess();
  sub_10001BAC8(v34, v6 + v28, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v35 = *(v6 + *(*v6 + 152));
  isa = sub_1001CFCB0().super.isa;
  v37 = sub_1001D17A0();
  [v35 setObject:isa forKey:v37];

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  (*(v85 + 16))(v88, v81, v84);
  v39 = *(v6 + qword_100242F28);
  v38 = *(v6 + qword_100242F28 + 8);

  sub_1001CFDC0();
  sub_100011AC0(&unk_100230220, &qword_1001E2148);
  v40 = sub_100011AC0(&qword_10022BDC8, &qword_1001E2150);
  v41 = *(*(v40 - 8) + 72);
  v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1001D62F0;
  v44 = (v43 + v42);
  v45 = *(v40 + 48);
  *v44 = 0;
  sub_1001CFD20();
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v46 < 9.22337204e18)
  {
    v81 = 0x80000001001E7D00;
    *&v44[v45] = v46;
    v47 = enum case for EventValue.int(_:);
    v48 = sub_1001CFEE0();
    v80 = v43;
    v49 = v48;
    v50 = *(v48 - 8);
    v73 = v39;
    v51 = *(v50 + 104);
    (v51)(&v44[v45], v47, v48);
    v52 = &v44[v41 + *(v40 + 48)];
    v44[v41] = 1;
    v53 = v77;
    *v52 = v76;
    v52[1] = v53;
    v76 = v38;
    v54 = enum case for EventValue.string(_:);
    v51();
    v55 = &v44[2 * v41];
    v56 = &v55[*(v40 + 48)];
    *v55 = 2;

    *v56 = sub_1001CFD70();
    v56[1] = v57;
    (v51)(v56, v54, v49);
    v58 = &v44[3 * v41];
    v59 = *(v40 + 48);
    *v58 = 3;
    v60 = &v58[v59];
    v61 = v76;
    *v60 = v73;
    v60[1] = v61;
    v51();
    v62 = &v44[4 * v41];
    v63 = &v62[*(v40 + 48)];
    *v62 = 4;
    v64 = v86;
    *v63 = sub_1001CFDB0();
    v63[1] = v65;
    (v51)(v63, v54, v49);
    v66 = sub_1000D5578(v80);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v78 + 8))(v64, v79);
    (*(v85 + 8))(v88, v84);
    v67 = v75;
    v68 = *(v74 + 8);
    v68(v83, v75);
    v68(v87, v67);
    v69 = v81;
    v70 = 0xD000000000000015;
LABEL_9:
    v71 = v82;
    *v82 = v70;
    v71[1] = v69;
    v71[3] = 0;
    v71[4] = 0;
    v71[2] = v66;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1001B4D6C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v7 = v6;
  v90 = a5;
  v91 = a2;
  v86 = a3;
  v87 = a4;
  v92 = a6;
  v93 = a1;
  v8 = sub_1001CFDD0();
  v88 = *(v8 - 8);
  v89 = v8;
  __chkstk_darwin(v8);
  v96 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1001CFDA0();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v99 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001CFD60();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v94 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v98 = &v80 - v16;
  __chkstk_darwin(v15);
  v18 = &v80 - v17;
  v19 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v80 - v24;
  __chkstk_darwin(v23);
  v27 = &v80 - v26;
  v28 = qword_100229850;
  swift_beginAccess();
  sub_10001208C(v7 + v28, v27, &qword_100227A38, &unk_1001D35F0);
  v29 = v12;
  sub_10001208C(v27, v25, &qword_100227A38, &unk_1001D35F0);
  if ((*(v12 + 48))(v25, 1, v11) == 1)
  {
    sub_100011F00(v27, &qword_100227A38, &unk_1001D35F0);
    sub_100011F00(v25, &qword_100227A38, &unk_1001D35F0);
  }

  else
  {
    (*(v12 + 32))(v18, v25, v11);
    v85 = v22;
    v30 = v98;
    sub_1001CFCA0();
    sub_1001CC51C(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v31 = sub_1001D1780();
    v32 = *(v12 + 8);
    v33 = v30;
    v22 = v85;
    v32(v33, v11);
    v32(v18, v11);
    v29 = v12;
    sub_100011F00(v27, &qword_100227A38, &unk_1001D35F0);
    if ((v31 & 1) == 0)
    {
      v78 = 0;
      v77 = 0;
      v74 = 0;
      goto LABEL_9;
    }
  }

  v34 = v93;
  v35 = v94;
  sub_1001CFE00();
  v85 = *(v29 + 16);
  (v85)(v22, v35, v11);
  (*(v29 + 56))(v22, 0, 1, v11);
  swift_beginAccess();
  sub_10001BAC8(v22, v7 + v28, &qword_100227A38, &unk_1001D35F0);
  swift_endAccess();
  v36 = *(v7 + *(*v7 + 152));
  isa = sub_1001CFCB0().super.isa;
  v38 = sub_1001D17A0();
  [v36 setObject:isa forKey:v38];

  v39 = v90;
  v40 = v90 + qword_10022F7E8;
  os_unfair_lock_lock((v90 + qword_10022F7E8));
  v84 = sub_1001B9B40((v40 + 8), v39, v34);
  v90 = v41;
  os_unfair_lock_unlock(v40);
  (v85)(v98, v34, v11);
  (*(v95 + 16))(v99, v91, v97);
  v42 = *(v7 + qword_100242F28 + 8);
  v93 = *(v7 + qword_100242F28);

  sub_1001CFDC0();
  sub_100011AC0(&unk_100230250, &qword_1001E2178);
  v43 = sub_100011AC0(&qword_10022BDD8, &unk_1001E2180);
  v44 = *(*(v43 - 8) + 72);
  v45 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1001D3ED0;
  v47 = v46 + v45;
  v48 = *(v43 + 48);
  *(v46 + v45) = 0;
  sub_1001CFD20();
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v49 < 9.22337204e18)
  {
    v91 = 0x80000001001E7D40;
    *(v47 + v48) = v49;
    v50 = enum case for EventValue.int(_:);
    v82 = enum case for EventValue.int(_:);
    v51 = sub_1001CFEE0();
    v85 = v11;
    v52 = v51;
    v53 = *(v51 - 8);
    v83 = v29;
    v54 = *(v53 + 104);
    v81 = v42;
    (v54)(v47 + v48, v50, v51);
    v55 = (v47 + v44 + *(v43 + 48));
    *(v47 + v44) = 1;
    v56 = v87;
    *v55 = v86;
    v55[1] = v56;
    v57 = enum case for EventValue.string(_:);
    v54();
    v86 = v46;
    v58 = (v47 + 2 * v44);
    v59 = &v58[*(v43 + 48)];
    *v58 = 2;

    *v59 = sub_1001CFD70();
    v59[1] = v60;
    (v54)(v59, v57, v52);
    v61 = (v47 + 3 * v44);
    v62 = *(v43 + 48);
    *v61 = 3;
    v63 = &v61[v62];
    v64 = v81;
    *v63 = v93;
    v63[1] = v64;
    v54();
    v65 = (v47 + 4 * v44);
    v66 = &v65[*(v43 + 48)];
    *v65 = 4;
    v67 = v96;
    *v66 = sub_1001CFDB0();
    v66[1] = v68;
    (v54)(v66, v57, v52);
    v69 = (v47 + 5 * v44);
    v70 = *(v43 + 48);
    *v69 = 5;
    *&v69[v70] = v84;
    v71 = v82;
    (v54)(&v69[v70], v82, v52);
    v72 = *(v43 + 48);
    v73 = (v47 + 6 * v44);
    *v73 = 6;
    *&v73[v72] = v90;
    (v54)(&v73[v72], v71, v52);
    v74 = sub_1000D5760(v86);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v88 + 8))(v67, v89);
    (*(v95 + 8))(v99, v97);
    v75 = *(v83 + 8);
    v76 = v85;
    v75(v98, v85);
    v75(v94, v76);
    v77 = v91;
    v78 = 0xD000000000000014;
LABEL_9:
    v79 = v92;
    *v92 = v78;
    v79[1] = v77;
    v79[3] = 0;
    v79[4] = 0;
    v79[2] = v74;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1001B5714(uint64_t a1@<X8>)
{
  v2 = sub_1001D02E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(a1, enum case for TC2Environment.production(_:), v2);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v6 = sub_1001D0E60();
  sub_10003A37C(v6, qword_1002298E0);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_1001D02B0();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_1000954E0(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Configuration selected environment=%{public}s", v9, 0xCu);
    sub_100011CF0(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1001B5970@<X0>(char *a1@<X8>)
{
  v37 = a1;
  v1 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  v4 = sub_1001D02E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  sub_1001D0170();
  sub_1001D1840();

  v12 = os_variant_allows_internal_security_policies();

  if (!v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0310();
  sub_1001D05B0();
  sub_10005956C();
  sub_1001D0210();
  (*(v9 + 8))(v11, v8);
  v13 = v39;
  if (!v39)
  {
    if (qword_100227738 == -1)
    {
LABEL_9:
      v21 = sub_1001D0E60();
      sub_10003A37C(v21, qword_1002298E0);
      v16 = sub_1001D0E50();
      v22 = sub_1001D1DD0();
      if (!os_log_type_enabled(v16, v22))
      {
LABEL_17:

        v32 = 1;
        v33 = v37;
        return (*(v5 + 56))(v33, v32, 1, v4);
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v22, "Configuration defaults absent, no environment configured", v23, 2u);
LABEL_11:

      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  v14 = v38;

  sub_1001D02A0();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100011F00(v3, &unk_100230300, &qword_1001D7138);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v15 = sub_1001D0E60();
    sub_10003A37C(v15, qword_1002298E0);

    v16 = sub_1001D0E50();
    v17 = sub_1001D1DD0();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136446210;
    v20 = sub_1000954E0(v14, v13, &v38);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Configuration defaults=%{public}s unrecognized, no environment configured", v18, 0xCu);
    sub_100011CF0(v19);

    goto LABEL_11;
  }

  v24 = *(v5 + 32);
  v24(v7, v3, v4);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v25 = sub_1001D0E60();
  sub_10003A37C(v25, qword_1002298E0);

  v26 = sub_1001D0E50();
  v27 = sub_1001D1DC0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = v24;
    v29 = v28;
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446210;
    v31 = sub_1000954E0(v14, v13, &v38);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Configuration selected configured environment=%{public}s from defaults", v29, 0xCu);
    sub_100011CF0(v30);

    v24 = v36;
  }

  else
  {
  }

  v34 = v37;
  v24(v37, v7, v4);
  v33 = v34;
  v32 = 0;
  return (*(v5 + 56))(v33, v32, 1, v4);
}

uint64_t sub_1001B5F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = sub_100011AC0(&unk_100230300, &qword_1001D7138);
  v4 = __chkstk_darwin(v3 - 8);
  v142 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v131 - v6;
  v146 = sub_1001D02E0();
  v147 = *(v146 - 8);
  v8 = __chkstk_darwin(v146);
  v143 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v144 = &v131 - v11;
  v12 = __chkstk_darwin(v10);
  v141 = &v131 - v13;
  v14 = __chkstk_darwin(v12);
  v139 = &v131 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v131 - v17;
  __chkstk_darwin(v16);
  v20 = &v131 - v19;
  v21 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v131 - v26;
  sub_1001D0170();
  v28 = sub_1001D1840();

  v29 = os_variant_allows_internal_security_policies();

  if (!v29)
  {
    __break(1u);
LABEL_68:
    swift_once();
LABEL_14:
    v55 = sub_1001D0E60();
    sub_10003A37C(v55, qword_1002298E0);
    (*(v28 + 16))(v18, v20, v7);
    v56 = sub_1001D0E50();
    v57 = sub_1001D1DC0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v148 = v59;
      *v58 = 136446210;
      v60 = sub_1001D02B0();
      v62 = v61;
      (*(v147 + 8))(v18, v7);
      v63 = sub_1000954E0(v60, v62, &v148);
      v28 = v147;

      *(v58 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Configuration selected environment=%{public}s", v58, 0xCu);
      sub_100011CF0(v59);
    }

    else
    {

      (*(v28 + 8))(v18, v7);
    }

    return (*(v28 + 32))(v145, v20, v7);
  }

  sub_1001D0170();
  sub_1001D1840();

  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    v28 = v147;
    v7 = v146;
    (*(v147 + 104))(v20, enum case for TC2Environment.production(_:), v146);
    if (qword_100227738 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

  v31 = a1[3];
  v32 = a1[4];
  sub_100024DC8(a1, v31);
  v140 = (*(v32 + 24))(v31, v32);
  v34 = v33;
  v35 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0450();
  v36 = sub_1001D05B0();
  v137 = sub_10005956C();
  v138 = v36;
  sub_1001D0210();
  v38 = *(v22 + 8);
  v37 = v22 + 8;
  v136 = v38;
  v39 = (v38)(v27, v21);
  v40 = v149;
  if (!v149)
  {
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v64 = sub_1001D0E60();
    sub_10003A37C(v64, qword_1002298E0);
    v65 = sub_1001D0E50();
    v66 = sub_1001D1DD0();
    v67 = os_log_type_enabled(v65, v66);
    v7 = v146;
    v28 = v147;
    if (v67)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Configuration does not see bootFixedLiveOnEnvironment", v68, 2u);
    }

    goto LABEL_34;
  }

  v134 = v35;
  v135 = v37;
  v41 = v148;
  v148 = 44;
  v149 = 0xE100000000000000;
  __chkstk_darwin(v39);
  *(&v131 - 2) = &v148;

  v43 = sub_1001C74B0(1, 1, sub_10003C678, (&v131 - 4), v41, v40, v42);
  if (v43[2] != 2)
  {

    if (qword_100227738 == -1)
    {
LABEL_23:
      v69 = sub_1001D0E60();
      sub_10003A37C(v69, qword_1002298E0);

      v70 = sub_1001D0E50();
      v71 = sub_1001D1DE0();

      v72 = os_log_type_enabled(v70, v71);
      v7 = v146;
      if (v72)
      {
        v73 = swift_slowAlloc();
        v74 = v34;
        v75 = swift_slowAlloc();
        v148 = v75;
        *v73 = 136315138;
        v76 = sub_1000954E0(v41, v40, &v148);

        *(v73 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v70, v71, "Configuration saw invalid bootFixedLiveOnEnvironment=%s", v73, 0xCu);
        sub_100011CF0(v75);
        v34 = v74;
      }

      else
      {
      }

      goto LABEL_33;
    }

LABEL_70:
    swift_once();
    goto LABEL_23;
  }

  v132 = v34;

  if (!v43[2])
  {
    __break(1u);
    goto LABEL_70;
  }

  v44 = v43[4];

  v45 = sub_1001D1850();
  v47 = v46;

  if (v43[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  v133 = sub_1001D1850();
  v44 = v48;

  if (qword_100227738 != -1)
  {
LABEL_72:
    swift_once();
  }

  v49 = sub_1001D0E60();
  v50 = sub_10003A37C(v49, qword_1002298E0);

  v51 = sub_1001D0E50();
  v52 = sub_1001D1DD0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v131 = v50;
    v148 = v54;
    *v53 = 136315394;
    *(v53 + 4) = sub_1000954E0(v45, v47, &v148);
    *(v53 + 12) = 2082;
    *(v53 + 14) = sub_1000954E0(v133, v44, &v148);
    _os_log_impl(&_mh_execute_header, v51, v52, "Configuration saw bootFixedLiveOnEnvironment with id=%s, environment=%{public}s", v53, 0x16u);
    swift_arrayDestroy();
  }

  v34 = v132;
  v28 = v147;
  if (v45 == v140 && v47 == v132)
  {
  }

  else
  {
    v77 = sub_1001D2470();

    if ((v77 & 1) == 0)
    {

      v128 = sub_1001D0E50();
      v129 = sub_1001D1DD0();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "Configuration saw bootFixedLiveOnEnvironment from previous boot, ignoring", v130, 2u);
      }

      v7 = v146;
      goto LABEL_34;
    }
  }

  sub_1001D02A0();
  v78 = *(v28 + 48);
  v79 = v28;
  v80 = v146;
  if (v78(v7, 1, v146) != 1)
  {

    v121 = *(v79 + 32);
    v122 = v139;
    v121(v139, v7, v80);

    v123 = sub_1001D0E50();
    v124 = sub_1001D1DC0();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v148 = v126;
      *v125 = 136446210;
      v127 = sub_1000954E0(v133, v44, &v148);

      *(v125 + 4) = v127;
      _os_log_impl(&_mh_execute_header, v123, v124, "Configuration agrees with current boot's selection, environment=%{public}s", v125, 0xCu);
      sub_100011CF0(v126);

      v122 = v139;
    }

    else
    {
    }

    return (v121)(v145, v122, v80);
  }

  sub_100011F00(v7, &unk_100230300, &qword_1001D7138);
  v81 = sub_1001D0E50();
  v82 = sub_1001D1DE0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&_mh_execute_header, v81, v82, "Configuration saw bootFixedLiveOnEnvironment with invalid environment, ignoring", v83, 2u);
  }

  v7 = v146;
LABEL_33:
  v28 = v147;
LABEL_34:
  sub_1001D0420();
  sub_1001D0210();
  v136(v25, v21);
  v84 = v149;
  if (!v149)
  {
    v94 = v143;
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v95 = sub_1001D0E60();
    sub_10003A37C(v95, qword_1002298E0);
    v96 = sub_1001D0E50();
    v97 = sub_1001D1DD0();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Configuration does not see proposedEnvironment", v98, 2u);
    }

    goto LABEL_53;
  }

  v85 = v148;

  v86 = v142;
  sub_1001D02A0();
  if ((*(v28 + 48))(v86, 1, v7) == 1)
  {
    sub_100011F00(v86, &unk_100230300, &qword_1001D7138);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v87 = sub_1001D0E60();
    sub_10003A37C(v87, qword_1002298E0);

    v88 = sub_1001D0E50();
    v89 = sub_1001D1DE0();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = v34;
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v148 = v92;
      *v91 = 136446210;
      v93 = sub_1000954E0(v85, v84, &v148);

      *(v91 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v88, v89, "Configuration saw invalid proposed environment=%{public}s, ignoring", v91, 0xCu);
      sub_100011CF0(v92);

      v34 = v90;
    }

    else
    {
    }

    v94 = v143;
LABEL_53:
    (*(v28 + 104))(v144, enum case for TC2Environment.carry(_:), v7);
    if (qword_100227738 != -1)
    {
      swift_once();
    }

    v108 = sub_1001D0E60();
    sub_10003A37C(v108, qword_1002298E0);
    (*(v28 + 16))(v94, v144, v7);
    v109 = sub_1001D0E50();
    v110 = sub_1001D1DC0();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = v34;
      v113 = swift_slowAlloc();
      v148 = v113;
      *v111 = 136446210;
      v114 = sub_1001D02B0();
      v115 = v94;
      v117 = v116;
      (*(v28 + 8))(v115, v7);
      v118 = sub_1000954E0(v114, v117, &v148);

      *(v111 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v109, v110, "Configuration selected environment=%{public}s", v111, 0xCu);
      sub_100011CF0(v113);
      v34 = v112;
    }

    else
    {

      (*(v28 + 8))(v94, v7);
    }

    v20 = v144;
    v119 = sub_1001D02B0();
    sub_1001B722C(v140, v34, v119, v120);

    return (*(v28 + 32))(v145, v20, v7);
  }

  v99 = *(v28 + 32);
  v100 = v141;
  v99(v141, v86, v7);
  if (qword_100227738 != -1)
  {
    swift_once();
  }

  v101 = sub_1001D0E60();
  sub_10003A37C(v101, qword_1002298E0);

  v102 = sub_1001D0E50();
  v103 = sub_1001D1DC0();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = v34;
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v148 = v106;
    *v105 = 136446210;
    *(v105 + 4) = sub_1000954E0(v85, v84, &v148);
    _os_log_impl(&_mh_execute_header, v102, v103, "Configuration moving to proposed environment=%{public}s", v105, 0xCu);
    sub_100011CF0(v106);
    v100 = v141;

    v34 = v104;
  }

  sub_1001B722C(v140, v34, v85, v84);

  return (v99)(v145, v100, v7);
}

uint64_t sub_1001B722C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  sub_1001D0170();
  sub_1001D1840();

  v12 = os_variant_allows_internal_security_policies();

  if (v12)
  {
    sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0450();
    v19[0] = a1;
    v19[1] = a2;

    v20._countAndFlagsBits = 44;
    v20._object = 0xE100000000000000;
    sub_1001D18B0(v20);
    v21._countAndFlagsBits = a3;
    v21._object = a4;
    sub_1001D18B0(v21);
    v14 = sub_1001D0570();
    v16 = v15;
    v23._countAndFlagsBits = sub_1001D0560();
    v18 = v17;
    v22._countAndFlagsBits = v14;
    v22._object = v16;
    v23._object = v18;
    sub_1001D1870(v22, v23);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001B73E8()
{
  v1 = v0;
  v2 = sub_1001D13F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_1001D17A0();
  sub_10005A1A4();
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.background(_:), v2);
  v8 = sub_1001D1E70();
  (*(v3 + 8))(v5, v2);
  aBlock[4] = sub_1001CC2B8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001B8674;
  aBlock[3] = &unk_100223608;
  v9 = _Block_copy(aBlock);

  [v6 registerForTaskWithIdentifier:v7 usingQueue:v8 launchHandler:v9];
  _Block_release(v9);
}

id sub_1001B75D0(void *a1, void *a2)
{
  v4 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = a2[5];
  v8 = a2[6];
  sub_100024DC8(a2 + 2, v7);
  if ((*(v8 + 16))(v7, v8))
  {
    sub_1001D1B30();
    v9 = sub_1001D1BA0();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = a1;

    v11 = a1;
    v12 = sub_10015C9F4(0, 0, v6, &unk_1001E21E0, v10);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = v12;
    aBlock[4] = sub_1001CC430;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001B8620;
    aBlock[3] = &unk_100223680;
    v14 = _Block_copy(aBlock);

    [v11 setExpirationHandlerWithReason:v14];
    _Block_release(v14);
  }

  else
  {

    v16 = sub_1001D0E50();
    v17 = sub_1001D1E00();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000954E0(*(a2 + qword_10022CBE8), *(a2 + qword_10022CBE8 + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s scheduled task skipped", v18, 0xCu);
      sub_100011CF0(v19);
    }

    return [a1 setTaskCompleted];
  }
}

uint64_t sub_1001B78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1001CFD60();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001B79FC, 0, 0);
}

uint64_t sub_1001B79FC()
{
  v13 = v0;
  v0[13] = qword_10022CBE0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000954E0(*(v3 + qword_10022CBE8), *(v3 + qword_10022CBE8 + 8), &v12);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s performing scheduled task", v4, 0xCu);
    sub_100011CF0(v5);
  }

  v6 = v0[6];
  v7 = v6[5];
  v8 = v6[6];
  sub_100024DC8(v6 + 2, v7);
  v11 = (*(v8 + 24) + **(v8 + 24));
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1001B7C10;

  return v11(v7, v8);
}

uint64_t sub_1001B7C10()
{

  return _swift_task_switch(sub_1001B7D0C, 0, 0);
}

uint64_t sub_1001B7D0C(uint64_t a1)
{
  v43 = v1;
  if ((sub_1001D1C30() & 1) == 0)
  {

    v8 = sub_1001D0E50();
    v9 = sub_1001D1E00();

    if (os_log_type_enabled(v8, v9))
    {
      v14 = *(v1 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000954E0(*(v14 + qword_10022CBE8), *(v14 + qword_10022CBE8 + 8), v42);
      v13 = "%s scheduled task finished";
      goto LABEL_7;
    }

LABEL_8:

    [*(v1 + 56) setTaskCompleted];
    goto LABEL_9;
  }

  v2 = *(v1 + 48);
  v3 = v2[5];
  v4 = v2[6];
  sub_100024DC8(v2 + 2, v3);
  *&v5 = COERCE_DOUBLE((*(v4 + 8))(v3, v4));
  if (v7 & 1) != 0 || ((v17 = *&v5, v18 = v6, v19 = *(v1 + 48), v20 = *(v19 + qword_10022CBF0), v21 = *(v19 + 56), v22 = *(v19 + 64), os_unfair_lock_lock((v20 + 16)), sub_100156E1C((v20 + 24), v42), os_unfair_lock_unlock((v20 + 16)), v23 = v17, v24 = v18, v25 = v42[0], v41 = v21, !*(v42[0] + 16)) || (v26 = sub_100006028(v21, v22), (v27 & 1) == 0) ? (v28 = 1) : ((*(*(v1 + 72) + 16))(*(v1 + 96), *(v25 + 56) + *(*(v1 + 72) + 72) * v26, *(v1 + 64)), v28 = 0), v29 = *(v1 + 96), v30 = *(v1 + 72), v31 = *(v1 + 80), v32 = *(v1 + 64), , v33 = *(v30 + 56), v33(v29, v28, 1, v32), _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0(), v34 = sub_10010266C(v29, v31, v23, v24), v36 = v35, (*(v30 + 8))(v31, v32), sub_100011F00(v29, &qword_100227A38, &unk_1001D35F0), (v36))
  {

    v8 = sub_1001D0E50();
    v9 = sub_1001D1E00();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v1 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000954E0(*(v10 + qword_10022CBE8), *(v10 + qword_10022CBE8 + 8), v42);
      v13 = "%s scheduled task has been canceled with no retry";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, v9, v13, v11, 0xCu);
      sub_100011CF0(v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v37 = *(v1 + 88);
  v38 = *(v1 + 64);
  v39 = *(v1 + 56);

  sub_1001CFD50();
  v33(v37, 0, 1, v38);
  type metadata accessor for PreferencesStore();
  v40 = sub_100156F28((v1 + 16));
  sub_100017AE4(v37, v41, v22);
  (v40)(v1 + 16, 0);
  sub_1001B8180(v39, *&v34);
LABEL_9:

  v15 = *(v1 + 8);

  return v15();
}

void sub_1001B8180(void *a1, double a2)
{
  v3 = v2;

  v6 = sub_1001D0E50();
  v7 = sub_1001D1E00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000954E0(*(v3 + qword_10022CBE8), *(v3 + qword_10022CBE8 + 8), &v17);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s scheduled task has been canceled retryAfter=%f", v8, 0x16u);
    sub_100011CF0(v9);
  }

  v17 = 0;
  if ([a1 setTaskExpiredWithRetryAfter:&v17 error:a2])
  {

    _objc_retain_x1();
  }

  else
  {
    v10 = v17;
    sub_1001CFA20();

    swift_willThrow();

    swift_errorRetain();
    v11 = sub_1001D0E50();
    v12 = sub_1001D1E00();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1000954E0(*(v3 + qword_10022CBE8), *(v3 + qword_10022CBE8 + 8), &v17);
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s scheduled task has been canceled and can't be scheduled for retry error=%@", v13, 0x16u);
      sub_100011F00(v14, &unk_1002301D0, &qword_1001D4F50);

      sub_100011CF0(v15);
    }

    else
    {
    }
  }
}

void sub_1001B84C4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000954E0(*(a2 + qword_10022CBE8), *(a2 + qword_10022CBE8 + 8), &v9);
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s scheduled task is being expired reason=%lu", v7, 0x16u);
    sub_100011CF0(v8);
  }

  sub_1001D1C20();
}

uint64_t sub_1001B8620(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1001B8674(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1001B86DC()
{
  v1 = v0;
  v2 = sub_1001D0200();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100011AC0(&unk_100230130, &unk_1001E16A0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  sub_10001208C(v1, &v12 - v7, &unk_100230130, &unk_1001E16A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100011F00(v8, &unk_100230130, &unk_1001E16A0);
        return 0x2074736575716552;
      }

      else
      {
        sub_100011F00(v8, &unk_100230130, &unk_1001E16A0);
        return 0xD000000000000016;
      }
    }

    else
    {
      sub_100011F00(v8, &unk_100230130, &unk_1001E16A0);
      return 0xD000000000000022;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x696C616974696E49;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x64656873696E6946;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1001D2030(18);

    v12 = 0x282064656C696146;
    v13 = 0xEF203A726F727265;
    sub_1001CC51C(&qword_10022E2F8, &type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    v14._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    sub_1001D18B0(v15);
    v11 = v12;
    (*(v3 + 8))(v5, v2);
    return v11;
  }
}

uint64_t sub_1001B8A00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = sub_100011AC0(&unk_100230110, &unk_1001D6520);
  __chkstk_darwin(v3 - 8);
  v52 = v43 - v4;
  v5 = sub_1001D08A0();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v56 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  __chkstk_darwin(v7 - 8);
  v55 = v43 - v8;
  v9 = sub_1001CFD60();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v54 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001CFDA0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v43 - v16;
  v18 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  __chkstk_darwin(v18);
  v20 = v43 - v19;
  v21 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v21);
  v22 = sub_100011AC0(&qword_10022E308, &qword_1001E15E0);
  sub_10001208C(v21 + *(v22 + 28), v20, &unk_100230120, &qword_1001DEF40);
  os_unfair_lock_unlock(v21);
  v23 = *&v20[v18[36]];
  v58 = v20;
  v59 = sub_1001C89E4(v23, sub_1001CA968, v57);
  v24 = sub_1001B13B8(*&v20[v18[37]]);
  sub_10003A3F0(v24);
  v25 = *(v12 + 16);
  v26 = v2 + *(*v2 + 160);
  v50 = v17;
  v25(v17, v26, v11);
  v27 = v2 + *(*v2 + 168);
  v51 = v15;
  v25(v15, v27, v11);
  v28 = (v2 + *(*v2 + 224));
  v29 = *v28;
  v30 = v28[1];
  (*(v45 + 16))(v54, v2 + *(*v2 + 176), v46);
  v31 = (v2 + *(*v2 + 192));
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v2 + *(*v2 + 208));
  sub_10001208C(v2 + *(*v2 + 216), v55, &qword_1002288B0, &qword_1001D5FC0);
  v35 = *v2;
  v36 = *(v2 + *(*v2 + 232));
  v46 = v32;
  v47 = v29;
  v45 = v34;
  if (v36)
  {
    if (v36 == 1)
    {
      v44 = 0xE300000000000000;
      v37 = 7827308;
    }

    else
    {
      v44 = 0xEA0000000000646ELL;
      v37 = 0x756F72676B636162;
    }
  }

  else
  {
    v44 = 0xE400000000000000;
    v37 = 1751607656;
  }

  v43[2] = v37;
  v38 = v52;
  (*(v48 + 16))(v56, v2 + *(v35 + 240), v49);

  v52 = v30;

  v49 = v33;

  v48 = sub_1001B86DC();
  v43[1] = v39;
  v43[0] = sub_10011C5EC(*&v20[v18[24]], v20[v18[24] + 8]);
  sub_10001208C(&v20[v18[23]], v38, &unk_100230110, &unk_1001D6520);
  v40 = sub_1001D0ED0();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v38, 1, v40) == 1)
  {
    sub_100011F00(v38, &unk_100230110, &unk_1001D6520);
    sub_1000D65D4(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_100150D38();
    (*(v41 + 8))(v38, v40);
  }

  sub_10011C7CC(*&v20[v18[25]], *&v20[v18[25] + 8], *&v20[v18[25] + 16], *&v20[v18[25] + 24]);

  sub_1001D0700();
  return sub_100011F00(v20, &unk_100230120, &qword_1001DEF40);
}

uint64_t sub_1001B9130(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v6 = *a3;
  v5 = a3[1];
  v7 = *a3 >> 62;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
LABEL_9:
      v10 = 0xEA00000000006465;
      v11 = 0x6966697265766E75;
      v12 = v6 ^ 0xC000000000000008 | v5;
      v13 = 0xE800000000000000;
      v14 = v12 == 0;
      if (v12)
      {
        v15 = 0x79654B746E6573;
      }

      else
      {
        v15 = 0x6465696669726576;
      }

      if (!v14)
      {
        v13 = 0xE700000000000000;
      }

      if (v6 ^ 0xC000000000000000 | v5)
      {
        v11 = 0x6E69796669726576;
        v10 = 0xE900000000000067;
      }

      if (v6 <= 0xC000000000000007)
      {
        v8._countAndFlagsBits = v11;
      }

      else
      {
        v8._countAndFlagsBits = v15;
      }

      if (v6 <= 0xC000000000000007)
      {
        v9 = v10;
      }

      else
      {
        v9 = v13;
      }

      goto LABEL_22;
    }

    v17._countAndFlagsBits = 0x64656873696E6966;
    v17._object = 0xE800000000000000;
    sub_1001D18B0(v17);
  }

  else
  {
    if (!v7)
    {
      v8._countAndFlagsBits = 0x6465696669726576;
      v9 = 0xEE0064656C696146;
LABEL_22:
      v8._object = v9;
      sub_1001D18B0(v8);

      goto LABEL_23;
    }

    v18._countAndFlagsBits = 0x6E69766965636572;
    v18._object = 0xE900000000000067;
    sub_1001D18B0(v18);
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_23:

  return sub_1001D0750();
}

uint64_t sub_1001B93D8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v63 = a1;
  v57 = sub_1001CFA40();
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v55 = &v51 - v12;
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v15 = sub_1001CFB10();
  v64 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v58 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v56 = &v51 - v18;
  v19 = sub_1001D02F0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = qword_10022F7F0;
  sub_1001CF960();
  swift_allocObject();
  *(v3 + v23) = sub_1001CF950();
  v24 = qword_10022F7E0;
  sub_1001CF920();
  swift_allocObject();
  *(v3 + v24) = sub_1001CF910();
  (*(v20 + 104))(v22, enum case for TC2LogCategory.daemon(_:), v19);
  sub_1001D08B0();
  (*(v20 + 8))(v22, v19);
  v25 = v64;
  *(v3 + 16) = v63;
  *(v3 + 24) = a3;

  sub_1001CF930();

  v63 = a2;
  sub_10001208C(a2, v14, &unk_100230170, &unk_1001E0D90);
  v26 = v15;
  v54 = *(v25 + 48);
  if (v54(v14, 1, v15) == 1)
  {
    sub_100011F00(v14, &unk_100230170, &unk_1001E0D90);
    (*(v25 + 56))(v3 + qword_10022F7D8, 1, 1, v15);
  }

  else
  {
    v27 = v56;
    v28 = v26;
    (*(v25 + 32))(v56, v14, v26);
    v65 = 0xD000000000000016;
    v66 = 0x80000001001E7070;
    v29 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v30 = v57;
    v61 = v28;
    v53 = v25 + 48;
    v31 = v59;
    v32 = v60;
    v52 = *(v60 + 104);
    v52(v59, enum case for URL.DirectoryHint.inferFromPath(_:), v57);
    v51 = sub_100011EAC();
    v33 = v55;
    sub_1001CFB00();
    v34 = *(v32 + 8);
    v34(v31, v30);
    (*(v64 + 56))(v33, 0, 1, v61);
    sub_1000DBEF4(v33, v3 + qword_10022F7D8, &unk_100230170, &unk_1001E0D90);
    v65 = 0x656863616375726CLL;
    v66 = 0xEF7473696C702E33;
    v52(v31, v29, v30);
    v25 = v64;
    v35 = v61;
    v36 = v58;
    sub_1001CFB00();
    v34(v31, v30);
    sub_10014D874(v36);
    v37 = *(v25 + 8);
    v37(v36, v35);
    v26 = v35;
    v37(v27, v35);
  }

  v38 = v3 + qword_10022F7E8;
  *v38 = 0;
  *(v38 + 8) = _swiftEmptyArrayStorage;

  v39 = sub_1001D0E50();
  v40 = sub_1001D1DD0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v65 = v42;
    *v41 = 136315138;
    v43 = v62;
    sub_10001208C(v4 + qword_10022F7D8, v62, &unk_100230170, &unk_1001E0D90);
    if (v54(v43, 1, v26) == 1)
    {
      sub_100011F00(v43, &unk_100230170, &unk_1001E0D90);
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v46 = v43;
      v47 = sub_1001CFA50();
      v45 = v48;
      (*(v25 + 8))(v46, v26);
      v44 = v47;
    }

    v49 = sub_1000954E0(v44, v45, &v65);

    *(v41 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "initialized workloadcache, file=%s", v41, 0xCu);
    sub_100011CF0(v42);
  }

  sub_100011F00(v63, &unk_100230170, &unk_1001E0D90);
  return v4;
}

int64_t sub_1001B9B40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v35 - v13;
  __chkstk_darwin(v12);
  v41 = v35 - v15;
  v16 = sub_1001CFD60();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v39 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v40 = v35 - v20;
  v43 = a3;
  v44 = a2;
  result = sub_10005E7D8(sub_10005EE28, v42);
  v22 = *(*a1 + 16);
  if (v22 < result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v17;
  sub_10005B55C(result, v22);
  v23 = *a1;
  v24 = *(*a1 + 16);
  if (!v24)
  {
    return v24;
  }

  v35[1] = v3;
  v36 = v16;
  v37 = a3;
  v25 = v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  result = sub_10001208C(v25, v14, &unk_100230260, &qword_1001D3660);
  if (v24 != 1)
  {
    v34 = 1;
    while (v34 < *(v23 + 16))
    {
      sub_10001208C(v25 + *(v8 + 72) * v34, v11, &unk_100230260, &qword_1001D3660);
      if (sub_1001CFCD0())
      {
        sub_100011F00(v14, &unk_100230260, &qword_1001D3660);
        result = sub_1000DBEF4(v11, v14, &unk_100230260, &qword_1001D3660);
      }

      else
      {
        result = sub_100011F00(v11, &unk_100230260, &qword_1001D3660);
      }

      if (v24 == ++v34)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_4:
  v26 = v41;
  sub_1000DBEF4(v14, v41, &unk_100230260, &qword_1001D3660);
  v27 = v38;
  v28 = v39;
  v29 = v36;
  (*(v38 + 16))(v39, v26, v36);
  sub_100011F00(v26, &unk_100230260, &qword_1001D3660);
  v30 = v40;
  (*(v27 + 32))(v40, v28, v29);
  sub_1001CFC90();
  v32 = v31;
  result = (*(v27 + 8))(v30, v29);
  v33 = v32 / 86400.0;
  if (COERCE__INT64(fabs(v32 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v33 < 9.22337204e18)
  {
    return v24;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1001B9F34(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001D0E50();
  v4 = sub_1001D1E00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "XPC connection invalidated", v5, 2u);
  }

  v6 = (v2 + *((swift_isaMask & *v2) + 0x90));
  os_unfair_lock_lock(v6);
  v7 = *&v6[2]._os_unfair_lock_opaque;
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_15:

LABEL_16:
    *&v6[2]._os_unfair_lock_opaque = _swiftEmptyArrayStorage;
    os_unfair_lock_unlock(v6);
    return;
  }

  v8 = sub_1001D2190();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (v8 >= 1)
  {
    lock = v6;
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v21 = v8;
    v22 = v7;
    do
    {
      if (v10)
      {
        v13 = sub_1001D2040();
      }

      else
      {
        v13 = *(v7 + 8 * v9 + 32);
      }

      v14 = sub_1001D0E50();
      v15 = sub_1001D1E00();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v16 = 136315394;
        *(v16 + 4) = sub_1000954E0(*(v13 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix), *(v13 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix + 8), &v23);
        *(v16 + 12) = 2080;
        v17 = sub_1001D1820();
        v19 = sub_1000954E0(v17, v18, &v23);

        *(v16 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "%s request task cancelled reason=%s", v16, 0x16u);
        swift_arrayDestroy();
        v8 = v21;
        v7 = v22;
      }

      ++v9;
      v11 = *(v13 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 24);
      v12 = *(v13 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver + 32);
      sub_100024DC8((v13 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver), v11);
      (*(v12 + 8))(1, v11, v12);
      sub_100011AC0(&qword_100227A58, &qword_1001D3600);
      sub_1001D1C20();
    }

    while (v8 != v9);

    v6 = lock;
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1001BA2BC(uint64_t a1)
{
  oslog = sub_1001D0E50();
  v1 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "XPC connection interrupted", v2, 2u);
  }
}

uint64_t sub_1001BA384(void *a1)
{
  v3 = sub_1001CFD60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001D02F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  (*(v8 + 104))(v10, enum case for TC2LogCategory.daemon(_:), v7);
  sub_1001D08B0();
  (*(v8 + 8))(v10, v7);
  *(v1 + *(*v1 + 112)) = a1;
  v11 = sub_1001D17A0();
  [a1 integerForKey:v11];

  sub_1001CFC70();
  (*(v4 + 32))(v1 + qword_10022FF70, v6, v3);
  return v1;
}

uint64_t sub_1001BA5A8(uint64_t *a1)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v3 - 8);
  v69 = (&v64 - v4);
  v5 = sub_1001CFD60();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v64 - v11;
  __chkstk_darwin(v10);
  v14 = &v64 - v13;
  sub_1001CFD50();
  v15 = qword_10022FF70;
  swift_beginAccess();
  v73 = *(v6 + 16);
  v73(v9, v2 + v15, v5);
  sub_1001CFCA0();
  v16 = *(v6 + 8);
  v16(v9, v5);
  sub_1001CC51C(&qword_100230230, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LOBYTE(v9) = sub_1001D1780();
  v16(v12, v5);
  v71 = v6 + 8;
  v72 = v14;
  v70 = v16;
  if ((v9 & 1) == 0)
  {
    v25 = v73;

    v26 = sub_1001D0E50();
    v27 = sub_1001D1E00();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v2;
      v29 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74 = v69;
      *v29 = 136315138;
      v25(v12, v28 + v15, v5);
      sub_1001CC51C(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v30 = sub_1001D23A0();
      v32 = v31;

      v33 = v70;
      v70(v12, v5);
      v34 = sub_1000954E0(v30, v32, &v74);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Ignoring TTR indication due to rate limit (1 per 24 hours), last report time %s.", v29, 0xCu);
      sub_100011CF0(v69);

      v33(v72, v5);
    }

    else
    {

      v70(v72, v5);
    }

    return 0;
  }

  swift_beginAccess();
  (*(v6 + 24))(v2 + v15, v14, v5);
  swift_endAccess();
  v17 = *(*v2 + 112);
  v73(v12, v2 + v15, v5);
  v66 = v2;
  sub_1001B0808(v12, *(v2 + v17));
  v64 = v5;
  v16(v12, v5);
  v18 = v68;
  v19 = *v68;
  v20 = v68[1];
  v21 = v68[3];
  if (v21)
  {
    v65 = v68[2];
    v22 = v21;
    v23 = v68[5];
    if (v23)
    {
LABEL_4:
      v24 = v18[4];
      v73 = v23;
      goto LABEL_10;
    }
  }

  else
  {

    v65 = v19;
    v22 = v20;
    v23 = v18[5];
    if (v23)
    {
      goto LABEL_4;
    }
  }

  v73 = 0xE700000000000000;
  v24 = 0x36323633353631;
LABEL_10:
  if (!v18[7])
  {
    v67 = 0x80000001001E7D90;
    v35 = 0xD000000000000015;
    v36 = v18[9];
    if (v36)
    {
      goto LABEL_12;
    }

LABEL_14:
    v38 = 0xE300000000000000;
    v37 = 7105601;
    goto LABEL_15;
  }

  v35 = v18[6];
  v67 = v18[7];
  v36 = v18[9];
  if (!v36)
  {
    goto LABEL_14;
  }

LABEL_12:
  v37 = v18[8];
  v38 = v36;
LABEL_15:
  v74 = 0;
  v75 = 0xE000000000000000;

  sub_1001D2030(150);
  v76._countAndFlagsBits = 0xD000000000000019;
  v76._object = 0x80000001001E7DB0;
  sub_1001D18B0(v76);
  v77._countAndFlagsBits = v19;
  v77._object = v20;
  sub_1001D18B0(v77);
  v78._object = 0xED00003D4449746ELL;
  v78._countAndFlagsBits = 0x656E6F706D6F4326;
  sub_1001D18B0(v78);
  v79._countAndFlagsBits = v24;
  v79._object = v73;
  sub_1001D18B0(v79);
  v80._object = 0xEF3D656D614E746ELL;
  v80._countAndFlagsBits = 0x656E6F706D6F4326;
  sub_1001D18B0(v80);
  v81._countAndFlagsBits = v35;
  v81._object = v67;
  sub_1001D18B0(v81);
  v82._object = 0x80000001001E7DD0;
  v82._countAndFlagsBits = 0xD000000000000012;
  sub_1001D18B0(v82);
  v83._countAndFlagsBits = v37;
  v68 = v38;
  v83._object = v38;
  sub_1001D18B0(v83);
  v84._countAndFlagsBits = 0xD000000000000028;
  v84._object = 0x80000001001E7DF0;
  sub_1001D18B0(v84);
  v85._countAndFlagsBits = v65;
  v85._object = v22;
  sub_1001D18B0(v85);
  v86._countAndFlagsBits = 0xD00000000000001DLL;
  v86._object = 0x80000001001E7E20;
  sub_1001D18B0(v86);
  v39 = v74;
  v40 = v75;

  v41 = sub_1001D0E50();
  v42 = sub_1001D1E00();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_1000954E0(v39, v40, &v74);
    _os_log_impl(&_mh_execute_header, v41, v42, "TTR: %s", v43, 0xCu);
    sub_100011CF0(v44);
  }

  v45 = v69;
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v47 = result;

  sub_1001CFAE0();

  v48 = sub_1001CFB10();
  v49 = *(v48 - 8);
  v51 = 0;
  if ((*(v49 + 48))(v45, 1, v48) != 1)
  {
    sub_1001CFA80(v50);
    v51 = v52;
    (*(v49 + 8))(v45, v48);
  }

  v74 = 0;
  v53 = [v47 openURL:v51 configuration:0 error:&v74];

  if (v53)
  {
    v54 = v74;

    v70(v72, v64);
    return 1;
  }

  v55 = v74;
  sub_1001CFA20();

  swift_willThrow();
  swift_errorRetain();
  v56 = sub_1001D0E50();
  v57 = sub_1001D1DE0();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v64;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    swift_errorRetain();
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v60 + 4) = v62;
    *v61 = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "Failed to TTR, error: %@", v60, 0xCu);
    sub_100011F00(v61, &unk_1002301D0, &qword_1001D4F50);
    v63 = v70;

    v63(v72, v59);
  }

  else
  {

    v70(v72, v59);
  }

  return 0;
}

void sub_1001BAFA0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68[0] = a2;
  v3 = sub_100011AC0(&qword_100228AF0, &qword_1001E1630);
  __chkstk_darwin(v3 - 8);
  v5 = v68 - v4;
  v89 = sub_1001CFD60();
  v6 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D0720();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v86 = v68 - v14;
  v15 = __chkstk_darwin(v13);
  v85 = v68 - v16;
  __chkstk_darwin(v15);
  v91 = v68 - v17;
  v70 = sub_1001D0780();
  __chkstk_darwin(v70);
  v78 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *(*a1 + 64);
  v73 = *a1 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v72 = (v22 + 63) >> 6;
  v90 = v9 + 32;
  v83 = (v6 + 8);
  v84 = v9 + 16;
  v87 = v9;
  v81 = (v9 + 56);
  v82 = (v9 + 8);
  v69 = v18;
  v68[1] = v18 + 32;
  v71 = v20;
  swift_bridgeObjectRetain_n();
  v25 = 0;
  v80 = _swiftEmptyArrayStorage;
  while (v24)
  {
LABEL_9:
    v76 = v24;
    v27 = *(v71 + 56);
    v75 = v25;
    v28 = *(v27 + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    v29 = v28 + *(*v28 + 344);
    v74 = v28;

    os_unfair_lock_lock(v29);
    v77 = v29;
    v30 = *(v29 + 16);
    for (i = (v29 + 16); ; v30 = *i)
    {
      v32 = *(v30 + 3);
      if (!v32)
      {
        break;
      }

      v33 = v32 - 1;
      if (__OFSUB__(v32, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v33 < 0)
      {
        goto LABEL_36;
      }

      if (v33 >= v32)
      {
        goto LABEL_37;
      }

      v34 = v5;
      v36 = v86;
      v35 = v87;
      v37 = *(v30 + 4) + v33;
      v38 = *(v30 + 2);
      if (v37 < v38)
      {
        v38 = 0;
      }

      v39 = (*(v87 + 80) + 40) & ~*(v87 + 80);
      v40 = *(v87 + 72);
      (*(v87 + 16))(v86, &v30[v39 + (v37 - v38) * v40], v8);
      v41 = *(v35 + 32);
      v42 = v85;
      v41(v85, v36, v8);
      v43 = v8;
      v41(v91, v42, v8);
      v44 = v88;
      sub_1001D0710();
      sub_1001CFD00();
      v46 = v45;
      (*v83)(v44, v89);
      if (v46 >= -300.0)
      {
        v8 = v43;
        (*v82)(v91, v43);
        v5 = v34;
        break;
      }

      if (*(*i + 3))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001190FC();
        }

        v47 = *i;
        v48 = *(*i + 3);
        v49 = __OFSUB__(v48, 1);
        v50 = v48 - 1;
        if (v49)
        {
          goto LABEL_39;
        }

        v51 = *(v47 + 4) + v50;
        v52 = *(v47 + 2);
        if (v51 < v52)
        {
          v52 = 0;
        }

        v8 = v43;
        v41(v12, &v47[v39 + (v51 - v52) * v40], v43);
        v53 = *(v47 + 3);
        v49 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v49)
        {
          goto LABEL_40;
        }

        *(v47 + 3) = v54;
        (*v82)(v91, v43);
        v5 = v34;
        v41(v34, v12, v43);
        v31 = 0;
      }

      else
      {
        v8 = v43;
        (*v82)(v91, v43);
        v31 = 1;
        v5 = v34;
      }

      (*v81)(v5, v31, 1, v8);
      sub_100011F00(v5, &qword_100228AF0, &qword_1001E1630);
    }

    v55 = v77;
    os_unfair_lock_unlock(v77);
    os_unfair_lock_lock(v55);
    v56 = *(*&v55[2]._os_unfair_lock_opaque + 16);
    v57 = *(*&v55[4]._os_unfair_lock_opaque + 24);
    v49 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v49)
    {
      goto LABEL_41;
    }

    v93 = sub_10000998C(0, v58 & ~(v58 >> 63), 0, _swiftEmptyArrayStorage);

    v60 = v79;
    v61 = sub_1001B18FC(v59);
    v79 = v60;

    sub_10003A41C(v61);

    sub_10003A58C(v62);
    sub_1001D0770();
    os_unfair_lock_unlock(v55);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_1000099B4(0, v80[2] + 1, 1, v80);
    }

    v64 = v80[2];
    v63 = v80[3];
    v65 = v76;
    if (v64 >= v63 >> 1)
    {
      v67 = sub_1000099B4((v63 > 1), v64 + 1, 1, v80);
      v65 = v76;
      v80 = v67;
    }

    v66 = v80;
    v80[2] = v64 + 1;
    v24 = (v65 - 1) & v65;
    (*(v69 + 32))(v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v64, v78, v70);
    v25 = v75;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v72)
    {

      *v68[0] = v80;
      return;
    }

    v24 = *(v73 + 8 * v26);
    ++v25;
    if (v24)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1001BB750()
{
  v1[9] = v0;
  v2 = sub_1001D02F0();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for MetricReporter(0);
  v1[14] = swift_task_alloc();
  v3 = sub_1001D13E0();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_1001D1410();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v5 = sub_1001D13F0();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1001BB954, 0, 0);
}

uint64_t sub_1001BB954(uint64_t a1)
{
  *(v1 + 192) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting up CloudTelemetry xpc service activities.", v4, 2u);
  }

  sub_1001CFF40();
  v5 = swift_task_alloc();
  *(v1 + 200) = v5;
  *v5 = v1;
  v5[1] = sub_1001BBA78;

  return static CloudTelemetry.setupXpcServiceActivities()();
}

uint64_t sub_1001BBA78()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1001BC15C;
  }

  else
  {
    v2 = sub_1001BBB8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001BBB8C()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v25 = v0[18];
  v6 = v0[15];
  v23 = v0[16];
  v24 = v0[19];
  v7 = v0[9];
  sub_10005A1A4();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v22 = sub_1001D1E70();
  (*(v2 + 8))(v1, v3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v0[6] = sub_1001CA9A8;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100014EBC;
  v0[5] = &unk_1002231D0;
  v9 = _Block_copy(v0 + 2);
  v10 = v7;
  sub_1001D1400();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1001CC51C(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100024B78(&unk_100230190, &qword_100227D98, &unk_1001D3AB0, &protocol conformance descriptor for [A]);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v9);

  (*(v23 + 8))(v5, v6);
  (*(v24 + 8))(v4, v25);

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting daemon run loop...", v13, 2u);
  }

  v14 = v0[14];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];

  *v14 = 0x4B46574D54513336;
  v14[1] = 0xEA00000000003432;
  (*(v16 + 104))(v15, enum case for TC2LogCategory.metricReporter(_:), v17);
  sub_1001D08B0();
  (*(v16 + 8))(v15, v17);
  v19 = swift_task_alloc();
  v0[27] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v14;
  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = sub_1001BBF84;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1001BBF84()
{

  return _swift_task_switch(sub_1001BC09C, 0, 0);
}

uint64_t sub_1001BC09C()
{
  sub_1001CC0E4(*(v0 + 112), type metadata accessor for MetricReporter);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001BC15C(uint64_t a1)
{
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to setup CloudTelemetry", v4, 2u);
  }

  v5 = v1[23];
  v7 = v1[21];
  v6 = v1[22];
  v8 = v1[20];
  v29 = v1[19];
  v9 = v1[17];
  v30 = v1[18];
  v10 = v1[15];
  v11 = v1[16];
  v12 = v1[9];
  sub_10005A1A4();
  (*(v6 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v28 = sub_1001D1E70();
  (*(v6 + 8))(v5, v7);
  v13 = swift_allocObject();
  v14 = v12;
  *(v13 + 16) = v12;
  v1[6] = sub_1001CA9A8;
  v1[7] = v13;
  v1[2] = _NSConcreteStackBlock;
  v1[3] = 1107296256;
  v1[4] = sub_100014EBC;
  v1[5] = &unk_1002231D0;
  v15 = _Block_copy(v1 + 2);
  v16 = v14;
  sub_1001D1400();
  v1[8] = _swiftEmptyArrayStorage;
  sub_1001CC51C(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100024B78(&unk_100230190, &qword_100227D98, &unk_1001D3AB0, &protocol conformance descriptor for [A]);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v15);

  (*(v11 + 8))(v9, v10);
  (*(v29 + 8))(v8, v30);

  v17 = sub_1001D0E50();
  v18 = sub_1001D1E00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Starting daemon run loop...", v19, 2u);
  }

  v20 = v1[14];
  v22 = v1[11];
  v21 = v1[12];
  v24 = v1[9];
  v23 = v1[10];

  *v20 = 0x4B46574D54513336;
  v20[1] = 0xEA00000000003432;
  (*(v22 + 104))(v21, enum case for TC2LogCategory.metricReporter(_:), v23);
  sub_1001D08B0();
  (*(v22 + 8))(v21, v23);
  v25 = swift_task_alloc();
  v1[27] = v25;
  *(v25 + 16) = v24;
  *(v25 + 24) = v20;
  v26 = swift_task_alloc();
  v1[28] = v26;
  *v26 = v1;
  v26[1] = sub_1001BBF84;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

char *sub_1001BC5D8(uint64_t a1)
{
  v270 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_1001D0E60();
  v262 = *(v1 - 8);
  v263 = v1;
  __chkstk_darwin(v1);
  v264 = &v243 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001CFD60();
  v259 = *(v3 - 8);
  v260 = v3;
  __chkstk_darwin(v3);
  v258 = &v243 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001CFFE0();
  v255 = *(v5 - 8);
  v256 = v5;
  v6 = __chkstk_darwin(v5);
  v253 = &v243 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v254 = &v243 - v8;
  v251 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v9 = __chkstk_darwin(v251);
  v278 = &v243 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v252 = &v243 - v11;
  v12 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v13 = __chkstk_darwin(v12 - 8);
  v257 = &v243 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v249 = &v243 - v16;
  __chkstk_darwin(v15);
  v269 = &v243 - v17;
  v294 = sub_1001CFB10();
  v284 = *(v294 - 8);
  v18 = __chkstk_darwin(v294);
  v268 = &v243 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v279 = &v243 - v21;
  v22 = __chkstk_darwin(v20);
  v244 = &v243 - v23;
  __chkstk_darwin(v22);
  v291 = &v243 - v24;
  v289 = sub_1001D05B0();
  v277 = *(v289 - 8);
  v25 = __chkstk_darwin(v289);
  v276 = &v243 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v272 = &v243 - v27;
  v280 = sub_1001D02E0();
  v286 = *(v280 - 8);
  v28 = __chkstk_darwin(v280);
  v250 = &v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v273 = &v243 - v31;
  __chkstk_darwin(v30);
  v290 = &v243 - v32;
  v288 = sub_100011AC0(&qword_1002302A8, &qword_1001E21F0);
  v275 = *(v288 - 1);
  __chkstk_darwin(v288);
  v287 = &v243 - v33;
  v293 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v281 = *(v293 - 8);
  v34 = __chkstk_darwin(v293);
  v274 = &v243 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v271 = &v243 - v36;
  v37 = sub_100011AC0(&unk_1002300F0, &unk_1001E1EF8);
  v282 = *(v37 - 8);
  v283 = v37;
  __chkstk_darwin(v37);
  v267 = &v243 - v38;
  v39 = sub_100011AC0(&unk_1002300C0, &qword_1001E1538);
  __chkstk_darwin(v39 - 8);
  v265 = &v243 - v40;
  v266 = sub_1001D20F0();
  v41 = *(v266 - 1);
  __chkstk_darwin(v266);
  v43 = &v243 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1001D02F0();
  v292 = v44;
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v243 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = v47;
  v295 = *(v45 + 104);
  v296 = v45 + 104;
  (v295)(v47, enum case for TC2LogCategory.daemon(_:), v44);
  v48 = v300;
  sub_1001D08B0();
  v49 = *(v45 + 8);
  v299 = v45 + 8;
  v297 = v49;
  v49(v47, v44);
  v285 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
  sub_1001D05A0();
  v50 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_tapToRadarController;
  v51 = objc_opt_self();
  v52 = [v51 standardUserDefaults];
  sub_100011AC0(&unk_1002302B0, &qword_1001E21F8);
  swift_allocObject();
  *&v48[v50] = sub_1001BA384(v52);
  v53 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_preferencesStore;
  v248 = v51;
  v54 = [v51 standardUserDefaults];
  type metadata accessor for PreferencesStore();
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = v54;
  *&v48[v53] = v55;
  v56 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_fetchServerDrivenConfigurationValve;
  sub_1001D20E0();
  sub_100011AC0(&qword_1002300D8, &qword_1001E1EF0);
  v57 = swift_allocObject();
  swift_defaultActor_initialize();
  v58 = *(*v57 + 112);
  v59 = sub_1001D20D0();
  v60 = *(*(v59 - 8) + 56);
  v60(v57 + v58, 1, 1, v59);
  (*(v41 + 32))(v57 + *(*v57 + 104), v43, v266);
  v61 = v265;
  v60(v265, 1, 1, v59);
  swift_beginAccess();
  sub_10001BAC8(v61, v57 + v58, &unk_1002300C0, &qword_1001E1538);
  swift_endAccess();
  *(v57 + *(*v57 + 120)) = xmmword_1001E1E40;
  *&v48[v56] = v57;
  v62 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventStream;
  v63 = &v48[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation];
  v64 = v48;
  type metadata accessor for ThimbledEvent(0);
  v65 = v275;
  v67 = v287;
  v66 = v288;
  (*(v275 + 13))(v287, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v288);
  v68 = v267;
  v69 = v271;
  sub_1001D1BB0();
  (*(v65 + 1))(v67, v66);
  (*(v282 + 32))(&v64[v62], v68, v283);
  v70 = *(v281 + 4);
  v275 = v63;
  v267 = v281 + 32;
  v70(v63, v69, v293);
  v71 = &v64[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_structuredRequestFactoriesBySetup];
  v72 = sub_1000DBDD8(_swiftEmptyArrayStorage);
  *v71 = 0;
  *(v71 + 1) = v72;
  v73 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchTracker;
  type metadata accessor for PrefetchTracker(0);
  v74 = swift_allocObject();
  v75 = v298;
  v247 = enum case for TC2LogCategory.prefetchRequest(_:);
  v76 = v292;
  v295(v298);
  sub_1001D08B0();
  v297(v75, v76);
  sub_1001D08A0();
  sub_1001CC51C(&qword_100229500, &type metadata accessor for Workload, &protocol conformance descriptor for Workload);
  v77 = sub_1001D1CC0();
  *(v74 + 16) = 0;
  *(v74 + 24) = v77;
  v246 = v73;
  *&v64[v73] = v74;
  v78 = [objc_opt_self() mainBundle];
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v80 = result;
    v266 = v70;
    sub_1001594A4(v78, v326);

    v81 = v300;
    v82 = &v300[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo];
    v83 = v326[9];
    *(v82 + 8) = v326[8];
    *(v82 + 9) = v83;
    *(v82 + 10) = v326[10];
    v84 = v326[5];
    *(v82 + 4) = v326[4];
    *(v82 + 5) = v84;
    v85 = v326[7];
    *(v82 + 6) = v326[6];
    *(v82 + 7) = v85;
    v86 = v326[1];
    *v82 = v326[0];
    *(v82 + 1) = v86;
    v87 = v326[3];
    *(v82 + 2) = v326[2];
    *(v82 + 3) = v87;
    v88 = v277;
    v89 = v272;
    v90 = v289;
    v282 = *(v277 + 16);
    v283 = v277 + 16;
    (v282)(v272, &v81[v285], v289);
    v91 = *(v82 + 9);
    v325[8] = *(v82 + 8);
    v325[9] = v91;
    v325[10] = *(v82 + 10);
    v92 = *(v82 + 5);
    v325[4] = *(v82 + 4);
    v325[5] = v92;
    v93 = *(v82 + 6);
    v325[7] = *(v82 + 7);
    v325[6] = v93;
    v94 = *(v82 + 1);
    v325[0] = *v82;
    v325[1] = v94;
    v95 = *(v82 + 2);
    v325[3] = *(v82 + 3);
    v325[2] = v95;
    *(&v339 + 1) = &type metadata for SystemInfo;
    *&v340 = &protocol witness table for SystemInfo;
    v96 = swift_allocObject();
    *&v338 = v96;
    v97 = *(v82 + 9);
    v96[9] = *(v82 + 8);
    v96[10] = v97;
    v96[11] = *(v82 + 10);
    v98 = *(v82 + 5);
    v96[5] = *(v82 + 4);
    v96[6] = v98;
    v99 = *(v82 + 7);
    v96[7] = *(v82 + 6);
    v96[8] = v99;
    v100 = *(v82 + 1);
    v96[1] = *v82;
    v96[2] = v100;
    v101 = *(v82 + 3);
    v96[3] = *(v82 + 2);
    v96[4] = v101;
    sub_1000884D8(v325, v349);
    v102 = v290;
    sub_1001B3C70(&v338, v290);
    v245 = *(v88 + 8);
    v245(v89, v90);
    sub_100011CF0(&v338);
    v103 = v291;
    v104 = v269;
    sub_10014DFC4(v291, v269, v270, v102);
    v105 = v249;
    sub_10001208C(v104, v249, &unk_100230170, &unk_1001E0D90);
    v106 = v284;
    v107 = v294;
    v108 = (*(v284 + 48))(v105, 1, v294);
    v109 = v106;
    v110 = v103;
    v277 = v88 + 8;
    if (v108 == 1)
    {
      sub_100011F00(v105, &unk_100230170, &unk_1001E0D90);
    }

    else
    {
      v111 = *(v109 + 32);
      v112 = v109;
      v113 = v244;
      v111(v244, v105, v107);
      sub_10014F450(v113, v110);
      v114 = v113;
      v109 = v112;
      (*(v112 + 8))(v114, v107);
    }

    v115 = v279;
    v116 = v280;
    v117 = v286;
    v118 = *(v109 + 16);
    v287 = (v109 + 16);
    v288 = v118;
    (v118)(v279, v110, v107);
    type metadata accessor for RateLimiter(0);
    v119 = swift_allocObject();
    v120 = v300;
    v121 = v272;
    (v282)(v272, &v300[v285], v289);
    v122 = sub_1001C7F2C(v121, v115, v119);
    v272 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter;
    *&v120[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter] = v122;
    v244 = *(v117 + 16);
    v123 = v273;
    v124 = v290;
    (v244)(v273, v290, v116);
    v125 = v294;
    v126 = v288;
    (v288)(v115, v110, v294);
    v127 = sub_10003CEB0(v123, v115);
    v249 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore;
    v128 = v300;
    *&v300[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore] = v127;
    v126(v115, v110, v125);
    type metadata accessor for ServerDrivenConfiguration(0);
    swift_allocObject();
    v129 = sub_100103314(v115);
    v265 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig;
    *&v128[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig] = v129;
    v130 = v273;
    v131 = v124;
    v132 = v280;
    v133 = v244;
    (v244)(v273, v131, v280);
    v134 = v298;
    v135 = v292;
    (v295)(v298, enum case for TC2LogCategory.attestationVerifier(_:), v292);
    v136 = v252;
    sub_1001D08B0();
    v297(v134, v135);
    v133(v136 + *(v251 + 36), v130, v132);
    v137 = v133;
    v138 = v130;
    v137(v250, v130, v132);
    v139 = v254;
    sub_1001CFFD0();
    v141 = v255;
    v140 = v256;
    (*(v255 + 16))(v253, v139, v256);
    sub_1001D0010();
    sub_1001D00B0();
    (*(v141 + 8))(v139, v140);
    v142 = *(v286 + 8);
    v286 += 8;
    v256 = v142;
    v142(v138, v132);
    v143 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier;
    v144 = v300;
    sub_1000DBEF4(v136, &v300[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier], &qword_100229520, &unk_1001DEF70);
    v145 = *(v82 + 9);
    v349[8] = *(v82 + 8);
    v349[9] = v145;
    v349[10] = *(v82 + 10);
    v146 = *(v82 + 5);
    v349[4] = *(v82 + 4);
    v349[5] = v146;
    v147 = *(v82 + 6);
    v349[7] = *(v82 + 7);
    v349[6] = v147;
    v148 = *(v82 + 1);
    v349[0] = *v82;
    v349[1] = v148;
    v149 = *(v82 + 2);
    v349[3] = *(v82 + 3);
    v349[2] = v149;
    sub_1000884D8(v349, &v338);
    v150 = [v248 standardUserDefaults];
    sub_100011AC0(&qword_1002302C0, &qword_1001E2200);
    swift_allocObject();
    *&v144[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_dailyActiveUserReporter] = sub_1001B3FF8(v349, v150);
    v151 = *&v272[v144];
    v254 = *&v144[v249];
    sub_10001208C(&v144[v143], v278, &qword_100229520, &unk_1001DEF70);
    (v282)(v276, &v144[v285], v289);
    (v288)(v268, v291, v294);
    v152 = *&v265[v144];
    v153 = *(v82 + 9);
    v322 = *(v82 + 8);
    v323 = v153;
    v324 = *(v82 + 10);
    v154 = *(v82 + 5);
    v318 = *(v82 + 4);
    v319 = v154;
    v155 = *(v82 + 7);
    v320 = *(v82 + 6);
    v321 = v155;
    v156 = *(v82 + 1);
    v314 = *v82;
    v315 = v156;
    v157 = *(v82 + 3);
    v316 = *(v82 + 2);
    v317 = v157;
    v272 = *(v281 + 2);
    v273 = v281 + 16;
    (v272)(v274, v275, v293);
    v255 = *&v144[v246];
    sub_100011AC0(&qword_1002302A0, &qword_1001E21E8);
    v158 = swift_allocObject();
    v159 = v298;
    v160 = v292;
    (v295)(v298, v247, v292);
    v161 = v254;

    sub_1000884D8(&v314, &v338);
    sub_1001D08B0();
    v297(v159, v160);
    *(v158 + *(*v158 + 248)) = v151;
    *(v158 + *(*v158 + 256)) = v161;
    sub_10001208C(v278, v158 + *(*v158 + 264), &qword_100229520, &unk_1001DEF70);
    (v282)(v158 + *(*v158 + 224), v276, v289);
    v162 = v293;
    (v272)(v158 + *(*v158 + 272), v274, v293);
    *(v158 + *(*v158 + 280)) = v152;
    v163 = (v158 + *(*v158 + 288));
    v164 = v323;
    v163[8] = v322;
    v163[9] = v164;
    v163[10] = v324;
    v165 = v319;
    v163[4] = v318;
    v163[5] = v165;
    v166 = v321;
    v163[6] = v320;
    v163[7] = v166;
    v167 = v315;
    *v163 = v314;
    v163[1] = v167;
    v168 = v317;
    v163[2] = v316;
    v163[3] = v168;

    v169 = sub_1001058D4();
    if (v170)
    {
      v171 = 20;
    }

    else
    {
      v171 = v169;
    }

    v172 = sub_100105A2C();
    v174 = v173;

    if (v174)
    {
      v175 = 2592000.0;
    }

    else
    {
      v175 = v172;
    }

    v176 = v257;
    v177 = v268;
    v178 = v294;
    (v288)(v257, v268, v294);
    v179 = v284;
    (*(v284 + 56))(v176, 0, 1, v178);
    sub_100011AC0(&qword_1002302C8, &qword_1001E2208);
    swift_allocObject();
    *(v158 + *(*v158 + 240)) = sub_1001B93D8(v171, v176, v175);

    v180 = v258;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    sub_1001CC61C(v180);

    (*(v259 + 8))(v180, v260);
    (*(v281 + 1))(v274, v162);
    v181 = *(v179 + 8);
    v284 = v179 + 8;
    v182 = v178;
    v281 = v181;
    (v181)(v177, v178);
    v183 = v289;
    v245(v276, v289);
    sub_100011F00(v278, &qword_100229520, &unk_1001DEF70);
    *(v158 + *(*v158 + 304)) = v255;
    v184 = v300;
    *&v300[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity] = v158;
    v185 = *&v265[v184];
    v186 = *(v82 + 9);
    v311 = *(v82 + 8);
    v312 = v186;
    v313 = *(v82 + 10);
    v187 = *(v82 + 5);
    v307 = *(v82 + 4);
    v308 = v187;
    v188 = *(v82 + 7);
    v309 = *(v82 + 6);
    v310 = v188;
    v189 = *(v82 + 1);
    v303 = *v82;
    v304 = v189;
    v190 = *(v82 + 3);
    v305 = *(v82 + 2);
    v306 = v190;
    *(&v328 + 1) = v183;
    *&v329 = &protocol witness table for DefaultConfiguration;
    v191 = sub_10003B47C(&v327);
    (v282)(v191, &v184[v285], v183);
    sub_100011AC0(&qword_100230290, &qword_1001E21C8);
    v192 = swift_allocObject();
    v193 = v298;
    v194 = v292;
    (v295)(v298, enum case for TC2LogCategory.updateServerDrivenConfiguration(_:), v292);

    sub_1000884D8(&v303, &v338);
    sub_1001D08B0();
    v297(v193, v194);
    *(v192 + *(*v192 + 120)) = v185;
    v195 = (v192 + *(*v192 + 128));
    v196 = v304;
    *v195 = v303;
    v195[1] = v196;
    v197 = v308;
    v195[4] = v307;
    v195[5] = v197;
    v198 = v306;
    v195[2] = v305;
    v195[3] = v198;
    v199 = v313;
    v195[9] = v312;
    v195[10] = v199;
    v200 = v311;
    v195[7] = v310;
    v195[8] = v200;
    v195[6] = v309;
    sub_1000446FC(&v327, v192 + *(*v192 + 136));
    *&v184[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_updateServerDrivenConfigurationActivity] = v192;
    v201 = sub_1001D02B0();
    v203 = v202;
    v204 = v279;
    (v288)(v279, v291, v182);
    v205 = *(v82 + 9);
    v346 = *(v82 + 8);
    v347 = v205;
    v348 = *(v82 + 10);
    v206 = *(v82 + 5);
    v342 = *(v82 + 4);
    v343 = v206;
    v207 = *(v82 + 6);
    v345 = *(v82 + 7);
    v344 = v207;
    v208 = *(v82 + 1);
    v338 = *v82;
    v339 = v208;
    v209 = *(v82 + 2);
    v341 = *(v82 + 3);
    v340 = v209;
    sub_100011AC0(&qword_1002302D0, &qword_1001E2210);
    swift_allocObject();
    sub_1000884D8(&v338, &v327);
    v210 = sub_1001B3428(v201, v203, v204, &v338);
    *&v184[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionAnalyzer] = v210;
    v211 = v271;
    v212 = v293;
    (v272)(v271, v275, v293);
    sub_100011AC0(&qword_100230288, &qword_1001E21C0);
    v213 = swift_allocObject();
    LODWORD(v289) = enum case for TC2LogCategory.metricReporter(_:);
    v214 = v298;
    v215 = v292;
    v295(v298);

    sub_1001D08B0();
    v297(v214, v215);
    v266(v213 + qword_100242D68, v211, v212);
    *(v213 + qword_100242D70) = v210;
    v216 = v300;
    *&v300[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionReportActivity] = v213;
    v217 = v279;
    (v288)(v279, v291, v294);
    type metadata accessor for FeatureUsageAnalyzerStoreHelper(0);
    swift_allocObject();
    v218 = sub_100013270(v217);
    v219 = sub_1001D02B0();
    v221 = v220;
    v222 = *(v82 + 9);
    v335 = *(v82 + 8);
    v336 = v222;
    v337 = *(v82 + 10);
    v223 = *(v82 + 5);
    v331 = *(v82 + 4);
    v332 = v223;
    v224 = *(v82 + 6);
    v334 = *(v82 + 7);
    v333 = v224;
    v225 = *(v82 + 1);
    v327 = *v82;
    v328 = v225;
    v226 = *(v82 + 2);
    v330 = *(v82 + 3);
    v329 = v226;
    sub_100011AC0(&qword_1002302D8, &qword_1001E2218);
    swift_allocObject();
    sub_1000884D8(&v327, v302);
    v227 = sub_1001B0A40(v218, v219, v221, &v327);
    *&v216[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzer] = v227;
    v228 = v293;
    (v272)(v211, v275, v293);
    sub_100011AC0(&qword_100230298, &qword_1001E21D0);
    v229 = swift_allocObject();
    v230 = v298;
    (v295)(v298, v289, v215);

    sub_1001D08B0();
    v297(v230, v215);
    v266(v229 + qword_100227BF8, v211, v228);
    *(v229 + qword_100227C00) = v227;
    *&v216[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzerScheduledActivity] = v229;
    v301.receiver = v216;
    v301.super_class = ObjectType;
    v231 = objc_msgSendSuper2(&v301, "init");
    v232 = v262;
    v233 = v263;
    v234 = v264;
    (*(v262 + 16))(v264, v231 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger, v263);
    v235 = v231;
    v236 = sub_1001D0E50();
    v237 = sub_1001D1E00();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v302[0] = v239;
      *v238 = 136315138;
      v240 = *&v235[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 144];
      v241 = *&v235[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 152];

      v242 = sub_1000954E0(v240, v241, v302);

      *(v238 + 4) = v242;
      _os_log_impl(&_mh_execute_header, v236, v237, "Starting daemon. tc2OSInfo: %s", v238, 0xCu);
      sub_100011CF0(v239);

      sub_100011F00(v270, &unk_100230170, &unk_1001E0D90);
      (*(v232 + 8))(v264, v233);
    }

    else
    {

      sub_100011F00(v270, &unk_100230170, &unk_1001E0D90);
      (*(v232 + 8))(v234, v233);
    }

    sub_100011F00(v269, &unk_100230170, &unk_1001E0D90);
    (v281)(v291, v294);
    v256(v290, v280);
    return v235;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BE3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v64 = a5;
  v72 = a4;
  v71 = a3;
  v73 = a2;
  v93 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v77 = *(v93 - 8);
  __chkstk_darwin(v93);
  v76 = &v56 - v8;
  v9 = sub_1001D20F0();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v75 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D02F0();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001D05B0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v74 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = *a1;
  if (*(*a1 + 16) && (v21 = sub_100006708(v73, v71, v72 & 1), (v22 & 1) != 0))
  {
    *a6 = *(*(v20 + 56) + 8 * v21);
  }

  else
  {
    v63 = a6;
    v24 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
    v80 = v14;
    v81 = &protocol witness table for DefaultConfiguration;
    v25 = sub_10003B47C(&v79);
    v62 = a1;
    v58 = v15;
    v26 = *(v15 + 16);
    v27 = v64;
    v26(v25, v64 + v24, v14);
    v70 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
    v28 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 144);
    v90 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 128);
    v91 = v28;
    v92 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 160);
    v29 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 80);
    v86 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 64);
    v87 = v29;
    v30 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 112);
    v88 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 96);
    v89 = v30;
    v31 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
    v82 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
    v83 = v31;
    v32 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 48);
    v84 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
    v85 = v32;
    v56 = v14;
    v69 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
    v61 = v19;
    sub_10001208C(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier, v19, &qword_100229520, &unk_1001DEF70);
    v60 = *(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    v26(v74, v27 + v24, v14);
    sub_100011AC0(&qword_100230160, &qword_1001E1F30);
    v33 = swift_allocObject();
    v34 = v65;
    v35 = v66;
    v57 = *(v65 + 104);
    v57(v13, enum case for TC2LogCategory.tokenProvider(_:), v66);

    sub_1000884D8(&v82, v78);

    sub_1001D08B0();
    v36 = *(v34 + 8);
    v36(v13, v35);
    v59 = v33;
    (*(v58 + 32))(v33 + *(*v33 + 120), v74, v56);
    sub_1001D20E0();
    v74 = *(*(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));
    (*(v77 + 16))(v76, v27 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation, v93);
    sub_100011AC0(&qword_100230168, &qword_1001E1F38);
    v37 = swift_allocObject();
    v57(v13, enum case for TC2LogCategory.daemon(_:), v35);
    v38 = v71;

    sub_1001D08B0();
    v36(v13, v35);
    v39 = v37 + *(*v37 + 344);
    v40 = sub_1000DB854(_swiftEmptyArrayStorage);
    v41 = *sub_1001D0110();
    *v39 = 0;
    *(v39 + 8) = v40;
    *(v39 + 16) = v41;
    v42 = qword_100243518;

    sub_1000446FC(&v79, v37 + v42);
    *(v37 + *(*v37 + 240)) = v70;
    v43 = (v37 + *(*v37 + 248));
    v44 = v83;
    *v43 = v82;
    v43[1] = v44;
    v45 = v87;
    v43[4] = v86;
    v43[5] = v45;
    v46 = v85;
    v43[2] = v84;
    v43[3] = v46;
    v47 = v92;
    v43[9] = v91;
    v43[10] = v47;
    v48 = v90;
    v43[7] = v89;
    v43[8] = v48;
    v43[6] = v88;
    *(v37 + *(*v37 + 264)) = v69;
    sub_1000DBEF4(v61, v37 + *(*v37 + 272), &qword_100229520, &unk_1001DEF70);
    v49 = v59;
    *(v37 + *(*v37 + 280)) = v60;
    *(v37 + *(*v37 + 288)) = v49;
    (*(v67 + 32))(v37 + *(*v37 + 296), v75, v68);
    v50 = (v37 + *(*v37 + 304));
    v51 = v73;
    *v50 = v73;
    v50[1] = v38;
    v52 = v38;
    v53 = v72 & 1;
    *(v37 + *(*v37 + 312)) = v53;
    *(v37 + *(*v37 + 320)) = v74;
    (*(v77 + 32))(v37 + *(*v37 + 328), v76, v93);

    v54 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78[0] = *v54;
    sub_10001B010(v37, v51, v52, v53, isUniquelyReferenced_nonNull_native);

    *v54 = v78[0];
    *v63 = v37;
  }

  return result;
}

uint64_t sub_1001BEBC4(uint64_t a1)
{
  v2 = objc_allocWithZone(NSXPCListener);
  v3 = sub_1001D17A0();
  v4 = [v2 initWithMachServiceName:v3];

  [v4 setDelegate:a1];
  v5 = sub_1001D0E50();
  v6 = sub_1001D1E00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Listener start", v7, 2u);
  }

  [v4 resume];
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Listener done", v10, 2u);
  }

  v11 = sub_1001D0E50();
  v12 = sub_1001D1E00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Register prefetch task", v13, 2u);
  }

  v14 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity);
  v15 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_preferencesStore);
  sub_100011AC0(&qword_100230280, &qword_1001E21B8);
  v16 = swift_allocObject();
  swift_retain_n();

  sub_1001C7D8C(0xD000000000000032, 0x80000001001E7E60, v14, v15, v16, &qword_1002302A0, &qword_1001E21E8, &off_10021E8E8);
  sub_1001B73E8();

  v17 = sub_1001D0E50();
  v18 = sub_1001D1E00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Register feature usage analyzer task", v19, 2u);
  }

  v20 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_featureUsageAnalyzerScheduledActivity);
  v21 = swift_allocObject();

  sub_1001C7D8C(0xD000000000000032, 0x80000001001E7EA0, v20, v15, v21, &qword_100230298, &qword_1001E21D0, &off_10021D370);
  sub_1001B73E8();

  v22 = sub_1001D0E50();
  v23 = sub_1001D1E00();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Register fetch config bag task", v24, 2u);
  }

  v25 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_updateServerDrivenConfigurationActivity);
  v26 = swift_allocObject();

  sub_1001C7D8C(0xD000000000000035, 0x80000001001E7EE0, v25, v15, v26, &qword_100230290, &qword_1001E21C8, &off_100220368);
  sub_1001B73E8();

  v27 = sub_1001D0E50();
  v28 = sub_1001D1E00();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Register node distribution report task", v29, 2u);
  }

  v30 = *(a1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_nodeDistributionReportActivity);
  v31 = swift_allocObject();

  sub_1001C7D8C(0xD000000000000034, 0x80000001001E7F20, v30, v15, v31, &qword_100230288, &qword_1001E21C0, &off_10021E310);
  sub_1001B73E8();
}

uint64_t sub_1001BF144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[115] = a4;
  v4[114] = a3;
  v4[113] = a2;
  v5 = *(type metadata accessor for MetricReporter(0) - 8);
  v4[116] = v5;
  v4[117] = *(v5 + 64);
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v6 = sub_1001CFDA0();
  v4[121] = v6;
  v7 = *(v6 - 8);
  v4[122] = v7;
  v4[123] = *(v7 + 64);
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v4[148] = swift_task_alloc();
  v4[149] = swift_task_alloc();
  v4[150] = swift_task_alloc();
  v4[151] = swift_task_alloc();
  v4[152] = swift_task_alloc();
  v4[153] = swift_task_alloc();
  v4[154] = swift_task_alloc();
  v4[155] = swift_task_alloc();
  v8 = sub_1001D08A0();
  v4[156] = v8;
  v9 = *(v8 - 8);
  v4[157] = v9;
  v4[158] = *(v9 + 64);
  v4[159] = swift_task_alloc();
  v4[160] = swift_task_alloc();
  v4[161] = swift_task_alloc();
  v4[162] = swift_task_alloc();
  v4[163] = swift_task_alloc();
  v4[164] = swift_task_alloc();
  v10 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8);
  v4[165] = v10;
  v4[166] = *(v10 + 64);
  v4[167] = swift_task_alloc();
  v4[168] = swift_task_alloc();
  v11 = type metadata accessor for ThimbledEvent(0);
  v4[169] = v11;
  v4[170] = *(v11 - 8);
  v4[171] = swift_task_alloc();
  sub_100011AC0(&qword_1002301A0, &qword_1001E1F78);
  v4[172] = swift_task_alloc();
  v12 = sub_100011AC0(&qword_1002301A8, &qword_1001E1F80);
  v4[173] = v12;
  v4[174] = *(v12 - 8);
  v4[175] = swift_task_alloc();

  return _swift_task_switch(sub_1001BF634, 0, 0);
}

uint64_t sub_1001BF634()
{
  sub_100011AC0(&unk_1002300F0, &unk_1001E1EF8);
  sub_1001D1BF0();
  v1 = swift_task_alloc();
  v0[176] = v1;
  *v1 = v0;
  v1[1] = sub_1001BF714;
  v2 = v0[173];
  v3 = v0[172];

  return AsyncStream.Iterator.next(isolation:)(v3, 0, 0, v2);
}

uint64_t sub_1001BF714()
{

  return _swift_task_switch(sub_1001BF810, 0, 0);
}

uint64_t sub_1001BF810()
{
  v1 = *(v0 + 1376);
  if ((*(*(v0 + 1360) + 48))(v1, 1, *(v0 + 1352)) == 1)
  {
    (*(*(v0 + 1392) + 8))(*(v0 + 1400), *(v0 + 1384));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = (v0 + 176);
    v5 = (v0 + 272);
    v6 = (v0 + 400);
    v7 = (v0 + 432);
    v8 = (v0 + 528);
    v9 = (v0 + 560);
    sub_1001CBCB0(v1, *(v0 + 1368), type metadata accessor for ThimbledEvent);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v118 = *(v0 + 1192);
        v119 = *(v0 + 1184);
        v120 = *(v0 + 944);
        v121 = *(v0 + 928);
        v122 = *(v0 + 920);
        sub_1000446FC(*(v0 + 1368), v0 + 136);
        v123 = sub_1001D1BA0();
        v124 = *(v123 - 8);
        (*(v124 + 56))(v118, 1, 1, v123);
        sub_100044698(v0 + 136, v0 + 96);
        sub_1001CC144(v122, v120, type metadata accessor for MetricReporter);
        v125 = (*(v121 + 80) + 72) & ~*(v121 + 80);
        v126 = swift_allocObject();
        *(v126 + 16) = 0;
        *(v126 + 24) = 0;
        sub_1000446FC((v0 + 96), v126 + 32);
        sub_1001CBCB0(v120, v126 + v125, type metadata accessor for MetricReporter);
        sub_10001208C(v118, v119, &qword_100229350, &unk_1001D6BA0);
        v127 = (*(v124 + 48))(v119, 1, v123);
        v128 = *(v0 + 1184);
        if (v127 == 1)
        {
          sub_100011F00(*(v0 + 1184), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v124 + 8))(v128, v123);
        }

        if (*(v126 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v200 = sub_1001D1A70();
          v202 = v201;
          swift_unknownObjectRelease();
        }

        else
        {
          v200 = 0;
          v202 = 0;
        }

        v232 = **(v0 + 904);
        v233 = swift_allocObject();
        *(v233 + 16) = &unk_1001E2078;
        *(v233 + 24) = v126;

        if (v202 | v200)
        {
          *v7 = 0;
          *(v0 + 440) = 0;
          *(v0 + 448) = v200;
          *(v0 + 456) = v202;
        }

        else
        {
          v7 = 0;
        }

        v239 = *(v0 + 1192);
        *(v0 + 736) = 1;
        *(v0 + 744) = v7;
        *(v0 + 752) = v232;
        swift_task_create();

        sub_100011F00(v239, &qword_100229350, &unk_1001D6BA0);
        sub_100011CF0((v0 + 136));
        break;
      case 2u:
        v81 = *(v0 + 1176);
        v82 = *(v0 + 1168);
        v83 = *(v0 + 912);
        v84 = **(v0 + 1368);
        v85 = sub_1001D1BA0();
        v86 = *(v85 - 8);
        (*(v86 + 56))(v81, 1, 1, v85);
        v87 = swift_allocObject();
        v87[2] = 0;
        v87[3] = 0;
        v87[4] = v84;
        v87[5] = v83;
        sub_10001208C(v81, v82, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v82) = (*(v86 + 48))(v82, 1, v85);
        v88 = v83;
        v89 = *(v0 + 1168);
        if (v82 == 1)
        {
          sub_100011F00(*(v0 + 1168), &qword_100229350, &unk_1001D6BA0);
          v90 = 0;
          v91 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v86 + 8))(v89, v85);
          if (v87[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v90 = sub_1001D1A70();
            v91 = v192;
            swift_unknownObjectRelease();
          }

          else
          {
            v90 = 0;
            v91 = 0;
          }
        }

        v262 = **(v0 + 904);
        v263 = swift_allocObject();
        *(v263 + 16) = &unk_1001E2060;
        *(v263 + 24) = v87;

        if (v91 | v90)
        {
          *v4 = 0;
          *(v0 + 184) = 0;
          *(v0 + 192) = v90;
          *(v0 + 200) = v91;
        }

        else
        {
          v4 = 0;
        }

        v256 = *(v0 + 1176);
        *(v0 + 640) = 1;
        *(v0 + 648) = v4;
        *(v0 + 656) = v262;
        goto LABEL_130;
      case 3u:
        v92 = *(v0 + 1368);
        v93 = *(v0 + 1144);
        v94 = *(v0 + 1136);
        v95 = *(v0 + 912);
        v96 = *v92;
        v97 = sub_1001D1BA0();
        v98 = *(v97 - 8);
        v310 = *(v92 + 5);
        v314 = *(v92 + 3);
        v307 = *(v92 + 1);
        (*(v98 + 56))(v93, 1, 1, v97);
        v99 = swift_allocObject();
        *(v99 + 16) = 0;
        *(v99 + 24) = 0;
        *(v99 + 32) = v95;
        *(v99 + 40) = v96;
        *(v99 + 48) = v307;
        *(v99 + 64) = v314;
        *(v99 + 80) = v310;
        sub_10001208C(v93, v94, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v93) = (*(v98 + 48))(v94, 1, v97);
        v100 = v95;
        v101 = *(v0 + 1136);
        if (v93 == 1)
        {
          sub_100011F00(*(v0 + 1136), &qword_100229350, &unk_1001D6BA0);
          v102 = 0;
          v103 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v98 + 8))(v101, v97);
          if (*(v99 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v102 = sub_1001D1A70();
            v103 = v193;
            swift_unknownObjectRelease();
          }

          else
          {
            v102 = 0;
            v103 = 0;
          }
        }

        v264 = **(v0 + 904);
        v265 = swift_allocObject();
        *(v265 + 16) = &unk_1001E2030;
        *(v265 + 24) = v99;

        if (v103 | v102)
        {
          *v8 = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v102;
          *(v0 + 552) = v103;
        }

        else
        {
          v8 = 0;
        }

        v256 = *(v0 + 1144);
        *(v0 + 592) = 1;
        *(v0 + 600) = v8;
        *(v0 + 608) = v264;
        goto LABEL_130;
      case 4u:
        v36 = *(v0 + 1368);
        v37 = *(v0 + 1224);
        v313 = *(v0 + 1216);
        v38 = *(v0 + 1032);
        v39 = *(v0 + 1024);
        v276 = v39;
        v292 = *(v0 + 984);
        v40 = *(v0 + 976);
        v41 = *(v0 + 968);
        v42 = *(v0 + 960);
        v279 = v42;
        v281 = *(v0 + 920);
        v284 = *(v0 + 928);
        v306 = *(v0 + 912);
        v43 = (v36 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
        v299 = v43[1];
        v303 = *v43;
        v288 = *(v40 + 32);
        v44 = v36;
        v45 = v41;
        v274 = v41;
        v288(v38, v44, v41);
        v46 = sub_1001D1BA0();
        v47 = *(v46 - 8);
        (*(v47 + 56))(v37, 1, 1, v46);
        (*(v40 + 16))(v39, v38, v45);
        sub_1001CC144(v281, v42, type metadata accessor for MetricReporter);
        v48 = (*(v40 + 80) + 40) & ~*(v40 + 80);
        v49 = (v292 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
        v50 = (*(v284 + 80) + v49 + 16) & ~*(v284 + 80);
        v51 = swift_allocObject();
        *(v51 + 2) = 0;
        *(v51 + 3) = 0;
        *(v51 + 4) = v306;
        v288(&v51[v48], v276, v274);
        v52 = &v51[v49];
        *v52 = v303;
        *(v52 + 1) = v299;
        sub_1001CBCB0(v279, &v51[v50], type metadata accessor for MetricReporter);
        sub_10001208C(v37, v313, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v48) = (*(v47 + 48))(v313, 1, v46);
        v53 = v306;
        v54 = *(v0 + 1216);
        if (v48 == 1)
        {
          sub_100011F00(*(v0 + 1216), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v47 + 8))(v54, v46);
        }

        if (*(v51 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v187 = sub_1001D1A70();
          v189 = v188;
          swift_unknownObjectRelease();
        }

        else
        {
          v187 = 0;
          v189 = 0;
        }

        v211 = **(v0 + 904);
        v212 = swift_allocObject();
        *(v212 + 16) = &unk_1001E20B0;
        *(v212 + 24) = v51;

        if (v189 | v187)
        {
          v213 = v0 + 304;
          *(v0 + 304) = 0;
          *(v0 + 312) = 0;
          *(v0 + 320) = v187;
          *(v0 + 328) = v189;
        }

        else
        {
          v213 = 0;
        }

        v214 = *(v0 + 1224);
        v215 = *(v0 + 1032);
        v216 = *(v0 + 976);
        v217 = *(v0 + 968);
        *(v0 + 832) = 1;
        *(v0 + 840) = v213;
        *(v0 + 848) = v211;
        swift_task_create();

        sub_100011F00(v214, &qword_100229350, &unk_1001D6BA0);
        (*(v216 + 8))(v215, v217);
        break;
      case 5u:
        v129 = *(v0 + 1368);
        v130 = *(v0 + 1208);
        v296 = v130;
        v316 = *(v0 + 1200);
        v131 = *(v0 + 1016);
        v132 = *(v0 + 1008);
        v278 = v132;
        v294 = *(v0 + 984);
        v133 = *(v0 + 976);
        v134 = *(v0 + 968);
        v135 = *(v0 + 952);
        v283 = *(v0 + 920);
        v286 = *(v0 + 928);
        v312 = *(v0 + 912);
        v136 = (v129 + *(sub_100011AC0(&qword_1002292C8, &unk_1001D6430) + 48));
        v301 = v136[1];
        v304 = *v136;
        v290 = *(v133 + 32);
        v137 = v129;
        v138 = v134;
        v275 = v134;
        v290(v131, v137, v134);
        v139 = sub_1001D1BA0();
        v140 = *(v139 - 8);
        (*(v140 + 56))(v130, 1, 1, v139);
        (*(v133 + 16))(v132, v131, v138);
        sub_1001CC144(v283, v135, type metadata accessor for MetricReporter);
        v141 = (*(v133 + 80) + 40) & ~*(v133 + 80);
        v142 = (v294 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
        v143 = (*(v286 + 80) + v142 + 16) & ~*(v286 + 80);
        v144 = swift_allocObject();
        *(v144 + 2) = 0;
        *(v144 + 3) = 0;
        *(v144 + 4) = v312;
        v290(&v144[v141], v278, v275);
        v145 = &v144[v142];
        *v145 = v304;
        *(v145 + 1) = v301;
        sub_1001CBCB0(v135, &v144[v143], type metadata accessor for MetricReporter);
        sub_10001208C(v296, v316, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v141) = (*(v140 + 48))(v316, 1, v139);
        v146 = v312;
        v147 = *(v0 + 1200);
        if (v141 == 1)
        {
          sub_100011F00(*(v0 + 1200), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v140 + 8))(v147, v139);
        }

        if (*(v144 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v203 = sub_1001D1A70();
          v205 = v204;
          swift_unknownObjectRelease();
        }

        else
        {
          v203 = 0;
          v205 = 0;
        }

        v240 = **(v0 + 904);
        v241 = swift_allocObject();
        *(v241 + 16) = &unk_1001E2098;
        *(v241 + 24) = v144;

        if (v205 | v203)
        {
          v242 = v0 + 368;
          *(v0 + 368) = 0;
          *(v0 + 376) = 0;
          *(v0 + 384) = v203;
          *(v0 + 392) = v205;
        }

        else
        {
          v242 = 0;
        }

        v243 = *(v0 + 1208);
        v244 = *(v0 + 1016);
        v245 = *(v0 + 976);
        v246 = *(v0 + 968);
        *(v0 + 784) = 1;
        *(v0 + 792) = v242;
        *(v0 + 800) = v240;
        swift_task_create();

        sub_100011F00(v243, &qword_100229350, &unk_1001D6BA0);
        (*(v245 + 8))(v244, v246);
        break;
      case 6u:
        v148 = *(v0 + 1296);
        v149 = *(v0 + 1288);
        v150 = *(v0 + 1256);
        v151 = *(v0 + 1248);
        v152 = *(v0 + 1128);
        v317 = *(v0 + 1120);
        v308 = *(v0 + 912);
        v153 = *(v150 + 32);
        v153(v148, *(v0 + 1368), v151);
        v154 = sub_1001D1BA0();
        v155 = *(v154 - 8);
        (*(v155 + 56))(v152, 1, 1, v154);
        (*(v150 + 16))(v149, v148, v151);
        v156 = (*(v150 + 80) + 40) & ~*(v150 + 80);
        v157 = swift_allocObject();
        *(v157 + 2) = 0;
        *(v157 + 3) = 0;
        *(v157 + 4) = v308;
        v153(&v157[v156], v149, v151);
        sub_10001208C(v152, v317, &qword_100229350, &unk_1001D6BA0);
        v158 = (*(v155 + 48))(v317, 1, v154);
        v159 = v308;
        v160 = *(v0 + 1120);
        if (v158 == 1)
        {
          sub_100011F00(*(v0 + 1120), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v155 + 8))(v160, v154);
        }

        if (*(v157 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v206 = sub_1001D1A70();
          v208 = v207;
          swift_unknownObjectRelease();
        }

        else
        {
          v206 = 0;
          v208 = 0;
        }

        v247 = **(v0 + 904);
        v248 = swift_allocObject();
        *(v248 + 16) = &unk_1001E2018;
        *(v248 + 24) = v157;

        if (v208 | v206)
        {
          v249 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v206;
          *(v0 + 520) = v208;
        }

        else
        {
          v249 = 0;
        }

        v250 = *(v0 + 1296);
        v251 = *(v0 + 1256);
        v252 = *(v0 + 1248);
        v253 = *(v0 + 1128);
        *(v0 + 664) = 1;
        *(v0 + 672) = v249;
        *(v0 + 680) = v247;
        swift_task_create();

        sub_100011F00(v253, &qword_100229350, &unk_1001D6BA0);
        (*(v251 + 8))(v250, v252);
        break;
      case 7u:
        v104 = *(v0 + 1368);
        v105 = *(v0 + 1280);
        v277 = v105;
        v289 = *(v0 + 1272);
        v106 = *(v0 + 1256);
        v107 = *(v0 + 1248);
        v315 = *(v0 + 1112);
        v311 = *(v0 + 1104);
        v108 = *(v0 + 1000);
        v285 = *(v0 + 992);
        v295 = *(v0 + 984);
        v109 = *(v0 + 976);
        v110 = *(v0 + 968);
        v300 = *(v0 + 912);
        v111 = *(sub_100011AC0(&unk_1002301B0, &unk_1001E1610) + 48);
        v298 = *(v109 + 32);
        v298(v108, v104, v110);
        v293 = *(v106 + 32);
        v293(v105, v104 + v111, v107);
        v112 = sub_1001D1BA0();
        v282 = *(v112 - 8);
        (*(v282 + 56))(v315, 1, 1, v112);
        (*(v109 + 16))(v285, v108, v110);
        (*(v106 + 16))(v289, v277, v107);
        v113 = (*(v109 + 80) + 40) & ~*(v109 + 80);
        v114 = (v295 + *(v106 + 80) + v113) & ~*(v106 + 80);
        v115 = swift_allocObject();
        *(v115 + 2) = 0;
        *(v115 + 3) = 0;
        *(v115 + 4) = v300;
        v298(&v115[v113], v285, v110);
        v293(&v115[v114], v289, v107);
        sub_10001208C(v315, v311, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v113) = (*(v282 + 48))(v311, 1, v112);
        v116 = v300;
        v117 = *(v0 + 1104);
        if (v113 == 1)
        {
          sub_100011F00(*(v0 + 1104), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v282 + 8))(v117, v112);
        }

        if (*(v115 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v194 = sub_1001D1A70();
          v196 = v195;
          swift_unknownObjectRelease();
        }

        else
        {
          v194 = 0;
          v196 = 0;
        }

        v218 = **(v0 + 904);
        v219 = swift_allocObject();
        *(v219 + 16) = &unk_1001E2000;
        *(v219 + 24) = v115;

        v220 = v218;
        if (v196 | v194)
        {
          v221 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v194;
          *(v0 + 488) = v196;
        }

        else
        {
          v221 = 0;
        }

        v222 = *(v0 + 1280);
        v223 = *(v0 + 1256);
        v224 = *(v0 + 1248);
        v225 = *(v0 + 1112);
        v226 = *(v0 + 1000);
        v227 = *(v0 + 976);
        v228 = *(v0 + 968);
        *(v0 + 688) = 1;
        *(v0 + 696) = v221;
        *(v0 + 704) = v220;
        swift_task_create();

        sub_100011F00(v225, &qword_100229350, &unk_1001D6BA0);
        (*(v223 + 8))(v222, v224);
        (*(v227 + 8))(v226, v228);
        break;
      case 8u:
        v174 = *(v0 + 1368);
        v175 = *(v0 + 1096);
        v176 = *(v0 + 1088);
        v177 = *(v0 + 912);
        v178 = *v174;
        v318 = *(v174 + 8);
        v179 = sub_1001D1BA0();
        v180 = *(v179 - 8);
        (*(v180 + 56))(v175, 1, 1, v179);
        v181 = swift_allocObject();
        *(v181 + 16) = 0;
        *(v181 + 24) = 0;
        *(v181 + 32) = v177;
        *(v181 + 40) = v178;
        *(v181 + 48) = v318;
        sub_10001208C(v175, v176, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v176) = (*(v180 + 48))(v176, 1, v179);
        v182 = v177;
        v183 = *(v0 + 1088);
        if (v176 == 1)
        {
          sub_100011F00(*(v0 + 1088), &qword_100229350, &unk_1001D6BA0);
          v184 = 0;
          v185 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v180 + 8))(v183, v179);
          if (*(v181 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v184 = sub_1001D1A70();
            v185 = v210;
            swift_unknownObjectRelease();
          }

          else
          {
            v184 = 0;
            v185 = 0;
          }
        }

        v269 = **(v0 + 904);
        v270 = swift_allocObject();
        *(v270 + 16) = &unk_1001E1FE0;
        *(v270 + 24) = v181;

        if (v185 | v184)
        {
          *v6 = 0;
          *(v0 + 408) = 0;
          *(v0 + 416) = v184;
          *(v0 + 424) = v185;
        }

        else
        {
          v6 = 0;
        }

        v256 = *(v0 + 1096);
        *(v0 + 712) = 1;
        *(v0 + 720) = v6;
        *(v0 + 728) = v269;
        goto LABEL_130;
      case 9u:
        v65 = *(v0 + 1368);
        v66 = *(v0 + 1080);
        v67 = *(v0 + 1072);
        v68 = *(v0 + 912);
        *(v0 + 16) = *v65;
        v69 = v65[4];
        v71 = v65[1];
        v70 = v65[2];
        *(v0 + 64) = v65[3];
        *(v0 + 80) = v69;
        *(v0 + 32) = v71;
        *(v0 + 48) = v70;
        v72 = sub_1001D1BA0();
        v73 = *(v72 - 8);
        (*(v73 + 56))(v66, 1, 1, v72);
        v74 = swift_allocObject();
        v75 = *(v0 + 16);
        *(v74 + 56) = *(v0 + 32);
        v76 = *(v0 + 64);
        *(v74 + 72) = *(v0 + 48);
        *(v74 + 88) = v76;
        *(v74 + 104) = *(v0 + 80);
        *(v74 + 16) = 0;
        *(v74 + 24) = 0;
        *(v74 + 32) = v68;
        *(v74 + 40) = v75;
        sub_10001208C(v66, v67, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v66) = (*(v73 + 48))(v67, 1, v72);
        v77 = v68;
        v78 = *(v0 + 1072);
        if (v66 == 1)
        {
          sub_100011F00(*(v0 + 1072), &qword_100229350, &unk_1001D6BA0);
          v79 = 0;
          v80 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v73 + 8))(v78, v72);
          if (*(v74 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v79 = sub_1001D1A70();
            v80 = v191;
            swift_unknownObjectRelease();
          }

          else
          {
            v79 = 0;
            v80 = 0;
          }
        }

        v259 = **(v0 + 904);
        v260 = swift_allocObject();
        *(v260 + 16) = &unk_1001E1FC8;
        *(v260 + 24) = v74;

        if (v80 | v79)
        {
          v261 = v0 + 336;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0;
          *(v0 + 352) = v79;
          *(v0 + 360) = v80;
        }

        else
        {
          v261 = 0;
        }

        v256 = *(v0 + 1080);
        *(v0 + 760) = 1;
        *(v0 + 768) = v261;
        *(v0 + 776) = v259;
        goto LABEL_130;
      case 0xAu:
        v161 = *(v0 + 1368);
        v162 = *(v0 + 1048);
        v163 = *(v0 + 1040);
        v164 = *(v0 + 912);
        v165 = *v161;
        v166 = v161[1];
        v167 = sub_1001D1BA0();
        v168 = *(v167 - 8);
        (*(v168 + 56))(v162, 1, 1, v167);
        v169 = swift_allocObject();
        *(v169 + 16) = 0u;
        *(v169 + 32) = v164;
        *(v169 + 40) = v165;
        *(v169 + 48) = v166;
        sub_10001208C(v162, v163, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v163) = (*(v168 + 48))(v163, 1, v167);
        v170 = v164;
        v171 = *(v0 + 1040);
        if (v163 == 1)
        {
          sub_100011F00(*(v0 + 1040), &qword_100229350, &unk_1001D6BA0);
          v172 = 0;
          v173 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v168 + 8))(v171, v167);
          if (*(v169 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v172 = sub_1001D1A70();
            v173 = v209;
            swift_unknownObjectRelease();
          }

          else
          {
            v172 = 0;
            v173 = 0;
          }
        }

        v266 = **(v0 + 904);
        v267 = swift_allocObject();
        *(v267 + 16) = &unk_1001E1F90;
        *(v267 + 24) = v169;

        if (v173 | v172)
        {
          v268 = v0 + 208;
          *(v0 + 208) = 0;
          *(v0 + 216) = 0;
          *(v0 + 224) = v172;
          *(v0 + 232) = v173;
        }

        else
        {
          v268 = 0;
        }

        v256 = *(v0 + 1048);
        *(v0 + 856) = 1;
        *(v0 + 864) = v268;
        *(v0 + 872) = v266;
        goto LABEL_130;
      case 0xBu:
        v26 = *(v0 + 1160);
        v27 = *(v0 + 1152);
        v28 = *(v0 + 912);
        v29 = sub_1001D1BA0();
        v30 = *(v29 - 8);
        (*(v30 + 56))(v26, 1, 1, v29);
        v31 = swift_allocObject();
        v31[2] = 0;
        v31[3] = 0;
        v31[4] = v28;
        sub_10001208C(v26, v27, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v27) = (*(v30 + 48))(v27, 1, v29);
        v32 = v28;
        v33 = *(v0 + 1152);
        if (v27 == 1)
        {
          sub_100011F00(*(v0 + 1152), &qword_100229350, &unk_1001D6BA0);
          v34 = 0;
          v35 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v30 + 8))(v33, v29);
          if (v31[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v34 = sub_1001D1A70();
            v35 = v186;
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0;
            v35 = 0;
          }
        }

        v254 = **(v0 + 904);
        v255 = swift_allocObject();
        *(v255 + 16) = &unk_1001E2048;
        *(v255 + 24) = v31;

        if (v35 | v34)
        {
          *v9 = 0;
          *(v0 + 568) = 0;
          *(v0 + 576) = v34;
          *(v0 + 584) = v35;
        }

        else
        {
          v9 = 0;
        }

        v256 = *(v0 + 1160);
        *(v0 + 616) = 1;
        *(v0 + 624) = v9;
        *(v0 + 632) = v254;
        goto LABEL_130;
      case 0xCu:
        v55 = *(v0 + 1064);
        v56 = *(v0 + 1056);
        v57 = *(v0 + 912);
        v58 = sub_1001D1BA0();
        v59 = *(v58 - 8);
        (*(v59 + 56))(v55, 1, 1, v58);
        v60 = swift_allocObject();
        v60[2] = 0;
        v60[3] = 0;
        v60[4] = v57;
        sub_10001208C(v55, v56, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v56) = (*(v59 + 48))(v56, 1, v58);
        v61 = v57;
        v62 = *(v0 + 1056);
        if (v56 == 1)
        {
          sub_100011F00(*(v0 + 1056), &qword_100229350, &unk_1001D6BA0);
          v63 = 0;
          v64 = 0;
        }

        else
        {
          sub_1001D1B90();
          (*(v59 + 8))(v62, v58);
          if (v60[2])
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v63 = sub_1001D1A70();
            v64 = v190;
            swift_unknownObjectRelease();
          }

          else
          {
            v63 = 0;
            v64 = 0;
          }
        }

        v257 = **(v0 + 904);
        v258 = swift_allocObject();
        *(v258 + 16) = &unk_1001E1FB0;
        *(v258 + 24) = v60;

        if (v64 | v63)
        {
          *v5 = 0;
          *(v0 + 280) = 0;
          *(v0 + 288) = v63;
          *(v0 + 296) = v64;
        }

        else
        {
          v5 = 0;
        }

        v256 = *(v0 + 1064);
        *(v0 + 808) = 1;
        *(v0 + 816) = v5;
        *(v0 + 824) = v257;
LABEL_130:
        swift_task_create();

        sub_100011F00(v256, &qword_100229350, &unk_1001D6BA0);
        break;
      default:
        v10 = *(v0 + 1368);
        v11 = *(v0 + 1344);
        v12 = *(v0 + 1336);
        v291 = *(v0 + 1320);
        v13 = *(v0 + 1312);
        v309 = *(v0 + 1304);
        v297 = *(v0 + 1328);
        v14 = *(v0 + 1256);
        v15 = *(v0 + 1248);
        v16 = *(v0 + 1240);
        v280 = v12;
        v302 = *(v0 + 912);
        v305 = *(v0 + 1232);
        v17 = *(sub_100011AC0(&unk_1002301C0, &qword_1001E1B70) + 48);
        sub_1001CBCB0(v10, v11, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v287 = *(v14 + 32);
        v287(v13, v10 + v17, v15);
        v18 = sub_1001D1BA0();
        v19 = *(v18 - 8);
        (*(v19 + 56))(v16, 1, 1, v18);
        sub_1001CC144(v11, v12, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v20 = v15;
        (*(v14 + 16))(v309, v13, v15);
        v21 = (*(v291 + 80) + 40) & ~*(v291 + 80);
        v22 = (v297 + *(v14 + 80) + v21) & ~*(v14 + 80);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = v302;
        sub_1001CBCB0(v280, v23 + v21, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        v287(v23 + v22, v309, v20);
        sub_10001208C(v16, v305, &qword_100229350, &unk_1001D6BA0);
        LODWORD(v22) = (*(v19 + 48))(v305, 1, v18);
        v24 = v302;
        v25 = *(v0 + 1232);
        if (v22 == 1)
        {
          sub_100011F00(*(v0 + 1232), &qword_100229350, &unk_1001D6BA0);
        }

        else
        {
          sub_1001D1B90();
          (*(v19 + 8))(v25, v18);
        }

        if (v23[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v197 = sub_1001D1A70();
          v199 = v198;
          swift_unknownObjectRelease();
        }

        else
        {
          v197 = 0;
          v199 = 0;
        }

        v229 = **(v0 + 904);
        v230 = swift_allocObject();
        *(v230 + 16) = &unk_1001E20D0;
        *(v230 + 24) = v23;

        if (v199 | v197)
        {
          v231 = v0 + 240;
          *(v0 + 240) = 0;
          *(v0 + 248) = 0;
          *(v0 + 256) = v197;
          *(v0 + 264) = v199;
        }

        else
        {
          v231 = 0;
        }

        v234 = *(v0 + 1344);
        v235 = *(v0 + 1312);
        v236 = *(v0 + 1256);
        v237 = *(v0 + 1248);
        v238 = *(v0 + 1240);
        *(v0 + 880) = 1;
        *(v0 + 888) = v231;
        *(v0 + 896) = v229;
        swift_task_create();

        sub_100011F00(v238, &qword_100229350, &unk_1001D6BA0);
        (*(v236 + 8))(v235, v237);
        sub_1001CC0E4(v234, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList);
        break;
    }

    v271 = swift_task_alloc();
    *(v0 + 1408) = v271;
    *v271 = v0;
    v271[1] = sub_1001BF714;
    v272 = *(v0 + 1384);
    v273 = *(v0 + 1376);

    return AsyncStream.Iterator.next(isolation:)(v273, 0, 0, v272);
  }
}

uint64_t sub_1001C2040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1001C2064, 0, 0);
}

uint64_t sub_1001C2064()
{
  v0[5] = os_transaction_create();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1001C210C;
  v3 = v0[3];
  v2 = v0[4];

  return sub_1001C2268(v3, v2);
}

uint64_t sub_1001C210C()
{

  return _swift_task_switch(sub_1001C2208, 0, 0);
}

uint64_t sub_1001C2208()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C2268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001C228C, 0, 0);
}

uint64_t sub_1001C228C()
{
  v1 = v0[2];
  if (*(v1 + 8) == 1)
  {
    v2 = *(v0[4] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
    v0[5] = v2;
    if (v2)
    {
      v0[6] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

      v3 = sub_1001D0E50();
      v4 = sub_1001D1E00();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "creating a prefetch request as response to expired attestations", v5, 2u);
      }

      v7 = v0[3];
      v6 = v0[4];

      v8 = swift_task_alloc();
      v0[7] = v8;
      v8[2] = v2;
      v8[3] = v6;
      v8[4] = v7;
      v9 = swift_task_alloc();
      v0[8] = v9;
      *v9 = v0;
      v9[1] = sub_1001C254C;
      v10 = v0[3];

      return sub_1000732FC(sub_1000732FC, v10, &unk_1001E20F0, v8);
    }

    goto LABEL_14;
  }

  v12 = *v1;
  v0[10] = v12;
  v13 = v12[2];
  v0[11] = v13;
  if (!v13)
  {
LABEL_14:
    v17 = v0[1];

    return v17();
  }

  v14 = *(v0[4] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[12] = v14;
  if (!v14)
  {
    v0[13] = v13 - 1;
    goto LABEL_14;
  }

  v0[13] = 0;
  v0[14] = v12[5];
  v0[15] = v12[4];
  type metadata accessor for AttestationStore();
  sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);

  v16 = sub_1001D1A70();

  return _swift_task_switch(sub_1001C26C8, v16, v15);
}

uint64_t sub_1001C254C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1001C2880;
  }

  else
  {

    v2 = sub_1001C2668;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C2668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C26C8()
{
  sub_1000311C8(*(v0 + 120), *(v0 + 112));

  return _swift_task_switch(sub_1001C2740, 0, 0);
}

uint64_t sub_1001C2740()
{
  v1 = v0[11];
  v2 = v0[13];
  v3 = 16 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    v0[13] = i;
    v3 += 16;
    if (v0[12])
    {
      v5 = v0[10] + v3;
      v0[14] = *(v5 + 40);
      v0[15] = *(v5 + 32);
      type metadata accessor for AttestationStore();
      sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);

      v7 = sub_1001D1A70();

      return _swift_task_switch(sub_1001C26C8, v7, v6);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001C2880()
{

  swift_errorRetain();
  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "failed prefetch request as response to expired attestations. error: %@", v3, 0xCu);
    sub_100011F00(v4, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001C29F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[17] = a3;
  v8 = sub_1001CFD60();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2ABC, 0, 0);
}

uint64_t sub_1001C2ABC(uint64_t a1)
{
  v2 = *(*(v1 + 136) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_dailyActiveUserReporter);
  *(v1 + 200) = v2;
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

  return _swift_task_switch(sub_1001C2B38, v2, 0);
}

uint64_t sub_1001C2B38()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_1001B44B8(*(v0 + 144), *(v0 + 152), *(v0 + 160), (v0 + 56));
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 64);
  if (v4)
  {
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 24) = v4;
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 48) = *(v0 + 88);
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v5[1] = sub_1001C2C84;

    return sub_1001B1C04(v0 + 16);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1001C2C84()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 112) = *(v1 + 16);
  sub_1001CC090(v1 + 112);
  *(v1 + 128) = *(v1 + 32);
  v1 += 128;
  sub_100011F00(v1, &unk_1002301E0, &unk_1001E2110);
  *(v1 - 32) = *(v1 - 88);
  sub_100011F00(v1 - 32, &qword_100228AA8, &qword_1001D5BC0);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1001C2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[17] = a3;
  v8 = sub_1001CFD60();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2EB4, 0, 0);
}

uint64_t sub_1001C2EB4()
{
  v1 = v0[17];
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_dailyActiveUserReporter);
  v0[25] = v2;
  v0[26] = *(*(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v1 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();

  return _swift_task_switch(sub_1001C2F60, v2, 0);
}

uint64_t sub_1001C2F60()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_1001B4D6C(v1, *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 208), (v0 + 56));

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 64);
  if (v4)
  {
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 24) = v4;
    *(v0 + 32) = *(v0 + 72);
    *(v0 + 48) = *(v0 + 88);
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = sub_1001C30C0;

    return sub_1001B2454(v0 + 16);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1001C30C0()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 112) = *(v1 + 16);
  sub_1001CC090(v1 + 112);
  *(v1 + 128) = *(v1 + 32);
  v1 += 128;
  sub_100011F00(v1, &qword_100230238, &qword_1001E2160);
  *(v1 - 32) = *(v1 - 88);
  sub_100011F00(v1 - 32, &qword_100228AA8, &qword_1001D5BC0);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1001C3228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001C3248, 0, 0);
}

uint64_t sub_1001C3248()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100024DC8(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1001C3300;

  return sub_100020CA0(v4, v3, v2);
}

uint64_t sub_1001C3300()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001C33F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v5 = sub_1001CFD60();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for RateLimitConfiguration(0);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3554, 0, 0);
}

uint64_t sub_1001C3554(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(*(v1 + 152) + 16);
  *(v1 + 232) = v3;
  if (v3)
  {
    v4 = *(v1 + 208);
    v5 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v1 + 240) = v5;
    *(v1 + 296) = *(v4 + 80);
    v6 = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model;
    *(v1 + 248) = OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_logger;
    *(v1 + 256) = v6;
    *(v1 + 264) = *(v4 + 72);
    *(v1 + 272) = 0;
    v7 = sub_1001C3628;
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    *(v1 + 280) = v8;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v7 = sub_1001C3998;
    v5 = v8;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_1001C3628()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 264) * *(v0 + 272);
  sub_1001CC144(v2, *(v0 + 224), type metadata accessor for RateLimitConfiguration);
  sub_1001CC144(v2, v1, type metadata accessor for RateLimitConfiguration);
  v3 = sub_1001D0E50();
  v4 = sub_1001D1DC0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  if (v5)
  {
    v8 = *(v0 + 200);
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    v10 = *(v7 + *(v8 + 20));
    sub_1001CC0E4(v7, type metadata accessor for RateLimitConfiguration);
    *(v9 + 4) = v10;
    *(v9 + 12) = 2048;
    v11 = *(v6 + *(v8 + 20) + 8);
    sub_1001CC0E4(v6, type metadata accessor for RateLimitConfiguration);
    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "rate limit discovered for rate with count=%lu, duration=%f", v9, 0x16u);
  }

  else
  {
    sub_1001CC0E4(*(v0 + 224), type metadata accessor for RateLimitConfiguration);

    sub_1001CC0E4(v6, type metadata accessor for RateLimitConfiguration);
  }

  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v14 = *(v0 + 152) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 264) * *(v0 + 272);
  swift_beginAccess();
  v15 = *v14;
  v16 = *(v14 + 16);
  v17 = *(v14 + 32);
  *(v0 + 64) = *(v14 + 48);
  *(v0 + 32) = v16;
  *(v0 + 48) = v17;
  *(v0 + 16) = v15;
  sub_1001CC144(v14 + *(v13 + 20), v12, type metadata accessor for RateLimitTimingDetails);
  v18 = type metadata accessor for RateLimitTimingDetails(0);
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  sub_10001B9AC(v0 + 16, v0 + 72);
  sub_100017758(v12, (v0 + 16));
  sub_1000E3E7C(v14);
  swift_endAccess();

  return _swift_task_switch(sub_1001C38EC, 0, 0);
}

uint64_t sub_1001C38EC(uint64_t a1)
{
  v2 = v1[34] + 1;
  if (v2 == v1[29])
  {
    v3 = *(v1[20] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
    v1[35] = v3;
    _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
    v4 = sub_1001C3998;
    v5 = v3;
  }

  else
  {
    v1[34] = v2;
    v5 = v1[30];
    v4 = sub_1001C3628;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001C3998()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1000EE40C(v1);
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1001C3A5C;

  return sub_1000ED278();
}

uint64_t sub_1001C3A5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001C3BE8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v0[3] = v1;
  if (v1)
  {
    type metadata accessor for AttestationStore();
    sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
    v3 = sub_1001D1A70();

    return _swift_task_switch(sub_1001C3CE4, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C3CE4()
{
  sub_10002FC88();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C3D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v12;
  v8[11] = v13;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v9 = sub_1001D08A0();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  sub_1001CF7E0();
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3E44, 0, 0);
}

uint64_t sub_1001C3E44()
{
  v25 = v0;
  *(v0 + 128) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v24);
    *(v5 + 12) = 2080;
    v6 = sub_1001D1710();
    v8 = sub_1000954E0(v6, v7, &v24);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "running prewarmAttestations: %s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 32);
  *(v0 + 136) = os_transaction_create();
  sub_1001CF820();
  swift_allocObject();
  v10 = sub_1001CF810();
  *(v0 + 144) = v10;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v11 = *(v9 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  *(v0 + 152) = v11;
  if (v11)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 32);

    v22 = *(v0 + 64);
    v23 = *(v0 + 80);
    sub_1001D0880();
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v12;
    *(v14 + 40) = 1;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    *(v14 + 64) = v22;
    *(v14 + 80) = v23;
    *(v14 + 96) = v10;
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_1001C4224;
    v16 = *(v0 + 112);

    return sub_100072724(v0 + 16, v16, &unk_1001D6840, v14);
  }

  else
  {
    v18 = sub_1001D0E50();
    v19 = sub_1001D1E00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "store unavailable", v20, 2u);
    }

    swift_unknownObjectRelease();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1001C4224()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1001C43F8;
  }

  else
  {
    sub_10002683C(*(v2 + 16), *(v2 + 24));

    v3 = sub_1001C434C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C434C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C43F8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed prefetch attestations: %@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C45D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v5 = sub_1001D08A0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1001CF7E0();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001C46BC, 0, 0);
}

uint64_t sub_1001C46BC(uint64_t a1)
{
  v1[10] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running prefetchAttestationsForNewWorkload", v4, 2u);
  }

  v5 = v1[4];

  v1[11] = os_transaction_create();
  sub_1001D0890();
  sub_1001D0870();
  sub_1001CF820();
  swift_allocObject();
  v6 = sub_1001CF810();
  v1[12] = v6;
  sub_1001CF7C0();
  sub_1001CF7F0();
  v7 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v1[13] = v7;
  if (v7)
  {
    v8 = v1[8];
    v9 = v1[4];

    sub_1001D0880();
    v10 = swift_task_alloc();
    v1[14] = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 32) = v8;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 1;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = v6;
    v11 = swift_task_alloc();
    v1[15] = v11;
    *v11 = v1;
    v11[1] = sub_1001C49E0;
    v12 = v1[8];

    return sub_100072724((v1 + 2), v12, &unk_1001E2190, v10);
  }

  else
  {

    v14 = sub_1001D0E50();
    v15 = sub_1001D1E00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "store unavailable", v16, 2u);
    }

    swift_unknownObjectRelease();

    v17 = v1[1];

    return v17();
  }
}

uint64_t sub_1001C49E0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1001C4BB0;
  }

  else
  {

    v2 = sub_1001C4AFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C4AFC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_10002683C(v0[2], v0[3]);
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C4BB0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed prefetch attestations: %@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a3;
  v6 = sub_1001D08A0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_1001CF7E0();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001C4E78, 0, 0);
}

uint64_t sub_1001C4E78(uint64_t a1)
{
  v1[11] = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running discardUsedAttestationsAndPrefetchBatch", v4, 2u);
  }

  v5 = v1[4];

  v6 = *(v5 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v1[12] = v6;
  if (v6)
  {

    v1[13] = os_transaction_create();
    type metadata accessor for AttestationStore();
    sub_1001CC51C(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);
    v8 = sub_1001D1A70();

    return _swift_task_switch(sub_1001C50A4, v8, v7);
  }

  else
  {
    v9 = sub_1001D0E50();
    v10 = sub_1001D1DE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "failed to prefetch attestations as store is not initialized", v11, 2u);
    }

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_1001C50A4()
{
  *(v0 + 112) = sub_100035FCC(*(v0 + 40));

  return _swift_task_switch(sub_1001C5114, 0, 0);
}

uint64_t sub_1001C5114(uint64_t a1)
{
  v10 = v1[14];
  v2 = v1[12];
  v3 = v1[9];
  v4 = v1[4];
  sub_1001D0890();
  sub_1001D0870();
  sub_1001CF820();
  swift_allocObject();
  v5 = sub_1001CF810();
  v1[15] = v5;
  sub_1001CF7C0();
  sub_1001CF7F0();

  sub_1001D0880();
  v6 = swift_task_alloc();
  v1[16] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = 0;
  *(v6 + 48) = v10;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = v5;
  v7 = swift_task_alloc();
  v1[17] = v7;
  *v7 = v1;
  v7[1] = sub_1001C52B8;
  v8 = v1[9];

  return sub_100072724((v1 + 2), v8, &unk_1001E2198, v6);
}

uint64_t sub_1001C52B8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1001C5490;
  }

  else
  {

    v2 = sub_1001C53D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C53D4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_10002683C(v0[2], v0[3]);
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C5490()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed prefetch attestations: %@", v6, 0xCu);
    sub_100011F00(v7, &unk_1002301D0, &qword_1001D4F50);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001C5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  return _swift_task_switch(sub_1001C5694, 0, 0);
}

uint64_t sub_1001C5694()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1001CC600;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);

  return sub_1001B36A8(v2, v3);
}

uint64_t sub_1001C5750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001C5770, 0, 0);
}

uint64_t sub_1001C5770()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_tapToRadarController);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_1001C579C, v1, 0);
}

uint64_t sub_1001C579C()
{
  sub_1001BA5A8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C57FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000130E0;

  return sub_100108D70();
}

uint64_t sub_1001C588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = sub_1001CFD60();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001C5950, 0, 0);
}

uint64_t sub_1001C5950(uint64_t a1)
{
  sub_1001CFD50();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_1001C5A14;
  v3 = v1[7];
  v5 = v1[3];
  v4 = v1[4];

  return sub_1001B0DDC(v5, v4, v3);
}

uint64_t sub_1001C5A14()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001C5B6C(_BYTE *a1, void *a2)
{
  v3 = sub_1001D17A0();

  v4 = [a2 valueForEntitlement:v3];

  if (v4)
  {
    sub_1001D1F90();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
    sub_100011F00(v9, &unk_1002300E0, &qword_1001E1140);
  }

  return 0;
}

void sub_1001C5CFC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_1001C5DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[75] = a4;
  v4[74] = a3;
  v4[73] = a2;
  v5 = sub_1001D02F0();
  v4[76] = v5;
  v4[77] = *(v5 - 8);
  v4[78] = swift_task_alloc();
  sub_1001CF7E0();
  v4[79] = swift_task_alloc();
  v6 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v4[80] = v6;
  v4[81] = *(v6 - 8);
  v4[82] = swift_task_alloc();
  v7 = sub_1001D08A0();
  v4[83] = v7;
  v4[84] = *(v7 - 8);
  v4[85] = swift_task_alloc();
  sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v4[86] = swift_task_alloc();

  return _swift_task_switch(sub_1001C5FA8, 0, 0);
}

uint64_t sub_1001C5FA8()
{
  v44 = *(v0 + 688);
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v45 = v2;
  v3 = *(v0 + 664);
  v47 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v37 = *(v0 + 624);
  v6 = *(v0 + 616);
  v36 = *(v0 + 608);
  v39 = v5;
  v40 = *(v0 + 600);
  v7 = *(v0 + 592);
  v43 = *(v0 + 584);
  v35 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_rateLimiter);
  sub_10001208C(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationVerifier, v44, &qword_100229520, &unk_1001DEF70);
  v8 = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config;
  v9 = sub_1001D05B0();
  *(v0 + 568) = v9;
  *(v0 + 576) = &protocol witness table for DefaultConfiguration;
  v46 = sub_10003B47C((v0 + 544));
  (*(*(v9 - 8) + 16))(v46, v7 + v8, v9);
  v38 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_serverDrivenConfig);
  v10 = (v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  v12 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16);
  v11 = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32);
  *(v0 + 16) = *(v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo);
  *(v0 + 32) = v12;
  *(v0 + 48) = v11;
  v13 = v10[6];
  v15 = v10[3];
  v14 = v10[4];
  *(v0 + 96) = v10[5];
  *(v0 + 112) = v13;
  *(v0 + 64) = v15;
  *(v0 + 80) = v14;
  v16 = v10[10];
  v18 = v10[7];
  v17 = v10[8];
  *(v0 + 160) = v10[9];
  *(v0 + 176) = v16;
  *(v0 + 128) = v18;
  *(v0 + 144) = v17;
  v42 = *(v2 + 16);
  v42(v1, v40, v3);
  v41 = *(v4 + 16);
  v41(v47, v7 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_thimbledEventContinuation, v5);
  sub_100011AC0(&qword_100229528, &qword_1001E2100);
  v19 = swift_allocObject();
  *(v0 + 696) = v19;
  sub_1001CF820();
  swift_allocObject();

  sub_1000884D8(v0 + 16, v0 + 192);
  v20 = sub_1001CF810();
  sub_1001CF7C0();
  sub_1001CF7F0();
  *(v19 + 2) = v20;
  (*(v6 + 104))(v37, enum case for TC2LogCategory.prefetchRequest(_:), v36);
  sub_1001D08B0();
  (*(v6 + 8))(v37, v36);
  sub_1001CFD90();
  *&v19[*(*v19 + 216)] = v43;
  *&v19[*(*v19 + 224)] = v35;
  sub_10001208C(v44, &v19[*(*v19 + 232)], &qword_100229520, &unk_1001DEF70);
  sub_100044698(v0 + 544, &v19[*(*v19 + 240)]);
  *&v19[*(*v19 + 248)] = v38;
  v21 = &v19[*(*v19 + 256)];
  v22 = *(v0 + 32);
  *v21 = *(v0 + 16);
  *(v21 + 1) = v22;
  v23 = *(v0 + 96);
  *(v21 + 4) = *(v0 + 80);
  *(v21 + 5) = v23;
  v24 = *(v0 + 64);
  *(v21 + 2) = *(v0 + 48);
  *(v21 + 3) = v24;
  v25 = *(v0 + 176);
  *(v21 + 9) = *(v0 + 160);
  *(v21 + 10) = v25;
  v26 = *(v0 + 144);
  *(v21 + 7) = *(v0 + 128);
  *(v21 + 8) = v26;
  *(v21 + 6) = *(v0 + 112);
  v42(&v19[*(*v19 + 272)], v1, v3);
  v41(&v19[*(*v19 + 280)], v47, v39);
  v19[*(*v19 + 288)] = 0;
  v27 = &v19[*(*v19 + 296)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v19[*(*v19 + 304)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v19[*(*v19 + 312)];
  *v29 = 0;
  v29[8] = 1;
  sub_1000884D8(v0 + 16, v0 + 368);

  LOBYTE(v20) = sub_100088818(v46, v0 + 16, v38);
  sub_100088D84(v0 + 16);
  (*(v4 + 8))(v47, v39);
  (*(v45 + 8))(v1, v3);
  sub_100011F00(v44, &qword_100229520, &unk_1001DEF70);
  sub_100011CF0((v0 + 544));
  v19[*(*v19 + 328)] = v20 & 1;
  *(v0 + 704) = OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_logger;
  v30 = sub_1001D0E50();
  v31 = sub_1001D1E00();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "firing prefetch request as response to expired attestations", v32, 2u);
  }

  v33 = swift_task_alloc();
  *(v0 + 712) = v33;
  *v33 = v0;
  v33[1] = sub_1001C65D8;

  return sub_10006ADEC();
}

uint64_t sub_1001C65D8(uint64_t a1)
{
  *(*v2 + 720) = v1;

  if (v1)
  {
    v3 = sub_1001C6820;
  }

  else
  {

    v3 = sub_1001C66F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C66F8(uint64_t a1)
{
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "succeeded prefetch request as response to expired attestations", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1001C6820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C6BA8()
{
  sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v0[2] = swift_task_alloc();
  v0[3] = sub_1001D1B20();
  v0[4] = sub_1001D1B10();
  v0[5] = sub_1001D1B10();
  v2 = sub_1001D1A70();
  v0[6] = v2;
  v0[7] = v1;

  return _swift_task_switch(sub_1001C6C84, v2, v1);
}

uint64_t sub_1001C6C84()
{
  v1 = v0[2];
  sub_1001C9BE8(0xD00000000000001ELL);
  v2 = sub_1001CFB10();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = objc_allocWithZone(type metadata accessor for TC2Daemon(0));
  v0[8] = sub_1001BC5D8(v1);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1001C6D94;

  return sub_1001BB750();
}

uint64_t sub_1001C6D94()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1001C6EB4, v3, v2);
}

uint64_t sub_1001C6EB4()
{

  v2 = sub_1001D1A70();

  return _swift_task_switch(sub_1001C6F4C, v2, v1);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_1001C6FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001CC604;

  return sub_1001C6BA8();
}

uint64_t type metadata accessor for TC2Daemon(uint64_t a1)
{
  result = qword_100230088;
  if (!qword_100230088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C70CC(uint64_t a1)
{
  sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    sub_1001D05B0();
    if (v2 <= 0x3F)
    {
      sub_1001C72E0(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        sub_1001C7338(319, &unk_1002300A0, &type metadata accessor for AsyncStream);
        if (v6 <= 0x3F)
        {
          sub_1001C7338(319, &qword_100227C88, &type metadata accessor for AsyncStream.Continuation);
          if (v7 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1001C72E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_100230098)
  {
    v4 = type metadata accessor for AttestationVerifier(0, &type metadata for FeatureFlagChecker, &off_100221FB0, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_100230098);
    }
  }
}

void sub_1001C7338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ThimbledEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_1001C7398()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&unk_1002300B0, &qword_1001E1EB8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_1001C73C8(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000593F8;

  return v4();
}

void *sub_1001C74B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_1001D1920();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100009388(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100009388((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1001D1900();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1001D18A0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1001D18A0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1001D1920();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100009388(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1001D1920();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100009388(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100009388((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1001D18A0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1001C7870(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      v15 = a2;
      sub_100011E48(v6, v5);
      *v16 = v6;
      *&v16[8] = v5;
      v16[10] = BYTE2(v5);
      v16[11] = BYTE3(v5);
      v16[12] = BYTE4(v5);
      v16[13] = BYTE5(v5);
      v16[14] = BYTE6(v5);
      result = sub_1001CF138(&v17, v16, v15);
      if (!v2)
      {
        result = v17;
      }

      v9 = *&v16[8] | ((*&v16[12] | (v16[14] << 16)) << 32);
      *a1 = *v16;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100011E48(v6, v5);
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_1001CF870() && __OFSUB__(v6, sub_1001CF8A0()))
      {
LABEL_24:
        __break(1u);
      }

      sub_1001CF8C0();
      swift_allocObject();
      v13 = sub_1001CF850();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1001C7BE0(v6, v6 >> 32, v11, v3);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v10;
        return v14;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {

    sub_100011E48(v6, v5);
    v17 = v6;
    v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1001D3A00;
    sub_100011E48(0, 0xC000000000000000);
    sub_1001CFB20();
    v6 = v17;
    result = sub_1001C7BE0(v17[2], v17[3], v18, v3);
    v10 = v18 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v17;
      a1[1] = v10;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v10;
    return result;
  }

  memset(v16, 0, 15);
  result = sub_1001CF138(&v17, v16, a2);
  if (!v2)
  {
    return v17;
  }

  return result;
}

uint64_t *sub_1001C7BE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1001CF870();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1001CF8A0();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1001CF890();
  result = sub_1001CF138(&v11, v9 + v10, a4);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_1001C7C8C(int *a1, int a2)
{
  sub_1001CFB40();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_1001CF870();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_1001CF8A0();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_1001CF890();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t sub_1001C7D34(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1001D2470() & 1;
  }
}

uint64_t sub_1001C7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v23 = a4;
  v15 = sub_1001D02F0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = sub_100011AC0(a6, a7);
  v26[4] = a8;
  v26[0] = a3;
  (*(v16 + 104))(v18, enum case for TC2LogCategory.scheduledTask(_:), v15);
  sub_1001D08B0();
  (*(v16 + 8))(v18, v15);
  *(a5 + 56) = a1;
  *(a5 + 64) = a2;
  sub_100044698(v26, a5 + 16);
  v24 = a1;
  v25 = a2;

  v27._countAndFlagsBits = 58;
  v27._object = 0xE100000000000000;
  sub_1001D18B0(v27);
  v19 = v24;
  v20 = v25;
  sub_100011CF0(v26);
  v21 = (a5 + qword_10022CBE8);
  *v21 = v19;
  v21[1] = v20;
  *(a5 + qword_10022CBF0) = v23;
  return a5;
}

uint64_t sub_1001C7F2C(uint64_t a1, char *a2, uint64_t a3)
{
  v59 = a2;
  v5 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v52 = &v50 - v6;
  v7 = sub_1001CFA40();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001CFB10();
  v12 = *(v11 - 8);
  v57 = v11;
  v58 = v12;
  v13 = __chkstk_darwin(v11);
  v50 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v56 = &v50 - v16;
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = sub_1001D02F0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1001D05B0();
  v61[3] = v23;
  v61[4] = &protocol witness table for DefaultConfiguration;
  v51 = sub_10003B47C(v61);
  (*(*(v23 - 8) + 32))(v51, a1, v23);
  swift_defaultActor_initialize();
  sub_1001CF960();
  swift_allocObject();
  *(a3 + 112) = sub_1001CF950();
  sub_1001CF920();
  swift_allocObject();
  *(a3 + 120) = sub_1001CF910();
  (*(v20 + 104))(v22, enum case for TC2LogCategory.rateLimiter(_:), v19);
  sub_1001D08B0();
  (*(v20 + 8))(v22, v19);
  sub_100044698(v61, a3 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_config);
  *&v60[0] = 0xD000000000000017;
  *(&v60[0] + 1) = 0x80000001001E5130;
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_100011EAC();
  sub_1001CFB00();
  v24 = v10;
  v25 = v57;
  (*(v8 + 8))(v24, v7);
  v26 = *(v58 + 16);
  (v26)(a3 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_file, v18, v25);
  v27 = v52;
  sub_1001D0550();
  v28 = a3;
  v29 = v18;
  sub_1001D0210();
  v53[1](v27, v54);
  *(v28 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_rateLimitUnmatchedRequestStorageTimeout) = *&v60[0];
  v30 = sub_1001CFB30();
  v55 = v18;
  v31 = v30;
  v33 = v32;
  v53 = v26;
  v34 = v50;
  v35 = v25;
  sub_1001CC564();

  v54 = v31;
  v56 = v33;
  sub_1001CF900();

  v36 = (v28 + OBJC_IVAR____TtC20privatecloudcomputed11RateLimiter_model);
  v37 = v60[1];
  *v36 = v60[0];
  v36[1] = v37;
  (v53)(v34, v29, v25);
  v38 = sub_1001D0E50();
  v39 = sub_1001D1DD0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v60[0] = v41;
    *v40 = 136315138;
    sub_1001CC51C(&qword_1002302F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v42 = sub_1001D23A0();
    v43 = v28;
    v45 = v44;
    v46 = *(v58 + 8);
    v46(v34, v35);
    v47 = sub_1000954E0(v42, v45, v60);
    v28 = v43;

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "initialized ratelimiter, file=%s", v40, 0xCu);
    sub_100011CF0(v41);

    sub_100011E48(v54, v56);

    v46(v59, v35);
    v46(v55, v35);
  }

  else
  {
    sub_100011E48(v54, v56);

    v48 = *(v58 + 8);
    v48(v59, v25);
    v48(v34, v25);
    v48(v29, v25);
  }

  sub_100011CF0(v61);
  return v28;
}

uint64_t sub_1001C89E4(uint64_t a1, void (*a2)(uint64_t, uint64_t, _OWORD *), uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v47 = sub_1001D0760();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v42[1] = v3;
    v88 = _swiftEmptyArrayStorage;
    sub_1001517B8(0, v7, 0);
    v53 = a1 + 64;
    v54 = v88;
    result = sub_1001D1FB0();
    if (result < 0 || (v9 = result, result >= 1 << *(a1 + 32)))
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v91 = *(a1 + 36);
      v45 = a1;
      v46 = v50 + 32;
      v43 = a1 + 72;
      v44 = v7;
      v10 = 1;
      while (1)
      {
        v11 = v9 >> 6;
        if ((*(v53 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          break;
        }

        if (v91 != *(a1 + 36))
        {
          goto LABEL_28;
        }

        v51 = v10;
        v52 = 1 << v9;
        v12 = *(a1 + 56);
        v13 = (*(a1 + 48) + 16 * v9);
        v14 = *v13;
        v15 = v13[1];
        v16 = (v12 + (v9 << 7));
        v17 = v16[3];
        v19 = *v16;
        v18 = v16[1];
        v63[2] = v16[2];
        v63[3] = v17;
        v63[0] = v19;
        v63[1] = v18;
        v21 = v16[5];
        v20 = v16[6];
        v22 = v16[4];
        *(v64 + 9) = *(v16 + 105);
        v63[5] = v21;
        v64[0] = v20;
        v63[4] = v22;
        v23 = *v16;
        v24 = v16[1];
        v25 = v16[3];
        v58 = v16[2];
        v59 = v25;
        v56 = v23;
        v57 = v24;
        v26 = v16[4];
        v27 = v16[5];
        v28 = v16[6];
        *(v62 + 9) = *(v16 + 105);
        v61 = v27;
        v62[0] = v28;
        v60 = v26;
        memmove(&v65, v16, 0x79uLL);
        v72[0] = v14;
        v72[1] = v15;
        v77 = v60;
        v78 = v61;
        v79[0] = v62[0];
        *(v79 + 9) = *(v62 + 9);
        v73 = v56;
        v74 = v57;
        v75 = v58;
        v76 = v59;
        swift_bridgeObjectRetain_n();
        sub_10001208C(v63, v55, &qword_100230150, &unk_1001D3700);
        sub_10001208C(&v65, v55, &qword_100230150, &unk_1001D3700);
        sub_100011F00(v72, &qword_100230158, &qword_1001E1F28);
        v85 = v69;
        v86 = v70;
        v87[0] = v71[0];
        *(v87 + 9) = *(v71 + 9);
        v81 = v65;
        v82 = v66;
        v83 = v67;
        v84 = v68;
        v89[2] = v67;
        v89[3] = v68;
        v89[0] = v65;
        v89[1] = v66;
        *&v90[9] = *(v71 + 9);
        v89[5] = v70;
        *v90 = v71[0];
        v80[0] = v14;
        v80[1] = v15;
        v89[4] = v69;
        v48(v14, v15, v89);
        sub_100011F00(v80, &qword_100230158, &qword_1001E1F28);
        v29 = v54;
        v88 = v54;
        v31 = v54[2];
        v30 = v54[3];
        if (v31 >= v30 >> 1)
        {
          sub_1001517B8((v30 > 1), v31 + 1, 1);
          v29 = v88;
        }

        v29[2] = v31 + 1;
        v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v54 = v29;
        result = (*(v50 + 32))(v29 + v32 + *(v50 + 72) * v31, v6, v47);
        a1 = v45;
        v33 = 1 << *(v45 + 32);
        if (v9 >= v33)
        {
          goto LABEL_29;
        }

        v34 = *(v53 + 8 * v11);
        if ((v34 & v52) == 0)
        {
          goto LABEL_30;
        }

        if (v91 != *(v45 + 36))
        {
          goto LABEL_31;
        }

        v35 = v34 & (-2 << (v9 & 0x3F));
        if (v35)
        {
          v9 = __clz(__rbit64(v35)) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v36 = v6;
          v37 = v11 << 6;
          v38 = v11 + 1;
          v39 = (v43 + 8 * v11);
          while (v38 < (v33 + 63) >> 6)
          {
            v41 = *v39++;
            v40 = v41;
            v37 += 64;
            ++v38;
            if (v41)
            {
              result = sub_10001202C(v9, v91, 0);
              v9 = __clz(__rbit64(v40)) + v37;
              goto LABEL_19;
            }
          }

          result = sub_10001202C(v9, v91, 0);
          v9 = v33;
LABEL_19:
          v6 = v36;
        }

        if (v51 == v44)
        {
          return v54;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          v10 = v51 + 1;
          if (v9 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

void *sub_1001C8E94(uint64_t a1)
{
  v2 = sub_1001CFEE0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v76 = &v62 - v8;
  __chkstk_darwin(v7);
  v65 = &v62 - v9;
  v10 = sub_100011AC0(&unk_100230210, &unk_1001E2138);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v62 - v14;
  v15 = sub_1000D60E8(_swiftEmptyArrayStorage);
  v16 = *(a1 + 64);
  v63 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v72 = v3;
  v73 = (v3 + 16);
  v75 = (v3 + 32);
  v66 = a1;
  v67 = v3 + 8;
  v64 = v3 + 40;

  v21 = 0;
  v71 = v13;
  v68 = v6;
  while (v19)
  {
    v23 = v21;
LABEL_15:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v65;
    v29 = *(*(v66 + 48) + v27);
    v30 = v72;
    (*(v72 + 16))(v65, *(v66 + 56) + *(v72 + 72) * v27, v2);
    v31 = sub_100011AC0(&qword_1002301F8, &unk_1001E2128);
    v32 = *(v31 + 48);
    v33 = v71;
    *v71 = v29;
    v13 = v33;
    (*(v30 + 32))(&v33[v32], v28, v2);
    (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
    v25 = v23;
LABEL_16:
    v34 = v69;
    sub_1000DBEF4(v13, v69, &unk_100230210, &unk_1001E2138);
    v35 = sub_100011AC0(&qword_1002301F8, &unk_1001E2128);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {

      return v15;
    }

    v36 = *(v35 + 48);
    v37 = *v34;
    v38 = *v75;
    (*v75)(v76, &v34[v36], v2);
    v74 = v25;
    v70 = v38;
    if (v37 <= 1)
    {
      v43 = v37 == 0;
      if (v37)
      {
        v41 = 7761509;
      }

      else
      {
        v41 = 0x6D6974746E657665;
      }

      if (v43)
      {
        v42 = 0xE900000000000065;
      }

      else
      {
        v42 = 0xE300000000000000;
      }

      v39 = v68;
    }

    else
    {
      v39 = v68;
      if (v37 == 2)
      {
        v41 = 0x6572746E65696C63;
        v42 = 0xEF64697473657571;
      }

      else
      {
        v40 = v37 == 3;
        if (v37 == 3)
        {
          v41 = 0x696C63656C707061;
        }

        else
        {
          v41 = 0x636F6C656C707061;
        }

        if (v40)
        {
          v42 = 0xEF6F666E69746E65;
        }

        else
        {
          v42 = 0xEB00000000656C61;
        }
      }
    }

    v44 = v39;
    v45 = v2;
    (*v73)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v15;
    v48 = sub_100006028(v41, v42);
    v49 = v15[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_45;
    }

    v52 = v47;
    if (v15[3] >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000F90C();
      }
    }

    else
    {
      sub_10000BFDC(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_100006028(v41, v42);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_47;
      }

      v48 = v53;
    }

    v2 = v45;
    if (v52)
    {

      v15 = v77;
      v22 = v72;
      (*(v72 + 40))(v77[7] + *(v72 + 72) * v48, v44, v45);
      (*(v22 + 8))(v76, v45);
    }

    else
    {
      v15 = v77;
      v77[(v48 >> 6) + 8] |= 1 << v48;
      v55 = (v15[6] + 16 * v48);
      *v55 = v41;
      v55[1] = v42;
      v56 = v72;
      v70(v15[7] + *(v72 + 72) * v48, v44, v45);
      (*(v56 + 8))(v76, v45);
      v57 = v15[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_46;
      }

      v15[2] = v59;
    }

    v21 = v74;
    v13 = v71;
  }

  if (v20 <= v21 + 1)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v20;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      v60 = sub_100011AC0(&qword_1002301F8, &unk_1001E2128);
      (*(*(v60 - 8) + 56))(v13, 1, 1, v60);
      v19 = 0;
      goto LABEL_16;
    }

    v19 = *(v63 + 8 * v23);
    ++v21;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

void *sub_1001C9514(uint64_t a1)
{
  v2 = sub_1001CFEE0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v72 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v74 = &v60 - v7;
  __chkstk_darwin(v6);
  v64 = &v60 - v8;
  v9 = sub_100011AC0(&qword_100230248, &qword_1001E2170);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v60 - v13;
  v14 = sub_1000D60E8(_swiftEmptyArrayStorage);
  v15 = *(a1 + 64);
  v62 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v70 = v3;
  v71 = (v3 + 16);
  v73 = (v3 + 32);
  v60 = 0x80000001001E24F0;
  v61 = 0x80000001001E2510;
  v65 = a1;
  v66 = v3 + 8;
  v63 = v3 + 40;

  v20 = 0;
  v69 = v12;
  while (v18)
  {
    v22 = v20;
LABEL_15:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v64;
    v28 = *(*(v65 + 48) + v26);
    v29 = v70;
    (*(v70 + 16))(v64, *(v65 + 56) + *(v70 + 72) * v26, v2);
    v30 = sub_100011AC0(&qword_100230240, &qword_1001E2168);
    v31 = *(v30 + 48);
    v32 = v69;
    *v69 = v28;
    v12 = v32;
    (*(v29 + 32))(&v32[v31], v27, v2);
    (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
    v24 = v22;
LABEL_16:
    v33 = v67;
    sub_1000DBEF4(v12, v67, &qword_100230248, &qword_1001E2170);
    v34 = sub_100011AC0(&qword_100230240, &qword_1001E2168);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {

      return v14;
    }

    v35 = *(v34 + 48);
    v36 = *v33;
    v37 = *v73;
    (*v73)(v74, &v33[v35], v2);
    v68 = v37;
    v38 = v24;
    if (v36 <= 2)
    {
      v41 = 7761509;
      if (v36 != 1)
      {
        v41 = 0x6552746E65696C63;
      }

      v42 = 0xE300000000000000;
      if (v36 != 1)
      {
        v42 = 0xEF64497473657571;
      }

      if (v36)
      {
        v39 = v41;
      }

      else
      {
        v39 = 0x6D6954746E657665;
      }

      if (v36)
      {
        v40 = v42;
      }

      else
      {
        v40 = 0xE900000000000065;
      }
    }

    else if (v36 > 4)
    {
      if (v36 == 5)
      {
        v39 = 0xD000000000000017;
        v40 = v60;
      }

      else
      {
        v39 = 0xD00000000000001FLL;
        v40 = v61;
      }
    }

    else
    {
      if (v36 == 3)
      {
        v39 = 0x696C43656C707061;
      }

      else
      {
        v39 = 0x636F4C656C707061;
      }

      if (v36 == 3)
      {
        v40 = 0xEF6F666E49746E65;
      }

      else
      {
        v40 = 0xEB00000000656C61;
      }
    }

    v44 = v2;
    (*v71)(v72, v74, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v14;
    v47 = sub_100006028(v39, v40);
    v48 = v14[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_52;
    }

    v51 = v46;
    if (v14[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v2 = v44;
        if (v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10000F90C();
        v2 = v44;
        if (v51)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10000BFDC(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_100006028(v39, v40);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_54;
      }

      v47 = v52;
      v2 = v44;
      if (v51)
      {
LABEL_4:

        v14 = v75;
        v21 = v70;
        (*(v70 + 40))(v75[7] + *(v70 + 72) * v47, v72, v2);
        (*(v21 + 8))(v74, v2);
        goto LABEL_5;
      }
    }

    v14 = v75;
    v75[(v47 >> 6) + 8] |= 1 << v47;
    v54 = (v14[6] + 16 * v47);
    *v54 = v39;
    v54[1] = v40;
    v55 = v70;
    v68(v14[7] + *(v70 + 72) * v47, v72, v2);
    (*(v55 + 8))(v74, v2);
    v56 = v14[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_53;
    }

    v14[2] = v58;
LABEL_5:
    v20 = v38;
    v12 = v69;
  }

  if (v19 <= v20 + 1)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v43 = sub_100011AC0(&qword_100230240, &qword_1001E2168);
      (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
      v18 = 0;
      goto LABEL_16;
    }

    v18 = *(v62 + 8 * v22);
    ++v20;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_1001C9BE8(uint64_t a1)
{
  sub_1001D1840();
  v1 = _set_user_dir_suffix();

  if (v1 && (sub_1001CF8C0(), swift_allocObject(), v5 = 0x40000000000, v6 = sub_1001CF880(), sub_1001C7C8C(&v5, 0), v6 |= 0x4000000000000000uLL, sub_1001C7870(&v5, 65537), v3 = v2, sub_100011E48(v5, v6), v3))
  {
  }

  else
  {
    result = sub_1001D2180();
    __break(1u);
  }

  return result;
}

id sub_1001C9D40(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v39 = a4;
  v6 = sub_100011AC0(&unk_1002300C0, &qword_1001E1538);
  __chkstk_darwin(v6 - 8);
  v46 = &v39 - v7;
  v8 = sub_1001D20F0();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - v10;
  v12 = sub_1001D02F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001D05B0();
  v49[3] = v16;
  v49[4] = &protocol witness table for DefaultConfiguration;
  sub_10003B47C(v49);
  (*(*(v16 - 8) + 32))();
  v48[3] = type metadata accessor for TC2Daemon(0);
  v48[4] = &off_1002230B0;
  v48[0] = a3;
  v43 = sub_100011AC0(&qword_1002300D0, &qword_1001E1EE8);
  v17 = objc_allocWithZone(v43);
  (*(v13 + 104))(v15, enum case for TC2LogCategory.daemon(_:), v12);
  sub_1001D08B0();
  (*(v13 + 8))(v15, v12);
  v18 = v17 + *((swift_isaMask & *v17) + 0x90);
  *v18 = 0;
  *(v18 + 1) = _swiftEmptyArrayStorage;
  sub_100044698(v48, v17 + *((swift_isaMask & *v17) + 0x68));
  v19 = v39;
  *(v17 + *((swift_isaMask & *v17) + 0x70)) = v39;
  sub_100044698(v49, v17 + *((swift_isaMask & *v17) + 0x78));
  v20 = (v17 + *((swift_isaMask & *v17) + 0x80));
  v21 = a2[9];
  v20[8] = a2[8];
  v20[9] = v21;
  v20[10] = a2[10];
  v22 = a2[5];
  v20[4] = a2[4];
  v20[5] = v22;
  v23 = a2[7];
  v20[6] = a2[6];
  v20[7] = v23;
  v24 = a2[1];
  *v20 = *a2;
  v20[1] = v24;
  v25 = a2[3];
  v20[2] = a2[2];
  v20[3] = v25;
  v26 = v19;
  sub_1001D0480();
  sub_1001D0210();
  (*(v40 + 8))(v11, v41);
  v27 = sub_1001D2630();
  v29 = v28;
  v30 = v42;
  sub_1001D20E0();
  sub_100011AC0(&qword_1002300D8, &qword_1001E1EF0);
  v31 = swift_allocObject();
  swift_defaultActor_initialize();
  v32 = *(*v31 + 112);
  v33 = sub_1001D20D0();
  v34 = *(*(v33 - 8) + 56);
  v34(v31 + v32, 1, 1, v33);
  (*(v44 + 32))(v31 + *(*v31 + 104), v30, v45);
  v35 = v46;
  v34(v46, 1, 1, v33);
  swift_beginAccess();
  sub_10001BAC8(v35, v31 + v32, &unk_1002300C0, &qword_1001E1538);
  swift_endAccess();
  v36 = (v31 + *(*v31 + 120));
  *v36 = v27;
  v36[1] = v29;
  *(v17 + *((swift_isaMask & *v17) + 0x88)) = v31;
  v47.receiver = v17;
  v47.super_class = v43;
  v37 = objc_msgSendSuper2(&v47, "init");
  sub_100011CF0(v48);
  sub_100011CF0(v49);
  return v37;
}

uint64_t sub_1001CA33C(void *a1)
{
  v2 = v1;
  v4 = sub_1001D05B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001D0E50();
  v9 = sub_1001D1E00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Thimble trying to connect: checking entitlements", v10, 2u);
  }

  LOBYTE(v42[0]) = 0;
  if (sub_1001C5B6C(v42, a1) & 1) != 0 || (LOBYTE(v42[0]) = 1, (sub_1001C5B6C(v42, a1)) || (LOBYTE(v42[0]) = 2, (sub_1001C5B6C(v42, a1)) || (LOBYTE(v42[0]) = 3, (sub_1001C5B6C(v42, a1)) || (LOBYTE(v42[0]) = 4, (sub_1001C5B6C(v42, a1)) || (LOBYTE(v42[0]) = 5, (sub_1001C5B6C(v42, a1)))
  {
    isa = sub_1001D0740().super.isa;
    [a1 setExportedInterface:isa];

    v12 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 144];
    v42[8] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 128];
    v42[9] = v12;
    v42[10] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 160];
    v13 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 80];
    v42[4] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 64];
    v42[5] = v13;
    v14 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 112];
    v42[6] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 96];
    v42[7] = v14;
    v15 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 16];
    v42[0] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo];
    v42[1] = v15;
    v16 = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 48];
    v42[2] = *&v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_systemInfo + 32];
    v42[3] = v16;
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_config], v4);
    sub_1000884D8(v42, &v36);
    v17 = a1;
    v18 = sub_1001C9D40(v7, v42, v2, v17);

    [v17 setExportedObject:v18];
    [v17 resume];
    v19 = sub_1001D0E50();
    v20 = sub_1001D1E00();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Resumed", v21, 2u);
    }

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = sub_1001CA8F0;
    v41 = v22;
    v36 = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100014EBC;
    v39 = &unk_100223158;
    v23 = _Block_copy(&v36);
    v24 = v18;

    [v17 setInvalidationHandler:v23];
    _Block_release(v23);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v40 = sub_1001CA938;
    v41 = v25;
    v36 = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100014EBC;
    v39 = &unk_100223180;
    v26 = _Block_copy(&v36);

    [v17 setInterruptionHandler:v26];

    _Block_release(v26);
    return 1;
  }

  else
  {
    v28 = sub_1001D0E50();
    v29 = sub_1001D1E00();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v42[0] = v31;
      *v30 = 136315138;
      v32 = sub_1001D19E0();
      v34 = sub_1000954E0(v32, v33, v42);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Rejecting connection because it doesn't have any of the required entitlements: %s", v30, 0xCu);
      sub_100011CF0(v31);
    }

    return 0;
  }
}

uint64_t sub_1001CA8B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CA920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CA970()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CA9B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10005B61C;

  return sub_1001BF144(a1, a2, v7, v6);
}

uint64_t sub_1001CAA64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001CAAAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  return sub_1001C588C(v2, v3, v4, v5, v6);
}

uint64_t sub_1001CAB68()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005B61C;

  return sub_1001C73C8(v2);
}

uint64_t sub_1001CAC18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  return sub_1001C57FC();
}

uint64_t sub_1001CACC0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1001CAD28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_1001C5750(v2, v3, v4, (v0 + 5));
}

uint64_t sub_1001CADD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001CAE1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  return sub_1001C5670(v2, v3, v4, v5, v6);
}

uint64_t sub_1001CAED8()
{
  v1 = sub_1001CFDA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D08A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1001CB030()
{
  v2 = *(sub_1001CFDA0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1001D08A0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10005B61C;

  return sub_1001C4D88(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1001CB178()
{
  v1 = sub_1001D08A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001CB244()
{
  v2 = *(sub_1001D08A0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10005B61C;

  return sub_1001C45D0(v4, v5, v6, v0 + v3);
}

uint64_t sub_1001CB330()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1001CB390()
{
  v2 = v0[3];
  v11 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10005B61C;

  return sub_1001C3D44(v11, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001CB47C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CB4BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_1001C3BC8(v2, v3, v4);
}

uint64_t sub_1001CB564()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CB5B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005B61C;

  return sub_1001C33F4(v2, v3, v5, v4);
}

uint64_t sub_1001CB660()
{
  v1 = (type metadata accessor for MetricReporter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_100011CF0((v0 + 32));

  v5 = v1[7];
  v6 = sub_1001D0E60();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001CB758()
{
  v2 = *(type metadata accessor for MetricReporter(0) - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005B61C;

  return sub_1001C3228(v4, v5, v0 + 32, v0 + v3);
}

uint64_t sub_1001CB83C()
{
  v2 = *(sub_1001CFDA0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for MetricReporter(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0 + v4;
  v11 = *(v0 + v4);
  v12 = *(v10 + 1);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_10005B61C;

  return sub_1001C2DEC(v7, v8, v9, v0 + v3, v11, v12, v0 + v6);
}

uint64_t sub_1001CB9A8()
{
  v1 = sub_1001CFDA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for MetricReporter(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_1001D0E60();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1001CBB44()
{
  v2 = *(sub_1001CFDA0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for MetricReporter(0) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0 + v4;
  v11 = *(v0 + v4);
  v12 = *(v10 + 1);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_10005B61C;

  return sub_1001C29F4(v7, v8, v9, v0 + v3, v11, v12, v0 + v6);
}

uint64_t sub_1001CBCB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CBD18()
{
  v1 = (type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1001D08A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();

  v11 = v1[8];
  v12 = sub_1001D0940();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1001CBE94()
{
  v2 = *(type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1001D08A0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10005B61C;

  return sub_1001C2040(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1001CBFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_1001C5DB8(a1, v4, v5, v6);
}

uint64_t sub_1001CC0E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC1AC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000130E0;

  return sub_100075AA4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001CC2D8(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1001CC330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000130E0;

  return sub_1001B78F8(a1, v4, v5, v7, v6);
}

uint64_t sub_1001CC3F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CC438()
{

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_1001CC51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001CC564()
{
  result = qword_1002302F8;
  if (!qword_1002302F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002302F8);
  }

  return result;
}

int64_t sub_1001CC61C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1001CFB10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001208C(v2 + qword_10022F7D8, v6, &unk_100230170, &unk_1001E0D90);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100011F00(v6, &unk_100230170, &unk_1001E0D90);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = [objc_opt_self() defaultManager];
  sub_1001CFAD0();
  v13 = sub_1001D17A0();

  v14 = [v12 fileExistsAtPath:v13];

  if ((v14 & 1) == 0)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = sub_1001CFB30();
  v17 = v16;
  sub_100011AC0(&qword_10022FC90, &unk_1001E1620);
  sub_1001CE808();
  sub_1001CF900();
  v30 = v17;
  v18 = v31;
  v19 = *(v2 + 16);
  if (v19 < *(v31 + 16))
  {

    v20 = sub_1001D0E50();
    LODWORD(v29) = sub_1001D1E00();
    if (os_log_type_enabled(v20, v29))
    {
      v21 = swift_slowAlloc();
      v28 = v20;
      v22 = v21;
      *v21 = 134218240;
      *(v21 + 4) = *(v18 + 16);
      *(v21 + 12) = 2048;
      *(v21 + 14) = v19;

      _os_log_impl(&_mh_execute_header, v28, v29, "trimming archive, count=%ld, maxCount=%ld", v22, 0x16u);
    }

    else
    {
    }

    v23 = sub_1001CCB68(v19, v18);

    v18 = v23;
  }

  v24 = (v2 + qword_10022F7E8);

  os_unfair_lock_lock(v24);
  v29 = v24;
  v24 += 2;
  *&v24->_os_unfair_lock_opaque = v18;

  __chkstk_darwin(v25);
  *(&v27 - 2) = a1;
  *(&v27 - 1) = v2;
  result = sub_10005E7D8(sub_10005EE28, (&v27 - 4));
  v26 = *(*&v24->_os_unfair_lock_opaque + 16);
  if (v26 < result)
  {
    __break(1u);
  }

  else
  {
    sub_10005B55C(result, v26);
    os_unfair_lock_unlock(v29);
    sub_100011E48(v15, v30);

    (*(v8 + 8))(v10, v7);
  }

  return result;
}

void *sub_1001CCB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v23 - v7;
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return _swiftEmptyArrayStorage;
  }

  if (*(a2 + 16) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v26 = _swiftEmptyArrayStorage;
  sub_100151580(0, v9, 0);
  v10 = v26;
  v11 = *(a2 + 16);
  if (!v11)
  {

    return v10;
  }

  v12 = 0;
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23 = a2;
  v14 = a2 + v13;
  v15 = *(v5 + 72);
  do
  {
    v18 = v8;
    result = sub_10001208C(v14, v8, &unk_100230260, &qword_1001D3660);
    v19 = *(v10 + 16);
    if (v19 < a1)
    {
      v24 = v12;
      v26 = v10;
      v16 = *(v10 + 24);
      if (v19 >= v16 >> 1)
      {
        sub_100151580((v16 > 1), v19 + 1, 1);
        v10 = v26;
      }

      *(v10 + 16) = v19 + 1;
      v17 = v10 + v13 + v19 * v15;
      v8 = v18;
      sub_1000DBEF4(v18, v17, &unk_100230260, &qword_1001D3660);
      v12 = v24;
    }

    else
    {
      if (v12 >= v19)
      {
        __break(1u);
        goto LABEL_27;
      }

      v8 = v18;
      sub_10005EEB8(v18, v10 + v13 + v15 * v12);
      if ((v12 + 1) < a1)
      {
        ++v12;
      }

      else
      {
        v12 = 0;
      }
    }

    v14 += v15;
    --v11;
  }

  while (v11);

  if (!v12)
  {
    return v10;
  }

  v20 = *(v10 + 16);
  v25 = _swiftEmptyArrayStorage;
  result = sub_100151580(0, v20, 0);
  if (v20 >= v12)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v21 = *(v10 + 16);
    if (v21 >= v12 && v21 >= v20)
    {

      sub_1001CE8F0(v22, v10 + v13, v12, (2 * v20) | 1);
      sub_1001CE8F0(v10, v10 + v13, 0, (2 * v12) | 1);
      return v25;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1001CCE3C()
{
  v1 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  __chkstk_darwin(v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_1001CFB10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001208C(v0 + qword_10022F7D8, v3, &unk_100230170, &unk_1001E0D90);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100011F00(v3, &unk_100230170, &unk_1001E0D90);
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  sub_1001CFAD0();
  v11 = sub_1001D17A0();

  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = [v9 defaultManager];
    sub_1001CFA80(v14);
    v16 = v15;
    v25 = 0;
    v17 = [v13 removeItemAtURL:v15 error:&v25];

    if (v17)
    {
      v18 = *(v5 + 8);
      v19 = v25;
      return v18(v7, v4);
    }

    v20 = v25;
    sub_1001CFA20();

    swift_willThrow();
    v21 = sub_1001D0E50();
    v22 = sub_1001D1E00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "failed to delete archive", v23, 2u);
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001CD194()
{
  v1[8] = v0;
  v2 = type metadata accessor for ValidatedAttestation(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_100011AC0(&qword_100230398, &unk_1001E2240);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD2A4, 0, 0);
}

uint64_t sub_1001CD2A4(uint64_t a1)
{
  v2 = *(v1[8] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v1[15] = v2;
  if (v2)
  {
    type metadata accessor for AttestationStore();
    sub_1001CEEA4(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);

    v4 = sub_1001D1A70();

    return _swift_task_switch(sub_1001CD464, v4, v3);
  }

  else
  {
    v5 = sub_1001D0E50();
    v6 = sub_1001D1E00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "attestation store unavailable", v7, 2u);
    }

    v8 = v1[1];

    return v8(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001CD464()
{
  *(v0 + 128) = sub_1000298F8();

  return _swift_task_switch(sub_1001CD4D0, 0, 0);
}

void sub_1001CD4D0()
{
  v1 = 0;
  v2 = v0[16];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v41 = v0[16];
  v7 = -1 << *(v41 + 32);
  v44 = v0[14];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v42 = v0[11];
  v39 = v0[10];
  v40 = v0[13];
  v38 = (63 - v7) >> 6;
  v43 = v0[9];
  v9 = _swiftEmptyArrayStorage;
  v45 = v4;
  if ((v6 & v3) != 0)
  {
    while (1)
    {
      v10 = v1;
LABEL_13:
      v14 = v0[12];
      v13 = v0[13];
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v10 << 6);
      v17 = (*(v41 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_10003C450(*(v41 + 56) + *(v39 + 72) * v16, v14);
      v20 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
      v21 = *(v20 + 48);
      *v13 = v18;
      *(v40 + 8) = v19;
      sub_10003C904(v14, v13 + v21);
      (*(*(v20 - 8) + 56))(v13, 0, 1, v20);

LABEL_14:
      v22 = v0[14];
      sub_1000DBEF4(v0[13], v22, &qword_100230398, &unk_1001E2240);
      v23 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
      if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
      {
        break;
      }

      v24 = v0[14];
      v25 = v0[11];
      v26 = *v24;
      v27 = *(v44 + 8);
      sub_10003C904(v24 + *(v23 + 48), v25);
      sub_1001D2030(163);
      v47._countAndFlagsBits = v26;
      v47._object = v27;
      sub_1001D18B0(v47);

      v48._countAndFlagsBits = 0x6C62757020202020;
      v48._object = 0xEF203A79654B6369;
      sub_1001D18B0(v48);
      v49._countAndFlagsBits = sub_1001CFB50();
      sub_1001D18B0(v49);

      v50._countAndFlagsBits = 0xD000000000000018;
      v50._object = 0x80000001001E8020;
      sub_1001D18B0(v50);
      sub_1001CFD60();
      sub_1001CEEA4(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v51._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v51);

      v52._object = 0x80000001001E8040;
      v52._countAndFlagsBits = 0xD000000000000015;
      sub_1001D18B0(v52);
      sub_1001D18B0(v42[2]);
      v53._countAndFlagsBits = 0xD000000000000019;
      v53._object = 0x80000001001E8060;
      sub_1001D18B0(v53);
      sub_1001D18B0(v42[3]);
      v54._object = 0x80000001001E8080;
      v54._countAndFlagsBits = 0xD000000000000015;
      sub_1001D18B0(v54);
      object = v42[4]._object;
      v0[2] = v42[4]._countAndFlagsBits;
      v0[3] = object;

      sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
      v55._countAndFlagsBits = sub_1001D1820();
      sub_1001D18B0(v55);

      v56._countAndFlagsBits = 0xD000000000000017;
      v56._object = 0x80000001001E80A0;
      sub_1001D18B0(v56);
      v29 = (v25 + *(v43 + 36));
      v30 = v29[1];
      v0[4] = *v29;
      v0[5] = v30;

      v57._countAndFlagsBits = sub_1001D1820();
      sub_1001D18B0(v57);

      v58._countAndFlagsBits = 0xD000000000000012;
      v58._object = 0x80000001001E80C0;
      sub_1001D18B0(v58);
      v31 = v42[5]._object;
      v0[6] = v42[5]._countAndFlagsBits;
      v0[7] = v31;

      v59._countAndFlagsBits = sub_1001D1820();
      sub_1001D18B0(v59);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100008F3C(0, *(v9 + 2) + 1, 1, v9);
      }

      v33 = *(v9 + 2);
      v32 = *(v9 + 3);
      v4 = v45;
      if (v33 >= v32 >> 1)
      {
        v9 = sub_100008F3C((v32 > 1), v33 + 1, 1, v9);
      }

      sub_10003C4B4(v0[11]);
      *(v9 + 2) = v33 + 1;
      v34 = &v9[16 * v33];
      *(v34 + 4) = 0;
      *(v34 + 5) = 0xE000000000000000;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v37 = v0[1];

    v37(v9);
  }

  else
  {
LABEL_5:
    if (v38 <= v1 + 1)
    {
      v11 = v1 + 1;
    }

    else
    {
      v11 = v38;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v10 >= v38)
      {
        v35 = v0[13];
        v36 = sub_100011AC0(&qword_10022E330, &unk_1001DEFD8);
        (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
        v8 = 0;
        v1 = v12;
        goto LABEL_14;
      }

      v8 = *(v4 + 8 * v10);
      ++v1;
      if (v8)
      {
        v1 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1001CDACC()
{
  v43 = sub_1001D08A0();
  v1 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001CFD60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + *(**(v0 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity) + 240));

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v8 = v7 + qword_10022F7E8;
  os_unfair_lock_lock((v7 + qword_10022F7E8));
  v9 = sub_10005E440((v8 + 8), v7, v6);
  os_unfair_lock_unlock(v8);

  result = (*(v4 + 8))(v6, v3);
  v41 = v9[2];
  if (v41)
  {
    v11 = 0;
    v40 = v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v38 = v1 + 16;
    v39 = "CS_DARWIN_USER_TEMP_DIR";
    v37 = v1 + 8;
    v12 = _swiftEmptyArrayStorage;
    v35 = v9;
    v36 = v1;
    while (v11 < v9[2])
    {
      v44 = v12;
      v14 = v42;
      v13 = v43;
      (*(v1 + 16))(v42, &v40[*(v1 + 72) * v11], v43);
      v45 = v11 + 1;
      v48._countAndFlagsBits = sub_1001D0890();
      strcpy(v47, "pipelinekind: ");
      HIBYTE(v47[1]) = -18;
      sub_1001D18B0(v48);

      v49._object = (v39 | 0x8000000000000000);
      v49._countAndFlagsBits = 0xD000000000000014;
      sub_1001D18B0(v49);

      v15 = sub_1001D0870();
      result = (*(v1 + 8))(v14, v13);
      v16 = 0;
      v17 = 1 << *(v15 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;
      if (v19)
      {
        while (1)
        {
          v21 = v16;
LABEL_13:
          v22 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v23 = (v21 << 10) | (16 * v22);
          v24 = (*(v15 + 48) + v23);
          v26 = *v24;
          v25 = v24[1];
          v27 = (*(v15 + 56) + v23);
          v28 = *v27;
          v29 = v27[1];
          v46._countAndFlagsBits = 91;
          v46._object = 0xE100000000000000;

          v50._countAndFlagsBits = v26;
          v50._object = v25;
          sub_1001D18B0(v50);

          v51._countAndFlagsBits = 8250;
          v51._object = 0xE200000000000000;
          sub_1001D18B0(v51);

          v52._countAndFlagsBits = v28;
          v52._object = v29;
          sub_1001D18B0(v52);

          v53._countAndFlagsBits = 93;
          v53._object = 0xE100000000000000;
          sub_1001D18B0(v53);

          sub_1001D18B0(v46);

          if (!v19)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v21 >= v20)
        {
          break;
        }

        v19 = *(v15 + 64 + 8 * v21);
        ++v16;
        if (v19)
        {
          v16 = v21;
          goto LABEL_13;
        }
      }

      v30 = v47[0];
      v31 = v47[1];
      v12 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100008F3C(0, *(v12 + 2) + 1, 1, v12);
        v12 = result;
      }

      v1 = v36;
      v11 = v45;
      v33 = *(v12 + 2);
      v32 = *(v12 + 3);
      if (v33 >= v32 >> 1)
      {
        result = sub_100008F3C((v32 > 1), v33 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v33 + 1;
      v34 = &v12[16 * v33];
      *(v34 + 4) = v30;
      *(v34 + 5) = v31;
      v9 = v35;
      if (v11 == v41)
      {

        return v12;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1001CDFD4()
{
  v50 = sub_1001D08A0();
  v1 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001CFD60();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_prefetchActivity);
  v11 = *(*v10 + 240);

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  sub_1001CC61C(v9);

  v12 = *(v4 + 8);
  v12(v9, v3);
  v13 = *(v10 + v11);

  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  v14 = v13 + qword_10022F7E8;
  os_unfair_lock_lock((v13 + qword_10022F7E8));
  v15 = sub_10005E440((v14 + 8), v13, v7);
  os_unfair_lock_unlock(v14);

  v12(v7, v3);
  result = v15;
  v48 = *(v15 + 2);
  if (v48)
  {
    v17 = 0;
    v47 = &v15[(*(v1 + 80) + 32) & ~*(v1 + 80)];
    v45 = v1 + 16;
    v46 = "CS_DARWIN_USER_TEMP_DIR";
    v44 = v1 + 8;
    v18 = _swiftEmptyArrayStorage;
    v42 = v15;
    v43 = v1;
    while (v17 < *(result + 2))
    {
      v51 = v18;
      v20 = v49;
      v19 = v50;
      (*(v1 + 16))(v49, &v47[*(v1 + 72) * v17], v50);
      v52 = v17 + 1;
      v55._countAndFlagsBits = sub_1001D0890();
      strcpy(v54, "pipelinekind: ");
      HIBYTE(v54[1]) = -18;
      sub_1001D18B0(v55);

      v56._object = (v46 | 0x8000000000000000);
      v56._countAndFlagsBits = 0xD000000000000014;
      sub_1001D18B0(v56);

      v21 = sub_1001D0870();
      result = (*(v1 + 8))(v20, v19);
      v22 = 0;
      v23 = 1 << *(v21 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(v21 + 64);
      v26 = (v23 + 63) >> 6;
      if (v25)
      {
        while (1)
        {
          v27 = v22;
LABEL_13:
          v28 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v29 = (v27 << 10) | (16 * v28);
          v30 = (*(v21 + 48) + v29);
          v32 = *v30;
          v31 = v30[1];
          v33 = (*(v21 + 56) + v29);
          v34 = *v33;
          v35 = v33[1];
          v53._countAndFlagsBits = 91;
          v53._object = 0xE100000000000000;

          v57._countAndFlagsBits = v32;
          v57._object = v31;
          sub_1001D18B0(v57);

          v58._countAndFlagsBits = 8250;
          v58._object = 0xE200000000000000;
          sub_1001D18B0(v58);

          v59._countAndFlagsBits = v34;
          v59._object = v35;
          sub_1001D18B0(v59);

          v60._countAndFlagsBits = 93;
          v60._object = 0xE100000000000000;
          sub_1001D18B0(v60);

          sub_1001D18B0(v53);

          if (!v25)
          {
            goto LABEL_9;
          }
        }
      }

      while (1)
      {
LABEL_9:
        v27 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v27 >= v26)
        {
          break;
        }

        v25 = *(v21 + 64 + 8 * v27);
        ++v22;
        if (v25)
        {
          v22 = v27;
          goto LABEL_13;
        }
      }

      v36 = v54[0];
      v37 = v54[1];
      v18 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100008F3C(0, *(v18 + 2) + 1, 1, v18);
      }

      result = v42;
      v1 = v43;
      v17 = v52;
      v39 = *(v18 + 2);
      v38 = *(v18 + 3);
      if (v39 >= v38 >> 1)
      {
        v41 = v42;
        v18 = sub_100008F3C((v38 > 1), v39 + 1, 1, v18);
        result = v41;
      }

      *(v18 + 2) = v39 + 1;
      v40 = &v18[16 * v39];
      *(v40 + 4) = v36;
      *(v40 + 5) = v37;
      if (v17 == v48)
      {

        return v18;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1001CE554(uint64_t a1)
{
  v2 = *(v1[2] + OBJC_IVAR____TtC20privatecloudcomputed9TC2Daemon_attestationStore);
  v1[3] = v2;
  if (v2)
  {
    type metadata accessor for AttestationStore();
    sub_1001CEEA4(&qword_1002287B8, type metadata accessor for AttestationStore, &unk_1001D4F10);

    v4 = sub_1001D1A70();

    return _swift_task_switch(sub_1001CE6F4, v4, v3);
  }

  else
  {
    v5 = sub_1001D0E50();
    v6 = sub_1001D1E00();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "attestation store unavailable", v7, 2u);
    }

    v8 = v1[1];
    v9 = v1[3] != 0;

    return v8(v9);
  }
}

uint64_t sub_1001CE6F4()
{
  sub_100030D24();

  return _swift_task_switch(sub_1001CE75C, 0, 0);
}

uint64_t sub_1001CE75C()
{

  sub_1001CCE3C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 24) != 0;

  return v1(v2);
}

unint64_t sub_1001CE808()
{
  result = qword_100230380;
  if (!qword_100230380)
  {
    sub_100011DF4(&qword_10022FC90, &unk_1001E1620);
    sub_1001CE88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100230380);
  }

  return result;
}

unint64_t sub_1001CE88C()
{
  result = qword_100230388;
  if (!qword_100230388)
  {
    sub_100011DF4(&unk_100230260, &qword_1001D3660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100230388);
  }

  return result;
}

void *sub_1001CE8F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v67 = sub_100011AC0(&unk_100230260, &qword_1001D3660);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v9 = v53 - v8;
  v10 = sub_100011AC0(&qword_100230390, &qword_1001E2230);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v53 - v15;
  result = __chkstk_darwin(v14);
  v19 = v53 - v18;
  v20 = a4 >> 1;
  v59 = a3;
  v21 = __OFSUB__(a4 >> 1, a3);
  v22 = (a4 >> 1) - a3;
  if (v21)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v23 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v22;
  if (__OFADD__(v24, v22))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v62 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v23;
  if (result)
  {
    v26 = *(v23 + 24) >> 1;
    if (v26 >= v25)
    {
      goto LABEL_12;
    }

    if (v24 <= v25)
    {
      v27 = v24 + v22;
    }

    else
    {
      v27 = v24;
    }
  }

  else if (v24 <= v25)
  {
    v27 = v24 + v22;
  }

  else
  {
    v27 = v24;
  }

  result = sub_100151580(result, v27, 1);
  v23 = *v4;
  v26 = *(*v4 + 24) >> 1;
LABEL_12:
  v28 = v26 - *(v23 + 16);
  if (v62 == v59)
  {
    if (v22 <= 0)
    {
      v29 = v23;
      v30 = v59;
      if (v28)
      {
        goto LABEL_40;
      }

LABEL_20:
      v53[1] = a1;
      v34 = *(v29 + 16);
      v35 = v64;
      v36 = v67;
      v60 = *(v64 + 56);
      v61 = v64 + 56;
      v60(v19, 1, 1, v67);
      sub_10001208C(v19, v16, &qword_100230390, &qword_1001E2230);
      v65 = *(v35 + 48);
      v66 = v35 + 48;
      if (v65(v16, 1, v36) != 1)
      {
        v37 = &qword_100230390;
        v54 = v16;
        v55 = v4;
        do
        {
          v40 = v16;
          v41 = v37;
          sub_100011F00(v40, v37, &qword_1001E2230);
          v42 = *(v29 + 24);
          if (v34 + 1 > (v42 >> 1))
          {
            sub_100151580((v42 > 1), v34 + 1, 1);
          }

          v43 = *v4;
          v56 = *(*v4 + 24);
          v44 = *(v64 + 80);
          v45 = v41;
          sub_10001208C(v19, v13, v41, &qword_1001E2230);
          v46 = v65(v13, 1, v67);
          v57 = v43;
          if (v46 != 1)
          {
            v63 = v43 + ((v44 + 32) & ~v44);
            if (v34 <= (v56 >> 1))
            {
              v38 = v56 >> 1;
            }

            else
            {
              v38 = v34;
            }

            do
            {
              sub_1000DBEF4(v13, v9, &unk_100230260, &qword_1001D3660);
              if (v38 == v34)
              {
                sub_100011F00(v9, &unk_100230260, &qword_1001D3660);
                v34 = v38;
                goto LABEL_24;
              }

              sub_100011F00(v19, v41, &qword_1001E2230);
              v50 = v9;
              v51 = *(v64 + 72);
              v52 = v50;
              result = sub_1000DBEF4(v50, v63 + v51 * v34, &unk_100230260, &qword_1001D3660);
              if (v30 == v62)
              {
                v47 = 1;
                v30 = v62;
              }

              else
              {
                if (v30 < v59 || v30 >= v62)
                {
                  __break(1u);
                  goto LABEL_43;
                }

                sub_10001208C(v58 + v51 * v30, v19, &unk_100230260, &qword_1001D3660);
                v47 = 0;
                ++v30;
              }

              v48 = v67;
              v60(v19, v47, 1, v67);
              sub_10001208C(v19, v13, v41, &qword_1001E2230);
              v49 = v65(v13, 1, v48);
              ++v34;
              v9 = v52;
            }

            while (v49 != 1);
          }

          sub_100011F00(v13, v41, &qword_1001E2230);
          v38 = v34;
LABEL_24:
          v29 = v57;
          *(v57 + 16) = v38;
          v16 = v54;
          sub_10001208C(v19, v54, v45, &qword_1001E2230);
          v39 = v65(v16, 1, v67);
          v4 = v55;
          v37 = v45;
        }

        while (v39 != 1);
      }

      sub_100011F00(v19, &qword_100230390, &qword_1001E2230);
      swift_unknownObjectRelease();
      result = sub_100011F00(v16, &qword_100230390, &qword_1001E2230);
      goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (v28 < v22)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
    v29 = v23;
    v30 = v62;
    if (v22 == v28)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

  v31 = *(v23 + 16);
  v21 = __OFADD__(v31, v22);
  v32 = v31 + v22;
  v33 = v23;
  v30 = v62;
  if (!v21)
  {
    v29 = v33;
    *(v33 + 16) = v32;
    if (v22 == v28)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = swift_unknownObjectRelease();
LABEL_41:
    *v4 = v29;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1001CEEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CEEEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001CEF34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1001CEF84()
{
  v1 = *(v0 + 16);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D25A0(v1);
  return sub_1001D25C0();
}

void sub_1001CEFE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1001D1880();
  sub_1001D25A0(v2);
}

Swift::Int sub_1001CF020()
{
  v1 = *(v0 + 16);
  sub_1001D2580();
  sub_1001D1880();
  sub_1001D25A0(v1);
  return sub_1001D25C0();
}

uint64_t sub_1001CF080(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1001D2470();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_1001CF0E4()
{
  result = qword_1002303A0;
  if (!qword_1002303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002303A0);
  }

  return result;
}

int64_t sub_1001CF138@<X0>(uint64_t *__return_ptr a1@<X8>, char *a2@<X0>, int a3@<W2>)
{
  result = confstr(a3, a2, 0x400uLL);
  if (result >= 1 && a2)
  {
    result = sub_1001D18C0();
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t type metadata accessor for ThimbledEvent(uint64_t a1)
{
  result = qword_100230418;
  if (!qword_100230418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CF1E8(uint64_t a1)
{
  sub_1001CF2FC(319);
  if (v1 <= 0x3F)
  {
    sub_1001CF36C();
    if (v2 <= 0x3F)
    {
      sub_1001CF3D0(319);
      if (v3 <= 0x3F)
      {
        sub_1001CF428(319);
        if (v4 <= 0x3F)
        {
          sub_1001CF560(319);
          if (v5 <= 0x3F)
          {
            sub_1001CF5CC();
            if (v6 <= 0x3F)
            {
              sub_1001CF614(319);
              if (v7 <= 0x3F)
              {
                sub_1001CF688(319);
                if (v8 <= 0x3F)
                {
                  sub_1001CF700();
                  if (v9 <= 0x3F)
                  {
                    sub_1001CF730();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1001CF2FC(uint64_t a1)
{
  if (!qword_100230428)
  {
    type metadata accessor for Proto_Ropes_HttpService_InvokeResponse.ExpiredAttestationList(255);
    sub_1001D08A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230428);
    }
  }
}

unint64_t sub_1001CF36C()
{
  result = qword_100230430;
  if (!qword_100230430)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100230430);
  }

  return result;
}

void sub_1001CF3D0(uint64_t a1)
{
  if (!qword_100230438)
  {
    type metadata accessor for RateLimitConfiguration(255);
    v1 = sub_1001D1A60();
    if (!v2)
    {
      atomic_store(v1, &qword_100230438);
    }
  }
}

void sub_1001CF428(uint64_t a1)
{
  if (!qword_100230440)
  {
    __chkstk_darwin(a1);
    sub_100011DF4(&qword_1002292B8, &qword_1001DD2C0);
    sub_100011DF4(&qword_100228AA8, &qword_1001D5BC0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100230440);
    }
  }
}

void sub_1001CF560(uint64_t a1)
{
  if (!qword_100230448)
  {
    sub_1001CFDA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230448);
    }
  }
}

void sub_1001CF5CC()
{
  if (!qword_100230450)
  {
    v0 = sub_1001D08A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100230450);
    }
  }
}

void sub_1001CF614(uint64_t a1)
{
  if (!qword_100230458)
  {
    sub_1001CFDA0();
    sub_1001D08A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230458);
    }
  }
}

void sub_1001CF688(uint64_t a1)
{
  if (!qword_100230460)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100230460);
    }
  }
}

ValueMetadata *sub_1001CF700()
{
  result = qword_100230468;
  if (!qword_100230468)
  {
    result = &type metadata for TapToRadarContext;
    atomic_store(&type metadata for TapToRadarContext, &qword_100230468);
  }

  return result;
}

void *sub_1001CF730()
{
  result = qword_100230470;
  if (!qword_100230470)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_100230470);
  }

  return result;
}