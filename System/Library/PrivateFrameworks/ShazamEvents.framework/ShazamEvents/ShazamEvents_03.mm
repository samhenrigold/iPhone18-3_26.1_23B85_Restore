uint64_t sub_1E10244C0(uint64_t a1, uint64_t *a2)
{
  v28 = a1;
  v4 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v26 = (&v26 - v11);
  v27 = v2;
  v12 = *v2;
  sub_1E10AE9CC();
  v13 = *a2;
  v14 = a2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v15 = sub_1E10AEA0C();
  v16 = -1 << *(v12 + 32);
  v17 = v15 & ~v16;
  if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v4 + 72);
    while (1)
    {
      sub_1E1028098(*(v12 + 48) + v19 * v17, v8, type metadata accessor for PartialEventResource);
      v20 = *v8 == v13 && v8[1] == v14;
      if (v20 || (sub_1E10AE8FC() & 1) != 0)
      {
        break;
      }

      sub_1E1028100(v8, type metadata accessor for PartialEventResource);
      v17 = (v17 + 1) & v18;
      if (((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_1E1028100(v8, type metadata accessor for PartialEventResource);
    sub_1E1028100(a2, type metadata accessor for PartialEventResource);
    sub_1E1028098(*(v12 + 48) + v19 * v17, v28, type metadata accessor for PartialEventResource);
    return 0;
  }

  else
  {
LABEL_9:
    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v26;
    sub_1E1028098(a2, v26, type metadata accessor for PartialEventResource);
    v29 = *v21;
    sub_1E10258D4(v23, v17, isUniquelyReferenced_nonNull_native);
    v24 = v28;
    *v21 = v29;
    sub_1E1028160(a2, v24, type metadata accessor for PartialEventResource);
    return 1;
  }
}

uint64_t sub_1E1024744(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1E10AEA0C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1E10AE8FC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E1025B60(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E1024894(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_1E109CC6C(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    v8 = 0x74726F7073;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v9 == 6)
          {
            v13 = 0xD000000000000011;
            v14 = 0x80000001E10BF070;
          }

          else
          {
            v13 = 0x66696C746867696ELL;
            v14 = 0xE900000000000065;
          }
        }

        else
        {
          if (v9 == 4)
          {
            v13 = 0x72657461656874;
          }

          else
          {
            v13 = 0x657665656C707061;
          }

          if (v9 == 4)
          {
            v14 = 0xE700000000000000;
          }

          else
          {
            v14 = 0xEA0000000000746ELL;
          }
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x6D646E6173747261;
        }

        else
        {
          v10 = 0x65636E6164;
        }

        if (v9 == 2)
        {
          v11 = 0xEE00736D75657375;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        if (*(*(v4 + 48) + v7))
        {
          v12 = v8;
        }

        else
        {
          v12 = 0x636973756DLL;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v13 = v12;
        }

        else
        {
          v13 = v10;
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = v11;
        }
      }

      v15 = 0xD000000000000011;
      if (v3 != 6)
      {
        v15 = 0x66696C746867696ELL;
      }

      v16 = 0xE900000000000065;
      if (v3 == 6)
      {
        v16 = 0x80000001E10BF070;
      }

      v17 = 0x657665656C707061;
      if (v3 == 4)
      {
        v17 = 0x72657461656874;
      }

      v18 = 0xEA0000000000746ELL;
      if (v3 == 4)
      {
        v18 = 0xE700000000000000;
      }

      if (v3 <= 5u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (v3 == 2)
      {
        v19 = 0x6D646E6173747261;
      }

      else
      {
        v19 = 0x65636E6164;
      }

      if (v3 == 2)
      {
        v20 = 0xEE00736D75657375;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v3)
      {
        v21 = v8;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (v3 <= 1u)
      {
        v19 = v21;
        v20 = 0xE500000000000000;
      }

      v22 = v3 <= 3u ? v19 : v15;
      v23 = v3 <= 3u ? v20 : v16;
      if (v13 == v22 && v14 == v23)
      {
        break;
      }

      v24 = v8;
      v25 = sub_1E10AE8FC();

      if (v25)
      {
        goto LABEL_62;
      }

      v7 = (v7 + 1) & v30;
      v8 = v24;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

LABEL_62:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_60:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    sub_1E1025CE0(v3, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1E1024B98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898E8, &qword_1E10B3B20);
  result = sub_1E10AE5AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
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
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v33 = v18[1];
      v34 = *v18;
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[4];
      v22 = v18[5];
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v34;
      v14[1] = v33;
      v14[2] = v19;
      v14[3] = v20;
      v14[4] = v21;
      v14[5] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E1024E3C(uint64_t a1)
{
  v2 = v1;
  v32 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F8, &unk_1E10B3B30);
  result = sub_1E10AE5AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v1;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v32 + 72);
      sub_1E1028160(*(v7 + 48) + v21 * (v18 | (v10 << 6)), v6, type metadata accessor for PartialEventResource);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1E1028160(v6, *(v9 + 48) + v17 * v21, type metadata accessor for PartialEventResource);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1E1025144(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F0, &qword_1E10B3B28);
  result = sub_1E10AE5AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E10253A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898D8, &qword_1E10B3B18);
  result = sub_1E10AE5AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      result = sub_1E10AEA0C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E10256F8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v29 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_1E1024B98(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E1026038();
      goto LABEL_22;
    }

    sub_1E1026674(v6 + 1);
  }

  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = *v3;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  result = sub_1E10AEA0C();
  v13 = v12 + 56;
  v14 = -1 << *(v12 + 32);
  a2 = result & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v12 + 48);
    while (1)
    {
      v17 = (v16 + 48 * a2);
      v18 = v17[4];
      v19 = v17[5];
      v20 = v17[2] == v8 && v17[3] == v9;
      if (v20 || (result = sub_1E10AE8FC(), (result & 1) != 0))
      {
        if (v18 == v10 && v19 == v11)
        {
          break;
        }

        result = sub_1E10AE8FC();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v15;
      if (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_1E10AE93C();
    __break(1u);
  }

LABEL_22:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v23 = (*(v22 + 48) + 48 * a2);
  v24 = v29[1];
  *v23 = *v29;
  v23[1] = v24;
  v23[2] = v29[2];
  v25 = *(v22 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v27;
  }

  return result;
}

uint64_t sub_1E10258D4(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PartialEventResource(0) - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  v32 = a1;
  if (v15 > v14 && (a3 & 1) != 0)
  {
LABEL_17:
    v16 = v8;
    goto LABEL_18;
  }

  if (a3)
  {
    v31 = v11;
    sub_1E1024E3C(v14 + 1);
    goto LABEL_8;
  }

  if (v15 <= v14)
  {
    v31 = v11;
    sub_1E102690C(v14 + 1);
LABEL_8:
    v17 = *v4;
    sub_1E10AE9CC();
    v18 = *a1;
    v19 = a1[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v20 = sub_1E10AEA0C();
    v21 = -1 << *(v17 + 32);
    a2 = v20 & ~v21;
    if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v22 = ~v21;
      v16 = v8;
      v23 = *(v8 + 72);
      while (1)
      {
        sub_1E1028098(*(v17 + 48) + v23 * a2, v13, type metadata accessor for PartialEventResource);
        v24 = *v13 == v18 && v13[1] == v19;
        if (v24 || (sub_1E10AE8FC() & 1) != 0)
        {
          goto LABEL_21;
        }

        sub_1E1028100(v13, type metadata accessor for PartialEventResource);
        a2 = (a2 + 1) & v22;
        if (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_17;
  }

  v16 = v8;
  sub_1E10261C0();
LABEL_18:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E1028160(v32, *(v25 + 48) + *(v16 + 72) * a2, type metadata accessor for PartialEventResource);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_21:
  sub_1E1028100(v13, type metadata accessor for PartialEventResource);
  result = sub_1E10AE93C();
  __break(1u);
  return result;
}

uint64_t sub_1E1025B60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E1025144(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E10263D8();
      goto LABEL_16;
    }

    sub_1E1026BE4(v8 + 1);
  }

  v10 = *v4;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  result = sub_1E10AEA0C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E10AE8FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E10AE93C();
  __break(1u);
  return result;
}

uint64_t sub_1E1025CE0(uint64_t result, unint64_t a2, char a3)
{
  v37 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_67;
  }

  if (a3)
  {
    sub_1E10253A4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1E1026534();
      goto LABEL_67;
    }

    sub_1E1026E1C(v5 + 1);
  }

  v7 = *v3;
  result = sub_1E109CC6C(*(*v3 + 40), v37);
  v35 = v7;
  v36 = v7 + 56;
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v8;
    v9 = 0xEE00736D75657375;
    v10 = 0x6D646E6173747261;
    do
    {
      v11 = *(*(v35 + 48) + a2);
      if (v11 > 3)
      {
        if (*(*(v35 + 48) + a2) > 5u)
        {
          if (v11 == 6)
          {
            v15 = 0xD000000000000011;
            v16 = 0x80000001E10BF070;
          }

          else
          {
            v15 = 0x66696C746867696ELL;
            v16 = 0xE900000000000065;
          }
        }

        else
        {
          if (v11 == 4)
          {
            v15 = 0x72657461656874;
          }

          else
          {
            v15 = 0x657665656C707061;
          }

          if (v11 == 4)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = 0xEA0000000000746ELL;
          }
        }
      }

      else
      {
        if (v11 == 2)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0x65636E6164;
        }

        if (v11 == 2)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        if (*(*(v35 + 48) + a2))
        {
          v14 = 0x74726F7073;
        }

        else
        {
          v14 = 0x636973756DLL;
        }

        if (*(*(v35 + 48) + a2) <= 1u)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        if (*(*(v35 + 48) + a2) <= 1u)
        {
          v16 = 0xE500000000000000;
        }

        else
        {
          v16 = v13;
        }
      }

      v17 = 0xD000000000000011;
      if (v37 != 6)
      {
        v17 = 0x66696C746867696ELL;
      }

      v18 = 0xE900000000000065;
      if (v37 == 6)
      {
        v18 = 0x80000001E10BF070;
      }

      v19 = 0x657665656C707061;
      if (v37 == 4)
      {
        v19 = 0x72657461656874;
      }

      v20 = 0xEA0000000000746ELL;
      if (v37 == 4)
      {
        v20 = 0xE700000000000000;
      }

      if (v37 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v10;
      if (v37 == 2)
      {
        v22 = v10;
      }

      else
      {
        v22 = 0x65636E6164;
      }

      v23 = v9;
      if (v37 == 2)
      {
        v24 = v9;
      }

      else
      {
        v24 = 0xE500000000000000;
      }

      if (v37)
      {
        v25 = 0x74726F7073;
      }

      else
      {
        v25 = 0x636973756DLL;
      }

      if (v37 <= 1u)
      {
        v22 = v25;
        v24 = 0xE500000000000000;
      }

      v26 = v37 <= 3u ? v22 : v17;
      v27 = v37 <= 3u ? v24 : v18;
      if (v15 == v26 && v16 == v27)
      {
        goto LABEL_70;
      }

      v28 = sub_1E10AE8FC();

      if (v28)
      {
        goto LABEL_71;
      }

      a2 = (a2 + 1) & v34;
      v9 = v23;
      v10 = v21;
    }

    while (((*(v36 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_67:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v37;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_70:

LABEL_71:
  result = sub_1E10AE93C();
  __break(1u);
  return result;
}

void *sub_1E1026038()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898E8, &qword_1E10B3B20);
  v2 = *v0;
  v3 = sub_1E10AE59C();
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
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

void *sub_1E10261C0()
{
  v1 = v0;
  v2 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F8, &unk_1E10B3B30);
  v7 = *v0;
  v8 = sub_1E10AE59C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v2 + 72) * (v19 | (v13 << 6));
        sub_1E1028098(*(v7 + 48) + v22, v6, type metadata accessor for PartialEventResource);
        result = sub_1E1028160(v6, *(v9 + 48) + v22, type metadata accessor for PartialEventResource);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1E10263D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F0, &qword_1E10B3B28);
  v2 = *v0;
  v3 = sub_1E10AE59C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1E1026534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898D8, &qword_1E10B3B18);
  v2 = *v0;
  v3 = sub_1E10AE59C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1E1026674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898E8, &qword_1E10B3B20);
  result = sub_1E10AE5AC();
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
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v19 = v18[1];
      v33 = *v18;
      v21 = v18[2];
      v20 = v18[3];
      v22 = v18[4];
      v23 = v18[5];
      sub_1E10AE9CC();

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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
      v14 = (*(v5 + 48) + 48 * v13);
      v10 = v34;
      *v14 = v33;
      v14[1] = v19;
      v14[2] = v21;
      v14[3] = v20;
      v14[4] = v22;
      v14[5] = v23;
      ++*(v5 + 16);
      v3 = v32;
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
        v34 = (v17 - 1) & v17;
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

uint64_t sub_1E102690C(uint64_t a1)
{
  v2 = v1;
  v30 = *(type metadata accessor for PartialEventResource(0) - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F8, &unk_1E10B3B30);
  result = sub_1E10AE5AC();
  v9 = result;
  if (*(v7 + 16))
  {
    v29 = v1;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v30 + 72);
      sub_1E1028098(*(v7 + 48) + v20 * (v17 | (v10 << 6)), v6, type metadata accessor for PartialEventResource);
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1E1028160(v6, *(v9 + 48) + v16 * v20, type metadata accessor for PartialEventResource);
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v9;
  }

  return result;
}

uint64_t sub_1E1026BE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898F0, &qword_1E10B3B28);
  result = sub_1E10AE5AC();
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
      sub_1E10AE9CC();

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      result = sub_1E10AEA0C();
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

uint64_t sub_1E1026E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE898D8, &qword_1E10B3B18);
  result = sub_1E10AE5AC();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_1E10AE9CC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      result = sub_1E10AEA0C();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E1027140(uint64_t a1)
{
  v2 = type metadata accessor for PartialEventResource(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1E10281C8(&qword_1ECE89900, 255, type metadata accessor for PartialEventResource, &unk_1E10B6940);
  result = MEMORY[0x1E12EDB70](v12, v2, v13);
  v18 = result;
  if (v12)
  {
    v15 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      sub_1E1028098(v15, v7, type metadata accessor for PartialEventResource);
      sub_1E10244C0(v11, v7);
      sub_1E1028100(v11, type metadata accessor for PartialEventResource);
      v15 += v16;
      --v12;
    }

    while (v12);
    return v18;
  }

  return result;
}

uint64_t sub_1E10272D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12EDB70](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E1024744(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E102736C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E1027FF0();
  result = MEMORY[0x1E12EDB70](v2, &_s9EventTypeON, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1E1024894(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E10273E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v8 = sub_1E10AE69C();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_1E10AE23C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[13] = v9;
  v6[14] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E10274E8, v9, v11);
}

uint64_t sub_1E10274E8()
{
  v1 = v0[7];
  v0[15] = sub_1E10AE6BC();
  v0[16] = sub_1E10281C8(&qword_1ECE898B0, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1E10AE95C();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1E102764C;

  return v4(v0 + 4);
}

uint64_t sub_1E102764C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E10278EC;
  }

  else
  {
    v2 = sub_1E1027760;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1027760()
{
  **(v0 + 48) = *(v0 + 32);

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E10277D0, v1, v2);
}

uint64_t sub_1E10277D0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  sub_1E10AE95C();
  sub_1E10281C8(&qword_1ECE898B8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1E10AE6DC();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_1E10278EC()
{
  (*(v0[10] + 8))(v0[12], v0[9]);
  v1 = v0[13];
  v2 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E1027960, v1, v2);
}

uint64_t sub_1E1027960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E10279CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1E10279E4()
{
  result = qword_1ECE898A0;
  if (!qword_1ECE898A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE898A0);
  }

  return result;
}

unint64_t sub_1E1027A38()
{
  result = qword_1ECE898A8;
  if (!qword_1ECE898A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE898A8);
  }

  return result;
}

uint64_t sub_1E1027A84(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E0FE6540;

  return sub_1E1021650(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1E1027B60(uint64_t a1)
{
  v4 = *(type metadata accessor for PartialEventConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E0FE6540;

  return sub_1E1023CC0(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PartialEventConfiguration(0) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];

  v4 = *(type metadata accessor for AccessTokenResource(0) + 20);
  v5 = sub_1E10ADCBC();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1E1027EF4(uint64_t a1)
{
  v4 = *(type metadata accessor for PartialEventConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E0FE5FDC;

  return sub_1E1023F04(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

unint64_t sub_1E1027FF0()
{
  result = qword_1ECE898D0;
  if (!qword_1ECE898D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE898D0);
  }

  return result;
}

unint64_t sub_1E1028044()
{
  result = qword_1ECE898E0;
  if (!qword_1ECE898E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE898E0);
  }

  return result;
}

uint64_t sub_1E1028098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1028100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1028160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10281C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1028214(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89930, &qword_1E10B3C28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1028BD0();
  sub_1E10AEA5C();
  v18 = *v3;
  LOBYTE(v16[0]) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v12 = v3[2];
    v13 = v3[4];
    v24 = v3[3];
    v25 = v13;
    v14 = v3[2];
    v23[0] = v3[1];
    v23[1] = v14;
    v15 = v3[4];
    v20 = v24;
    v21 = v15;
    v26 = *(v3 + 10);
    v22 = *(v3 + 10);
    v18 = v23[0];
    v19 = v12;
    v27 = 1;
    sub_1E1028CE0(v23, v16);
    sub_1E1028D50();
    sub_1E10AE85C();
    v16[2] = v20;
    v16[3] = v21;
    v17 = v22;
    v16[1] = v19;
    v16[0] = v18;
    sub_1E1028DA4(v16);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E1028444()
{
  if (*v0)
  {
    return 0x6B726F77747261;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E1028478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E1028554(uint64_t a1)
{
  v2 = sub_1E1028BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1028590(uint64_t a1)
{
  v2 = sub_1E1028BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E10285CC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E102893C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1E1028640@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2A0, &qword_1E10B3B40) + 44);
  v6 = *(v5 + 1);
  if (v6)
  {
    v7 = *v5;
    v8 = *(v5 + 3);
    if (v8)
    {
      v9 = *(v5 + 8);
      v16 = *(v5 + 3);
      v17 = *(v5 + 72);
      v15 = *(v5 + 2);
      v10 = *(v5 + 2);

      v12 = v15;
      v11 = v16;
      v13 = v17;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v13 = 0uLL;
      v12 = 0uLL;
      v11 = 0uLL;
    }

    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
    *(a1 + 56) = v8;
    *(a1 + 64) = v12;
    *(a1 + 80) = v11;
    *(a1 + 96) = v9;
  }

  else
  {
    result = sub_1E10AE6FC();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents17ArtworkAttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E10287B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E1028800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1028864(uint64_t a1)
{
  *(a1 + 8) = sub_1E1028894();
  result = sub_1E10288E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1028894()
{
  result = qword_1ECE89908;
  if (!qword_1ECE89908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89908);
  }

  return result;
}

unint64_t sub_1E10288E8()
{
  result = qword_1ECE89910;
  if (!qword_1ECE89910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89910);
  }

  return result;
}

uint64_t sub_1E102893C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89918, &qword_1E10B3C20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1028BD0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v11 = v43;
  LOBYTE(v19) = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v12 = v26;
  v18 = v25;
  v32 = 1;
  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v10 + 8))(v9, v4);
  v40 = v35;
  v41 = v36;
  v42 = v37;
  v38 = v33;
  v39 = v34;
  v13 = v18;
  *&v19 = v18;
  *(&v19 + 1) = v12;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v20 = v33;
  v21 = v34;
  sub_1E1028C78(&v19, &v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v13;
  v26 = v12;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v28 = v39;
  v27 = v38;
  result = sub_1E1028CB0(&v25);
  v15 = v22;
  *(v11 + 32) = v21;
  *(v11 + 48) = v15;
  *(v11 + 64) = v23;
  *(v11 + 80) = v24;
  v16 = v20;
  *v11 = v19;
  *(v11 + 16) = v16;
  return result;
}

unint64_t sub_1E1028BD0()
{
  result = qword_1ECE89920;
  if (!qword_1ECE89920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89920);
  }

  return result;
}

unint64_t sub_1E1028C24()
{
  result = qword_1ECE89928;
  if (!qword_1ECE89928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89928);
  }

  return result;
}

uint64_t sub_1E1028CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89938, &qword_1E10B3C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1028D50()
{
  result = qword_1ECE89940;
  if (!qword_1ECE89940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89940);
  }

  return result;
}

uint64_t sub_1E1028DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89938, &qword_1E10B3C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E1028E20()
{
  result = qword_1ECE89948;
  if (!qword_1ECE89948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89948);
  }

  return result;
}

unint64_t sub_1E1028E78()
{
  result = qword_1ECE89950;
  if (!qword_1ECE89950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89950);
  }

  return result;
}

unint64_t sub_1E1028ED0()
{
  result = qword_1ECE89958;
  if (!qword_1ECE89958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89958);
  }

  return result;
}

uint64_t sub_1E1028F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE88C00, &unk_1E10B94F0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - v17;
  v19 = sub_1E10AE29C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v10 + 16))(v14, a1, v9);
  v20 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  v22 = v25;
  *(v21 + 6) = a4;
  *(v21 + 7) = v22;
  (*(v10 + 32))(&v21[v20], v14, v9);

  sub_1E0FE579C(0, 0, v18, &unk_1E10B3D78, v21);
  return sub_1E10AE31C();
}

uint64_t sub_1E102915C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  v8[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89968, &unk_1E10B3D80);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89970, &qword_1E10BCCE0);
  v8[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89978, qword_1E10B3D90);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = type metadata accessor for GeoXPCRequestContainer.Payload(0);
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for EventService.GeoRequest(0);
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1029364, 0, 0);
}

uint64_t sub_1E1029364()
{
  v3 = *(*(v1 + 80) + 16);
  *(v1 + 248) = v3;
  v4 = ceil(v3 / *(v1 + 104));
  *(v1 + 256) = v4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4 < 9.22337204e18)
  {
    if (qword_1EE180170 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_5:
  v5 = v4;
  v6 = sub_1E10ADF9C();
  *(v1 + 264) = __swift_project_value_buffer(v6, qword_1EE185540);
  v7 = sub_1E10ADF7C();
  v8 = sub_1E10AE45C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v1 + 104);
    v0 = swift_slowAlloc();
    *v0 = 134218496;
    *(v0 + 4) = v3;
    *(v0 + 12) = 2048;
    *(v0 + 14) = v5;
    *(v0 + 22) = 2048;
    *(v0 + 24) = v9;
    _os_log_impl(&dword_1E0FDF000, v7, v8, "Performing a total of %ld requests, number of batches: %ld, max batch size: %ld", v0, 0x20u);
    MEMORY[0x1E12EE9E0](v0, -1, -1);
  }

  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v5)
  {
    *(v1 + 320) = *(*(v1 + 216) + 80);
    *(v1 + 272) = 0;
    v17 = *(v1 + 104);
    if (v3 >= v17)
    {
      v18 = *(v1 + 104);
    }

    else
    {
      v18 = v3;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = *(v1 + 248);
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19 >= v18)
        {
          v0 = MEMORY[0x1E69E7CC0];
          if (v18)
          {
            *(v1 + 48) = MEMORY[0x1E69E7CC0];
            sub_1E10AE66C();
            v20 = 0;
            do
            {
              v21 = *(v1 + 240);
              v22 = *(v1 + 208);
              v24 = *(v1 + 192);
              v23 = *(v1 + 200);
              v25 = v20 + 1;
              sub_1E102AFCC(*(v1 + 80) + ((*(v1 + 320) + 32) & ~*(v1 + 320)) + *(*(v1 + 216) + 72) * v20, v21, type metadata accessor for EventService.GeoRequest);
              v27 = *v21;
              v26 = *(v21 + 8);
              v47 = *(v21 + 16);
              v28 = *(v21 + 32);
              v29 = *(v22 + 28);
              v30 = *(v24 + 28);
              v31 = sub_1E10ADACC();
              (*(*(v31 - 8) + 16))(v23 + v30, v21 + v29, v31);
              *v23 = v47;
              *(v23 + 16) = v28;
              v32 = type metadata accessor for GeoXPCRequestContainer(0);
              v33 = objc_allocWithZone(v32);
              v34 = &v33[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
              *v34 = v27;
              *(v34 + 1) = v26;
              sub_1E102AFCC(v23, &v33[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload], type metadata accessor for GeoXPCRequestContainer.Payload);
              *(v1 + 16) = v33;
              *(v1 + 24) = v32;

              objc_msgSendSuper2((v1 + 16), sel_init);
              sub_1E102B034(v23, type metadata accessor for GeoXPCRequestContainer.Payload);
              sub_1E102B034(v21, type metadata accessor for EventService.GeoRequest);
              sub_1E10AE64C();
              sub_1E10AE67C();
              sub_1E10AE68C();
              sub_1E10AE65C();
              v20 = v25;
            }

            while (v18 != v25);
            v0 = *(v1 + 48);
          }

          *(v1 + 280) = v0;
          v2 = v0 >> 62;
          if (!(v0 >> 62))
          {
            v35 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
            v36 = v3 - v35;
            *(v1 + 288) = v3 - v35;
            if (__OFSUB__(v3, v35))
            {
              __break(1u);
            }

            else
            {

              v37 = sub_1E10ADF7C();
              v38 = sub_1E10AE45C();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 134218240;
                if (v2)
                {
                  v40 = sub_1E10AE70C();
                }

                else
                {
                  v40 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                *(v39 + 4) = v40;

                *(v39 + 12) = 2048;
                *(v39 + 14) = v36;
                _os_log_impl(&dword_1E0FDF000, v37, v38, "Performing a batch of %ld requests, remaining requests: %ld", v39, 0x16u);
                MEMORY[0x1E12EE9E0](v39, -1, -1);
              }

              else
              {
              }

              v44 = *(v1 + 88);
              v43 = *(v1 + 96);
              v45 = swift_task_alloc();
              *(v1 + 296) = v45;
              v45[2] = v44;
              v45[3] = v0;
              v45[4] = v43;
              v46 = swift_task_alloc();
              *(v1 + 304) = v46;
              v16 = type metadata accessor for PartialEventXPCValueContainer();
              *v46 = v1;
              v46[1] = sub_1E10299A0;
              v14 = sub_1E102B094;
              v35 = v1 + 56;
              v13 = 0x80000001E10C0030;
              v10 = 0;
              v11 = 0;
              v12 = 0xD000000000000028;
              v15 = v45;
            }

            return MEMORY[0x1EEE6DE38](v35, v10, v11, v12, v13, v14, v15, v16);
          }

LABEL_42:
          v35 = sub_1E10AE70C();
          goto LABEL_21;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v1 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE35C();

  v41 = *(v1 + 8);

  return v41();
}

uint64_t sub_1E10299A0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1E102A778;
  }

  else
  {
    v2 = sub_1E1029AF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1029AF0()
{
  v1 = *(v0 + 56);
  v3 = *&v1[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
  v2 = *&v1[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value + 8];
  v102 = v1;
  if ((v1[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value + 16] & 1) == 0)
  {
    v12 = v0 + 32;
    sub_1E100A474(v3, v2, 0);

    v24 = sub_1E10ADF7C();
    v25 = sub_1E10AE45C();
    if (os_log_type_enabled(v24, v25))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v3 + 2);
      sub_1E100A408(v3, v2, 0);
      _os_log_impl(&dword_1E0FDF000, v24, v25, "Received a batch response of %ld requests", v12, 0xCu);
      MEMORY[0x1E12EE9E0](v12, -1, -1);
    }

    else
    {
      sub_1E100A408(v3, v2, 0);
    }

    v26 = 0;
    v27 = v3 + 64;
    v28 = -1;
    v29 = -1 << v3[32];
    if (-v29 < 64)
    {
      v28 = ~(-1 << -v29);
    }

    v30 = v28 & *(v3 + 8);
    v31 = (63 - v29) >> 6;
    v103 = *(v0 + 312);
    v105 = v31;
    v107 = v3;
    while (v30)
    {
LABEL_18:
      v33 = *(v0 + 248);
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = v34 | (v26 << 6);
      v36 = (*(v3 + 6) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      v2 = *(*(v3 + 7) + 8 * v35);

      v109 = v2;

      if (v33)
      {
        v2 = 0;
        v39 = 0;
        v40 = *(*(v0 + 216) + 72);
        while (1)
        {
          v41 = *(v0 + 224);
          sub_1E102AFCC(*(v0 + 80) + v2 + ((*(v0 + 320) + 32) & ~*(v0 + 320)), v41, type metadata accessor for EventService.GeoRequest);
          v42 = *v41 == v37 && v41[1] == v38;
          if (v42 || (sub_1E10AE8FC() & 1) != 0)
          {
            break;
          }

          ++v39;
          v12 = *(v0 + 248);
          sub_1E102B034(*(v0 + 224), type metadata accessor for EventService.GeoRequest);
          v2 += v40;
          if (v39 == v12)
          {
            goto LABEL_11;
          }
        }

        v44 = *(v0 + 224);
        v43 = *(v0 + 232);

        sub_1E102B0A0(v44, v43);
        v2 = v103;
        v45 = sub_1E1051EE4(v109);
        v46 = *(v0 + 232);
        if (v103)
        {

          sub_1E102B034(v46, type metadata accessor for EventService.GeoRequest);
          v83 = v103;
          v84 = sub_1E10ADF7C();
          v85 = sub_1E10AE44C();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *v86 = 138412290;
            v88 = v103;
            v89 = _swift_stdlib_bridgeErrorToNSError();
            *(v86 + 4) = v89;
            *v87 = v89;
            _os_log_impl(&dword_1E0FDF000, v84, v85, "GeoRequest failed, %@", v86, 0xCu);
            sub_1E0FF0440(v87, &qword_1ECE89170, &qword_1E10B15D0);
            MEMORY[0x1E12EE9E0](v87, -1, -1);
            MEMORY[0x1E12EE9E0](v86, -1, -1);
          }

          v91 = *(v0 + 168);
          v90 = *(v0 + 176);
          v111 = *(v0 + 160);
          v92 = *(v0 + 128);

          sub_1E10095EC();
          v93 = swift_allocError();
          v95 = v94;
          *(v0 + 64) = v103;
          v96 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
          v97 = swift_dynamicCast();
          v98 = *(v0 + 32);
          v99 = *(v0 + 40);
          if (!v97)
          {
            v98 = 0;
            v99 = 3;
          }

          *v95 = v98;
          v95[1] = v99;
          *v92 = v93;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
          sub_1E10AE33C();

          sub_1E0FF0440(v92, &qword_1ECE89968, &unk_1E10B3D80);
          v100 = *(v91 + 8);
          v12 = v91 + 8;
          v100(v90, v111);
          goto LABEL_30;
        }

        v47 = v45;
        v101 = *(v0 + 184);
        v48 = *(v0 + 168);
        v104 = *(v0 + 160);
        v12 = *(v0 + 144);
        v49 = *(v0 + 152);
        v50 = *(v0 + 96);

        v51 = sub_1E102B104(v47, v50);

        v52 = *(v12 + 48);
        sub_1E102AFCC(v46, v49, type metadata accessor for EventService.GeoRequest);
        *(v49 + v52) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
        v2 = v101;
        sub_1E10AE34C();
        (*(v48 + 8))(v101, v104);
        sub_1E102B034(v46, type metadata accessor for EventService.GeoRequest);
        v103 = 0;
      }

      else
      {
LABEL_11:
      }

      v31 = v105;
      v3 = v107;
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        goto LABEL_30;
      }

      v30 = *&v27[8 * v32];
      ++v26;
      if (v30)
      {
        v26 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

  sub_1E100A474(v3, v2, 1);
  sub_1E100A474(v3, v2, 1);
  sub_1E100A414(v3, v2);
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();
  sub_1E100A408(v3, v2, 1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    sub_1E10095EC();
    swift_allocError();
    *v8 = v3;
    v8[1] = v2;
    sub_1E100A414(v3, v2);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E0FDF000, v4, v5, "GeoRequest partial event failed, %@", v6, 0xCu);
    sub_1E0FF0440(v7, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v7, -1, -1);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 168);
  v108 = *(v0 + 160);
  v12 = v3;
  v13 = *(v0 + 136);

  sub_1E10095EC();
  v14 = swift_allocError();
  v16 = v15;
  sub_1E100A408(v12, v2, 1);
  *v16 = v12;
  v16[1] = v2;
  *v13 = v14;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE33C();

  sub_1E0FF0440(v13, &qword_1ECE89968, &unk_1E10B3D80);
  (*(v11 + 8))(v10, v108);
LABEL_30:
  v53 = *(v0 + 272) + 1;
  if (v53 != *(v0 + 256))
  {
    v3 = *(v0 + 288);
    *(v0 + 272) = v53;
    v56 = *(v0 + 104);
    v57 = v53 * v56;
    if ((v53 * v56) >> 64 != (v53 * v56) >> 63)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v3 >= v56)
    {
      v58 = *(v0 + 104);
    }

    else
    {
      v58 = v3;
    }

    v59 = &v58[v57];
    if (__OFADD__(v57, v58))
    {
      goto LABEL_69;
    }

    if (v59 < v57)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v60 = *(v0 + 248);
    if (v60 < v57)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v57 < 0)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v60 < v59)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (v59 == v57)
    {
LABEL_49:
      *(v0 + 280) = v2;
      v12 = v2 >> 62;
      if (!(v2 >> 62))
      {
        v61 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_51:
        v74 = &v3[-v61];
        *(v0 + 288) = &v3[-v61];
        if (!__OFSUB__(v3, v61))
        {

          v75 = sub_1E10ADF7C();
          v76 = sub_1E10AE45C();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 134218240;
            if (v12)
            {
              v78 = sub_1E10AE70C();
            }

            else
            {
              v78 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v77 + 4) = v78;

            *(v77 + 12) = 2048;
            *(v77 + 14) = v74;
            _os_log_impl(&dword_1E0FDF000, v75, v76, "Performing a batch of %ld requests, remaining requests: %ld", v77, 0x16u);
            MEMORY[0x1E12EE9E0](v77, -1, -1);
          }

          else
          {
          }

          v80 = *(v0 + 88);
          v79 = *(v0 + 96);
          v81 = swift_task_alloc();
          *(v0 + 296) = v81;
          v81[2] = v80;
          v81[3] = v2;
          v81[4] = v79;
          v82 = swift_task_alloc();
          *(v0 + 304) = v82;
          v23 = type metadata accessor for PartialEventXPCValueContainer();
          *v82 = v0;
          v82[1] = sub_1E10299A0;
          v21 = sub_1E102B094;
          v20 = 0x80000001E10C0030;
          v61 = v0 + 56;
          v17 = 0;
          v18 = 0;
          v19 = 0xD000000000000028;
          v22 = v81;

          return MEMORY[0x1EEE6DE38](v61, v17, v18, v19, v20, v21, v22, v23);
        }

        __break(1u);
LABEL_76:
        __break(1u);
        return MEMORY[0x1EEE6DE38](v61, v17, v18, v19, v20, v21, v22, v23);
      }

LABEL_74:
      v61 = sub_1E10AE70C();
      goto LABEL_51;
    }

    *(v0 + 48) = MEMORY[0x1E69E7CC0];
    v61 = sub_1E10AE66C();
    if ((v58 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    v106 = v3;
    while (v58)
    {
      v62 = *(v0 + 240);
      v63 = *(v0 + 208);
      v65 = *(v0 + 192);
      v64 = *(v0 + 200);
      sub_1E102AFCC(*(v0 + 80) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 216) + 72) * v57, v62, type metadata accessor for EventService.GeoRequest);
      v2 = *v62;
      v66 = *(v62 + 8);
      v110 = *(v62 + 16);
      v67 = *(v62 + 32);
      v68 = *(v63 + 28);
      v69 = *(v65 + 28);
      v70 = sub_1E10ADACC();
      (*(*(v70 - 8) + 16))(v64 + v69, v62 + v68, v70);
      *v64 = v110;
      *(v64 + 16) = v67;
      v71 = type metadata accessor for GeoXPCRequestContainer(0);
      v72 = objc_allocWithZone(v71);
      v73 = &v72[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
      *v73 = v2;
      v73[1] = v66;
      sub_1E102AFCC(v64, &v72[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload], type metadata accessor for GeoXPCRequestContainer.Payload);
      *(v0 + 16) = v72;
      *(v0 + 24) = v71;
      v3 = sel_init;

      v12 = objc_msgSendSuper2((v0 + 16), sel_init);
      sub_1E102B034(v64, type metadata accessor for GeoXPCRequestContainer.Payload);
      sub_1E102B034(v62, type metadata accessor for EventService.GeoRequest);
      sub_1E10AE64C();
      sub_1E10AE67C();
      sub_1E10AE68C();
      sub_1E10AE65C();
      ++v57;
      if (!--v58)
      {
        v2 = *(v0 + 48);
        v3 = v106;
        goto LABEL_49;
      }
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE35C();

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1E102A778()
{
  v1 = *(v0 + 312);
  v2 = v1;
  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE44C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1E0FDF000, v3, v4, "GeoRequest failed, %@", v5, 0xCu);
    sub_1E0FF0440(v6, &qword_1ECE89170, &qword_1E10B15D0);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
    MEMORY[0x1E12EE9E0](v5, -1, -1);
  }

  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v59 = *(v0 + 160);
  v11 = *(v0 + 128);

  sub_1E10095EC();
  v12 = &type metadata for EventService.Error;
  v13 = swift_allocError();
  v15 = v14;
  *(v0 + 64) = v1;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v17 = swift_dynamicCast();
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  if (!v17)
  {
    v18 = 0;
    v19 = 3;
  }

  *v15 = v18;
  v15[1] = v19;
  *v11 = v13;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE33C();

  sub_1E0FF0440(v11, &qword_1ECE89968, &unk_1E10B3D80);
  (*(v10 + 8))(v9, v59);
  v27 = *(v0 + 272) + 1;
  if (v27 != *(v0 + 256))
  {
    v30 = *(v0 + 288);
    *(v0 + 272) = v27;
    v31 = *(v0 + 104);
    v32 = v27 * v31;
    if ((v27 * v31) >> 64 == (v27 * v31) >> 63)
    {
      if (v30 >= v31)
      {
        v33 = *(v0 + 104);
      }

      else
      {
        v33 = v30;
      }

      v34 = &v33[v32];
      if (__OFADD__(v32, v33))
      {
        goto LABEL_38;
      }

      if (v34 < v32)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v35 = *(v0 + 248);
      if (v35 < v32)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v32 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v35 < v34)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v1 = MEMORY[0x1E69E7CC0];
      if (v34 == v32)
      {
LABEL_24:
        *(v0 + 280) = v1;
        v12 = (v1 >> 62);
        if (!(v1 >> 62))
        {
          v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
          v49 = &v30[-v36];
          *(v0 + 288) = &v30[-v36];
          if (!__OFSUB__(v30, v36))
          {

            v50 = sub_1E10ADF7C();
            v51 = sub_1E10AE45C();
            if (os_log_type_enabled(v50, v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 134218240;
              if (v12)
              {
                v53 = sub_1E10AE70C();
              }

              else
              {
                v53 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v52 + 4) = v53;

              *(v52 + 12) = 2048;
              *(v52 + 14) = v49;
              _os_log_impl(&dword_1E0FDF000, v50, v51, "Performing a batch of %ld requests, remaining requests: %ld", v52, 0x16u);
              MEMORY[0x1E12EE9E0](v52, -1, -1);
            }

            else
            {
            }

            v55 = *(v0 + 88);
            v54 = *(v0 + 96);
            v56 = swift_task_alloc();
            *(v0 + 296) = v56;
            v56[2] = v55;
            v56[3] = v1;
            v56[4] = v54;
            v57 = swift_task_alloc();
            *(v0 + 304) = v57;
            v26 = type metadata accessor for PartialEventXPCValueContainer();
            *v57 = v0;
            v57[1] = sub_1E10299A0;
            v24 = sub_1E102B094;
            v36 = v0 + 56;
            v23 = 0x80000001E10C0030;
            v20 = 0;
            v21 = 0;
            v22 = 0xD000000000000028;
            v25 = v56;

            return MEMORY[0x1EEE6DE38](v36, v20, v21, v22, v23, v24, v25, v26);
          }

          __break(1u);
LABEL_45:
          __break(1u);
          return MEMORY[0x1EEE6DE38](v36, v20, v21, v22, v23, v24, v25, v26);
        }

LABEL_43:
        v36 = sub_1E10AE70C();
        goto LABEL_26;
      }

      *(v0 + 48) = MEMORY[0x1E69E7CC0];
      v36 = sub_1E10AE66C();
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v58 = v30;
      while (v33)
      {
        v37 = *(v0 + 240);
        v38 = *(v0 + 208);
        v40 = *(v0 + 192);
        v39 = *(v0 + 200);
        sub_1E102AFCC(*(v0 + 80) + ((*(v0 + 320) + 32) & ~*(v0 + 320)) + *(*(v0 + 216) + 72) * v32, v37, type metadata accessor for EventService.GeoRequest);
        v12 = *v37;
        v41 = *(v37 + 8);
        v60 = *(v37 + 16);
        v42 = *(v37 + 32);
        v43 = *(v38 + 28);
        v44 = *(v40 + 28);
        v45 = sub_1E10ADACC();
        (*(*(v45 - 8) + 16))(v39 + v44, v37 + v43, v45);
        *v39 = v60;
        *(v39 + 16) = v42;
        v46 = type metadata accessor for GeoXPCRequestContainer(0);
        v47 = objc_allocWithZone(v46);
        v48 = &v47[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_id];
        *v48 = v12;
        v48[1] = v41;
        sub_1E102AFCC(v39, &v47[OBJC_IVAR____TtC12ShazamEvents22GeoXPCRequestContainer_payload], type metadata accessor for GeoXPCRequestContainer.Payload);
        *(v0 + 16) = v47;
        *(v0 + 24) = v46;
        v30 = sel_init;

        objc_msgSendSuper2((v0 + 16), sel_init);
        sub_1E102B034(v39, type metadata accessor for GeoXPCRequestContainer.Payload);
        sub_1E102B034(v37, type metadata accessor for EventService.GeoRequest);
        sub_1E10AE64C();
        v1 = *(*(v0 + 48) + 16);
        sub_1E10AE67C();
        sub_1E10AE68C();
        sub_1E10AE65C();
        ++v32;
        if (!--v33)
        {
          v1 = *(v0 + 48);
          v30 = v58;
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60);
  sub_1E10AE35C();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E102AE84(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89960, &unk_1E10B3D60) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E0FE5FDC;

  return sub_1E102915C(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1E102AFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E102B034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E102B0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventService.GeoRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E102B104(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v25 = a1;
  v23 = (a1 + 40);
  v28 = MEMORY[0x1E69E7CC0];
  v24 = v7;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      v13 = (*(a2 + 48) + 16 * v12);
      v26 = *v13;
      v14 = *(*(a2 + 56) + v12);
      v15 = *(v25 + 16);
      v29 = v13[1];

      if (v15)
      {
        break;
      }

LABEL_5:

      v7 = v24;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v16 = v23;
    while (1)
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      if (v18 <= 3)
      {
        if (*v16 > 1u)
        {
          if (v18 == 2)
          {
            if (v14 <= 3 && v14 > 1 && v14 != 3)
            {
              goto LABEL_69;
            }
          }

          else if (v14 <= 3 && v14 > 1 && v14 != 2)
          {
            goto LABEL_69;
          }
        }

        else if (*v16)
        {
          if (v14 <= 3 && v14 <= 1 && v14)
          {
            goto LABEL_69;
          }
        }

        else if (v14 <= 3 && v14 <= 1 && v14 != 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      if (*v16 <= 5u)
      {
        if (v18 == 4)
        {
          if (v14 > 3 && v14 <= 5 && v14 != 5)
          {
            goto LABEL_69;
          }
        }

        else if (v14 > 3 && v14 <= 5 && v14 != 4)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      if (v18 != 6)
      {
        break;
      }

      if (v14 > 3 && v14 > 5 && v14 != 7)
      {
        goto LABEL_69;
      }

LABEL_66:
      v19 = sub_1E10AE8FC();

      if (v19)
      {
        goto LABEL_70;
      }

      v16 += 16;

      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    if (v14 <= 3 || v14 <= 5 || v14 == 6)
    {
      goto LABEL_66;
    }

LABEL_69:

LABEL_70:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E1059004(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v7 = v24;
    v21 = *(v28 + 16);
    v20 = *(v28 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_1E1059004((v20 > 1), v21 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v21 + 1;
    v22 = v28 + 32 * v21;
    *(v22 + 32) = v26;
    *(v22 + 40) = v29;
    *(v22 + 48) = v17;
    *(v22 + 56) = v18;
  }

  while (v6);
LABEL_6:
  while (2)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      if (v10 < v7)
      {
        v6 = *(v3 + 8 * v10);
        ++v9;
        if (!v6)
        {
          continue;
        }

        v9 = v10;
        goto LABEL_10;
      }

      return v28;
    }

    return result;
  }
}

uint64_t sub_1E102BB04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E102BB80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1E102BCA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E102BE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E102BF54(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1E102BF84(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E10AE8FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E102BFF4(void *a1, void *a2)
{
  v62 = a1;
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v65 = a2[2];
  v4 = v65;
  v66 = v3;
  v67 = v5;
  v68 = v6;
  v69 = v7;
  v70 = v8;
  v55 = type metadata accessor for ValueResult.FailureCodingKeys(255, &v65);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E10AE8BC();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = v45 - v12;
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v52 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v4;
  v66 = v3;
  v67 = v5;
  v68 = v6;
  v69 = v7;
  v70 = v8;
  v16 = type metadata accessor for ValueResult.SuccessCodingKeys(255, &v65);
  v17 = swift_getWitnessTable();
  v47 = v16;
  v45[1] = v17;
  v50 = sub_1E10AE8BC();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v46 = v45 - v20;
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v45[0] = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v6;
  v61 = v4;
  v65 = v4;
  v66 = v3;
  v51 = v3;
  v67 = v5;
  v68 = v6;
  v69 = v7;
  v70 = v8;
  v59 = v8;
  type metadata accessor for ValueResult.CodingKeys(255, &v65);
  swift_getWitnessTable();
  v29 = sub_1E10AE8BC();
  v63 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v45 - v32;
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  sub_1E10AEA5C();
  (*(v24 + 16))(v28, v64, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v56;
    v36 = v51;
    v35 = v52;
    (*(v56 + 32))(v52, v28, v51);
    LOBYTE(v65) = 1;
    v37 = v54;
    sub_1E10AE82C();
    v38 = v58;
    sub_1E10AE8AC();
    (*(v57 + 8))(v37, v38);
    (*(v34 + 8))(v35, v36);
  }

  else
  {
    v39 = v48;
    v40 = v45[0];
    v41 = v61;
    (*(v48 + 32))(v45[0], v28, v61);
    LOBYTE(v65) = 0;
    v42 = v46;
    sub_1E10AE82C();
    v43 = v50;
    sub_1E10AE8AC();
    (*(v49 + 8))(v42, v43);
    (*(v39 + 8))(v40, v41);
  }

  return (*(v63 + 8))(v33, v29);
}

uint64_t sub_1E102C5E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v94 = a1;
  v81 = a8;
  *&v90 = a2;
  *(&v90 + 1) = a3;
  *&v91 = a4;
  *(&v91 + 1) = a5;
  v92 = a6;
  v93 = a7;
  v78 = type metadata accessor for ValueResult.FailureCodingKeys(255, &v90);
  WitnessTable = swift_getWitnessTable();
  v70 = sub_1E10AE81C();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v79 = &v64 - v16;
  *&v90 = a2;
  *(&v90 + 1) = a3;
  *&v91 = a4;
  *(&v91 + 1) = a5;
  v92 = a6;
  v93 = a7;
  v17 = type metadata accessor for ValueResult.SuccessCodingKeys(255, &v90);
  v18 = swift_getWitnessTable();
  v75 = v17;
  v74 = v18;
  v68 = sub_1E10AE81C();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v76 = &v64 - v21;
  *&v90 = a2;
  *(&v90 + 1) = a3;
  *&v91 = a4;
  *(&v91 + 1) = a5;
  v92 = a6;
  v93 = a7;
  type metadata accessor for ValueResult.CodingKeys(255, &v90);
  v86 = swift_getWitnessTable();
  v82 = sub_1E10AE81C();
  v85 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v64 - v24;
  v71 = a2;
  *&v90 = a2;
  *(&v90 + 1) = a3;
  v84 = a3;
  v73 = a4;
  *&v91 = a4;
  *(&v91 + 1) = a5;
  v72 = a6;
  v92 = a6;
  v93 = a7;
  v26 = type metadata accessor for ValueResult(0, &v90);
  v80 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v64 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v64 - v37;
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  v83 = v25;
  v39 = v87;
  sub_1E10AEA3C();
  if (!v39)
  {
    v86 = v30;
    v66 = v34;
    v65 = v38;
    v87 = v26;
    v40 = v83;
    v41 = v82;
    *&v88 = sub_1E10AE80C();
    sub_1E10AE20C();
    swift_getWitnessTable();
    *&v90 = sub_1E10AE55C();
    *(&v90 + 1) = v42;
    *&v91 = v43;
    *(&v91 + 1) = v44;
    sub_1E10AE54C();
    swift_getWitnessTable();
    sub_1E10AE3FC();
    v45 = v88;
    if (v88 == 2 || (v64 = v90, v88 = v90, v89 = v91, (sub_1E10AE41C() & 1) == 0))
    {
      v49 = sub_1E10AE62C();
      swift_allocError();
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0);
      *v51 = v87;
      sub_1E10AE77C();
      sub_1E10AE61C();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6AF8], v49);
      swift_willThrow();
      (*(v85 + 8))(v40, v41);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v45)
      {
        LOBYTE(v88) = 1;
        v46 = v79;
        sub_1E10AE76C();
        v48 = v80;
        v47 = v81;
        v54 = v70;
        sub_1E10AE7FC();
        v55 = v85;
        (*(v69 + 8))(v46, v54);
        (*(v55 + 8))(v40, v41);
        swift_unknownObjectRelease();
        v61 = v86;
        v60 = v87;
      }

      else
      {
        LOBYTE(v88) = 0;
        v52 = v76;
        v53 = v41;
        sub_1E10AE76C();
        v48 = v80;
        v47 = v81;
        v61 = v66;
        v56 = v68;
        sub_1E10AE7FC();
        v57 = v52;
        v58 = v85;
        (*(v67 + 8))(v57, v56);
        (*(v58 + 8))(v40, v53);
        swift_unknownObjectRelease();
        v60 = v87;
      }

      swift_storeEnumTagMultiPayload();
      v62 = *(v48 + 32);
      v63 = v65;
      v62(v65, v61, v60);
      v62(v47, v63, v60);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v94);
}

uint64_t sub_1E102CE94(uint64_t a1)
{
  sub_1E10AE9CC();
  sub_1E0FF8310(v3, *v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E102CEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E102BE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E102CF34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E0FF8CD4();
  *a1 = result;
  return result;
}

uint64_t sub_1E102CF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102CFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E102D038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102D08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E102D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E102BF84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E102D11C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E102D160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102D1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ParticipantSchedule.participant.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_1E102D42C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E102D4F8(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_1E102D544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E102D42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E102D574(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E102D5C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static ParticipantSchedule.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((sub_1E10AE03C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ParticipantSchedule(0, a3, a4, v6);

  return sub_1E10AE22C();
}

uint64_t ParticipantSchedule.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a2;
  v5 = *(a2 + 24);
  type metadata accessor for ParticipantSchedule.CodingKeys(255, *(a2 + 16), v5, a4);
  swift_getWitnessTable();
  v6 = sub_1E10AE8BC();
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v15[1];
  sub_1E10AEA5C();
  LOBYTE(v20) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v17;
  sub_1E10AE8AC();
  if (v12)
  {
    return (*(v16 + 8))(v10, v6);
  }

  v14 = v16;
  v20 = *(v11 + *(v15[0] + 36));
  v19 = 1;
  sub_1E10AE20C();
  v18 = *(*(*(v5 + 8) + 8) + 16);
  swift_getWitnessTable();
  sub_1E10AE8AC();
  return (*(v14 + 8))(v10, v6);
}

uint64_t ParticipantSchedule.hash(into:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E10ADFFC();

  return sub_1E10AE21C();
}

uint64_t ParticipantSchedule.hashValue.getter(uint64_t a1)
{
  sub_1E10AE9CC();
  ParticipantSchedule.hash(into:)(v3, a1);
  return sub_1E10AEA0C();
}

uint64_t ParticipantSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v36 = &v31 - v9;
  type metadata accessor for ParticipantSchedule.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v41 = sub_1E10AE81C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  v37 = a3;
  v16 = type metadata accessor for ParticipantSchedule(0, a2, a3, v15);
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v14;
  v21 = v42;
  sub_1E10AEA3C();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = a1;
  v31 = v16;
  v32 = v20;
  v22 = v35;
  LOBYTE(v45) = 0;
  v23 = v37;
  v24 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v25 = v36;
  v26 = v38;
  sub_1E10AE7FC();
  v27 = v32;
  (*(v22 + 32))(v32, v25, v24);
  sub_1E10AE20C();
  v44 = 1;
  v43 = *(*(*(v23 + 8) + 8) + 8);
  swift_getWitnessTable();
  sub_1E10AE7FC();
  (*(v39 + 8))(v26, v41);
  v28 = v31;
  *&v27[*(v31 + 36)] = v45;
  v29 = v33;
  (*(v33 + 16))(v34, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v29 + 8))(v27, v28);
}

uint64_t sub_1E102DEF0(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  ParticipantSchedule.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E102DFD8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = sub_1E10AE20C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E102E078(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1E102E208(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFF)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *v19 = v20;
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

void sub_1E102E438()
{
  v1 = v0;
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v2 = sub_1E10ADF9C();
  __swift_project_value_buffer(v2, qword_1EE185540);
  v3 = sub_1E10ADF7C();
  v4 = sub_1E10AE45C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1E0FDF000, v3, v4, "Tearing down ShazamEventsServiceConnection", v5, 2u);
    MEMORY[0x1E12EE9E0](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    [v6 invalidate];
    v6 = *(v1 + 16);
  }

  *(v1 + 16) = 0;
}

uint64_t sub_1E102E540()
{
  sub_1E102E438();

  return swift_deallocClassInstance();
}

uint64_t sub_1E102E5A0(void (*a1)(void), uint64_t a2)
{
  sub_1E102E8F4();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    aBlock[4] = sub_1E102EF18;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E102ECE8;
    aBlock[3] = &block_descriptor_1;
    v7 = _Block_copy(aBlock);
    v8 = v5;

    v9 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v7);
    sub_1E10AE53C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C70, &qword_1E10B4498);
    if (swift_dynamicCast())
    {

      return v23;
    }

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v17 = sub_1E10ADF9C();
    __swift_project_value_buffer(v17, qword_1EE185540);
    v18 = sub_1E10ADF7C();
    v19 = sub_1E10AE44C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E0FDF000, v18, v19, "Cannot get Shazam event service remote proxy", v20, 2u);
      MEMORY[0x1E12EE9E0](v20, -1, -1);
    }

    sub_1E10095EC();
    v21 = swift_allocError();
    *v22 = xmmword_1E10B4430;
    a1();
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v11 = sub_1E10ADF9C();
    __swift_project_value_buffer(v11, qword_1EE185540);
    v12 = sub_1E10ADF7C();
    v13 = sub_1E10AE44C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E0FDF000, v12, v13, "Cannot get Shazam event service connection", v14, 2u);
      MEMORY[0x1E12EE9E0](v14, -1, -1);
    }

    sub_1E10095EC();
    v15 = swift_allocError();
    *v16 = xmmword_1E10B4430;
    a1();
  }

  return 0;
}

void sub_1E102E8F4()
{
  if (!*(v0 + 16))
  {
    v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v2 = sub_1E10AE04C();
    v3 = [v1 initWithMachServiceName:v2 options:4096];

    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol_];
    [v3 setExportedInterface_];

    v6 = [v4 interfaceWithProtocol_];
    [v3 setRemoteObjectInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v19 = sub_1E102EFA0;
    v20 = v7;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1E102ED50;
    v18 = &block_descriptor_11_0;
    v8 = _Block_copy(&v15);

    [v3 setInterruptionHandler_];
    _Block_release(v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v19 = sub_1E102EFC4;
    v20 = v9;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1E102ED50;
    v18 = &block_descriptor_15;
    v10 = _Block_copy(&v15);

    [v3 setInvalidationHandler_];
    _Block_release(v10);
    v11 = *(v0 + 16);
    *(v0 + 16) = v3;
    v12 = v3;

    v13 = *(v0 + 16);
    if (v13)
    {
      v14 = v13;
      [v14 resume];
    }
  }
}

uint64_t sub_1E102EB8C(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v4 = sub_1E10ADF9C();
  __swift_project_value_buffer(v4, qword_1EE185540);
  v5 = a1;
  v6 = sub_1E10ADF7C();
  v7 = sub_1E10AE44C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E0FDF000, v6, v7, "Shazam event service remote proxy error: %@", v8, 0xCu);
    sub_1E102EF38(v9);
    MEMORY[0x1E12EE9E0](v9, -1, -1);
    MEMORY[0x1E12EE9E0](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1E102ECE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1E102ED50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1E102ED94(uint64_t a1, const char *a2)
{
  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v3 = sub_1E10ADF9C();
  __swift_project_value_buffer(v3, qword_1EE185540);
  v4 = sub_1E10ADF7C();
  v5 = sub_1E10AE44C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1E0FDF000, v4, v5, a2, v6, 2u);
    MEMORY[0x1E12EE9E0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E102E438();
  }

  return result;
}

uint64_t sub_1E102EEB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = v3;
    [v4 setExportedObject_];
  }

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E102EF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89170, &qword_1E10B15D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1E102F05C(__int128 *a1)
{
  v3 = v1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0) - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31[-v12];
  v14 = *v3;
  v15 = *(v3 + 5);
  v37 = *(v3 + 4);
  v38 = v15;
  v39 = *(v3 + 6);
  v16 = *(v3 + 1);
  v33 = *v3;
  v34 = v16;
  v17 = *(v3 + 3);
  v35 = *(v3 + 2);
  v36 = v17;
  v32 = &v33;
  v18 = sub_1E1035760(sub_1E1031EC4, v31, v14);
  if (v18[2])
  {
    sub_1E0FEDC50(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v9, &qword_1ECE89C78, &qword_1E10B6BA0);

    sub_1E0FEDEF4(v9, v13, &qword_1ECE89C78, &qword_1E10B6BA0);
    sub_1E1030404(a1);
    v19 = sub_1E10310C0();
    if (v2)
    {
      v20 = a1[7];
      v39 = a1[6];
      v40 = v20;
      v21 = a1[9];
      v41 = a1[8];
      v42 = v21;
      v22 = a1[3];
      v35 = a1[2];
      v36 = v22;
      v23 = a1[5];
      v37 = a1[4];
      v38 = v23;
      v24 = a1[1];
      v33 = *a1;
      v34 = v24;
      sub_1E0FEDAB8(&v33);
    }

    else
    {
      v3 = v19;
    }

    sub_1E0FF0440(v13, &qword_1ECE89C78, &qword_1E10B6BA0);
  }

  else
  {

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v25 = sub_1E10ADF9C();
    __swift_project_value_buffer(v25, qword_1EE185540);
    v26 = sub_1E10ADF7C();
    v27 = sub_1E10AE44C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E0FDF000, v26, v27, "No resource available for venue schedule", v28, 2u);
      MEMORY[0x1E12EE9E0](v28, -1, -1);
    }

    sub_1E1031F0C();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1E102F36C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F60, &qword_1E10B4900);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v13 - v7;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v10 = v1[5];
  v24 = v1[4];
  v25 = v10;
  v11 = v1[1];
  v20 = *v1;
  v21 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF74D4(&v20, &v14);
  sub_1E10346B4();
  sub_1E10AEA5C();
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v14 = v20;
  v15 = v21;
  sub_1E0FF7480();
  sub_1E10AE8AC();
  v13[2] = v16;
  v13[3] = v17;
  v13[4] = v18;
  v13[5] = v19;
  v13[0] = v14;
  v13[1] = v15;
  sub_1E0FF750C(v13);
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1E102F518@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F50, &qword_1E10B48F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10346B4();
  sub_1E10AEA3C();
  if (!v2)
  {
    sub_1E0FF753C();
    sub_1E10AE7FC();
    (*(v6 + 8))(v10, v5);
    v11 = v15[3];
    a2[2] = v15[2];
    a2[3] = v11;
    v12 = v15[5];
    a2[4] = v15[4];
    a2[5] = v12;
    v13 = v15[1];
    *a2 = v15[0];
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E102F6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E10BF5C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E102F748(uint64_t a1)
{
  v2 = sub_1E10346B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E102F784(uint64_t a1)
{
  v2 = sub_1E10346B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E102F7F0(void *a1, double a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CE0, &qword_1E10B4860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E103269C();
  sub_1E10AEA5C();
  v14 = 0;
  sub_1E10AE88C();
  if (!v3)
  {
    v13 = 1;
    sub_1E10AE88C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E102F978(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E12EE180](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E12EE180](*&v3);
}

uint64_t sub_1E102F9C8(void *a1)
{
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F88, &qword_1E10B4910) - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 4);
  v39 = *(v1 + 3);
  v40 = v9;
  v10 = *(v1 + 6);
  v41 = *(v1 + 5);
  v42 = v10;
  v11 = *(v1 + 2);
  v37 = *(v1 + 1);
  v38 = v11;
  v12 = v1[14];
  v22 = v1[15];
  v23 = v12;
  HIDWORD(v21) = *(v1 + 128);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1E1034708();

  sub_1E10AEA5C();
  *&v31 = v7;
  *(&v31 + 1) = v8;
  LOBYTE(v29[0]) = 0;
  sub_1E0FF4F38();
  v17 = v24;
  sub_1E10AE8AC();
  if (v17)
  {
  }

  else
  {
    v20 = v22;
    v19 = v23;

    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    v30 = 1;
    sub_1E0FEDC50(&v37, v29, &qword_1ECE89C80, &qword_1E10B44E0);
    sub_1E103486C();
    sub_1E10AE85C();
    v29[2] = v33;
    v29[3] = v34;
    v29[4] = v35;
    v29[5] = v36;
    v29[0] = v31;
    v29[1] = v32;
    sub_1E0FF0440(v29, &qword_1ECE89C80, &qword_1E10B44E0);
    v26 = v19;
    v27 = v20;
    v28 = BYTE4(v21);
    v25 = 2;
    sub_1E10348C0();
    sub_1E10AE85C();
  }

  return (*(v43 + 8))(v6, v16);
}

uint64_t sub_1E102FCAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89F68, &qword_1E10B4908);
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1034708();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v22 = a2;
  LOBYTE(v23) = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v12 = v32[0];
  *(&v21 + 1) = v12 >> 64;
  v11 = v12;
  v39 = 1;
  sub_1E103475C();
  sub_1E10AE7AC();
  *&v21 = v11;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  v52 = v45;
  v47 = v40;
  v48 = v41;
  v36 = 2;
  sub_1E10347B0();
  sub_1E10AE7AC();
  (*(v10 + 8))(v9, v53);
  v13 = *(&v37 + 1);
  v53 = v37;
  LOBYTE(v11) = v38;
  v46 = v38;
  v14 = v21;
  v23 = v21;
  v26 = v49;
  v27 = v50;
  v28 = v51;
  v29 = v52;
  v24 = v47;
  v25 = v48;
  v30 = v37;
  v31 = v38;
  v15 = v22;
  *(v22 + 128) = v38;
  v16 = v26;
  v15[2] = v25;
  v15[3] = v16;
  v17 = v28;
  v15[4] = v27;
  v15[5] = v17;
  v18 = v24;
  *v15 = v23;
  v15[1] = v18;
  v19 = v30;
  v15[6] = v29;
  v15[7] = v19;
  sub_1E1034804(&v23, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v14;
  v32[3] = v49;
  v32[4] = v50;
  v32[5] = v51;
  v32[6] = v52;
  v32[1] = v47;
  v32[2] = v48;
  v33 = v53;
  v34 = v13;
  v35 = v11;
  return sub_1E103483C(v32);
}

uint64_t sub_1E1030050()
{
  if (*v0)
  {
    return 6778476;
  }

  else
  {
    return 7627116;
  }
}

uint64_t sub_1E1030074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7627116 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6778476 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E1030150(uint64_t a1)
{
  v2 = sub_1E103269C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E103018C(uint64_t a1)
{
  v2 = sub_1E103269C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1E10301C8(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1E10324EC(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t sub_1E1030210()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E10AE9CC();
  sub_1E102F978(v1, v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E103026C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1E10AE9CC();
  sub_1E102F978(v2, v3);
  return sub_1E10AEA0C();
}

uint64_t sub_1E10302E8()
{
  v1 = 0x73736572646461;
  if (*v0 != 1)
  {
    v1 = 7300455;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E1030334@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E10326F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E103035C(uint64_t a1)
{
  v2 = sub_1E1034708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1030398(uint64_t a1)
{
  v2 = sub_1E1034708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1030404@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0) + 44);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 4);
  v63 = *(v5 + 3);
  v64 = v8;
  v68 = v5[128];
  v9 = *(v5 + 7);
  v66 = *(v5 + 6);
  v67 = v9;
  v65 = *(v5 + 5);
  v10 = *(v5 + 2);
  v61 = *(v5 + 1);
  v62 = v10;
  v60[0] = v6;
  v60[1] = v7;
  if (sub_1E10306A0(v60) == 1 || (v11 = *(v5 + 7), v58[6] = *(v5 + 6), v58[7] = v11, v59 = v5[128], v12 = *(v5 + 3), v58[2] = *(v5 + 2), v58[3] = v12, v13 = *(v5 + 5), v58[4] = *(v5 + 4), v58[5] = v13, v14 = *(v5 + 1), v58[0] = *v5, v58[1] = v14, sub_1E10306A0(v58) == 1) || ((v15 = *(v5 + 7), v55 = *(v5 + 6), v56 = v15, v57 = v5[128], v16 = *(v5 + 3), v51 = *(v5 + 2), v52 = v16, v17 = *(v5 + 5), v53 = *(v5 + 4), v54 = v17, v18 = *(v5 + 1), v49 = *v5, v50 = v18, v19 = *(&v18 + 1), v39 = v6, *(&v18 + 1) != 1) ? (v38 = v55, v35 = v53, v36 = v54, v34 = v52, v37 = v51, v20 = v50) : (v20 = 0, v38 = 0uLL, v36 = 0u, v37 = 0u, v34 = 0u, v35 = 0u), (v21 = *(v5 + 5), v45[4] = *(v5 + 4), v45[5] = v21, v45[6] = *(v5 + 6), v22 = *(v5 + 1), v45[0] = *v5, v45[1] = v22, v23 = *(v5 + 3), v45[2] = *(v5 + 2), v45[3] = v23, v24 = *(v5 + 14), v25 = *(v5 + 15), v26 = v5[128], v46 = v24, v47 = v25, v48 = v26, sub_1E10306A0(v45) == 1) || (v27 = *(v5 + 5), v41[4] = *(v5 + 4), v41[5] = v27, v41[6] = *(v5 + 6), v28 = *(v5 + 14), v29 = *(v5 + 1), v41[0] = *v5, v41[1] = v29, v30 = *(v5 + 3), v41[2] = *(v5 + 2), v41[3] = v30, v42 = v28, v43 = v25, v44 = v26, sub_1E10306A0(v41) == 1)))
  {
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {
    v31 = v24;
    *a1 = v4;
    *(a1 + 8) = v3;
    v32 = 0.0;
    if (v26)
    {
      v31 = 0.0;
    }

    else
    {
      v32 = v25;
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = v39;
    *(a1 + 40) = v7;
    *(a1 + 48) = v20;
    *(a1 + 56) = v19;
    *(a1 + 64) = v37;
    *(a1 + 80) = v34;
    *(a1 + 96) = v35;
    *(a1 + 112) = v36;
    *(a1 + 128) = v38;
    *(a1 + 144) = v31;
    *(a1 + 152) = v32;

    return sub_1E0FEDC50(&v50, v40, &qword_1ECE89C80, &qword_1E10B44E0);
  }

  return result;
}

uint64_t sub_1E10306A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E10306B8(char a1)
{
  result = 0x652D6D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x7365756E6576;
      break;
    case 3:
      v3 = 1953458288;
      goto LABEL_10;
    case 4:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x657061706C6C6177;
      break;
    case 6:
      result = 0x61662D6863746177;
      break;
    case 7:
      v3 = 1701079414;
LABEL_10:
      result = v3 | 0x6C612D6F00000000;
      break;
    case 8:
      result = 0x7365726E6567;
      break;
    case 9:
      result = 0x72672D74726F7073;
      break;
    case 10:
      result = 0x7374726F7073;
      break;
    case 11:
      result = 0x74697465706D6F63;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E1030838(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1E10306B8(*a1);
  v5 = v4;
  if (v3 == sub_1E10306B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E10AE8FC();
  }

  return v8 & 1;
}

uint64_t sub_1E10308C0()
{
  v1 = *v0;
  sub_1E10AE9CC();
  sub_1E10306B8(v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E1030924(uint64_t a1)
{
  sub_1E10306B8(*v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1030978(uint64_t a1)
{
  v2 = *v1;
  sub_1E10AE9CC();
  sub_1E10306B8(v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

unint64_t sub_1E10309D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E1032808(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1E1030A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E10306B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E1030A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1032808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1030A78(uint64_t a1)
{
  v2 = sub_1E1033348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1030AB4(uint64_t a1)
{
  v2 = sub_1E1033348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1030AF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E78, &qword_1E10B48F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1033348();
  sub_1E10AEA5C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  sub_1E1033D5C();
  sub_1E10AE85C();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E1033E14();
    sub_1E10AE85C();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E1033ECC();
    sub_1E10AE8AC();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E1033F84();
    sub_1E10AE85C();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E103403C();
    sub_1E10AE85C();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E10340F4();
    sub_1E10AE85C();
    v13 = v3[6];
    HIBYTE(v12) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E10341AC();
    sub_1E10AE85C();
    v13 = v3[7];
    HIBYTE(v12) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E1034264();
    sub_1E10AE85C();
    v13 = v3[8];
    HIBYTE(v12) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E103431C();
    sub_1E10AE85C();
    v13 = v3[9];
    HIBYTE(v12) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
    sub_1E10343D4();
    sub_1E10AE85C();
    v13 = v3[10];
    HIBYTE(v12) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
    sub_1E103448C();
    sub_1E10AE85C();
    v13 = v3[11];
    HIBYTE(v12) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
    sub_1E1034544();
    sub_1E10AE85C();
    v13 = v3[12];
    HIBYTE(v12) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
    sub_1E10345FC();
    sub_1E10AE85C();
  }

  return (*(v6 + 8))(v10, v5);
}

__n128 sub_1E1031048@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E1032854(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

char *sub_1E10310C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C90, &qword_1E10B44E8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v150 = &v136 - v3;
  v149 = type metadata accessor for EventAttributes(0);
  v137 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v148 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  v151 = *(v192 - 1);
  MEMORY[0x1EEE9AC00](v7, v8);
  v147 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v153 = &v136 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v170 = &v136 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v136 - v18);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0);
  v144 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v141 = &v136 - v22;
  v24 = v0[1];
  v23 = v0[2];
  v26 = v0[3];
  v25 = v0[4];
  v28 = v0[5];
  v27 = v0[6];
  v29 = v0[7];
  v30 = v0[8];
  v31 = v0[9];
  v32 = v0[10];
  v34 = v0[11];
  v33 = v0[12];
  v160 = v0;
  v35 = v0[13];
  if (v24)
  {
    v172 = v24;
    v36 = v24;
  }

  else
  {
    v171 = v29;
    v168 = v28;
    v169 = v27;
    v166 = v26;
    v167 = v25;
    v165 = v23;
    v36 = sub_1E10179F8(MEMORY[0x1E69E7CC0]);
    v23 = v165;
    v26 = v166;
    v25 = v167;
    v28 = v168;
    v27 = v169;
    v29 = v171;
    v172 = 0;
  }

  v171 = &v136;
  *&v183 = v36;
  *(&v183 + 1) = v23;
  *&v184 = v26;
  *(&v184 + 1) = v25;
  *&v185 = v28;
  *(&v185 + 1) = v27;
  *&v186 = v29;
  *(&v186 + 1) = v30;
  *&v187 = v31;
  *(&v187 + 1) = v32;
  *&v188 = v34;
  *(&v188 + 1) = v33;
  v189 = v35;
  v191 = v35;
  v190[4] = v187;
  v190[5] = v188;
  v190[0] = v183;
  v190[1] = v184;
  v190[2] = v185;
  v190[3] = v186;
  v169 = v33;
  v159 = *v160;
  v37 = *(v160 + 5);
  v180 = *(v160 + 4);
  v181 = v37;
  v182 = *(v160 + 6);
  v38 = *(v160 + 1);
  v176 = *v160;
  v177 = v38;
  v39 = *(v160 + 3);
  v178 = *(v160 + 2);
  v179 = v39;
  MEMORY[0x1EEE9AC00](v39, v178);
  v166 = v32;
  v167 = v34;
  v164 = v30;
  v165 = v31;
  v168 = (&v136 - 4);
  v134 = &v176;

  v40 = v174;
  v41 = sub_1E1035760(sub_1E1034D74, v168, v159);
  v42 = v41;
  v172 = v40;
  v142 = v41[2];
  if (!v142)
  {

    v118 = MEMORY[0x1E69E7CC0];
LABEL_67:
    v19 = v150;
    v174 = v118[2];
    if (v174)
    {
      v119 = 0;
      v120 = (v137 + 48);
      v121 = MEMORY[0x1E69E7CC0];
      while (v119 < v118[2])
      {
        v122 = (*(v151 + 80) + 32) & ~*(v151 + 80);
        v123 = v118;
        v124 = *(v151 + 72);
        v125 = v153;
        sub_1E0FEDC50(v118 + v122 + v124 * v119, v153, &qword_1ECE89708, &qword_1E10B31B8);
        sub_1E0FEDC50(v125 + v192[11], v19, &qword_1ECE89C90, &qword_1E10B44E8);
        if ((*v120)(v19, 1, v149) == 1)
        {
          goto LABEL_94;
        }

        v126 = v148;
        sub_1E1031F60(v19, v148);
        v127 = *(v126 + 32);
        sub_1E1031FC4(v126);
        if (v127)
        {
          sub_1E0FF0440(v153, &qword_1ECE89708, &qword_1E10B31B8);
        }

        else
        {
          sub_1E0FEDEF4(v153, v147, &qword_1ECE89708, &qword_1E10B31B8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v176 = v121;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E1059D0C(0, *(v121 + 16) + 1, 1);
            v121 = v176;
          }

          v130 = *(v121 + 16);
          v129 = *(v121 + 24);
          if (v130 >= v129 >> 1)
          {
            sub_1E1059D0C((v129 > 1), v130 + 1, 1);
            v121 = v176;
          }

          *(v121 + 16) = v130 + 1;
          sub_1E0FEDEF4(v147, v121 + v122 + v130 * v124, &qword_1ECE89708, &qword_1E10B31B8);
        }

        ++v119;
        v19 = v150;
        v118 = v123;
        if (v174 == v119)
        {
          goto LABEL_82;
        }
      }

      goto LABEL_87;
    }

LABEL_81:
    v121 = MEMORY[0x1E69E7CC0];
LABEL_82:

    v131 = sub_1E103AEE4(v190, v121);

    sub_1E1032020(&v183);
    return v131;
  }

  v43 = 0;
  v44 = (*(v144 + 80) + 32) & ~*(v144 + 80);
  v143 = v41 + v44;
  v154 = v44 + 8;
  v45 = MEMORY[0x1E69E7CC0];
  v152 = xmmword_1E10B2E70;
  v46 = v141;
  v140 = v36;
  v138 = v41;
  while (1)
  {
    if (v43 >= v42[2])
    {
      goto LABEL_88;
    }

    v145 = v43;
    v146 = v45;
    v174 = *(v144 + 72);
    sub_1E0FEDC50(&v143[v174 * v43], v46, &qword_1ECE89C78, &qword_1E10B6BA0);
    v49 = sub_1E10363F0(v36);
    v50 = *(v49 + 16);
    if (v50)
    {
      break;
    }

    sub_1E0FF0440(v46, &qword_1ECE89C78, &qword_1E10B6BA0);
    v108 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v109 = v108[2];
    v110 = v146[2];
    v111 = v110 + v109;
    if (__OFADD__(v110, v109))
    {
      goto LABEL_89;
    }

    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v146;
    if (!v112 || v111 > v146[3] >> 1)
    {
      if (v110 <= v111)
      {
        v114 = v110 + v109;
      }

      else
      {
        v114 = v110;
      }

      v113 = sub_1E1058C94(v112, v114, 1, v146);
    }

    if (v108[2])
    {
      if ((v113[3] >> 1) - v113[2] < v109)
      {
        goto LABEL_91;
      }

      v115 = v113;
      swift_arrayInitWithCopy();

      v45 = v115;
      v48 = v145;
      if (v109)
      {
        v116 = v115[2];
        v97 = __OFADD__(v116, v109);
        v117 = v116 + v109;
        if (v97)
        {
          goto LABEL_92;
        }

        v115[2] = v117;
      }
    }

    else
    {
      v47 = v113;

      v45 = v47;
      v48 = v145;
      if (v109)
      {
        goto LABEL_90;
      }
    }

    v43 = v48 + 1;
    v36 = v140;
    if (v43 == v142)
    {
      v133 = v45;

      v118 = v133;
      goto LABEL_67;
    }
  }

  v175 = MEMORY[0x1E69E7CC0];
  v51 = v49;
  v157 = v50;
  sub_1E1059D0C(0, v50, 0);
  v52 = 0;
  v171 = v175;
  v53 = *(v151 + 80);
  v139 = v51;
  v156 = (v53 + 32) & ~v53;
  v158 = v51 + v156;
  v54 = *(v151 + 72);
  v155 = v54;
  while (1)
  {
    v169 = v52;
    v55 = v158 + v54 * v52;
    v56 = v170;
    sub_1E0FEDC50(v55, v170, &qword_1ECE89708, &qword_1E10B31B8);
    sub_1E0FEDC50(v56, v19, &qword_1ECE89708, &qword_1E10B31B8);
    v57 = *(v160 + 5);
    v180 = *(v160 + 4);
    v181 = v57;
    v182 = *(v160 + 6);
    v58 = *(v160 + 1);
    v176 = *v160;
    v177 = v58;
    v59 = *(v160 + 3);
    v178 = *(v160 + 2);
    v179 = v59;
    MEMORY[0x1EEE9AC00](v59, v178);
    v134 = &v176;
    v60 = v172;
    v61 = sub_1E1035760(sub_1E1034D74, (&v136 - 4), v159);
    v172 = v60;
    v168 = v192[12];
    if (*(v19 + v168))
    {
      v62 = *(v19 + v168);
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC8];
    }

    v63 = v61[2];
    v167 = *(v19 + v168);

    if (!v63)
    {
      goto LABEL_49;
    }

    v64 = 0;
    v65 = v61 + v154;
    v166 = v61;
    v163 = v61 + v154;
LABEL_16:
    v66 = &v65[v174 * v64];
    v67 = v64;
    while (1)
    {
      if (v67 >= v63)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v64 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_80;
      }

      v68 = *(v66 - 1);
      v69 = *v66;
      v70 = v68 == *v19 && v69 == v19[1];
      if (!v70 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v71 = &v66[*(v173 + 40)];
      v72 = *(v71 - 1);
      v73 = *v71;
      v74 = (v19 + v192[10]);
      v75 = v72 == *v74 && v73 == v74[1];
      if (!v75 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      ++v67;
      v66 += v174;
      if (v64 == v63)
      {
        goto LABEL_49;
      }
    }

    v76 = &v66[*(v173 + 40)];
    v77 = *(v76 - 1);
    v78 = *v76;
    v79 = v62[2];
    v164 = v77;
    v165 = v78;
    v162 = v62;
    if (v79 && (v80 = sub_1E1014100(v77, v78), (v81 & 1) != 0))
    {
      v82 = *(v62[7] + 8 * v80);
    }

    else
    {
      v82 = MEMORY[0x1E69E7CC0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C98, &qword_1E10B6BD0);
    inited = swift_initStackObject();
    *(inited + 16) = v152;
    *(inited + 32) = v68;
    v84 = v164;
    *(inited + 40) = v69;
    *(inited + 48) = v84;
    *(inited + 56) = v165;
    v85 = *(v82 + 2);
    swift_bridgeObjectRetain_n();

    v86 = swift_isUniquelyReferenced_nonNull_native();
    if (!v86 || (v87 = *(v82 + 3) >> 1, v87 <= v85))
    {
      v82 = sub_1E1058CF8(v86, v85 + 1, 1, v82);
      v87 = *(v82 + 3) >> 1;
    }

    v89 = v164;
    v88 = v165;
    if (v87 <= *(v82 + 2))
    {
      break;
    }

    swift_arrayInitWithCopy();

    v90 = *(v82 + 2) + 1;
    v161 = v82;
    *(v82 + 2) = v90;
    v91 = v162;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    *&v176 = v91;
    v93 = sub_1E1014100(v89, v88);
    v95 = v91[2];
    v96 = (v94 & 1) == 0;
    v97 = __OFADD__(v95, v96);
    v98 = v95 + v96;
    if (v97)
    {
      goto LABEL_85;
    }

    v99 = v94;
    if (v91[3] >= v98)
    {
      if ((v92 & 1) == 0)
      {
        v104 = v93;
        sub_1E1016C1C();
        v93 = v104;
      }
    }

    else
    {
      sub_1E1015A3C(v98, v92);
      v93 = sub_1E1014100(v89, v88);
      if ((v99 & 1) != (v100 & 1))
      {
        goto LABEL_93;
      }
    }

    v65 = v163;
    v62 = v176;
    if (v99)
    {
      *(*(v176 + 56) + 8 * v93) = v161;
    }

    else
    {
      *(v176 + 8 * (v93 >> 6) + 64) |= 1 << v93;
      v101 = (v62[6] + 16 * v93);
      *v101 = v89;
      v101[1] = v88;
      *(v62[7] + 8 * v93) = v161;
      v102 = v62[2];
      v97 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v97)
      {
        goto LABEL_86;
      }

      v62[2] = v103;
    }

    if (v64 != v63)
    {
      goto LABEL_16;
    }

LABEL_49:

    sub_1E0FF0440(v170, &qword_1ECE89708, &qword_1E10B31B8);

    *(v19 + v168) = v62;
    v105 = v171;
    v175 = v171;
    v107 = v171[2];
    v106 = v171[3];
    if (v107 >= v106 >> 1)
    {
      sub_1E1059D0C((v106 > 1), v107 + 1, 1);
      v105 = v175;
    }

    v52 = v169 + 1;
    v105[2] = v107 + 1;
    v171 = v105;
    v54 = v155;
    sub_1E0FEDEF4(v19, v105 + v156 + v107 * v155, &qword_1ECE89708, &qword_1E10B31B8);
    if (v52 == v157)
    {
      v46 = v141;
      sub_1E0FF0440(v141, &qword_1ECE89C78, &qword_1E10B6BA0);

      v42 = v138;
      v108 = v171;
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_1E10AE94C();
  __break(1u);
LABEL_94:
  sub_1E0FF0440(v19, &qword_1ECE89C90, &qword_1E10B44E8);
  v135 = 0;
  v134 = 31;
  result = sub_1E10AE6FC();
  __break(1u);
  return result;
}

uint64_t sub_1E1031EC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = v3[5];
  v8[4] = v3[4];
  v8[5] = v4;
  v8[6] = v3[6];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  v6 = v3[3];
  v8[2] = v3[2];
  v8[3] = v6;
  return sub_1E1046910(a1, v8, a2);
}

unint64_t sub_1E1031F0C()
{
  result = qword_1ECE89C88;
  if (!qword_1ECE89C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89C88);
  }

  return result;
}

uint64_t sub_1E1031F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1031FC4(uint64_t a1)
{
  v2 = type metadata accessor for EventAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1032074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E10320BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents15VenueAttributesV7AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1E103218C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1E10321D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E103225C()
{
  result = qword_1ECE89CA0;
  if (!qword_1ECE89CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CA0);
  }

  return result;
}

unint64_t sub_1E10322DC()
{
  result = qword_1ECE89CA8;
  if (!qword_1ECE89CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CA8);
  }

  return result;
}

unint64_t sub_1E1032330()
{
  result = qword_1ECE89CB0;
  if (!qword_1ECE89CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CB0);
  }

  return result;
}

unint64_t sub_1E1032388()
{
  result = qword_1ECE89CB8;
  if (!qword_1ECE89CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CB8);
  }

  return result;
}

uint64_t sub_1E1032408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1032444()
{
  result = qword_1ECE89CC0;
  if (!qword_1ECE89CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CC0);
  }

  return result;
}

unint64_t sub_1E1032498()
{
  result = qword_1ECE89CC8;
  if (!qword_1ECE89CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CC8);
  }

  return result;
}

double sub_1E10324EC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CD0, &qword_1E10B4858);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E103269C();
  sub_1E10AEA3C();
  v11[15] = 0;
  sub_1E10AE7DC();
  v9 = v8;
  v11[14] = 1;
  sub_1E10AE7DC();
  (*(v3 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1E103269C()
{
  result = qword_1ECE89CD8;
  if (!qword_1ECE89CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CD8);
  }

  return result;
}

uint64_t sub_1E10326F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7300455 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

unint64_t sub_1E1032808(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E10AE74C();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1032854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CE8, &qword_1E10B4868);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1033348();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89CF8, &qword_1E10B4870);
  LOBYTE(v33) = 0;
  sub_1E103339C();
  sub_1E10AE7AC();
  v32 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D10, &qword_1E10B4878);
  LOBYTE(v33) = 1;
  sub_1E1033454();
  sub_1E10AE7AC();
  v31 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D28, &qword_1E10B4880);
  LOBYTE(v33) = 2;
  sub_1E103350C();
  sub_1E10AE7FC();
  v30 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D40, &qword_1E10B4888);
  LOBYTE(v33) = 3;
  sub_1E10335C4();
  sub_1E10AE7AC();
  v29 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D60, &qword_1E10B4898);
  LOBYTE(v33) = 4;
  sub_1E103367C();
  sub_1E10AE7AC();
  v28 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D80, &qword_1E10B48A0);
  LOBYTE(v33) = 5;
  sub_1E1033734();
  sub_1E10AE7AC();
  v27 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DA0, &qword_1E10B48B0);
  LOBYTE(v33) = 6;
  sub_1E10337EC();
  sub_1E10AE7AC();
  v26 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DC0, &qword_1E10B48B8);
  LOBYTE(v33) = 7;
  sub_1E10338A4();
  sub_1E10AE7AC();
  v25 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DE0, &qword_1E10B48C8);
  LOBYTE(v33) = 8;
  sub_1E103395C();
  sub_1E10AE7AC();
  v11 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E00, &qword_1E10B48D0);
  LOBYTE(v33) = 9;
  sub_1E1033A14();
  sub_1E10AE7AC();
  v24 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E20, &qword_1E10B48D8);
  LOBYTE(v33) = 10;
  sub_1E1033ACC();
  sub_1E10AE7AC();
  v23 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E40, &qword_1E10B48E0);
  LOBYTE(v33) = 11;
  sub_1E1033B84();
  sub_1E10AE7AC();
  v22 = v40[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E58, &qword_1E10B48E8);
  v41 = 12;
  sub_1E1033C3C();
  sub_1E10AE7AC();
  (*(v6 + 8))(v10, v5);
  v21 = v42;
  *&v33 = v32;
  v12 = v31;
  *(&v33 + 1) = v31;
  v13 = v30;
  *&v34 = v30;
  v14 = v29;
  *(&v34 + 1) = v29;
  v15 = v28;
  *&v35 = v28;
  v16 = v27;
  *(&v35 + 1) = v27;
  *&v36 = v26;
  *(&v36 + 1) = v25;
  *&v37 = v11;
  *(&v37 + 1) = v24;
  *&v38 = v23;
  *(&v38 + 1) = v22;
  v39 = v42;
  sub_1E1033CF4(&v33, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v40[0] = v32;
  v40[1] = v12;
  v40[2] = v13;
  v40[3] = v14;
  v40[4] = v15;
  v40[5] = v16;
  v40[6] = v26;
  v40[7] = v25;
  v40[8] = v11;
  v40[9] = v24;
  v40[10] = v23;
  v40[11] = v22;
  v40[12] = v21;
  result = sub_1E1033D2C(v40);
  v18 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v18;
  *(a2 + 96) = v39;
  v19 = v34;
  *a2 = v33;
  *(a2 + 16) = v19;
  v20 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_1E1033348()
{
  result = qword_1ECE89CF0;
  if (!qword_1ECE89CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89CF0);
  }

  return result;
}

unint64_t sub_1E103339C()
{
  result = qword_1ECE89D00;
  if (!qword_1ECE89D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89CF8, &qword_1E10B4870);
    sub_1E0FEDEAC(&qword_1ECE89D08, &qword_1ECE89708, &qword_1E10B31B8, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D00);
  }

  return result;
}

unint64_t sub_1E1033454()
{
  result = qword_1ECE89D18;
  if (!qword_1ECE89D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E0FEDEAC(&qword_1ECE89D20, &unk_1ECE8B2A0, &qword_1E10B3B40, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D18);
  }

  return result;
}

unint64_t sub_1E103350C()
{
  result = qword_1ECE89D30;
  if (!qword_1ECE89D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E0FEDEAC(&qword_1ECE89D38, &qword_1ECE89C78, &qword_1E10B6BA0, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D30);
  }

  return result;
}

unint64_t sub_1E10335C4()
{
  result = qword_1ECE89D48;
  if (!qword_1ECE89D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E0FEDEAC(&qword_1ECE89D50, &qword_1ECE89D58, &qword_1E10B4890, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D48);
  }

  return result;
}

unint64_t sub_1E103367C()
{
  result = qword_1ECE89D68;
  if (!qword_1ECE89D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E0FEDEAC(&qword_1ECE89D70, &qword_1ECE89D78, &qword_1E10B6B40, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D68);
  }

  return result;
}

unint64_t sub_1E1033734()
{
  result = qword_1ECE89D88;
  if (!qword_1ECE89D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E0FEDEAC(&qword_1ECE89D90, &qword_1ECE89D98, &qword_1E10B48A8, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89D88);
  }

  return result;
}

unint64_t sub_1E10337EC()
{
  result = qword_1ECE89DA8;
  if (!qword_1ECE89DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E0FEDEAC(&qword_1ECE89DB0, &qword_1ECE89DB8, &qword_1E10B6B10, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89DA8);
  }

  return result;
}

unint64_t sub_1E10338A4()
{
  result = qword_1ECE89DC8;
  if (!qword_1ECE89DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E0FEDEAC(&qword_1ECE89DD0, &qword_1ECE89DD8, &qword_1E10B48C0, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89DC8);
  }

  return result;
}

unint64_t sub_1E103395C()
{
  result = qword_1ECE89DE8;
  if (!qword_1ECE89DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E0FEDEAC(&qword_1ECE89DF0, &qword_1ECE89DF8, &unk_1E10B6AB0, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89DE8);
  }

  return result;
}

unint64_t sub_1E1033A14()
{
  result = qword_1ECE89E08;
  if (!qword_1ECE89E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E00, &qword_1E10B48D0);
    sub_1E0FEDEAC(&qword_1ECE89E10, &qword_1ECE89E18, &qword_1E10B6B80, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E08);
  }

  return result;
}

unint64_t sub_1E1033ACC()
{
  result = qword_1ECE89E28;
  if (!qword_1ECE89E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E20, &qword_1E10B48D8);
    sub_1E0FEDEAC(&qword_1ECE89E30, &qword_1ECE89E38, &qword_1E10B6B90, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E28);
  }

  return result;
}

unint64_t sub_1E1033B84()
{
  result = qword_1ECE89E48;
  if (!qword_1ECE89E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E40, &qword_1E10B48E0);
    sub_1E0FEDEAC(&qword_1ECE89E50, &unk_1ECE8B2B0, &qword_1E10B6B60, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E48);
  }

  return result;
}

unint64_t sub_1E1033C3C()
{
  result = qword_1ECE89E60;
  if (!qword_1ECE89E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E58, &qword_1E10B48E8);
    sub_1E0FEDEAC(&qword_1ECE89E68, &qword_1ECE89E70, &qword_1E10B6B70, &unk_1E10B5C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E60);
  }

  return result;
}

unint64_t sub_1E1033D5C()
{
  result = qword_1ECE89E80;
  if (!qword_1ECE89E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89CF8, &qword_1E10B4870);
    sub_1E0FEDEAC(&qword_1ECE89E88, &qword_1ECE89708, &qword_1E10B31B8, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E80);
  }

  return result;
}

unint64_t sub_1E1033E14()
{
  result = qword_1ECE89E90;
  if (!qword_1ECE89E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D10, &qword_1E10B4878);
    sub_1E0FEDEAC(&qword_1ECE89E98, &unk_1ECE8B2A0, &qword_1E10B3B40, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89E90);
  }

  return result;
}

unint64_t sub_1E1033ECC()
{
  result = qword_1ECE89EA0;
  if (!qword_1ECE89EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D28, &qword_1E10B4880);
    sub_1E0FEDEAC(&qword_1ECE89EA8, &qword_1ECE89C78, &qword_1E10B6BA0, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EA0);
  }

  return result;
}

unint64_t sub_1E1033F84()
{
  result = qword_1ECE89EB0;
  if (!qword_1ECE89EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D40, &qword_1E10B4888);
    sub_1E0FEDEAC(&qword_1ECE89EB8, &qword_1ECE89D58, &qword_1E10B4890, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EB0);
  }

  return result;
}

unint64_t sub_1E103403C()
{
  result = qword_1ECE89EC0;
  if (!qword_1ECE89EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D60, &qword_1E10B4898);
    sub_1E0FEDEAC(&qword_1ECE89EC8, &qword_1ECE89D78, &qword_1E10B6B40, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EC0);
  }

  return result;
}

unint64_t sub_1E10340F4()
{
  result = qword_1ECE89ED0;
  if (!qword_1ECE89ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89D80, &qword_1E10B48A0);
    sub_1E0FEDEAC(&qword_1ECE89ED8, &qword_1ECE89D98, &qword_1E10B48A8, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89ED0);
  }

  return result;
}

unint64_t sub_1E10341AC()
{
  result = qword_1ECE89EE0;
  if (!qword_1ECE89EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DA0, &qword_1E10B48B0);
    sub_1E0FEDEAC(&qword_1ECE89EE8, &qword_1ECE89DB8, &qword_1E10B6B10, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EE0);
  }

  return result;
}

unint64_t sub_1E1034264()
{
  result = qword_1ECE89EF0;
  if (!qword_1ECE89EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DC0, &qword_1E10B48B8);
    sub_1E0FEDEAC(&qword_1ECE89EF8, &qword_1ECE89DD8, &qword_1E10B48C0, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89EF0);
  }

  return result;
}

unint64_t sub_1E103431C()
{
  result = qword_1ECE89F00;
  if (!qword_1ECE89F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89DE0, &qword_1E10B48C8);
    sub_1E0FEDEAC(&qword_1ECE89F08, &qword_1ECE89DF8, &unk_1E10B6AB0, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F00);
  }

  return result;
}

unint64_t sub_1E10343D4()
{
  result = qword_1ECE89F10;
  if (!qword_1ECE89F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E00, &qword_1E10B48D0);
    sub_1E0FEDEAC(&qword_1ECE89F18, &qword_1ECE89E18, &qword_1E10B6B80, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F10);
  }

  return result;
}

unint64_t sub_1E103448C()
{
  result = qword_1ECE89F20;
  if (!qword_1ECE89F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E20, &qword_1E10B48D8);
    sub_1E0FEDEAC(&qword_1ECE89F28, &qword_1ECE89E38, &qword_1E10B6B90, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F20);
  }

  return result;
}

unint64_t sub_1E1034544()
{
  result = qword_1ECE89F30;
  if (!qword_1ECE89F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E40, &qword_1E10B48E0);
    sub_1E0FEDEAC(&qword_1ECE89F38, &unk_1ECE8B2B0, &qword_1E10B6B60, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F30);
  }

  return result;
}

unint64_t sub_1E10345FC()
{
  result = qword_1ECE89F40;
  if (!qword_1ECE89F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89E58, &qword_1E10B48E8);
    sub_1E0FEDEAC(&qword_1ECE89F48, &qword_1ECE89E70, &qword_1E10B6B70, &unk_1E10B5C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F40);
  }

  return result;
}

unint64_t sub_1E10346B4()
{
  result = qword_1ECE89F58;
  if (!qword_1ECE89F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F58);
  }

  return result;
}

unint64_t sub_1E1034708()
{
  result = qword_1ECE89F70;
  if (!qword_1ECE89F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F70);
  }

  return result;
}

unint64_t sub_1E103475C()
{
  result = qword_1ECE89F78;
  if (!qword_1ECE89F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F78);
  }

  return result;
}

unint64_t sub_1E10347B0()
{
  result = qword_1ECE89F80;
  if (!qword_1ECE89F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F80);
  }

  return result;
}

unint64_t sub_1E103486C()
{
  result = qword_1ECE89F90;
  if (!qword_1ECE89F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F90);
  }

  return result;
}

unint64_t sub_1E10348C0()
{
  result = qword_1ECE89F98;
  if (!qword_1ECE89F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89F98);
  }

  return result;
}

unint64_t sub_1E1034958()
{
  result = qword_1ECE89FA0;
  if (!qword_1ECE89FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FA0);
  }

  return result;
}

unint64_t sub_1E10349B0()
{
  result = qword_1ECE89FA8;
  if (!qword_1ECE89FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FA8);
  }

  return result;
}

unint64_t sub_1E1034A08()
{
  result = qword_1ECE89FB0;
  if (!qword_1ECE89FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FB0);
  }

  return result;
}

unint64_t sub_1E1034A60()
{
  result = qword_1ECE89FB8;
  if (!qword_1ECE89FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FB8);
  }

  return result;
}

unint64_t sub_1E1034AB8()
{
  result = qword_1ECE89FC0;
  if (!qword_1ECE89FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FC0);
  }

  return result;
}

unint64_t sub_1E1034B10()
{
  result = qword_1ECE89FC8;
  if (!qword_1ECE89FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FC8);
  }

  return result;
}

unint64_t sub_1E1034B68()
{
  result = qword_1ECE89FD0;
  if (!qword_1ECE89FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FD0);
  }

  return result;
}

unint64_t sub_1E1034BC0()
{
  result = qword_1ECE89FD8;
  if (!qword_1ECE89FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FD8);
  }

  return result;
}

unint64_t sub_1E1034C18()
{
  result = qword_1ECE89FE0;
  if (!qword_1ECE89FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FE0);
  }

  return result;
}

unint64_t sub_1E1034C70()
{
  result = qword_1ECE89FE8;
  if (!qword_1ECE89FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FE8);
  }

  return result;
}

unint64_t sub_1E1034CC8()
{
  result = qword_1ECE89FF0;
  if (!qword_1ECE89FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FF0);
  }

  return result;
}

unint64_t sub_1E1034D20()
{
  result = qword_1ECE89FF8;
  if (!qword_1ECE89FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89FF8);
  }

  return result;
}

uint64_t sub_1E1034DD4(uint64_t a1)
{
  result = sub_1E10ADCBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_1E1034E50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C90, &qword_1E10B44E8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v40 - v4;
  v54 = type metadata accessor for EventAttributes(0);
  v6 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - v16;
  v18 = *v0;
  v19 = *(v0 + 80);
  v51[4] = *(v0 + 64);
  v51[5] = v19;
  v51[6] = *(v0 + 96);
  v20 = *(v0 + 16);
  v51[0] = *v0;
  v51[1] = v20;
  v22 = *(v0 + 32);
  v21 = *(v0 + 48);
  v41 = v0;
  v51[2] = v22;
  v51[3] = v21;
  v50[2] = v51;
  v23 = sub_1E103542C(sub_1E10482A4, v50, v18);
  v45 = v23[2];
  v40 = v1;
  if (v45)
  {
    v24 = 0;
    v43 = (v6 + 48);
    v25 = MEMORY[0x1E69E7CC0];
    v42 = v5;
    v44 = v23;
    while (v24 < v23[2])
    {
      v26 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v27 = *(v48 + 72);
      sub_1E0FEDC50(v23 + v26 + v27 * v24, v17, &qword_1ECE89708, &qword_1E10B31B8);
      v28 = v17;
      sub_1E0FEDC50(&v17[*(v49 + 44)], v5, &qword_1ECE89C90, &qword_1E10B44E8);
      if ((*v43)(v5, 1, v54) == 1)
      {
        goto LABEL_16;
      }

      v29 = v5;
      v30 = v46;
      sub_1E1048374(v5, v46, type metadata accessor for EventAttributes);
      v31 = *(v30 + 32);
      sub_1E10482EC(v30, type metadata accessor for EventAttributes);
      v17 = v28;
      if (v31)
      {
        sub_1E0FF0440(v28, &qword_1ECE89708, &qword_1E10B31B8);
        v5 = v29;
      }

      else
      {
        sub_1E0FEDEF4(v28, v47, &qword_1ECE89708, &qword_1E10B31B8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v51[0] = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E1059D0C(0, *(v25 + 16) + 1, 1);
          v25 = *&v51[0];
        }

        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1E1059D0C((v33 > 1), v34 + 1, 1);
          v25 = *&v51[0];
        }

        *(v25 + 16) = v34 + 1;
        sub_1E0FEDEF4(v47, v25 + v26 + v34 * v27, &qword_1ECE89708, &qword_1E10B31B8);
        v5 = v42;
      }

      ++v24;
      v23 = v44;
      if (v45 == v24)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    sub_1E0FF0440(v5, &qword_1ECE89C90, &qword_1E10B44E8);
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_14:

    v35 = *(v41 + 56);
    v36 = *(v41 + 88);
    v52[4] = *(v41 + 72);
    v52[5] = v36;
    v53 = *(v41 + 104);
    v37 = *(v41 + 24);
    v52[0] = *(v41 + 8);
    v52[1] = v37;
    v52[2] = *(v41 + 40);
    v52[3] = v35;
    v38 = sub_1E103AEE4(v52, v25);

    return v38;
  }

  return result;
}

uint64_t sub_1E1035304(uint64_t (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = a3;
    result = a1(&v16, &v18, a2);
    if (v4)
    {
      break;
    }

    v9 = v17;
    if (v17)
    {
      v10 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E1058744(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1E1058744((v11 > 1), v12 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    if (a4 == a3)
    {
      return v7;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  v7 = v4;

  return v7;
}

void *sub_1E103542C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A110, &qword_1E10B4EC0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v30 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(type metadata accessor for ResponseData(0) - 8);
  v27 = v11;
  v20 = (v11 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v22 = MEMORY[0x1E69E7CC0];
  v31 = *(v19 + 72);
  v28 = v10;
  v29 = a1;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v9, 1, v10) == 1)
    {
      sub_1E0FF0440(v9, &qword_1ECE8A110, &qword_1E10B4EC0);
    }

    else
    {
      v23 = v30;
      sub_1E0FEDEF4(v9, v30, &qword_1ECE89708, &qword_1E10B31B8);
      sub_1E0FEDEF4(v23, v32, &qword_1ECE89708, &qword_1E10B31B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1E1058C94(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1E1058C94((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1E0FEDEF4(v32, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, &qword_1ECE89708, &qword_1E10B31B8);
      v10 = v28;
      a1 = v29;
    }

    v21 += v31;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

void *sub_1E1035760(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A108, &qword_1E10B4EB8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v30 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(type metadata accessor for ResponseData(0) - 8);
  v27 = v11;
  v20 = (v11 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v22 = MEMORY[0x1E69E7CC0];
  v31 = *(v19 + 72);
  v28 = v10;
  v29 = a1;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v9, 1, v10) == 1)
    {
      sub_1E0FF0440(v9, &qword_1ECE8A108, &qword_1E10B4EB8);
    }

    else
    {
      v23 = v30;
      sub_1E0FEDEF4(v9, v30, &qword_1ECE89C78, &qword_1E10B6BA0);
      sub_1E0FEDEF4(v23, v32, &qword_1ECE89C78, &qword_1E10B6BA0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1E1058CD4(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1E1058CD4((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1E0FEDEF4(v32, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, &qword_1ECE89C78, &qword_1E10B6BA0);
      v10 = v28;
      a1 = v29;
    }

    v21 += v31;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_1E1035A94@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A120, &qword_1E10B4ED8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v57 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A128, &qword_1E10B4EE0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v57 - v11);
  result = sub_1E1034E50();
  v14 = v2;
  if (v2)
  {
    return result;
  }

  v59 = a1;
  v15 = 0;
  v16 = *(result + 16);
  v17 = result + 40;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v19 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(result + 16))
    {
      __break(1u);
LABEL_35:
      swift_once();
LABEL_25:
      v43 = sub_1E10ADF9C();
      __swift_project_value_buffer(v43, qword_1EE185540);
      v44 = sub_1E10ADF7C();
      v45 = sub_1E10AE44C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1E0FDF000, v44, v45, "No resource available for participant schedule", v46, 2u);
        MEMORY[0x1E12EE9E0](v46, -1, -1);
      }

      sub_1E1031F0C();
      swift_allocError();
      *v47 = 3;
      return swift_willThrow();
    }

    v20 = v19 + 16;
    ++v15;
    v21 = *v19;
    v19 += 16;
    if (v21 < 2)
    {
      v60 = v8;
      v66 = result;
      v22 = *(v20 - 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v18;
      v61 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E1059D2C(0, *(v18 + 16) + 1, 1);
        v18 = v65;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = v18;
      result = v66;
      if (v25 >= v24 >> 1)
      {
        v58 = v17;
        sub_1E1059D2C((v24 > 1), v25 + 1, 1);
        v17 = v58;
        result = v66;
        v26 = v65;
      }

      *(v26 + 16) = v25 + 1;
      v27 = v26 + 16 * v25;
      *(v27 + 32) = v22;
      *(v27 + 40) = v21;
      v14 = v61;
      v18 = v26;
      v8 = v60;
      goto LABEL_3;
    }
  }

  v28 = *(v3 + 16);
  v29 = *(v3 + 96);
  if (v28)
  {
    sub_1E1082C70(v28, v12);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A138, &qword_1E10B4EF0);
    if ((*(*(v30 - 8) + 48))(v12, 1, v30) != 1)
    {

      v32 = *(v30 + 48);
      sub_1E1028640(v62);
      sub_1E0FF0440(v12 + v32, &unk_1ECE8B2A0, &qword_1E10B3B40);
      v33 = (v18 + 40);
      v34 = *(v18 + 16) + 1;
      v35 = MEMORY[0x1E69E7CC0];
      v36 = v59;
      while (--v34)
      {
        v37 = v33 + 16;
        v38 = *v33;
        v33 += 16;
        if (!v38)
        {
          v35 = *(v37 - 3);

          break;
        }
      }

      LOBYTE(v65) = 0;
      v39 = v62[5];
      *(v36 + 64) = v62[4];
      *(v36 + 80) = v39;
      v40 = v63;
      v41 = v62[1];
      *v36 = v62[0];
      *(v36 + 16) = v41;
      v42 = v62[3];
      *(v36 + 32) = v62[2];
      *(v36 + 48) = v42;
      *(v36 + 96) = v40;
      *(v36 + 104) = v35;
      *(v36 + 112) = 0;
      return result;
    }

    sub_1E0FF0440(v12, &qword_1ECE8A128, &qword_1E10B4EE0);
  }

  if (!v29)
  {

LABEL_24:
    if (qword_1EE180170 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  sub_1E1082C94(v29, v8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A130, &qword_1E10B4EE8);
  if ((*(*(v31 - 8) + 48))(v8, 1, v31) == 1)
  {

    sub_1E0FF0440(v8, &qword_1ECE8A120, &qword_1E10B4ED8);
    goto LABEL_24;
  }

  v48 = *(v31 + 48);
  sub_1E107B700(v64);
  sub_1E0FF0440(v8 + v48, &unk_1ECE8B2B0, &qword_1E10B6B60);
  v49 = (v18 + 40);
  v50 = *(v18 + 16) + 1;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = v59;
  while (--v50)
  {
    v53 = v49 + 16;
    v54 = *v49;
    v49 += 16;
    if (v54 == 1)
    {
      v51 = *(v53 - 3);

      break;
    }
  }

  LOBYTE(v65) = 1;
  v55 = v64[1];
  *v52 = v64[0];
  *(v52 + 16) = v55;
  v56 = v64[3];
  *(v52 + 32) = v64[2];
  *(v52 + 48) = v56;
  *(v52 + 64) = v51;
  *(v52 + 112) = 1;
  return result;
}

char *sub_1E1035FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A118, &qword_1E10B4EC8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v36 - v7);
  result = sub_1E1034E50();
  if (!v2)
  {
    v36 = 0;
    v37 = a1;
    v10 = 0;
    v11 = *(result + 2);
    v12 = result + 40;
    v13 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v14 = &v12[16 * v10];
    while (v11 != v10)
    {
      if (v10 >= *(result + 2))
      {
        __break(1u);
LABEL_27:
        swift_once();
LABEL_17:
        v24 = sub_1E10ADF9C();
        __swift_project_value_buffer(v24, qword_1EE185540);
        v25 = sub_1E10ADF7C();
        v26 = sub_1E10AE44C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1E0FDF000, v25, v26, "No resource available for group schedule", v27, 2u);
          MEMORY[0x1E12EE9E0](v27, -1, -1);
        }

        sub_1E1031F0C();
        swift_allocError();
        *v28 = 3;
        return swift_willThrow();
      }

      v15 = (v14 + 16);
      ++v10;
      v16 = *v14;
      v14 += 16;
      if (v16 == 1)
      {
        v43 = result;
        v17 = *(v15 - 3);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38[0] = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E1059D2C(0, *(v13 + 16) + 1, 1);
          v13 = *&v38[0];
        }

        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        result = v43;
        if (v20 >= v19 >> 1)
        {
          sub_1E1059D2C((v19 > 1), v20 + 1, 1);
          result = v43;
          v13 = *&v38[0];
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = 1;
        goto LABEL_3;
      }
    }

    v22 = *(v3 + 80);
    if (!v22)
    {

LABEL_16:
      if (qword_1EE180170 != -1)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    sub_1E1082E74(v22, v8);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B260, &qword_1E10B4ED0);
    if ((*(*(v23 - 8) + 48))(v8, 1, v23) == 1)
    {

      sub_1E0FF0440(v8, &qword_1ECE8A118, &qword_1E10B4EC8);
      goto LABEL_16;
    }

    v29 = *(v23 + 48);
    sub_1E109A488(v41);
    sub_1E0FF0440(v8 + v29, &qword_1ECE89E18, &qword_1E10B6B80);
    v30 = (v13 + 40);
    v31 = *(v13 + 16) + 1;
    v32 = MEMORY[0x1E69E7CC0];
    v33 = v37;
    while (--v31)
    {
      v34 = v30 + 16;
      v35 = *v30;
      v30 += 16;
      if (v35 == 1)
      {
        v32 = *(v34 - 3);

        break;
      }
    }

    v38[4] = v41[4];
    v38[5] = v41[5];
    v38[0] = v41[0];
    v38[1] = v41[1];
    v38[3] = v41[3];
    v38[2] = v41[2];
    v39 = v42;
    v40 = v32;
    return sub_1E10485A8(v38, v33);
  }

  return result;
}

uint64_t sub_1E10363F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A110, &qword_1E10B4EC0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x652D6D617A616873, 0xED000073746E6576);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89708, &qword_1E10B31B8);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89708, &qword_1E10B31B8);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89708, &qword_1E10B31B8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E1058C94(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E1058C94((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89708, &qword_1E10B31B8);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A110, &qword_1E10B4EC0);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E10369BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A108, &qword_1E10B4EB8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89C78, &qword_1E10B6BA0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x7365756E6576, 0xE600000000000000);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89C78, &qword_1E10B6BA0);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89C78, &qword_1E10B6BA0);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89C78, &qword_1E10B6BA0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E1058CD4(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E1058CD4((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89C78, &qword_1E10B6BA0);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A108, &qword_1E10B4EB8);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1036F78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0A0, &qword_1E10B4E60);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2A0, &qword_1E10B3B40);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x73747369747261, 0xE700000000000000);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &unk_1ECE8B2A0, &qword_1E10B3B40);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &unk_1ECE8B2A0, &qword_1E10B3B40);
          sub_1E0FEDEF4(v55, v62, &unk_1ECE8B2A0, &qword_1E10B3B40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E105912C(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E105912C((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &unk_1ECE8B2A0, &qword_1E10B3B40);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0A0, &qword_1E10B4E60);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1037538(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A098, &qword_1E10B4E58);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89DF8, &unk_1E10B6AB0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B2A0, &qword_1E10B3B40) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x7365726E6567, 0xE600000000000000);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89DF8, &unk_1E10B6AB0);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89DF8, &unk_1E10B6AB0);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89DF8, &unk_1E10B6AB0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E105925C(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E105925C((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89DF8, &unk_1E10B6AB0);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A098, &qword_1E10B4E58);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}

uint64_t sub_1E1037AF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A0A8, &qword_1E10B4E68);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89D58, &qword_1E10B4890);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v58 - v12;
  v13 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89708, &qword_1E10B31B8) + 48));
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1E1014100(0x6C612D6F746F6870, 0xEC000000736D7562);
  if ((v15 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v60 = a1;
  v16 = *(*(v13 + 56) + 8 * v14);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E1059D4C(0, v17, 0);
    v18 = v67;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v67 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);

      if (v23 >= v22 >> 1)
      {
        sub_1E1059D4C((v22 > 1), v23 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 4;
      --v17;
    }

    while (v17);
  }

  v28 = sub_1E10272D4(v27);

  v67 = v28;
  v29 = *(v18 + 16);
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v30 = 0;
  v31 = v18 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v59 = v18 + 40;
  while (2)
  {
    v64 = v32;
    v33 = (v31 + 16 * v30);
    v34 = v30;
    while (1)
    {
      if (v34 >= v29)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v30 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_46;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      v37 = v67;

      v38 = sub_1E1054A88(v36, v35, v37);

      sub_1E1047FA4(v36, v35);

      if (v38)
      {
        break;
      }

      ++v34;
      v33 += 2;
      if (v30 == v29)
      {
        v32 = v64;
        goto LABEL_27;
      }
    }

    v39 = v64;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    if ((result & 1) == 0)
    {
      result = sub_1E1059D4C(0, *(v39 + 16) + 1, 1);
      v39 = v66;
    }

    v31 = v59;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_1E1059D4C((v40 > 1), v41 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v41 + 1;
    v42 = v39 + 16 * v41;
    *(v42 + 32) = v36;
    *(v42 + 40) = v35;
    v32 = v39;
    if (v30 != v29)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v64 = *(v32 + 16);
  if (v64)
  {
    v43 = 0;
    v44 = (v63 + 56);
    v45 = (v63 + 48);
    v46 = (v32 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    v47 = v60;
    while (1)
    {
      if (v43 >= *(v32 + 16))
      {
        goto LABEL_47;
      }

      if (*(v47 + 16))
      {
        v48 = v32;
        v49 = *(v46 - 1);
        v50 = *v46;

        v51 = sub_1E1014100(v49, v50);
        if (v52)
        {
          sub_1E0FEDC50(*(v47 + 56) + *(v63 + 72) * v51, v6, &qword_1ECE89D58, &qword_1E10B4890);
          v53 = 0;
        }

        else
        {
          v53 = 1;
        }

        v54 = v65;
        (*v44)(v6, v53, 1, v65);

        v32 = v48;
        if ((*v45)(v6, 1, v54) != 1)
        {
          v55 = v61;
          sub_1E0FEDEF4(v6, v61, &qword_1ECE89D58, &qword_1E10B4890);
          sub_1E0FEDEF4(v55, v62, &qword_1ECE89D58, &qword_1E10B4890);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E105938C(0, v25[2] + 1, 1, v25);
          }

          v57 = v25[2];
          v56 = v25[3];
          if (v57 >= v56 >> 1)
          {
            v25 = sub_1E105938C((v56 > 1), v57 + 1, 1, v25);
          }

          v25[2] = v57 + 1;
          result = sub_1E0FEDEF4(v62, v25 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v57, &qword_1ECE89D58, &qword_1E10B4890);
          v47 = v60;
          goto LABEL_31;
        }
      }

      else
      {
        (*v44)(v6, 1, 1, v65);
      }

      result = sub_1E0FF0440(v6, &qword_1ECE8A0A8, &qword_1E10B4E68);
LABEL_31:
      ++v43;
      v46 += 2;
      if (v64 == v43)
      {
        goto LABEL_44;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v25;
}