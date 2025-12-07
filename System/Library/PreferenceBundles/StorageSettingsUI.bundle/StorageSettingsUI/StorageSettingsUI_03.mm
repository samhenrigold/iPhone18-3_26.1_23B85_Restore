void sub_53B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B92F8, &qword_8A5E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 128);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_55A34;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_53FA0;
  aBlock[3] = &unk_AC0A8;
  v11 = _Block_copy(aBlock);

  [v8 fetchProposedTipWithCompletionHandler:v11];
  _Block_release(v11);
}

void sub_53D34(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_1A2B0(v2, &v11);
    nullsub_1();
    sub_147EC(&qword_B92F8, &qword_8A5E8);
    sub_81A68();
  }

  else
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v4 = sub_80BC8();
    sub_19818(v4, qword_BCF70);
    swift_errorRetain();
    v5 = sub_80BB8();
    v6 = sub_81B18();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        v10 = v9;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *(v7 + 4) = v9;
      *v8 = v10;
      _os_log_impl(&dword_0, v5, v6, "Failed to retrieve maps recommendation with error %@", v7, 0xCu);
      sub_14FD4(v8, &qword_B7BA8, &qword_8A5F0);
    }

    sub_1A6B0(&v11);
    sub_147EC(&qword_B92F8, &qword_8A5E8);
    sub_81A68();
  }
}

void sub_53FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_5404C()
{
  sub_540AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_540AC()
{
  v1 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = sub_818E8();
  aBlock[4] = sub_55810;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2F28C;
  aBlock[3] = &unk_AC008;
  v6 = _Block_copy(aBlock);

  CacheManagementEnumerateAssets();
  _Block_release(v6);

  v7 = *(v0 + 208);
  LOBYTE(v6) = *(v0 + 216);
  swift_beginAccess();
  v8 = *(v4 + 16);
  if ((v6 & 1) != 0 || v7 != v8)
  {
    *(v0 + 208) = v8;
    *(v0 + 216) = 0;
    v9 = sub_81AB8();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v0;

    sub_68AE4(0, 0, v3, &unk_8A5C8, v10);

    v7 = *(v4 + 16);
  }

  return v7;
}

uint64_t sub_542E0(void *a1, uint64_t a2)
{
  v4 = [a1 identifier];
  v5 = sub_81928();
  v7 = v6;

  if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
  {

    return 1;
  }

  v9 = sub_81E18();

  if (v9)
  {
    return 1;
  }

  if ([a1 purgeabilityScoreAtUrgency:3])
  {
    v10 = 0;
  }

  else
  {
    v10 = [a1 size];
  }

  result = swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = __OFADD__(v12, v10);
  v14 = &v10[v12];
  if (!v13)
  {
    *(a2 + 16) = v14;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_5440C()
{
  *(v1 + 1016) = v0;
  sub_147EC(&unk_B8240, &qword_88F50);
  *(v1 + 1024) = swift_task_alloc();

  return _swift_task_switch(sub_544A8, v0, 0);
}

uint64_t sub_544A8()
{
  v1 = v0[127];
  if (*(v1 + 200))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + 200) = 1;
    v4 = [*(v1 + 112) recommendations];
    sub_1A7F4(0, &qword_B8348, off_A91F8);
    sub_55120();
    v5 = sub_81AD8();

    sub_55188(v5);
    v7 = v6;

    v0[126] = v7;
    v8 = swift_task_alloc();
    v0[129] = v8;
    *v8 = v0;
    v8[1] = sub_54620;

    return sub_52C24();
  }
}

uint64_t sub_54620(uint64_t a1)
{
  v2 = *(*v1 + 1016);
  *(*v1 + 1040) = a1;

  return _swift_task_switch(sub_54738, v2, 0);
}

unint64_t sub_54738()
{
  result = sub_26C2C(*(v0 + 1040));
  v2 = *(v0 + 1008);
  v3 = *(v2 + 16);
  v75 = v2;
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      v27 = *(v5 + 16);
      *(v0 + 16) = *v5;
      *(v0 + 32) = v27;
      v28 = *(v5 + 32);
      v29 = *(v5 + 48);
      v30 = *(v5 + 80);
      *(v0 + 80) = *(v5 + 64);
      *(v0 + 96) = v30;
      *(v0 + 48) = v28;
      *(v0 + 64) = v29;
      v31 = *(v5 + 96);
      v32 = *(v5 + 112);
      v33 = *(v5 + 144);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 160) = v33;
      *(v0 + 112) = v31;
      *(v0 + 128) = v32;
      v34 = *(v5 + 160);
      v35 = *(v5 + 176);
      v36 = *(v5 + 192);
      *(v0 + 224) = *(v5 + 208);
      *(v0 + 192) = v35;
      *(v0 + 208) = v36;
      *(v0 + 176) = v34;
      v38 = *(v0 + 16);
      v37 = *(v0 + 24);
      sub_3C168(v0 + 16, v0 + 232);
      sub_3C168(v0 + 16, v0 + 448);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_34B30(v38, v37);
      v41 = _swiftEmptyDictionarySingleton[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_28;
      }

      v45 = v40;
      if (_swiftEmptyDictionarySingleton[3] < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v61 = result;
      sub_38E8C();
      result = v61;
      if (v45)
      {
LABEL_3:
        v6 = _swiftEmptyDictionarySingleton[7] + 216 * result;
        v7 = *(v6 + 16);
        *(v0 + 664) = *v6;
        *(v0 + 680) = v7;
        v8 = *(v6 + 80);
        v10 = *(v6 + 32);
        v9 = *(v6 + 48);
        *(v0 + 728) = *(v6 + 64);
        *(v0 + 744) = v8;
        *(v0 + 696) = v10;
        *(v0 + 712) = v9;
        v11 = *(v6 + 144);
        v13 = *(v6 + 96);
        v12 = *(v6 + 112);
        *(v0 + 792) = *(v6 + 128);
        *(v0 + 808) = v11;
        *(v0 + 760) = v13;
        *(v0 + 776) = v12;
        v15 = *(v6 + 176);
        v14 = *(v6 + 192);
        v16 = *(v6 + 160);
        *(v0 + 872) = *(v6 + 208);
        *(v0 + 840) = v15;
        *(v0 + 856) = v14;
        *(v0 + 824) = v16;
        v17 = *(v0 + 32);
        *v6 = *(v0 + 16);
        *(v6 + 16) = v17;
        v18 = *(v0 + 48);
        v19 = *(v0 + 64);
        v20 = *(v0 + 96);
        *(v6 + 64) = *(v0 + 80);
        *(v6 + 80) = v20;
        *(v6 + 32) = v18;
        *(v6 + 48) = v19;
        v21 = *(v0 + 112);
        v22 = *(v0 + 128);
        v23 = *(v0 + 160);
        *(v6 + 128) = *(v0 + 144);
        *(v6 + 144) = v23;
        *(v6 + 96) = v21;
        *(v6 + 112) = v22;
        v24 = *(v0 + 176);
        v25 = *(v0 + 192);
        v26 = *(v0 + 208);
        *(v6 + 208) = *(v0 + 224);
        *(v6 + 176) = v25;
        *(v6 + 192) = v26;
        *(v6 + 160) = v24;
        sub_3C1C4(v0 + 664);
        result = sub_3C1C4(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v47 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v47 = v38;
      v47[1] = v37;
      v48 = _swiftEmptyDictionarySingleton[7] + 216 * result;
      v49 = *(v0 + 224);
      v51 = *(v0 + 192);
      v50 = *(v0 + 208);
      *(v48 + 160) = *(v0 + 176);
      *(v48 + 176) = v51;
      *(v48 + 192) = v50;
      *(v48 + 208) = v49;
      v53 = *(v0 + 144);
      v52 = *(v0 + 160);
      v54 = *(v0 + 128);
      *(v48 + 96) = *(v0 + 112);
      *(v48 + 112) = v54;
      *(v48 + 128) = v53;
      *(v48 + 144) = v52;
      v56 = *(v0 + 80);
      v55 = *(v0 + 96);
      v57 = *(v0 + 64);
      *(v48 + 32) = *(v0 + 48);
      *(v48 + 48) = v57;
      *(v48 + 64) = v56;
      *(v48 + 80) = v55;
      v58 = *(v0 + 32);
      *v48 = *(v0 + 16);
      *(v48 + 16) = v58;

      result = sub_3C1C4(v0 + 16);
      v59 = _swiftEmptyDictionarySingleton[2];
      v43 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v43)
      {
        goto LABEL_29;
      }

      _swiftEmptyDictionarySingleton[2] = v60;
LABEL_4:
      ++v4;
      v5 += 216;
      v2 = v75;
      if (v3 == v4)
      {
        goto LABEL_16;
      }
    }

    sub_36D0C(v44, isUniquelyReferenced_nonNull_native);
    result = sub_34B30(v38, v37);
    if ((v45 & 1) != (v46 & 1))
    {

      return sub_81E38();
    }

LABEL_11:
    if (v45)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v62 = *(v0 + 1024);
  v63 = *(v0 + 1016);
  swift_beginAccess();
  *(v63 + 120) = _swiftEmptyDictionarySingleton;

  v64 = sub_81AB8();
  v65 = *(*(v64 - 8) + 56);
  v65(v62, 1, 1, v64);
  v66 = sub_3CA84();
  v67 = swift_allocObject();
  v67[2] = v63;
  v67[3] = v66;
  v67[4] = v63;
  swift_retain_n();
  sub_68DE4(0, 0, v62, &unk_8A598, v67);

  if (v3)
  {
  }

  else
  {
    v68 = *(v0 + 1016);
    swift_beginAccess();
    sub_555C4(v68 + 160, v0 + 880);
    if (*(v0 + 904))
    {
      v69 = *(v0 + 1024);
      sub_3C978(v0 + 880, v0 + 920);
      sub_14FD4(v0 + 880, &qword_B8398, &qword_89420);
      v70 = *sub_22CB8((v0 + 920), *(v0 + 944));
      v65(v69, 1, 1, v64);
      sub_81A88();
      v71 = v70;
      v72 = sub_81A78();
      v73 = swift_allocObject();
      v73[2] = v72;
      v73[3] = &protocol witness table for MainActor;
      v73[4] = v71;
      v73[5] = v75;
      sub_68AE4(0, 0, v69, &unk_8A5A8, v73);

      sub_20FD0((v0 + 920));
    }

    else
    {

      sub_14FD4(v0 + 880, &qword_B8398, &qword_89420);
    }
  }

  *(*(v0 + 1016) + 200) = 0;

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_54C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_16268;

  return sub_5440C();
}

uint64_t sub_54E20(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a1;
  *(v7 + 304) = a6;
  *(v7 + 312) = a7;
  *(v7 + 296) = a5;
  return _swift_task_switch(sub_54E48, a5, 0);
}

uint64_t sub_54E48()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = sub_516C0((v0 + 232));
  v4 = sub_2659C((v0 + 264), v2, v1);
  v6 = v5;
  memmove((v0 + 16), v5, 0xD1uLL);
  if (sub_3C268(v0 + 16) != 1)
  {
    v7 = *(v0 + 320);
    v8 = *&v7;
    if (v7 == 1.0)
    {
      v8 = 1;
    }

    v6[22] = v8;
    *(v6 + 184) = v7 == 1.0;
  }

  (v4)(v0 + 264, 0);
  (v3)(v0 + 232, 0);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_55088()
{

  sub_14FD4(v0 + 160, &qword_B8398, &qword_89420);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_55120()
{
  result = qword_B92E8;
  if (!qword_B92E8)
  {
    sub_1A7F4(255, &qword_B8348, off_A91F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B92E8);
  }

  return result;
}

void sub_55188(uint64_t a1)
{
  v1 = a1;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_81C68();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_34F64(0, v2 & ~(v2 >> 63), 0);
    v3 = _swiftEmptyArrayStorage;
    if (v41)
    {
      v4 = sub_81C28();
    }

    else
    {
      v4 = sub_81C08();
      v5 = *(v1 + 36);
    }

    v43 = v4;
    v44 = v5;
    v45 = v41 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v39 = v1 + 56;
      v38 = v1 + 64;
      v40 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v9 = v43;
        v10 = v44;
        v11 = v45;
        v12 = v1;
        sub_3A36C(v43, v44, v45, v1);
        v14 = v13;
        sub_51F24(v13, v46);

        v48 = v3;
        v16 = v3[2];
        v15 = v3[3];
        if (v16 >= v15 >> 1)
        {
          sub_34F64((v15 > 1), v16 + 1, 1);
          v3 = v48;
        }

        v3[2] = v16 + 1;
        v17 = &v3[27 * v16];
        v18 = v46[1];
        *(v17 + 2) = v46[0];
        *(v17 + 3) = v18;
        v19 = v46[2];
        v20 = v46[3];
        v21 = v46[5];
        *(v17 + 6) = v46[4];
        *(v17 + 7) = v21;
        *(v17 + 4) = v19;
        *(v17 + 5) = v20;
        v22 = v46[6];
        v23 = v46[7];
        v24 = v46[9];
        *(v17 + 10) = v46[8];
        *(v17 + 11) = v24;
        *(v17 + 8) = v22;
        *(v17 + 9) = v23;
        v25 = v46[10];
        v26 = v46[11];
        v27 = v46[12];
        *(v17 + 240) = v47;
        *(v17 + 13) = v26;
        *(v17 + 14) = v27;
        *(v17 + 12) = v25;
        if (v41)
        {
          if (!v11)
          {
            goto LABEL_41;
          }

          v1 = v12;
          if (sub_81C38())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v40;
          sub_147EC(&qword_B92F0, &qword_8A5B8);
          v7 = sub_81AF8();
          sub_81C88();
          v7(v42, 0);
          if (v6 == v40)
          {
LABEL_33:
            sub_3B8D4(v43, v44, v45);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_42;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v12;
          v28 = 1 << *(v12 + 32);
          if (v9 >= v28)
          {
            goto LABEL_37;
          }

          v29 = v9 >> 6;
          v30 = *(v39 + 8 * (v9 >> 6));
          if (((v30 >> v9) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v12 + 36) != v10)
          {
            goto LABEL_39;
          }

          v31 = v30 & (-2 << (v9 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v38 + 8 * v29);
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_3B8D4(v9, v10, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_31;
              }
            }

            sub_3B8D4(v9, v10, 0);
LABEL_31:
            v1 = v12;
          }

          v37 = *(v1 + 36);
          v43 = v28;
          v44 = v37;
          v45 = 0;
          v2 = v40;
          if (v6 == v40)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_55510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_513B4(a1, v4, v5, v6);
}

uint64_t sub_555C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8398, &qword_89420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_55638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_30F50(a1, v4, v5, v7, v6);
}

uint64_t sub_556F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_55740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16268;

  return sub_30F50(a1, v4, v5, v7, v6);
}

uint64_t sub_55818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_55830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22EB0;

  return sub_54C84();
}

uint64_t sub_558EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_5402C(a1, v4, v5, v6);
}

uint64_t sub_559A0()
{
  v1 = sub_147EC(&qword_B92F8, &qword_8A5E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_55A34(void *a1, uint64_t a2)
{
  sub_147EC(&qword_B92F8, &qword_8A5E8);

  sub_53D34(a1, a2);
}

uint64_t sub_55AC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_55AD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_55B08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22EB0;

  return sub_529D0(a1, v4);
}

uint64_t sub_55BC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_55C00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A90;

  return sub_5229C(v2, v3);
}

uint64_t sub_55C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_51D84(a1, v4, v5, v6);
}

uint64_t sub_55D4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_55D94(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22EB0;

  return sub_54E20(v9, a1, v4, v5, v6, v7, v8);
}

uint64_t sub_55E6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_55F08()
{
  v1 = *(v0 + 120);
  if (!v1)
  {
    v6 = sub_818E8();
    v7 = sub_818E8();
    v5 = STLocalizedString(v6);

    sub_81928();
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v2 descriptor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 humanReadableUpdateName];

    if (v5)
    {
      sub_81928();

LABEL_6:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_5601C()
{
  v1 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  swift_defaultActor_initialize();
  updated = type metadata accessor for SoftwareUpdateController();
  v0[14] = 0;
  v0[15] = 0;
  v13.receiver = v0;
  v13.super_class = updated;
  v5 = objc_msgSendSuper2(&v13, "init");
  v6 = objc_allocWithZone(SUManagerClient);
  v7 = v5;
  v8 = [v6 initWithDelegate:v7];
  v9 = v7[14];
  v7[14] = v8;

  v10 = sub_81AB8();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v7;
  sub_68AE4(0, 0, v3, &unk_8A6F8, v11);

  return v7;
}

uint64_t sub_561A8()
{
  v1 = *(v0[8] + 112);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_56710;
    v0[7] = v2;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_56428;
    v0[5] = &unk_AC260;
    v3 = _Block_copy(v0 + 2);
    v4 = v1;

    [v4 downloadAndInstallState:v3];
    _Block_release(v3);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_562F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_81AB8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = a1;
    v13 = a1;
    sub_68AE4(0, 0, v8, &unk_8A708, v12);
  }

  return result;
}

void sub_56428(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(a2, a3, a4, a5);
}

uint64_t sub_564EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_5650C, a4, 0);
}

uint64_t sub_5650C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;

  v6 = v0[1];
  v4 = v2;

  return v6();
}

uint64_t sub_56580()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_565E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_56624(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_56188(a1, v4, v5, v6);
}

uint64_t sub_566D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_56718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_56730()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_56778(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16268;

  return sub_564EC(a1, v4, v5, v7, v6);
}

uint64_t sub_5684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_80978();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_5691C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_80978();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for NavigationEventEmissionViewModifier(uint64_t a1)
{
  result = qword_B93F0;
  if (!qword_B93F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_56A20(uint64_t a1)
{
  sub_80978();
  if (v1 <= 0x3F)
  {
    sub_56AAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_56AAC(uint64_t a1)
{
  if (!qword_B9400)
  {
    sub_80978();
    v1 = sub_81A48();
    if (!v2)
    {
      atomic_store(v1, &qword_B9400);
    }
  }
}

uint64_t getEnumTagSinglePayload for NavigationEventEmissionViewModifier.DeepLink(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NavigationEventEmissionViewModifier.DeepLink(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_56BEC()
{
  sub_81E78();
  sub_81968();
  return sub_81EB8();
}

Swift::Int sub_56C60(uint64_t a1)
{
  sub_81E78();
  sub_81968();
  return sub_81EB8();
}

uint64_t sub_56CB4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_AAD38;
  v7._object = v3;
  v5 = sub_81DD8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_56D2C()
{
  result = qword_B9438;
  if (!qword_B9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9438);
  }

  return result;
}

uint64_t sub_56D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_147EC(&qword_B9440, &unk_8A850);
  __chkstk_darwin(v30);
  v29 = (v24 - v2);
  v3 = sub_147EC(&qword_B8930, &qword_89BA8);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  v6 = sub_809D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_816E8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_147EC(&qword_B9448, &qword_8A860);
  v14 = *(v27 - 8);
  v15 = __chkstk_darwin(v27);
  v25 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v24 - v17;
  *v13 = 0xD000000000000025;
  v13[1] = 0x8000000000095E10;
  v19 = *(v11 + 104);
  v26 = v10;
  v19(v13, enum case for SettingsEventImage.graphicIcon(_:), v10);
  v24[1] = *(v32 + *(type metadata accessor for NavigationEventEmissionViewModifier(0) + 20));
  sub_809C8();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v21 = sub_147EC(&qword_B9450, &qword_8A868);
    v22 = sub_57238();
    sub_812B8();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v26);
    v23 = v27;
    (*(v14 + 16))(v25, v18, v27);
    v33 = v21;
    v34 = v22;
    swift_getOpaqueTypeConformance2();
    *v29 = sub_81598();
    swift_storeEnumTagMultiPayload();
    sub_810A8();
    return (*(v14 + 8))(v18, v23);
  }

  return result;
}

unint64_t sub_57238()
{
  result = qword_B9458;
  if (!qword_B9458)
  {
    sub_14E2C(&qword_B9450, &qword_8A868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9458);
  }

  return result;
}

unint64_t sub_572A0()
{
  result = qword_B9460;
  if (!qword_B9460)
  {
    sub_14E2C(&qword_B9468, &unk_8A870);
    sub_57238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9460);
  }

  return result;
}

__n128 sub_57338(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_57354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5739C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_57418(uint64_t a1)
{
  if (*(a1 + 16) <= 4uLL)
  {
  }

  else
  {
    sub_7B024(a1, a1 + 32, 0, 9uLL);
  }
}

uint64_t sub_57438(uint64_t a1, char a2)
{
  sub_57418(a1);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_147EC(&qword_B9548, &qword_8AAF0);
  sub_14F24(&qword_B9550, &qword_B9548, &qword_8AAF0, &protocol conformance descriptor for [A]);
  sub_432C8();
  sub_59130();
  return sub_81608();
}

uint64_t sub_57544@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 16);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v9;
  *(a3 + 40) = v8;
  *(a3 + 48) = v7;
  *(a3 + 56) = a2;
  sub_2092C(v5, v6, v9);
}

uint64_t sub_575E0()
{
  v1 = sub_810F8();
  __chkstk_darwin(v1);
  sub_58DF4(*(v0 + 8));
  sub_81048();
  sub_59010();
  sub_81ED8();
  sub_147EC(&qword_B9538, &qword_8AAE8);
  sub_59068();
  return sub_816A8();
}

double sub_57704@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_147EC(&qword_B9470, &qword_8A9F0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_80FB8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dbl_8AB60[*(v2 + 56)];
  v12 = *v2;
  v21 = *v2;
  v22 = *(v2 + 8);
  if (v22 == 1)
  {
    v13 = v12;
  }

  else
  {

    sub_81B28();
    v14 = sub_81198();
    sub_80B98();

    sub_80FA8();
    swift_getAtKeyPath();
    sub_14FD4(&v21, &qword_B9478, &qword_8A9F8);
    (*(v8 + 8))(v10, v7);
    v13 = *v19;
  }

  v15 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v11 scale:{v11, v13}];
  sub_57988(v2, v15, v6);
  sub_81688();
  sub_80D68();

  sub_5867C(v6, a1);
  v16 = (a1 + *(sub_147EC(&qword_B9480, &qword_8AA00) + 36));
  v17 = v19[1];
  *v16 = v19[0];
  v16[1] = v17;
  result = *&v20;
  v16[2] = v20;
  return result;
}

uint64_t sub_57988@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v4 = sub_147EC(&qword_B9488, &qword_8AA08);
  __chkstk_darwin(v4);
  v6 = &v50 - v5;
  v62 = sub_147EC(&qword_B9490, &unk_8AA10);
  __chkstk_darwin(v62);
  v8 = &v50 - v7;
  v61 = sub_147EC(&qword_B8AD8, &qword_89D50);
  v56 = *(v61 - 8);
  __chkstk_darwin(v61);
  v55 = &v50 - v9;
  v58 = sub_147EC(&qword_B9498, &qword_8AA20);
  __chkstk_darwin(v58);
  v60 = &v50 - v10;
  v52 = sub_147EC(&qword_B94A0, &qword_8AA28);
  __chkstk_darwin(v52);
  v53 = &v50 - v11;
  v59 = sub_147EC(&qword_B94A8, &qword_8AA30);
  __chkstk_darwin(v59);
  v54 = &v50 - v12;
  v13 = sub_147EC(&qword_B94B0, &qword_8AA38);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = sub_147EC(&qword_B94B8, &qword_8AA40);
  v18 = __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v33 = *(a1 + 56) != 2;
      *v6 = v22;
      v6[8] = v33;
      swift_storeEnumTagMultiPayload();
      sub_586EC();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);

      sub_810A8();
      sub_58740(v8, v60);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      return sub_14FD4(v8, &qword_B9490, &unk_8AA10);
    }

    else
    {
      v44 = objc_allocWithZone(ISIcon);

      v45 = sub_818E8();
      sub_431D4(v22, v23, 3u);
      [v44 initWithType:v45];

      v46 = v57;
      v47 = v55;
      sub_80B58();
      v48 = v56;
      v49 = v61;
      (*(v56 + 16))(v6, v47, v61);
      swift_storeEnumTagMultiPayload();
      sub_586EC();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
      sub_810A8();
      sub_58740(v8, v60);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      sub_14FD4(v8, &qword_B9490, &unk_8AA10);
      return (*(v48 + 8))(v47, v49);
    }
  }

  else
  {
    v51 = v18;
    if (v24)
    {
      v34 = objc_allocWithZone(ISGraphicIconConfiguration);

      v35 = [v34 init];
      v36 = objc_allocWithZone(ISIcon);
      v37 = sub_818E8();
      sub_431D4(v22, v23, 1u);
      [v36 initWithSymbolName:v37 configuration:v35];

      v38 = v57;
      v39 = v55;
      sub_80B58();
      v40 = v56;
      v41 = v61;
      (*(v56 + 16))(v53, v39, v61);
      swift_storeEnumTagMultiPayload();
      v42 = sub_14F24(&qword_B94D0, &qword_B94B0, &qword_8AA38, &protocol conformance descriptor for AsyncIconImage<A>);
      v64 = v13;
      v65 = v42;
      swift_getOpaqueTypeConformance2();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
      v43 = v54;
      sub_810A8();
      sub_5898C(v43, v60);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      sub_589FC(v43);
      return (*(v40 + 8))(v39, v41);
    }

    else
    {
      v56 = v19;
      v25 = objc_allocWithZone(ISIcon);

      v26 = sub_818E8();
      sub_431D4(v22, v23, 0);
      [v25 initWithBundleIdentifier:v26];

      v27 = v57;
      sub_147EC(&qword_B94E0, &qword_8AA48);
      sub_147EC(&qword_B94E8, &qword_8AA50);
      sub_58A64();
      sub_58AE8();
      sub_80B48();
      v28 = sub_14F24(&qword_B94D0, &qword_B94B0, &qword_8AA38, &protocol conformance descriptor for AsyncIconImage<A>);
      sub_81298();
      (*(v14 + 8))(v16, v13);
      v29 = v56;
      v30 = v51;
      (*(v56 + 16))(v53, v21, v51);
      swift_storeEnumTagMultiPayload();
      v64 = v13;
      v65 = v28;
      swift_getOpaqueTypeConformance2();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
      v31 = v54;
      sub_810A8();
      sub_5898C(v31, v60);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      sub_589FC(v31);
      return (*(v29 + 8))(v21, v30);
    }
  }
}

uint64_t sub_583C8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_81488();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = sub_814A8();
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_584E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81488();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_81478();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = sub_814A8();

  (*(v3 + 8))(v5, v2);
  sub_147EC(&qword_B94E8, &qword_8AA50);
  result = sub_81678();
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_5867C(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9470, &qword_8A9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_586EC()
{
  result = qword_B94C0;
  if (!qword_B94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94C0);
  }

  return result;
}

uint64_t sub_58740(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9490, &unk_8AA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_587B0()
{
  result = qword_B94C8;
  if (!qword_B94C8)
  {
    sub_14E2C(&qword_B94A8, &qword_8AA30);
    sub_14E2C(&qword_B94B0, &qword_8AA38);
    sub_14F24(&qword_B94D0, &qword_B94B0, &qword_8AA38, &protocol conformance descriptor for AsyncIconImage<A>);
    swift_getOpaqueTypeConformance2();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94C8);
  }

  return result;
}

unint64_t sub_588D4()
{
  result = qword_B94D8;
  if (!qword_B94D8)
  {
    sub_14E2C(&qword_B9490, &unk_8AA10);
    sub_586EC();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94D8);
  }

  return result;
}

uint64_t sub_5898C(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B94A8, &qword_8AA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_589FC(uint64_t a1)
{
  v2 = sub_147EC(&qword_B94A8, &qword_8AA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_58A64()
{
  result = qword_B94F0;
  if (!qword_B94F0)
  {
    sub_14E2C(&qword_B94E0, &qword_8AA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94F0);
  }

  return result;
}

unint64_t sub_58AE8()
{
  result = qword_B94F8;
  if (!qword_B94F8)
  {
    sub_14E2C(&qword_B94E8, &qword_8AA50);
    sub_58A64();
    sub_14F24(&qword_B9500, &qword_B9508, &qword_8AA58, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94F8);
  }

  return result;
}

uint64_t sub_58BA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_58BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_58C3C()
{
  result = qword_B9510;
  if (!qword_B9510)
  {
    sub_14E2C(&qword_B9480, &qword_8AA00);
    sub_58CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9510);
  }

  return result;
}

unint64_t sub_58CC8()
{
  result = qword_B9518;
  if (!qword_B9518)
  {
    sub_14E2C(&qword_B9470, &qword_8A9F0);
    sub_58D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9518);
  }

  return result;
}

unint64_t sub_58D4C()
{
  result = qword_B9520;
  if (!qword_B9520)
  {
    sub_14E2C(&qword_B9528, &qword_8AA90);
    sub_587B0();
    sub_588D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9520);
  }

  return result;
}

uint64_t sub_58DF4(char a1)
{
  v2 = sub_81648();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = (&v14 - v7);
  sub_147EC(&qword_B9560, &qword_8AB28);
  sub_81658();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_886E0;
  v10 = dbl_8AB60[a1];
  *v8 = v10;
  v11 = enum case for GridItem.Size.fixed(_:);
  v12 = *(v3 + 104);
  v12(v8, enum case for GridItem.Size.fixed(_:), v2);
  sub_81668();
  *v6 = v10;
  v12(v6, v11, v2);
  sub_81668();
  return v9;
}

unint64_t sub_59010()
{
  result = qword_B9530;
  if (!qword_B9530)
  {
    sub_810F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9530);
  }

  return result;
}

unint64_t sub_59068()
{
  result = qword_B9540;
  if (!qword_B9540)
  {
    sub_14E2C(&qword_B9538, &qword_8AAE8);
    sub_432C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9540);
  }

  return result;
}

uint64_t sub_590EC()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_59130()
{
  result = qword_B9558;
  if (!qword_B9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9558);
  }

  return result;
}

uint64_t sub_591D0(uint64_t a1, char a2)
{
  *(v2 + 304) = a2;
  *(v2 + 104) = a1;
  sub_147EC(&unk_B8240, &qword_88F50);
  *(v2 + 112) = swift_task_alloc();
  v3 = sub_808D8();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 + 64);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  sub_147EC(&qword_B7E50, &qword_8A3F0);
  *(v2 + 160) = swift_task_alloc();
  sub_81818();
  *(v2 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_59344, 0, 0);
}

uint64_t sub_59344()
{
  v0[22] = objc_opt_self();
  v0[23] = sub_81A88();
  v0[24] = sub_81A78();
  v2 = sub_81A58();

  return _swift_task_switch(sub_593EC, v2, v1);
}

uint64_t sub_593EC()
{
  v1 = *(v0 + 176);

  *(v0 + 200) = [v1 currentDevice];

  return _swift_task_switch(sub_59474, 0, 0);
}

uint64_t sub_59474(uint64_t a1)
{
  *(v1 + 208) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59500, v3, v2);
}

uint64_t sub_59500()
{
  v1 = *(v0 + 200);

  *(v0 + 216) = [v1 buildVersion];

  return _swift_task_switch(sub_59588, 0, 0);
}

uint64_t sub_59588(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 216);
  if (v4)
  {
    v5 = *(v3 + 304);
    v6 = sub_81928();
    v8 = v7;

    v16._countAndFlagsBits = v6;
    v16._object = v8;
    sub_81978(v16);

    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    sub_81978(v17);

    *(v3 + 40) = 91;
    *(v3 + 48) = 0xE100000000000000;
    if ((v5 & 1) == 0)
    {
      v14._countAndFlagsBits = sub_81E68();
      v14._object = v9;

      v18._countAndFlagsBits = 0x206D657473797320;
      v18._object = 0xEC00000061746164;
      sub_81978(v18);

      sub_81978(v14);
    }

    *(v3 + 224) = sub_81A78();
    v10 = sub_81A58();
    v12 = v11;
    a1 = sub_596FC;
    a2 = v10;
    a3 = v12;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_596FC()
{

  if (qword_B7858 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_59794, 0, 0);
}

uint64_t sub_59794(uint64_t a1)
{
  *(v1 + 232) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59820, v3, v2);
}

uint64_t sub_59820()
{

  *(v0 + 240) = qword_BCF88;

  return _swift_task_switch(sub_59894, 0, 0);
}

uint64_t sub_59894(uint64_t a1)
{
  *(v1 + 248) = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  *(v1 + 256) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59930, v3, v2);
}

uint64_t sub_59930()
{
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[21];

  swift_beginAccess();
  sub_5AE18(v2 + v1, v3, &type metadata accessor for TimeStats);

  return _swift_task_switch(sub_599DC, 0, 0);
}

uint64_t sub_599DC()
{
  v1 = v0[21];
  v2 = sub_81808();
  v4 = v3;
  sub_5A4D8(v1);
  v0[7] = v2;
  v0[8] = v4;
  v0[33] = sub_81A78();
  v6 = sub_81A58();

  return _swift_task_switch(sub_59A8C, v6, v5);
}

uint64_t sub_59A8C()
{

  return _swift_task_switch(sub_59AF4, 0, 0);
}

uint64_t sub_59AF4(uint64_t a1)
{
  *(v1 + 272) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59B80, v3, v2);
}

uint64_t sub_59B80()
{

  return _swift_task_switch(sub_59BE8, 0, 0);
}

uint64_t sub_59BE8()
{
  v0[9] = sub_81928();
  v0[10] = v1;
  v0[35] = v1;
  v0[36] = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59C8C, v3, v2);
}

uint64_t sub_59C8C()
{

  *(v0 + 296) = sub_254C4();

  return _swift_task_switch(sub_59D00, 0, 0);
}

uint64_t sub_59D00()
{
  if (*(v0[37] + 16))
  {
    v1 = sub_34B30(v0[9], v0[35]);
    v3 = v2;

    v4 = v0[20];
    if (v3)
    {
      v5 = *(v0[37] + 56);
      v6 = type metadata accessor for Application(0);
      v7 = *(v6 - 8);
      sub_5AE18(v5 + *(v7 + 72) * v1, v4, type metadata accessor for Application);

      (*(v7 + 56))(v4, 0, 1, v6);
    }

    else
    {

      v6 = type metadata accessor for Application(0);
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    }
  }

  else
  {
    v8 = v0[20];

    v6 = type metadata accessor for Application(0);
    (*(*(v6 - 8) + 56))(v8, 1, 1, v6);
  }

  v9 = v0[20];
  type metadata accessor for Application(0);
  if ((*(*(v6 - 8) + 48))(v9, 1, v6))
  {
    sub_14FD4(v9, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v10 = *(v9 + *(v6 + 84));

    sub_14FD4(v9, &qword_B7E50, &qword_8A3F0);
    v33._countAndFlagsBits = 2570;
    v33._object = 0xE200000000000000;
    sub_81978(v33);
    v34._countAndFlagsBits = 0xD000000000000016;
    v34._object = 0x8000000000095E80;
    sub_81978(v34);
    v11 = *(v10 + 16);
    if (v11)
    {
      sub_34F04(0, v11, 0);
      v12 = v10 + 64;
      do
      {
        v13 = *(v12 - 16);
        v30 = *(v12 - 32);
        v31 = *(v12 - 24);

        swift_bridgeObjectRetain_n();
        v35._countAndFlagsBits = 598074;
        v35._object = 0xE300000000000000;
        sub_81978(v35);
        v36._countAndFlagsBits = sub_81E68();
        sub_81978(v36);

        v37._countAndFlagsBits = 9;
        v37._object = 0xE100000000000000;
        sub_81978(v37);
        v0[11] = v13;
        v38._countAndFlagsBits = sub_81DF8();
        sub_81978(v38);

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_34F04((v14 > 1), v15 + 1, 1);
        }

        v12 += 40;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v15];
        v16[4] = v30;
        v16[5] = v31;
        --v11;
      }

      while (v11);
    }

    v0[12] = _swiftEmptyArrayStorage;
    sub_147EC(&qword_B7E70, &unk_88C80);
    sub_5ADB4();
    v17 = sub_81858();
    v19 = v18;

    v39._countAndFlagsBits = v17;
    v39._object = v19;
    sub_81978(v39);
  }

  v20 = v0[19];
  v21 = v0[16];
  v29 = v0[18];
  v22 = v0[14];
  v23 = v0[15];
  sub_808C8();
  sub_808B8();
  sub_808A8();
  sub_147EC(&qword_B9578, &qword_8AB98);
  sub_80878();
  *(swift_allocObject() + 16) = xmmword_8AB80;
  sub_80868();

  sub_80868();

  sub_80868();
  sub_80868();
  sub_80868();
  sub_80868();
  sub_80868();
  sub_80888();
  v24 = sub_81AB8();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  (*(v21 + 16))(v29, v20, v23);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v21 + 32))(v26 + v25, v29, v23);
  sub_68AE4(0, 0, v22, &unk_8ABA8, v26);

  (*(v21 + 8))(v20, v23);

  v27 = v0[1];

  return v27();
}

uint64_t sub_5A4D8(uint64_t a1)
{
  v2 = sub_81818();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a4;
  sub_147EC(&qword_B8930, &qword_89BA8);
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_5A5D0, 0, 0);
}

uint64_t sub_5A5D0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[20];
    sub_80898();
    v4 = sub_809D8();
    v5 = *(v4 - 8);
    v7 = 0;
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v8 = v0[20];
      sub_809A8(v6);
      v7 = v9;
      (*(v5 + 8))(v8, v4);
    }

    v0[22] = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_5A7BC;
    v10 = swift_continuation_init();
    v0[17] = sub_147EC(&qword_B9580, &unk_8ABB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_5AB04;
    v0[13] = &unk_AC498;
    v0[14] = v10;
    [v2 openURL:v7 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_5A7BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_5A944;
  }

  else
  {
    v2 = sub_5A8CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5A8CC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5A944(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  if (qword_B7850 != -1)
  {
    swift_once();
  }

  v4 = sub_80BC8();
  sub_19818(v4, qword_BCF70);
  swift_errorRetain();
  v5 = sub_80BB8();
  v6 = sub_81B18();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "Failed to launch tap-to-radar with error %@", v7, 0xCu);
    sub_14FD4(v8, &qword_B7BA8, &qword_8A5F0);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_5AB04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_81838();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_5AC00()
{
  v1 = sub_808D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_5ACC4(uint64_t a1)
{
  v4 = *(sub_808D8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16268;

  return sub_5A534(a1, v6, v7, v1 + v5);
}

unint64_t sub_5ADB4()
{
  result = qword_B7E78;
  if (!qword_B7E78)
  {
    sub_14E2C(&qword_B7E70, &unk_88C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7E78);
  }

  return result;
}

uint64_t sub_5AE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5AEC4@<X0>(uint64_t a5@<X8>)
{
  sub_147EC(&qword_B8F88, &qword_8A210);
  sub_814F8();
  type metadata accessor for StorageShared(0);
  sub_5BF2C(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  sub_80E68();
  sub_147EC(&qword_B95B0, &qword_8AC88);
  sub_50CD0();
  sub_5BDA8();
  sub_81618();
  v6 = (a5 + *(sub_147EC(&qword_B9588, &qword_8AC78) + 36));
  v7 = *(sub_147EC(&qword_B8FE0, &unk_8ACA0) + 28);
  v8 = sub_81248();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  result = swift_getKeyPath();
  *v6 = result;
  return result;
}

uint64_t sub_5B070@<X0>(void *a1@<X0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a4;
  LODWORD(v41) = a3;
  v7 = sub_147EC(&qword_B95D0, &qword_8AC98);
  KeyPath = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_147EC(&qword_B95C0, &qword_8AC90);
  v11 = __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v46 = sub_147EC(&qword_B95E8, &unk_8ACE8);
  __chkstk_darwin(v46);
  v17 = &v39 - v16;
  v43 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v18 = __chkstk_darwin(v43);
  v40 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v39 = &v39 - v20;
  v21 = type metadata accessor for AppsListView(0);
  __chkstk_darwin(v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for StorageShared(0);
    sub_5BF2C(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
    return result;
  }

  v24 = a1;
  v25 = sub_254C4()[2];

  v47 = v21;
  if (v25)
  {
    v26 = v24[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

    if (v26 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_80C68();

      v27 = *(v50 + 16);

      if (v27)
      {
        KeyPath = swift_getKeyPath();
        v48[0] = v41;
        v49 = v42;
        sub_147EC(&qword_B8F88, &qword_8A210);
        sub_814F8();
        v42 = v50;
        v45 = a5;
        v41 = *(&v50 + 1);
        v28 = v51;
        type metadata accessor for StorageShared(0);
        sub_5BF2C(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
        *(v23 + 2) = sub_80E68();
        *(v23 + 3) = v29;
        v48[0] = 1;
        sub_814C8();
        v30 = *(&v50 + 1);
        v23[56] = v50;
        *(v23 + 8) = v30;
        v31 = type metadata accessor for Application(0);
        v32 = v39;
        (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
        sub_14F6C(v32, v40, &qword_B7E50, &qword_8A3F0);
        sub_814C8();
        sub_14FD4(v32, &qword_B7E50, &qword_8A3F0);
        *v23 = KeyPath;
        v23[8] = 0;
        v33 = v41;
        *(v23 + 4) = v42;
        *(v23 + 5) = v33;
        v23[48] = v28;
        sub_5C0E0(v23, v17);
        swift_storeEnumTagMultiPayload();
        sub_5BF2C(&qword_B8FB8, type metadata accessor for AppsListView, &unk_8C3D0);
        sub_5BE64();
        sub_810A8();
        return sub_5C144(v23);
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_8:
  sub_147EC(&qword_B95F0, &qword_8ACF8);
  sub_14F24(&qword_B95F8, &qword_B95F0, &qword_8ACF8, &protocol conformance descriptor for Label<A, B>);
  sub_81118();
  sub_81688();
  sub_80E48();
  (*(KeyPath + 32))(v13, v9, v45);
  v35 = &v13[*(v10 + 36)];
  v36 = v55;
  *(v35 + 4) = v54;
  *(v35 + 5) = v36;
  *(v35 + 6) = v56;
  v37 = v51;
  *v35 = v50;
  *(v35 + 1) = v37;
  v38 = v53;
  *(v35 + 2) = v52;
  *(v35 + 3) = v38;
  sub_5C068(v13, v15);
  sub_14F6C(v15, v17, &qword_B95C0, &qword_8AC90);
  swift_storeEnumTagMultiPayload();
  sub_5BF2C(&qword_B8FB8, type metadata accessor for AppsListView, &unk_8C3D0);
  sub_5BE64();
  sub_810A8();
  return sub_14FD4(v15, &qword_B95C0, &qword_8AC90);
}

uint64_t sub_5B82C()
{
  sub_147EC(&qword_B9600, &qword_8AD48);
  sub_5C1A0();

  return sub_814B8();
}

uint64_t sub_5B8C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  v5 = sub_81288();
  v7 = v6;
  LOBYTE(v4) = v8;
  sub_811D8();
  v9 = sub_81258();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_15034(v5, v7, v4 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_5BA10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_81478();
  v3 = a1 + *(sub_147EC(&qword_B9600, &qword_8AD48) + 36);
  v4 = *(sub_147EC(&qword_B9618, &qword_8AD50) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = sub_81498();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_5BAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_5BBC4()
{
  sub_147EC(&qword_B9588, &qword_8AC78);
  sub_5BC58();
  return sub_81218();
}

unint64_t sub_5BC58()
{
  result = qword_B9590;
  if (!qword_B9590)
  {
    sub_14E2C(&qword_B9588, &qword_8AC78);
    sub_5BD10();
    sub_14F24(&qword_B95D8, &qword_B8FE0, &unk_8ACA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9590);
  }

  return result;
}

unint64_t sub_5BD10()
{
  result = qword_B9598;
  if (!qword_B9598)
  {
    sub_14E2C(&qword_B95A0, &qword_8AC80);
    sub_50CD0();
    sub_5BDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9598);
  }

  return result;
}

unint64_t sub_5BDA8()
{
  result = qword_B95A8;
  if (!qword_B95A8)
  {
    sub_14E2C(&qword_B95B0, &qword_8AC88);
    sub_5BF2C(&qword_B8FB8, type metadata accessor for AppsListView, &unk_8C3D0);
    sub_5BE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B95A8);
  }

  return result;
}

unint64_t sub_5BE64()
{
  result = qword_B95B8;
  if (!qword_B95B8)
  {
    sub_14E2C(&qword_B95C0, &qword_8AC90);
    sub_14F24(&qword_B95C8, &qword_B95D0, &qword_8AC98, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B95B8);
  }

  return result;
}

uint64_t sub_5BF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5BFBC(uint64_t a1)
{
  v2 = sub_147EC(&qword_B95E0, &qword_8ACE0);
  __chkstk_darwin(v2 - 8);
  sub_14F6C(a1, &v5 - v3, &qword_B95E0, &qword_8ACE0);
  return sub_80F78();
}

uint64_t sub_5C068(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B95C0, &qword_8AC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C144(uint64_t a1)
{
  v2 = type metadata accessor for AppsListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_5C1A0()
{
  result = qword_B9608;
  if (!qword_B9608)
  {
    sub_14E2C(&qword_B9600, &qword_8AD48);
    sub_14F24(&qword_B9610, &qword_B9618, &qword_8AD50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9608);
  }

  return result;
}

uint64_t sub_5C27C(uint64_t a1)
{
  v2 = sub_81498();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_80E98();
}

uint64_t sub_5C3B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SyncedContent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  sub_5CBF0(a1, &v19 - v9);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_5CC58(v10, v12 + v11);
  sub_5CBF0(a1, v8);
  v13 = swift_allocObject();
  sub_5CC58(v8, v13 + v11);
  *a2 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v14 = sub_147EC(&qword_B9638, &qword_8AE40);
  v15 = v14[9];
  *(a2 + v15) = swift_getKeyPath();
  sub_147EC(&qword_B8680, &unk_895A0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v14[10]) = 0;
  v17 = (a2 + v14[11]);
  *v17 = sub_5CCBC;
  v17[1] = v12;
  v18 = (a2 + v14[12]);
  *v18 = sub_5CEC8;
  v18[1] = v13;
  return result;
}

uint64_t sub_5C5B8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SyncedContent(0);
  sub_1B4B0(a1);
  v2 = sub_80B08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

double sub_5C648@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_5C734(a1, &v10);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v19 = v10;
  v20 = v11;
  v28[6] = v16;
  v28[7] = v17;
  v28[8] = v18;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[0] = v10;
  v28[1] = v11;
  sub_5CF84(&v19, &v9);
  sub_5CFF4(v28);
  v4 = v23;
  *(a2 + 104) = v24;
  v5 = v26;
  *(a2 + 120) = v25;
  *(a2 + 136) = v5;
  *(a2 + 152) = v27;
  v6 = v19;
  *(a2 + 40) = v20;
  result = *&v21;
  v8 = v22;
  *(a2 + 56) = v21;
  *(a2 + 72) = v8;
  *(a2 + 88) = v4;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_5C734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SyncedContent(0) + 28);
  v5 = *(v3 + 10);
  v4 = *(v3 + 11);
  v28 = *(v3 + 13);
  v31 = *(v3 + 14);
  v6 = v3[96];
  v26 = v6;
  KeyPath = swift_getKeyPath();
  sub_2092C(v5, v4, v6);
  sub_14ED0();

  v7 = sub_81288();
  v24 = v8;
  v25 = v7;
  v22 = v9;
  v23 = v10;
  sub_81E68();
  v11 = sub_81288();
  v13 = v12;
  v15 = v14;
  sub_81138();
  v21 = sub_81238();
  v29 = v16;
  v30 = v17;
  v19 = v18;
  sub_15034(v11, v13, v15 & 1);

  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v31;
  *(a2 + 56) = 2;
  *(a2 + 64) = v25;
  *(a2 + 72) = v24;
  *(a2 + 80) = v22 & 1;
  *(a2 + 88) = v23;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = v21;
  *(a2 + 120) = v29;
  *(a2 + 128) = v19 & 1;
  *(a2 + 136) = v30;
  sub_5D064(KeyPath, 0);
  sub_2092C(v5, v4, v26);

  sub_16C28(v25, v24, v22 & 1);

  sub_16C28(v21, v29, v19 & 1);

  sub_15034(v21, v29, v19 & 1);

  sub_15034(v25, v24, v22 & 1);

  sub_4C7F8(KeyPath, 0);
  sub_431D4(v5, v4, v26);
}

uint64_t sub_5C9E0()
{
  if (*v0)
  {

    sub_147EC(&qword_B9630, &qword_8AE38);
    sub_147EC(&qword_B9638, &qword_8AE40);
    sub_14F24(&qword_B9640, &qword_B9630, &qword_8AE38, &protocol conformance descriptor for [A]);
    sub_14F24(&qword_B9648, &qword_B9638, &qword_8AE40, &unk_89528);
    sub_5CBA8(&qword_B9650, type metadata accessor for SyncedContent, &unk_89490);
    return sub_81608();
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_5CBA8(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_5CBA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5CBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CCBC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SyncedContent(0);

  return sub_5C5B8(a1);
}

uint64_t sub_5CD2C()
{
  v1 = (type metadata accessor for SyncedContent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];

  sub_431D4(*(v5 + 80), *(v5 + 88), *(v5 + 96));

  v6 = *(type metadata accessor for Application(0) + 72);
  v7 = sub_80A38();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_5CEC8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncedContent(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_5C648(v4, a1);
}

uint64_t sub_5CF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9658, &qword_8AEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CFF4(uint64_t a1)
{
  v2 = sub_147EC(&qword_B9658, &qword_8AEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5D064(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_5D074()
{
  result = qword_B9660;
  if (!qword_B9660)
  {
    sub_14E2C(&qword_B9668, &unk_8AEF0);
    sub_14F24(&qword_B9648, &qword_B9638, &qword_8AE40, &unk_89528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9660);
  }

  return result;
}

char *sub_5D154(void *a1, uint64_t a2, char a3, char *a4)
{
  LOBYTE(v11[0]) = a3;
  v11[1] = a4;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814D8();
  if (v10 == 1)
  {
    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = a1;
      sub_80C68();

      sub_5E0BC(v11);

      return v11[0];
    }

    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_8:
    type metadata accessor for StorageShared(0);
    sub_1635C();
    sub_80E58();
    __break(1u);

    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_80C68();

  sub_5E0BC(v11);

  result = v11[0];
  if (*(v11[0] + 2) >= 3uLL)
  {
    sub_7B10C(v11[0], (v11[0] + 32), 0, 5uLL);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_5D324(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    sub_80C68();

    v6 = *(v10 + 16);

    if (v6 <= 2)
    {
      v7 = 0;
    }

    else
    {
      sub_147EC(&unk_B8710, &qword_89A80);
      sub_814D8();
      v7 = v9 ^ 1;
    }

    return v7 & 1;
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_1635C();
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_5D430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a4;
  v25 = a6;
  v26 = a7;
  v11 = sub_147EC(&qword_B96B0, &qword_8AFF0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = sub_147EC(&qword_B96A0, &qword_8AFE8);
  v16 = __chkstk_darwin(v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v23 - v19;
  v27 = a2;
  if (a1)
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  else
  {
    *v14 = sub_81008();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v21 = sub_147EC(&qword_B96C0, &qword_8AFF8);
    sub_5D794(a2, a3, v24, a5 & 1, v25, &v14[*(v21 + 44)]);
    sub_5F2F0(v14, v18, &qword_B96B0, &qword_8AFF0);
    (*(v12 + 56))(v18, 0, 1, v11);
  }

  sub_5F2F0(v18, v20, &qword_B96A0, &qword_8AFE8);
  sub_5F08C();
  sub_5F13C();
  return sub_81618();
}

uint64_t sub_5D678@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  v35 = a1[10];
  v36 = v4;
  v37 = a1[12];
  v38 = *(a1 + 208);
  v5 = a1[7];
  v31 = a1[6];
  v32 = v5;
  v6 = a1[9];
  v33 = a1[8];
  v34 = v6;
  v7 = a1[3];
  v27 = a1[2];
  v28 = v7;
  v8 = a1[5];
  v29 = a1[4];
  v30 = v8;
  v9 = a1[1];
  v25 = *a1;
  v26 = v9;
  type metadata accessor for StorageShared(0);
  sub_1635C();
  v10 = sub_80E68();
  v12 = v11;
  v24 = 0;
  sub_814C8();
  v13 = v22[0];
  v14 = v23;
  *a2 = v10;
  *(a2 + 8) = v12;
  v15 = v36;
  *(a2 + 176) = v35;
  *(a2 + 192) = v15;
  *(a2 + 208) = v37;
  *(a2 + 224) = v38;
  v16 = v32;
  *(a2 + 112) = v31;
  *(a2 + 128) = v16;
  v17 = v34;
  *(a2 + 144) = v33;
  *(a2 + 160) = v17;
  v18 = v28;
  *(a2 + 48) = v27;
  *(a2 + 64) = v18;
  v19 = v30;
  *(a2 + 80) = v29;
  *(a2 + 96) = v19;
  v20 = v26;
  *(a2 + 16) = v25;
  *(a2 + 32) = v20;
  *(a2 + 232) = v13;
  *(a2 + 240) = v14;
  return sub_3C168(a1, v22);
}

uint64_t sub_5D794@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a5;
  v59 = a3;
  v56 = a4;
  v57 = a2;
  v64 = a6;
  v7 = sub_147EC(&qword_B96C8, &qword_8B000);
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v52 - v8;
  v62 = sub_147EC(&qword_B96D0, &qword_8B008);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v52 = &v52 - v9;
  v10 = sub_147EC(&qword_B96D8, &unk_8B010);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = sub_147EC(&qword_B78C8, &unk_89660);
  v16 = __chkstk_darwin(v15 - 8);
  v61 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_818E8();
  v21 = sub_818E8();
  v22 = STLocalizedString(v20);

  v23 = sub_81928();
  v25 = v24;

  v67 = v23;
  v68 = v25;
  sub_14ED0();
  v26 = sub_81288();
  v28 = v27;
  v67 = v26;
  v68 = v27;
  LOBYTE(v22) = v29 & 1;
  v69 = v29 & 1;
  v70 = v30;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_81D08(30);

  v65 = 0xD00000000000001CLL;
  v66 = 0x8000000000095FC0;
  v31 = *a1;
  v32 = a1[1];
  v71._countAndFlagsBits = v31;
  v71._object = v32;
  sub_81978(v71);
  sub_81398();
  v33 = v56;

  v34 = v26;
  v35 = v22;
  v36 = v57;
  v37 = v58;
  sub_15034(v34, v28, v35);
  v38 = v59;

  v39 = sub_5D324(v36, v38, v33, v37);
  v40 = 1;
  if (v39)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    *(v41 + 24) = v38;
    *(v41 + 32) = v33 & 1;
    *(v41 + 40) = v37;

    v42 = v36;
    sub_147EC(&qword_B96E8, &unk_8B028);
    sub_5F238();
    v43 = v53;
    sub_81528();
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_81D08(31);

    v67 = 0xD00000000000001DLL;
    v68 = 0x8000000000095FE0;
    v72._countAndFlagsBits = v31;
    v72._object = v32;
    sub_81978(v72);
    sub_14F24(&qword_B96F8, &qword_B96C8, &qword_8B000, &protocol conformance descriptor for Button<A>);
    v44 = v52;
    v45 = v55;
    sub_81398();

    (*(v54 + 8))(v43, v45);
    sub_5F2F0(v44, v14, &qword_B96D0, &qword_8B008);
    v40 = 0;
  }

  (*(v60 + 56))(v14, v40, 1, v62);
  v46 = v61;
  sub_14F6C(v19, v61, &qword_B78C8, &unk_89660);
  v47 = v63;
  sub_14F6C(v14, v63, &qword_B96D8, &unk_8B010);
  v48 = v64;
  sub_14F6C(v46, v64, &qword_B78C8, &unk_89660);
  v49 = sub_147EC(&qword_B96E0, &qword_8B020);
  v50 = v48 + *(v49 + 48);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_14F6C(v47, v48 + *(v49 + 64), &qword_B96D8, &unk_8B010);
  sub_14FD4(v14, &qword_B96D8, &unk_8B010);
  sub_14FD4(v19, &qword_B78C8, &unk_89660);
  sub_14FD4(v47, &qword_B96D8, &unk_8B010);
  return sub_14FD4(v46, &qword_B78C8, &unk_89660);
}

uint64_t sub_5DDBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  v5 = sub_81288();
  v7 = v6;
  LOBYTE(v4) = v8;
  v10 = v9;
  v11 = (a1 + *(sub_147EC(&qword_B96E8, &unk_8B028) + 36));
  v12 = *(sub_147EC(&qword_B8FE0, &unk_8ACA0) + 28);
  v13 = sub_81248();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  result = swift_getKeyPath();
  *v11 = result;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_5DF2C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = sub_5D154(*v0, v2, v3, v4);
  sub_5EBE4(v5);

  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_5EEC4;
  *(v7 + 24) = v6;

  v8 = v1;
  sub_147EC(&qword_B9670, &qword_8AFD8);
  sub_147EC(&qword_B9678, &qword_8AFE0);
  sub_14F24(&qword_B9680, &qword_B9670, &qword_8AFD8, &protocol conformance descriptor for [A]);
  sub_5EFA0();
  sub_5EFF4();
  return sub_815F8();
}

Swift::Int sub_5E0BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20898(v2);
  }

  v3 = *(v2 + 2);
  v56[0] = (v2 + 32);
  v56[1] = v3;
  result = sub_81DE8(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 248;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 14) >= *(v12 + 13))
          {
            break;
          }

          v13 = v12 - 216;
          v14 = *(v12 + 1);
          v42 = *v12;
          v43 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v46 = *(v12 + 4);
          v47 = v17;
          v44 = v15;
          v45 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 9);
          v50 = *(v12 + 8);
          v51 = v20;
          v48 = v18;
          v49 = v19;
          v21 = *(v12 + 10);
          v22 = *(v12 + 11);
          v23 = *(v12 + 12);
          v55 = v12[208];
          v53 = v22;
          v54 = v23;
          v52 = v21;
          v24 = *(v12 - 136);
          *(v12 + 4) = *(v12 - 152);
          *(v12 + 5) = v24;
          v25 = *(v12 - 168);
          *(v12 + 2) = *(v12 - 184);
          *(v12 + 3) = v25;
          v26 = *(v12 - 72);
          *(v12 + 8) = *(v12 - 88);
          *(v12 + 9) = v26;
          v27 = *(v12 - 104);
          *(v12 + 6) = *(v12 - 120);
          *(v12 + 7) = v27;
          *(v12 + 26) = *(v12 - 1);
          v28 = *(v12 - 24);
          *(v12 + 11) = *(v12 - 40);
          *(v12 + 12) = v28;
          *(v12 + 10) = *(v12 - 56);
          v29 = *(v12 - 200);
          *v12 = *(v12 - 216);
          *(v12 + 1) = v29;
          v30 = v43;
          *v13 = v42;
          *(v13 + 1) = v30;
          v31 = v44;
          v32 = v45;
          v33 = v47;
          *(v13 + 4) = v46;
          *(v13 + 5) = v33;
          *(v13 + 2) = v31;
          *(v13 + 3) = v32;
          v34 = v48;
          v35 = v49;
          v36 = v51;
          *(v13 + 8) = v50;
          *(v13 + 9) = v36;
          *(v13 + 6) = v34;
          *(v13 + 7) = v35;
          v37 = v52;
          v38 = v53;
          v39 = v54;
          v13[208] = v55;
          *(v13 + 11) = v38;
          *(v13 + 12) = v39;
          *(v13 + 10) = v37;
          v12 -= 216;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 216;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_81A18();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v42 = v7 + 4;
    *(&v42 + 1) = v6;
    sub_5E2C0(&v42, v41, v56, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_5E2C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2076C(v7);
      v7 = result;
    }

    v83 = v7 + 2;
    v84 = v7[2];
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v7[2 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_5E984((*a3 + 216 * *v85), (*a3 + 216 * *v87), (*a3 + 216 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
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
      v9 = *(*a3 + 216 * v6 + 104);
      v10 = 216 * v8;
      v11 = *a3 + 216 * v8;
      v12 = *(v11 + 104);
      v13 = v8 + 2;
      v14 = (v11 + 320);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[27];
        v14 += 27;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
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
        v17 = 216 * v6 - 216;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v113 = *(v21 + v10 + 160);
            v115 = *(v21 + v10 + 176);
            v117 = *(v21 + v10 + 192);
            v119 = *(v21 + v10 + 208);
            v105 = *(v21 + v10 + 96);
            v107 = *(v21 + v10 + 112);
            v109 = *(v21 + v10 + 128);
            v111 = *(v21 + v10 + 144);
            v97 = *(v21 + v10 + 32);
            v99 = *(v21 + v10 + 48);
            v101 = *(v21 + v10 + 64);
            v103 = *(v21 + v10 + 80);
            v93 = *(v21 + v10);
            v95 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0xD8uLL);
            *(v20 + 160) = v113;
            *(v20 + 176) = v115;
            *(v20 + 192) = v117;
            *(v20 + 208) = v119;
            *(v20 + 96) = v105;
            *(v20 + 112) = v107;
            *(v20 + 128) = v109;
            *(v20 + 144) = v111;
            *(v20 + 32) = v97;
            *(v20 + 48) = v99;
            *(v20 + 64) = v101;
            *(v20 + 80) = v103;
            *v20 = v93;
            *(v20 + 16) = v95;
          }

          ++v19;
          v17 -= 216;
          v10 += 216;
        }

        while (v19 < v18);
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
      result = sub_20780(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v36 = v7[2];
    v35 = v7[3];
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_20780((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v37;
    v38 = v7 + 4;
    v39 = &v7[2 * v36 + 4];
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = v7[4];
          v42 = v7[5];
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v7[2 * v37];
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = &v38[2 * v40];
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = &v7[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v38[2 * v40];
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
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

        v78 = &v38[2 * v40 - 2];
        v79 = *v78;
        v80 = &v38[2 * v40];
        v81 = v80[1];
        sub_5E984((*a3 + 216 * *v78), (*a3 + 216 * *v80), (*a3 + 216 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > v7[2])
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = v7[2];
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove(&v38[2 * v40], v80 + 2, 16 * (v82 - 1 - v40));
        v7[2] = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v38[2 * v37];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v7[2 * v37];
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = &v38[2 * v40];
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
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

  v22 = *a3;
  v23 = *a3 + 216 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 112) >= *(v26 + 104))
    {
LABEL_29:
      ++v6;
      v23 += 216;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 216;
    v114 = *(v26 + 160);
    v116 = *(v26 + 176);
    v118 = *(v26 + 192);
    v120 = *(v26 + 208);
    v106 = *(v26 + 96);
    v108 = *(v26 + 112);
    v110 = *(v26 + 128);
    v112 = *(v26 + 144);
    v98 = *(v26 + 32);
    v100 = *(v26 + 48);
    v102 = *(v26 + 64);
    v104 = *(v26 + 80);
    v94 = *v26;
    v96 = *(v26 + 16);
    v28 = *(v26 - 40);
    *(v26 + 160) = *(v26 - 56);
    *(v26 + 176) = v28;
    *(v26 + 192) = *(v26 - 24);
    *(v26 + 208) = *(v26 - 8);
    v29 = *(v26 - 104);
    *(v26 + 96) = *(v26 - 120);
    *(v26 + 112) = v29;
    v30 = *(v26 - 72);
    *(v26 + 128) = *(v26 - 88);
    *(v26 + 144) = v30;
    v31 = *(v26 - 168);
    *(v26 + 32) = *(v26 - 184);
    *(v26 + 48) = v31;
    v32 = *(v26 - 136);
    *(v26 + 64) = *(v26 - 152);
    *(v26 + 80) = v32;
    v33 = *(v26 - 200);
    *v26 = *(v26 - 216);
    *(v26 + 16) = v33;
    *(v27 + 160) = v114;
    *(v27 + 176) = v116;
    *(v27 + 192) = v118;
    *(v27 + 208) = v120;
    *(v27 + 96) = v106;
    *(v27 + 112) = v108;
    *(v27 + 128) = v110;
    *(v27 + 144) = v112;
    *(v27 + 32) = v98;
    *(v27 + 48) = v100;
    *(v27 + 64) = v102;
    *(v27 + 80) = v104;
    v26 -= 216;
    *v27 = v94;
    *(v27 + 16) = v96;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_5E984(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 216;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 216;
  if (v9 >= v11)
  {
    v16 = 216 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 216 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 216 && v6 > v7)
    {
LABEL_21:
      v5 -= 216;
      do
      {
        v17 = v5 + 216;
        if (*(v6 - 14) < *(v13 - 14))
        {
          v19 = v6 - 216;
          if (v17 != v6)
          {
            memmove(v5, v6 - 216, 0xD8uLL);
          }

          if (v13 <= v4 || (v6 -= 216, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        v18 = (v13 - 216);
        if (v17 != v13)
        {
          memmove(v5, v13 - 216, 0xD8uLL);
        }

        v5 -= 216;
        v13 -= 216;
      }

      while (v18 > v4);
      v13 = v18;
    }
  }

  else
  {
    v12 = 216 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 216)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*(v4 + 13) < *(v6 + 13))
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 216;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 216;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 216;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0xD8uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 216 * ((v13 - v4) / 216);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

void *sub_5EBE4(void *result)
{
  v1 = result[2];
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 4;
    v41 = result[2];
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      v8 = *(v6 + 11);
      v9 = *(v6 + 9);
      v52 = *(v6 + 10);
      v53 = v8;
      v10 = *(v6 + 11);
      v54 = *(v6 + 12);
      v11 = *(v6 + 7);
      v12 = *(v6 + 5);
      v48 = *(v6 + 6);
      v49 = v11;
      v13 = *(v6 + 7);
      v14 = *(v6 + 9);
      v50 = *(v6 + 8);
      v51 = v14;
      v15 = *(v6 + 3);
      v16 = *(v6 + 1);
      v44 = *(v6 + 2);
      v45 = v15;
      v17 = *(v6 + 3);
      v18 = *(v6 + 5);
      v46 = *(v6 + 4);
      v47 = v18;
      v19 = *(v6 + 1);
      v43[0] = *v6;
      v43[1] = v19;
      v66 = v52;
      v67 = v10;
      v68 = *(v6 + 12);
      v62 = v48;
      v63 = v13;
      v64 = v50;
      v65 = v9;
      v58 = v44;
      v59 = v17;
      v60 = v46;
      v61 = v12;
      v55 = *(v6 + 208);
      v69 = *(v6 + 208);
      v56 = v43[0];
      v57 = v16;
      if (v4)
      {
        result = sub_3C168(v43, v42);
        v2 = v7;
        v20 = __OFSUB__(v4--, 1);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v21 = v7[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        sub_147EC(&qword_B9700, &qword_8B0B8);
        v2 = swift_allocObject();
        v24 = (j__malloc_size(v2) - 32) / 224;
        v2[2] = v23;
        v2[3] = 2 * v24;
        v25 = v7[3] >> 1;
        v26 = 28 * v25;
        v27 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        v5 = &v2[28 * v25 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v26 + 4] && v2 == v7)
          {
            sub_3C168(v43, v42);
          }

          else
          {
            sub_3C168(v43, v42);
            memmove(v2 + 4, v7 + 4, v26 * 8);
          }

          v7[2] = 0;

          v1 = v41;
          v20 = __OFSUB__(v27, 1);
          v4 = v27 - 1;
          if (v20)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_3C168(v43, v42);

          v20 = __OFSUB__(v27, 1);
          v4 = v27 - 1;
          if (v20)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v28 = v66;
      v29 = v67;
      v30 = v68;
      *(v5 + 216) = v69;
      v31 = v56;
      *(v5 + 3) = v57;
      *(v5 + 1) = v31;
      v32 = v58;
      v33 = v59;
      v34 = v60;
      *(v5 + 11) = v61;
      *(v5 + 9) = v34;
      *(v5 + 7) = v33;
      *(v5 + 5) = v32;
      v35 = v62;
      v36 = v63;
      v37 = v64;
      *(v5 + 19) = v65;
      *(v5 + 17) = v37;
      *(v5 + 15) = v36;
      *(v5 + 13) = v35;
      *(v5 + 25) = v30;
      *(v5 + 23) = v29;
      *(v5 + 21) = v28;
      v5 += 28;
      v6 += 27;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v38 = v2[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v20 = __OFSUB__(v39, v4);
    v40 = v39 - v4;
    if (v20)
    {
      goto LABEL_30;
    }

    v2[2] = v40;
  }

  return v2;
}

uint64_t sub_5EED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5EF0C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 23);
  v11[10] = *(a1 + 21);
  v11[11] = v4;
  v11[12] = *(a1 + 25);
  v12 = *(a1 + 216);
  v5 = *(a1 + 15);
  v11[6] = *(a1 + 13);
  v11[7] = v5;
  v6 = *(a1 + 19);
  v11[8] = *(a1 + 17);
  v11[9] = v6;
  v7 = *(a1 + 7);
  v11[2] = *(a1 + 5);
  v11[3] = v7;
  v8 = *(a1 + 11);
  v11[4] = *(a1 + 9);
  v11[5] = v8;
  v9 = *(a1 + 3);
  v11[0] = *(a1 + 1);
  v11[1] = v9;
  return v2(v3, v11);
}

unint64_t sub_5EFA0()
{
  result = qword_B9688;
  if (!qword_B9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9688);
  }

  return result;
}

unint64_t sub_5EFF4()
{
  result = qword_B9690;
  if (!qword_B9690)
  {
    sub_14E2C(&qword_B9678, &qword_8AFE0);
    sub_5F08C();
    sub_5F13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9690);
  }

  return result;
}

unint64_t sub_5F08C()
{
  result = qword_B9698;
  if (!qword_B9698)
  {
    sub_14E2C(&qword_B96A0, &qword_8AFE8);
    sub_14F24(&qword_B96A8, &qword_B96B0, &qword_8AFF0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9698);
  }

  return result;
}

unint64_t sub_5F13C()
{
  result = qword_B96B8;
  if (!qword_B96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B96B8);
  }

  return result;
}

uint64_t sub_5F198()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_5F238()
{
  result = qword_B96F0;
  if (!qword_B96F0)
  {
    sub_14E2C(&qword_B96E8, &unk_8B028);
    sub_14F24(&qword_B95D8, &qword_B8FE0, &unk_8ACA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B96F0);
  }

  return result;
}

uint64_t sub_5F2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_147EC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_5F36C()
{
  result = qword_B9708;
  if (!qword_B9708)
  {
    sub_14E2C(&qword_B9710, &unk_8B0C0);
    sub_5EFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9708);
  }

  return result;
}

uint64_t sub_5F3F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5F43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5F494@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

void sub_5F4A0()
{
  v0._countAndFlagsBits = 0xD000000000000022;
  v0._object = 0x80000000000960C0;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BCFD8 = 0xD000000000000022;
  unk_BCFE0 = 0x80000000000960C0;
  byte_BCFE8 = 3;
  qword_BCFF0 = 1530557287;
  unk_BCFF8 = 0xE400000000000000;
}

void sub_5F534()
{
  v0._countAndFlagsBits = 0xD000000000000022;
  v0._object = 0x8000000000096030;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BD000 = 0xD000000000000022;
  *algn_BD008 = 0x8000000000096030;
  byte_BD010 = 3;
  qword_BD018 = 1530557287;
  unk_BD020 = 0xE400000000000000;
}

void sub_5F5C8()
{
  v0._countAndFlagsBits = 0xD000000000000024;
  v0._object = 0x8000000000096060;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BD028 = 0xD000000000000024;
  qword_BD030 = 0x8000000000096060;
  byte_BD038 = 3;
  qword_BD040 = 1530557287;
  unk_BD048 = 0xE400000000000000;
}

void sub_5F65C()
{
  v0._countAndFlagsBits = 0xD000000000000020;
  v0._object = 0x8000000000096090;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BD050 = 0xD000000000000020;
  *algn_BD058 = 0x8000000000096090;
  byte_BD060 = 3;
  qword_BD068 = 1530557287;
  unk_BD070 = 0xE400000000000000;
}

__n128 sub_5F6F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_5F704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_5F74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5F8FC()
{
  result = qword_B9718;
  if (!qword_B9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9718);
  }

  return result;
}

unint64_t sub_5F950()
{
  result = sub_5F970();
  qword_BD078 = result;
  return result;
}

unint64_t sub_5F970()
{
  sub_147EC(&qword_B9720, &unk_8B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8B2F0;
  *(v0 + 32) = sub_81928();
  *(v0 + 40) = v1;
  sub_605B0(v68);
  v2 = v68[7];
  *(v0 + 144) = v68[6];
  *(v0 + 160) = v2;
  *(v0 + 176) = v68[8];
  v3 = v68[3];
  *(v0 + 80) = v68[2];
  *(v0 + 96) = v3;
  v4 = v68[5];
  *(v0 + 112) = v68[4];
  *(v0 + 128) = v4;
  v5 = v68[1];
  *(v0 + 48) = v68[0];
  *(v0 + 64) = v5;
  *(v0 + 192) = sub_81928();
  *(v0 + 200) = v6;
  sub_60884(v69);
  v7 = v69[7];
  *(v0 + 304) = v69[6];
  *(v0 + 320) = v7;
  *(v0 + 336) = v69[8];
  v8 = v69[3];
  *(v0 + 240) = v69[2];
  *(v0 + 256) = v8;
  v9 = v69[5];
  *(v0 + 272) = v69[4];
  *(v0 + 288) = v9;
  v10 = v69[1];
  *(v0 + 208) = v69[0];
  *(v0 + 224) = v10;
  *(v0 + 352) = sub_81928();
  *(v0 + 360) = v11;
  if (qword_B7890 != -1)
  {
    swift_once();
  }

  v12 = xmmword_BD0D0;
  v76[6] = xmmword_BD0E0;
  v76[7] = xmmword_BD0F0;
  v13 = xmmword_BD0F0;
  v76[8] = xmmword_BD100;
  v14 = xmmword_BD090;
  v15 = xmmword_BD0A0;
  v76[2] = xmmword_BD0A0;
  v76[3] = xmmword_BD0B0;
  v16 = xmmword_BD0B0;
  v17 = xmmword_BD0C0;
  v76[5] = xmmword_BD0D0;
  v76[4] = xmmword_BD0C0;
  v18 = xmmword_BD080;
  v76[1] = xmmword_BD090;
  v76[0] = xmmword_BD080;
  *(v0 + 464) = xmmword_BD0E0;
  *(v0 + 480) = v13;
  *(v0 + 496) = xmmword_BD100;
  *(v0 + 400) = v15;
  *(v0 + 416) = v16;
  *(v0 + 432) = v17;
  *(v0 + 448) = v12;
  *(v0 + 368) = v18;
  *(v0 + 384) = v14;
  v19 = sub_81928();
  v20 = xmmword_BD0D0;
  v77[6] = xmmword_BD0E0;
  v77[7] = xmmword_BD0F0;
  v21 = xmmword_BD0F0;
  v77[8] = xmmword_BD100;
  v22 = xmmword_BD090;
  v23 = xmmword_BD0A0;
  v77[2] = xmmword_BD0A0;
  v77[3] = xmmword_BD0B0;
  v24 = xmmword_BD0B0;
  v25 = xmmword_BD0C0;
  v77[5] = xmmword_BD0D0;
  v77[4] = xmmword_BD0C0;
  v26 = xmmword_BD080;
  v77[1] = xmmword_BD090;
  v77[0] = xmmword_BD080;
  *(v0 + 624) = xmmword_BD0E0;
  *(v0 + 640) = v21;
  *(v0 + 656) = xmmword_BD100;
  *(v0 + 560) = v23;
  *(v0 + 576) = v24;
  *(v0 + 592) = v25;
  *(v0 + 608) = v20;
  *(v0 + 512) = v19;
  *(v0 + 520) = v27;
  *(v0 + 528) = v26;
  *(v0 + 544) = v22;
  *(v0 + 672) = sub_81928();
  *(v0 + 680) = v28;
  sub_3BE20(v76, v78);
  sub_3BE20(v77, v78);
  sub_60B84(v70);
  v29 = v70[7];
  *(v0 + 784) = v70[6];
  *(v0 + 800) = v29;
  *(v0 + 816) = v70[8];
  v30 = v70[3];
  *(v0 + 720) = v70[2];
  *(v0 + 736) = v30;
  v31 = v70[5];
  *(v0 + 752) = v70[4];
  *(v0 + 768) = v31;
  v32 = v70[1];
  *(v0 + 688) = v70[0];
  *(v0 + 704) = v32;
  *(v0 + 832) = sub_81928();
  *(v0 + 840) = v33;
  if (qword_B7898 != -1)
  {
    swift_once();
  }

  v34 = xmmword_BD160;
  v78[6] = xmmword_BD170;
  v78[7] = xmmword_BD180;
  v35 = xmmword_BD180;
  v78[8] = xmmword_BD190;
  v36 = xmmword_BD120;
  v37 = xmmword_BD130;
  v78[2] = xmmword_BD130;
  v78[3] = xmmword_BD140;
  v38 = xmmword_BD140;
  v39 = xmmword_BD150;
  v78[4] = xmmword_BD150;
  v78[5] = xmmword_BD160;
  v40 = xmmword_BD110;
  v78[0] = xmmword_BD110;
  v78[1] = xmmword_BD120;
  *(v0 + 944) = xmmword_BD170;
  *(v0 + 960) = v35;
  *(v0 + 976) = xmmword_BD190;
  *(v0 + 880) = v37;
  *(v0 + 896) = v38;
  *(v0 + 912) = v39;
  *(v0 + 928) = v34;
  *(v0 + 848) = v40;
  *(v0 + 864) = v36;
  *(v0 + 992) = sub_81928();
  *(v0 + 1000) = v41;
  sub_3BE20(v78, v75);
  sub_60CB4(v71);
  v42 = v71[4];
  *(v0 + 1088) = v71[5];
  v43 = v71[7];
  *(v0 + 1104) = v71[6];
  *(v0 + 1120) = v43;
  *(v0 + 1136) = v71[8];
  v44 = v71[3];
  *(v0 + 1040) = v71[2];
  *(v0 + 1056) = v44;
  *(v0 + 1072) = v42;
  v45 = v71[1];
  *(v0 + 1008) = v71[0];
  *(v0 + 1024) = v45;
  *(v0 + 1152) = sub_81928();
  *(v0 + 1160) = v46;
  sub_60DE4(v72);
  v47 = v72[4];
  *(v0 + 1248) = v72[5];
  v48 = v72[7];
  *(v0 + 1264) = v72[6];
  *(v0 + 1280) = v48;
  *(v0 + 1296) = v72[8];
  v49 = v72[0];
  *(v0 + 1184) = v72[1];
  v50 = v72[3];
  *(v0 + 1200) = v72[2];
  *(v0 + 1216) = v50;
  *(v0 + 1232) = v47;
  *(v0 + 1168) = v49;
  *(v0 + 1312) = sub_81928();
  *(v0 + 1320) = v51;
  sub_60F18(v73);
  v52 = v73[4];
  *(v0 + 1408) = v73[5];
  v53 = v73[7];
  *(v0 + 1424) = v73[6];
  *(v0 + 1440) = v53;
  *(v0 + 1456) = v73[8];
  v54 = v73[0];
  *(v0 + 1344) = v73[1];
  v55 = v73[3];
  *(v0 + 1360) = v73[2];
  *(v0 + 1376) = v55;
  *(v0 + 1392) = v52;
  *(v0 + 1328) = v54;
  *(v0 + 1472) = sub_81928();
  *(v0 + 1480) = v56;
  sub_6113C(v74);
  v57 = v74[4];
  *(v0 + 1568) = v74[5];
  v58 = v74[7];
  *(v0 + 1584) = v74[6];
  *(v0 + 1600) = v58;
  *(v0 + 1616) = v74[8];
  v59 = v74[0];
  *(v0 + 1504) = v74[1];
  v60 = v74[3];
  *(v0 + 1520) = v74[2];
  *(v0 + 1536) = v60;
  *(v0 + 1552) = v57;
  *(v0 + 1488) = v59;
  v61 = sub_3AAE4(v0);
  swift_setDeallocating();
  sub_147EC(&qword_B82F8, &qword_891D0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (_IsInternalInstall())
  {
    v62 = sub_81928();
    v64 = v63;
    if (qword_B78A0 != -1)
    {
      swift_once();
    }

    v75[6] = xmmword_BD200;
    v75[7] = unk_BD210;
    v75[8] = xmmword_BD220;
    v75[2] = xmmword_BD1C0;
    v75[3] = unk_BD1D0;
    v75[5] = unk_BD1F0;
    v75[4] = xmmword_BD1E0;
    v75[1] = *algn_BD1B0;
    v75[0] = xmmword_BD1A0;
    sub_3BE20(v75, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v61;
    sub_37B70(v75, v62, v64, isUniquelyReferenced_nonNull_native);

    return v67[0];
  }

  return v61;
}

double sub_5FF14()
{
  sub_5FF68(&v1);
  xmmword_BD0E0 = v7;
  xmmword_BD0F0 = v8;
  xmmword_BD100 = v9;
  xmmword_BD0A0 = v3;
  xmmword_BD0B0 = v4;
  xmmword_BD0C0 = v5;
  xmmword_BD0D0 = v6;
  result = *&v2;
  xmmword_BD080 = v1;
  xmmword_BD090 = v2;
  return result;
}

void sub_5FF68(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = [objc_opt_self() bundleWithIdentifier:v2];

  v4 = sub_81928();
  v6 = v5;
  v7 = sub_818E8();
  v8 = sub_818E8();
  v9 = STLocalizedString(v7);

  v10 = sub_81928();
  v12 = v11;

  v13 = sub_818E8();
  v14 = sub_818E8();
  v15 = STLocalizedString(v13);

  v16 = sub_81928();
  v18 = v17;

  v19 = sub_60A1C(&off_AAC68);
  sub_3BD1C(&unk_AAC88);

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = xmmword_8B300;
  *(a1 + 64) = 0;
  strcpy((a1 + 72), "com.apple.icq");
  *(a1 + 86) = -4864;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = v19;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

double sub_60188()
{
  sub_601DC(&v1);
  xmmword_BD170 = v7;
  xmmword_BD180 = v8;
  xmmword_BD190 = v9;
  xmmword_BD130 = v3;
  xmmword_BD140 = v4;
  xmmword_BD150 = v5;
  xmmword_BD160 = v6;
  result = *&v2;
  xmmword_BD110 = v1;
  xmmword_BD120 = v2;
  return result;
}

uint64_t sub_601DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  sub_81788();
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  v11 = sub_81928();
  v13 = v12;
  v14 = sub_60A1C(&off_AAC98);
  result = sub_3BD1C(&unk_AACB8);
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD00000000000002BLL;
  *(a1 + 56) = 0x8000000000096450;
  *(a1 + 64) = 3;
  *(a1 + 72) = v2;
  *(a1 + 80) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = v14;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

double sub_603B8()
{
  sub_6040C(&v1);
  xmmword_BD200 = v7;
  unk_BD210 = v8;
  xmmword_BD220 = v9;
  xmmword_BD1C0 = v3;
  unk_BD1D0 = v4;
  xmmword_BD1E0 = v5;
  unk_BD1F0 = v6;
  result = *&v2;
  xmmword_BD1A0 = v1;
  *algn_BD1B0 = v2;
  return result;
}

uint64_t sub_6040C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  v11 = sub_818E8();
  v12 = sub_818E8();
  v13 = STLocalizedString(v11);

  v14 = sub_81928();
  v16 = v15;

  result = sub_81928();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  *(a1 + 80) = v18;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_605B0@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 systemName];

  v5 = sub_81928();
  v36 = v6;
  v37 = v5;

  v7 = [v2 currentDevice];
  v8 = [v7 systemVersion];

  v9 = sub_81928();
  v32 = v10;
  v33 = v9;

  v11 = sub_81928();
  v34 = v12;
  v35 = v11;
  v13 = sub_818E8();
  v14 = sub_818E8();
  v15 = STLocalizedString(v13);

  v16 = sub_81928();
  v18 = v17;

  v19 = [v2 currentDevice];
  v20 = [v19 systemVersion];

  v21 = sub_81928();
  v23 = v22;

  v24 = sub_818E8();
  v25 = sub_818E8();
  v26 = STLocalizedString(v24);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_886D0;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_1A83C();
  *(v27 + 32) = v33;
  *(v27 + 40) = v32;
  v28 = sub_81938();
  v30 = v29;

  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v37;
  *(a1 + 24) = v36;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xD000000000000015;
  *(a1 + 80) = 0x8000000000096190;
  *(a1 + 88) = v21;
  *(a1 + 96) = v23;
  *(a1 + 104) = v28;
  *(a1 + 112) = v30;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

void sub_60884(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  v11 = sub_818E8();
  v12 = sub_818E8();
  v13 = STLocalizedString(v11);

  v14 = sub_81928();
  v16 = v15;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xD000000000000015;
  *(a1 + 80) = 0x8000000000096190;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

Swift::Int sub_60A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B7E80, &unk_8B320);
    v3 = sub_81CE8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_81E78();

      sub_81968();
      result = sub_81EB8();
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
          result = sub_81E18();
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

unint64_t sub_60B84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  result = sub_612B8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xD000000000000015;
  *(a1 + 80) = 0x8000000000096190;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = result;
  return result;
}

uint64_t sub_60CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  result = sub_81928();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD00000000000001CLL;
  *(a1 + 56) = 0x8000000000096430;
  *(a1 + 64) = 3;
  *(a1 + 72) = result;
  *(a1 + 80) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_60DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  result = sub_81928();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD000000000000029;
  *(a1 + 56) = 0x80000000000963C0;
  *(a1 + 64) = 3;
  *(a1 + 72) = result;
  *(a1 + 80) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

void sub_60F18(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "macbook.and.ipad";
  v4 = sub_81788();
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 4)
      {
        v3 = "ia in detail view";
        v2 = 0xD000000000000015;
      }

      else
      {
        v3 = "data entry in app list";
        v2 = 0xD000000000000022;
      }
    }
  }

  else if (v4)
  {
    v3 = "macbook.and.visionpro";
    v2 = 0xD000000000000010;
  }

  v5 = sub_81928();
  v22 = v6;
  v23 = v5;
  v7 = sub_81928();
  v9 = v8;
  v10 = sub_818E8();
  v11 = sub_818E8();
  v12 = STLocalizedString(v10);

  v13 = sub_81928();
  v15 = v14;

  v16 = sub_818E8();
  v17 = sub_818E8();
  v18 = STLocalizedString(v16);

  v19 = sub_81928();
  v21 = v20;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3 | 0x8000000000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = v23;
  *(a1 + 80) = v22;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

uint64_t sub_6113C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  if (qword_B7880 != -1)
  {
    swift_once();
  }

  v11 = qword_BD050;
  v12 = *algn_BD058;
  v14 = qword_BD068;
  v13 = unk_BD070;
  v15 = byte_BD060;
  sub_2092C(qword_BD050, *algn_BD058, byte_BD060);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v15;
  *(a1 + 72) = v14;
  *(a1 + 80) = v13;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

unint64_t sub_612B8()
{
  result = qword_B9728;
  if (!qword_B9728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B9728);
  }

  return result;
}

__n128 sub_61304(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_61330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_61378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_613EC(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a3;
  v44 = a2;
  v4 = sub_80BC8();
  v49 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v40 - v8;
  v47 = sub_80B38();
  v42 = *(v47 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v10 - 8);
  v45 = &v40 - v11;
  v12 = sub_147EC(&qword_B8568, &unk_89590);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_80B08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  sub_619A8(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_3ED38(v14);
    v22 = sub_80BA8();
    v23 = v49;
    (*(v49 + 16))(v7, v22, v4);
    v24 = sub_80BB8();
    v25 = sub_81B08();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "Navigation failed: destination nil", v26, 2u);
    }

    return (*(v23 + 8))(v7, v4);
  }

  else
  {
    v28 = v49;
    v41 = *(v16 + 32);
    v41(v21, v14, v15);
    if (v44)
    {
      v29 = sub_81AB8();
      (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
      (*(v16 + 16))(v19, v21, v15);
      v30 = v42;
      (*(v42 + 16))(v46, v48, v47);
      v31 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v32 = (v17 + *(v30 + 80) + v31) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      v41((v33 + v31), v19, v15);
      (*(v30 + 32))(v33 + v32, v46, v47);
      sub_68AE4(0, 0, v45, &unk_8B458, v33);
    }

    else
    {
      v34 = sub_80BA8();
      v35 = v28;
      v36 = v43;
      (*(v28 + 16))(v43, v34, v4);
      v37 = sub_80BB8();
      v38 = sub_81B08();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "Not protected: presenting content", v39, 2u);
      }

      (*(v35 + 8))(v36, v4);
      sub_62560();
      sub_80B28();
    }

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_619A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8568, &unk_89590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_61A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_80BC8();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = sub_80B38();
  v5[27] = v7;
  v8 = *(v7 - 8);
  v5[28] = v8;
  v5[29] = *(v8 + 64);
  v5[30] = swift_task_alloc();
  v9 = sub_80B08();
  v5[31] = v9;
  v10 = *(v9 - 8);
  v5[32] = v10;
  v5[33] = *(v10 + 64);
  v5[34] = swift_task_alloc();
  sub_147EC(&unk_B8240, &qword_88F50);
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_61BD8, 0, 0);
}

uint64_t sub_61BD8()
{
  v1 = [objc_opt_self() sharedGuard];
  v0[36] = v1;
  v0[2] = v0;
  v0[7] = v0 + 38;
  v0[3] = sub_61D18;
  v2 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B9738, &qword_8B460);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_62254;
  v0[13] = &unk_AC970;
  v0[14] = v2;
  [v1 authenticateUnconditionallyWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_61D18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_62034;
  }

  else
  {
    v2 = sub_61E28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_61E28()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v17 = v5;
  v18 = *(v0 + 264);
  v6 = *(v0 + 224);
  v19 = v1;
  v7 = *(v0 + 216);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);

  v10 = sub_81AB8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v4 + 16))(v2, v9, v3);
  (*(v6 + 16))(v5, v8, v7);
  sub_81A88();
  v11 = sub_81A78();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v18 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v4 + 32))(v14 + v12, v2, v3);
  (*(v6 + 32))(v14 + v13, v17, v7);
  sub_68AE4(0, 0, v19, &unk_8B470, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_62034(uint64_t a1)
{
  v23 = v1;
  v2 = v1[36];
  v4 = v1[25];
  v3 = v1[26];
  v5 = v1[24];
  swift_willThrow();

  v6 = sub_80BA8();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = sub_80BB8();
  v8 = sub_81B18();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[25];
    v21 = v1[26];
    v10 = v1[24];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = sub_81E48();
    v15 = sub_34588(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v7, v8, "Authentication Error: %{public}s", v11, 0xCu);
    sub_20FD0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v1[25];
    v16 = v1[26];
    v18 = v1[24];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v1[1];

  return v19();
}

uint64_t sub_62254(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_62320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_80BC8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_81A88();
  v5[7] = sub_81A78();
  v8 = sub_81A58();

  return _swift_task_switch(sub_62414, v8, v7);
}

uint64_t sub_62414()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  v4 = sub_80BA8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_80BB8();
  v6 = sub_81B08();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Presenting protected content", v7, 2u);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);
  sub_80B08();
  sub_62560();
  sub_80B28();

  v11 = v0[1];

  return v11();
}

unint64_t sub_62560()
{
  result = qword_B9730;
  if (!qword_B9730)
  {
    sub_80B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9730);
  }

  return result;
}

uint64_t sub_625BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_80B08() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_80B38() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_16268;

  return sub_61A18(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_62724()
{
  v1 = sub_80B08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_80B38();
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

uint64_t sub_62874(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_80B08() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_80B38() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22EB0;

  return sub_62320(a1, v10, v11, v1 + v6, v1 + v9);
}

void sub_629C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Application(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  v8 = a1[1];
  if (sub_81928() == v7 && v9 == v8)
  {

LABEL_25:
    if (__OFADD__(a1[6], a1[7]))
    {
      __break(1u);
    }

    else
    {
      sub_81928();
      v17 = [objc_opt_self() currentDevice];
      v18 = [v17 systemName];

      sub_81928();
      if (qword_B78B8 == -1)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

LABEL_53:
    swift_once();
    goto LABEL_27;
  }

  v11 = sub_81E18();

  if (v11)
  {
    goto LABEL_25;
  }

  if (sub_81928() == v7 && v12 == v8)
  {

LABEL_31:
    if (__OFADD__(a1[6], a1[7]))
    {
      __break(1u);
    }

    else
    {
      sub_81928();
      v28 = sub_818E8();
      v29 = sub_818E8();
      v30 = STLocalizedString(v28);

      sub_81928();
      if (qword_B78C0 == -1)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_53;
  }

  v14 = sub_81E18();

  if (v14)
  {
    goto LABEL_31;
  }

  if ((v7 != 0xD000000000000013 || 0x8000000000096820 != v8) && (sub_81E18() & 1) == 0 && (v7 != 0xD000000000000014 || 0x8000000000096840 != v8) && (sub_81E18() & 1) == 0 && (v7 != 0x6C7070612E6D6F63 || v8 != 0xEF636973754D2E65) && (sub_81E18() & 1) == 0 && (v7 != 0xD000000000000019 || 0x8000000000094730 != v8))
  {
    v31 = sub_81E18();
    v32 = v7 == 0x6C7070612E6D6F63 && v8 == 0xEC00000076742E65;
    v33 = v32;
    if ((v31 & 1) == 0 && !v33 && (sub_81E18() & 1) == 0 && (v7 != 0xD000000000000012 || 0x8000000000096860 != v8) && (sub_81E18() & 1) == 0 && (v7 != 0xD000000000000010 || 0x8000000000096880 != v8) && (sub_81E18() & 1) == 0)
    {
      if (sub_81928() != v7 || v34 != v8)
      {
        goto LABEL_57;
      }

LABEL_51:

      goto LABEL_22;
    }
  }

  while (1)
  {
LABEL_22:
    sub_208C8(a1, v6);
    v15 = *(v6 + 6);
    v16 = *(v6 + 7);
    a1 = (v15 + v16);
    if (!__OFADD__(v15, v16))
    {

      sub_81798();
      sub_2095C(v6);
      goto LABEL_29;
    }

    __break(1u);
LABEL_57:
    v35 = sub_81E18();

    if ((v35 & 1) == 0)
    {
      if (sub_81928() == v7 && v36 == v8)
      {
        goto LABEL_51;
      }

      v37 = sub_81E18();

      if ((v37 & 1) == 0)
      {
        if (sub_81928() == v7 && v38 == v8)
        {
          goto LABEL_51;
        }

        v7 = sub_81E18();

        if ((v7 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v39 = sub_818E8();
  v40 = sub_818E8();
  v41 = STLocalizedString(v39);

  sub_81928();
  if (__OFADD__(a1[6], a1[7]))
  {
    __break(1u);
    return;
  }

LABEL_28:
  sub_81798();
LABEL_29:
  v19 = v50;
  v20 = v49;
  v21 = v48;
  v22 = v47;
  v23 = v46;
  v24 = v45;
  v26 = v43;
  v25 = v44;
  v27 = *&v42[24];
  *a2 = *&v42[8];
  *(a2 + 16) = v27;
  *(a2 + 32) = v26;
  *(a2 + 40) = v25;
  *(a2 + 48) = v24;
  *(a2 + 49) = v23;
  *(a2 + 56) = v22;
  *(a2 + 64) = v21;
  *(a2 + 72) = v20;
  *(a2 + 80) = v19;
}

uint64_t sub_630CC()
{
  swift_getKeyPath();
  sub_64AE4();
  sub_80A68();

  return *(v0 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud);
}

uint64_t sub_63144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_64AE4();
  sub_80A68();

  *a2 = *(v3 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud);
  return result;
}

uint64_t sub_631EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_64AE4();
    sub_80A58();
  }

  return result;
}

uint64_t sub_632D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_147EC(&unk_B8240, &qword_88F50);
  v4[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_633B0;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_633B0()
{

  return _swift_task_switch(sub_634AC, 0, 0);
}

uint64_t sub_634AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_81AB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_68AE4(0, 0, v2, &unk_8B518, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_635AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_80BC8();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_63684, 0, 0);
}

uint64_t sub_63684(uint64_t a1)
{
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  v5 = sub_80BA8();
  v1[9] = v5;
  v6 = *(v4 + 16);
  v1[10] = v6;
  v1[11] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_80BB8();
  v8 = sub_81B38();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Attempting to update VisionProData iCloud sync status.", v9, 2u);
  }

  v10 = v1[8];
  v11 = v1[4];
  v12 = v1[5];

  v13 = *(v12 + 8);
  v1[12] = v13;
  v13(v10, v11);
  v14 = swift_task_alloc();
  v1[13] = v14;
  *v14 = v1;
  v14[1] = sub_637FC;

  return EnrollmentAssetService.isCloudSyncEnabled()();
}

uint64_t sub_637FC(char a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_63BB8;
  }

  else
  {
    v4 = sub_63914;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_63914()
{
  (*(v0 + 80))(*(v0 + 56), *(v0 + 72), *(v0 + 32));
  v1 = sub_80BB8();
  v2 = sub_81B38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 128);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_0, v1, v2, "VisionProData icloud sync status is %{BOOL}d.", v4, 8u);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);

  v5(v6, v7);
  sub_81A88();
  *(v0 + 120) = sub_81A78();
  v9 = sub_81A58();

  return _swift_task_switch(sub_63A70, v9, v8);
}

uint64_t sub_63A70()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 24);

  if (v1 == *(v2 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud))
  {
    *(v2 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) = *(v0 + 128);
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_64AE4();
    sub_80A58();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_63BB8()
{
  (*(v0 + 80))(*(v0 + 48), *(v0 + 72), *(v0 + 32));
  v1 = sub_80BB8();
  v2 = sub_81B38();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v1, v2, "Failed updating VisionProData iCloud sync status", v7, 2u);
  }

  v4(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_63CF8()
{
  v1[17] = v0;
  v2 = sub_80C28();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_80BC8();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_63E2C, 0, 0);
}

uint64_t sub_63E2C()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[15] = v1;
  sub_64AE4();
  sub_80A68();

  if (*(v1 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud))
  {
    sub_147EC(&qword_B9898, qword_8B548);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_886D0;
    *(inited + 32) = sub_81928();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v3;
    *(inited + 48) = 0xD00000000000004DLL;
    *(inited + 56) = 0x8000000000096970;
    sub_3B59C(inited);
    swift_setDeallocating();
    sub_64B3C(inited + 32);
    v4 = objc_allocWithZone(NSError);
    v5 = sub_818E8();
    isa = sub_81828().super.isa;

    [v4 initWithDomain:v5 code:0 userInfo:isa];

    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[25];
    v10 = v0[21];
    v11 = v0[22];
    v12 = sub_80BA8();
    v0[26] = v12;
    v13 = *(v11 + 16);
    v0[27] = v13;
    v0[28] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v10);
    v14 = sub_80BB8();
    v15 = sub_81B38();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Attempting to remove VisionPro local data from this device.", v16, 2u);
    }

    v17 = v0[25];
    v18 = v0[21];
    v19 = v0[22];
    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[18];

    v23 = *(v19 + 8);
    v0[29] = v23;
    v23(v17, v18);
    (*(v21 + 104))(v20, enum case for EnrollmentDataLocation.local(_:), v22);
    v24 = swift_task_alloc();
    v0[30] = v24;
    *v24 = v0;
    v24[1] = sub_641C0;
    v25 = v0[20];

    return EnrollmentAssetService.deleteEnrollmentData(from:)(v25);
  }
}

uint64_t sub_641C0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[19] + 8))(v2[20], v2[18]);
  if (v0)
  {
    v3 = sub_64468;
  }

  else
  {
    v3 = sub_64328;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_64328()
{
  (*(v0 + 216))(*(v0 + 192), *(v0 + 208), *(v0 + 168));
  v1 = sub_80BB8();
  v2 = sub_81B38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "VisionPro local data was removed from this device successfuly.", v3, 2u);
  }

  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);

  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_64468()
{
  v17 = v0;
  (*(v0 + 216))(*(v0 + 184), *(v0 + 208), *(v0 + 168));
  swift_errorRetain();
  v1 = sub_80BB8();
  v2 = sub_81B38();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = *(v0 + 232);
    v3 = *(v0 + 184);
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_81E48();
    v9 = sub_34588(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "VisionPro local data removal failed for reason %s.", v5, 0xCu);
    sub_20FD0(v6);

    v15(v3, v4);
  }

  else
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 184);
    v12 = *(v0 + 168);

    v10(v11, v12);
  }

  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_64678()
{
  v1 = OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel_enrollmentAssetService;
  v2 = sub_80C18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel___observationRegistrar;
  v4 = sub_80AA8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisionProDataApplicationModel(uint64_t a1)
{
  result = qword_B9780;
  if (!qword_B9780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_647A8(uint64_t a1)
{
  result = sub_80C18();
  if (v2 <= 0x3F)
  {
    result = sub_80AA8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_6487C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_648BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16268;

  return sub_635AC(a1, v4, v5, v6);
}

uint64_t sub_64970()
{
  v0 = sub_818E8();
  v1 = sub_818E8();
  v2 = STLocalizedString(v0);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_886D0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1A83C();
  *(v3 + 32) = 0xD000000000000055;
  *(v3 + 40) = 0x8000000000096AC0;
  v4 = sub_818F8();
  v6 = v5;

  qword_BD230 = v4;
  *algn_BD238 = v6;
  return result;
}

unint64_t sub_64AE4()
{
  result = qword_B9890;
  if (!qword_B9890)
  {
    type metadata accessor for VisionProDataApplicationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9890);
  }

  return result;
}

uint64_t sub_64B3C(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8330, &qword_89300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_64D40(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_64E08;

  return sub_65C78(v4);
}

uint64_t sub_64E08(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id sub_64F90(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppRemovability();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_64FE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22EB0;

  return v6();
}

uint64_t sub_650D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_16268;

  return v7();
}

uint64_t sub_651B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_22904(a3, v23 - v10);
  v12 = sub_81AB8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2289C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_81AA8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_81A58();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_81958() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2289C(a3);

    return v21;
  }

LABEL_8:
  sub_2289C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_65474(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_6556C;

  return v6(a1);
}

uint64_t sub_6556C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_65684()
{
  v1 = [*(v0 + 152) bundleIdentifier];
  if (v1 && (v2 = v1, v3 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v1], *(v0 + 160) = v3, v2, v3))
  {
    v4 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_6583C;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_147EC(&qword_B98C8, &qword_8B588);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21F04;
    *(v0 + 104) = &unk_AC9E8;
    *(v0 + 112) = v5;
    [v4 removabilityForAppWithIdentity:v3 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_6583C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_659B8;
  }

  else
  {
    v2 = sub_6594C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6594C()
{
  v1 = *(v0 + 144) == 1;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_659B8(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

id sub_65A34(void *a1)
{
  result = [a1 bundleIdentifier];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_81928();
  v6 = v5;

  if ([a1 isManagedAppDistributor] & 1) != 0 || (v4 == 0xD000000000000012 ? (v7 = 0x8000000000094050 == v6) : (v7 = 0), v7 || (sub_81E18()))
  {
    v8 = sub_80AC8();
    if (v8[2])
    {
      v10 = v8[4];
      v9 = v8[5];

      if (v10 == v4 && v9 == v6)
      {

        return &dword_0 + 1;
      }

      else
      {
        v12 = sub_81E18();

        return (v12 & 1);
      }
    }

LABEL_15:

    return 0;
  }

  if (![a1 supportedDefaultAppCategories])
  {
    goto LABEL_15;
  }

  v18 = 0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;

    v17 = 0;
    v14 = [v13 getDefaultApplicationCategories:&v18 withCurrentDefaultApplication:a1 error:&v17];

    if (v14)
    {
      v15 = v17;
    }

    else
    {
      v16 = v17;
      sub_80958();

      swift_willThrow();
    }

    return (v18 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_65C98()
{
  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
LABEL_4:
    v4 = *(v0 + 8);

    return v4(0);
  }

  v2 = v1;
  if ([*(v0 + 16) isDeletableSystemApplication])
  {
    v3 = [v2 isSystemAppRemovalAllowed];

    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = [v2 isAppRemovalAllowed];

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_65DD4;
  v8 = *(v0 + 16);

  return sub_65664(v8);
}

uint64_t sub_65DD4(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_65ED4, 0, 0);
}

uint64_t sub_65ED4()
{
  if (*(v0 + 32) == 1)
  {
    v1 = sub_65A34(*(v0 + 16)) ^ 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_65F68()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_65FA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_16268;

  return sub_64D40(v2, v3);
}

uint64_t sub_66060()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22EB0;

  return sub_64FE8(v2, v3, v4);
}

uint64_t sub_66120()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_66160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_650D0(a1, v4, v5, v6);
}

uint64_t sub_6622C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_66264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22EB0;

  return sub_65474(a1, v4);
}

uint64_t sub_6631C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_16268;

  return sub_65474(a1, v4);
}

uint64_t sub_66408@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_66D8C(v7, &v6);
}

uint64_t sub_66448()
{
  v1 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_80C68();

    sub_147EC(&qword_B8190, &qword_88E88);
    sub_14F24(&qword_B98D0, &qword_B8190, &qword_88E88, &protocol conformance descriptor for [A]);
    sub_66CE4();
    sub_66D38();
    return sub_81608();
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_1635C();
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_6659C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_147EC(&qword_B98F8, &unk_8B760);
  v4 = __chkstk_darwin(v3 - 8);
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v39 = sub_147EC(&qword_B8688, &qword_899D8);
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v37 - v9;
  v38 = sub_147EC(&unk_B86A0, &unk_8B770);
  v11 = __chkstk_darwin(v38);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v44 = a1;
  v40 = a1;
  v43 = a1;
  sub_432C8();
  sub_814B8();
  sub_147EC(&qword_B8698, &unk_899E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_886E0;
  v20 = sub_811A8();
  *(inited + 32) = v20;
  v21 = sub_811B8();
  *(inited + 33) = v21;
  v22 = sub_811C8();
  sub_811C8();
  if (sub_811C8() != v20)
  {
    v22 = sub_811C8();
  }

  sub_811C8();
  if (sub_811C8() != v21)
  {
    v22 = sub_811C8();
  }

  sub_80CC8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v8 + 32))(v16, v10, v39);
  v31 = &v16[*(v38 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_43324(v16, v18);
  *v7 = sub_81008();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v32 = sub_147EC(&qword_B9900, &qword_8B780);
  __chkstk_darwin(v32);
  *(&v37 - 2) = v40;
  sub_147EC(&qword_B9908, &qword_8B788);
  sub_66F60();
  sub_814B8();
  sub_14F6C(v18, v13, &unk_B86A0, &unk_8B770);
  v33 = v42;
  sub_14F6C(v7, v42, &qword_B98F8, &unk_8B760);
  v34 = v41;
  sub_14F6C(v13, v41, &unk_B86A0, &unk_8B770);
  v35 = sub_147EC(&qword_B9918, &qword_8B790);
  sub_14F6C(v33, v34 + *(v35 + 48), &qword_B98F8, &unk_8B760);
  sub_14FD4(v7, &qword_B98F8, &unk_8B760);
  sub_14FD4(v18, &unk_B86A0, &unk_8B770);
  sub_14FD4(v33, &qword_B98F8, &unk_8B760);
  return sub_14FD4(v13, &unk_B86A0, &unk_8B770);
}

uint64_t sub_66A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = 2;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_66AF0@<X0>(uint64_t a2@<X8>)
{
  sub_14ED0();

  v3 = sub_81288();
  v5 = v4;
  v7 = v6;
  sub_811E8();
  v8 = sub_81258();
  v10 = v9;
  v12 = v11;

  sub_15034(v3, v5, v7 & 1);

  sub_81448();
  v13 = sub_81228();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_15034(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

double sub_66C1C@<D0>(uint64_t a2@<X8>)
{
  sub_81688();
  sub_80D68();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  result = *&v8;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_66CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return sub_6659C(v5, a1);
}

unint64_t sub_66CE4()
{
  result = qword_B98D8;
  if (!qword_B98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B98D8);
  }

  return result;
}

unint64_t sub_66D38()
{
  result = qword_B98E0;
  if (!qword_B98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B98E0);
  }

  return result;
}

__n128 sub_66DE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_66DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_66E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_66EA8()
{
  result = qword_B98E8;
  if (!qword_B98E8)
  {
    sub_14E2C(&qword_B98F0, &qword_8B708);
    sub_66CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B98E8);
  }

  return result;
}

unint64_t sub_66F60()
{
  result = qword_B9910;
  if (!qword_B9910)
  {
    sub_14E2C(&qword_B9908, &qword_8B788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9910);
  }

  return result;
}

unint64_t sub_66FF0()
{
  result = qword_B9920;
  if (!qword_B9920)
  {
    sub_14E2C(&qword_B9928, &qword_8B7C8);
    sub_14F24(&qword_B9930, &qword_B9938, &unk_8B7D0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9920);
  }

  return result;
}

uint64_t sub_670DC(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_813F8();
  *a3 = result;
  return result;
}

uint64_t AsyncButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v12 = type metadata accessor for AsyncButton(0, a5, a6, a4);
  v13 = a7 + *(v12 + 44);
  sub_814C8();
  *v13 = v16;
  *(v13 + 1) = v17;
  sub_67288(a1, a7 + *(v12 + 40));
  *a7 = a2;
  a7[1] = a3;

  a4(v14);

  return sub_672F8(a1);
}

uint64_t sub_67288(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8780, &qword_8B7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_672F8(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8780, &qword_8B7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AsyncButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_147EC(&qword_B8780, &qword_8B7E0);
  __chkstk_darwin(v6 - 8);
  v8 = v31 - v7;
  v31[1] = v31 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_81578();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v32 = v31 - v12;
  sub_14E2C(&qword_B9940, &unk_8B7E8);
  v13 = sub_80E28();
  v34 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v33 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v35 = v31 - v16;
  sub_67288(v2 + *(a1 + 40), v8);
  (*(v4 + 16))(v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v10;
  (*(v4 + 32))(v18 + v17, v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v38 = v9;
  v39 = v10;
  v40 = v2;
  v19 = v32;
  sub_81518();
  v20 = (v2 + *(a1 + 44));
  v21 = *v20;
  v22 = *(v20 + 1);
  v43 = v21;
  v44 = v22;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814D8();
  WitnessTable = swift_getWitnessTable();
  v24 = v33;
  sub_813D8();
  (*(v36 + 8))(v19, v11);
  v25 = sub_68058();
  v41 = WitnessTable;
  v42 = v25;
  swift_getWitnessTable();
  v27 = v34;
  v26 = v35;
  v28 = *(v34 + 16);
  v28(v35, v24, v13);
  v29 = *(v27 + 8);
  v29(v24, v13);
  v28(v37, v26, v13);
  return (v29)(v26, v13);
}

uint64_t sub_6778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v11 - 8);
  v13 = &v22[-v12];
  v14 = (a1 + *(v7 + 44));
  v15 = *v14;
  v16 = *(v14 + 1);
  v22[16] = v15;
  v23 = v16;
  v22[15] = 1;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v17 = sub_81AB8();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v8 + 16))(v10, a1, v7);
  sub_81A88();
  v18 = sub_81A78();
  v19 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v8 + 32))(&v20[v19], v10, v7);
  sub_68AE4(0, 0, v13, &unk_8B890, v20);
}

uint64_t sub_679D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AsyncButton(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 36), v5);
  v10 = *(v6 + 40);
  v11 = sub_80CB8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v8 + v10, v11);
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_67B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AsyncButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_6778C(v9, v5, v6, v7);
}

uint64_t sub_67BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_81A88();
  v6[7] = sub_81A78();
  v8 = sub_81A58();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_67C74, v8, v7);
}

uint64_t sub_67C74()
{
  v3 = (**(v0 + 32) + ***(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_67D60;

  return v3();
}

uint64_t sub_67D60()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_67E80, v3, v2);
}

uint64_t sub_67E80()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v5 = (v3 + *(type metadata accessor for AsyncButton(0, v2, v1, v4) + 44));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 88) = 0;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_67F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AsyncButton(0, v9, v10, v11);
  v13 = *(v6 + 16);
  v13(v8, a1 + *(v12 + 36), a2);
  v13(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_68058()
{
  result = qword_B9948[0];
  if (!qword_B9948[0])
  {
    sub_14E2C(&qword_B9940, &unk_8B7E8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_B9948);
  }

  return result;
}

void sub_6810C(uint64_t a1)
{
  sub_3D760();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_68700(319);
      if (v3 <= 0x3F)
      {
        sub_68758();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_681C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_80CB8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = 7;
  if (!v10)
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v19 = ((v18 + v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          LODWORD(v20) = *a1;
        }

        return v13 + (v20 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v28 = (a1 + v14 + 16) & ~v14;
  if (v7 != v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(v28, v7, v5);
}

void sub_68430(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_80CB8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    if (((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v20 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v20;
    }

    if (v21)
    {
      v25 = ~v20 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v10)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v21) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) != 0)
  {
    v26 = (a1 + v15 + 16) & ~v15;
    if (v9 == v20)
    {
      v27 = *(v30 + 56);

      v27(v26, a2, v9, v7);
    }

    else if (v13 >= 2)
    {
      v28 = *(v12 + 56);
      v29 = (v26 + v16 + v17) & ~v17;

      v28(v29, (a2 + 1));
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

void sub_68700(uint64_t a1)
{
  if (!qword_B99D0)
  {
    sub_80CB8();
    v1 = sub_81B98();
    if (!v2)
    {
      atomic_store(v1, &qword_B99D0);
    }
  }
}

void sub_68758()
{
  if (!qword_B8D98)
  {
    v0 = sub_81508();
    if (!v1)
    {
      atomic_store(v0, &qword_B8D98);
    }
  }
}

uint64_t sub_687A8(void *a1)
{
  sub_81578();
  sub_14E2C(&qword_B9940, &unk_8B7E8);
  sub_80E28();
  swift_getWitnessTable();
  sub_68058();
  return swift_getWitnessTable();
}

uint64_t sub_6884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AsyncButton(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 36), v5);
  v10 = *(v6 + 40);
  v11 = sub_80CB8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v8 + v10, v11);
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_689D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for AsyncButton(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_16268;

  return sub_67BD8(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_68AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_14F6C(a3, v25 - v10, &unk_B8240, &qword_88F50);
  v12 = sub_81AB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_14FD4(v11, &unk_B8240, &qword_88F50);
  }

  else
  {
    sub_81AA8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_81A58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_81958() + 32;
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

      sub_14FD4(a3, &unk_B8240, &qword_88F50);

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

  sub_14FD4(a3, &unk_B8240, &qword_88F50);
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

uint64_t sub_68DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_14F6C(a3, v25 - v10, &unk_B8240, &qword_88F50);
  v12 = sub_81AB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_14FD4(v11, &unk_B8240, &qword_88F50);
  }

  else
  {
    sub_81AA8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_81A58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_81958() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_147EC(&qword_B9C20, &qword_8BAD0);
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

      sub_14FD4(a3, &unk_B8240, &qword_88F50);

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

  sub_14FD4(a3, &unk_B8240, &qword_88F50);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_147EC(&qword_B9C20, &qword_8BAD0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_690F8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_80C68();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_69178(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_80C78();
}

id sub_692E0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Wrapper();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_6936C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v53 = a1;
  v58 = a3;
  v5 = sub_810E8();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_147EC(&qword_B9BE0, &unk_8BA00);
  __chkstk_darwin(v7);
  v9 = (&v50 - v8);
  v56 = sub_147EC(&qword_B9BD8, &qword_8B9F8);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v61 = &v50 - v10;
  *v9 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v11 = (v9 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20));
  type metadata accessor for StorageShared(0);
  sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  *v11 = sub_80E68();
  v11[1] = v12;
  v66 = a1;
  v67 = a2;
  sub_147EC(&qword_B9C00, &qword_8BA20);
  sub_814D8();
  v13 = v62;
  swift_getKeyPath();
  v66 = v13;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
  sub_80A68();

  v14 = *(v13 + 16);

  v15 = sub_80C38();
  v16 = *(v7 + 36);
  v51 = v7;
  v17 = (v9 + v16);
  *v17 = v15;
  v17[1] = v14;
  v18 = sub_818E8();
  v19 = sub_818E8();
  v20 = STLocalizedString(v18);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_886D0;
  v22 = localizedDeviceName();
  v23 = sub_81928();
  v25 = v24;

  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1A83C();
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  v26 = sub_81938();
  v28 = v27;

  v66 = v26;
  v67 = v28;
  v52 = sub_6C1CC();
  v29 = sub_14ED0();
  sub_81358();

  sub_14FD4(v9, &qword_B9BE0, &unk_8BA00);
  v62 = v53;
  v63 = v54;
  sub_814F8();
  v30 = v66;
  v31 = v67;
  v32 = v68;
  swift_getKeyPath();
  v75 = v30;
  v76 = v31;
  v77 = v32;
  sub_147EC(&qword_B9C08, &qword_8BA58);
  sub_815C8();

  v33 = v72;
  v34 = v73;
  v35 = v74;

  swift_getKeyPath();
  v69 = v33;
  v70 = v34;
  v71 = v35;
  sub_147EC(&qword_B9C10, &qword_8BA88);
  sub_815C8();

  v36 = v55;
  sub_810D8();
  v37 = sub_818E8();
  v38 = sub_818E8();
  v39 = STLocalizedString(v37);

  v40 = sub_81928();
  v42 = v41;

  v62 = v40;
  v63 = v42;
  v43 = sub_81288();
  v45 = v44;
  v62 = v51;
  v63 = &type metadata for String;
  LOBYTE(v35) = v46 & 1;
  v64 = v52;
  v65 = v29;
  swift_getOpaqueTypeConformance2();
  v47 = v56;
  v48 = v61;
  sub_812E8();
  sub_15034(v43, v45, v35);

  (*(v59 + 8))(v36, v60);
  return (*(v57 + 8))(v48, v47);
}

id sub_69A7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
  sub_80A68();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_69B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_80DD8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_809D8();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_81A88();
  v4[16] = sub_81A78();
  v8 = sub_81A58();

  return _swift_task_switch(sub_69C88, v8, v7);
}

uint64_t sub_69C88()
{
  v1 = v0[15];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v15 = v0[10];
  v6 = v0[8];
  v14 = v0[13];

  v0[2] = v6;
  v0[3] = v5;
  sub_147EC(&qword_B9C00, &qword_8BA20);
  sub_814D8();
  v7 = v0[4];
  swift_getKeyPath();
  v0[5] = v7;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
  sub_80A68();

  v8 = *(v7 + 16);

  sub_81718();
  type metadata accessor for DeepLinkParameters(0);
  v9 = swift_allocObject();
  sub_80A98();
  v9[2] = sub_3A9D0(_swiftEmptyArrayStorage);
  v10 = sub_80988();
  v11 = sub_6B9C4(v10);
  (*(v2 + 8))(v1, v14);
  v9[3] = v11;
  sub_324E4(v9);

  sub_81708();
  sub_81728();
  (*(v4 + 8))(v3, v15);

  v12 = v0[1];

  return v12();
}

uint64_t sub_69E9C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_147EC(&qword_B9BC8, &qword_8B9E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  sub_147EC(&qword_B9BD0, &qword_8B9F0);
  v9 = sub_14E2C(&qword_B9BD8, &qword_8B9F8);
  v10 = sub_14E2C(&qword_B9BE0, &unk_8BA00);
  v11 = sub_6C1CC();
  v12 = sub_14ED0();
  v17 = v10;
  v18 = &type metadata for String;
  v19 = v11;
  v20 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v9;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_81738();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v6;
  sub_14F24(&qword_B9BF8, &qword_B9BC8, &qword_8B9E8, &protocol conformance descriptor for SettingsPane<A>);

  sub_816F8();
  return (*(v3 + 8))(v5, v2);
}

void *sub_6A108@<X0>(void *a1@<X8>)
{
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  sub_6BF6C(qword_BCF88);
  type metadata accessor for StorageSharedReference(0);
  result = sub_814C8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

id sub_6A194()
{
  swift_getKeyPath();
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
  sub_80A68();

  v1 = *(v0 + 16);

  return v1;
}

void sub_6A244(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for StorageShared(0);
  v5 = v4;
  v6 = sub_81B88();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
    sub_80A58();
  }
}

uint64_t sub_6A3A0()
{
  v1 = v0;
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC17StorageSettingsUI22StorageSharedReference___observationRegistrar;
  v14 = v0;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
  sub_80A68();

  v6 = *(v0 + 16);
  v7 = sub_81AB8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_81A88();
  v8 = v6;
  v9 = sub_81A78();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_68AE4(0, 0, v4, &unk_893C0, v10);

  v11 = sub_80AA8();
  (*(*(v11 - 8) + 8))(v1 + v5, v11);
  return swift_deallocClassInstance();
}

uint64_t sub_6A5E4(uint64_t a1)
{
  result = sub_80AA8();
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

unint64_t sub_6A688()
{
  result = qword_B9BB8;
  if (!qword_B9BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9BB8);
  }

  return result;
}

id sub_6A6F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20));
  type metadata accessor for StorageShared(0);
  sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
  *v2 = sub_80E68();
  v2[1] = v3;
  if (qword_B7858 != -1)
  {
    swift_once();
  }

  v7 = qword_BCF88;
  v4 = sub_80C38();
  v5 = (a1 + *(sub_147EC(&qword_B9BE0, &unk_8BA00) + 36));
  *v5 = v4;
  v5[1] = v7;

  return v7;
}

uint64_t sub_6A840()
{
  v0 = sub_818E8();
  v1 = sub_818E8();
  v2 = STLocalizedString(v0);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_886D0;
  v4 = localizedDeviceName();
  v5 = sub_81928();
  v7 = v6;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1A83C();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_81938();

  return v8;
}

uint64_t sub_6A970@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_818B8();
  v3 = __chkstk_darwin(v2 - 8);
  v48 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38[2] = v38 - v5;
  v6 = type metadata accessor for _StorageSettingsPreferencesView(0);
  v7 = v6 - 8;
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v38[1] = v8;
  v41 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_147EC(&qword_B9CC0, &qword_8BBF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v38 - v11;
  v46 = sub_147EC(&qword_B9CC8, &qword_8BC00);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = v38 - v13;
  v45 = sub_147EC(&qword_B9CD0, &qword_8BC08);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = v38 - v15;
  v39 = sub_147EC(&qword_B9CD8, &qword_8BC10);
  __chkstk_darwin(v39);
  v47 = v38 - v16;
  v50 = v1;
  sub_147EC(&qword_B9CE0, &qword_8BC18);
  sub_14F24(&qword_B9CE8, &qword_B9CE0, &qword_8BC18, &protocol conformance descriptor for TupleView<A>);
  sub_81218();
  v17 = sub_14F24(&qword_B9CF0, &qword_B9CC0, &qword_8BBF8, &protocol conformance descriptor for Form<A>);
  sub_812A8();
  (*(v10 + 8))(v12, v9);
  v18 = *(v1 + *(v7 + 28));
  if (v18)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_80C68();

    v53 = v51;
    v20 = v41;
    sub_6CDF0(v1, v41, type metadata accessor for _StorageSettingsPreferencesView);
    v21 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v22 = swift_allocObject();
    sub_6CE58(v20, v22 + v21, type metadata accessor for _StorageSettingsPreferencesView);
    sub_147EC(&qword_B81C0, &qword_88E98);
    v51 = v9;
    v52 = v17;
    swift_getOpaqueTypeConformance2();
    sub_6CCCC();
    v23 = v42;
    v24 = v46;
    sub_813E8();

    (*(v44 + 8))(v14, v24);
    v25 = v47;
    v26 = &v47[*(v39 + 36)];
    sub_80DA8();
    sub_81A98();
    *v26 = &unk_8BC70;
    *(v26 + 1) = 0;
    (*(v43 + 32))(v25, v23, v45);
    sub_818A8();
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    sub_81898(v54);
    v55._countAndFlagsBits = sub_6A840();
    sub_81888(v55);

    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_81898(v56);
    v27 = sub_147EC(&qword_B9D08, &qword_8BC78);
    v28 = v49;
    v29 = v49 + *(v27 + 36);
    sub_80968();
    sub_147EC(&qword_B9D10, &unk_8BC80);
    sub_80978();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_886D0;
    sub_818A8();
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    sub_81898(v57);
    v31 = sub_818E8();
    v32 = sub_818E8();
    v33 = STLocalizedString(v31);

    v34 = sub_81928();
    v36 = v35;

    v58._countAndFlagsBits = v34;
    v58._object = v36;
    sub_81888(v58);

    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    sub_81898(v59);
    sub_80968();
    *(v29 + *(type metadata accessor for NavigationEventEmissionViewModifier(0) + 20)) = v30;
    return sub_6CD80(v25, v28);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_6B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20));
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_80C68();

    v5 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v5 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v25 = 0;
      v26 = 0;
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v6 = 1;
    }

    else
    {
      type metadata accessor for StorageShared(0);
      sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
      v6 = sub_80E68();
      v26 = v7;
      v8 = sub_80E68();
      v24 = v9;
      v25 = v8;
      v10 = sub_80E68();
      v22 = v11;
      v23 = v10;
      LOBYTE(v27) = 0;
      sub_814C8();
      v21 = v31;
      v20 = v32;
    }

    type metadata accessor for StorageShared(0);
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    v19 = sub_80E68();
    v13 = v12;
    sub_814C8();
    v14 = v31;
    v15 = v32;
    *&v27 = v6;
    *(&v27 + 1) = v26;
    *&v28 = v25;
    *(&v28 + 1) = v24;
    *&v29 = v23;
    *(&v29 + 1) = v22;
    *&v30 = v21;
    *(&v30 + 1) = v20;
    v16 = v28;
    *a2 = v27;
    *(a2 + 16) = v16;
    v17 = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v17;
    *(a2 + 64) = v19;
    *(a2 + 72) = v13;
    *(a2 + 80) = v14;
    *(a2 + 88) = v15;
    sub_14F6C(&v27, &v31, &qword_B9D18, &unk_8BC90);
    v31 = v6;
    v32 = v26;
    v33 = v25;
    v34 = v24;
    v35 = v23;
    v36 = v22;
    v37 = v21;
    v38 = v20;
    return sub_14FD4(&v31, &qword_B9D18, &unk_8BC90);
  }

  else
  {
    type metadata accessor for StorageShared(0);
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

void sub_6B440(uint64_t a1)
{
  v2 = sub_80B38();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_147EC(&qword_B8568, &unk_89590);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Application(0);
  v30 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + *(type metadata accessor for _StorageSettingsPreferencesView(0) + 20));
  if (!v14)
  {
    type metadata accessor for StorageShared(0);
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    sub_80E58();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  sub_80C68();

  if (v32)
  {
    v16 = *(v32 + 24);
    if (v16 && v16[2])
    {
      v17 = v16[4];
      v18 = v16[5];
      v28 = v2;
      v29 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = 0;
      v19 = v15;

      sub_80C78();
      v20 = v19;
      v21 = sub_254C4();

      if (v21[2])
      {
        v22 = sub_34B30(v29, v18);
        v24 = v23;

        if (v24)
        {
          sub_6CDF0(v21[7] + *(v30 + 72) * v22, v11, type metadata accessor for Application);

          sub_6CE58(v11, v13, type metadata accessor for Application);
          sub_1B4B0(v7);
          v25 = sub_80B08();
          v26 = 1;
          (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
          if ((v13[130] & 1) == 0)
          {
            v26 = v13[131];
          }

          sub_6BB50(&qword_B8570, &qword_8A370, &type metadata accessor for AppendSettingsNavigationPathAction, v4);
          sub_613EC(v7, v26, v4);

          (*(v31 + 8))(v4, v28);
          sub_14FD4(v7, &qword_B8568, &unk_89590);
          sub_2095C(v13);
          return;
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_6B890()
{
  sub_81A88();
  *(v0 + 16) = sub_81A78();
  v2 = sub_81A58();

  return _swift_task_switch(sub_6B924, v2, v1);
}

uint64_t sub_6B924()
{

  if (qword_B7858 != -1)
  {
    swift_once();
  }

  sub_2EFD0();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_6B9C4(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_6BD50(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_6BB50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_80FB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_147EC(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_14F6C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_81B28();
    v19 = sub_81198();
    sub_80B98();

    sub_80FA8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_6BD64(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_6BE58;

  return v5(v2 + 32);
}

uint64_t sub_6BE58()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_6BF6C(void *a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  type metadata accessor for StorageSharedReference(0);
  v5 = swift_allocObject();
  sub_80A98();
  *(v5 + 16) = a1;
  swift_getKeyPath();
  v13[1] = v5;
  sub_6C2B4(&qword_B9BC0, type metadata accessor for StorageSharedReference, &unk_8B908);
  v6 = a1;
  sub_80A68();

  v7 = *(v5 + 16);
  v8 = sub_81AB8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_81A88();
  v9 = v7;
  v10 = sub_81A78();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_68AE4(0, 0, v4, &unk_893C8, v11);

  return v5;
}

uint64_t sub_6C188()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_6C1CC()
{
  result = qword_B9BE8;
  if (!qword_B9BE8)
  {
    sub_14E2C(&qword_B9BE0, &unk_8BA00);
    sub_6C2B4(&qword_B9BF0, type metadata accessor for _StorageSettingsPreferencesView, &unk_8BBA8);
    sub_14F24(&qword_B85F0, &qword_B85F8, &qword_89738, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9BE8);
  }

  return result;
}

uint64_t sub_6C2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6C31C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6C35C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22EB0;

  return sub_69B34(a1, a2, v7, v6);
}

void sub_6C43C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_6C474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16268;

  return sub_31C44(a1, v4, v5, v6);
}

uint64_t sub_6C528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22EB0;

  return sub_6BD64(a1, v4);
}

uint64_t sub_6C5E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_16268;

  return sub_6BD64(a1, v4);
}

uint64_t sub_6C6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_147EC(&qword_B8488, &qword_894D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_6C7A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_147EC(&qword_B8488, &qword_894D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_6C868(uint64_t a1)
{
  sub_6C8EC(319);
  if (v1 <= 0x3F)
  {
    sub_6C944(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_6C8EC(uint64_t a1)
{
  if (!qword_B8518)
  {
    sub_80B38();
    v1 = sub_80CF8();
    if (!v2)
    {
      atomic_store(v1, &qword_B8518);
    }
  }
}

void sub_6C944(uint64_t a1)
{
  if (!qword_B9C90)
  {
    type metadata accessor for StorageShared(255);
    sub_6C2B4(&qword_B7A50, type metadata accessor for StorageShared, &unk_88F00);
    v1 = sub_80E78();
    if (!v2)
    {
      atomic_store(v1, &qword_B9C90);
    }
  }
}

uint64_t sub_6C9D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}