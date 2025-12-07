void sub_1C72F44D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219128, &qword_1C7576DB0);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_1_102();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_159_5(v4, v5);
    }

    OUTLINED_FUNCTION_69_18();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_153_4();
LABEL_15:
        *(v0[6] + 8 * v13) = *(*(v1 + 48) + 8 * v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_152_4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_1C72F4584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A628, &qword_1C7581258);
  v2 = *v0;
  v3 = sub_1C755177C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        sub_1C70802EC(v27, &v26);
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
}

void sub_1C72F4704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A648, &qword_1C75812A8);
  v2 = *v0;
  v3 = sub_1C755177C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = *(v2 + 48);
        v18 = 120 * (v14 | (v8 << 6));
        memcpy(__dst, (v17 + v18), sizeof(__dst));
        memmove((*(v4 + 48) + v18), (v17 + v18), 0x78uLL);
        sub_1C6FCA6E4(__dst, &v19);
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
}

void sub_1C72F488C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2(0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = OUTLINED_FUNCTION_282();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = *v0;
  v12 = sub_1C755177C();
  if (v11[2])
  {
    v30 = v1;
    v13 = OUTLINED_FUNCTION_18_44();
    v15 = (v14 + 63) >> 6;
    if (v12 != v11 || v13 >= &v11[v15 + 7])
    {
      memmove(v13, v11 + 7, 8 * v15);
    }

    v17 = 0;
    *(v12 + 16) = v11[2];
    OUTLINED_FUNCTION_23_37();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v31 = v5 + 32;
    v32 = v5 + 16;
    if ((v19 & v18) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_88();
LABEL_15:
        v28 = *(v5 + 72) * (v23 | (v17 << 6));
        (*(v5 + 16))(v8, v11[6] + v28, v3);
        (*(v5 + 32))(*(v12 + 48) + v28, v8, v3);
      }

      while (v20);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v1 = v30;
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_176_2();
      if (v25)
      {
        OUTLINED_FUNCTION_78_0();
        v20 = v27 & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v1 = v12;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F4A70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A620, &unk_1C7581240);
  v2 = *v0;
  v3 = sub_1C755177C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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
}

void sub_1C72F4BB0(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_1_102();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_159_5(v8, v9);
    }

    v13 = 0;
    OUTLINED_FUNCTION_6_76();
    OUTLINED_FUNCTION_137_8();
    while (v6)
    {
      OUTLINED_FUNCTION_8_2();
LABEL_15:
      v18 = 3 * (v14 | (v13 << 6));
      v19 = *(v3 + 48) + 8 * v18;
      v21 = *(v19 + 8);
      v20 = *(v19 + 16);
      v22 = v2[6] + 8 * v18;
      *v22 = *v19;
      *(v22 + 8) = v21;
      *(v22 + 16) = v20;
      sub_1C75504FC();
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v5)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v4 + 8 * v13))
      {
        OUTLINED_FUNCTION_78_0();
        v6 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1C72F4CB4(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_1_102();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_159_5(v6, v7);
    }

    OUTLINED_FUNCTION_69_18();
    if (v13)
    {
      do
      {
        OUTLINED_FUNCTION_153_4();
LABEL_15:
        *(v2[6] + v15) = *(*(v3 + 48) + v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + 8 * v17))
      {
        OUTLINED_FUNCTION_152_4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1C72F4D58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A638, &qword_1C7581278);
  v2 = *v0;
  v3 = sub_1C755177C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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
}

void sub_1C72F4E98(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_117_6();
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_1_102();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_159_5(v8, v9);
    }

    v13 = 0;
    OUTLINED_FUNCTION_6_76();
    OUTLINED_FUNCTION_137_8();
    for (; v6; v20 = v19)
    {
      OUTLINED_FUNCTION_8_2();
LABEL_15:
      v18 = v14 | (v13 << 6);
      v19 = *(*(v3 + 48) + 8 * v18);
      *(v2[6] + 8 * v18) = v19;
    }

    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v5)
      {
        goto LABEL_17;
      }

      ++v15;
      if (*(v4 + 8 * v13))
      {
        OUTLINED_FUNCTION_78_0();
        v6 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1C72F4F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217770, &unk_1C756BCC0);
  v2 = *v0;
  v3 = sub_1C755177C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_1C72F50B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8, &unk_1C7581230);
  v33 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_212_3(v33, v34);
  OUTLINED_FUNCTION_102_10();
  if (v35)
  {
    v36 = 0;
    OUTLINED_FUNCTION_90_1();
    v39 = v38 & v37;
    OUTLINED_FUNCTION_72_5();
    if (v39)
    {
      while (1)
      {
        OUTLINED_FUNCTION_88();
LABEL_9:
        OUTLINED_FUNCTION_179_3();
        v46 = (v45 + 16 * v44);
        v47 = *v46;
        v48 = v46[1];
        OUTLINED_FUNCTION_168_5();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_29_32();
        if (v49)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_149_5();
        *v51 = v47;
        v51[1] = v48;
        OUTLINED_FUNCTION_47_1();
        if (!v39)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v49)
        {
          if (v50)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v49)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v40 = v36;
      while (1)
      {
        v36 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v36 >= v32)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_176_2();
        if (v41)
        {
          OUTLINED_FUNCTION_78_0();
          v39 = v43 & v42;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v31;
    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C72F5200(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Hastings.Asset(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190F8, &qword_1C7576D90);
  v7 = sub_1C755178C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v14 = v7 + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v30 + 72);
        sub_1C72FBF68(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5);
        sub_1C7551F3C();
        sub_1C75505AC();
        v19 = sub_1C7551FAC();
        v20 = -1 << *(v8 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        sub_1C72FBF10(v5, *(v8 + 48) + v23 * v18);
        ++*(v8 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v17 = *(v6 + 56 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }
}

void sub_1C72F54D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Hastings.Feature(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219100, &qword_1C7576D98);
  v7 = sub_1C755178C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v6 + 48);
        v20 = *(v33 + 72);
        sub_1C72FBF68(v19 + v20 * (v16 | (v9 << 6)), v5);
        sub_1C7551F3C();
        sub_1C75505AC();
        sub_1C75505AC();

        sub_1C754F58C();
        sub_1C72FC014(&qword_1EC215238, MEMORY[0x1E69C1928], MEMORY[0x1E69C1938]);
        sub_1C755059C();
        v21 = sub_1C7551FAC();
        v22 = -1 << *(v8 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        sub_1C72FBF10(v5, *(v8 + 48) + v25 * v20);
        ++*(v8 + 16);
        v6 = v32;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v15 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v31;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }
}

void sub_1C72F58C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219148, &qword_1C7581320);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F5AF8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C754E07C();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6B0, &qword_1C7581318);
  v7 = sub_1C755178C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_1C72FC014(&qword_1EC215FD8, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
        v20 = sub_1C755058C();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_1C72F5E10(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C754E15C();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A630, &qword_1C7581270);
  v7 = sub_1C755178C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_1C72FC014(&qword_1EDD0F9C0, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
        v20 = sub_1C755058C();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_1C72F6128(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890, &qword_1C75812B0);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F6388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888, &qword_1C7565668);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1C7551F3C();
        MEMORY[0x1CCA5E460](v15);
        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F65A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216880, &qword_1C7565658);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F69DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219120, &unk_1C7581260);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        memcpy(__dst, (*(v3 + 48) + 192 * (v12 | (v6 << 6))), 0xC0uLL);
        sub_1C7551F3C();
        sub_1C7080654(__dst, v24);
        sub_1C75505AC();
        sub_1C75505AC();

        v15 = sub_1C7551FAC();
        v16 = -1 << *(v5 + 32);
        v17 = v15 & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        memcpy((*(v5 + 48) + 192 * v19), __dst, 0xC0uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F6CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A610, &qword_1C7581220);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v21 = sub_1C7551FAC();
        v22 = -1 << *(v5 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v5 + 48) + 32 * v25);
        *v30 = v17;
        v30[1] = v18;
        v30[2] = v19;
        v30[3] = v20;
        ++*(v5 + 16);
        v3 = v32;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F6F34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A608, &qword_1C7581218);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v34 = (v10 - 1) & v10;
LABEL_12:
        v16 = (*(v3 + 48) + 40 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v20 = v16[2];
        v19 = v16[3];
        v21 = v16[4];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v22 = sub_1C7551FAC();
        v23 = -1 << *(v5 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v5 + 48) + 40 * v26);
        *v31 = v17;
        v31[1] = v18;
        v31[2] = v20;
        v31[3] = v19;
        v31[4] = v21;
        ++*(v5 + 16);
        v3 = v33;
        v10 = v34;
        if (!v34)
        {
          goto LABEL_7;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v32;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v34 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F71B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A618, &qword_1C7581228);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v1;
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
    v33 = (v8 + 63) >> 6;
    v34 = v3;
    v11 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v35 = (v10 - 1) & v10;
LABEL_12:
        v15 = (*(v3 + 48) + 48 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
        v21 = v15[4];
        v20 = v15[5];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v22 = sub_1C7551FAC();
        v23 = -1 << *(v5 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v5 + 48) + 48 * v26);
        *v31 = v16;
        v31[1] = v17;
        v31[2] = v19;
        v31[3] = v18;
        v31[4] = v21;
        v31[5] = v20;
        ++*(v5 + 16);
        v3 = v34;
        v10 = v35;
        if (!v35)
        {
          goto LABEL_7;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v33)
        {

          v2 = v32;
          goto LABEL_25;
        }

        v14 = *(v7 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v35 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F743C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A600, &qword_1C7581208);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v17 = *v15;
        v16 = v15[1];
        sub_1C7551F3C();
        sub_1C7551F5C();
        if (v16)
        {
          sub_1C75504FC();
          sub_1C75505AC();
        }

        v18 = sub_1C7551FAC();
        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (*(v5 + 48) + 16 * v22);
        *v27 = v17;
        v27[1] = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v11 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_1C72F768C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A668, &qword_1C75812D0);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v34 = *(v16 + 16);
        v32 = *(v16 + 25);
        v33 = *(v16 + 24);
        v31 = *(v16 + 26);
        v19 = *(v16 + 32);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v17, v18);
        sub_1C75505AC();

        v20 = sub_1C7551FAC();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v5 + 48) + 40 * v24;
        *v29 = v17;
        *(v29 + 8) = v18;
        *(v29 + 16) = v34;
        *(v29 + 24) = v33;
        *(v29 + 25) = v32;
        *(v29 + 26) = v31;
        *(v29 + 32) = v19;
        ++*(v5 + 16);
        v3 = v30;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F7944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A670, &qword_1C75812D8);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + ((v12 | (v6 << 6)) << 6));
        v17 = *v15;
        v16 = v15[1];
        v18 = v15[3];
        v38 = v15[2];
        v39 = v18;
        v36 = v17;
        v37 = v16;
        sub_1C7551F3C();
        v19 = v38;
        v34 = 0x3A70697254;
        v35 = 0xE500000000000000;
        sub_1C7026698(&v36, v33);
        MEMORY[0x1CCA5CD70](v19, *(&v19 + 1));
        sub_1C75505AC();

        v20 = sub_1C7551FAC();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + (v24 << 6));
        v30 = v36;
        v31 = v37;
        v32 = v39;
        v29[2] = v38;
        v29[3] = v32;
        *v29 = v30;
        v29[1] = v31;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F7BDC()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_19_1();
  v4 = type metadata accessor for PartOfWeekExtendedToken(v3);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = (v7 - v6);
  v9 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v0 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A678, &qword_1C75812E0);
  v10 = OUTLINED_FUNCTION_212_3(v9, v0);
  if (*(v9 + 16))
  {
    v11 = 0;
    OUTLINED_FUNCTION_90_1();
    v14 = v13 & v12;
    OUTLINED_FUNCTION_72_5();
    if (v14)
    {
      while (1)
      {
        v14 &= v14 - 1;
LABEL_11:
        OUTLINED_FUNCTION_75_12();
        sub_1C72FBF68(v19, v8);
        sub_1C7551F3C();
        OUTLINED_FUNCTION_92_13();
        MEMORY[0x1CCA5CD70](*v8, v8[1]);
        sub_1C75505AC();

        sub_1C7551FAC();
        OUTLINED_FUNCTION_29_32();
        if (v20)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_19:
        OUTLINED_FUNCTION_114_9(v21);
        OUTLINED_FUNCTION_14_52();
        sub_1C72FBF10(v8, v23);
        ++*(v10 + 16);
        if (!v14)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v20)
        {
          if (v22)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_38_19();
        if (!v20)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_6:
      v15 = v11;
      while (1)
      {
        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v11 >= v1)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_176_2();
        if (v16)
        {
          OUTLINED_FUNCTION_78_0();
          v14 = v18 & v17;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v2 = v10;
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C72F7DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A680, &qword_1C75812E8);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 56 * (v13 | (v6 << 6));
        v18 = *v16;
        v17 = *(v16 + 8);
        v35 = *(v16 + 16);
        v19 = *(v16 + 32);
        v20 = *(v16 + 40);
        v33 = *(v16 + 48);
        v34 = *(v16 + 24);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v18, v17);
        sub_1C75505AC();

        v21 = sub_1C7551FAC();
        v22 = -1 << *(v5 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v5 + 48) + 56 * v25;
        *v30 = v18;
        *(v30 + 8) = v17;
        *(v30 + 16) = v35;
        *(v30 + 24) = v34;
        *(v30 + 32) = v19;
        *(v30 + 40) = v20;
        *(v30 + 48) = v33;
        ++*(v5 + 16);
        v3 = v32;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v31;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F80C8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TimeExtendedToken(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A688, &qword_1C75812F0);
  v7 = sub_1C755178C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v14 = v7 + 56;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v30 + 72);
        sub_1C72FBF68(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5);
        sub_1C7551F3C();
        v31 = 0x3A656D6954;
        v32 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](*v5, v5[1]);
        sub_1C75505AC();

        v19 = sub_1C7551FAC();
        v20 = -1 << *(v8 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        sub_1C72FBF10(v5, *(v8 + 48) + v23 * v18);
        ++*(v8 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v13)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v17 = *(v6 + 56 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v8;
  }
}

void sub_1C72F83CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A690, &qword_1C75812F8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v30 = v3;
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v33 = *(v16 + 16);
        v31 = *(v16 + 25);
        v32 = *(v16 + 24);
        v19 = *(v16 + 32);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C755180C();

        MEMORY[0x1CCA5CD70](v17, v18);
        sub_1C75505AC();

        v20 = sub_1C7551FAC();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v5 + 48) + 40 * v24;
        *v29 = v17;
        *(v29 + 8) = v18;
        *(v29 + 16) = v33;
        *(v29 + 24) = v32;
        *(v29 + 25) = v31;
        *(v29 + 32) = v19;
        ++*(v5 + 16);
        v3 = v30;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F86A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A698, &qword_1C7581300);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 56 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 48);
        v18 = *(v15 + 32);
        v37 = *(v15 + 16);
        v38 = v18;
        v39 = v17;
        v36 = v16;
        sub_1C7551F3C();
        v19 = v37;
        v34 = 0x6E6F697461636F4CLL;
        v35 = 0xE90000000000003ALL;
        sub_1C70260B4(&v36, v33);
        MEMORY[0x1CCA5CD70](v19, *(&v19 + 1));
        sub_1C75505AC();

        v20 = sub_1C7551FAC();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = *(v5 + 48) + 56 * v24;
        v30 = v36;
        v31 = v37;
        v32 = v38;
        *(v29 + 48) = v39;
        *(v29 + 16) = v31;
        *(v29 + 32) = v32;
        *v29 = v30;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v11 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F8944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A0, &qword_1C7581308);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        memcpy(__dst, (*(v3 + 48) + 72 * (v12 | (v6 << 6))), 0x42uLL);
        sub_1C7551F3C();
        v15 = __dst[4];
        v16 = __dst[5];
        v27 = 980706640;
        v28 = 0xE400000000000000;
        sub_1C7025FF8(__dst, v26);
        MEMORY[0x1CCA5CD70](v15, v16);
        sub_1C75505AC();

        v17 = sub_1C7551FAC();
        v18 = -1 << *(v5 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        memcpy((*(v5 + 48) + 72 * v21), __dst, 0x42uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F8BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6A8, &qword_1C7581310);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        memcpy(__dst, (*(v3 + 48) + 72 * (v12 | (v6 << 6))), 0x41uLL);
        sub_1C7551F3C();
        v15 = __dst[4];
        v16 = __dst[5];
        v27 = 0x3A6E6F73726550;
        v28 = 0xE700000000000000;
        sub_1C7025F3C(__dst, v26);
        MEMORY[0x1CCA5CD70](v15, v16);
        sub_1C75505AC();

        v17 = sub_1C7551FAC();
        v18 = -1 << *(v5 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        memcpy((*(v5 + 48) + 72 * v21), __dst, 0x41uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F8E54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219108, &qword_1C7581210);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C7551F3C();
        sub_1C75505AC();

        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F9108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219128, &qword_1C7576DB0);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1C7551F2C();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }
}

void sub_1C72F92F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219140, &qword_1C7576DB8);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C7551F3C();
        StoryMusicTermTag.rawValue.getter();
        sub_1C75505AC();

        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72F9530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216758, &qword_1C75654D8);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    v31 = v3;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v32 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();

        sub_1C7551F5C();
        if (v19)
        {
          sub_1C75505AC();
        }

        v20 = sub_1C7551FAC();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v17;
LABEL_23:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v30 = *(v5 + 48) + 24 * v24;
        *v30 = v25;
        *(v30 + 8) = v18;
        *(v30 + 16) = v19;
        ++*(v5 + 16);
        v3 = v31;
        v10 = v32;
        if (!v32)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v21) >> 6;
      v25 = v17;
      while (++v23 != v27 || (v26 & 1) == 0)
      {
        v28 = v23 == v27;
        if (v23 == v27)
        {
          v23 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v23);
        if (v29 != -1)
        {
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v32 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_1C72F98B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A628, &qword_1C7581258);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v3;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v37 = (v10 - 1) & v10;
LABEL_12:
        v16 = (*(v3 + 48) + ((v13 | (v6 << 6)) << 6));
        v18 = *v16;
        v17 = v16[1];
        v19 = v16[3];
        v41 = v16[2];
        v42 = v19;
        v39 = v18;
        v40 = v17;
        sub_1C7551F3C();
        v20 = v41;
        sub_1C70802EC(&v39, v38);
        sub_1C75505AC();
        sub_1C75505AC();
        MEMORY[0x1CCA5E460](*(v20 + 16));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = v20 + 40;
          do
          {
            sub_1C75504FC();
            sub_1C75505AC();

            v22 += 16;
            --v21;
          }

          while (v21);
        }

        if (v42)
        {
          sub_1C7551F5C();
          sub_1C75505AC();
        }

        else
        {
          sub_1C7551F5C();
        }

        v3 = v36;
        MEMORY[0x1CCA5E460](*(&v42 + 1));
        v23 = sub_1C7551FAC();
        v24 = -1 << *(v5 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
        *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = (*(v5 + 48) + (v27 << 6));
        v33 = v39;
        v34 = v40;
        v35 = v42;
        v32[2] = v41;
        v32[3] = v35;
        *v32 = v33;
        v32[1] = v34;
        ++*(v5 + 16);
        v10 = v37;
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_31;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v37 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }
}

void sub_1C72F9BC4(uint64_t a1)
{
  v2 = v1;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v34 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A648, &qword_1C75812A8);
  v7 = sub_1C755178C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v2;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    v35 = v7;
    v36 = v6;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_12:
        memcpy(__dst, (*(v6 + 48) + 120 * (v16 | (v9 << 6))), 0x78uLL);
        sub_1C7551F3C();
        v19 = __dst[10];
        sub_1C6FCA6E4(__dst, &v38);
        sub_1C75505AC();
        MEMORY[0x1CCA5E460](*(v19 + 16));
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
          v22 = *(v34 + 72);
          do
          {
            sub_1C72FBF68(v21, v5);
            QueryTokenCategoryType.hash(into:)();
            sub_1C70F76E0(v5, type metadata accessor for QueryTokenSuggestion);
            v21 += v22;
            --v20;
          }

          while (v20);
        }

        v23 = sub_1C7551FAC();
        v8 = v35;
        v24 = -1 << *(v35 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
        v6 = v36;
LABEL_24:
        *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        memcpy((*(v8 + 48) + 120 * v27), __dst, 0x78uLL);
        ++*(v8 + 16);
        v13 = v37;
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      v6 = v36;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v15 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v33;
          goto LABEL_28;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v37 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v8;
  }
}

void sub_1C72F9F34(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C754F0FC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219130, &qword_1C75812A0);
  v7 = sub_1C755178C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_1C72FC014(&qword_1EC2167B8, MEMORY[0x1E69C1790], MEMORY[0x1E69C1798]);
        v20 = sub_1C755058C();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_1C72FA24C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1C754D8BC();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A640, &qword_1C7581298);
  v7 = sub_1C755178C();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v33 + 72);
        (*(v33 + 16))(v5, *(v8 + 48) + v19 * (v16 | (v9 << 6)), v34);
        sub_1C72FC014(&qword_1EDD0CBF8, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
        v20 = sub_1C755058C();
        v21 = -1 << *(v7 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v7 + 48) + v24 * v19, v5, v34);
        ++*(v7 + 16);
        v8 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v29;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

void sub_1C72FA564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A620, &unk_1C7581240);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 2 * (v12 | (v6 << 6)));
        sub_1C7551F3C();
        sub_1C7551F6C();
        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 2 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

void sub_1C72FA780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216760, &qword_1C75654E0);
  v4 = sub_1C755178C();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    v31 = v3;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v32 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();

        sub_1C7551F5C();
        if (v19)
        {
          sub_1C75505AC();
        }

        v20 = sub_1C7551FAC();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        v25 = v17;
LABEL_23:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v30 = *(v5 + 48) + 24 * v24;
        *v30 = v25;
        *(v30 + 8) = v18;
        *(v30 + 16) = v19;
        ++*(v5 + 16);
        v3 = v31;
        v10 = v32;
        if (!v32)
        {
          goto LABEL_7;
        }
      }

      v26 = 0;
      v27 = (63 - v21) >> 6;
      v25 = v17;
      while (++v23 != v27 || (v26 & 1) == 0)
      {
        v28 = v23 == v27;
        if (v23 == v27)
        {
          v23 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v23);
        if (v29 != -1)
        {
          v24 = __clz(__rbit64(~v29)) + (v23 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_27;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v32 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_1C72FAB00()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_15_57();
  v6 = OUTLINED_FUNCTION_122_7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_212_3(v8, v9);
  OUTLINED_FUNCTION_102_10();
  if (v10)
  {
    v22 = v0;
    v11 = 0;
    OUTLINED_FUNCTION_37_29();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_24_5();
LABEL_9:
        v17 = *(*(v1 + 48) + (v12 | (v11 << 6)));
        OUTLINED_FUNCTION_168_5();
        MEMORY[0x1CCA5E460](v17);
        sub_1C7551FAC();
        OUTLINED_FUNCTION_52_25();
        if (v18)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_89_13();
        *(v21 + v20) = v17;
        OUTLINED_FUNCTION_47_1();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v18)
        {
          if (v19)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_27_27();
        if (!v18)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v13 = v11;
      while (1)
      {
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v11 >= v3)
        {

          v0 = v22;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_194_3();
        if (v14)
        {
          OUTLINED_FUNCTION_78_0();
          v0 = (v16 & v15);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v2;
    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C72FAC28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A638, &qword_1C7581278);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 2 * (v12 | (v6 << 6)));
        v16 = MEMORY[0x1CCA5E430](*(v5 + 40), v15, 2);
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 2 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }
}

void sub_1C72FAE18()
{
  OUTLINED_FUNCTION_15_57();
  v7 = OUTLINED_FUNCTION_122_7(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v9 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_212_3(v9, v10);
  OUTLINED_FUNCTION_102_10();
  if (v11)
  {
    v23 = v0;
    v12 = 0;
    OUTLINED_FUNCTION_37_29();
    if (v0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_24_5();
LABEL_9:
        v18 = *(*(v2 + 48) + 8 * (v13 | (v12 << 6)));
        OUTLINED_FUNCTION_51();
        sub_1C75513DC();
        OUTLINED_FUNCTION_52_25();
        if (v19)
        {
          break;
        }

        OUTLINED_FUNCTION_16();
LABEL_17:
        OUTLINED_FUNCTION_98_0();
        OUTLINED_FUNCTION_89_13();
        *(v22 + 8 * v21) = v1;
        OUTLINED_FUNCTION_47_1();
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_15_0();
      while (1)
      {
        OUTLINED_FUNCTION_95_2();
        if (v19)
        {
          if (v20)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_27_27();
        if (!v19)
        {
          OUTLINED_FUNCTION_14_1();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v4)
        {

          v0 = v23;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_194_3();
        if (v15)
        {
          OUTLINED_FUNCTION_78_0();
          v0 = (v17 & v16);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v0 = v3;
  }
}

void sub_1C72FAF50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217770, &unk_1C756BCC0);
  v4 = sub_1C755178C();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1C7551F3C();

        sub_1C75505AC();
        v16 = sub_1C7551FAC();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

unint64_t sub_1C72FB180()
{
  result = qword_1EC21A570;
  if (!qword_1EC21A570)
  {
    result = swift_getWitnessTable("y", &type metadata for TextSanitizer.Error, v0, v1);
    atomic_store(result, &qword_1EC21A570);
  }

  return result;
}

void *sub_1C72FB1D4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1C75504FC();
      v4 = sub_1C72FB918(v12, v7, v4, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v7, v9);
  sub_1C75504FC();
  sub_1C72FB408(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C72FB398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A580, &qword_1C7580D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C72FB408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v47 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A580, &qword_1C7580D80);
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v44 - v6;
  v8 = sub_1C754E07C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v12;
  v54 = a3;
  v55 = 0;
  v16 = 0;
  v17 = *(a3 + 64);
  v46 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = a4 + 56;
  v51 = a4;
  v52 = v13;
  v61 = (v13 + 8);
  v62 = v13 + 16;
  v48 = v21;
  v49 = &v44 - v12;
  v50 = v7;
LABEL_5:
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v58 = (v20 - 1) & v20;
LABEL_12:
    v25 = v22 | (v16 << 6);
    v26 = v54;
    v27 = *(v54 + 48);
    v60 = *(v52 + 72);
    v28 = *(v52 + 16);
    v29 = v15;
    v30 = v15;
    v31 = v25;
    v28(v29, v27 + v60 * v25, v8, v14);
    v32 = *(v26 + 56);
    v56 = v31;
    v33 = *(v32 + 8 * v31);
    v15 = v30;
    v34 = v50;
    (v28)(v50, v30, v8);
    *(v34 + *(v53 + 48)) = v33;
    v35 = v51;
    if (*(v51 + 16))
    {
      v57 = v16;
      sub_1C72FC014(&qword_1EC215FD8, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
      v36 = v34;
      v37 = sub_1C755058C();
      v38 = v35;
      v39 = ~(-1 << *(v35 + 32));
      while (1)
      {
        v40 = v37 & v39;
        if (((*(v59 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
        {
          break;
        }

        (v28)(v10, *(v38 + 48) + v40 * v60, v8);
        sub_1C72FC014(&qword_1EC215FE0, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v41 = sub_1C755063C();
        v42 = *v61;
        (*v61)(v10, v8);
        v37 = v40 + 1;
        if (v41)
        {
          sub_1C72FBFC0(v36, &qword_1EC21A580);
          v15 = v49;
          v42(v49, v8);
          v16 = v57;
          v20 = v58;
          v21 = v48;
          goto LABEL_5;
        }
      }

      v34 = v36;
      v21 = v48;
      v15 = v49;
      v16 = v57;
    }

    v20 = v58;
    sub_1C72FBFC0(v34, &qword_1EC21A580);
    (*v61)(v15, v8);
    *(v47 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
    if (__OFADD__(v55++, 1))
    {
      __break(1u);
LABEL_21:
      sub_1C7484B7C(v47, v45, v55, v54);

      return;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_21;
    }

    v24 = *(v46 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1C72FB888(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C721A284(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_1C72FB918(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_1C72FB408(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t sub_1C72FB9F0()
{
  result = qword_1EC21A5B0;
  if (!qword_1EC21A5B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.SupportedLanguage, &type metadata for TextSanitizer.SupportedLanguage, v0, v1);
    atomic_store(result, &qword_1EC21A5B0);
  }

  return result;
}

unint64_t sub_1C72FBA78()
{
  result = qword_1EDD0F480;
  if (!qword_1EDD0F480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.CharacterCategory, &type metadata for TextSanitizer.CharacterCategory, v0, v1);
    atomic_store(result, &qword_1EDD0F480);
  }

  return result;
}

unint64_t sub_1C72FBB00()
{
  result = qword_1EC21A5D8;
  if (!qword_1EC21A5D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.LanguageValidationCategory, &type metadata for TextSanitizer.LanguageValidationCategory, v0, v1);
    atomic_store(result, &qword_1EC21A5D8);
  }

  return result;
}

uint64_t sub_1C72FBB84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_122_7(0, a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s17SupportedLanguageOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17CharacterCategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s26LanguageValidationCategoryOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72FBE68()
{
  result = qword_1EDD0C058;
  if (!qword_1EDD0C058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.LanguageValidationCategory, &type metadata for TextSanitizer.LanguageValidationCategory, v0, v1);
    atomic_store(result, &qword_1EDD0C058);
  }

  return result;
}

unint64_t sub_1C72FBEBC()
{
  result = qword_1EC21A5F8;
  if (!qword_1EC21A5F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.CharacterCategory, &type metadata for TextSanitizer.CharacterCategory, v0, v1);
    atomic_store(result, &qword_1EC21A5F8);
  }

  return result;
}

uint64_t sub_1C72FBF10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C72FBF68(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C72FBFC0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_122_7(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_12();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1C72FC014(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_34()
{

  return sub_1C70F76E0(v0, type metadata accessor for TimeExtendedToken);
}

__n128 OUTLINED_FUNCTION_54_24()
{
  result = *v1;
  v3 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v3;
  *(v0 + 32) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_16(uint64_t a1)
{

  return sub_1C755063C();
}

uint64_t OUTLINED_FUNCTION_62_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_81_16()
{

  return sub_1C755177C();
}

uint64_t OUTLINED_FUNCTION_85_11()
{

  return sub_1C70F76E0(v0, type metadata accessor for Hastings.Asset);
}

uint64_t OUTLINED_FUNCTION_110_6(uint64_t a1)
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_111_8(uint64_t a1, ...)
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_132_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_135_6(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  *(v2 + 208) = *v3;
  *(v2 + 216) = v3[1];
}

void *OUTLINED_FUNCTION_159_5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memmove(a1, v2, 8 * a2);
}

uint64_t OUTLINED_FUNCTION_161_5()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_162_5(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_164_3(uint64_t a1)
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_166_4(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 328);

  return sub_1C6F765A4(v5, v2, (v3 - 168));
}

uint64_t OUTLINED_FUNCTION_168_5()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_169_5(uint64_t a1, uint64_t a2)
{

  return sub_1C755178C();
}

void OUTLINED_FUNCTION_208_3()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_209_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_210_2(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_211_3()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_212_3(uint64_t a1, uint64_t a2)
{

  return sub_1C755178C();
}

uint64_t OUTLINED_FUNCTION_213_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.init(with:isForTesting:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  v6 = swift_allocObject();
  result = sub_1C72FC904(a1, v3);
  *a3 = v6;
  return result;
}

uint64_t type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(uint64_t a1)
{
  result = qword_1EDD0F990;
  if (!qword_1EDD0F990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72FC904(void *a1, char a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E6978A68]);
  v6 = &selRef_initForTestingWithPhotoLibrary_;
  if ((a2 & 1) == 0)
  {
    v6 = &selRef_initWithPhotoLibrary_;
  }

  v7 = [v5 *v6];

  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_1C72FC970()
{
  *(v1 + 144) = v0;
  v2 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C72FC998()
{
  v1 = *(v0[18] + 16);
  v0[2] = v0;
  v0[3] = sub_1C72FCAB0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D8, &qword_1C7581538);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C72FCBA4;
  v0[13] = &block_descriptor_24_1;
  v0[14] = v2;
  [v1 preheatSearchWithCompletionBlock_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72FCAB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C72FCB84, 0, 0);
}

uint64_t sub_1C72FCBA4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

void sub_1C72FCBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v9[4] = a3;
  v9[5] = a4;
  OUTLINED_FUNCTION_4_78();
  v9[1] = 1107296256;
  v9[2] = sub_1C72FCC94;
  v9[3] = &block_descriptor_21;
  v8 = _Block_copy(v9);

  [v7 performSearch:a1 searchOptions:a2 resultsHandler:v8];
  _Block_release(v8);
}

void sub_1C72FCC94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

void sub_1C72FCD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  v9 = sub_1C7550B3C();
  v11[4] = a3;
  v11[5] = a4;
  OUTLINED_FUNCTION_4_78();
  v11[1] = 1107296256;
  v11[2] = sub_1C72FCE10;
  v11[3] = &block_descriptor_29;
  v10 = _Block_copy(v11);

  [v8 performBatchSearch:v9 searchOptions:a2 resultsHandler:v10];
  _Block_release(v10);
}

void sub_1C72FCE10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v11 = a2;
  v10 = a5;
  v9(v11, a3, a4, a5);
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.preheat(eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v3);
  v1[4] = OUTLINED_FUNCTION_77();
  v4 = sub_1C754F38C();
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C72FD054()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1(v2);
  sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1C754F16C();
  sub_1C7047600(v1);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1C72FD164;

  return sub_1C72FC970();
}

uint64_t sub_1C72FD164()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C72FD248()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_16_50();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v6);
  v1[7] = OUTLINED_FUNCTION_77();
  v7 = sub_1C754F38C();
  v1[8] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_77();
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C72FD3D0()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  v2 = OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1(v2);
  sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1C754F16C();
  sub_1C7047600(v1);
  v7 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  *(v0 + 88) = v7;
  v8 = v7;
  v9 = *(v0 + 48);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  v12[2] = v9;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = v10;
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_1C72FD5FC;
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD00000000000002ALL, 0x80000001C75AA250, sub_1C72FDAE0, v12, &type metadata for FreeformStoryFetching.Result);
}

uint64_t sub_1C72FD5FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 112) = v0;

  if (v0)
  {
    v6 = sub_1C72FD7C8;
  }

  else
  {

    v6 = sub_1C72FD708;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C72FD708()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_16_50();
  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C72FD7C8()
{

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  OUTLINED_FUNCTION_24_6(*(v0 + 40));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

double sub_1C72FD898(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = a4;
  v27 = a3;
  v8 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0, &qword_1C7581530);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v25 - v15;
  v25[1] = *a2;
  (*(v12 + 16))(v25 - v15, a1, v11, v14);
  sub_1C72C7318(a5, __src);
  sub_1C72FF630(a2, v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = (v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v13 + 143) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v17, v16, v11);
  memcpy((v21 + v18), __src, 0x81uLL);
  v22 = v26;
  *(v21 + v19) = v26;
  sub_1C72FF694(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v23 = v22;
  sub_1C72FCBDC(v27, v23, sub_1C72FF9B0, v21);

  return result;
}

uint64_t sub_1C72FDAEC(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 == 1)
  {
    sub_1C72FDF08(a1, a5, &v42);
    v10 = v42;
    v11 = v43;
    v12 = v44;
    v13 = sub_1C72FF86C(a6);
    if (v13)
    {
      v14 = *(v13 + 16);

      v42 = v14;
      v15 = sub_1C7551D8C();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
    sub_1C72C7318(a5, &v42);
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v21 = v11;
    sub_1C75504FC();
    v22 = v21;
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v15;
      log = v23;
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v26 = 136315907;
      v27 = 0xE900000000000067;
      v28 = 0x6E69646465626D65;
      if (v42 != 1)
      {
        v28 = 0x6574656C706D6F63;
        v27 = 0xE800000000000000;
      }

      if (v42)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0x617461646174656DLL;
      }

      if (v42)
      {
        v30 = v27;
      }

      else
      {
        v30 = 0xE800000000000000;
      }

      sub_1C70DF138(&v42);
      v31 = sub_1C6F765A4(v29, v30, &v41);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_1C6F765A4(v25, v17, &v41);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2085;
      sub_1C75504FC();
      v33 = v22;
      swift_unknownObjectRetain();
      v34 = FreeformStoryFetching.Result.description.getter();
      v36 = v35;

      swift_unknownObjectRelease();
      v37 = sub_1C6F765A4(v34, v36, &v41);

      *(v26 + 24) = v37;
      *(v26 + 32) = 2048;
      v38 = *(v10 + 16);
      swift_unknownObjectRelease();

      *(v26 + 34) = v38;
      swift_unknownObjectRelease();

      _os_log_impl(&dword_1C6F5C000, log, v24, "Perform %s search scoped to %s assets, result=%{sensitive}s with %ld assets", v26, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v39, -1, -1);
      MEMORY[0x1CCA5F8E0](v26, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();

      swift_bridgeObjectRelease_n();
      sub_1C70DF138(&v42);
    }

    v42 = v10;
    v43 = v22;
    v44 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0, &qword_1C7581530);
    return sub_1C7550CAC();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      sub_1C72FF8CC();
      v9 = swift_allocError();
      *v18 = 0;
    }

    v42 = v9;
    v19 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0, &qword_1C7581530);
    return sub_1C7550C9C();
  }
}

void sub_1C72FDF08(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  if (!v3)
  {
    v8 = v7;
    v9 = [v7 maxRankedAssetSearchResults];

    if (v9 <= 1)
    {
      v10 = &selRef_searchResults;
    }

    else
    {
      v10 = &selRef_rankedAssetSearchResults;
    }

    v11 = sub_1C72FF93C(a1, v10, &qword_1EDD0CE90, 0x1E6978A90);
    if (v11)
    {
      v12 = v11;
      MEMORY[0x1EEE9AC00](v11);
      v20[2] = a2;
      sub_1C7044FEC(sub_1C72FF920, v20, v12);
      v14 = v13;

      v15 = [a1 annotatedQueryString];
      v16 = [a1 queryMatchDetails];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 queryEmbedding];

        if (v18)
        {
          sub_1C6F65BE8(0, &qword_1EC21A6C8, off_1E829F488);
          v16 = PNTextEmbeddingResultWithBiasScale.init(from:)(v18);
        }

        else
        {
          v16 = 0;
        }
      }

      *a3 = v14;
      a3[1] = v15;
      a3[2] = v16;
    }

    else
    {
      sub_1C72FF8CC();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
    }
  }
}

uint64_t PhotosSearchBasedStoryAssetsFetcher.performBatchSearch(with:options:eventRecorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v37 = a2;
  v38 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A398, &qword_1C757FFE8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  v10 = OUTLINED_FUNCTION_76(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v36 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  OUTLINED_FUNCTION_24_6(a3);
  v21 = OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1(v21);
  v22 = sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_15_58("PhotosSearchBasedStoryAssetsFetcher.performBatchSearch", 54);
  sub_1C7047600(v12);
  OUTLINED_FUNCTION_24_6(a3);
  sub_1C754F17C();
  OUTLINED_FUNCTION_24_6(v48);
  v26 = OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1(v26);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
  OUTLINED_FUNCTION_15_58("PhotosSearchBasedStoryAssetsFetcher.performBatchSearchFullStream", 64);
  sub_1C7047600(v12);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v42 = v37;
  v43 = v38;
  v44 = v30;
  v45 = v48;
  v46 = v17;
  v47 = v40;
  (*(v6 + 104))(v35, *MEMORY[0x1E69E8650], v39);
  sub_1C7550DFC();

  v31 = *(v14 + 8);
  v32 = v36;
  v31(v17, v36);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  return (v31)(v20, v32);
}

void sub_1C72FE428(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7)
{
  v31 = a7;
  v39 = a6;
  v38 = a5;
  v40 = a4;
  v41 = a3;
  v37 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8, &qword_1C75800A0);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = sub_1C754F38C();
  v32 = *(v36 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  v18 = v31;
  v34 = *v31;
  v19 = *(v13 + 16);
  v33 = v17;
  v19(v16, v37, v12);
  sub_1C72C7318(a2, __src);
  sub_1C72FF630(v18, v11);
  sub_1C6FB5E28(v38, v42);
  v20 = v32;
  (*(v32 + 16))(v35, v39, v36);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v39 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v21 + v14 + 143) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v30 + 80) + v38 + 8) & ~*(v30 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v20 + 80);
  v37 = v11;
  v25 = v40;
  v26 = (v24 + v23 + 40) & ~v24;
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v13 + 32))(v27 + v21, v16, v12);
  memcpy((v27 + v39), __src, 0x81uLL);
  v28 = v33;
  *(v27 + v38) = v33;
  sub_1C72FF694(v37, v27 + v22);
  sub_1C6FD80E4(v42, v27 + v23);
  (*(v20 + 32))(v27 + v26, v35, v36);
  v29 = v28;

  sub_1C72FCD28(v41, v29, sub_1C72FF6F8, v27);
}

unint64_t sub_1C72FE9E8()
{
  result = qword_1EC21A6B8;
  if (!qword_1EC21A6B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosSearchBasedStoryAssetsFetcher.Error, &type metadata for PhotosSearchBasedStoryAssetsFetcher.Error, v0, v1);
    atomic_store(result, &qword_1EC21A6B8);
  }

  return result;
}

void sub_1C72FEA3C(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v70 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8, &qword_1C75800A0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  swift_beginAccess();
  if ((*(a5 + 16) & 1) == 0)
  {
    v69 = a2;
    v21 = [a1 annotatedQueryString];
    v22 = v21;
    if (a4)
    {
      v75 = v21;
      v76 = a4;
      v77 = 0;
      v78 = 1;
      v23 = a4;
      v24 = v22;
    }

    else
    {
      if (v69 == 2)
      {
        sub_1C72FF8CC();
        v25 = swift_allocError();
        *v26 = 1;
        v75 = v22;
        v76 = v25;
        v77 = 0;
        v78 = 1;
        v27 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
        sub_1C7550D8C();
        (*(v18 + 8))(v20, v17);
LABEL_9:
        swift_beginAccess();
        *(a5 + 16) = 1;
        __swift_project_boxed_opaque_existential_1(a10, a10[3]);
        sub_1C754F1AC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
        sub_1C7550D9C();
LABEL_10:

        return;
      }

      sub_1C72FDF08(a1, a7, &v75);
      v65 = a9;
      v28 = v76;
      v68 = v75;
      v67 = v77;
      v29 = sub_1C72FF86C(a8);
      if (v29)
      {
        v30 = *(v29 + 16);

        v75 = v30;
        v63 = sub_1C7551D8C();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v63 = 7104878;
      }

      v64 = *(type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0) + 20);
      sub_1C72C7318(a7, &v75);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v33 = v28;
      sub_1C75504FC();
      v34 = v33;
      v35 = sub_1C754FEEC();
      v36 = v32;
      v37 = sub_1C75511BC();
      swift_unknownObjectRelease();
      v66 = v34;

      v38 = v68;

      LODWORD(v65) = v37;
      if (os_log_type_enabled(v35, v37))
      {
        v39 = v36;
        v62 = v35;
        v40 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v74 = v61;
        *v40 = 136315907;
        v41 = 0xE900000000000067;
        v42 = 0x6E69646465626D65;
        if (v75 != 1)
        {
          v42 = 0x6574656C706D6F63;
          v41 = 0xE800000000000000;
        }

        if (v75)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0x617461646174656DLL;
        }

        if (v75)
        {
          v44 = v41;
        }

        else
        {
          v44 = 0xE800000000000000;
        }

        sub_1C70DF138(&v75);
        v45 = sub_1C6F765A4(v43, v44, &v74);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        v46 = sub_1C6F765A4(v63, v39, &v74);

        *(v40 + 14) = v46;
        *(v40 + 22) = 2085;
        v71 = v68;
        v47 = v66;
        v72 = v66;
        v48 = v67;
        v73 = v67;
        sub_1C75504FC();
        v63 = v47;
        swift_unknownObjectRetain();
        v60 = FreeformStoryFetching.Result.description.getter();
        v50 = v49;
        v64 = v40;

        swift_unknownObjectRelease();
        v51 = sub_1C6F765A4(v60, v50, &v74);

        v52 = v64;
        *(v64 + 24) = v51;
        *(v52 + 32) = 2048;
        v60 = *(v68 + 16);
        swift_unknownObjectRelease();
        v53 = v63;

        v54 = v64;
        *(v64 + 34) = v60;
        swift_unknownObjectRelease();

        v55 = v62;
        _os_log_impl(&dword_1C6F5C000, v62, v65, "Perform %s search scoped to %s assets, result=%{sensitive}s with %ld assets", v54, 0x2Au);
        v56 = v61;
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v56, -1, -1);
        v57 = v68;
        MEMORY[0x1CCA5F8E0](v54, -1, -1);
      }

      else
      {

        v48 = v67;
        swift_unknownObjectRelease_n();
        v58 = v66;

        v57 = v38;
        swift_bridgeObjectRelease_n();
        sub_1C70DF138(&v75);
      }

      v75 = v57;
      v76 = v66;
      v77 = v48;
      v78 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
    sub_1C7550D8C();
    (*(v18 + 8))(v20, v17);
    if ((v70 & 1) == 0 && v69 != 2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }
}

void sub_1C72FF13C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C72FF93C(a1, &selRef_embeddingDistances, &qword_1EDD108E0, 0x1E696AD98);
  v5 = 0.0;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = v4;
  if (sub_1C6FB6304() != 3 || ((sub_1C6FB6330(), (v6 & 0xC000000000000001) != 0) ? (v7 = MEMORY[0x1CCA5DDD0](0, v6)) : (v7 = *(v6 + 32)), v8 = v7, [v7 floatValue], v10 = v9, v8, v10 == 3.4028e38))
  {

LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1CCA5DDD0](0, v6);
  }

  else
  {
    v16 = *(v6 + 32);
  }

  v17 = v16;

  [v17 floatValue];
  v19 = v18;

  v11 = 0;
  v5 = v19 * -0.5 + 1.0;
LABEL_8:
  v12 = [a1 uuid];
  v13 = sub_1C755068C();
  v15 = v14;

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v5;
  *(a2 + 24) = v11;
  *(a2 + 25) = v11;
}

void sub_1C72FF2A4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if ([*a1 type] == *(a2 + 8) && (objc_msgSend(v4, sel_hasOCRTextMatch) & 1) == 0)
  {
    sub_1C72FF13C(v4, &v8);
    v5 = v9;
    v6 = v10;
    if (v11)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v8;
    *(a3 + 16) = v5;
    *(a3 + 24) = v7 | v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t sub_1C72FF35C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F73F48;

  return PhotosSearchBasedStoryAssetsFetcher.preheat(eventRecorder:)();
}

uint64_t sub_1C72FF3F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F738F4;

  return PhotosSearchBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)();
}

uint64_t sub_1C72FF4DC(uint64_t a1)
{
  type metadata accessor for PhotosSearchQueryManagerProxy();
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosSearchBasedStoryAssetsFetcher.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C72FF630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72FF694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C72FF6F8(void *a1, uint64_t a2, int a3, void *a4)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
  OUTLINED_FUNCTION_18(v11);
  v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v14 = OUTLINED_FUNCTION_7_63();
  OUTLINED_FUNCTION_18(v14);
  v16 = (v6 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v18 = (*(v17 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_1C754F38C();
  OUTLINED_FUNCTION_76(v19);
  sub_1C72FEA3C(a1, a2, a3, a4, *(v4 + 16), v4 + v13, v4 + v5, *(v4 + v6), v4 + v16, (v4 + v18), v4 + ((v18 + *(v20 + 80) + 40) & ~*(v20 + 80)));
}

uint64_t sub_1C72FF86C(void *a1)
{
  v1 = [a1 scopedIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550F8C();

  return v3;
}

unint64_t sub_1C72FF8CC()
{
  result = qword_1EC21A6C0;
  if (!qword_1EC21A6C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosSearchBasedStoryAssetsFetcher.Error, &type metadata for PhotosSearchBasedStoryAssetsFetcher.Error, v0, v1);
    atomic_store(result, &qword_1EC21A6C0);
  }

  return result;
}

uint64_t sub_1C72FF93C(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1C6F65BE8(0, a3, a4);
  v8 = sub_1C7550B5C();

  return v8;
}

uint64_t sub_1C72FF9B0(void *a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6D0, &qword_1C7581530);
  OUTLINED_FUNCTION_18(v7);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = v9 + *(v10 + 64);
  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 143) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_76(v14);
  v15 = *(v3 + v13);

  return sub_1C72FDAEC(a1, a2, a3, v3 + v9, v3 + v12, v15);
}

uint64_t static VisualOutliers.requiredFetchPropertySets()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  return v0;
}

id static VisualOutliers.canAssetsBeCompared(_:_:)(void *a1, void *a2)
{
  result = [a1 sceneAnalysisProperties];
  if (result)
  {
    v4 = result;
    v5 = [result sceneAnalysisVersion];

    result = [a2 sceneAnalysisProperties];
    if (result)
    {
      v6 = result;
      v7 = [result sceneAnalysisVersion];
      v8 = v7;
      v9 = v7;

      return (v5 > 83 && v9 > 83 && v5 == v8);
    }
  }

  return result;
}

unint64_t static VisualOutliers.canCollectionBeCompared(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); !__OFSUB__(i, 1); i = result)
  {
    if (i - 1 < 0)
    {
      goto LABEL_26;
    }

    if (i == 1)
    {
      return 1;
    }

    v3 = 0;
    while (2)
    {
      if (__OFADD__(v3, 1))
      {
LABEL_22:
        __break(1u);
      }

      else if (i >= v3)
      {
        v11 = v3 + 1;
        for (j = v3; i != j; ++j)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1CCA5DDD0](v3, v1);
            v8 = MEMORY[0x1CCA5DDD0](j, v1);
          }

          else
          {
            v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v5)
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            if (j >= v5)
            {
              goto LABEL_21;
            }

            v6 = *(v1 + 8 * j + 32);
            v7 = *(v1 + 32 + 8 * v3);
            v8 = v6;
          }

          v9 = v8;
          v10 = static VisualOutliers.canAssetsBeCompared(_:_:)(v7, v8);

          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }

        ++v3;
        if (v11 != i - 1)
        {
          continue;
        }

        return 1;
      }

      break;
    }

    __break(1u);
LABEL_24:
    result = sub_1C75516BC();
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

float static VisualOutliers.visualThresholdTypeValue(_:)(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 2)
  {
    return flt_1C7581640[a1];
  }

  return result;
}

uint64_t static VisualOutliers.assetsDistance(_:_:)(void *a1, void *a2)
{
  sub_1C73C6BB8();
  if (v4)
  {
    v5 = v4;
    sub_1C73C6BB8();
    if (v6)
    {
      v7 = v6;
      if (static VisualOutliers.canAssetsBeCompared(_:_:)(a1, a2))
      {
        if (*(v5 + 16) == *(v7 + 16))
        {
          sub_1C73C6D60(v5, v7);
        }

        v9 = 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  sub_1C7300C78();
  swift_allocError();
  *v10 = v9;
  return swift_willThrow();
}

uint64_t static VisualOutliers.assetsDistancesSummary(for:in:with:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v36 = sub_1C75504DC();
  v7 = sub_1C6FB6304();
  v33 = a3;
  if (!v7)
  {
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    inited = swift_initStackObject();
    v29 = inited;
    *(inited + 16) = xmmword_1C755BAA0;
    *(inited + 32) = 0x6C6F687365726874;
    *(inited + 40) = 0xE900000000000064;
    v30 = 0.0;
    if (v33 <= 2)
    {
      v30 = flt_1C7581640[v33];
    }

    *(inited + 48) = v30;
    *(inited + 72) = MEMORY[0x1E69E6448];
    *(inited + 80) = 0x65636E6174736964;
    *(inited + 88) = 0xE900000000000073;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30, &qword_1C757ED70);
    v29[12] = v36;
    v29[15] = v31;
    v29[16] = 0x6465726F6E6769;
    v29[17] = 0xE700000000000000;
    v29[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v29[18] = v6;
    return sub_1C75504DC();
  }

  v8 = v7;
  if (v7 < 1)
  {
    goto LABEL_25;
  }

  v9 = 0;
  v37 = v7;
  v34 = a1;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA5DDD0](v9, a2);
    }

    else
    {
      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = sub_1C6FCA214(v11);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = v12;
    v15 = v13;
    static VisualOutliers.assetsDistance(_:_:)(a1, v11);
    v17 = v16;
    v35 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1C6F78124(v14, v15);
    if (__OFADD__(v36[2], (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340, &unk_1C755CC40);
    if (sub_1C7551A2C())
    {
      v22 = sub_1C6F78124(v14, v15);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_26;
      }

      v20 = v22;
    }

    a1 = v34;
    if (v21)
    {
      *(v36[7] + 4 * v20) = v17;
    }

    else
    {
      v36[(v20 >> 6) + 8] |= 1 << v20;
      v24 = (v36[6] + 16 * v20);
      *v24 = v14;
      v24[1] = v15;
      *(v36[7] + 4 * v20) = v17;
      v25 = v36[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      v36[2] = v27;
    }

    v6 = v35;
    v8 = v37;
LABEL_19:
    if (v8 == ++v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void static VisualOutliers.isSimilarToAnyAssetInAssets(for:in:with:)(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = (a2 >> 62) & 1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    LODWORD(v5) = 1;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v6 = 0.111;
      if (v5)
      {
        goto LABEL_20;
      }
    }

    else if (a3 == 1)
    {
      v6 = 0.052;
      if (v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0.0;
      if (v5)
      {
LABEL_20:
        v7 = sub_1C75516BC();
        if (!v7)
        {
          return;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = 0.025;
    if (v5)
    {
      goto LABEL_20;
    }
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return;
  }

LABEL_10:
  v8 = 0;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCA5DDD0](v8, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    static VisualOutliers.assetsDistance(_:_:)(a1, v9);
    v13 = v12;

    if (v13 > v6)
    {
      ++v8;
      if (v11 != v7)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void *static VisualOutliers.outlierScoresForAssets(assets:)(unint64_t a1)
{
  if ((static VisualOutliers.canCollectionBeCompared(_:)(a1) & 1) == 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);

    return sub_1C75504DC();
  }

  v2 = sub_1C6FB6304();
  if (v2)
  {
    v3 = v2;
    if (v2 < 1)
    {
      goto LABEL_46;
    }

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA5DDD0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      sub_1C73C6BB8();
      if (v8)
      {
        v9 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB2DBC();
          v5 = v11;
        }

        v10 = *(v5 + 16);
        if (v10 >= *(v5 + 24) >> 1)
        {
          sub_1C6FB2DBC();
          v5 = v12;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 8 * v10 + 32) = v9;
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
  }

  LOBYTE(v49) = 0;
  v14 = objc_allocWithZone(type metadata accessor for Dendrogram());
  v15 = Dendrogram.init(distanceBlock:linkageMethod:)();
  v16 = sub_1C75504FC();
  Dendrogram.fit(_:)(v16);

  if (v17 || (Dendrogram.heightScores()(), v17))
  {

    sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
    v18 = sub_1C75504DC();

    return v18;
  }

  v19 = *(v49 + 16);
  v48 = v15;
  sub_1C75504FC();
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v19 == v20)
    {

      swift_bridgeObjectRelease_n();
      return v21;
    }

    v22 = v20;
    if (v20 >= *(v49 + 16))
    {
      break;
    }

    v23 = *(v49 + 32 + 4 * v20);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1CCA5DDD0](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v24 = *(a1 + 32 + 8 * v20);
    }

    v25 = sub_1C6FCA214(v24);
    if (!v26)
    {
      goto LABEL_49;
    }

    v27 = v25;
    v28 = v26;
    v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v30) = v23;
    v31 = [v29 initWithFloat_];
    if (v31)
    {
      v35 = v31;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_1C6F78124(v27, v28);
      v47 = v36;
      if (__OFADD__(v21[2], (v36 & 1) == 0))
      {
        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8, &unk_1C7579E40);
      if (sub_1C7551A2C())
      {
        v37 = sub_1C6F78124(v27, v28);
        if ((v47 & 1) != (v38 & 1))
        {
          goto LABEL_50;
        }

        v39 = v37;
        if (v47)
        {
LABEL_40:

          v44 = v21[7];
          v45 = *(v44 + 8 * v39);
          *(v44 + 8 * v39) = v35;

          goto LABEL_41;
        }
      }

      else
      {
        v39 = v46;
        if (v47)
        {
          goto LABEL_40;
        }
      }

      v21[(v39 >> 6) + 8] |= 1 << v39;
      v40 = (v21[6] + 16 * v39);
      *v40 = v27;
      v40[1] = v28;
      *(v21[7] + 8 * v39) = v35;
      v41 = v21[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_48;
      }

      v21[2] = v43;
LABEL_41:
      v20 = v22 + 1;
    }

    else
    {
      v32 = sub_1C6F78124(v27, v28);
      v34 = v33;

      v20 = v22 + 1;
      if (v34)
      {
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8, &unk_1C7579E40);
        sub_1C7551A2C();

        sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
        sub_1C7551A4C();
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

float sub_1C7300AAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v6 = *a2;
  v7 = v2;
  static PairwiseMetrics.cosineSimilarity(_:_:)(&v7, &v6);
  v4 = (v3 + 1.0) * 0.5;
  if (v4 <= 0.0)
  {
    return 3.4028e38;
  }

  else
  {
    return (1.0 - v4) / v4;
  }
}

id VisualOutliers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualOutliers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualOutliers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualOutliers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualOutliers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C7300C78()
{
  result = qword_1EC21A6E0;
  if (!qword_1EC21A6E0)
  {
    result = swift_getWitnessTable(asc_1C75815FC, &type metadata for VisualOutliersError, v0, v1);
    atomic_store(result, &qword_1EC21A6E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualOutliersError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C7300DD0()
{
  result = qword_1EC21A6E8;
  if (!qword_1EC21A6E8)
  {
    result = swift_getWitnessTable(aUx, &type metadata for VisualOutliersError, v0, v1);
    atomic_store(result, &qword_1EC21A6E8);
  }

  return result;
}

uint64_t sub_1C7300E24()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1C7303784;

  return SafetyController.sensitiveContent(in:useCaseIdentifier:eventRecorder:)(v8, v6, v4, v2);
}

uint64_t SafetyController.sensitiveContent(in:useCaseIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_1C754F38C();
  *(v5 + 48) = v7;
  *(v5 + 56) = *(v7 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 113) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C7300FB4, v4, 0);
}

uint64_t sub_1C7300FB4()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 113);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1C754F1CC();
  sub_1C707DDC0();
  static TextSanitizer.extractCategories(in:categories:)(v2, v3);
  v5 = v4;

  *(v0 + 72) = v5;
  *(v0 + 112) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1C73010D0;
  v7 = OUTLINED_FUNCTION_57_0();

  return sub_1C7302A74(v7, v8, (v0 + 112));
}

uint64_t sub_1C73010D0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[11] = v1;

  v9 = v5[5];
  if (v1)
  {
    v10 = sub_1C73012A8;
  }

  else
  {
    v5[12] = v0;
    v5[13] = v3;
    v10 = sub_1C7301204;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C7301204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11._countAndFlagsBits = *(v10 + 104);
  v13 = *(v10 + 56);
  v12 = *(v10 + 64);
  v14 = *(v10 + 48);
  v11._object = *(v10 + 96);
  SafetyController.sensitiveContent(scrubbedUserPrompt:)(v11);

  OUTLINED_FUNCTION_7_64();
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73012A8()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_12_55(*(v0 + 32));
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7301338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = swift_task_alloc();
  *(v10 + 16) = v11;
  *v11 = v10;
  v11[1] = sub_1C7301400;
  OUTLINED_FUNCTION_88_0();

  return SafetyController.sensitiveContent(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)(v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1C7301400()
{
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t SafetyController.sensitiveContent(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9 = sub_1C754F38C();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 129) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1C73015BC, v6, 0);
}

uint64_t sub_1C73015BC()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 129);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  sub_1C754F1CC();
  sub_1C707DEC4();
  static TextSanitizer.extractCategories(in:queryTokens:categories:)(v4, v3, v2, v5);
  v7 = v6;

  *(v0 + 88) = v7;
  *(v0 + 128) = v1;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_1C73016DC;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_88_0();

  return sub_1C7302A74(v9, v10, v11);
}

uint64_t sub_1C73016DC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[13] = v1;

  v9 = v5[7];
  if (v1)
  {
    v10 = sub_1C73018B4;
  }

  else
  {
    v5[14] = v0;
    v5[15] = v3;
    v10 = sub_1C7301810;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C7301810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11._countAndFlagsBits = *(v10 + 120);
  v13 = *(v10 + 72);
  v12 = *(v10 + 80);
  v14 = *(v10 + 64);
  v11._object = *(v10 + 112);
  SafetyController.sensitiveContent(scrubbedUserPrompt:)(v11);

  OUTLINED_FUNCTION_7_64();
  (*(v13 + 8))(v12, v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73018B4()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_12_55(*(v0 + 48));
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

PhotosIntelligence::UserPromptSensitiveFlags __swiftcall UserPromptSensitiveFlags.init(sensitiveScenes:requiresMetadataSearch:skipTraits:)(PhotosIntelligence::UserPromptSensitiveFlags sensitiveScenes, Swift::Bool requiresMetadataSearch, Swift::Bool skipTraits)
{
  *v3 = sensitiveScenes.sensitiveScenes._rawValue;
  *(v3 + 8) = requiresMetadataSearch;
  *(v3 + 9) = skipTraits;
  sensitiveScenes.requiresMetadataSearch = requiresMetadataSearch;
  return sensitiveScenes;
}

uint64_t UserPromptSensitiveFlags.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75AA3A0);
  v4 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75AA3D0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v5, v6);

  MEMORY[0x1CCA5CD70](0x725470696B73202CLL, 0xEE00203A73746961);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v8);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C7301AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76697469736E6573 && a2 == 0xEF73656E65635365;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C75AA3F0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6961725470696B73 && a2 == 0xEA00000000007374)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C7301BF8(char a1)
{
  if (!a1)
  {
    return 0x76697469736E6573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0x6961725470696B73;
}

uint64_t sub_1C7301C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7301AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7301C94(uint64_t a1)
{
  v2 = sub_1C7303298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7301CD0(uint64_t a1)
{
  v2 = sub_1C7303298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserPromptSensitiveFlags.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6F0, &unk_1C7581668);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v13[1] = *(v1 + 9);
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7303298();
  sub_1C75504FC();
  sub_1C755200C();
  v17 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C7551D2C();

  if (!v2)
  {
    v15 = 1;
    sub_1C7551CDC();
    v14 = 2;
    sub_1C7551CDC();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t UserPromptSensitiveFlags.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A6F8, &qword_1C7581678);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7303298();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C7551C1C();
  v6 = sub_1C7551BCC();
  v8 = sub_1C7551BCC();
  v9 = OUTLINED_FUNCTION_401();
  v10(v9);
  *a2 = v11;
  *(a2 + 8) = v6 & 1;
  *(a2 + 9) = v8 & 1;
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C7302170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a3, a4);
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75AA430);
  v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1C71C8B80(0xD000000000000010, 0x80000001C75AA410, 0);
  v10 = sub_1C755065C();
  v20[0] = a1;
  v20[1] = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A708, &qword_1C7581870);
  sub_1C7303560();
  sub_1C6FB5E8C();
  v11 = sub_1C755143C();
  v13 = [v9 matchesInString:v10 options:0 range:{v11, v12, 15}];

  sub_1C73035C4();
  sub_1C7550B5C();

  v14 = sub_1C6FB6304();

  if (v14)
  {
    sub_1C75504FC();
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1C6F765A4(a3, a4, v20);
      _os_log_impl(&dword_1C6F5C000, v15, v16, "[findSensitiveFlags] Found sensitive keyword: '%s'", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1CCA5F8E0](v18, -1, -1);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1C7302524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a3, a4);
  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75AA450);
  v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v9 = sub_1C71C8B80(0xD000000000000010, 0x80000001C75AA410, 0);
  v10 = sub_1C755065C();
  v40[0] = a1;
  v40[1] = a2;
  sub_1C75504FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A708, &qword_1C7581870);
  sub_1C7303560();
  sub_1C6FB5E8C();
  v11 = sub_1C755143C();
  v13 = [v9 matchesInString:v10 options:0 range:{v11, v12}];

  sub_1C73035C4();
  v14 = sub_1C7550B5C();

  result = sub_1C6FB6304();
  if (!result)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = result;
  v35 = v9;
  v36 = a3;
  if (result >= 1)
  {
    v17 = 0;
    v18 = v14 & 0xC000000000000001;
    v19 = MEMORY[0x1E69E7CC0];
    v38 = result;
    v39 = v14;
    v37 = v14 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v20 = MEMORY[0x1CCA5DDD0](v17, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v17 + 32);
      }

      v21 = v20;
      [v20 rangeAtIndex_];
      sub_1C75510EC();
      if (v22)
      {
      }

      else
      {
        v23 = sub_1C755098C();
        v24 = MEMORY[0x1CCA5CC40](v23);
        v26 = v25;

        sub_1C75504FC();
        sub_1C75504FC();
        v27 = sub_1C754FEEC();
        v28 = sub_1C75511BC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v40[0] = v30;
          *v29 = 136315394;
          *(v29 + 4) = sub_1C6F765A4(v36, a4, v40);
          *(v29 + 12) = 2080;
          *(v29 + 14) = sub_1C6F765A4(v24, v26, v40);
          _os_log_impl(&dword_1C6F5C000, v27, v28, "[findSensitiveValues] Found sensitive keyword '%s' with value: %s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v30, -1, -1);
          MEMORY[0x1CCA5F8E0](v29, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v19 = v33;
        }

        v31 = *(v19 + 16);
        if (v31 >= *(v19 + 24) >> 1)
        {
          sub_1C6FB1814();
          v19 = v34;
        }

        *(v19 + 16) = v31 + 1;
        v32 = v19 + 16 * v31;
        *(v32 + 32) = v24;
        *(v32 + 40) = v26;
        v16 = v38;
        v14 = v39;
        v18 = v37;
      }

      ++v17;
    }

    while (v16 != v17);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7302A74(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  *(v4 + 64) = type metadata accessor for SafetyError(0);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 129) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C7302B44, v3, 0);
}

uint64_t sub_1C7302B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_87_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_75_1();
  a16 = v18;
  *(v18 + 104) = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = *(v18 + 40);
    v23 = *(v18 + 48);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    a9 = v26;
    *v25 = 136642819;
    *(v18 + 16) = v24;
    *(v18 + 24) = v23;
    sub_1C75504FC();
    v27 = sub_1C755097C();
    v29 = sub_1C6F765A4(v27, v28, &a9);

    *(v25 + 4) = v29;
    OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v30, v31, "User prompt for checking sensitive flags: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0AF98 != -1)
  {
    swift_once();
  }

  v32 = *(v18 + 129);
  v33 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v33, &unk_1EDD28C28);
  *(v18 + 128) = v32;
  v34 = swift_task_alloc();
  *(v18 + 112) = v34;
  *v34 = v18;
  v34[1] = sub_1C7302D38;
  OUTLINED_FUNCTION_88_0();

  return SafetyController.scrub(_:with:useCaseIdentifier:)(v35);
}

uint64_t sub_1C7302D38()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  *(v6 + 120) = v0;

  if (v0)
  {
    v10 = *(v6 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1C7302EA8, v10, 0);
  }

  else
  {

    v11 = *(v8 + 8);

    return v11(v5, v3);
  }
}

uint64_t sub_1C7302EA8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 120);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 80);

    v5 = OUTLINED_FUNCTION_57_0();
    sub_1C7303608(v5, v6);
    sub_1C730366C(v3, v4);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C730366C(*(v0 + 88), *(v0 + 72));
      v7 = sub_1C754FEEC();
      v8 = sub_1C755119C();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 72);
      if (v9)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        sub_1C73036D0();
        swift_allocError();
        sub_1C730366C(v10, v13);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        sub_1C7303728(v10);
        *(v11 + 4) = v14;
        *v12 = v14;
        OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v15, v16, "The sensitive deny list rejected the prompt when checking for sensitive flags, ignoring: %@");
        sub_1C6FC15D8(v12);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        sub_1C7303728(v10);
      }

      v22 = *(v0 + 80);
      sub_1C7303728(*(v0 + 88));
      sub_1C7303728(v22);
      v23 = *(v0 + 32);
      sub_1C75504FC();

      v24 = *(v0 + 40);
      v25 = *(v0 + 48);

      v26 = *(v0 + 8);

      return v26(v24, v25);
    }

    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    sub_1C73036D0();
    swift_allocError();
    sub_1C730366C(v17, v19);
    swift_willThrow();
    sub_1C7303728(v17);
    sub_1C7303728(v18);
  }

  OUTLINED_FUNCTION_43();

  return v20();
}

PhotosIntelligence::UserPromptSensitiveFlags __swiftcall SafetyController.sensitiveContent(scrubbedUserPrompt:)(Swift::String scrubbedUserPrompt)
{
  object = scrubbedUserPrompt._object;
  countAndFlagsBits = scrubbedUserPrompt._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1C7302524(scrubbedUserPrompt._countAndFlagsBits, scrubbedUserPrompt._object, 0x76697469736E6573, 0xEF656E6563735F65);
  v6 = sub_1C7302170(countAndFlagsBits, object, 0x617461646174656DLL, 0xEF6863726165735FLL);
  v7 = sub_1C7302170(countAndFlagsBits, object, 0x6172745F70696B73, 0xEB00000000737469) & 1;
  v8 = 256;
  if (!v7)
  {
    v8 = 0;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  sub_1C75504FC();
  sub_1C6FD1EE8();
  result.sensitiveScenes._rawValue = sub_1C7080EAC(v5, v10, 7);
  *v4 = v5;
  *(v4 + 8) = v6 & 1;
  *(v4 + 9) = v7;
  result.requiresMetadataSearch = v9;
  result.skipTraits = HIBYTE(v9);
  return result;
}

unint64_t sub_1C7303298()
{
  result = qword_1EDD09508;
  if (!qword_1EDD09508)
  {
    result = swift_getWitnessTable(byte_1C758180C, &type metadata for UserPromptSensitiveFlags.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09508);
  }

  return result;
}

uint64_t sub_1C73032EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C730332C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserPromptSensitiveFlags.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C730345C()
{
  result = qword_1EC21A700;
  if (!qword_1EC21A700)
  {
    result = swift_getWitnessTable(aEv, &type metadata for UserPromptSensitiveFlags.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A700);
  }

  return result;
}

unint64_t sub_1C73034B4()
{
  result = qword_1EDD094F8;
  if (!qword_1EDD094F8)
  {
    result = swift_getWitnessTable(byte_1C7581754, &type metadata for UserPromptSensitiveFlags.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD094F8);
  }

  return result;
}

unint64_t sub_1C730350C()
{
  result = qword_1EDD09500;
  if (!qword_1EDD09500)
  {
    result = swift_getWitnessTable(byte_1C758177C, &type metadata for UserPromptSensitiveFlags.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09500);
  }

  return result;
}

unint64_t sub_1C7303560()
{
  result = qword_1EDD06858;
  if (!qword_1EDD06858)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A708, &qword_1C7581870);
    result = swift_getWitnessTable(MEMORY[0x1E69E6D18], v3, v0, v1);
    atomic_store(result, &qword_1EDD06858);
  }

  return result;
}

unint64_t sub_1C73035C4()
{
  result = qword_1EDD06978;
  if (!qword_1EDD06978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD06978);
  }

  return result;
}

uint64_t sub_1C7303608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C730366C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C73036D0()
{
  result = qword_1EDD0C458[0];
  if (!qword_1EDD0C458[0])
  {
    v3 = type metadata accessor for SafetyError(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SafetyError, v3, v0, v1);
    atomic_store(result, qword_1EDD0C458);
  }

  return result;
}

uint64_t sub_1C7303728(uint64_t a1)
{
  v2 = type metadata accessor for SafetyError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlchemistServiceInterface.convert(pixelBuffer:configurationPreset:focalLengthPX:bakingSize:saveURL:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42();
  v11 = v10;
  *(v9 + 368) = v12;
  *(v9 + 376) = a9;
  *(v9 + 352) = v13;
  *(v9 + 360) = v14;
  *(v9 + 896) = v15;
  *(v9 + 336) = v16;
  *(v9 + 344) = v17;
  *(v9 + 328) = v18;
  v19 = sub_1C754E94C();
  *(v9 + 384) = v19;
  OUTLINED_FUNCTION_18(v19);
  *(v9 + 392) = v20;
  *(v9 + 400) = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  *(v9 + 408) = OUTLINED_FUNCTION_77();
  v21 = sub_1C754DD2C();
  *(v9 + 416) = v21;
  OUTLINED_FUNCTION_18(v21);
  *(v9 + 424) = v22;
  *(v9 + 432) = OUTLINED_FUNCTION_77();
  v23 = sub_1C75519CC();
  *(v9 + 440) = v23;
  OUTLINED_FUNCTION_18(v23);
  *(v9 + 448) = v24;
  *(v9 + 456) = OUTLINED_FUNCTION_77();
  v25 = sub_1C754F66C();
  *(v9 + 464) = v25;
  OUTLINED_FUNCTION_18(v25);
  *(v9 + 472) = v26;
  *(v9 + 480) = OUTLINED_FUNCTION_77();
  v27 = sub_1C754FE9C();
  *(v9 + 488) = v27;
  OUTLINED_FUNCTION_18(v27);
  *(v9 + 496) = v28;
  *(v9 + 504) = OUTLINED_FUNCTION_281_1();
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  v29 = sub_1C754E86C();
  *(v9 + 536) = v29;
  OUTLINED_FUNCTION_18(v29);
  *(v9 + 544) = v30;
  *(v9 + 552) = OUTLINED_FUNCTION_77();
  v31 = sub_1C754E8FC();
  *(v9 + 560) = v31;
  OUTLINED_FUNCTION_18(v31);
  *(v9 + 568) = v32;
  *(v9 + 576) = OUTLINED_FUNCTION_77();
  v33 = sub_1C754E82C();
  *(v9 + 584) = v33;
  OUTLINED_FUNCTION_18(v33);
  *(v9 + 592) = v34;
  *(v9 + 600) = OUTLINED_FUNCTION_77();
  v35 = sub_1C754E5AC();
  *(v9 + 608) = v35;
  OUTLINED_FUNCTION_18(v35);
  *(v9 + 616) = v36;
  *(v9 + 624) = OUTLINED_FUNCTION_77();
  v37 = sub_1C754FE4C();
  *(v9 + 632) = v37;
  OUTLINED_FUNCTION_18(v37);
  *(v9 + 640) = v38;
  *(v9 + 648) = OUTLINED_FUNCTION_281_1();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 897) = *v11;
  v39 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v39, v40, v41);
}

void sub_1C7303BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_60_19();
  a35 = v37;
  a36 = v38;
  a34 = v36;
  if (qword_1EC214008 != -1)
  {
    OUTLINED_FUNCTION_3_88(&qword_1EC214008);
  }

  v39 = sub_1C754FE8C();
  *(v36 + 720) = __swift_project_value_buffer(v39, qword_1EC21A730);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v40 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v41 = swift_slowAlloc();
    v42 = OUTLINED_FUNCTION_55_25(v41);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v43, v44, v42, "Generating", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v45 = *(v36 + 712);
  v46 = *(v36 + 704);
  v47 = *(v36 + 640);
  v48 = *(v36 + 632);

  v49 = *(v47 + 16);
  *(v36 + 728) = v49;
  *(v36 + 736) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49(v46, v45, v48);
  *(v36 + 744) = sub_1C754FECC();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v50 = OUTLINED_FUNCTION_28_28();
  *(v36 + 752) = v50;
  *(v36 + 760) = *(v47 + 8);
  *(v36 + 768) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51 = OUTLINED_FUNCTION_49_3();
  v52(v51);
  v53 = MTLCreateSystemDefaultDevice();
  *(v36 + 776) = v53;
  if (v53)
  {
    v141 = v50;
    v54 = *(v36 + 624);
    v55 = *(v36 + 616);
    v56 = *(v36 + 608);
    v57 = *(v36 + 592);
    v58 = *(v36 + 584);
    v143 = *(v36 + 600);
    v145 = *(v36 + 336);
    sub_1C754E59C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A768, &qword_1C7581890);
    v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A770, &unk_1C7581898) - 8);
    v60 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v61 = swift_allocObject();
    a18 = 2;
    *(v61 + 16) = xmmword_1C755BAB0;
    v62 = (v61 + v60 + v59[14]);
    v63 = *(v57 + 104);
    v63();
    v62[3] = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    (*(v55 + 16))(boxed_opaque_existential_0, v54, v56);
    sub_1C730A980(&qword_1EC215358, MEMORY[0x1E698A848], MEMORY[0x1E698A858]);
    v65 = sub_1C75504DC();
    (v63)(v143, *MEMORY[0x1E698A810], v58);
    v66 = sub_1C754E78C();
    *(v36 + 184) = v66;
    v67 = __swift_allocate_boxed_opaque_existential_0((v36 + 160));
    (*(*(v66 - 8) + 104))(v67, *MEMORY[0x1E698A758], v66);
    sub_1C6F9ED18((v36 + 160), (v36 + 192));
    swift_isUniquelyReferenced_nonNull_native();
    a24 = v65;
    sub_1C6FC7E54();
    v68 = a24;
    v69 = *(v57 + 8);
    v70 = OUTLINED_FUNCTION_55();
    v69(v70);
    if ((v145 & 0x100000000) != 0)
    {
      if (qword_1EC214000 != -1)
      {
        OUTLINED_FUNCTION_0_136();
        swift_once();
      }

      v76 = sub_1C754FF1C();
      __swift_project_value_buffer(v76, qword_1EC21A718);
      v77 = sub_1C754FEEC();
      v78 = sub_1C755117C();
      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_96_0();
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_1C6F5C000, v77, v78, "Focal length not defined in file", v79, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {
      v71 = *(v36 + 336);
      (v63)(*(v36 + 600), *MEMORY[0x1E698A820], *(v36 + 584));
      *(v36 + 280) = MEMORY[0x1E69E6448];
      *(v36 + 256) = v71;
      sub_1C6F9ED18((v36 + 256), (v36 + 288));
      swift_isUniquelyReferenced_nonNull_native();
      a24 = v68;
      sub_1C6FC7E54();
      v68 = a24;
      v72 = OUTLINED_FUNCTION_55();
      v69(v72);
    }

    *(v36 + 784) = v68;
    sub_1C754E85C();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    swift_unknownObjectRetain();

    *(v36 + 792) = sub_1C754E84C();
    v90 = *(v36 + 897);
    v148 = *(v36 + 896);
    v91 = *(v36 + 328);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A778, &qword_1C75818A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    v93 = *MEMORY[0x1E695F948];
    *(inited + 32) = *MEMORY[0x1E695F948];
    *(inited + 64) = MEMORY[0x1E69E6370];
    *(inited + 40) = 1;
    type metadata accessor for CIImageOption(0);
    sub_1C730A980(&qword_1EC214708, type metadata accessor for CIImageOption, aM_17);
    v94 = v93;
    v95 = OUTLINED_FUNCTION_62_19();
    objc_allocWithZone(MEMORY[0x1E695F658]);
    v96 = sub_1C730A064(v91, v95);
    *(v36 + 800) = v96;
    LOBYTE(a24) = v90;
    sub_1C7308290(&a24);
    if (v148)
    {
      goto LABEL_20;
    }

    v120 = *(v36 + 344);
    v121 = *(v36 + 352);
    if (v120 != 0.0)
    {
      v122 = *(v36 + 352);
      if (v121 != 0.0)
      {
        v123 = *MEMORY[0x1E69BDDB0] != v120;
        if (*(MEMORY[0x1E69BDDB0] + 8) != v121)
        {
          v123 = 1;
        }

        if (v120 > 64.0 && v123 && v121 > 64.0)
        {
          if (v120 <= -1.0)
          {
            __break(1u);
          }

          else if (v120 < 4294967300.0)
          {
            if ((~*&v121 & 0x7FF0000000000000) != 0 && (*&v120 & 0x7FF0000000000000) != 0x7FF0000000000000)
            {
              if (v121 > -1.0)
              {
                if (v121 < 4294967300.0)
                {
                  v124 = *(v36 + 552);
                  v125 = *(v36 + 544);
                  v126 = *(v36 + 536);
                  *v124 = v120;
                  v124[1] = v122;
                  (*(v125 + 104))(v124, *MEMORY[0x1E698A898], v126);
                  v127 = sub_1C754E8DC();
                  sub_1C754E87C();
                  v127(v36 + 224, 0);
LABEL_20:
                  v149 = (*MEMORY[0x1E698A870] + MEMORY[0x1E698A870]);
                  v97 = swift_task_alloc();
                  *(v36 + 808) = v97;
                  *v97 = v36;
                  v97[1] = sub_1C730467C;
                  OUTLINED_FUNCTION_38_4();

                  v101(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, 1, 2, a19, v141, v143, v145, v149, a24, a25, a26, a27, a28);
                  return;
                }

LABEL_47:
                __break(1u);
                return;
              }

LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          __break(1u);
          goto LABEL_45;
        }
      }
    }

    sub_1C730A2C4();
    OUTLINED_FUNCTION_9_10();
    v128 = swift_allocError();
    *v129 = v120;
    *(v129 + 8) = v121;
    *(v129 + 16) = 1;
    swift_willThrow();

    v130 = OUTLINED_FUNCTION_61_0();
    v131(v130);
    *(v36 + 320) = v128;
    v80 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    OUTLINED_FUNCTION_17_62();
    if (swift_dynamicCast())
    {
      v81 = OUTLINED_FUNCTION_16_51();
      if (v82(v81) == *MEMORY[0x1E698A8D8])
      {

        sub_1C730A2C4();
        OUTLINED_FUNCTION_9_10();
        v83 = swift_allocError();
        OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v83, v84);
        v147 = v85;
        swift_willThrow();

        swift_unknownObjectRelease();
        v86 = OUTLINED_FUNCTION_15_1();
        v87(v86);

        goto LABEL_25;
      }

      v106 = OUTLINED_FUNCTION_15_1();
      v107(v106);
      swift_unknownObjectRelease();

      v108 = OUTLINED_FUNCTION_40_35();
      v109(v108);
    }

    else
    {
      v88 = OUTLINED_FUNCTION_5_70();
      v89(v88);
      swift_unknownObjectRelease();
    }

    v147 = v128;
    goto LABEL_25;
  }

  sub_1C730A2C4();
  OUTLINED_FUNCTION_9_10();
  v73 = swift_allocError();
  OUTLINED_FUNCTION_6_77(xmmword_1C7569120, v73, v74);
  v147 = v75;
  swift_willThrow();

LABEL_25:
  OUTLINED_FUNCTION_1_103();
  v132 = v111;
  v133 = v110;
  v134 = *(v36 + 552);
  v135 = *(v36 + 528);
  v136 = *(v36 + 520);
  v137 = *(v36 + 512);
  v138 = *(v36 + 504);
  v139 = *(v36 + 480);
  v140 = *(v36 + 456);
  v142 = *(v36 + 432);
  v144 = *(v36 + 408);
  v146 = *(v36 + 400);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_38_4();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, v132, v133, v134, v135, v136, v137, v138, v139, v140, a18, a19, v142, v144, v146, v147, a24, a25, a26, a27, a28);
}

uint64_t sub_1C730467C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *(v1 + 816) = v3;
  *(v1 + 824) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73047A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t, __n128), void (*a19)(void (*)(uint64_t, uint64_t, __n128), uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_60_19();
  sub_1C754FE6C();
  OUTLINED_FUNCTION_51_20();
  sub_1C755130C();
  v30 = OUTLINED_FUNCTION_42_29();
  v31 = MEMORY[0x1E69E93E8];
  if (v30)
  {

    sub_1C754FEDC();

    v32 = OUTLINED_FUNCTION_15_1();
    if (v33(v32) == *v31)
    {
      v34 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v29 + 496) + 8))(*(v29 + 528), *(v29 + 488));
      v34 = "";
    }

    OUTLINED_FUNCTION_96_0();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v35);
    sub_1C754FE2C();
    OUTLINED_FUNCTION_31_34();
    OUTLINED_FUNCTION_50_24(v36, v37, v38, v39, v40, v34);
    v41 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v41);
  }

  v42 = *(v29 + 760);
  v43 = *(v29 + 696);
  v44 = *(v29 + 632);

  v42(v43, v44);
  sub_1C754FE6C();
  sub_1C754FE1C();
  v45 = sub_1C754FE6C();
  sub_1C755131C();
  if (OUTLINED_FUNCTION_42_29())
  {
    OUTLINED_FUNCTION_96_0();
    v46 = swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_55_25(v46);
    OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v48, v49, v47, "Analyzing", "");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v178 = *(v29 + 824);
  v173 = *(v29 + 768);
  v174 = *(v29 + 816);
  v50 = *(v29 + 760);
  v51 = *(v29 + 728);
  v52 = *(v29 + 704);
  v53 = *(v29 + 688);
  v54 = *(v29 + 632);
  v55 = *(v29 + 472);
  v175 = *(v29 + 480);
  v176 = *(v29 + 464);

  v51(v52, v53, v54);
  OUTLINED_FUNCTION_41_33();
  *(v29 + 832) = sub_1C754FEBC();
  v56 = OUTLINED_FUNCTION_323();
  v50(v56);
  sub_1C754F84C();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v57 = v174;
  *(v29 + 840) = sub_1C754F75C();
  v59 = *(v55 + 104);
  v58 = v55 + 104;
  v59(v175, *MEMORY[0x1E69C1B78], v176);
  sub_1C754F69C();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v29 + 848) = sub_1C754F67C();
  sub_1C754F68C();
  if (v178)
  {
    v60 = *(v29 + 816);
    v61 = *(v29 + 800);
    (*(*(v29 + 568) + 8))(*(v29 + 576), *(v29 + 560));

    *(v29 + 320) = v178;
    v62 = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    OUTLINED_FUNCTION_17_62();
    if (swift_dynamicCast())
    {
      v63 = OUTLINED_FUNCTION_16_51();
      v64(v63);
      OUTLINED_FUNCTION_15_59();
      if (v65)
      {

        sub_1C730A2C4();
        OUTLINED_FUNCTION_9_10();
        v66 = swift_allocError();
        OUTLINED_FUNCTION_6_77(xmmword_1C755FEE0, v66, v67);
        OUTLINED_FUNCTION_66_20(v68, v69, v70);

        swift_unknownObjectRelease();
        v82 = OUTLINED_FUNCTION_9_70();
      }

      else
      {
        v80 = OUTLINED_FUNCTION_9_70();
        v81(v80);
        swift_unknownObjectRelease();

        v82 = OUTLINED_FUNCTION_40_35();
      }

      v83(v82);
    }

    else
    {
      v78 = OUTLINED_FUNCTION_5_70();
      v79(v78);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_1_103();
    OUTLINED_FUNCTION_24_33();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_38_4();

    return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v173, v174, v175, v176, v178, a25, a26, a27, a28);
  }

  else
  {
    sub_1C754FE6C();
    OUTLINED_FUNCTION_59_21();
    sub_1C754FEAC();
    v71 = sub_1C755130C();
    v72 = sub_1C755144C();
    v73 = MEMORY[0x1E69E93E8];
    if (v72)
    {
      v74 = *(v29 + 520);
      v75 = *(v29 + 488);
      v76 = *(v29 + 496);

      sub_1C754FEDC();

      if ((*(v76 + 88))(v74, v75) == *v73)
      {
        v77 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v29 + 496) + 8))(*(v29 + 520), *(v29 + 488));
        v77 = "";
      }

      OUTLINED_FUNCTION_96_0();
      v93 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v93);
      v94 = sub_1C754FE2C();
      OUTLINED_FUNCTION_50_24(&dword_1C6F5C000, 0, v71, v94, "Analyzing", v77);
      v95 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v95);
    }

    v96 = *(v29 + 760);
    v97 = *(v29 + 680);
    v98 = *(v29 + 632);

    v96(v97, v98);
    v99 = [objc_opt_self() standardUserDefaults];
    v100 = sub_1C755065C();
    v101 = [v99 integerForKey_];
    *(v29 + 856) = v101;

    if (v101 < 1)
    {
      v124 = *(v29 + 408);
      v125 = *(v29 + 416);
      sub_1C71072FC(*(v29 + 360), v124);
      if (__swift_getEnumTagSinglePayload(v124, 1, v125) == 1)
      {
        OUTLINED_FUNCTION_21_48();

        swift_unknownObjectRelease();
        (*(v58 + 8))(v174, v73);
        v126 = OUTLINED_FUNCTION_43_30();
        v127(v126);
        sub_1C7030CDC(0, &qword_1EC215BD8, &unk_1C7564890);
      }

      else
      {
        v136 = OUTLINED_FUNCTION_46_26();
        v137(v136);
        sub_1C754FE6C();
        sub_1C754FE1C();
        v138 = sub_1C754FE6C();
        sub_1C755131C();
        if (OUTLINED_FUNCTION_42_29())
        {
          OUTLINED_FUNCTION_96_0();
          v139 = swift_slowAlloc();
          v140 = OUTLINED_FUNCTION_55_25(v139);
          OUTLINED_FUNCTION_18_45(&dword_1C6F5C000, v141, v142, v140, "Persisting", "");
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v175 = *(v29 + 768);
        v143 = *(v29 + 760);
        v144 = *(v29 + 728);
        v145 = *(v29 + 704);
        v146 = *(v29 + 656);
        v147 = *(v29 + 632);

        v144(v145, v146, v147);
        OUTLINED_FUNCTION_41_33();
        sub_1C754FEBC();

        v148 = OUTLINED_FUNCTION_323();
        v143(v148);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215AF8, &qword_1C75818B0);
        inited = swift_initStackObject();
        v150 = MEMORY[0x1E69ADA00];
        *(inited + 16) = xmmword_1C755BAB0;
        v151 = *v150;
        *(inited + 32) = *v150;
        v152 = *MEMORY[0x1E69AD9E8];
        type metadata accessor for MXISerializeCompressionAlgorithm(0);
        *(inited + 64) = v153;
        *(inited + 40) = v152;
        type metadata accessor for MXISerializeOption(0);
        OUTLINED_FUNCTION_27_37();
        sub_1C730A980(v154, v155, byte_1C755ADA8);
        v156 = v151;
        v157 = v152;
        sub_1C75504DC();
        sub_1C754F7EC();

        sub_1C754FE6C();
        OUTLINED_FUNCTION_59_21();
        sub_1C754FEAC();
        v158 = sub_1C755130C();
        if (sub_1C755144C())
        {
          LODWORD(v175) = v158;
          v160 = *(v29 + 496);
          v159 = *(v29 + 504);
          v161 = *(v29 + 488);

          sub_1C754FEDC();

          if ((*(v160 + 88))(v159, v161) != *MEMORY[0x1E69E93E8])
          {
            (*(*(v29 + 496) + 8))(*(v29 + 504), *(v29 + 488));
          }

          OUTLINED_FUNCTION_49_21();
          v167 = *(v29 + 800);
          OUTLINED_FUNCTION_30_34();
          v168 = *(v29 + 616);
          v176 = *(v29 + 608);
          v178 = *(v29 + 624);
          v169 = *(v29 + 568);
          v173 = *(v29 + 560);
          v174 = *(v29 + 576);
          v170 = *(v29 + 424);
          a15 = *(v29 + 432);
          a13 = *(v29 + 416);
          OUTLINED_FUNCTION_96_0();
          *swift_slowAlloc() = 0;
          v171 = sub_1C754FE2C();
          OUTLINED_FUNCTION_65_20(&dword_1C6F5C000, v172, v175, v171, "Persisting");
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();

          swift_unknownObjectRelease();
          (a18)(v159, a17);
          (*(v170 + 8))(a15, a13);
          (*(v169 + 8))(v174, v173);
          (*(v168 + 8))(v178, v176);
        }

        else
        {
          OUTLINED_FUNCTION_19_56();
          v162 = *(v29 + 616);
          v176 = *(v29 + 608);
          v178 = v163;
          v164 = *(v29 + 568);
          v174 = *(v29 + 560);
          v175 = *(v29 + 576);
          v165 = *(v29 + 424);
          a14 = *(v29 + 416);
          a15 = *(v29 + 432);

          swift_unknownObjectRelease();
          a19(a18, a17);
          (*(v165 + 8))(a15, a14);
          (*(v164 + 8))(v175, v174);
          (*(v162 + 8))(v178, v176);
        }
      }

      OUTLINED_FUNCTION_11_57();

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_38_4();

      return v130(v128, v129, v130, v131, v132, v133, v134, v135, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v173, v174, v175, v176, v178, a25, a26, a27, a28);
    }

    else
    {
      if (qword_1EC214000 != -1)
      {
        OUTLINED_FUNCTION_0_136();
        swift_once();
      }

      v102 = sub_1C754FF1C();
      *(v29 + 864) = __swift_project_value_buffer(v102, qword_1EC21A718);
      v103 = sub_1C754FEEC();
      v104 = sub_1C755119C();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 134217984;
        *(v105 + 4) = v101;
        _os_log_impl(&dword_1C6F5C000, v103, v104, "PhotosAlchemistGenerationArtificialDelay user default set, start waiting for %lds", v105, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C754FE6C();
      sub_1C754FE1C();
      v106 = sub_1C754FE6C();
      v107 = sub_1C755131C();
      if (sub_1C755144C())
      {
        OUTLINED_FUNCTION_96_0();
        v108 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v108);
        v109 = sub_1C754FE2C();
        OUTLINED_FUNCTION_50_24(&dword_1C6F5C000, v106, v107, v109, "ArtificialDelay", "");
        v110 = OUTLINED_FUNCTION_2_44();
        MEMORY[0x1CCA5F8E0](v110);
      }

      v111 = *(v29 + 760);
      v112 = *(v29 + 728);
      v177 = *(v29 + 456);

      v113 = OUTLINED_FUNCTION_15_1();
      v112(v113);
      OUTLINED_FUNCTION_41_33();
      *(v29 + 872) = sub_1C754FEBC();
      v114 = OUTLINED_FUNCTION_55();
      v111(v114);
      sub_1C7307B7C(v101);
      sub_1C7551E7C();
      v115 = swift_task_alloc();
      *(v29 + 880) = v115;
      *v115 = v29;
      v115[1] = sub_1C7305664;
      OUTLINED_FUNCTION_38_4();

      return v121(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v173, v174, v175, v177, sub_1C730A318, a25, a26, a27, a28);
    }
  }
}