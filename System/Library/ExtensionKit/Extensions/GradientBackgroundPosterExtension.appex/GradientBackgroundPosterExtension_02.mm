id sub_10002C0F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientTranscriptBackgroundPosterController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002C1F4(uint64_t a1)
{
  result = sub_10004166C();
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

uint64_t sub_10002C2B8(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1].i64[0];
  if (!v3)
  {
    return 0;
  }

  result = 0;
  for (i = a1 + 3; (vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(i[-1], a2), vceqq_f32(*i, a3)))) & 1) == 0; i += 2)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C31C()
{

  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_10002C42C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_10002C494(uint64_t a1, uint64_t a2)
{
  sub_100041F1C();
  sub_1000418BC();
  v4 = sub_100041F3C();

  return sub_10002C71C(a1, a2, v4);
}

unint64_t sub_10002C50C(float *a1)
{
  sub_100041F1C();
  sub_10001AB00();
  sub_1000418BC();

  v2 = sub_100041F3C();

  return sub_10002C7D4(a1, v2);
}

unint64_t sub_10002C594(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100041CDC(*(v2 + 40));

  return sub_10002C944(a1, v4);
}

unint64_t sub_10002C5D8(uint64_t a1)
{
  sub_100041F1C();
  type metadata accessor for CFString(0);
  sub_100037AE8(&qword_10005F350, type metadata accessor for CFString, &unk_100043FBC);
  sub_1000415CC();
  v2 = sub_100041F3C();

  return sub_10002CA0C(a1, v2);
}

unint64_t sub_10002C68C(uint64_t a1)
{
  sub_1000417FC();
  sub_100041F1C();
  sub_1000418BC();
  v2 = sub_100041F3C();

  return sub_10002CB18(a1, v2);
}

unint64_t sub_10002C71C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100041EEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10002C7D4(float *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = *(v2 + 48);
    do
    {
      v9 = v8 + (v4 << 6);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v9 + 32);
      v14 = *(v9 + 40);
      v13 = *(v9 + 48);
      v15 = *(v9 + 56);
      v16 = *(v9 + 60);
      v17 = *v9 == v6 && *(v9 + 8) == v7;
      if (!v17 && (sub_100041EEC() & 1) == 0)
      {
        goto LABEL_4;
      }

      v18 = *(a1 + 3);
      if (v10)
      {
        if (!v18)
        {
          goto LABEL_4;
        }

        v19 = v11 == *(a1 + 2) && v10 == v18;
        if (!v19 && (sub_100041EEC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v18)
      {
        goto LABEL_4;
      }

      if (v12 == a1[8] && v14 == *(a1 + 5) && v13 == *(a1 + 6) && v15 == a1[14] && v16 == (a1[15] & 1))
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v21;
    }

    while (((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002C944(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100037094(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100041CEC();
      sub_10000BAB0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002CA0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100037AE8(&qword_10005F350, type metadata accessor for CFString, &unk_100043FBC);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000415BC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002CB18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1000417FC();
      v8 = v7;
      if (v6 == sub_1000417FC() && v8 == v9)
      {
        break;
      }

      v11 = sub_100041EEC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10002CC1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000054B8(&qword_10005F358, &qword_100045500);
  v48 = v4;
  result = sub_100041DFC();
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
    v47 = v5;
    v45 = v2;
    v46 = v13;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v20 = (v12 - 1) & v12;
LABEL_15:
      v23 = v19 | (v8 << 6);
      v51 = v20;
      if (v48)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + (v23 << 6);
        v26 = *v25;
        v27 = *(v25 + 8);
        v50 = *(v25 + 16);
        v49 = *(v25 + 24);
        v28 = *(v25 + 32);
        v30 = *(v25 + 40);
        v29 = *(v25 + 48);
        v31 = *(v25 + 56);
        v52 = *(v25 + 60);
        v53 = *(v24 + 8 * v23);
      }

      else
      {
        v32 = (*(v5 + 48) + (v23 << 6));
        v33 = *v32;
        v34 = v32[1];
        v35 = v32[2];
        *&v55[13] = *(v32 + 45);
        v54[1] = v34;
        *v55 = v35;
        v54[0] = v33;
        v36 = *(*(v5 + 56) + 8 * v23);
        v52 = v55[28];
        v31 = *&v55[24];
        v30 = *(&v35 + 1);
        v29 = *&v55[16];
        v28 = v35;
        v49 = *(&v34 + 1);
        v50 = v34;
        v27 = *(&v33 + 1);
        v26 = v33;
        sub_1000072B8(v54, v56);
        v53 = v36;
      }

      sub_100041F1C();
      v56[0] = 0;
      v56[1] = 0xE000000000000000;
      v57._countAndFlagsBits = v26;
      v57._object = v27;
      sub_1000418CC(v57);
      v58._countAndFlagsBits = 45;
      v58._object = 0xE100000000000000;
      sub_1000418CC(v58);
      v59._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v59);

      v60._countAndFlagsBits = 45;
      v60._object = 0xE100000000000000;
      sub_1000418CC(v60);
      v61._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v61);

      v62._countAndFlagsBits = 45;
      v62._object = 0xE100000000000000;
      sub_1000418CC(v62);
      sub_100041A3C();
      v63._countAndFlagsBits = 45;
      v63._object = 0xE100000000000000;
      sub_1000418CC(v63);
      sub_100041A3C();
      sub_1000418BC();

      result = sub_100041F3C();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v27;
        v16 = v26;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v27;
      v16 = v26;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + (v15 << 6);
      *v18 = v16;
      *(v18 + 8) = v17;
      *(v18 + 16) = v50;
      *(v18 + 24) = v49;
      *(v18 + 32) = v28;
      v12 = v51;
      *(v18 + 40) = v30;
      *(v18 + 48) = v29;
      *(v18 + 56) = v31;
      *(v18 + 60) = v52;
      *(*(v7 + 56) + 8 * v15) = v53;
      ++*(v7 + 16);
      v13 = v46;
      v5 = v47;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10002D074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000054B8(&qword_10005F1D0, &qword_100045430);
  v35 = v4;
  result = sub_100041DFC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100041F1C();
      sub_1000418BC();
      result = sub_100041F3C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10002D318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000054B8(&qword_10005F1D8, &qword_100045438);
  v34 = v4;
  result = sub_100041DFC();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100041F1C();
      sub_1000418BC();
      result = sub_100041F3C();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_10002D5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000054B8(&unk_10005F1E0, &unk_100045440);
  v33 = v4;
  result = sub_100041DFC();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000E988(v24, v34);
      }

      else
      {
        sub_10000B78C(v24, v34);
      }

      sub_100041F1C();
      sub_1000418BC();
      result = sub_100041F3C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000E988(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_10002D878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
  result = sub_100041DFC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10000E988((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100037094(v23, &v36);
        sub_10000B78C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100041CDC(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10000E988(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10002DB30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100041CCC() + 1) & ~v5;
    do
    {
      sub_100041F1C();

      sub_1000418BC();
      v9 = sub_100041F3C();

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

uint64_t sub_10002DCE0(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10002C50C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10002CC1C(v14, a3 & 1);
      v9 = sub_10002C50C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100041EFC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_10002E4D4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = (v19[6] + (v9 << 6));
    v22 = *a2;
    v23 = a2[1];
    v24 = a2[2];
    *(v21 + 45) = *(a2 + 45);
    v21[1] = v23;
    v21[2] = v24;
    *v21 = v22;
    *(v19[7] + 8 * v9) = a1;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return sub_1000072B8(a2, &v27);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_10002DE5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C494(a2, a3);
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
      sub_10002D074(v16, a4 & 1);
      v11 = sub_10002C494(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100041EFC();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10002E678();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_10002DFD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C494(a2, a3);
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
      sub_10002D318(v16, a4 & 1);
      v11 = sub_10002C494(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_100041EFC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10002E7E4();
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

_OWORD *sub_10002E150(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C494(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10002E954();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10002D5C0(v16, a4 & 1);
    v11 = sub_10002C494(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100041EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100005500(v22);

    return sub_10000E988(a1, v22);
  }

  else
  {
    sub_10002E3EC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10002E2A0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10002C594(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10002EAF8();
      goto LABEL_7;
    }

    sub_10002D878(v13, a3 & 1);
    v19 = sub_10002C594(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100037094(a2, v21);
      return sub_10002E458(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100041EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100005500(v17);

  return sub_10000E988(a1, v17);
}

_OWORD *sub_10002E3EC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000E988(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_10002E458(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000E988(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10002E4D4()
{
  v1 = v0;
  sub_1000054B8(&qword_10005F358, &qword_100045500);
  v2 = *v0;
  v3 = sub_100041DEC();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v25[13] = *(v18 + 45);
        v24[1] = v20;
        *v25 = v19;
        v24[0] = v21;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x3DuLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1000072B8(v24, &v23);
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

id sub_10002E678()
{
  v1 = v0;
  sub_1000054B8(&qword_10005F1D0, &qword_100045430);
  v2 = *v0;
  v3 = sub_100041DEC();
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

        result = v20;
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

void *sub_10002E7E4()
{
  v1 = v0;
  sub_1000054B8(&qword_10005F1D8, &qword_100045438);
  v2 = *v0;
  v3 = sub_100041DEC();
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

void *sub_10002E954()
{
  v1 = v0;
  sub_1000054B8(&unk_10005F1E0, &unk_100045440);
  v2 = *v0;
  v3 = sub_100041DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000B78C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000E988(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10002EAF8()
{
  v1 = v0;
  sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
  v2 = *v0;
  v3 = sub_100041DEC();
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
        v18 = 40 * v17;
        sub_100037094(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000B78C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000E988(v22, (*(v4 + 56) + v17));
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

uint64_t sub_10002EC9C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v20 = &type metadata for GradientTranscriptBackground;
  v21 = &off_100056488;
  v8 = swift_allocObject();
  *&v19 = v8;
  v8[1] = a4;
  v8[2] = a5;
  v17 = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
  v18 = &off_1000563F8;
  *&v16 = a2;
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  *(a3 + v9) = sub_100032FA4(&_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  *(a3 + v10) = sub_1000330A8(&_swiftEmptyArrayStorage);
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = 0;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;
  v12 = sub_10004166C();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  sub_10000B9F0(&v19, a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  sub_10000B9F0(&v16, a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_factory);
  return a3;
}

double sub_10002EE00@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v60 = &type metadata for GradientTranscriptBackground;
  v61 = &off_100056488;
  v6 = swift_allocObject();
  v59[0] = v6;
  v6[1] = a3;
  v6[2] = a4;
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor;
  v8 = 0.0;
  if (!*(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor))
  {
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    if ([qword_1000611A0 resumeFromLastPlayTime])
    {
      if (qword_10005CD78 != -1)
      {
        swift_once();
      }

      v9 = sub_10000BA6C(v59, &type metadata for GradientTranscriptBackground);
      v46 = *v9;
      v49 = v9[1];
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100044360;
      v11 = sub_1000229F4(v46);
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      v14 = sub_10000CBA4();
      *(v10 + 64) = v14;
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      v15 = sub_1000229F4(v49);
      *(v10 + 96) = &type metadata for String;
      *(v10 + 104) = v14;
      *(v10 + 72) = v15;
      *(v10 + 80) = v16;
      v17 = sub_10004181C();
      sub_10003803C(v17, v18);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        v8 = v22;
      }

      v23 = sub_10004164C();
      v24 = sub_100041A9C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v23, v24, "Effect time for snapshot: %f", v25, 0xCu);
      }
    }
  }

  v26 = sub_10000BA6C(v59, v60);
  v47 = *v26;
  v50 = v26[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100044360;
  v28 = sub_1000229F4(v47);
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_10000CBA4();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v32 = sub_1000229F4(v50);
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v31;
  *(v27 + 72) = v32;
  *(v27 + 80) = v33;
  v51 = sub_10004181C();
  v35 = v34;
  v36 = COERCE_DOUBLE(sub_100041EDC());
  v38 = v37;
  v39 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isSnapshotMode);
  v40 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isPreview);
  v41 = *(a1 + v7);
  if (v41)
  {
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    v42 = [qword_1000611A0 posterKitEditor];
    if (*(a1 + v7))
    {
      v43 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v42 = 0;
  }

  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v43 = [qword_1000611A0 resumeFromLastPlayTime];
LABEL_21:
  *&v52 = 0x746E656964617247;
  *(&v52 + 1) = 0xE800000000000000;
  *&v53 = v51;
  *(&v53 + 1) = v35;
  *&v54 = v36;
  *(&v54 + 1) = v38;
  *&v55 = 115;
  BYTE8(v55) = 0;
  *&v56 = 0;
  WORD4(v56) = 0;
  LOBYTE(v57) = v39;
  BYTE1(v57) = v40;
  BYTE2(v57) = v41 != 0;
  HIDWORD(v57) = 1090519040;
  LOWORD(v58) = 0;
  *(&v58 + 2) = 0;
  *(&v58 + 10) = v8;
  BYTE14(v58) = v42;
  HIBYTE(v58) = v43;
  nullsub_1();
  sub_100005500(v59);
  a2[4] = v56;
  a2[5] = xmmword_100045350;
  a2[6] = v57;
  *(a2 + 110) = v58;
  *a2 = v52;
  a2[1] = v53;
  result = v36;
  a2[2] = v54;
  a2[3] = v55;
  return result;
}

id sub_10002F2A4(uint64_t a1, __n128 a2, __n128 a3)
{
  v29[3] = &type metadata for GradientTranscriptBackground;
  v29[4] = &off_100056488;
  v4 = swift_allocObject();
  v29[0] = v4;
  v4[1] = a2;
  v4[2] = a3;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 posterKitEditor])
  {
    v5 = sub_10000BA6C(v29, &type metadata for GradientTranscriptBackground);
    v26 = *v5;
    v28 = v5[1];
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100044360;
    v7 = sub_1000229F4(v26);
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    v10 = sub_10000CBA4();
    *(v6 + 64) = v10;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v11 = sub_1000229F4(v28);
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
    *(v6 + 72) = v11;
    *(v6 + 80) = v12;
    v13 = sub_10004181C();
    v15 = v14;
    v16 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v17 = *(a1 + v16);
    if (!*(v17 + 16) || (, v18 = sub_10002C494(v13, v15), v20 = v19, , (v20 & 1) == 0))
    {

      v23 = 0;
      goto LABEL_10;
    }

    v21 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    swift_beginAccess();

    v21 = sub_100027F04(v22);
  }

  v23 = v21;

LABEL_10:
  sub_100005500(v29);
  return v23;
}

uint64_t sub_10002F4C4(uint64_t a1, __n128 a2, __n128 a3)
{
  v36 = &type metadata for GradientTranscriptBackground;
  v37 = &off_100056488;
  v4 = swift_allocObject();
  v35[0] = v4;
  v4[1] = a2;
  v4[2] = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = (a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v7 = sub_10000BA6C(v6, v6[3]);
    v29 = *v7;
    v32 = v7[1];
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100044360;
    v9 = sub_1000229F4(v29);
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_10000CBA4();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v13 = sub_1000229F4(v32);
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    v15 = sub_10004181C();
    v17 = v16;
    v18 = sub_10000BA6C(v35, v36);
    v30 = *v18;
    v33 = v18[1];
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100044360;
    v20 = sub_1000229F4(v30);
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v12;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    v22 = sub_1000229F4(v33);
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v12;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    if (v15 == sub_10004181C() && v17 == v24)
    {

      Strong = 1;
    }

    else
    {
      v25 = sub_100041EEC();

      if (v25)
      {

        Strong = 1;
      }

      else
      {
        if (qword_10005CD70 != -1)
        {
          swift_once();
        }

        v26 = qword_1000611A0;
        v27 = [v26 posterKitEditor];

        Strong = v27 ^ 1;
      }
    }
  }

  sub_100005500(v35);
  return Strong;
}

void sub_10002F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v152 = a5;
  v137 = a4;
  v155 = a2;
  v157 = a1;
  v8 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  __chkstk_darwin(v8 - 8);
  v142 = &v127 - v9;
  v10 = sub_10004168C();
  v139 = *(v10 - 8);
  v140 = v10;
  __chkstk_darwin(v10);
  v138 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1000414BC();
  v141 = *(v144 - 8);
  v12 = __chkstk_darwin(v144);
  v136 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v13;
  __chkstk_darwin(v12);
  v143 = &v127 - v14;
  v156 = sub_10004166C();
  v159 = *(v156 - 8);
  v15 = __chkstk_darwin(v156);
  v151 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = &v127 - v17;
  v154 = sub_10004163C();
  v158 = *(v154 - 8);
  __chkstk_darwin(v154);
  v153 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100041AFC();
  v148 = *(v19 - 8);
  v149 = v19;
  __chkstk_darwin(v19);
  v147 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100041BFC();
  __chkstk_darwin(v21);
  v146 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000416DC();
  v134 = *(v23 - 8);
  v135 = v23;
  __chkstk_darwin(v23);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165[3] = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
  v165[4] = &off_1000563F8;
  v165[0] = a3;
  v26 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *&a6[v26] = [objc_allocWithZone(VFXView) init];
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect] = 0;
  v27 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *&a6[v27] = v28;
  *(v28 + 16) = v29;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot] = 1;
  *(v28 + 24) = 0;
  v30 = &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  v30[4] = 1;
  *v30 = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;
  *(v28 + 32) = &_swiftEmptyArrayStorage;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling] = 0;
  v145 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  sub_1000416BC();
  *&v162 = &_swiftEmptyArrayStorage;
  sub_100037AE8(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v148 + 104))(v147, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v149);
  v132 = v25;
  *&a6[v145] = sub_100041C0C();
  v31 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v32 = swift_slowAlloc();
  v149 = v31;
  *&a6[v31] = v32;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
  v33 = &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed];
  *v33 = 0;
  v33[1] = 0;
  if (qword_10005CD28 != -1)
  {
    swift_once();
  }

  v34 = qword_100061090;
  sub_100041BEC();
  v145 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog;
  v35 = *(v34 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v36 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  v37 = v158;
  v38 = *(v158 + 16);
  v130 = v158 + 16;
  v131 = v36;
  v146 = v34;
  v39 = v34 + v36;
  v41 = v153;
  v40 = v154;
  v129 = v38;
  v38(v153, v39, v154);
  v42 = v35;
  sub_10004161C();

  v44 = *(v37 + 8);
  v43 = v37 + 8;
  v128 = v44;
  v44(v41, v40);
  v45 = v159 + 16;
  v46 = *(v159 + 16);
  v48 = v156;
  v47 = v157;
  (v46)(&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger], v157, v156);
  v49 = &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v50 = v155;
  v51 = *(v155 + 48);
  *(v49 + 2) = *(v155 + 32);
  *(v49 + 3) = v51;
  v52 = *(v50 + 16);
  *v49 = *v50;
  *(v49 + 1) = v52;
  *(v49 + 110) = *(v50 + 110);
  v53 = *(v50 + 96);
  *(v49 + 5) = *(v50 + 80);
  *(v49 + 6) = v53;
  *(v49 + 4) = *(v50 + 64);
  sub_10000BA08(v165, &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_factory]);
  v54 = v150;
  v147 = v46;
  v148 = v45;
  (v46)(v150, v47, v48);
  type metadata accessor for SnapshotWriter(0);
  swift_allocObject();
  sub_100005408(v50, &v162);
  sub_100005408(v50, &v162);
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_100015684(v50, v54);
  **&a6[v149] = 0;
  v55 = v159;
  if (__OFADD__(qword_1000611B8, 1))
  {
    __break(1u);
  }

  else
  {
    v158 = v43;
    ++qword_1000611B8;
    if (qword_10005CD30 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  sub_100012084();
  v56 = *(v49 + 13);
  v57 = *(v49 + 14);
  v58 = type metadata accessor for TranscriptBackgroundView(0);
  v161.receiver = a6;
  v161.super_class = v58;
  v59 = objc_msgSendSuper2(&v161, "initWithFrame:", 0.0, 0.0, v56, v57);
  [v59 setAlpha:0.0];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005408(v50, &v162);
  v60 = v47;
  v61 = sub_10004164C();
  v62 = sub_100041ACC();
  sub_100005464(v50);
  v63 = v55;
  if (os_log_type_enabled(v61, v62))
  {
    v64 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *&v162 = v149;
    *v64 = 136316162;
    v150 = v59;
    v66 = *(v50 + 32);
    v65 = *(v50 + 40);

    v67 = sub_10000B1E4(v66, v65, &v162);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_10000B1E4(0xD00000000000002FLL, 0x8000000100047990, &v162);
    *(v64 + 22) = 2080;
    v68 = v63;
    v69 = v50;
    v70 = *v50;
    v71 = *(v50 + 8);

    v72 = sub_10000B1E4(v70, v71, &v162);
    v50 = v69;
    v63 = v68;

    *(v64 + 24) = v72;
    *(v64 + 32) = 2080;

    v73 = v66;
    v48 = v156;
    v74 = sub_10000B1E4(v73, v65, &v162);
    v59 = v150;
    v60 = v157;

    *(v64 + 34) = v74;
    *(v64 + 42) = 2048;
    *(v64 + 44) = qword_1000611B8;
    _os_log_impl(&_mh_execute_header, v61, v62, "#%s %s %s %s live count %ld", v64, 0x34u);
    swift_arrayDestroy();
  }

  v75 = v151;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 nullMode])
  {
    (*(v63 + 8))(v60, v48);

    sub_100005464(v50);
LABEL_23:
    sub_100005500(v165);
    return;
  }

  v76 = *(v50 + 64);
  v166[0] = *(v50 + 48);
  v166[1] = v76;
  v166[2] = *(v50 + 80);
  sub_10003C97C(v166);

  v77 = sub_100015870();

  if (!v77)
  {
    (v147)(v75, &v59[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger], v48);
    v109 = v59;
    v110 = sub_10004164C();
    v111 = sub_100041ACC();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v150 = v59;
      v113 = v112;
      v114 = swift_slowAlloc();
      *&v162 = v114;
      *v113 = 136315138;
      v115 = &v109[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v116 = v60;
      v117 = v63;
      v118 = *&v109[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v119 = *(v115 + 5);

      v120 = sub_10000B1E4(v118, v119, &v162);
      v63 = v117;
      v60 = v116;

      *(v113 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v110, v111, "#%s No need to go live", v113, 0xCu);
      sub_100005500(v114);

      v50 = v155;

      (*(v63 + 8))(v151, v48);
    }

    else
    {

      (*(v63 + 8))(v75, v48);
    }

    goto LABEL_17;
  }

  v78 = [objc_opt_self() mainBundle];
  v79 = sub_1000417CC();
  v80 = sub_1000417CC();
  v81 = [v78 URLForResource:v79 withExtension:v80];

  if (v81)
  {
    v82 = v143;
    sub_10004147C();

    sub_100041BDC();
    v83 = *&v146[v145];
    v85 = v153;
    v84 = v154;
    v129(v153, &v146[v131], v154);
    v86 = v83;
    sub_10004161C();

    v128(v85, v84);
    v88 = *&v59[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v87 = *&v59[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];
    v158 = *&v59[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue];
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = v141;
    v91 = v136;
    v92 = v144;
    (*(v141 + 16))(v136, v82, v144);
    v93 = *(v90 + 80);
    v150 = v59;
    v94 = (v93 + 40) & ~v93;
    v95 = (v133 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    *(v96 + 2) = v89;
    *(v96 + 3) = v88;
    *(v96 + 4) = v87;
    (*(v90 + 32))(&v96[v94], v91, v92);
    v97 = &v96[v95];
    v98 = v152;
    *v97 = v137;
    v97[1] = v98;
    *&v164[0] = sub_1000376C0;
    *(&v164[0] + 1) = v96;
    *&v162 = _NSConcreteStackBlock;
    *(&v162 + 1) = 1107296256;
    *&v163 = sub_100028728;
    *(&v163 + 1) = &unk_1000567D0;
    v99 = _Block_copy(&v162);

    v100 = v132;
    sub_1000416AC();
    v160 = &_swiftEmptyArrayStorage;
    sub_100037AE8(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000054B8(&unk_10005D640, "B|");
    sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
    v101 = v138;
    v102 = v140;
    sub_100041CAC();
    sub_100041B1C();
    _Block_release(v99);
    v103 = v102;
    v104 = v150;
    (*(v139 + 8))(v101, v103);
    (*(v134 + 8))(v100, v135);

    v105 = qword_1000611A0;
    *&v162 = qword_1000611A0;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v106 = v105;
    v107 = sub_1000413FC();

    (*(v90 + 8))(v143, v144);

    v108 = *&v104[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
    *&v104[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = v107;

    v48 = v156;
    v60 = v157;
    v50 = v155;
    v63 = v159;
LABEL_17:
    if (qword_10005CD38 != -1)
    {
      swift_once();
    }

    v121 = qword_100061130;
    sub_10001A9FC(&v162);
    if (*(v121 + 16) == 1)
    {
      v122 = sub_100041A0C();
      v123 = v142;
      (*(*(v122 - 8) + 56))(v142, 1, 1, v122);
      v124 = swift_allocObject();
      swift_weakInit();
      v125 = swift_allocObject();
      *(v125 + 16) = 0;
      *(v125 + 24) = 0;
      *(v125 + 32) = v124;
      v126 = v163;
      *(v125 + 40) = v162;
      *(v125 + 56) = v126;
      *(v125 + 72) = v164[0];
      *(v125 + 85) = *(v164 + 13);
      *(v125 + 104) = v121;

      sub_100028428(0, 0, v123, &unk_100045470, v125);
    }

    else
    {
      sub_100007314(&v162);
    }

    sub_100005464(v50);
    (*(v63 + 8))(v60, v48);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_100030AD0(uint64_t a1, __n128 a2, __n128 a3)
{
  v51 = &type metadata for GradientTranscriptBackground;
  v52 = &off_100056488;
  v4 = swift_allocObject();
  v50[0] = v4;
  v4[1] = a2;
  v4[2] = a3;
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_10002C494(0xD000000000000010, 0x80000001000467D0);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      swift_beginAccess();
      v10 = sub_10000BA6C((v9 + 24), *(v9 + 48));
      v42 = *v10;
      v45 = v10[1];
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100044360;
      v12 = sub_1000229F4(v42);
      v14 = v13;
      *(v11 + 56) = &type metadata for String;
      v15 = sub_10000CBA4();
      *(v11 + 64) = v15;
      *(v11 + 32) = v12;
      *(v11 + 40) = v14;
      v16 = sub_1000229F4(v45);
      *(v11 + 96) = &type metadata for String;
      *(v11 + 104) = v15;
      *(v11 + 72) = v16;
      *(v11 + 80) = v17;
      v18 = sub_10004181C();
      v20 = v19;
      v21 = sub_10000BA6C(v50, v51);
      v43 = *v21;
      v46 = v21[1];
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100044360;
      v23 = sub_1000229F4(v43);
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = v15;
      *(v22 + 32) = v23;
      *(v22 + 40) = v24;
      v25 = sub_1000229F4(v46);
      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = v15;
      *(v22 + 72) = v25;
      *(v22 + 80) = v26;
      if (v18 == sub_10004181C() && v20 == v27)
      {
      }

      else
      {
        v28 = sub_100041EEC();

        if ((v28 & 1) == 0)
        {
LABEL_17:

          return sub_100005500(v50);
        }
      }

      v29 = *(a1 + v5);
      if (*(v29 + 16))
      {

        v30 = sub_10002C494(0xD000000000000011, 0x80000001000467B0);
        if (v31)
        {
          v32 = *(*(v29 + 56) + 8 * v30);

          v33 = sub_10004164C();
          v34 = sub_100041ACC();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v33, v34, "swap current and target", v35, 2u);
          }

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = *(a1 + v5);
          *(a1 + v5) = 0x8000000000000000;
          sub_10002DFD4(v9, 0xD000000000000011, 0x80000001000467B0, isUniquelyReferenced_nonNull_native);
          *(a1 + v5) = v48;

          v37 = swift_isUniquelyReferenced_nonNull_native();
          v49 = *(a1 + v5);
          *(a1 + v5) = 0x8000000000000000;
          sub_10002DFD4(v32, 0xD000000000000010, 0x80000001000467D0, v37);
          *(a1 + v5) = v49;
          swift_endAccess();
          v38 = [*(v9 + 16) superview];
          if (v38)
          {
            v39 = v38;
            v40 = *(v9 + 16);
            [v39 bringSubviewToFront:v40];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      goto LABEL_17;
    }
  }

  return sub_100005500(v50);
}

uint64_t sub_100030F24(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, double a6)
{
  v112 = &type metadata for GradientTranscriptBackground;
  v113 = &off_100056488;
  v10 = swift_allocObject();
  v111[0] = v10;
  v10[1] = a4;
  v10[2] = a5;
  v11 = sub_10000BA6C(v111, &type metadata for GradientTranscriptBackground);
  v12 = sub_10002F2A4(a3, *v11, v11[1]);
  if (!v12)
  {
    sub_10000BA08(v111, &v123);
    v42 = sub_10004164C();
    v43 = sub_100041ACC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v116 = v45;
      *v44 = 136315138;
      v46 = sub_10000BA6C(&v123, *(&v124 + 1));
      v89 = *v46;
      v93 = v46[1];
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100044360;
      v48 = sub_1000229F4(v89);
      v50 = v49;
      *(v47 + 56) = &type metadata for String;
      v51 = sub_10000CBA4();
      *(v47 + 64) = v51;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      v52 = sub_1000229F4(v93);
      *(v47 + 96) = &type metadata for String;
      *(v47 + 104) = v51;
      *(v47 + 72) = v52;
      *(v47 + 80) = v53;
      v54 = sub_10004181C();
      v56 = v55;
      sub_100005500(&v123);
      v57 = sub_10000B1E4(v54, v56, &v116);

      *(v44 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v42, v43, "placeholderViewByEffect missing for effectType: %s", v44, 0xCu);
      sub_100005500(v45);
    }

    else
    {

      sub_100005500(&v123);
    }

    return sub_100005500(v111);
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v15 = *(a3 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_10002C494(a1, a2);
  if ((v17 & 1) == 0)
  {

LABEL_14:

    v58 = sub_10004164C();
    v59 = sub_100041ACC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v123 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_10000B1E4(a1, a2, &v123);
      _os_log_impl(&_mh_execute_header, v58, v59, "effectView missing for key: %s", v60, 0xCu);
      sub_100005500(v61);
    }

    return sub_100005500(v111);
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  v110 = 0;
  v19 = *(v18 + 16);
  sub_1000043C4(v19, &v110);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_20:

    return sub_100005500(v111);
  }

  v21 = Strong;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v22 = &unk_100061000;
  v23 = &selRef_removeFromSuperview;
  if ([qword_1000611A0 posterKitEditor])
  {
    v92 = v21;
    swift_beginAccess();
    v24 = sub_10000BA6C((v18 + 24), *(v18 + 48));
    v84 = *v24;
    v85 = v24[1];
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100044360;
    v26 = sub_1000229F4(v84);
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_10000CBA4();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = sub_1000229F4(v85);
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    v32 = sub_10004181C();
    v34 = v33;
    v35 = sub_10000BA6C(v111, v112);
    v83 = *v35;
    v86 = v35[1];
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100044360;
    v37 = sub_1000229F4(v83);
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v29;
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    v39 = sub_1000229F4(v86);
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v29;
    *(v36 + 72) = v39;
    *(v36 + 80) = v40;
    if (v32 == sub_10004181C() && v34 == v41)
    {

      return sub_100005500(v111);
    }

    v62 = sub_100041EEC();

    v21 = v92;
    v22 = &unk_100061000;
    v23 = &selRef_removeFromSuperview;
    if (v62)
    {

      goto LABEL_20;
    }
  }

  if ([v22[52] v23[1]])
  {
    v63 = sub_10000BA6C(v111, v112);
    if (sub_100033DE8(*v63, v63[1]))
    {
      [*(v18 + 16) setAlpha:0.0];
    }
  }

  v64 = *(*(v18 + 16) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (v64)
  {
    swift_weakInit();
    v65 = *(v64 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v65);
    v66 = *(v64 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    swift_beginAccess();
    v67 = swift_weakLoadStrong();
    if (v67)
    {
      v68 = v67;
      v69 = sub_10000BA6C(v111, v112);
      v87 = v69[1];
      v90 = *v69;
      v70 = swift_unknownObjectWeakLoadStrong();
      if (v70)
      {
        v71 = v70;
        v94 = v21;
        v72 = v66;
        sub_100033608(v72, v71, v90, v87, a6);
        if ((sub_10002F4C4(v68, v90, v87) & 1) == 0)
        {
          sub_10000C14C(a6);
        }

        v21 = v94;
      }

      v22 = &unk_100061000;
    }

    os_unfair_lock_unlock(v65);

    swift_weakDestroy();
    v23 = &selRef_removeFromSuperview;
  }

  if (([v22[52] v23[1]] & 1) != 0 || a6 == 1.0)
  {
    swift_beginAccess();
    sub_1000372A0((v18 + 24), v111);
    swift_endAccess();
    v73 = swift_unknownObjectWeakLoadStrong();
    if (v73 && (v74 = v73, v75 = sub_10000BA6C(v111, v112), sub_10002EE00(v74, v114, *v75, v75[1]), v74, v120 = v114[4], v121 = v114[5], *v122 = v115[0], *&v122[14] = *(v115 + 14), v116 = v114[0], v117 = v114[1], v118 = v114[2], v119 = v114[3], sub_100037204(&v116) != 1))
    {
      v107 = v120;
      v108 = v121;
      v109 = *v122;
      v103 = v116;
      v104 = v117;
      v105 = v118;
      v106 = v119;
      v101 = *&v122[24];
      v102 = *&v122[28];
      [*&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView] bounds];
      v77 = v76;
      v79 = v78;
      if ([v22[52] v23[1]])
      {
        v80 = sub_10000BA6C(v111, v112);
        v81 = sub_100033DE8(*v80, v80[1]);
      }

      else
      {
        v81 = 0;
      }

      v127 = v107;
      v128 = v108;
      v129 = v109;
      v123 = v103;
      v124 = v104;
      v125 = v105;
      v126 = v106;
      v130 = v77;
      v131 = v79;
      v133 = v102;
      v132 = v101;
      sub_10003A18C(&v123, v81);

      v95[4] = v107;
      v95[5] = v108;
      v96 = v109;
      v95[0] = v103;
      v95[1] = v104;
      v95[2] = v105;
      v95[3] = v106;
      v97 = v77;
      v98 = v79;
      v100 = v102;
      v99 = v101;
      sub_100005464(v95);
    }

    else
    {
    }
  }

  else
  {
  }

  return sub_100005500(v111);
}

uint64_t sub_100031820(unint64_t a1, __n128 a2, __n128 a3, double a4)
{
  v136 = a2;
  v137 = a3;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v133 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = &type metadata for GradientTranscriptBackground;
  v170 = &off_100056488;
  v9 = swift_allocObject();
  v168[0] = v9;
  v10 = v137;
  *(v9 + 16) = v136;
  *(v9 + 32) = v10;
  v137.n128_u64[0] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v132 = v7;
    v13 = (v137.n128_u64[0] + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v14 = sub_10000BA6C(v13, v13[3]);
    v15 = v14[1];
    v134 = *v14;
    v135 = v15;
    v16 = sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v17 = swift_allocObject();
    v136 = xmmword_100044360;
    *(v17 + 16) = xmmword_100044360;
    v18 = sub_1000229F4(v134);
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_10000CBA4();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v22 = sub_1000229F4(v135);
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    v24 = sub_10004181C();
    v26 = v25;
    v27 = sub_10000BA6C(v168, v169);
    v28 = v27[1];
    v134 = *v27;
    v135 = v28;
    v131 = v16;
    v29 = swift_allocObject();
    *(v29 + 16) = v136;
    v30 = sub_1000229F4(v134);
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v21;
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    v32 = sub_1000229F4(v135);
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v21;
    v135.n128_u64[0] = v21;
    *(v29 + 72) = v32;
    *(v29 + 80) = v33;
    if (v24 == sub_10004181C() && v26 == v34)
    {
      v35 = 1;
    }

    else
    {
      v35 = sub_100041EEC();
    }

    v36 = sub_10000BA6C(v168, v169);
    v37 = sub_10002F4C4(v137.n128_i64[0], *v36, v36[1]);
    if ((v35 & 1) != 0 && a4 == 1.0)
    {
      v38 = sub_10000BA6C(v168, v169);
      sub_100030AD0(v137.n128_i64[0], *v38, v38[1]);
    }

    if (v37)
    {
      v39 = 0xD000000000000011;
    }

    else
    {
      v39 = 0xD000000000000010;
    }

    if (v37)
    {
      v40 = "cleanupBackgroundViews()";
    }

    else
    {
      v40 = "currentEffectView";
    }

    v41 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
    v42 = v137.n128_u64[0];
    swift_beginAccess();
    if (*(*(v42 + v41) + 16) && (, sub_10002C494(v39, v40 | 0x8000000000000000), v44 = v43, , (v44 & 1) != 0))
    {
      if (a4 != -1.0)
      {
        v45 = sub_10000BA6C(v168, v169);
        sub_100030F24(v39, v40 | 0x8000000000000000, v137.n128_i64[0], *v45, v45[1], a4);
      }
    }

    else
    {
      v134.n128_u64[0] = v41;
      v46 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;

      v47 = sub_10004164C();
      v48 = sub_100041ACC();

      v49 = os_log_type_enabled(v47, v48);
      v130 = v6;
      if (v49)
      {
        v50 = v39;
        v51 = swift_slowAlloc();
        v52 = v46;
        v53 = v12;
        v54 = swift_slowAlloc();
        *&v175[0] = v54;
        *v51 = 136315138;
        v55 = v40;
        *(v51 + 4) = sub_10000B1E4(v50, v40 | 0x8000000000000000, v175);
        _os_log_impl(&_mh_execute_header, v47, v48, " effectViewByEffect[%s] == nil", v51, 0xCu);
        sub_100005500(v54);
        v12 = v53;
        v46 = v52;

        v39 = v50;
      }

      else
      {
        v55 = v40;
      }

      v56 = sub_10000BA6C(v168, v169);
      v57 = sub_10002F2A4(v137.n128_i64[0], *v56, v56[1]);
      if (v57)
      {
        v58 = v57;
        v59 = sub_10000BA6C(v168, v169);
        sub_10002EE00(v12, v171, *v59, v59[1]);
        v60 = v55;
        if (sub_100037204(v171) == 1)
        {
        }

        else
        {
          v129 = v12;
          v165 = v171[4];
          v166 = v171[5];
          v167 = v172;
          v161 = v171[0];
          v162 = v171[1];
          v163 = v171[2];
          v164 = v171[3];
          v159 = v173;
          v160 = v174;
          [*&v58[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView] bounds];
          v62 = v61;
          v64 = v63;
          sub_10000BA08(v168, v158);

          v65 = v58;
          v66 = sub_10004164C();
          v67 = sub_100041ACC();

          v68 = os_log_type_enabled(v66, v67);
          v127 = v65;
          v128 = v39;
          if (v68)
          {
            v69 = swift_slowAlloc();
            v125 = v66;
            v70 = v69;
            v126 = swift_slowAlloc();
            *&v175[0] = v126;
            *v70 = 136315650;
            *(v70 + 4) = sub_10000B1E4(v39, v55 | 0x8000000000000000, v175);
            *(v70 + 12) = 2080;
            v71 = sub_10000BA6C(v158, v158[3]);
            v72 = v71[1];
            v123 = *v71;
            v124 = v72;
            v73 = swift_allocObject();
            *(v73 + 16) = v136;
            v74 = sub_1000229F4(v123);
            LODWORD(v136) = v67;
            v75 = v135.n128_u64[0];
            *(v73 + 56) = &type metadata for String;
            *(v73 + 64) = v75;
            *(v73 + 32) = v74;
            *(v73 + 40) = v76;
            v77 = sub_1000229F4(v124);
            *(v73 + 96) = &type metadata for String;
            *(v73 + 104) = v75;
            *(v73 + 72) = v77;
            *(v73 + 80) = v78;
            v79 = sub_10004181C();
            v81 = v80;
            sub_100005500(v158);
            v82 = sub_10000B1E4(v79, v81, v175);

            *(v70 + 14) = v82;
            *(v70 + 22) = 2080;
            v83 = v65;
            v84 = [v83 description];
            v85 = sub_1000417FC();
            v87 = v86;

            v88 = sub_10000B1E4(v85, v87, v175);

            *(v70 + 24) = v88;
            v89 = v125;
            _os_log_impl(&_mh_execute_header, v125, v136, "creating view for %s %s placeholder: %s", v70, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_100005500(v158);
          }

          v90 = v137.n128_u64[0];
          v91 = v137.n128_u64[0] + v46;
          v92 = v133;
          (*(v132 + 16))(v133, v91, v130);
          v175[4] = v165;
          v175[5] = v166;
          v176 = v167;
          v175[0] = v161;
          v175[1] = v162;
          v175[2] = v163;
          v175[3] = v164;
          v177 = v62;
          v178 = v64;
          v180 = v160;
          v179 = v159;
          sub_10000BA08(v90 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_factory, v144);
          v93 = swift_allocObject();
          swift_weakInit();
          sub_10000BA08(v168, &v141);
          v94 = swift_allocObject();
          *(v94 + 16) = v93;
          sub_10000B9F0(&v141, v94 + 24);
          v95 = sub_100032E24(v144, v145);
          *&v136 = &v123;
          __chkstk_darwin(v95);
          v97 = (&v123 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v98 + 16))(v97);
          v99 = *v97;
          v139 = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
          v140 = &off_1000563F8;
          v138[0] = v99;
          v135.n128_u64[0] = objc_allocWithZone(type metadata accessor for TranscriptBackgroundView(0));
          v100 = sub_100032E24(v138, v139);
          __chkstk_darwin(v100);
          v102 = (&v123 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v103 + 16))(v102);
          v104 = *v102;
          sub_100005408(v175, &v147);

          sub_10002F75C(v92, v175, v104, sub_100037294, v94, v135.n128_u64[0]);
          v106 = v105;
          sub_100005500(v138);
          sub_100005500(v144);

          [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
          sub_10000BA08(v168, &v147);
          v107 = sub_100032E24(&v147, *(&v148 + 1));
          v108 = *v107;
          v135 = *(v107 + 16);
          v136 = v108;
          v145 = &type metadata for GradientTranscriptBackground;
          v146 = &off_100056488;
          v109 = swift_allocObject();
          v144[0] = v109;
          v110 = v135;
          *(v109 + 16) = v136;
          *(v109 + 32) = v110;
          type metadata accessor for ViewsManager.EffectView();
          v111 = swift_allocObject();
          v112 = sub_100032E24(v144, &type metadata for GradientTranscriptBackground);
          v113 = *v112;
          v135 = *(v112 + 16);
          v136 = v113;
          v142 = &type metadata for GradientTranscriptBackground;
          v143 = &off_100056488;
          v114 = swift_allocObject();
          *&v141 = v114;
          v115 = v135;
          *(v114 + 16) = v136;
          *(v114 + 32) = v115;
          *(v111 + 16) = v106;
          sub_10000B9F0(&v141, v111 + 24);

          v116 = v106;
          sub_100005500(v144);
          sub_100005500(&v147);
          v117 = v134.n128_u64[0];
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v144[0] = *(v90 + v117);
          *(v90 + v117) = 0x8000000000000000;
          v119 = v111;
          v120 = v128;
          sub_10002DFD4(v119, v128, v60 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

          *(v90 + v117) = v144[0];
          swift_endAccess();
          v121 = sub_10000BA6C(v168, v169);
          sub_100030F24(v120, v60 | 0x8000000000000000, v90, *v121, v121[1], 1.0);

          v150 = v164;
          v151 = v165;
          v152 = v166;
          v147 = v161;
          v153 = v167;
          v148 = v162;
          v149 = v163;
          v154 = v62;
          v155 = v64;
          v157 = v160;
          v156 = v159;
          sub_100005464(&v147);
        }
      }

      else
      {
      }
    }
  }

  return sub_100005500(v168);
}

uint64_t sub_100032448(void *a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v109 = a3;
  v110 = a4;
  v6 = sub_10004166C();
  v108.n128_u64[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = &type metadata for GradientTranscriptBackground;
  v134 = &off_100056488;
  v9 = swift_allocObject();
  v132[0] = v9;
  v10 = v110;
  *(v9 + 16) = v109;
  *(v9 + 32) = v10;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;
  sub_10000BA08(v132, &v144);
  v12 = a1;
  v13 = sub_10004164C();
  v14 = sub_100041ACC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v110.n128_u64[0] = a2;
    v105 = v16;
    *&v137 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_10000B1E4(0xD000000000000035, 0x80000001000478B0, &v137);
    *(v15 + 12) = 2080;
    v17 = sub_10000BA6C(&v144, *(&v145 + 1));
    v18 = v17[1];
    v107 = *v17;
    v103 = v18;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v19 = swift_allocObject();
    v109.n128_u64[0] = v11;
    v20 = v19;
    *(v19 + 16) = xmmword_100044360;
    v21 = sub_1000229F4(v107);
    v104 = v14;
    v22 = v21;
    v106 = v6;
    v24 = v23;
    v20[7] = &type metadata for String;
    v25 = sub_10000CBA4();
    v107.n128_u64[0] = v8;
    v26 = v25;
    v20[8] = v25;
    v20[4] = v22;
    v20[5] = v24;
    v27 = sub_1000229F4(v103);
    v20[12] = &type metadata for String;
    v20[13] = v26;
    v20[9] = v27;
    v20[10] = v28;
    v29 = sub_10004181C();
    v31 = v30;
    sub_100005500(&v144);
    v32 = sub_10000B1E4(v29, v31, &v137);

    *(v15 + 14) = v32;
    *(v15 + 22) = 2080;
    v33 = v12;
    v34 = [v33 description];
    v35 = sub_1000417FC();
    v37 = v36;

    v11 = v109.n128_u64[0];
    v38 = v35;
    v8 = v107.n128_u64[0];
    v39 = sub_10000B1E4(v38, v37, &v137);
    v6 = v106;

    *(v15 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v13, v104, "%s for %s parentView: %s", v15, 0x20u);
    swift_arrayDestroy();
    a2 = v110.n128_u64[0];
  }

  else
  {

    sub_100005500(&v144);
  }

  [v12 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = sub_10000BA6C(v132, v133);
  v49 = sub_10002F2A4(a2, *v48, v48[1]);
  if (v49)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v51 = Strong, v52 = sub_10000BA6C(v132, v133), sub_10002EE00(v51, v135, *v52, v52[1]), v51, v141 = v135[4], v142 = v135[5], v143[0] = v136[0], *(v143 + 14) = *(v136 + 14), v137 = v135[0], v138 = v135[1], v139 = v135[2], v140 = v135[3], sub_100037204(&v137) == 1))
    {
      result = sub_100041DCC();
      __break(1u);
      return result;
    }

    v110.n128_u64[0] = v12;
    v129 = v141;
    v130 = v142;
    v131 = *&v143[0];
    v125 = v137;
    v126 = v138;
    v127 = v139;
    v128 = v140;
    v123 = DWORD2(v143[1]);
    v124 = WORD6(v143[1]);
    (*(v108.n128_u64[0] + 16))(v8, a2 + v11, v6);
    v148 = v129;
    v149 = v130;
    v150 = v131;
    v144 = v125;
    v145 = v126;
    v146 = v127;
    v147 = v128;
    v151 = v45;
    v152 = v47;
    v154 = v124;
    v153 = v123;
    v53 = objc_allocWithZone(type metadata accessor for PlaceholderView(0));
    sub_100005408(&v144, &v112);
    v54 = sub_100005148(v8, &v144);
    sub_100005464(&v144);
    v55 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation);
    v56 = *&v54[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation];
    *&v54[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = v55;
    if (v56 != v55)
    {
      sub_100003CD4();
    }

    v57 = v54;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [objc_opt_self() blackColor];
    [v57 setBackgroundColor:v58];

    v59 = sub_10000BA6C(v132, v133);
    v60 = v59[1];
    v108 = *v59;
    v109 = v60;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100044360;
    v62 = sub_1000229F4(v108);
    v64 = v63;
    *(v61 + 56) = &type metadata for String;
    v65 = sub_10000CBA4();
    *(v61 + 64) = v65;
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    v66 = sub_1000229F4(v109);
    *(v61 + 96) = &type metadata for String;
    *(v61 + 104) = v65;
    *(v61 + 72) = v66;
    *(v61 + 80) = v67;
    v68 = sub_10004181C();
    v70 = v69;
    v71 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v72 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(a2 + v71);
    *(a2 + v71) = 0x8000000000000000;
    sub_10002DE5C(v72, v68, v70, isUniquelyReferenced_nonNull_native);

    *(a2 + v71) = v111;
    swift_endAccess();

    v116 = v129;
    v117 = v130;
    v118 = v131;
    v112 = v125;
    v113 = v126;
    v114 = v127;
    v115 = v128;
    v119 = v45;
    v120 = v47;
    v122 = v124;
    v121 = v123;
    sub_100005464(&v112);
    v12 = v110.n128_u64[0];
  }

  v74 = sub_10000BA6C(v132, v133);
  v75 = sub_10002F2A4(a2, *v74, v74[1]);
  if (v75)
  {
    v76 = v75;
    [v75 setFrame:{v41, v43, v45, v47}];
    sub_10000BA08(v132, &v112);
    v77 = v76;
    v78 = sub_10004164C();
    v79 = sub_100041ACC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v109.n128_u64[0] = swift_slowAlloc();
      *&v125 = v109.n128_u64[0];
      *v80 = 136315394;
      v81 = sub_10000BA6C(&v112, *(&v113 + 1));
      v82 = v81[1];
      v110 = *v81;
      v107 = v82;
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v83 = swift_allocObject();
      v108.n128_u32[0] = v79;
      v84 = v83;
      *(v83 + 16) = xmmword_100044360;
      v85 = sub_1000229F4(v110);
      v110.n128_u64[0] = a2;
      v87 = v86;
      v84[7] = &type metadata for String;
      v88 = sub_10000CBA4();
      v84[8] = v88;
      v84[4] = v85;
      v84[5] = v87;
      v89 = sub_1000229F4(v107);
      v84[12] = &type metadata for String;
      v84[13] = v88;
      v84[9] = v89;
      v84[10] = v90;
      v91 = sub_10004181C();
      v93 = v92;
      sub_100005500(&v112);
      v94 = sub_10000B1E4(v91, v93, &v125);

      *(v80 + 4) = v94;
      *(v80 + 12) = 2080;
      v95 = v77;
      v96 = [v95 description];
      v97 = sub_1000417FC();
      v99 = v98;

      v100 = sub_10000B1E4(v97, v99, &v125);
      a2 = v110.n128_u64[0];

      *(v80 + 14) = v100;
      _os_log_impl(&_mh_execute_header, v78, v108.n128_u8[0], "getting placeholder for %s placeholder: %s", v80, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100005500(&v112);
    }

    [v12 addSubview:v77];
    sub_100021C58(v77);
    v101 = sub_10000BA6C(v132, v133);
    sub_100031820(a2, *v101, v101[1], -1.0);
  }

  return sub_100005500(v132);
}

uint64_t sub_100032E24(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_100032E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&unk_10005F1E0, &unk_100045440);
    v3 = sub_100041E0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100037A80(v4, &v13, &qword_10005ED60, &unk_100045270);
      v5 = v13;
      v6 = v14;
      result = sub_10002C494(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E988(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_100032FA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&qword_10005F1D8, &qword_100045438);
    v3 = sub_100041E0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10002C494(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1000330A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&qword_10005F1D0, &qword_100045430);
    v3 = sub_100041E0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10002C494(v5, v6);
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

uint64_t sub_1000331AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000331F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&unk_10005F340, &unk_1000454F0);
    v3 = sub_100041E0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100037A80(v4, &v11, &qword_10005DE78, &qword_100044638);
      v5 = v11;
      result = sub_10002C5D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E988(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100033340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
    v3 = sub_100041E0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100037A80(v4, v13, &qword_10005F328, &qword_1000454D8);
      result = sub_10002C594(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000E988(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1000334A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1000054B8(a2, a3);
    v9 = sub_100041E0C();
    v10 = a1 + 32;

    while (1)
    {
      sub_100037A80(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_10002C68C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10000E988(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_1000335B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100033608(void *a1, uint64_t a2, __n128 a3, __n128 a4, double a5)
{
  v84[3] = &type metadata for GradientTranscriptBackground;
  v84[4] = &off_100056488;
  v8 = swift_allocObject();
  v84[0] = v8;
  v8[1] = a3;
  v8[2] = a4;
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100044360;
  v10 = sub_1000229F4(a3);
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000CBA4();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1000229F4(a4);
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  v16 = sub_10004181C();
  *v18.i64 = sub_10002566C(v16, v17);
  v75 = v18;
  *v78 = v19;
  sub_10000BA08(v84, v83);
  v20 = sub_10004164C();
  v21 = sub_100041ACC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v82[0].i64[0] = v23;
    *v22 = 136315394;
    v24 = sub_10000BA6C(v83, v83[3]);
    v70 = *v24;
    *v72 = v24[1];
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100044360;
    v26 = sub_1000229F4(v70);
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v13;
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = sub_1000229F4(*v72);
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v13;
    *(v25 + 72) = v28;
    *(v25 + 80) = v29;
    v30 = sub_10004181C();
    v32 = v31;
    sub_100005500(v83);
    v33 = sub_10000B1E4(v30, v32, v82);

    *(v22 + 4) = v33;
    *(v22 + 12) = 2048;
    *(v22 + 14) = a5;
    _os_log_impl(&_mh_execute_header, v20, v21, " updateEffect %s progress %f", v22, 0x16u);
    sub_100005500(v23);
  }

  else
  {

    sub_100005500(v83);
  }

  v34 = [a1 rootNode];
  v35 = sub_1000417CC();
  v36 = [v34 childNodeWithName:v35];

  if (v36)
  {
    v37 = [v36 behaviorGraph];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v75);
      v40 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, *v78);
      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      v79 = v38;
      v69 = a1;
      if (([qword_1000611A0 posterKitEditor] & 1) == 0)
      {
        v41 = v39;
        v73 = v40;
        v42 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
        v43 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
        swift_beginAccess();
        sub_10000BA08(v42 + v43, v83);
        sub_1000054B8(&qword_10005F2C8, &qword_100045468);
        if (swift_dynamicCast())
        {
          v44 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v82[0]);
        }

        else
        {
          v44 = [objc_opt_self() clearColor];
        }

        v45 = v44;
        v76 = sub_1000226C4(a5);

        sub_10000BA08(v42 + v43, v83);
        if (swift_dynamicCast())
        {
          v46 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v82[1]);
        }

        else
        {
          v46 = [objc_opt_self() clearColor];
        }

        v47 = v46;
        v40 = sub_1000226C4(a5);

        v39 = v76;
      }

      v74 = objc_opt_self();
      [v74 begin];
      v77 = v39;
      v71 = sub_100022754();
      v48 = objc_opt_self();
      v49 = [v48 valueWithVFXFloat4:v71];
      v50 = sub_1000417CC();
      [v79 setObject:v49 forKeyedSubscript:v50];

      v51 = [v48 valueWithVFXFloat4:sub_100022754()];
      v52 = sub_1000417CC();
      [v79 setObject:v51 forKeyedSubscript:v52];

      if (!*(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) && ([qword_1000611A0 resumeFromLastPlayTime] & 1) != 0)
      {
        if (qword_10005CD78 != -1)
        {
          swift_once();
        }

        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_100044360;
        v54 = sub_1000229F4(a3);
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = v13;
        *(v53 + 32) = v54;
        *(v53 + 40) = v55;
        v56 = sub_1000229F4(a4);
        *(v53 + 96) = &type metadata for String;
        *(v53 + 104) = v13;
        *(v53 + 72) = v56;
        *(v53 + 80) = v57;
        v58 = sub_10004181C();
        sub_10003803C(v58, v59);
        v61 = v60;

        if (v61)
        {
        }

        v62 = [v69 rootNode];
        v63 = sub_1000417CC();
        v64 = [v62 childNodeWithName:v63 recursively:1];

        if (v64)
        {
          v65 = [v64 parameters];

          if (v65)
          {
            isa = sub_100041A2C().super.super.isa;
            v67 = sub_1000417CC();
            [v65 setObject:isa forKeyedSubscript:v67];
            swift_unknownObjectRelease();
          }
        }
      }

      [v74 commit];
      [v74 flush];
    }
  }

  return sub_100005500(v84);
}

BOOL sub_100033DE8(__n128 a1, __n128 a2)
{
  v20[3] = &type metadata for GradientTranscriptBackground;
  v20[4] = &off_100056488;
  v2 = swift_allocObject();
  v20[0] = v2;
  v2[1] = a1;
  v2[2] = a2;
  v3 = sub_10000BA6C(v20, &type metadata for GradientTranscriptBackground);
  v17 = *v3;
  v19 = v3[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100044360;
  v5 = sub_1000229F4(v17);
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_10000CBA4();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = sub_1000229F4(v19);
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  v11 = sub_10004181C();
  v13.n128_f64[0] = sub_10002566C(v11, v12);
  LOBYTE(v4) = sub_100024F20(v13, v14);
  sub_100005500(v20);
  return (v4 & 1) == 0;
}

void sub_100033F08(void *a1, double a2)
{
  if (a2 >= 2.22044605e-16)
  {
    v6 = [a1 identifier];
    v7 = sub_1000417FC();
    v9 = v8;

    v10.n128_f64[0] = sub_10002566C(v7, v9);
    v20 = v11;
    *osloga = v10;
    if (sub_100024F20(v10, v11))
    {
      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      v12 = [qword_1000611A0 customVariant];
      v14 = v21;
      v13 = *osloga;
      if (v12)
      {
        v15 = v12;
        v16 = sub_1000417FC();
        v18 = v17;

        v13.n128_f64[0] = sub_10002566C(v16, v18);
      }
    }

    else
    {
      v14 = v20;
      v13 = *osloga;
    }

    v19 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);

    sub_100031820(v19, v13, v14, a2);
  }

  else
  {
    oslog = sub_10004164C();
    v4 = sub_100041ACC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = a2;
      _os_log_impl(&_mh_execute_header, oslog, v4, "didTransitionTo discard progress change %f", v5, 0xCu);
    }
  }
}

uint64_t sub_1000340D8(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1000417FC();
  v5 = v4;

  v6.n128_f64[0] = sub_10002566C(v3, v5);
  v20 = v7;
  v21 = v6;
  if (sub_100024F20(v6, v7))
  {
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    v8 = [qword_1000611A0 customVariant];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000417FC();
      v12 = v11;

      v13.n128_f64[0] = sub_10002566C(v10, v12);
      v20 = v14;
      v21 = v13;
    }
  }

  v15 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v23 = &type metadata for GradientTranscriptBackground;
  v24 = &off_100056488;
  v16 = swift_allocObject();
  *&v22 = v16;
  *(v16 + 16) = v21;
  *(v16 + 32) = v20;
  v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_100005500((v15 + v17));
  sub_10000B9F0(&v22, v15 + v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor;
  [*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) updateActions];
  [*(v1 + v18) updateLuminanceValuesForLooks];
  return sub_100031820(v15, v21, v20, 1.0);
}

uint64_t sub_10003426C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v46[0] = 0;
  v6 = [v5 loadUserInfoWithError:v46];
  swift_unknownObjectRelease();
  v7 = v46[0];
  if (v6)
  {
    sub_10004178C();
    v8 = v7;
  }

  else
  {
    v9 = v46[0];
    sub_1000413EC();

    swift_willThrow();

    sub_100033340(&_swiftEmptyArrayStorage);
  }

  *&v44 = 0x6D6F74737563;
  *(&v44 + 1) = 0xE600000000000000;
  sub_100041CFC();
  v10 = (*(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  swift_beginAccess();
  v11 = sub_10000BA6C(v10, v10[3]);
  v40 = *v11;
  v41 = v11[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100044360;
  v13 = sub_1000229F4(v40);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_10000CBA4();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = sub_1000229F4(v41);
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v17;
  *(v12 + 80) = v18;
  v45 = &type metadata for String;
  *&v44 = sub_10004181C();
  *(&v44 + 1) = v19;
  sub_10000E988(&v44, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10002E2A0(v43, v46, isUniquelyReferenced_nonNull_native);
  sub_10000BAB0(v46);
  v21 = sub_10004164C();
  v22 = sub_100041ACC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v46[0] = v24;
    *v23 = 136315138;

    v25 = sub_10004179C();
    v27 = v26;

    v28 = sub_10000B1E4(v25, v27, v46);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "saving userInfo... %s", v23, 0xCu);
    sub_100005500(v24);
  }

  v29 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();

  isa = sub_10004177C().super.isa;

  v46[0] = 0;
  v31 = [v29 storeUserInfo:isa error:v46];

  if (v31)
  {
    v32 = v46[0];
  }

  else
  {
    v33 = v46[0];
    sub_1000413EC();

    swift_willThrow();
    swift_errorRetain();
    v34 = sub_10004164C();
    v35 = sub_100041ABC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error saving userInfo %@", v36, 0xCu);
      sub_100015014(v37, &qword_10005E240, &qword_100043C90);
    }

    else
    {
    }
  }

  (*(a3 + 16))();
}

void sub_1000347D8(uint64_t a1)
{
  oslog = sub_10004164C();
  v1 = sub_100041ACC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000B1E4(0xD000000000000020, 0x8000000100047AE0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_100005500(v3);
  }
}

void sub_1000348E4(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = [a1 deviceOrientation];
  v5 = 0.0;
  if (a2)
  {
    v6 = [a2 animationSettings];
    if (v6)
    {
      v7 = v6;
      [v6 duration];
      v5 = v8;
    }
  }

  sub_10000BB8C(v4, v5);
  type metadata accessor for TranscriptBackgroundView(0);
  sub_100008D48(a1, v18);
  if ((v20 & 1) == 0)
  {
    v14 = v18[1];
    v15 = v18[0];
    v9 = v19;
    v10 = sub_10002BA08();
    if (v10)
    {
      v16 = v10;
      if ([*&v10[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously])
      {
        v11 = *&v16[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
        if (v11)
        {
          swift_unknownObjectWeakInit();
          v12 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

          os_unfair_lock_lock(v12);
          v13 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
          sub_100008954(v13, v17, v15, v14, v9);

          os_unfair_lock_unlock(v12);

          swift_unknownObjectWeakDestroy();
        }

        else
        {

          _objc_release_x1();
        }
      }

      else
      {
      }
    }
  }
}

void *sub_100034ADC()
{
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v1 = qword_100061170;
  v2 = qword_10005CD70;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = [qword_1000611A0 customVariant];
  v4 = &unk_100044000;
  v5 = &unk_100044000;
  if (v3)
  {
    v64 = v0;
    v6 = v3;
    v7 = sub_1000417FC();
    v9 = v8;

    v11 = *(v1 + 2);
    v12 = &_swiftEmptyArrayStorage;
    if (v11)
    {
      v62 = v7;
      v63 = v9;
      v72[0] = &_swiftEmptyArrayStorage;
      sub_100022D8C(0, v11, 0);
      v12 = &_swiftEmptyArrayStorage;
      *&v67 = "riptBackgroundPosterDelegate";
      v65 = v1;
      v13 = (v1 + 48);
      v66 = xmmword_100044360;
      v71 = xmmword_100044400;
      do
      {
        v70.i64[0] = v11;
        v14 = *v13;
        v68 = *(v13 - 1);
        v69 = v14;
        sub_1000054B8(&unk_10005D9B0, &unk_100044760);
        v15 = swift_allocObject();
        *(v15 + 16) = v66;
        v16 = swift_allocObject();
        v16[1] = v71;
        v16[3].i64[1] = &type metadata for Float;
        v16[4].i64[0] = &protocol witness table for Float;
        v17 = v68;
        v16[2].i32[0] = v68;
        v16[6].i64[0] = &type metadata for Float;
        v16[6].i64[1] = &protocol witness table for Float;
        v16[4].i32[2] = DWORD1(v17);
        v16[7].i32[0] = DWORD2(v17);
        v16[8].i64[1] = &type metadata for Float;
        v16[9].i64[0] = &protocol witness table for Float;
        v16[11].i64[0] = &type metadata for Float;
        v16[11].i64[1] = &protocol witness table for Float;
        v16[9].i32[2] = HIDWORD(v17);
        v18 = sub_10004181C();
        v20 = v19;
        *(v15 + 56) = &type metadata for String;
        v21 = sub_10000CBA4();
        *(v15 + 64) = v21;
        *(v15 + 32) = v18;
        *(v15 + 40) = v20;
        v22 = swift_allocObject();
        v22[1] = v71;
        v22[3].i64[1] = &type metadata for Float;
        v22[4].i64[0] = &protocol witness table for Float;
        v23 = v69;
        v22[2].i32[0] = v69;
        v22[6].i64[0] = &type metadata for Float;
        v22[6].i64[1] = &protocol witness table for Float;
        v22[4].i32[2] = DWORD1(v23);
        v22[7].i32[0] = DWORD2(v23);
        v22[8].i64[1] = &type metadata for Float;
        v22[9].i64[0] = &protocol witness table for Float;
        v22[11].i64[0] = &type metadata for Float;
        v22[11].i64[1] = &protocol witness table for Float;
        v22[9].i32[2] = HIDWORD(v23);
        v24 = sub_10004181C();
        *(v15 + 96) = &type metadata for String;
        *(v15 + 104) = v21;
        *(v15 + 72) = v24;
        *(v15 + 80) = v25;
        v10 = sub_10004181C();
        v72[0] = v12;
        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          v30 = v10;
          v31 = v26;
          sub_100022D8C((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v10 = v30;
          v12 = v72[0];
        }

        v12[2] = v28 + 1;
        v29 = &v12[2 * v28];
        *(v29 + 4) = v10;
        *(v29 + 5) = v26;
        v13 += 2;
        v11 = v70.i64[0] - 1;
      }

      while (v70.i64[0] != 1);
      v1 = v65;
      v7 = v62;
      v9 = v63;
    }

    v72[0] = v7;
    v72[1] = v9;
    __chkstk_darwin(v10);
    v61[2] = v72;
    v32 = sub_100024674(sub_100037A60, v61, v12);

    if ((v32 & 1) == 0)
    {

      v51 = sub_10004164C();
      v52 = sub_100041ACC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_10000B1E4(v7, v9, v72);
        _os_log_impl(&_mh_execute_header, v51, v52, "looks adding customVariant: %s", v53, 0xCu);
        sub_100005500(v54);
      }

      v4 = &unk_100044000;
      *v55.i64 = sub_10002566C(v7, v9);
      v70 = v56;
      v71 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1000394CC(0, *(v1 + 2) + 1, 1, v1);
      }

      v58 = *(v1 + 2);
      v57 = *(v1 + 3);
      if (v58 >= v57 >> 1)
      {
        v1 = sub_1000394CC((v57 > 1), v58 + 1, 1, v1);
      }

      *(v1 + 2) = v58 + 1;
      v59 = &v1[32 * v58];
      v60 = v70;
      v59[2] = v71;
      v59[3] = v60;
      v5 = &unk_100044000;
      v33 = *(v1 + 2);
      if (v33)
      {
        goto LABEL_15;
      }

LABEL_25:

      return &_swiftEmptyArrayStorage;
    }

    v5 = &unk_100044000;
    v4 = &unk_100044000;
  }

  v33 = *(v1 + 2);
  if (!v33)
  {
    goto LABEL_25;
  }

LABEL_15:
  v72[0] = &_swiftEmptyArrayStorage;
  sub_100041D8C();
  *&v68 = "riptBackgroundPosterDelegate";
  v65 = v1;
  v34 = (v1 + 48);
  v67 = v4[54];
  v69 = v5[64];
  do
  {
    v35 = *v34;
    v70 = v34[-1];
    v71 = v35;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v36 = swift_allocObject();
    *(v36 + 16) = v67;
    v37 = swift_allocObject();
    v38 = v70;
    *(v37 + 16) = v69;
    *(v37 + 56) = &type metadata for Float;
    *(v37 + 64) = &protocol witness table for Float;
    *(v37 + 32) = v38.i32[0];
    *(v37 + 96) = &type metadata for Float;
    *(v37 + 104) = &protocol witness table for Float;
    *(v37 + 72) = v38.i32[1];
    *(v37 + 112) = v38.i32[2];
    *(v37 + 136) = &type metadata for Float;
    *(v37 + 144) = &protocol witness table for Float;
    *(v37 + 176) = &type metadata for Float;
    *(v37 + 184) = &protocol witness table for Float;
    *(v37 + 152) = v38.i32[3];
    v39 = sub_10004181C();
    v41 = v40;
    *(v36 + 56) = &type metadata for String;
    v42 = sub_10000CBA4();
    *(v36 + 64) = v42;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v69;
    *(v43 + 56) = &type metadata for Float;
    *(v43 + 64) = &protocol witness table for Float;
    v44 = v71;
    *(v43 + 32) = v71.i32[0];
    *(v43 + 96) = &type metadata for Float;
    *(v43 + 104) = &protocol witness table for Float;
    *(v43 + 72) = v44.i32[1];
    *(v43 + 112) = v44.i32[2];
    *(v43 + 136) = &type metadata for Float;
    *(v43 + 144) = &protocol witness table for Float;
    *(v43 + 176) = &type metadata for Float;
    *(v43 + 184) = &protocol witness table for Float;
    *(v43 + 152) = v44.i32[3];
    v45 = sub_10004181C();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v42;
    *(v36 + 72) = v45;
    *(v36 + 80) = v46;
    sub_10004181C();
    sub_10002806C(v70, v71);
    v47 = objc_allocWithZone(PREditingLook);
    v48 = sub_1000417CC();

    v49 = sub_1000417CC();

    [v47 initWithIdentifier:v48 displayName:v49];

    sub_100041D6C();
    sub_100041D9C();
    sub_100041DAC();
    sub_100041D7C();
    v34 += 2;
    --v33;
  }

  while (v33);

  return v72[0];
}

double sub_100035234(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1000417FC();
  v5 = v4;

  sub_10002566C(v3, v5);
  v6 = a1;
  v7 = sub_10004164C();
  v8 = sub_100041ACC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    v11 = [v6 identifier];
    v12 = sub_1000417FC();
    v14 = v13;

    v15 = sub_10000B1E4(v12, v14, &v17);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 0x3FC999999999999ALL;
    _os_log_impl(&_mh_execute_header, v7, v8, "luminanceFor look: %s luminance: %f", v9, 0x16u);
    sub_100005500(v10);
  }

  return 0.2;
}

void sub_1000353C8(void *a1, void *a2)
{
  v3 = v2;
  v5 = a2;
  v6 = sub_10004164C();
  v7 = sub_100041ACC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "loading editor with look %@", v8, 0xCu);
    sub_100015014(v9, &qword_10005E240, &qword_100043C90);
  }

  v11 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v18 = [a1 backgroundView];
  v12 = [v5 identifier];
  v13 = sub_1000417FC();
  v15 = v14;

  v16.n128_f64[0] = sub_10002566C(v13, v15);
  sub_100032448(v18, v11, v16, v17);
}

id sub_10003555C(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = xmmword_100045360;
  *(v3 + 40) = 0x403D000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000379F8;
  *(v4 + 24) = v3;
  v9[4] = sub_100037A18;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000283DC;
  v9[3] = &unk_1000568E8;
  v5 = _Block_copy(v9);
  v6 = a1;

  v7 = [v2 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035704()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v1 + v2, v16);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v3 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v15);
  }

  else
  {
    v3 = [objc_opt_self() clearColor];
  }

  v4 = v3;
  v5 = sub_10003555C(v3);

  sub_10000BB04(0, &qword_10005F310, UIAction_ptr);
  if (qword_10005CD20 != -1)
  {
    swift_once();
  }

  v6 = qword_100061088;
  v14._countAndFlagsBits = 0x8000000100047A60;
  v17._countAndFlagsBits = 0x49505F524F4C4F43;
  v17._object = 0xEC00000052454B43;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v7.super.isa = qword_100061088;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1000413CC(v17, v19, v7, v21, 0xD000000000000018, v14);
  sub_1000417CC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v5;
  v9 = sub_100041C4C();
  v18._countAndFlagsBits = 0x49505F524F4C4F43;
  v18._object = 0xEC00000052454B43;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v10.super.isa = v6;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1000413CC(v18, v20, v10, v22, 0xD000000000000018, 0x8000000100047A60);
  v11 = sub_1000417CC();

  [v9 setAccessibilityLabel:v11];

  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100045370;
  *(v12 + 32) = v9;

  return v12;
}

uint64_t sub_100035A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v1 + v2, v16);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v3 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v15);
  }

  else
  {
    v3 = [objc_opt_self() clearColor];
  }

  v4 = v3;
  v5 = sub_10003555C(v3);

  sub_10000BB04(0, &qword_10005F310, UIAction_ptr);
  if (qword_10005CD20 != -1)
  {
    swift_once();
  }

  v6 = qword_100061088;
  v14._countAndFlagsBits = 0x8000000100047A60;
  v17._countAndFlagsBits = 0x49505F524F4C4F43;
  v17._object = 0xEC00000052454B43;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v7.super.isa = qword_100061088;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1000413CC(v17, v19, v7, v21, 0xD000000000000018, v14);
  sub_1000417CC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v5;
  v9 = sub_100041C4C();
  v18._countAndFlagsBits = 0x49505F524F4C4F43;
  v18._object = 0xEC00000052454B43;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v10.super.isa = v6;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1000413CC(v18, v20, v10, v22, 0xD000000000000018, 0x8000000100047A60);
  v11 = sub_1000417CC();

  [v9 setAccessibilityLabel:v11];

  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100045370;
  *(v12 + 32) = v9;

  return v12;
}

void sub_100035D38(unint64_t a1)
{

  v2 = sub_10004164C();
  v3 = sub_100041ACC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_10000BB04(0, &qword_10005F2F8, UIColor_ptr);
    v6 = sub_10004199C();
    v8 = sub_10000B1E4(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "editor colors %s", v4, 0xCu);
    sub_100005500(v5);
  }

  if (a1 >> 62)
  {
    if (sub_100041DDC() != 2)
    {
      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_100041D3C();
    sub_100029800(v11, 1);

    v10 = sub_100041D3C();
    goto LABEL_9;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 32);
  sub_100029800(v9, 1);

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = *(a1 + 40);
LABEL_9:
  v12 = v10;
  sub_100029800(v10, 0);
}

uint64_t sub_100035F60()
{
  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100043A80;
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v2 + v3, v16);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v4 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v14);
  }

  else
  {
    v4 = [objc_opt_self() clearColor];
  }

  *(v1 + 32) = v4;
  sub_10000BA08(v2 + v3, v16);
  if (swift_dynamicCast())
  {
    v5 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v15);
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  *(v1 + 40) = v5;

  v6 = sub_10004164C();
  v7 = sub_100041ACC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    sub_10000BB04(0, &qword_10005F2F8, UIColor_ptr);
    v10 = sub_10004199C();
    v12 = sub_10000B1E4(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "initialColors %s", v8, 0xCu);
    sub_100005500(v9);
  }

  return v1;
}

uint64_t sub_1000361D0()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v2, v3, "#%ld shouldAttemptSnapshotForHandle", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  return 1;
}

void sub_1000362A0()
{
  v1 = v0;
  v2 = sub_10002BA08();
  if (v2)
  {
    if (*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor])
    {
    }

    else
    {
      v3 = v2;
      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      if ([qword_1000611A0 resumeFromLastPlayTime] & 1) == 0 || (v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] & 1) != 0 || (v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime + 4])
      {
      }

      else
      {
        v11 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
        if (qword_10005CD78 != -1)
        {
          swift_once();
        }

        v12 = (*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
        swift_beginAccess();
        v13 = sub_10000BA6C(v12, v12[3]);
        v28 = *v13;
        v29 = v13[1];
        sub_1000054B8(&unk_10005D9B0, &unk_100044760);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100044360;
        v15 = sub_1000229F4(v28);
        v17 = v16;
        *(v14 + 56) = &type metadata for String;
        v18 = sub_10000CBA4();
        *(v14 + 64) = v18;
        *(v14 + 32) = v15;
        *(v14 + 40) = v17;
        v19 = sub_1000229F4(v29);
        *(v14 + 96) = &type metadata for String;
        *(v14 + 104) = v18;
        *(v14 + 72) = v19;
        *(v14 + 80) = v20;
        v21 = sub_10004181C();
        v23 = 0.0;
        if (v11 >= 0.0)
        {
          v23 = v11;
        }

        sub_1000380FC(v21, v22, v23);

        v24 = v0;
        v25 = sub_10004164C();
        v26 = sub_100041ACC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134218240;
          *(v27 + 4) = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

          *(v27 + 12) = 2048;
          *(v27 + 14) = v11;
          _os_log_impl(&_mh_execute_header, v25, v26, "#%ld Updating stored snapshot time to: %f", v27, 0x16u);
        }

        else
        {
        }
      }
    }
  }

  v4 = sub_10002BA08();
  if (v4)
  {
    v5 = v4;

    v6 = sub_100015870();

    if (v6 && v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] == 1)
    {
      v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
      sub_10003EAB0();
    }
  }

  v7 = v1;
  v8 = sub_10004164C();
  v9 = sub_100041ACC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v8, v9, "#%ld completedSnapshotForHandle", v10, 0xCu);
  }

  else
  {

    v8 = v7;
  }
}

void sub_100036680(uint64_t a1)
{
  v2 = sub_10002BA08();
  if (v2)
  {
    v3 = v2;

    v4 = sub_100015870();

    if (v4 && v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] == 1)
    {
      v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
      sub_10003EAB0();
    }
  }

  v5 = v1;
  swift_errorRetain();
  oslog = sub_10004164C();
  v6 = sub_100041ACC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, oslog, v6, "#%ld failedToSnapshotWithError %@", v7, 0x16u);
    sub_100015014(v8, &qword_10005E240, &qword_100043C90);

    v10 = oslog;
  }

  else
  {

    v10 = v5;
  }
}

void sub_10003683C(void *a1)
{
  v2 = [a1 type];
  v3 = sub_1000417FC();
  v5 = v4;
  if (v3 == sub_1000417FC() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_100041EEC();

  if (v8)
  {

LABEL_8:
    oslog = sub_10004164C();
    v9 = sub_100041ACC();
    if (!os_log_type_enabled(oslog, v9))
    {
LABEL_11:

      return;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "PRRenderingDelegate  hostWillDisappear";
LABEL_10:
    _os_log_impl(&_mh_execute_header, oslog, v9, v11, v10, 2u);

    goto LABEL_11;
  }

  v12 = sub_1000417FC();
  v14 = v13;
  if (v12 == sub_1000417FC() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_100041EEC();

    if ((v17 & 1) == 0)
    {
      oslog = sub_10004164C();
      v9 = sub_100041ABC();
      if (!os_log_type_enabled(oslog, v9))
      {
        goto LABEL_11;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Unhandled event type";
      goto LABEL_10;
    }
  }

  v18 = sub_10002BA08();
  if (v18)
  {
    v19 = v18;
    v20 = [a1 metadata];
    v21 = sub_10004178C();

    sub_10000A228(v21);
  }
}

void sub_100036AFC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004164C();
  v4 = sub_100041ACC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000B1E4(0xD000000000000019, 0x80000001000477D0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100005500(v6);
  }

  sub_10002BACC(v7);
  v8 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer);
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer) = 0;
}

uint64_t sub_100036C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004168C();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000416DC();
  v9 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004164C();
  v13 = sub_100041ACC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v9;
    v16 = a2;
    v17 = a1;
    v18 = v15;
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10000B1E4(0xD000000000000024, 0x80000001000477A0, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_100005500(v18);
    a1 = v17;
    a2 = v16;
    v9 = v25;
  }

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v19 = sub_100041B0C();
  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = sub_100037048;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100056578;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100037AE8(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v21);

  (*(v27 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v26);
}

uint64_t sub_100037008()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000370F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037144()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003717C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037204(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003721C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037254()
{

  sub_100005500((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t *sub_1000372A0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1000374BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100037514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D5F4;

  return sub_10001CB5C(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_1000375DC()
{
  v1 = sub_1000414BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1000376C0()
{
  v1 = *(sub_1000414BC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  sub_10003CB08(v3, v4, v5, v0 + v2, v7, v8);
}

id sub_100037764@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 metalCapture];
  *a2 = result;
  return result;
}

uint64_t sub_1000377B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000377EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E9A0;

  return sub_10000DE1C(a1, v4);
}

uint64_t sub_1000378A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D5F4;

  return sub_10000DE1C(a1, v4);
}

uint64_t sub_10003797C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000379C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037A80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100037AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100037B6C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    [a1 setDeviceMotionEventsRequested:1];
    [a1 setSupportedMotionEffectsMode:2];
    v4 = "setPreferredDeviceMotionUpdateInterval:";
    v5 = 0.0333;
    v6 = a1;
  }

  else
  {
    [a1 setDeviceMotionEventsRequested:0];
    v4 = "setSupportedMotionEffectsMode:";
    v6 = a1;
  }

  return [v6 v4];
}

uint64_t sub_100037C0C()
{
  type metadata accessor for EffectDataManager(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger;
  v2 = sub_10004166C();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_1000611B0 = v0;
  return result;
}

uint64_t sub_100037C90(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = sub_1000054B8(&qword_10005F530, &qword_100045608);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000BA6C(a1, a1[3]);
  sub_100039E4C();
  sub_100041F5C();
  v11[15] = 0;
  sub_100041E8C();
  if (!v4)
  {
    v11[14] = 1;
    sub_100041EAC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100037E44()
{
  if (*v0)
  {
    return 0x656D695479616C70;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_100037E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_100041EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D695479616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100041EEC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100037F74(uint64_t a1)
{
  v2 = sub_100039E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037FB0(uint64_t a1)
{
  v2 = sub_100039E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100037FEC(uint64_t a1@<X8>, void *a2@<X0>)
{
  v6 = sub_100039C70(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }
}

uint64_t sub_10003803C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100038794();
  v5 = (v4 + 6);
  v6 = v4[2] + 1;
  while (1)
  {
    if (!--v6)
    {
      v7 = 0;
      goto LABEL_12;
    }

    v7 = *(v5 - 2);
    if (v7 == a1 && *(v5 - 1) == a2)
    {
      break;
    }

    v5 += 24;
    if (sub_100041EEC())
    {
      goto LABEL_11;
    }
  }

  v7 = a1;
LABEL_11:

LABEL_12:

  return v7;
}

unint64_t sub_1000380FC(uint64_t a1, uint64_t a2, float a3)
{
  v8 = sub_100038794();
  result = sub_100039A50(v8, a1, a2);
  if (v10)
  {
    v11 = *(v8 + 2);
    v12 = v11;
    goto LABEL_7;
  }

  v12 = result;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_41;
  }

  v14 = *(v8 + 2);

  if (v13 == v14)
  {
LABEL_5:

    v11 = *(v8 + 2);
    if (v11 < v12)
    {
LABEL_35:
      __break(1u);
    }

    else if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_7:
      v3 = v12;
      if (!__OFADD__(v11, v12 - v11))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v12 > *(v8 + 3) >> 1)
        {
          if (v11 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v11;
          }

          v8 = sub_1000395D0(isUniquelyReferenced_nonNull_native, v16, 1, v8);
        }

        sub_100039AF0(v12, v11, 0);
        v3 = *(v8 + 2);
        v12 = *(v8 + 3);
        v4 = v3 + 1;

        if (v3 < v12 >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      v8 = sub_1000395D0((v12 > 1), v4, 1, v8);
LABEL_15:
      *(v8 + 2) = v4;
      v17 = &v8[24 * v3];
      *(v17 + 4) = a1;
      *(v17 + 5) = a2;
      *(v17 + 12) = a3;
      sub_1000383A0(v8);
    }

    __break(1u);
    goto LABEL_37;
  }

  v18 = 24 * v12;
  while (1)
  {
    if (v13 >= v14)
    {
      __break(1u);
      goto LABEL_35;
    }

    v4 = *&v8[v18 + 56];
    v20 = *&v8[v18 + 64];
    if (v4 != a1 || v20 != a2)
    {
      result = sub_100041EEC();
      if ((result & 1) == 0)
      {
        break;
      }
    }

LABEL_21:
    ++v13;
    v14 = *(v8 + 2);
    v18 += 24;
    if (v13 == v14)
    {
      goto LABEL_5;
    }
  }

  if (v13 == v12)
  {
LABEL_20:
    ++v12;
    goto LABEL_21;
  }

  if (v12 < v14)
  {
    v3 = 24 * v12;
    v22 = &v8[24 * v12 + 32];
    v23 = *(v22 + 8);
    v27 = *v22;
    v24 = *(v22 + 16);
    v25 = *&v8[v18 + 72];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100039884(v8);
    }

    v26 = &v8[v3];
    *(v26 + 4) = v4;
    *(v26 + 5) = v20;
    *(v26 + 12) = v25;

    if (v13 >= *(v8 + 2))
    {
      goto LABEL_40;
    }

    v19 = &v8[v18];
    *(v19 + 7) = v27;
    *(v19 + 8) = v23;
    *(v19 + 18) = v24;

    goto LABEL_20;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1000383A0(uint64_t a1)
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v1 - 8);
  sub_10004133C();
  swift_allocObject();
  sub_10004132C();
  sub_1000054B8(&qword_10005F4C8, " v");
  sub_100039740(&qword_10005F4E0, sub_1000397B8, &protocol conformance descriptor for <A> [A]);
  v2 = sub_10004131C();
  v4 = v3;
  v5 = v2;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v6 = qword_1000611A0;
  isa = sub_1000414EC().super.isa;
  v8 = sub_1000417CC();
  [v6 setObject:isa forKey:v8];

  return sub_100014E84(v5, v4);
}

void *sub_100038794()
{
  v0 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v0 - 8);
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v1 = qword_1000611A0;
  v2 = sub_1000417CC();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_100041C9C();
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
      sub_10004130C();
      swift_allocObject();
      sub_1000412FC();
      sub_1000054B8(&qword_10005F4C8, " v");
      sub_100039740(&qword_10005F4D0, sub_1000396EC, &protocol conformance descriptor for <A> [A]);
      sub_1000412EC();

      sub_100014E84(v5, v6);
      return *&v9[0];
    }
  }

  else
  {
    sub_100015014(v9, &qword_10005E220, &qword_100044770);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100038BA4()
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  sub_100038794();
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger;
  swift_beginAccess();
  sub_100014E14(v0 + v4, v3);
  v5 = sub_10004166C();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_10004164C();
    v9 = sub_100041A9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_10004199C();
      v14 = v13;

      v15 = sub_10000B1E4(v12, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Effects data: %s", v10, 0xCu);
      sub_100005500(v11);
    }

    else
    {
    }

    return (*(v6 + 8))(v3, v5);
  }

  return result;
}

uint64_t sub_100038DCC()
{
  sub_100015014(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger, &qword_10005E218, &qword_100045260);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EffectDataManager(uint64_t a1)
{
  result = qword_10005F3F0;
  if (!qword_10005F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038E94(uint64_t a1)
{
  sub_100013084(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100038F24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005F510, &qword_100045568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100039030(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005EC30, &qword_100045570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_10003914C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000054B8(&qword_10005F4F8, &qword_100045540);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000054B8(&qword_10005F500, &unk_100045548);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100039294(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005F518, &qword_100045578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100039398(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000054B8(&qword_10005F508, &qword_100045558);
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
    sub_1000054B8(&qword_10005EBE0, &qword_100045560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000394CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005ECF0, &unk_100045100);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000395D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005F4F0, &qword_100045538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000396EC()
{
  result = qword_10005F4D8;
  if (!qword_10005F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F4D8);
  }

  return result;
}

uint64_t sub_100039740(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(&qword_10005F4C8, " v");
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000397B8()
{
  result = qword_10005F4E8;
  if (!qword_10005F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F4E8);
  }

  return result;
}

uint64_t sub_10003980C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100041DDC();
  }

  return sub_100041D4C();
}

uint64_t sub_100039898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SnapshotManager.WeakObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_100041DDC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_100041DDC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100039998(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100039A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 3)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_100041EEC() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100039AF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  v14 = 24 * v12;
  v15 = v13 + 24 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

__n128 sub_100039BC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100039BD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_100039C20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

float sub_100039C70(void *a1)
{
  v4 = sub_1000054B8(&qword_10005F520, &qword_100045600);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_10000BA6C(a1, a1[3]);
  sub_100039E4C();
  sub_100041F4C();
  if (!v1)
  {
    v12 = 0;
    sub_100041E3C();
    v11 = 1;
    sub_100041E5C();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  sub_100005500(a1);
  return v2;
}

unint64_t sub_100039E4C()
{
  result = qword_10005F528;
  if (!qword_10005F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F528);
  }

  return result;
}

unint64_t sub_100039EB4()
{
  result = qword_10005F538;
  if (!qword_10005F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F538);
  }

  return result;
}

unint64_t sub_100039F0C()
{
  result = qword_10005F540;
  if (!qword_10005F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F540);
  }

  return result;
}

unint64_t sub_100039F64()
{
  result = qword_10005F548;
  if (!qword_10005F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F548);
  }

  return result;
}

uint64_t sub_100039FB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (*&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] && (v6 = , sub_100027674(v6), v8 = v7, result = , (v8 & 1) != 0))
  {
    v10 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

      os_unfair_lock_lock(v11);
      v12 = *(v10 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
      sub_10003FC50(v12, 1, v3, a1, a2);

      os_unfair_lock_unlock(v11);

      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = v2;
    v14 = sub_10004164C();
    v15 = sub_100041AAC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = &v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v19 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000B1E4(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "#%s resume running not allowed", v16, 0xCu);
      sub_100005500(v17);
    }

    return 0;
  }

  return result;
}

void sub_10003A18C(__int128 *a1, int a2)
{
  v3 = v2;
  v6 = sub_10004166C();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger;
  sub_100005408(a1, v74);
  v9 = sub_10004164C();
  v10 = sub_100041ACC();
  sub_100005464(a1);
  v11 = os_log_type_enabled(v9, v10);
  v60 = a2;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v74[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_10000B1E4(*(a1 + 4), *(a1 + 5), v74);
    *(v12 + 12) = 1024;
    *(v12 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "#%s vfxview update from editor %{BOOL}d", v12, 0x12u);
    sub_100005500(v13);
  }

  v14 = &v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v15 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
  v74[4] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
  v74[5] = v15;
  v75[0] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
  *(v75 + 14) = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
  v16 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
  v74[0] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v74[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
  v74[2] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
  v74[3] = v17;
  sub_100005408(v74, &v67);
  sub_10001A9FC(v65);
  sub_100005464(v74);
  v18 = sub_10001AB00();
  v20 = v19;
  sub_100007314(v65);
  sub_10001A9FC(v66);
  v21 = sub_10001AB00();
  v23 = v22;
  sub_100007314(v66);
  if (v18 == v21 && v20 == v23)
  {
  }

  else
  {
    v24 = sub_100041EEC();

    if ((v24 & 1) == 0)
    {
      sub_100005408(a1, &v67);
      v25 = v3;
      v26 = sub_10004164C();
      v27 = sub_100041ACC();

      sub_100005464(a1);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v56 = v25;
        v29 = v28;
        v55 = swift_slowAlloc();
        v61 = v55;
        *v29 = 136315650;
        v52 = *(a1 + 4);
        v54 = v27;
        v30 = *(a1 + 5);
        *(v29 + 4) = sub_10000B1E4(v52, v30, &v61);
        *(v29 + 12) = 2080;
        v31 = *(v14 + 5);
        v71 = *(v14 + 4);
        v72 = v31;
        v73[0] = *(v14 + 6);
        *(v73 + 14) = *(v14 + 110);
        v32 = *(v14 + 1);
        v67 = *v14;
        v68 = v32;
        v33 = *(v14 + 3);
        v69 = *(v14 + 2);
        v70 = v33;
        v53 = v26;
        *v62 = v69;
        sub_100005408(&v67, v63);

        v76._countAndFlagsBits = 8250;
        v76._object = 0xE200000000000000;
        sub_1000418CC(v76);
        sub_1000418CC(v68);
        v77._countAndFlagsBits = 32;
        v77._object = 0xE100000000000000;
        sub_1000418CC(v77);
        v78._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v78);

        v79._countAndFlagsBits = 120;
        v79._object = 0xE100000000000000;
        sub_1000418CC(v79);
        v80._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v80);

        sub_100005464(&v67);
        v34 = sub_10000B1E4(v62[0], v62[1], &v61);

        *(v29 + 14) = v34;
        *(v29 + 22) = 2080;
        *&v63[0] = v52;
        *(&v63[0] + 1) = v30;

        v81._countAndFlagsBits = 8250;
        v81._object = 0xE200000000000000;
        sub_1000418CC(v81);
        sub_1000418CC(*(a1 + 1));
        v82._countAndFlagsBits = 32;
        v82._object = 0xE100000000000000;
        sub_1000418CC(v82);
        v83._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v83);

        v84._countAndFlagsBits = 120;
        v84._object = 0xE100000000000000;
        sub_1000418CC(v84);
        v85._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v85);

        v35 = sub_10000B1E4(*&v63[0], *(&v63[0] + 1), &v61);

        *(v29 + 24) = v35;
        v36 = v53;
        _os_log_impl(&_mh_execute_header, v53, v54, "#%s vfxview update old '%s' -> '%s'", v29, 0x20u);
        swift_arrayDestroy();

        v25 = v56;
      }

      else
      {
      }

      v37 = *(v14 + 5);
      v63[4] = *(v14 + 4);
      v63[5] = v37;
      v64[0] = *(v14 + 6);
      *(v64 + 14) = *(v14 + 110);
      v38 = *(v14 + 1);
      v63[0] = *v14;
      v63[1] = v38;
      v39 = *(v14 + 3);
      v63[2] = *(v14 + 2);
      v63[3] = v39;
      v40 = *a1;
      v41 = a1[1];
      v42 = a1[3];
      *(v14 + 2) = a1[2];
      *(v14 + 3) = v42;
      *v14 = v40;
      *(v14 + 1) = v41;
      v43 = a1[4];
      v44 = a1[5];
      v45 = a1[6];
      *(v14 + 110) = *(a1 + 110);
      *(v14 + 5) = v44;
      *(v14 + 6) = v45;
      *(v14 + 4) = v43;
      sub_100005464(v63);
      v46 = *(v14 + 5);
      v71 = *(v14 + 4);
      v72 = v46;
      v73[0] = *(v14 + 6);
      *(v73 + 14) = *(v14 + 110);
      v47 = *(v14 + 1);
      v67 = *v14;
      v68 = v47;
      v48 = *(v14 + 3);
      v69 = *(v14 + 2);
      v70 = v48;
      v49 = v59;
      (*(v57 + 16))(v59, &v3[v8], v58);
      type metadata accessor for SnapshotWriter(0);
      swift_allocObject();
      sub_100005408(a1, v62);
      sub_100005408(&v67, v62);
      *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_100015684(&v67, v49);

      if (v60)
      {
        v50 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock];
        os_unfair_lock_lock(v50);
        v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
        sub_10003E9E0(v51);
        v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
        os_unfair_lock_unlock(v50);
      }
    }
  }
}

void sub_10003A818(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10003A86C();
  }
}

uint64_t sub_10003A86C()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041AAC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s worldRendered", v4, 0xCu);
    sub_100005500(v5);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10003C054(sub_100040D9C, v9);
}

uint64_t sub_10003AAFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003AB58()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10003AC2C(uint64_t a1)
{
  result = sub_10004166C();
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

uint64_t sub_10003ACFC(void *a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_100041AFC();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v24 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041BFC();
  __chkstk_darwin(v5);
  v6 = sub_1000416DC();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  v22 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v1 + v7) = [objc_allocWithZone(VFXView) init];
  v23 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  v25 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  v26 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v8 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  v20 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v9 = swift_allocObject();
  *(v9 + 16) = swift_slowAlloc();
  *(v9 + 24) = 0;
  *(v9 + 32) = &_swiftEmptyArrayStorage;
  *(v1 + v8) = v9;
  v21 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v10 = v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v10 = 0;
  *(v10 + 4) = 1;
  v19 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v18 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  sub_1000416BC();
  v30 = &_swiftEmptyArrayStorage;
  sub_100041268(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v27 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v28);
  v11 = sub_100041C0C();
  v12 = v18;
  *(v1 + v18) = v11;
  v13 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v14 = swift_slowAlloc();

  *(v2 + v13) = v14;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v15 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v15 = 0;
  v15[1] = 0;

  sub_100016A34(*v15, v15[1]);
  type metadata accessor for TranscriptBackgroundView(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10003B1C4()
{
  v1 = sub_10004166C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  v6 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager];
  if (v6)
  {
    if (!*(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_100009678(v7);

    if (!*(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {
LABEL_15:
      __break(1u);
      return;
    }

    sub_100014310(v8);

    v9 = *&v0[v5];
    if (v9)
    {
      *(v9 + 40) = 0;
      swift_unknownObjectWeakAssign();
    }
  }

  *&v0[v5] = 0;

  if (qword_10005CD30 != -1)
  {
    swift_once();
  }

  sub_100012300();
  v10 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
  *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;

  if (__OFSUB__(qword_1000611B8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  --qword_1000611B8;
  (*(v2 + 16))(v4, &v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger], v1);
  v11 = v0;
  v12 = sub_10004164C();
  v13 = sub_100041A9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v1;
    v25 = v15;
    *v14 = 136315650;
    v16 = &v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v17 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v18 = *&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v19 = sub_10000B1E4(v17, v18, &v25);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = *v16;
    v21 = v16[1];

    v22 = sub_10000B1E4(v20, v21, &v25);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2048;
    *(v14 + 24) = qword_1000611B8;
    _os_log_impl(&_mh_execute_header, v12, v13, "#%s deinit %s alive count %ld", v14, 0x20u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v24);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v23 = type metadata accessor for TranscriptBackgroundView(0);
  v26.receiver = v11;
  v26.super_class = v23;
  objc_msgSendSuper2(&v26, "dealloc");
}

id sub_10003B6E0()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s didMoveToWindow", v4, 0xCu);
    sub_100005500(v5);
  }

  v9 = type metadata accessor for TranscriptBackgroundView(0);
  v12.receiver = v1;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "didMoveToWindow");
}

void sub_10003B870()
{
  v59.receiver = v0;
  v59.super_class = type metadata accessor for TranscriptBackgroundView(0);
  objc_msgSendSuper2(&v59, "layoutSubviews");
  [v0 bounds];
  if (v1 == 0.0 || ([v0 bounds], CGRectGetHeight(v67) == 0.0))
  {
    v2 = v0;
    v3 = sub_10004164C();
    v4 = sub_100041ACC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v8 = sub_10000B1E4(v6, v7, &v52);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      [v2 bounds];
      *&v60 = v9;
      *(&v60 + 1) = v10;
      *&v61 = v11;
      *(&v61 + 1) = v12;
      type metadata accessor for CGRect(0);
      v13 = sub_10004186C();
      v15 = sub_10000B1E4(v13, v14, &v52);

      *(v5 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "#%s rejecting layout size 0 layoutSubviews %s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v16 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v0 bounds];
    [v16 setFrame:?];
    v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView;
    v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView] = 1;
    if (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] != 1)
    {
      goto LABEL_11;
    }

    v18 = [v16 world];
    if (v18)
    {
    }

    else
    {
      sub_10003BD00();
      sub_10003E33C();
    }

    if (v0[v17] != 1)
    {
      *&v66[14] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v39 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      v40 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v40;
      v41 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      *v66 = v39;
      v42 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v42;
      v64 = v41;
      v43 = v66[29];
      v37 = v66[28];
      v36 = *&v66[24];
      v23 = *(&v39 + 1);
      v25 = *&v66[16];
      v35 = DWORD1(v39);
      v34 = BYTE2(v39);
      v33 = BYTE1(v39);
      v32 = v39;
      v28 = *(&v62 + 1);
      v51 = v42;
      v29 = v41;
      v49 = BYTE8(v41);
      v50 = BYTE8(v42);
      v47 = BYTE9(v41);
      v30 = *(&v65 + 1);
      v27 = *(&v40 + 1);
      v48 = v62;
      v26 = *(&v60 + 1);
      v45 = v65;
      v46 = v40;
      v44 = v60;
      sub_100005408(&v60, &v52);
      v38 = v43;
    }

    else
    {
LABEL_11:
      v19 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      v64 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = v19;
      *v66 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      *&v66[14] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v20 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v20;
      v21 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v21;
      sub_100005408(&v60, &v52);
      [v0 bounds];
      v23 = v22;
      v25 = v24;
      v26 = *(&v60 + 1);
      v27 = *(&v61 + 1);
      v46 = v61;
      v28 = *(&v62 + 1);
      v48 = v62;
      v51 = v63;
      v29 = v64;
      v49 = BYTE8(v64);
      v50 = BYTE8(v63);
      v47 = BYTE9(v64);
      v30 = *(&v65 + 1);
      v44 = v60;
      v45 = v65;
      v31 = v64;

      sub_100005464(&v60);
      v32 = v66[0];
      v33 = v66[1];
      v34 = v66[2];
      v35 = *&v66[4];
      v36 = *&v66[24];
      v37 = v66[28];
      v38 = v66[29];
    }

    *&v52 = v44;
    *(&v52 + 1) = v26;
    *&v53 = v46;
    *(&v53 + 1) = v27;
    *&v54 = v48;
    *(&v54 + 1) = v28;
    *&v55 = v51;
    BYTE8(v55) = v50;
    *&v56 = v29;
    BYTE8(v56) = v49;
    BYTE9(v56) = v47;
    *&v57 = v45;
    *(&v57 + 1) = v30;
    v58[0] = v32;
    v58[1] = v33;
    v58[2] = v34;
    *&v58[4] = v35;
    *&v58[8] = v23;
    *&v58[16] = v25;
    *&v58[24] = v36;
    v58[28] = v37;
    v58[29] = v38;
    v62 = v54;
    v63 = v55;
    v60 = v52;
    v61 = v53;
    *&v66[14] = *&v58[14];
    v65 = v57;
    *v66 = *v58;
    v64 = v56;
    sub_10003A18C(&v60, 0);
    sub_100005464(&v52);
  }
}

void sub_10003BD00()
{
  v1 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v1)
  {

    v2 = v0;
    v3 = sub_10004164C();
    v4 = sub_100041AAC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v8 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v9 = sub_10000B1E4(v7, v8, &v16);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "#%s provideEmptyMaskIfNeeded", v5, 0xCu);
      sub_100005500(v6);
    }

    [v2 frame];
    v11 = v10;
    v13 = v12;
    sub_100010CE0();
    v14 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
    v15 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);
    sub_100010130(0, v11, v13);
    swift_unknownObjectRelease();
    [v14 setTexture:*(v15 + 24)];
  }
}

uint64_t sub_10003BF30(uint64_t a1)
{
  result = sub_10004166C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10003C054(uint64_t result, NSObject *a2)
{
  v4 = result;
  if (v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 125])
  {
    v5 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v6);
    v7 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10003C19C(v7, v2, v4, a2);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v8 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = a2;

    sub_100021184(v4, a2);
    sub_100015AFC(v8, sub_1000400D4, v9);
  }
}

void sub_10003C19C(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_10004166C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100016C10();
  if ((v11 & 0x100000000) != 0)
  {
    v25 = a2;
    v53 = sub_10004164C();
    v26 = sub_100041ABC();

    if (os_log_type_enabled(v53, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v55[0] = v28;
      *v27 = 136315138;
      v29 = &v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v30 = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v31 = *(v29 + 5);

      v32 = sub_10000B1E4(v30, v31, v55);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v53, v26, "#%s Could not get current internal time for Gradient snapshot", v27, 0xCu);
      sub_100005500(v28);
    }

    else
    {
      v49 = v53;
    }
  }

  else
  {
    v12 = *&v11;
    v13 = &unk_100061000;
    v14 = a2;
    v15 = sub_10004164C();
    v16 = sub_100041A9C();

    v17 = os_log_type_enabled(v15, v16);
    if (v12 <= 10000.0)
    {
      if (v17)
      {
        v33 = swift_slowAlloc();
        v53 = a4;
        v34 = v33;
        v35 = swift_slowAlloc();
        v51 = v7;
        v36 = v35;
        *&v55[0] = v35;
        *v34 = 136315394;
        v52 = a3;
        v37 = *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v38 = *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v39 = sub_10000B1E4(v37, v38, v55);
        a3 = v52;

        *(v34 + 4) = v39;
        v13 = &unk_100061000;
        *(v34 + 12) = 2048;
        *(v34 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v15, v16, "#%s Snapshot internal time: %f", v34, 0x16u);
        sub_100005500(v36);
        v7 = v51;

        a4 = v53;
      }
    }

    else
    {
      if (v17)
      {
        v18 = swift_slowAlloc();
        v53 = a4;
        v19 = v18;
        v20 = swift_slowAlloc();
        v52 = a3;
        v21 = v20;
        *&v55[0] = v20;
        *v19 = 136315394;
        v51 = v7;
        v22 = *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v23 = *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v24 = sub_10000B1E4(v22, v23, v55);
        v13 = &unk_100061000;

        *(v19 + 4) = v24;
        v7 = v51;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "#%s Restarting effect internal time next time: %f", v19, 0x16u);
        sub_100005500(v21);
        a3 = v52;

        a4 = v53;
      }

      v12 = 0.0;
    }

    v40 = &v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    *(v40 + 30) = v12;
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = *(v40 + 3);
    v55[2] = *(v40 + 2);
    v55[3] = v43;
    v55[0] = v41;
    v55[1] = v42;
    v44 = *(v40 + 4);
    v45 = *(v40 + 5);
    v46 = *(v40 + 6);
    *(v56 + 14) = *(v40 + 110);
    v55[5] = v45;
    v56[0] = v46;
    v55[4] = v44;
    (*(v8 + 16))(v10, &v14[v13[56]], v7);
    type metadata accessor for SnapshotWriter(0);
    swift_allocObject();
    sub_100005408(v55, &v54);
    *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_100015684(v55, v10);

    v47 = *&v14[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v48 = swift_allocObject();
    *(v48 + 16) = a3;
    *(v48 + 24) = a4;
    *(v48 + 32) = v12;
    sub_100021184(a3, a4);
    sub_100015AFC(v47, sub_100040170, v48);
  }
}

uint64_t sub_10003C6E0()
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  result = [qword_1000611A0 baseFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80);
  }

  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 30;
        if (result < 30)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003C794()
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  result = [qword_1000611A0 scrollingFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 88);
  }

  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 15;
        if (result < 15)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10003C848()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling;
  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) == 1)
  {
    v3 = sub_10003C794();
  }

  else
  {
    v3 = sub_10003C6E0();
  }

  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 124))
  {
    v4 = v3 / 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + v2);
  v6 = sub_10004164C();
  v7 = sub_100041ACC();
  if (os_log_type_enabled(v6, v7))
  {
    if (v5)
    {
      v8 = "Scrolling - Reducing FPS to %ld";
    }

    else
    {
      v8 = "Using base FPS: %ld";
    }

    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, v8, v9, 0xCu);
  }

  v10 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView);

  return [v10 setPreferredFramesPerSecond:v4];
}

id sub_10003C97C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v1 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v1 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 bounds];
  [v5 setFrame:?];
  [v5 setUserInteractionEnabled:0];
  [v5 setAntialiasingMode:0];
  [v5 setDelegate:v1];
  if (*(a1 + 24))
  {
    [v5 setWantsExtendedDynamicRange:1];
  }

  if (*(a1 + 16))
  {
    [v5 setColorSpace:?];
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [v5 setPixelFormat:*a1];
  }

  return sub_10003C848();
}

void sub_10003CB08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(void *), uint64_t a6)
{
  v125[1] = a6;
  v126 = a5;
  v147 = a4;
  v146 = a2;
  v142 = sub_10004163C();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10004168C();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000416DC();
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1000414BC();
  v148 = *(v143 - 8);
  v11 = __chkstk_darwin(v143);
  v134 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v125 - v13;
  v149 = sub_10004155C();
  v15 = *(v149 - 1);
  __chkstk_darwin(v149);
  v17 = v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004166C();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v135 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v139 = v125 - v23;
  v24 = __chkstk_darwin(v22);
  v127 = v125 - v25;
  __chkstk_darwin(v24);
  v27 = v125 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v150 = a3;
  v144 = v18;
  if (Strong)
  {
    v29 = Strong;
    (*(v19 + 16))(v27, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger, v18);

    v30 = v19;
    v31 = sub_10004164C();
    v32 = sub_100041ACC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = a1;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v33 = 136315138;
      *(v33 + 4) = sub_10000B1E4(v146, v150, aBlock);
      _os_log_impl(&_mh_execute_header, v31, v32, "#%s------- task loading starting ..", v33, 0xCu);
      sub_100005500(v35);
      a1 = v34;
      v18 = v144;
    }

    (*(v30 + 8))(v27, v18);
    v19 = v30;
  }

  sub_10004154C();
  sub_10004153C();
  v37 = v36;
  v39 = *(v15 + 8);
  v38 = v15 + 8;
  v136 = v39;
  v39(v17, v149);
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v40 = [qword_1000611A0 allowsFuture];
  v145 = v19;
  v137 = v38;
  if (v40)
  {
    sub_1000054B8(&qword_10005F858, qword_100045870);
    inited = swift_initStackObject();
    v42 = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 32) = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 16) = xmmword_1000445B0;
    *(inited + 64) = &type metadata for Bool;
    *(inited + 40) = 1;
    v43 = v42;
    v44 = sub_10003347C(inited);
    swift_setDeallocating();
    sub_100041200(inited + 32);
  }

  else
  {
    v44 = sub_10003347C(&_swiftEmptyArrayStorage);
  }

  sub_10000BB04(0, &unk_10005F848, VFXWorld_ptr);
  (*(v148 + 16))(v14, v147, v143);
  v45 = sub_10003E0EC(v14, v44);
  sub_10004154C();
  sub_10004153C();
  v47 = v46;
  v136(v17, v149);
  swift_beginAccess();
  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v138 = a1;
    v50 = (v48 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration);
    if (*(v48 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 73))
    {
      v51 = [v45 physicsWorld];
      [v51 setUseFixedTimeStep:1];
    }

    v135 = v50;
    v147 = v45;
    v126(v45);
    v52 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v53 = v150;

    v54 = v49;
    v55 = sub_10004164C();
    v56 = sub_100041ACC();

    v57 = os_log_type_enabled(v55, v56);
    v148 = v52;
    v143 = v54;
    v134 = v49;
    if (v57)
    {
      v58 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v58 = 136315394;
      *(v58 + 4) = sub_10000B1E4(v146, v53, aBlock);
      *(v58 + 12) = 2080;
      [*&v54[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] bounds];
      v59 = NSStringFromRect(v153);
      v60 = sub_1000417FC();
      v62 = v61;

      v63 = sub_10000B1E4(v60, v62, aBlock);

      *(v58 + 14) = v63;
      v54 = v143;
      _os_log_impl(&_mh_execute_header, v55, v56, "#%s Prepare with size: %s", v58, 0x16u);
      swift_arrayDestroy();

      v49 = v134;
    }

    v64 = v145;
    v65 = v127;
    [v147 prepareForRenderer:*&v54[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] progressHandler:0];
    sub_10004154C();
    sub_10004153C();
    v67 = v66;
    v136(v17, v149);

    v68 = sub_10004164C();
    v69 = sub_100041AAC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v70 = 136315394;
      *(v70 + 4) = sub_10000B1E4(v146, v53, aBlock);
      *(v70 + 12) = 2048;
      *(v70 + 14) = v47 - v37;
      _os_log_impl(&_mh_execute_header, v68, v69, "#%s Reading time: %fs", v70, 0x16u);
      sub_100005500(v71);
    }

    v72 = sub_10004164C();
    v73 = sub_100041AAC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v74 = 136315394;
      *(v74 + 4) = sub_10000B1E4(v146, v53, aBlock);
      *(v74 + 12) = 2048;
      *(v74 + 14) = v67 - v47;
      _os_log_impl(&_mh_execute_header, v72, v73, "#%s Preparing time: %fs", v74, 0x16u);
      sub_100005500(v75);
    }

    v76 = sub_10004164C();
    v77 = sub_100041AAC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v78 = 136315394;
      *(v78 + 4) = sub_10000B1E4(v146, v53, aBlock);
      *(v78 + 12) = 2048;
      *(v78 + 14) = v67 - v37;
      _os_log_impl(&_mh_execute_header, v76, v77, "#%s Total time: %fs", v78, 0x16u);
      sub_100005500(v79);
    }

    v80 = v143;
    v81 = sub_100016EE0();
    if (v81)
    {
      v82 = v81;
      v83 = *(v64 + 16);
      v83(v65, &v49[v148], v144);
      type metadata accessor for MaskManager(0);
      swift_allocObject();
      *&v80[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = sub_1000104D0(v65, v82);
      v84 = v82;

      if (v80[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView] == 1)
      {
        sub_10003BD00();
      }

      v85 = v145;
    }

    else
    {
      v85 = v64;
      v83 = *(v64 + 16);
    }

    v149 = v83;
    v86 = v148;
    v87 = &v49[v148];
    v88 = v49;
    v89 = v144;
    v83(v65, v87, v144);
    type metadata accessor for WorldSerialAccessor(0);
    v90 = swift_allocObject();
    v91 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock;
    v92 = v147;
    v93 = swift_slowAlloc();
    *(v90 + v91) = v93;
    *v93 = 0;
    (*(v85 + 32))(v90 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_logger, v65, v89);
    v147 = v92;
    *(v90 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world) = v92;
    v94 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
    *&v80[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = v90;

    v95 = v80;
    v96 = v135[98];
    v149(v65, &v88[v86], v89);
    v97 = v95;
    v98 = sub_100040E94(v90, v96, 0, v97, v65);

    *&v97[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = v98;

    sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
    v99 = sub_100041B0C();
    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000411F8;
    aBlock[5] = v100;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100028728;
    aBlock[3] = &unk_100056BC8;
    v101 = _Block_copy(aBlock);

    v102 = v128;
    sub_1000416AC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000054B8(&unk_10005D640, "B|");
    sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
    v103 = v130;
    v104 = v133;
    sub_100041CAC();
    sub_100041B1C();
    _Block_release(v101);

    (*(v132 + 8))(v103, v104);
    (*(v129 + 8))(v102, v131);
    if (*(v143 + v94))
    {

      v106 = sub_100025960(v105, &v134[v148]);

      *&v97[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect] = v106;

      sub_10003E558();

      v107 = v145;
      v108 = v139;
      v109 = v150;
      swift_beginAccess();
      v110 = swift_unknownObjectWeakLoadStrong();
      if (v110)
      {
        v111 = v110;
        v112 = v144;
        (*(v107 + 16))(v108, v110 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger, v144);

        v113 = sub_10004164C();
        v114 = sub_100041ACC();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v152 = v116;
          *v115 = 136315138;
          *(v115 + 4) = sub_10000B1E4(v146, v109, &v152);
          _os_log_impl(&_mh_execute_header, v113, v114, "#%s------- task loading done", v115, 0xCu);
          sub_100005500(v116);
        }

        (*(v107 + 8))(v108, v112);
      }

      if (qword_10005CD28 != -1)
      {
        swift_once();
      }

      v117 = qword_100061090;
      sub_100041BCC();
      v118 = *(v117 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
      v119 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
      swift_beginAccess();
      v120 = v141;
      v121 = v117 + v119;
      v122 = v140;
      v123 = v142;
      (*(v141 + 16))(v140, v121, v142);
      v124 = v118;
      sub_10004161C();

      (*(v120 + 8))(v122, v123);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_10003E0EC(uint64_t a1, uint64_t a2)
{
  sub_10004144C(__stack_chk_guard);
  v5 = v4;
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_100041268(&qword_10005CFB8, type metadata accessor for VFXWorldLoaderOption, &unk_100044070);
    v6.super.isa = sub_10004177C().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v15 = 0;
  v7 = [swift_getObjCClassFromMetadata() worldWithURL:v5 options:v6.super.isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_1000414BC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_1000413EC();

    swift_willThrow();
    v13 = sub_1000414BC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

void sub_10003E2C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 1;
    if (*(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView) == 1)
    {
      sub_10003E33C();
    }
  }
}

void sub_10003E33C()
{
  v1 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v2);
    v3 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v3 setWorld:*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world)];
    os_unfair_lock_unlock(v2);

    v4 = v0;
    v5 = sub_10004164C();
    v6 = sub_100041ACC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v10 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v11 = sub_10000B1E4(v9, v10, &v18);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "#%s setting world", v7, 0xCu);
      sub_100005500(v8);
    }

    v12 = &v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v13 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v14 = v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 56];
    v15 = *(v12 + 8);
    v16 = v12[72];
    v17 = v15;
    if (v16 == 1)
    {
      [v3 setWantsExtendedDynamicRange:1];
    }

    if (v15)
    {
      [v3 setColorSpace:v17];
    }

    if ((v14 & 1) == 0)
    {
      [v3 setPixelFormat:v13];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003E558()
{
  v0 = sub_10004168C();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000416DC();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v6 = sub_100041B0C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000400AC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100056A60;
  v8 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

char *sub_10003E83C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v13 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
    v3 = *&result[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];
    *(v3 + 24) = 1;
    swift_beginAccess();
    v4 = *(v3 + 32);
    v5 = *(v4 + 16);
    v15 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;

    v14 = v5;
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      while (v6 < *(v4 + 16))
      {
        sub_10000BA08(v7, v16);
        v9 = v17;
        v8 = v18;
        result = sub_10000BA6C(v16, v17);
        if (!*&v2[v15])
        {
          goto LABEL_10;
        }

        ++v6;
        v10 = *(v8 + 8);

        v10(v11, v9, v8);

        result = sub_100005500(v16);
        v7 += 40;
        if (v14 == v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:

      v12 = *&v2[v13];

      swift_beginAccess();
      *(v12 + 32) = &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_10003E9E0(id result)
{
  if ((v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) == 0)
  {
    v2 = v1;
    v3 = sub_10004164C();
    v4 = sub_100041ACC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "show snapshot", v5, 2u);
    }

    [v2 setAlpha:0.0];
    *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  }
}

id sub_10003EAB0()
{
  v1 = v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting];
  v2 = v0;
  v3 = sub_10004164C();
  v4 = sub_100041ACC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v9 = 0x676E69646968;
    }

    else
    {
      v9 = 0x676E69776F6873;
    }

    if (v1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_10000B1E4(v9, v10, &v14);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "#%s %s live view (isSnapshotting = %{BOOL}d", v5, 0x1Cu);
    swift_arrayDestroy();
  }

  v12 = 1.0;
  if (v1)
  {
    v12 = 0.0;
    if (v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot])
    {
      v12 = 1.0;
    }
  }

  return [v2 setAlpha:v12];
}

uint64_t sub_10003EC98(void (*a1)(void), void (*a2)(void))
{
  v5 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v6 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v7 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_100021184(a1, a2);
  result = sub_100016A34(v6, v7);
  if (a1)
  {
    v9 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock);
    os_unfair_lock_lock(v9);
    v10 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented);
    os_unfair_lock_unlock(v9);
    if ((v10 & 1) != 0 || (, v11 = sub_100015870(), , !v11))
    {
      a1();
      sub_100016A34(a1, a2);
      v12 = *v5;
      v13 = v5[1];
      *v5 = 0;
      v5[1] = 0;
    }

    else
    {
      v12 = a1;
      v13 = a2;
    }

    return sub_100016A34(v12, v13);
  }

  return result;
}

void sub_10003ED98(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v5 = a3;
    v6 = sub_10004164C();
    v7 = sub_100041A9C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      v10 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v11 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v12 = *(v10 + 5);

      v13 = sub_10000B1E4(v11, v12, &v15);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      *(v8 + 14) = *&a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s Snapshot for PosterKit done. lastSnapshotTime: %f", v8, 0x16u);
      sub_100005500(v9);
    }
  }

  v14 = &a3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  *v14 = a2;
  v14[4] = BYTE4(a2) & 1;
}

void sub_10003EF04(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004168C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000416DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000416FC();
  v73 = *(v76 - 8);
  v12 = __chkstk_darwin(v76);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v63 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = (a1 & 1) == 0;
  v18 = Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed;
  v19 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v72 = v10;
  if (!v19)
  {

    v31 = sub_100015870();

    if (v31)
    {
      sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
      v32 = sub_100041B0C();
      v71 = v9;
      v76 = v32;
      v33 = swift_allocObject();
      *(v33 + 16) = v17;
      v81 = sub_100040DF0;
      v82 = v33;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_100028728;
      v80 = &unk_100056B28;
      v34 = _Block_copy(&aBlock);
      v35 = v17;

      v36 = v74;
      sub_1000416AC();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000054B8(&unk_10005D640, "B|");
      sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
      sub_100041CAC();
      v37 = v76;
      sub_100041B1C();
      _Block_release(v34);

      (*(v6 + 8))(v8, v5);
      (*(v72 + 8))(v36, v71);
    }

    else
    {
    }

    return;
  }

  v69 = v6;
  v70 = v5;
  v20 = *(v18 + 8);
  v71 = v9;
  v67 = v19;
  v68 = v8;
  v66 = v20;
  if (a1)
  {
    v21 = &v17[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
    *v21 = a2;
    v21[4] = BYTE4(a2) & 1;
    sub_100021184(v19, v20);
    v22 = v17;
    v23 = sub_10004164C();
    v24 = sub_100041ACC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315394;
      v27 = &v22[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v28 = *&v22[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v29 = *(v27 + 5);

      v30 = sub_10000B1E4(v28, v29, &aBlock);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      if (v21[4])
      {
        __break(1u);
        return;
      }

      *(v25 + 14) = *v21;
      _os_log_impl(&_mh_execute_header, v23, v24, "#%s snapshot succeeded: %f", v25, 0x16u);
      sub_100005500(v26);

      goto LABEL_11;
    }
  }

  else
  {

    [v17 setAlpha:1.0];
    v38 = v17;
    v23 = sub_10004164C();
    v39 = sub_100041ACC();

    if (os_log_type_enabled(v23, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136315138;
      v42 = &v38[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v43 = *&v38[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v44 = *(v42 + 5);

      v45 = sub_10000B1E4(v43, v44, &aBlock);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v23, v39, "#%s Failed snapshot", v40, 0xCu);
      sub_100005500(v41);

LABEL_11:
    }
  }

  v46 = v17;
  v47 = sub_10004164C();
  v48 = sub_100041ACC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136315138;
    v51 = *&v46[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v52 = *&v46[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v53 = sub_10000B1E4(v51, v52, &aBlock);

    *(v49 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v47, v48, "#%s readyForSnapshot", v49, 0xCu);
    sub_100005500(v50);
  }

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v65 = sub_100041B0C();
  sub_1000416EC();
  sub_10004171C();
  v73 = *(v73 + 8);
  (v73)(v14, v76);
  v54 = swift_allocObject();
  v55 = v66;
  v56 = v67;
  v54[2] = v67;
  v54[3] = v55;
  v54[4] = v46;
  v81 = sub_100040E38;
  v82 = v54;
  aBlock = _NSConcreteStackBlock;
  v78 = 1107296256;
  v79 = sub_100028728;
  v80 = &unk_100056B78;
  v57 = _Block_copy(&aBlock);
  sub_100021184(v56, v55);
  v64 = v46;

  v58 = v74;
  sub_1000416AC();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  v59 = v68;
  v60 = v70;
  sub_100041CAC();
  v61 = v75;
  v62 = v65;
  sub_100041AEC();
  _Block_release(v57);

  sub_100016A34(v56, v55);
  (*(v69 + 8))(v59, v60);
  (*(v72 + 8))(v58, v71);
  (v73)(v61, v76);
}

void sub_10003F89C(void *a1)
{
  v1 = a1;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s showing live view (worldRendered)", v4, 0xCu);
    sub_100005500(v5);
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_100040E8C;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100028728;
  v12[3] = &unk_100056BA0;
  v11 = _Block_copy(v12);

  [v9 animateWithDuration:v11 animations:0.25];
  _Block_release(v11);
}

void sub_10003FA8C(uint64_t a1)
{
  v1 = sub_10004163C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10005CD28 != -1)
  {
    swift_once();
  }

  v5 = qword_100061090;
  sub_100041BEC();
  v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v7, v1);
  v8 = v6;
  sub_10004161C();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setAlpha:1.0];
  }
}

id sub_10003FC50(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;

  v10 = sub_10004164C();
  v11 = sub_100041ACC();

  v12 = os_log_type_enabled(v10, v11);
  if (a2)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v15 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v16 = sub_10000B1E4(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_10000B1E4(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Starting VFXWorld clock and rendering, reason: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = [a1 clock];
    [v17 setPaused:0];

    [*&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] setRendersContinuously:1];
    v18 = [a1 rootNode];
    v19 = sub_1000417CC();
    v20 = [v18 childNodeWithName:v19 recursively:1];

    if (v20)
    {
      v21 = [v20 parameters];

      if (v21)
      {
        isa = sub_1000419DC().super.super.isa;
        v23 = sub_1000417CC();
        [v21 setObject:isa forKeyedSubscript:v23];
        swift_unknownObjectRelease();
      }
    }

    return sub_10003C848();
  }

  else
  {
    if (v12)
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v27 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v28 = sub_10000B1E4(v26, v27, &v31);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_10000B1E4(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Pausing VFXWorld clock and rendering, reason: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 clock];
    [v29 setPaused:1];

    v30 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];

    return [v30 setRendersContinuously:0];
  }
}

uint64_t sub_100040074()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000400B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000400D4(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1, 0);
  }

  return result;
}

uint64_t sub_100040124(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100040170(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1, *(v1 + 32));
  }

  return result;
}

uint64_t sub_1000401BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = 0;
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = 0;
  *(a3 + 40) = &off_1000564B8;
  swift_unknownObjectWeakAssign();

  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_logger;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3 + v5, a2, v6);
  v8 = objc_opt_self();
  v9 = [v8 processInfo];
  v10 = [v9 thermalState];

  *(a3 + 24) = v10;
  v11 = [v8 processInfo];
  LOBYTE(v9) = [v11 isLowPowerModeEnabled];

  *(a3 + 16) = v9;

  v12 = sub_10004164C();
  v13 = sub_100041A9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 67109378;
    *(v14 + 4) = *(a3 + 16);

    *(v14 + 8) = 2080;
    v16 = *(a3 + 24);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = 0xE700000000000000;
        v18 = 0x73756F69726573;
        goto LABEL_13;
      }

      if (v16 == 3)
      {
        v17 = 0xE800000000000000;
        v18 = 0x6C61636974697263;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = 0xE700000000000000;
        v18 = 0x6C616E696D6F6ELL;
        goto LABEL_13;
      }

      if (v16 == 1)
      {
        v17 = 0xE400000000000000;
        v18 = 1919508838;
LABEL_13:
        v19 = sub_10000B1E4(v18, v17, &v21);

        *(v14 + 10) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "lowPowerEnabled base state: %{BOOL}d. thermalState: %s", v14, 0x12u);
        sub_100005500(v15);

        goto LABEL_14;
      }
    }

    v17 = 0xE600000000000000;
    v18 = 0x6E776F6B6E75;
    goto LABEL_13;
  }

LABEL_14:
  sub_1000131CC();
  (*(v7 + 8))(a2, v6);
  return a3;
}

void sub_1000404E8()
{
  v1 = sub_10004168C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000416DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock];
  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented;
  v11 = (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) != 0 || *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] > 1;
  if (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] == 1)
  {
    v12 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = v14;
      os_unfair_lock_unlock(v9);
      if (!v11)
      {
        v27 = v6;
        v28 = v5;
        v29 = v2;
        v15 = v0;
        v30 = v0;
        v16 = sub_10004164C();
        v17 = sub_100041AAC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v26[0] = swift_slowAlloc();
          aBlock[0] = v26[0];
          *v18 = 136315138;
          v26[1] = v15;
          v19 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
          v20 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

          v21 = sub_10000B1E4(v19, v20, aBlock);

          *(v18 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v16, v17, "#%s didPresent", v18, 0xCu);
          sub_100005500(v26[0]);
        }

        os_unfair_lock_lock(v9);
        v30[v10] = 1;
        sub_10003E9E0(v22);
        os_unfair_lock_unlock(v9);
        sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
        v23 = sub_100041B0C();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100040D94;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100028728;
        aBlock[3] = &unk_100056AD8;
        v25 = _Block_copy(aBlock);

        sub_1000416AC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000054B8(&unk_10005D640, "B|");
        sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
        sub_100041CAC();
        sub_100041B1C();
        _Block_release(v25);

        (*(v29 + 8))(v4, v1);
        (*(v27 + 8))(v8, v28);
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(v9);
  }
}

void sub_1000409A0()
{
  v1 = v0;
  v2 = sub_100041AFC();
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v14 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100041BFC();
  __chkstk_darwin(v4);
  v5 = sub_1000416DC();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v0 + v6) = [objc_allocWithZone(VFXView) init];
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v8 = swift_allocObject();
  *(v8 + 16) = swift_slowAlloc();
  *(v8 + 24) = 0;
  *(v8 + 32) = &_swiftEmptyArrayStorage;
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v9 = v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v13 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  sub_1000416BC();
  v17 = &_swiftEmptyArrayStorage;
  sub_100041268(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  *(v0 + v13) = sub_100041C0C();
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock;
  *(v1 + v10) = swift_slowAlloc();
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v11 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v11 = 0;
  v11[1] = 0;
  sub_100041DCC();
  __break(1u);
}

uint64_t sub_100040DB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040DF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040E38()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  v2 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v3 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v4 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v2 = 0;
  v2[1] = 0;

  return sub_100016A34(v3, v4);
}

uint64_t sub_100040E94(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = sub_10004166C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LifecycleManager(0);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = 0;
  *(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor) = 0;
  *(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = 1;
  v15 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning;
  *(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) = 0;
  *(v14 + 40) = &off_100056A20;
  v27 = a4;
  swift_unknownObjectWeakAssign();
  *(v14 + 16) = a2;
  *(v14 + 17) = a3;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  *(v14 + v15) = [qword_1000611A0 alwaysRender];
  *(v14 + 24) = a1;
  v16 = *(v11 + 16);
  v16(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_logger, a5, v10);
  v16(v13, a5, v10);
  type metadata accessor for SimulationSpeedManager(0);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[5] = 0;
  swift_unknownObjectWeakInit();
  v18 = v17 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
  *v18 = 0;
  v18[4] = 1;
  v17[5] = &off_1000564C8;
  swift_unknownObjectWeakAssign();
  v17[3] = a1;
  v28 = v11;
  (*(v11 + 32))(v17 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_logger, v13, v10);
  v19 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  *(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = v17;
  swift_retain_n();

  v16(v13, a5, v10);
  type metadata accessor for PerformanceMonitor(0);
  v20 = swift_allocObject();

  v22 = sub_1000401BC(v21, v13, v20);
  v23 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor;
  *(v14 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor) = v22;

  if (*(v14 + v19))
  {

    sub_100009184(1.0);

    if (*(v14 + v23))
    {

      sub_10001418C(v25);

      sub_1000278F8(v26);
      (*(v28 + 8))(a5, v10);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100041200(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005F2F0, &qword_1000454B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100041268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}