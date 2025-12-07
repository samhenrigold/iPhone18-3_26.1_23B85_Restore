uint64_t sub_10003A98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003AAEC()
{
  *(*v1 + 552) = v0;

  if (v0)
  {

    v2 = sub_10003AE14;
  }

  else
  {
    v2 = sub_10003AC58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003AC58()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[10];
  v6 = v0[11];
  sub_10000C410((v0 + 7), v5);
  v7 = swift_task_alloc();
  v0[70] = v7;
  *v7 = v0;
  v7[1] = sub_10003AF74;
  v8 = v0[19];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, 0, 0, v0 + 12, v5, v6);
}

uint64_t sub_10003AE14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003AF74()
{

  if (v0)
  {

    v1 = sub_10003B430;
  }

  else
  {
    v1 = sub_10003B0C8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10003B0C8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  v6 = v0[65];
  (*(v2 + 32))(v0[28], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100057AFC(v0[42]);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[53];
  v9 = v0[42];
  v10 = v0[40];
  v11 = v0[27];
  v18 = v0[26];
  v19 = v0[28];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[13];
  v15 = *(*(v0[65] + 56) + 8 * result);

  v8(v9, v10);
  *v12 = v15;
  (*(v11 + 16))(&v12[*(v13 + 48)], v19, v18);
  v20 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[71] = v16;
  *v16 = v0;
  v16[1] = sub_10003B5A0;
  v17 = v0[18];

  return v20(v17);
}

uint64_t sub_10003B430()
{
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003B5A0()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  sub_10000C460(*(v2 + 144), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_10003B80C;
  }

  else
  {
    v3 = sub_10003B72C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003B72C()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_10003AF74;
  v4 = v0[19];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_10003B80C()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v5[20] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for StoredPhoto();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = type metadata accessor for ShuffleID();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[36] = v9;
  v5[37] = *(v9 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[41] = v10;
  v5[42] = *(v10 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003BCE8, 0, 0);
}

uint64_t sub_10003BCE8()
{
  v0[49] = sub_1000438BC(&qword_10012A2B0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for ShuffleDatabase();
  v0[50] = v1;
  v2 = sub_1000438BC(&qword_10012A478, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_10003BE30;
  v4 = v0[48];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_10003BE30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v5 = v3[48];
  v6 = v3[42];
  v7 = v3[41];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = sub_100043E6C;
  }

  else
  {
    v4[54] = v9;
    v4[55] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_10003BFB8;
  }

  return _swift_task_switch(v11, 0, 0);
}

void *sub_10003BFB8(uint64_t a1)
{
  v80 = v1;
  v2 = v1[35];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[16];
  static Log.default.getter();
  v6 = *(v4 + 16);
  v1[56] = v6;
  v1[57] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[31];
  v10 = v1[32];
  if (v9)
  {
    v65 = v8;
    log = v7;
    v76 = v1[52];
    v77 = v1[42];
    v12 = v1[34];
    v13 = v1[35];
    v70 = v1[28];
    v14 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v14 = 136315394;
    v6(v12, v13, v11);
    v15 = *(v10 + 8);
    v15(v13, v11);
    sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v66 = v15;
    v15(v12, v11);
    v19 = sub_100102F80(v16, v18, &v78);

    *(v14 + 4) = v19;
    buf = v14;
    *(v14 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v21 = result;
    v22 = 0;
    v23 = *(v76 + 64);
    v24 = 1 << *(v76 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v71 = result + 8;
    v68 = v27;
    v69 = result;
    if ((v25 & v23) != 0)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_12:
        v31 = v28 | (v22 << 6);
        v32 = *(v76 + 48);
        v33 = *(v32 + 8 * v31);
        v34 = *(*(v76 + 56) + 8 * v31);
        v35 = *(v34 + 16);
        if (v35)
        {
          v72 = *(v32 + 8 * v31);
          v73 = v31;
          v74 = v26;
          v75 = v22;
          v79 = _swiftEmptyArrayStorage;

          sub_10005C508(0, v35, 0);
          v36 = v79;
          v37 = v34 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v38 = *(v70 + 72);
          v39 = *(v70 + 16);
          do
          {
            v40 = v1[30];
            v41 = v1[27];
            v39(v40, v37, v41);
            StoredPhoto.localIdentifier.getter();
            (*(v70 + 8))(v40, v41);
            v79 = v36;
            v43 = v36[2];
            v42 = v36[3];
            if (v43 >= v42 >> 1)
            {
              sub_10005C508((v42 > 1), v43 + 1, 1);
              v36 = v79;
            }

            v44 = v1[47];
            v45 = v1[41];
            v36[2] = v43 + 1;
            (*(v77 + 32))(v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v43, v44, v45);
            v37 += v38;
            --v35;
          }

          while (v35);

          v27 = v68;
          v21 = v69;
          v26 = v74;
          v22 = v75;
          v33 = v72;
          v31 = v73;
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
        }

        *(v71 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        *(v21[6] + 8 * v31) = v33;
        *(v21[7] + 8 * v31) = v36;
        v46 = v21[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v21[2] = v48;
        if (!v26)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v29 = v22;
      while (1)
      {
        v22 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v22 >= v27)
        {
          v54 = v1[40];
          v56 = v1[36];
          v55 = v1[37];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v57 = Dictionary.description.getter();
          v59 = v58;

          v60 = sub_100102F80(v57, v59, &v78);

          *(buf + 14) = v60;
          _os_log_impl(&_mh_execute_header, log, v65, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v53 = *(v55 + 8);
          v53(v54, v56);
          v52 = v66;
          goto LABEL_24;
        }

        v30 = *(v76 + 64 + 8 * v22);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v49 = v1[40];
    v51 = v1[36];
    v50 = v1[37];
    v52 = *(v10 + 8);
    v52(v1[35], v1[31]);

    v53 = *(v50 + 8);
    v53(v49, v51);
LABEL_24:
    v1[58] = v53;
    v1[59] = v52;
    v61 = swift_task_alloc();
    v1[60] = v61;
    *v61 = v1;
    v61[1] = sub_10003C5B0;
    v63 = v1[16];
    v62 = v1[17];

    return sub_100011914(v63, v62);
  }

  return result;
}

uint64_t sub_10003C5B0(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10003C7FC, 0, 0);
  }
}

uint64_t sub_10003C7FC()
{
  v136 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v122 = v0[42];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v129 = v0[61];

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v120 = v3;
  while (v7)
  {
LABEL_10:
    v15 = *(*(v129 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 > v13[3] >> 1)
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v120;
    v7 &= v7 - 1;
    if (*(v15 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v16)
      {
        goto LABEL_83;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = v13[2];
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_85;
        }

        v13[2] = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v23 = v0[61];
  v24 = v0[42];
  v124 = v0[22];
  v133 = v0[21];

  v25 = sub_10006C038(v13);

  v0[63] = sub_100013078(v25);

  v26 = -1;
  v27 = -1 << *(v129 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v129 + 64);
  v29 = (63 - v27) >> 6;
  v131 = (v24 + 16);
  v115 = v23;

  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v114 = v29;
  while (1)
  {
    v0[64] = v31;
    if (!v28)
    {
      break;
    }

LABEL_31:
    v126 = v28;
    v33 = (v30 << 9) | (8 * __clz(__rbit64(v28)));
    v34 = *(*(v129 + 56) + v33);
    v35 = *(v34 + 16);
    if (v35)
    {
      v118 = v31;
      v36 = *(*(v115 + 48) + v33);
      v135 = _swiftEmptyArrayStorage;

      sub_10005C654(0, v35, 0);
      v37 = _swiftEmptyArrayStorage;
      v38 = v34 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v39 = *(v122 + 72);
      v40 = *v131;
      do
      {
        v41 = v0[26];
        v40(v41 + *(v133 + 48), v38, v0[41]);
        *v41 = v36;
        v135 = v37;
        v43 = v37[2];
        v42 = v37[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C654((v42 > 1), v43 + 1, 1);
          v37 = v135;
        }

        v44 = v0[26];
        v37[2] = v43 + 1;
        sub_100042590(v44, v37 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v43);
        v38 += v39;
        --v35;
      }

      while (v35);

      v31 = v118;
      v3 = v120;
      v29 = v114;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    v45 = v37[2];
    v46 = v31[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 > v31[3] >> 1)
    {
      if (v46 <= v47)
      {
        v48 = v46 + v45;
      }

      else
      {
        v48 = v46;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v48, 1, v31);
      v31 = isUniquelyReferenced_nonNull_native;
    }

    v28 = (v126 - 1) & v126;
    if (v37[2])
    {
      if ((v31[3] >> 1) - v31[2] < v45)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v49 = v31[2];
        v21 = __OFADD__(v49, v45);
        v50 = v49 + v45;
        if (v21)
        {
          goto LABEL_86;
        }

        v31[2] = v50;
      }
    }

    else
    {

      if (v45)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v51 = v0[42];

      v53 = sub_100042600(v52);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v54 = isUniquelyReferenced_nonNull_native;
      v55 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v109 = v53 + 8;
      v56 = 1 << *(v53 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = (v56 + 63) >> 6;
      v59 = (v51 + 32);
      v60 = v57 & v53[8];
      v130 = v59;
      v112 = v53;
      v113 = isUniquelyReferenced_nonNull_native + 8;
      v110 = v58;
      v111 = isUniquelyReferenced_nonNull_native;
      if (!v60)
      {
LABEL_54:
        v62 = v55;
        while (1)
        {
          v55 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_77;
          }

          if (v55 >= v58)
          {
            v86 = v0[56];
            v87 = v0[33];
            v88 = v0[31];
            v89 = v0[16];

            static Log.default.getter();
            v86(v87, v89, v88);
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.debug.getter();
            v92 = os_log_type_enabled(v90, v91);
            v94 = v0[58];
            v93 = v0[59];
            if (v92)
            {
              v123 = v0[56];
              v134 = v0[39];
              v132 = v0[36];
              v125 = v91;
              v96 = v0[33];
              v95 = v0[34];
              v97 = v0[31];
              v128 = v0[58];
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v135 = v99;
              *v98 = 136315138;
              v123(v95, v96, v97);
              v93(v96, v97);
              sub_1000438BC(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
              v100 = dispatch thunk of CustomStringConvertible.description.getter();
              v102 = v101;
              v93(v95, v97);
              v103 = sub_100102F80(v100, v102, &v135);

              *(v98 + 4) = v103;
              _os_log_impl(&_mh_execute_header, v90, v125, "Clearing photos for id: %s", v98, 0xCu);
              sub_10000C304(v99);

              v128(v134, v132);
            }

            else
            {
              v104 = v0[39];
              v105 = v0[36];
              v93(v0[33], v0[31]);

              v94(v104, v105);
            }

            dispatch thunk of PhotosFaceID.id.getter();
            v106 = sub_1000438BC(&qword_10012A480, &type metadata accessor for ShuffleDatabase, &protocol conformance descriptor for ShuffleDatabase);
            v107 = swift_task_alloc();
            v0[66] = v107;
            *v107 = v0;
            v107[1] = sub_10003D27C;
            v10 = v0[50];
            isUniquelyReferenced_nonNull_native = v0[44];
            v11 = v106;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v63 = v109[v55];
          ++v62;
          if (v63)
          {
            v61 = __clz(__rbit64(v63));
            v60 = (v63 - 1) & v63;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v61 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
LABEL_59:
        v64 = v61 | (v55 << 6);
        v66 = v0[45];
        v65 = v0[46];
        v67 = v0[41];
        v119 = *(v122 + 72) * v64;
        (*v131)(v65, v53[6] + v119, v67);
        v121 = v64;
        v68 = *(v53[7] + 8 * v64);
        v127 = *v130;
        (*v130)(v66, v65, v67);
        v69 = *(v68 + 16);
        if (v69)
        {
          v116 = v60;
          v117 = v55;
          v135 = _swiftEmptyArrayStorage;

          sub_10005C5B0(0, v69, 0);
          v70 = v68;
          v71 = _swiftEmptyArrayStorage;
          v72 = v70 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
          v73 = *(v124 + 72);
          do
          {
            v74 = v0[41];
            v75 = v0[24];
            v76 = v0[25];
            v77 = v0[23];
            sub_100042A80(v72, v76);
            sub_100042A80(v76, v75);
            v78 = *v75;
            v79 = *(v133 + 48);
            *v77 = *v75;
            v127(v77 + v79, v75 + v79, v74);
            sub_10000C460(v77, &qword_10012A448, &unk_100109550);
            sub_10000C460(v76, &qword_10012A448, &unk_100109550);
            v135 = v71;
            v81 = v71[2];
            v80 = v71[3];
            if (v81 >= v80 >> 1)
            {
              sub_10005C5B0((v80 > 1), v81 + 1, 1);
              v71 = v135;
            }

            v71[2] = v81 + 1;
            v71[v81 + 4] = v78;
            v72 += v73;
            --v69;
          }

          while (v69);

          v54 = v111;
          v53 = v112;
          v60 = v116;
          v55 = v117;
          v58 = v110;
        }

        else
        {
          v71 = _swiftEmptyArrayStorage;
        }

        v82 = v0[45];
        v83 = v0[41];
        *(v113 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v121;
        isUniquelyReferenced_nonNull_native = (v127)(v54[6] + v119, v82, v83);
        *(v54[7] + 8 * v121) = v71;
        v84 = v54[2];
        v21 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v21)
        {
          goto LABEL_82;
        }

        v54[2] = v85;
        if (!v60)
        {
          goto LABEL_54;
        }
      }
    }

    v28 = *(v3 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_10003D27C()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  (*(v2 + 432))(*(v2 + 352), *(v2 + 328));
  if (v0)
  {

    v3 = sub_100043E70;
  }

  else
  {
    v3 = sub_10003D3F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003D3F8(uint64_t a1)
{
  v23 = v1;
  static Log.default.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v20 = v1[58];
    v4 = v1[38];
    v5 = v1[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_100102F80(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing photos: %s", v6, 0xCu);
    sub_10000C304(v7);

    v20(v4, v5);
  }

  else
  {
    v11 = v1[58];
    v12 = v1[38];
    v13 = v1[36];

    v11(v12, v13);
  }

  v14 = v1[15];
  v15 = v14[8];
  v16 = v14[9];
  sub_10000C3CC(v14 + 5, v15);
  v21 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  v1[68] = v17;
  *v17 = v1;
  v17[1] = sub_10003D694;
  v18 = v1[63];

  return v21(v1 + 2, v18, 0, 0, v15, v16);
}

uint64_t sub_10003D694()
{
  *(*v1 + 552) = v0;

  if (v0)
  {

    v2 = sub_100043EA4;
  }

  else
  {
    v2 = sub_10003D7EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003D7EC()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[10];
  v6 = v0[11];
  sub_10000C410((v0 + 7), v5);
  v7 = swift_task_alloc();
  v0[70] = v7;
  *v7 = v0;
  v7[1] = sub_10003D9A8;
  v8 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, 0, 0, v0 + 12, v5, v6);
}

uint64_t sub_10003D9A8()
{

  if (v0)
  {

    v1 = sub_100043EA8;
  }

  else
  {
    v1 = sub_10003DAFC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10003DAFC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  v6 = v0[65];
  (*(v2 + 32))(v0[29], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100057AFC(v0[43]);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[54];
  v9 = v0[43];
  v10 = v0[41];
  v11 = v0[28];
  v18 = v0[27];
  v19 = v0[29];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[13];
  v15 = *(*(v0[65] + 56) + 8 * result);

  v8(v9, v10);
  *v12 = v15;
  (*(v11 + 16))(&v12[*(v13 + 48)], v19, v18);
  v20 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[71] = v16;
  *v16 = v0;
  v16[1] = sub_10003DE64;
  v17 = v0[19];

  return v20(v17);
}

uint64_t sub_10003DE64()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  sub_10000C460(*(v2 + 152), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_100043EA0;
  }

  else
  {
    v3 = sub_10003DFF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003DFF0()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_10003D9A8;
  v4 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_10003E0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v5[18] = sub_10000560C(&qword_10012A428, &unk_1001091B0);
  v5[19] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v5[20] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for StoredPhoto();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v8 = type metadata accessor for AlbumID();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[36] = v9;
  v5[37] = *(v9 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[41] = v10;
  v5[42] = *(v10 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10003E424, 0, 0);
}

uint64_t sub_10003E424()
{
  v0[49] = sub_1000438BC(&qword_10012A048, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  dispatch thunk of PhotosFaceID.id.getter();
  v1 = type metadata accessor for AlbumDatabase();
  v0[50] = v1;
  v2 = sub_1000438BC(&qword_10012A488, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_10003E56C;
  v4 = v0[48];

  return dispatch thunk of PhotosFaceIDReadOnlyDatabase.queryByDay(id:)(v4, v1, v2);
}

uint64_t sub_10003E56C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v5 = v3[48];
  v6 = v3[42];
  v7 = v3[41];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v1)
  {
    v9(v5, v7);
    v11 = sub_10003ECEC;
  }

  else
  {
    v4[54] = v9;
    v4[55] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_10003E6F4;
  }

  return _swift_task_switch(v11, 0, 0);
}

void *sub_10003E6F4(uint64_t a1)
{
  v80 = v1;
  v2 = v1[35];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[16];
  static Log.default.getter();
  v6 = *(v4 + 16);
  v1[56] = v6;
  v1[57] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[31];
  v10 = v1[32];
  if (v9)
  {
    v65 = v8;
    log = v7;
    v76 = v1[52];
    v77 = v1[42];
    v12 = v1[34];
    v13 = v1[35];
    v70 = v1[28];
    v14 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v14 = 136315394;
    v6(v12, v13, v11);
    v15 = *(v10 + 8);
    v15(v13, v11);
    sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v66 = v15;
    v15(v12, v11);
    v19 = sub_100102F80(v16, v18, &v78);

    *(v14 + 4) = v19;
    buf = v14;
    *(v14 + 12) = 2080;
    sub_10000560C(&qword_10012A300, &qword_100108FF8);
    result = static _DictionaryStorage.copy(original:)();
    v21 = result;
    v22 = 0;
    v23 = *(v76 + 64);
    v24 = 1 << *(v76 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v71 = result + 8;
    v68 = v27;
    v69 = result;
    if ((v25 & v23) != 0)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_12:
        v31 = v28 | (v22 << 6);
        v32 = *(v76 + 48);
        v33 = *(v32 + 8 * v31);
        v34 = *(*(v76 + 56) + 8 * v31);
        v35 = *(v34 + 16);
        if (v35)
        {
          v72 = *(v32 + 8 * v31);
          v73 = v31;
          v74 = v26;
          v75 = v22;
          v79 = _swiftEmptyArrayStorage;

          sub_10005C508(0, v35, 0);
          v36 = v79;
          v37 = v34 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v38 = *(v70 + 72);
          v39 = *(v70 + 16);
          do
          {
            v40 = v1[30];
            v41 = v1[27];
            v39(v40, v37, v41);
            StoredPhoto.localIdentifier.getter();
            (*(v70 + 8))(v40, v41);
            v79 = v36;
            v43 = v36[2];
            v42 = v36[3];
            if (v43 >= v42 >> 1)
            {
              sub_10005C508((v42 > 1), v43 + 1, 1);
              v36 = v79;
            }

            v44 = v1[47];
            v45 = v1[41];
            v36[2] = v43 + 1;
            (*(v77 + 32))(v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v43, v44, v45);
            v37 += v38;
            --v35;
          }

          while (v35);

          v27 = v68;
          v21 = v69;
          v26 = v74;
          v22 = v75;
          v33 = v72;
          v31 = v73;
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
        }

        *(v71 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        *(v21[6] + 8 * v31) = v33;
        *(v21[7] + 8 * v31) = v36;
        v46 = v21[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v21[2] = v48;
        if (!v26)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v29 = v22;
      while (1)
      {
        v22 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v22 >= v27)
        {
          v54 = v1[40];
          v56 = v1[36];
          v55 = v1[37];
          sub_10000560C(&qword_100129E80, &unk_1001091F0);
          v57 = Dictionary.description.getter();
          v59 = v58;

          v60 = sub_100102F80(v57, v59, &v78);

          *(buf + 14) = v60;
          _os_log_impl(&_mh_execute_header, log, v65, "Before processing, photos for %s: %s", buf, 0x16u);
          swift_arrayDestroy();

          v53 = *(v55 + 8);
          v53(v54, v56);
          v52 = v66;
          goto LABEL_24;
        }

        v30 = *(v76 + 64 + 8 * v22);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v49 = v1[40];
    v51 = v1[36];
    v50 = v1[37];
    v52 = *(v10 + 8);
    v52(v1[35], v1[31]);

    v53 = *(v50 + 8);
    v53(v49, v51);
LABEL_24:
    v1[58] = v53;
    v1[59] = v52;
    v61 = swift_task_alloc();
    v1[60] = v61;
    *v61 = v1;
    v61[1] = sub_10003EE4C;
    v63 = v1[16];
    v62 = v1[17];

    return sub_10000CCAC(v63, v62);
  }

  return result;
}

uint64_t sub_10003ECEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003EE4C(uint64_t a1)
{
  v3 = *v2;
  v3[61] = a1;
  v3[62] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10003F098, 0, 0);
  }
}

uint64_t sub_10003F098()
{
  v136 = v0;
  v1 = v0[61];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v122 = v0[42];
  v5 = -1;
  v6 = -1 << *(v0[61] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v129 = v0[61];

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v120 = v3;
  while (v7)
  {
LABEL_10:
    v15 = *(*(v129 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 > v13[3] >> 1)
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFC8(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      v13 = isUniquelyReferenced_nonNull_native;
    }

    v3 = v120;
    v7 &= v7 - 1;
    if (*(v15 + 16))
    {
      if ((v13[3] >> 1) - v13[2] < v16)
      {
        goto LABEL_83;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = v13[2];
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_85;
        }

        v13[2] = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_79;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v23 = v0[61];
  v24 = v0[42];
  v124 = v0[22];
  v133 = v0[21];

  v25 = sub_10006C038(v13);

  v0[63] = sub_100013078(v25);

  v26 = -1;
  v27 = -1 << *(v129 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v129 + 64);
  v29 = (63 - v27) >> 6;
  v131 = (v24 + 16);
  v115 = v23;

  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v114 = v29;
  while (1)
  {
    v0[64] = v31;
    if (!v28)
    {
      break;
    }

LABEL_31:
    v126 = v28;
    v33 = (v30 << 9) | (8 * __clz(__rbit64(v28)));
    v34 = *(*(v129 + 56) + v33);
    v35 = *(v34 + 16);
    if (v35)
    {
      v118 = v31;
      v36 = *(*(v115 + 48) + v33);
      v135 = _swiftEmptyArrayStorage;

      sub_10005C654(0, v35, 0);
      v37 = _swiftEmptyArrayStorage;
      v38 = v34 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v39 = *(v122 + 72);
      v40 = *v131;
      do
      {
        v41 = v0[26];
        v40(v41 + *(v133 + 48), v38, v0[41]);
        *v41 = v36;
        v135 = v37;
        v43 = v37[2];
        v42 = v37[3];
        if (v43 >= v42 >> 1)
        {
          sub_10005C654((v42 > 1), v43 + 1, 1);
          v37 = v135;
        }

        v44 = v0[26];
        v37[2] = v43 + 1;
        sub_100042590(v44, v37 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v43);
        v38 += v39;
        --v35;
      }

      while (v35);

      v31 = v118;
      v3 = v120;
      v29 = v114;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    v45 = v37[2];
    v46 = v31[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_80;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 > v31[3] >> 1)
    {
      if (v46 <= v47)
      {
        v48 = v46 + v45;
      }

      else
      {
        v48 = v46;
      }

      isUniquelyReferenced_nonNull_native = sub_1000FFFA4(isUniquelyReferenced_nonNull_native, v48, 1, v31);
      v31 = isUniquelyReferenced_nonNull_native;
    }

    v28 = (v126 - 1) & v126;
    if (v37[2])
    {
      if ((v31[3] >> 1) - v31[2] < v45)
      {
        goto LABEL_84;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v49 = v31[2];
        v21 = __OFADD__(v49, v45);
        v50 = v49 + v45;
        if (v21)
        {
          goto LABEL_86;
        }

        v31[2] = v50;
      }
    }

    else
    {

      if (v45)
      {
        goto LABEL_81;
      }
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v51 = v0[42];

      v53 = sub_100042600(v52);

      sub_10000560C(&qword_10012A450, &unk_1001091E0);
      isUniquelyReferenced_nonNull_native = static _DictionaryStorage.copy(original:)();
      v54 = isUniquelyReferenced_nonNull_native;
      v55 = 0;
      v0[65] = isUniquelyReferenced_nonNull_native;
      v109 = v53 + 8;
      v56 = 1 << *(v53 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = (v56 + 63) >> 6;
      v59 = (v51 + 32);
      v60 = v57 & v53[8];
      v130 = v59;
      v112 = v53;
      v113 = isUniquelyReferenced_nonNull_native + 8;
      v110 = v58;
      v111 = isUniquelyReferenced_nonNull_native;
      if (!v60)
      {
LABEL_54:
        v62 = v55;
        while (1)
        {
          v55 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_77;
          }

          if (v55 >= v58)
          {
            v86 = v0[56];
            v87 = v0[33];
            v88 = v0[31];
            v89 = v0[16];

            static Log.default.getter();
            v86(v87, v89, v88);
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.debug.getter();
            v92 = os_log_type_enabled(v90, v91);
            v94 = v0[58];
            v93 = v0[59];
            if (v92)
            {
              v123 = v0[56];
              v134 = v0[39];
              v132 = v0[36];
              v125 = v91;
              v96 = v0[33];
              v95 = v0[34];
              v97 = v0[31];
              v128 = v0[58];
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v135 = v99;
              *v98 = 136315138;
              v123(v95, v96, v97);
              v93(v96, v97);
              sub_1000438BC(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
              v100 = dispatch thunk of CustomStringConvertible.description.getter();
              v102 = v101;
              v93(v95, v97);
              v103 = sub_100102F80(v100, v102, &v135);

              *(v98 + 4) = v103;
              _os_log_impl(&_mh_execute_header, v90, v125, "Clearing photos for id: %s", v98, 0xCu);
              sub_10000C304(v99);

              v128(v134, v132);
            }

            else
            {
              v104 = v0[39];
              v105 = v0[36];
              v93(v0[33], v0[31]);

              v94(v104, v105);
            }

            dispatch thunk of PhotosFaceID.id.getter();
            v106 = sub_1000438BC(&qword_10012A490, &type metadata accessor for AlbumDatabase, &protocol conformance descriptor for AlbumDatabase);
            v107 = swift_task_alloc();
            v0[66] = v107;
            *v107 = v0;
            v107[1] = sub_10003FB18;
            v10 = v0[50];
            isUniquelyReferenced_nonNull_native = v0[44];
            v11 = v106;

            return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
          }

          v63 = v109[v55];
          ++v62;
          if (v63)
          {
            v61 = __clz(__rbit64(v63));
            v60 = (v63 - 1) & v63;
            goto LABEL_59;
          }
        }
      }

      while (1)
      {
        v61 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
LABEL_59:
        v64 = v61 | (v55 << 6);
        v66 = v0[45];
        v65 = v0[46];
        v67 = v0[41];
        v119 = *(v122 + 72) * v64;
        (*v131)(v65, v53[6] + v119, v67);
        v121 = v64;
        v68 = *(v53[7] + 8 * v64);
        v127 = *v130;
        (*v130)(v66, v65, v67);
        v69 = *(v68 + 16);
        if (v69)
        {
          v116 = v60;
          v117 = v55;
          v135 = _swiftEmptyArrayStorage;

          sub_10005C5B0(0, v69, 0);
          v70 = v68;
          v71 = _swiftEmptyArrayStorage;
          v72 = v70 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
          v73 = *(v124 + 72);
          do
          {
            v74 = v0[41];
            v75 = v0[24];
            v76 = v0[25];
            v77 = v0[23];
            sub_100042A80(v72, v76);
            sub_100042A80(v76, v75);
            v78 = *v75;
            v79 = *(v133 + 48);
            *v77 = *v75;
            v127(v77 + v79, v75 + v79, v74);
            sub_10000C460(v77, &qword_10012A448, &unk_100109550);
            sub_10000C460(v76, &qword_10012A448, &unk_100109550);
            v135 = v71;
            v81 = v71[2];
            v80 = v71[3];
            if (v81 >= v80 >> 1)
            {
              sub_10005C5B0((v80 > 1), v81 + 1, 1);
              v71 = v135;
            }

            v71[2] = v81 + 1;
            v71[v81 + 4] = v78;
            v72 += v73;
            --v69;
          }

          while (v69);

          v54 = v111;
          v53 = v112;
          v60 = v116;
          v55 = v117;
          v58 = v110;
        }

        else
        {
          v71 = _swiftEmptyArrayStorage;
        }

        v82 = v0[45];
        v83 = v0[41];
        *(v113 + ((v121 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v121;
        isUniquelyReferenced_nonNull_native = (v127)(v54[6] + v119, v82, v83);
        *(v54[7] + 8 * v121) = v71;
        v84 = v54[2];
        v21 = __OFADD__(v84, 1);
        v85 = v84 + 1;
        if (v21)
        {
          goto LABEL_82;
        }

        v54[2] = v85;
        if (!v60)
        {
          goto LABEL_54;
        }
      }
    }

    v28 = *(v3 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_31;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return dispatch thunk of PhotosFaceIDDatabase.clearPhotos(for:)(isUniquelyReferenced_nonNull_native, v10, v11);
}

uint64_t sub_10003FB18()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  (*(v2 + 432))(*(v2 + 352), *(v2 + 328));
  if (v0)
  {

    v3 = sub_10003FF30;
  }

  else
  {
    v3 = sub_10003FC94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003FC94(uint64_t a1)
{
  v23 = v1;
  static Log.default.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v20 = v1[58];
    v4 = v1[38];
    v5 = v1[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_100102F80(v8, v9, &v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing photos: %s", v6, 0xCu);
    sub_10000C304(v7);

    v20(v4, v5);
  }

  else
  {
    v11 = v1[58];
    v12 = v1[38];
    v13 = v1[36];

    v11(v12, v13);
  }

  v14 = v1[15];
  v15 = v14[8];
  v16 = v14[9];
  sub_10000C3CC(v14 + 5, v15);
  v21 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  v1[68] = v17;
  *v17 = v1;
  v17[1] = sub_100040090;
  v18 = v1[63];

  return v21(v1 + 2, v18, 0, 0, v15, v16);
}

uint64_t sub_10003FF30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040090()
{
  *(*v1 + 552) = v0;

  if (v0)
  {

    v2 = sub_1000403A4;
  }

  else
  {
    v2 = sub_1000401E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000401E8()
{
  v1 = v0[5];
  v2 = sub_10000C3CC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000C1AC(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v5 = v0[10];
  v6 = v0[11];
  sub_10000C410((v0 + 7), v5);
  v7 = swift_task_alloc();
  v0[70] = v7;
  *v7 = v0;
  v7[1] = sub_100040504;
  v8 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v8, 0, 0, v0 + 12, v5, v6);
}

uint64_t sub_1000403A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040504()
{

  if (v0)
  {

    v1 = sub_1000409C0;
  }

  else
  {
    v1 = sub_100040658;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100040658()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000C304(v0 + 7);
    sub_10000C304(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  v6 = v0[65];
  (*(v2 + 32))(v0[29], v3, v1);
  result = StoredPhoto.localIdentifier.getter();
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100057AFC(v0[43]);
  if ((v7 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[54];
  v9 = v0[43];
  v10 = v0[41];
  v11 = v0[28];
  v18 = v0[27];
  v19 = v0[29];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[13];
  v15 = *(*(v0[65] + 56) + 8 * result);

  v8(v9, v10);
  *v12 = v15;
  (*(v11 + 16))(&v12[*(v13 + 48)], v19, v18);
  v20 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[71] = v16;
  *v16 = v0;
  v16[1] = sub_100040B30;
  v17 = v0[19];

  return v20(v17);
}

uint64_t sub_1000409C0()
{
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100040B30()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  sub_10000C460(*(v2 + 152), &qword_10012A428, &unk_1001091B0);
  if (v0)
  {

    v3 = sub_100040D9C;
  }

  else
  {
    v3 = sub_100040CBC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100040CBC()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[10];
  v2 = v0[11];
  sub_10000C410((v0 + 7), v1);
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_100040504;
  v4 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 12, v1, v2);
}

uint64_t sub_100040D9C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  sub_10000C304(v0 + 7);
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100040F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100040F44, 0, 0);
}

uint64_t sub_100040F44()
{
  type metadata accessor for CommunicationActor();
  *(v0 + 32) = static CommunicationActor.shared.getter();
  sub_1000438BC(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100041008, v2, v1);
}

uint64_t sub_100041008()
{
  v1 = *(v0 + 24);

  sub_1000062EC(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100041094()
{
  v1 = v0[2];
  v2 = *v1;
  v0[3] = *v1;
  if (v1[1])
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_1000411E8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 6, 0, 0, 0x65706F7250746567, 0xED00002928797472, sub_100042098, v3, &type metadata for Bool);
  }

  else
  {
    v5 = v0[1];

    return v5(v2 & 1);
  }
}

uint64_t sub_1000411E8()
{
  v1 = *(*v0 + 24);

  sub_1000420A0(v1, 1);

  return _swift_task_switch(sub_100041320, 0, 0);
}

uint64_t sub_100041338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000560C(&qword_10012A3E0, &unk_1001090F0);
  v6 = sub_10000560C(&unk_10012B2A0, &qword_100109D30);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001089C0;
  (*(v7 + 16))(v9 + v8, a1, v6);

  sub_100084678(v9);
  result = sub_1000420A0(*a3, *(a3 + 8));
  *a3 = a2;
  *(a3 + 8) = 1;
  return result;
}

uint64_t sub_100041470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000414A8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100041540;

  return sub_1000FC84C(v2);
}

uint64_t sub_100041540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_100041654()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043E28;

  return sub_1000139DC();
}

uint64_t sub_1000416E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100043E28;

  return sub_100014288();
}

uint64_t sub_100041774(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100057AFC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100058768();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_10004183C(v5, v7);
  *v2 = v7;
  return v10;
}

unint64_t sub_10004183C(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1000438BC(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void *sub_100041B5C()
{
  v23 = type metadata accessor for ShuffleID();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() sharedPhotoLibrary];
  v4 = [objc_allocWithZone(PFCShuffleGenerator) initWithPhotoLibrary:v3 targetShuffleSize:static TestProperties.targetGalleryShuffleSize.getter()];

  v5 = [v4 shuffles];
  sub_100042AFC();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = _swiftEmptyArrayStorage;
LABEL_14:
    v18 = sub_10006BE9C(v10);

    return v18;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = _swiftEmptyArrayStorage;
  result = sub_10005C56C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v24;
    v11 = v6;
    v22 = v6 & 0xC000000000000001;
    v20 = v4;
    v21 = v0 + 32;
    v12 = v6;
    do
    {
      if (v22)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v11 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = [v13 people];
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      [v14 pets];
      [v14 nature];
      [v14 cityscape];
      ShuffleID.init(people:pets:nature:cityscape:)();

      v24 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_10005C56C((v16 > 1), v17 + 1, 1);
        v10 = v24;
      }

      ++v9;
      v10[2] = v17 + 1;
      (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v17, v2, v23);
      v11 = v12;
    }

    while (v7 != v9);

    v4 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100041E80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100041ED4()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100041FA0(uint64_t a1)
{
  v4 = *(type metadata accessor for Message() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CC84;

  return sub_100040F24(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000420A0(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1000420AC(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_1000357D8(a1, v6, v1 + v5, v7);
}

uint64_t sub_1000421C8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000CC84;

  return sub_1000301E4(a1, v8, v9, v10, v1 + v4, v12, v13, v1 + v7);
}

uint64_t sub_100042380(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100024CA4(a1, a2, v8, v2 + v7);
}

uint64_t sub_100042470(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_1000363B8(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_100042590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A448, &unk_100109550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100042600(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000560C(&qword_10012A448, &unk_100109550);
  v5 = __chkstk_darwin(v54);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v52 = (&v43 - v8);
  v9 = __chkstk_darwin(v7);
  v53 = &v43 - v10;
  __chkstk_darwin(v9);
  v56 = &v43 - v12;
  v13 = &_swiftEmptyDictionarySingleton;
  v58 = &_swiftEmptyDictionarySingleton;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return v13;
  }

  v46 = *(v11 + 80);
  v47 = v3;
  v15 = *(v11 + 72);
  v16 = a1 + ((v46 + 32) & ~v46);
  v55 = (v3 + 32);
  v49 = (v46 + 32) & ~v46;
  v50 = (v3 + 16);
  v45 = (v3 + 8);
  v44 = xmmword_1001089C0;
  v48 = v2;
  while (1)
  {
    v17 = v56;
    sub_100042A80(v16, v56);
    v18 = v53;
    sub_100042A80(v17, v53);
    v19 = *(v54 + 48);
    v20 = v52;
    *v52 = *v18;
    v21 = *v55;
    (*v55)(v20 + v19, &v18[v19], v2);
    v22 = v20 + v19;
    v23 = v57;
    (*v50)(v57, v22, v2);
    sub_10000C460(v20, &qword_10012A448, &unk_100109550);
    v25 = sub_100057AFC(v23);
    v26 = v13[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v13[3] < v28)
    {
      sub_10005A140(v28, 1);
      v13 = v58;
      v30 = sub_100057AFC(v57);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    if (v29)
    {
      (*v45)(v57, v2);
      v32 = v13[7];
      sub_100042590(v56, v51);
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1000FFFA4(0, v33[2] + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = sub_1000FFFA4((v35 > 1), v36 + 1, 1, v33);
        *(v32 + 8 * v25) = v33;
      }

      v33[2] = v36 + 1;
      sub_100042590(v51, v33 + v49 + v36 * v15);
      v2 = v48;
    }

    else
    {
      sub_10000560C(&qword_10012A458, &qword_10010AAA0);
      v37 = v49;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      sub_100042590(v56, v38 + v37);
      v13[(v25 >> 6) + 8] |= 1 << v25;
      v21(v13[6] + *(v47 + 72) * v25, v57, v2);
      *(v13[7] + 8 * v25) = v38;
      v39 = v13[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v13[2] = v41;
    }

    v16 += v15;
    if (!--v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100042A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000560C(&qword_10012A448, &unk_100109550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042AF0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100042AFC()
{
  result = qword_10012A460;
  if (!qword_10012A460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012A460);
  }

  return result;
}

uint64_t sub_100042B60(uint64_t a1)
{
  v4 = *(type metadata accessor for DailyID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_100035AD0(a1, v6, v1 + v5, v7);
}

uint64_t sub_100042C7C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DailyID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100038AF4(a1, a2, v8, v2 + v7);
}

uint64_t sub_100042DD0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for DailyID() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000CC84;

  return sub_100031970(a1, v8, v9, v10, v1 + v4, v12, v13, v1 + v7);
}

uint64_t sub_100042F88(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_10002725C(a1, a2, v8, v2 + v7);
}

uint64_t sub_100043090(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_100035DC8(a1, v6, v1 + v5, v7);
}

uint64_t sub_1000431AC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_10003B994(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_1000432E4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10000CC84;

  return sub_100032CDC(a1, v8, v9, v10, v1 + v4, v12, v13, v1 + v7);
}

uint64_t sub_1000434A0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000CC84;

  return sub_100029180(a1, a2, v8, v2 + v7);
}

uint64_t sub_1000435A8(uint64_t a1)
{
  v4 = *(type metadata accessor for AlbumID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CC84;

  return sub_1000360C0(a1, v6, v1 + v5, v7);
}

uint64_t sub_1000436C4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10004379C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AlbumID() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_10003E0D0(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_1000438BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004391C(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 16) & ~v10;
  v12 = v5 | v10;
  v13 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v1 + v6, v3);

  (*(v9 + 8))(v1 + v11, v8);

  return _swift_deallocObject(v1, v13 + 8, v12 | 7);
}

uint64_t sub_100043AA8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for AlbumID() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1000045BC;

  return sub_100034048(a1, v8, v9, v10, v1 + v4, v12, v13, v1 + v7);
}

uint64_t sub_100043C60()
{
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v2 = *(FaceRequest - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, FaceRequest);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100043D24(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FetchFaceRequest() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000045BC;

  return sub_10002B0A4(a1, a2, v8, v2 + v7);
}

id sub_100043EAC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_allocWithZone(AXMVoiceOverVisionEngine) init];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_100043F18()
{
  *(v1 + 16) = v0;
  type metadata accessor for CommunicationActor();
  *(v1 + 24) = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100043FE0, v3, v2);
}

uint64_t sub_100043FE0()
{
  v1 = *(v0 + 16);

  sub_10000560C(&qword_10012A608, &unk_100109A20);
  sub_10000CC24(&qword_10012A610, &qword_10012A608, &unk_100109A20, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  PhotosXPCServer.registerGeneratePhoto<A>(callback:)();

  v2 = swift_allocObject();
  *(v2 + 16) = &unk_100109498;
  *(v2 + 24) = v1;
  swift_retain_n();
  sub_10004FA14(1u, &unk_1001094A8, v2, &unk_100126708, sub_10005E85C);

  PhotosXPCServer.registerGenerateMask(callback:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100044190(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for CommunicationActor();
  v2[3] = static CommunicationActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100044258;

  return sub_1000444AC(a1, a2);
}

uint64_t sub_100044258()
{
  *(*v1 + 40) = v0;

  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100044448;
  }

  else
  {
    v4 = sub_1000443E4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000443E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000444AC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v3[12] = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for CommunicationActor();
  v3[15] = static CommunicationActor.shared.getter();
  v3[16] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v5;
  v3[18] = v4;

  return _swift_task_switch(sub_1000445E4, v5, v4);
}

uint64_t sub_1000445E4()
{
  v2 = v0[10];
  v1 = v0[11];
  Photo = GeneratePhotoRequest.photoIdentifiers.getter();
  v0[19] = Photo;
  v0[7] = v2;
  v0[20] = static CommunicationActor.shared.getter();
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_100044740;

  return (sub_10004F5C0)(v0 + 2, Photo, 0, 0, v1, &off_1001265F0);
}

uint64_t sub_100044740()
{
  *(*v1 + 176) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100044A54;
  }

  else
  {
    v4 = sub_1000448D0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1000448D0()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_100044934, v1, v2);
}

uint64_t sub_100044934()
{

  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  type metadata accessor for GeneratePhotoResponse();
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  AsyncMapSequence.init(_:transform:)();
  sub_10000C304(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100044A54()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_100044AB8, v1, v2);
}

uint64_t sub_100044AB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044B28(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  v3[12] = type metadata accessor for CommunicationActor();
  v3[13] = static CommunicationActor.shared.getter();
  v3[14] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100044C24, v5, v4);
}

uint64_t sub_100044C24(uint64_t a1)
{
  v2 = v1[11];
  v1[7] = v1[10];
  v1[17] = static CommunicationActor.shared.getter();
  v3 = swift_task_alloc();
  v1[18] = v3;
  *v3 = v1;
  v3[1] = sub_100044D64;
  v4 = v1[9];

  return (sub_10004F5C0)(v1 + 2, v4, 0, 0, v2, &off_1001265F0);
}

uint64_t sub_100044D64()
{
  *(*v1 + 152) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100044FD4;
  }

  else
  {
    v4 = sub_100044ED0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100044ED0()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_100044F34, v1, v2);
}

uint64_t sub_100044F34()
{

  sub_10000C3CC(v0 + 2, v0[5]);
  AsyncSequence.generic.getter();
  sub_10000C304(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100044FD4()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_100045038, v1, v2);
}

uint64_t sub_100045038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004509C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100045134;

  return sub_100045244(a1);
}

uint64_t sub_100045134(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_100045244(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for StoredPhoto();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v2[25] = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v9;
  v2[27] = v8;

  return _swift_task_switch(sub_100045508, v9, v8);
}

uint64_t sub_100045508()
{
  v31 = v0;
  v1 = v0[24];
  v0[28] = *(v0[5] + 16);
  sub_10005F9A8(v1);
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[4];
  static Log.photos.getter();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  if (v8)
  {
    v29 = v0[16];
    v15 = swift_slowAlloc();
    v27 = v7;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100102F80(v17, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v27, "Processing mask photo: %s", v15, 0xCu);
    sub_10000C304(v16);

    v21 = *(v10 + 8);
    v21(v28, v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[29] = v21;
  v22 = sub_10005D8D8(&off_100125E80);
  v0[30] = v22;
  sub_10000C460(&unk_100125EA0, &qword_10012A618, &qword_1001094C8);
  v23 = swift_task_alloc();
  v0[31] = v23;
  *v23 = v0;
  v23[1] = sub_100045870;
  v24 = v0[24];
  v25 = v0[4];

  return sub_10004656C(v25, v24, v22);
}

uint64_t sub_100045870(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v5 = *(v3 + 216);
  v6 = *(v3 + 208);
  if (v1)
  {
    v7 = sub_100046204;
  }

  else
  {
    v7 = sub_1000459CC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000459CC()
{
  v2 = v0[32];
  v1 = v0[33];
  (*(v0[21] + 16))(v0[23], v0[24], v0[20]);
  v3 = v2;
  StoredPhoto.init(pfcStoredPhoto:baseURL:)();
  if (v1)
  {
    v4 = v0[32];
    (*(v0[21] + 8))(v0[24], v0[20]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_100045B84;
    v8 = v0[11];
    v9 = v0[12];

    return sub_10005FB64(v8, v9);
  }
}

uint64_t sub_100045B84()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_100046300;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[9];
    v9 = *(v7 + 8);
    v2[36] = v9;
    v2[37] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v3 = v2[26];
    v4 = v2[27];
    v5 = sub_100045CBC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100045CBC()
{
  v49 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000100107270;
  (*(v3 + 104))(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_10005DDF8();
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v2, v4);
  v5 = Data.init(contentsOf:options:)();
  if (v1)
  {
    v7 = *(v0 + 288);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v11 = *(v0 + 160);
    v12 = *(v0 + 96);
    v13 = *(v0 + 72);

    v14 = *(v10 + 8);
    v14(v9, v11);
    v7(v12, v13);
    v14(v8, v11);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = *(v0 + 176);
    v18 = [objc_opt_self() defaultManager];
    sub_100103938(v17, 1);

    static Log.photos.getter();
    sub_100041E80(v15, v16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    sub_10000C868(v15, v16);
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 288);
    v25 = *(v0 + 232);
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);
    v46 = *(v0 + 176);
    v47 = *(v0 + 160);
    v42 = *(v0 + 144);
    v43 = *(v0 + 256);
    v41 = *(v0 + 128);
    v44 = *(v0 + 72);
    v45 = *(v0 + 96);
    if (v23)
    {
      v28 = swift_slowAlloc();
      v40 = v24;
      v29 = swift_slowAlloc();
      v48 = v29;
      *v28 = 136315138;
      sub_100041E80(v15, v16);
      v38 = v25;
      v39 = v26;
      v30 = Data.description.getter();
      v32 = v31;
      sub_10000C868(v15, v16);
      v33 = sub_100102F80(v30, v32, &v48);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "Returning mask: %s", v28, 0xCu);
      sub_10000C304(v29);

      v38(v42, v41);
      v34 = *(v27 + 8);
      v35 = v47;
      v34(v46, v47);
      v40(v45, v44);
      v36 = v39;
    }

    else
    {

      v25(v42, v41);
      v34 = *(v27 + 8);
      v35 = v47;
      v34(v46, v47);
      v24(v45, v44);
      v36 = v26;
    }

    v34(v36, v35);

    v37 = *(v0 + 8);

    return v37(v15, v16);
  }
}

uint64_t sub_100046204()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100046300()
{
  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100046424(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100046444, 0, 0);
}

uint64_t sub_100046444()
{
  v1 = *(v0 + 24);
  sub_10000560C(&qword_10012A600, &qword_100109468);
  v2 = type metadata accessor for StoredPhoto();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001089C0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  GeneratePhotoResponse.init(results:)();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for UUID();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  sub_10000560C(&qword_10012A568, &unk_1001093E0);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v4[40] = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v9;
  v4[42] = v10;

  return _swift_task_switch(sub_10004688C, v9, v10);
}

uint64_t sub_10004688C()
{
  v33 = v0;
  v1 = objc_opt_self();
  sub_10000560C(&qword_10012A090, &qword_100108E48);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001089C0;
  *(v2 + 32) = UUID.uuidString.getter();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v1 fetchAssetsWithUUIDs:isa options:0];

  if (!v5)
  {
    __break(1u);
  }

  v6 = [v5 firstObject];
  v0[43] = v6;

  if (v6)
  {

    return _swift_task_switch(sub_100046CE0, 0, 0);
  }

  else
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[17];
    v10 = v0[13];

    static Log.default.getter();
    (*(v8 + 16))(v7, v10, v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[23];
    v16 = v0[20];
    v15 = v0[21];
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    if (v13)
    {
      v31 = v0[20];
      v20 = swift_slowAlloc();
      v29 = v12;
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v14;
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_100102F80(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v29, "PhotoProcessor cannot fetch asset for %s", v20, 0xCu);
      sub_10000C304(v21);

      (*(v15 + 8))(v30, v31);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }

    sub_10005DD30();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100046CE0()
{
  v2 = objc_opt_self();
  v3 = VCPMediaAnalysisService_AllowOnDemandOption;
  *(v0 + 352) = v2;
  *(v0 + 360) = v3;
  *(v0 + 480) = 0;
  *(v0 + 368) = 0;
  v4 = *(v0 + 120);
  v5 = [v2 sharedAnalysisService];
  *(v0 + 80) = v4;
  *(v0 + 376) = v5;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 80);
  *(v0 + 88) = v10;
  v11 = v0 + 88;
  v12 = sub_100057C14(v6, v8);
  v14 = *(v10 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v13;
  if (*(v10 + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = v12;
    sub_1000589E8();
    v12 = v22;
    if (v1)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = *v11;
    *(*v11 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v23 = (v21[6] + 16 * v12);
    *v23 = v6;
    v23[1] = v8;
    *(v21[7] + v12) = 1;
    v24 = v21[2];
    v16 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v16)
    {
      __break(1u);
    }

    v21[2] = v25;
    goto LABEL_14;
  }

  sub_10005A51C(v17, isUniquelyReferenced_nonNull_native);
  v12 = sub_100057C14(v6, v8);
  if ((v1 & 1) != (v18 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  if ((v1 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v20 = v12;

  v21 = *v11;
  *(*(*v11 + 56) + v20) = 1;
LABEL_14:
  v26 = *(v0 + 344);
  *(v0 + 80) = v21;
  v27 = swift_task_alloc();
  *(v0 + 384) = v27;
  v27[2] = v5;
  v27[3] = v26;
  v27[4] = v0 + 80;
  v28 = swift_task_alloc();
  *(v0 + 392) = v28;
  v29 = sub_10000560C(&qword_10012A578, &unk_1001093F0);
  *v28 = v0;
  v28[1] = sub_100046FE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000042, 0x8000000100107170, sub_10005DD84, v27, v29);
}

uint64_t sub_100046FE8()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1000481A0;
  }

  else
  {

    v2 = sub_100047138;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100047138()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_1000471D8, v1, v2);
}

uint64_t sub_1000471D8()
{
  v157 = v0;
  v1 = v0;
  v2 = *(v0 + 400);
  v3 = *(v0 + 16);
  *(v0 + 408) = v3;
  v151 = *(v0 + 24);
  *(v0 + 416) = v151;
  *(v0 + 432) = *(v0 + 40);
  sub_10000D828(0, &qword_10012A580, NSKeyedUnarchiver_ptr);
  sub_10000D828(0, &qword_10012A588, PFCStoredPhoto_ptr);
  v4 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  *(v0 + 440) = v4;
  *(v0 + 448) = v2;
  if (v2)
  {

LABEL_3:

    static Log.default.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "MAD watchFaceData cannot be unarchived", v7, 2u);
    }

    v8 = *(v0 + 344);
    v9 = v1[24];
    v10 = v1[20];
    v11 = v1[21];

    (*(v11 + 8))(v9, v10);
    sub_10005DD30();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    sub_10000C868(v3, v151);

    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  v15 = [*(v0 + 344) mainFileURL];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(v0 + 304);
  v19 = *(v0 + 312);
  v20 = *(v0 + 296);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  (*(v1[30] + 56))(v1[38], v17, 1, v1[29]);
  sub_10005DD90(v18, v19, &qword_10012A568, &unk_1001093E0);
  sub_10005F690(v19, v20, &qword_10012A568, &unk_1001093E0);
  if ((*(v21 + 48))(v20, 1, v22) == 1)
  {
    v24 = 0;
  }

  else
  {
    v25 = v1[37];
    v26 = v1[29];
    v27 = v1[30];
    URL._bridgeToObjectiveC()(v23);
    v24 = v28;
    (*(v27 + 8))(v25, v26);
  }

  v29 = UIAccessibilityMetadataDescriptionForImage();

  if (v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = [objc_opt_self() sharedInstance];
    v32 = [v31 gizmoApplicationAccessibilityEnabled];

    if (v32)
    {
      v33 = swift_task_alloc();
      v1[57] = v33;
      *v33 = v1;
      v33[1] = sub_100048670;
      v34 = v1[39];

      return sub_10004E214(v34);
    }

    v30 = 0;
  }

  [v1[55] setAccessibilityDescription:v30];

  v35 = [objc_opt_self() defaultManager];
  URL.init(fileURLWithPath:)();
  v36 = String._bridgeToObjectiveC()();

  v1[12] = 0;
  v136 = v35;
  v37 = [v35 contentsOfDirectoryAtPath:v36 error:v1 + 12];

  v38 = v1[12];
  if (!v37)
  {
    v57 = v1[36];
    v58 = v1[33];
    v60 = v1[29];
    v59 = v1[30];
    v61 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    static Log.default.getter();
    (*(v59 + 16))(v58, v57, v60);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v1[33];
    v66 = v1[29];
    v67 = v1[30];
    v68 = v1[25];
    v69 = v1[20];
    v70 = v1[21];
    v153 = v1;
    if (v64)
    {
      v71 = swift_slowAlloc();
      v148 = v68;
      v72 = swift_slowAlloc();
      v156[0] = v72;
      *v71 = 136315138;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      logb = v69;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v63;
      v75 = v74;
      v149 = *(v67 + 8);
      v149(v65, v66);
      v76 = sub_100102F80(v73, v75, v156);

      *(v71 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v62, v141, "MAD cannot list content of %s", v71, 0xCu);
      sub_10000C304(v72);

      (*(v70 + 8))(v148, logb);
    }

    else
    {

      v149 = *(v67 + 8);
      v149(v65, v66);
      (*(v70 + 8))(v68, v69);
    }

    v112 = v153[55];
    v114 = v153[51];
    v113 = v153[52];
    v115 = v153[43];
    v116 = v153[39];
    v117 = v153[36];
    v118 = v153[29];
    sub_10005DD30();
    swift_allocError();
    *v119 = 4;
    swift_willThrow();

    sub_10000C868(v114, v113);
    v149(v117, v118);
    v1 = v153;
LABEL_49:
    sub_10000C460(v116, &qword_10012A568, &unk_1001093E0);
LABEL_6:

    v13 = v1[1];

    return v13();
  }

  v39 = v1[15];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v38;

  if (*(v39 + 16) && (v42 = sub_100057C14(0xD000000000000014, 0x8000000100106D90), (v43 & 1) != 0) && (*(*(v1[15] + 56) + v42) & 1) != 0)
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  v134 = v44;
  v131 = *(v40 + 16);
  if (v131)
  {
    v45 = 0;
    v46 = v1[27];
    v129 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v127 = (v46 + 8);
    v128 = (v46 + 104);
    v47 = v1[56];
    v48 = (v40 + 40);
    v133 = (v1[30] + 8);
    v130 = v40;
    while (1)
    {
      if (v45 >= *(v40 + 16))
      {
        __break(1u);
      }

      v137 = v45;
      loga = v1[35];
      v147 = v1[34];
      v49 = v1[28];
      v50 = v1[26];
      v51 = *v48;
      v140 = *(v48 - 1);
      v1[6] = v140;
      v1[7] = v51;
      v138 = *v128;
      v152 = v47;
      (*v128)(v49, v129, v50);
      sub_10005DDF8();

      URL.appending<A>(path:directoryHint:)();
      v52 = *v127;
      (*v127)(v49, v50);
      v1[8] = v140;
      v1[9] = v51;
      v138(v49, v129, v50);
      URL.appending<A>(path:directoryHint:)();
      v52(v49, v50);

      sub_100103A60(loga, v147, v134);
      if (v152)
      {
        break;
      }

      v53 = v1[35];
      v54 = v1[29];
      v45 = v137 + 1;
      v55 = *v133;
      (*v133)(v1[34], v54);
      v55(v53, v54);
      v47 = 0;
      v56 = 0;
      v48 += 2;
      v40 = v130;
      if (v131 == v137 + 1)
      {
        goto LABEL_38;
      }
    }

    v86 = v1[35];
    logc = v1[36];
    v87 = v1[34];
    v88 = v1[32];
    v154 = v1[31];
    v90 = v1[29];
    v89 = v1[30];
    v142 = v1[14];

    v91 = *v133;
    (*v133)(v87, v90);
    v150 = v91;
    v91(v86, v90);
    static Log.default.getter();
    v92 = *(v89 + 16);
    v92(v88, logc, v90);
    v92(v154, v142, v90);
    swift_errorRetain();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    log = v93;
    v95 = os_log_type_enabled(v93, v94);
    v97 = v1[31];
    v96 = v1[32];
    v98 = v1[29];
    v99 = v1[21];
    v100 = v1[22];
    v155 = v1;
    v101 = v1[20];
    if (v95)
    {
      v102 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v156[0] = swift_slowAlloc();
      *v102 = 136315650;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v132 = v94;
      v139 = v101;
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      v150(v96, v98);
      v106 = sub_100102F80(v103, v105, v156);

      *(v102 + 4) = v106;
      *(v102 + 12) = 2080;
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      v150(v97, v98);
      v110 = sub_100102F80(v107, v109, v156);

      *(v102 + 14) = v110;
      *(v102 + 22) = 2112;
      swift_errorRetain();
      v111 = _swift_stdlib_bridgeErrorToNSError();
      *(v102 + 24) = v111;
      *v135 = v111;
      _os_log_impl(&_mh_execute_header, log, v132, "MAD: cannot copy results from %s to %s, error == %@", v102, 0x20u);
      sub_10000C460(v135, &qword_100129EF8, &qword_100108C70);

      swift_arrayDestroy();

      (*(v99 + 8))(v100, v139);
    }

    else
    {

      v150(v97, v98);
      v150(v96, v98);
      (*(v99 + 8))(v100, v101);
    }

    v1 = v155;
    v120 = v155[55];
    v122 = v155[51];
    v121 = v155[52];
    v123 = v155[43];
    v116 = v155[39];
    v124 = v155[36];
    v125 = v155[29];
    sub_10005DD30();
    swift_allocError();
    *v126 = 5;
    swift_willThrow();

    sub_10000C868(v122, v121);

    v150(v124, v125);
    goto LABEL_49;
  }

  v56 = v1[56];
LABEL_38:
  v77 = v1[36];

  sub_100103938(v77, 1);
  if (v56)
  {
  }

  v79 = v1[51];
  v78 = v1[52];
  v80 = v1[39];
  v81 = v1[36];
  v82 = v1[29];
  v83 = v1[30];

  sub_10000C868(v79, v78);
  (*(v83 + 8))(v81, v82);
  sub_10000C460(v80, &qword_10012A568, &unk_1001093E0);

  v84 = v1[1];
  v85 = v1[55];

  return v84(v85);
}

uint64_t sub_1000481A0()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 400);
  if (v1)
  {
    swift_willThrow();
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);

    return _swift_task_switch(sub_100048510, v3, v4);
  }

  *(v0 + 480) = 1;
  *(v0 + 368) = v2;
  v5 = *(v0 + 120);
  v6 = [*(v0 + 352) sharedAnalysisService];
  *(v0 + 376) = v6;
  *(v0 + 80) = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 80);
  *(v0 + 88) = v11;
  v12 = sub_100057C14(v7, v9);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v5) = v13;
  if (*(v11 + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_15:
    v21 = v12;
    sub_1000589E8();
    v12 = v21;
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_16:
    v20 = *(v0 + 88);
    v20[(v12 >> 6) + 8] |= 1 << v12;
    v22 = (v20[6] + 16 * v12);
    *v22 = v7;
    v22[1] = v9;
    *(v20[7] + v12) = 1;
    v23 = v20[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      __break(1u);
    }

    v20[2] = v24;
    goto LABEL_18;
  }

  sub_10005A51C(v17, isUniquelyReferenced_nonNull_native);
  v12 = sub_100057C14(v7, v9);
  if ((v5 & 1) != (v18 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_12:
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = v12;

  v20 = *(v0 + 88);
  *(v20[7] + v19) = 1;
LABEL_18:
  v25 = *(v0 + 344);
  *(v0 + 80) = v20;
  v26 = swift_task_alloc();
  *(v0 + 384) = v26;
  v26[2] = v6;
  v26[3] = v25;
  v26[4] = v0 + 80;
  v27 = swift_task_alloc();
  *(v0 + 392) = v27;
  v28 = sub_10000560C(&qword_10012A578, &unk_1001093F0);
  *v27 = v0;
  v27[1] = sub_100046FE8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000042, 0x8000000100107170, sub_10005DD84, v26, v28);
}

uint64_t sub_100048510()
{
  v1 = *(v0 + 344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100048670(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 464) = a1;
  *(v4 + 472) = a2;

  v5 = *(v3 + 336);
  v6 = *(v3 + 328);

  return _swift_task_switch(sub_1000487CC, v6, v5);
}

uint64_t sub_1000487CC()
{
  v130 = v0;

  v1 = String._bridgeToObjectiveC()();

  [*(v0 + 440) setAccessibilityDescription:v1];

  v2 = [objc_opt_self() defaultManager];
  URL.init(fileURLWithPath:)();
  v3 = String._bridgeToObjectiveC()();

  *(v0 + 96) = 0;
  v108 = v2;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:v0 + 96];

  v5 = *(v0 + 96);
  v128 = v0;
  if (!v4)
  {
    v25 = *(v0 + 288);
    v26 = *(v0 + 264);
    v27 = *(v0 + 232);
    v28 = *(v0 + 240);
    v29 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    static Log.default.getter();
    (*(v28 + 16))(v26, v25, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 264);
    v34 = *(v0 + 232);
    v35 = *(v0 + 240);
    v36 = *(v0 + 200);
    v39 = v0 + 160;
    v37 = *(v0 + 160);
    v38 = *(v39 + 8);
    if (v32)
    {
      v40 = swift_slowAlloc();
      v124 = v37;
      v41 = swift_slowAlloc();
      v129[0] = v41;
      *v40 = 136315138;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      logb = v36;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v31;
      v44 = v43;
      v126 = *(v35 + 8);
      v126(v33, v34);
      v45 = sub_100102F80(v42, v44, v129);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v30, v117, "MAD cannot list content of %s", v40, 0xCu);
      sub_10000C304(v41);

      (*(v38 + 8))(logb, v124);
    }

    else
    {

      v126 = *(v35 + 8);
      v126(v33, v34);
      (*(v38 + 8))(v36, v37);
    }

    v84 = v128[55];
    v86 = v128[51];
    v85 = v128[52];
    v87 = v128[43];
    v88 = v128[39];
    v89 = v128[36];
    v90 = v128[29];
    sub_10005DD30();
    swift_allocError();
    *v91 = 4;
    swift_willThrow();

    sub_10000C868(v86, v85);
    v126(v89, v90);
LABEL_27:
    sub_10000C460(v88, &qword_10012A568, &unk_1001093E0);

    v99 = v128[1];

    return v99();
  }

  v6 = *(v0 + 120);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  if (*(v6 + 16) && (v9 = sub_100057C14(0xD000000000000014, 0x8000000100106D90), (v10 & 1) != 0) && (*(*(*(v0 + 120) + 56) + v9) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v105 = v11;
  v104 = *(v7 + 16);
  if (v104)
  {
    v12 = 0;
    v13 = *(v0 + 216);
    v102 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v100 = (v13 + 8);
    v101 = (v13 + 104);
    v14 = *(v0 + 448);
    v15 = (v7 + 40);
    v107 = (*(v0 + 240) + 8);
    v103 = v7;
    while (1)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
      }

      v111 = v12;
      v116 = *(v0 + 280);
      loga = *(v0 + 272);
      v16 = *(v0 + 224);
      v17 = *(v0 + 208);
      v18 = *(v15 - 1);
      v19 = *v15;
      *(v0 + 48) = v18;
      *(v0 + 56) = v19;
      v113 = *v101;
      v125 = v14;
      v109 = v15;
      (*v101)(v16, v102, v17);
      sub_10005DDF8();

      URL.appending<A>(path:directoryHint:)();
      v20 = *v100;
      (*v100)(v16, v17);
      *(v0 + 64) = v18;
      *(v0 + 72) = v19;
      v113(v16, v102, v17);
      URL.appending<A>(path:directoryHint:)();
      v20(v16, v17);

      sub_100103A60(v116, loga, v105);
      if (v125)
      {
        break;
      }

      v21 = *(v0 + 280);
      v22 = *(v0 + 232);
      v12 = v111 + 1;
      v23 = *v107;
      (*v107)(*(v0 + 272), v22);
      v23(v21, v22);
      v14 = 0;
      v24 = 0;
      v15 = v109 + 2;
      v7 = v103;
      if (v104 == v111 + 1)
      {
        goto LABEL_16;
      }
    }

    v57 = *(v0 + 280);
    v58 = *(v0 + 272);
    v59 = *(v0 + 256);
    v118 = *(v0 + 288);
    logc = *(v0 + 248);
    v61 = *(v0 + 232);
    v60 = *(v0 + 240);
    v114 = *(v0 + 112);

    v62 = *v107;
    (*v107)(v58, v61);
    v127 = v62;
    v62(v57, v61);
    static Log.default.getter();
    v63 = *(v60 + 16);
    v63(v59, v118, v61);
    v63(logc, v114, v61);
    swift_errorRetain();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    log = v64;
    v66 = os_log_type_enabled(v64, v65);
    v68 = *(v0 + 248);
    v67 = *(v0 + 256);
    v69 = *(v0 + 232);
    v70 = *(v0 + 168);
    v71 = *(v0 + 176);
    v72 = *(v0 + 160);
    if (v66)
    {
      v119 = *(v0 + 160);
      v73 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v129[0] = swift_slowAlloc();
      *v73 = 136315650;
      sub_10005F648(&qword_10012A590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v115 = v70;
      v112 = v71;
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v65;
      v76 = v75;
      v127(v67, v69);
      v77 = sub_100102F80(v74, v76, v129);
      v78 = v0;

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v127(v68, v69);
      v82 = sub_100102F80(v79, v81, v129);

      *(v73 + 14) = v82;
      *(v73 + 22) = 2112;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 24) = v83;
      *v110 = v83;
      _os_log_impl(&_mh_execute_header, log, v106, "MAD: cannot copy results from %s to %s, error == %@", v73, 0x20u);
      sub_10000C460(v110, &qword_100129EF8, &qword_100108C70);

      swift_arrayDestroy();

      (*(v115 + 8))(v112, v119);
    }

    else
    {
      v78 = v0;

      v127(v68, v69);
      v127(v67, v69);
      (*(v70 + 8))(v71, v72);
    }

    v92 = v78[55];
    v94 = v78[51];
    v93 = v78[52];
    v95 = v78[43];
    v88 = v78[39];
    v96 = v78[36];
    v97 = v78[29];
    sub_10005DD30();
    swift_allocError();
    *v98 = 5;
    swift_willThrow();

    sub_10000C868(v94, v93);

    v127(v96, v97);
    goto LABEL_27;
  }

  v24 = *(v0 + 448);
LABEL_16:
  v46 = *(v0 + 288);

  sub_100103938(v46, 1);
  if (v24)
  {
  }

  v48 = *(v0 + 408);
  v47 = *(v0 + 416);
  v49 = *(v0 + 344);
  v50 = *(v0 + 312);
  v51 = *(v0 + 288);
  v52 = *(v0 + 240);
  v53 = v128[29];

  sub_10000C868(v48, v47);
  (*(v52 + 8))(v51, v53);
  sub_10000C460(v50, &qword_10012A568, &unk_1001093E0);

  v54 = v128[1];
  v55 = v128[55];

  return v54(v55);
}

uint64_t sub_1000494C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_10000560C(&qword_10012A550, &qword_1001093B0);
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_10000560C(&qword_10012A558, &unk_1001093B8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v6[14] = swift_task_alloc();
  v8 = type metadata accessor for StoredPhoto();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[28] = v10;
  v6[29] = *(v10 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return _swift_task_switch(sub_100049784, 0, 0);
}

uint64_t sub_100049784()
{
  v0[32] = *(v0[5] + 16);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_100049824;
  v2 = v0[6];

  return sub_100060270(v2);
}

uint64_t sub_100049824(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100049A2C, 0, 0);
  }
}

void *sub_100049A2C(uint64_t a1)
{
  v113 = v1;
  static Log.photos.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 272);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v111 = v102;
    *v6 = 134218242;
    *(v6 + 4) = *(v5 + 16);

    *(v6 + 12) = 2080;
    v7 = *(v5 + 16);
    if (v7)
    {
      v99 = v6;
      v100 = v3;
      v101 = v2;
      v8 = *(v1 + 272);
      v9 = *(v1 + 184);
      v10 = *(v1 + 128);
      v112 = _swiftEmptyArrayStorage;
      sub_10005C508(0, v7, 0);
      v11 = _swiftEmptyArrayStorage;
      v13 = *(v10 + 16);
      v12 = v10 + 16;
      v14 = v8 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v104 = *(v12 + 56);
      v106 = v13;
      do
      {
        v15 = *(v1 + 168);
        v16 = *(v1 + 120);
        v106(v15, v14, v16);
        StoredPhoto.localIdentifier.getter();
        (*(v12 - 8))(v15, v16);
        v112 = v11;
        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          sub_10005C508((v17 > 1), v18 + 1, 1);
          v11 = v112;
        }

        v19 = *(v1 + 216);
        v20 = *(v1 + 176);
        v11[2] = v18 + 1;
        (*(v9 + 32))(v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v19, v20);
        v14 += v104;
        --v7;
      }

      while (v7);
      v2 = v101;
      v3 = v100;
      v6 = v99;
    }

    v25 = *(v1 + 248);
    v27 = *(v1 + 224);
    v26 = *(v1 + 232);
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_100102F80(v28, v30, &v111);

    *(v6 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v2, v3, "Had %ld cached photos: %s", v6, 0x16u);
    sub_10000C304(v102);

    v24 = *(v26 + 8);
    v24(v25, v27);
  }

  else
  {
    v21 = *(v1 + 248);
    v22 = *(v1 + 224);
    v23 = *(v1 + 232);

    v24 = *(v23 + 8);
    v24(v21, v22);
  }

  *(v1 + 296) = v24;
  result = *(v1 + 272);
  v33 = result[2];
  *(v1 + 304) = v33;
  if (!v33)
  {
    v41 = *(v1 + 24);

    *(v1 + 320) = v41;
    v42 = *(v1 + 280);
    v43 = *(v1 + 184);
    v44 = *(v1 + 72);
    v45 = *(v42 + 16);
    *(v1 + 328) = v45;
    if (v45)
    {
      v46 = *(v1 + 176);
      v47 = *(v43 + 16);
      v49 = *(v1 + 88);
      v48 = *(v1 + 96);
      v50 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v51 = *(v44 + 48);
      *v49 = 0;
      v47(&v49[v51], v42 + v50, v46);
      sub_10005DD90(v49, v48, &qword_10012A550, &qword_1001093B0);
      v52 = 0;
      v44 = *(v1 + 72);
      v53 = 1;
    }

    else
    {
      v53 = 0;
      v52 = 1;
    }

    *(v1 + 368) = v53;
    v66 = *(v1 + 96);
    v65 = *(v1 + 104);
    v67 = *(v1 + 80);
    (*(v67 + 56))(v66, v52, 1, v44);
    sub_10005DD90(v66, v65, &qword_10012A558, &unk_1001093B8);
    if ((*(v67 + 48))(v65, 1, v44) == 1)
    {

      v40 = *(v1 + 8);
      goto LABEL_29;
    }

    v69 = *(v1 + 192);
    v68 = *(v1 + 200);
    v70 = *(v1 + 176);
    v71 = *(v1 + 184);
    v72 = *(v1 + 104);
    v73 = *v72;
    (*(v71 + 32))(v68, &v72[*(*(v1 + 72) + 48)], v70);
    static Log.photos.getter();
    (*(v71 + 16))(v69, v68, v70);

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      result = swift_slowAlloc();
      v109 = result;
      *(v1 + 16) = result;
      *v76 = 134218498;
      v77 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
LABEL_40:
        __break(1u);
        return result;
      }

      v78 = *(v1 + 280);
      v105 = *(v1 + 240);
      v107 = *(v1 + 296);
      v80 = *(v1 + 184);
      v79 = *(v1 + 192);
      v81 = v1;
      v82 = *(v1 + 176);
      v103 = *(v1 + 224);
      *(v76 + 4) = v77;
      *(v76 + 12) = 2048;
      *(v76 + 14) = *(v78 + 16);

      *(v76 + 22) = 2080;
      sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v86 = *(v80 + 8);
      v86(v79, v82);
      v87 = sub_100102F80(v83, v85, v81 + 2);

      *(v76 + 24) = v87;
      _os_log_impl(&_mh_execute_header, v74, v75, "Processing uncached photo (%ld/%ld): %s", v76, 0x20u);
      sub_10000C304(v109);

      v107(v105, v103);
    }

    else
    {
      v110 = *(v1 + 296);
      v88 = *(v1 + 240);
      v89 = *(v1 + 224);
      v91 = *(v1 + 184);
      v90 = *(v1 + 192);
      v92 = v1;
      v93 = *(v1 + 176);

      v86 = *(v91 + 8);
      v86(v90, v93);
      v81 = v92;
      v110(v88, v89);
    }

    v81[47] = v86;
    v94 = swift_task_alloc();
    v81[48] = v94;
    *v94 = v81;
    v94[1] = sub_10004B1F4;
    v95 = v81[25];
    v96 = v81[17];
    v97 = v81[7];
    v98 = v81[8];

    return sub_10004BF9C(v96, v95, v97, v98);
  }

  v34 = *(v1 + 128);
  v35 = *(v1 + 56);
  v36 = *(v34 + 80);
  *(v1 + 416) = v36;
  v37 = *(v1 + 288);
  *(v1 + 312) = 0;
  if (!result[2])
  {
    __break(1u);
    goto LABEL_40;
  }

  v38 = *(v34 + 16);
  v38(*(v1 + 160), result + ((v36 + 32) & ~v36), *(v1 + 120));
  v39 = *(v1 + 160);
  if (v35)
  {
    (*(v1 + 56))(*(v1 + 160));
    if (v37)
    {
      (*(*(v1 + 128) + 8))(*(v1 + 160), *(v1 + 120));

      v40 = *(v1 + 8);
LABEL_29:

      return v40();
    }

    v56 = *(v1 + 152);
    v57 = *(v1 + 120);
    v58 = *(v1 + 128);
    v59 = *(v1 + 112);
    (*(v58 + 56))(v59, 0, 1, v57);
    (*(v58 + 32))(v56, v59, v57);
  }

  else
  {
    v54 = *(v1 + 152);
    v55 = *(v1 + 120);
    (*(*(v1 + 128) + 56))(*(v1 + 112), 1, 1, v55);
    v38(v54, v39, v55);
  }

  sub_10005F648(&qword_10012A560, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v38(*(v1 + 144), *(v1 + 152), *(v1 + 120));
    v108 = (*(v1 + 24) + **(v1 + 24));
    v60 = swift_task_alloc();
    *(v1 + 352) = v60;
    *v60 = v1;
    v60[1] = sub_10004A788;
    v61 = *(v1 + 144);

    return v108(v61);
  }

  else
  {
    v62 = swift_task_alloc();
    *(v1 + 336) = v62;
    *v62 = v1;
    v62[1] = sub_10004A5A0;
    v63 = *(v1 + 144);
    v64 = *(v1 + 152);

    return sub_10005FB64(v63, v64);
  }
}

uint64_t sub_10004A5A0()
{
  v2 = *v1;
  v2[43] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004BA3C, 0, 0);
  }

  else
  {
    v6 = (v2[3] + *v2[3]);
    v3 = swift_task_alloc();
    v2[44] = v3;
    *v3 = v2;
    v3[1] = sub_10004A788;
    v4 = v2[18];

    return v6(v4);
  }
}

uint64_t sub_10004A788()
{
  *(*v1 + 360) = v0;

  if (v0)
  {

    v2 = sub_10004BB90;
  }

  else
  {
    v2 = sub_10004A8AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_10004A8AC(uint64_t a1)
{
  v79 = *(v1 + 304);
  v2 = *(v1 + 208);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v6 = *(v1 + 152);
  v5 = *(v1 + 160);
  v7 = *(v1 + 144);
  v8 = *(v1 + 120);
  v9 = *(v1 + 128);
  v10 = *(v1 + 312) + 1;
  StoredPhoto.localIdentifier.getter();
  sub_10006C370(v2, 0);
  (*(v4 + 8))(v2, v3);
  v11 = *(v9 + 8);
  v11(v7, v8);
  v11(v6, v8);
  result = (v11)(v5, v8);
  if (v10 == v79)
  {

    *(v1 + 320) = *(v1 + 24);
    v13 = *(v1 + 280);
    v14 = *(v1 + 184);
    v15 = *(v1 + 72);
    v16 = *(v13 + 16);
    *(v1 + 328) = v16;
    if (v16)
    {
      v17 = *(v1 + 176);
      v18 = *(v14 + 16);
      v20 = *(v1 + 88);
      v19 = *(v1 + 96);
      v21 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v22 = *(v15 + 48);
      *v20 = 0;
      v18(&v20[v22], v13 + v21, v17);
      sub_10005DD90(v20, v19, &qword_10012A550, &qword_1001093B0);
      v23 = 0;
      v15 = *(v1 + 72);
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v23 = 1;
    }

    *(v1 + 368) = v24;
    v34 = *(v1 + 96);
    v33 = *(v1 + 104);
    v35 = *(v1 + 80);
    (*(v35 + 56))(v34, v23, 1, v15);
    sub_10005DD90(v34, v33, &qword_10012A558, &unk_1001093B8);
    if ((*(v35 + 48))(v33, 1, v15) == 1)
    {

      v32 = *(v1 + 8);
      goto LABEL_11;
    }

    v37 = *(v1 + 192);
    v36 = *(v1 + 200);
    v38 = *(v1 + 176);
    v39 = *(v1 + 184);
    v40 = *(v1 + 104);
    v41 = *v40;
    (*(v39 + 32))(v36, &v40[*(*(v1 + 72) + 48)], v38);
    static Log.photos.getter();
    (*(v39 + 16))(v37, v36, v38);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      v56 = *(v1 + 296);
      v57 = *(v1 + 240);
      v58 = *(v1 + 224);
      v60 = *(v1 + 184);
      v59 = *(v1 + 192);
      v61 = *(v1 + 176);

      v52 = *(v60 + 8);
      v52(v59, v61);
      v56(v57, v58);
      goto LABEL_19;
    }

    v44 = swift_slowAlloc();
    result = swift_slowAlloc();
    v80 = result;
    *(v1 + 16) = result;
    *v44 = 134218498;
    if (!__OFADD__(v41, 1))
    {
      v45 = *(v1 + 280);
      v77 = *(v1 + 240);
      v78 = *(v1 + 296);
      v47 = *(v1 + 184);
      v46 = *(v1 + 192);
      v48 = *(v1 + 176);
      v76 = *(v1 + 224);
      *(v44 + 4) = v41 + 1;
      *(v44 + 12) = 2048;
      *(v44 + 14) = *(v45 + 16);

      *(v44 + 22) = 2080;
      sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = *(v47 + 8);
      v52(v46, v48);
      v53 = sub_100102F80(v49, v51, (v1 + 16));

      *(v44 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "Processing uncached photo (%ld/%ld): %s", v44, 0x20u);
      sub_10000C304(v80);

      v78(v77, v76);
LABEL_19:
      *(v1 + 376) = v52;
      v62 = swift_task_alloc();
      *(v1 + 384) = v62;
      *v62 = v1;
      v62[1] = sub_10004B1F4;
      v63 = *(v1 + 200);
      v64 = *(v1 + 136);
      v65 = *(v1 + 56);
      v66 = *(v1 + 64);

      return sub_10004BF9C(v64, v63, v65, v66);
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v25 = *(v1 + 360);
  v26 = *(v1 + 312) + 1;
  *(v1 + 312) = v26;
  v27 = *(v1 + 272);
  if (v26 >= *(v27 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v28 = *(v1 + 128);
  v29 = *(v28 + 16);
  v30 = *(v1 + 56);
  v29(*(v1 + 160), v27 + ((*(v1 + 416) + 32) & ~*(v1 + 416)) + *(v28 + 72) * v26, *(v1 + 120));
  v31 = *(v1 + 160);
  if (v30)
  {
    (*(v1 + 56))(*(v1 + 160));
    if (v25)
    {
      (*(*(v1 + 128) + 8))(*(v1 + 160), *(v1 + 120));

      v32 = *(v1 + 8);
LABEL_11:

      return v32();
    }

    v67 = *(v1 + 152);
    v68 = *(v1 + 120);
    v69 = *(v1 + 128);
    v70 = *(v1 + 112);
    (*(v69 + 56))(v70, 0, 1, v68);
    (*(v69 + 32))(v67, v70, v68);
  }

  else
  {
    v54 = *(v1 + 152);
    v55 = *(v1 + 120);
    (*(*(v1 + 128) + 56))(*(v1 + 112), 1, 1, v55);
    v29(v54, v31, v55);
  }

  sub_10005F648(&qword_10012A560, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v29(*(v1 + 144), *(v1 + 152), *(v1 + 120));
    v81 = (*(v1 + 24) + **(v1 + 24));
    v71 = swift_task_alloc();
    *(v1 + 352) = v71;
    *v71 = v1;
    v71[1] = sub_10004A788;
    v72 = *(v1 + 144);

    return v81(v72);
  }

  else
  {
    v73 = swift_task_alloc();
    *(v1 + 336) = v73;
    *v73 = v1;
    v73[1] = sub_10004A5A0;
    v74 = *(v1 + 144);
    v75 = *(v1 + 152);

    return sub_10005FB64(v74, v75);
  }
}

uint64_t sub_10004B1F4()
{
  v2 = *v1;
  v2[49] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004BCFC, 0, 0);
  }

  else
  {
    v6 = (v2[40] + *v2[40]);
    v3 = swift_task_alloc();
    v2[50] = v3;
    *v3 = v2;
    v3[1] = sub_10004B3D4;
    v4 = v2[17];

    return v6(v4);
  }
}

uint64_t sub_10004B3D4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {

    v2 = sub_10004BE3C;
  }

  else
  {
    v2 = sub_10004B4F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_10004B4F0()
{
  v1 = v0[47];
  v2 = v0[25];
  v3 = v0[22];
  (*(v0[16] + 8))(v0[17], v0[15]);
  result = v1(v2, v3);
  v5 = v0[46];
  if (v5 == v0[41])
  {
    v6 = 1;
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v0[35];
  if (v5 >= *(v7 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v5 + 1;
  v13 = *(v9 + 16);
  v14 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5;
  v15 = *(v0[9] + 48);
  *v10 = v5;
  v13(v10 + v15, v14, v8);
  sub_10005DD90(v10, v11, &qword_10012A550, &qword_1001093B0);
  v6 = 0;
  v5 = v12;
LABEL_6:
  v0[46] = v5;
  v16 = v0[12];
  v17 = v0[13];
  v18 = v0[9];
  v19 = v0[10];
  (*(v19 + 56))(v16, v6, 1, v18);
  sub_10005DD90(v16, v17, &qword_10012A558, &unk_1001093B8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {

    v20 = v0[1];

    return v20();
  }

  v22 = v0[24];
  v21 = v0[25];
  v23 = v0[22];
  v24 = v0[23];
  v25 = v0[13];
  v26 = *v25;
  (*(v24 + 32))(v21, &v25[*(v0[9] + 48)], v23);
  static Log.photos.getter();
  (*(v24 + 16))(v22, v21, v23);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v27, v28))
  {
    v39 = v0[37];
    v40 = v0[30];
    v41 = v0[28];
    v43 = v0[23];
    v42 = v0[24];
    v44 = v0[22];

    v37 = *(v43 + 8);
    v37(v42, v44);
    v39(v40, v41);
    goto LABEL_14;
  }

  v29 = swift_slowAlloc();
  result = swift_slowAlloc();
  v0[2] = result;
  *v29 = 134218498;
  if (__OFADD__(v26, 1))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v50 = result;
  v30 = v0[35];
  v52 = v0[30];
  v53 = v0[37];
  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[22];
  v51 = v0[28];
  *(v29 + 4) = v26 + 1;
  *(v29 + 12) = 2048;
  *(v29 + 14) = *(v30 + 16);

  *(v29 + 22) = 2080;
  sub_10005F648(&qword_10012A1C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;
  v37 = *(v32 + 8);
  v37(v31, v33);
  v38 = sub_100102F80(v34, v36, v0 + 2);

  *(v29 + 24) = v38;
  _os_log_impl(&_mh_execute_header, v27, v28, "Processing uncached photo (%ld/%ld): %s", v29, 0x20u);
  sub_10000C304(v50);

  v53(v52, v51);
LABEL_14:
  v0[47] = v37;
  v45 = swift_task_alloc();
  v0[48] = v45;
  *v45 = v0;
  v45[1] = sub_10004B1F4;
  v46 = v0[25];
  v47 = v0[17];
  v48 = v0[7];
  v49 = v0[8];

  return sub_10004BF9C(v47, v46, v48, v49);
}

uint64_t sub_10004BA3C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  v3(v0[19], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004BB90()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[15];
  v4 = *(v0[16] + 8);
  v4(v0[18], v3);
  v4(v1, v3);
  v4(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10004BCFC()
{
  (*(v0 + 376))(*(v0 + 200), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004BE3C()
{
  v1 = v0[47];
  v2 = v0[25];
  v3 = v0[22];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for StoredPhoto();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for CommunicationActor();
  v5[16] = static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v9;
  v5[18] = v8;

  return _swift_task_switch(sub_10004C174, v9, v8);
}

uint64_t sub_10004C174()
{
  v1 = v0[15];
  v0[19] = *(v0[6] + 16);
  sub_10005F9A8(v1);
  v2 = sub_10005D8D8(_swiftEmptyArrayStorage);
  v0[20] = v2;
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_10004C2CC;
  v4 = v0[15];
  v5 = v0[3];

  return sub_10004656C(v5, v4, v2);
}

uint64_t sub_10004C2CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_10004C908;
  }

  else
  {
    v7 = sub_10004C42C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10004C42C()
{
  v2 = v0[22];
  v1 = v0[23];
  (*(v0[13] + 16))(v0[14], v0[15], v0[12]);
  v3 = v2;
  StoredPhoto.init(pfcStoredPhoto:baseURL:)();
  if (v1)
  {
    v4 = v0[22];
    (*(v0[13] + 8))(v0[15], v0[12]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[4];
    v8 = v0[11];
    if (v7)
    {
      v7(v0[11]);
      v13 = v0[9];
      v12 = v0[10];
      v15 = v0[7];
      v14 = v0[8];
      (*(v13 + 56))(v15, 0, 1, v14);
      (*(v13 + 32))(v12, v15, v14);
    }

    else
    {
      v10 = v0[9];
      v9 = v0[10];
      v11 = v0[8];
      (*(v10 + 56))(v0[7], 1, 1, v11);
      (*(v10 + 16))(v9, v8, v11);
    }

    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_10004C6C0;
    v17 = v0[10];
    v18 = v0[2];

    return sub_10005FB64(v18, v17);
  }
}

uint64_t sub_10004C6C0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10004C9C8;
  }

  else
  {
    v5 = sub_10004C7FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004C7FC()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10004C908()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10004C9C8()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}

void sub_10004CACC(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v21 = a2;
  v6 = sub_10000560C(&qword_10012A5C8, &qword_100109428);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_10000560C(&qword_10012A0B8, &qword_100109430);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100108DE0;
  *(v11 + 32) = a3;
  sub_10000D828(0, &qword_10012A2F8, PHAsset_ptr);
  v12 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10004CD78(v14);

  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  aBlock[4] = sub_10005E284;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004E168;
  aBlock[3] = &unk_1001266A8;
  v18 = _Block_copy(aBlock);
  v19 = v12;

  [v21 requestAnalysisTypes:0x400000000000 forAssets:isa withOptions:v15 progressHandler:0 andCompletionHandler:v18];
  _Block_release(v18);
}

Swift::Int sub_10004CD78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000560C(&qword_10012A5E8, &qword_100109450);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10005E1CC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10005E1CC(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_10005E1CC(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10004D030(unint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 | a2)
  {
    if (a1)
    {
      v22 = a1;

      sub_10004D27C(&v22, a4, &v21, &v23);

      v17 = v23;
      a1 = v24;
      v19 = v25;
      v18 = v26;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
    }

    v23 = v17;
    v24 = a1;
    v25 = v19;
    v26 = v18;
    v22 = a2;
    sub_10000560C(&qword_10012A5C8, &qword_100109428);
    CheckedContinuation.resume<>(success:error:)();
    return sub_10005E33C(v17, a1, v19, v18);
  }

  else
  {
    static Log.default.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "MAD Returned nil analysis and error.", v13, 2u);
    }

    (*(v8 + 8))(v10, v7);
    sub_10005DD30();
    v14 = swift_allocError();
    *v15 = 6;
    v23 = v14;
    sub_10000560C(&qword_10012A5C8, &qword_100109428);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10004D27C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v135 = a3;
  v128 = a4;
  v143 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v136 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v132 = &v128 - v10;
  v11 = __chkstk_darwin(v9);
  v130 = &v128 - v12;
  v13 = __chkstk_darwin(v11);
  v131 = &v128 - v14;
  v15 = __chkstk_darwin(v13);
  v129 = &v128 - v16;
  __chkstk_darwin(v15);
  v18 = &v128 - v17;
  v19 = *a1;
  static Log.default.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v134 = v6;
    v23 = v5;
    v24 = v22;
    v25 = swift_slowAlloc();
    *&v139 = v25;
    *v24 = 136315138;
    v26 = Dictionary.description.getter();
    v28 = sub_100102F80(v26, v27, &v139);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "MAD returned analysis: %s", v24, 0xCu);
    sub_10000C304(v25);

    v5 = v23;
    v6 = v134;
  }

  v29 = *(v6 + 8);
  v29(v18, v5);
  v30 = v143;
  v31 = [v143 localIdentifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v137 = v32;
  v138 = v34;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v35 = sub_100057C8C(&v139), (v36 & 1) == 0))
  {
    sub_10005E37C(&v139);
LABEL_18:
    v61 = v136;
    static Log.default.getter();
    v62 = v30;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v63, v64))
    {

      v29(v61, v5);
      goto LABEL_22;
    }

    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v139 = v66;
    *v65 = 136315138;
    v67 = [v62 localIdentifier];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v29;
    v69 = v5;
    v70 = v68;
    v72 = v71;

    v73 = sub_100102F80(v70, v72, &v139);

    *(v65 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v63, v64, "MAD no results for %s", v65, 0xCu);
    sub_10000C304(v66);

    v74 = v136;
    v75 = v69;
    goto LABEL_20;
  }

  sub_10005E3D0(*(v19 + 56) + 32 * v35, &v141);
  sub_10005E37C(&v139);
  sub_10000560C(&qword_10012A5D0, &qword_100109438);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = v143;
    goto LABEL_18;
  }

  v133 = v29;
  v134 = v6;
  v37 = v137;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v37 + 16))
  {

LABEL_27:

    v78 = v132;
    static Log.default.getter();
    v79 = v143;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v139 = v83;
      *v82 = 136315138;
      v84 = [v79 localIdentifier];
      v85 = v5;
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      v89 = sub_100102F80(v86, v88, &v139);

      *(v82 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v80, v81, "MAD no watch face results for %s", v82, 0xCu);
      sub_10000C304(v83);

      v74 = v78;
      v75 = v85;
    }

    else
    {

      v74 = v78;
      v75 = v5;
    }

    goto LABEL_20;
  }

  v40 = sub_100057C14(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_10005E3D0(*(v37 + 56) + 32 * v40, &v139);
  sub_10000560C(&qword_10012A5D8, &qword_100109440);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v136 = v5;
  if (!v141[2])
  {

    v90 = v130;
    static Log.default.getter();
    v91 = v143;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v139 = v95;
      *v94 = 136315138;
      v96 = [v91 localIdentifier];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_100102F80(v97, v99, &v139);

      *(v94 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v92, v93, "MAD no watch face result for %s", v94, 0xCu);
      sub_10000C304(v95);
    }

    v74 = v90;
    v75 = v136;
    goto LABEL_20;
  }

  v43 = v141[4];

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v43 + 16))
  {
    v46 = sub_100057C14(v44, v45);
    v48 = v47;

    if (v48)
    {
      sub_10005E3D0(*(v43 + 56) + 32 * v46, &v139);
      if (swift_dynamicCast())
      {
        v49 = v141;
        v50 = v142;
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v43 + 16))
        {
          v53 = sub_100057C14(v51, v52);
          v55 = v54;

          v56 = v136;
          if (v55)
          {
            sub_10005E3D0(*(v43 + 56) + 32 * v53, &v139);

            if (swift_dynamicCast())
            {

              v58 = v141;
              v59 = v142;
              v60 = v128;
              *v128 = v49;
              v60[1] = v50;
              v60[2] = v58;
              v60[3] = v59;
              return result;
            }
          }

          else
          {
          }
        }

        else
        {

          v56 = v136;
        }

        v114 = v129;
        static Log.default.getter();

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v115, v116))
        {

          v133(v114, v56);
LABEL_52:
          sub_10005DD30();
          v76 = swift_allocError();
          *v127 = 4;
          swift_willThrow();
          result = sub_10000C868(v49, v50);
          goto LABEL_23;
        }

        v143 = v49;
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v141 = v118;
        *v117 = 136315138;
        v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v37 + 16))
        {
          v121 = sub_100057C14(v119, v120);
          v123 = v122;

          if (v123)
          {
            sub_10005E3D0(*(v37 + 56) + 32 * v121, &v139);

LABEL_51:
            sub_10000560C(&qword_10012A5E0, &qword_100109448);
            v124 = String.init<A>(describing:)();
            v126 = sub_100102F80(v124, v125, &v141);

            *(v117 + 4) = v126;
            _os_log_impl(&_mh_execute_header, v115, v116, "MAD returned watchFacePath as %s", v117, 0xCu);
            sub_10000C304(v118);

            v133(v129, v136);
            v49 = v143;
            goto LABEL_52;
          }
        }

        else
        {
        }

        v139 = 0u;
        v140 = 0u;
        goto LABEL_51;
      }
    }
  }

  else
  {
  }

  v101 = v131;
  static Log.default.getter();

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v141 = v105;
    *v104 = 136315138;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v43 + 16))
    {
      v108 = sub_100057C14(v106, v107);
      v110 = v109;

      if (v110)
      {
        sub_10005E3D0(*(v43 + 56) + 32 * v108, &v139);

LABEL_41:
        sub_10000560C(&qword_10012A5E0, &qword_100109448);
        v111 = String.init<A>(describing:)();
        v113 = sub_100102F80(v111, v112, &v141);

        *(v104 + 4) = v113;
        _os_log_impl(&_mh_execute_header, v102, v103, "MAD returned watchFaceData as %s", v104, 0xCu);
        sub_10000C304(v105);

        v74 = v131;
        v75 = v136;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v139 = 0u;
    v140 = 0u;
    goto LABEL_41;
  }

  v74 = v101;
  v75 = v136;
LABEL_20:
  v133(v74, v75);
LABEL_22:
  sub_10005DD30();
  v76 = swift_allocError();
  *v77 = 2;
  result = swift_willThrow();
LABEL_23:
  *v135 = v76;
  return result;
}

uint64_t sub_10004DF54(char a1)
{
  result = 0x69727453646E6573;
  switch(a1)
  {
    case 1:
      result = 0x65746172656E6567;
      break;
    case 2:
      result = 0x626C416B63617274;
      break;
    case 3:
      result = 0x416B636172746E75;
      break;
    case 4:
      result = 0x75626C41636E7973;
      break;
    case 5:
      result = 0x6C61476B63617274;
      break;
    case 6:
      result = 0x476B636172746E75;
      break;
    case 7:
      result = 0x6C6C6147636E7973;
      break;
    case 8:
      result = 0x7568536B63617274;
      break;
    case 9:
      result = 0x536B636172746E75;
      break;
    case 10:
      result = 0x66756853636E7973;
      break;
    case 11:
      result = 0x6961446B63617274;
      break;
    case 12:
      result = 0x446B636172746E75;
      break;
    case 13:
      result = 0x6C696144636E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004E168(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_10004E214(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_10000560C(&qword_10012A568, &unk_1001093E0);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for CommunicationActor();
  v2[15] = static CommunicationActor.shared.getter();
  v2[16] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_10004E3E0, v6, v5);
}

uint64_t sub_10004E3E0()
{
  v1 = sub_100043EAC();
  v2 = [v1 imageNode];
  v0[19] = v2;

  if (!v2)
  {

    static Log.default.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "generateImageCaption: visionEngine imageNode was nil", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);
    goto LABEL_15;
  }

  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  sub_10005F690(v0[4], v5, &qword_10012A568, &unk_1001093E0);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[10];

    sub_10000C460(v6, &qword_10012A568, &unk_1001093E0);
LABEL_12:
    static Log.default.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "generateImageCaption: visionEngine unable to convert to CIImage", v26, 2u);
    }

    v27 = v0[9];
    v28 = v0[6];
    v29 = v0[7];

    (*(v29 + 8))(v27, v28);
LABEL_15:

    v30 = v0[1];

    return v30(0, 0xE000000000000000);
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v14 = objc_allocWithZone(CIImage);
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v18 = [v14 initWithContentsOfURL:v16];
  v0[20] = v18;

  if (!v18)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    goto LABEL_12;
  }

  v19 = v0[16];
  v20 = v0[5];
  [v2 setShouldProcessRemotely:1];
  v21 = static CommunicationActor.shared.getter();
  v0[21] = v21;
  v22 = swift_task_alloc();
  v0[22] = v22;
  v22[2] = v2;
  v22[3] = v18;
  v22[4] = v20;
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_10004E7DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v21, v19, 0xD00000000000001ALL, 0x80000001001071C0, sub_10005DE4C, v22, &type metadata for String);
}

uint64_t sub_10004E7DC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10004E93C, v3, v2);
}

uint64_t sub_10004E93C()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  (*(v4 + 8))(v3, v5);
  v7 = v0[2];
  v6 = v0[3];

  v8 = v0[1];

  return v8(v7, v6);
}

void sub_10004EA0C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000560C(&qword_10012A5A8, &qword_100109410);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  type metadata accessor for CommunicationActor();
  static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_10005DE58();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_10005E128;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004F430;
  aBlock[3] = &unk_100126658;
  v13 = _Block_copy(aBlock);

  [a2 triggerWithImage:a3 options:v10 cacheKey:0 resultHandler:v13];
  _Block_release(v13);
}

void sub_10004EC70(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  if (a1)
  {
    v11 = a1;
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v12 = [v11 mediaAnalysisImageCaptionFeatures];
      sub_10000D828(0, &qword_10012A5B0, AXMVisionFeature_ptr);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v13 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
          v15 = v14;

          if ([v15 isLowConfidence])
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v14 = *(v13 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_27:

LABEL_28:
      sub_10005D9D4(_swiftEmptyArrayStorage);
      type metadata accessor for AXMFeatureDescriptionOption(0);
      sub_10005F648(&qword_100129DB0, type metadata accessor for AXMFeatureDescriptionOption, &unk_100108948);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = [v11 detectedSceneClassificationFeatureDescriptionWithOptions:isa];

      if (v30)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v31;

        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v21 = [v11 captionFeatures];
    sub_10000D828(0, &qword_10012A5B0, AXMVisionFeature_ptr);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v23 = *(v22 + 32);
    }

    v15 = v23;

    if ([v15 isLowConfidence])
    {
LABEL_20:

      goto LABEL_28;
    }

LABEL_21:
    sub_10005D9D4(_swiftEmptyArrayStorage);
    type metadata accessor for AXMFeatureDescriptionOption(0);
    sub_10005F648(&qword_100129DB0, type metadata accessor for AXMFeatureDescriptionOption, &unk_100108948);
    v24 = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = [v11 detectedCaptionFeatureDescriptionWithOptions:v24];

    if (v25)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

LABEL_31:

      v32 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v32 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {

        static Log.default.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "generateImageCaption: visionEngine did not generate caption", v40, 2u);
        }

        (*(v5 + 8))(v10, v4);
        v41 = 0;
        v42 = 0xE000000000000000;
        goto LABEL_39;
      }

      v33 = String._bridgeToObjectiveC()();
      v34 = [v33 axCapitalizeFirstLetter];

      if (v34)
      {

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v41 = v35;
        v42 = v37;
LABEL_39:
        sub_10000560C(&qword_10012A5A8, &qword_100109410);
        CheckedContinuation.resume(returning:)();

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

LABEL_30:
    v26 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_31;
  }

  if (a2)
  {
    swift_errorRetain();
    static Log.default.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "generateImageCaption: visionEngine had error %@", v18, 0xCu);
      sub_10000C460(v19, &qword_100129EF8, &qword_100108C70);
    }

    (*(v5 + 8))(v8, v4);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_10000560C(&qword_10012A5A8, &qword_100109410);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10004F430(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10004F4BC()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10004F530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_100043F18();
}

uint64_t sub_10004F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = *v4;
  v5[8] = type metadata accessor for CommunicationActor();
  v5[9] = static CommunicationActor.shared.getter();
  v5[10] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004F69C, v7, v6);
}

uint64_t sub_10004F69C()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  static CommunicationActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v6[5] = v2;
  v5[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
  v0[2] = type metadata accessor for StoredPhoto();
  v5[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v5);

  sub_10004F91C(v3, v2);
  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10004F808()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F858(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000045BC;

  return sub_1000494C0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10004F91C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

Swift::Int sub_10004F92C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004F9A0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10004FA14(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v33 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v11;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v35[0] = v18;
    *v17 = 136315138;
    v20 = sub_10004DF54(v33);
    v32 = a3;
    v22 = sub_100102F80(v20, v21, v35);
    v29 = v10;
    v23 = a5;
    v24 = v22;
    a3 = v32;

    *(v17 + 4) = v24;
    a5 = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Registry: Registering request for %s.", v17, 0xCu);
    sub_10000C304(v19);
    a2 = v31;

    (*(v30 + 8))(v13, v29);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v7 + 32);
  *(v7 + 32) = 0x8000000000000000;
  sub_10005BF40(a5, v25, v33, isUniquelyReferenced_nonNull_native);
  *(v7 + 32) = v34;
  return swift_endAccess();
}

uint64_t sub_10004FD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a3;
  v8 = type metadata accessor for MessageBody();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000560C(&qword_100129E80, &unk_1001091F0);
  sub_10000A914();
  result = MessageBody.deserialized<A>()();
  if (!v4)
  {
    v12 = v19;
    v13 = *(v9 + 16);
    v16[1] = 0;
    v13(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = v17;
    *(v15 + 4) = v12;
    (*(v9 + 32))(&v15[v14], v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    a4[3] = sub_10000560C(&qword_10012A628, &qword_1001094F0);
    v18 = v8;
    a4[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(a4);

    generateElements<A>(isolation:_:)();
  }

  return result;
}

uint64_t sub_10004FF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v37 = a3;
  v38 = a7;
  v32 = a2;
  v33 = a6;
  v36 = a8;
  v39 = type metadata accessor for MessageBody();
  v34 = *(v39 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v39);
  v12 = a4(0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v31 - v16;
  result = MessageBody.deserialized<A>()();
  if (!v8)
  {
    v19 = v35;
    v20 = *(v35 + 16);
    v31[1] = 0;
    v20(v15, v17, v12);
    v21 = v34;
    (*(v34 + 16))(v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v39);
    v22 = *(v19 + 80);
    v31[0] = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = (v22 + 32) & ~v22;
    v24 = (v13 + *(v21 + 80) + v23) & ~*(v21 + 80);
    v25 = swift_allocObject();
    v26 = v37;
    *(v25 + 16) = v32;
    *(v25 + 24) = v26;
    (*(v19 + 32))(v25 + v23, v15, v12);
    v27 = v25 + v24;
    v28 = v39;
    (*(v21 + 32))(v27, v31[0], v39);
    v29 = sub_10000560C(&qword_10012A628, &qword_1001094F0);
    v30 = v36;
    v36[3] = v29;
    v40 = v28;
    v30[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v30);

    generateElements<A>(isolation:_:)();
    return (*(v19 + 8))(v17, v12);
  }

  return result;
}

uint64_t sub_100050228(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a2;
  type metadata accessor for ProtocolVersion();
  v6[8] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[12] = v10;
  v6[13] = *(v10 - 8);
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for StoredPhoto();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v6[21] = swift_task_alloc();
  v6[22] = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v12 = swift_task_alloc();
  v6[23] = v12;
  v13 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[24] = v13;
  v6[25] = *(v13 - 8);
  v6[26] = swift_task_alloc();
  v6[2] = a5;
  v16 = a3 + *a3;
  v14 = swift_task_alloc();
  v6[27] = v14;
  *v14 = v6;
  v14[1] = sub_100050588;

  return (v16)(v12, v6 + 2);
}

uint64_t sub_100050588()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1000507D0;
  }

  else
  {
    v2 = sub_10005069C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005069C()
{
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1000508C0;
  v3 = v0[24];
  v4 = v0[21];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 3, v3, v1);
}

uint64_t sub_1000507D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000508C0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100050F98;
  }

  else
  {
    v2 = sub_1000509D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000509D4()
{
  v42 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v6 = v0[19];
  v5 = v0[20];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v39 = *(v3 + 16);
  v39(v6, v5, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v35 = v8;
    v11 = v0[18];
    log = v7;
    v13 = v0[15];
    v12 = v0[16];
    v36 = v0[13];
    v37 = v0[12];
    v38 = v0[14];
    v14 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v14 = 136315394;
    type metadata accessor for UUID();
    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100102F80(v15, v17, v41);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v39(v11, v10, v13);
    v19 = *(v12 + 8);
    v19(v10, v13);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v19(v11, v13);
    v23 = sub_100102F80(v20, v22, v41);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v35, "[NMC] Stream request %s: responding with %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v36 + 8))(v38, v37);
  }

  else
  {
    v24 = v0[13];
    v25 = v0[14];
    v26 = v0[12];
    v19 = *(v0[16] + 8);
    v19(v0[19], v0[15]);

    (*(v24 + 8))(v25, v26);
  }

  v0[31] = v19;
  v27 = v0[30];
  v39(v0[17], v0[20], v0[15]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v27)
  {
    v29 = v0[25];
    v28 = v0[26];
    v30 = v0[24];
    v19(v0[20], v0[15]);
    (*(v29 + 8))(v28, v30);

    v4 = v0[1];
    goto LABEL_8;
  }

  v40 = (v0[4] + *v0[4]);
  v32 = swift_task_alloc();
  v0[32] = v32;
  *v32 = v0;
  v32[1] = sub_1000510A0;
  v33 = v0[11];

  return v40(v33);
}

uint64_t sub_100050F98()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000510A0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_100051308;
  }

  else
  {
    v3 = sub_100051208;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100051208()
{
  (*(v0 + 248))(*(v0 + 160), *(v0 + 120));
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1000508C0;
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 24, v3, v1);
}

uint64_t sub_100051308()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  (*(v0 + 248))(*(v0 + 160), *(v0 + 120));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100051434(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for ProtocolVersion();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for SyncFacesRequest();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v12 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10000560C(&qword_10012A6B8, &qword_1001095C0);
  v6[24] = swift_task_alloc();
  v6[25] = sub_10000560C(&qword_10012A6C0, &qword_1001095C8);
  v13 = swift_task_alloc();
  v6[26] = v13;
  v14 = sub_10000560C(&qword_10012A6C8, &qword_1001095D0);
  v6[27] = v14;
  v6[28] = *(v14 - 8);
  v6[29] = swift_task_alloc();
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  v6[30] = v15;
  *v15 = v6;
  v15[1] = sub_1000517FC;

  return v17(v13, a5);
}

uint64_t sub_1000517FC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10005F8A0;
  }

  else
  {
    v2 = sub_100051910;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100051910()
{
  sub_10000CC24(&qword_10012A6D0, &qword_10012A6C0, &qword_1001095C8, &protocol conformance descriptor for MakeThrowingSequence<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A6D8, &qword_10012A6C8, &qword_1001095D0, &protocol conformance descriptor for MakeThrowingIterator<A>);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100051A44;
  v3 = v0[27];
  v4 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100051A44()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10005F8C8;
  }

  else
  {
    v2 = sub_100051B58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100051B58()
{
  v55 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v5 = v0[23];
  v52 = v0[22];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[5];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v49 = *(v8 + 16);
  v49(v6, v9, v7);
  v51 = *(v3 + 16);
  v51(v52, v5, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  if (v12)
  {
    v14 = v0[18];
    v43 = v0[21];
    v44 = v0[19];
    v46 = v0[16];
    v15 = v0[14];
    v47 = v0[15];
    v48 = v0[17];
    v45 = v11;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v19 = 136315394;
    v49(v17, v15, v18);
    v20 = *(v16 + 8);
    v20(v15, v18);
    sub_10005F648(&qword_10012A6E0, &type metadata accessor for SyncFacesRequest, &protocol conformance descriptor for SyncFacesRequest);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v17, v18);
    v24 = sub_100102F80(v21, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v51(v43, v13, v14);
    v25 = *(v44 + 8);
    v25(v13, v14);
    sub_10000CC24(&qword_10012A6E8, &qword_100129F30, &qword_100108D20, &protocol conformance descriptor for SyncedPhotosFace<A>);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v25(v43, v14);
    v29 = sub_100102F80(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v45, "[NMC] Stream request %s: responding with %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v25 = *(v0[19] + 8);
    v25(v0[22], v0[18]);
    (*(v35 + 8))(v33, v34);

    (*(v30 + 8))(v31, v32);
  }

  v0[34] = v25;
  v36 = v0[33];
  v51(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  sub_10000CC24(&qword_100129F38, &qword_100129F30, &qword_100108D20, &protocol conformance descriptor for SyncedPhotosFace<A>);
  MessageBody.init<A>(serializable:version:)();
  if (v36)
  {
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v25(v0[23], v0[18]);
    (*(v38 + 8))(v37, v39);

    v4 = v0[1];
    goto LABEL_8;
  }

  v53 = (v0[3] + *v0[3]);
  v41 = swift_task_alloc();
  v0[35] = v41;
  *v41 = v0;
  v41[1] = sub_100052238;
  v42 = v0[10];

  return v53(v42);
}

uint64_t sub_100052238()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10005F8D4;
  }

  else
  {
    v3 = sub_1000523A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000523A0()
{
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v1 = sub_10000CC24(&qword_10012A6D8, &qword_10012A6C8, &qword_1001095D0, &protocol conformance descriptor for MakeThrowingIterator<A>);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100051A44;
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_1000524A0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for ProtocolVersion();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for ShuffleID();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v6[24] = swift_task_alloc();
  v6[25] = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v13 = swift_task_alloc();
  v6[26] = v13;
  v14 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[27] = v14;
  v6[28] = *(v14 - 8);
  v6[29] = swift_task_alloc();
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  v6[30] = v15;
  *v15 = v6;
  v15[1] = sub_10005285C;

  return v17(v13, a5);
}

uint64_t sub_10005285C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10005F8A0;
  }

  else
  {
    v2 = sub_100052970;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052970()
{
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100052AA4;
  v3 = v0[27];
  v4 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100052AA4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10005F8C8;
  }

  else
  {
    v2 = sub_100052BB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052BB8()
{
  v55 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v5 = v0[23];
  v52 = v0[22];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[5];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v49 = *(v8 + 16);
  v49(v6, v9, v7);
  v51 = *(v3 + 16);
  v51(v52, v5, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  if (v12)
  {
    v14 = v0[18];
    v43 = v0[21];
    v44 = v0[19];
    v46 = v0[16];
    v15 = v0[14];
    v47 = v0[15];
    v48 = v0[17];
    v45 = v11;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v19 = 136315394;
    v49(v17, v15, v18);
    v20 = *(v16 + 8);
    v20(v15, v18);
    sub_10005F648(&qword_10012A2F0, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v17, v18);
    v24 = sub_100102F80(v21, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v51(v43, v13, v14);
    v25 = *(v44 + 8);
    v25(v13, v14);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v25(v43, v14);
    v29 = sub_100102F80(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v45, "[NMC] Stream request %s: responding with %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v25 = *(v0[19] + 8);
    v25(v0[22], v0[18]);
    (*(v35 + 8))(v33, v34);

    (*(v30 + 8))(v31, v32);
  }

  v0[34] = v25;
  v36 = v0[33];
  v51(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v36)
  {
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v25(v0[23], v0[18]);
    (*(v38 + 8))(v37, v39);

    v4 = v0[1];
    goto LABEL_8;
  }

  v53 = (v0[3] + *v0[3]);
  v41 = swift_task_alloc();
  v0[35] = v41;
  *v41 = v0;
  v41[1] = sub_100053270;
  v42 = v0[10];

  return v53(v42);
}

uint64_t sub_100053270()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10005F8D4;
  }

  else
  {
    v3 = sub_1000533D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000533D8()
{
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100052AA4;
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_1000534D8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for ProtocolVersion();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for SyncFacesRequest();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v12 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10000560C(&qword_10012A710, &qword_100109610);
  v6[24] = swift_task_alloc();
  v6[25] = sub_10000560C(&qword_10012A718, &qword_100109618);
  v13 = swift_task_alloc();
  v6[26] = v13;
  v14 = sub_10000560C(&qword_10012A720, &qword_100109620);
  v6[27] = v14;
  v6[28] = *(v14 - 8);
  v6[29] = swift_task_alloc();
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  v6[30] = v15;
  *v15 = v6;
  v15[1] = sub_1000538A0;

  return v17(v13, a5);
}

uint64_t sub_1000538A0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10005F8A0;
  }

  else
  {
    v2 = sub_1000539B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000539B4()
{
  sub_10000CC24(&qword_10012A728, &qword_10012A718, &qword_100109618, &protocol conformance descriptor for MakeThrowingSequence<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A730, &qword_10012A720, &qword_100109620, &protocol conformance descriptor for MakeThrowingIterator<A>);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100053AE8;
  v3 = v0[27];
  v4 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100053AE8()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10005F8C8;
  }

  else
  {
    v2 = sub_100053BFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100053BFC()
{
  v55 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v5 = v0[23];
  v52 = v0[22];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[5];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v49 = *(v8 + 16);
  v49(v6, v9, v7);
  v51 = *(v3 + 16);
  v51(v52, v5, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  if (v12)
  {
    v14 = v0[18];
    v43 = v0[21];
    v44 = v0[19];
    v46 = v0[16];
    v15 = v0[14];
    v47 = v0[15];
    v48 = v0[17];
    v45 = v11;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v19 = 136315394;
    v49(v17, v15, v18);
    v20 = *(v16 + 8);
    v20(v15, v18);
    sub_10005F648(&qword_10012A6E0, &type metadata accessor for SyncFacesRequest, &protocol conformance descriptor for SyncFacesRequest);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v17, v18);
    v24 = sub_100102F80(v21, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v51(v43, v13, v14);
    v25 = *(v44 + 8);
    v25(v13, v14);
    sub_10000CC24(&qword_10012A738, &qword_100129F60, &qword_100108D78, &protocol conformance descriptor for SyncedPhotosFace<A>);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v25(v43, v14);
    v29 = sub_100102F80(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v45, "[NMC] Stream request %s: responding with %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v25 = *(v0[19] + 8);
    v25(v0[22], v0[18]);
    (*(v35 + 8))(v33, v34);

    (*(v30 + 8))(v31, v32);
  }

  v0[34] = v25;
  v36 = v0[33];
  v51(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  sub_10000CC24(&qword_100129F68, &qword_100129F60, &qword_100108D78, &protocol conformance descriptor for SyncedPhotosFace<A>);
  MessageBody.init<A>(serializable:version:)();
  if (v36)
  {
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v25(v0[23], v0[18]);
    (*(v38 + 8))(v37, v39);

    v4 = v0[1];
    goto LABEL_8;
  }

  v53 = (v0[3] + *v0[3]);
  v41 = swift_task_alloc();
  v0[35] = v41;
  *v41 = v0;
  v41[1] = sub_1000542DC;
  v42 = v0[10];

  return v53(v42);
}

uint64_t sub_1000542DC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10005F8D4;
  }

  else
  {
    v3 = sub_100054444;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054444()
{
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v1 = sub_10000CC24(&qword_10012A730, &qword_10012A720, &qword_100109620, &protocol conformance descriptor for MakeThrowingIterator<A>);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100053AE8;
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_100054544(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for ProtocolVersion();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for DailyID();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v6[24] = swift_task_alloc();
  v6[25] = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v13 = swift_task_alloc();
  v6[26] = v13;
  v14 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[27] = v14;
  v6[28] = *(v14 - 8);
  v6[29] = swift_task_alloc();
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  v6[30] = v15;
  *v15 = v6;
  v15[1] = sub_100054900;

  return v17(v13, a5);
}

uint64_t sub_100054900()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10005F8A0;
  }

  else
  {
    v2 = sub_100054A14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100054A14()
{
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100054B48;
  v3 = v0[27];
  v4 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100054B48()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10005F8C8;
  }

  else
  {
    v2 = sub_100054C5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100054C5C()
{
  v55 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v5 = v0[23];
  v52 = v0[22];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[5];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v49 = *(v8 + 16);
  v49(v6, v9, v7);
  v51 = *(v3 + 16);
  v51(v52, v5, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  if (v12)
  {
    v14 = v0[18];
    v43 = v0[21];
    v44 = v0[19];
    v46 = v0[16];
    v15 = v0[14];
    v47 = v0[15];
    v48 = v0[17];
    v45 = v11;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v19 = 136315394;
    v49(v17, v15, v18);
    v20 = *(v16 + 8);
    v20(v15, v18);
    sub_10005F648(&qword_10012A1E0, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v17, v18);
    v24 = sub_100102F80(v21, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v51(v43, v13, v14);
    v25 = *(v44 + 8);
    v25(v13, v14);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v25(v43, v14);
    v29 = sub_100102F80(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v45, "[NMC] Stream request %s: responding with %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v25 = *(v0[19] + 8);
    v25(v0[22], v0[18]);
    (*(v35 + 8))(v33, v34);

    (*(v30 + 8))(v31, v32);
  }

  v0[34] = v25;
  v36 = v0[33];
  v51(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v36)
  {
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v25(v0[23], v0[18]);
    (*(v38 + 8))(v37, v39);

    v4 = v0[1];
    goto LABEL_8;
  }

  v53 = (v0[3] + *v0[3]);
  v41 = swift_task_alloc();
  v0[35] = v41;
  *v41 = v0;
  v41[1] = sub_100055314;
  v42 = v0[10];

  return v53(v42);
}

uint64_t sub_100055314()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10005F8D4;
  }

  else
  {
    v3 = sub_10005547C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005547C()
{
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100054B48;
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_10005557C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for ProtocolVersion();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for SyncFacesRequest();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v12 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10000560C(&qword_10012A770, &qword_100109670);
  v6[24] = swift_task_alloc();
  v6[25] = sub_10000560C(&qword_10012A778, &qword_100109678);
  v13 = swift_task_alloc();
  v6[26] = v13;
  v14 = sub_10000560C(&qword_10012A780, &qword_100109680);
  v6[27] = v14;
  v6[28] = *(v14 - 8);
  v6[29] = swift_task_alloc();
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  v6[30] = v15;
  *v15 = v6;
  v15[1] = sub_100055944;

  return v17(v13, a5);
}

uint64_t sub_100055944()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100055B8C;
  }

  else
  {
    v2 = sub_100055A58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100055A58()
{
  sub_10000CC24(&qword_10012A788, &qword_10012A778, &qword_100109678, &protocol conformance descriptor for MakeThrowingSequence<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A790, &qword_10012A780, &qword_100109680, &protocol conformance descriptor for MakeThrowingIterator<A>);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100055C94;
  v3 = v0[27];
  v4 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100055B8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100055C94()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100056488;
  }

  else
  {
    v2 = sub_100055DA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100055DA8()
{
  v55 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v5 = v0[23];
  v52 = v0[22];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[5];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v49 = *(v8 + 16);
  v49(v6, v9, v7);
  v51 = *(v3 + 16);
  v51(v52, v5, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  if (v12)
  {
    v14 = v0[18];
    v43 = v0[21];
    v44 = v0[19];
    v46 = v0[16];
    v15 = v0[14];
    v47 = v0[15];
    v48 = v0[17];
    v45 = v11;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v19 = 136315394;
    v49(v17, v15, v18);
    v20 = *(v16 + 8);
    v20(v15, v18);
    sub_10005F648(&qword_10012A6E0, &type metadata accessor for SyncFacesRequest, &protocol conformance descriptor for SyncFacesRequest);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v17, v18);
    v24 = sub_100102F80(v21, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v51(v43, v13, v14);
    v25 = *(v44 + 8);
    v25(v13, v14);
    sub_10000CC24(&qword_10012A798, &qword_100129F70, &qword_100108D90, &protocol conformance descriptor for SyncedPhotosFace<A>);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v25(v43, v14);
    v29 = sub_100102F80(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v45, "[NMC] Stream request %s: responding with %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v25 = *(v0[19] + 8);
    v25(v0[22], v0[18]);
    (*(v35 + 8))(v33, v34);

    (*(v30 + 8))(v31, v32);
  }

  v0[34] = v25;
  v36 = v0[33];
  v51(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  sub_10000CC24(&qword_100129F78, &qword_100129F70, &qword_100108D90, &protocol conformance descriptor for SyncedPhotosFace<A>);
  MessageBody.init<A>(serializable:version:)();
  if (v36)
  {
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v25(v0[23], v0[18]);
    (*(v38 + 8))(v37, v39);

    v4 = v0[1];
    goto LABEL_8;
  }

  v53 = (v0[3] + *v0[3]);
  v41 = swift_task_alloc();
  v0[35] = v41;
  *v41 = v0;
  v41[1] = sub_1000565A8;
  v42 = v0[10];

  return v53(v42);
}

uint64_t sub_100056488()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000565A8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_100056810;
  }

  else
  {
    v3 = sub_100056710;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056710()
{
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v1 = sub_10000CC24(&qword_10012A790, &qword_10012A780, &qword_100109680, &protocol conformance descriptor for MakeThrowingIterator<A>);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100055C94;
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_100056810()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100056954(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for ProtocolVersion();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for MessageBody();
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for AlbumID();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v12 = type metadata accessor for StoredPhoto();
  v6[18] = v12;
  v6[19] = *(v12 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10000560C(&qword_10012A400, &qword_100109190);
  v6[24] = swift_task_alloc();
  v6[25] = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v13 = swift_task_alloc();
  v6[26] = v13;
  v14 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[27] = v14;
  v6[28] = *(v14 - 8);
  v6[29] = swift_task_alloc();
  v17 = (a3 + *a3);
  v15 = swift_task_alloc();
  v6[30] = v15;
  *v15 = v6;
  v15[1] = sub_100056D10;

  return v17(v13, a5);
}

uint64_t sub_100056D10()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10005F8A0;
  }

  else
  {
    v2 = sub_100056E24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100056E24()
{
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0, &protocol conformance descriptor for WrapperSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_100056F58;
  v3 = v0[27];
  v4 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100056F58()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_10005F8C8;
  }

  else
  {
    v2 = sub_10005706C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005706C()
{
  v55 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v4 = v0[1];
LABEL_8:

    return v4();
  }

  v5 = v0[23];
  v52 = v0[22];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[5];
  (*(v3 + 32))(v5, v1, v2);
  static Log.network.getter();
  v49 = *(v8 + 16);
  v49(v6, v9, v7);
  v51 = *(v3 + 16);
  v51(v52, v5, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[22];
  if (v12)
  {
    v14 = v0[18];
    v43 = v0[21];
    v44 = v0[19];
    v46 = v0[16];
    v15 = v0[14];
    v47 = v0[15];
    v48 = v0[17];
    v45 = v11;
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[11];
    v19 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v19 = 136315394;
    v49(v17, v15, v18);
    v20 = *(v16 + 8);
    v20(v15, v18);
    sub_10005F648(&qword_10012A0A0, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v20(v17, v18);
    v24 = sub_100102F80(v21, v23, v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v51(v43, v13, v14);
    v25 = *(v44 + 8);
    v25(v13, v14);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto, &protocol conformance descriptor for StoredPhoto);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v25(v43, v14);
    v29 = sub_100102F80(v26, v28, v54);

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v45, "[NMC] Stream request %s: responding with %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v46 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[16];
    v31 = v0[17];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[11];
    v35 = v0[12];
    v25 = *(v0[19] + 8);
    v25(v0[22], v0[18]);
    (*(v35 + 8))(v33, v34);

    (*(v30 + 8))(v31, v32);
  }

  v0[34] = v25;
  v36 = v0[33];
  v51(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v36)
  {
    v38 = v0[28];
    v37 = v0[29];
    v39 = v0[27];
    v25(v0[23], v0[18]);
    (*(v38 + 8))(v37, v39);

    v4 = v0[1];
    goto LABEL_8;
  }

  v53 = (v0[3] + *v0[3]);
  v41 = swift_task_alloc();
  v0[35] = v41;
  *v41 = v0;
  v41[1] = sub_100057724;
  v42 = v0[10];

  return v53(v42);
}

uint64_t sub_100057724()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10005F8D4;
  }

  else
  {
    v3 = sub_10005788C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005788C()
{
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v1 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508, &protocol conformance descriptor for WrapperIterator<A, B>);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100056F58;
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

unint64_t sub_100057990(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();
  return sub_10005B85C(v1, v2);
}

unint64_t sub_1000579F8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10005B8CC(v1, v2);
}

unint64_t sub_100057AFC(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10005F648(&qword_10012A1F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v2, &type metadata accessor for UUID, &qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100057BD0(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10005BAB0(a1, v2);
}

unint64_t sub_100057C14(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10005BB1C(a1, a2, v4);
}

unint64_t sub_100057C8C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005BBD4(a1, v4);
}

unint64_t sub_100057CD0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10005BC9C(a1, v2);
}

unint64_t sub_100057D64(uint64_t a1)
{
  type metadata accessor for ShuffleID();
  sub_10005F648(&qword_10012A690, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v2, &type metadata accessor for ShuffleID, &qword_10012A698, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
}

unint64_t sub_100057E38(uint64_t a1)
{
  type metadata accessor for DailyID();
  sub_10005F648(&qword_10012A6F8, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v2, &type metadata accessor for DailyID, &qword_10012A700, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
}

unint64_t sub_100057F0C(uint64_t a1)
{
  type metadata accessor for AlbumID();
  sub_10005F648(&qword_10012A758, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v2, &type metadata accessor for AlbumID, &qword_10012A760, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
}

void *sub_100057FE0()
{
  v1 = v0;
  sub_10000560C(&qword_10012A620, &unk_1001094D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_100058158()
{
  v1 = v0;
  sub_10000560C(&qword_10012A300, &qword_100108FF8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_1000582B4()
{
  v1 = v0;
  v41 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000560C(&qword_10012A748, &qword_100109640);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

void *sub_10005861C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000560C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

char *sub_100058768()
{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000560C(&qword_10012A658, &qword_100109530);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1000589E8()
{
  v1 = v0;
  sub_10000560C(&qword_10012A5A0, &qword_100109408);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_100058B50()
{
  v1 = v0;
  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100058C9C()
{
  v1 = v0;
  sub_10000560C(&qword_10012A7B8, &unk_1001096B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

Swift::Int sub_100058E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000560C(&qword_10012A620, &unk_1001094D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}