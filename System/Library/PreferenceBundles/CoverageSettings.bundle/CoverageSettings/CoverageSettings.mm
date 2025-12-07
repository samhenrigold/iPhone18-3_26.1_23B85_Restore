id sub_14E8()
{
  v0 = objc_allocWithZone(PSSpecifier);

  return [v0 init];
}

uint64_t sub_1520(void *a1)
{
  v2 = sub_16AC(&qword_80A0, &qword_3940);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  *(swift_allocObject() + 16) = a1;
  sub_348C();
  sub_183C();
  v6 = a1;
  sub_354C();
  *(swift_allocObject() + 16) = v6;
  sub_2340();
  v7 = v6;
  sub_34FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_16AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_16F4(void *a1)
{
  sub_34AC();
  __chkstk_darwin();
  sub_35DC();
  sub_35CC();
  sub_35BC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_361C();
  v2 = a1;
  sub_349C();
  sub_347C();
}

uint64_t sub_17FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_183C()
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    sub_348C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_1894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  v4 = sub_34EC();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  sub_16AC(&qword_8158, &qword_3A38);
  v3[34] = swift_task_alloc();
  v5 = sub_344C();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_346C();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = sub_352C();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v8 = sub_34DC();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_35DC();
  v3[48] = sub_35CC();
  v10 = sub_35BC();

  return _swift_task_switch(sub_1B40, v10, v9);
}

uint64_t sub_1B40()
{
  v86 = v0;
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];
  v5 = v0[41];
  v6 = v0[29];

  v82 = sub_3248();
  v80 = *(v2 + 16);
  v80(v1);
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_34BC();
  v8 = sub_35FC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[47];
  v11 = v0[44];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[43];
  v15 = v0[41];
  if (v9)
  {
    v78 = v0[44];
    v76 = v8;
    v17 = v0[39];
    v16 = v0[40];
    v74 = v0[38];
    v18 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v84 = v75;
    *v18 = 136315138;
    v77 = v10;
    sub_351C();
    v19 = sub_345C();
    log = v7;
    v21 = v20;
    (*(v17 + 8))(v16, v74);
    (*(v13 + 8))(v14, v15);
    v22 = sub_28B8(v19, v21, &v84);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, log, v76, "Handling deeplink %s", v18, 0xCu);
    sub_3108(v75);

    v23 = *(v12 + 8);
    v23(v77, v78);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
    v23 = *(v12 + 8);
    v23(v10, v11);
  }

  v25 = v0[39];
  v24 = v0[40];
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[36];
  v29 = v0[34];
  sub_351C();
  sub_341C();
  (*(v25 + 8))(v24, v26);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    v30 = v0[33];
    v31 = v0[31];
    v32 = v0[32];
    sub_30A8(v0[34], &qword_8158, &qword_3A38);
    sub_350C();
    sub_353C();
    (*(v32 + 8))(v30, v31);
  }

  else
  {
    (*(v0[36] + 32))(v0[37], v0[34], v0[35]);
    v0[22] = sub_342C();
    v0[23] = v33;
    v0[24] = 0x47415245564F432FLL;
    v0[25] = 0xEA00000000002F45;
    sub_2864();
    sub_35EC();

    v35 = v0[12];
    v34 = v0[13];
    if ((v34 ^ v35) >= 0x4000)
    {
      v36._countAndFlagsBits = sub_343C();
      if (v36._object)
      {
        v37 = (v36._object >> 56) & 0xF;
        if ((v36._object & 0x2000000000000000) == 0)
        {
          v37 = v36._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v84 = (&stru_20 + 31);
          v85 = 0xE100000000000000;
          sub_359C(v36);

          v38 = v85;
          v0[26] = v84;
          v0[27] = v38;
          v39 = sub_356C();
          v41 = v40;

          v84 = v39;
          v85 = v41;
          sub_358C();
          v35 = sub_362C();
          v34 = v42;
          v44 = v43;
          v46 = v45;

          v0[12] = v35;
          v0[13] = v34;
          v0[14] = v44;
          v0[15] = v46;
        }

        else
        {
        }
      }

      (v80)(v0[46], v82, v0[44]);
      v47 = sub_34BC();
      v48 = sub_35FC();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v0[46];
      v51 = v0[44];
      if (v49)
      {
        v52 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v84 = v81;
        *v52 = 136315138;
        swift_beginAccess();
        v83 = v50;

        v53 = sub_356C();
        v79 = v51;
        v55 = v54;

        v56 = sub_28B8(v53, v55, &v84);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_0, v47, v48, "Found path component: %s", v52, 0xCu);
        sub_3108(v81);

        v57 = v83;
        v58 = v79;
      }

      else
      {

        v57 = v50;
        v58 = v51;
      }

      v23(v57, v58);
      v59 = v0[30];
      sub_16AC(&qword_8168, &qword_3A40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3930;
      sub_361C();
      *(inited + 32) = sub_360C();
      *(inited + 40) = v61;
      swift_beginAccess();
      v63 = v0[14];
      v62 = v0[15];
      *(inited + 48) = v35;
      *(inited + 56) = v34;
      *(inited + 64) = v63;
      *(inited + 72) = v62;

      sub_2F90(inited);
      swift_setDeallocating();
      sub_30A8(inited + 32, &qword_8170, &qword_3A48);
      isa = sub_355C().super.isa;

      [v59 setUserInfo:isa];
    }

    v66 = v0[36];
    v65 = v0[37];
    v67 = v0[35];
    v69 = v0[32];
    v68 = v0[33];
    v70 = v0[31];
    sub_350C();
    sub_353C();
    (*(v69 + 8))(v68, v70);
    (*(v66 + 8))(v65, v67);
  }

  v71 = v0[1];

  return v71();
}

uint64_t sub_2290(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_31C0;

  return sub_1894(a1, a2, v6);
}

unint64_t sub_2340()
{
  result = qword_80B0;
  if (!qword_80B0)
  {
    sub_23A4(&qword_80A0, &qword_3940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80B0);
  }

  return result;
}

uint64_t sub_23A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23F0()
{
  result = qword_80B8;
  if (!qword_80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80B8);
  }

  return result;
}

uint64_t sub_2460()
{
  v1 = sub_16AC(&qword_80A0, &qword_3940);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  sub_348C();
  sub_183C();
  v6 = v5;
  sub_354C();
  *(swift_allocObject() + 16) = v6;
  sub_2340();
  v7 = v6;
  sub_34FC();
  return (*(v2 + 8))(v4, v1);
}

id sub_25EC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PSSpecifier) init];
  *a1 = result;
  return result;
}

uint64_t sub_265C()
{
  sub_23A4(&qword_80A0, &qword_3940);
  sub_2340();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2770;

  return sub_1894(a1, a2, v6);
}

uint64_t sub_2770()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2864()
{
  result = qword_8160;
  if (!qword_8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8160);
  }

  return result;
}

unint64_t sub_28B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2984(v11, 0, 0, 1, a1, a2);
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
    sub_3154(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3108(v11);
  return v7;
}

unint64_t sub_2984(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2A90(a5, a6);
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
    result = sub_364C();
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

char *sub_2A90(uint64_t a1, unint64_t a2)
{
  v3 = sub_2ADC(a1, a2);
  sub_2C0C(&off_4378);
  return v3;
}

char *sub_2ADC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2CF8(v5, 0);
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

  result = sub_364C();
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
        v10 = sub_35AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2CF8(v10, 0);
        result = sub_363C();
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

uint64_t sub_2C0C(uint64_t result)
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

  result = sub_2D6C(result, v11, 1, v3);
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

void *sub_2CF8(uint64_t a1, uint64_t a2)
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

  sub_16AC(&qword_8178, &qword_3A50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2D6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_16AC(&qword_8178, &qword_3A50);
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

unint64_t sub_2E60(uint64_t a1, uint64_t a2)
{
  sub_367C();
  sub_357C();
  v4 = sub_368C();

  return sub_2ED8(a1, a2, v4);
}

unint64_t sub_2ED8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_366C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2F90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_16AC(&unk_8180, qword_3A58);
    v3 = sub_365C();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_2E60(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t sub_30A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_16AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3108(void *a1)
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

uint64_t sub_3154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_31CC()
{
  v0 = sub_34DC();
  sub_33B8(v0, qword_8298);
  sub_32AC(v0, qword_8298);
  return sub_34CC();
}

uint64_t sub_3248()
{
  if (qword_8290 != -1)
  {
    swift_once();
  }

  v0 = sub_34DC();

  return sub_32AC(v0, qword_8298);
}

uint64_t sub_32AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_32E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_8290 != -1)
  {
    swift_once();
  }

  v2 = sub_34DC();
  v3 = sub_32AC(v2, qword_8298);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_33B8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}