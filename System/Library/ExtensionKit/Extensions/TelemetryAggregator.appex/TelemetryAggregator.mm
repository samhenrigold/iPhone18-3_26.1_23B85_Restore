void *sub_100001678(uint64_t a1, uint64_t a2)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v45 = a1 + 32;
  v46 = *(a2 + 16);
  v3 = &_swiftEmptyDictionarySingleton;
  v44 = (a2 + 40);
  while (1)
  {
    v4 = (v45 + (v2 << 6));
    v5 = v4[1];
    *v61 = *v4;
    *&v61[16] = v5;
    v6 = v4[3];
    v62 = v4[2];
    v63 = v6;
    v7 = *v61;
    v8 = *&v61[8];
    v10 = *&v61[24];
    v9 = v62;
    v11 = DWORD2(v62);
    v12 = v6;
    v13 = v44;
    v14 = v46;
    if (v46)
    {
      break;
    }

LABEL_3:
    v55 = *v61;
    v56 = *&v61[8];
    v57 = *&v61[24];
    v58 = v62;
    v59 = DWORD2(v62);
    v60 = v63;
    sub_100007374(v61, &v48, &qword_100018888, &qword_10000DF58);
    sub_100007314(&v55, &qword_100018888, &qword_10000DF58);
LABEL_4:
    if (++v2 == v47)
    {
      return v3;
    }
  }

  while (1)
  {
    v16 = *(v13 - 1);
    v15 = *v13;
    if (v16 <= *v61 && *v61 < v15)
    {
      break;
    }

    v13 += 2;
    if (!--v14)
    {
      goto LABEL_3;
    }
  }

  v43 = *(&v63 + 1);
  if (!v3[2] || (sub_100003F1C(v16, v15), (v18 & 1) == 0))
  {
    sub_10000701C(&qword_100018870, &qword_10000DF40);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10000DD80;
    v48 = v7;
    v49 = v8;
    v50 = v10;
    v51 = v9;
    v52 = v11;
    v53 = v12;
    v54 = v43;
    *(v28 + 32) = v8;
    *(v28 + 48) = v10;
    *(v28 + 56) = v9;
    *(v28 + 64) = v11;
    *(v28 + 72) = v12;
    *(v28 + 80) = v43;
    sub_100007374(v61, &v55, &qword_100018888, &qword_10000DF58);
    sub_100007374(&v48, &v55, &qword_100018888, &qword_10000DF58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v3;
    sub_100004E0C(v28, isUniquelyReferenced_nonNull_native, &qword_100018890, &qword_10000DF60, v16, v15);
    v3 = v55;
    v55 = v7;
    v56 = v8;
    v57 = v10;
    v58 = v9;
    v59 = v11;
    *&v60 = v12;
    *(&v60 + 1) = v43;
    v30 = &v55;
LABEL_27:
    sub_100007314(v30, &qword_100018888, &qword_10000DF58);
    goto LABEL_4;
  }

  v55 = v7;
  v56 = v8;
  v57 = v10;
  v58 = v9;
  v59 = v11;
  *&v60 = v12;
  *(&v60 + 1) = v43;
  sub_100007374(v61, &v48, &qword_100018888, &qword_10000DF58);
  sub_100007374(&v55, &v48, &qword_100018888, &qword_10000DF58);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v21 = sub_100003F1C(v16, v15);
  v22 = v3[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (!__OFADD__(v22, v23))
  {
    v25 = v20;
    if (v3[3] >= v24)
    {
      if (v19)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v40 = v21;
        sub_1000053A4(&qword_100018890, &qword_10000DF60);
        v21 = v40;
        if ((v25 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_1000044F4(v24, v19, &qword_100018890, &qword_10000DF60);
      v26 = sub_100003F1C(v16, v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_33;
      }

      v21 = v26;
      if ((v25 & 1) == 0)
      {
LABEL_29:
        __break(1u);
        return &_swiftEmptyDictionarySingleton;
      }
    }

    v42 = v21;
    v31 = *(v3[7] + 8 * v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10000356C(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_10000356C((v32 > 1), v33 + 1, 1, v31);
    }

    v34 = v56;
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v38 = &v31[56 * v33];
    v39 = v60;
    *(v31 + 2) = v33 + 1;
    *(v38 + 2) = v34;
    *(v38 + 6) = v35;
    *(v38 + 7) = v36;
    *(v38 + 16) = v37;
    *(v38 + 72) = v39;
    *(v3[7] + 8 * v42) = v31;
    v48 = v7;
    v49 = v8;
    v50 = v10;
    v51 = v9;
    v52 = v11;
    v53 = v12;
    v54 = v43;
    v30 = &v48;
    goto LABEL_27;
  }

  __break(1u);
LABEL_33:
  sub_10000701C(&qword_100018810, &qword_10000DEF8);
  result = sub_10000D6A4();
  __break(1u);
  return result;
}

void *sub_100001AE0(unint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = 0;
  v7 = sub_100005A78(v5, a1);

  v8 = v7 + 8;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7[8];
  v12 = (v9 + 63) >> 6;
  v85 = v7;

  v13 = 0;
  v90 = &_swiftEmptyDictionarySingleton;
  v82 = xmmword_10000DD80;
  v86 = a2;
  v83 = v7 + 8;
  v84 = v12;
  if (v11)
  {
LABEL_10:
    while (1)
    {
      v19 = __clz(__rbit64(v11)) | (v13 << 6);
      v20 = (v85[6] + 16 * v19);
      v21 = v20[1];
      v22 = *(v85[7] + 8 * v19);
      v23 = v22[2];
      if (!v23)
      {
        break;
      }

      v89 = *v20;
      v24 = v22[4];
      v25 = v22[5];
      v93 = v22;
      v26 = v22[6];
      v27 = v93[7];
      v28 = *(v93 + 16);
      v29 = v93[9];
      v30 = v93[10];
      v95 = v24;
      v96 = v25;
      v97 = v26;
      v98 = v27;
      v99 = v28;
      v100 = v29;
      v101 = v30;
      v91 = v21;

      swift_getAtKeyPath();
      v31 = v94;

      v32 = v93[2];
      if (!v32)
      {
        goto LABEL_37;
      }

      if (v32 < v23)
      {
        goto LABEL_38;
      }

      v88 = v11;
      v92 = v6;
      v33 = v93[9];
      v34 = v93[10];
      v35 = v93;

      v36 = v23 - 1;
      if (v23 != 1)
      {
        v37 = v35 + 17;
        do
        {
          v38 = *(v37 - 1);
          v39 = *v37;
          v40 = *(v37 - 4);
          v41 = *(v37 - 4);
          v42 = *(v37 - 3);
          v43 = *(v37 - 5);
          v95 = *(v37 - 6);
          v96 = v43;
          v97 = v41;
          v98 = v42;
          LODWORD(v99) = v40;
          v100 = v38;
          v101 = v39;

          swift_getAtKeyPath();
          v31 = v33(v31, v94);

          v37 += 7;
          --v36;
        }

        while (v36);
      }

      v87 = v34;

      v95 = 58;
      v96 = 0xE100000000000000;
      __chkstk_darwin(v44);
      v81[2] = &v95;
      v45 = v91;

      v46 = v45;
      v47 = v92;
      v49 = sub_100002F9C(0x7FFFFFFFFFFFFFFFLL, 1, sub_100007164, v81, v89, v46, v48);
      if (!v49[2])
      {
        goto LABEL_39;
      }

      v50 = v49;
      v92 = v47;
      v11 = (v88 - 1) & v88;

      v89 = sub_10000D464();
      v52 = v51;

      v53 = v50[2];
      if (v53 <= 1)
      {
        v54 = 1;
      }

      else
      {
        v54 = 2 * v53 - 1;
      }

      v95 = v50;
      v96 = (v50 + 4);
      v97 = 0;
      v98 = v54;

      sub_10000701C(&qword_100018820, &qword_10000DF08);
      sub_1000072CC(&qword_100018828, &qword_100018820, &qword_10000DF08, &protocol conformance descriptor for ArraySlice<A>);
      sub_100007204();
      v55 = sub_10000D534();
      v57 = v56;
      swift_unknownObjectRelease();
      v95 = v55;
      v96 = v57;
      v58 = sub_10000D514();
      v60 = v58;
      v61 = v59;
      v62 = v90;
      if (v90[2] && (sub_100003EA4(v58, v59), (v63 & 1) != 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v61;
        v66 = isUniquelyReferenced_nonNull_native;
        v95 = v62;
        v88 = v65;
        v68 = sub_100003EA4(v60, v65);
        v69 = v62[2];
        v70 = (v67 & 1) == 0;
        v71 = __OFADD__(v69, v70);
        v72 = v69 + v70;
        v73 = v62;
        v12 = v84;
        if (v71)
        {
          goto LABEL_40;
        }

        v74 = v67;
        if (v73[3] >= v72)
        {
          v8 = v83;
          if ((v66 & 1) == 0)
          {
            sub_100005234();
          }
        }

        else
        {
          sub_100004254(v72, v66, &qword_100018848, &unk_10000DF20);
          v75 = sub_100003EA4(v60, v88);
          if ((v74 & 1) != (v76 & 1))
          {
            goto LABEL_42;
          }

          v68 = v75;
          v8 = v83;
        }

        if ((v74 & 1) == 0)
        {
          goto LABEL_41;
        }

        v77 = *(*(v95 + 56) + 8 * v68);

        v78 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v77;
        sub_100004B1C(v31, v89, v52, v78);

        v79 = v95;
        if (v94)
        {
          *(*(v95 + 56) + 8 * v68) = v94;
        }

        else
        {
          sub_100007258(*(v95 + 48) + 16 * v68);
          sub_10000496C(v68, v79);
        }

        v6 = v92;

        v90 = v95;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      else
      {

        sub_10000701C(&qword_100018838, &qword_10000DF10);
        inited = swift_initStackObject();
        *(inited + 16) = v82;
        *(inited + 32) = v89;
        v15 = inited + 32;
        *(inited + 40) = v52;
        *(inited + 48) = v31;
        v16 = sub_10000ACEC(inited);
        swift_setDeallocating();
        sub_100007314(v15, &qword_100018840, &qword_10000DF18);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v95 = v62;
        sub_100004C80(v16, v60, v61, v17);

        v90 = v95;
        v8 = v83;
        v12 = v84;
        v6 = v92;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    return 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v12)
      {

        return v90;
      }

      v11 = v8[v18];
      ++v13;
      if (v11)
      {
        v13 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:

    __break(1u);
LABEL_42:

    result = sub_10000D6A4();
    __break(1u);
  }

  return result;
}

Swift::Int sub_100002264(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_100004E0C(a1, isUniquelyReferenced_nonNull_native, &qword_100018818, &qword_10000DF00, a2, a3);
    *v3 = v14;
  }

  else
  {
    result = sub_100003F1C(a2, a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1000053A4(&qword_100018818, &qword_10000DF00);
        v13 = v15;
      }

      result = sub_1000047AC(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_100002350()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100002388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007438;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100002438()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000024DC;

  return sub_100005DE8();
}

uint64_t sub_1000024DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000025D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000026BC;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000026BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000027B0()
{
  v0 = type metadata accessor for TelemetryAggregator();
  v1 = sub_1000029B4(&qword_1000187E0, &unk_10000DDF0);

  return MLHostExtension.configuration.getter(v0, v1);
}

void *sub_10000281C@<X0>(void *a1@<X8>)
{
  type metadata accessor for TelemetryAggregator();
  result = swift_allocObject();
  result[2] = 0xD000000000000017;
  result[3] = 0x800000010000E5D0;
  result[4] = 7;
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TelemetryAggregator();
  sub_1000029B4(&qword_100018728, &unk_10000DE30);
  sub_10000D364();
  return 0;
}

uint64_t sub_1000029B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TelemetryAggregator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000029F4(void *a1, uint64_t a2)
{
  v4 = sub_10000D2B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    [a1 timestamp];
    sub_10000D264();
    sub_10000D294();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    v12 = *(a2 + 16);
    v13 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1000037C8(0, v12[2] + 1, 1, v12);
      *(a2 + 16) = v12;
    }

    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1000037C8((v15 > 1), v16 + 1, 1, v12);
    }

    v12[2] = v16 + 1;
    v17 = &v12[2 * v16];
    v17[4] = v11;
    v17[5] = v13;
    *(a2 + 16) = v12;
    swift_endAccess();
  }

  else
  {
    if (qword_100018720 != -1)
    {
      swift_once();
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_10000D5F4(17);

    v29 = 0x2064696C61766E49;
    v30 = 0xEF203A746E657665;
    v18 = [a1 description];
    v19 = sub_10000D454();
    v21 = v20;

    v32._countAndFlagsBits = v19;
    v32._object = v21;
    sub_10000D4A4(v32);

    v23 = v29;
    v22 = v30;

    v28 = sub_10000D3D4();
    v24 = sub_10000D584();

    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1000038FC(v23, v22, &v29);
      _os_log_impl(&_mh_execute_header, v28, v24, "%{public}s", v25, 0xCu);
      sub_100007064(v26);
    }

    else
    {

      v27 = v28;
    }
  }
}

void sub_100002D84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t *sub_100002DEC(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000D634())
  {
    v7 = &_swiftEmptyArrayStorage;
    if (!i)
    {
      return v7;
    }

    v23 = &_swiftEmptyArrayStorage;
    sub_1000054F4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = sub_10000D604();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        sub_1000054F4((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      v7[2] = v14 + 1;
      v15 = &v7[2 * v14];
      v15[4] = v11;
      v15[5] = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void *sub_100002F9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_10000D524();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100003460(0, 1, 1, &_swiftEmptyArrayStorage);
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
    v14 = sub_100003460((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
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
        v19 = sub_10000D504();
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

        v14 = sub_10000D494();
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
        v18 = sub_10000D494();
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
          v7 = sub_10000D524();
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

        v14 = sub_100003460(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_10000D524();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100003460(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100003460((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_10000D494();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000335C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000701C(&unk_100018910, &unk_10000DF80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100003460(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000701C(&qword_100018858, &unk_10000DF30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000356C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000701C(&qword_100018870, &qword_10000DF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100003694(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000701C(&qword_100018898, &qword_10000DF68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000701C(&qword_100018888, &qword_10000DF58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000037C8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000701C(&qword_100018900, &qword_10000DF70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000701C(&qword_100018908, &qword_10000DF78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000038FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000039C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007104(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007064(v11);
  return v7;
}

unint64_t sub_1000039C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100003AD4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000D614();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100003AD4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100003B20(a1, a2);
  sub_100003C50(&off_100014858);
  return v3;
}

char *sub_100003B20(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003D3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000D614();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000D4B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003D3C(v10, 0);
        result = sub_10000D5E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100003C50(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100003DB0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100003D3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000701C(&qword_100018808, &qword_10000DEF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003DB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000701C(&qword_100018808, &qword_10000DEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100003EA4(uint64_t a1, uint64_t a2)
{
  sub_10000D6F4();
  sub_10000D484();
  v4 = sub_10000D714();

  return sub_100004F9C(a1, a2, v4);
}

unint64_t sub_100003F1C(double a1, double a2)
{
  sub_10000D6F4();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  sub_10000D704(*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  sub_10000D704(*&v5);
  v6 = sub_10000D714();

  return sub_100005054(v6, a1, a2);
}

uint64_t sub_100003FB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000701C(&qword_100018850, &qword_10000E0B0);
  v34 = v4;
  result = sub_10000D654();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10000D6F4();
      sub_10000D484();
      result = sub_10000D714();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100004254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000701C(a3, a4);
  v36 = v6;
  result = sub_10000D654();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_10000D6F4();
      sub_10000D484();
      result = sub_10000D714();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_1000044F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000701C(a3, a4);
  result = sub_10000D654();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v33 = *(*(v7 + 48) + 16 * v21);
      v22 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      sub_10000D6F4();
      v23 = *&v33;
      if (*&v33 == 0.0)
      {
        v23 = 0.0;
      }

      sub_10000D704(*&v23);
      v24 = *(&v33 + 1);
      if (*(&v33 + 1) == 0.0)
      {
        v24 = 0.0;
      }

      sub_10000D704(*&v24);
      result = sub_10000D714();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v33;
      *(*(v9 + 56) + 8 * v17) = v22;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_37;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_37:
  *v5 = v9;
  return result;
}

Swift::Int sub_1000047AC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000D5B4() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_10000D6F4();
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v10;
      }

      sub_10000D704(*&v12);
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

      sub_10000D704(*&v13);
      result = sub_10000D714();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v14)
      {
LABEL_16:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000496C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000D5B4() + 1) & ~v5;
    do
    {
      sub_10000D6F4();

      sub_10000D484();
      v9 = sub_10000D714();

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

  return result;
}

unint64_t sub_100004B1C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100003EA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100003FB4(v16, a4 & 1);
      result = sub_100003EA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_10000D6A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000050CC();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_100004C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100003EA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100004254(v16, a4 & 1, &qword_100018848, &unk_10000DF20);
      v11 = sub_100003EA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_10000D6A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100005234();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_100004E0C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, double a5, double a6)
{
  v9 = v6;
  v14 = *v6;
  result = sub_100003F1C(a5, a6);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 < v20 || (a2 & 1) != 0)
    {
      sub_1000044F4(v20, a2 & 1, a3, a4);
      result = sub_100003F1C(a5, a6);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_10000701C(&qword_100018810, &qword_10000DEF8);
        result = sub_10000D6A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1000053A4(a3, a4);
      result = v23;
    }
  }

  v25 = *v9;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    v26 = (v25[6] + 16 * result);
    *v26 = a5;
    v26[1] = a6;
    *(v25[7] + 8 * result) = a1;
    v27 = v25[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v19)
    {
      v25[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  *(v25[7] + 8 * result) = a1;
}

unint64_t sub_100004F9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000D694())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005054(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1000050CC()
{
  v1 = v0;
  sub_10000701C(&qword_100018850, &qword_10000E0B0);
  v2 = *v0;
  v3 = sub_10000D644();
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_100005234()
{
  v1 = v0;
  sub_10000701C(&qword_100018848, &unk_10000DF20);
  v2 = *v0;
  v3 = sub_10000D644();
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

void *sub_1000053A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000701C(a1, a2);
  v4 = *v2;
  v5 = sub_10000D644();
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
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
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

char *sub_1000054F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005514(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000701C(&qword_100018880, &qword_10000DF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005620@<X0>(void *a3@<X8>)
{
  swift_getAtKeyPath();
  sub_10000D624();

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1000056D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000701C(&qword_1000187E8, &qword_10000DE78);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &aBlock - v10;
  sub_100007374(a2, &aBlock - v10, &qword_1000187E8, &qword_10000DE78);
  sub_100007374(a3, v9, &qword_1000187E8, &qword_10000DE78);
  v12 = sub_10000D2B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  isa = 0;
  if (v14(v11, 1, v12) != 1)
  {
    isa = sub_10000D274().super.isa;
    (*(v13 + 8))(v11, v12);
  }

  if (v14(v9, 1, v12) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_10000D274().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v17 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v16 maxEvents:0 lastN:0 reversed:0];

  v18 = sub_10000D444();
  v19 = [a1 publisherWithUseCase:v18 options:v17];

  v20 = swift_allocObject();
  *(v20 + 16) = &_swiftEmptyArrayStorage;
  v30 = nullsub_1;
  v31 = 0;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100007440;
  v29 = &unk_100014AA8;
  v21 = _Block_copy(&aBlock);
  v30 = sub_10000742C;
  v31 = v20;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100007440;
  v29 = &unk_100014AD0;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 sinkWithCompletion:v21 receiveInput:v22];

  _Block_release(v22);
  _Block_release(v21);

  swift_beginAccess();
  v24 = *(v20 + 16);

  return v24;
}

void *sub_100005A78(uint64_t isUniquelyReferenced_nonNull_native, unint64_t a2)
{
  v38 = a2;
  v2 = &_swiftEmptyDictionarySingleton;
  v49 = &_swiftEmptyDictionarySingleton;
  v3 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (isUniquelyReferenced_nonNull_native + 80);
  v37 = xmmword_10000DD80;
  while (1)
  {
    v39 = v3;
    v8 = *(v4 - 5);
    v9 = *(v4 - 4);
    v10 = *(v4 - 3);
    v11 = *(v4 - 4);
    v12 = *(v4 - 1);
    v13 = *v4;
    v40 = *(v4 - 6);
    v41 = v9;
    v45[0] = v40;
    v45[1] = v8;
    v45[2] = v9;
    v45[3] = v10;
    v42 = v11;
    v46 = v11;
    v43 = v12;
    v47 = v12;
    v48 = v13;
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35[2] = v45;

    v44 = sub_100002DEC(sub_1000072AC, v35, v38);
    v14 = sub_10000D424();
    v16 = v15;

    v18 = sub_100003EA4(v14, v16);
    v19 = v2[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_100004254(v21, 1, &qword_100018878, &qword_10000DF48);
      v2 = v49;
      v23 = sub_100003EA4(v14, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v2[7];
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      v36 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_10000356C(0, *(v26 + 16) + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
        *(v25 + 8 * v18) = isUniquelyReferenced_nonNull_native;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (v28 >= v27 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10000356C((v27 > 1), v28 + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
        *(v36 + 8 * v18) = isUniquelyReferenced_nonNull_native;
      }

      v5 = v39;
      v6 = v40;
      *(v26 + 16) = v28 + 1;
      v7 = v26 + 56 * v28;
      *(v7 + 32) = v6;
      *(v7 + 40) = v8;
      *(v7 + 48) = v41;
      *(v7 + 56) = v10;
      *(v7 + 64) = v42;
      *(v7 + 72) = v43;
      *(v7 + 80) = v13;
    }

    else
    {
      sub_10000701C(&qword_100018870, &qword_10000DF40);
      isUniquelyReferenced_nonNull_native = swift_allocObject();
      *(isUniquelyReferenced_nonNull_native + 16) = v37;
      v29 = v41;
      *(isUniquelyReferenced_nonNull_native + 32) = v40;
      *(isUniquelyReferenced_nonNull_native + 40) = v8;
      *(isUniquelyReferenced_nonNull_native + 48) = v29;
      *(isUniquelyReferenced_nonNull_native + 56) = v10;
      *(isUniquelyReferenced_nonNull_native + 64) = v42;
      *(isUniquelyReferenced_nonNull_native + 72) = v43;
      *(isUniquelyReferenced_nonNull_native + 80) = v13;
      v2[(v18 >> 6) + 8] |= 1 << v18;
      v30 = (v2[6] + 16 * v18);
      *v30 = v14;
      v30[1] = v16;
      *(v2[7] + 8 * v18) = isUniquelyReferenced_nonNull_native;
      v31 = v2[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v2[2] = v33;
      v5 = v39;
    }

    v4 += 7;
    v3 = v5 - 1;
    if (!v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:

  result = sub_10000D6A4();
  __break(1u);
  return result;
}

uint64_t sub_100005DE8()
{
  v1[35] = v0;
  v2 = sub_10000D2B4();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  sub_10000701C(&qword_1000187E8, &qword_10000DE78);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_100005EEC, 0, 0);
}

uint64_t sub_100005EEC()
{
  v129 = v0;
  v1 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v2 = [v1 Ledger];
  swift_unknownObjectRelease();
  v3 = [v2 DediscoPrivacyEvent];
  swift_unknownObjectRelease();
  sub_10000701C(&qword_1000187F0, &qword_10000DE80);
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = _swiftEmptyArrayStorage;
  v118 = inited;
  v5 = qword_100018720;
  v117 = v3;
  if (v5 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v6 = sub_10000D3D4();
    v7 = sub_10000D574();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v125 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000038FC(0xD00000000000002FLL, 0x800000010000E610, &v125);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      sub_100007064(v9);
    }

    v10 = v0[39];
    v11 = v0[40];
    v12 = v0[36];
    v13 = *(v0[37] + 56);
    v13(v11, 1, 1, v12);
    v13(v10, 1, 1, v12);
    v14 = sub_1000056D0(v117, v11, v10);
    sub_100007314(v10, &qword_1000187E8, &qword_10000DE78);
    sub_100007314(v11, &qword_1000187E8, &qword_10000DE78);
    *(v118 + 24) = v14;
    v119 = *(v14 + 16);
    if (!v119)
    {
      break;
    }

    v125 = 0;
    v126 = 0xE000000000000000;

    sub_10000D5F4(28);

    v125 = 0x2064656863746546;
    v126 = 0xE800000000000000;
    v0[34] = *(v14 + 16);
    v131._countAndFlagsBits = sub_10000D684();
    sub_10000D4A4(v131);

    v132._object = 0x800000010000E640;
    v132._countAndFlagsBits = 0xD000000000000012;
    sub_10000D4A4(v132);
    v16 = v125;
    v15 = v126;

    v17 = sub_10000D3D4();
    v18 = sub_10000D574();

    v120 = v0;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v125 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1000038FC(v16, v15, &v125);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
      sub_100007064(v20);
    }

    v21 = 0;
    v22 = (v14 + 40);
    v124 = _swiftEmptyArrayStorage;
    v121 = v14;
    do
    {
      if (v21 >= *(v14 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      sub_10000C3CC(v24, (v0 + 10));
      v25 = v0[10];
      v26 = v0[11];
      v27 = v0[12];
      v28 = v0[13];
      v29 = *(v0 + 28);
      v122 = *(v0 + 15);

      v30 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100003694(0, v124[2] + 1, 1, v124);
      }

      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        v30 = sub_100003694((v31 > 1), v32 + 1, 1, v30);
      }

      v30[2] = v32 + 1;
      v124 = v30;
      v33 = &v30[8 * v32];
      v33[4] = v23;
      ++v21;
      v33[5] = v25;
      v33[6] = v26;
      v33[7] = v27;
      v33[8] = v28;
      *(v33 + 18) = v29;
      v22 += 2;
      *(v33 + 5) = v122;
      v0 = v120;
      v14 = v121;
    }

    while (v119 != v21);
    v34 = [objc_opt_self() standardUserDefaults];
    v35 = sub_10000D444();
    [v34 doubleForKey:v35];
    v37 = v36;

    v125 = 0;
    v126 = 0xE000000000000000;
    sub_10000D5F4(29);

    v125 = 0xD00000000000001BLL;
    v126 = 0x800000010000E660;
    v133._countAndFlagsBits = sub_100007664(v37);
    sub_10000D4A4(v133);

    v39 = v125;
    v38 = v126;

    v40 = sub_10000D3D4();
    v41 = sub_10000D574();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v125 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1000038FC(v39, v38, &v125);
      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s", v42, 0xCu);
      sub_100007064(v43);
    }

    v44 = sub_10000D3D4();
    v45 = sub_10000D574();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v125 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1000038FC(0xD000000000000024, 0x800000010000E680, &v125);
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s", v46, 0xCu);
      sub_100007064(v47);
    }

    v49 = v120[37];
    v48 = v120[38];
    v50 = v120[36];
    sub_10000D2A4();
    sub_10000D294();
    v52 = v51;
    (*(v49 + 8))(v48, v50);
    type metadata accessor for BucketRangeCreator();
    v53 = swift_initStackObject();
    sub_1000078E0(v52);
    v55 = v54;
    v53[2] = v54;
    sub_1000078E0(v37);
    v57 = v56;
    v53[3] = v56;
    v58 = sub_100007E54(v56, v55);
    *(v53 + 4) = v58 & ~(v58 >> 63);
    if (v58 < 1)
    {

      v125 = 0;
      v126 = 0xE000000000000000;
      sub_10000D5F4(70);
      v94 = v126;
      v120[32] = v125;
      v120[33] = v94;
      v134._countAndFlagsBits = 0xD000000000000026;
      v134._object = 0x800000010000E750;
      sub_10000D4A4(v134);
      sub_10000D564();
      v135._countAndFlagsBits = 0x20646E6120;
      v135._object = 0xE500000000000000;
      sub_10000D4A4(v135);
      sub_10000D564();
      v136._countAndFlagsBits = 0xD000000000000017;
      v136._object = 0x800000010000E780;
      sub_10000D4A4(v136);
      v96 = v120[32];
      v95 = v120[33];

      v97 = sub_10000D3D4();
      v98 = sub_10000D574();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v125 = v100;
        *v99 = 136446210;
        *(v99 + 4) = sub_1000038FC(v96, v95, &v125);
        _os_log_impl(&_mh_execute_header, v97, v98, "%{public}s", v99, 0xCu);
        sub_100007064(v100);
        v0 = v120;
      }

      v127 = &type metadata for TelemetryError;
      v128 = sub_1000070B0();
      LOBYTE(v125) = 1;
      goto LABEL_46;
    }

    sub_100007528();
    v60 = sub_100001678(v124, v59);
    if (!v60[2])
    {

      v101 = sub_100007664(v57);
      v103 = v102;
      v104 = sub_100007664(v55);
      v106 = v105;
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_10000D5F4(67);
      v137._countAndFlagsBits = 0xD000000000000025;
      v137._object = 0x800000010000E700;
      sub_10000D4A4(v137);
      v138._countAndFlagsBits = v101;
      v138._object = v103;
      sub_10000D4A4(v138);

      v139._countAndFlagsBits = 8236;
      v139._object = 0xE200000000000000;
      sub_10000D4A4(v139);
      v140._countAndFlagsBits = v104;
      v140._object = v106;
      sub_10000D4A4(v140);

      v141._countAndFlagsBits = 0xD000000000000018;
      v141._object = 0x800000010000E730;
      sub_10000D4A4(v141);
      v108 = v125;
      v107 = v126;

      v109 = sub_10000D3D4();
      v110 = sub_10000D574();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v125 = v112;
        *v111 = 136446210;
        *(v111 + 4) = sub_1000038FC(v108, v107, &v125);
        _os_log_impl(&_mh_execute_header, v109, v110, "%{public}s", v111, 0xCu);
        sub_100007064(v112);
        v0 = v120;
      }

      v127 = &type metadata for TelemetryError;
      v128 = sub_1000070B0();
      LOBYTE(v125) = 2;
LABEL_46:
      v113 = objc_allocWithZone(sub_10000D394());
      v87 = sub_10000D374();

      goto LABEL_47;
    }

    v61 = sub_10000D3D4();
    v62 = sub_10000D574();
    v116 = v34;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v125 = v64;
      *v63 = 136446210;
      *(v63 + 4) = sub_1000038FC(0xD00000000000001CLL, 0x800000010000E6B0, &v125);
      _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s", v63, 0xCu);
      sub_100007064(v64);
    }

    v65 = v60 + 8;
    v66 = -1;
    v67 = -1 << *(v60 + 32);
    if (-v67 < 64)
    {
      v66 = ~(-1 << -v67);
    }

    v68 = v66 & v60[8];
    v69 = (63 - v67) >> 6;
    v70 = v60;

    v71 = 0;
    if (!v68)
    {
LABEL_26:
      v73 = v70;
      while (1)
      {
        v72 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_51;
        }

        if (v72 >= v69)
        {

          v88 = sub_10000D3D4();
          v89 = sub_10000D574();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v125 = v91;
            *v90 = 136446210;
            *(v90 + 4) = sub_1000038FC(0xD00000000000002ALL, 0x800000010000E6D0, &v125);
            _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s", v90, 0xCu);
            sub_100007064(v91);
          }

          type metadata accessor for DediscoDataEncoder();
          swift_initStackObject();
          sub_1000082D0(&_swiftEmptyDictionarySingleton);
          sub_1000093B8();
          v92 = sub_10000D444();
          [v116 setDouble:v92 forKey:v55];

          v93 = objc_allocWithZone(sub_10000D394());
          v87 = sub_10000D384();

          goto LABEL_47;
        }

        v68 = v65[v72];
        ++v71;
        if (v68)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v72 = v71;
      v73 = v70;
LABEL_30:
      if (!v73[2])
      {
        break;
      }

      v74 = v73[6] + ((v72 << 10) | (16 * __clz(__rbit64(v68))));
      v75 = *v74;
      v76 = *(v74 + 8);
      v77 = sub_100003F1C(*v74, v76);
      if ((v78 & 1) == 0)
      {
        goto LABEL_53;
      }

      v68 &= v68 - 1;
      v79 = *(v73[7] + 8 * v77);
      sub_10000701C(&qword_1000187F8, &qword_10000DE88);
      v80 = swift_initStackObject();
      *(v80 + 16) = xmmword_10000DD90;
      *(v80 + 32) = swift_getKeyPath();
      *(v80 + 40) = swift_getKeyPath();
      KeyPath = swift_getKeyPath();

      v123 = sub_100001AE0(v80, KeyPath, v79);

      swift_setDeallocating();
      swift_arrayDestroy();
      sub_100002264(v123, v75, v76);
      v71 = v72;
      if (!v68)
      {
        goto LABEL_26;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v82 = sub_10000D3D4();
  v83 = sub_10000D574();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v125 = v85;
    *v84 = 136446210;
    *(v84 + 4) = sub_1000038FC(0xD00000000000002CLL, 0x800000010000E7A0, &v125);
    _os_log_impl(&_mh_execute_header, v82, v83, "%{public}s", v84, 0xCu);
    sub_100007064(v85);
  }

  v86 = objc_allocWithZone(sub_10000D394());
  v87 = sub_10000D384();

LABEL_47:

  v114 = v0[1];

  return v114(v87);
}

uint64_t sub_10000701C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007064(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000070B0()
{
  result = qword_100018800;
  if (!qword_100018800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018800);
  }

  return result;
}

uint64_t sub_100007104(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007164(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000D694() & 1;
  }
}

uint64_t sub_1000071BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100007204()
{
  result = qword_100018830;
  if (!qword_100018830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018830);
  }

  return result;
}

uint64_t sub_1000072CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000071BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007314(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000701C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000701C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000073DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074A0()
{

  return swift_deallocClassInstance();
}

void sub_100007528()
{
  v1 = *(v0 + 32);
  if (v1 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v1)
  {
    v2 = sub_10000335C(0, 1, 1, &_swiftEmptyArrayStorage);
    v3 = 0;
    v4 = *(v0 + 24);
    for (i = 0x611722833945; i; --i)
    {
      v6 = v4 + v3;
      if (v6 > v6 + 86400.0)
      {
        goto LABEL_11;
      }

      v8 = *(v2 + 2);
      v7 = *(v2 + 3);
      if (v8 >= v7 >> 1)
      {
        v2 = sub_10000335C((v7 > 1), v8 + 1, 1, v2);
      }

      *(v2 + 2) = v8 + 1;
      v9 = &v2[16 * v8];
      *(v9 + 4) = v6;
      *(v9 + 5) = v6 + 86400.0;
      v3 += 86400;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_100007664(double a1)
{
  v1 = sub_10000D2B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000701C(&qword_100018AB8, &qword_10000E028);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  sub_10000D324();
  v9 = sub_10000D354();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = sub_10000D344().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setTimeZone:isa];

  v12 = sub_10000D444();
  [v8 setDateFormat:v12];

  sub_10000D284();
  v13 = sub_10000D274().super.isa;
  v14 = [v8 stringFromDate:v13];

  v15 = sub_10000D454();
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_1000078E0(double a1)
{
  v1 = sub_10000D2B4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = sub_10000701C(&qword_100018AB8, &qword_10000E028);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10000D314();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D2E4();
  sub_10000D334();
  v15 = sub_10000D354();
  result = (*(*(v15 - 8) + 48))(v10, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000D2F4();
    sub_10000D284();
    sub_10000D2C4();
    sub_10000D294();
    v17 = *(v2 + 8);
    v17(v5, v1);
    v17(v7, v1);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

void *sub_100007B5C(uint64_t a1)
{
  v2 = sub_10000D304();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000701C(&qword_100018AC8, &qword_10000E038);
    v9 = sub_10000D5D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10000828C(&qword_100018AD0, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_10000D414();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10000828C(&qword_100018AD8, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_10000D434();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100007E54(double a1, double a2)
{
  v2 = sub_10000D224();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000D2B4();
  v5 = *(v30 - 8);
  v6 = __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_10000701C(&qword_100018AB8, &qword_10000E028);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_10000D314();
  v28 = *(v14 - 8);
  v29 = v14;
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D2E4();
  sub_10000D334();
  v17 = sub_10000D354();
  result = (*(*(v17 - 8) + 48))(v13, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000D2F4();
    sub_10000D284();
    sub_10000D284();
    sub_10000701C(&qword_100018AC0, &qword_10000E030);
    v19 = sub_10000D304();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10000DD80;
    (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.day(_:), v19);
    sub_100007B5C(v22);
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v19);
    swift_deallocClassInstance();
    sub_10000D2D4();

    v23 = sub_10000D214();
    LOBYTE(v19) = v24;
    (*(v31 + 8))(v4, v32);
    v25 = *(v5 + 8);
    v26 = v30;
    v25(v8, v30);
    v25(v10, v26);
    (*(v28 + 8))(v16, v29);
    if (v19)
    {
      return 0;
    }

    else
    {
      return v23;
    }
  }

  return result;
}

uint64_t sub_10000828C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000D304();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000082D0(uint64_t a1)
{
  *(v1 + 16) = 50100;
  *(v1 + 24) = 1000;
  *(v1 + 32) = 4;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    *(v1 + 56) = internalBuild;
    *(v1 + 40) = a1;
    sub_10000701C(&qword_100018BC0, &qword_10000E098);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000DD80;
    *(inited + 32) = sub_10000D454();
    *(inited + 40) = v7;
    *(inited + 48) = 12662;
    *(inited + 56) = 0xE200000000000000;
    v8 = sub_10000ADE8(inited);
    swift_setDeallocating();
    sub_10000AEFC(inited + 32);
    *(v1 + 48) = v8;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_1000083BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000B000();
    v4.super.isa = sub_10000D404().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_100008448(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100018720 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v7 = sub_10000D3D4();
    v8 = sub_10000D574();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v78[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000038FC(0xD00000000000002BLL, 0x800000010000E960, v78);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
      sub_100007064(v10);
    }

    v11 = *(v4 + 16);
    if ((v11 - 0x2000000000000000) >> 62 != 3)
    {
      break;
    }

    v73._countAndFlagsBits = a1;
    v73._object = a2;
    v74 = v4;
    v78[0] = sub_10000B04C(4 * v11);
    v78[1] = v12;
    sub_100009A84(v78, 0);
    a1 = a3;
    v4 = a3 + 64;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 64);
    v75 = (v13 + 63) >> 6;

    v16 = 0;
    while (v15)
    {
LABEL_14:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v16 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v21 = *v20;
      a2 = v20[1];
      v22 = HIBYTE(a2) & 0xF;
      v23 = v21 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {

LABEL_76:
        v77[0] = 0;
        v77[1] = 0xE000000000000000;
        sub_10000D5F4(39);

        v77[0] = 0xD00000000000001DLL;
        v77[1] = 0x800000010000E990;
        v79._countAndFlagsBits = v21;
        v79._object = a2;
        sub_10000D4A4(v79);

        v80._countAndFlagsBits = 0x2E746E69206F7420;
        v80._object = 0xE800000000000000;
        sub_10000D4A4(v80);
        v48 = v77[0];
        v47 = v77[1];

        v49 = sub_10000D3D4();
        v50 = sub_10000D594();

        if (os_log_type_enabled(v49, v50))
        {
          a2 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v77[0] = v51;
          *a2 = 136446210;
          *(a2 + 4) = sub_1000038FC(v48, v47, v77);
          _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s", a2, 0xCu);
          sub_100007064(v51);
          a1 = a3;
        }

        goto LABEL_8;
      }

      v25 = *(*(a1 + 56) + 4 * v19);
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v77[0] = v21;
          v77[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (v21 == 43)
          {
            if (!v22)
            {
              goto LABEL_101;
            }

            if (--v22)
            {
              v28 = 0;
              v38 = v77 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                v40 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  break;
                }

                v28 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  break;
                }

                ++v38;
                if (!--v22)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v21 == 45)
          {
            if (!v22)
            {
              goto LABEL_99;
            }

            if (--v22)
            {
              v28 = 0;
              v32 = v77 + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                v34 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  break;
                }

                v28 = v34 - v33;
                if (__OFSUB__(v34, v33))
                {
                  break;
                }

                ++v32;
                if (!--v22)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v22)
          {
            v28 = 0;
            v43 = v77;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              v43 = (v43 + 1);
              if (!--v22)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v26 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = sub_10000D614();
          }

          v27 = *v26;
          if (v27 == 43)
          {
            if (v23 < 1)
            {
              goto LABEL_102;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              v28 = 0;
              if (!v26)
              {
                goto LABEL_66;
              }

              v35 = v26 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  break;
                }

                v28 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                ++v35;
                if (!--v22)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v27 == 45)
          {
            if (v23 < 1)
            {
              goto LABEL_100;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              v28 = 0;
              if (v26)
              {
                v29 = v26 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    goto LABEL_74;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    goto LABEL_74;
                  }

                  v28 = v31 - v30;
                  if (__OFSUB__(v31, v30))
                  {
                    goto LABEL_74;
                  }

                  ++v29;
                  if (!--v22)
                  {
                    goto LABEL_75;
                  }
                }
              }

LABEL_66:
              LOBYTE(v22) = 0;
LABEL_75:
              v46 = v22;

              if (v46)
              {
                goto LABEL_76;
              }

              goto LABEL_81;
            }
          }

          else
          {
            if (!v23)
            {
              goto LABEL_74;
            }

            v28 = 0;
            if (!v26)
            {
              goto LABEL_66;
            }

            while (1)
            {
              v41 = *v26 - 48;
              if (v41 > 9)
              {
                break;
              }

              v42 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                break;
              }

              ++v26;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }
        }

LABEL_74:
        v28 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_75;
      }

      v52 = sub_100009CEC(v21, a2, 10);
      if (v53)
      {
        goto LABEL_76;
      }

      v28 = v52;
LABEL_81:

      v54 = v28 + 100;
      if ((v28 + 100) >= 0xC3B4)
      {
        v77[0] = 0;
        v77[1] = 0xE000000000000000;
        sub_10000D5F4(43);

        strcpy(v77, "Error code: ");
        BYTE5(v77[1]) = 0;
        HIWORD(v77[1]) = -5120;
        v87._countAndFlagsBits = sub_10000D684();
        sub_10000D4A4(v87);

        v88._countAndFlagsBits = 0xD000000000000015;
        v88._object = 0x800000010000E9B0;
        sub_10000D4A4(v88);
        v89._countAndFlagsBits = sub_10000D684();
        sub_10000D4A4(v89);

        v90._countAndFlagsBits = 8236;
        v90._object = 0xE200000000000000;
        sub_10000D4A4(v90);
        v91._countAndFlagsBits = sub_10000D684();
        sub_10000D4A4(v91);

        v60._countAndFlagsBits = 11817;
        v60._object = 0xE200000000000000;
        goto LABEL_90;
      }

      if (v25)
      {
        if ((v25 & 0x80000000) != 0)
        {
          v77[0] = 0;
          v77[1] = 0xE000000000000000;
          sub_10000D5F4(32);

          strcpy(v77, "Count: ");
          v77[1] = 0xE700000000000000;
          v92._countAndFlagsBits = sub_10000D684();
          sub_10000D4A4(v92);

          v60._countAndFlagsBits = 0xD000000000000017;
          v60._object = 0x800000010000E9F0;
LABEL_90:
          sub_10000D4A4(v60);
          v62 = v77[0];
          v61 = v77[1];

          v49 = sub_10000D3D4();
          a2 = sub_10000D594();

          if (os_log_type_enabled(v49, a2))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v77[0] = v64;
            *v63 = 136446210;
            *(v63 + 4) = sub_1000038FC(v62, v61, v77);
            _os_log_impl(&_mh_execute_header, v49, a2, "%{public}s", v63, 0xCu);
            sub_100007064(v64);
            a1 = a3;
          }

LABEL_8:
        }

        else
        {
          if (v25 >= 0x65)
          {
            v77[0] = 0;
            v77[1] = 0xE000000000000000;
            sub_10000D5F4(46);

            strcpy(v77, "Count: ");
            v77[1] = 0xE700000000000000;
            v81._countAndFlagsBits = sub_10000D684();
            sub_10000D4A4(v81);

            v82._object = 0x800000010000E9D0;
            v82._countAndFlagsBits = 0xD000000000000011;
            sub_10000D4A4(v82);
            a2 = 100;
            v83._countAndFlagsBits = sub_10000D684();
            sub_10000D4A4(v83);

            v84._countAndFlagsBits = 0x747465736572202CLL;
            v84._object = 0xEF206F7420676E69;
            sub_10000D4A4(v84);
            v85._countAndFlagsBits = sub_10000D684();
            sub_10000D4A4(v85);

            v86._countAndFlagsBits = 46;
            v86._object = 0xE100000000000000;
            sub_10000D4A4(v86);
            v55 = v77[0];
            v56 = v77[1];

            v57 = sub_10000D3D4();
            v58 = sub_10000D574();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              a2 = swift_slowAlloc();
              v77[0] = a2;
              *v59 = 136446210;
              *(v59 + 4) = sub_1000038FC(v55, v56, v77);
              _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s", v59, 0xCu);
              sub_100007064(a2);

              a1 = a3;
            }

            v25 = 100;
          }

          sub_10000A278(v78, v54, v25 / 1000.0);
        }
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v75)
      {

        v77[0] = 0xD000000000000025;
        v77[1] = 0x800000010000EA10;
        sub_10000D4A4(v73);
        v65 = objc_allocWithZone(_DPFloatValueRecorder);
        v66 = sub_10000D444();

        v67 = [v65 initWithKey:v66];

        sub_10000701C(&qword_100018BF0, &qword_10000E0D0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_10000DD80;
        v69 = v78[0];
        v70 = v78[1];
        *(v68 + 32) = v78[0];
        *(v68 + 40) = v70;
        sub_10000B1F0(v69, v70);
        isa = sub_10000D544().super.isa;

        sub_1000090F0(*(v74 + 48));
        v72 = sub_10000D404().super.isa;

        [v67 recordFloatVectors:isa metadata:v72];

        sub_10000B244(v69, v70);
        return;
      }

      v15 = *(v4 + 8 * v17);
      ++v16;
      if (v15)
      {
        v16 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_97:
    swift_once();
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

void sub_1000090F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000701C(&qword_100018BF8, &qword_10000E0D8);
    v2 = sub_10000D664();
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_10000B298(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_10000B298(v29, v30);
    v14 = sub_10000D5C4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
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
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_10000B298(v30, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1000093B8()
{
  v1 = *(v0 + 40);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v47 = *(v0 + 40);

  v9 = 0;
  v45 = v8;
  v46 = v3;
  v49 = v0;
LABEL_6:
  if (v7)
  {
    v10 = v9;
LABEL_11:
    v48 = (v7 - 1) & v7;
    v11 = *(*(v47 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v61 = v16;
    v52 = v11;
    if (!v15)
    {
      goto LABEL_17;
    }

    do
    {
LABEL_21:
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = v19 | (v17 << 6);
        v21 = (*(v11 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        v24 = *(*(v11 + 56) + 8 * v20);
        v25 = *(v0 + 56);

        if (v25)
        {
          break;
        }

        sub_100008448(v23, v22, v24);

        v16 = v61;
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      v26 = sub_10000D554();
      v58 = v27;
      v59 = v26;
      v28 = sub_10000D554();
      v56 = v29;
      v57 = v28;
      v30 = *(v24 + 16);
      v60 = v24;
      if (v30)
      {
        v50 = v22;
        v55 = sub_100009A00(v30, 0);
        v53 = sub_10000AB94(aBlock, v55 + 4, v30, v24);
        v31 = aBlock[0];

        sub_10000AF64(v31);
        if (v53 != v30)
        {
          goto LABEL_39;
        }

        v32 = *(v24 + 16);
        if (v32)
        {
          v54 = sub_10000997C(*(v24 + 16), 0);
          v33 = sub_10000AA94(aBlock, v54 + 8, v32, v24);
          v34 = aBlock[0];
          v51 = v33;

          sub_10000AF64(v34);
          if (v51 != v32)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v54 = _swiftEmptyArrayStorage;
        }

        v22 = v50;
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
        v55 = _swiftEmptyArrayStorage;
      }

      v35 = qword_100018720;
      v36 = v22;

      if (v35 != -1)
      {
        swift_once();
      }

      v37 = sub_10000D3D4();
      v38 = sub_10000D574();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = 136446210;
        *(v39 + 4) = sub_1000038FC(0xD000000000000024, 0x800000010000E910, aBlock);
        _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s", v39, 0xCu);
        sub_100007064(v40);
      }

      v11 = v52;
      v41 = sub_10000D444();
      v42 = swift_allocObject();
      v42[2] = v23;
      v42[3] = v36;
      v42[4] = v59;
      v42[5] = v58;
      v42[6] = v57;
      v42[7] = v56;
      v42[8] = v55;
      v42[9] = v54;
      aBlock[4] = sub_10000AFC4;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000083BC;
      aBlock[3] = &unk_100014BD8;
      v43 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v43);

      v44 = objc_autoreleasePoolPush();
      v0 = v49;
      sub_100008448(v23, v36, v60);

      objc_autoreleasePoolPop(v44);
      v16 = v61;
    }

    while (v15);
LABEL_17:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        v9 = v10;
        v8 = v45;
        v3 = v46;
        v7 = v48;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_100009918()
{

  return swift_deallocClassInstance();
}

void *sub_10000997C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000701C(&qword_100018BE8, &unk_10000E0C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100009A00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000701C(&qword_100018880, &qword_10000DF50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_100009A84(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_10000B244(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_10000E040;
      sub_10000B244(0, 0xC000000000000000);
      sub_10000A9EC(&__b, v2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_10000B244(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *result = v7;
    result[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  sub_10000B244(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_10000E040;
  sub_10000B244(0, 0xC000000000000000);
  sub_10000D234();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = sub_10000D1C4();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = sub_10000D1F4();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = sub_10000D1E4();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), v2, v19);
  *result = __b;
  result[1] = v9 | 0x8000000000000000;
}

unsigned __int8 *sub_100009CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10000D514();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000A578(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10000D614();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000A278(uint64_t result, uint64_t a2, float a3)
{
  v5 = result;
  v7 = *result;
  v6 = *(result + 8);
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    sub_10000B244(v7, v6);
    v21 = v7;
    v22 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v5 = xmmword_10000E040;
    sub_10000B244(0, 0xC000000000000000);
    sub_10000D234();
    v11 = v21;
    v10 = v22;
    v12 = *(v21 + 16);
    result = sub_10000D1C4();
    if (!result)
    {
      goto LABEL_23;
    }

    v13 = result;
    result = sub_10000D1F4();
    if (!__OFSUB__(v12, result))
    {
      v14 = v13 + v12 - result;
      result = sub_10000D1E4();
      *(v14 + 4 * a2) = a3;
      *v5 = v11;
      *(v5 + 8) = v10 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v8)
  {
    result = sub_10000B244(v7, v6);
    v21 = v7;
    LOWORD(v22) = v6;
    BYTE2(v22) = BYTE2(v6);
    BYTE3(v22) = BYTE3(v6);
    BYTE4(v22) = BYTE4(v6);
    BYTE5(v22) = BYTE5(v6);
    BYTE6(v22) = BYTE6(v6);
    *(&v21 + a2) = a3;
    v9 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    *v5 = v21;
    *(v5 + 8) = v9;
    return result;
  }

  v15 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_10000B244(v7, v6);
  *v5 = xmmword_10000E040;
  sub_10000B244(0, 0xC000000000000000);
  result = swift_isUniquelyReferenced_nonNull_native();
  v16 = v7 >> 32;
  if ((result & 1) == 0)
  {
    if (v16 < v7)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_10000D1C4())
    {
      result = sub_10000D1F4();
      if (__OFSUB__(v7, result))
      {
        goto LABEL_22;
      }
    }

    sub_10000D204();
    swift_allocObject();
    v17 = sub_10000D1B4();

    v15 = v17;
  }

  if (v16 < v7)
  {
    goto LABEL_19;
  }

  result = sub_10000D1C4();
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v18 = result;
  result = sub_10000D1F4();
  if (__OFSUB__(v7, result))
  {
    goto LABEL_20;
  }

  v19 = v18 + v7 - result;
  sub_10000D1E4();
  *(v19 + 4 * a2) = a3;

  *v5 = v7;
  *(v5 + 8) = v15 | 0x4000000000000000;
  return result;
}

uint64_t sub_10000A578(uint64_t a1, unint64_t a2)
{
  v2 = sub_10000D524();
  v6 = sub_10000A5F8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000A5F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_10000D5A4();
    if (!v9 || (v10 = v9, v11 = sub_100003D3C(v9, 0), v12 = sub_10000A750(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_10000D474();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10000D474();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_10000D614();
LABEL_4:

  return sub_10000D474();
}

unint64_t sub_10000A750(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000A970(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10000D4E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10000D614();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000A970(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_10000D4C4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10000A970(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10000D4F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10000D4D4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_10000A9EC(int *a1, int a2)
{
  sub_10000D244();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_10000D1C4();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_10000D1F4();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = sub_10000D1E4();
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

void *sub_10000AA94(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_10000AB94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10000ACEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000701C(&qword_100018850, &qword_10000E0B0);
    v3 = sub_10000D664();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003EA4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000ADE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000701C(&qword_100018BD0, &qword_10000E0A8);
    v3 = sub_10000D664();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100003EA4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000AEFC(uint64_t a1)
{
  v2 = sub_10000701C(&qword_100018BC8, &qword_10000E0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AF6C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000AFE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000B000()
{
  result = qword_100018BD8;
  if (!qword_100018BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018BD8);
  }

  return result;
}

uint64_t sub_10000B04C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_10000D204();
      swift_allocObject();
      sub_10000D1D4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_10000D254();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_10000B0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000701C(&qword_100018BE0, &qword_10000E0B8);
    v3 = sub_10000D664();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100003EA4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000B1F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000B244(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

_OWORD *sub_10000B298(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000B2C4()
{
  v15 = *(v0 + 48);

  sub_10000D424();
  sub_10000CE80(&v15);
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000054F4(0, v2, 0);
    v3 = v1 + 32;
    do
    {
      v3 += 4;
      v4 = sub_10000D684();
      v6 = v5;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000054F4((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      *(v9 + 4) = v4;
      *(v9 + 5) = v6;
      --v2;
    }

    while (v2);
  }

  sub_10000D424();

  sub_10000701C(&qword_100018C50, &qword_10000E448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000E0E0;
  *(inited + 32) = 0x745374656B637562;
  *(inited + 40) = 0xEB00000000747261;
  *(inited + 48) = sub_10000D444();
  *(inited + 56) = 0x6E4574656B637562;
  *(inited + 64) = 0xE900000000000064;
  *(inited + 72) = sub_10000D444();
  *(inited + 80) = 0x656D614E6B736174;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_10000D444();
  strcpy((inited + 104), "errorIndices");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v11 = sub_10000D444();

  *(inited + 120) = v11;
  *(inited + 128) = 0x756F43726F727265;
  *(inited + 136) = 0xEB0000000073746ELL;
  v12 = sub_10000D444();

  *(inited + 144) = v12;
  v13 = sub_10000B0EC(inited);
  swift_setDeallocating();
  sub_10000701C(&qword_100018C58, &qword_10000E450);
  swift_arrayDestroy();
  return v13;
}

uint64_t TelemetryError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x6375427974706D65;
  }

  return 0x656D656C65546F6ELL;
}

uint64_t sub_10000B64C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6375427974706D65;
  v4 = 0xEC0000007374656BLL;
  if (v2 != 1)
  {
    v3 = 0x656D656C65546F6ELL;
    v4 = 0xEB00000000797274;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x6375427974706D65;
  v8 = 0xEC0000007374656BLL;
  if (*a2 != 1)
  {
    v7 = 0x656D656C65546F6ELL;
    v8 = 0xEB00000000797274;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10000D694();
  }

  return v11 & 1;
}

uint64_t sub_10000B770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747261;
  v3 = 0x745374656B637562;
  v4 = a1;
  v5 = 0x646E49726F727265;
  v6 = 0xEC00000073656369;
  v7 = 0x756F43726F727265;
  v8 = 0xEB0000000073746ELL;
  if (a1 != 4)
  {
    v7 = 0x73654D726F727265;
    v8 = 0xED00007365676173;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6E4574656B637562;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 0x656D614E6B736174;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x745374656B637562;
    v10 = 0xEB00000000747261;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEC00000073656369;
      if (v11 != 0x646E49726F727265)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEB0000000073746ELL;
      if (v11 != 0x756F43726F727265)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xED00007365676173;
      if (v11 != 0x73654D726F727265)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x6E4574656B637562)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D614E6B736174;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_10000D694();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_10000B98C()
{
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

Swift::Int sub_10000BA44(unsigned __int8 a1)
{
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

uint64_t sub_10000BB74(uint64_t a1)
{
  sub_10000D484();
}

Swift::Int sub_10000BC18(uint64_t a1)
{
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

Swift::Int sub_10000BCCC(uint64_t a1, unsigned __int8 a2)
{
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

unint64_t sub_10000BDF8@<X0>(Swift::String *a1@<X0>, TelemetryAggregator::TelemetryError_optional *a2@<X8>)
{
  result = _s19TelemetryAggregator0A5ErrorO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10000BE28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC0000007374656BLL;
  v5 = 0x6375427974706D65;
  if (v2 != 1)
  {
    v5 = 0x656D656C65546F6ELL;
    v4 = 0xEB00000000797274;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL CoreAnalyticsEvents.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000148E8;
  v6._object = a2;
  v4 = sub_10000D674(v3, v6);

  return v4 != 0;
}

Swift::Int sub_10000BF08()
{
  sub_10000D6F4();
  sub_10000D484();
  return sub_10000D714();
}

Swift::Int sub_10000BF7C(uint64_t a1)
{
  sub_10000D6F4();
  sub_10000D484();
  return sub_10000D714();
}

uint64_t sub_10000BFD0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100014948;
  v7._object = v3;
  v5 = sub_10000D674(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t CoreAnalyticsEventsFields.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x745374656B637562;
  v2 = 0x646E49726F727265;
  v3 = 0x756F43726F727265;
  if (a1 != 4)
  {
    v3 = 0x73654D726F727265;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6E4574656B637562;
  if (a1 != 1)
  {
    v4 = 0x656D614E6B736174;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000C15C(uint64_t a1)
{
  sub_10000D484();
}

unint64_t sub_10000C27C@<X0>(Swift::String *a1@<X0>, TelemetryAggregator::CoreAnalyticsEventsFields_optional *a2@<X8>)
{
  result = _s19TelemetryAggregator25CoreAnalyticsEventsFieldsO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10000C2AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747261;
  v4 = 0x745374656B637562;
  v5 = 0xEC00000073656369;
  v6 = 0x646E49726F727265;
  v7 = 0xEB0000000073746ELL;
  v8 = 0x756F43726F727265;
  if (v2 != 4)
  {
    v8 = 0x73654D726F727265;
    v7 = 0xED00007365676173;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000064;
  v10 = 0x6E4574656B637562;
  if (v2 != 1)
  {
    v10 = 0x656D614E6B736174;
    v9 = 0xE800000000000000;
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

uint64_t sub_10000C3A4(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C3B4(uint64_t result, int a2)
{
  if (a2 <= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_10000C3C0(uint64_t result, int a2)
{
  if (a2 >= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

void sub_10000C3CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 7104878;
  LODWORD(v24) = [a1 errorCode];
  v5 = sub_10000D684();
  v7 = v6;
  v8 = [a1 trialIdentifiers];
  if (v8 && (v9 = v8, v10 = [v8 bmltIdentifiers], v9, v10) && (v11 = objc_msgSend(v10, "trialTaskID"), v10, v11))
  {
    v4 = sub_10000D454();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v14 = [a1 count];
  v15 = [a1 aggregateFunction];
  v16 = sub_10000CFA8;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = sub_10000C3B4;
      goto LABEL_24;
    }

    if (v15 != 3)
    {
      goto LABEL_13;
    }

    v16 = sub_10000C3C0;
  }

  else
  {
    if (!v15)
    {
      if (qword_100018720 != -1)
      {
        swift_once();
      }

      v17 = sub_10000D3D4();
      v21 = sub_10000D594();
      if (os_log_type_enabled(v17, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_1000038FC(0xD00000000000002CLL, 0x800000010000EA40, &v24);
        _os_log_impl(&_mh_execute_header, v17, v21, "%{public}s", v22, 0xCu);
        sub_100007064(v23);
      }

      goto LABEL_17;
    }

    if (v15 != 1)
    {
LABEL_13:
      if (qword_100018720 != -1)
      {
        swift_once();
      }

      v17 = sub_10000D3D4();
      v18 = sub_10000D594();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_1000038FC(0xD00000000000002CLL, 0x800000010000EA40, &v24);
        _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
        sub_100007064(v20);
      }

LABEL_17:

      v16 = sub_10000CFA8;
    }
  }

LABEL_24:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
}

unint64_t _s19TelemetryAggregator0A5ErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100014880;
  v6._object = a2;
  v4 = sub_10000D674(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t _s19TelemetryAggregator25CoreAnalyticsEventsFieldsO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000149A8;
  v6._object = a2;
  v4 = sub_10000D674(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000C844()
{
  result = qword_100018C00;
  if (!qword_100018C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C00);
  }

  return result;
}

unint64_t sub_10000C89C()
{
  result = qword_100018C08;
  if (!qword_100018C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C08);
  }

  return result;
}

unint64_t sub_10000C8F4()
{
  result = qword_100018C10;
  if (!qword_100018C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C10);
  }

  return result;
}

unint64_t sub_10000C94C()
{
  result = qword_100018C18;
  if (!qword_100018C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C18);
  }

  return result;
}

unint64_t sub_10000C9A4()
{
  result = qword_100018C20;
  if (!qword_100018C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C20);
  }

  return result;
}

unint64_t sub_10000CA40()
{
  result = qword_100018C38;
  if (!qword_100018C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsEvents(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CoreAnalyticsEvents(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CoreAnalyticsEventsFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreAnalyticsEventsFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000CE80(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10000CEE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000CF04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10000CF4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000CFB4()
{
  type metadata accessor for TelemetryLogger(0);
  v0 = swift_allocObject();
  result = sub_10000D3E4();
  qword_1000194D0 = v0;
  return result;
}

uint64_t sub_10000D034()
{
  v1 = OBJC_IVAR____TtC19TelemetryAggregator15TelemetryLogger_logger;
  v2 = sub_10000D3F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TelemetryLogger(uint64_t a1)
{
  result = qword_100018CA8;
  if (!qword_100018CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D124(uint64_t a1)
{
  result = sub_10000D3F4();
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