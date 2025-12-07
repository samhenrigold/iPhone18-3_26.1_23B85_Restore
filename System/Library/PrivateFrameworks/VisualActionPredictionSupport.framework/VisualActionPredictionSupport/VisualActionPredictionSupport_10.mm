uint64_t sub_1D9F19A60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D48, &qword_1D9F45568);
  result = sub_1D9F2B66C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_40:
    *v2 = v5;
    return result;
  }

  v6 = 0;
  v37 = v3 + 56;
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
  v38 = v10;
  v39 = result;
  v40 = v3;
  while (v9)
  {
    v18 = __clz(__rbit64(v9));
    v41 = (v9 - 1) & v9;
LABEL_15:
    v21 = (*(v3 + 48) + 96 * (v18 | (v6 << 6)));
    v22 = v21[5];
    v24 = v21[2];
    v23 = v21[3];
    v47 = v21[4];
    v48 = v22;
    v45 = v24;
    v46 = v23;
    v25 = v21[1];
    v43 = *v21;
    v44 = v25;
    sub_1D9F2BAFC();
    v26 = *(&v44 + 1);
    v27 = *(&v45 + 1);
    v28 = *(&v46 + 1);
    v29 = *(&v47 + 1);
    if (*(&v43 + 1))
    {
      sub_1D9F2BB1C();
      sub_1D9E51E70(&v43, v42, &qword_1ECB731D0, &qword_1D9F42160);
      sub_1D9F2B18C();
      if (v26)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1D9F2BB1C();
      sub_1D9E51E70(&v43, v42, &qword_1ECB731D0, &qword_1D9F42160);
      if (v26)
      {
LABEL_17:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v27)
        {
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    sub_1D9F2BB1C();
    if (v27)
    {
LABEL_18:
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      goto LABEL_22;
    }

LABEL_21:
    sub_1D9F2BB1C();
LABEL_22:
    v3 = v40;
    if (v28)
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      if (v29)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_1D9F2BB1C();
      if (v29)
      {
LABEL_24:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (*(&v48 + 1))
        {
          goto LABEL_25;
        }

        goto LABEL_28;
      }
    }

    sub_1D9F2BB1C();
    if (*(&v48 + 1))
    {
LABEL_25:
      sub_1D9F2BB1C();

      sub_1D9F2B18C();

      goto LABEL_29;
    }

LABEL_28:
    sub_1D9F2BB1C();
LABEL_29:
    result = sub_1D9F2BB4C();
    v5 = v39;
    v30 = -1 << *(v39 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      v9 = v41;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *(v11 + 8 * v32);
        if (v36 != -1)
        {
          v12 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_42;
    }

    v12 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v9 = v41;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v39 + 48) + 96 * v12);
    v14 = v44;
    *v13 = v43;
    v15 = v45;
    v16 = v46;
    v17 = v48;
    v13[4] = v47;
    v13[5] = v17;
    v13[2] = v15;
    v13[3] = v16;
    v13[1] = v14;
    ++*(v39 + 16);
    v10 = v38;
  }

  v19 = v6;
  while (1)
  {
    v6 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_40;
    }

    v20 = *(v37 + 8 * v6);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D9F19E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D40, &qword_1D9F45560);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
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
    v35 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v24)
      {

        sub_1D9F2B18C();
      }

      result = sub_1D9F2BB4C();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v35 + 48) + 48 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      v14[4] = v23;
      v14[5] = v24;
      ++*(v35 + 16);
      v3 = v34;
      v10 = v36;
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
        v32 = v5;

        v2 = v33;
        goto LABEL_28;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

uint64_t sub_1D9F1A14C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CalendarEvent(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D38, &unk_1D9F45550);
  result = sub_1D9F2B66C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_1D9F1BEE0(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for CalendarEvent);
      sub_1D9F2BAFC();
      CalendarEvent.hash(into:)(v30);
      result = sub_1D9F2BB4C();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D9F1BFA8(v5, *(v8 + 48) + v15 * v19, type metadata accessor for CalendarEvent);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D9F1A424(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for Contact(0);
  v51 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D30, &qword_1D9F45548);
  result = sub_1D9F2B66C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v1;
    v12 = 0;
    v13 = *(v9 + 56);
    v43 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v46 = result + 56;
    v47 = v17;
    v49 = v9;
    v50 = v6;
    v54 = v8;
    v48 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v53 = (v16 - 1) & v16;
LABEL_14:
      v23 = *(v9 + 48);
      v52 = *(v51 + 72);
      sub_1D9F1BEE0(v23 + v52 * (v20 | (v12 << 6)), v8, type metadata accessor for Contact);
      sub_1D9F2BAFC();
      Contact.Identity.hash(into:)(v55);
      v24 = *&v8[v6[5]];
      MEMORY[0x1DA7438F0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (v24 + 56);
        do
        {
          v27 = *v26;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v27)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v26 += 4;
          --v25;
        }

        while (v25);
      }

      v28 = *&v8[v6[6]];
      MEMORY[0x1DA7438F0](*(v28 + 16));
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (v28 + 56);
        do
        {
          v31 = *v30;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v31)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v30 += 4;
          --v29;
        }

        while (v29);
      }

      sub_1D9E4EEB4(v55, *&v8[v6[7]]);
      v32 = *&v8[v6[8]];
      MEMORY[0x1DA7438F0](*(v32 + 16));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v32 + 72);
        do
        {
          v35 = *v34;

          sub_1D9F2B18C();
          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v35)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v34 += 6;
          --v33;
        }

        while (v33);
      }

      v6 = v50;
      v36 = *&v54[v50[9]];
      MEMORY[0x1DA7438F0](*(v36 + 16));
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = &v5[*(v45 + 28)];
        v39 = v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v40 = *(v44 + 72);
        do
        {
          sub_1D9E51E70(v39, v5, &qword_1ECB731B8, &unk_1D9F2F580);
          sub_1D9F2AC4C();
          sub_1D9F1C010(&qword_1ECB731C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1D9F2B0EC();
          if (*(v38 + 1))
          {
            sub_1D9F2BB1C();
            sub_1D9F2B18C();
          }

          else
          {
            sub_1D9F2BB1C();
          }

          sub_1D9E51FE8(v5, &qword_1ECB731B8, &unk_1D9F2F580);
          v39 += v40;
          --v37;
        }

        while (v37);
      }

      sub_1D9F2BB4C();
      v11 = v48;
      v18 = v46;
      v19 = sub_1D9F2B62C();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v8 = v54;
      result = sub_1D9F1BFA8(v54, *(v11 + 48) + v19 * v52, type metadata accessor for Contact);
      ++*(v11 + 16);
      v9 = v49;
      v17 = v47;
      v16 = v53;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v42;
        goto LABEL_40;
      }

      v22 = *(v43 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_40:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1D9F1AAB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D28, &qword_1D9F45540);
  result = sub_1D9F2B66C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_33:
    *v2 = v5;
    return result;
  }

  v29 = v1;
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
  v30 = (v8 + 63) >> 6;
  v31 = v3;
  v11 = result + 56;
  v32 = result;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_15:
    v17 = *(v3 + 48) + 56 * (v14 | (v6 << 6));
    v18 = *v17;
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    v35 = *(v17 + 24);
    v36 = *(v17 + 8);
    v21 = *(v17 + 48);
    v34 = *(v17 + 40);
    sub_1D9F2BAFC();

    sub_1D9F2B18C();

    sub_1D9F2BB1C();
    if (v19)
    {
      sub_1D9F2B18C();
    }

    v5 = v32;
    if (v20)
    {
      sub_1D9F2BB1C();
      sub_1D9F2B18C();
      if (v21)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_1D9F2BB1C();
      if (v21)
      {
LABEL_19:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        goto LABEL_22;
      }
    }

    sub_1D9F2BB1C();
LABEL_22:
    result = sub_1D9F2BB4C();
    v22 = -1 << *(v32 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v24);
        if (v28 != -1)
        {
          v12 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_35;
    }

    v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v32 + 48) + 56 * v12;
    *v13 = v18;
    *(v13 + 8) = v36;
    *(v13 + 16) = v19;
    *(v13 + 24) = v35;
    *(v13 + 32) = v20;
    *(v13 + 40) = v34;
    *(v13 + 48) = v21;
    ++*(v32 + 16);
    v3 = v31;
    v10 = v33;
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v30)
    {

      v2 = v29;
      goto LABEL_33;
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v33 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D9F1AE38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D9F2B66C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = (*(v5 + 48) + 32 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v21;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v32;
        goto LABEL_26;
      }

      v19 = *(v9 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
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
    *v4 = v7;
  }

  return result;
}

unint64_t sub_1D9F1B094(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D10, &qword_1D9F45528);
  result = sub_1D9F2B66C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = *(v2 + 48) + 88 * (v10 | (v5 << 6));
      v15 = *(v13 + 48);
      v14 = *(v13 + 64);
      v16 = *(v13 + 32);
      v38 = *(v13 + 80);
      v36 = v15;
      v37 = v14;
      v35 = v16;
      v17 = *(v13 + 16);
      v33 = *v13;
      v34 = v17;
      v18 = *(v13 + 48);
      v29 = *(v13 + 32);
      v30 = v18;
      v31 = *(v13 + 64);
      v32 = *(v13 + 80);
      v19 = *(v13 + 16);
      v27 = *v13;
      v28 = v19;
      sub_1D9F2BAFC();
      sub_1D9E77240(&v33, &v25);
      Transaction.hash(into:)(v26);
      sub_1D9F2BB4C();
      result = sub_1D9F2B62C();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v20 = *(v4 + 48) + 88 * result;
      v21 = v34;
      *v20 = v33;
      *(v20 + 16) = v21;
      v22 = v35;
      v23 = v36;
      v24 = v37;
      *(v20 + 80) = v38;
      *(v20 + 48) = v23;
      *(v20 + 64) = v24;
      *(v20 + 32) = v22;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_14;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D9F1B2A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D00, &qword_1D9F45518);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v37 = v3 + 56;
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
    v38 = v10;
    v39 = result;
    v40 = v3;
    while (v9)
    {
      v19 = __clz(__rbit64(v9));
      v41 = (v9 - 1) & v9;
LABEL_15:
      v22 = *(v3 + 48) + 104 * (v19 | (v6 << 6));
      v24 = *v22;
      v23 = *(v22 + 16);
      v45 = *(v22 + 32);
      v25 = *(v22 + 48);
      v26 = *(v22 + 64);
      v27 = *(v22 + 80);
      v49 = *(v22 + 96);
      v47 = v26;
      v48 = v27;
      v46 = v25;
      v43 = v24;
      v44 = v23;
      sub_1D9F2BAFC();
      v28 = v49;
      sub_1D9E51C04(&v43, v42);
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      if (v28 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v28;
      }

      MEMORY[0x1DA743920](*&v29);
      result = sub_1D9F2BB4C();
      v5 = v39;
      v30 = -1 << *(v39 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v3 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v11 + 8 * v32);
          if (v36 != -1)
          {
            v12 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v3 = v40;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v39 + 48) + 104 * v12;
      v14 = v45;
      v15 = v43;
      *(v13 + 16) = v44;
      *(v13 + 32) = v14;
      v16 = v46;
      v17 = v47;
      v18 = v48;
      *(v13 + 96) = v49;
      *(v13 + 64) = v17;
      *(v13 + 80) = v18;
      *(v13 + 48) = v16;
      *v13 = v15;
      ++*(v39 + 16);
      v10 = v38;
      v9 = v41;
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        goto LABEL_29;
      }

      v21 = *(v37 + 8 * v6);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D9F1B5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF8, &qword_1D9F45510);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
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
    v35 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v24 = v18[4];
      v23 = v18[5];
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v35 + 48) + 48 * v13);
      *v14 = v19;
      v14[1] = v20;
      v10 = v36;
      v14[2] = v21;
      v14[3] = v22;
      v14[4] = v24;
      v14[5] = v23;
      ++*(v35 + 16);
      v3 = v34;
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
        v32 = v5;

        v2 = v33;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_26:
    *v2 = v32;
  }

  return result;
}

uint64_t sub_1D9F1B89C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF0, &qword_1D9F45508);
  result = sub_1D9F2B66C();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_1D9F1BAD4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48) + 32 * result;
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  v8 = *(v5 + 24);
  *a4 = *v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v6;
  *(a4 + 24) = v8;
}

uint64_t sub_1D9F1BB6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xEF4449747865746ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D9F49C80 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEF736E6F69746163)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

void sub_1D9F1BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_1D9F1BEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9F1BF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9F1BFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9F1C010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9F1C058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_1D9F1C0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1D9F1C134(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AEFC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    xpc_string_get_string_ptr(a1);
    xpc_string_get_length(a1);
    v6 = sub_1D9F2B17C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return v6;
}

uint64_t sub_1D9F1C248@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D9F1C134(a1, &v9);
  if (v3)
  {
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

xpc_object_t sub_1D9F1C29C(uint64_t a1, unint64_t a2)
{
  v2 = BYTE5(a2);
  bytes[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v4 = 0;
      return xpc_data_create(bytes, v4);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = sub_1D9F2AA7C();
    v7 = a1;
    if (a1)
    {
      a1 = sub_1D9F2AA9C();
      if (__OFSUB__(v5, a1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 += v5 - a1;
    }

    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v2;
    return xpc_data_create(bytes, v4);
  }

  v10 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = sub_1D9F2AA7C();
  if (v7)
  {
    v11 = sub_1D9F2AA9C();
    if (!__OFSUB__(v10, v11))
    {
      v7 += v10 - v11;
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
  }

LABEL_15:
  v12 = sub_1D9F2AA8C();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return xpc_data_create(v7, v14);
}

unint64_t sub_1D9F1C470(void *a1, unint64_t a2)
{
  v4 = sub_1D9F2AEAC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    length = xpc_data_get_length(a1);
    if (length <= 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v9 = length;
      bytes_ptr = xpc_data_get_bytes_ptr(a1);
      if (bytes_ptr)
      {
        a2 = sub_1D9F1C6D8(bytes_ptr, v9);
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 5;
        sub_1D9E56B78();
        swift_willThrowTypedImpl();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return a2;
}

unint64_t sub_1D9F1C5CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1D9F1C470(a1, &v9);
  if (v3)
  {
    v8 = v10;
    *a2 = v9;
    *(a2 + 16) = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_1D9F1C620(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1D9F1C6D8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D9F1C620(a1, &a1[a2]);
  }

  sub_1D9F2AAAC();
  swift_allocObject();
  sub_1D9F2AA6C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D9F2AC6C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t ImageRepresentation.RetrievalFailure.hashValue.getter()
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](0);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D9F2AC4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v66 - v8;
  v10 = [*v1 inImage];
  v11 = [v10 _imageData];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D9F2AC8C();
    v15 = v14;

    *a1 = v13;
    a1[1] = v15;
    type metadata accessor for ImageRepresentation.Content(0);

    return swift_storeEnumTagMultiPayload();
  }

  v17 = [v10 _uri];
  if (v17)
  {
    v18 = v17;
    sub_1D9F2AC1C();

    if ((sub_1D9F2ABEC() & 1) == 0 || (v19 = [objc_opt_self() defaultManager], sub_1D9F2AC3C(), v20 = sub_1D9F2B11C(), , v21 = objc_msgSend(v19, sel_isReadableFileAtPath_, v20), v19, v20, v21))
    {

      (*(v4 + 32))(a1, v9, v3);
      type metadata accessor for ImageRepresentation.Content(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (qword_1EE0F1238 != -1)
    {
      swift_once();
    }

    v22 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v22, qword_1EE0F1240);
    (*(v4 + 16))(v7, v9, v3);
    v23 = sub_1D9F2AE6C();
    v24 = sub_1D9F2B42C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v66 = v25;
      v68 = swift_slowAlloc();
      v69 = v68;
      *v25 = 136315138;
      sub_1D9F200E0();
      v26 = sub_1D9F2B9FC();
      v28 = v27;
      v67 = *(v4 + 8);
      v67(v7, v3);
      v29 = sub_1D9E71CA4(v26, v28, &v69);

      v30 = v66;
      *(v66 + 1) = v29;
      v31 = v30;
      _os_log_impl(&dword_1D9E39000, v23, v24, "Image file URL '%s' is not readable, fallback to proxy image.", v30, 0xCu);
      v32 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1DA744270](v32, -1, -1);
      MEMORY[0x1DA744270](v31, -1, -1);

      v67(v9, v3);
    }

    else
    {

      v33 = *(v4 + 8);
      v33(v7, v3);
      v33(v9, v3);
    }
  }

  v34 = [v10 _name];
  if (!v34)
  {
    goto LABEL_40;
  }

  v35 = v34;
  v36 = sub_1D9F2B12C();
  v38 = v37;

  if ([v10 _isSystem])
  {

    *a1 = v36;
    a1[1] = v38;
    type metadata accessor for ImageRepresentation.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  v39 = [v10 _bundleIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D9F2B12C();
    v43 = v42;
    v44 = [objc_opt_self() bundleWithIdentifier_];

    if (!v44)
    {
      if (qword_1EE0F1238 != -1)
      {
        swift_once();
      }

      v54 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v54, qword_1EE0F1240);

      v55 = sub_1D9F2AE6C();
      v56 = sub_1D9F2B43C();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v69 = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1D9E71CA4(v41, v43, &v69);
        _os_log_impl(&dword_1D9E39000, v55, v56, "Image bundle identifier '%s' not found, passthrough as bundle image.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x1DA744270](v58, -1, -1);
        MEMORY[0x1DA744270](v57, -1, -1);
      }

      *a1 = v36;
      a1[1] = v38;
      a1[2] = v41;
      goto LABEL_33;
    }

    v68 = v41;
    v45 = [v44 bundlePath];
    if (!v45)
    {
      sub_1D9F2B12C();
      v45 = sub_1D9F2B11C();
    }

    v67 = sub_1D9F2B12C();
    v47 = v46;
    v48 = [objc_opt_self() defaultManager];
    v49 = [v48 isReadableFileAtPath_];

    if (v49)
    {

      *a1 = v36;
      a1[1] = v38;
      a1[2] = v68;
LABEL_33:
      a1[3] = v43;
      type metadata accessor for ImageRepresentation.Content(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (qword_1EE0F1238 != -1)
    {
      swift_once();
    }

    v59 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v59, qword_1EE0F1240);

    v60 = sub_1D9F2AE6C();
    v61 = sub_1D9F2B42C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v69 = v63;
      *v62 = 136315138;
      v64 = sub_1D9E71CA4(v67, v47, &v69);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_1D9E39000, v60, v61, "Image bundle path '%s' is not readable, fallback to proxy image.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1DA744270](v63, -1, -1);
      MEMORY[0x1DA744270](v62, -1, -1);
    }

    else
    {
    }

LABEL_40:
    v65 = swift_allocObject();
    *(v65 + 16) = v10;
    *a1 = &unk_1D9F45628;
    a1[1] = v65;
    type metadata accessor for ImageRepresentation.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v50 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v50, qword_1EE0F1240);
  v51 = sub_1D9F2AE6C();
  v52 = sub_1D9F2B43C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1D9E39000, v51, v52, "Image bundle identifier not found, passthrough as bundle image with no bundle identifier.", v53, 2u);
    MEMORY[0x1DA744270](v53, -1, -1);
  }

  *a1 = v36;
  a1[1] = v38;
  type metadata accessor for ImageRepresentation.Content(0);
  a1[2] = 0;
  a1[3] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D9F1D0F4(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F40, &qword_1D9F46170);
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9F1D1C0, 0, 0);
}

uint64_t sub_1D9F1D1C0()
{
  *(v0 + 224) = CFAbsoluteTimeGetCurrent();
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v1 = sub_1D9F2AE8C();
  *(v0 + 232) = __swift_project_value_buffer(v1, qword_1EE0F1240);
  v2 = sub_1D9F2AE6C();
  v3 = sub_1D9F2B42C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D9E39000, v2, v3, "Retrieving proxy image...", v4, 2u);
    MEMORY[0x1DA744270](v4, -1, -1);
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v10 = *(v0 + 192);

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1D9F1D444;
  swift_continuation_init();
  *(v0 + 136) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F48, qword_1D9F46178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
  sub_1D9F2B2DC();
  (*(v6 + 32))(boxed_opaque_existential_1, v5, v7);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D9F1DBA8;
  *(v0 + 104) = &block_descriptor_5;
  [v10 _retrieveImageDataWithReply_];
  (*(v6 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D9F1D444()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1D9F1D8B4;
  }

  else
  {
    v2 = sub_1D9F1D554;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9F1D554()
{
  v26 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D9F2AE6C();
    v4 = sub_1D9F2B42C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v2;
      *v7 = v1;
      *(v6 + 12) = 2048;
      v8 = v2;
      *(v6 + 14) = CFAbsoluteTimeGetCurrent() - v5;
      _os_log_impl(&dword_1D9E39000, v3, v4, "Retrieved proxy image as %@. (latency = %f)", v6, 0x16u);
      sub_1D9F21180(v7);
      MEMORY[0x1DA744270](v7, -1, -1);
      MEMORY[0x1DA744270](v6, -1, -1);
    }

    v9 = *(v0 + 184);

    v10 = [objc_allocWithZone(MEMORY[0x1E69AC878]) initWithINImage:v2 displayStyle:0 size:0];
    *v9 = v10;

    v11 = *(v0 + 8);
  }

  else
  {
    sub_1D9F2112C();
    v12 = swift_allocError();
    swift_willThrow();
    v13 = v12;
    v14 = sub_1D9F2AE6C();
    v15 = sub_1D9F2B43C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = *(*(v0 + 152) - 8);
      v19 = swift_task_alloc();
      (*(v18 + 16))(v19);
      v20 = sub_1D9F2B13C();
      v22 = v21;

      v23 = sub_1D9E71CA4(v20, v22, &v25);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_1D9E39000, v14, v15, "Error occurred while retrieving proxy image: %s.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1DA744270](v17, -1, -1);
      MEMORY[0x1DA744270](v16, -1, -1);
    }

    swift_willThrow();

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_1D9F1D8B4(uint64_t a1)
{
  v16 = v1;
  swift_willThrow();
  v2 = v1[30];
  v3 = v2;
  v4 = sub_1D9F2AE6C();
  v5 = sub_1D9F2B43C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v1[19] - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = sub_1D9F2B13C();
    v11 = v10;

    v12 = sub_1D9E71CA4(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1D9E39000, v4, v5, "Error occurred while retrieving proxy image: %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA744270](v7, -1, -1);
    MEMORY[0x1DA744270](v6, -1, -1);
  }

  swift_willThrow();

  v13 = v1[1];

  return v13();
}

uint64_t sub_1D9F1DABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D9E7ECAC;

  return sub_1D9F1D0F4(a1, v4);
}

uint64_t type metadata accessor for ImageRepresentation.Content(uint64_t a1)
{
  result = qword_1EE0F1620;
  if (!qword_1EE0F1620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9F1DBA8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F40, &qword_1D9F46170);
    sub_1D9F2B2EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F40, &qword_1D9F46170);
    sub_1D9F2B2FC();
  }
}

VisualActionPredictionSupport::ImageRepresentation::Size __swiftcall ImageRepresentation.Size.init(width:height:)(Swift::Double width, Swift::Double height)
{
  *v2 = width;
  v2[1] = height;
  result.height = height;
  result.width = width;
  return result;
}

uint64_t sub_1D9F1DC94()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_1D9F1DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F1DD9C(uint64_t a1)
{
  v2 = sub_1D9F20138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1DDD8(uint64_t a1)
{
  v2 = sub_1D9F20138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.Size.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DB8, &qword_1D9F45630);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F20138();
  sub_1D9F2BB8C();
  v8[15] = 0;
  sub_1D9F2B97C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D9F2B97C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ImageRepresentation.Size.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA743920](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1DA743920](*&v3);
}

uint64_t ImageRepresentation.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA743920](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA743920](*&v4);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.Size.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DC8, &qword_1D9F45638);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F20138();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v16 = 0;
    sub_1D9F2B86C();
    v10 = v9;
    v15 = 1;
    sub_1D9F2B86C();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9F1E248()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1DA743920](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1DA743920](*&v4);
  return sub_1D9F2BB4C();
}

void ImageRepresentation.size.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 size];
  if (v4)
  {
    v5 = v4;
    [v4 sizeValue];
  }

  else
  {
    v5 = [v3 inImage];
    [v5 _imageSize];
  }

  v8 = v6;
  v9 = v7;

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
}

uint64_t sub_1D9F1E390(uint64_t a1)
{
  v2 = sub_1D9F20288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E3CC(uint64_t a1)
{
  v2 = sub_1D9F20288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1E408()
{
  v1 = 0x6C616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1D9F1E468@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9F20FE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9F1E490(uint64_t a1)
{
  v2 = sub_1D9F2018C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E4CC(uint64_t a1)
{
  v2 = sub_1D9F2018C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1E508(uint64_t a1)
{
  v2 = sub_1D9F20234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E544(uint64_t a1)
{
  v2 = sub_1D9F20234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1E580(uint64_t a1)
{
  v2 = sub_1D9F201E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1E5BC(uint64_t a1)
{
  v2 = sub_1D9F201E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.RenderingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DD0, &qword_1D9F45640);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DD8, &qword_1D9F45648);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DE0, &qword_1D9F45650);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DE8, &qword_1D9F45658);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F2018C();
  sub_1D9F2BB8C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D9F20234();
      v9 = v21;
      sub_1D9F2B8FC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D9F201E0();
      v9 = v24;
      sub_1D9F2B8FC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D9F20288();
    sub_1D9F2B8FC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t ImageRepresentation.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.RenderingMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E10, &qword_1D9F45660);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E18, &qword_1D9F45668);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E20, &qword_1D9F45670);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E28, &unk_1D9F45678);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D9F2018C();
  v15 = v36;
  sub_1D9F2BB7C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D9F2B8DC();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D9E46190();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D9F2B6BC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v24 = &type metadata for ImageRepresentation.RenderingMode;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D9F20234();
          sub_1D9F2B7DC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D9F201E0();
          v26 = v17;
          sub_1D9F2B7DC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D9F20288();
        sub_1D9F2B7DC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void ImageRepresentation.renderingMode.getter(char *a1@<X8>)
{
  v3 = [*v1 inImage];
  v4 = [v3 _renderingMode];

  v5 = v4 == 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  *a1 = v5;
}

uint64_t sub_1D9F1F000(uint64_t a1)
{
  v2 = sub_1D9F20330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1F03C(uint64_t a1)
{
  v2 = sub_1D9F20330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1F078()
{
  if (*v0)
  {
    return 0x72616C7563726963;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D9F1F0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72616C7563726963 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F1F190(uint64_t a1)
{
  v2 = sub_1D9F202DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1F1CC(uint64_t a1)
{
  v2 = sub_1D9F202DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F1F208(uint64_t a1)
{
  v2 = sub_1D9F20384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F1F244(uint64_t a1)
{
  v2 = sub_1D9F20384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.DisplayStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E30, &qword_1D9F45688);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E38, &qword_1D9F45690);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E40, &qword_1D9F45698);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F202DC();
  sub_1D9F2BB8C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D9F20330();
    v14 = v18;
    sub_1D9F2B8FC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D9F20384();
    sub_1D9F2B8FC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ImageRepresentation.DisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t ImageRepresentation.DisplayStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E60, &qword_1D9F456A0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E68, &qword_1D9F456A8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75E70, &qword_1D9F456B0);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F202DC();
  v12 = v31;
  sub_1D9F2BB7C();
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
    v16 = sub_1D9F2B8DC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D9E4618C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D9F2B6BC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v22 = &type metadata for ImageRepresentation.DisplayStyle;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
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
        sub_1D9F20330();
        sub_1D9F2B7DC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D9F20384();
        sub_1D9F2B7DC();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

id ImageRepresentation.displayStyle.getter@<X0>(BOOL *a1@<X8>)
{
  result = [*v1 displayStyle];
  *a1 = result == 1;
  return result;
}

void ImageRepresentation.init(content:size:renderingMode:displayStyle:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v64 = a5;
  v9 = sub_1D9F2AC4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  v19 = type metadata accessor for ImageRepresentation.Content(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v63 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v61 - v24);
  v26 = *a2;
  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = *a3;
  v30 = *a4;
  v65 = a1;
  sub_1D9F203D8(a1, &v61 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v10 + 32))(v18, v25, v9);
      v42 = *(v10 + 16);
      v61 = (v10 + 8);
      if (v28)
      {
        v42(v16, v18, v9);
        v43 = objc_allocWithZone(MEMORY[0x1E69AC878]);
        v44 = sub_1D9F2ABFC();
        v35 = [v43 initWithURL:v44 renderingMode:v29 displayStyle:v30];

        v45 = *v61;
        (*v61)(v16, v9);
        v45(v18, v9);
      }

      else
      {
        v42(v13, v18, v9);
        v46 = objc_allocWithZone(MEMORY[0x1E69AC878]);
        v47 = sub_1D9F2ABFC();
        v35 = [v46 initWithURL:v47 width:v29 height:v30 renderingMode:v26 displayStyle:v27];

        v48 = *v61;
        (*v61)(v13, v9);
        v48(v18, v9);
      }
    }

    else
    {
      v36 = *v25;
      v37 = v25[1];
      v38 = objc_allocWithZone(MEMORY[0x1E69AC878]);
      v39 = sub_1D9F2AC7C();
      v35 = [v38 initWithData:v39 renderingMode:v29 displayStyle:v30];

      sub_1D9E4015C(v36, v37);
    }

LABEL_13:
    v32 = v65;
    if (!v35)
    {
      goto LABEL_14;
    }

LABEL_20:
    sub_1D9F2043C(v32);
    *v64 = v35;
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v40 = objc_allocWithZone(MEMORY[0x1E69AC878]);
    v41 = sub_1D9F2B11C();

    v35 = [v40 initWithImageNamed:v41 renderingMode:v29 displayStyle:v30];

    goto LABEL_13;
  }

  v32 = v65;
  if (EnumCaseMultiPayload != 3)
  {
    sub_1D9F2043C(v25);
    goto LABEL_14;
  }

  v33 = objc_allocWithZone(MEMORY[0x1E69AC878]);
  v34 = sub_1D9F2B11C();

  v35 = [v33 initWithSystemImageNamed_];

  if (v35)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v49 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v49, qword_1EE0F1240);
  v50 = v63;
  sub_1D9F203D8(v32, v63);
  v51 = sub_1D9F2AE6C();
  v52 = sub_1D9F2B43C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    *v53 = 136315138;
    sub_1D9F203D8(v50, v62);
    v55 = sub_1D9F2B13C();
    v57 = v56;
    sub_1D9F2043C(v50);
    v58 = sub_1D9E71CA4(v55, v57, &v66);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1D9E39000, v51, v52, "Unable to create LNImage from content %s.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1DA744270](v54, -1, -1);
    MEMORY[0x1DA744270](v53, -1, -1);
  }

  else
  {

    sub_1D9F2043C(v50);
  }

  v59 = objc_allocWithZone(MEMORY[0x1E69AC878]);
  v60 = sub_1D9F2B11C();
  v35 = [v59 initWithSystemImageNamed_];

  if (v35)
  {
    goto LABEL_20;
  }

  __break(1u);
}

unint64_t sub_1D9F200E0()
{
  result = qword_1ECB75DB0;
  if (!qword_1ECB75DB0)
  {
    sub_1D9F2AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DB0);
  }

  return result;
}

unint64_t sub_1D9F20138()
{
  result = qword_1ECB75DC0;
  if (!qword_1ECB75DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DC0);
  }

  return result;
}

unint64_t sub_1D9F2018C()
{
  result = qword_1ECB75DF0;
  if (!qword_1ECB75DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DF0);
  }

  return result;
}

unint64_t sub_1D9F201E0()
{
  result = qword_1ECB75DF8;
  if (!qword_1ECB75DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75DF8);
  }

  return result;
}

unint64_t sub_1D9F20234()
{
  result = qword_1ECB75E00;
  if (!qword_1ECB75E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E00);
  }

  return result;
}

unint64_t sub_1D9F20288()
{
  result = qword_1ECB75E08;
  if (!qword_1ECB75E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E08);
  }

  return result;
}

unint64_t sub_1D9F202DC()
{
  result = qword_1ECB75E48;
  if (!qword_1ECB75E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E48);
  }

  return result;
}

unint64_t sub_1D9F20330()
{
  result = qword_1ECB75E50;
  if (!qword_1ECB75E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E50);
  }

  return result;
}

unint64_t sub_1D9F20384()
{
  result = qword_1ECB75E58;
  if (!qword_1ECB75E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E58);
  }

  return result;
}

uint64_t sub_1D9F203D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageRepresentation.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9F2043C(uint64_t a1)
{
  v2 = type metadata accessor for ImageRepresentation.Content(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9F2049C()
{
  result = qword_1ECB75E78;
  if (!qword_1ECB75E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E78);
  }

  return result;
}

unint64_t sub_1D9F204F4()
{
  result = qword_1ECB75E80;
  if (!qword_1ECB75E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E80);
  }

  return result;
}

unint64_t sub_1D9F2054C()
{
  result = qword_1ECB75E88;
  if (!qword_1ECB75E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E88);
  }

  return result;
}

unint64_t sub_1D9F205A4()
{
  result = qword_1ECB75E90;
  if (!qword_1ECB75E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75E90);
  }

  return result;
}

void sub_1D9F20618(uint64_t a1)
{
  sub_1D9F2AC4C();
  if (v1 <= 0x3F)
  {
    sub_1D9F206C0(319);
    if (v2 <= 0x3F)
    {
      sub_1D9F20738();
      if (v3 <= 0x3F)
      {
        sub_1D9F20768();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9F206C0(uint64_t a1)
{
  if (!qword_1EE0F11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734F8, &qword_1D9F45A20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0F11B0);
    }
  }
}

uint64_t sub_1D9F20738()
{
  result = qword_1EE0F11A8;
  if (!qword_1EE0F11A8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE0F11A8);
  }

  return result;
}

void sub_1D9F20768()
{
  if (!qword_1ECB75E98)
  {
    v0 = sub_1D9F207B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB75E98);
    }
  }
}

unint64_t sub_1D9F207B0()
{
  result = qword_1ECB75EA0;
  if (!qword_1ECB75EA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECB75EA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageRepresentation.Size(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageRepresentation.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1D9F208FC()
{
  result = qword_1ECB75EA8;
  if (!qword_1ECB75EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EA8);
  }

  return result;
}

unint64_t sub_1D9F20954()
{
  result = qword_1ECB75EB0;
  if (!qword_1ECB75EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EB0);
  }

  return result;
}

unint64_t sub_1D9F209AC()
{
  result = qword_1ECB75EB8;
  if (!qword_1ECB75EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EB8);
  }

  return result;
}

unint64_t sub_1D9F20A04()
{
  result = qword_1ECB75EC0;
  if (!qword_1ECB75EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EC0);
  }

  return result;
}

unint64_t sub_1D9F20A5C()
{
  result = qword_1ECB75EC8;
  if (!qword_1ECB75EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EC8);
  }

  return result;
}

unint64_t sub_1D9F20AB4()
{
  result = qword_1ECB75ED0;
  if (!qword_1ECB75ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75ED0);
  }

  return result;
}

unint64_t sub_1D9F20B0C()
{
  result = qword_1ECB75ED8;
  if (!qword_1ECB75ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75ED8);
  }

  return result;
}

unint64_t sub_1D9F20B64()
{
  result = qword_1ECB75EE0;
  if (!qword_1ECB75EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EE0);
  }

  return result;
}

unint64_t sub_1D9F20BBC()
{
  result = qword_1ECB75EE8;
  if (!qword_1ECB75EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EE8);
  }

  return result;
}

unint64_t sub_1D9F20C14()
{
  result = qword_1ECB75EF0;
  if (!qword_1ECB75EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EF0);
  }

  return result;
}

unint64_t sub_1D9F20C6C()
{
  result = qword_1ECB75EF8;
  if (!qword_1ECB75EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75EF8);
  }

  return result;
}

unint64_t sub_1D9F20CC4()
{
  result = qword_1ECB75F00;
  if (!qword_1ECB75F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F00);
  }

  return result;
}

unint64_t sub_1D9F20D1C()
{
  result = qword_1ECB75F08;
  if (!qword_1ECB75F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F08);
  }

  return result;
}

unint64_t sub_1D9F20D74()
{
  result = qword_1ECB75F10;
  if (!qword_1ECB75F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F10);
  }

  return result;
}

unint64_t sub_1D9F20DCC()
{
  result = qword_1ECB75F18;
  if (!qword_1ECB75F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F18);
  }

  return result;
}

unint64_t sub_1D9F20E24()
{
  result = qword_1ECB75F20;
  if (!qword_1ECB75F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F20);
  }

  return result;
}

unint64_t sub_1D9F20E7C()
{
  result = qword_1ECB75F28;
  if (!qword_1ECB75F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F28);
  }

  return result;
}

unint64_t sub_1D9F20ED4()
{
  result = qword_1ECB75F30;
  if (!qword_1ECB75F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F30);
  }

  return result;
}

unint64_t sub_1D9F20F2C()
{
  result = qword_1ECB75F38;
  if (!qword_1ECB75F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F38);
  }

  return result;
}

void sub_1D9F20FA8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1D9F20FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

unint64_t sub_1D9F2112C()
{
  result = qword_1ECB75F50;
  if (!qword_1ECB75F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F50);
  }

  return result;
}

uint64_t sub_1D9F21180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB73B60, &unk_1D9F32210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9F211E8(void *a1, uint64_t a2)
{
  v4 = sub_1D9F2AEBC();
  v5 = MEMORY[0x1DA744500](a1);
  if (v5 == v4)
  {
    xpc_date_get_value(a1);
    sub_1D9F2ACBC();
    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9F2F8F0;
    *(v7 + 32) = v4;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }

  return result;
}

double sub_1D9F212E8(void *a1, uint64_t a2)
{
  sub_1D9F211E8(a1, &v6);
  if (v2)
  {
    v5 = v7;
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v5;
  }

  return result;
}

uint64_t ParkingLocation.spotID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ParkingLocation.spotID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ParkingLocation.zoneID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ParkingLocation.zoneID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::ParkingLocation __swiftcall ParkingLocation.init(spotID:zoneID:)(Swift::String spotID, Swift::String zoneID)
{
  *v2 = spotID;
  v2[1] = zoneID;
  result.zoneID = zoneID;
  result.spotID = spotID;
  return result;
}

uint64_t static ParkingLocation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9F214F0()
{
  if (*v0)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x4449746F7073;
  }
}

uint64_t sub_1D9F2151C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449746F7073 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656E6F7ALL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F215F0(uint64_t a1)
{
  v2 = sub_1D9F217FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F2162C(uint64_t a1)
{
  v2 = sub_1D9F217FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParkingLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F58, &qword_1D9F46190);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F217FC();
  sub_1D9F2BB8C();
  v12 = 0;
  v8 = v10[3];
  sub_1D9F2B95C();
  if (!v8)
  {
    v11 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9F217FC()
{
  result = qword_1ECB75F60;
  if (!qword_1ECB75F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F60);
  }

  return result;
}

uint64_t ParkingLocation.hash(into:)(uint64_t a1)
{
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t ParkingLocation.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t ParkingLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F68, &qword_1D9F46198);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F217FC();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D9F2B84C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D9F21B3C()
{
  result = qword_1ECB75F70;
  if (!qword_1ECB75F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F70);
  }

  return result;
}

unint64_t sub_1D9F21BB4()
{
  result = qword_1ECB75F78;
  if (!qword_1ECB75F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F78);
  }

  return result;
}

unint64_t sub_1D9F21C0C()
{
  result = qword_1ECB75F80;
  if (!qword_1ECB75F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F80);
  }

  return result;
}

unint64_t sub_1D9F21C64()
{
  result = qword_1ECB75F88;
  if (!qword_1ECB75F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75F88);
  }

  return result;
}

uint64_t sub_1D9F21CB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D9F2AF0C();
  v7 = MEMORY[0x1DA744500](a1);
  if (v7 == v6)
  {
    value = xpc_uint64_get_value(a1);
    result = swift_unknownObjectRelease();
    *a3 = value;
  }

  else
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }

  return result;
}

NSObject *ImageFrame.pixelBuffer.getter()
{
  v1 = *(v0 + 32);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      return _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v1, &v5);
    }

    else
    {
      sub_1D9E8EE20();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = v1;
    return v3;
  }
}

__n128 ImageFrame.metadata.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u32[2];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u32[2] = v3;
  return result;
}

id ImageFrame.buffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  v3 = *(v1 + 40);
  *(a1 + 8) = v3;
  return sub_1D9F21E60(v2, v3);
}

id sub_1D9F21E60(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_unknownObjectRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

__n128 ImageFrame.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ImageFrame.init(metadata:buffer:regionOfInterest:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a3 + 32);
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 48) = *a3;
  *(a4 + 64) = v10;
  *(a4 + 80) = v8;
  return result;
}

__n128 ImageFrame.init(from:hostTime:regionOfInterest:)@<Q0>(__CVBuffer *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  *a4 = a2;
  *(a4 + 8) = Width;
  *(a4 + 16) = Height;
  *(a4 + 24) = PixelFormatType;
  *(a4 + 32) = a1;
  *(a4 + 40) = 0;
  result = *a3;
  v13 = *(a3 + 16);
  *(a4 + 48) = *a3;
  *(a4 + 64) = v13;
  *(a4 + 80) = v8;
  return result;
}

unint64_t sub_1D9F21F50()
{
  v1 = 0x726566667562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1D9F21FAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9F247B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9F21FD4(uint64_t a1)
{
  v2 = sub_1D9F22280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F22010(uint64_t a1)
{
  v2 = sub_1D9F22280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageFrame.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75F98, &qword_1D9F46400);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v17 = *v1;
  v7 = *(v1 + 2);
  v8 = *(v1 + 6);
  v16 = *(v1 + 4);
  v22 = *(v1 + 40);
  v9 = v1[3];
  v13 = v1[4];
  v14 = v9;
  v15 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F22280();
  sub_1D9F2BB8C();
  v19 = v17;
  *&v20 = v7;
  DWORD2(v20) = v8;
  v23 = 0;
  sub_1D9F222D4();
  v10 = v18;
  sub_1D9F2B9AC();
  if (!v10)
  {
    v11 = v15;
    *&v19 = v16;
    BYTE8(v19) = v22;
    v23 = 1;
    sub_1D9F21E60(v16, v22);
    sub_1D9F22328();
    sub_1D9F2B9AC();
    sub_1D9F2237C(v19, SBYTE8(v19));
    v20 = v13;
    v19 = v14;
    v21 = v11;
    v23 = 2;
    sub_1D9F22398();
    sub_1D9F2B94C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9F22280()
{
  result = qword_1ECB75FA0;
  if (!qword_1ECB75FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FA0);
  }

  return result;
}

unint64_t sub_1D9F222D4()
{
  result = qword_1ECB75FA8;
  if (!qword_1ECB75FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FA8);
  }

  return result;
}

unint64_t sub_1D9F22328()
{
  result = qword_1ECB75FB0;
  if (!qword_1ECB75FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FB0);
  }

  return result;
}

void sub_1D9F2237C(id a1, char a2)
{
  if (a2 == 1)
  {
    swift_unknownObjectRelease();
  }

  else if (!a2)
  {
  }
}

unint64_t sub_1D9F22398()
{
  result = qword_1ECB75FB8;
  if (!qword_1ECB75FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FB8);
  }

  return result;
}

void ImageFrame.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75FC0, &qword_1D9F46408);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F22280();
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_1D9F22784();
    sub_1D9F2B89C();
    v30 = v37;
    v29 = v38;
    v9 = v39;
    v10 = v40;
    LOBYTE(v31) = 1;
    sub_1D9F227D8();
    sub_1D9F2B89C();
    v51 = v10;
    v28 = v9;
    v11 = v37;
    LOBYTE(v9) = v38;
    v52 = 2;
    sub_1D9F2282C();
    sub_1D9F2B83C();
    (*(v6 + 8))(v8, v5);
    v26 = *(&v48 + 1);
    v27 = v48;
    v24 = *(&v49 + 1);
    v25 = v49;
    v12 = v11;
    v23 = v11;
    v13 = v30;
    *&v31 = v30;
    v14 = v29;
    *(&v31 + 1) = v29;
    v15 = v9;
    v16 = v28;
    *&v32 = v28;
    v17 = v51;
    DWORD2(v32) = v51;
    *&v33 = v12;
    BYTE8(v33) = v15;
    v34 = v48;
    v35 = v49;
    v18 = v50;
    v36 = v50;
    v19 = v32;
    *a2 = v31;
    *(a2 + 16) = v19;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    *(a2 + 80) = v18;
    *(a2 + 48) = v21;
    *(a2 + 64) = v22;
    *(a2 + 32) = v20;
    sub_1D9E585C4(&v31, &v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = v13;
    v38 = v14;
    v39 = v16;
    v40 = v17;
    v41 = v23;
    v42 = v15;
    v43 = v27;
    v44 = v26;
    v45 = v25;
    v46 = v24;
    v47 = v18;
    sub_1D9E58D28(&v37);
  }
}

unint64_t sub_1D9F22784()
{
  result = qword_1ECB75FC8;
  if (!qword_1ECB75FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FC8);
  }

  return result;
}

unint64_t sub_1D9F227D8()
{
  result = qword_1ECB75FD0;
  if (!qword_1ECB75FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FD0);
  }

  return result;
}

unint64_t sub_1D9F2282C()
{
  result = qword_1ECB75FD8;
  if (!qword_1ECB75FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FD8);
  }

  return result;
}

uint64_t ImageFrame.hydrated()@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v26 = v1[2];
  v27 = v4;
  v28 = v1[4];
  v29 = *(v1 + 80);
  v5 = v1[1];
  v24 = *v1;
  v25 = v5;
  v6 = v26;
  v7 = BYTE8(v26);
  if (BYTE8(v26) == 1)
  {
    sub_1D9E585C4(&v24, v22);
    v8 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v6, &v21);
    if (v2)
    {
      v9 = v21;
      sub_1D9E8EE20();
      swift_allocError();
      *v10 = v9;
      return sub_1D9E58D28(&v24);
    }

    v6 = v8;
    result = sub_1D9E58D28(&v24);
    v7 = 0;
    v17 = v24;
    v13 = *(&v25 + 1);
    v12 = v25;
    v15 = v27;
    v16 = v28;
    v14 = v29;
  }

  else
  {
    v13 = *(&v25 + 1);
    v12 = v25;
    v23[0] = *(v1 + 41);
    *(v23 + 3) = *(v1 + 11);
    v19 = v27;
    v20 = v24;
    v18 = v28;
    v14 = v29;
    result = sub_1D9E585C4(&v24, v22);
    v16 = v18;
    v15 = v19;
    v17 = v20;
  }

  *a1 = v17;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 41) = v23[0];
  *(a1 + 44) = *(v23 + 3);
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
  *(a1 + 80) = v14;
  return result;
}

uint64_t sub_1D9F22A1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6675426567616D69;
  }

  else
  {
    v3 = 0x4965636166727573;
  }

  if (v2)
  {
    v4 = 0xE900000000000044;
  }

  else
  {
    v4 = 0xEB00000000726566;
  }

  if (*a2)
  {
    v5 = 0x6675426567616D69;
  }

  else
  {
    v5 = 0x4965636166727573;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726566;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9F2BA1C();
  }

  return v8 & 1;
}

uint64_t sub_1D9F22AD0()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F22B60(uint64_t a1)
{
  sub_1D9F2B18C();
}

uint64_t sub_1D9F22BDC()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F22C68@<X0>(char *a2@<X8>)
{
  v3 = sub_1D9F2B7BC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D9F22CC8(uint64_t *a1@<X8>)
{
  v2 = 0x4965636166727573;
  if (*v1)
  {
    v2 = 0x6675426567616D69;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xEB00000000726566;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D9F22D14()
{
  if (*v0)
  {
    return 0x6675426567616D69;
  }

  else
  {
    return 0x4965636166727573;
  }
}

uint64_t sub_1D9F22D5C@<X0>(char *a3@<X8>)
{
  v4 = sub_1D9F2B7BC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D9F22DC0(uint64_t a1)
{
  v2 = sub_1D9F237D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F22DFC(uint64_t a1)
{
  v2 = sub_1D9F237D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageFrame.Buffer.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = sub_1D9F2AD7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75FE0, &qword_1D9F46410);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v70 - v12;
  v14 = *v1;
  v15 = *(v1 + 8);
  if (v15 == 2 && !v14)
  {
    return result;
  }

  v70 = v6;
  LODWORD(v89) = v15;
  v71 = v11;
  v72 = v14;
  v74 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F237D4();
  v73 = v13;
  sub_1D9F2BB8C();
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D9EE9F78(v16, v17, &v80);
  if (!*(&v81 + 1))
  {
    sub_1D9E51FE8(&v80, &qword_1ECB75FF0, &unk_1D9F46418);
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  sub_1D9E3EE4C(&v80, &v85);
  if (v89)
  {
    if (v89 == 1)
    {
      XPCObject = v72;
      swift_unknownObjectRetain();
LABEL_13:
      v26 = *__swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      sub_1D9F2A93C();
      sub_1D9F2AD2C();
      v27 = sub_1D9F2B15C();

      xpc_dictionary_set_value(v26, (v27 + 32), XPCObject);

      LOBYTE(v80) = 0;
      sub_1D9E963F4(&qword_1EE0F3868, MEMORY[0x1E69695B0]);
      v28 = v73;
      v29 = v74;
      sub_1D9F2B9AC();
      if (!v3)
      {
        (*(v70 + 8))(v8, v5);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v85);
        return (*(v71 + 8))(v28, v29);
      }

      (*(v70 + 8))(v8, v5);
      swift_unknownObjectRelease();
      v23 = v3;
      v3 = 0;
      goto LABEL_15;
    }

    v80 = xmmword_1D9F37C60;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
    v21 = 0;
    v22 = 0x8000000000000000;
  }

  else
  {
    v20 = _s29VisualActionPredictionSupport15ImageProcessingO12getIOSurface7backingSo0H3RefaSo08CVBufferJ0a_tAC7FailureOYKFZ(v72, &v80);
    if (!v2)
    {
      v3 = 0;
      v25 = v20;
      XPCObject = IOSurfaceCreateXPCObject(v20);

      goto LABEL_13;
    }

    v3 = 0;
    v21 = *(&v80 + 1);
    v22 = v80;
  }

  sub_1D9E8EE20();
  v23 = swift_allocError();
  *v24 = v22;
  v24[1] = v21;
LABEL_15:
  if (qword_1ECB72A78 != -1)
  {
    swift_once();
  }

  v30 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v30, qword_1ECB738F8);
  v31 = v23;
  v32 = sub_1D9F2AE6C();
  v33 = sub_1D9F2B43C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v80 = v35;
    *v34 = 136315138;
    swift_getErrorValue();
    v36 = sub_1D9F2BAAC();
    v38 = sub_1D9E71CA4(v36, v37, &v80);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1D9E39000, v32, v33, "Error %s occurred when encoding IOSurface's XPC object to OOLV container.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1DA744270](v35, -1, -1);
    MEMORY[0x1DA744270](v34, -1, -1);
  }

  v19 = sub_1D9F0CAE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v40 = v19[2];
  v39 = v19[3];
  if (v40 >= v39 >> 1)
  {
    v19 = sub_1D9F0CAE4((v39 > 1), v40 + 1, 1, v19);
  }

  v19[2] = v40 + 1;
  v19[v40 + 4] = v23;
  __swift_destroy_boxed_opaque_existential_1(&v85);
LABEL_22:
  if (qword_1ECB72A78 != -1)
  {
    swift_once();
  }

  v41 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v41, qword_1ECB738F8);
  v42 = sub_1D9F2AE6C();
  v43 = sub_1D9F2B44C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1D9E39000, v42, v43, "Using slow and memory consuming encoding path for CVPixelBuffer. Please file a radar.", v44, 2u);
    MEMORY[0x1DA744270](v44, -1, -1);
  }

  if (!v89)
  {
    v48 = v72;
LABEL_34:
    sub_1D9EA1834(v48, v84, &v85);
    if (!v3)
    {
      v80 = v85;
      v81 = v86;
      v82 = v87;
      v83 = v88;
      v76 = v85;
      v77 = v86;
      v78 = v87;
      v79 = v88;
      v75 = 1;
      sub_1D9F24364();
      v54 = v73;
      v55 = v74;
      sub_1D9F2B9AC();
      (*(v71 + 8))(v54, v55);

      sub_1D9EA6B94(&v80);
    }

    v51 = v84[0];
    v52 = v84[1];
    sub_1D9E8EE20();
    v49 = swift_allocError();
    *v53 = v51;
    v53[1] = v52;

    goto LABEL_37;
  }

  if (v89 != 1)
  {
    v85 = xmmword_1D9F37C60;
    sub_1D9E8EE20();
    swift_willThrowTypedImpl();
    v46 = 0;
    v47 = 0x8000000000000000;
    goto LABEL_32;
  }

  v45 = _s29VisualActionPredictionSupport15ImageProcessingO15makePixelBuffer4fromSo11CVBufferRefaSo13OS_xpc_object_p_tAC7FailureOYKFZ(v72, &v85);
  if (!v3)
  {
    v48 = v45;
    v3 = 0;
    goto LABEL_34;
  }

  v46 = *(&v85 + 1);
  v47 = v85;
LABEL_32:
  sub_1D9E8EE20();
  v49 = swift_allocError();
  *v50 = v47;
  v50[1] = v46;
LABEL_37:
  v56 = v49;
  v57 = sub_1D9F2AE6C();
  v58 = sub_1D9F2B43C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v85 = v89;
    *v59 = 136315138;
    swift_getErrorValue();
    v60 = sub_1D9F2BAAC();
    v62 = sub_1D9E71CA4(v60, v61, &v85);

    *(v59 + 4) = v62;
    _os_log_impl(&dword_1D9E39000, v57, v58, "Error %s occurred when encoding CVPixelBuffer as ImageBuffer.", v59, 0xCu);
    v63 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x1DA744270](v63, -1, -1);
    MEMORY[0x1DA744270](v59, -1, -1);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1D9F0CAE4(0, v19[2] + 1, 1, v19);
  }

  v65 = v19[2];
  v64 = v19[3];
  if (v65 >= v64 >> 1)
  {
    v19 = sub_1D9F0CAE4((v64 > 1), v65 + 1, 1, v19);
  }

  v19[2] = v65 + 1;
  v19[v65 + 4] = v49;
  v66 = sub_1D9F2AE6C();
  v67 = sub_1D9F2B43C();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1D9E39000, v66, v67, "Failed to encode ImageFrame.Buffer as either IOSurface or ImageBuffer.", v68, 2u);
    MEMORY[0x1DA744270](v68, -1, -1);
  }

  sub_1D9F24310();
  swift_allocError();
  *v69 = v19;
  *(v69 + 8) = 0;
  swift_willThrow();
  return (*(v71 + 8))(v73, v74);
}

unint64_t sub_1D9F237D4()
{
  result = qword_1ECB75FE8;
  if (!qword_1ECB75FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FE8);
  }

  return result;
}

uint64_t ImageFrame.Buffer.init(from:)@<X0>(void *a1@<X0>, __CVBuffer **a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v63 - v4;
  v5 = sub_1D9F2AD7C();
  v69 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB76018, &qword_1D9F46428);
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F237D4();
  v11 = v72;
  sub_1D9F2BB7C();
  if (!v11)
  {
    v72 = a1;
    LOBYTE(v85) = 0;
    sub_1D9E963F4(&qword_1EE0F3860, MEMORY[0x1E69695D0]);
    v12 = v70;
    sub_1D9F2B83C();
    v13 = v8;
    v14 = v69;
    v15 = (*(v69 + 6))(v12, 1, v5);
    v16 = v71;
    if (v15 == 1)
    {
      sub_1D9E51FE8(v12, &qword_1ECB76010, &unk_1D9F3A9C0);
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = v12;
      v19 = v7;
      (*(v14 + 4))(v7, v18, v5);
      v20 = v14;
      v21 = v72[3];
      v22 = v72[4];
      __swift_project_boxed_opaque_existential_1(v72, v21);
      sub_1D9EE9F98(v21, v22, &v77);
      if (*(&v78 + 1))
      {
        v67 = v5;
        v70 = v13;
        sub_1D9E3EE4C(&v77, &v85);
        v23 = *__swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
        sub_1D9F2AD2C();
        v24 = sub_1D9F2B15C();

        v25 = xpc_dictionary_get_value(v23, (v24 + 32));

        if (v25)
        {
          (*(v69 + 1))(v19, v67);
          (*(v71 + 8))(v10, v70);
          __swift_destroy_boxed_opaque_existential_1(&v85);
          v26 = 1;
          goto LABEL_33;
        }

        v66 = v19;
        v27 = sub_1D9F2AD2C();
        v29 = v28;
        *&v77 = v27;
        *(&v77 + 1) = v28;
        LOBYTE(v78) = 2;
        v30 = sub_1D9E56B78();
        swift_willThrowTypedImpl();
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v31 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v31, qword_1ECB738F8);

        v32 = sub_1D9F2AE6C();
        v33 = sub_1D9F2B43C();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v64 = v34;
          v35 = swift_slowAlloc();
          v65 = v30;
          v36 = v35;
          *&v73[0] = v35;
          *v34 = 136315138;
          *&v77 = v27;
          *(&v77 + 1) = v29;
          LOBYTE(v78) = 2;
          v89 = v33;
          v37 = sub_1D9F2BAAC();
          v39 = v27;
          v40 = sub_1D9E71CA4(v37, v38, v73);

          v41 = v64;
          *(v64 + 1) = v40;
          _os_log_impl(&dword_1D9E39000, v32, v89, "Error %s occurred when decoding IOSurface's XPC object from OOLV container.", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x1DA744270](v36, -1, -1);
          MEMORY[0x1DA744270](v41, -1, -1);
        }

        else
        {

          v39 = v27;
        }

        v13 = v70;
        v70 = swift_allocError();
        *v42 = v39;
        *(v42 + 8) = v29;
        *(v42 + 16) = 2;

        v43 = sub_1D9F0CAE4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v45 = v43[2];
        v44 = v43[3];
        v46 = v43;
        if (v45 >= v44 >> 1)
        {
          v46 = sub_1D9F0CAE4((v44 > 1), v45 + 1, 1, v43);
        }

        (*(v69 + 1))(v66, v67);
        v46[2] = v45 + 1;
        v47 = &v46[v45];
        v17 = v46;
        v47[4] = v70;
        __swift_destroy_boxed_opaque_existential_1(&v85);
      }

      else
      {
        (*(v20 + 1))(v19, v5);
        sub_1D9E51FE8(&v77, &unk_1ECB76038, &qword_1D9F46438);
        v17 = MEMORY[0x1E69E7CC0];
      }

      v16 = v71;
    }

    v90 = 1;
    sub_1D9F243B8();
    sub_1D9F2B83C();
    v69 = v10;
    v70 = v13;
    v77 = v85;
    v78 = v86;
    v79 = v87;
    v80 = v88;
    v82 = v85;
    v83 = v86;
    v48 = *(&v87 + 1);
    v84 = v87;
    v81 = v88;
    if (BYTE8(v87) == 2)
    {
      v49 = v70;
      v54 = v69;
      if (v17[2])
      {
        if (qword_1ECB72A78 != -1)
        {
          swift_once();
        }

        v55 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v55, qword_1ECB738F8);
        v56 = sub_1D9F2AE6C();
        v57 = sub_1D9F2B43C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_1D9E39000, v56, v57, "Failed to decode ImageFrame.Buffer from either IOSurface or ImageBuffer.", v58, 2u);
          MEMORY[0x1DA744270](v58, -1, -1);
        }

        sub_1D9F24310();
        swift_allocError();
        *v59 = v17;
        *(v59 + 8) = 1;
        swift_willThrow();
        (*(v16 + 8))(v54, v49);
        a1 = v72;
        goto LABEL_30;
      }

      (*(v16 + 8))(v69, v70);

      v25 = 0;
      v26 = 2;
    }

    else
    {
      if (qword_1ECB72A78 != -1)
      {
        swift_once();
      }

      v50 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v50, qword_1ECB738F8);
      v51 = sub_1D9F2AE6C();
      v52 = sub_1D9F2B44C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1D9E39000, v51, v52, "Using slow and memory consuming decoding path for CVPixelBuffer. Please file a radar.", v53, 2u);
        MEMORY[0x1DA744270](v53, -1, -1);
      }

      v73[0] = v82;
      v73[1] = v83;
      v74 = v84;
      v75 = v48;
      v76 = v81;
      v25 = sub_1D9EA4B04(v73);
      (*(v71 + 8))(v69, v70);
      sub_1D9E51FE8(&v77, &qword_1ECB76030, &qword_1D9F46430);

      v26 = 0;
    }

LABEL_33:
    v60 = v72;
    v62 = v68;
    *v68 = v25;
    *(v62 + 8) = v26;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

LABEL_30:
  v60 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

unint64_t sub_1D9F24310()
{
  result = qword_1ECB75FF8;
  if (!qword_1ECB75FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75FF8);
  }

  return result;
}

unint64_t sub_1D9F24364()
{
  result = qword_1ECB76000;
  if (!qword_1ECB76000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76000);
  }

  return result;
}

unint64_t sub_1D9F243B8()
{
  result = qword_1ECB76028;
  if (!qword_1ECB76028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76028);
  }

  return result;
}

uint64_t sub_1D9F2441C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9F24464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D9F244A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D9F244DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9F24524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1D9F245A8()
{
  result = qword_1ECB76048;
  if (!qword_1ECB76048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76048);
  }

  return result;
}

unint64_t sub_1D9F24600()
{
  result = qword_1ECB76050;
  if (!qword_1ECB76050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76050);
  }

  return result;
}

unint64_t sub_1D9F24658()
{
  result = qword_1ECB76058;
  if (!qword_1ECB76058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76058);
  }

  return result;
}

unint64_t sub_1D9F246B0()
{
  result = qword_1ECB76060;
  if (!qword_1ECB76060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76060);
  }

  return result;
}

unint64_t sub_1D9F24708()
{
  result = qword_1ECB76068;
  if (!qword_1ECB76068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76068);
  }

  return result;
}

unint64_t sub_1D9F24760()
{
  result = qword_1ECB76070;
  if (!qword_1ECB76070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76070);
  }

  return result;
}

uint64_t sub_1D9F247B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726566667562 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F49D30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t UncheckedSendableBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t UncheckedSendableBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9F24B3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D9F24C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9F24C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DateTimeSchedule.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DateTimeSchedule(0) + 20);

  return sub_1D9F24C20(v3, a1);
}

uint64_t type metadata accessor for DateTimeSchedule(uint64_t a1)
{
  result = qword_1EE0F2AA0;
  if (!qword_1EE0F2AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DateTimeSchedule.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DateTimeSchedule(0) + 20);

  return sub_1D9F24C98(a1, v3);
}

uint64_t DateTimeSchedule.isAllDay.setter(char a1)
{
  result = type metadata accessor for DateTimeSchedule(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1D9F24EE0()
{
  v1 = 0x796C6B656577;
  if (*v0 != 1)
  {
    v1 = 0x796C68746E6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C696164;
  }
}

uint64_t sub_1D9F24F34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9F2A404(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9F24F5C(uint64_t a1)
{
  v2 = sub_1D9F254A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F24F98(uint64_t a1)
{
  v2 = sub_1D9F254A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F24FD4(uint64_t a1)
{
  v2 = sub_1D9F255A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25010(uint64_t a1)
{
  v2 = sub_1D9F255A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F2504C(uint64_t a1)
{
  v2 = sub_1D9F254FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25088(uint64_t a1)
{
  v2 = sub_1D9F254FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F250C4(uint64_t a1)
{
  v2 = sub_1D9F25550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25100(uint64_t a1)
{
  v2 = sub_1D9F25550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.Recurrence.Frequency.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76088, &qword_1D9F46988);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76090, &qword_1D9F46990);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76098, &qword_1D9F46998);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760A0, &qword_1D9F469A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F254A8();
  sub_1D9F2BB8C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D9F25550();
      v9 = v21;
      sub_1D9F2B8FC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D9F254FC();
      v9 = v24;
      sub_1D9F2B8FC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D9F255A4();
    sub_1D9F2B8FC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D9F254A8()
{
  result = qword_1ECB760A8;
  if (!qword_1ECB760A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760A8);
  }

  return result;
}

unint64_t sub_1D9F254FC()
{
  result = qword_1ECB760B0;
  if (!qword_1ECB760B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760B0);
  }

  return result;
}

unint64_t sub_1D9F25550()
{
  result = qword_1ECB760B8;
  if (!qword_1ECB760B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760B8);
  }

  return result;
}

unint64_t sub_1D9F255A4()
{
  result = qword_1ECB760C0;
  if (!qword_1ECB760C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB760C0);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.Frequency.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760C8, &qword_1D9F469A8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760D0, &qword_1D9F469B0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760D8, &qword_1D9F469B8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760E0, &unk_1D9F469C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D9F254A8();
  v15 = v36;
  sub_1D9F2BB7C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D9F2B8DC();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D9E46190();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D9F2B6BC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
      *v24 = &type metadata for DateTimeSchedule.Recurrence.Frequency;
      sub_1D9F2B7EC();
      sub_1D9F2B6AC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D9F25550();
          sub_1D9F2B7DC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D9F254FC();
          v26 = v17;
          sub_1D9F2B7DC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D9F255A4();
        sub_1D9F2B7DC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D9F25BE4()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9F25CB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9F2A514(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9F25CD8(uint64_t a1)
{
  v2 = sub_1D9F267A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25D14(uint64_t a1)
{
  v2 = sub_1D9F267A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25D50(uint64_t a1)
{
  v2 = sub_1D9F2689C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25D8C(uint64_t a1)
{
  v2 = sub_1D9F2689C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25DC8(uint64_t a1)
{
  v2 = sub_1D9F269EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25E04(uint64_t a1)
{
  v2 = sub_1D9F269EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25E40(uint64_t a1)
{
  v2 = sub_1D9F26848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25E7C(uint64_t a1)
{
  v2 = sub_1D9F26848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25EB8(uint64_t a1)
{
  v2 = sub_1D9F267F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25EF4(uint64_t a1)
{
  v2 = sub_1D9F267F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25F30(uint64_t a1)
{
  v2 = sub_1D9F268F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25F6C(uint64_t a1)
{
  v2 = sub_1D9F268F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F25FA8(uint64_t a1)
{
  v2 = sub_1D9F26998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F25FE4(uint64_t a1)
{
  v2 = sub_1D9F26998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9F26020(uint64_t a1)
{
  v2 = sub_1D9F26944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F2605C(uint64_t a1)
{
  v2 = sub_1D9F26944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.Recurrence.DayOfWeek.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760E8, &qword_1D9F469D0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760F0, &qword_1D9F469D8);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB760F8, &qword_1D9F469E0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76100, &qword_1D9F469E8);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76108, &qword_1D9F469F0);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76110, &qword_1D9F469F8);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76118, &qword_1D9F46A00);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76120, &qword_1D9F46A08);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F267A0();
  v56 = v20;
  sub_1D9F2BB8C();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1D9F26998();
        v33 = v56;
        v32 = v57;
        sub_1D9F2B8FC();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1D9F26944();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1D9F2B8FC();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1D9F269EC();
      v34 = v56;
      v35 = v57;
      sub_1D9F2B8FC();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1D9F26848();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1D9F2B8FC();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1D9F267F4();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1D9F2B8FC();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1D9F268F0();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1D9F2B8FC();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1D9F2689C();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1D9F2B8FC();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

unint64_t sub_1D9F267A0()
{
  result = qword_1ECB76128;
  if (!qword_1ECB76128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76128);
  }

  return result;
}

unint64_t sub_1D9F267F4()
{
  result = qword_1ECB76130;
  if (!qword_1ECB76130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76130);
  }

  return result;
}

unint64_t sub_1D9F26848()
{
  result = qword_1ECB76138;
  if (!qword_1ECB76138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76138);
  }

  return result;
}

unint64_t sub_1D9F2689C()
{
  result = qword_1ECB76140;
  if (!qword_1ECB76140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76140);
  }

  return result;
}

unint64_t sub_1D9F268F0()
{
  result = qword_1ECB76148;
  if (!qword_1ECB76148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76148);
  }

  return result;
}

unint64_t sub_1D9F26944()
{
  result = qword_1ECB76150;
  if (!qword_1ECB76150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76150);
  }

  return result;
}

unint64_t sub_1D9F26998()
{
  result = qword_1ECB76158;
  if (!qword_1ECB76158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76158);
  }

  return result;
}

unint64_t sub_1D9F269EC()
{
  result = qword_1ECB76160;
  if (!qword_1ECB76160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76160);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.DayOfWeek.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76168, &qword_1D9F46A10);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76170, &qword_1D9F46A18);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76178, &qword_1D9F46A20);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76180, &qword_1D9F46A28);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76188, &qword_1D9F46A30);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v47 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76190, &qword_1D9F46A38);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76198, &qword_1D9F46A40);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761A0, &qword_1D9F46A48);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D9F267A0();
  v22 = v69;
  sub_1D9F2BB7C();
  if (!v22)
  {
    v23 = v16;
    v47 = v14;
    v48 = v13;
    v24 = v65;
    v25 = v66;
    v26 = v67;
    v69 = v18;
    v27 = sub_1D9F2B8DC();
    v28 = (2 * *(v27 + 16)) | 1;
    v70 = v27;
    v71 = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = sub_1D9E46194();
    v30 = v20;
    if (v29 != 7 && v72 == v73 >> 1)
    {
      v74 = v29;
      if (v29 > 2u)
      {
        if (v29 > 4u)
        {
          v33 = v64;
          v43 = v69;
          if (v29 == 5)
          {
            v75 = 5;
            sub_1D9F26848();
            v44 = v62;
            sub_1D9F2B7DC();
            (*(v58 + 8))(v44, v59);
          }

          else
          {
            v75 = 6;
            sub_1D9F267F4();
            sub_1D9F2B7DC();
            (*(v60 + 8))(v26, v61);
          }

          (*(v43 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v68;
        }

        else
        {
          v31 = v68;
          v32 = v69;
          v33 = v64;
          if (v29 == 3)
          {
            v75 = 3;
            sub_1D9F268F0();
            sub_1D9F2B7DC();
            (*(v54 + 8))(v24, v55);
          }

          else
          {
            v75 = 4;
            sub_1D9F2689C();
            sub_1D9F2B7DC();
            (*(v56 + 8))(v25, v57);
          }

          (*(v32 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v31;
        }

        goto LABEL_24;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          v75 = 2;
          sub_1D9F26944();
          v46 = v63;
          sub_1D9F2B7DC();
          v40 = *(v52 + 8);
          v41 = v46;
          v45 = v53;
          goto LABEL_19;
        }

        v75 = 1;
        sub_1D9F26998();
        v39 = v48;
        sub_1D9F2B7DC();
        v40 = *(v50 + 8);
        v41 = v39;
        v42 = &v77;
      }

      else
      {
        v75 = 0;
        sub_1D9F269EC();
        sub_1D9F2B7DC();
        v40 = *(v49 + 8);
        v41 = v23;
        v42 = &v76;
      }

      v45 = *(v42 - 32);
LABEL_19:
      v40(v41, v45);
      (*(v69 + 8))(v30, v17);
      swift_unknownObjectRelease();
      v37 = v68;
      v33 = v64;
LABEL_24:
      *v33 = v74;
      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    v34 = sub_1D9F2B6BC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v36 = &type metadata for DateTimeSchedule.Recurrence.DayOfWeek;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v69 + 8))(v30, v17);
    swift_unknownObjectRelease();
  }

  v37 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t DateTimeSchedule.Recurrence.daysOfTheWeek.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static DateTimeSchedule.Recurrence.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 1);
    v3 = *(a2 + 1);
    if (v2)
    {
      if (v3 && (sub_1D9E4AE4C(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D9F274AC()
{
  if (*v0)
  {
    return 0x6854664F73796164;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_1D9F274F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F275E4(uint64_t a1)
{
  v2 = sub_1D9F27840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F27620(uint64_t a1)
{
  v2 = sub_1D9F27840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.Recurrence.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761A8, &qword_1D9F46A50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F27840();
  sub_1D9F2BB8C();
  v13 = v8;
  v12 = 0;
  sub_1D9F27894();
  sub_1D9F2B9AC();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761C0, &qword_1D9F46A58);
    sub_1D9F27D68(&qword_1ECB761C8, sub_1D9F278E8, MEMORY[0x1E69E6300]);
    sub_1D9F2B94C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D9F27840()
{
  result = qword_1ECB761B0;
  if (!qword_1ECB761B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761B0);
  }

  return result;
}

unint64_t sub_1D9F27894()
{
  result = qword_1ECB761B8;
  if (!qword_1ECB761B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761B8);
  }

  return result;
}

unint64_t sub_1D9F278E8()
{
  result = qword_1ECB761D0;
  if (!qword_1ECB761D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761D0);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x1DA7438F0](*v0);
  if (!v1)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  result = MEMORY[0x1DA7438F0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x1DA7438F0](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t DateTimeSchedule.Recurrence.hashValue.getter()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.Recurrence.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t DateTimeSchedule.Recurrence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761D8, &qword_1D9F46A60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F27840();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_1D9F27D14();
  sub_1D9F2B89C();
  v9 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761C0, &qword_1D9F46A58);
  v13 = 1;
  sub_1D9F27D68(&qword_1ECB761E8, sub_1D9F27DE0, MEMORY[0x1E69E6330]);
  sub_1D9F2B83C();
  (*(v6 + 8))(v8, v5);
  v10 = v12[1];
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9F27C6C()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.Recurrence.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F27CC4()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.Recurrence.hash(into:)();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9F27D14()
{
  result = qword_1ECB761E0;
  if (!qword_1ECB761E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761E0);
  }

  return result;
}

uint64_t sub_1D9F27D68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB761C0, &qword_1D9F46A58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9F27DE0()
{
  result = qword_1ECB761F0;
  if (!qword_1ECB761F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB761F0);
  }

  return result;
}

uint64_t sub_1D9F27E34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 1);
    v3 = *(a2 + 1);
    if (v2)
    {
      if (v3 && (sub_1D9E4AE4C(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DateTimeSchedule.recurrence.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DateTimeSchedule(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D9EF0AC8(v4, v5);
}

uint64_t DateTimeSchedule.recurrence.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DateTimeSchedule(0) + 28));
  result = sub_1D9EF0ADC(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DateTimeSchedule.init(startDate:endDate:isAllDay:recurrence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4[1];
  v17 = *a4;
  v10 = sub_1D9F2AD0C();
  v11 = *(*(v10 - 8) + 56);
  v11(a5, 1, 1, v10);
  v12 = type metadata accessor for DateTimeSchedule(0);
  v13 = v12[5];
  v11(a5 + v13, 1, 1, v10);
  v14 = v12[6];
  v15 = (a5 + v12[7]);
  *v15 = xmmword_1D9F420A0;
  sub_1D9F24C98(a1, a5);
  sub_1D9F24C98(a2, a5 + v13);
  *(a5 + v14) = a3;
  result = sub_1D9EF0ADC(*v15, v15[1]);
  *v15 = v17;
  v15[1] = v9;
  return result;
}

uint64_t sub_1D9F28068()
{
  v1 = 0x7461447472617473;
  v2 = 0x7961446C6C417369;
  if (*v0 != 2)
  {
    v2 = 0x6E65727275636572;
  }

  if (*v0)
  {
    v1 = 0x65746144646E65;
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

uint64_t sub_1D9F280EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9F2A75C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9F28114(uint64_t a1)
{
  v2 = sub_1D9F29344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9F28150(uint64_t a1)
{
  v2 = sub_1D9F29344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeSchedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB761F8, &qword_1D9F46A68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F29344();
  sub_1D9F2BB8C();
  LOBYTE(v13) = 0;
  sub_1D9F2AD0C();
  sub_1D9F2A8D0(&qword_1ECB73510, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D9F2B94C();
  if (!v2)
  {
    v9 = type metadata accessor for DateTimeSchedule(0);
    LOBYTE(v13) = 1;
    sub_1D9F2B94C();
    LOBYTE(v13) = 2;
    sub_1D9F2B91C();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 3;
    sub_1D9EF0AC8(v13, v11);
    sub_1D9F29398();
    sub_1D9F2B94C();
    sub_1D9EF0ADC(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DateTimeSchedule.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9F2AD0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  sub_1D9F24C20(v2, &v22 - v11);
  v13 = *(v4 + 48);
  if (v13(v12, 1, v3) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_1D9F2BB1C();
    sub_1D9F2A8D0(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D9F2B0EC();
    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for DateTimeSchedule(0);
  sub_1D9F24C20(v2 + v14[5], v10);
  if (v13(v10, 1, v3) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1D9F2BB1C();
    sub_1D9F2A8D0(&qword_1ECB75238, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D9F2B0EC();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + v14[6]) != 2)
  {
    sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  v15 = (v2 + v14[7]);
  v16 = *(v15 + 1);
  if (v16 == 1)
  {
    return sub_1D9F2BB1C();
  }

  v17 = *v15;
  sub_1D9F2BB1C();
  MEMORY[0x1DA7438F0](v17);
  if (!v16)
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();
  result = MEMORY[0x1DA7438F0](*(v16 + 16));
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = (v16 + 32);
    do
    {
      v21 = *v20++;
      result = MEMORY[0x1DA7438F0](v21);
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t DateTimeSchedule.hashValue.getter()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t DateTimeSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v28 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76210, &qword_1D9F46A70);
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v28 - v7;
  v9 = type metadata accessor for DateTimeSchedule(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2AD0C();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v31 = v10[7];
  v14(&v12[v31], 1, 1, v13);
  v15 = v10[8];
  v12[v15] = 2;
  v16 = &v12[v10[9]];
  *v16 = xmmword_1D9F420A0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F29344();
  v34 = v8;
  v17 = v37;
  sub_1D9F2BB7C();
  if (v17)
  {
    v27 = a1;
  }

  else
  {
    v28 = v16;
    v29 = v15;
    v37 = a1;
    v18 = v32;
    v19 = v33;
    LOBYTE(v38) = 0;
    sub_1D9F2A8D0(&qword_1ECB73548, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v20 = v35;
    v21 = v34;
    sub_1D9F2B83C();
    sub_1D9F24C98(v20, v12);
    LOBYTE(v38) = 1;
    sub_1D9F2B83C();
    sub_1D9F24C98(v19, &v12[v31]);
    LOBYTE(v38) = 2;
    v12[v29] = sub_1D9F2B80C();
    v40 = 3;
    sub_1D9F29448();
    v23 = v36;
    sub_1D9F2B83C();
    (*(v18 + 8))(v21, v23);
    v24 = v38;
    v25 = v39;
    v26 = v28;
    sub_1D9EF0ADC(*v28, v28[1]);
    *v26 = v24;
    v26[1] = v25;
    sub_1D9F2949C(v12, v30);
    v27 = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D9F293EC(v12);
}

uint64_t sub_1D9F28BC0()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9F28C04()
{
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)(v1);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76080, &qword_1D9F46980);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76348, &qword_1D9F47A08);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51[-v17];
  v19 = *(v16 + 48);
  v57 = a1;
  sub_1D9F24C20(a1, &v51[-v17]);
  sub_1D9F24C20(a2, &v18[v19]);
  v20 = *(v5 + 48);
  if (v20(v18, 1, v4) == 1)
  {
    if (v20(&v18[v19], 1, v4) == 1)
    {
      v53 = v5;
      v54 = a2;
      sub_1D9E51FE8(v18, &qword_1ECB76080, &qword_1D9F46980);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1D9F24C20(v18, v11);
  if (v20(&v18[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1D9E51FE8(v18, &qword_1ECB76348, &qword_1D9F47A08);
    return 0;
  }

  v54 = a2;
  v21 = *(v5 + 32);
  v22 = v5;
  v23 = v56;
  v21(v56, &v18[v19], v4);
  sub_1D9F2A8D0(&unk_1ECB76350, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v52 = sub_1D9F2B10C();
  v53 = v22;
  v24 = *(v22 + 8);
  v24(v23, v4);
  v24(v11, v4);
  sub_1D9E51FE8(v18, &qword_1ECB76080, &qword_1D9F46980);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v25 = type metadata accessor for DateTimeSchedule(0);
  v26 = v25[5];
  v27 = *(v12 + 48);
  v28 = v57;
  sub_1D9F24C20(v57 + v26, v15);
  v29 = v54 + v26;
  v30 = v54;
  sub_1D9F24C20(v29, &v15[v27]);
  if (v20(v15, 1, v4) == 1)
  {
    if (v20(&v15[v27], 1, v4) == 1)
    {
      sub_1D9E51FE8(v15, &qword_1ECB76080, &qword_1D9F46980);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v31 = v55;
  sub_1D9F24C20(v15, v55);
  if (v20(&v15[v27], 1, v4) == 1)
  {
    (*(v53 + 8))(v31, v4);
LABEL_13:
    sub_1D9E51FE8(v15, &qword_1ECB76348, &qword_1D9F47A08);
    return 0;
  }

  v32 = v53;
  v33 = v56;
  (*(v53 + 32))(v56, &v15[v27], v4);
  sub_1D9F2A8D0(&unk_1ECB76350, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v34 = sub_1D9F2B10C();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v31, v4);
  sub_1D9E51FE8(v15, &qword_1ECB76080, &qword_1D9F46980);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v36 = v25[6];
  v37 = *(v28 + v36);
  v38 = *(v30 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }

LABEL_20:
    v40 = v25[7];
    v41 = v30;
    v42 = *(v28 + v40);
    v43 = *(v28 + v40 + 8);
    v44 = (v41 + v40);
    v45 = *v44;
    v39 = v44[1];
    if (v43 == 1)
    {
      sub_1D9EF0AC8(v42, 1);
      if (v39 == 1)
      {
        sub_1D9EF0AC8(v45, 1);
        sub_1D9EF0ADC(v42, 1);
        return v39;
      }

      sub_1D9EF0AC8(v45, v39);
      goto LABEL_26;
    }

    if (v39 == 1)
    {
      sub_1D9EF0AC8(v42, v43);
      sub_1D9EF0AC8(v45, 1);
      sub_1D9EF0AC8(v42, v43);

LABEL_26:
      sub_1D9EF0ADC(v42, v43);
      v46 = v45;
      v47 = v39;
LABEL_31:
      sub_1D9EF0ADC(v46, v47);
      return 0;
    }

    if (v45 != v42)
    {
      goto LABEL_28;
    }

    if (v43)
    {
      if (!v39)
      {
LABEL_28:
        sub_1D9EF0AC8(v42, v43);
        v48 = v43;
LABEL_29:
        sub_1D9EF0AC8(v45, v39);
        sub_1D9EF0AC8(v42, v48);
        sub_1D9EF0ADC(v45, v39);
LABEL_30:

        v46 = v42;
        v47 = v43;
        goto LABEL_31;
      }

      v50 = sub_1D9E4AE4C(v43, v39);
      sub_1D9EF0AC8(v42, v43);
      sub_1D9EF0AC8(v45, v39);
      sub_1D9EF0AC8(v42, v43);
      sub_1D9EF0ADC(v45, v39);
      if ((v50 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1D9EF0AC8(v42, 0);
      v48 = 0;
      if (v39)
      {
        goto LABEL_29;
      }

      sub_1D9EF0AC8(v45, 0);
      sub_1D9EF0AC8(v42, 0);
      sub_1D9EF0ADC(v45, 0);
    }

    sub_1D9EF0ADC(v42, v43);
    return 1;
  }

  v39 = 0;
  if (v38 != 2 && ((v38 ^ v37) & 1) == 0)
  {
    goto LABEL_20;
  }

  return v39;
}

unint64_t sub_1D9F29344()
{
  result = qword_1ECB76200;
  if (!qword_1ECB76200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76200);
  }

  return result;
}

unint64_t sub_1D9F29398()
{
  result = qword_1ECB76208;
  if (!qword_1ECB76208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76208);
  }

  return result;
}

uint64_t sub_1D9F293EC(uint64_t a1)
{
  v2 = type metadata accessor for DateTimeSchedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9F29448()
{
  result = qword_1ECB76218;
  if (!qword_1ECB76218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76218);
  }

  return result;
}

uint64_t sub_1D9F2949C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateTimeSchedule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9F29504()
{
  result = qword_1ECB76220;
  if (!qword_1ECB76220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76220);
  }

  return result;
}

unint64_t sub_1D9F2955C()
{
  result = qword_1ECB76228;
  if (!qword_1ECB76228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB761C0, &qword_1D9F46A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76228);
  }

  return result;
}

unint64_t sub_1D9F295C4()
{
  result = qword_1ECB76230;
  if (!qword_1ECB76230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76230);
  }

  return result;
}

unint64_t sub_1D9F2961C()
{
  result = qword_1ECB76238;
  if (!qword_1ECB76238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76238);
  }

  return result;
}

void sub_1D9F296E0(uint64_t a1)
{
  sub_1D9F2979C(319);
  if (v1 <= 0x3F)
  {
    sub_1D9E3F9EC(319, &qword_1EE0F22F8, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1D9E3F9EC(319, qword_1EE0F2AB0, &type metadata for DateTimeSchedule.Recurrence);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9F2979C(uint64_t a1)
{
  if (!qword_1EE0F3870)
  {
    sub_1D9F2AD0C();
    v1 = sub_1D9F2B59C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0F3870);
    }
  }
}

unint64_t sub_1D9F29908()
{
  result = qword_1ECB76248;
  if (!qword_1ECB76248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76248);
  }

  return result;
}

unint64_t sub_1D9F29960()
{
  result = qword_1ECB76250;
  if (!qword_1ECB76250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76250);
  }

  return result;
}

unint64_t sub_1D9F299B8()
{
  result = qword_1ECB76258;
  if (!qword_1ECB76258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76258);
  }

  return result;
}

unint64_t sub_1D9F29A10()
{
  result = qword_1ECB76260;
  if (!qword_1ECB76260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76260);
  }

  return result;
}

unint64_t sub_1D9F29A68()
{
  result = qword_1ECB76268;
  if (!qword_1ECB76268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76268);
  }

  return result;
}

unint64_t sub_1D9F29AC0()
{
  result = qword_1ECB76270;
  if (!qword_1ECB76270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76270);
  }

  return result;
}

unint64_t sub_1D9F29B18()
{
  result = qword_1ECB76278;
  if (!qword_1ECB76278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76278);
  }

  return result;
}

unint64_t sub_1D9F29B70()
{
  result = qword_1ECB76280;
  if (!qword_1ECB76280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76280);
  }

  return result;
}

unint64_t sub_1D9F29BC8()
{
  result = qword_1ECB76288;
  if (!qword_1ECB76288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76288);
  }

  return result;
}

unint64_t sub_1D9F29C20()
{
  result = qword_1ECB76290;
  if (!qword_1ECB76290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76290);
  }

  return result;
}

unint64_t sub_1D9F29C78()
{
  result = qword_1ECB76298;
  if (!qword_1ECB76298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76298);
  }

  return result;
}

unint64_t sub_1D9F29CD0()
{
  result = qword_1ECB762A0;
  if (!qword_1ECB762A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762A0);
  }

  return result;
}

unint64_t sub_1D9F29D28()
{
  result = qword_1ECB762A8;
  if (!qword_1ECB762A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762A8);
  }

  return result;
}

unint64_t sub_1D9F29D80()
{
  result = qword_1ECB762B0;
  if (!qword_1ECB762B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762B0);
  }

  return result;
}

unint64_t sub_1D9F29DD8()
{
  result = qword_1ECB762B8;
  if (!qword_1ECB762B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762B8);
  }

  return result;
}

unint64_t sub_1D9F29E30()
{
  result = qword_1ECB762C0;
  if (!qword_1ECB762C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762C0);
  }

  return result;
}

unint64_t sub_1D9F29E88()
{
  result = qword_1ECB762C8;
  if (!qword_1ECB762C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762C8);
  }

  return result;
}

unint64_t sub_1D9F29EE0()
{
  result = qword_1ECB762D0;
  if (!qword_1ECB762D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762D0);
  }

  return result;
}

unint64_t sub_1D9F29F38()
{
  result = qword_1ECB762D8;
  if (!qword_1ECB762D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762D8);
  }

  return result;
}

unint64_t sub_1D9F29F90()
{
  result = qword_1ECB762E0;
  if (!qword_1ECB762E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762E0);
  }

  return result;
}

unint64_t sub_1D9F29FE8()
{
  result = qword_1ECB762E8;
  if (!qword_1ECB762E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762E8);
  }

  return result;
}

unint64_t sub_1D9F2A040()
{
  result = qword_1ECB762F0;
  if (!qword_1ECB762F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762F0);
  }

  return result;
}

unint64_t sub_1D9F2A098()
{
  result = qword_1ECB762F8;
  if (!qword_1ECB762F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB762F8);
  }

  return result;
}

unint64_t sub_1D9F2A0F0()
{
  result = qword_1ECB76300;
  if (!qword_1ECB76300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76300);
  }

  return result;
}

unint64_t sub_1D9F2A148()
{
  result = qword_1ECB76308;
  if (!qword_1ECB76308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76308);
  }

  return result;
}

unint64_t sub_1D9F2A1A0()
{
  result = qword_1ECB76310;
  if (!qword_1ECB76310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76310);
  }

  return result;
}

unint64_t sub_1D9F2A1F8()
{
  result = qword_1ECB76318;
  if (!qword_1ECB76318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76318);
  }

  return result;
}

unint64_t sub_1D9F2A250()
{
  result = qword_1ECB76320;
  if (!qword_1ECB76320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76320);
  }

  return result;
}

unint64_t sub_1D9F2A2A8()
{
  result = qword_1ECB76328;
  if (!qword_1ECB76328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76328);
  }

  return result;
}

unint64_t sub_1D9F2A300()
{
  result = qword_1ECB76330;
  if (!qword_1ECB76330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76330);
  }

  return result;
}

unint64_t sub_1D9F2A358()
{
  result = qword_1ECB76338;
  if (!qword_1ECB76338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76338);
  }

  return result;
}

unint64_t sub_1D9F2A3B0()
{
  result = qword_1ECB76340;
  if (!qword_1ECB76340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB76340);
  }

  return result;
}

uint64_t sub_1D9F2A404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696164 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F2A514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7961646E6F6DLL && a2 == 0xE600000000000000;
  if (v3 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616473657574 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616473656E646577 && a2 == 0xE900000000000079 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961647372756874 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796164697266 && a2 == 0xE600000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961647275746173 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7961646E7573 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F2A75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9F2A8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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