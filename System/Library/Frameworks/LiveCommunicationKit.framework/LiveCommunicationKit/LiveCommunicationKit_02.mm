id sub_238B5B2A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_238B5B3F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A8, &qword_238B709C8);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v19;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_238B5B56C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A0, &qword_238B709C0);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v18 + 40);
        v24 = *(v18 + 48);
        v25 = *(v4 + 48) + v17;
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v19;
        *(v25 + 24) = v21;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v24;

        result = sub_238B3C90C(v23, v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_238B5B700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600D0, &qword_238B709D8);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v16);
      result = sub_238B6CEA4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_238B5B920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_238B6CAA4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_238B5BB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A8, &qword_238B709C8);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v21 = v18[1];
      v20 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v19 + 1);

      sub_238B6C8D4();
      sub_238B6C8D4();
      result = sub_238B6CEA4();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v19;
      *(v14 + 8) = v21;
      *(v14 + 16) = v20;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_238B5BDC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A0, &qword_238B709C0);
  result = sub_238B6CB64();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v34 = (v8 + 63) >> 6;
    v35 = v3;
    v11 = result + 56;
    v36 = result;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v17 = (*(v3 + 48) + 56 * (v14 | (v6 << 6)));
      v18 = *v17;
      v20 = v17[1];
      v19 = v17[2];
      v21 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      v24 = v17[6];
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v18 + 1);

      sub_238B3C90C(v23, v24);
      sub_238B6C8D4();
      sub_238B6C8D4();
      sub_238B6CE84();
      if (v24 >> 60 != 15)
      {
        sub_238B6C4E4();
      }

      result = sub_238B6CEA4();
      v5 = v36;
      v25 = -1 << *(v36 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v36 + 48) + 56 * v12;
      *v13 = v18;
      *(v13 + 8) = v20;
      *(v13 + 16) = v19;
      *(v13 + 24) = v21;
      *(v13 + 32) = v22;
      *(v13 + 40) = v23;
      *(v13 + 48) = v24;
      ++*(v36 + 16);
      v3 = v35;
      v10 = v37;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v34)
      {
        v32 = v5;

        v2 = v33;
        goto LABEL_28;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_28:
    *v2 = v32;
  }

  return result;
}

uint64_t sub_238B5C0B0(__int128 *a1, uint64_t a2)
{
  sub_238B6CEA4();
  v17 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v18 = v9;
LABEL_12:
    v13 = (*(v17 + 48) + 56 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v16 = *(v13 + 5);
    v15 = *(v13 + 6);
    sub_238B6CE64();
    MEMORY[0x23EE72A40](v14 + 1);

    sub_238B3C90C(v16, v15);
    sub_238B6C8D4();
    sub_238B6C8D4();
    sub_238B6CE84();
    if (v15 >> 60 != 15)
    {
      sub_238B6C4E4();
    }

    v6 &= v6 - 1;
    v11 = sub_238B6CEA4();

    result = sub_238B3C9AC(v16, v15);
    v9 = v11 ^ v18;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x23EE72A40](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v18 = v9;
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

BOOL _s20LiveCommunicationKit12ConversationC6UpdateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v48 = *(a1 + 64);
  v49 = *(a1 + 56);
  v10 = *(a1 + 80);
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v18 = *(a2 + 48);
  v17 = *(a2 + 56);
  v20 = *(a2 + 64);
  v19 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v4)
  {
    v62[0] = *a1;
    v62[1] = v2;
    v62[2] = v4;
    v62[3] = v5;
    v62[4] = v7;
    v63 = v6;
    v64 = v8;
    v54 = v7;
    if (v14)
    {
      v46 = v20;
      v47 = v17;
      v42 = v19;
      v43 = v9;
      v44 = v21;
      v45 = v10;
      LOBYTE(v59[0]) = v11;
      v59[1] = v12;
      v59[2] = v14;
      v59[3] = v13;
      v59[4] = v15;
      v60 = v16;
      v61 = v18;
      v40 = v8;
      v41 = v5;
      v22 = v5;
      v23 = v15;
      v24 = v7;
      v25 = v6;
      v55 = v6;
      v26 = v2;
      v27 = v3;
      sub_238B3EF54(v3, v2, v4, v22, v24, v25, v8);
      sub_238B3EF54(v11, v12, v14, v13, v23, v16, v18);
      sub_238B3EF54(v27, v26, v4, v41, v54, v55, v40);
      v57 = _s20LiveCommunicationKit12ConversationC6MemberV2eeoiySbAE_AEtFZ_0(v62, v59);
      v28 = v60;
      v29 = v61;

      sub_238B3C9AC(v28, v29);
      v30 = v63;
      v31 = v64;

      sub_238B3C9AC(v30, v31);
      sub_238B3F8F8(v27, v26, v4, v41, v54, v55, v40);
      if (!v57)
      {
        return 0;
      }

      v32 = v49;
      if (v49)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    v36 = v11;
    v56 = v15;
    v58 = v18;
    v34 = v8;
    v50 = v2;
    v51 = v3;
    sub_238B3EF54(v3, v2, v4, v5, v54, v6, v8);
    v52 = v36;
    v53 = v13;
    sub_238B3EF54(v36, v12, 0, v13, v56, v16, v18);
    v35 = v50;
    sub_238B3EF54(v51, v50, v4, v5, v54, v6, v34);
    v7 = v54;

    sub_238B3C9AC(v6, v34);
LABEL_11:
    sub_238B3F8F8(v51, v35, v4, v5, v7, v6, v34);
    sub_238B3F8F8(v52, v12, v14, v53, v56, v16, v58);
    return 0;
  }

  v52 = *a2;
  v53 = *(a2 + 24);
  v56 = *(a2 + 32);
  v58 = *(a2 + 48);
  v46 = *(a2 + 64);
  v47 = *(a2 + 56);
  v42 = *(a2 + 72);
  v43 = *(a1 + 72);
  v44 = *(a2 + 80);
  v45 = *(a1 + 80);
  v34 = *(a1 + 48);
  v35 = *(a1 + 8);
  v51 = *a1;
  sub_238B3EF54(v3, v2, 0, v5, v7, v6, v8);
  if (v14)
  {
    sub_238B3EF54(v52, v12, v14, v53, v56, v16, v18);
    goto LABEL_11;
  }

  sub_238B3EF54(v52, v12, 0, v53, v56, v16, v18);
  sub_238B3F8F8(v51, v35, 0, v5, v7, v6, v34);
  v32 = v49;
  if (v49)
  {
LABEL_5:
    if (!v47)
    {
      return 0;
    }

    v33 = sub_238B57AEC(v32, v47);

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (v47)
  {
    return 0;
  }

LABEL_15:
  if (v48)
  {
    if (!v46)
    {
      return 0;
    }

    v38 = sub_238B57AEC(v48, v46);

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  if ((v45 & 1) == 0)
  {
    v39 = v44;
    if (v43 != v42)
    {
      v39 = 1;
    }

    return (v39 & 1) == 0;
  }

  return (v44 & 1) != 0;
}

uint64_t sub_238B5C664(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HandleType(0);
  v4 = v3;
  v5 = sub_238B5D1A0(&qword_27DF600C8, type metadata accessor for HandleType, &unk_238B6DC14);
  result = MEMORY[0x23EE725F0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_238B589FC(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_238B5C710(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_238B6CB24())
  {
    v4 = sub_238B5D154();
    v5 = sub_238B5D1A0(&qword_27DF600B8, sub_238B5D154, MEMORY[0x277D85378]);
    result = MEMORY[0x23EE725F0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE72780](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_238B58AF4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_238B6CB24();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_238B5C870(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_238B3C6B8();
  result = MEMORY[0x23EE725F0](v2, &type metadata for Handle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_238B5D0F8(v9, v7);
      sub_238B58D0C(v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_238B5C918(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_238B5CFF4();
  result = MEMORY[0x23EE725F0](v2, &type metadata for Conversation.Member, v3);
  v10 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v11[0] = *v5;
      v11[1] = v6;
      v11[2] = *(v5 + 32);
      v12 = *(v5 + 48);
      sub_238B5D048(v11, v9);
      sub_238B58F14(v9, v11);
      v7 = v9[5];
      v8 = v9[6];

      sub_238B3C9AC(v7, v8);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_238B5C9E0()
{
  result = qword_27DF60030;
  if (!qword_27DF60030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60030);
  }

  return result;
}

unint64_t sub_238B5CA34()
{
  result = qword_27DF60038;
  if (!qword_27DF60038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60038);
  }

  return result;
}

unint64_t sub_238B5CA88()
{
  result = qword_27DF60050;
  if (!qword_27DF60050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60050);
  }

  return result;
}

unint64_t sub_238B5CADC()
{
  result = qword_27DF60060;
  if (!qword_27DF60060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60060);
  }

  return result;
}

uint64_t sub_238B5CB30(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF60040, &qword_238B706D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B5CBA8()
{
  result = qword_27DF60070;
  if (!qword_27DF60070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60070);
  }

  return result;
}

unint64_t sub_238B5CC00()
{
  result = qword_27DF60078;
  if (!qword_27DF60078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60078);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LiveCommunicationKit12ConversationC6MemberVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_238B5CC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_238B5CCEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_238B5CD7C()
{
  result = qword_27DF60080;
  if (!qword_27DF60080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60080);
  }

  return result;
}

unint64_t sub_238B5CDD4()
{
  result = qword_27DF60088;
  if (!qword_27DF60088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60088);
  }

  return result;
}

unint64_t sub_238B5CE2C()
{
  result = qword_27DF60090;
  if (!qword_27DF60090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60090);
  }

  return result;
}

uint64_t sub_238B5CE80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000238B73FB0 == a2;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000238B73FD0 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000238B73FF0 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 3;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_238B5CFF4()
{
  result = qword_27DF60098;
  if (!qword_27DF60098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60098);
  }

  return result;
}

unint64_t sub_238B5D154()
{
  result = qword_27DF600B0;
  if (!qword_27DF600B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF600B0);
  }

  return result;
}

uint64_t sub_238B5D1A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

LiveCommunicationKit::PlayToneAction::Tone_optional __swiftcall PlayToneAction.Tone.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238B5D228()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  return sub_238B6CEA4();
}

uint64_t sub_238B5D2A0()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  return sub_238B6CEA4();
}

uint64_t PlayToneAction.digits.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits);

  return v5;
}

uint64_t PlayToneAction.__allocating_init(conversationUUID:digits:tone:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = swift_allocObject();
  PlayToneAction.init(conversationUUID:digits:tone:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PlayToneAction.init(conversationUUID:digits:tone:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v31 = a2;
  v32 = a1;
  v9 = sub_238B6C534();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238B6C574();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = *a4;
  v33 = *(v12 + 16);
  v33(&v30 - v15, a1, v11);
  v18 = objc_allocWithZone(MEMORY[0x277CBAFE0]);
  v19 = sub_238B6C544();
  v20 = a3;
  v21 = sub_238B6C844();
  v22 = [v18 initWithCallUUID:v19 digits:v21 type:v17 + 1];

  v23 = *(v12 + 8);
  v23(v16, v11);
  v24 = (v5 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits);
  *v24 = v31;
  v24[1] = v20;
  *(v5 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_tone) = v17;
  v25 = v34;
  v26 = v32;
  v33(v34, v32, v11);
  v27 = v35;
  sub_238B6C504();
  v23(v26, v11);
  *(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v22;
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v25, v11);
  v28 = (v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v28 = 0;
  v28[1] = 0;
  (*(v36 + 32))(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v27, v37);
  return v5;
}

uint64_t sub_238B5D68C(void *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_238B6C574();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 digits];
  v11 = sub_238B6C864();
  v13 = v12;

  v14 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits);
  *v14 = v11;
  v14[1] = v13;
  v15 = [a1 type];
  v16 = v15 - 1;
  if ((v15 - 1) >= 3)
  {
    v31 = v4;
    if (qword_27DF5F6A0 != -1)
    {
      swift_once();
    }

    v17 = sub_238B6C6A4();
    __swift_project_value_buffer(v17, qword_27DF60710);
    v18 = a1;
    v19 = sub_238B6C684();
    v20 = sub_238B6CA44();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v21 = 136315138;
      v34 = [v18 type];
      v22 = sub_238B6C8B4();
      v25 = sub_238B33240(v22, v23, &v35, v24);

      *(v21 + 4) = v25;
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x23EE73110](v26, -1, -1);
      MEMORY[0x23EE73110](v21, -1, -1);
    }

    v16 = 0;
    v4 = v31;
  }

  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_tone) = v16;
  v27 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v9, v32);
  v28 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v28 = 0;
  v28[1] = 0;
  (*(v33 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v6, v4);
  return v2;
}

uint64_t PlayToneAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t PlayToneAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_238B5DC70()
{
  result = qword_27DF600D8;
  if (!qword_27DF600D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF600D8);
  }

  return result;
}

uint64_t type metadata accessor for PlayToneAction(uint64_t a1)
{
  result = qword_27DF600E0;
  if (!qword_27DF600E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238B5DDB8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v6 = a1;

  v4(v5);
}

void sub_238B5DEA0(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = *&a1[*a5];
  v7 = a4;
  v8 = a1;

  v6(v7);
}

id sub_238B5DF20(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidReset];
  *v2 = nullsub_1;
  v2[1] = 0;
  v3 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidBegin];
  *v3 = nullsub_1;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidActivateAudioSession];
  *v4 = nullsub_1;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidDeactivateAudioSession];
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderTimedOutPerformingAction];
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAction];
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformStartCallAction];
  *v8 = nullsub_1;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAnswerCallAction];
  *v9 = nullsub_1;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformEndCallAction];
  *v10 = nullsub_1;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetHeldCallAction];
  *v11 = nullsub_1;
  v11[1] = 0;
  v12 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetMutedCallAction];
  *v12 = nullsub_1;
  v12[1] = 0;
  v13 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetGroupCallAction];
  *v13 = nullsub_1;
  v13[1] = 0;
  v14 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformPlayDTMFCallAction];
  *v14 = nullsub_1;
  v14[1] = 0;
  v15 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformShareIdentityCallAction];
  *v15 = nullsub_1;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetTranslatingCallAction];
  *v16 = nullsub_1;
  v16[1] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CallProviderWrapper();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_238B5E158(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CallProviderWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t EndConversationAction.__allocating_init(conversationUUID:)(char *a1)
{
  v2 = swift_allocObject();
  EndConversationAction.init(conversationUUID:)(a1);
  return v2;
}

uint64_t EndConversationAction.init(conversationUUID:)(char *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238B6C574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v11 = objc_allocWithZone(MEMORY[0x277CBAFC0]);
  v12 = sub_238B6C544();
  v13 = [v11 initWithCallUUID_];

  v14 = *(v7 + 8);
  v14(v9, v6);
  v10(v9, a1, v6);
  v15 = v19;
  sub_238B6C504();
  v14(a1, v6);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v13;
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v9, v6);
  v16 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v16 = 0;
  v16[1] = 0;
  (*(v20 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v15, v21);
  return v2;
}

void EndConversationAction.fulfill(dateEnded:)(uint64_t a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v7 = sub_238B6C6A4();
  __swift_project_value_buffer(v7, qword_27DF60710);
  (*(v4 + 16))(v6, a1, v3);

  v8 = sub_238B6C684();
  v9 = sub_238B6CA44();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24[1] = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24[2] = v1;
    v25 = v12;
    *v11 = 136315394;

    v13 = sub_238B6C8B4();
    v16 = sub_238B33240(v13, v14, &v25, v15);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_238B484E0();
    v17 = sub_238B6CDD4();
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v21 = sub_238B33240(v17, v19, &v25, v20);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_238B2C000, v8, v9, "Fulfilling action %s with dateEnded %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v12, -1, -1);
    MEMORY[0x23EE73110](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClassUnconditional();
  v23 = sub_238B6C4F4();
  [v22 fulfillWithDateEnded_];
}

uint64_t EndConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t EndConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndConversationAction(uint64_t a1)
{
  result = qword_27DF601D0;
  if (!qword_27DF601D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UnmergeConversationAction.__allocating_init(conversationUUID:)(char *a1)
{
  v2 = swift_allocObject();
  UnmergeConversationAction.init(conversationUUID:)(a1);
  return v2;
}

uint64_t UnmergeConversationAction.init(conversationUUID:)(char *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = *(v10 + 16);
  v25 = a1;
  v16(&v25 - v14, a1, v9);
  (*(v10 + 56))(v8, 1, 1, v9);
  v17 = sub_238B6C544();
  v18 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v18 = sub_238B6C544();
    (*(v10 + 8))(v8, v9);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CBAFF8]) initWithCallUUID:v17 callUUIDToGroupWith:v18];

  v20 = *(v10 + 8);
  v20(v15, v9);
  v21 = v25;
  v16(v13, v25, v9);
  v22 = v26;
  sub_238B6C504();
  v20(v21, v9);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v19;
  (*(v10 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v13, v9);
  v23 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v23 = 0;
  v23[1] = 0;
  (*(v27 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v22, v28);
  return v2;
}

uint64_t UnmergeConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t UnmergeConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnmergeConversationAction(uint64_t a1)
{
  result = qword_27DF601E0;
  if (!qword_27DF601E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B5F184()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 40) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60218, &qword_238B70C68);
  swift_allocObject();
  *(v0 + 16) = sub_238B6C7C4();
  os_unfair_lock_lock((v0 + 32));
  sub_238B60230(v0 + 40, v3);
  os_unfair_lock_unlock((v0 + 32));
  os_unfair_lock_lock((v0 + 32));
  sub_238B5FB10(v0 + 40);
  sub_238B60230(v3, v0 + 40);
  os_unfair_lock_unlock((v0 + 32));
  sub_238B5FB10(v3);

  sub_238B6C784();

  v1 = swift_allocObject();
  *(v1 + 16) = &unk_238B70C78;
  *(v1 + 24) = v0;
  sub_238B603EC();

  sub_238B6C774();

  return v0;
}

void sub_238B5F300()
{
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v0 = sub_238B6C6A4();
  __swift_project_value_buffer(v0, qword_27DF60710);
  oslog = sub_238B6C684();
  v1 = sub_238B6CA44();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_238B33240(0xD000000000000034, 0x8000000238B74490, &v6, v4);
    _os_log_impl(&dword_238B2C000, oslog, v1, "Server disconnected from %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x23EE73110](v3, -1, -1);
    MEMORY[0x23EE73110](v2, -1, -1);
  }
}

uint64_t sub_238B5F448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238B37F2C;

  return sub_238B60440();
}

uint64_t sub_238B5F4EC(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238B3B780;

  return v6(v3);
}

uint64_t sub_238B5F5E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *(type metadata accessor for ConversationHistoryManager.RecentConversation(0) - 8);
  v2[6] = swift_task_alloc();
  v3 = sub_238B6C574();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B5F6F8, 0, 0);
}

uint64_t sub_238B5F6F8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[8];
    v5 = v0[5];
    v18 = MEMORY[0x277D84F90];
    sub_238B5FBD8(0, v2, 0);
    v3 = v18;
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    do
    {
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      sub_238B5FBF8(v6, v9);
      (*(v4 + 16))(v7, v9, v8);
      sub_238B5FC5C(v9);
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_238B5FBD8((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[9];
      v13 = v0[7];
      *(v18 + 16) = v11 + 1;
      (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v17;
      --v2;
    }

    while (v2);
  }

  v0[10] = v3;
  v0[2] = v3;
  v14 = swift_task_alloc();
  v0[11] = v14;
  v15 = sub_238B5FCB8();
  *v14 = v0;
  v14[1] = sub_238B5F8E0;

  return MEMORY[0x282149828](v0 + 2, &type metadata for ReadMessage, v15);
}

uint64_t sub_238B5F8E0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238B5FA34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_238B5FA34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238B5FAAC()
{

  sub_238B5FB10(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_238B5FB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60200, &qword_238B70C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_238B5FB78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238B5FD0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238B5FB98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238B5FE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238B5FBB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238B5FF30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_238B5FBD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238B60058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_238B5FBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B5FC5C(uint64_t a1)
{
  v2 = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238B5FCB8()
{
  result = qword_27DF60208;
  if (!qword_27DF60208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60208);
  }

  return result;
}

char *sub_238B5FD0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60238, &qword_238B70CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_238B5FE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60230, &qword_238B70CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_238B5FF30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60228, &qword_238B70C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_238B60058(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60210, &qword_238B70C60);
  v10 = *(sub_238B6C574() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_238B6C574() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_238B60230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60200, &qword_238B70C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B602A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238B37F2C;

  return sub_238B5F448();
}

uint64_t sub_238B60338(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238B3B780;

  return sub_238B5F4EC(a1, v4);
}

unint64_t sub_238B603EC()
{
  result = qword_27DF60220;
  if (!qword_27DF60220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60220);
  }

  return result;
}

uint64_t sub_238B60460()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_280B61330);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Handling incoming ConversationHistoryChangedMessage message", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[12];

  os_unfair_lock_lock(v5 + 8);
  sub_238B60230(&v5[10], (v0 + 2));
  os_unfair_lock_unlock(v5 + 8);
  if (v0[5])
  {
    sub_238B60600((v0 + 2), (v0 + 7));
    sub_238B5FB10((v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v6 = off_284B6C800;
    type metadata accessor for ConversationHistoryManager();
    v6();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  else
  {
    sub_238B5FB10((v0 + 2));
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_238B60600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for FetchMessage(uint64_t a1)
{
  result = qword_27DF60248;
  if (!qword_27DF60248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238B606E8(uint64_t a1)
{
  sub_238B60754(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_238B60754(uint64_t a1)
{
  if (!qword_27DF60258)
  {
    type metadata accessor for ConversationHistoryManager.RecentConversation(255);
    v1 = sub_238B6C614();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF60258);
    }
  }
}

uint64_t sub_238B60854()
{
  v0 = sub_238B6C6B4();
  __swift_allocate_value_buffer(v0, qword_27DF60790);
  v1 = __swift_project_value_buffer(v0, qword_27DF60790);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x8000000238B744D0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_238B608F8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60370, &qword_238B71238);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B62004();
  sub_238B6CEC4();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602A8, &qword_238B70E90);
  sub_238B616C8(&qword_27DF602B8, &qword_27DF602C0, &protocol conformance descriptor for ConversationHistoryManager.RecentConversation, MEMORY[0x277D83948]);
  sub_238B6CDB4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_238B60A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602F8, &qword_238B70F18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  Message = type metadata accessor for FetchMessage(0);
  MEMORY[0x28223BE20](Message - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61C14();
  v12 = v19;
  sub_238B6CEB4();
  if (!v12)
  {
    v13 = v17;
    sub_238B61CCC(&qword_27DF60308, &qword_27DF60240, &qword_238B70CE8, MEMORY[0x277CC9B50]);
    sub_238B6CD44();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_238B61C68(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_238B60D10(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602E8, &qword_238B70F10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61ADC();
  sub_238B6CEC4();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602D8, &qword_238B70F08);
  sub_238B61B30(&qword_27DF602F0, &qword_27DF5F9C8, MEMORY[0x277CC95F8], MEMORY[0x277D83948]);
  sub_238B6CDB4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_238B60EA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DF5F6B8 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6B4();
  v3 = __swift_project_value_buffer(v2, qword_27DF60790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_238B60F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000238B74510 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_238B6CDF4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_238B60FFC(uint64_t a1)
{
  v2 = sub_238B62004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B61038(uint64_t a1)
{
  v2 = sub_238B62004();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_238B61074@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_238B61764(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_238B610D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B61168(uint64_t a1)
{
  v2 = sub_238B61C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B611A4(uint64_t a1)
{
  v2 = sub_238B61C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B611F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60310, &qword_238B70F20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61C14();
  sub_238B6CEC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  sub_238B61CCC(&qword_27DF60318, &qword_27DF60240, &qword_238B70CE8, MEMORY[0x277CC9B48]);
  sub_238B6CDB4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_238B61394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000238B744F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_238B6CDF4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_238B61428(uint64_t a1)
{
  v2 = sub_238B61ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B61464(uint64_t a1)
{
  v2 = sub_238B61ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_238B614A0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_238B61920(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_238B614EC()
{
  result = qword_27DF60280;
  if (!qword_27DF60280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60280);
  }

  return result;
}

unint64_t sub_238B61544()
{
  result = qword_27DF60288;
  if (!qword_27DF60288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60288);
  }

  return result;
}

uint64_t sub_238B616C8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF602A8, &qword_238B70E90);
    sub_238B61BCC(a2, type metadata accessor for ConversationHistoryManager.RecentConversation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_238B61764(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60360, &qword_238B71230);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B62004();
  sub_238B6CEB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602A8, &qword_238B70E90);
    sub_238B616C8(&qword_27DF602A0, &qword_27DF602B0, &protocol conformance descriptor for ConversationHistoryManager.RecentConversation, MEMORY[0x277D83978]);
    sub_238B6CD44();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

void *sub_238B61920(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602C8, &qword_238B70F00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61ADC();
  sub_238B6CEB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602D8, &qword_238B70F08);
    sub_238B61B30(&qword_27DF602E0, &qword_27DF5FA00, MEMORY[0x277CC9618], MEMORY[0x277D83978]);
    sub_238B6CD44();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_238B61ADC()
{
  result = qword_27DF602D0;
  if (!qword_27DF602D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF602D0);
  }

  return result;
}

uint64_t sub_238B61B30(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF602D8, &qword_238B70F08);
    sub_238B61BCC(a2, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238B61BCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238B61C14()
{
  result = qword_27DF60300;
  if (!qword_27DF60300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60300);
  }

  return result;
}

uint64_t sub_238B61C68(uint64_t a1, uint64_t a2)
{
  Message = type metadata accessor for FetchMessage(0);
  (*(*(Message - 8) + 32))(a2, a1, Message);
  return a2;
}

uint64_t sub_238B61CCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B61D48()
{
  result = qword_27DF60320;
  if (!qword_27DF60320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60320);
  }

  return result;
}

unint64_t sub_238B61DA0()
{
  result = qword_27DF60328;
  if (!qword_27DF60328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60328);
  }

  return result;
}

unint64_t sub_238B61DF8()
{
  result = qword_27DF60330;
  if (!qword_27DF60330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60330);
  }

  return result;
}

unint64_t sub_238B61E50()
{
  result = qword_27DF60338;
  if (!qword_27DF60338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60338);
  }

  return result;
}

unint64_t sub_238B61EA8()
{
  result = qword_27DF60340;
  if (!qword_27DF60340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60340);
  }

  return result;
}

unint64_t sub_238B61F00()
{
  result = qword_27DF60348;
  if (!qword_27DF60348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60348);
  }

  return result;
}

unint64_t sub_238B61F58()
{
  result = qword_27DF60350;
  if (!qword_27DF60350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60350);
  }

  return result;
}

unint64_t sub_238B61FB0()
{
  result = qword_27DF60358;
  if (!qword_27DF60358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60358);
  }

  return result;
}

unint64_t sub_238B62004()
{
  result = qword_27DF60368;
  if (!qword_27DF60368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60368);
  }

  return result;
}

unint64_t sub_238B6206C()
{
  result = qword_27DF60378;
  if (!qword_27DF60378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60378);
  }

  return result;
}

unint64_t sub_238B620C4()
{
  result = qword_27DF60380;
  if (!qword_27DF60380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60380);
  }

  return result;
}

unint64_t sub_238B6211C()
{
  result = qword_27DF60388;
  if (!qword_27DF60388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60388);
  }

  return result;
}

uint64_t ConversationHistoryService.__allocating_init(server:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ConversationHistoryService.init(server:)(a1);
  return v2;
}

void *ConversationHistoryService.init(server:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_280B61330);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238B2C000, v6, v7, "Initializing conversation history service", v8, 2u);
    MEMORY[0x23EE73110](v8, -1, -1);
  }

  *(swift_allocObject() + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60390, &qword_238B71350);
  swift_allocObject();
  v2[2] = sub_238B6C6F4();
  sub_238B43D04(a1, (v2 + 3));
  return v2;
}

Swift::Void __swiftcall ConversationHistoryService.start()()
{
  v1 = v0;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_280B61330);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238B2C000, v3, v4, "Starting conversation history service", v5, 2u);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  type metadata accessor for FetchMessage(0);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_238B71360;
  *(v6 + 24) = v1;
  sub_238B638A4();

  sub_238B6C724();

  sub_238B5FCB8();

  sub_238B6C744();

  sub_238B6C754();
}

uint64_t sub_238B62580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B62618;

  return sub_238B62718(a1);
}

uint64_t sub_238B62618(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_238B62718(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for FetchMessage(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B627A8, 0, 0);
}

uint64_t sub_238B627A8()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_280B61330);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Handling incoming FetchMessage message", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[7];

  sub_238B64254(v5, &qword_27DF603A8, &unk_238B71460);
  sub_238B60600(v0[8] + 24, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603A8, &unk_238B71460);
  sub_238B6C6D4();
  v11 = (*(v7 + 8) + **(v7 + 8));
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_238B62A2C;
  v9 = v0[9];

  return v11(v9, v6, v7);
}

uint64_t sub_238B62A2C(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[9];
  if (v1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = sub_238B62C68;
  }

  else
  {
    v4[12] = a1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
    (*(*(v8 - 8) + 8))(v5, v8);
    v7 = sub_238B62BF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_238B62BF4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_238B62C68()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238B62CD4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_238B62DCC;

  return v7(a2);
}

uint64_t sub_238B62DCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_238B62EDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B37F2C;

  return sub_238B62F74(a1);
}

uint64_t sub_238B62F74(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_238B62F94, 0, 0);
}

uint64_t sub_238B62F94()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_280B61330);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Handling incoming ReadMessage message", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[8];

  sub_238B64254(v5, &qword_27DF603A0, &qword_238B71450);
  sub_238B60600(v0[9] + 24, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603A0, &qword_238B71450);
  sub_238B6C6D4();
  v8 = v0[7];
  v0[10] = v8;
  v11 = (*(v7 + 16) + **(v7 + 16));
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_238B63210;

  return v11(v8, v6, v7);
}

uint64_t sub_238B63210()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_238B63390;
  }

  else
  {

    v2 = sub_238B6332C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238B6332C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238B63390()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall ConversationHistoryService.notifyClientsOfChange()()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v0 = sub_238B6C6A4();
  __swift_project_value_buffer(v0, qword_280B61330);
  v1 = sub_238B6C684();
  v2 = sub_238B6CA44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238B2C000, v1, v2, "Notifying clients of change", v3, 2u);
    MEMORY[0x23EE73110](v3, -1, -1);
  }

  sub_238B6C764();
}

void sub_238B63504()
{
  sub_238B603EC();
  sub_238B6C6E4();
  if (v0)
  {
    if (qword_280B60640 != -1)
    {
      swift_once();
    }

    v1 = sub_238B6C6A4();
    __swift_project_value_buffer(v1, qword_280B61330);
    v2 = v0;
    v3 = sub_238B6C684();
    v4 = sub_238B6CA34();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_238B2C000, v3, v4, "Error notifying clients of conversation history change %@", v5, 0xCu);
      sub_238B42A88(v6);
      MEMORY[0x23EE73110](v6, -1, -1);
      MEMORY[0x23EE73110](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ConversationHistoryService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ConversationHistoryService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_238B63744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B64358;

  return sub_238B62580(a1);
}

uint64_t sub_238B637DC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238B3B780;

  return sub_238B62CD4(a1, a2, v6);
}

unint64_t sub_238B638A4()
{
  result = qword_27DF60398;
  if (!qword_27DF60398)
  {
    type metadata accessor for FetchMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60398);
  }

  return result;
}

uint64_t sub_238B638FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B3B780;

  return sub_238B62EDC(a1);
}

uint64_t dispatch thunk of ConversationHistoryServer.recentConversations(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238B63ABC;

  return v9(a1, a2, a3);
}

uint64_t sub_238B63ABC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ConversationHistoryServer.markAsRead(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_238B37F2C;

  return v9(a1, a2, a3);
}

uint64_t sub_238B63D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603B0, &unk_238B71470);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  sub_238B6C714();
  if (v39 == 2 || (v39 & 1) == 0)
  {
    goto LABEL_22;
  }

  v9 = sub_238B6C704();
  v11 = v10;
  v12 = _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0();
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v13)
  {
LABEL_9:

    goto LABEL_22;
  }

  if (v9 == v12 && v11 == v13)
  {

LABEL_12:
    if (qword_280B60640 != -1)
    {
      swift_once();
    }

    v15 = sub_238B6C6A4();
    __swift_project_value_buffer(v15, qword_280B61330);
    (*(v3 + 16))(v8, a1, v2);
    v16 = sub_238B6C684();
    v17 = sub_238B6CA44();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      v20 = sub_238B6C704();
      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x6C646E7562206F6ELL;
      }

      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xEC00000044492065;
      }

      (*(v3 + 8))(v8, v2);
      v25 = sub_238B33240(v22, v23, &v39, v24);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_238B2C000, v16, v17, "Accepting incoming XPC connection request %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x23EE73110](v19, -1, -1);
      MEMORY[0x23EE73110](v18, -1, -1);

      return 1;
    }

    else
    {

      (*(v3 + 8))(v8, v2);
      return 1;
    }
  }

  v14 = sub_238B6CDF4();

  if (v14)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v27 = sub_238B6C6A4();
  __swift_project_value_buffer(v27, qword_280B61330);
  (*(v3 + 16))(v6, a1, v2);
  v28 = sub_238B6C684();
  v29 = sub_238B6CA44();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 136315138;
    v32 = sub_238B6C704();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0x6C646E7562206F6ELL;
    }

    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xEC00000044492065;
    }

    (*(v3 + 8))(v6, v2);
    v37 = sub_238B33240(v34, v35, &v39, v36);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_238B2C000, v28, v29, "Rejecting connection from unentitled process %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x23EE73110](v31, -1, -1);
    MEMORY[0x23EE73110](v30, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

id sub_238B64254(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_238B6C6C4();
  if (!v7)
  {
    if (!v9)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:

LABEL_8:
    sub_238B45EE4();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  if (v5 == result && v7 == v9)
  {
  }

  v11 = sub_238B6CDF4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_238B6435C(uint64_t a1)
{
  v1 = type metadata accessor for ConversationHistoryManager();
  v2 = swift_allocObject();
  type metadata accessor for ConversationHistoryClient();
  swift_allocObject();
  v3 = sub_238B5F184();
  *(v2 + 16) = v3;
  v5[3] = v1;
  v5[4] = &off_284B6C7F8;
  v5[0] = v2;

  os_unfair_lock_lock(v3 + 8);
  sub_238B5FB10(&v3[10]);
  sub_238B60230(v5, &v3[10]);
  os_unfair_lock_unlock(v3 + 8);
  result = sub_238B5FB10(v5);
  qword_27DF603B8 = v2;
  return result;
}

uint64_t static ConversationHistoryManager.sharedInstance.getter()
{
  if (qword_27DF5F6C0 != -1)
  {
    swift_once();
  }
}

uint64_t ConversationHistoryManager.recentConversations(matching:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for FetchMessage(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B64500, 0, 0);
}

uint64_t sub_238B64500()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = sub_238B681A4(&qword_27DF60398, type metadata accessor for FetchMessage, &unk_238B70E98);
  *v4 = v0;
  v4[1] = sub_238B64634;
  v7 = v0[5];
  v6 = v0[6];

  return MEMORY[0x282149820](v0 + 2, v6, v7, v5);
}

uint64_t sub_238B64634()
{
  v2 = *(*v1 + 48);
  *(*v1 + 64) = v0;

  sub_238B64CD0(v2, type metadata accessor for FetchMessage);
  if (v0)
  {
    v3 = sub_238B647E4;
  }

  else
  {
    v3 = sub_238B64778;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238B64778()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238B647E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConversationHistoryManager.markConversationsAsRead(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238B64868, 0, 0);
}

uint64_t sub_238B64868()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_238B473CC;
  v2 = *(v0 + 16);

  return sub_238B5F5E0(v2);
}

uint64_t ConversationHistoryManager.markConversationAsRead(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238B64924, 0, 0);
}

uint64_t sub_238B64924()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603C0, &qword_238B714B0);
  v2 = *(*(type metadata accessor for ConversationHistoryManager.RecentConversation(0) - 8) + 80);
  *(v0 + 56) = v2;
  v3 = (v2 + 32) & ~v2;
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_238B71480;
  sub_238B5FBF8(v1, v4 + v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_238B64A68;

  return sub_238B5F5E0(v4);
}

uint64_t sub_238B64A68()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238B64BE4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = (*(v2 + 56) + 32) & ~*(v2 + 56);
    swift_setDeallocating();
    sub_238B64CD0(v3 + v4, type metadata accessor for ConversationHistoryManager.RecentConversation);
    swift_deallocClassInstance();
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_238B64BE4()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 56) + 32) & ~*(v0 + 56);
  swift_setDeallocating();
  sub_238B64CD0(v1 + v2, type metadata accessor for ConversationHistoryManager.RecentConversation);
  swift_deallocClassInstance();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for ConversationHistoryManager.RecentConversation(uint64_t a1)
{
  result = qword_27DF60500;
  if (!qword_27DF60500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B64CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConversationHistoryManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_238B64D9C(uint64_t a1)
{
  v2 = sub_238B65778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B64DD8(uint64_t a1)
{
  v2 = sub_238B65778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B64E14(uint64_t a1)
{
  v2 = sub_238B65724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B64E50(uint64_t a1)
{
  v2 = sub_238B65724();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_238B64E8C()
{
  v1 = *v0;
  v2 = 0x657463656E6E6F63;
  v3 = 0xD000000000000011;
  v4 = 0x656C6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64657373696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238B64F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238B68EB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238B64F5C(uint64_t a1)
{
  v2 = sub_238B6567C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B64F98(uint64_t a1)
{
  v2 = sub_238B6567C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B64FD4(uint64_t a1)
{
  v2 = sub_238B65820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B65010(uint64_t a1)
{
  v2 = sub_238B65820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B6504C(uint64_t a1)
{
  v2 = sub_238B657CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B65088(uint64_t a1)
{
  v2 = sub_238B657CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B650C4(uint64_t a1)
{
  v2 = sub_238B656D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B65100(uint64_t a1)
{
  v2 = sub_238B656D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHistoryManager.RecentConversation.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603C8, &qword_238B714B8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603D0, &qword_238B714C0);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603D8, &qword_238B714C8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603E0, &qword_238B714D0);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603E8, &qword_238B714D8);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603F0, &qword_238B714E0);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_238B6567C();
  sub_238B6CEC4();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_238B657CC();
      v31 = v45;
      sub_238B6CD64();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_238B65820();
      v31 = v45;
      sub_238B6CD64();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_238B65778();
      v22 = v33;
      v23 = v45;
      sub_238B6CD64();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_238B65724();
      v22 = v36;
      v23 = v45;
      sub_238B6CD64();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_238B656D0();
      v22 = v39;
      v23 = v45;
      sub_238B6CD64();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_238B6567C()
{
  result = qword_27DF603F8;
  if (!qword_27DF603F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF603F8);
  }

  return result;
}

unint64_t sub_238B656D0()
{
  result = qword_27DF60400;
  if (!qword_27DF60400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60400);
  }

  return result;
}

unint64_t sub_238B65724()
{
  result = qword_27DF60408;
  if (!qword_27DF60408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60408);
  }

  return result;
}

unint64_t sub_238B65778()
{
  result = qword_27DF60410;
  if (!qword_27DF60410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60410);
  }

  return result;
}

unint64_t sub_238B657CC()
{
  result = qword_27DF60418;
  if (!qword_27DF60418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60418);
  }

  return result;
}

unint64_t sub_238B65820()
{
  result = qword_27DF60420;
  if (!qword_27DF60420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60420);
  }

  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.Status.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60428, &qword_238B714E8);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60430, &qword_238B714F0);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60438, &qword_238B714F8);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60440, &qword_238B71500);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60448, &qword_238B71508);
  v47 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60450, &unk_238B71510);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_238B6567C();
  v19 = v61;
  sub_238B6CEB4();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_238B6CD54();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_238B314E8();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_238B6CBE4();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0);
    *v34 = &type metadata for ConversationHistoryManager.RecentConversation.Status;
    sub_238B6CCD4();
    sub_238B6CBD4();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_238B657CC();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_238B6CCC4();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_238B65820();
      v37 = v46;
      sub_238B6CCC4();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_238B65778();
    v38 = v24;
    v39 = v46;
    sub_238B6CCC4();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_238B656D0();
    v41 = v56;
    v42 = v46;
    sub_238B6CCC4();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  v67 = 3;
  sub_238B65724();
  v31 = v46;
  sub_238B6CCC4();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_238B660E8()
{
  if (*v0)
  {
    return 0x676E696D6F636E69;
  }

  else
  {
    return 0x676E696F6774756FLL;
  }
}

uint64_t sub_238B6611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696F6774756FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

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

uint64_t sub_238B661F8(uint64_t a1)
{
  v2 = sub_238B66610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B66234(uint64_t a1)
{
  v2 = sub_238B66610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B66270(uint64_t a1)
{
  v2 = sub_238B66664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B662AC(uint64_t a1)
{
  v2 = sub_238B66664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B662E8(uint64_t a1)
{
  v2 = sub_238B666B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B66324(uint64_t a1)
{
  v2 = sub_238B666B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHistoryManager.RecentConversation.Direction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60458, &qword_238B71520);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60460, &qword_238B71528);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60468, &qword_238B71530);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B66610();
  sub_238B6CEC4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_238B66664();
    v14 = v18;
    sub_238B6CD64();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_238B666B8();
    sub_238B6CD64();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_238B66610()
{
  result = qword_27DF60470;
  if (!qword_27DF60470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60470);
  }

  return result;
}

unint64_t sub_238B66664()
{
  result = qword_27DF60478;
  if (!qword_27DF60478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60478);
  }

  return result;
}

unint64_t sub_238B666B8()
{
  result = qword_27DF60480;
  if (!qword_27DF60480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60480);
  }

  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

uint64_t ConversationHistoryManager.RecentConversation.Direction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60488, &qword_238B71538);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60490, &qword_238B71540);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60498, &qword_238B71548);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B66610();
  v12 = v31;
  sub_238B6CEB4();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_238B6CD54();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_238B3151C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_238B6CBE4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0);
      *v22 = &type metadata for ConversationHistoryManager.RecentConversation.Direction;
      sub_238B6CCD4();
      sub_238B6CBD4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_238B66664();
        sub_238B6CCC4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_238B666B8();
        sub_238B6CCC4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t ConversationHistoryManager.RecentConversation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238B6C574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ConversationHistoryManager.RecentConversation.handles.getter()
{
  type metadata accessor for ConversationHistoryManager.RecentConversation(0);
}

uint64_t ConversationHistoryManager.RecentConversation.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationHistoryManager.RecentConversation(0) + 24);
  v4 = sub_238B6C534();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ConversationHistoryManager.RecentConversation.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.init(id:handles:date:duration:status:direction:isRead:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v14 = *a4;
  v15 = *a5;
  v16 = sub_238B6C574();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  *(a7 + v17[5]) = a2;
  v18 = v17[6];
  v19 = sub_238B6C534();
  result = (*(*(v19 - 8) + 32))(a7 + v18, a3, v19);
  *(a7 + v17[7]) = a8;
  *(a7 + v17[10]) = a6;
  *(a7 + v17[8]) = v14;
  *(a7 + v17[9]) = v15;
  return result;
}

uint64_t sub_238B66F44()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F69746365726964;
  if (v1 != 5)
  {
    v3 = 0x646165527369;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x737574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x73656C646E6168;
  if (v1 != 1)
  {
    v5 = 1702125924;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238B67008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238B69074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238B6703C(uint64_t a1)
{
  v2 = sub_238B67E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B67078(uint64_t a1)
{
  v2 = sub_238B67E14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHistoryManager.RecentConversation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF604A0, &unk_238B71550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B67E14();
  sub_238B6CEC4();
  LOBYTE(v12) = 0;
  sub_238B6C574();
  sub_238B681A4(&qword_27DF5F9C8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238B6CDB4();
  if (!v2)
  {
    v9 = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9E0, &qword_238B6E1F8);
    sub_238B36F2C(&qword_27DF5F9E8, sub_238B36E30, MEMORY[0x277D83948]);
    sub_238B6CDB4();
    LOBYTE(v12) = 2;
    sub_238B6C534();
    sub_238B681A4(&qword_27DF5F9D0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_238B6CDB4();
    LOBYTE(v12) = 3;
    sub_238B6CDA4();
    LOBYTE(v12) = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    sub_238B67E68();
    sub_238B6CDB4();
    LOBYTE(v12) = *(v3 + v9[9]);
    HIBYTE(v11) = 5;
    sub_238B67EBC();
    sub_238B6CDB4();
    LOBYTE(v12) = 6;
    sub_238B6CD94();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ConversationHistoryManager.RecentConversation.hash(into:)(uint64_t a1)
{
  sub_238B6C574();
  sub_238B681A4(&qword_27DF5F9A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_238B6C814();
  v3 = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  sub_238B36CD4(a1, *(v1 + v3[5]));
  sub_238B6C534();
  sub_238B681A4(&qword_27DF5F9A8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_238B6C814();
  v4 = *(v1 + v3[7]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EE72A60](*&v4);
  MEMORY[0x23EE72A40](*(v1 + v3[8]));
  MEMORY[0x23EE72A40](*(v1 + v3[9]));
  return sub_238B6CE84();
}

uint64_t ConversationHistoryManager.RecentConversation.hashValue.getter()
{
  sub_238B6CE64();
  ConversationHistoryManager.RecentConversation.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t ConversationHistoryManager.RecentConversation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_238B6C534();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238B6C574();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF604C0, &qword_238B71560);
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ConversationHistoryManager.RecentConversation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B67E14();
  v33 = v8;
  v12 = v35;
  sub_238B6CEB4();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v4;
  v35 = v9;
  v13 = v11;
  v14 = v28;
  v15 = v29;
  v16 = v31;
  LOBYTE(v37) = 0;
  sub_238B681A4(&qword_27DF5FA00, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_238B6CD44();
  v17 = *(v14 + 32);
  v18 = v32;
  v32 = v5;
  v17(v13, v18, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9E0, &qword_238B6E1F8);
  v36 = 1;
  sub_238B36F2C(&qword_27DF5FA18, sub_238B36ED8, MEMORY[0x277D83978]);
  sub_238B6CD44();
  v19 = v35;
  *(v13 + v35[5]) = v37;
  LOBYTE(v37) = 2;
  sub_238B681A4(&qword_27DF5FA08, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v26;
  v25 = 0;
  sub_238B6CD44();
  (*(v15 + 32))(v13 + v19[6], v20, v16);
  LOBYTE(v37) = 3;
  sub_238B6CD34();
  *(v13 + v19[7]) = v21;
  v36 = 4;
  sub_238B67F10();
  sub_238B6CD44();
  *(v13 + v19[8]) = v37;
  v36 = 5;
  sub_238B67F64();
  sub_238B6CD44();
  v22 = v30;
  *(v13 + v19[9]) = v37;
  LOBYTE(v37) = 6;
  v23 = sub_238B6CD24();
  (*(v22 + 8))(v33, v34);
  *(v13 + v19[10]) = v23 & 1;
  sub_238B5FBF8(v13, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_238B64CD0(v13, type metadata accessor for ConversationHistoryManager.RecentConversation);
}

uint64_t sub_238B67C38()
{
  sub_238B6CE64();
  ConversationHistoryManager.RecentConversation.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B67C7C()
{
  sub_238B6CE64();
  ConversationHistoryManager.RecentConversation.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.conversationHistoryDidUpdateMessage.getter()
{
  v0 = sub_238B67FB8();

  return MEMORY[0x28211EE90](&type metadata for ConversationHistoryManager.ConversationHistoryDidUpdate, v0);
}

uint64_t _s20LiveCommunicationKit26ConversationHistoryManagerC06RecentD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_238B6C554() & 1) != 0 && (v4 = type metadata accessor for ConversationHistoryManager.RecentConversation(0), (sub_238B3BC14(*(a1 + v4[5]), *(a2 + v4[5]))) && (sub_238B6C514() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v5 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_238B67E14()
{
  result = qword_27DF604A8;
  if (!qword_27DF604A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604A8);
  }

  return result;
}

unint64_t sub_238B67E68()
{
  result = qword_27DF604B0;
  if (!qword_27DF604B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604B0);
  }

  return result;
}

unint64_t sub_238B67EBC()
{
  result = qword_27DF604B8;
  if (!qword_27DF604B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604B8);
  }

  return result;
}

unint64_t sub_238B67F10()
{
  result = qword_27DF604C8;
  if (!qword_27DF604C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604C8);
  }

  return result;
}

unint64_t sub_238B67F64()
{
  result = qword_27DF604D0;
  if (!qword_27DF604D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604D0);
  }

  return result;
}

unint64_t sub_238B67FB8()
{
  result = qword_27DF604D8;
  if (!qword_27DF604D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604D8);
  }

  return result;
}

unint64_t sub_238B68010()
{
  result = qword_27DF604E0;
  if (!qword_27DF604E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604E0);
  }

  return result;
}

unint64_t sub_238B68068()
{
  result = qword_27DF604E8;
  if (!qword_27DF604E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604E8);
  }

  return result;
}

unint64_t sub_238B680C0()
{
  result = qword_27DF604F0;
  if (!qword_27DF604F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604F0);
  }

  return result;
}

uint64_t sub_238B681A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_238B68260(uint64_t a1)
{
  sub_238B6C574();
  if (v1 <= 0x3F)
  {
    sub_238B68328();
    if (v2 <= 0x3F)
    {
      sub_238B6C534();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238B68328()
{
  if (!qword_27DF5FA70)
  {
    v0 = sub_238B6C984();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF5FA70);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConversationHistoryManager.RecentConversation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationHistoryManager.RecentConversation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11EndedReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11EndedReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238B686CC()
{
  result = qword_27DF60510;
  if (!qword_27DF60510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60510);
  }

  return result;
}

unint64_t sub_238B68724()
{
  result = qword_27DF60518;
  if (!qword_27DF60518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60518);
  }

  return result;
}

unint64_t sub_238B6877C()
{
  result = qword_27DF60520;
  if (!qword_27DF60520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60520);
  }

  return result;
}

unint64_t sub_238B687D4()
{
  result = qword_27DF60528;
  if (!qword_27DF60528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60528);
  }

  return result;
}

unint64_t sub_238B6882C()
{
  result = qword_27DF60530;
  if (!qword_27DF60530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60530);
  }

  return result;
}

unint64_t sub_238B68884()
{
  result = qword_27DF60538;
  if (!qword_27DF60538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60538);
  }

  return result;
}

unint64_t sub_238B688DC()
{
  result = qword_27DF60540;
  if (!qword_27DF60540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60540);
  }

  return result;
}

unint64_t sub_238B68934()
{
  result = qword_27DF60548;
  if (!qword_27DF60548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60548);
  }

  return result;
}

unint64_t sub_238B6898C()
{
  result = qword_27DF60550;
  if (!qword_27DF60550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60550);
  }

  return result;
}

unint64_t sub_238B689E4()
{
  result = qword_27DF60558;
  if (!qword_27DF60558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60558);
  }

  return result;
}

unint64_t sub_238B68A3C()
{
  result = qword_27DF60560;
  if (!qword_27DF60560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60560);
  }

  return result;
}

unint64_t sub_238B68A94()
{
  result = qword_27DF60568;
  if (!qword_27DF60568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60568);
  }

  return result;
}

unint64_t sub_238B68AEC()
{
  result = qword_27DF60570;
  if (!qword_27DF60570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60570);
  }

  return result;
}

unint64_t sub_238B68B44()
{
  result = qword_27DF60578;
  if (!qword_27DF60578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60578);
  }

  return result;
}

unint64_t sub_238B68B9C()
{
  result = qword_27DF60580;
  if (!qword_27DF60580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60580);
  }

  return result;
}

unint64_t sub_238B68BF4()
{
  result = qword_27DF60588;
  if (!qword_27DF60588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60588);
  }

  return result;
}

unint64_t sub_238B68C4C()
{
  result = qword_27DF60590;
  if (!qword_27DF60590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60590);
  }

  return result;
}

unint64_t sub_238B68CA4()
{
  result = qword_27DF60598;
  if (!qword_27DF60598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60598);
  }

  return result;
}

unint64_t sub_238B68CFC()
{
  result = qword_27DF605A0;
  if (!qword_27DF605A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605A0);
  }

  return result;
}

unint64_t sub_238B68D54()
{
  result = qword_27DF605A8;
  if (!qword_27DF605A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605A8);
  }

  return result;
}

unint64_t sub_238B68DAC()
{
  result = qword_27DF605B0;
  if (!qword_27DF605B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605B0);
  }

  return result;
}

unint64_t sub_238B68E04()
{
  result = qword_27DF605B8;
  if (!qword_27DF605B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605B8);
  }

  return result;
}

unint64_t sub_238B68E5C()
{
  result = qword_27DF605C0;
  if (!qword_27DF605C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605C0);
  }

  return result;
}

uint64_t sub_238B68EB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657373696DLL && a2 == 0xE600000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000238B74620 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_238B6CDF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_238B69074(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_238B6CDF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_238B692E8()
{
  v0 = [objc_opt_self() defaultCenter];
  sub_238B67FB8();
  sub_238B6CA74();
}

unint64_t Conversation.EndedReason.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_238B69454()
{
  result = qword_27DF605C8;
  if (!qword_27DF605C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605C8);
  }

  return result;
}

unint64_t sub_238B694B8()
{
  result = qword_27DF605D0;
  if (!qword_27DF605D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605D0);
  }

  return result;
}

uint64_t sub_238B6950C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_238B695F4()
{
  result = qword_27DF605D8;
  if (!qword_27DF605D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605D8);
  }

  return result;
}

unint64_t sub_238B6964C()
{
  result = qword_27DF605E0;
  if (!qword_27DF605E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605E0);
  }

  return result;
}

unint64_t sub_238B6975C()
{
  result = qword_27DF605E8;
  if (!qword_27DF605E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605E8);
  }

  return result;
}

unint64_t sub_238B697B4()
{
  result = qword_27DF605F0;
  if (!qword_27DF605F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605F0);
  }

  return result;
}

BOOL sub_238B6984C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_238B6987C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_238B698A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _s12CapabilitiesVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12CapabilitiesVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_238B699F4()
{
  v1 = 1701602409;
  v2 = 0x6574656C706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x676E696E6E7572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238B69A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238B6B550(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238B69A8C(uint64_t a1)
{
  v2 = sub_238B6ADF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69AC8(uint64_t a1)
{
  v2 = sub_238B6ADF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69B04(uint64_t a1)
{
  v2 = sub_238B6AE98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69B40(uint64_t a1)
{
  v2 = sub_238B6AE98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B69C14(uint64_t a1)
{
  v2 = sub_238B6AE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69C50(uint64_t a1)
{
  v2 = sub_238B6AE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69C8C(uint64_t a1)
{
  v2 = sub_238B6AF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69CC8(uint64_t a1)
{
  v2 = sub_238B6AF40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69D04(uint64_t a1)
{
  v2 = sub_238B6AEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69D40(uint64_t a1)
{
  v2 = sub_238B6AEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationAction.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF605F8, "K");
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60600, &qword_238B725B8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60608, &qword_238B725C0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60610, &qword_238B725C8);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60618, &qword_238B725D0);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v16 = v1[1];
  v23[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B6ADF0();
  sub_238B6CEC4();
  switch(v16)
  {
    case 0:
      v35 = 0;
      sub_238B6AF40();
      v18 = v34;
      sub_238B6CD64();
      (*(v24 + 8))(v12, v10);
      return (*(v33 + 8))(v15, v18);
    case 1:
      v36 = 1;
      sub_238B6AEEC();
      v18 = v34;
      sub_238B6CD64();
      (*(v25 + 8))(v9, v26);
      return (*(v33 + 8))(v15, v18);
    case 2:
      v37 = 2;
      sub_238B6AE98();
      v17 = v27;
      v18 = v34;
      sub_238B6CD64();
      (*(v28 + 8))(v17, v29);
      return (*(v33 + 8))(v15, v18);
  }

  v38 = 3;
  sub_238B6AE44();
  v20 = v30;
  v21 = v34;
  sub_238B6CD64();
  v22 = v32;
  sub_238B6CD84();
  (*(v31 + 8))(v20, v22);
  return (*(v33 + 8))(v15, v21);
}

uint64_t ConversationAction.State.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x23EE72A40](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x23EE72A40](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x23EE72A40](v3);
  }

  MEMORY[0x23EE72A40](3);

  return sub_238B6C8D4();
}

uint64_t ConversationAction.State.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_238B6CE64();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x23EE72A40](3);
        sub_238B6C8D4();
        return sub_238B6CEA4();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EE72A40](v2);
  return sub_238B6CEA4();
}

uint64_t ConversationAction.State.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60648, &qword_238B725D8);
  v44 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60650, &qword_238B725E0);
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60658, &qword_238B725E8);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60660, &qword_238B725F0);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60668, &unk_238B725F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_238B6ADF0();
  v15 = v49;
  sub_238B6CEB4();
  if (!v15)
  {
    v16 = v9;
    v37 = v7;
    v38 = 0;
    v17 = v6;
    v18 = v45;
    v19 = v46;
    v49 = v11;
    v20 = v47;
    v21 = sub_238B6CD54();
    v22 = (2 * *(v21 + 16)) | 1;
    v51 = v21;
    v52 = v21 + 32;
    v53 = 0;
    v54 = v22;
    v23 = sub_238B33FD0();
    if (v23 == 4 || v53 != v54 >> 1)
    {
      v28 = sub_238B6CBE4();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0);
      *v30 = &type metadata for ConversationAction.State;
      sub_238B6CCD4();
      sub_238B6CBD4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
LABEL_9:
      (*(v49 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v50);
    }

    if (v23 <= 1u)
    {
      if (v23)
      {
        v55 = 1;
        sub_238B6AEEC();
        v34 = v38;
        sub_238B6CCC4();
        if (!v34)
        {
          (*(v41 + 8))(v17, v43);
          (*(v49 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 1;
          v27 = v20;
          goto LABEL_21;
        }
      }

      else
      {
        v55 = 0;
        sub_238B6AF40();
        v24 = v38;
        sub_238B6CCC4();
        if (!v24)
        {
          (*(v40 + 8))(v16, v37);
          (*(v49 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 0;
          v27 = v20;
LABEL_21:
          *v27 = v25;
          v27[1] = v26;
          return __swift_destroy_boxed_opaque_existential_1Tm(v50);
        }
      }

      goto LABEL_9;
    }

    v27 = v20;
    v32 = v49;
    if (v23 == 2)
    {
      v55 = 2;
      sub_238B6AE98();
      v33 = v38;
      sub_238B6CCC4();
      if (!v33)
      {
        (*(v39 + 8))(v18, v42);
        v27 = v20;
        (*(v32 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v25 = 0;
        v26 = 2;
        goto LABEL_21;
      }

      (*(v32 + 8))(v13, v10);
      goto LABEL_10;
    }

    v55 = 3;
    sub_238B6AE44();
    v35 = v38;
    sub_238B6CCC4();
    if (!v35)
    {
      v25 = sub_238B6CD14();
      v26 = v36;
      (*(v44 + 8))(v19, v48);
      (*(v32 + 8))(v13, v10);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    (*(v32 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v50);
}

uint64_t sub_238B6AAB0()
{
  v1 = *(v0 + 8);
  sub_238B6CE64();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x23EE72A40](3);
        sub_238B6C8D4();
        return sub_238B6CEA4();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EE72A40](v2);
  return sub_238B6CEA4();
}

uint64_t sub_238B6AB40(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x23EE72A40](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x23EE72A40](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x23EE72A40](v3);
  }

  MEMORY[0x23EE72A40](3);

  return sub_238B6C8D4();
}

uint64_t sub_238B6ABD8()
{
  v1 = *(v0 + 8);
  sub_238B6CE64();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x23EE72A40](3);
        sub_238B6C8D4();
        return sub_238B6CEA4();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x23EE72A40](v2);
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit18ConversationActionC5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = *(a2 + 8);
  switch(v5)
  {
    case 0uLL:
      if (!v7)
      {
        sub_238B2FFFC(*a1, 0);
        v8 = v6;
        v9 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v7 == 1)
      {
        v10 = 1;
        sub_238B2FFFC(*a1, 1uLL);
        sub_238B2FFFC(v6, 1uLL);
        return v10;
      }

      goto LABEL_11;
    case 2uLL:
      if (v7 == 2)
      {
        sub_238B2FFFC(*a1, 2uLL);
        v8 = v6;
        v9 = 2;
LABEL_15:
        sub_238B2FFFC(v8, v9);
        return 1;
      }

      goto LABEL_11;
  }

  if (v7 < 3)
  {
LABEL_11:
    sub_238B3FE5C(*a2, *(a2 + 8), a3, a4);
    sub_238B3FE5C(v4, v5, v11, v12);
    sub_238B2FFFC(v4, v5);
    sub_238B2FFFC(v6, v7);
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    sub_238B3FE5C(*a1, v5, a3, a4);
    sub_238B3FE5C(v4, v5, v13, v14);
    sub_238B2FFFC(v4, v5);
    v8 = v4;
    v9 = v5;
    goto LABEL_15;
  }

  v16 = sub_238B6CDF4();
  sub_238B3FE5C(v6, v7, v17, v18);
  sub_238B3FE5C(v4, v5, v19, v20);
  sub_238B2FFFC(v4, v5);
  sub_238B2FFFC(v6, v7);
  return v16 & 1;
}

unint64_t sub_238B6ADF0()
{
  result = qword_27DF60620;
  if (!qword_27DF60620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60620);
  }

  return result;
}

unint64_t sub_238B6AE44()
{
  result = qword_27DF60628;
  if (!qword_27DF60628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60628);
  }

  return result;
}

unint64_t sub_238B6AE98()
{
  result = qword_27DF60630;
  if (!qword_27DF60630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60630);
  }

  return result;
}

unint64_t sub_238B6AEEC()
{
  result = qword_27DF60638;
  if (!qword_27DF60638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60638);
  }

  return result;
}

unint64_t sub_238B6AF40()
{
  result = qword_27DF60640;
  if (!qword_27DF60640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60640);
  }

  return result;
}

unint64_t sub_238B6AF98()
{
  result = qword_27DF60670;
  if (!qword_27DF60670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60670);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LiveCommunicationKit18ConversationActionC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_238B6B004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238B6B060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_238B6B0B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_238B6B134()
{
  result = qword_27DF60678;
  if (!qword_27DF60678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60678);
  }

  return result;
}

unint64_t sub_238B6B18C()
{
  result = qword_27DF60680;
  if (!qword_27DF60680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60680);
  }

  return result;
}

unint64_t sub_238B6B1E4()
{
  result = qword_27DF60688;
  if (!qword_27DF60688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60688);
  }

  return result;
}

unint64_t sub_238B6B23C()
{
  result = qword_27DF60690;
  if (!qword_27DF60690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60690);
  }

  return result;
}

unint64_t sub_238B6B294()
{
  result = qword_27DF60698;
  if (!qword_27DF60698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60698);
  }

  return result;
}

unint64_t sub_238B6B2EC()
{
  result = qword_27DF606A0;
  if (!qword_27DF606A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606A0);
  }

  return result;
}

unint64_t sub_238B6B344()
{
  result = qword_27DF606A8;
  if (!qword_27DF606A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606A8);
  }

  return result;
}

unint64_t sub_238B6B39C()
{
  result = qword_27DF606B0;
  if (!qword_27DF606B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606B0);
  }

  return result;
}

unint64_t sub_238B6B3F4()
{
  result = qword_27DF606B8;
  if (!qword_27DF606B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606B8);
  }

  return result;
}

unint64_t sub_238B6B44C()
{
  result = qword_27DF606C0;
  if (!qword_27DF606C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606C0);
  }

  return result;
}

unint64_t sub_238B6B4A4()
{
  result = qword_27DF606C8;
  if (!qword_27DF606C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606C8);
  }

  return result;
}

unint64_t sub_238B6B4FC()
{
  result = qword_27DF606D0;
  if (!qword_27DF606D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606D0);
  }

  return result;
}

uint64_t sub_238B6B550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t Handle.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);

  return v5;
}

uint64_t Handle.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Handle.displayName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);

  return v5;
}

uint64_t Handle.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_238B6B808@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238B6BACC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238B6B830(uint64_t a1)
{
  v2 = sub_238B2DDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B6B86C(uint64_t a1)
{
  v2 = sub_238B2DDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handle.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EE72A40](*v1 + 1);
  sub_238B6C8D4();

  return sub_238B6C8D4();
}

uint64_t Handle.hashValue.getter()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B6B99C()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

unint64_t sub_238B6BA20()
{
  result = qword_27DF606E8;
  if (!qword_27DF606E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606E8);
  }

  return result;
}

unint64_t sub_238B6BA78()
{
  result = qword_27DF606F0;
  if (!qword_27DF606F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606F0);
  }

  return result;
}

uint64_t sub_238B6BACC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MuteConversationAction.__allocating_init(conversationUUID:isMuted:)(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  MuteConversationAction.init(conversationUUID:isMuted:)(a1, v2);
  return v4;
}

uint64_t MuteConversationAction.init(conversationUUID:isMuted:)(char *a1, char a2)
{
  v3 = v2;
  v21 = a1;
  v6 = sub_238B6C534();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238B6C574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a1, v8);
  v13 = objc_allocWithZone(MEMORY[0x277CBB008]);
  v14 = sub_238B6C544();
  v15 = [v13 initWithCallUUID:v14 muted:a2 & 1];

  v16 = *(v9 + 8);
  v16(v11, v8);
  *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit22MuteConversationAction_isMuted) = a2;
  v17 = v21;
  v12(v11, v21, v8);
  v18 = v22;
  sub_238B6C504();
  v16(v17, v8);
  *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v15;
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v11, v8);
  v19 = (v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v19 = 0;
  v19[1] = 0;
  (*(v23 + 32))(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v18, v24);
  return v3;
}

uint64_t sub_238B6BEC0(void *a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238B6C574();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 isMuted];
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit22MuteConversationAction_isMuted) = v11;
  v12 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v8 + 32))(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v10, v7);
  v13 = (v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v13 = 0;
  v13[1] = 0;
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v6, v3);
  return v1;
}

uint64_t MuteConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MuteConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MuteConversationAction(uint64_t a1)
{
  result = qword_27DF606F8;
  if (!qword_27DF606F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}