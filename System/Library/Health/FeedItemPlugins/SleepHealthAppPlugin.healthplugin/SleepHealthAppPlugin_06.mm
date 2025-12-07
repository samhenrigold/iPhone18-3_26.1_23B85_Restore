uint64_t sub_29E6A656C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];
  v2 = v0[19];

  return v1(v2);
}

uint64_t sub_29E6A6628()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E6A66E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24[0] = a2;
  sub_29E605ADC(0);
  v4 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v24 - v8;
  v10 = sub_29E754048();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v24 - v15;
  sub_29E6A8290(0);
  sub_29E6A8410(&qword_2A1857B80, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
  result = sub_29E754108();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v24[1] = -1;
    sub_29E6A8410(&qword_2A1857F38, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA318]);
    sub_29E754C08();
    (*(v11 + 16))(v14, a1, v10);
    sub_29E6A834C(a1);
    v18 = *(v11 + 32);
    v18(v9, v14, v10);
    v18(&v9[*(v4 + 48)], v16, v10);
    sub_29E6A83A8(v9, v7, sub_29E605ADC);
    v19 = *(v4 + 48);
    v20 = v24[0];
    v18(v24[0], v7, v10);
    v21 = *(v11 + 8);
    v21(&v7[v19], v10);
    sub_29E605CC8(v9, v7);
    v22 = *(v4 + 48);
    sub_29E6A82B0(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
    v18((v20 + *(v23 + 36)), &v7[v22], v10);
    return (v21)(v7, v10);
  }

  return result;
}

uint64_t sub_29E6A6A04()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_gregorianCalendar;
  v2 = sub_29E74EE78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_algorithmVersion;
  v4 = sub_29E74F0D8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepScoreDaySummaryProviderDataSource(uint64_t a1)
{
  result = qword_2A1858CE0;
  if (!qword_2A1858CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6A6B4C(uint64_t a1)
{
  result = sub_29E74EE78();
  if (v2 <= 0x3F)
  {
    result = sub_29E74F0D8();
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

uint64_t sub_29E6A6C7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E60350C;

  return sub_29E6A5A24(a1);
}

uint64_t sub_29E6A6D2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29E68CB3C(0);
  v34 = v4;
  result = sub_29E754EA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      sub_29E7541D8();
      sub_29E7550C8();
      sub_29E7542D8();
      v23 = sub_29E755108();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_29E6A6FDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29E6A8458();
  v33 = v4;
  result = sub_29E754EA8();
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
        sub_29E61FF28(v24, v34);
      }

      else
      {
        sub_29E606008(v24, v34);
      }

      sub_29E7550C8();
      sub_29E7542D8();
      result = sub_29E755108();
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
      result = sub_29E61FF28(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_29E6A7288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_29E74F048();
  v5 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E754048();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29E6A81E4(0);
  v47 = v4;
  result = sub_29E754EA8();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_29E6A8410(&qword_2A1857B78, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
      result = sub_29E7540A8();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

id sub_29E6A7724()
{
  v1 = v0;
  sub_29E68CB3C(0);
  v2 = *v0;
  v3 = sub_29E754E98();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
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

void *sub_29E6A7874()
{
  v1 = v0;
  sub_29E6A8458();
  v2 = *v0;
  v3 = sub_29E754E98();
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
        sub_29E606008(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_29E61FF28(v25, (*(v4 + 56) + v22));
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

char *sub_29E6A7A0C()
{
  v1 = v0;
  v41 = sub_29E74F048();
  v44 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E754048();
  v43 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A81E4(0);
  v4 = *v0;
  v5 = sub_29E754E98();
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

void *sub_29E6A7D54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v8 = *v3;
  v31 = a3;
  v32 = v8;
  v9 = sub_29E754648();
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A8150(0);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v17 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_gregorianCalendar;
  v33 = sub_29E74EE78();
  v18 = *(v33 - 8);
  (*(v18 + 16))(v4 + v17, a2, v33);
  v19 = OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_algorithmVersion;
  v20 = sub_29E74F0D8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v4 + v19, a3, v20);
  sub_29E6163F8();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E764160;
  sub_29E63027C();
  v23 = *MEMORY[0x29EDBA4D0];
  a1;
  v24 = MEMORY[0x29ED96FF0](v23);
  v25 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v22 + 32) = v25;
  v39 = v32;
  swift_getMetatypeMetadata();
  sub_29E7541F8();
  sub_29E754658();

  sub_29E6A8410(&qword_2A1858D00, MEMORY[0x29EDC2E68], MEMORY[0x29EDC2E60]);
  v26 = v35;
  sub_29E752988();
  (*(v36 + 8))(v12, v26);
  sub_29E6A8410(&qword_2A1858D08, sub_29E6A8150, MEMORY[0x29EDB8918]);
  v27 = v37;
  v28 = sub_29E7528E8();
  (*(v21 + 8))(v31, v20);
  (*(v18 + 8))(v34, v33);
  (*(v38 + 8))(v16, v27);
  *(v4 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_modelsDidChangePublisher) = v28;
  return v4;
}

void sub_29E6A8150(uint64_t a1)
{
  if (!qword_2A1858CF8)
  {
    sub_29E754648();
    sub_29E6A8410(&qword_2A1858D00, MEMORY[0x29EDC2E68], MEMORY[0x29EDC2E60]);
    v1 = sub_29E752648();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858CF8);
    }
  }
}

void sub_29E6A81E4(uint64_t a1)
{
  if (!qword_2A1858D10)
  {
    sub_29E754048();
    sub_29E74F048();
    sub_29E6A8410(&qword_2A1857B78, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858D10);
    }
  }
}

void sub_29E6A82B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E6A8410(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA308]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6A834C(uint64_t a1)
{
  sub_29E6A8290(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6A83A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6A8410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6A8458()
{
  if (!qword_2A1859CE0)
  {
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859CE0);
    }
  }
}

uint64_t type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart(uint64_t a1)
{
  result = qword_2A1858D18;
  if (!qword_2A1858D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6A8530(uint64_t a1)
{
  sub_29E6AE3A4(319, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SleepApneaEventSummaryViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_29E6A85FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6A85FC()
{
  if (!qword_2A1858D30)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858D30);
    }
  }
}

uint64_t sub_29E6A864C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_29E6AC8E0(0);
  v76 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v75 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v72 = v67 - v6;
  v84 = sub_29E74ED28();
  v73 = *(v84 - 8);
  MEMORY[0x2A1C7C4A8](v84);
  v83 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AC948(0);
  v74 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v77 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AE3A4(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v87 = v67 - v11;
  sub_29E6AC9DC(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD4C4(0);
  v18 = v17;
  v79 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ADAC8(0);
  v85 = v21;
  v81 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v80 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ADCE4(0);
  v71 = v23;
  v70 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v86 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v2;
  sub_29E6ACAA4(0);
  sub_29E6AD210();
  sub_29E752488();
  v88 = v2;
  sub_29E6AD5C8(0);
  v26 = v25;
  v27 = sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC, MEMORY[0x29EDB8690]);
  v28 = sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8, MEMORY[0x29EDB86F8]);
  sub_29E753688();
  (*(v14 + 8))(v16, v13);
  v82 = v2;
  v29 = sub_29E6AA39C();
  v30 = *(v29 + 2);
  if (v30)
  {
    v31 = *(v29 + 4);
    v32 = v30 - 1;
    if (v32)
    {
      v34 = (v29 + 40);
      v33 = v87;
      do
      {
        v35 = *v34++;
        v36 = v35;
        if (v31 < v35)
        {
          v31 = v36;
        }

        --v32;
      }

      while (v32);
    }

    else
    {
      v33 = v87;
    }

    if (v31 < 0.0)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {

    v31 = 30.0;
    v33 = v87;
  }

  v94 = 0;
  v95 = v31;
  v38 = sub_29E7525D8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v69 = v38;
  v68 = v40;
  v67[1] = v39 + 56;
  (v40)(v33, 1, 1);
  sub_29E6AE764(0, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v42 = v41;
  v90 = v13;
  v91 = v26;
  v92 = v27;
  v93 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_29E6ADC48();
  v45 = v80;
  sub_29E7536C8();
  sub_29E6AE2AC(v33, &qword_2A1A7C090, MEMORY[0x29EDB8710]);
  (*(v79 + 8))(v20, v18);
  sub_29E6ADEE0(0);
  v47 = v46;
  v90 = v18;
  v91 = v42;
  v92 = OpaqueTypeConformance2;
  v93 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_29E6AE80C(&qword_2A1858E70, sub_29E6ADEE0, MEMORY[0x29EDB86F8]);
  v50 = v85;
  v79 = v49;
  sub_29E753678();
  (*(v81 + 8))(v45, v50);
  v51 = v82 + *(type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart(0) + 20);
  v52 = *(type metadata accessor for SleepApneaEventSummaryViewModel(0) + 20);
  v53 = v83;
  sub_29E74EC68();
  sub_29E6AE80C(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v54 = v84;
  result = sub_29E7540E8();
  if (result)
  {
    v55 = v73;
    v82 = v48;
    v56 = *(v73 + 32);
    v57 = v72;
    v56(v72, v53, v54);
    v58 = v76;
    (*(v55 + 16))(v57 + *(v76 + 48), v51 + v52, v54);
    v59 = v54;
    v60 = v75;
    sub_29E6AE408(v57, v75, sub_29E6AC8E0);
    v61 = *(v58 + 48);
    v83 = v47;
    v62 = v77;
    v56(v77, v60, v59);
    v63 = *(v55 + 8);
    v63(v60 + v61, v59);
    sub_29E6AE470(v57, v60, sub_29E6AC8E0);
    v56((v62 + *(v74 + 36)), (v60 + *(v58 + 48)), v59);
    v63(v60, v59);
    v64 = v87;
    v68(v87, 1, 1, v69);
    v90 = v85;
    v91 = v83;
    v92 = v82;
    v93 = v79;
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    v65 = v71;
    v66 = v86;
    sub_29E7536A8();
    sub_29E6AE2AC(v64, &qword_2A1A7C090, MEMORY[0x29EDB8710]);
    sub_29E6AE24C(v62, sub_29E6AC948);
    return (*(v70 + 8))(v66, v65);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_29E6A90A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v77 = sub_29E74ED28();
  v59 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v58 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AE704(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v74 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29E752568();
  v68 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD178(0, &qword_2A1858DA0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
  v67 = v8;
  v64 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v61 = v57 - v9;
  sub_29E6AD088(0);
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v70 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v69 = v57 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v62 = v57 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v76 = v57 - v17;
  sub_29E6ACB18(0);
  v65 = v18;
  v63 = *(v18 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v75 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v78 = v57 - v21;
  sub_29E7544C8();
  v60 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v79 = *a1;
  v57[2] = swift_getKeyPath();
  sub_29E6AE3A4(0, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
  v57[1] = v22;
  sub_29E6ACC1C(0);
  v57[0] = v23;
  sub_29E6AD000();
  sub_29E6AE80C(&qword_2A1858D90, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, &unk_29E76E384);
  sub_29E6ACD88(255);
  v25 = v24;
  sub_29E6ACEBC(255);
  v27 = v26;
  v28 = MEMORY[0x29EDB86D0];
  sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
  v30 = v29;
  v31 = sub_29E752548();

  *&v83 = v31;
  *(&v83 + 1) = MEMORY[0x29EDBCA98];
  *&v84 = v28;
  *(&v84 + 1) = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v83 = v30;
  *(&v83 + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_29E6ACFAC();
  *&v83 = v27;
  *(&v83 + 1) = MEMORY[0x29EDBCB20];
  *&v84 = v33;
  *(&v84 + 1) = v34;
  v35 = swift_getOpaqueTypeConformance2();
  *&v83 = v25;
  *(&v83 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  sub_29E753B28();
  sub_29E752F58();
  type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart(0);
  type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v36 = v58;
  sub_29E74EC68();
  v37 = v77;
  sub_29E7523D8();

  (*(v59 + 8))(v36, v37);
  sub_29E752558();
  if (qword_2A18561F8 != -1)
  {
    swift_once();
  }

  *&v83 = qword_2A1869268;
  v59 = qword_2A1869268;

  v38 = MEMORY[0x29EDBCA98];
  v39 = MEMORY[0x29EDB86E0];
  v40 = MEMORY[0x29EDBCA88];
  v41 = v61;
  v42 = v66;
  sub_29E7522E8();
  v68 = *(v68 + 8);
  (v68)(v7, v42);
  if (qword_2A1856200 != -1)
  {
    swift_once();
  }

  v83 = xmmword_2A1869270;
  v84 = *&qword_2A1869280;
  v85 = qword_2A1869290;
  v79 = v42;
  v80 = v38;
  v81 = v39;
  v82 = v40;
  v58 = swift_getOpaqueTypeConformance2();
  v43 = v67;
  sub_29E752318();
  v64 = *(v64 + 8);
  (v64)(v41, v43);
  sub_29E752F58();
  sub_29E7523D8();

  sub_29E752558();
  v79 = v59;
  sub_29E7522E8();

  (v68)(v7, v42);
  v44 = v62;
  sub_29E752318();
  (v64)(v41, v43);
  v45 = v63;
  v46 = v75;
  v47 = v65;
  (*(v63 + 16))(v75, v78, v65);
  v79 = v46;
  v49 = v71;
  v48 = v72;
  v50 = *(v71 + 16);
  v51 = v69;
  v52 = v76;
  v50(v69, v76, v72);
  v80 = v51;
  v53 = v70;
  v50(v70, v44, v48);
  v81 = v53;
  sub_29E71E330(&v79, v73);
  v54 = *(v49 + 8);
  v54(v44, v48);
  v54(v52, v48);
  v55 = *(v45 + 8);
  v55(v78, v47);
  v54(v53, v48);
  v54(v51, v48);
  v55(v75, v47);
}

uint64_t sub_29E6A9B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v47 = a2;
  sub_29E6AE764(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v35 = &v32 - v3;
  sub_29E6AE704(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E752548();
  v36 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD178(0, &qword_2A1858D78, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
  v43 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v33 = &v32 - v9;
  sub_29E6ACEBC(0);
  v45 = v10;
  v42 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ACD88(0);
  v46 = v12;
  v44 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v40 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v37 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v14 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(0);
  sub_29E74ED28();
  v15 = v34;
  sub_29E7523D8();

  sub_29E752F58();
  v52[0] = *(v15 + *(v14 + 20));
  sub_29E7523D8();

  sub_29E752538();
  v16 = [objc_opt_self() hk_respiratoryKeyColor];
  v52[0] = sub_29E7538E8();
  v17 = MEMORY[0x29EDBCA98];
  v18 = MEMORY[0x29EDBCA88];
  v19 = v33;
  v20 = v41;
  v21 = MEMORY[0x29EDB86D0];
  sub_29E7522E8();

  (*(v36 + 8))(v7, v20);
  sub_29E752A58();
  v48 = v20;
  v49 = v17;
  v50 = v21;
  v51 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v38;
  v24 = v43;
  sub_29E752318();
  sub_29E6AE7B8(v52);
  (*(v39 + 8))(v19, v24);
  v48 = v24;
  v49 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_29E6ACFAC();
  v27 = MEMORY[0x29EDBCB20];
  v28 = v40;
  v29 = v45;
  sub_29E752308();
  (*(v42 + 8))(v23, v29);
  v48 = v29;
  v49 = v27;
  v50 = v25;
  v51 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v46;
  sub_29E7522C8();
  (*(v44 + 8))(v28, v30);
}

uint64_t sub_29E6AA1F8()
{
  v0 = sub_29E752368();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E752418();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752358();
  sub_29E6AA39C();
  sub_29E752358();
  sub_29E6AD610(0);
  sub_29E6AD85C();
  sub_29E752598();
}

char *sub_29E6AA39C()
{
  sub_29E6AE3A4(0, &qword_2A1858E80, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v22 - v2;
  v4 = *(sub_29E754AA8() + 16);
  if (v4)
  {
    v23 = v0;
    v24 = v3;
    v25 = MEMORY[0x29EDCA190];
    sub_29E6DBCA4(0, v4, 0);
    v5 = v25;
    v6 = objc_opt_self();
    v7 = 32;
    do
    {
      v8 = HKAppleSleepingBreathingDisturbancesMinimumQuantityForClassification();
      v9 = [v6 countUnit];
      [v8 doubleValueForUnit_];
      v11 = v10;

      v25 = v5;
      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_29E6DBCA4((v12 > 1), v13 + 1, 1);
        v5 = v25;
      }

      *(v5 + 2) = v13 + 1;
      *&v5[8 * v13 + 32] = v11;
      v7 += 8;
      --v4;
    }

    while (v4);

    v0 = v23;
    v3 = v24;
  }

  else
  {

    v5 = MEMORY[0x29EDCA190];
  }

  sub_29E6AB488(*v0, v3);
  v14 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(0);
  if ((*(*(v14 - 8) + 48))(v3, 1, v14) == 1)
  {
    sub_29E6AE2AC(v3, &qword_2A1858E80, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
LABEL_16:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_29E6DB314(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v20 = *(v5 + 3);
    v18 = v17 + 1;
    v19 = 30.0;
    if (v17 >= v20 >> 1)
    {
      v5 = sub_29E6DB314((v20 > 1), v17 + 1, 1, v5);
    }

    goto LABEL_20;
  }

  v15 = *&v3[*(v14 + 20)];
  sub_29E6AE24C(v3, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
  if (v15 <= 30.0)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_29E6DB314(0, *(v5 + 2) + 1, 1, v5);
  }

  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v5 = sub_29E6DB314((v16 > 1), v17 + 1, 1, v5);
  }

  v19 = v15 + 15.0;
LABEL_20:
  *(v5 + 2) = v18;
  *&v5[8 * v17 + 32] = v19;
  return v5;
}

uint64_t sub_29E6AA6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v53 = a2;
  sub_29E6AE4D8(0);
  v52 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_29E7522A8();
  v4 = *(v48 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v48);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v43 - v7;
  v9 = sub_29E752458();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E752478();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD728(0);
  v46 = v12;
  v44 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD6B4(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AE3A4(0, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
  v20 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v43 - v23;
  sub_29E7544C8();
  v50 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7525C8();
  v54 = v24;
  if ((BYTE8(v55) & 1) == 0)
  {
    if (*&v55 == 0.0)
    {
      v47 = v15;
      v26 = v4;
      v27 = v22;
      v28 = v8;
    }

    else
    {
      v29 = 1;
      if (*&v55 <= 0.0)
      {
LABEL_10:
        sub_29E6AE6A0(0, &qword_2A1858DE0, MEMORY[0x29EDB8650]);
        (*(*(v31 - 8) + 56))(v18, v29, 1, v31);
        sub_29E6AE470(v18, v24, sub_29E6AD6B4);
        v25 = 0;
        goto LABEL_11;
      }

      v47 = v15;
      v26 = v4;
      v27 = v22;
      v28 = v8;
    }

    sub_29E752468();
    sub_29E752448();
    sub_29E6AE764(0, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E6AD7B8();
    v30 = v43;
    sub_29E7523B8();
    (*(v44 + 32))(v18, v30, v46);
    sub_29E6AE6A0(0, &qword_2A1858E90, MEMORY[0x29EDB8648]);
    swift_storeEnumTagMultiPayload();
    v29 = 0;
    v8 = v28;
    v22 = v27;
    v4 = v26;
    v24 = v54;
    v15 = v47;
    goto LABEL_10;
  }

  v25 = 1;
LABEL_11:
  (*(v16 + 56))(v24, v25, 1, v15);
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  sub_29E752298();
  sub_29E6AE578(v24, v22);
  v32 = *(v4 + 16);
  v33 = v22;
  v34 = v8;
  v35 = v51;
  v36 = v48;
  v32(v51, v34, v48);
  sub_29E6AD8E4();
  v37 = v49;
  sub_29E6AE578(v33, v49);
  v38 = v52;
  v39 = *(v52 + 48);
  v32((v37 + v39), v35, v36);
  v40 = v53;
  sub_29E6AE60C(v37, v53);
  (*(v4 + 32))(v40 + *(v38 + 48), v37 + v39, v36);
  v41 = *(v4 + 8);
  v41(v34, v36);
  sub_29E6AE2AC(v54, &qword_2A1858DD0, sub_29E6AD6B4);
  v41(v35, v36);
  sub_29E6AE2AC(v33, &qword_2A1858DD0, sub_29E6AD6B4);
}

double sub_29E6AAE0C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v6 = sub_29E74F7C8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v18 = v6;
  *(&v18 + 1) = v8;
  sub_29E60DE10();
  v9 = sub_29E753608();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  sub_29E753C48();
  sub_29E752AB8();

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v15 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v15;
  result = *&v20;
  *(a1 + 64) = v20;
  return result;
}

double sub_29E6AB030@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v6 = sub_29E74F7C8();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v18 = v6;
  *(&v18 + 1) = v8;
  sub_29E60DE10();
  v9 = sub_29E753608();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  sub_29E753C48();
  sub_29E752AB8();

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v14;
  v15 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v15;
  result = *&v20;
  *(a1 + 64) = v20;
  return result;
}

uint64_t sub_29E6AB254@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E6AE31C(0);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E7522A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  v10 = sub_29E752528();
  v11 = *(v5 + 56);
  v20 = v11;
  v12 = *(v10 - 8);
  (*(v12 + 16))(&v7[v11], a1[1], v10);
  sub_29E6ADFA8(0);
  v14 = v13;
  sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  sub_29E6AE058();
  v15 = *(v5 + 72);
  v16 = a1[2];
  v17 = *(v14 - 8);
  (*(v17 + 16))(&v7[v15], v16, v14);
  (*(v9 + 32))(a2, v7, v8);
  (*(v12 + 32))(a2 + *(v5 + 56), &v7[v20], v10);
  return (*(v17 + 32))(a2 + *(v5 + 72), &v7[v15], v14);
}

uint64_t sub_29E6AB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(0);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v21 = v8;
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    result = sub_29E6AE408(v12, &v20 - v9, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
    if (v11 == 1)
    {
LABEL_3:
      sub_29E6AE470(v10, a2, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
      return (*(v21 + 56))(a2, 0, 1, v4);
    }

    v15 = 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      sub_29E6AE408(v12 + *(v21 + 72) * v15, v7, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
      v17 = *(v4 + 20);
      v18 = *&v10[v17];
      v19 = *&v7[v17];
      if (v18 == v19)
      {
        if (sub_29E74ECB8())
        {
          goto LABEL_15;
        }
      }

      else if (v18 < v19)
      {
LABEL_15:
        sub_29E6AE24C(v10, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
        result = sub_29E6AE470(v7, v10, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
        goto LABEL_9;
      }

      result = sub_29E6AE24C(v7, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
LABEL_9:
      ++v15;
      if (v16 == v11)
      {
        goto LABEL_3;
      }
    }
  }

  v14 = *(v8 + 56);

  return v14(a2, 1, 1, v4);
}

uint64_t sub_29E6AB708@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_29E752418();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E752368();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E6AE3A4(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_29E74EE68();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752398();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 104))(v9, *MEMORY[0x29EDB9CA0], v6);
  v11 = sub_29E74EE78();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_29E752378();
  sub_29E6AE2AC(v5, &qword_2A1A7D368, MEMORY[0x29EDB9D18]);
  (*(v7 + 8))(v9, v6);
  sub_29E752358();
  sub_29E752408();
  sub_29E6ADF28(0);
  sub_29E6AE0DC();
  sub_29E752588();
}

uint64_t sub_29E6ABA78@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  sub_29E6AE3A4(0, &qword_2A1A7BE80, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v78 = &v56 - v2;
  v3 = sub_29E752458();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v75 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752478();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v73 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29E74EBB8();
  v66 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29E74EBF8();
  v59 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_29E74EC48();
  v10 = *(v64 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v64);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v56 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v58 = &v56 - v17;
  sub_29E6AE764(0, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v71 = *(v18 - 8);
  v72 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v61 = &v56 - v19;
  sub_29E6ADFA8(0);
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v74 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v70 = &v56 - v23;
  v24 = sub_29E752508();
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v69 = sub_29E752528();
  v68 = *(v69 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v69);
  v82 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v56 - v27;
  v81 = sub_29E7522A8();
  v65 = *(v81 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v81);
  v80 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v56 - v31;
  sub_29E7544C8();
  v62 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1856200 != -1)
  {
    swift_once();
  }

  v84 = xmmword_2A1869270;
  v85 = qword_2A1869280;
  v86 = unk_2A1869288;
  v87 = qword_2A1869290;
  swift_bridgeObjectRetain_n();
  v56 = v32;
  sub_29E752298();
  sub_29E7524F8();
  v57 = v28;
  v33 = sub_29E752518();
  MEMORY[0x29ED91080](v33);
  sub_29E74EBE8();
  sub_29E74EB98();
  (*(v59 + 8))(v9, v60);
  v34 = *(v10 + 8);
  v35 = v64;
  v34(v13, v64);
  v36 = v63;
  sub_29E74EBA8();
  sub_29E74EB78();
  (*(v66 + 8))(v36, v67);
  v34(v16, v35);
  sub_29E752468();
  sub_29E752448();
  sub_29E6AE80C(&qword_2A1A7CFE8, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
  v37 = v61;
  sub_29E7523A8();
  v38 = sub_29E753448();
  v39 = v78;
  (*(*(v38 - 8) + 56))(v78, 1, 1, v38);
  sub_29E753488();
  sub_29E6AE2AC(v39, &qword_2A1A7BE80, MEMORY[0x29EDBC990]);
  sub_29E753468();
  sub_29E7534C8();

  sub_29E753518();

  sub_29E6AE058();
  v40 = v70;
  v41 = v72;
  sub_29E7524D8();

  (*(v71 + 8))(v37, v41);
  v42 = v65;
  v43 = v80;
  (*(v65 + 16))(v80, v32, v81);
  v83[0] = v43;
  v44 = v68;
  v45 = v82;
  v46 = v57;
  v47 = v69;
  (*(v68 + 16))(v82, v57, v69);
  v83[1] = v45;
  v49 = v76;
  v48 = v77;
  v50 = v74;
  (*(v76 + 16))(v74, v40, v77);
  v83[2] = v50;
  sub_29E6AB254(v83, v79);
  v51 = *(v49 + 8);
  v51(v40, v48);
  v52 = *(v44 + 8);
  v52(v46, v47);
  v53 = *(v42 + 8);
  v54 = v81;
  v53(v56, v81);
  v51(v50, v48);
  v52(v82, v47);
  v53(v80, v54);
}

uint64_t sub_29E6AC52C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A18561F0 != -1)
  {
    swift_once();
  }

  v2 = sub_29E750A18();
  v3 = sub_29E61037C(v2, qword_2A1869250);
  v6 = *(v2 - 8);
  (*(v6 + 16))(a1, v3, v2);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v2);
}

uint64_t sub_29E6AC614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E6AE80C(&qword_2A1858E98, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart, &unk_29E7695B0);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29E6AC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29E6AE80C(&qword_2A1858E98, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart, &unk_29E7695B0);

  return a4(a1, a2, v6);
}

uint64_t sub_29E6AC758(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E6AE80C(&qword_2A1858D40, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart, &unk_29E769570);
  *v3 = v1;
  v3[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

void sub_29E6AC8E0(uint64_t a1)
{
  if (!qword_2A1A7CFE0)
  {
    sub_29E74ED28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A7CFE0);
    }
  }
}

void sub_29E6AC948(uint64_t a1)
{
  if (!qword_2A1A7BE10)
  {
    sub_29E74ED28();
    sub_29E6AE80C(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v1 = sub_29E7540F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BE10);
    }
  }
}

void sub_29E6ACA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E6ACAA4(uint64_t a1)
{
  if (!qword_2A1858D50)
  {
    sub_29E6ACB18(255);
    sub_29E6AD088(255);
    v1 = sub_29E7522B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858D50);
    }
  }
}

void sub_29E6ACB18(uint64_t a1)
{
  if (!qword_2A1858D58)
  {
    sub_29E6AE3A4(255, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
    type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(255);
    sub_29E6ACC1C(255);
    sub_29E6AD000();
    sub_29E6AE80C(&qword_2A1858D90, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, &unk_29E76E384);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858D58);
    }
  }
}

void sub_29E6ACC1C(uint64_t a1)
{
  if (!qword_2A1858D60)
  {
    sub_29E6ACD88(255);
    sub_29E6ACEBC(255);
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6ACFAC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D60);
    }
  }
}

void sub_29E6ACD88(uint64_t a1)
{
  if (!qword_2A1858D68)
  {
    sub_29E6ACEBC(255);
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6ACFAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D68);
    }
  }
}

void sub_29E6ACEBC(uint64_t a1)
{
  if (!qword_2A1858D70)
  {
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D70);
    }
  }
}

unint64_t sub_29E6ACFAC()
{
  result = qword_2A1858D80;
  if (!qword_2A1858D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858D80);
  }

  return result;
}

unint64_t sub_29E6AD000()
{
  result = qword_2A1858D88;
  if (!qword_2A1858D88)
  {
    sub_29E6AE3A4(255, &qword_2A1858D28, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858D88);
  }

  return result;
}

void sub_29E6AD088(uint64_t a1)
{
  if (!qword_2A1858D98)
  {
    sub_29E6AD178(255, &qword_2A1858DA0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
    sub_29E752568();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858D98);
    }
  }
}

void sub_29E6AD178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29E6AD210()
{
  result = qword_2A1858DA8;
  if (!qword_2A1858DA8)
  {
    sub_29E6ACAA4(255);
    sub_29E6AD334();
    sub_29E6AD178(255, &qword_2A1858DA0, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
    sub_29E752568();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858DA8);
  }

  return result;
}

unint64_t sub_29E6AD334()
{
  result = qword_2A1858DB0;
  if (!qword_2A1858DB0)
  {
    sub_29E6ACB18(255);
    sub_29E6ACD88(255);
    sub_29E6ACEBC(255);
    sub_29E6AD178(255, &qword_2A1858D78, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29E752548();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E6ACFAC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858DB0);
  }

  return result;
}

void sub_29E6AD4C4(uint64_t a1)
{
  if (!qword_2A1858DB8)
  {
    sub_29E6AC9DC(255);
    sub_29E6AD5C8(255);
    sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC, MEMORY[0x29EDB8690]);
    sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858DB8);
    }
  }
}

void sub_29E6AD610(uint64_t a1)
{
  if (!qword_2A1858DC8)
  {
    sub_29E6AE3A4(255, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
    sub_29E7522A8();
    v1 = sub_29E7522B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858DC8);
    }
  }
}

void sub_29E6AD6B4(uint64_t a1)
{
  if (!qword_2A1858DD8)
  {
    sub_29E6AE6A0(255, &qword_2A1858DE0, MEMORY[0x29EDB8650]);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858DD8);
    }
  }
}

void sub_29E6AD728(uint64_t a1)
{
  if (!qword_2A1858DE8)
  {
    sub_29E6AE764(255, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29E6AD7B8();
    v1 = sub_29E7523C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858DE8);
    }
  }
}

unint64_t sub_29E6AD7B8()
{
  result = qword_2A1858DF8;
  if (!qword_2A1858DF8)
  {
    sub_29E6AE764(255, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858DF8);
  }

  return result;
}

unint64_t sub_29E6AD85C()
{
  result = qword_2A1858E00;
  if (!qword_2A1858E00)
  {
    sub_29E6AD610(255);
    sub_29E6AD8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E00);
  }

  return result;
}

unint64_t sub_29E6AD8E4()
{
  result = qword_2A1858E08;
  if (!qword_2A1858E08)
  {
    sub_29E6AE3A4(255, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
    sub_29E6AD98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E08);
  }

  return result;
}

unint64_t sub_29E6AD98C()
{
  result = qword_2A1858E10;
  if (!qword_2A1858E10)
  {
    sub_29E6AD6B4(255);
    sub_29E6ADA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E10);
  }

  return result;
}

unint64_t sub_29E6ADA04()
{
  result = qword_2A1858E18;
  if (!qword_2A1858E18)
  {
    sub_29E6AE6A0(255, &qword_2A1858DE0, MEMORY[0x29EDB8650]);
    sub_29E6AE80C(&qword_2A1858E20, sub_29E6AD728, MEMORY[0x29EDB8618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E18);
  }

  return result;
}

void sub_29E6ADAC8(uint64_t a1)
{
  if (!qword_2A1858E38)
  {
    sub_29E6AD4C4(255);
    sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29E6AC9DC(255);
    sub_29E6AD5C8(255);
    sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC, MEMORY[0x29EDB8690]);
    sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29E6ADC48();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858E38);
    }
  }
}

unint64_t sub_29E6ADC48()
{
  result = qword_2A1858E48;
  if (!qword_2A1858E48)
  {
    sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E48);
  }

  return result;
}

void sub_29E6ADCE4(uint64_t a1)
{
  if (!qword_2A1858E50)
  {
    sub_29E6ADAC8(255);
    sub_29E6ADEE0(255);
    sub_29E6AD4C4(255);
    sub_29E6AE764(255, &qword_2A1858E40, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29E6AC9DC(255);
    sub_29E6AD5C8(255);
    sub_29E6AE80C(&qword_2A1858E28, sub_29E6AC9DC, MEMORY[0x29EDB8690]);
    v1 = MEMORY[0x29EDB86F8];
    sub_29E6AE80C(&qword_2A1858E30, sub_29E6AD5C8, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29E6ADC48();
    swift_getOpaqueTypeConformance2();
    sub_29E6AE80C(&qword_2A1858E70, sub_29E6ADEE0, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858E50);
    }
  }
}

void sub_29E6ADF28(uint64_t a1)
{
  if (!qword_2A1858E60)
  {
    sub_29E7522A8();
    sub_29E752528();
    sub_29E6ADFA8(255);
    v1 = sub_29E7522B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858E60);
    }
  }
}

void sub_29E6ADFA8(uint64_t a1)
{
  if (!qword_2A1A7C0B0)
  {
    sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1A7C0B0);
    }
  }
}

unint64_t sub_29E6AE058()
{
  result = qword_2A1A7C0E8;
  if (!qword_2A1A7C0E8)
  {
    sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7C0E8);
  }

  return result;
}

unint64_t sub_29E6AE0DC()
{
  result = qword_2A1858E68;
  if (!qword_2A1858E68)
  {
    sub_29E6ADF28(255);
    sub_29E6AE764(255, &qword_2A1A7C0E0, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29E6AE058();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858E68);
  }

  return result;
}

unint64_t sub_29E6AE1DC()
{
  result = qword_2A1A7BE08;
  if (!qword_2A1A7BE08)
  {
    sub_29E6AC948(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE08);
  }

  return result;
}

uint64_t sub_29E6AE24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6AE2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6AE3A4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6AE31C(uint64_t a1)
{
  if (!qword_2A1858E78)
  {
    sub_29E7522A8();
    sub_29E752528();
    sub_29E6ADFA8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1858E78);
    }
  }
}

void sub_29E6AE3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6AE408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6AE470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E6AE4D8(uint64_t a1)
{
  if (!qword_2A1858E88)
  {
    sub_29E6AE3A4(255, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
    sub_29E7522A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858E88);
    }
  }
}

uint64_t sub_29E6AE578(uint64_t a1, uint64_t a2)
{
  sub_29E6AE3A4(0, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6AE60C(uint64_t a1, uint64_t a2)
{
  sub_29E6AE3A4(0, &qword_2A1858DD0, sub_29E6AD6B4, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6AE6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E6AD728(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E6AE704(uint64_t a1)
{
  if (!qword_2A1A7C0D8)
  {
    sub_29E74ED28();
    v1 = sub_29E7523E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C0D8);
    }
  }
}

void sub_29E6AE764(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E6AE80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6AE854(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v67 = a6;
  v63 = a5;
  v59 = a4;
  v71 = a2;
  v73 = a1;
  v6 = MEMORY[0x29EDC2280];
  v7 = MEMORY[0x29EDC2008];
  sub_29E6AF924(0, &qword_2A18579A0, type metadata accessor for AppleWatchSection, MEMORY[0x29EDC2280], MEMORY[0x29EDC2008]);
  v70 = v8;
  v69 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v68 = &v46 - v9;
  sub_29E63FED4(0);
  v66 = v10;
  v65 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v64 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63FF4C(0);
  v62 = v12;
  v61 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v60 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AF924(0, &qword_2A18579C8, sub_29E63FFC4, v6, v7);
  v58 = v14;
  v57 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v56 = &v46 - v15;
  sub_29E640000(0);
  v55 = v16;
  v54 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v53 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AF924(0, &qword_2A18579E8, type metadata accessor for GoalSection, v6, v7);
  v52 = v18;
  v51 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v50 = &v46 - v19;
  sub_29E6AF924(0, &qword_2A18579F0, type metadata accessor for WindDownSection, v6, v7);
  v49 = v20;
  v48 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v47 = &v46 - v21;
  sub_29E6AF924(0, &qword_2A18579F8, type metadata accessor for AddScheduleSection, v6, v7);
  v46 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v46 - v24;
  sub_29E6AF924(0, &qword_2A1857A00, type metadata accessor for ManageScheduleSection, v6, v7);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v46 - v29;
  sub_29E7544C8();
  v72 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v32 = MEMORY[0x29EDC2000];
  v33 = MEMORY[0x29EDC1FF8];
  if (Strong)
  {

    if (v73)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    (*(v28 + 104))(v30, *v34, v27);
    sub_29E750908();
  }

  swift_beginAccess();
  v35 = swift_weakLoadStrong();
  v36 = v73;
  if (v35)
  {

    if (v36)
    {
      v37 = v32;
    }

    else
    {
      v37 = v33;
    }

    (*(v23 + 104))(v25, *v37, v46);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v36)
    {
      v38 = v32;
    }

    else
    {
      v38 = v33;
    }

    (*(v48 + 104))(v47, *v38, v49);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v36)
    {
      v39 = v32;
    }

    else
    {
      v39 = v33;
    }

    (*(v51 + 104))(v50, *v39, v52);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v59 & v36)
    {
      v40 = v32;
    }

    else
    {
      v40 = v33;
    }

    (*(v54 + 104))(v53, *v40, v55);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v63 & 1 | ((v36 & 1) == 0))
    {
      v41 = v33;
    }

    else
    {
      v41 = v32;
    }

    (*(v57 + 104))(v56, *v41, v58);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v36)
    {
      v42 = v32;
    }

    else
    {
      v42 = v33;
    }

    (*(v61 + 104))(v60, *v42, v62);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v67 & 1 | ((v36 & 1) == 0))
    {
      v43 = v33;
    }

    else
    {
      v43 = v32;
    }

    (*(v65 + 104))(v64, *v43, v66);
    sub_29E750908();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (v36 & v71)
    {
      v44 = v32;
    }

    else
    {
      v44 = v33;
    }

    (*(v69 + 104))(v68, *v44, v70);
    sub_29E750908();
  }
}

uint64_t sub_29E6AF374()
{
  sub_29E5FECBC((v0 + 16));

  return v0;
}

uint64_t sub_29E6AF3FC()
{
  sub_29E6AF374();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6AF47C()
{
  sub_29E6AF6B0(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E769630;
  v2 = MEMORY[0x29EDC2280];
  v3 = v0[10];
  *(v1 + 32) = v0[9];
  *(v1 + 40) = v2;
  v4 = sub_29E6AF894(&qword_2A1858EB0, sub_29E6AF768);
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  v5 = v0[11];
  v6 = sub_29E6AF894(&qword_2A1858EB8, sub_29E6AF7A4);
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = v0[12];
  v8 = sub_29E6AF894(&qword_2A1858EC0, sub_29E6AF7E0);
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  v9 = v0[13];
  v10 = sub_29E6AF894(&qword_2A1858EC8, sub_29E6AF81C);
  *(v1 + 96) = v9;
  *(v1 + 104) = v10;
  v11 = v0[14];
  v12 = sub_29E6AF894(&qword_2A1858ED0, sub_29E6400C8);
  *(v1 + 112) = v11;
  *(v1 + 120) = v12;
  v13 = v0[15];
  v14 = sub_29E6AF894(&qword_2A1858ED8, sub_29E6AF858);
  *(v1 + 128) = v13;
  *(v1 + 136) = v14;
  v15 = v0[16];
  v16 = sub_29E6AF894(&qword_2A1858EE0, sub_29E6401A8);
  *(v1 + 144) = v15;
  *(v1 + 152) = v16;
  v17 = v0[17];
  v18 = sub_29E6AF894(&qword_2A1858EE8, sub_29E640220);
  *(v1 + 160) = v17;
  *(v1 + 168) = v18;
  v19 = v0[18];
  v20 = sub_29E6AF894(&qword_2A1858EF0, sub_29E6AF8E8);
  *(v1 + 176) = v19;
  *(v1 + 184) = v20;

  return v1;
}

void sub_29E6AF6B0(uint64_t a1)
{
  if (!qword_2A1858EA0)
  {
    sub_29E6AF708();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858EA0);
    }
  }
}

unint64_t sub_29E6AF708()
{
  result = qword_2A1858EA8;
  if (!qword_2A1858EA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858EA8);
  }

  return result;
}

uint64_t sub_29E6AF894(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_29E6AF924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29E6AF990(uint64_t a1)
{
  v3 = sub_29E7500C8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v7, a1, v3);
  swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  if (!v8)
  {
    return (*(v4 + 8))(a1, v3);
  }

  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler + 8);
  (*(v4 + 16))(v6, v1 + v7, v3);

  v8(v6);
  sub_29E6459B8(v8, v9);
  v10 = *(v4 + 8);
  v10(a1, v3);
  return (v10)(v6, v3);
}

void sub_29E6AFB30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v40 = sub_29E7500D8();
  v43 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EE78();
  v41 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v44 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC(0);
  v10 = v9;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v33 - v14;
  sub_29E64C90C(0);
  v39 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E74F1C8();
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v38 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E74F208();
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v37 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E754048();
  sub_29E6B2584();
  if (sub_29E7540E8())
  {
    v24 = *(v23 - 8);
    v35 = v6;
    v36 = a3;
    v25 = v24;
    v26 = *(v24 + 16);
    v26(v15, a1, v23);
    v26(&v15[*(v10 + 48)], a1, v23);
    sub_29E6806A4(v15, v13);
    v27 = *(v10 + 48);
    v33 = v15;
    v34 = v7;
    v28 = v41;
    v29 = *(v25 + 32);
    v29(v18, v13, v23);
    v30 = *(v25 + 8);
    v30(&v13[v27], v23);
    sub_29E605CC8(v33, v13);
    v29(&v18[*(v39 + 36)], &v13[*(v10 + 48)], v23);
    v30(v13, v23);
    (*(v28 + 16))(v44, v42, v34);
    sub_29E74F1B8();
    v31 = v37;
    sub_29E74F1D8();
    v32 = v35;
    (*(v43 + 104))(v35, *MEMORY[0x29EDC16A0], v40);
    sub_29E6B1A44(v31, v32, v36);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E6AFF88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = *v3;
  v29 = MEMORY[0x29EDCA398];
  sub_29E6B1FC4(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v25 - v7;
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v25 - v13;
  v15 = (v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  v16 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  v17 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler + 8);
  *v15 = a1;
  v15[1] = a2;
  sub_29E6459B8(v16, v17);

  sub_29E6B032C();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75DEA0);
  v30 = v3;
  sub_29E754E38();
  v26 = v14;
  sub_29E74F238();

  v18 = sub_29E7544F8();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = v27;
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v27);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + v20, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  *(v22 + v21) = v3;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  v23 = sub_29E6B1354(0, 0, v8, &unk_29E769770, v22);
  sub_29E6B1F68(v8, &qword_2A1859CD0, v29);
  (*(v10 + 8))(v26, v19);
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask) = v23;
}

uint64_t sub_29E6B032C()
{
  v1 = v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  result = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask;
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask))
  {

    sub_29E752068();
    v8 = sub_29E752088();
    v9 = sub_29E7546C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = v2;
      v11 = v10;
      v12 = swift_slowAlloc();
      v18 = v3;
      v13 = v12;
      v20 = v12;
      *v11 = 136446210;
      v14 = sub_29E755178();
      v16 = sub_29E6B9C90(v14, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] Stopping query", v11, 0xCu);
      sub_29E5FECBC(v13);
      MEMORY[0x29ED98410](v13, -1, -1);
      MEMORY[0x29ED98410](v11, -1, -1);

      (*(v18 + 8))(v6, v19);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    sub_29E66A61C();
    sub_29E754508();

    *(v1 + v7) = 0;
  }

  return result;
}

uint64_t sub_29E6B0578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_29E74F208();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_29E6B1FC4(0, &qword_2A1858F20, MEMORY[0x29EDC1688]);
  v6[9] = swift_task_alloc();
  sub_29E6B1EF0(0, &qword_2A1858F28, MEMORY[0x29EDCA418]);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_29E752098();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E6B0764, 0, 0);
}

uint64_t sub_29E6B0764(uint64_t a1)
{
  v19 = v1;
  sub_29E752068();
  v2 = sub_29E752088();
  v3 = sub_29E7546C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = sub_29E755178();
    v12 = sub_29E6B9C90(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29E5ED000, v2, v3, "[%{public}s] Started query", v8, 0xCu);
    sub_29E5FECBC(v9);
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  v1[17] = v13;
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  sub_29E754528();
  v14 = swift_task_alloc();
  v1[18] = v14;
  *v14 = v1;
  v14[1] = sub_29E6B095C;
  v15 = v1[9];
  v16 = v1[10];

  return MEMORY[0x2A1C73C10](v15, 0, 0, v16, v1 + 2);
}

uint64_t sub_29E6B095C()
{

  if (v0)
  {
    v1 = sub_29E6B0D40;
  }

  else
  {
    v1 = sub_29E6B0A6C;
  }

  return MEMORY[0x2A1C73D48](v1, 0, 0);
}

uint64_t sub_29E6B0A6C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  (*(v3 + 32))(v0[8], v1, v2);
  if (sub_29E754518())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    goto LABEL_4;
  }

  sub_29E7544C8();
  v0[19] = sub_29E7544B8();
  v7 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6B0C08, v7, v6);
}

uint64_t sub_29E6B0C08()
{
  v1 = *(v0 + 64);

  sub_29E6B0FB0(v1);

  return MEMORY[0x2A1C73D48](sub_29E6B0C80, 0, 0);
}

uint64_t sub_29E6B0C80()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_29E6B095C;
  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2A1C73C10](v2, 0, 0, v3, v0 + 2);
}

uint64_t sub_29E6B0D40()
{
  v23 = v0;
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[2];
  sub_29E752068();
  v2 = v1;
  v3 = sub_29E752088();
  v4 = sub_29E7546A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[15];
  v8 = v0[13];
  if (v5)
  {
    v21 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v8;
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136446466;
    v12 = sub_29E755178();
    v19 = v6;
    v14 = sub_29E6B9C90(v12, v13, &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_29E5ED000, v3, v4, "[%{public}s] Query error: %{public}@", v9, 0x16u);
    sub_29E6B1F68(v10, &qword_2A1A7D0A8, sub_29E66ED88);
    MEMORY[0x29ED98410](v10, -1, -1);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);

    v19(v21, v20);
  }

  else
  {

    v6(v7, v8);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_29E6B0FB0(uint64_t a1)
{
  v2 = v1;
  v36 = *v1;
  v4 = sub_29E7500D8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F208();
  v40 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E7500C8();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v39 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E752098();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a1;
    v19 = v18;
    v33 = swift_slowAlloc();
    v34 = v5;
    v41 = v33;
    *v19 = 136446210;
    v20 = sub_29E755178();
    v36 = v2;
    v22 = v10;
    v23 = v8;
    v24 = v7;
    v25 = v4;
    v26 = sub_29E6B9C90(v20, v21, &v41);

    *(v19 + 4) = v26;
    v4 = v25;
    v7 = v24;
    v8 = v23;
    v10 = v22;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Received observer query update", v19, 0xCu);
    v27 = v33;
    sub_29E5FECBC(v33);
    v28 = v27;
    v5 = v34;
    MEMORY[0x29ED98410](v28, -1, -1);
    v29 = v19;
    a1 = v35;
    MEMORY[0x29ED98410](v29, -1, -1);
  }

  (*(v37 + 8))(v15, v38);
  (*(v40 + 16))(v10, a1, v8);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC16A0], v4);
  v30 = v39;
  sub_29E6B1A44(v10, v7, v39);
  return sub_29E6AF990(v30);
}

uint64_t sub_29E6B1354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29E6B1FC4(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v22 - v9;
  sub_29E6B1E70(a3, v22 - v9);
  v11 = sub_29E7544F8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_29E6B1F68(v10, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E7544E8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_29E754468();
    v17 = v16;
    sub_29E751758();
    if (a2)
    {
LABEL_6:
      v18 = sub_29E754228() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_29E6B15CC()
{
  v1 = v0;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6B032C();

  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel;
  v3 = sub_29E7500C8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_today;
  v5 = sub_29E754048();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_gregorianCalendar;
  v7 = sub_29E74EE78();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsQueryDescriptor;
  v9 = sub_29E74F258();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  sub_29E6459B8(*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler), *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler + 8));
  return v1;
}

uint64_t sub_29E6B1798(uint64_t a1)
{
  sub_29E6B15CC();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6B17FC()
{
  sub_29E7544C8();
  sub_29E7544B8();
  v1 = sub_29E754468();
  v3 = v2;

  return MEMORY[0x2A1C73D28](v0, sub_29E6B1798, v1, v3, 0);
}

uint64_t type metadata accessor for VitalsRoomModelProvider(uint64_t a1)
{
  result = qword_2A1858F08;
  if (!qword_2A1858F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6B18E4(uint64_t a1)
{
  result = sub_29E7500C8();
  if (v2 <= 0x3F)
  {
    result = sub_29E754048();
    if (v3 <= 0x3F)
    {
      result = sub_29E74EE78();
      if (v4 <= 0x3F)
      {
        result = sub_29E74F258();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_29E6B1A44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v20[1] = a3;
  v3 = sub_29E7500D8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F1C8();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E74F228();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v20 - v13;
  v15 = [objc_opt_self() sharedBehavior];
  if (v15)
  {
    v16 = v15;
    v17 = sub_29E7545E8();

    if ((v17 & 1) == 0)
    {
      sub_29E68B5BC(MEMORY[0x29EDCA190]);
      sub_29E74F218();
      v18 = v22;
      sub_29E74F1E8();
      sub_29E74F1F8();
      (*(v4 + 104))(v6, *MEMORY[0x29EDC16A0], v3);
      (*(v9 + 16))(v12, v14, v8);
      sub_29E7500B8();
      (*(v4 + 8))(v21, v3);
      v19 = sub_29E74F208();
      (*(*(v19 - 8) + 8))(v18, v19);
      (*(v9 + 8))(v14, v8);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E6B1D18(uint64_t a1)
{
  v3 = v2;
  sub_29E6B1EF0(0, &qword_2A1858F18, MEMORY[0x29EDCA420]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_29E605728;

  return sub_29E6B0578(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_29E6B1E70(uint64_t a1, uint64_t a2)
{
  sub_29E6B1FC4(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E6B1EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_29E74F208();
    v7 = sub_29E66A61C();
    v8 = a3(a1, v6, v7, MEMORY[0x29EDC9F20]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6B1F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6B1FC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6B1FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6B2018(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v7 = sub_29E74EE78();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v56 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC(0);
  v55 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v47 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v51 = v46 - v13;
  sub_29E64C90C(0);
  v50 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v53 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74F1C8();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v49 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E74F258();
  v52 = *(v54 - 8);
  MEMORY[0x2A1C7C4A8](v54);
  v48 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29E7500C8();
  v19 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_queryTask) = 0;
  v22 = (v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_updateHandler);
  *v22 = 0;
  v22[1] = 0;
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_healthStore) = a1;
  v57 = v8;
  v58 = v7;
  v23 = v8 + 16;
  v24 = *(v8 + 16);
  v25 = a2;
  v46[0] = v24;
  v46[1] = v23;
  v24(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_gregorianCalendar, a2, v7);
  v26 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_today;
  v27 = sub_29E754048();
  v28 = *(v27 - 8);
  v29 = v28[2];
  v30 = v4 + v26;
  v31 = v62;
  v29(v30, v62, v27);
  v32 = a1;
  v59 = v25;
  sub_29E6AFB30(v31, v25, v21);
  v33 = *(v19 + 32);
  v60 = v4;
  v33(v4 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel, v21, v61);
  sub_29E6B2584();
  result = sub_29E7540E8();
  if (result)
  {
    v35 = v51;
    v29(v51, v31, v27);
    v36 = v47;
    v37 = v55;
    v29(v35 + *(v55 + 48), v31, v27);
    sub_29E6806A4(v35, v36);
    v38 = *(v37 + 48);
    v39 = v28[4];
    v40 = v53;
    v39(v53, v36, v27);
    v41 = v28[1];
    v41(v36 + v38, v27);
    sub_29E605CC8(v35, v36);
    v39(&v40[*(v50 + 36)], v36 + *(v37 + 48), v27);
    v41(v36, v27);
    v43 = v58;
    v42 = v59;
    (v46[0])(v56, v59, v58);
    sub_29E74F1B8();
    v44 = v48;
    sub_29E74F248();
    v41(v62, v27);
    (*(v57 + 8))(v42, v43);
    v45 = v60;
    (*(v52 + 32))(v60 + OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsQueryDescriptor, v44, v54);
    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E6B2584()
{
  result = qword_2A1A7BE20;
  if (!qword_2A1A7BE20)
  {
    sub_29E754048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE20);
  }

  return result;
}

__n128 sub_29E6B25DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_29E6B25F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E6B2640(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_29E6B269C()
{
  v1[2] = v0;
  v2 = sub_29E7507E8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_29E750F88();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_29E751058();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E6B2814, 0, 0);
}

uint64_t sub_29E6B2814()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_29E601938(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_29E6B28D0;
  v5 = v0[11];

  return MEMORY[0x2A1C62868](v5, v2, v3);
}

uint64_t sub_29E6B28D0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_29E6B2D1C;
  }

  else
  {
    v2 = sub_29E6B29E4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E6B29E4()
{
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[9];
  v17 = v0[7];
  v18 = v0[6];
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v12 = v0[8];
  sub_29E750F98();
  sub_29E750598();
  v13 = MEMORY[0x29EDC9E90];
  sub_29E6B3328(0, &qword_2A1858F30, MEMORY[0x29EDC2BF0], MEMORY[0x29EDC9E90]);
  sub_29E751B38();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E762F40;
  v5 = *(v2 + 104);
  v5(v1, *MEMORY[0x29EDC1F60], v3);
  sub_29E750F78();

  sub_29E751B28();
  v5(v1, *MEMORY[0x29EDC1F68], v3);

  sub_29E751B28();
  sub_29E6B3328(0, &qword_2A1858F38, sub_29E6B3280, v13);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F30;
  v7 = swift_task_alloc();
  *(v7 + 16) = v12;
  *(v7 + 24) = v4;
  v8 = sub_29E751D08();
  v9 = MEMORY[0x29EDC2C70];
  *(v6 + 56) = v8;
  *(v6 + 64) = v9;
  sub_29E5FEBF4((v6 + 32));
  sub_29E751CF8();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  (*(v15 + 8))(v14, v16);
  (*(v17 + 8))(v12, v18);

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_29E6B2D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E6B2D98(uint64_t a1, uint64_t a2)
{
  v10 = sub_29E751D08();
  v11 = MEMORY[0x29EDC2C70];
  sub_29E5FEBF4(v9);
  sub_29E751CF8();
  v2 = sub_29E750B38();
  sub_29E5FECBC(v9);
  v3 = sub_29E750548();
  v4 = [v3 CGColor];

  v10 = sub_29E750DA8();
  v11 = MEMORY[0x29EDC2290];
  sub_29E5FEBF4(v9);
  sub_29E750D98();
  v5 = sub_29E750B38();
  sub_29E5FECBC(v9);
  sub_29E6B3328(0, &qword_2A1858F48, sub_29E6B32F4, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F40;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  v7 = MEMORY[0x29ED93440]();

  return v7;
}

uint64_t sub_29E6B2EF4(uint64_t a1, uint64_t a2)
{
  sub_29E6B3328(0, &qword_2A1858F58, MEMORY[0x29EDC2C48], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v22[-1] - v4;
  v6 = sub_29E751CA8();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E7507E8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E750F68();
  v13 = v12;
  v14 = sub_29E7505A8();
  (*(v8 + 104))(v10, *MEMORY[0x29EDC1F60], v7);
  v23 = sub_29E751C28();
  v24 = MEMORY[0x29EDC2C40];
  sub_29E5FEBF4(v22);
  MEMORY[0x29ED94550](v11, v13, v10, v14);
  v15 = sub_29E750B38();
  sub_29E5FECBC(v22);
  sub_29E6CC8FC(a2);
  v16 = sub_29E751C88();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_29E7505B8();
  sub_29E751C98();
  v23 = sub_29E751CD8();
  v24 = MEMORY[0x29EDC2C50];
  sub_29E5FEBF4(v22);
  sub_29E751CB8();
  v17 = sub_29E750B38();
  sub_29E5FECBC(v22);
  sub_29E6B3328(0, &qword_2A1858F48, sub_29E6B32F4, MEMORY[0x29EDC9E90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E762F40;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = MEMORY[0x29ED93440]();

  return v19;
}

uint64_t sub_29E6B31F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29E60350C;

  return sub_29E6B269C();
}

unint64_t sub_29E6B3280()
{
  result = qword_2A1858F40;
  if (!qword_2A1858F40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858F40);
  }

  return result;
}

void sub_29E6B3328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E6B338C(uint64_t a1, char a2, double a3, double a4)
{
  v61 = objc_opt_self();
  v8 = objc_opt_self();
  v9 = [v8 fractionalWidthDimension_];
  v10 = &selRef_restoreUserActivityState_;
  if (a2)
  {
    if (a2 == 1)
    {
      v11 = [v8 estimatedDimension_];
      v12 = objc_opt_self();
      v13 = [v12 sizeWithWidthDimension:v9 heightDimension:v11];

      sub_29E6163F8();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_29E764160;
      v15 = [v8 fractionalWidthDimension_];
      v16 = [v8 estimatedDimension_];
      v17 = [v12 sizeWithWidthDimension:v15 heightDimension:v16];

      v18 = [objc_opt_self() itemWithLayoutSize_];
      *(v14 + 32) = v18;
      sub_29E6B3B08();
      v19 = sub_29E7543D8();

      v20 = [v61 horizontalGroupWithLayoutSize:v13 subitems:v19];
    }

    else
    {
      v42 = [v8 estimatedDimension_];
      v43 = objc_opt_self();
      v60 = [v43 sizeWithWidthDimension:v9 heightDimension:v42];

      sub_29E6163F8();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_29E769820;
      v45 = [v8 fractionalWidthDimension_];
      v46 = [v8 uniformAcrossSiblingsWithEstimate_];
      v47 = [v43 &selRef_topViewController + 6];

      v48 = objc_opt_self();
      v49 = [v48 itemWithLayoutSize_];

      *(v44 + 32) = v49;
      v50 = [v8 fractionalWidthDimension_];
      v51 = [v8 uniformAcrossSiblingsWithEstimate_];
      v52 = [v43 &selRef_topViewController + 6];

      v10 = &selRef_restoreUserActivityState_;
      v53 = [v48 itemWithLayoutSize_];

      *(v44 + 40) = v53;
      v54 = [v8 fractionalWidthDimension_];
      v55 = [v8 uniformAcrossSiblingsWithEstimate_];
      v56 = [v43 &selRef_topViewController + 6];

      v57 = [v48 itemWithLayoutSize_];
      *(v44 + 48) = v57;
      sub_29E6B3B08();
      v19 = sub_29E7543D8();

      v13 = v60;
      v20 = [v61 horizontalGroupWithLayoutSize:v60 subitems:v19];
    }

    v39 = v20;

    v40 = objc_opt_self();
    v41 = &selRef_flexibleSpacing_;
  }

  else
  {
    v21 = [v8 estimatedDimension_];
    v22 = objc_opt_self();
    v60 = [v22 sizeWithWidthDimension:v9 heightDimension:v21];

    sub_29E6163F8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29E7655E0;
    v24 = [v8 fractionalWidthDimension_];
    v25 = [v8 estimatedDimension_];
    v26 = [v22 sizeWithWidthDimension:v24 heightDimension:v25];

    v27 = objc_opt_self();
    v28 = [v27 itemWithLayoutSize_];

    *(v23 + 32) = v28;
    v29 = [v8 fractionalWidthDimension_];
    v30 = [v22 sizeWithWidthDimension:v29 heightDimension:a1];

    v31 = [v8 fractionalWidthDimension_];
    v32 = [v8 fractionalHeightDimension_];
    v33 = [v22 sizeWithWidthDimension:v31 heightDimension:v32];

    v10 = &selRef_restoreUserActivityState_;
    v34 = [v27 itemWithLayoutSize_];

    v35 = [v61 horizontalGroupWithLayoutSize:v30 repeatingSubitem:v34 count:2];
    v36 = objc_opt_self();
    v37 = [v36 flexibleSpacing_];
    [v35 setInterItemSpacing_];

    *(v23 + 40) = v35;
    sub_29E6B3B08();
    v38 = sub_29E7543D8();

    v39 = [v61 verticalGroupWithLayoutSize:v60 subitems:v38];

    v40 = v36;
    v41 = &selRef_fixedSpacing_;
  }

  v58 = [v40 *v41];
  [v39 v10[13]];

  return v39;
}

unint64_t sub_29E6B3B08()
{
  result = qword_2A1858F60;
  if (!qword_2A1858F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858F60);
  }

  return result;
}

id sub_29E6B3B54(uint64_t a1, void *a2)
{
  if ((a1 - 4) < 3)
  {
    v3 = sub_29E7549D8();
    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 estimatedDimension_];
    }

    else
    {
      v5 = [v4 fractionalWidthDimension_];
    }

    goto LABEL_7;
  }

  if ((a1 - 1) <= 2)
  {
    sub_29E7549D8();
    v5 = [objc_opt_self() fractionalWidthDimension_];
LABEL_7:
    v6 = v5;
    sub_29E753F38();

    return v6;
  }

  type metadata accessor for HKWidthDesignation(0);
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SleepApneaEventAllDataViewController(uint64_t a1)
{
  result = qword_2A1858F68;
  if (!qword_2A1858F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6B3D0C(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_29E6B3DD8(a1, a2);
  v6 = v5;
  sub_29E7510C8();
  sub_29E6AF6B0(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E762F30;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_unknownObjectRetain();
  sub_29E7510D8();
  v8 = sub_29E751A18();

  sub_29E751758();
  return v8;
}

uint64_t sub_29E6B3DD8(uint64_t a1, void *a2)
{
  sub_29E6B5B1C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a1;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v2;
  sub_29E6B5BE4(0);
  sub_29E6B5CE0(0, &qword_2A1858FB0, MEMORY[0x29EDC9A40]);
  sub_29E6B5DF0(&qword_2A1858FB8, sub_29E6B5BE4, MEMORY[0x29EDB8A70]);

  v11 = a2;
  sub_29E752928();

  sub_29E6B5DF0(&qword_2A1858FC0, sub_29E6B5B1C, MEMORY[0x29EDB8908]);
  sub_29E7528D8();
  (*(v7 + 8))(v9, v6);
  sub_29E751408();
  v12 = sub_29E750958();

  sub_29E6B5DF0(&qword_2A1858FC8, sub_29E6B5D4C, MEMORY[0x29EDC1E90]);
  return v12;
}

uint64_t sub_29E6B4048@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v37 = sub_29E750EE8();
  v7 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74ED88();
  v33 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E750CA8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  sub_29E7544C8();
  v16 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v41 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E754C98())
  {
    v18 = MEMORY[0x29EDCA190];
    v34 = v16;
    if (!i)
    {
LABEL_17:
      sub_29E6CCAC8(v18);

      v24 = v32;
      sub_29E74ED78();
      sub_29E74ED48();
      (*(v33 + 8))(v24, v10);
      sub_29E750C98();
      sub_29E6B5CE0(0, &qword_2A1856858, MEMORY[0x29EDC9E90]);
      v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_29E762F30;
      (*(v13 + 32))(v26 + v25, v15, v12);

      *a5 = v26;
      return result;
    }

    v43 = MEMORY[0x29EDCA190];
    result = sub_29E6DBCFC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v36 = i;
    v27 = v10;
    v28 = v15;
    v29 = v13;
    v30 = v12;
    v31 = a5;
    v13 = 0;
    v18 = v43;
    v20 = v41;
    v10 = v41 & 0xC000000000000001;
    v35 = v41 & 0xFFFFFFFFFFFFFF8;
    v16 = v7 + 32;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v10)
      {
        v21 = MEMORY[0x29ED976A0](v13);
      }

      else
      {
        if (v13 >= *(v35 + 16))
        {
          goto LABEL_19;
        }

        v21 = *(v20 + 8 * v13 + 32);
      }

      v22 = v21;
      v42 = v21;
      sub_29E6B44C0(&v42, v38, v39, v9);

      v43 = v18;
      a5 = *(v18 + 16);
      v23 = *(v18 + 24);
      v15 = (a5 + 1);
      if (a5 >= v23 >> 1)
      {
        sub_29E6DBCFC((v23 > 1), a5 + 1, 1);
        v18 = v43;
      }

      *(v18 + 16) = v15;
      (*(v7 + 32))(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a5, v9, v37);
      ++v13;
      v20 = v41;
      if (v12 == v36)
      {
        v12 = v30;
        a5 = v31;
        v15 = v28;
        v13 = v29;
        v10 = v27;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6B44C0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6B4594(v7, a2, a3, a4);
}

void sub_29E6B4594(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_29E74F8B8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E681ED0(a1, 1, a3, a4);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v10 + 8))(v12, v9);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  v13[5] = v4;

  v14 = a1;
  v15 = a3;
  v16 = sub_29E754198();

  aBlock[4] = sub_29E6B5DAC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6B515C;
  aBlock[3] = &unk_2A25011E0;
  v17 = _Block_copy(aBlock);
  v18 = [objc_opt_self() contextualActionWithStyle:1 title:v16 handler:v17];

  _Block_release(v17);

  sub_29E6163F8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E764160;
  *(v19 + 32) = v18;
  sub_29E609B5C(0, &qword_2A1858FD8, 0x29EDC7A28);
  v20 = v18;
  v21 = sub_29E7543D8();

  v22 = [objc_opt_self() configurationWithActions_];

  sub_29E750EC8();
}

uint64_t sub_29E6B489C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751A58();
  sub_29E7547D8();
}

uint64_t sub_29E6B4950(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void *a6, unint64_t a7, void (**a8)(char *, uint64_t))
{
  v44 = a6;
  v35 = a3;
  v36 = a5;
  v34 = a4;
  v10 = sub_29E74ED88();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v42 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v41 = &v31 - v14;
  v15 = sub_29E7544C8();
  v16 = sub_29E7544B8();
  v43 = v15;
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7527B8();
  v17 = aBlock[0];
  v46 = MEMORY[0x29EDCA190];
  if (aBlock[0] >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    v31 = a8;
    v32 = v16;
    v33 = a7;
    a7 = 0;
    v39 = v17 & 0xFFFFFFFFFFFFFF8;
    v40 = v17 & 0xC000000000000001;
    a8 = v11 + 1;
    v37 = i;
    v38 = v17;
    v19 = v41;
    while (1)
    {
      if (v40)
      {
        v20 = MEMORY[0x29ED976A0](a7, v17);
      }

      else
      {
        if (a7 >= *(v39 + 16))
        {
          goto LABEL_19;
        }

        v20 = *(v17 + 8 * a7 + 32);
      }

      v11 = v20;
      v16 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        break;
      }

      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v21 = [v11 UUID];
      sub_29E74ED68();

      v22 = [v44 UUID];
      v23 = v42;
      sub_29E74ED68();

      sub_29E6B5DF0(&qword_2A1858FE0, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      LOBYTE(v22) = sub_29E754108();
      v24 = *a8;
      (*a8)(v23, v10);
      v24(v19, v10);

      if (v22)
      {
      }

      else
      {
        sub_29E754DE8();
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
      }

      v17 = v38;
      ++a7;
      if (v16 == v37)
      {
        v25 = v46;
        a7 = v33;
        a8 = v31;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v25 = MEMORY[0x29EDCA190];
LABEL_22:

  aBlock[0] = v25;
  sub_29E7527C8();
  v35(1);
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v44;
  *(v26 + 24) = a8;
  aBlock[4] = sub_29E6B5DE8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2501258;
  v28 = _Block_copy(aBlock);
  v29 = v27;

  [a7 deleteObject:v29 withCompletion:v28];
  _Block_release(v28);
}

uint64_t sub_29E6B4DC8(int a1, void *a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v7 = sub_29E74ED88();
  v39 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752078();
  v14 = a3;
  v15 = a2;
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a1;
    v19 = v18;
    v37 = swift_slowAlloc();
    v41 = v37;
    *v19 = 136446978;
    v20 = sub_29E755178();
    v36 = v17;
    v22 = sub_29E6B9C90(v20, v21, &v41);
    v38 = v10;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = [v14 UUID];
    sub_29E74ED68();

    sub_29E6B5DF0(&qword_2A1858FE8, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v25 = sub_29E754FD8();
    v27 = v26;
    (*(v39 + 8))(v9, v7);
    v28 = sub_29E6B9C90(v25, v27, &v41);

    *(v19 + 14) = v28;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v35 & 1;
    *(v19 + 28) = 2082;
    v40 = a2;
    v29 = a2;
    sub_29E6B5E38(0);
    v30 = sub_29E7541F8();
    v32 = sub_29E6B9C90(v30, v31, &v41);

    *(v19 + 30) = v32;
    _os_log_impl(&dword_29E5ED000, v16, v36, "[%{public}s] Delete vision prescription %s success: %{BOOL}d, error: %{public}s", v19, 0x26u);
    v33 = v37;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v33, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);

    return (*(v11 + 8))(v13, v38);
  }

  else
  {

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_29E6B515C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_29E6B5DD0, v8);
}

uint64_t sub_29E6B5230()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

void sub_29E6B52E8()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepApneaEventAllDataViewController(0);
  v9.receiver = v0;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v2 + 8))(v4, v1);
  v6 = sub_29E754198();

  [v0 setTitle_];

  v7 = [v0 navigationItem];
  v8 = [v0 editButtonItem];
  [v7 setRightBarButtonItem_];
}

void sub_29E6B54CC(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E6B52E8();
}

void sub_29E6B5584(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E752148();
  MEMORY[0x2A1C7C4A8](v5);
  v6 = sub_29E750698();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 104))(v9, *MEMORY[0x29EDC1D50], v6);
  v10 = a1;
  sub_29E754878();
  sub_29E752138();
  sub_29E754888();
  v11 = type metadata accessor for SleepApneaEventAllDataViewController(0);
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

uint64_t sub_29E6B57A8()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_29E6B5834()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaEventAllDataViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6B5874@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_29E6B5A80(0);
  v5 = *(v4 + 48);
  sub_29E750E38();
  *(a1 + v5) = [v3 collectionView];
  v6 = *MEMORY[0x29EDC2300];
  v7 = sub_29E750E08();
  v10 = *(v7 - 8);
  (*(v10 + 104))(a1, v6, v7);
  v8 = *(v10 + 56);

  return v8(a1, 0, 1, v7);
}

uint64_t sub_29E6B5968@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1D50];
  v3 = sub_29E750698();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_29E6B5A80(uint64_t a1)
{
  if (!qword_2A1858F80)
  {
    sub_29E750E78();
    sub_29E6B5C78(255, &qword_2A1858F88, &qword_2A1858F90, 0x29EDC79A8, MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858F80);
    }
  }
}

void sub_29E6B5B1C(uint64_t a1)
{
  if (!qword_2A1858F98)
  {
    sub_29E6B5BE4(255);
    sub_29E6B5CE0(255, &qword_2A1858FB0, MEMORY[0x29EDC9A40]);
    sub_29E6B5DF0(&qword_2A1858FB8, sub_29E6B5BE4, MEMORY[0x29EDB8A70]);
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858F98);
    }
  }
}

void sub_29E6B5BE4(uint64_t a1)
{
  if (!qword_2A1858FA0)
  {
    sub_29E6B5C78(255, &qword_2A1858FA8, &qword_2A1858478, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
    v1 = sub_29E7527D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858FA0);
    }
  }
}

void sub_29E6B5C78(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609B5C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E6B5CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E750CA8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E6B5D4C(uint64_t a1)
{
  if (!qword_2A1858FD0)
  {
    sub_29E751408();
    v1 = sub_29E750768();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858FD0);
    }
  }
}

uint64_t sub_29E6B5DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6B5DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6B5E38(uint64_t a1)
{
  if (!qword_2A1858A60)
  {
    sub_29E60A664(255, &qword_2A1A7BCD0, MEMORY[0x29EDC9F18], 1);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858A60);
    }
  }
}

uint64_t sub_29E6B5EAC(uint64_t a1)
{
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for SleepScoreRoomModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel;
  swift_beginAccess();
  sub_29E6B8BE4(a1, v1 + v10);
  swift_endAccess();
  sub_29E62D760(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29E6B7144(a1);
    return sub_29E6B7144(v5);
  }

  else
  {
    sub_29E6808C8(v5, v9, type metadata accessor for SleepScoreRoomModel);
    *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_hasReceivedQueryResult) = 1;
    v12 = v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler;
    swift_beginAccess();
    v13 = *v12;
    if (*v12)
    {
      v14 = *(v12 + 8);
      swift_endAccess();

      v13(v9);
      sub_29E6459B8(v13, v14);
      sub_29E6B7144(a1);
      return sub_29E6B8C64(v9, type metadata accessor for SleepScoreRoomModel);
    }

    else
    {
      sub_29E6B7144(a1);
      sub_29E6B8C64(v9, type metadata accessor for SleepScoreRoomModel);
      return swift_endAccess();
    }
  }
}

uint64_t sub_29E6B610C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel;
  if (!*(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel))
  {
    sub_29E74F178();
    swift_allocObject();
    *(v2 + v10) = sub_29E74F168();
  }

  v11 = (v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  sub_29E6459B8(v12, v13);

  sub_29E6B665C();
  sub_29E6163F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E764160;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v15 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
  v16 = [objc_opt_self() queryDescriptorWithSampleType_];

  *(v14 + 32) = v16;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_allocWithZone(MEMORY[0x29EDBACC0]);
  sub_29E609B5C(0, &qword_2A1858468, 0x29EDBAD40);

  v19 = sub_29E7543D8();

  v47 = sub_29E6B8904;
  v48 = v17;
  aBlock = MEMORY[0x29EDCA5F8];
  v44 = 1107296256;
  v45 = sub_29E6B87EC;
  v46 = &unk_2A2501338;
  v20 = _Block_copy(&aBlock);
  v21 = [v18 initWithQueryDescriptors:v19 updateHandler:v20];

  _Block_release(v20);

  aBlock = 0;
  v44 = 0xE000000000000000;
  v22 = v21;
  sub_29E754D78();
  MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75DEA0);
  v42 = v3;
  sub_29E754E38();
  v23 = sub_29E754198();

  [v22 setDebugIdentifier_];

  [*(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) executeQuery_];
  v24 = *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery);
  *(v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery) = v22;
  v25 = v22;

  sub_29E752068();
  v26 = v25;
  v27 = sub_29E752088();
  v28 = sub_29E7546C8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v9;
    v31 = v7;
    v32 = v30;
    v33 = swift_slowAlloc();
    v40 = v6;
    v34 = v33;
    aBlock = v33;
    *v29 = 136446466;
    v35 = sub_29E755178();
    v37 = sub_29E6B9C90(v35, v36, &aBlock);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v26;
    *v32 = v22;
    v38 = v26;
    _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s] Started query: %@", v29, 0x16u);
    sub_29E6B8C64(v32, sub_29E676558);
    MEMORY[0x29ED98410](v32, -1, -1);
    sub_29E5FECBC(v34);
    MEMORY[0x29ED98410](v34, -1, -1);
    MEMORY[0x29ED98410](v29, -1, -1);

    return (*(v31 + 8))(v41, v40);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

void sub_29E6B665C()
{
  v1 = v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery;
  v7 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery);
  if (v7)
  {
    v8 = v7;
    sub_29E752068();
    v9 = v8;
    v10 = sub_29E752088();
    v11 = sub_29E7546C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v26 = v3;
      v13 = v12;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v13 = 136446466;
      v14 = sub_29E755178();
      v16 = sub_29E6B9C90(v14, v15, &v27);
      v25 = v2;
      v17 = v16;

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v9;
      v18 = v23;
      *v23 = v7;
      v19 = v9;
      _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Stopping query: %@", v13, 0x16u);
      sub_29E6B8C64(v18, sub_29E676558);
      MEMORY[0x29ED98410](v18, -1, -1);
      v20 = v24;
      sub_29E5FECBC(v24);
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);

      (*(v26 + 8))(v5, v25);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    [*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) stopQuery_];

    v21 = *(v1 + v6);
    *(v1 + v6) = 0;
  }
}

uint64_t sub_29E6B68FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_29E6B6970();
  }

  return a3(Strong);
}

uint64_t sub_29E6B6970()
{
  v1 = v0;
  sub_29E6B899C(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] Received observer query update", v12, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    v17 = v12;
    v4 = v23;
    MEMORY[0x29ED98410](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = sub_29E7544F8();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_29E7544C8();

  v19 = sub_29E7544B8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x29EDCA390];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v1;
  sub_29E6E4804(0, 0, v4, &unk_29E769A00, v20);
}

uint64_t sub_29E6B6C50()
{
  v1 = v0;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6B665C();

  sub_29E6B7144(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel);

  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_today;
  v3 = sub_29E754048();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_gregorianCalendar;
  v5 = sub_29E74EE78();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_algorithmVersion;
  v7 = sub_29E74F0D8();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  sub_29E6459B8(*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler), *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler + 8));
  return v1;
}

uint64_t sub_29E6B6DFC(uint64_t a1)
{
  sub_29E6B6C50();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6B6E60()
{
  sub_29E7544C8();
  sub_29E7544B8();
  v1 = sub_29E754468();
  v3 = v2;

  return MEMORY[0x2A1C73D28](v0, sub_29E6B6DFC, v1, v3, 0);
}

uint64_t type metadata accessor for SleepScoreRoomModelProvider(uint64_t a1)
{
  result = qword_2A1859000;
  if (!qword_2A1859000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6B6F48(uint64_t a1)
{
  sub_29E6B899C(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (v1 <= 0x3F)
  {
    sub_29E754048();
    if (v2 <= 0x3F)
    {
      sub_29E74EE78();
      if (v3 <= 0x3F)
      {
        sub_29E74F0D8();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_29E6B70F0()
{
  result = qword_2A1859010;
  if (!qword_2A1859010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859010);
  }

  return result;
}

uint64_t sub_29E6B7144(uint64_t a1)
{
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6B71BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E7544C8();
  *(v4 + 24) = sub_29E7544B8();
  v6 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6B7254, v6, v5);
}

uint64_t sub_29E6B7254()
{

  sub_29E6B72B8();
  v1 = *(v0 + 8);

  return v1();
}

void sub_29E6B72B8()
{
  v1 = v0;
  v81 = *v0;
  v2 = sub_29E74F0D8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v80 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_29E74EE78();
  v74 = *(v75 - 8);
  MEMORY[0x2A1C7C4A8](v75);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC(0);
  v73 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v71 = &v66 - v9;
  sub_29E64C90C(0);
  v72 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v82 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74F118();
  v77 = *(v12 - 8);
  v78 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v76 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E754048();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v66 - v19;
  v21 = sub_29E752098();
  v84 = *(v21 - 8);
  v85 = v21;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v66 - v25;
  v83 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus;
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) - 1 > 1)
  {
    sub_29E752068();

    v34 = sub_29E752088();
    v35 = sub_29E7546C8();

    v67 = v35;
    v36 = v35;
    v37 = v34;
    v38 = os_log_type_enabled(v34, v36);
    v39 = &unk_2A1869000;
    v69 = v2;
    v68 = v3;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v90[0] = v66;
      *v40 = 136446466;
      v41 = sub_29E755178();
      v43 = sub_29E6B9C90(v41, v42, v90);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_today;
      swift_beginAccess();
      (*(v15 + 16))(v20, v1 + v44, v14);
      sub_29E6B8AA4(&qword_2A1856920, MEMORY[0x29EDBA328]);
      v45 = sub_29E754FD8();
      v47 = v46;
      (*(v15 + 8))(v20, v14);
      v48 = sub_29E6B9C90(v45, v47, v90);

      *(v40 + 14) = v48;
      v39 = &unk_2A1869000;
      v49 = v37;
      _os_log_impl(&dword_29E5ED000, v37, v67, "[%{public}s] Starting new sleep query for %s", v40, 0x16u);
      v50 = v66;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v50, -1, -1);
      MEMORY[0x29ED98410](v40, -1, -1);
    }

    else
    {
    }

    (v84[1])(v24, v85);
    *(v1 + v83) = 1;
    v51 = v39[124];
    swift_beginAccess();
    v52 = *(v15 + 16);
    v52(v20, v1 + v51, v14);
    v52(v18, v1 + v51, v14);
    sub_29E6B8AA4(&qword_2A1A7BE20, MEMORY[0x29EDBA308]);
    if (sub_29E7540E8())
    {
      v53 = v15;
      v54 = *(v15 + 32);
      v55 = v71;
      (v54)(v71, v20, v14);
      v56 = v70;
      v85 = v51;
      v57 = v73;
      (v54)(v55 + *(v73 + 48), v18, v14);
      sub_29E6806A4(v55, v56);
      v58 = *(v57 + 48);
      v84 = v1;
      v59 = v82;
      v54();
      v60 = *(v53 + 8);
      v60(v56 + v58, v14);
      sub_29E6808C8(v55, v56, sub_29E605ADC);
      (v54)(&v59[*(v72 + 36)], v56 + *(v57 + 48), v14);
      v60(v56, v14);
      v61 = v84;
      (*(v74 + 16))(v79, v84 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_gregorianCalendar, v75);
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_29E754D78();
      v88 = v86;
      v89 = v87;
      MEMORY[0x29ED96C20](0xD00000000000001BLL, 0x800000029E75DEA0);
      v86 = v61;
      sub_29E754E38();
      MEMORY[0x29ED96C20](95, 0xE100000000000000);
      swift_beginAccess();
      v62 = sub_29E753FF8();
      swift_endAccess();
      v86 = v62;
      v63 = sub_29E754FD8();
      MEMORY[0x29ED96C20](v63);

      (*(v68 + 16))(v80, v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_algorithmVersion, v69);
      v64 = v76;
      sub_29E74F0F8();

      v65 = sub_29E74F0E8();

      (*(v77 + 8))(v64, v78);
      [*(v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) executeQuery_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29E752068();
    v27 = sub_29E752088();
    v28 = sub_29E7546C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v90[0] = v30;
      *v29 = 136446210;
      v31 = sub_29E755178();
      v33 = sub_29E6B9C90(v31, v32, v90);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s] Ignoring observer query update while query is in progress", v29, 0xCu);
      sub_29E5FECBC(v30);
      MEMORY[0x29ED98410](v30, -1, -1);
      MEMORY[0x29ED98410](v29, -1, -1);
    }

    (v84[1])(v26, v85);
    *(v1 + v83) = 2;
  }
}

uint64_t sub_29E6B7D20(void *a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  sub_29E6B899C(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_29E7544F8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_29E7544C8();
  v11 = a2 & 1;
  sub_29E6B8AF4(a1, a2 & 1);

  v12 = sub_29E7544B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x29EDCA390];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = a1;
  *(v13 + 40) = v11;
  *(v13 + 48) = a3;
  *(v13 + 56) = v6;
  sub_29E6E4804(0, 0, v9, &unk_29E769A10, v13);
}

uint64_t sub_29E6B7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 136) = a5;
  *(v7 + 16) = a4;
  v8 = sub_29E74F048();
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 - 8);
  *(v7 + 56) = swift_task_alloc();
  *(v7 + 64) = swift_task_alloc();
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  *(v7 + 72) = swift_task_alloc();
  v9 = sub_29E752098();
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  sub_29E7544C8();
  *(v7 + 128) = sub_29E7544B8();
  v11 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6B8080, v11, v10);
}

uint64_t sub_29E6B8080()
{
  v85 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 16);

  v3 = *(v0 + 16);
  if (v1)
  {
    sub_29E752068();
    v4 = v2;
    v5 = sub_29E752088();
    v6 = sub_29E7546A8();
    sub_29E6B8B00(v3, 1);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 120);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v79 = v10;
      v84 = swift_slowAlloc();
      v13 = v84;
      *v11 = 136446466;
      v14 = sub_29E755178();
      v75 = v8;
      v16 = sub_29E6B9C90(v14, v15, &v84);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Query completed with error: %@", v11, 0x16u);
      sub_29E6B8C64(v12, sub_29E676558);
      MEMORY[0x29ED98410](v12, -1, -1);
      sub_29E5FECBC(v13);
      MEMORY[0x29ED98410](v13, -1, -1);
      MEMORY[0x29ED98410](v11, -1, -1);

      v19 = *(v9 + 8);
      v19(v75, v79);
    }

    else
    {

      v19 = *(v9 + 8);
      v19(v8, v10);
    }
  }

  else
  {
    sub_29E752068();

    v20 = sub_29E752088();
    v21 = sub_29E7546C8();
    sub_29E6B8B00(v3, 0);
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 112);
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    if (v22)
    {
      v26 = *(v0 + 40);
      v80 = *(v0 + 80);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v84 = v28;
      *v27 = 136446466;
      v29 = sub_29E755178();
      v76 = v23;
      v31 = sub_29E6B9C90(v29, v30, &v84);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = MEMORY[0x29ED96D20](v2, v26);
      v34 = sub_29E6B9C90(v32, v33, &v84);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Query completed successfully: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);

      v19 = *(v24 + 8);
      v19(v76, v80);
    }

    else
    {

      v19 = *(v24 + 8);
      v19(v23, v25);
    }

    v35 = v2[2];
    if (v35)
    {
      v36 = *(v0 + 48);
      v37 = *(v0 + 24);
      v77 = *(v36 + 16);
      v77(*(v0 + 64), v2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * (v35 - 1), *(v0 + 40));
      v81 = v19;
      if (*(v37 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel))
      {

        v38 = sub_29E74F158();
        v72 = v39;
        v73 = v38;
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }

      v52 = *(v0 + 64);
      v51 = *(v0 + 72);
      v53 = *(v0 + 48);
      v54 = *(v0 + 56);
      v55 = *(v0 + 40);
      v56 = type metadata accessor for SleepScoreRoomModel(0);
      v57 = (v51 + *(v56 + 24));
      v77(v51, v52, v55);
      v77(v54, v52, v55);
      sub_29E74F2A8();
      (*(v53 + 8))(v52, v55);
      *v57 = v73;
      v57[1] = v72;
      (*(*(v56 - 8) + 56))(v51, 0, 1, v56);
      sub_29E6B5EAC(v51);
      v19 = v81;
    }

    else
    {
      sub_29E752068();
      v40 = sub_29E752088();
      v41 = sub_29E7546A8();
      v42 = os_log_type_enabled(v40, v41);
      v43 = *(v0 + 104);
      v44 = *(v0 + 80);
      if (v42)
      {
        v82 = v19;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v84 = v46;
        *v45 = 136446210;
        v47 = sub_29E755178();
        v49 = sub_29E6B9C90(v47, v48, &v84);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s] No summaries found", v45, 0xCu);
        sub_29E5FECBC(v46);
        MEMORY[0x29ED98410](v46, -1, -1);
        v50 = v45;
        v19 = v82;
        MEMORY[0x29ED98410](v50, -1, -1);
      }

      v19(v43, v44);
    }
  }

  v58 = *(v0 + 24);
  v59 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus;
  if (*(v58 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus))
  {
    if (*(v58 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) == 1)
    {
      *(v58 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) = 0;
    }

    else
    {
      sub_29E752068();
      v60 = sub_29E752088();
      v61 = sub_29E7546C8();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 96);
      v64 = *(v0 + 80);
      if (v62)
      {
        v78 = *(v0 + 96);
        v83 = v19;
        v65 = swift_slowAlloc();
        v74 = v64;
        v66 = swift_slowAlloc();
        v84 = v66;
        *v65 = 136446210;
        v67 = sub_29E755178();
        v69 = sub_29E6B9C90(v67, v68, &v84);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_29E5ED000, v60, v61, "[%{public}s] Restarting query", v65, 0xCu);
        sub_29E5FECBC(v66);
        MEMORY[0x29ED98410](v66, -1, -1);
        MEMORY[0x29ED98410](v65, -1, -1);

        v83(v78, v74);
      }

      else
      {

        v19(v63, v64);
      }

      *(v58 + v59) = 0;
      sub_29E6B72B8();
    }
  }

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_29E6B87EC(uint64_t a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    sub_29E6B8934();
    v7 = sub_29E754568();
  }

  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  v12 = a2;
  v13 = a5;
  v9(v12, v7, sub_29E6B8924, v11, a5);
}

uint64_t sub_29E6B890C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E6B8934()
{
  result = qword_2A1A7D478;
  if (!qword_2A1A7D478)
  {
    sub_29E609B5C(255, &qword_2A1A7D480, 0x29EDBAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D478);
  }

  return result;
}

void sub_29E6B899C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6B89F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29E66A9A0;

  return sub_29E6B71BC(a1, v4, v5, v6);
}

uint64_t sub_29E6B8AA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E754048();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_29E6B8AF4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_29E6B8B00(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_29E6B8B0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29E605728;

  return sub_29E6B7EB0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29E6B8BE4(uint64_t a1, uint64_t a2)
{
  sub_29E6B899C(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6B8C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id SleepScoreRoomViewController.init(context:)(uint64_t a1)
{
  v3 = sub_29E7513C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v27 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v26 - v7;
  v28 = sub_29E751468();
  v9 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E7513D8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  *(v1 + qword_2A1859018) = 0;
  sub_29E6CEAB0();
  v26[1] = sub_29E751148();
  (*(v13 + 8))(v15, v12);
  v29 = v4;
  v16 = *(v4 + 16);
  v31 = v3;
  v16(v8, a1, v3);
  result = [objc_opt_self() appleSleepScoreType];
  if (result)
  {
    sub_29E751458();
    v18 = sub_29E751388();
    v19 = [v18 viewControllerFactory];

    v20 = [v19 chartFactory];
    type metadata accessor for SleepScoreOverlayRoomViewController(0);
    v21 = [objc_allocWithZone(MEMORY[0x29EDC46C0]) initWithProviderClass_];
    [v20 registerInteractiveChartViewControllerProvider:v21 typeIdentifier:*MEMORY[0x29EDBAF10]];

    v22 = v31;
    v16(v27, a1, v31);
    v23 = v28;
    v32[3] = v28;
    v32[4] = MEMORY[0x29EDC2780];
    v24 = sub_29E5FEBF4(v32);
    (*(v9 + 16))(v24, v11, v23);
    v25 = sub_29E751488();
    (*(v29 + 8))(a1, v22);
    (*(v9 + 8))(v11, v23);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6B90C4(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_2A1859018) = 0;
  result = sub_29E754E48();
  __break(1u);
  return result;
}

Swift::Void __swiftcall SleepScoreRoomViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepScoreRoomViewController(0);
  v16.receiver = v1;
  v16.super_class = v6;
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] View did load", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_29E6B93B4();
}

uint64_t type metadata accessor for SleepScoreRoomViewController(uint64_t a1)
{
  result = qword_2A1859020;
  if (!qword_2A1859020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6B93B4()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v4 = sub_29E752088();
  v5 = sub_29E7546C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_29E755178();
    v10 = sub_29E6B9C90(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29E5ED000, v4, v5, "[%{public}s] Reloading widgets", v6, 0xCu);
    sub_29E5FECBC(v7);
    MEMORY[0x29ED98410](v7, -1, -1);
    MEMORY[0x29ED98410](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v11 = [objc_allocWithZone(MEMORY[0x29EDC68D0]) init];
  [v11 reloadWidgetsWithReason_];
}

void sub_29E6B958C(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  SleepScoreRoomViewController.viewDidLoad()();
}

Swift::Void __swiftcall SleepScoreRoomViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreRoomViewController(0);
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1);
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    v13 = sub_29E755178();
    v15 = sub_29E6B9C90(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] View did appear", v11, 0xCu);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

void sub_29E6B981C(void *a1, uint64_t a2, Swift::Bool a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  SleepScoreRoomViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_29E6B98F4(_BYTE *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1[OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_allowedToAnimate] = 1;
  [a1 setNeedsUpdateConfiguration];
}

uint64_t sub_29E6B99AC(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + qword_2A1859018);
  *(a1 + qword_2A1859018) = 1;
  sub_29E6BA994(v2);
}

uint64_t sub_29E6B9A58(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_29E74EEE8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74EEA8();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_29E6BA1B8(v13);

  (*(v9 + 8))(v11, v8);
}

id SleepScoreRoomViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreRoomViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29E6B9C90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29E6B9D5C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29E606008(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29E5FECBC(v11);
  return v7;
}

unint64_t sub_29E6B9D5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29E6B9E68(a5, a6);
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
    result = sub_29E754DD8();
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

void *sub_29E6B9E68(uint64_t a1, unint64_t a2)
{
  v3 = sub_29E6B9EB4(a1, a2);
  sub_29E6B9FE4(&unk_2A24FC078);
  return v3;
}

void *sub_29E6B9EB4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29E6BD3DC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29E754DD8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29E754318();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29E6BD3DC(v10, 0);
        result = sub_29E754D68();
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

uint64_t sub_29E6B9FE4(uint64_t result)
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

  result = sub_29E6BA0D0(result, v11, 1, v3);
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

char *sub_29E6BA0D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6BAA14();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

_BYTE *sub_29E6BA1B8(void *a1)
{
  v3 = sub_29E753CE8();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29E753D38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v50 = &v37 - v11;
  v12 = sub_29E753D18();
  v49 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E753CF8();
  v48 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LatestSleepScoreVisualizationCell(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = *&v1[qword_2A1859018];
    if (v19 == 1)
    {
      result[OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_hasCompletedAnimation] = 1;

      return [result setNeedsUpdateConfiguration];
    }

    else if (!v19)
    {
      v47 = v6;
      v20 = result;
      v45 = qword_2A1859018;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v58 = sub_29E6BA9A4;
      v59 = v21;
      aBlock = MEMORY[0x29EDCA5F8];
      v55 = 1107296256;
      v46 = v7;
      v43 = &v56;
      v56 = sub_29E6A1514;
      v57 = &unk_2A2501490;
      v41 = _Block_copy(&aBlock);
      v53 = MEMORY[0x29EDCA190];
      v40 = sub_29E6BA9C4(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      sub_29E65A938(0);
      v39 = v22;
      sub_29E6BA9C4(&qword_2A1856A00, sub_29E65A938, MEMORY[0x29EDC9A70]);
      v42 = v10;
      v44 = a1;
      v23 = v1;
      sub_29E754C58();
      sub_29E753D68();
      swift_allocObject();
      v38 = sub_29E753D48();

      v41 = sub_29E602DD4();
      v24 = sub_29E754908();
      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      v58 = sub_29E6BAA0C;
      v59 = v25;
      aBlock = MEMORY[0x29EDCA5F8];
      v55 = 1107296256;
      v56 = sub_29E6A1514;
      v57 = &unk_2A25014E0;
      v26 = _Block_copy(&aBlock);
      v27 = v1;
      sub_29E753D08();
      v53 = MEMORY[0x29EDCA190];
      sub_29E754C58();
      v28 = v38;
      sub_29E753D58();
      _Block_release(v26);

      (*(v48 + 8))(v17, v15);
      (*(v49 + 8))(v14, v12);

      v29 = *&v1[v45];
      *&v23[v45] = v28;

      sub_29E6BA994(v29);
      v30 = sub_29E754908();
      v31 = v42;
      sub_29E753D28();
      *v5 = 200;
      v33 = v51;
      v32 = v52;
      (*(v51 + 104))(v5, *MEMORY[0x29EDCA230], v52);
      v34 = v50;
      MEMORY[0x29ED966A0](v31, v5);
      (*(v33 + 8))(v5, v32);
      v35 = v47;
      v36 = *(v46 + 8);
      v36(v31, v47);
      sub_29E7548C8();

      return (v36)(v34, v35);
    }
  }

  return result;
}

uint64_t sub_29E6BA890(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_29E6BA8B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E6BA908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_29E6BA964(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_29E6BA994(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_29E6BA9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6BA9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6BAA14()
{
  if (!qword_2A18590B0)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18590B0);
    }
  }
}

uint64_t sub_29E6BAA90(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    goto LABEL_6;
  }

  v2 = sub_29E755028();

  if ((v2 & 1) == 0)
  {
    if (a1)
    {
      v3 = sub_29E755028();
LABEL_7:

      return v3 & 1;
    }

LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_29E6BAC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v57[0] = 0x656D614E74736574;
  *(&v57[0] + 1) = 0xE800000000000000;
  sub_29E754D08();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_105;
  }

  v4 = sub_29E68AB20(v56);
  if ((v5 & 1) == 0)
  {
LABEL_105:
    __break(1u);
LABEL_106:

    goto LABEL_26;
  }

  sub_29E606008(*(a1 + 56) + 32 * v4, v55);
  sub_29E68CE9C(v56);
  sub_29E61FF28(v55, v57);
  swift_dynamicCast();
  *a2 = v53;
  *(a2 + 8) = v54;
  *&v55[0] = 0x6F69746172657469;
  *(&v55[0] + 1) = 0xEA0000000000736ELL;
  sub_29E754D08();
  if (!*(a1 + 16) || (v6 = sub_29E68AB20(v56), (v7 & 1) == 0))
  {
    sub_29E68CE9C(v56);
    goto LABEL_26;
  }

  sub_29E606008(*(a1 + 56) + 32 * v6, v57);
  sub_29E68CE9C(v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v19 = 0;
    v20 = 1;
    goto LABEL_27;
  }

  result = *(&v55[0] + 1);
  v9 = HIBYTE(*(&v55[0] + 1)) & 0xFLL;
  v10 = *&v55[0] & 0xFFFFFFFFFFFFLL;
  if ((*(&v55[0] + 1) & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(*(&v55[0] + 1)) & 0xFLL;
  }

  else
  {
    v11 = *&v55[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_106;
  }

  if ((*(&v55[0] + 1) & 0x1000000000000000) == 0)
  {
    if ((*(&v55[0] + 1) & 0x2000000000000000) != 0)
    {
      v56[0] = *&v55[0];
      v56[1] = *(&v55[0] + 1) & 0xFFFFFFFFFFFFFFLL;
      if (LOBYTE(v55[0]) == 43)
      {
        if (v9)
        {
          v12 = (v9 - 1);
          if (v9 != 1)
          {
            v15 = 0;
            v43 = v56 + 1;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              ++v43;
              if (!--v12)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }

LABEL_112:
        __break(1u);
        return result;
      }

      if (LOBYTE(v55[0]) != 45)
      {
        if (v9)
        {
          v15 = 0;
          v48 = v56;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              break;
            }

            v50 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              break;
            }

            ++v48;
            if (!--v9)
            {
LABEL_98:
              LOBYTE(v12) = 0;
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }

      if (v9)
      {
        v12 = (v9 - 1);
        if (v9 != 1)
        {
          v15 = 0;
          v36 = v56 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v38 - v37;
            if (__OFSUB__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v12)
            {
              goto LABEL_100;
            }
          }
        }

        goto LABEL_99;
      }
    }

    else
    {
      if ((*&v55[0] & 0x1000000000000000) != 0)
      {
        v12 = ((*(&v55[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v52 = *(&v55[0] + 1);
        v12 = sub_29E754DD8();
        result = v52;
      }

      v13 = *v12;
      if (v13 == 43)
      {
        if (v10 >= 1)
        {
          v39 = v10 - 1;
          if (v10 != 1)
          {
            v15 = 0;
            if (v12)
            {
              v40 = v12 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  goto LABEL_99;
                }

                v42 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_99;
                }

                v15 = v42 + v41;
                if (__OFADD__(v42, v41))
                {
                  goto LABEL_99;
                }

                ++v40;
                if (!--v39)
                {
                  goto LABEL_98;
                }
              }
            }

            goto LABEL_100;
          }

          goto LABEL_99;
        }

        goto LABEL_111;
      }

      if (v13 != 45)
      {
        if (v10)
        {
          v15 = 0;
          if (v12)
          {
            while (1)
            {
              v46 = *v12 - 48;
              if (v46 > 9)
              {
                goto LABEL_99;
              }

              v47 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_99;
              }

              v15 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_99;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_98;
              }
            }
          }

          goto LABEL_100;
        }

LABEL_99:
        v15 = 0;
        LOBYTE(v12) = 1;
        goto LABEL_100;
      }

      if (v10 >= 1)
      {
        v14 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          if (v12)
          {
            v16 = v12 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_99;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_99;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                goto LABEL_99;
              }

              ++v16;
              if (!--v14)
              {
                goto LABEL_98;
              }
            }
          }

LABEL_100:
          LOBYTE(v57[0]) = v12;
          v20 = v12;
          goto LABEL_101;
        }

        goto LABEL_99;
      }

      __break(1u);
    }

    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v15 = sub_29E6BD468(*&v55[0], *(&v55[0] + 1), 10);
  v20 = v51;
LABEL_101:

  if (v20)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

LABEL_27:
  *(a2 + 16) = v19;
  *(a2 + 24) = v20 & 1;
  *&v55[0] = 0x65446C6C6F726373;
  *(&v55[0] + 1) = 0xEB0000000061746CLL;
  sub_29E754D08();
  if (!*(a1 + 16) || (v21 = sub_29E68AB20(v56), (v22 & 1) == 0))
  {
    sub_29E68CE9C(v56);
LABEL_33:
    *(a2 + 32) = 0;
    v25 = 1;
    goto LABEL_34;
  }

  sub_29E606008(*(a1 + 56) + 32 * v21, v57);
  sub_29E68CE9C(v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v23 = sub_29E6BB470(*&v55[0], *(&v55[0] + 1));
  if (v24)
  {
    goto LABEL_33;
  }

  v25 = 0;
  *(a2 + 32) = v23;
LABEL_34:
  *(a2 + 40) = v25;
  *&v55[0] = 0x7061636552657375;
  *(&v55[0] + 1) = 0xE800000000000000;
  sub_29E754D08();
  if (!*(a1 + 16) || (v26 = sub_29E68AB20(v56), (v27 & 1) == 0))
  {
    sub_29E68CE9C(v56);
    goto LABEL_40;
  }

  sub_29E606008(*(a1 + 56) + 32 * v26, v57);
  sub_29E68CE9C(v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    *(a2 + *(type metadata accessor for TestOptions(0) + 32)) = 0;
    goto LABEL_41;
  }

  if (v55[0] == __PAIR128__(0xE300000000000000, 5457241))
  {

    v28 = 1;
  }

  else
  {
    v28 = sub_29E755028();
  }

  *(a2 + *(type metadata accessor for TestOptions(0) + 32)) = v28 & 1;
LABEL_41:
  *&v55[0] = 0x72556F5468737570;
  *(&v55[0] + 1) = 0xE90000000000006CLL;
  sub_29E754D08();
  if (!*(a1 + 16) || (v29 = sub_29E68AB20(v56), (v30 & 1) == 0))
  {
    sub_29E68CE9C(v56);
    goto LABEL_46;
  }

  sub_29E606008(*(a1 + 56) + 32 * v29, v57);
  sub_29E68CE9C(v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    v31 = *(type metadata accessor for TestOptions(0) + 28);
    v32 = sub_29E74EAF8();
    (*(*(v32 - 8) + 56))(a2 + v31, 1, 1, v32);
    goto LABEL_47;
  }

  type metadata accessor for TestOptions(0);
  sub_29E74EAE8();

LABEL_47:
  *&v55[0] = 0xD000000000000014;
  *(&v55[0] + 1) = 0x800000029E75E360;
  sub_29E754D08();
  if (!*(a1 + 16) || (v33 = sub_29E68AB20(v56), (v34 & 1) == 0))
  {

    sub_29E68CE9C(v56);
    goto LABEL_53;
  }

  sub_29E606008(*(a1 + 56) + 32 * v33, v57);
  sub_29E68CE9C(v56);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    result = type metadata accessor for TestOptions(0);
    *(a2 + *(result + 36)) = 0;
    return result;
  }

  if (v55[0] == __PAIR128__(0xE300000000000000, 5457241))
  {

    v35 = 1;
  }

  else
  {
    v35 = sub_29E755028();
  }

  result = type metadata accessor for TestOptions(0);
  *(a2 + *(result + 36)) = v35 & 1;
  return result;
}

unint64_t sub_29E6BB470(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_29E754DD8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_29E6BD468(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_29E6BB770(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v59 = a2;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for TestOptions(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v52 - v15;
  sub_29E752048();

  v17 = sub_29E752088();
  v18 = sub_29E7546C8();

  v19 = os_log_type_enabled(v17, v18);
  v58 = ObjectType;
  if (v19)
  {
    v54 = v14;
    v55 = v9;
    v52 = v11;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = v21;
    *v20 = 136446722;
    v22 = sub_29E755178();
    v24 = sub_29E6B9C90(v22, v23, &v60);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    if (!a3)
    {
LABEL_15:

      __break(1u);
      goto LABEL_16;
    }

    v53 = v10;
    result = sub_29E6B9C90(v59, a3, &v60);
    *(v20 + 14) = result;
    *(v20 + 22) = 2082;
    if (!a4)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v26 = sub_29E754088();
    v28 = sub_29E6B9C90(v26, v27, &v60);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Executing test %{public}s with options %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);

    v10 = v53;
    v29 = *(v52 + 8);
    v29(v16, v53);
    v14 = v54;
    v9 = v55;
    v30 = v59;
  }

  else
  {

    v29 = *(v11 + 8);
    result = (v29)(v16, v10);
    v30 = v59;
    if (!a4)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_29E6BAC3C(v31, v9);
  if (!a3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v32 = sub_29E6BECD4(v30, a3);
  v33 = v58;
  if (v32 == 5)
  {
    sub_29E752048();

    v34 = sub_29E752088();
    v35 = v14;
    v36 = sub_29E7546A8();

    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v53 = v10;
      v55 = v9;
      v38 = v37;
      v39 = swift_slowAlloc();
      v54 = v35;
      v40 = v30;
      v41 = v39;
      v60 = v39;
      *v38 = 136446466;
      v42 = sub_29E755178();
      v44 = sub_29E6B9C90(v42, v43, &v60);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_29E6B9C90(v40, a3, &v60);
      _os_log_impl(&dword_29E5ED000, v34, v36, "[%{public}s] No test configured by name %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v41, -1, -1);
      v45 = v38;
      v9 = v55;
      MEMORY[0x29ED98410](v45, -1, -1);

      v47 = v53;
      v46 = v54;
    }

    else
    {

      v46 = v35;
      v47 = v10;
    }

    v29(v46, v47);
    v51 = 0;
  }

  else
  {
    v48 = v32;
    v49 = sub_29E7544C8();
    MEMORY[0x2A1C7C4A8](v49);
    *(&v52 - 64) = v48;
    *(&v52 - 7) = v30;
    *(&v52 - 6) = a3;
    v50 = v57;
    *(&v52 - 5) = v56;
    *(&v52 - 4) = v9;
    *(&v52 - 3) = v50;
    *(&v52 - 2) = v33;
    v51 = sub_29E607DD8(sub_29E6BED7C, (&v52 - 10), "SleepHealthAppPlugin/SleepPPT.swift", 35, 2, 110);
  }

  sub_29E6BED20(v9);
  return v51 & 1;
}

void sub_29E6BBCB4(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v42 = a6;
  v43 = a7;
  v48 = a5;
  v50 = a8;
  v51 = a4;
  v45 = a2;
  v46 = a3;
  v11 = sub_29E752098();
  v44 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TestOptions(0);
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  sub_29E7544C8();
  v49 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      goto LABEL_21;
    }
  }

  else if (a1 >= 2u)
  {
LABEL_14:

    goto LABEL_22;
  }

  v47 = v8;
  v16 = [objc_opt_self() sharedBehavior];
  if (!v16)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16;
  v18 = [v16 hksp_supportsSleep];

  if (!v18)
  {
    sub_29E752048();
    v19 = v46;

    v20 = sub_29E752088();
    v21 = sub_29E7546A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v52 = v23;
      *v22 = 136446466;
      v24 = sub_29E755178();
      v26 = sub_29E6B9C90(v24, v25, &v52);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      if (!v19)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      *(v22 + 14) = sub_29E6B9C90(v45, v19, &v52);
      _os_log_impl(&dword_29E5ED000, v20, v21, "[%{public}s] Can't test %{public}s on this device", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v23, -1, -1);
      MEMORY[0x29ED98410](v22, -1, -1);

      (*(v44 + 8))(v13, v11);
    }

    else
    {

      (*(v44 + 8))(v13, v11);
    }

    v27 = v51;
    if (v51)
    {
      if (v19)
      {
        v28 = sub_29E754198();
      }

      else
      {
        v28 = 0;
      }

      v29 = sub_29E754198();
      [v27 failedTest:v28 withFailure:v29];

      v30 = 0;
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = v47;
  if (a1 == 2)
  {
    goto LABEL_14;
  }

LABEL_21:
  v31 = sub_29E755028();

  if (v31)
  {
LABEL_22:
    if (v51)
    {
      sub_29E6BC2C4(v48);
LABEL_24:

      v30 = 1;
LABEL_25:
      *v50 = v30;
      return;
    }

    goto LABEL_32;
  }

  if (sub_29E6BAA90(a1))
  {
    if (v51)
    {
      sub_29E6BC528(v48, v42);
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  v47 = v9;
  v32 = v51;
  if (v51)
  {
    v33 = sub_29E750658();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    sub_29E6BEDE4(v48, &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = v32;
    sub_29E6BEE48(&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
    v37 = (v36 + ((v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_29E6BEDA4;
    v37[1] = v34;
    v38 = v33;
    v39 = v32;

    sub_29E6BCBE0(sub_29E6BEEAC, v36, 10.0);

    v30 = 1;
    goto LABEL_25;
  }

LABEL_36:
  __break(1u);
}

void sub_29E6BC2C4(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750658();
  v7 = [v6 resolvedHealthToolbox];
  sub_29E6E62F8();
  v8 = [objc_opt_self() unknownProvenance];
  v9 = objc_allocWithZone(type metadata accessor for SleepRoomViewController(0));
  v10 = sub_29E69F6AC(v7, v5, v8);

  v11 = sub_29E754198();
  [v2 startedTest_];

  [v6 pushViewController:v10 animated:1];
  v12 = sub_29E754198();
  sub_29E68B464(MEMORY[0x29EDCA190]);
  v13 = sub_29E754068();

  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  aBlock[4] = sub_29E6BEF54;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2501580;
  v15 = _Block_copy(aBlock);
  v16 = v6;

  [v2 finishedTest:v12 waitForCommit:1 extraResults:v13 withTeardownBlock:v15];
  _Block_release(v15);
}

void sub_29E6BC528(void *a1, void *a2)
{
  v3 = v2;
  v32 = a2;
  v33 = sub_29E750FE8();
  v31 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TestOptions(0);
  v7 = v6 - 8;
  v29 = *(v6 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_29E74EAF8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E750658();
  sub_29E6BEF74(a1 + *(v7 + 36), v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_29E6BF008(v11, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    v17 = sub_29E754198();
    v18 = sub_29E754198();
    [v3 failedTest:v17 withFailure:v18];
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v19 = sub_29E754198();
    [v3 startedTest_];

    v20 = objc_opt_self();
    [v20 begin];
    sub_29E6BEDE4(a1, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v3;
    sub_29E6BEE48(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    *(v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    aBlock[4] = sub_29E6BF078;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A25015D0;
    v23 = _Block_copy(aBlock);
    v24 = v3;
    v25 = v16;

    [v20 setCompletionBlock_];
    _Block_release(v23);
    v26 = v30;
    sub_29E6E646C(v25);
    v27 = v25;
    sub_29E6BDE68(v15, v26, v27, v32);

    (*(v31 + 8))(v26, v33);
    [v20 commit];

    (*(v13 + 8))(v15, v12);
  }
}

void sub_29E6BCB0C(uint64_t a1, char a2, void *a3, double *a4, uint64_t (*a5)(uint64_t a1), uint64_t a6)
{
  if (a2 == 4)
  {
    sub_29E6C5FD8(a3, a4);
  }

  else if (a2 == 3)
  {
    sub_29E6C6C24(a4, a5, a6);
  }

  else
  {
    v7 = sub_29E754198();
    v8 = sub_29E754198();
    [a3 failedTest:v7 withFailure:v8];
  }
}

uint64_t sub_29E6BCBE0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v35 = a1;
  v36 = a2;
  v5 = sub_29E753CF8();
  v40 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E753D18();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E753D38();
  v33 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v32 - v14;
  v16 = sub_29E7513C8();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v4 resolvedHealthToolbox];
  sub_29E6E62F8();
  v20 = [objc_opt_self() unknownProvenance];
  v21 = objc_allocWithZone(type metadata accessor for SleepRoomViewController(0));
  v22 = sub_29E69F6AC(v19, v18, v20);

  [v4 pushViewController:v22 animated:1];
  sub_29E602DD4();
  v23 = sub_29E754908();
  sub_29E753D28();
  sub_29E753D98();
  v24 = *(v10 + 8);
  v32 = v10 + 8;
  v24(v13, v9);
  v25 = swift_allocObject();
  v26 = v36;
  v25[2] = v35;
  v25[3] = v26;
  v25[4] = v22;
  aBlock[4] = sub_29E6BF3E8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2501648;
  v27 = _Block_copy(aBlock);

  v28 = v22;
  v29 = v34;
  sub_29E753D08();
  v41 = MEMORY[0x29EDCA190];
  sub_29E6BF3F4(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29E6BF43C(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E609A80();
  v30 = v37;
  sub_29E754C58();
  MEMORY[0x29ED971D0](v15, v29, v30, v27);
  _Block_release(v27);

  (*(v40 + 8))(v30, v5);
  (*(v38 + 8))(v29, v39);
  v24(v15, v33);
}

void sub_29E6BD0A8(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 popToRootViewControllerAnimated_];
}

void sub_29E6BD16C(void *a1, void *a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_29E754198();
  sub_29E68B464(MEMORY[0x29EDCA190]);
  v6 = sub_29E754068();

  [a1 finishedTest:v5 extraResults:v6];

  v7 = [a3 popToRootViewControllerAnimated_];
}

uint64_t sub_29E6BD2A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(a3);
}

id sub_29E6BD368()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t type metadata accessor for TestOptions(uint64_t a1)
{
  result = qword_2A18590C0;
  if (!qword_2A18590C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29E6BD3DC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E6BF60C(0, &qword_2A18590B0, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_29E6BD468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_29E754378();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_29E6BD9F4(result, v5);
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
      result = sub_29E754DD8();
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

uint64_t sub_29E6BD9F4(uint64_t a1, unint64_t a2)
{
  v2 = sub_29E754388();
  v6 = sub_29E6BDA74(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_29E6BDA74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_29E754BE8();
    if (!v9 || (v10 = v9, v11 = sub_29E6BD3DC(v9, 0), v12 = sub_29E6BDBCC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_29E7542C8();

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
      return sub_29E7542C8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_29E754DD8();
LABEL_4:

  return sub_29E7542C8();
}

unint64_t sub_29E6BDBCC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_29E6BDDEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_29E754348();
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
          result = sub_29E754DD8();
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

    result = sub_29E6BDDEC(v12, a6, a7);
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

    result = sub_29E754328();
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

unint64_t sub_29E6BDDEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29E754358();
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
    v5 = MEMORY[0x29ED96C50](15, a1 >> 16);
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

void sub_29E6BDE68(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v64 = a3;
  v65 = a2;
  v66 = a4;
  ObjectType = swift_getObjectType();
  sub_29E6BF43C(0, &qword_2A1859098, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v61 = &v56 - v7;
  v8 = sub_29E74ED88();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74EAF8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E752098();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v68 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v56 - v18;
  sub_29E752048();
  v20 = *(v11 + 16);
  v67 = a1;
  v20(v13, a1, v10);
  v21 = sub_29E752088();
  v22 = sub_29E7546C8();
  v23 = os_log_type_enabled(v21, v22);
  v59 = ObjectType;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v58 = v15;
    v25 = v24;
    v57 = swift_slowAlloc();
    v69 = v57;
    *v25 = 136446466;
    nullsub_1();
    v26 = sub_29E755178();
    v28 = sub_29E6B9C90(v26, v27, &v69);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    sub_29E6BF3F4(&qword_2A18590A0, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v29 = sub_29E754FD8();
    v31 = v30;
    (*(v11 + 8))(v13, v10);
    v32 = sub_29E6B9C90(v29, v31, &v69);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Received request to open URL: %{public}s", v25, 0x16u);
    v33 = v57;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v33, -1, -1);
    v34 = v25;
    v15 = v58;
    MEMORY[0x29ED98410](v34, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v35 = *(v15 + 8);
  v35(v19, v14);
  v36 = *(sub_29E74EAA8() + 16);

  v37 = v68;
  if (v36 != 3)
  {
    goto LABEL_13;
  }

  v38 = sub_29E74EAA8();
  if (v38[2] < 2uLL)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v40 = v38[6];
  v39 = v38[7];

  if (v40 == sub_29E7541D8() && v39 == v41)
  {
  }

  else
  {
    v42 = sub_29E755028();

    if ((v42 & 1) == 0)
    {
LABEL_13:
      v47 = sub_29E74EA68();
      sub_29E6BE568(v47, v65, v64, v66);

      return;
    }
  }

  if (*(sub_29E74EAA8() + 16) < 3uLL)
  {
    goto LABEL_18;
  }

  v43 = v61;
  sub_29E74ED38();
  v44 = v43;

  v46 = v62;
  v45 = v63;
  if ((*(v62 + 48))(v44, 1, v63) == 1)
  {
    sub_29E6BF008(v44, &qword_2A1859098, MEMORY[0x29EDB9C08]);
    goto LABEL_13;
  }

  (*(v46 + 32))(v60, v44, v45);
  sub_29E752048();
  v48 = sub_29E752088();
  v49 = sub_29E7546C8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v69 = v51;
    *v50 = 136446210;
    nullsub_1();
    v52 = sub_29E755178();
    v54 = sub_29E6B9C90(v52, v53, &v69);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_29E5ED000, v48, v49, "[%{public}s] URL contains sufficient components to open breathing disturbances room", v50, 0xCu);
    sub_29E5FECBC(v51);
    MEMORY[0x29ED98410](v51, -1, -1);
    MEMORY[0x29ED98410](v50, -1, -1);
  }

  v35(v37, v14);
  v55 = v60;
  sub_29E6EF6DC(v60, v65);
  (*(v62 + 8))(v55, v63);
}

void sub_29E6BE568(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_29E754748();
  if (!v8)
  {
    goto LABEL_32;
  }

  v38 = v8;
  v9 = sub_29E7541D8();
  v11 = v10;
  if (v9 == sub_29E7541D8() && v11 == v12)
  {

    goto LABEL_16;
  }

  v14 = sub_29E755028();

  if (v14)
  {
LABEL_16:
    sub_29E6F5190(a2);
    goto LABEL_33;
  }

  v15 = sub_29E7541D8();
  v17 = v16;
  if (v15 == sub_29E7541D8() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_29E755028();

    if ((v20 & 1) == 0)
    {
      v21 = sub_29E7541D8();
      v23 = v22;
      if (v21 == sub_29E7541D8() && v23 == v24)
      {

LABEL_20:
        sub_29E6F030C(a2);
        goto LABEL_33;
      }

      v25 = sub_29E755028();

      if (v25)
      {
        goto LABEL_20;
      }

      v26 = sub_29E7541D8();
      v28 = v27;
      if (v26 == sub_29E7541D8() && v28 == v29)
      {

LABEL_25:
        v31 = sub_29E750FD8();
        sub_29E6F0720(a1, v31);

        v32 = v31;
        goto LABEL_34;
      }

      v30 = sub_29E755028();

      if (v30)
      {
        goto LABEL_25;
      }

      v33 = sub_29E7541D8();
      v35 = v34;
      if (v33 == sub_29E7541D8() && v35 == v36)
      {

LABEL_30:
        sub_29E6BF108(a2, a3);
        goto LABEL_33;
      }

      v37 = sub_29E755028();

      if (v37)
      {
        goto LABEL_30;
      }

LABEL_32:
      v38 = sub_29E750FD8();
      sub_29E6BE8B4(a1, v38, a3, a4);
      goto LABEL_33;
    }
  }

  sub_29E6EFEB4();
LABEL_33:
  v32 = v38;
LABEL_34:
}

uint64_t sub_29E6BE8B4(void *a1, void *a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_29E752098();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E750738();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[1] = a3;
  (*(v11 + 104))(v13, *MEMORY[0x29EDC1E10], v10);
  v45 = a2;
  v46 = a1;
  type metadata accessor for SleepRoomViewController(0);
  sub_29E6BF374();
  v14 = a3;
  v15 = sub_29E750858();
  v17 = v16;
  (*(v11 + 8))(v13, v10);

  v18 = [v17 navigationController];
  if (v18)
  {
    v19 = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = a1;
    *(v20 + 32) = (v15 & 1) == 0;
    *(v20 + 40) = a4;
    *(v20 + 48) = a2;
    v21 = v17;
    v22 = a1;
    a4;
    v23 = a2;
    sub_29E6F29F0(v22, v19, v21, sub_29E6BF3D8, v20);
  }

  else
  {
    v25 = v42;
    v26 = v41;
    sub_29E752058();
    v27 = v17;
    v28 = sub_29E752088();
    v29 = sub_29E7546A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v30 = 136315394;
      nullsub_1();
      v32 = sub_29E755178();
      v34 = sub_29E6B9C90(v32, v33, v47);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = v27;
      v36 = [v35 description];
      v37 = sub_29E7541D8();
      v39 = v38;

      v40 = sub_29E6B9C90(v37, v39, v47);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_29E5ED000, v28, v29, "[%s]: No navigation controller provided to open sleep room: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v31, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    else
    {
    }

    return (*(v26 + 8))(v44, v25);
  }
}

unint64_t sub_29E6BECD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E754EF8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29E6BED20(uint64_t a1)
{
  v2 = type metadata accessor for TestOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6BEDA4()
{
  v1 = [*(v0 + 16) popToRootViewControllerAnimated_];
}

uint64_t sub_29E6BEDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6BEE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6BEEAC(uint64_t a1)
{
  v3 = *(type metadata accessor for TestOptions(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v1 + 16);

  sub_29E6BCB0C(a1, v9, v5, (v1 + v4), v7, v8);
}

uint64_t sub_29E6BEF5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6BEF74(uint64_t a1, uint64_t a2)
{
  sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6BF008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6BF43C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6BF078()
{
  v1 = *(type metadata accessor for TestOptions(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29E6BD16C(v3, (v0 + v2), v4);
}

void sub_29E6BF108(uint64_t a1, void *a2)
{
  v4 = sub_29E750738();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = &type metadata for SleepPPTNavigator;
  v20[4] = sub_29E6BF374();
  v20[0] = a2;
  v8 = objc_opt_self();
  v9 = a2;
  v10 = [v8 sharedBehavior];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 features];

  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = [v12 sleepDetails];

  if (v13)
  {
    v14 = sub_29E601938(v20, &type metadata for SleepPPTNavigator);
    MEMORY[0x2A1C7C4A8](v14);
    *(&v19 - 2) = a1;
    type metadata accessor for SleepScoreRoomViewController(0);
    sub_29E6F3CAC(v7);
    sub_29E750858();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_29E750FD8();
    v18 = [v17 navigationController];

    if (v18)
    {
    }

    sub_29E6B93B4();
  }

  sub_29E5FECBC(v20);
}

unint64_t sub_29E6BF374()
{
  result = qword_2A18590A8;
  if (!qword_2A18590A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18590A8);
  }

  return result;
}

uint64_t sub_29E6BF3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6BF43C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6BF4D8(uint64_t a1)
{
  sub_29E6BF60C(319, &unk_2A18590D0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29E6BF60C(319, &qword_2A1858D30, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29E6BF43C(319, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6BF60C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_29E6BF66C(const char *a1)
{
  v3 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v8 = sub_29E752088();
  v9 = sub_29E7546C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_29E755178();
    v15 = sub_29E6B9C90(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29E5ED000, v8, v9, v17, v11, 0xCu);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v3;
}

uint64_t sub_29E6BF844()
{
  sub_29E6BF66C("[%{public}s] Plugin delegate is deallocated");

  return swift_deallocClassInstance();
}

id sub_29E6BF8A4(uint64_t a1)
{
  v47 = *v1;
  v3 = sub_29E74FEB8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v41 - v8;
  v10 = sub_29E752098();
  v49 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v13 = *(v4 + 16);
  v13(v9, a1, v3);
  v14 = sub_29E752088();
  v46 = sub_29E7546C8();
  v48 = v14;
  v15 = os_log_type_enabled(v14, v46);
  v44 = v3;
  v45 = v7;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v43 = a1;
    v17 = v16;
    v42 = swift_slowAlloc();
    v50 = v42;
    *v17 = 136446466;
    v18 = sub_29E755178();
    v20 = sub_29E6B9C90(v18, v19, &v50);
    v47 = v10;
    v21 = v3;
    v22 = v20;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v13(v7, v9, v21);
    v23 = sub_29E7541F8();
    v25 = v24;
    (*(v4 + 8))(v9, v21);
    v26 = sub_29E6B9C90(v23, v25, &v50);

    *(v17 + 14) = v26;
    v27 = v48;
    _os_log_impl(&dword_29E5ED000, v48, v46, "[%{public}s] Creating pipelines for context: %{public}s", v17, 0x16u);
    v28 = v42;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v28, -1, -1);
    v29 = v17;
    a1 = v43;
    MEMORY[0x29ED98410](v29, -1, -1);

    (*(v49 + 8))(v12, v47);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
    (*(v49 + 8))(v12, v10);
  }

  if ((sub_29E74FE88() & 1) == 0)
  {
    v30 = sub_29E74FE78();
    v31 = v30;
    v32 = sub_29E74FBE8();
    v33 = sub_29E74FBD8();

    if (v33)
    {

      return sub_29E6C0C78(a1);
    }

    if (v30)
    {
      [v31 type];
    }

    else
    {
      sub_29E6C0558();
      if (*(v35 + 16))
      {
        sub_29E6C1758(0, &qword_2A1A7D3F0, &qword_2A1A7D6B8, MEMORY[0x29EDC38F8], 1);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_29E762F30;
        v13(v45, a1, v44);
        sub_29E6C06D0(0);
        v38 = v37;
        swift_allocObject();
        v39 = sub_29E751F58();
        *(v36 + 56) = v38;
        v40 = sub_29E6C17B8(&qword_2A1A7C138, sub_29E6C06D0, MEMORY[0x29EDC1580]);
        result = v36;
        *(v36 + 64) = v40;
        *(v36 + 32) = v39;
        return result;
      }
    }
  }

  return MEMORY[0x29EDCA190];
}