uint64_t sub_10026F1A0(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v63 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_30:
      v34 = v6;
      goto LABEL_61;
    }

    v15 = &selRef_scaledValueForValue_;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[404]];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = sub_1004DD43C();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[404]];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = sub_1004DD43C();
        v29 = v28;

        if (v21 != v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = 0xE000000000000000;
        if (v21)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v29)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v15 = &selRef_scaledValueForValue_;
LABEL_26:
        v32 = v13;
        v31 = v59;
        v33 = v59 == v13++;
        v5 = __dst;
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:
        *v31 = *v32;
        goto LABEL_28;
      }

LABEL_23:
      v30 = sub_1004DF08C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &selRef_scaledValueForValue_;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v31 = v59;
      v32 = __dst;
      v5 = __dst + 1;
      if (v59 != __dst)
      {
        goto LABEL_27;
      }

LABEL_28:
      v6 = v31 + 1;
      if (v13 >= v63 || v5 >= v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v35 = a4;
    memmove(a4, a2, 8 * v12);
    v5 = a2;
    a4 = v35;
  }

  v63 = &a4[v12];
  v13 = a4;
  if (v10 < 8 || v5 <= v6)
  {
    v34 = v5;
    goto LABEL_61;
  }

  v37 = &selRef_scaledValueForValue_;
  v58 = a4;
  v60 = v6;
  do
  {
    __dsta = v5;
    v38 = v5 - 1;
    --v4;
    v39 = v63;
    v57 = v38;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 v37[404]];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = sub_1004DD43C();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[404]];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = sub_1004DD43C();
        v53 = v52;

        if (v45 != v51)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v53 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_50;
        }
      }

      if (v47 == v53)
      {
        v54 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v54 = sub_1004DF08C();
LABEL_51:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v55 = v4 + 1;
      if (v54)
      {
        break;
      }

      v38 = v57;
      if (v55 != v63)
      {
        *v4 = *v39;
      }

      --v4;
      v63 = v39;
      v37 = &selRef_scaledValueForValue_;
      if (v39 <= v58)
      {
        v63 = v39;
        v13 = v58;
        v34 = __dsta;
        goto LABEL_61;
      }
    }

    v34 = v57;
    if (v55 != __dsta)
    {
      *v4 = *v57;
    }

    v13 = v58;
    v37 = &selRef_scaledValueForValue_;
    if (v63 <= v58)
    {
      break;
    }

    v5 = v57;
  }

  while (v57 > v60);
LABEL_61:
  if (v34 != v13 || v34 >= (v13 + ((v63 - v13 + (v63 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v34, v13, 8 * (v63 - v13));
  }

  return 1;
}

uint64_t sub_10026F694(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10026F720(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10026F784(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void *sub_10026F8DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100010678(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*sub_10026FA44(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004DEB2C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10026FAC4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10026FACC(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004DEB2C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100271430;
  }

  __break(1u);
  return result;
}

void (*sub_10026FB4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004DEB2C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10026FBCC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10026FBD4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004DEB2C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10026FC54;
  }

  __break(1u);
  return result;
}

void *sub_10026FC5C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1004DED5C();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10026E440(v3, 0);
  sub_10004614C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL _s9MusicCore24SharePlayTogetherSessionC11ParticipantV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D90CC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_10063C158, &unk_100524490);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = sub_100004CB8(&qword_10063C368, &qword_1005246D8);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 != *a2 && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14 || (*(a1 + 16) != *(a2 + 16) || v13 != v14) && (sub_1004DF08C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v16 = *(v10 + 48);
  sub_1000108DC(a1 + v15, v12, &unk_10063C158, &unk_100524490);
  sub_1000108DC(a2 + v15, &v12[v16], &unk_10063C158, &unk_100524490);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) != 1)
  {
    sub_1000108DC(v12, v9, &unk_10063C158, &unk_100524490);
    if (v17(&v12[v16], 1, v4) == 1)
    {
      (*(v5 + 8))(v9, v4);
      goto LABEL_17;
    }

    (*(v5 + 32))(v7, &v12[v16], v4);
    sub_100270C2C(&unk_10063C370, &type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    v19 = sub_1004DD35C();
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v9, v4);
    sub_10001074C(v12, &unk_10063C158, &unk_100524490);
    return (v19 & 1) != 0;
  }

  if (v17(&v12[v16], 1, v4) != 1)
  {
LABEL_17:
    sub_10001074C(v12, &qword_10063C368, &qword_1005246D8);
    return 0;
  }

  sub_10001074C(v12, &unk_10063C158, &unk_100524490);
  return 1;
}

void sub_1002700A8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    sub_100010598(a2, a3);
  }
}

double sub_1002700F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100270108()
{

  return swift_deallocObject();
}

uint64_t sub_100270168(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_10063C158, &unk_100524490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002701F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_10026D2D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1002702C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035C88;

  return sub_10026D8C8(a1, v4, v5, v7, v6);
}

double sub_100270388(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  if (qword_100633E28 != -1)
  {
    swift_once();
  }

  v9 = sub_1004D966C();
  sub_100035430(v9, static Logger.sharePlayTogether);
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 2u);
  }

  v13 = sub_1004DDA8C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1004DDA4C();
  v14 = v6;
  v15 = sub_1004DDA3C();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  sub_10011F560(0, 0, v8, a3, v16);

  return result;
}

void sub_10027056C(uint64_t a1)
{
  sub_1002709E0(319, &qword_10063C1A8, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100236040(319, &qword_10063C1B0, &qword_10063C0C0, &qword_100524330);
    if (v2 <= 0x3F)
    {
      sub_1002709E0(319, &qword_10063C1B8, &type metadata for Int, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100236040(319, &qword_10063C1C0, &qword_10063C100, &qword_100524430);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1002707A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&unk_10063C158, &unk_100524490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100270870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&unk_10063C158, &unk_100524490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100270920(uint64_t a1)
{
  sub_1002709E0(319, &qword_10063C230, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100270A30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002709E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100270A30(uint64_t a1)
{
  if (!qword_10063C238)
  {
    sub_1004D90CC();
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063C238);
    }
  }
}

uint64_t sub_100270A88(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_100270AE0()
{

  return swift_deallocObject();
}

uint64_t sub_100270B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100270B7C()
{
  result = qword_10063C2E8;
  if (!qword_10063C2E8)
  {
    sub_100006F10(255, &qword_10063C2E0, MRUserIdentity_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063C2E8);
  }

  return result;
}

uint64_t sub_100270BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100008C70(a1, a1[3]);
  result = sub_1004D919C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100270C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100270C88(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_10063C2D8, &qword_100524610) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035B28;

  return sub_10026B7DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100270DC8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100004CB8(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_100270E9C(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_10063C308, &qword_100524658) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035C88;

  return sub_10026BF70(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_100270FC8()
{
  result = qword_10063C310;
  if (!qword_10063C310)
  {
    sub_100008DE4(&qword_10063C308, &qword_100524658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063C310);
  }

  return result;
}

uint64_t sub_10027102C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100271090(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002710EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&unk_10063C158, &unk_100524490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027115C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002711A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035B28;

  return sub_10026E05C(a1, v4, v5, v6);
}

uint64_t sub_100271258(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_10026DE74(a1, v4, v5, v6);
}

uint64_t sub_10027130C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10027134C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_10026DE74(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  sub_100004CB8(&qword_10063C3C0, &qword_1005246F0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_1004D8B0C();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_1004D8B2C();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = sub_1004DDA4C();
  *(v4 + 192) = sub_1004DDA3C();
  v10 = sub_1004DD9BC();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(sub_1002716E0, v10, v9);
}

uint64_t sub_1002716E0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v5 = &enum case for AuthorizationPromptOptions.PromptCondition.always(_:);
  if (!*(v0 + 224))
  {
    v5 = &enum case for AuthorizationPromptOptions.PromptCondition.automatic(_:);
  }

  (*(*(v0 + 144) + 104))(*(v0 + 152), *v5, *(v0 + 136));
  sub_1004D8B1C();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_10027184C;
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return sub_10027E328(v7, v8);
}

uint64_t sub_10027184C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  sub_10001074C(v2, &qword_10063C3C0, &qword_1005246F0);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_1002719A0, v4, v3);
}

uint64_t sub_1002719A0()
{
  v43 = v0;

  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = sub_1004D966C();
  sub_100035430(v3, static Logger.groupActivities);
  sub_10028BE70(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    sub_10028BE70(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = sub_1004DD4DC();
    v13 = v12;
    sub_10028C1C4(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = sub_1000343A8(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    sub_100008D24(v10);
  }

  else
  {

    sub_10028C1C4(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  sub_10028BE70(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_10028C1C4(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    sub_10028BE08(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      sub_10028C1C4(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
      v41 = 1;
    }
  }

  else
  {
    v23 = v0[21];
    v39 = v0[20];
    v40 = v0[22];
    v38 = v0[16];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v37 = v28;
    v29 = v0[2];
    sub_10028BE08(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10027ED50();
    v30 = sub_1004DDA8C();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    sub_10028BE70(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = sub_1004DDA3C();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    sub_10028BE08(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10011F560(0, 0, v37, &unk_100524708, v34);

    sub_10028C1C4(v24, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10028C1C4(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = sub_1004DDA4C();
  *(v2 + 152) = sub_1004DDA3C();
  v4 = sub_1004DD9BC();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(sub_100271FA4, v4, v3);
}

uint64_t sub_100271FA4()
{
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  *(v0 + 176) = sub_100035430(v1, static Logger.groupActivities);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "👋🏻 Leaving session. Will perform leaveCommand=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 280);

  if (v6 == 1)
  {
    v7 = *(v0 + 136);
    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v0 + 184) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v7 + v8) = 1;
    swift_beginAccess();
    v9 = v7[5];
    v10 = v7[6];
    sub_100008C70(v7 + 2, v9);
    v11 = *(v9 - 8);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    (*(v11 + 16))();
    v13 = (*(v10 + 48))(v9, v10);
    *(v0 + 200) = v13;
    (*(v11 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(v0 + 136);
      *(v0 + 40) = &type metadata for Player.LeaveSessionCommand;
      *(v0 + 48) = &protocol witness table for Player.LeaveSessionCommand;
      *(v0 + 208) = [objc_opt_self() systemRoute];
      *(v0 + 120) = v14;

      v15 = sub_1004DD50C();
      *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      *(v0 + 216) = sub_1004DDA3C();
      v18 = sub_1004DD9BC();
      *(v0 + 224) = v18;
      *(v0 + 232) = v17;

      return _swift_task_switch(sub_100272404, v18, v17);
    }

    *(*(v0 + 136) + *(v0 + 184)) = 0;
  }

  else
  {
  }

  v19 = *(v0 + 136);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v19 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004D8A3C();
  }

  v21 = *(v0 + 136);
  *(v19 + v20) = 0;

  sub_100281CCC();
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v23 = *(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v23)
  {

    v24 = sub_1004D964C();
    v25 = sub_1004DDF9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Leave completed, pending session found", v26, 2u);
    }

    *(v19 + v20) = v23;
    swift_retain_n();

    sub_100281CCC();

    *(v21 + v22) = 0;
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100272404()
{
  v1 = v0[26];
  sub_100004CB8(&unk_100639D70, &unk_100515830);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868((v0 + 2), v2 + 32);
  v0[31] = sub_1004DDA3C();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_100272504;

  return sub_100206638(v2, 0x10000, 1, v1, 0, (v0 + 7));
}

uint64_t sub_100272504(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_1004DD9BC();
    v6 = v5;
    v7 = sub_1002727F8;
  }

  else
  {
    v4 = sub_1004DD9BC();
    v6 = v8;
    v7 = sub_10027267C;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10027267C()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_1002726E8, v1, v2);
}

uint64_t sub_1002726E8()
{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = sub_1004DED5C();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    sub_1004DEB2C();
    swift_unknownObjectRelease();
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  sub_10001074C(v0 + 56, &qword_100635998, &unk_100522780);
  sub_100008D24((v0 + 16));

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = sub_100272BB8;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_1002727F8()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_10027285C, v1, v2);
}

uint64_t sub_10027285C()
{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(sub_1002728CC, v3, v4);
}

uint64_t sub_1002728CC()
{
  v20 = v0;

  sub_10001074C((v0 + 7), &qword_100635998, &unk_100522780);
  sub_100008D24(v0 + 2);

  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004D8A3C();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  sub_100281CCC();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = sub_1004D964C();
    v15 = sub_1004DDF9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    sub_100281CCC();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100272BB8()
{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004D8A3C();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  sub_100281CCC();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = sub_1004D964C();
    v7 = sub_1004DDF9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    sub_100281CCC();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

void GroupActivitiesManager.postEvent(_:participantID:)(id *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v187 = a3;
  v185 = a2;
  v6 = a1[1];
  v170 = *a1;
  v169 = v6;
  v7 = a1[3];
  v168 = a1[2];
  v167 = v7;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v174 = v156 - v8;
  v177 = sub_1004D88BC();
  v176 = *(v177 - 8);
  __chkstk_darwin();
  v171 = v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = v156 - v10;
  __chkstk_darwin();
  v178 = v156 - v11;
  v166 = sub_1004D87FC();
  v162 = *(v166 - 8);
  __chkstk_darwin();
  v164 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1004D881C();
  v161 = *(v165 - 8);
  __chkstk_darwin();
  v163 = v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1004D88AC();
  v180 = *(v181 - 8);
  __chkstk_darwin();
  v173 = v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = v156 - v15;
  v191 = sub_1004D82AC();
  v184 = *(v191 - 8);
  __chkstk_darwin();
  v190 = v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063C3E0, &qword_100524718);
  __chkstk_darwin();
  v182 = v156 - v17;
  v192 = sub_1004D8AFC();
  v193 = *(v192 - 8);
  __chkstk_darwin();
  v172 = v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v156 - v19;
  __chkstk_darwin();
  v189 = v156 - v20;
  __chkstk_darwin();
  v186 = v156 - v21;
  v22 = sub_100004CB8(&qword_10063C3E8, &qword_100524720);
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v156 - v26;
  swift_beginAccess();
  v28 = v3[7];
  v29 = v3[8];
  v30 = v3[9];
  v31 = v3[10];
  *(v3 + 7) = xmmword_100512770;
  v3[9] = 0;
  v3[10] = 0;
  sub_10028C224(v28, v29, v30, v31);
  swift_beginAccess();
  v33 = v3[5];
  v32 = v3[6];
  sub_100008C70(v3 + 2, v33);
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin();
  v37 = v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v35);
  v38 = (*(v32 + 56))(v33, v32);
  (*(v34 + 8))(v37, v33);
  v39 = [v38 applicationState];

  v183 = a1;
  if ((*(a1 + 48) | 4) == 4 && v39 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  sub_1004D8A4C();
  (*(v23 + 104))(v25, enum case for GroupSession.State.joined<A>(_:), v22);
  v41 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v156[0] = v41;
  v42 = sub_1004D8A2C();
  v43 = *(v23 + 8);
  v43(v25, v22);
  v43(v27, v22);
  if ((v42 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v188 = sub_1002811C0(v185, v187);
  v160 = v44;
  v156[1] = v40;
  v45 = sub_1004D89EC();
  v46 = v45;
  v47 = v45 + 56;
  v48 = 1 << *(v45 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v45 + 56);
  v51 = (v48 + 63) >> 6;
  v158 = (v193 + 16);
  v159 = (v193 + 32);
  v157 = v184 + 1;
  v184 = (v193 + 8);

  v52 = 0;
  v53 = v192;
  if (!v50)
  {
LABEL_9:
    while (1)
    {
      v54 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v54 >= v51)
      {

        v66 = 1;
        v67 = v186;
        v68 = v182;
        goto LABEL_22;
      }

      v50 = *(v47 + 8 * v54);
      ++v52;
      if (v50)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v54 = v52;
LABEL_12:
    v55 = v46;
    v56 = v193;
    v57 = *(v46 + 48) + *(v193 + 72) * (__clz(__rbit64(v50)) | (v54 << 6));
    v58 = v189;
    (*(v193 + 16))(v189, v57, v53);
    v59 = v53;
    v60 = *(v56 + 32);
    v60(v194, v58, v59);
    v61 = v190;
    sub_1004D8AEC();
    v62 = sub_1004D827C();
    v64 = v63;
    (*v157)(v61, v191);
    if (v62 == v188 && v64 == v160)
    {

      goto LABEL_21;
    }

    v65 = sub_1004DF08C();

    if (v65)
    {
      break;
    }

    v50 &= v50 - 1;
    v53 = v192;
    (*v184)(v194, v192);
    v52 = v54;
    v46 = v55;
    if (!v50)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v68 = v182;
  v69 = v192;
  v60(v182, v194, v192);
  v53 = v69;
  v66 = 0;
  v67 = v186;
LABEL_22:
  v70 = v193;
  (*(v193 + 56))(v68, v66, 1, v53);

  if ((*(v70 + 48))(v68, 1, v53) == 1)
  {
    sub_10001074C(v68, &qword_10063C3E0, &qword_100524718);
    if (qword_100633E70 == -1)
    {
LABEL_24:
      v71 = sub_1004D966C();
      sub_100035430(v71, static Logger.groupActivities);
      v72 = v187;

      v73 = sub_1004D964C();
      v74 = sub_1004DDF7C();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v197[0] = v76;
        *v75 = 136446210;
        *(v75 + 4) = sub_1000343A8(v185, v72, v197);
        _os_log_impl(&_mh_execute_header, v73, v74, "No active participant with identifier=%{public}s", v75, 0xCu);
        sub_100008D24(v76);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v77 = v53;
  (*v159)(v67, v68, v53);
  v78 = *v183;
  v79 = *(v183 + 8);
  v80 = *(v183 + 9) | ((*(v183 + 13) | (*(v183 + 15) << 16)) << 32);
  v82 = v183[2];
  v81 = v183[3];
  v83 = *(v183 + 48);
  v84 = v79 | (v80 << 8);
  if (v83 <= 2)
  {
    if (*(v183 + 48))
    {
      v85 = v53;
      v86 = v181;
      v87 = v183;
      if (v83 != 1)
      {
        if (v83 == 2)
        {
          v88 = v179;
          sub_1004D886C();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v88 = v179;
      sub_1004D888C();
LABEL_53:
      (*v158)(v172, v67, v85);
      (*(v180 + 16))(v173, v88, v86);
      v118 = *(v87 + 8);
      v119 = *(v87 + 48);
      if (v119 == 4)
      {
        v120 = v177;
      }

      else
      {
        v120 = v177;
        v121 = v174;
        if (v119 == 5)
        {
          v123 = *(v87 + 32);
          v122 = *(v87 + 40);
          v124 = *(v87 + 16);
          v125 = *(v87 + 24);
          if (!(v118 | *v87 | v122 | v123 | v125 | v124) || *v87 == 2 && !(v122 | v118 | v123 | v125 | v124))
          {
            v126 = sub_1004D809C();
            (*(*(v126 - 8) + 56))(v121, 1, 1, v126);
LABEL_61:
            v127 = v178;
            sub_1004D87CC();
            sub_1004D89BC();
            v128 = v176;
            v129 = v175;
            if (qword_100633E70 != -1)
            {
              swift_once();
            }

            v130 = sub_1004D966C();
            sub_100035430(v130, static Logger.groupActivities);
            v131 = *(v128 + 16);
            v131(v129, v127, v120);
            v132 = sub_1004D964C();
            v133 = sub_1004DDF9C();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              v135 = v120;
              v136 = swift_slowAlloc();
              *&v197[0] = v136;
              *v134 = 136446210;
              v131(v171, v129, v135);
              v137 = sub_1004DD4DC();
              v139 = v138;
              v140 = *(v128 + 8);
              v140(v129, v135);
              v141 = sub_1000343A8(v137, v139, v197);

              *(v134 + 4) = v141;
              _os_log_impl(&_mh_execute_header, v132, v133, "Posting event=%{public}s", v134, 0xCu);
              sub_100008D24(v136);

              v140(v178, v135);
              (*(v180 + 8))(v179, v181);
              (*v184)(v186, v192);
              return;
            }

            v142 = *(v128 + 8);
            v142(v129, v120);
            v142(v127, v120);
            (*(v180 + 8))(v88, v181);
            goto LABEL_66;
          }
        }
      }

      sub_1004D805C();
      goto LABEL_61;
    }

    v90 = (v162 + 8);
    v91 = (v161 + 8);
    v86 = v181;
    v92 = *v183;
    if (v79)
    {
      SharedListening.Event.Content.title.getter(v92, 1);
      v93 = v164;
      sub_1004D87EC();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v92, 0);
      v93 = v164;
      sub_1004D87DC();
    }

    v117 = v163;
    sub_1004D880C();
    (*v90)(v93, v166);
    v88 = v179;
    sub_1004D883C();
    (*v91)(v117, v165);
    v85 = v77;
LABEL_52:
    v87 = v183;
    goto LABEL_53;
  }

  if (v83 == 3)
  {
    sub_1004D889C();
    v94 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v95 = (*(*(v156[0] - 8) + 48))(v94, 1);
    v85 = v53;
    v86 = v181;
    v87 = v183;
    if (v95 || (v143 = *(v94 + 7)) == 0 || (v144 = [*(v143 + 16) identifiers], v145 = objc_msgSend(v78, "identifiers"), v146 = objc_msgSend(v144, "intersectsSet:", v145), v144, v145, v88 = v179, (v146 & 1) == 0))
    {
      if (qword_100633E70 != -1)
      {
        swift_once();
      }

      v96 = sub_1004D966C();
      sub_100035430(v96, static Logger.groupActivities);
      v97 = v170;
      v98 = sub_1004D964C();
      v99 = sub_1004DDF9C();
      sub_10028C2C8(v87);
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v197[0] = v101;
        *v100 = 136446210;
        v102 = v97;
        v103 = [v78 description];
        v104 = sub_1004DD43C();
        v106 = v105;

        sub_10028C2C8(v87);
        v107 = sub_1000343A8(v104, v106, v197);

        *(v100 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v98, v99, "Dispatching event for=%{public}s", v100, 0xCu);
        sub_100008D24(v101);
      }

      sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
      v108 = sub_1004DE14C();
      v109 = swift_allocObject();
      *(v109 + 16) = v4;
      v110 = *(v87 + 16);
      *(v109 + 24) = *v87;
      *(v109 + 40) = v110;
      *(v109 + 56) = *(v87 + 32);
      *(v109 + 72) = *(v87 + 48);
      v111 = v187;
      *(v109 + 80) = v185;
      *(v109 + 88) = v111;
      sub_10028C26C(v87, v197);

      OS_dispatch_queue.asyncAfter(_:block:)(sub_10028C420, v109, 1.0);

      (*(v180 + 8))(v179, v181);
LABEL_66:
      (*v184)(v186, v85);
      return;
    }

    goto LABEL_53;
  }

  if (v83 == 4)
  {
    v112 = v179;
    sub_1004D882C();
    v113 = v4[8];
    v194 = v4[7];
    v193 = v113;
    v114 = v4[9];
    v115 = v4[10];
    v4[7] = v78;
    *(v4 + 64) = v79;
    *(v4 + 71) = BYTE6(v80);
    *(v4 + 69) = WORD2(v80);
    *(v4 + 65) = v80;
    v4[9] = v82;
    v4[10] = v81;
    v88 = v112;
    sub_10028C450(v170, v169, v168, v167);
    v116 = v114;
    v67 = v186;
    sub_10028C224(v194, v193, v116, v115);
    v85 = v77;
    v86 = v181;
    goto LABEL_52;
  }

  v85 = v53;
  v86 = v181;
  v87 = v183;
  if (v83 == 5)
  {
    v89 = v183[5] | v183[4] | v82 | v81 | v84;
    if (v78 == 1 && !v89)
    {
      v88 = v179;
      sub_1004D885C();
      goto LABEL_53;
    }

    if (v78 == 3 && !v89)
    {
      v88 = v179;
      sub_1004D887C();
      goto LABEL_53;
    }

    if (v78 == 4 && !v89)
    {
      v88 = v179;
      sub_1004D884C();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v147 = sub_1004D966C();
  sub_100035430(v147, static Logger.groupActivities);
  sub_10028C26C(v87, v197);
  v148 = sub_1004D964C();
  v149 = sub_1004DDF9C();
  sub_10028C2C8(v87);
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v196 = v151;
    *v150 = 136446210;
    v152 = *(v87 + 16);
    v197[0] = *v87;
    v197[1] = v152;
    v197[2] = *(v87 + 32);
    v198 = *(v87 + 48);
    sub_10028C26C(v87, v195);
    v153 = sub_1004DD4DC();
    v155 = sub_1000343A8(v153, v154, &v196);

    *(v150 + 4) = v155;
    _os_log_impl(&_mh_execute_header, v148, v149, "Event case not handle for event=%{public}s", v150, 0xCu);
    sub_100008D24(v151);
  }

  (*v184)(v67, v85);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = sub_1004D809C();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + *(v2 + 32)) = result;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.artworkSize.setter(double a1, double a2)
{
  result = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_1004D83FC();
  v2[21] = swift_task_alloc();
  v3 = sub_1004DD3EC();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10027485C, 0, 0);
}

uint64_t sub_10027485C()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = sub_1004D809C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[*(v2 + 32)] = vdupq_n_s64(0x4072C00000000000uLL);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 title];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1004DD43C();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      sub_1004DD37C();
      (*(v20 + 16))(v18, v17, v19);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = qword_100671958;
      sub_1004D838C();
      v9 = sub_1004DD4AC();
      v11 = v25;
      (*(v23 + 8))(v21, v22);
    }

    v26 = [v6 artist];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 name];

      if (v28)
      {
LABEL_12:
        v29 = sub_1004DD43C();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v143 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    sub_1004DD37C();
    (*(v37 + 16))(v35, v34, v36);
    if (qword_100633A80 == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = qword_100671958;
      sub_1004D838C();
      v29 = sub_1004DD4AC();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v143;
      goto LABEL_15;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v6 = v45;
      v46 = [v45 name];
      if (v46)
      {
        v47 = v46;
        v9 = sub_1004DD43C();
        v11 = v48;
      }

      else
      {
        v74 = *(v0 + 192);
        v73 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        sub_1004DD37C();
        (*(v76 + 16))(v74, v73, v75);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 200);
        v78 = *(v0 + 176);
        v79 = *(v0 + 184);
        v80 = qword_100671958;
        sub_1004D838C();
        v9 = sub_1004DD4AC();
        v11 = v81;
        (*(v79 + 8))(v77, v78);
      }

      v82 = [v6 providerName];
      if (v82)
      {
        v83 = v82;
        v29 = sub_1004DD43C();
        v31 = v84;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      goto LABEL_15;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v6 = v69;
      v70 = [v69 title];
      if (v70)
      {
        v71 = v70;
        v9 = sub_1004DD43C();
        v11 = v72;
      }

      else
      {
        v90 = *(v0 + 192);
        v89 = *(v0 + 200);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        sub_1004DD37C();
        (*(v92 + 16))(v90, v89, v91);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 200);
        v94 = *(v0 + 176);
        v95 = *(v0 + 184);
        v96 = qword_100671958;
        sub_1004D838C();
        v9 = sub_1004DD4AC();
        v11 = v97;
        (*(v95 + 8))(v93, v94);
      }

      v98 = [v6 artist];
      if (v98)
      {
        v99 = v98;
        v28 = [v98 name];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 184);
      sub_1004DD37C();
      (*(v103 + 16))(v101, v100, v102);
      if (qword_100633A80 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        objc_opt_self();
        v104 = swift_dynamicCastObjCClass();
        if (!v104)
        {
          sub_1004DEAAC(29);

          v126 = sub_10028C638(&off_1005D3CD8);
          MPModelObject.humanDescription(including:)(v126);
          v128 = v127;
          v130 = v129;

          v145._countAndFlagsBits = v128;
          v145._object = v130;
          sub_1004DD5FC(v145);

          return sub_1004DECCC();
        }

        v105 = v104;
        v106 = [v104 title];
        if (v106)
        {
          v107 = v106;
          v108 = sub_1004DD43C();
          v110 = v109;
        }

        else
        {
          v132 = *(v0 + 192);
          v131 = *(v0 + 200);
          v133 = *(v0 + 176);
          v134 = *(v0 + 184);
          sub_1004DD37C();
          (*(v134 + 16))(v132, v131, v133);
          if (qword_100633A80 != -1)
          {
            swift_once();
          }

          v135 = *(v0 + 200);
          v136 = *(v0 + 176);
          v137 = *(v0 + 184);
          v138 = qword_100671958;
          sub_1004D838C();
          v108 = sub_1004DD4AC();
          v110 = v139;
          (*(v137 + 8))(v135, v136);
        }

        v140 = *(v0 + 152);
        v44 = [v105 artworkCatalog];
        *v140 = v108;
        v140[1] = v110;
        *(v1 + 2) = 0;
        *(v1 + 3) = 0;
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      v6 = v85;
      v86 = [v85 title];
      if (v86)
      {
        v87 = v86;
        v9 = sub_1004DD43C();
        v11 = v88;
      }

      else
      {
        v112 = *(v0 + 192);
        v111 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        sub_1004DD37C();
        (*(v114 + 16))(v112, v111, v113);
        if (qword_100633A80 != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 200);
        v116 = *(v0 + 176);
        v117 = *(v0 + 184);
        v118 = qword_100671958;
        sub_1004D838C();
        v9 = sub_1004DD4AC();
        v11 = v119;
        (*(v117 + 8))(v115, v116);
      }

      v120 = [v6 show];
      if (v120)
      {
        v121 = v120;
        v28 = [v120 title];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v123 = *(v0 + 192);
      v122 = *(v0 + 200);
      v124 = *(v0 + 176);
      v125 = *(v0 + 184);
      sub_1004DD37C();
      (*(v125 + 16))(v123, v122, v124);
      if (qword_100633A80 == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_69;
  }

  v13 = v12;
  v14 = [v12 name];
  if (v14)
  {
    v15 = v14;
    v9 = sub_1004DD43C();
    v11 = v16;
  }

  else
  {
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    sub_1004DD37C();
    (*(v52 + 16))(v50, v49, v51);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = qword_100671958;
    sub_1004D838C();
    v9 = sub_1004DD4AC();
    v11 = v57;
    (*(v55 + 8))(v53, v54);
  }

  v58 = [v13 curator];
  if (v58 && (v59 = v58, v60 = [v58 name], v59, v60))
  {
    v29 = sub_1004DD43C();
    v31 = v61;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v43 = *(v0 + 152);
  v44 = MPModelPlaylist.preferredArtworkCatalog.getter();
LABEL_27:
  *v43 = v9;
  v43[1] = v11;
  *(v1 + 2) = v29;
  v43[3] = v31;
  if (v44)
  {
LABEL_28:
    *(v0 + 208) = v44;
    v62 = v44;
    type metadata accessor for GroupActivitiesManager.ArtworkCachingReference();
    v63 = swift_allocObject();
    *(v0 + 216) = v63;
    *(v63 + 16) = 0xD00000000000001ELL;
    *(v63 + 24) = 0x80000001004F2A80;
    v64 = v62;
    v65 = objc_opt_self();
    v66 = sub_1004DD3FC();
    [v65 setCacheLimit:0 forCacheIdentifier:v66 cacheReference:v63];

    v67 = sub_1004DD3FC();

    [v64 setCacheIdentifier:v67 forCacheReference:v63];

    [v64 setFittingSize:{300.0, 300.0}];
    [v64 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_10027587C;
    v68 = swift_continuation_init();
    *(v0 + 136) = sub_100004CB8(&qword_100637D50, &qword_10051BEE0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10013FC1C;
    *(v0 + 104) = &unk_1005E95E0;
    *(v0 + 112) = v68;
    [v64 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v141 = *(v0 + 8);

  return v141();
}

uint64_t sub_10027587C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100275A54;
  }

  else
  {
    v2 = sub_10027598C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027598C()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [v4 CGImage];

  *(v3 + 32) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100275A54(uint64_t a1)
{
  v2 = v1[26];
  v4 = v1[19];
  v3 = v1[20];
  swift_willThrow();

  *(v4 + 32) = 0;

  v5 = v1[1];

  return v5();
}

uint64_t sub_100275B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  sub_100004CB8(&qword_10063C400, &qword_100524740);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_100275BB4, 0, 0);
}

uint64_t sub_100275BB4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = *(v3 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v4, 1, 1, v5);
  if (v1 && (v7 = v1, v8 = [v7 sharedListeningProperties], v0[24] = v8, v7, v8))
  {
    v9 = v0[22];
    v10 = v0[21];
    v26 = v0[20];
    v27 = v0[23];
    v11 = v0[19];
    sub_10001074C(v11, &qword_10063C408, &qword_100524748);
    sub_100035868(v9, v11);
    sub_1000613B8(v10, v2 + v4, &qword_10063C400, &qword_100524740);
    type metadata accessor for CodableListeningProperties();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v2 + 40) = v26;
    *(v2 + 48) = v12;
    sub_1000108DC(v2 + v4, v27, &qword_10063C400, &qword_100524740);
    v13 = (*(v6 + 48))(v27, 1, v5);
    v14 = v0[23];
    if (v13 == 1)
    {
      v15 = v7;
      v16 = v8;
      sub_10001074C(v14, &qword_10063C400, &qword_100524740);
      if (qword_100633E68 != -1)
      {
        swift_once();
      }

      v17 = qword_10063C3B0;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100275FB8;
      v18 = swift_continuation_init();
      v0[17] = sub_100004CB8(&qword_10063CCC8, &unk_100524EA0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10013FC1C;
      v0[13] = &unk_1005E9820;
      v0[14] = v18;
      [v15 getRepresentativeObjectWithProperties:v17 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v24 = v0[21];
    sub_100008D24(v0[22]);
    sub_10001074C(v24, &qword_10063C400, &qword_100524740);
    sub_10001074C(v14, &qword_10063C400, &qword_100524740);

    v23 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[21];
    v21 = v0[19];
    sub_10028DFEC();
    swift_allocError();
    *v22 = 96;
    swift_willThrow();

    sub_100008D24(v19);
    sub_10001074C(v20, &qword_10063C400, &qword_100524740);
    sub_10028C1C4(v21, type metadata accessor for GroupActivitiesManager.Activity);

    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_100275FB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1002761A8;
  }

  else
  {
    v2 = sub_1002760C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002760C8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  sub_100008D24(v3);
  sub_10001074C(v2, &qword_10063C400, &qword_100524740);
  type metadata accessor for CodableModelObjectIdentity();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 56) = v7;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002761A8(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[21];
  v3 = v1[22];
  v5 = v1[19];
  swift_willThrow();

  sub_100008D24(v3);
  sub_10001074C(v4, &qword_10063C400, &qword_100524740);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  *(v5 + 56) = 0;

  v6 = v1[1];

  return v6();
}

uint64_t GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v2[9] = swift_task_alloc();
  sub_100004CB8(&qword_10063C400, &qword_100524740);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1004D890C();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10027642C, 0, 0);
}

uint64_t sub_10027642C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = sub_1004D898C();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  sub_1004D897C();
  sub_1004D893C();
  sub_1004D88FC();
  sub_1004D894C();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_1000108DC(v4 + *(v9 + 32), v3, &qword_10063C400, &qword_100524740);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v57 = v0[7];
    sub_10028BE08(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_1004D895C();

    sub_1004D896C();
    v25 = *(v22 + 32);
    sub_1004D892C();
    sub_1000108DC(v22 + *(v23 + 28), v24, &qword_100634B30, &unk_100513D70);
    sub_1004D891C();
    sub_10028C1C4(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v57, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  sub_10001074C(v0[11], &qword_10063C400, &qword_100524740);
  v12 = *(v11 + 56);
  if (!v12)
  {
    (*(*(v5 - 8) + 16))(v0[7], v8, v5);
    goto LABEL_30;
  }

  v13 = *(v12 + 16);
  v0[22] = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = qword_100633E50;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = qword_10063C398;
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 kindWithVariants:3];
    v21 = [v17 kindWithSongKind:v20];

    goto LABEL_25;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = objc_opt_self();
    v27 = v13;
    v28 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
    v21 = [v26 kindWithPlaylistEntryKind:v28 options:0];

    if (qword_100633E58 != -1)
    {
      swift_once();
    }

    v29 = qword_10063C3A0;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100006F10(0, &qword_10063C410, MPModelRadioStationKind_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (qword_100633E60 != -1)
      {
        swift_once();
      }

      v29 = qword_10063C3A8;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = objc_opt_self();
        v33 = v13;
        v34 = [v32 kindWithVariants:7];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v51 = v13;
            sub_1004DEAAC(29);

            v52 = sub_10028C638(&off_1005D3D00);
            MPModelObject.humanDescription(including:)(v52);
            v54 = v53;
            v56 = v55;

            v60._countAndFlagsBits = v54;
            v60._object = v56;
            sub_1004DD5FC(v60);

            return sub_1004DECCC();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (qword_100633E40 != -1)
          {
            swift_once();
          }

          v29 = qword_10063C390;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (qword_100633E30 != -1)
      {
        swift_once();
      }

      v29 = qword_10063C380;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  sub_1000108DC(v0[8], (v0 + 2), &qword_10063C408, &qword_100524748);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    sub_100008C70(v0 + 2, v0[5]);
    v58 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = sub_100276CC0;
    v40 = v0[10];

    return v58(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  sub_10001074C((v0 + 2), &qword_10063C408, &qword_100524748);
  (*(v43 + 56))(v44, 1, 1, v42);
  v6 = v0[18];
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  sub_10001074C(v0[10], &qword_10063C400, &qword_100524740);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  sub_100277000(v6);

  v48 = v0[1];

  return v48();
}

uint64_t sub_100276CC0()
{

  return _swift_task_switch(sub_100276DBC, 0, 0);
}

uint64_t sub_100276DBC()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  sub_100008D24(v0 + 2);
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];
    v11 = v0[7];
    sub_10001074C(v0[10], &qword_10063C400, &qword_100524740);
    (*(*(v10 - 8) + 16))(v11, v9, v10);
  }

  else
  {
    v8 = v0[18];
    v12 = v0[19];
    v13 = v0[14];
    v14 = v0[9];
    v19 = v0[17];
    v20 = v0[7];
    v18 = v0[12];
    sub_10028BE08(v0[10], v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    sub_1004D895C();

    sub_1004D896C();
    v15 = *(v13 + 32);
    sub_1004D892C();
    sub_1000108DC(v13 + *(v18 + 28), v14, &qword_100634B30, &unk_100513D70);
    sub_1004D891C();

    sub_10028C1C4(v13, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v19 - 8) + 16))(v20, v12, v19);
  }

  sub_100277000(v8);

  v16 = v0[1];

  return v16();
}

void sub_100277000(uint64_t a1)
{
  v1 = sub_1004D898C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v5 = sub_1004D966C();
  sub_100035430(v5, static Logger.groupActivities);

  v15 = sub_1004D964C();
  v6 = sub_1004DDF9C();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = swift_projectBox();
    swift_beginAccess();
    (*(v2 + 16))(v4, v9, v1);
    v10 = sub_1004DD50C();
    v12 = sub_1000343A8(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v15, v6, "Sending activity metadata=%{public}s", v7, 0xCu);
    sub_100008D24(v8);
  }

  else
  {
    v13 = v15;
  }
}

void sub_100277244()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005126C0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004DD43C();
  *(v0 + 56) = v2;
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005126C0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100511DA0;
  *(v5 + 32) = sub_1004DD43C();
  *(v5 + 40) = v6;
  isa = sub_1004DD85C().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v10;
  v11 = sub_1004DD85C().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100637F68, qword_10051C4F0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = sub_1004DD85C().super.isa;

  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v15 = sub_1004DD1FC().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  qword_10063C380 = v16;
}

void sub_1002774C4()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005126C0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004DD43C();
  *(v0 + 56) = v2;
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100511DA0;
  *(v5 + 32) = sub_1004DD43C();
  *(v5 + 40) = v6;
  isa = sub_1004DD85C().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_10001074C(inited + 32, &qword_100637F68, qword_10051C4F0);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_1004DD85C().super.isa;

  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v11 = sub_1004DD1FC().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_10063C388 = v12;
}

void sub_1002776FC()
{
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A40;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v1;
  if (qword_100633E30 != -1)
  {
    swift_once();
  }

  v2 = qword_10063C380;
  *(inited + 48) = qword_10063C380;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v3;
  v4 = qword_100633E38;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10063C388;
  *(inited + 72) = qword_10063C388;
  *(inited + 80) = sub_1004DD43C();
  *(inited + 88) = v7;
  v8 = qword_100633E40;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_10063C390;
  *(inited + 96) = qword_10063C390;
  v11 = v10;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100637F68, qword_10051C4F0);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = sub_1004DD85C().super.isa;
  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v14 = sub_1004DD1FC().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (qword_100633E48 != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (qword_100633E48 != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void sub_1002779D8()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005126C0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004DD43C();
  *(v0 + 56) = v2;
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100511DA0;
  *(v5 + 32) = sub_1004DD43C();
  *(v5 + 40) = v6;
  isa = sub_1004DD85C().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_10001074C(inited + 32, &qword_100637F68, qword_10051C4F0);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_1004DD85C().super.isa;

  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v11 = sub_1004DD1FC().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_10063C398 = v12;
}

void sub_100277BF4()
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005126C0;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004DD43C();
  *(v0 + 56) = v2;
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100511DA0;
  *(v5 + 32) = sub_1004DD43C();
  *(v5 + 40) = v6;
  isa = sub_1004DD85C().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_10001074C(inited + 32, &qword_100637F68, qword_10051C4F0);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = sub_1004DD85C().super.isa;

  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v11 = sub_1004DD1FC().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_10063C3A0 = v12;
}

void sub_100277E2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_100004CB8(&unk_100637DF0, &unk_10051C9B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005126C0;
  *(v5 + 32) = sub_1004DD43C();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_1004DD43C();
  *(v5 + 56) = v7;
  isa = sub_1004DD85C().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id sub_100277EF0()
{
  result = sub_100277F10();
  qword_10063C3B0 = result;
  return result;
}

id sub_100277F10()
{
  if (qword_100633E48 != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  sub_100004CB8(&qword_100637F60, &unk_1005216D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A40;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v2;
  if (qword_100633E58 != -1)
  {
    swift_once();
  }

  v3 = qword_10063C3A0;
  *(inited + 48) = qword_10063C3A0;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v4;
  v5 = qword_100633E50;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_10063C398;
  *(inited + 72) = qword_10063C398;
  *(inited + 80) = sub_1004DD43C();
  *(inited + 88) = v8;
  v9 = qword_100633E60;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_10063C3A8;
  *(inited + 96) = qword_10063C3A8;
  v12 = v11;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100637F68, qword_10051C4F0);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = sub_1004DD85C().super.isa;
  sub_100006F10(0, &qword_100639C10, MPPropertySet_ptr);
  v15 = sub_1004DD1FC().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t sub_100278198()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void sub_1002781D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x80000001004F2E30 == a2;
  if (v5 || (sub_1004DF08C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004F2E50 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();

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

uint64_t sub_1002782B8(uint64_t a1)
{
  v2 = sub_10028C7CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002782F4(uint64_t a1)
{
  v2 = sub_10028C7CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_100004CB8(&qword_10063C418, &qword_100524750);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - v6;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v11 = *(v10 + 40);
  v12 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  sub_100008C70(a1, a1[3]);
  sub_10028C7CC();
  sub_1004DF2FC();
  if (!v2)
  {
    v13 = v5;
    v14 = v17;
    type metadata accessor for CodableListeningProperties();
    v18 = 0;
    sub_10028C844(&qword_10063C428, type metadata accessor for CodableListeningProperties, &unk_100524DD4);
    sub_1004DEECC();
    *(v9 + 6) = v19;
    type metadata accessor for CodableModelObjectIdentity();
    v18 = 1;
    sub_10028C844(&qword_10063C430, type metadata accessor for CodableModelObjectIdentity, &unk_100524DAC);
    sub_1004DEECC();
    v15 = v19;
    (*(v13 + 8))(v7, v4);
    *(v9 + 7) = v15;
    sub_10028BE70(v9, v14, type metadata accessor for GroupActivitiesManager.Activity);
  }

  sub_100008D24(a1);
  return sub_10028C1C4(v9, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100004CB8(&qword_10063C438, &qword_100524758);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100008C70(a1, a1[3]);
  sub_10028C7CC();
  sub_1004DF30C();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  sub_100004CB8(&qword_10063C440, &qword_100524760);
  sub_10028C8B0();
  sub_1004DEF5C();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    sub_100004CB8(&qword_10063C458, &qword_100524768);
    sub_10028C964();
    sub_1004DEF5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100278824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

void sub_1002788F4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004D86BC();

  *a2 = *(v3 + 16);
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004D86BC();

  return *(v0 + 16);
}

void sub_100278A64(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    sub_1004D86AC();
  }
}

void sub_100278B74(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004D86BC();

  *a2 = *(v3 + 17);
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
  sub_1004D86BC();

  return *(v0 + 17);
}

void sub_100278CE4(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
    sub_1004D86AC();
  }
}

uint64_t GroupActivitiesManager.State.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = sub_1004D86FC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v3 = sub_1004D86FC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_100008D24((v1 + 16));
  sub_100035850(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = v0[7];
  sub_10028C450(v1, v0[8], v0[9], v0[10]);
  return v1;
}

void GroupActivitiesManager.isSharePlaySessionActive.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = a1 & 1;
  *(v1 + 96) = a1;
  if (v3 != v4)
  {
    v5 = *(v1 + 88);
    if (*(v5 + 16) == v4)
    {
      *(v5 + 16) = v4;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      sub_1004D86AC();
    }
  }
}

void (*GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 96);
  return sub_1002791B8;
}

void sub_1002791B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = v2[4];
  if (a2)
  {
    GroupActivitiesManager.isSharePlaySessionActive.setter(v3);
  }

  else
  {
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
    if (v3 != v5)
    {
      v6 = *(v2[4] + 88);
      if (v3 == *(v6 + 16))
      {
        *(v6 + 16) = v3;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        v2[3] = v6;
        sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
        sub_1004D86AC();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_100279378(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

void sub_1002793F8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  sub_1002794C4(v2);
}

void sub_1002794C4(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v10 != a1)
  {
    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v4 = sub_1004D966C();
    sub_100035430(v4, static Logger.groupActivities);

    v5 = sub_1004D964C();
    v6 = sub_1004DDF9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      *(v7 + 4) = v10;

      _os_log_impl(&_mh_execute_header, v5, v6, "👤 Participants count update=%{public}ld", v7, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    if (*(v2 + v8) < v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      *(v2 + v8) = v9;
    }
  }
}

uint64_t Logger.groupActivities.unsafeMutableAddressor()
{
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.groupActivities);
}

uint64_t sub_1002797B4(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100004CB8(&qword_10063C0F0, &qword_1005243E0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_1002799AC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

void sub_100279A2C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  sub_100279AF8(v2);
}

void sub_100279AF8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v9 != v3)
  {
    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v4 = sub_1004D966C();
    sub_100035430(v4, static Logger.groupActivities);

    v5 = sub_1004D964C();
    v6 = sub_1004DDF9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      *(v7 + 4) = v9;

      _os_log_impl(&_mh_execute_header, v5, v6, "⏳ Session is loading=%{BOOL,public}d", v7, 8u);
    }

    else
    {
    }

    v8 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    if (v9 == *(v8 + 17))
    {
      *(v8 + 17) = v9;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_10028C844(&qword_10063C478, type metadata accessor for GroupActivitiesManager.State, &protocol conformance descriptor for GroupActivitiesManager.State);
      sub_1004D86AC();
    }

    sub_100279DD8();
  }
}

void sub_100279DD8()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_10063C3E8, &qword_100524720);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v56 = &v45[-v4];
  v59 = sub_100004CB8(&qword_10063C4B8, &qword_1005248B8);
  __chkstk_darwin();
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v45[-v7];
  sub_100004CB8(&qword_10063C4C0, &qword_1005248C0);
  __chkstk_darwin();
  v55 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v58 = &v45[-v10];
  __chkstk_darwin();
  v57 = &v45[-v11];
  __chkstk_darwin();
  v13 = &v45[-v12];
  __chkstk_darwin();
  v15 = &v45[-v14];
  __chkstk_darwin();
  v17 = &v45[-v16];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v60)
  {
    goto LABEL_2;
  }

  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v19 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
  v53 = v1;
  v51 = v6;
  if (v19)
  {

    sub_1004D8A4C();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v3[7];
  v21(v17, v20, 1, v2);
  v47 = v3[13];
  v48 = v3 + 13;
  v47(v15, enum case for GroupSession.State.waiting<A>(_:), v2);
  v50 = v21;
  v21(v15, 0, 1, v2);
  v22 = *(v59 + 48);
  sub_1000108DC(v17, v8, &qword_10063C4C0, &qword_1005248C0);
  sub_1000108DC(v15, &v8[v22], &qword_10063C4C0, &qword_1005248C0);
  v54 = v3;
  v23 = v3[6];
  if (v23(v8, 1, v2) == 1)
  {
    sub_10001074C(v15, &qword_10063C4C0, &qword_1005248C0);
    sub_10001074C(v17, &qword_10063C4C0, &qword_1005248C0);
    if (v23(&v8[v22], 1, v2) == 1)
    {
      sub_10001074C(v8, &qword_10063C4C0, &qword_1005248C0);
      v18 = 1;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  sub_1000108DC(v8, v13, &qword_10063C4C0, &qword_1005248C0);
  if (v23(&v8[v22], 1, v2) == 1)
  {
    sub_10001074C(v15, &qword_10063C4C0, &qword_1005248C0);
    sub_10001074C(v17, &qword_10063C4C0, &qword_1005248C0);
    (v54[1])(v13, v2);
LABEL_11:
    sub_10001074C(v8, &qword_10063C4B8, &qword_1005248B8);
    v24 = v53;
    goto LABEL_12;
  }

  v28 = v54[4];
  v52 = v23;
  v29 = v56;
  v28(v56, &v8[v22], v2);
  sub_100042B08(&qword_10063C4C8, &qword_10063C3E8, &qword_100524720, &protocol conformance descriptor for GroupSession<A>.State);
  v46 = sub_1004DD35C();
  v30 = v54[1];
  v31 = v29;
  v23 = v52;
  v30(v31, v2);
  sub_10001074C(v15, &qword_10063C4C0, &qword_1005248C0);
  sub_10001074C(v17, &qword_10063C4C0, &qword_1005248C0);
  v30(v13, v2);
  sub_10001074C(v8, &qword_10063C4C0, &qword_1005248C0);
  v24 = v53;
  if ((v46 & 1) == 0)
  {
LABEL_12:
    v25 = *(v24 + v49);
    v52 = v23;
    if (v25)
    {

      v26 = v57;
      sub_1004D8A4C();

      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v57;
    }

    v32 = v58;
    v33 = v50;
    v50(v26, v27, 1, v2);
    v47(v32, enum case for GroupSession.State.joined<A>(_:), v2);
    v33(v32, 0, 1, v2);
    v34 = *(v59 + 48);
    v35 = v51;
    sub_1000108DC(v26, v51, &qword_10063C4C0, &qword_1005248C0);
    sub_1000108DC(v32, v35 + v34, &qword_10063C4C0, &qword_1005248C0);
    v36 = v52;
    if (v52(v35, 1, v2) == 1)
    {
      sub_10001074C(v32, &qword_10063C4C0, &qword_1005248C0);
      sub_10001074C(v26, &qword_10063C4C0, &qword_1005248C0);
      if (v36(v35 + v34, 1, v2) == 1)
      {
        sub_10001074C(v35, &qword_10063C4C0, &qword_1005248C0);
        goto LABEL_2;
      }
    }

    else
    {
      v37 = v55;
      sub_1000108DC(v35, v55, &qword_10063C4C0, &qword_1005248C0);
      if (v36(v35 + v34, 1, v2) != 1)
      {
        v41 = v54;
        v42 = v56;
        (v54[4])(v56, v35 + v34, v2);
        sub_100042B08(&qword_10063C4C8, &qword_10063C3E8, &qword_100524720, &protocol conformance descriptor for GroupSession<A>.State);
        v43 = sub_1004DD35C();
        v44 = v41[1];
        v44(v42, v2);
        sub_10001074C(v58, &qword_10063C4C0, &qword_1005248C0);
        sub_10001074C(v26, &qword_10063C4C0, &qword_1005248C0);
        v44(v37, v2);
        sub_10001074C(v35, &qword_10063C4C0, &qword_1005248C0);
        if (v43)
        {
          goto LABEL_2;
        }

LABEL_23:
        v38 = [objc_opt_self() standardUserDefaults];
        v39 = sub_1004DD3FC();
        v40 = [v38 BOOLForKey:v39];

        v18 = v40;
        goto LABEL_24;
      }

      sub_10001074C(v32, &qword_10063C4C0, &qword_1005248C0);
      sub_10001074C(v26, &qword_10063C4C0, &qword_1005248C0);
      (v54[1])(v37, v2);
    }

    sub_10001074C(v35, &qword_10063C4B8, &qword_1005248B8);
    goto LABEL_23;
  }

LABEL_2:
  v18 = 1;
LABEL_24:
  GroupActivitiesManager.isSharePlaySessionActive.setter(v18);
}

uint64_t sub_10027A6F8(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100004CB8(&qword_100639A60, &qword_100523600);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100004CB8(&qword_100638EF8, &qword_100526600);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_10027A95C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_10027A9E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10028EBB0(v2, v3, v4, v5, v6, v7);
  sub_1004D9B6C();

  v12[0] = v9;
  v12[1] = v10;
  v12[2] = v11;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004D9B7C();
  sub_10027AB10(v12);
  return sub_10001074C(v12, &qword_10063C4A0, &qword_100524860);
}

void sub_10027AB10(void **a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v53 = a1[2];
  v55 = v5;
  v6 = a1[5];
  v51 = a1[4];
  v54 = v6;
  v7 = sub_1004D82AC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004D8AFC();
  v50 = *(v11 - 8);
  __chkstk_darwin();
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v1;
  sub_1004D9B6C();

  v13 = v62;
  if (v62)
  {
    v45 = v11;
    v46 = v10;
    v47 = v8;
    v48 = v7;
    v14 = v61;
    v16 = v63;
    v15 = v64;
    v17 = v65;
    v18 = v66;
    v52 = v65;
    if (!v3)
    {

      v43 = v14;
      sub_10028EC00(v14, v13, v16, v15, v17, v18);
      sub_10028EC00(v4, 0, v53, v55, v51, v54);
      v19 = v17;
      goto LABEL_23;
    }

    v44 = v63;
    if (v61 == v4 && v62 == v3 || (sub_1004DF08C() & 1) != 0)
    {
      v16 = v44;
      if (v44 == v53 && v15 == v55 || (sub_1004DF08C() & 1) != 0)
      {
        if (!v18)
        {
          if (!v54)
          {
            sub_10028EC00(v14, v13, v16, v15, v52, 0);
            return;
          }

          sub_1000108DC(a1, &v61, &qword_10063C4A0, &qword_100524860);

          v43 = v14;
          v20 = v14;
          v21 = v13;
          v22 = v16;
          v23 = v15;
          v19 = v52;
          v24 = v52;
          v25 = 0;
          goto LABEL_22;
        }

        if (v54)
        {
          if (v52 == v51 && v18 == v54)
          {

            sub_1000108DC(a1, &v61, &qword_10063C4A0, &qword_100524860);

LABEL_40:

            sub_10028EC00(v14, v13, v16, v15, v52, v18);
            return;
          }

          v40 = v52;
          v41 = sub_1004DF08C();

          sub_1000108DC(a1, &v61, &qword_10063C4A0, &qword_100524860);

          if (v41)
          {
            v16 = v44;
            goto LABEL_40;
          }

          v43 = v14;
          v42 = v44;
          sub_10028EC00(v14, v13, v44, v15, v40, v18);
          v19 = v40;
          v16 = v42;
LABEL_23:
          if (qword_100633E70 != -1)
          {
            swift_once();
          }

          v26 = sub_1004D966C();
          sub_100035430(v26, static Logger.groupActivities);

          v27 = sub_1004D964C();
          v28 = sub_1004DDF5C();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v60[0] = v30;
            *v29 = 136446210;
            v61 = v16;
            v62 = v15;

            v31 = sub_1004DD50C();
            v33 = sub_1000343A8(v31, v32, v60);

            *(v29 + 4) = v33;
            _os_log_impl(&_mh_execute_header, v27, v28, "🌚 received: %{public}s)", v29, 0xCu);
            sub_100008D24(v30);

            v19 = v52;
          }

          if (!v18)
          {
            goto LABEL_36;
          }

          if (*(v56 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v34 = v49;
            sub_1004D89DC();

            v35 = v46;
            sub_1004D8AEC();
            (*(v50 + 8))(v34, v45);
            v36 = sub_1004D827C();
            v38 = v37;
            (*(v47 + 8))(v35, v48);
            if (v19 == v36 && v18 == v38)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              sub_1004D9B6C();

              v60[0] = v57;
              v60[1] = v58;
              v60[2] = v59;
              swift_getKeyPath();
              swift_getKeyPath();
              v58 = 0u;
              v59 = 0u;
              v57 = 0u;

              sub_1004D9B7C();
              sub_10027AB10(v60);
              sub_10001074C(v60, &qword_10063C4A0, &qword_100524860);
              return;
            }

            v39 = sub_1004DF08C();

            if (v39)
            {

              goto LABEL_36;
            }
          }

          else
          {
          }

          v61 = v43;
          v62 = v13;
          v63 = v16;
          v64 = v15;
          v65 = v19;
          v66 = v18;
          v67 = 1;
          GroupActivitiesManager.postEvent(_:participantID:)(&v61, v19, v18);
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        sub_1000108DC(a1, &v61, &qword_10063C4A0, &qword_100524860);
      }

      else
      {

        sub_1000108DC(a1, &v61, &qword_10063C4A0, &qword_100524860);
      }

      v43 = v14;
      v20 = v14;
      v21 = v13;
    }

    else
    {

      sub_1000108DC(a1, &v61, &qword_10063C4A0, &qword_100524860);

      v43 = v14;
      v20 = v14;
      v21 = v13;
      v16 = v44;
    }

    v22 = v16;
    v23 = v15;
    v19 = v52;
    v24 = v52;
    v25 = v18;
LABEL_22:
    sub_10028EC00(v20, v21, v22, v23, v24, v25);
    goto LABEL_23;
  }
}

uint64_t sub_10027B4D8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004CB8(&qword_10063CC98, &qword_100524E70);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100004CB8(&qword_10063C4B0, &qword_1005248B0);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = sub_100004CB8(&qword_10063C3E8, &qword_100524720);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v20 - v3;
  v4 = sub_100004CB8(&qword_10063C4B8, &qword_1005248B8);
  __chkstk_darwin();
  v6 = &v20 - v5;
  sub_100004CB8(&qword_10063C4C0, &qword_1005248C0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    sub_1004D8A4C();

    v13 = *(v2 + 56);
    v13(v12, 0, 1, v1);
  }

  else
  {
    v13 = *(v2 + 56);
    v13(&v20 - v11, 1, 1, v1);
  }

  (*(v2 + 104))(v10, enum case for GroupSession.State.joined<A>(_:), v1);
  v13(v10, 0, 1, v1);
  v14 = *(v4 + 48);
  sub_1000108DC(v12, v6, &qword_10063C4C0, &qword_1005248C0);
  sub_1000108DC(v10, &v6[v14], &qword_10063C4C0, &qword_1005248C0);
  v15 = *(v2 + 48);
  if (v15(v6, 1, v1) != 1)
  {
    sub_1000108DC(v6, v8, &qword_10063C4C0, &qword_1005248C0);
    if (v15(&v6[v14], 1, v1) != 1)
    {
      v17 = v21;
      (*(v2 + 32))(v21, &v6[v14], v1);
      sub_100042B08(&qword_10063C4C8, &qword_10063C3E8, &qword_100524720, &protocol conformance descriptor for GroupSession<A>.State);
      v16 = sub_1004DD35C();
      v18 = *(v2 + 8);
      v18(v17, v1);
      sub_10001074C(v10, &qword_10063C4C0, &qword_1005248C0);
      sub_10001074C(v12, &qword_10063C4C0, &qword_1005248C0);
      v18(v8, v1);
      sub_10001074C(v6, &qword_10063C4C0, &qword_1005248C0);
      return v16 & 1;
    }

    sub_10001074C(v10, &qword_10063C4C0, &qword_1005248C0);
    sub_10001074C(v12, &qword_10063C4C0, &qword_1005248C0);
    (*(v2 + 8))(v8, v1);
    goto LABEL_9;
  }

  sub_10001074C(v10, &qword_10063C4C0, &qword_1005248C0);
  sub_10001074C(v12, &qword_10063C4C0, &qword_1005248C0);
  if (v15(&v6[v14], 1, v1) != 1)
  {
LABEL_9:
    sub_10001074C(v6, &qword_10063C4B8, &qword_1005248B8);
    v16 = 0;
    return v16 & 1;
  }

  sub_10001074C(v6, &qword_10063C4C0, &qword_1005248C0);
  v16 = 1;
  return v16 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  v12 = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (sub_1004D88CC() & 1) == 0)
  {
    sub_100073E60(v10);
    return 0;
  }

  else
  {
    if (v11 == 2)
    {

      sub_100073E60(v10);
      return BYTE1(v10[0]);
    }

    v1 = sub_1004DF08C();

    sub_100073E60(v10);
    result = 0;
    if (v1)
    {
      return BYTE1(v10[0]);
    }
  }

  return result;
}

id GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *(sub_100004CB8(&qword_10063C400, &qword_100524740) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v46 - v8;
  if (a1)
  {
    goto LABEL_2;
  }

  v47 = v6;
  v49 = a2;
  swift_beginAccess();
  v18 = v2[5];
  v19 = v2[6];
  sub_100008C70(v2 + 2, v18);
  v48 = &v46;
  v20 = *(v18 - 8);
  v21 = __chkstk_darwin();
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v19 + 48))(v18, v19);
  (*(v20 + 8))(v23, v18);
  if (!v24)
  {
LABEL_12:
    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v26 = sub_1004D966C();
    v14 = sub_100035430(v26, static Logger.groupActivities);

    v27 = sub_1004D964C();
    v28 = sub_1004DDF7C();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v29 = 136446466;
    v50 = 0;
    sub_100004CB8(&unk_10063C4E0, &unk_100524910);
    v30 = sub_1004DD4DC();
    v32 = sub_1000343A8(v30, v31, &v52);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = v3[5];
    v34 = v3[6];
    sub_100008C70(v3 + 2, v33);
    v49 = &v46;
    v35 = *(v33 - 8);
    v36 = __chkstk_darwin();
    v38 = &v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = (*(v34 + 48))(v33, v34);
    (*(v35 + 8))(v38, v33);
    if (v39)
    {
      v40 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v39[v40])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        v41 = v51;
LABEL_20:
        v51 = v41;
        sub_100004CB8(&qword_10063A380, &unk_100520220);
        v42 = sub_1004DD4DC();
        v14 = sub_1000343A8(v42, v43, &v52);

        *(v29 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v27, v28, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v29, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        sub_10028CAC0();
        swift_allocError();
        *v44 = 0;
        *(v44 + 8) = 4;
        swift_willThrow();
        return v14;
      }
    }

    v41 = 0;
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v24[v25])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (!v50)
  {
    goto LABEL_12;
  }

  a2 = v49;
  v6 = v47;
LABEL_2:
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v10 = sub_1004D966C();
  sub_100035430(v10, static Logger.groupActivities);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v49 = a2;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Building GroupActivity item provider", v13, 2u);
    a2 = v49;
  }

  v14 = [objc_allocWithZone(NSItemProvider) init];
  sub_1000108DC(a2, v9, &qword_10063C400, &qword_100524740);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_10028CCBC(v9, v16 + v15);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v17 = a1;

  sub_1004DDFAC();

  return v14;
}

uint64_t sub_10027C4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_100004CB8(&qword_10063C400, &qword_100524740);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10027C558, 0, 0);
}

uint64_t sub_10027C558()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = sub_10027C6EC;

    return sub_100297894(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = *(v0 + 96);
    *(v5 + 32) = 0;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = type metadata accessor for GroupActivitiesManager.Activity(0);
    *v6 = v0;
    v6[1] = sub_10027C814;
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x80000001004F2E70, sub_10028DFE0, v5, v7);
  }
}

uint64_t sub_10027C6EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_10027CB54;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_10027C958;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027C814()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10027CE1C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10027C958()
{
  v1 = v0[20];
  v2 = v0[13];
  sub_1000108DC(v0[12], v0[14], &qword_10063C400, &qword_100524740);
  swift_beginAccess();
  sub_100035868(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10027CA40;
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return sub_100275B14(v7, v5, v6, (v0 + 2));
}

uint64_t sub_10027CA40()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10027CD70;
  }

  else
  {
    v2 = sub_10027CBF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027CB54()
{
  v0[23] = v0[16];
  v1 = v0[11];
  sub_1004DDA4C();
  v2 = v1;
  v0[24] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_10027CC6C, v4, v3);
}

uint64_t sub_10027CBF8()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10027CC6C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  sub_10027CE88(v1, v2);

  return _swift_task_switch(sub_10027CCF4, 0, 0);
}

uint64_t sub_10027CCF4(uint64_t a1)
{
  v2 = *(v1 + 88);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10027CD70()
{
  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  sub_1004DDA4C();
  v2 = v1;
  *(v0 + 192) = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_10027CC6C, v4, v3);
}

uint64_t sub_10027CE1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10027CE88(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v23[0] = a1;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  if (swift_dynamicCast())
  {
    v5 = *&v27[0];
    v6 = BYTE8(v27[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    sub_100008C70(v2 + 2, v7);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin();
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v12, v10);
    v13 = (*(v8 + 48))(v7, v8);
    (*(v9 + 8))(v12, v7);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v15 = *&v13[v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = a2;

    sub_100290ACC(v5, v6);
    sub_100291188(a2, v3, v15, v5, v6, v23);
    if (v25)
    {
      v27[0] = v23[0];
      v27[1] = v23[1];
      v27[2] = v23[2];
      v28 = v24;
      v29 = v25;
      v30 = v26;
      sub_100035868(v3 + 16, v20);
      v17 = v21;
      v18 = v22;
      sub_100008C70(v20, v21);
      (*(v18 + 32))(v27, v17, v18);
      sub_10001074C(v23, &qword_1006368B0, &qword_10051DC20);

      sub_10028E040(v5, v6);
      sub_100008D24(v20);
    }

    else
    {

      sub_10028E040(v5, v6);
    }
  }
}

double sub_10027D15C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_100004CB8(&unk_10063CCD0, &qword_100524EB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = *(sub_100004CB8(&qword_10063C400, &qword_100524740) - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v25 - v13;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = sub_1004DDA8C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1000108DC(a2, v14, &qword_10063C400, &qword_100524740);
  (*(v7 + 16))(v10, a1, v6);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v7 + 80) + v19 + 8) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_10028CCBC(v14, v21 + v18);
  *(v21 + v19) = v25;
  (*(v7 + 32))(v21 + v20, v10, v6);
  v22 = v26;
  *(v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v23 = v22;

  sub_10011F560(0, 0, v16, &unk_100524EC0, v21);

  return result;
}

uint64_t sub_10027D438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100004CB8(&unk_10063CCD0, &qword_100524EB0);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(sub_100004CB8(&qword_10063C400, &qword_100524740) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_10027D57C, 0, 0);
}

uint64_t sub_10027D57C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  sub_1000108DC(v0[11], v1, &qword_10063C400, &qword_100524740);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  sub_10028CCBC(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = CFRange.init(_:);
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10001E3C4;
  v0[5] = &unk_1005E9898;
  v13 = _Block_copy(v0 + 2);

  v14 = [v12 initWithBlock:v13];
  v0[23] = v14;
  _Block_release(v13);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[12];
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    sub_100008C70(v16 + 2, v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    v0[24] = v20;
    (*(v19 + 16))();
    v21 = (*(v18 + 48))(v17, v18);
    v0[25] = v21;
    (*(v19 + 8))(v20, v17);
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_10027D8D8;

    return sub_100297F54(v14, sub_10028E6D8, v11, v21);
  }

  return result;
}

uint64_t sub_10027D8D8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10027DA78;
  }

  else
  {

    v3 = sub_10027D9FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10027D9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027DA78()
{

  sub_1004DDA4C();
  *(v0 + 224) = sub_1004DDA3C();
  v2 = sub_1004DD9BC();

  return _swift_task_switch(sub_10027DB1C, v2, v1);
}

uint64_t sub_10027DB1C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  sub_10027CE88(v1, v2);

  return _swift_task_switch(sub_10027DBA0, 0, 0);
}

uint64_t sub_10027DBA0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_10027DC28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = sub_100004CB8(&unk_10063CCD0, &qword_100524EB0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v26 = &v25 - v8;
  v10 = *(sub_100004CB8(&qword_10063C400, &qword_100524740) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v25 - v12;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_1004DDA8C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1000108DC(a2, v13, &qword_10063C400, &qword_100524740);
  v17 = v9;
  v18 = v6;
  (*(v7 + 16))(v17, v27, v6);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v7 + 80) + v20 + 8) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a1;
  sub_10028CCBC(v13, &v22[v19]);
  *&v22[v20] = v28;
  (*(v7 + 32))(&v22[v21], v26, v18);
  v23 = a1;

  sub_10021C658(0, 0, v15, &unk_100524ED0, v22);

  return result;
}

uint64_t sub_10027DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_100004CB8(&qword_10063C400, &qword_100524740);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_10027DFD4, 0, 0);
}

uint64_t sub_10027DFD4()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_1000108DC(v0[11], v0[14], &qword_10063C400, &qword_100524740);
  swift_beginAccess();
  sub_100035868(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10027E0BC;
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return sub_100275B14(v5, v7, v6, (v0 + 2));
}

uint64_t sub_10027E0BC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10027E2B0;
  }

  else
  {
    v2 = sub_10027E1D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10027E1D0()
{
  v1 = v0[16];
  sub_10028BE70(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  sub_100004CB8(&unk_10063CCD0, &qword_100524EB0);
  sub_1004DD9DC();
  sub_10028C1C4(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10027E2B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027E328(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1004D89AC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10027E460, 0, 0);
}

uint64_t sub_10027E460()
{
  v26 = v0;
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  *(v0 + 144) = sub_100035430(v1, static Logger.groupActivities);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "GroupActivitiesManager prepareForActivation", v4, 2u);
  }

  if ((GroupActivitiesManager.isSessionEligible.getter() & 1) == 0)
  {
    v12 = 1;
LABEL_11:
    (*(*(v0 + 128) + 56))(*(v0 + 56), v12, 4, *(v0 + 120));

    v13 = *(v0 + 8);

    return v13();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (*(v0 + 49))
  {
    v5 = sub_1004D964C();
    v6 = sub_1004DDF7C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 40) = 1;
      *(v0 + 48) = 4;
      v9 = sub_1004DD4DC();
      v11 = sub_1000343A8(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Prepare error=%{public}s", v7, 0xCu);
      sub_100008D24(v8);
    }

    v12 = 2;
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 72);
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v18 = *(v16 + 32);
  v19 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  sub_10001074C(v15, &qword_10063C408, &qword_100524748);
  swift_beginAccess();
  sub_100035868(v17 + 16, v15);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v20 = v0;
  v20[1] = sub_10027E868;
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 64);

  return GroupActivity.prepareForActivation(options:)(v22, v24, v23, v21);
}

uint64_t sub_10027E868()
{

  return _swift_task_switch(sub_10027E964, 0, 0);
}

uint64_t sub_10027E964()
{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = sub_1004DD50C();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = sub_1000343A8(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "User choice=%{public}s", v9, 0xCu);
    sub_100008D24(v35);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(*(v0 + 88) + 104);
  v20(v18, enum case for GroupActivityActivationResult.activationPreferred(_:), v19);
  v21 = sub_1004D899C();
  v14(v18, v19);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);
  if (v21)
  {
    v34 = *(v0 + 80);
    v25 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    sub_1004D9B7C();
    sub_100279AF8(v26);
    v14(v24, v34);
    sub_10028BE70(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = sub_1004D899C();
    v14(v27, v28);
    v14(v24, v28);
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    (*(v23 + 56))(v29, v31, 4, v36);
  }

  sub_10028C1C4(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10027ED50()
{
  v1 = v0;
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v3 = &v19 - v2;
  sub_100004CB8(&qword_100637610, qword_100524990);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v10 = sub_1004D966C();
  sub_100035430(v10, static Logger.groupActivities);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "beginMeasuringInitiationTime", v13, 2u);
  }

  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v14, v9);
  Signpost.begin(dso:_:_:)(&_mh_execute_header, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  sub_10028BE70(v9, v5, type metadata accessor for Signpost);
  (*(v7 + 56))(v5, 0, 1, v6);
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_1000107AC(v5, v1 + v15, &qword_100637610, qword_100524990);
  swift_endAccess();
  sub_1004D825C();
  sub_10028C1C4(v9, type metadata accessor for Signpost);
  v16 = sub_1004D826C();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_1000107AC(v3, v1 + v17, &qword_100636E60, &qword_10051A950);
  return swift_endAccess();
}

uint64_t sub_10027F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  sub_1004DDA4C();
  v6[17] = sub_1004DDA3C();
  v9 = sub_1004DD9BC();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(sub_10027F210, v9, v8);
}

uint64_t sub_10027F210()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10027F5A8;

    return sub_100297894(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    sub_10028BE70(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    sub_10028BE08(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = CFRange.init(_:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10001E3C4;
    v0[5] = &unk_1005E9AF0;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithBlock:v11];
    v0[23] = v12;
    _Block_release(v11);

    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[12];
      swift_beginAccess();
      v14 = v13[5];
      v15 = v13[6];
      sub_100008C70(v13 + 2, v14);
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      v0[24] = v17;
      (*(v16 + 16))();
      v18 = (*(v15 + 48))(v14, v15);
      v0[25] = v18;
      (*(v16 + 8))(v17, v14);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = sub_10027F72C;

      return sub_100297F54(v12, sub_10028F524, v9, v18);
    }
  }

  return result;
}

uint64_t sub_10027F5A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(sub_10027FBB4, v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = sub_10027FA1C;
    v9 = v4[13];

    return sub_10027FCF4(a1, v9);
  }
}

uint64_t sub_10027F72C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10027F8CC;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10027F850;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10027F850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10027F8CC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  sub_1004D9B7C();
  sub_100279AF8(v2);
  sub_10027CE88(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10027FA1C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10027FB3C, v3, v2);
}

uint64_t sub_10027FB3C()
{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10027FBB4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  sub_1004D9B7C();
  sub_100279AF8(v3);
  v4 = v2;
  sub_10027CE88(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10027FCF4(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_10027FDA4, 0, 0);
}

uint64_t sub_10027FDA4()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (qword_100633E68 != -1)
      {
        swift_once();
      }

      v4 = qword_10063C3B0;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_100280160;
      v5 = swift_continuation_init();
      *(v0 + 136) = sub_100004CB8(&qword_10063CCC8, &unk_100524EA0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10013FC1C;
      *(v0 + 104) = &unk_1005E9B18;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  sub_1004D9B7C();
  sub_100279AF8(v6);
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = sub_1004D966C();
  sub_100035430(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = sub_1004D964C();
  v11 = sub_1004DDF9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    sub_100004CB8(&unk_10063C4E0, &unk_100524910);
    v16 = sub_1004DD50C();
    v18 = sub_1000343A8(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    sub_100008D24(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100280160()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_1002808DC;
  }

  else
  {
    v2 = sub_100280270;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100280270()
{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v0[41] = sub_100035430(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    sub_100004CB8(&qword_10063CE38, &qword_100525008);
    v9 = sub_1004DD4DC();
    v11 = sub_1000343A8(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    sub_100008D24(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  sub_10028BE70(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  sub_10001074C(v12, &qword_10063C408, &qword_100524748);
  swift_beginAccess();
  sub_100035868(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = sub_1004D964C();
  v21 = sub_1004DDF9C();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    sub_10028BE70(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = sub_1004DD4DC();
    v28 = sub_1000343A8(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    sub_100008D24(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  sub_10028BE70(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = sub_1002806E4;
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

uint64_t sub_1002806E4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  sub_10028C1C4(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = sub_100280D0C;
  }

  else
  {
    v3 = sub_10028082C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028082C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  sub_10028C1C4(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002808DC(uint64_t a1)
{
  v32 = v1;
  swift_willThrow();

  v1[40] = 0;
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v1[41] = sub_100035430(v2, static Logger.groupActivities);
  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136446210;
    v1[30] = 0;
    sub_100004CB8(&qword_10063CE38, &qword_100525008);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, v31);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activity starting item=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  v10 = v1[37];
  v11 = v1[33];
  sub_10028BE70(v1[32], v10, type metadata accessor for GroupActivitiesManager.Activity);
  sub_10001074C(v10, &qword_10063C408, &qword_100524748);
  swift_beginAccess();
  sub_100035868(v11 + 16, v10);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v13 = v1[37];
  v12 = v1[38];

  *(v13 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 48) = v14;
  v15 = v12;

  v16 = sub_1004D964C();
  v17 = sub_1004DDF9C();
  if (os_log_type_enabled(v16, v17))
  {
    v19 = v1[36];
    v18 = v1[37];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446210;
    swift_beginAccess();
    sub_10028BE70(v18, v19, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = sub_1004DD4DC();
    v24 = sub_1000343A8(v22, v23, v31);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "🚀 Activiting activity=%{public}s", v20, 0xCu);
    sub_100008D24(v21);
  }

  v25 = v1[37];
  v26 = v1[35];
  swift_beginAccess();
  sub_10028BE70(v25, v26, type metadata accessor for GroupActivitiesManager.Activity);
  v27 = swift_task_alloc();
  v1[42] = v27;
  v28 = sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  *v27 = v1;
  v27[1] = sub_1002806E4;
  v29 = v1[34];

  return GroupActivity.activate()(v29, v28);
}

uint64_t sub_100280D0C()
{
  v20 = v0;
  swift_errorRetain();
  v1 = sub_1004D964C();
  v2 = sub_1004DDF9C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v8 = sub_1004DD4DC();
    v10 = sub_1000343A8(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    sub_100008D24(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  sub_10028C1C4(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

double sub_100280F30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = sub_1004DDA8C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10028BE70(a3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  sub_10028BE08(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for GroupActivitiesManager.Activity);
  v13 = a1;

  sub_10011F560(0, 0, v9, &unk_100525018, v12);

  return result;
}

uint64_t sub_100281114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100035C88;

  return sub_10027FCF4(a5, a6);
}

uint64_t sub_1002811C0(uint64_t a1, unint64_t a2)
{
  v5._countAndFlagsBits = 0x616C506572616853;
  v5._object = 0xEC0000003D444979;
  if (sub_1004DD68C(v5))
  {
    sub_10028ADC0(0xC0007uLL, a1, a2);
    a1 = sub_1004DD53C();
  }

  else
  {
  }

  return a1;
}

void GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }
}

void sub_100281290()
{
  v1 = sub_100004CB8(&qword_10063CE30, &qword_100524FF8);
  __chkstk_darwin();
  v67 = &v59 - v2;
  sub_100004CB8(&qword_10063C528, &qword_100524988);
  __chkstk_darwin();
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v59 - v4;
  __chkstk_darwin();
  v7 = &v59 - v6;
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  __chkstk_darwin();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = &v59 - v13;
  __chkstk_darwin();
  v16 = &v59 - v15;
  __chkstk_darwin();
  v20 = &v59 - v19;
  v69 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v63 = v18;
    v64 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v68 = v17;

    sub_1004D8A7C();

    v21 = *(v20 + 6);
    if (!v21)
    {
      v28 = v20;
LABEL_9:
      sub_10028C1C4(v28, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v61 = v12;
    v62 = v16;
    v65 = *(v21 + 16);
    sub_10028C1C4(v20, type metadata accessor for GroupActivitiesManager.Activity);
    v22 = v69 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v23 = *(v10 + 48);
    if (!v23(v22, 1, v68))
    {
      type metadata accessor for CodableListeningProperties();
      v24 = swift_allocObject();
      v25 = v65;
      *(v24 + 16) = v65;
      *(v22 + 48) = v24;
      v26 = v25;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1000108DC(v22, v9, &qword_10063C528, &qword_100524988);
    v27 = v68;
    if (v23(v9, 1, v68) == 1)
    {

      sub_10001074C(v9, &qword_10063C528, &qword_100524988);
      return;
    }

    v29 = v62;
    sub_10028BE08(v9, v62, type metadata accessor for GroupActivitiesManager.Activity);
    sub_10028BE70(v29, v7, type metadata accessor for GroupActivitiesManager.Activity);
    v30 = 1;
    v60 = *(v10 + 56);
    v60(v7, 0, 1, v27);
    if (*(v69 + v64))
    {

      sub_1004D8A7C();

      v30 = 0;
    }

    v32 = v67;
    v31 = v68;
    v60(v5, v30, 1, v68);
    v33 = *(v1 + 48);
    sub_1000108DC(v7, v32, &qword_10063C528, &qword_100524988);
    sub_1000108DC(v5, v32 + v33, &qword_10063C528, &qword_100524988);
    if (v23(v32, 1, v31) == 1)
    {
      sub_10001074C(v5, &qword_10063C528, &qword_100524988);
      sub_10001074C(v7, &qword_10063C528, &qword_100524988);
      v34 = v23(v32 + v33, 1, v31);
      v35 = v62;
      if (v34 == 1)
      {
        sub_10001074C(v32, &qword_10063C528, &qword_100524988);
LABEL_15:
        sub_10028C1C4(v35, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v36 = v66;
      sub_1000108DC(v32, v66, &qword_10063C528, &qword_100524988);
      if (v23(v32 + v33, 1, v31) != 1)
      {
        sub_10028BE08(v32 + v33, v14, type metadata accessor for GroupActivitiesManager.Activity);
        v40 = *(v36 + 56);
        v35 = v62;
        if (v40)
        {
          v41 = *(v14 + 7);
          if (v41)
          {
            v42 = *(v41 + 16);
            v43 = *(v40 + 16);
            v44 = v42;
            v45 = [v43 identifiers];
            v46 = v32;
            v47 = [v44 identifiers];
            v48 = [v45 intersectsSet:v47];

            sub_10028C1C4(v14, type metadata accessor for GroupActivitiesManager.Activity);
            sub_10001074C(v5, &qword_10063C528, &qword_100524988);
            sub_10001074C(v7, &qword_10063C528, &qword_100524988);
            sub_10028C1C4(v66, type metadata accessor for GroupActivitiesManager.Activity);
            sub_10001074C(v46, &qword_10063C528, &qword_100524988);
            if (v48)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        sub_10028C1C4(v14, type metadata accessor for GroupActivitiesManager.Activity);
        sub_10001074C(v5, &qword_10063C528, &qword_100524988);
        sub_10001074C(v7, &qword_10063C528, &qword_100524988);
        sub_10028C1C4(v66, type metadata accessor for GroupActivitiesManager.Activity);
        v39 = v32;
        v37 = &qword_10063C528;
        v38 = &qword_100524988;
LABEL_26:
        sub_10001074C(v39, v37, v38);
LABEL_27:
        if (*(v69 + v64))
        {
          sub_10028BE70(v35, v63, type metadata accessor for GroupActivitiesManager.Activity);

          sub_1004D8A8C();
        }

        if (qword_100633E70 != -1)
        {
          swift_once();
        }

        v49 = sub_1004D966C();
        sub_100035430(v49, static Logger.groupActivities);
        v50 = v61;
        sub_10028BE70(v35, v61, type metadata accessor for GroupActivitiesManager.Activity);
        v51 = sub_1004D964C();
        v52 = sub_1004DDF9C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v70[0] = v54;
          *v53 = 136446210;
          sub_10028BE70(v50, v63, type metadata accessor for GroupActivitiesManager.Activity);
          v55 = sub_1004DD4DC();
          v57 = v56;
          sub_10028C1C4(v50, type metadata accessor for GroupActivitiesManager.Activity);
          v58 = sub_1000343A8(v55, v57, v70);

          *(v53 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v51, v52, "Updating session activity=%{public}s", v53, 0xCu);
          sub_100008D24(v54);
        }

        else
        {

          sub_10028C1C4(v50, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v28 = v35;
        goto LABEL_9;
      }

      sub_10001074C(v5, &qword_10063C528, &qword_100524988);
      sub_10001074C(v7, &qword_10063C528, &qword_100524988);
      sub_10028C1C4(v36, type metadata accessor for GroupActivitiesManager.Activity);
      v35 = v62;
    }

    v37 = &qword_10063CE30;
    v38 = &qword_100524FF8;
    v39 = v32;
    goto LABEL_26;
  }
}

void (*sub_100281C34(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100281C98;
}

void sub_100281C98(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100281290();
  }
}

void sub_100281CCC()
{
  v1 = v0;
  v100 = sub_1004DE27C();
  v109 = *(v100 - 8);
  __chkstk_darwin();
  v116 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004CB8(&qword_10063CCE8, &qword_100524EE8);
  v118 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v93 - v4;
  v111 = sub_100004CB8(&qword_10063CCF0, &qword_100524EF0);
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v114 = sub_100004CB8(&qword_10063CCF8, &qword_100524EF8);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v93 - v7;
  v102 = sub_100004CB8(&qword_10063CD00, &qword_100524F00);
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v95 = &v93 - v8;
  v9 = sub_100004CB8(&qword_10063CD08, &qword_100524F08);
  v103 = *(v9 - 8);
  __chkstk_darwin();
  v99 = &v93 - v10;
  v11 = sub_100004CB8(&qword_10063CD10, &qword_100524F10);
  v106 = *(v11 - 8);
  __chkstk_darwin();
  v105 = &v93 - v12;
  sub_100004CB8(&qword_100636410, &qword_100518A18);
  __chkstk_darwin();
  v115 = &v93 - v13;
  v14 = sub_100004CB8(&qword_10063A320, &qword_100520DD0);
  v126 = *(v14 - 8);
  __chkstk_darwin();
  v125 = &v93 - v15;
  v120 = sub_100004CB8(&qword_10063CD18, &qword_100524F18);
  v96 = *(v120 - 1);
  __chkstk_darwin();
  v94 = &v93 - v16;
  v122 = sub_100004CB8(&unk_10063CD20, &unk_100524F20);
  v98 = *(v122 - 8);
  __chkstk_darwin();
  v97 = &v93 - v17;
  sub_100004CB8(&qword_10063C528, &qword_100524988);
  __chkstk_darwin();
  v19 = &v93 - v18;
  if (qword_100633E70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v20 = sub_1004D966C();
    sub_100035430(v20, static Logger.groupActivities);

    v21 = sub_1004D964C();
    v22 = sub_1004DDF9C();

    v23 = os_log_type_enabled(v21, v22);
    v119 = v3;
    v117 = v5;
    v107 = v11;
    v104 = v9;
    v127 = v14;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v131[0] = v25;
      *v24 = 136446210;
      v129[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      sub_100004CB8(&unk_10063CD88, &unk_100524F30);
      v26 = sub_1004DD50C();
      v28 = sub_1000343A8(v26, v27, v131);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "📲 Receiving a new session=%{public}s", v24, 0xCu);
      sub_100008D24(v25);
    }

    v128 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v128)
    {
      break;
    }

    v75 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v75 - 8) + 56))(v19, 1, 1, v75);
    v76 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    sub_1000613B8(v19, v1 + v76, &qword_10063C528, &qword_100524988);
    swift_endAccess();
    sub_100281290();
    sub_10001074C(v19, &qword_10063C528, &qword_100524988);
    v77 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v77);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1004DE98C();
      sub_1004D9ABC();
      sub_10028C844(&qword_100635038, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      sub_1004DDC7C();
      v19 = v131[0];
      v5 = v131[1];
      v78 = v131[2];
      v9 = v131[3];
      v11 = v131[4];
    }

    else
    {
      v79 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v78 = ~v79;
      v80 = -v79;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      else
      {
        v81 = -1;
      }

      v11 = v81 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v19 = v3;
    }

    v128 = v78;
    for (i = (v78 + 64) >> 6; v19 < 0; v11 = v85)
    {
      v87 = sub_1004DE9EC();
      if (!v87)
      {
        goto LABEL_27;
      }

      v129[4] = v87;
      sub_1004D9ABC();
      swift_dynamicCast();
      v14 = v9;
      v85 = v11;
      if (!v130)
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_1004D9AAC();

      v9 = v14;
    }

    v83 = v9;
    v84 = v11;
    v14 = v9;
    if (v11)
    {
LABEL_21:
      v85 = (v84 - 1) & v84;
      v86 = *(*(v19 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v86)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_100010458(v19);

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004D9B6C();

      v88 = v130;
      swift_getKeyPath();
      swift_getKeyPath();
      v130 = 0;

      sub_1004D9B7C();
      sub_1002794C4(v88);
      v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v89) = 0;
      v90 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v91 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v92 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v90 = xmmword_100512770;
      *(v90 + 16) = 0;
      sub_10028CF08(v91, v92);
      return;
    }

    while (1)
    {
      v14 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v14 >= i)
      {
        goto LABEL_27;
      }

      v84 = *&v5[8 * v14];
      ++v83;
      if (v84)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  sub_1004D8A7C();
  v29 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v30 = *(v29 - 8);
  (*(v30 + 56))(v19, 0, 1, v29);
  v31 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  sub_1000613B8(v19, v1 + v31, &qword_10063C528, &qword_100524988);
  swift_endAccess();
  sub_100281290();
  sub_10001074C(v19, &qword_10063C528, &qword_100524988);
  v32 = sub_100281C34(v129);
  v34 = v33;
  if (!(*(v30 + 48))(v33, 1, v29))
  {
    swift_beginAccess();
    sub_100035868(v1 + 16, v131);
    sub_1000107AC(v131, v34, &qword_10063C408, &qword_100524748);
  }

  v32(v129, 0);
  v35 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v36 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v37 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v35 = xmmword_100512770;
  *(v35 + 16) = 0;
  sub_10028CF08(v36, v37);
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100004CB8(&qword_10063A420, &unk_10051AC78);
  v38 = v125;
  sub_1004D9B3C();
  swift_endAccess();
  v121 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100042B08(&unk_10063A428, &qword_10063A320, &qword_100520DD0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10028EC50();
  v39 = v94;
  v40 = v127;
  sub_1004D9BFC();
  (*(v126 + 8))(v38, v40);
  v127 = sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v41 = sub_1004DE14C();
  v131[0] = v41;
  v42 = sub_1004DE12C();
  v43 = *(v42 - 8);
  v123 = *(v43 + 56);
  v125 = (v43 + 56);
  v44 = v115;
  v124 = v42;
  v123(v115, 1, 1, v42);
  sub_100042B08(&unk_10063CD38, &qword_10063CD18, &qword_100524F18, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v45 = sub_100234838();
  v46 = v97;
  v47 = v120;
  v126 = v45;
  sub_1004D9BDC();
  sub_10001074C(v44, &qword_100636410, &qword_100518A18);

  (*(v96 + 8))(v39, v47);
  swift_allocObject();
  swift_weakInit();
  v120 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100042B08(&qword_10063CD48, &unk_10063CD20, &unk_100524F20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v122;
  sub_1004D9C0C();

  (*(v98 + 8))(v46, v48);
  v49 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  sub_1004D9A9C();
  swift_endAccess();

  v50 = v95;
  sub_1004D8A0C();
  v51 = sub_1004DE14C();
  v131[0] = v51;
  v123(v44, 1, 1, v42);
  sub_100042B08(&qword_10063CD50, &qword_10063CD00, &qword_100524F00, v121);
  v52 = v99;
  v53 = v102;
  sub_1004D9BDC();
  sub_10001074C(v44, &qword_100636410, &qword_100518A18);

  (*(v101 + 8))(v50, v53);
  sub_100042B08(&qword_10063CD58, &qword_10063CD08, &qword_100524F08, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v54 = v105;
  v55 = v104;
  sub_1004D9BBC();
  (*(v103 + 8))(v52, v55);
  swift_allocObject();
  swift_weakInit();
  sub_100042B08(&qword_10063CD60, &qword_10063CD10, &qword_100524F10, &protocol conformance descriptor for Publishers.Map<A, B>);
  v56 = v107;
  sub_1004D9C0C();

  (*(v106 + 8))(v54, v56);
  v122 = v49;
  swift_beginAccess();
  sub_1004D9A9C();
  swift_endAccess();

  v57 = v128;
  v58 = v108;
  sub_1004D8A5C();
  v59 = sub_1004DE14C();
  v131[0] = v59;
  v60 = v123;
  v123(v44, 1, 1, v124);
  sub_100042B08(&qword_10063CD68, &qword_10063CCF0, &qword_100524EF0, v121);
  v61 = v112;
  v62 = v111;
  sub_1004D9BDC();
  sub_10001074C(v44, &qword_100636410, &qword_100518A18);

  (*(v110 + 8))(v58, v62);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v57;
  sub_100042B08(&unk_10063CD70, &qword_10063CCF8, &qword_100524EF8, v120);

  v65 = v114;
  sub_1004D9C0C();

  (*(v113 + 8))(v61, v65);
  swift_beginAccess();
  sub_1004D9A9C();
  swift_endAccess();

  v121 = objc_opt_self();
  v66 = [v121 defaultCenter];
  v67 = v116;
  sub_1004DE28C();

  v68 = sub_1004DE14C();
  v131[0] = v68;
  v60(v44, 1, 1, v124);
  v114 = sub_10028C844(&qword_1006393E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v69 = v117;
  v70 = v100;
  sub_1004D9BDC();
  sub_10001074C(v44, &qword_100636410, &qword_100518A18);

  v113 = *(v109 + 8);
  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  v120 = sub_100042B08(&qword_10063CD80, &qword_10063CCE8, &qword_100524EE8, v120);
  v71 = v119;
  sub_1004D9C0C();

  v118 = *(v118 + 8);
  (v118)(v69, v71);
  swift_beginAccess();
  sub_1004D9A9C();
  swift_endAccess();

  v72 = [v121 defaultCenter];
  v73 = sub_1004DD3FC();
  sub_1004DE28C();

  v74 = sub_1004DE14C();
  v131[0] = v74;
  v123(v44, 1, 1, v124);
  sub_1004D9BDC();
  sub_10001074C(v44, &qword_100636410, &qword_100518A18);

  (v113)(v67, v70);
  swift_allocObject();
  swift_weakInit();
  sub_1004D9C0C();

  (v118)(v69, v71);
  swift_beginAccess();
  sub_1004D9A9C();
  swift_endAccess();
}

double sub_10028346C(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = a1[5];
    v14 = a1[4];
    v15 = v5;
    v6 = a1[7];
    v16 = a1[6];
    v17 = v6;
    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    v8 = a1[3];
    v12 = a1[2];
    v13 = v8;
    v9 = &v10;
    CFRange.init(_:)(*(&v3 - 1));
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v17;
    v18[0] = v10;
    v18[1] = v11;
    v18[2] = v12;
    v18[3] = v13;
    sub_10028351C(v18);
  }

  return result;
}

void sub_10028351C(unsigned __int8 *a1)
{
  v106 = *a1;
  v2 = a1[1];
  v104 = a1[2];
  LODWORD(v105) = v2;
  v3 = *(a1 + 2);
  v103 = *(a1 + 1);
  v101 = v3;
  v99 = a1[24];
  v100 = *(a1 + 4);
  v4 = *(a1 + 3);
  v108 = *(a1 + 2);
  v98 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v102 = &v98 - v11;
  v12 = *(a1 + 5);
  v129[4] = *(a1 + 4);
  v129[5] = v12;
  v13 = *(a1 + 7);
  v129[6] = *(a1 + 6);
  v129[7] = v13;
  v14 = *(a1 + 1);
  v129[0] = *a1;
  v129[1] = v14;
  v15 = *(a1 + 3);
  v129[2] = *(a1 + 2);
  v129[3] = v15;
  if (sub_10028ED5C(v129) == 1)
  {
    if (qword_100633B60 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v16 = v114;
    v17 = v115;
    v18 = v116;
    v19 = v117;
    v20 = v118;
    v21 = v119;
    v23 = v121;
    v22 = v122;
    v24 = v120;
    v25 = v123;
    v6 = v124;
    v7 = v125;
    v8 = v126;
    v9 = v127;
    v10 = v128;
  }

  else
  {
    v16 = v106;
    v24 = v108;
    v18 = v104;
    v17 = v105;
    v19 = v103;
    v20 = v101;
    v21 = v99;
    v22 = v100;
    v25 = v5;
    v23 = v98;
  }

  v108 = v24;
  v26 = v16;
  LODWORD(v101) = v16 & 1;
  v114 = v16 & 1;
  v115 = v17 & 1;
  v116 = v18 & 1;
  v117 = v19;
  v118 = v20;
  v106 = v21 & 1;
  v119 = v21 & 1;
  v120 = v24;
  v121 = v23;
  v122 = v22;
  v123 = v25;
  v124 = v6;
  v125 = v7;
  v126 = v8;
  v127 = v9;
  v128 = v10;
  v27 = 256;
  if (v21)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  sub_100114A70(&v114, &v110);
  sub_1000108DC(a1, &v110, &qword_10063CD98, &qword_100524F40);
  v29 = v108;
  v30 = sub_1001202D0(0, v108);
  LODWORD(v29) = sub_1001202D0(2u, v29);
  v31 = v6;
  sub_100073E60(&v114);
  v32 = v30;
  v33 = v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v34 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v35 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v36 = *(v107 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v104 = v29;
  if ((v29 & 1) == 0)
  {
    v27 = 0;
  }

  v37 = v27 & 0xFFFFFFFFFFFFFFFELL | v32 & 1;
  v38 = v28 & 0xFFFE | v26 & 1;
  v103 = v32;
  if (v35 == 1)
  {
    v39 = v31;
    sub_10028CF08(v34, 1);
    sub_10028CF08(v37, v6);
    goto LABEL_22;
  }

  if ((v32 & 1) != (v34 & 1) || ((v104 ^ ((v34 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v35)
  {
    if (!v6)
    {
      if ((v101 ^ v36))
      {
        goto LABEL_22;
      }

      v42 = v36 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v43 = v31;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v108) = v36, v105 = sub_100006F10(0, &qword_1006372B8, ICMusicSubscriptionStatus_ptr), v40 = v31, sub_10028F078(v34, v35), v41 = sub_1004DE5FC(), v40, sub_10028CF08(v34, v35), (v41 & 1) == 0) || ((v101 ^ v108) & 1) != 0)
  {
LABEL_22:
    v44 = *v33;
    v45 = *(v33 + 8);
    *v33 = v37;
    *(v33 + 8) = v6;
    *(v33 + 16) = v38;
    sub_10028CF08(v44, v45);
    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v105 = v6;
    v46 = sub_1004D966C();
    sub_100035430(v46, static Logger.groupActivities);
    v47 = v31;
    v48 = sub_1004D964C();
    v49 = sub_1004DDF9C();
    *&v108 = v47;

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v109 = v51;
      *v50 = 136446210;
      LOBYTE(v110) = v103 & 1;
      HIBYTE(v110) = v104 & 1;
      v111 = v105;
      v112 = v101;
      v52 = v106;
      v113 = v106;
      v53 = v108;
      v54 = sub_1004DD50C();
      v56 = sub_1000343A8(v54, v55, &v109);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "🛂 Checking eligibility with context=%{public}s", v50, 0xCu);
      sub_100008D24(v51);

      if ((v52 & 1) == 0)
      {
LABEL_26:
        v57 = sub_1004D964C();
        v58 = sub_1004DDF9C();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "🛂 User did not accept GDPR", v59, 2u);
        }

        v60 = sub_1004DDA8C();
        v61 = v102;
        (*(*(v60 - 8) + 56))(v102, 1, 1, v60);
        sub_1004DDA4C();
        v62 = sub_1004DDA3C();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = &protocol witness table for MainActor;
        sub_10011FE6C(0, 0, v61, &unk_100524F50, v63);
        goto LABEL_52;
      }
    }

    else
    {

      v52 = v106;
      if ((v106 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v64 = v105;
    if (!v105 || ([v108 capabilities] & 1) == 0)
    {
      if (v103)
      {
        if (v104)
        {
          if (v101)
          {
            if (v64)
            {
              v65 = v108;
              if (([v65 capabilities] & 1) == 0)
              {
                v66 = sub_1004D964C();
                v67 = sub_1004DDF9C();
                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 0;
                  _os_log_impl(&_mh_execute_header, v66, v67, "🛂 User is not a subscriber -> up sell", v68, 2u);
                }

                v69 = sub_1004DDA8C();
                v70 = v102;
                (*(*(v69 - 8) + 56))(v102, 1, 1, v69);
                v71 = swift_allocObject();
                v71[2] = 0;
                v71[3] = 0;
                v71[4] = v107;

                sub_10011F560(0, 0, v70, &unk_100524F70, v71);
                sub_100073E60(&v114);

                goto LABEL_53;
              }

              v64 = v105;
            }

            v91 = v108;
            v88 = sub_1004D964C();
            v92 = sub_1004DDF9C();

            if (!os_log_type_enabled(v88, v92))
            {
              sub_100073E60(&v114);

              goto LABEL_67;
            }

            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v109 = v94;
            *v93 = 136446210;
            v110 = 257;
            v111 = v64;
            v112 = v101;
            v113 = v52;
            v31 = v91;
            v95 = sub_1004DD50C();
            v97 = sub_1000343A8(v95, v96, &v109);

            *(v93 + 4) = v97;
            _os_log_impl(&_mh_execute_header, v88, v92, "🛂 Unknown prepare case with=%{public}s", v93, 0xCu);
            sub_100008D24(v94);

            goto LABEL_64;
          }

          v83 = sub_1004D964C();
          v84 = sub_1004DDF9C();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "🛂 User is not signed in -> request authentication", v85, 2u);
          }

          v86 = sub_1004DDA8C();
          v77 = v102;
          (*(*(v86 - 8) + 56))(v102, 1, 1, v86);
          v78 = swift_allocObject();
          v78[2] = 0;
          v78[3] = 0;
          v78[4] = v107;

          v79 = &unk_100524F60;
LABEL_51:
          sub_10011F560(0, 0, v77, v79, v78);
LABEL_52:
          sub_100073E60(&v114);

LABEL_53:

          return;
        }

        v80 = sub_1004D964C();
        v81 = sub_1004DDF9C();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "🛂 Apple Music content disabled", v82, 2u);
        }

        v75 = 1;
      }

      else
      {
        v72 = sub_1004D964C();
        v73 = sub_1004DDF9C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "🛂 Music services restricted", v74, 2u);
        }

        v75 = 0;
      }

      sub_1002886E0(v75);
      sub_100073E60(&v114);

      return;
    }

    v76 = sub_1004DDA8C();
    v77 = v102;
    (*(*(v76 - 8) + 56))(v102, 1, 1, v76);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v107;

    v79 = &unk_100524F80;
    goto LABEL_51;
  }

  v42 = v108 & 0x100;
LABEL_56:
  if ((v106 ^ (v42 >> 8)))
  {
    goto LABEL_22;
  }

  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v87 = sub_1004D966C();
  sub_100035430(v87, static Logger.groupActivities);
  v88 = sub_1004D964C();
  v89 = sub_1004DDF9C();
  if (!os_log_type_enabled(v88, v89))
  {
    goto LABEL_65;
  }

  v90 = swift_slowAlloc();
  *v90 = 0;
  _os_log_impl(&_mh_execute_header, v88, v89, "Eligibility context didn't change.", v90, 2u);
LABEL_64:

LABEL_65:
  sub_100073E60(&v114);

LABEL_67:
}

double sub_100284184(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1004D9B7C();
    sub_1002794C4(v3);
  }

  return result;
}

uint64_t sub_10028427C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = sub_1004D95FC();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D95AC();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin();
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_10063C3E8, &qword_100524720);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v63 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v55 - v12;
  __chkstk_darwin();
  v15 = &v55 - v14;
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v16 = sub_1004D966C();
  sub_100035430(v16, static Logger.groupActivities);
  v17 = *(v10 + 16);
  v66 = a1;
  v18 = a1;
  v19 = v17;
  v17(v15, v18, v9);
  v20 = sub_1004D964C();
  v21 = sub_1004DDF9C();
  v22 = os_log_type_enabled(v20, v21);
  v64 = v10;
  v62 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55 = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v26 = v19;
    v27 = v25;
    *&v75[0] = v25;
    *v24 = 136446210;
    v26(v13, v15, v9);
    v28 = sub_1004DD50C();
    v29 = v10;
    v31 = v30;
    (*(v29 + 8))(v15, v9);
    v32 = sub_1000343A8(v28, v31, v75);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "📥 Session update with state=%{public}s", v24, 0xCu);
    sub_100008D24(v27);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v34 = v66;
  if (result)
  {
    v35 = result;
    v36 = v63;
    v62(v63, v66, v9);
    v37 = v64;
    v38 = (*(v64 + 88))(v36, v9);
    if (v38 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v37 + 96))(v36, v9);
      sub_1002849AC(*v36);
    }

    else if (v38 == enum case for GroupSession.State.waiting<A>(_:))
    {
      sub_10028ED44(&v67);
      v75[4] = v71;
      v75[5] = v72;
      v75[6] = v73;
      v75[7] = v74;
      v75[0] = v67;
      v75[1] = v68;
      v75[2] = v69;
      v75[3] = v70;
      sub_10028351C(v75);
    }

    else
    {
      if (v38 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = sub_1004DECCC();
        __break(1u);
        return result;
      }

      v39 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v40 = v61;
      if (*(v35 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v41 = qword_1006344A8;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = sub_1004D95EC();
        sub_100035430(v42, static OSSignposter.sharePlay);
        v43 = sub_1004D95CC();
        sub_1004D960C();
        v44 = sub_1004DE21C();
        if (sub_1004DE78C())
        {

          v45 = v56;
          sub_1004D963C();

          v47 = v57;
          v46 = v58;
          if ((*(v57 + 88))(v45, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v48 = "[Error] Interval already ended";
          }

          else
          {
            (*(v47 + 8))(v45, v46);
            v48 = "";
          }

          v49 = swift_slowAlloc();
          *v49 = 0;
          v50 = sub_1004D958C();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, v44, v50, "JoinSession", v48, v49, 2u);

          v34 = v66;
        }

        (*(v59 + 8))(v40, v60);
        *(v35 + v39) = 0;
      }
    }

    sub_100279DD8();
    swift_beginAccess();
    sub_100035868(v35 + 16, &v67);
    v51 = *(&v68 + 1);
    v52 = v69;
    sub_100008C70(&v67, *(&v68 + 1));
    v53 = v65;
    v54 = sub_1004D89FC();
    (*(v52 + 40))(v53, v34, v54 & 1, v51, v52);

    return sub_100008D24(&v67);
  }

  return result;
}

double sub_1002849AC(uint64_t a1)
{
  v2 = v1;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v4 = &v16 - v3;
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v5 = sub_1004D966C();
  sub_100035430(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1004DF1CC();
    v12 = sub_1000343A8(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    sub_100008D24(v9);
  }

  v13 = sub_1004DDA8C();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_10011F560(0, 0, v4, &unk_100524FF0, v14);

  return result;
}

uint64_t sub_100284C00(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v3 = v15 - v2;
  v4 = sub_1004D826C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D7B6C();
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v15[1] = sub_1004DD43C();
  v15[2] = v10;
  sub_1004DEA4C();
  if (!*(v9 + 16) || (v11 = sub_100028F3C(v16), (v12 & 1) == 0))
  {

    sub_1000105EC(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  sub_10000904C(*(v9 + 56) + 32 * v11, &v17);
  sub_1000105EC(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    sub_10001074C(&v17, &qword_100638E60, &unk_10051A920);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_10;
  }

  v13 = swift_dynamicCast();
  (*(v5 + 56))(v3, v13 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    goto LABEL_12;
  }

LABEL_10:
  sub_1004D825C();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    sub_10001074C(v3, &qword_100636E60, &qword_10051A950);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100284EF0(v7);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100284EF0(void *a1)
{
  v2 = v1;
  v40 = a1;
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = sub_1004D826C();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin();
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100637610, qword_100524990);
  __chkstk_darwin();
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v39 - v10;
  v12 = type metadata accessor for Signpost(0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  sub_1000108DC(v2 + v16, v11, &qword_100637610, qword_100524990);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001074C(v11, &qword_100637610, qword_100524990);
  }

  else
  {
    sub_10028BE08(v11, v15, type metadata accessor for Signpost);
    Signpost.end(dso:)(&_mh_execute_header);
    sub_10028C1C4(v15, type metadata accessor for Signpost);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_1000107AC(v9, v2 + v16, &qword_100637610, qword_100524990);
    swift_endAccess();
  }

  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  sub_1000108DC(v2 + v17, v5, &qword_100636E60, &qword_10051A950);
  v19 = v42;
  v18 = v43;
  if ((*(v42 + 48))(v5, 1, v43) != 1)
  {
    (*(v19 + 32))(v41, v5, v18);
    sub_1004D819C();
    v25 = v24;
    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v26 = sub_1004D966C();
    sub_100035430(v26, static Logger.groupActivities);
    v27 = sub_1004D964C();
    v28 = sub_1004DDF9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "endMeasuringInitiationTime: %f", v29, 0xCu);
    }

    if (v25 <= 10.0)
    {
      goto LABEL_19;
    }

    v30 = objc_opt_self();
    v31 = sub_1002865C0();
    v32 = sub_1004DD3FC();
    v33 = sub_1004DD3FC();
    v34 = sub_1004DD3FC();
    if (*&v25 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v44 = v25;
        v40 = v34;
        v35 = v31;
        sub_1004DEFFC();
        v36 = sub_1004DD3FC();

        v37 = v40;
        [v30 snapshotWithDomain:v35 type:v32 subType:v33 context:v40 triggerThresholdValues:v36 events:0 completion:0];

LABEL_19:
        (*(v19 + 8))(v41, v18);
        v38 = v39;
        (*(v19 + 56))(v39, 1, 1, v18);
        swift_beginAccess();
        sub_1000107AC(v38, v2 + v17, &qword_100636E60, &qword_10051A950);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_10001074C(v5, &qword_100636E60, &qword_10051A950);
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v20 = sub_1004D966C();
  sub_100035430(v20, static Logger.groupActivities);
  v21 = sub_1004D964C();
  v22 = sub_1004DDF7C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Attempting to endMeasuringInitiationTime but there was no begin time.", v23, 2u);
  }
}

double sub_100285620(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100279DD8();
  }

  return result;
}

uint64_t GroupActivitiesManager.__allocating_init(coordinator:)(void *a1)
{
  v2 = swift_allocObject();
  GroupActivitiesManager.init(coordinator:)(a1);
  return v2;
}

uint64_t GroupActivitiesManager.init(coordinator:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v36 = &v32 - v3;
  v33 = sub_100004CB8(&qword_10063C4B0, &qword_1005248B0);
  v4 = *(v33 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  v7 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v11 = sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v32 - v13;
  v34 = xmmword_100512770;
  *(v1 + 56) = xmmword_100512770;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  *&v37 = 0;
  sub_1004D9B2C();
  (*(v12 + 32))(v2 + v15, v14, v11);
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  LOBYTE(v37) = 0;
  sub_1004D9B2C();
  (*(v8 + 32))(v2 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  sub_100004CB8(&qword_10063C4A0, &qword_100524860);
  sub_1004D9B2C();
  (*(v4 + 32))(v2 + v17, v6, v33);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount) = 0;
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionStateObserver;
  sub_1004D88EC();
  *(v2 + v18) = sub_1004D88DC();
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions) = &_swiftEmptySetSingleton;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress) = 0;
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  v20 = type metadata accessor for GroupActivitiesManager.Activity(0);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = 0;
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  v22 = type metadata accessor for Signpost(0);
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  *(v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain) = 0;
  v23 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  v24 = sub_1004D826C();
  (*(*(v24 - 8) + 56))(v2 + v23, 1, 1, v24);
  v25 = v2 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  *v25 = v34;
  *(v25 + 16) = 0;
  v26 = v35;
  sub_100035868(v35, v2 + 16);
  type metadata accessor for GroupActivitiesManager.State(0);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v2 + 88) = v27;
  v28 = sub_1004DDA8C();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;

  sub_10011F560(0, 0, v29, &unk_100524980, v30);

  sub_100008D24(v26);
  return v2;
}

uint64_t sub_100285C10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035B28;

  return sub_100285CA0();
}

uint64_t sub_100285CA0()
{
  v1[5] = v0;
  v2 = sub_100004CB8(&qword_10063CCA0, &qword_100524E80);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_100004CB8(&qword_10063CCA8, &qword_100524E88);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_1004DDA4C();
  v1[13] = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_100285E0C, v5, v4);
}

uint64_t sub_100285E0C()
{
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  v0[16] = sub_100035430(v1, static Logger.groupActivities);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  sub_1004D8ADC();
  sub_1004D8A6C();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = sub_1004DDA3C();
  v9 = sub_100042B08(&qword_10063CCB0, &qword_10063CCA8, &qword_100524E88, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_10028605C;
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

uint64_t sub_10028605C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100286534;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004DD9BC();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1002861F4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1002861F4()
{

  v0[23] = v0[2];
  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(sub_100286260, v1, v2);
}

uint64_t sub_100286260()
{
  v16 = v0;
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[5];
    if (*(v2 + v0[17]) == 1)
    {

      v3 = sub_1004D964C();
      v4 = sub_1004DDF9C();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136446210;
        v0[4] = v1;

        sub_100004CB8(&qword_10063CCB8, &qword_100524E90);
        v7 = sub_1004DD50C();
        v9 = sub_1000343A8(v7, v8, &v15);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "leaveCommand in progress, setting pendingSession=%{public}s", v5, 0xCu);
        sub_100008D24(v6);
      }

      *(v0[5] + v0[19]) = v0[23];
    }

    else
    {
      *(v2 + v0[18]) = v1;
      swift_retain_n();

      sub_100281CCC();
    }

    v0[20] = sub_1004DDA3C();
    v12 = sub_100042B08(&qword_10063CCB0, &qword_10063CCA8, &qword_100524E88, &protocol conformance descriptor for GroupSession<A>.Sessions.Iterator);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_10028605C;
    v14 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v14, v12);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100286534()
{
  *(v0 + 24) = *(v0 + 176);
  sub_100004CB8(&qword_100638980, &qword_100515B30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_1002865C0()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager____lazy_storage___autoBugCaptureDomain);
  }

  else
  {
    v4 = sub_1004DD3FC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100286630(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_10028C498(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t sub_100286694(uint64_t a1)
{
  v1[2] = a1;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  v1[3] = swift_task_alloc();
  v2 = sub_1004D809C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1004DDA4C();
  v1[7] = sub_1004DDA3C();
  v4 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002867C0, v4, v3);
}

uint64_t sub_1002867C0()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    sub_1004D805C();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10001074C(*(v0 + 24), &qword_100634B30, &unk_100513D70);
    }

    else
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 32);
      (*(v6 + 32))(v5, *(v0 + 24), v7);
      sub_1004D7FDC(v8);
      v10 = v9;
      sub_10005E644(_swiftEmptyArrayStorage);
      isa = sub_1004DD1FC().super.isa;

      [v1 openSensitiveURL:v10 withOptions:isa];

      (*(v6 + 8))(v5, v7);
    }
  }

  **(v0 + 16) = v1 == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100286988()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100286A18();
}

uint64_t sub_100286A18()
{
  v1[25] = v0;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  v1[26] = swift_task_alloc();
  sub_100004CB8(&qword_100636410, &qword_100518A18);
  v1[27] = swift_task_alloc();
  v2 = sub_100004CB8(&unk_10063CDA0, &qword_1005201B0);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_100004CB8(&qword_10063AD40, &qword_100521688);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_1004D95AC();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v1[40] = swift_task_alloc();
  v5 = sub_100004CB8(&qword_10063C3E8, &qword_100524720);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = sub_1004DDA4C();
  v1[46] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v1[47] = v7;
  v1[48] = v6;

  return _swift_task_switch(sub_100286D0C, v7, v6);
}

id sub_100286D0C()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  *(v0 + 392) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v3 = *(v1 + v2);
  *(v0 + 400) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);

  sub_1004D8A4C();
  *(v0 + 568) = enum case for GroupSession.State.waiting<A>(_:);
  v8 = *(v7 + 104);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);
  *(v0 + 424) = sub_10028C844(&qword_10063C3F0, type metadata accessor for GroupActivitiesManager.Activity, &protocol conformance descriptor for GroupActivitiesManager.Activity);
  v9 = sub_1004D8A2C();
  v10 = *(v7 + 8);
  *(v0 + 432) = v10;
  *(v0 + 440) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v10(v4, v6);
  if (v9)
  {
    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v11 = sub_1004D966C();
    *(v0 + 448) = sub_100035430(v11, static Logger.groupActivities);
    v12 = sub_1004D964C();
    v13 = sub_1004DDF9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to join", v14, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v15 = *(v0 + 572);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 573) = 1;

    sub_1004D9B7C();
    sub_100279AF8(v15);
    if (*(v1 + v2))
    {
      v16 = *(v0 + 320);

      sub_1004D8A7C();

      v17 = *(v16 + 48);
      if (v17)
      {
        v18 = *(v0 + 320);
        v19 = *(v17 + 16);
        *(v0 + 456) = v19;
        v20 = v19;
        sub_10028C1C4(v18, type metadata accessor for GroupActivitiesManager.Activity);
        v21 = objc_allocWithZone(ICLiveLinkIdentity);
        v22 = swift_allocObject();
        *(v22 + 16) = sub_10028F088;
        *(v22 + 24) = v3;
        *(v0 + 48) = sub_10001E39C;
        *(v0 + 56) = v22;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_10001E3C4;
        *(v0 + 40) = &unk_1005E9A00;
        v23 = _Block_copy((v0 + 16));

        v24 = [v21 initWithBlock:v23];
        *(v0 + 464) = v24;
        _Block_release(v23);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_42:
          swift_once();
LABEL_36:
          v49 = sub_1004D95EC();
          *(v0 + 480) = sub_100035430(v49, static OSSignposter.sharePlay);
          sub_1004D959C();
          v50 = sub_1004D95CC();
          v51 = sub_1004DE22C();
          if (sub_1004DE78C())
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = sub_1004D958C();
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, v51, v53, "AddIntent", "", v52, 2u);
          }

          v54 = *(v0 + 296);
          v55 = *(v0 + 304);
          v56 = *(v0 + 272);
          v57 = *(v0 + 280);
          v58 = *(v0 + 200);

          v59 = *(v57 + 16);
          *(v0 + 488) = v59;
          *(v0 + 496) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v59(v54, v55, v56);
          *(v0 + 504) = sub_1004D962C();
          swift_allocObject();
          *(v0 + 512) = sub_1004D961C();
          v60 = *(v57 + 8);
          *(v0 + 520) = v60;
          *(v0 + 528) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60(v55, v56);
          swift_beginAccess();
          v61 = v58[5];
          v62 = v58[6];
          sub_100008C70(v58 + 2, v61);
          v63 = *(v61 - 8);
          v64 = swift_task_alloc();
          *(v0 + 536) = v64;
          (*(v63 + 16))();
          v65 = (*(v62 + 48))(v61, v62);
          *(v0 + 544) = v65;
          (*(v63 + 8))(v64, v61);
          *(v0 + 176) = v58;

          v66 = sub_1004DD50C();
          *(v0 + 88) = &type metadata for Player.CommandIssuerIdentity;
          *(v0 + 96) = &protocol witness table for Player.CommandIssuerIdentity;
          *(v0 + 64) = v66;
          *(v0 + 72) = v67;
          v68 = swift_task_alloc();
          *(v0 + 552) = v68;
          *v68 = v0;
          v68[1] = sub_10028791C;

          return static SharedListening.addIntent(_:playbackController:issuer:)(isEscapingClosureAtFileLocation, v65, v0 + 64);
        }

        v26 = [objc_opt_self() sharedSessionIntentWithProperties:v20 identity:v24];
        *(v0 + 472) = v26;
        if (v26)
        {
          isEscapingClosureAtFileLocation = v26;
          if (sub_1004D89FC() & 1) != 0 && (sub_1004D89CC())
          {
            v27 = 20;
          }

          else
          {
            v27 = 10;
          }

          [isEscapingClosureAtFileLocation setActionAfterQueueLoad:v27];

          v36 = sub_1004D964C();
          v37 = sub_1004DDF9C();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v69 = v39;
            *v38 = 67240706;
            *(v38 + 4) = sub_1004D89FC() & 1;
            *(v38 + 8) = 1026;
            *(v38 + 10) = sub_1004D89CC() & 1;

            *(v38 + 14) = 2082;
            result = MPNSStringFromQueueLoadAction();
            if (!result)
            {
              __break(1u);
              return result;
            }

            v40 = result;
            v41 = sub_1004DD43C();
            v43 = v42;

            v44 = sub_1000343A8(v41, v43, &v69);

            *(v38 + 16) = v44;
            _os_log_impl(&_mh_execute_header, v36, v37, "Will join session isLocallyInitiated=%{BOOL,public}d\n/ isFirstJoin=%{BOOL,public}d.\n-> actionAfterQueueLoad=%{public}s", v38, 0x18u);
            sub_100008D24(v39);
          }

          else
          {
          }

          if (qword_1006344A8 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_42;
        }

        v45 = sub_1004D964C();
        v46 = sub_1004DDF9C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failed to retrieve shared playback intent", v47, 2u);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1004D9B6C();

        v48 = *(v0 + 576);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 577) = 0;

        sub_1004D9B7C();
        v33 = v48;
        goto LABEL_23;
      }

      v28 = *(v0 + 320);

      sub_10028C1C4(v28, type metadata accessor for GroupActivitiesManager.Activity);
    }

    else
    {
    }

    if (qword_100633E90 != -1)
    {
      swift_once();
    }

    sub_100035430(v11, static Logger.sharedListening);
    v29 = sub_1004D964C();
    v30 = sub_1004DDF7C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Session properties missing in activity", v31, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v32 = *(v0 + 574);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 575) = 0;

    sub_1004D9B7C();
    v33 = v32;
LABEL_23:
    sub_100279AF8(v33);
    goto LABEL_24;
  }

LABEL_24:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10028791C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_10028843C;
  }

  else
  {
    sub_10001074C(v2 + 64, &qword_100635998, &unk_100522780);

    v4 = *(v2 + 376);
    v5 = *(v2 + 384);
    v6 = sub_100287A74;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100287A74()
{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 392);
  v3 = *(v0 + 200);

  sub_10028986C(v1);

  v4 = *(v3 + v2);
  if (!v4)
  {
    v45 = 0;
LABEL_14:
    v48 = *(v0 + 464);
    v49 = *(v0 + 472);
    v50 = *(v0 + 456);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    sub_10028CAC0();
    v53 = swift_allocError();
    *v54 = v45;
    *(v54 + 8) = 1;

    sub_10027CE88(v53, 0);

    v55 = sub_1004DDA8C();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);

    v56 = sub_1004DDA3C();
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = &protocol witness table for MainActor;
    v57[4] = v51;
    sub_10011F560(0, 0, v52, &unk_100524FB0, v57);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    LOBYTE(v52) = *(v0 + 580);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 581) = 0;

    sub_1004D9B7C();
    v58 = v52;
    goto LABEL_18;
  }

  v5 = *(v0 + 432);
  v67 = *(v0 + 408);
  v6 = *(v0 + 568);
  v8 = *(v0 + 344);
  v7 = *(v0 + 352);
  v9 = *(v0 + 328);

  sub_1004D8A4C();
  v67(v8, v6, v9);
  v10 = sub_1004D8A2C();
  v5(v8, v9);
  v5(v7, v9);
  if ((v10 & 1) == 0)
  {
    v46 = *(v0 + 392);
    v47 = *(v0 + 200);

    v45 = *(v47 + v46);
    goto LABEL_14;
  }

  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v72 = v14;
    *v13 = 136446210;
    *(v0 + 192) = v4;
    sub_100004CB8(&qword_10063CCB8, &qword_100524E90);
    sub_100042B08(&qword_10063CE18, &qword_10063CCB8, &qword_100524E90, &protocol conformance descriptor for GroupSession<A>);
    v15 = sub_1004DEFFC();
    v17 = sub_1000343A8(v15, v16, &v72);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "🤝 Joining shared session=%{public}s", v13, 0xCu);
    sub_100008D24(v14);
  }

  sub_1004D959C();
  v18 = sub_1004D95CC();
  v19 = sub_1004DE22C();
  if (sub_1004DE78C())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1004D958C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v21, "JoinSession", "", v20, 2u);
  }

  v22 = *(v0 + 520);
  v23 = *(v0 + 488);
  v70 = *(v0 + 392);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 272);
  v27 = *(v0 + 200);

  v23(v24, v25, v26);
  swift_allocObject();
  v28 = sub_1004D961C();
  v22(v25, v26);
  *(v27 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState) = v28;

  if (*(v27 + v70))
  {

    sub_1004D8A1C();
  }

  v29 = *(v0 + 200);
  v30 = v29[5];
  v31 = v29[6];
  v32 = sub_100008C70(v29 + 2, v30);
  v33 = *(v30 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v30);
  v35 = (*(v31 + 48))(v30, v31);
  (*(v33 + 8))(v34, v30);
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v35[v36])
  {

LABEL_16:
    v59 = *(v0 + 464);
    v60 = *(v0 + 472);
    v61 = *(v0 + 456);

    v44 = 0;
    goto LABEL_17;
  }

  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v71 = *(v0 + 456);
  v37 = *(v0 + 264);
  v38 = *(v0 + 240);
  v65 = *(v0 + 248);
  v66 = *(v0 + 256);
  v40 = *(v0 + 224);
  v39 = *(v0 + 232);
  v41 = *(v0 + 216);

  swift_beginAccess();
  sub_100004CB8(&qword_100639F90, &qword_100520810);
  sub_1004D9B3C();
  swift_endAccess();

  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v42 = sub_1004DE14C();
  *(v0 + 184) = v42;
  v43 = sub_1004DE12C();
  (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
  sub_100042B08(&qword_10063A470, &unk_10063CDA0, &qword_1005201B0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100234838();
  sub_1004D9BDC();
  sub_10001074C(v41, &qword_100636410, &qword_100518A18);

  (*(v39 + 8))(v38, v40);

  swift_allocObject();
  swift_weakInit();
  sub_100042B08(&qword_10063AD50, &qword_10063AD40, &qword_100521688, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = sub_1004D9C0C();

  (*(v66 + 8))(v37, v65);
LABEL_17:
  *(*(v0 + 200) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = v44;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v62 = *(v0 + 582);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 583) = 0;

  sub_1004D9B7C();
  v58 = v62;
LABEL_18:
  sub_100279AF8(v58);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10028843C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 456);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);

  sub_10001074C(v0 + 64, &qword_100635998, &unk_100522780);

  sub_10028986C(v2);

  sub_10027CE88(v1, 0);
  v8 = sub_1004DDA8C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = sub_1004DDA3C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v6;
  sub_10011F560(0, 0, v7, &unk_100524FA0, v10);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  LOBYTE(v1) = *(v0 + 578);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 579) = 0;

  sub_1004D9B7C();
  sub_100279AF8(v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002886E0(int a1)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_1004D82AC();
  v3 = *(v35 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v6 = sub_1004DD3EC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  sub_100004CB8(&qword_100634F40, &qword_100515800);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100511DA0;
  sub_1004DD37C();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v13 = qword_100671958;
  sub_1004D838C();
  v14 = sub_1004DD4AC();
  v16 = v15;
  (*(v7 + 8))(v11, v6);

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v17 = sub_1004D827C();
  v19 = v18;
  (*(v3 + 8))(v5, v35);
  *(v12 + 32) = v17;
  *(v12 + 40) = v19;
  *(v12 + 48) = v14;
  *(v12 + 56) = v16;
  *(v12 + 64) = 0;
  *(v12 + 72) = &unk_100524FD8;
  *(v12 + 80) = v2;
  v20 = v36;
  sub_10028A600(v36 & 1, &v40);
  v21 = v41;
  if (v41)
  {
    v22 = v40;
    v24 = *(v12 + 16);
    v23 = *(v12 + 24);
    if (v24 >= v23 >> 1)
    {
      v12 = sub_10003A840((v23 > 1), v24 + 1, 1, v12);
    }

    *(v12 + 16) = v24 + 1;
    v25 = v12 + 56 * v24;
    *(v25 + 32) = v22;
    *(v25 + 40) = v21;
    v26 = v43;
    *(v25 + 48) = v42;
    *(v25 + 64) = v26;
    *(v25 + 80) = v44;
  }

  v27 = sub_10028A1D8(v20 & 1);
  v29 = v28;
  v30 = sub_10028A3EC(v20 & 1);
  LOBYTE(v37[0]) = 1;
  v45[0] = v27;
  v45[1] = v29;
  v45[2] = v30;
  v45[3] = v31;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = v12;
  v50 = 0;
  swift_beginAccess();
  sub_100035868(v2 + 16, v37);
  v32 = v38;
  v33 = v39;
  sub_100008C70(v37, v38);
  (*(v33 + 32))(v45, v32, v33);
  sub_100074384(v45);
  return sub_100008D24(v37);
}

uint64_t sub_100288B10()
{
  v1 = v0[26];
  swift_beginAccess();
  sub_100035868(v1 + 16, (v0 + 18));
  v2 = v0[21];
  v3 = v0[22];
  sub_100008C70(v0 + 18, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100288C58;

  return v6(v2, v3);
}

uint64_t sub_100288C58(char a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_100288D58, 0, 0);
}

uint64_t sub_100288D58()
{
  sub_100008D24((v0 + 144));
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  sub_100035430(v1, static Logger.groupActivities);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛂 User did authenticate=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 232);

  if (v6 == 1)
  {
    v7 = [objc_opt_self() defaultIdentityStore];
    *(v0 + 224) = v7;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100288FC0;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_100004CB8(&unk_10063CE20, &unk_100524FC0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100289100;
    *(v0 + 104) = &unk_1005E9A78;
    *(v0 + 112) = v8;
    [v7 synchronizeWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(*(v0 + 208) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_1004D8A3C();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100288FC0()
{

  return _swift_task_switch(sub_1002890A0, 0, 0);
}

uint64_t sub_1002890A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100289100(uint64_t a1)
{
  sub_100008C70((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_100289154()
{
  v1 = v0[10];
  swift_beginAccess();
  sub_100035868(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_100008C70(v0 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10028929C;

  return v6(v2, v3);
}

uint64_t sub_10028929C(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10028939C, 0, 0);
}

uint64_t sub_10028939C()
{
  v1 = *(v0 + 96);
  sub_100008D24((v0 + 16));
  if (v1 != 2 && (*(v0 + 96) & 1) == 0)
  {
    if (*(*(v0 + 80) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
    {

      sub_1004D8A3C();
    }

    if (qword_100633E70 != -1)
    {
      swift_once();
    }

    v2 = sub_1004D966C();
    sub_100035430(v2, static Logger.groupActivities);
    v3 = sub_1004D964C();
    v4 = sub_1004DDF9C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "🛂 User did not complete the subscription flow", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1002894F4(void *a1)
{
  v2 = sub_1004D82AC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D8AFC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D89DC();
  sub_1004D8AEC();
  (*(v7 + 8))(v9, v6);
  v10 = sub_1004D827C();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v23._countAndFlagsBits = 0x616C506572616853;
  v23._object = 0xEC0000003D444979;
  if (sub_1004DD68C(v23))
  {
  }

  else
  {
    strcpy(v22, "SharePlayID=");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    v24._countAndFlagsBits = v10;
    v24._object = v12;
    sub_1004DD5FC(v24);
  }

  v13 = sub_1004DD3FC();

  [a1 setExternalIdentifier:v13];

  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v14 = sub_1004D966C();
  sub_100035430(v14, static Logger.groupActivities);

  v15 = sub_1004D964C();
  v16 = sub_1004DDF9C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136446210;
    v25._countAndFlagsBits = 0x616C506572616853;
    v25._object = 0xEC0000003D444979;
    if (!sub_1004DD68C(v25))
    {
      strcpy(v22, "SharePlayID=");
      BYTE5(v22[1]) = 0;
      HIWORD(v22[1]) = -5120;
      v26._countAndFlagsBits = v10;
      v26._object = v12;
      sub_1004DD5FC(v26);

      v10 = v22[0];
      v12 = v22[1];
    }

    v19 = sub_1000343A8(v10, v12, &v21);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "externalID identity=%{public}s", v17, 0xCu);
    sub_100008D24(v18);
  }

  else
  {
  }
}

uint64_t sub_10028986C(uint64_t a1)
{
  v1 = sub_1004D95FC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004D95AC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006344A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1004D95EC();
  sub_100035430(v9, static OSSignposter.sharePlay);
  v10 = sub_1004D95CC();
  sub_1004D960C();
  v11 = sub_1004DE21C();
  if (sub_1004DE78C())
  {

    sub_1004D963C();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1004D958C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "AddIntent", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100289AF8()
{
  v0[2] = sub_1004DDA4C();
  v0[3] = sub_1004DDA3C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100289BA8;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_100289BA8()
{

  v1 = sub_1004DD9BC();

  return _swift_task_switch(sub_10020D294, v1, v0);
}

uint64_t sub_100289CE4()
{
  v0[2] = sub_1004DDA4C();
  v0[3] = sub_1004DDA3C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100289D94;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

uint64_t sub_100289D94()
{

  v1 = sub_1004DD9BC();

  return _swift_task_switch(sub_10028FB7C, v1, v0);
}

void sub_100289ED0(id *a1, uint64_t a2)
{
  if (!*a1)
  {
    return;
  }

  v15 = *a1;
  if (![v15 isSharedListeningSession])
  {
    goto LABEL_6;
  }

  v2 = [v15 tracklist];
  v14 = [v2 playingItem];

  if (!v14)
  {
    goto LABEL_6;
  }

  if ([v14 isPlaceholder])
  {

LABEL_6:
    v3 = v15;
LABEL_7:

    return;
  }

  v4 = [v14 metadataObject];
  if (!v4)
  {
LABEL_17:

    v3 = v14;
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 innermostModelObject];

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = sub_100281C34(v16);
    v11 = v10;
    v12 = type metadata accessor for GroupActivitiesManager.Activity(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      type metadata accessor for CodableModelObjectIdentity();
      v13 = swift_allocObject();
      *(v13 + 16) = v8;
      *(v11 + 56) = v13;
      v6 = v6;
    }

    v9(v16, 0);
  }

  else
  {
  }
}

uint64_t sub_10028A12C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session) != 0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10007F594;

  return GroupActivitiesManager.leave(performLeaveCommand:)(v1);
}

uint64_t sub_10028A1D8(char a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004DD37C();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v7 = qword_100671958;
  sub_1004D838C();
  v8 = sub_1004DD4AC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_10028A3EC(char a1)
{
  sub_1004D83FC();
  __chkstk_darwin();
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004DD37C();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v7 = qword_100671958;
  sub_1004D838C();
  v8 = sub_1004DD4AC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

void sub_10028A600(int a1@<W0>, uint64_t *a2@<X8>)
{
  v24 = a1;
  v3 = sub_1004D82AC();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin();
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D83FC();
  __chkstk_darwin();
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v24)
  {
    sub_1004DD37C();
    (*(v6 + 16))(v8, v10, v5);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v17 = qword_100671958;
    sub_1004D838C();
    v13 = sub_1004DD4AC();
    v14 = v18;
    (*(v6 + 8))(v10, v5);
    v19 = v21;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v11 = sub_1004D827C();
    v12 = v20;
    (*(v22 + 8))(v19, v23);
    v16 = &unk_100524FE0;
    v15 = 2;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = 0;
}

uint64_t sub_10028A8F4()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openMusicSettings()();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10028A97C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return GroupActivitiesManager.leave(performLeaveCommand:)(1);
}

char *GroupActivitiesManager.deinit()
{
  sub_100008D24(v0 + 2);
  sub_10028C224(*(v0 + 7), *(v0 + 8), *(v0 + 9), *(v0 + 10));

  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__participantsCount;
  v2 = sub_100004CB8(&qword_10063C0E8, &qword_1005243D8);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__isLoading;
  v4 = sub_100004CB8(&qword_100638EF8, &qword_100526600);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager__reaction;
  v6 = sub_100004CB8(&qword_10063C4B0, &qword_1005248B0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);

  sub_10001074C(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity], &qword_10063C528, &qword_100524988);

  sub_10001074C(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame], &qword_100637610, qword_100524990);

  sub_10001074C(&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate], &qword_100636E60, &qword_10051A950);
  sub_10028CF08(*&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext], *&v0[OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8]);
  return v0;
}

uint64_t GroupActivitiesManager.__deallocating_deinit()
{
  GroupActivitiesManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10028AC70()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.groupActivities);
  sub_100035430(v0, static Logger.groupActivities);
  sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
  sub_1004DE7BC();
  return sub_1004D967C();
}

uint64_t static Logger.groupActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.groupActivities);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10028ADC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1004DD6EC();
  }

  __break(1u);
  return result;
}

uint64_t sub_10028AE0C()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_10028AE44(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1004DF08C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();

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

uint64_t sub_10028AF28(uint64_t a1)
{
  v2 = sub_10028DE14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028AF64(uint64_t a1)
{
  v2 = sub_10028DE14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028AFA0(void *a1)
{
  v4 = sub_100004CB8(&qword_10063CC40, &qword_100524E50);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - v6;
  sub_100008C70(a1, a1[3]);
  sub_10028DE14();
  sub_1004DF2FC();
  if (v2)
  {
    type metadata accessor for CodableListeningProperties();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    sub_1004DEE8C();
    v13 = 1;
    v12[1] = sub_1004DEE8C();
    v9 = sub_1004DD3FC();

    v10 = sub_1004DD3FC();

    v11 = [objc_opt_self() propertiesWithSessionIdentifier:v9 sessionKey:v10];

    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v11;
  }

  sub_100008D24(a1);
  return v1;
}

void sub_10028B1F0(void *a1)
{
  v3 = v1;
  v5 = sub_100004CB8(&qword_10063CC90, &qword_100524E68);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12[-v7];
  sub_100008C70(a1, a1[3]);
  sub_10028DE14();
  sub_1004DF30C();
  v9 = *(v3 + 16);
  v10 = [v9 sessionIdentifier];
  sub_1004DD43C();

  v12[15] = 0;
  sub_1004DEF1C();
  if (!v2)
  {

    v11 = [v9 sessionKey];
    sub_1004DD43C();

    v12[14] = 1;
    sub_1004DEF1C();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_10028B44C()
{
  if (*v0)
  {
    return 0x616C436C65646F6DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_10028B49C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (sub_1004DF08C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616C436C65646F6DLL && a2 == 0xEE00656D614E7373)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();

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

uint64_t sub_10028B584(uint64_t a1)
{
  v2 = sub_10028DE68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10028B5C0(uint64_t a1)
{
  v2 = sub_10028DE68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10028B5FC(void *a1)
{
  v3 = v1;
  v5 = sub_100004CB8(&qword_10063CC50, &qword_100524E58);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  sub_100008C70(a1, a1[3]);
  sub_10028DE68();
  sub_1004DF2FC();
  if (!v2)
  {
    v34 = 0;
    sub_10028DEBC();
    sub_1004DEECC();
    v10 = aBlock;
    v9 = v29;
    sub_100006F10(0, &unk_10063CC68, NSKeyedUnarchiver_ptr);
    sub_100006F10(0, &unk_100637FD0, MPIdentifierSet_ptr);
    v11 = sub_1004DE0BC();
    if (v11)
    {
      v27 = v11;
      LOBYTE(aBlock) = 1;
      sub_1004DEE8C();
      v26 = sub_1004DD3FC();

      v14 = v26;
      v25 = NSClassFromString(v26);

      if (v25)
      {
        swift_getObjCClassMetadata();
        sub_100006F10(0, &qword_100637290, MPModelObject_ptr);
        v15 = swift_dynamicCastMetatype();
        if (v15)
        {
          if (qword_100633E80 != -1)
          {
            v23 = v15;
            swift_once();
            v15 = v23;
          }

          v16 = *(off_10063CE80 + 2);
          v17 = (off_10063CE80 + 32);
          while (v16)
          {
            v18 = *v17++;
            --v16;
            if (v18 == v15)
            {
              v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              v32 = CFRange.init(_:);
              v33 = 0;
              aBlock = _NSConcreteStackBlock;
              v29 = 1107296256;
              v30 = sub_10001E3C4;
              v31 = &unk_1005E97F8;
              v26 = _Block_copy(&aBlock);
              v20 = v19;
              v21 = v27;
              v25 = [v20 initWithIdentifiers:v27 block:v26];
              sub_100010598(v10, v9);

              _Block_release(v26);
              (*(v6 + 8))(v8, v5);

              result = swift_isEscapingClosureAtFileLocation();
              if ((result & 1) == 0)
              {
                *(v3 + 16) = v25;
                goto LABEL_6;
              }

              __break(1u);
              return result;
            }
          }
        }
      }

      sub_10028DF10();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      sub_100010598(v10, v9);
    }

    else
    {
      sub_10028DF10();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      sub_100010598(v10, v9);
    }

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for CodableModelObjectIdentity();
  swift_deallocPartialClassInstance();
LABEL_6:
  sub_100008D24(a1);
  return v3;
}

uint64_t sub_10028BA78(void *a1)
{
  v3 = v1;
  v5 = sub_100004CB8(&qword_10063CC80, &qword_100524E60);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20[-v7];
  sub_100008C70(a1, a1[3]);
  sub_10028DE68();
  sub_1004DF30C();
  v9 = objc_opt_self();
  v10 = [*(v3 + 16) identifiers];
  v21[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v21];

  v12 = v21[0];
  if (v11)
  {
    v13 = sub_1004D810C();
    v15 = v14;

    v21[0] = v13;
    v21[1] = v15;
    v20[7] = 0;
    sub_10028DF7C();
    sub_1004DEF5C();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      sub_1004DD43C();

      LOBYTE(v21[0]) = 1;
      sub_1004DEF1C();
      (*(v6 + 8))(v8, v5);
    }

    return sub_100010598(v13, v15);
  }

  else
  {
    v16 = v12;
    sub_1004D7F4C();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}