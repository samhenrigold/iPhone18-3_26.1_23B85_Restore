uint64_t sub_1AF76E150(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1AF76E344(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_17;
  }

  sub_1AF770FFC(a1 + 32, &v49, sub_1AF771224);
  v8 = v49;
  v7 = v50;
  v47 = v49;
  v48 = v50;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v41 = v51;
  v42 = v52;
  v9 = *a3;
  v10 = sub_1AF419914(v49, v50);
  v12 = v11;
  v13 = v9[2] + ((v11 & 1) == 0);
  if (v9[3] < v13)
  {
    sub_1AF82C8F0(v13, a2 & 1);
    v10 = sub_1AF419914(v8, v7);
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v8;
    v19[1] = v7;
    v20 = v18[7] + 88 * v10;
    v21 = v42;
    *v20 = v41;
    *(v20 + 16) = v21;
    v22 = v43;
    v23 = v44;
    v24 = v45;
    *(v20 + 80) = v46;
    *(v20 + 48) = v23;
    *(v20 + 64) = v24;
    *(v20 + 32) = v22;
    ++v18[2];
    v25 = v4 - 1;
    if (!v25)
    {
LABEL_17:

      return;
    }

    v26 = a1 + 136;
    while (1)
    {
      sub_1AF770FFC(v26, &v49, sub_1AF771224);
      v28 = v49;
      v27 = v50;
      v47 = v49;
      v48 = v50;
      v43 = v53;
      v44 = v54;
      v45 = v55;
      v46 = v56;
      v41 = v51;
      v42 = v52;
      v29 = *a3;
      v30 = sub_1AF419914(v49, v50);
      v32 = v31;
      if (v29[3] < (v29[2] + ((v31 & 1) == 0)))
      {
        sub_1AF82C8F0(v29[2] + ((v31 & 1) == 0), 1);
        v30 = sub_1AF419914(v28, v27);
        if ((v32 & 1) != (v33 & 1))
        {
          break;
        }
      }

      if (v32)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v35 = (v34[6] + 16 * v30);
      *v35 = v28;
      v35[1] = v27;
      v36 = v34[7] + 88 * v30;
      v37 = v42;
      *v36 = v41;
      *(v36 + 16) = v37;
      v38 = v43;
      v39 = v44;
      v40 = v45;
      *(v36 + 80) = v46;
      *(v36 + 48) = v39;
      *(v36 + 64) = v40;
      *(v36 + 32) = v38;
      ++v34[2];
      v26 += 104;
      if (!--v25)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    sub_1AFDFF1A8();
    __break(1u);
    goto LABEL_17;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v17 = v10;
  sub_1AF844804();
  v10 = v17;
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = swift_allocError();
  swift_willThrow();

  v57 = v15;
  v16 = v15;
  sub_1AF61FF58();
  if (swift_dynamicCast())
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    sub_1AF761390(&v41);
  }
}

uint64_t sub_1AF76E740(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1AF76EC88(v12, v7, v5, a3);
  result = MEMORY[0x1B271DEA0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1AF76E8B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    sub_1AF770DF0();
    sub_1AF770E44();
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFCD68();
    sub_1AF770F40(v20, sub_1AF7711B0);
    sub_1AF761390(v22);

    if (v15)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF76EA98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFD188();
    sub_1AF770F40(v20, sub_1AF7711B0);
    sub_1AF761390(v22);

    if (v15)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF76EC88(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2)
  {
    v6 = a1;
    v7 = a2;
    bzero(a1, 8 * a2);
    a1 = v6;
    a2 = v7;
  }

  v8 = a4(a1, a2, a3);

  return v8;
}

uint64_t sub_1AF76ED08(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AFDFBCE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  sub_1AFDFBC68();
  sub_1AFDFBC58();
  v11 = sub_1AFDFBC48();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    v24[0] = 95;
    v24[1] = 0xE100000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
  }

  else
  {
  }

  v13 = sub_1AFDFD048();
  if (v13)
  {
    v14 = v13;
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC07154(0, v13 & ~(v13 >> 63), 0);
    v15 = v24[0];
    do
    {
      v16 = sub_1AFDFD1C8();
      v18 = v17;
      if ((sub_1AFDFCD48() & 1) == 0 && (sub_1AFDFCD58() & 1) == 0)
      {

        v18 = 0xE100000000000000;
        v16 = 95;
      }

      v24[0] = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1AFC07154(v19 > 1, v20 + 1, 1);
        v15 = v24[0];
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      sub_1AFDFD058();
      --v14;
    }

    while (v14);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v15;
  v22 = MEMORY[0x1E69E5EE0];
  sub_1AF770E98(0, &qword_1EB638F78, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1AF76EFD8(&qword_1EB638F80, &qword_1EB638F78, v22, MEMORY[0x1E69E6328]);
  return sub_1AFDFD1D8();
}

uint64_t sub_1AF76EFD8(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF770E98(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF76F030(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF770E98(255, &qword_1EB63E670, &_s12MetadataTypeON, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF76F0C0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF770E98(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF76F144(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

char *sub_1AF76F190(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 39)
  {
    sub_1AF44CBE4(a2, v16);
    sub_1AF449D40(v16, v17);
    sub_1AF771140(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    swift_dynamicCast();
    v3 = sub_1AF42231C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1AF42231C(v4 > 1, v5 + 1, 1, v3);
    }

    *(v3 + 2) = v6;
    *&v3[8 * v5 + 32] = v14;
    v7 = v3;
    sub_1AF44CBE4(a2, v16);
    sub_1AF449D40(v16, v17);
    swift_dynamicCast();
    result = v7;
    v9 = *(v7 + 24);
    if ((v5 + 2) > (v9 >> 1))
    {
      result = sub_1AF42231C(v9 > 1, v5 + 2, 1, v7);
    }

    *(result + 2) = v5 + 2;
    *&result[8 * v6 + 32] = v15;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    *v16 = v17[0];
    MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF33920);
    v11 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v11;
    v18 = *(a1 + 32);
    sub_1AFDFE458();
    v12 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v13 = v12;
      swift_once();
      v12 = v13;
    }

    *&v17[0] = 0;
    sub_1AF0D4F18(v12, v17, v16[0], v16[1]);

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

char *sub_1AF76F418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 > 15)
  {
    if (v3 == 16)
    {
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      sub_1AF7710D8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      swift_dynamicCast();
      v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v4 = sub_1AF41FDF8(v25 > 1, v26 + 1, 1, v4);
      }

      *(v4 + 2) = v27;
      *&v4[4 * v26 + 32] = v44;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v28 = v45;
      v29 = *(v4 + 3);
      v30 = v26 + 2;
      if ((v26 + 2) > (v29 >> 1))
      {
        v41 = sub_1AF41FDF8(v29 > 1, v26 + 2, 1, v4);
        v28 = v45;
        v4 = v41;
      }

      *(v4 + 2) = v30;
      *&v4[4 * v27 + 32] = v28;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v31 = v46;
      v32 = *(v4 + 3);
      v33 = v26 + 3;
      if ((v26 + 3) > (v32 >> 1))
      {
        v42 = sub_1AF41FDF8(v32 > 1, v26 + 3, 1, v4);
        v31 = v46;
        v4 = v42;
      }

      *(v4 + 2) = v33;
      *&v4[4 * v30 + 32] = v31;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v34 = v47;
      v35 = *(v4 + 3);
      if ((v26 + 4) > (v35 >> 1))
      {
        v43 = sub_1AF41FDF8(v35 > 1, v26 + 4, 1, v4);
        v34 = v47;
        v4 = v43;
      }

      *(v4 + 2) = v26 + 4;
      *&v4[4 * v33 + 32] = v34;
    }

    else
    {
      if (v3 != 40)
      {
LABEL_18:
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v49[0] = 0;
        *(&v49[0] + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        *v48 = v49[0];
        MEMORY[0x1B2718AE0](0xD000000000000044, 0x80000001AFF33880);
        v18 = *(a1 + 16);
        v49[0] = *a1;
        v49[1] = v18;
        v50 = *(a1 + 32);
        sub_1AFDFE458();
        v19 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v37 = v19;
          swift_once();
          v19 = v37;
        }

        *&v49[0] = 0;
        sub_1AF0D4F18(v19, v49, v48[0], v48[1]);

        return MEMORY[0x1E69E7CC0];
      }

      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      sub_1AF771140(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468]);
      swift_dynamicCast();
      v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v4 = sub_1AF41FDF8(v13 > 1, v14 + 1, 1, v4);
      }

      *(v4 + 2) = v15;
      *&v4[4 * v14 + 32] = v44;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v16 = *(v4 + 3);
      if ((v14 + 2) > (v16 >> 1))
      {
        v4 = sub_1AF41FDF8(v16 > 1, v14 + 2, 1, v4);
      }

      *(v4 + 2) = v14 + 2;
      *&v4[4 * v15 + 32] = v45;
    }
  }

  else
  {
    if (v3 != 14)
    {
      if (v3 == 15)
      {
        sub_1AF44CBE4(a2, v48);
        sub_1AF449D40(v48, v49);
        sub_1AF7710D8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          v4 = sub_1AF41FDF8(v5 > 1, v6 + 1, 1, v4);
        }

        *(v4 + 2) = v7;
        *&v4[4 * v6 + 32] = v44;
        sub_1AF44CBE4(a2, v48);
        sub_1AF449D40(v48, v49);
        swift_dynamicCast();
        v8 = v45;
        v9 = *(v4 + 3);
        v10 = v6 + 2;
        if ((v6 + 2) > (v9 >> 1))
        {
          v38 = sub_1AF41FDF8(v9 > 1, v6 + 2, 1, v4);
          v8 = v45;
          v4 = v38;
        }

        *(v4 + 2) = v10;
        *&v4[4 * v7 + 32] = v8;
        sub_1AF44CBE4(a2, v48);
        sub_1AF449D40(v48, v49);
        swift_dynamicCast();
        v11 = v46;
        v12 = *(v4 + 3);
        if ((v6 + 3) > (v12 >> 1))
        {
          v39 = sub_1AF41FDF8(v12 > 1, v6 + 3, 1, v4);
          v11 = v46;
          v4 = v39;
        }

        *(v4 + 2) = v6 + 3;
        *&v4[4 * v10 + 32] = v11;
        return v4;
      }

      goto LABEL_18;
    }

    sub_1AF44CBE4(a2, v48);
    sub_1AF449D40(v48, v49);
    sub_1AF7710D8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    swift_dynamicCast();
    v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v4 + 2);
    v20 = *(v4 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v4 = sub_1AF41FDF8(v20 > 1, v21 + 1, 1, v4);
    }

    *(v4 + 2) = v22;
    *&v4[4 * v21 + 32] = v44;
    sub_1AF44CBE4(a2, v48);
    sub_1AF449D40(v48, v49);
    swift_dynamicCast();
    v23 = v45;
    v24 = *(v4 + 3);
    if ((v21 + 2) > (v24 >> 1))
    {
      v40 = sub_1AF41FDF8(v24 > 1, v21 + 2, 1, v4);
      v23 = v45;
      v4 = v40;
    }

    *(v4 + 2) = v21 + 2;
    *&v4[4 * v22 + 32] = v23;
  }

  return v4;
}

char *sub_1AF76FC64(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  switch(v3)
  {
    case 24:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float4x3(0);
      swift_dynamicCast();
      v39 = v41;
      v4 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v4 = sub_1AF42250C(v19 > 1, v20 + 1, 1, v4);
      }

      *(v4 + 2) = v21;
      *&v4[16 * v20 + 32] = v39;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v22 = v42;
      v23 = *(v4 + 3);
      v24 = v20 + 2;
      if ((v20 + 2) > (v23 >> 1))
      {
        v34 = sub_1AF42250C(v23 > 1, v20 + 2, 1, v4);
        v22 = v42;
        v4 = v34;
      }

      *(v4 + 2) = v24;
      *&v4[16 * v21 + 32] = v22;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v25 = v43;
      v26 = *(v4 + 3);
      v7 = v20 + 3;
      if ((v20 + 3) > (v26 >> 1))
      {
        v35 = sub_1AF42250C(v26 > 1, v20 + 3, 1, v4);
        v25 = v43;
        v4 = v35;
      }

      *(v4 + 2) = v7;
      *&v4[16 * v24 + 32] = v25;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v8 = v44;
      v9 = *(v4 + 3);
      v10 = v20 + 4;
      goto LABEL_21;
    case 21:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v38 = v41;
      v4 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1AF42250C(v11 > 1, v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      *&v4[16 * v12 + 32] = v38;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v14 = v42;
      v15 = *(v4 + 3);
      v16 = v12 + 2;
      if ((v12 + 2) > (v15 >> 1))
      {
        v32 = sub_1AF42250C(v15 > 1, v12 + 2, 1, v4);
        v14 = v42;
        v4 = v32;
      }

      *(v4 + 2) = v16;
      *&v4[16 * v13 + 32] = v14;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v17 = v43;
      v18 = *(v4 + 3);
      if ((v12 + 3) > (v18 >> 1))
      {
        v33 = sub_1AF42250C(v18 > 1, v12 + 3, 1, v4);
        v17 = v43;
        v4 = v33;
      }

      *(v4 + 2) = v12 + 3;
      *&v4[16 * v16 + 32] = v17;
      break;
    case 18:
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      type metadata accessor for simd_float2x3(0);
      swift_dynamicCast();
      v37 = v45[0];
      v4 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1AF42250C(v5 > 1, v6 + 1, 1, v4);
      }

      *(v4 + 2) = v7;
      *&v4[16 * v6 + 32] = v37;
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      swift_dynamicCast();
      v8 = v45[1];
      v9 = *(v4 + 3);
      v10 = v6 + 2;
LABEL_21:
      if (v10 > (v9 >> 1))
      {
        v40 = v8;
        v31 = sub_1AF42250C(v9 > 1, v10, 1, v4);
        v8 = v40;
        v4 = v31;
      }

      *(v4 + 2) = v10;
      *&v4[16 * v7 + 32] = v8;
      return v4;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v41 = 0;
      *(&v41 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      *v46 = v41;
      MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF337E0);
      v28 = a1[1];
      v41 = *a1;
      v42 = v28;
      *&v43 = *(a1 + 4);
      sub_1AFDFE458();
      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v36 = v29;
        swift_once();
        v29 = v36;
      }

      *&v41 = 0;
      sub_1AF0D4F18(v29, &v41, v46[0], v46[1]);

      return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

char *sub_1AF770270(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  switch(v3)
  {
    case 25:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v39 = v41;
      v4 = sub_1AF42053C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v4 = sub_1AF42053C(v19 > 1, v20 + 1, 1, v4);
      }

      *(v4 + 2) = v21;
      *&v4[16 * v20 + 32] = v39;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v22 = v42;
      v23 = *(v4 + 3);
      v24 = v20 + 2;
      if ((v20 + 2) > (v23 >> 1))
      {
        v34 = sub_1AF42053C(v23 > 1, v20 + 2, 1, v4);
        v22 = v42;
        v4 = v34;
      }

      *(v4 + 2) = v24;
      *&v4[16 * v21 + 32] = v22;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v25 = v43;
      v26 = *(v4 + 3);
      v7 = v20 + 3;
      if ((v20 + 3) > (v26 >> 1))
      {
        v35 = sub_1AF42053C(v26 > 1, v20 + 3, 1, v4);
        v25 = v43;
        v4 = v35;
      }

      *(v4 + 2) = v7;
      *&v4[16 * v24 + 32] = v25;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v8 = v44;
      v9 = *(v4 + 3);
      v10 = v20 + 4;
      goto LABEL_21;
    case 22:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float3x4(0);
      swift_dynamicCast();
      v38 = v41;
      v4 = sub_1AF42053C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1AF42053C(v11 > 1, v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      *&v4[16 * v12 + 32] = v38;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v14 = v42;
      v15 = *(v4 + 3);
      v16 = v12 + 2;
      if ((v12 + 2) > (v15 >> 1))
      {
        v32 = sub_1AF42053C(v15 > 1, v12 + 2, 1, v4);
        v14 = v42;
        v4 = v32;
      }

      *(v4 + 2) = v16;
      *&v4[16 * v13 + 32] = v14;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v17 = v43;
      v18 = *(v4 + 3);
      if ((v12 + 3) > (v18 >> 1))
      {
        v33 = sub_1AF42053C(v18 > 1, v12 + 3, 1, v4);
        v17 = v43;
        v4 = v33;
      }

      *(v4 + 2) = v12 + 3;
      *&v4[16 * v16 + 32] = v17;
      break;
    case 19:
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      type metadata accessor for simd_float2x4(0);
      swift_dynamicCast();
      v37 = v45[0];
      v4 = sub_1AF42053C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1AF42053C(v5 > 1, v6 + 1, 1, v4);
      }

      *(v4 + 2) = v7;
      *&v4[16 * v6 + 32] = v37;
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      swift_dynamicCast();
      v8 = v45[1];
      v9 = *(v4 + 3);
      v10 = v6 + 2;
LABEL_21:
      if (v10 > (v9 >> 1))
      {
        v40 = v8;
        v31 = sub_1AF42053C(v9 > 1, v10, 1, v4);
        v8 = v40;
        v4 = v31;
      }

      *(v4 + 2) = v10;
      *&v4[16 * v7 + 32] = v8;
      return v4;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v41 = 0;
      *(&v41 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      *v46 = v41;
      MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF33790);
      v28 = a1[1];
      v41 = *a1;
      v42 = v28;
      *&v43 = *(a1 + 4);
      sub_1AFDFE458();
      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v36 = v29;
        swift_once();
        v29 = v36;
      }

      *&v41 = 0;
      sub_1AF0D4F18(v29, &v41, v46[0], v46[1]);

      return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1AF77087C(uint64_t a1, uint64_t a2)
{
  v7[3] = a2;
  v5 = sub_1AF585714(v7);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_1AF7FDB64(0x65756C6176, 0xE500000000000000, v7);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  return v2;
}

uint64_t sub_1AF770910(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v3, 0);
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v26 + 16);
      v8 = *(v26 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1AFC05CE4(v8 > 1, v9 + 1, 1);
      }

      *(v26 + 16) = v9 + 1;
      v10 = v26 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v11 = MEMORY[0x1E69E6158];
  sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF76EFD8(&qword_1ED726C68, &qword_1ED726C70, v11, MEMORY[0x1E69E6310]);
  v12 = sub_1AFDFCD98();
  v14 = v13;

  v15 = *(a2 + 16);
  if (v15)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v15, 0);
    v16 = (a2 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1AFC05CE4(v19 > 1, v20 + 1, 1);
      }

      *(v27 + 16) = v20 + 1;
      v21 = v27 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v22 = sub_1AFDFCD98();
  v24 = v23;

  MEMORY[0x1B2718AE0](v12, v14);

  MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v22, v24);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1AF770BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v3, 0);
    v4 = v26[0];
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 16);
      v30[0] = *v6;
      v30[1] = v7;
      v31 = *(v6 + 32);
      sub_1AF444F60(v30, v28);
      v8 = sub_1AF7FE65C();
      v10 = v9;
      sub_1AF444FBC(v30);
      v26[0] = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
        v4 = v26[0];
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v14, 0);
    v15 = v27;
    v16 = a2 + 32;
    do
    {
      v17 = *(v16 + 16);
      v28[0] = *v16;
      v28[1] = v17;
      v29 = *(v16 + 32);
      sub_1AF444F60(v28, v26);
      v18 = sub_1AF7FE65C();
      v20 = v19;
      sub_1AF444FBC(v28);
      v27 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05CE4(v21 > 1, v22 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v16 += 40;
      --v14;
    }

    while (v14);
  }

  v24 = sub_1AF770910(v4, v15);

  return v24;
}

uint64_t sub_1AF770D80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF770E98(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF770DF0()
{
  result = qword_1ED722070;
  if (!qword_1ED722070)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6170], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1ED722070);
  }

  return result;
}

unint64_t sub_1AF770E44()
{
  result = qword_1ED722078;
  if (!qword_1ED722078)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E82B0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1ED722078);
  }

  return result;
}

void sub_1AF770E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF770EE8(uint64_t a1)
{
  if (!qword_1EB63D800)
  {
    sub_1AFDFF328();
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63D800);
    }
  }
}

uint64_t sub_1AF770F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF770FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF771064(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF7710D8(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF7710D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF771140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1AFDFD998();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF7711B0()
{
  if (!qword_1EB63E698)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63E698);
    }
  }
}

void sub_1AF771214(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 59)
  {
    sub_1AF687FE4(a1, a2, a3, a4, a5);
  }
}

void sub_1AF771224()
{
  if (!qword_1EB638830)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638830);
    }
  }
}

unint64_t sub_1AF7712A8()
{
  result = qword_1EB63E6A0;
  if (!qword_1EB63E6A0)
  {
    result = swift_getWitnessTable(aQ_55, &type metadata for GraphV1CodeGeneration.BaseObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E6A0);
  }

  return result;
}

unint64_t sub_1AF771300()
{
  result = qword_1EB63E6A8;
  if (!qword_1EB63E6A8)
  {
    result = swift_getWitnessTable(aA_44, &type metadata for GraphV1CodeGeneration.BaseObject.Type, v0, v1);
    atomic_store(result, &qword_1EB63E6A8);
  }

  return result;
}

unint64_t sub_1AF771358()
{
  result = qword_1EB63E6B0;
  if (!qword_1EB63E6B0)
  {
    result = swift_getWitnessTable(byte_1AFE76230, &type metadata for GraphV1CodeGeneration.BaseObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E6B0);
  }

  return result;
}

unint64_t sub_1AF7713B0()
{
  result = qword_1EB63E6B8;
  if (!qword_1EB63E6B8)
  {
    result = swift_getWitnessTable(byte_1AFE76258, &type metadata for GraphV1CodeGeneration.BaseObject.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E6B8);
  }

  return result;
}

unint64_t sub_1AF771404(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF771450()
{
  result = qword_1EB63E6C0;
  if (!qword_1EB63E6C0)
  {
    result = swift_getWitnessTable(byte_1AFE76370, &type metadata for GraphV1CodeGeneration.BaseObject.Type, v0, v1);
    atomic_store(result, &qword_1EB63E6C0);
  }

  return result;
}

uint64_t sub_1AF7714C0(uint64_t result, uint64_t *a2, char a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    if (a3 == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 59;
    }

    v5 = 0xE100000000000000;
    if (a3 == 3)
    {
      v5 = 0xE000000000000000;
    }

    v15 = v5;
    v16 = v4;
    v6 = (result + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *a2;

      MEMORY[0x1B2718AE0](v7, v8);
      MEMORY[0x1B2718AE0](v16, v15);

      v10 = *(v9 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 128) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1AF420554(0, *(v10 + 2) + 1, 1, v10);
        *(v9 + 128) = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_1AF420554(v12 > 1, v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = 8201;
      *(v14 + 5) = 0xE200000000000000;
      *(v9 + 128) = v10;

      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF771628(uint64_t result)
{
  v2 = v1[17];
  if (v2)
  {
    v30 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (v2[20])
    {
      v4 = v2[20];
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1[8] = v4;

    v1[9] = v3;

    v5 = v2[21];
    v31 = v2;
    if (v5)
    {
      v6 = *(v5 + 16);

      if (v6)
      {
        v7 = (v5 + 40);
        do
        {
          v9 = *(v7 - 1);
          v8 = *v7;
          swift_bridgeObjectRetain_n();
          sub_1AF809DF8(v9, v8, v36);
          v32 = v36[1];
          v34 = v36[0];
          v10 = v37;
          v11 = v1[9];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[9] = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_1AF424FCC(0, *(v11 + 2) + 1, 1, v11);
            v1[9] = v11;
          }

          v14 = *(v11 + 2);
          v13 = *(v11 + 3);
          if (v14 >= v13 >> 1)
          {
            v1[9] = sub_1AF424FCC(v13 > 1, v14 + 1, 1, v11);
          }

          v15 = v1[9];
          *(v15 + 16) = v14 + 1;
          v16 = v15 + 40 * v14;
          *(v16 + 32) = v34;
          *(v16 + 48) = v32;
          *(v16 + 64) = v10;
          v1[9] = v15;
          v7 += 2;
          --v6;
        }

        while (v6);
      }

      v2 = v31;
      v3 = MEMORY[0x1E69E7CC0];
    }

    if (v2[25])
    {
      v17 = v2[25];
    }

    else
    {
      v17 = v3;
    }

    v1[13] = v17;

    v1[14] = v3;

    v18 = v2[26];
    if (v18)
    {
      v19 = *(v18 + 16);

      if (v19)
      {
        v20 = (v18 + 40);
        do
        {
          v22 = *(v20 - 1);
          v21 = *v20;
          swift_bridgeObjectRetain_n();
          sub_1AF809DF8(v22, v21, v38);
          v33 = v38[1];
          v35 = v38[0];
          v23 = v39;
          v24 = v1[14];
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v1[14] = v24;
          if ((v25 & 1) == 0)
          {
            v24 = sub_1AF424FCC(0, *(v24 + 2) + 1, 1, v24);
            v1[14] = v24;
          }

          v27 = *(v24 + 2);
          v26 = *(v24 + 3);
          if (v27 >= v26 >> 1)
          {
            v1[14] = sub_1AF424FCC(v26 > 1, v27 + 1, 1, v24);
          }

          v28 = v1[14];
          *(v28 + 16) = v27 + 1;
          v29 = v28 + 40 * v27;
          *(v29 + 32) = v35;
          *(v29 + 48) = v33;
          *(v29 + 64) = v23;
          v1[14] = v28;
          v20 += 2;
          --v19;
        }

        while (v19);
      }
    }

    sub_1AF763B9C(v30);
  }

  return result;
}

uint64_t sub_1AF771918()
{
  v1 = v0[17];
  v2 = *(v1 + 296);
  if (v2)
  {
    v3 = *(v1 + 288);
    v4 = v0[8];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 40); ; i += 2)
      {
        v8 = *(i - 1) == v3 && v2 == *i;
        if (v8 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }
    }

    else
    {
      v25 = v0[5];
      v26 = *(v25 + 16);
      if (v26)
      {
        v6 = 0;
        for (j = (v25 + 40); ; j += 2)
        {
          v28 = *(j - 1) == v3 && v2 == *j;
          if (v28 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          if (v26 == ++v6)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = v0[9];
    v10 = *(v9 + 16);
    if (v10 && (v11 = v0[14], v11[2] == 1))
    {
      v12 = v11[4];
      v13 = v11[5];
      v14 = v11[6];
      v15 = v11[7];
      v16 = v11[8];
      sub_1AF687F90(v12, v13, v14, v15, v16);
      v30 = v12;
      v32 = v12;
      v33 = v13;
      v34 = v14;
      v35 = v15;
      v36 = v16;

      v6 = 0;
      v17 = 32;
      while (1)
      {
        v18 = *(v9 + v17);
        v19 = *(v9 + v17 + 16);
        v38 = *(v9 + v17 + 32);
        v37[0] = v18;
        v37[1] = v19;
        sub_1AF444F60(v37, v31);
        v20 = sub_1AF7FE65C();
        v22 = v21;
        if (v20 == sub_1AF7FE65C() && v22 == v23)
        {
          break;
        }

        v24 = sub_1AFDFEE28();

        sub_1AF444FBC(v37);
        if (v24)
        {
          goto LABEL_30;
        }

        ++v6;
        v17 += 40;
        if (v10 == v6)
        {
          v6 = -1;
          goto LABEL_30;
        }
      }

      sub_1AF444FBC(v37);
LABEL_30:

      sub_1AF771214(v30, v13, v14, v15, v16);
    }

    else
    {
      return -1;
    }
  }

  return v6;
}

void sub_1AF771B4C()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = *(v1 + 328);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        v14 = MEMORY[0x1E69E7CC0];

        sub_1AFDFE368();
        v4 = (v2 + 56);
        do
        {
          v5 = *(v4 - 3);
          v6 = *(v4 - 2);
          v7 = *(v4 - 1);
          v8 = *v4;
          v12 = v0[3];
          v13 = v0[4];

          MEMORY[0x1B2718AE0](47, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v5, v6);

          sub_1AF809DF8(v7, v8, v15);
          v9 = v16;
          _s12ParameterOutCMa();
          v10 = swift_allocObject();
          swift_weakInit();
          swift_weakAssign();
          *(v10 + 24) = v5;
          *(v10 + 32) = v6;
          *(v10 + 40) = v12;
          *(v10 + 48) = v13;
          v11 = v15[0];
          *(v10 + 72) = v15[1];
          *(v10 + 56) = v11;
          *(v10 + 88) = v9;
          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v4 += 4;
          --v3;
        }

        while (v3);

        v0[15] = v14;
      }
    }
  }
}

uint64_t sub_1AF771D2C()
{
  v1 = v0;
  sub_1AF775B40(0, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v80 - v5;
  v88 = sub_1AFDFF358();
  v7 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[17];
  if (*(v9 + 160))
  {
    v10 = *(v9 + 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (*(v9 + 168))
  {
    v11 = *(v9 + 168);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1AF7820DC(v10, v11);

  v13 = *(v12 + 16);

  if (!v13)
  {
    return sub_1AF764300();
  }

  v14 = *(v1[17] + 176);
  if (!v14 || (v15 = *(v14 + 16)) == 0)
  {
LABEL_46:
    v55 = v1[7];
    if (v55 >> 62)
    {
      v56 = sub_1AFDFE108();
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v56)
    {
      v57 = 0;
      *&v91 = v55 & 0xC000000000000001;
      *&v90 = v55;
      v92 = v56;
      do
      {
        if (v91)
        {
          v58 = MEMORY[0x1B2719C70](v57, v55);
        }

        else
        {
          v58 = *(v55 + 8 * v57 + 32);
        }

        v59 = *(v58 + 32);
        *&v105[0] = *(v58 + 24);
        *(&v105[0] + 1) = v59;

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        v60 = v105[0];
        v61 = v1[2];
        if (v61 && *(v61 + 16) && (, sub_1AF419914(v60, *(&v60 + 1)), v63 = v62, , (v63 & 1) != 0))
        {
        }

        else
        {
          v64 = *(v58 + 72);
          v93 = *(v58 + 56);
          v94 = v64;
          *&v95 = *(v58 + 88);
          sub_1AF444F60(&v93, v100);
          sub_1AF7FCDD4(&v93, 1, &v101);
          sub_1AF444FBC(&v93);
          if (*(&v101 + 1))
          {
            v105[2] = v103;
            v106[0] = *v104;
            v106[1] = *&v104[16];
            v107 = *&v104[32];
            v105[0] = v101;
            v105[1] = v102;
            if (!v1[2])
            {
              v1[2] = MEMORY[0x1E69E7CC8];
            }

            sub_1AF4455CC(v105, &v101);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v100[0] = v1[2];
            v66 = v100[0];
            v1[2] = 0x8000000000000000;
            v68 = sub_1AF419914(v60, *(&v60 + 1));
            v69 = v67;
            v70 = *(v66 + 16) + ((v67 & 1) == 0);
            if (*(v66 + 24) >= v70)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v67 & 1) == 0)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                sub_1AF844804();
                if ((v69 & 1) == 0)
                {
                  goto LABEL_70;
                }
              }
            }

            else
            {
              sub_1AF82C8F0(v70, isUniquelyReferenced_nonNull_native);
              v71 = sub_1AF419914(v60, *(&v60 + 1));
              if ((v69 & 1) != (v72 & 1))
              {
                goto LABEL_75;
              }

              v68 = v71;
              if ((v69 & 1) == 0)
              {
LABEL_70:
                v73 = v100[0];
                *(v100[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
                *(v73[6] + 16 * v68) = v60;
                v74 = v73[7] + 88 * v68;
                v75 = v102;
                *v74 = v101;
                v76 = v103;
                v77 = *v104;
                v78 = *&v104[16];
                *(v74 + 80) = *&v104[32];
                *(v74 + 48) = v77;
                *(v74 + 64) = v78;
                *(v74 + 16) = v75;
                *(v74 + 32) = v76;

                sub_1AF761390(v105);
                ++v73[2];
                goto LABEL_71;
              }
            }

            v73 = v100[0];
            sub_1AF770FA0(&v101, *(v100[0] + 56) + 88 * v68);

            sub_1AF761390(v105);
LABEL_71:
            v1[2] = v73;

            v55 = v90;
            goto LABEL_51;
          }

          sub_1AF7751B8(&v101, &qword_1EB6335B0, &_s8MetadataVN);
        }

LABEL_51:
        ++v57;
      }

      while (v92 != v57);
    }

    return sub_1AF764300();
  }

  v16 = v14 + 32;
  v17 = *MEMORY[0x1E69E75B8];
  v83 = *MEMORY[0x1E69E75B0];
  v84 = v17;
  v81 = *MEMORY[0x1E69E75A8];
  v87 = (v7 + 8);
  v80 = v14;

  v82 = xmmword_1AFE76100;
  v18 = v89;
  v86 = v6;
  while (1)
  {
    sub_1AF4455CC(v16, v105);
    v101 = v105[0];

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    v26 = *(&v101 + 1);
    v92 = v101;
    v27 = v1[2];
    if (v27)
    {
      if (*(v27 + 16))
      {

        sub_1AF419914(v92, v26);
        v29 = v28;

        if (v29)
        {

          goto LABEL_13;
        }
      }
    }

    sub_1AF44CBE4(v106 + 8, v100);
    if (!v1[2])
    {
      v1[2] = MEMORY[0x1E69E7CC8];
    }

    sub_1AF0D5A54(v100, &v93);
    memset(&v104[8], 0, 32);
    *&v101 = v92;
    *(&v101 + 1) = v26;
    sub_1AF0D5A54(&v93, &v99);

    sub_1AFDFF318();
    sub_1AF441150(&v93, *(&v94 + 1));
    DynamicType = swift_getDynamicType();
    sub_1AFDFF338();
    v31 = sub_1AFDFF328();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v6, 1, v31) == 1)
    {
      goto LABEL_21;
    }

    v34 = v6;
    v35 = v6;
    v36 = v85;
    sub_1AF775228(v35, v85);
    v37 = (*(v32 + 88))(v36, v31);
    if (v37 == v84)
    {
      if (DynamicType == &type metadata for Entity)
      {
        v33 = 0;
        v90 = v82;
        v91 = 0u;
      }

      else
      {
        sub_1AF808478(DynamicType, v108);
        v90 = v108[0];
        v91 = v108[1];
        v33 = v109;
      }

      v6 = v34;
      v18 = v89;
      (*v87)(v89, v88);
    }

    else if (v37 == v83)
    {
      v38 = v89;
      (*v87)(v89, v88);
      v33 = 0;
      v90 = v82;
      v91 = 0u;
      v6 = v34;
      v18 = v38;
    }

    else
    {
      v6 = v34;
      if (v37 != v81)
      {
        (*(v32 + 8))(v85, v31);
        v18 = v89;
LABEL_21:
        sub_1AF808478(DynamicType, v110);
        v90 = v110[0];
        v91 = v110[1];
        v33 = v111;
        (*v87)(v18, v88);
        goto LABEL_36;
      }

      v18 = v89;
      (*v87)(v89, v88);
      sub_1AF441150(&v93, *(&v94 + 1));
      v39 = swift_getDynamicType();
      v40 = swift_conformsToProtocol2();
      v33 = 0;
      if (v39)
      {
        v41 = v40 == 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = 41;
      if (v41)
      {
        v42 = 42;
      }

      *&v43 = 0;
      v91 = 0u;
      *(&v43 + 1) = v42;
      v90 = v43;
    }

LABEL_36:
    sub_1AF77515C(v6, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
    v102 = v90;
    v103 = v91;
    *v104 = v33;
    sub_1AF7751B8(&v104[8], &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(&v93, &v104[8]);
    v95 = v103;
    v96 = *v104;
    v97 = *&v104[16];
    v98 = *&v104[32];
    v93 = v101;
    v94 = v102;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v1[2];
    v45 = v99;
    v1[2] = 0x8000000000000000;
    v46 = v92;
    v47 = sub_1AF419914(v92, v26);
    v49 = v48;
    v50 = v45[2] + ((v48 & 1) == 0);
    if (v45[3] < v50)
    {
      break;
    }

    if ((v44 & 1) == 0)
    {
      v54 = v47;
      sub_1AF844804();
      v47 = v54;
    }

    v46 = v92;
    if (v49)
    {
LABEL_43:
      v52 = v47;

      v19 = v99;
      v53 = v99[7] + 88 * v52;
      v18 = v89;
      sub_1AF770FA0(&v93, v53);
      goto LABEL_12;
    }

LABEL_11:
    v19 = v99;
    v99[(v47 >> 6) + 8] |= 1 << v47;
    v20 = (v19[6] + 16 * v47);
    *v20 = v46;
    v20[1] = v26;
    v21 = v19[7] + 88 * v47;
    v22 = v94;
    *v21 = v93;
    v23 = v95;
    v24 = v96;
    v25 = v97;
    *(v21 + 80) = v98;
    *(v21 + 48) = v24;
    *(v21 + 64) = v25;
    *(v21 + 16) = v22;
    *(v21 + 32) = v23;
    ++v19[2];
LABEL_12:
    v6 = v86;
    v1[2] = v19;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v100);
LABEL_13:
    sub_1AF761390(v105);
    v16 += 88;
    if (!--v15)
    {

      goto LABEL_46;
    }
  }

  sub_1AF82C8F0(v50, v44);
  v47 = sub_1AF419914(v46, v26);
  if ((v49 & 1) == (v51 & 1))
  {
    if (v49)
    {
      goto LABEL_43;
    }

    goto LABEL_11;
  }

LABEL_75:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF7727A4()
{
  sub_1AF76B4B4();

  return sub_1AF771D2C();
}

uint64_t sub_1AF7727CC(void *a1)
{
  *(swift_allocObject() + 136) = 0;
  sub_1AF441194(a1, v4);
  v2 = sub_1AF76BC24(v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF772848()
{
  sub_1AFDFE218();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF33A80);

  v3 = sub_1AF777650();
  MEMORY[0x1B2718AE0](v3);

  return 0xD000000000000011;
}

uint64_t sub_1AF77292C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (sub_1AF7626A4())
  {
    v6 = sub_1AF771918();
    v7 = v1[8] + 16 * v6;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = v1[5] + 16 * v6;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);
    v13 = v8 == v12 && v9 == v11;
    if (v13 || (v14 = v6, (sub_1AFDFEE28() & 1) != 0))
    {

      v15 = sub_1AF764B14(v12, v11);
    }

    else
    {
      v57 = (v2[9] + 40 * v14);
      v183 = v5;
      v58 = v57[4];
      v59 = v57[5];
      v184 = v4;
      v61 = v57[6];
      v60 = v57[7];
      v182 = v57[8];
      v62 = v2[4];
      v187.n128_u64[0] = v2[3];
      v187.n128_u64[1] = v62;

      sub_1AF687F90(v58, v59, v61, v60, v182);

      MEMORY[0x1B2718AE0](47, 0xE100000000000000);

      MEMORY[0x1B2718AE0](v8, v9);

      v63 = v187;
      _s11ParameterInCMa();
      v15 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      *(v15 + 24) = v8;
      *(v15 + 32) = v9;
      *(v15 + 40) = v63;
      *(v15 + 56) = v58;
      *(v15 + 64) = v59;
      v5 = v183;
      *(v15 + 72) = v61;
      *(v15 + 80) = v60;
      v4 = v184;
      *(v15 + 88) = v182;
    }

    if (*(v2[10] + 16))
    {
      v64 = v2[12];
      if ((v64 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1B2719C70](0, v64);
      }

      else
      {
      }
    }

    if (swift_weakLoadStrong())
    {
      v65 = sub_1AF7EFBF4();
      v67 = sub_1AF76A984(v65, v66);

      if (v67)
      {
        v68 = v2[13];
        v69 = v2[14];
        v70 = *(v68 + 32);
        v71 = *(v68 + 40);
        v72 = v69[5];
        v182 = v69[4];
        v181 = v72;
        v183 = v5;
        v73 = v69[6];
        v74 = v69[7];
        v184 = v4;
        v75 = v69[8];
        v76 = v2[4];
        v187.n128_u64[0] = v2[3];
        v187.n128_u64[1] = v76;

        sub_1AF687F90(v182, v72, v73, v74, v75);

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v70, v71);

        v77 = v187;
        _s12ParameterOutCMa();
        v78 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();
        *(v78 + 24) = v70;
        *(v78 + 32) = v71;
        *(v78 + 40) = v77;
        v79 = v181;
        *(v78 + 56) = v182;
        *(v78 + 64) = v79;
        *(v78 + 72) = v73;
        *(v78 + 80) = v74;
        v5 = v183;
        *(v78 + 88) = v75;
        v4 = v184;
        goto LABEL_37;
      }
    }

    else
    {
    }

    v80 = v2[12];
    if ((v80 & 0xC000000000000001) != 0)
    {

      v78 = MEMORY[0x1B2719C70](0, v80);
    }

    else
    {
      v78 = *(v80 + 32);
    }

LABEL_37:
    v81 = *(v78 + 72);
    v187 = *(v78 + 56);
    v188 = v81;
    *&v189 = *(v78 + 88);
    v82 = *(v78 + 40);
    v83 = *(v78 + 48);

    sub_1AF444F60(&v187, &v193);
    v84 = sub_1AF76ED08(v82, v83);
    v86 = v85;

    v87 = sub_1AF7DBFF8(&v187, v84, v86, 0, v5);
    v89 = v88;

    sub_1AF444FBC(&v187);
    v193.n128_u64[0] = 8201;
    v193.n128_u64[1] = 0xE200000000000000;
    MEMORY[0x1B2718AE0](v87, v89);

    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    v90 = *(v15 + 40);
    v91 = *(v15 + 48);

    v92 = sub_1AF76ED08(v90, v91);
    v94 = v93;

    MEMORY[0x1B2718AE0](v92, v94);

    if (v5 == 3)
    {
      v95 = 0;
    }

    else
    {
      v95 = 59;
    }

    if (v5 == 3)
    {
      v96 = 0xE000000000000000;
    }

    else
    {
      v96 = 0xE100000000000000;
    }

    MEMORY[0x1B2718AE0](v95, v96);

    v97 = v193;
    v98 = *(v4 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 128) = v98;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v98 = sub_1AF420554(0, *(v98 + 2) + 1, 1, v98);
      *(v4 + 128) = v98;
    }

    v101 = *(v98 + 2);
    v100 = *(v98 + 3);
    if (v101 >= v100 >> 1)
    {
      *(v4 + 128) = sub_1AF420554(v100 > 1, v101 + 1, 1, v98);
    }

    v103 = *(v4 + 128);
    *(v103 + 16) = v101 + 1;
    *(v103 + 16 * v101 + 32) = v97;
    *(v4 + 128) = v103;
    return result;
  }

  v16 = sub_1AF776964(v5);
  v18 = v17;

  v184 = v4;
  if (v18)
  {
    v182 = a1;
    v19 = v1[17];
    v20 = *(v19 + 160);
    v183 = v5;
    if (v20)
    {
      v21 = *(v20 + 16);
      if (v21)
      {

        v22 = (v181 + 40);
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;
          v187.n128_u64[0] = v16;
          v187.n128_u64[1] = v18;
          v193.n128_u64[0] = 36;
          v193.n128_u64[1] = 0xE100000000000000;

          MEMORY[0x1B2718AE0](v23, v24);
          v25 = v2[4];
          v185.n128_u64[0] = v2[3];
          v185.n128_u64[1] = v25;

          MEMORY[0x1B2718AE0](47, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v23, v24);

          v26 = sub_1AF76ED08(v185.n128_i64[0], v185.n128_u64[1]);
          v28 = v27;

          v185.n128_u64[0] = v26;
          v185.n128_u64[1] = v28;
          sub_1AF4486E4();
          v16 = sub_1AFDFDEB8();
          v30 = v29;

          v18 = v30;
          v22 += 2;
          --v21;
        }

        while (v21);

        v19 = v2[17];
        v4 = v184;
      }
    }

    v31 = *(v19 + 200);
    if (v31)
    {
      v32 = *(v31 + 16);
      if (v32)
      {

        v33 = (v181 + 40);
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          v187.n128_u64[0] = v16;
          v187.n128_u64[1] = v18;
          v193.n128_u64[0] = 36;
          v193.n128_u64[1] = 0xE100000000000000;

          MEMORY[0x1B2718AE0](v34, v35);
          v36 = v2[4];
          v185.n128_u64[0] = v2[3];
          v185.n128_u64[1] = v36;

          MEMORY[0x1B2718AE0](47, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v34, v35);

          v37 = sub_1AF76ED08(v185.n128_i64[0], v185.n128_u64[1]);
          v39 = v38;

          v185.n128_u64[0] = v37;
          v185.n128_u64[1] = v39;
          sub_1AF4486E4();
          v16 = sub_1AFDFDEB8();
          v41 = v40;

          v18 = v41;
          v33 += 2;
          --v32;
        }

        while (v32);

        v4 = v184;
      }
    }

    v187.n128_u64[0] = v16;
    v187.n128_u64[1] = v18;
    strcpy(&v193, "@valueAsString");
    v193.n128_u8[15] = -18;
    sub_1AF4486E4();
    if (sub_1AFDFDF18())
    {
      sub_1AF7FDD44(0x65756C6176, 0xE500000000000000, &v187);
      if (v187.n128_u64[1])
      {
        sub_1AF44CBE4(&v190.n128_i64[1], &v185);
        sub_1AF761390(&v187);
        if (*(&v186 + 1))
        {
          sub_1AF449D40(&v185, &v193);
          v42 = sub_1AF441150(&v193, *(&v194 + 1));
          v43 = MEMORY[0x1EEE9AC00](v42);
          (*(v45 + 16))(&v179 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
          v46 = sub_1AFDFCF88();
          v4 = v184;
          v187.n128_u64[0] = v16;
          v187.n128_u64[1] = v18;
          strcpy(&v185, "@valueAsString");
          v185.n128_u8[15] = -18;
          v191 = 34;
          v192 = 0xE100000000000000;
          MEMORY[0x1B2718AE0](v46);

          MEMORY[0x1B2718AE0](34, 0xE100000000000000);
          v16 = sub_1AFDFDEB8();
          v48 = v47;

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v193);
          v18 = v48;
          goto LABEL_52;
        }
      }

      else
      {
        sub_1AF7751B8(&v187, &qword_1EB6335B0, &_s8MetadataVN);
        v185 = 0u;
        v186 = 0u;
      }

      sub_1AF7751B8(&v185, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

LABEL_52:
    v187.n128_u64[0] = v16;
    v187.n128_u64[1] = v18;
    v193.n128_u64[0] = 0x65756C617640;
    v193.n128_u64[1] = 0xE600000000000000;
    v104 = sub_1AFDFDF18();
    v105 = v183;
    if ((v104 & 1) == 0)
    {
LABEL_71:
      v187.n128_u64[0] = v16;
      v187.n128_u64[1] = v18;
      v193.n128_u64[0] = 0x23504D455423;
      v193.n128_u64[1] = 0xE600000000000000;
      if (sub_1AFDFDF18())
      {
        v187.n128_u64[0] = v16;
        v187.n128_u64[1] = v18;
        v193.n128_u64[0] = 0x23504D455423;
        v193.n128_u64[1] = 0xE600000000000000;
        v133 = v2[4];
        v185.n128_u64[0] = v2[3];
        v185.n128_u64[1] = v133;

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](1886217556, 0xE400000000000000);

        v134 = sub_1AF76ED08(v185.n128_i64[0], v185.n128_u64[1]);
        v136 = v135;

        v185.n128_u64[0] = v134;
        v185.n128_u64[1] = v136;
        v16 = sub_1AFDFDEB8();
        v138 = v137;

        v18 = v138;
      }

      v187.n128_u64[0] = v16;
      v187.n128_u64[1] = v18;
      v193.n128_u64[0] = 10;
      v193.n128_u64[1] = 0xE100000000000000;
      v185.n128_u64[0] = 2099466;
      v185.n128_u64[1] = 0xE300000000000000;
      v139 = sub_1AFDFDEB8();
      v141 = v140;

      if (*(v2[17] + 240) == 1)
      {
        v187.n128_u64[0] = v139;
        v187.n128_u64[1] = v141;
        v193.n128_u64[0] = 0xD000000000000011;
        v193.n128_u64[1] = 0x80000001AFF33AC0;
        v185.n128_u64[0] = sub_1AF76337C();
        v185.n128_u64[1] = v142;
        v139 = sub_1AFDFDEB8();
        v144 = v143;

        v141 = v144;
      }

      v187.n128_u64[0] = v139;
      v187.n128_u64[1] = v141;
      v193.n128_u64[0] = 0x2344495523;
      v193.n128_u64[1] = 0xE500000000000000;
      v145 = v2[4];
      v185.n128_u64[0] = v2[3];
      v185.n128_u64[1] = v145;
      v146 = sub_1AFDFDEB8();
      v148 = v147;

      v187.n128_u64[0] = v146;
      v187.n128_u64[1] = v148;
      v193.n128_u64[0] = 8251;
      v193.n128_u64[1] = 0xE200000000000000;
      v149 = sub_1AFDFDE98();
      if (*(v149 + 16) < 2uLL)
      {

        v187.n128_u64[0] = 8201;
        v187.n128_u64[1] = 0xE200000000000000;
        MEMORY[0x1B2718AE0](v146, v148);

        v151 = v187;
        v152 = *(v4 + 128);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 128) = v152;
        if ((result & 1) == 0)
        {
          result = sub_1AF420554(0, *(v152 + 16) + 1, 1, v152);
          v152 = result;
          *(v4 + 128) = result;
        }

        v154 = *(v152 + 16);
        v153 = *(v152 + 24);
        if (v154 >= v153 >> 1)
        {
          result = sub_1AF420554(v153 > 1, v154 + 1, 1, v152);
          v152 = result;
        }

        *(v152 + 16) = v154 + 1;
        *(v152 + 16 * v154 + 32) = v151;
        *(v4 + 128) = v152;
      }

      else
      {
        v150 = v149;

        sub_1AF7714C0(v150, v182, v183);
      }

      v155 = *(v2[17] + 88);
      if (v155)
      {
        v156 = *(v155 + 16);

        if (v156)
        {
          v157 = (v155 + 40);
          do
          {
            v158 = *(v157 - 1);
            v159 = *v157;

            sub_1AF6B0504(v158, v159);

            v157 += 2;
            --v156;
          }

          while (v156);
        }
      }

      return result;
    }

    sub_1AF7FDD44(0x65756C6176, 0xE500000000000000, &v187);
    if (*(v2[10] + 16))
    {
      v106 = v2[12];
      v107 = v4;
      if ((v106 & 0xC000000000000001) != 0)
      {

        v108 = MEMORY[0x1B2719C70](0, v106);
      }

      else
      {
        v108 = *(v106 + 32);
      }

      v109 = *(v108 + 40);
      v110 = *(v108 + 48);

      v111 = sub_1AF76ED08(v109, v110);
      v113 = v112;

      v4 = v107;
      v114 = v105 >= 2;
      if (v105 <= 2)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v111 = 0;
      v113 = 0;
      v114 = v105 >= 2;
      if (v105 <= 2)
      {
LABEL_57:
        if (!v114)
        {
          goto LABEL_63;
        }

        v115 = sub_1AF7E5CBC(&v187, v4);
        goto LABEL_64;
      }
    }

    if (v105 != 3)
    {
LABEL_63:
      v115 = sub_1AF7E0118(&v187, v4, v111, v113, v105);
      goto LABEL_64;
    }

    v115 = sub_1AF7DD4B4(&v187, v4, v111, v113, 3);
LABEL_64:
    v181 = v115;
    v119 = v116;
    v120 = v117;
    v121 = v118;

    sub_1AF761390(&v187);
    if (v121)
    {
      v187.n128_u64[0] = 8201;
      v187.n128_u64[1] = 0xE200000000000000;
      v193.n128_u64[0] = v120;
      v193.n128_u64[1] = v121;
      v180 = v121;
      v185.n128_u64[0] = 10;
      v185.n128_u64[1] = 0xE100000000000000;
      v191 = 2314;
      v192 = 0xE200000000000000;
      v122 = sub_1AFDFDEB8();
      MEMORY[0x1B2718AE0](v122);

      v179 = v187.n128_u64[1];
      v123 = v187.n128_u64[0];
      v124 = *(v4 + 128);
      v125 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 128) = v124;
      v126 = v119;
      if ((v125 & 1) == 0)
      {
        v124 = sub_1AF420554(0, *(v124 + 2) + 1, 1, v124);
        *(v4 + 128) = v124;
      }

      v128 = *(v124 + 2);
      v127 = *(v124 + 3);
      if (v128 >= v127 >> 1)
      {
        v124 = sub_1AF420554(v127 > 1, v128 + 1, 1, v124);
      }

      *(v124 + 2) = v128 + 1;
      v129 = &v124[16 * v128];
      v130 = v179;
      *(v129 + 4) = v123;
      *(v129 + 5) = v130;
      *(v4 + 128) = v124;
      v119 = v126;
    }

    v187.n128_u64[0] = v16;
    v187.n128_u64[1] = v18;
    v193.n128_u64[0] = 0x65756C617640;
    v193.n128_u64[1] = 0xE600000000000000;
    v185.n128_u64[0] = v181;
    v185.n128_u64[1] = v119;
    v16 = sub_1AFDFDEB8();
    v132 = v131;

    v18 = v132;
    goto LABEL_71;
  }

  v50 = v1[3];
  v49 = v1[4];
  *(&v188 + 1) = MEMORY[0x1E69E6158];
  v187.n128_u64[0] = 0;
  v187.n128_u64[1] = 0xE000000000000000;

  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v187, &v193);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v187);
  sub_1AF449D40(&v193, &v187);
  swift_dynamicCast();
  v51 = v185;
  v52 = sub_1AF762980();
  v54 = v53;
  v187.n128_u64[0] = 0;
  v187.n128_u64[1] = 0xE000000000000000;
  sub_1AFDFE218();
  v185 = v187;
  v182 = v51.n128_u64[1];
  v181 = v52;
  v180 = v54;
  if (v5 <= 1)
  {
    if (v5)
    {
      v55 = 0xE600000000000000;
      v56 = 0x7070636A626FLL;
    }

    else
    {
      v55 = 0xE100000000000000;
      v56 = 99;
    }
  }

  else if (v5 == 2)
  {
    v55 = 0xE500000000000000;
    v56 = 0x6C6174656DLL;
  }

  else if (v5 == 3)
  {
    v55 = 0xE500000000000000;
    v56 = 0x7466697773;
  }

  else
  {
    v55 = 0xE200000000000000;
    v56 = 29546;
  }

  sub_1AF9A0BAC(1, v56, v55);

  v160 = sub_1AFDFDDB8();
  v162 = v161;

  v163 = sub_1AF701628(1, v56, v55);
  v165 = v164;
  v167 = v166;
  v169 = v168;

  v191 = v160;
  v192 = v162;
  v187.n128_u64[0] = v163;
  v187.n128_u64[1] = v165;
  *&v188 = v167;
  *(&v188 + 1) = v169;
  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v191, v192);

  MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF33AA0);
  v193.n128_u64[0] = v50;
  v193.n128_u64[1] = v49;
  *&v194 = v51.n128_u64[0];
  *(&v194 + 1) = v182;
  *&v195 = v181;
  *(&v195 + 1) = v180;
  v196 = v185;
  v187 = v193;
  v188 = v194;
  v189 = v195;
  v190 = v185;
  v170 = v184;
  v171 = *(v184 + 144);
  sub_1AF51E760(&v187, v171);
  if ((v172 & 1) == 0)
  {
    return sub_1AF761440(&v193);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v184 + 144) = v171;
  if ((result & 1) == 0)
  {
    result = sub_1AF424EC0(0, *(v171 + 16) + 1, 1, v171);
    v171 = result;
    *(v170 + 144) = result;
  }

  v174 = *(v171 + 16);
  v173 = *(v171 + 24);
  if (v174 >= v173 >> 1)
  {
    result = sub_1AF424EC0(v173 > 1, v174 + 1, 1, v171);
    v171 = result;
  }

  *(v171 + 16) = v174 + 1;
  v175 = (v171 + (v174 << 6));
  v176 = v187;
  v177 = v188;
  v178 = v190;
  v175[4] = v189;
  v175[5] = v178;
  v175[2] = v176;
  v175[3] = v177;
  *(v170 + 144) = v171;
  return result;
}

uint64_t sub_1AF774020(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *(v1[17] + 224);
  if (!v3)
  {
    return 0;
  }

  v4 = 0xE100000000000000;
  v5 = 99;
  v6 = 0xE500000000000000;
  v7 = 0x6C6174656DLL;
  v8 = 0xE500000000000000;
  v9 = 0x7466697773;
  if (a1 != 3)
  {
    v9 = 29546;
    v8 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a1)
  {
    v5 = 0x7070636A626FLL;
    v4 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (a1 <= 1u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (!*(v3 + 16))
  {

    return 0;
  }

  sub_1AF419914(v10, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {

    return 0;
  }

  v14 = v2[17];
  v15 = *(v14 + 160);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = ( + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        MEMORY[0x1B2718AE0](v18, v19);
        v27 = v2[3];
        v29 = v2[4];

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v18, v19);

        sub_1AF76ED08(v27, v29);

        sub_1AF4486E4();
        sub_1AFDFDEB8();

        v17 += 2;
        --v16;
      }

      while (v16);

      v14 = v2[17];
    }
  }

  v20 = *(v14 + 200);
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = ( + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;

        MEMORY[0x1B2718AE0](v23, v24);
        v28 = v2[3];
        v30 = v2[4];

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v23, v24);

        sub_1AF76ED08(v28, v30);

        sub_1AF4486E4();
        sub_1AFDFDEB8();

        v22 += 2;
        --v21;
      }

      while (v21);
    }
  }

  sub_1AF4486E4();
  v25 = sub_1AFDFDEB8();

  return v25;
}

uint64_t sub_1AF774434(void *a1)
{
  v3 = v1;
  sub_1AF77502C(0, &qword_1EB63E6D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF774F24();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v14 = 1;
    sub_1AFDFE8B8();
    v13 = 2;
    sub_1AFDFE8B8();
    v12 = *(v3 + 48);
    v11[15] = 3;
    sub_1AF774F78();
    sub_1AF775090(&qword_1EB63E6E0, sub_1AF775108, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1AFDFE8A8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AF774650()
{
  v1 = 0x4E7972617262696CLL;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x4E74657070696E73;
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

uint64_t sub_1AF7746DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF774A50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF774704(uint64_t a1)
{
  v2 = sub_1AF774F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF774740(uint64_t a1)
{
  v2 = sub_1AF774F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF77477C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF774BCC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1AF7747EC()
{
  sub_1AF76CB54();

  return swift_deallocClassInstance();
}

uint64_t _s11CodeSnippetC17SerializationInfoVwxx(void *a1)
{
}

void *_s11CodeSnippetC17SerializationInfoVwcp(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];

  return a1;
}

void *_s11CodeSnippetC17SerializationInfoVwca(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];

  return a1;
}

void *_s11CodeSnippetC17SerializationInfoVwta(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;

  a1[4] = *(a2 + 32);

  *(a1 + 5) = *(a2 + 40);

  return a1;
}

uint64_t sub_1AF774A50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E7972617262696CLL && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E74657070696E73 && a2 == 0xEB00000000656D61 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29540 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000074636944)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF774BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF77502C(0, &qword_1EB63E6C8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF774F24();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v30 = 0;
  v10 = sub_1AFDFE708();
  v12 = v11;
  v24 = v10;
  v29 = 1;
  v13 = sub_1AFDFE708();
  v25 = v14;
  v22 = v13;
  v28 = 2;
  v21 = sub_1AFDFE708();
  v23 = v15;
  sub_1AF774F78();
  v27 = 3;
  sub_1AF775090(&qword_1EB633340, sub_1AF774FD8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1AFDFE6E8();
  (*(v7 + 8))(v9, v6);
  v16 = v26;

  v17 = v25;

  v18 = v23;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  *a2 = v24;
  a2[1] = v12;
  v20 = v21;
  a2[2] = v22;
  a2[3] = v17;
  a2[4] = v20;
  a2[5] = v18;
  a2[6] = v16;
  return result;
}

unint64_t sub_1AF774F24()
{
  result = qword_1EB63E6D0;
  if (!qword_1EB63E6D0)
  {
    result = swift_getWitnessTable(byte_1AFE765D0, &_s11CodeSnippetC17SerializationInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E6D0);
  }

  return result;
}

void sub_1AF774F78()
{
  if (!qword_1EB633348)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633348);
    }
  }
}

unint64_t sub_1AF774FD8()
{
  result = qword_1EB6335B8;
  if (!qword_1EB6335B8)
  {
    result = swift_getWitnessTable(aE_33, &_s8MetadataVN, v0, v1);
    atomic_store(result, &qword_1EB6335B8);
  }

  return result;
}

void sub_1AF77502C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF774F24();
    v7 = a3(a1, &_s11CodeSnippetC17SerializationInfoV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF775090(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF774F78();
    v10 = v9;
    v11[0] = a3;
    v11[1] = a2();
    result = swift_getWitnessTable(a4, v10, v11);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF775108()
{
  result = qword_1EB63E6E8;
  if (!qword_1EB63E6E8)
  {
    result = swift_getWitnessTable(asc_1AFE7941C, &_s8MetadataVN, v0, v1);
    atomic_store(result, &qword_1EB63E6E8);
  }

  return result;
}

uint64_t sub_1AF77515C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF775B40(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF7751B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF775BA4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF775228(uint64_t a1, uint64_t a2)
{
  sub_1AF775B40(0, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1AF7752A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF775B40(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v64 - v12;
  v14 = sub_1AFDFC128();
  v70 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 136) = a1;

  v17 = sub_1AF76B46C(a2, a3, a4);
  v18 = a1[2];
  v19 = a1[3];
  v77 = MEMORY[0x1E69E6158];
  *&v75 = v18;
  *(&v75 + 1) = v19;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, &v75);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
  if (a1[23])
  {
    v20 = a1[23];
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if (*(v20 + 16))
  {
    sub_1AF775BA4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v77 = v21;
    *&v75 = v20;

    sub_1AF7FDB64(0xD00000000000001CLL, 0x80000001AFF23ED0, &v75);
    v22 = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
  }

  else
  {

    v22 = sub_1AF7FDA4C(0xD00000000000001CLL, 0x80000001AFF23ED0);
  }

  (*(*v17 + 1408))(v22);

  v23 = a1[24];
  if (v23 && *(v23 + 16))
  {
    sub_1AF775BA4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v77 = v24;
    *&v75 = v23;

    sub_1AF7FDB64(0xD000000000000015, 0x80000001AFF23EF0, &v75);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
  }

  sub_1AF771628(a5);
  sub_1AF771B4C();
  v25 = a1[5];
  if (v25)
  {
    v26 = a1[4];
    v27 = v17[2];
    if (v27)
    {
      v28 = *(v27 + 16);

      if (v28)
      {

        sub_1AF419914(0x6C6562616CLL, 0xE500000000000000);
        v30 = v29;

        if (v30)
        {

          goto LABEL_17;
        }
      }
    }

    else
    {
    }

    v77 = MEMORY[0x1E69E6158];
    *&v75 = v26;
    *(&v75 + 1) = v25;
    sub_1AF7FDB64(0x6C6562616CLL, 0xE500000000000000, &v75);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
  }

LABEL_17:

  v31 = sub_1AF776820();

  if ((v31 & 1) == 0 || *(v17[11] + 16) != 1)
  {
    goto LABEL_46;
  }

  sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v75);
  if (!v77)
  {
    sub_1AF7751B8(&v75, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_46;
  }

  sub_1AF449D40(&v75, v73);
  v32 = v17[17];
  v33 = v32[31];
  v34 = v32[32];
  v36 = v32[33];
  v35 = v32[34];
  v37 = v33;
  v38 = v34;
  v39 = v32[35];
  v40 = v36;
  v41 = v35;
  v42 = v39;
  if (v34 == 59)
  {
    v43 = v17[11];
    v68 = v14;
    v37 = v43[4];
    v44 = v43[5];
    v67 = v13;
    v69 = v16;
    v45 = v43[6];
    v46 = v43[7];
    v47 = v43[8];
    v66 = v33;
    sub_1AF687F90(v37, v44, v45, v46, v47);
    v33 = v66;
    v40 = v45;
    v13 = v67;
    v38 = v44;
    v41 = v46;
    v14 = v68;
    v16 = v69;
    v42 = v47;
  }

  v65 = v37;
  *&v75 = v37;
  *(&v75 + 1) = v38;
  v67 = v38;
  v66 = v40;
  v76 = v40;
  v77 = v41;
  v68 = v41;
  v69 = v42;
  v78 = v42;
  sub_1AF775B94(v33, v34, v36, v35, v39);
  sub_1AF809A8C(v73, v74);
  if (sub_1AF7FE65C() != 5001813 || v48 != 0xE300000000000000)
  {
    v49 = sub_1AFDFEE28();

    if (v49)
    {
      goto LABEL_27;
    }

    if (sub_1AF7FE65C() == 0x6156686374697753 && v54 == 0xEB0000000065756CLL)
    {
    }

    else
    {
      v55 = sub_1AFDFEE28();

      if ((v55 & 1) == 0)
      {
        v58 = sub_1AF7FE65C();
        v60 = v59;
        if (v58 == sub_1AF7FE65C() && v60 == v61)
        {

          sub_1AF444FBC(v74);
          sub_1AF687FE4(v65, v67, v66, v68, v69);
          goto LABEL_44;
        }

        v62 = sub_1AFDFEE28();

        sub_1AF444FBC(v74);
        sub_1AF687FE4(v65, v67, v66, v68, v69);
        if (v62)
        {
          goto LABEL_44;
        }

LABEL_43:
        v72 = MEMORY[0x1E69E6530];
        v71[0] = 1;
        sub_1AF7FDB64(0x696C61766E695F5FLL, 0xE900000000000064, v71);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v71);
        goto LABEL_44;
      }
    }

    sub_1AF687FE4(v65, v67, v66, v68, v69);
    if (sub_1AF7FE65C() == 0x3436746E49 && v56 == 0xE500000000000000)
    {

      sub_1AF444FBC(v74);
LABEL_44:
      v53 = v73;
      goto LABEL_45;
    }

    v57 = sub_1AFDFEE28();

    sub_1AF444FBC(v74);
    if (v57)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_27:
  sub_1AF687FE4(v65, v67, v66, v68, v69);
  sub_1AF444FBC(v74);
  sub_1AF0D5A54(v73, v71);
  if (swift_dynamicCast())
  {
    v50 = v70;
    (*(v70 + 56))(v13, 0, 1, v14);
    (*(v50 + 32))(v16, v13, v14);
    v51 = sub_1AFDFBFF8();
    v72 = MEMORY[0x1E69E6158];
    v71[0] = v51;
    v71[1] = v52;
    sub_1AF7FDB64(0x65756C6176, 0xE500000000000000, v71);
    (*(v50 + 8))(v16, v14);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v73);
    v53 = v71;
LABEL_45:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v53);
    goto LABEL_46;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v73);
  (*(v70 + 56))(v13, 1, 1, v14);
  sub_1AF77515C(v13, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
LABEL_46:
  sub_1AF771D2C();
  return v17;
}

void sub_1AF775B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF775B94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 59)
  {
    sub_1AF687F90(a1, a2, a3, a4, a5);
  }
}

void sub_1AF775BA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF775C08()
{
  result = qword_1EB63E6F0;
  if (!qword_1EB63E6F0)
  {
    result = swift_getWitnessTable(byte_1AFE765A8, &_s11CodeSnippetC17SerializationInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E6F0);
  }

  return result;
}

unint64_t sub_1AF775C60()
{
  result = qword_1EB63E6F8;
  if (!qword_1EB63E6F8)
  {
    result = swift_getWitnessTable(byte_1AFE76518, &_s11CodeSnippetC17SerializationInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E6F8);
  }

  return result;
}

unint64_t sub_1AF775CB8()
{
  result = qword_1EB63E700;
  if (!qword_1EB63E700)
  {
    result = swift_getWitnessTable(byte_1AFE76540, &_s11CodeSnippetC17SerializationInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB63E700);
  }

  return result;
}

uint64_t sub_1AF775D0C(uint64_t a1, uint64_t a2)
{
  v40 = *(a2 + 16);
  v38 = *(a1 + 16);
  if (v40 >= v38)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CA0(0, v4, 0);
  v34 = a1;
  v35 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4)
  {
    v36 = a2 + 32;
    v37 = a1 + 32;
    v9 = v38;
    v8 = v40;
    do
    {
      v10 = 0;
      v11 = v5;
      v5 = 1;
      if ((v11 & 1) != 0 || v7 == v9)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v12 = v7 + 1;
        if (v6 == v8)
        {
          v10 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v6 = v8;
        }

        else
        {
          v16 = (v37 + 16 * v7);
          v10 = *v16;
          v13 = v16[1];
          v17 = (v36 + 16 * v6);
          v14 = *v17;
          v15 = v17[1];
          v18 = v6 + 1;

          v6 = v18;
          v9 = v38;
          v8 = v40;
          v5 = 0;
        }

        v7 = v12;
      }

      v20 = *(v42 + 16);
      v19 = *(v42 + 24);
      if (v20 >= v19 >> 1)
      {
        v32 = v7;
        v33 = v6;
        sub_1AFC05CA0(v19 > 1, v20 + 1, 1);
        v7 = v32;
        v6 = v33;
        v9 = v38;
        v8 = v40;
      }

      *(v42 + 16) = v20 + 1;
      v21 = (v42 + 32 * v20);
      v21[4] = v10;
      v21[5] = v13;
      v21[6] = v14;
      v21[7] = v15;
      --v4;
    }

    while (v4);
  }

  else
  {
    v9 = v38;
    v8 = v40;
  }

  if ((v5 & 1) == 0)
  {
    v22 = v9 - v7;
    if (v9 != v7)
    {
      v23 = (v34 + 16 * v7 + 40);
      v24 = v8 - v6;
      v25 = (v35 + 16 * v6 + 40);
      do
      {
        if (!v24)
        {
          break;
        }

        v26 = *v23;
        v27 = *v25;
        v39 = *(v25 - 1);
        v41 = *(v23 - 1);
        v29 = *(v42 + 16);
        v28 = *(v42 + 24);

        if (v29 >= v28 >> 1)
        {
          sub_1AFC05CA0(v28 > 1, v29 + 1, 1);
        }

        *(v42 + 16) = v29 + 1;
        v30 = (v42 + 32 * v29);
        v30[4] = v41;
        v30[5] = v26;
        v30[6] = v39;
        v30[7] = v27;
        v23 += 2;
        --v24;
        v25 += 2;
        --v22;
      }

      while (v22);
    }
  }

  return v42;
}

uint64_t sub_1AF775F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a1;
    v4 = (a2 + 32);
    v5 = v2 - 1;
    while (1)
    {
      v6 = v5;
      v7 = *v4++;
      v8 = sub_1AF77A47C(v7);
      v10 = v9;
      if (v8 == sub_1AF77A47C(v3) && v10 == v11)
      {
        break;
      }

      v13 = sub_1AFDFEE28();

      if ((v13 & 1) == 0)
      {
        v5 = v6 - 1;
        if (v6)
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1AF776018(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 36);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *(v2 - 1);
    v5 = *v2;
    v2 += 2;
  }

  while (v4 != a1 || v5 != HIDWORD(a1));
  return v3 != 0;
}

uint64_t sub_1AF776050(unsigned __int8 a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    v4 = __clz(__rbit64(v2));
    if (((1 << v4) & v2) != 0)
    {
      v5 = ~(1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = sub_1AFB79288(v4);
    if (v6 == 28)
    {
      return 0;
    }

    if (v6 == a1)
    {
      break;
    }

    v2 &= v5;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AF7760DC(uint64_t result, char **a2, char **a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1AF420554(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1AF420554(v11 > 1, v12 + 1, 1, v9);
        *a2 = v9;
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v8;
      v14 = *a3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v14;
      if ((v15 & 1) == 0)
      {
        v14 = sub_1AF420554(0, *(v14 + 2) + 1, 1, v14);
        *a3 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1AF420554(v16 > 1, v17 + 1, 1, v14);
        *a3 = v14;
      }

      *(v14 + 2) = v17 + 1;
      v18 = &v14[16 * v17];
      *(v18 + 4) = v5;
      *(v18 + 5) = v6;

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF77627C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v14 = *(*(a1 + 56) + 8 * v10);
    v15 = sub_1AF449CB8(*(*(a1 + 48) + 8 * v10));
    if ((v16 & 1) == 0 || *(*(a2 + 56) + 8 * v15) != v14)
    {
      return 0;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return 1;
    }

    v13 = *(a1 + 72 + 8 * v4);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AF776394(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = a1 + 72;
  while (v6)
  {
    v28 = (v6 - 1) & v6;
    v9 = __clz(__rbit64(v6)) | (v3 << 6);
LABEL_13:
    v13 = 16 * v9;
    v14 = a1;
    v15 = (*(a1 + 48) + v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(a1 + 56) + v13);
    v20 = *v18;
    v19 = v18[1];

    v21 = sub_1AF419914(v16, v17);
    v23 = v22;

    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = (*(a2 + 56) + 16 * v21);
    if (*v24 == v20 && v24[1] == v19)
    {

      a1 = v14;
      v6 = v28;
    }

    else
    {
      v26 = sub_1AFDFEE28();

      a1 = v14;
      v6 = v28;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3 << 6;
  while (1)
  {
    v11 = v3 + 1;
    if (v3 + 1 >= v7)
    {
      return 1;
    }

    v12 = *(v8 + 8 * v3);
    v10 += 64;
    ++v3;
    if (v12)
    {
      v28 = (v12 - 1) & v12;
      v9 = __clz(__rbit64(v12)) + v10;
      v3 = v11;
      goto LABEL_13;
    }
  }
}

uint64_t sub_1AF776548(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_12:
    v16 = *(*(a1 + 48) + 8 * v12);
    v17 = *(a1 + 56) + 80 * v12;
    v27 = *(v17 + 16);
    v28 = *v17;
    v25 = *(v17 + 32);
    v26 = *(v17 + 48);
    v18 = *(v17 + 64);
    v19 = sub_1AF449CB8(v16);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = *(a2 + 56) + 80 * v19;
    v22 = *(v21 + 64);
    if (v22 < 0)
    {
      result = 0;
      if ((v18 & 0x80000000) == 0 || *v21 != v28.i64[0])
      {
        return result;
      }
    }

    else
    {
      v23 = *(v21 + 56);
      v29 = *v21;
      v30 = *(v21 + 8);
      v31 = *(v21 + 24);
      v32 = *(v21 + 40);
      v33 = v23;
      v34 = v22;
      if (v18 < 0)
      {
        return 0;
      }

      v35[0] = v28;
      v35[1] = v27;
      v35[2] = v25;
      v35[3] = v26;
      v36 = v18;
      if ((sub_1AF87C134(&v29, v35) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return 1;
    }

    v15 = *(a1 + 72 + 8 * v6);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AF7766FC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v14 = *(*(a1 + 56) + 8 * v10);
    v15 = sub_1AF449CB8(*(*(a1 + 48) + 8 * v10));
    if (v16)
    {
      v17 = vceq_s32(*(*(a2 + 56) + 8 * v15), v14);
      if (v17.i32[0] & v17.i32[1])
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return 1;
    }

    v13 = *(a1 + 72 + 8 * v4);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AF776820()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    v2 = *(v0 + 216);
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v1 = 0;
    if (v5)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v7++ + 72);
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_9:
          v5 &= v5 - 1;
          sub_1AF4486E4();
          v1 |= sub_1AFDFDF18();
        }

        while (v5);
        continue;
      }
    }
  }

  return v1 & 1;
}

uint64_t sub_1AF776964(unsigned __int8 a1)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = 0xE500000000000000;
  v6 = 0x6C6174656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x7466697773;
  if (a1 != 3)
  {
    v8 = 29546;
    v7 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x7070636A626FLL;
    v3 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(v1 + 216);
  if (*(v11 + 16))
  {
    v12 = sub_1AF419914(v9, v10);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v11 + 56) + 16 * v12);

      return v15;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1AF776A50(unsigned __int8 a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = a1;
    v4 = 0xE100000000000000;
    v5 = 99;
    v6 = 0xE500000000000000;
    v7 = 0x6C6174656DLL;
    v8 = 0xE500000000000000;
    v9 = 0x7466697773;
    if (a1 != 3)
    {
      v9 = 29546;
      v8 = 0xE200000000000000;
    }

    if (a1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (a1)
    {
      v5 = 0x7070636A626FLL;
      v4 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }

    if (*(v2 + 16))
    {
      v12 = sub_1AF419914(v10, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v2 + 56) + 16 * v12);

        return v15;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1AF776B40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_1AF781CA4(0, &qword_1EB63E7C8, sub_1AF781C50, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF781C50();
  sub_1AFDFF3F8();
  v15 = 0;
  v11 = v13[3];
  sub_1AFDFE8B8();
  if (!v11)
  {
    v14 = 1;
    sub_1AFDFE8B8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF776CDC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1701869940;
  }

  else
  {
    v2 = 1701667182;
  }

  if (*a2)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1AF776D54()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AF776D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF776E54(uint64_t a1)
{
  v2 = sub_1AF781C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF776E90(uint64_t a1)
{
  v2 = sub_1AF781C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF776ECC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF781A3C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1AF776F1C()
{
  v1 = v0;
  v2 = *(v0 + 104);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v17 = *(v0 + 168);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v58 = MEMORY[0x1E69E7CC0];

        sub_1AFC05CE4(0, v18, 0);
        v19 = (v17 + 40);
        do
        {
          v21 = *(v19 - 1);
          v20 = *v19;
          v23 = *(v58 + 16);
          v22 = *(v58 + 24);

          if (v23 >= v22 >> 1)
          {
            sub_1AFC05CE4(v22 > 1, v23 + 1, 1);
          }

          *(v58 + 16) = v23 + 1;
          v24 = v58 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v20;
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF488088();
      v25 = sub_1AFDFCD98();
      v27 = v26;

      v28 = v1[26];
      if (v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
      v28 = *(v0 + 208);
      if (v28)
      {
LABEL_23:
        v29 = *(v28 + 16);
        if (v29)
        {
          v55 = v25;
          v59 = MEMORY[0x1E69E7CC0];

          sub_1AFC05CE4(0, v29, 0);
          v30 = (v28 + 40);
          do
          {
            v32 = *(v30 - 1);
            v31 = *v30;
            v34 = *(v59 + 16);
            v33 = *(v59 + 24);

            if (v34 >= v33 >> 1)
            {
              sub_1AFC05CE4(v33 > 1, v34 + 1, 1);
            }

            *(v59 + 16) = v34 + 1;
            v35 = v59 + 16 * v34;
            *(v35 + 32) = v32;
            *(v35 + 40) = v31;
            v30 += 2;
            --v29;
          }

          while (v29);

          v25 = v55;
        }

        sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v36 = sub_1AFDFCD98();
        v38 = v37;

        goto LABEL_32;
      }
    }

    v36 = 0;
    v38 = 0xE000000000000000;
LABEL_32:
    MEMORY[0x1B2718AE0](v25, v27);

    MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
    MEMORY[0x1B2718AE0](v36, v38);
    goto LABEL_45;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  if (v4)
  {
    v6 = v1[20];
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    v7 = v1[21];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1AF775D0C(v6, v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    sub_1AFC05CE4(0, v9, 0);
    v10 = v3;
    v11 = (v8 + 56);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v57 = *(v11 - 3);
      v60 = *(v11 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v12, v13);

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v57;
      *(v16 + 40) = v60;
      v11 += 4;
      --v9;
    }

    while (v9);

    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v39 = sub_1AFDFCD98();
  v41 = v40;

  if (v1[26])
  {
    v42 = v1[26];
  }

  else
  {
    v42 = v3;
  }

  v43 = *(v42 + 16);
  if (v43)
  {
    v54 = v39;
    v56 = v41;

    sub_1AFC05CE4(0, v43, 0);
    v44 = (v42 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      v48 = *(v3 + 16);
      v47 = *(v3 + 24);

      if (v48 >= v47 >> 1)
      {
        sub_1AFC05CE4(v47 > 1, v48 + 1, 1);
      }

      *(v3 + 16) = v48 + 1;
      v49 = v3 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v44 += 2;
      --v43;
    }

    while (v43);

    v41 = v56;
    v39 = v54;
  }

  else
  {
  }

  v50 = sub_1AFDFCD98();
  v52 = v51;

  MEMORY[0x1B2718AE0](v39, v41);

  MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v50, v52);
LABEL_45:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1AF7774DC(uint64_t a1)
{
  v3 = *(a1 + 216);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 216);
  *(v1 + 216) = 0x8000000000000000;
  sub_1AF78138C(v3, sub_1AF780958, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(v1 + 216) = v8;

  v6 = *(a1 + 224);
  if (*(v1 + 224))
  {
    if (v6)
    {

      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v1 + 224);
      *(v1 + 224) = 0x8000000000000000;
      sub_1AF78138C(v6, sub_1AF780958, 0, v7, &v8);

      *(v1 + 224) = v8;
    }
  }

  else
  {
    *(v1 + 224) = v6;
  }

  return result;
}

uint64_t sub_1AF777650()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = v0[20];
  v4 = v0[21];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1AF775D0C(v5, v6);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v1;
    sub_1AFC05CE4(0, v8, 0);
    v10 = v2;
    v11 = (v7 + 56);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v39 = *(v11 - 3);
      v41 = *(v11 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v12, v13);

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v39;
      *(v16 + 40) = v41;
      v11 += 4;
      --v8;
    }

    while (v8);

    v1 = v9;
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v17 = sub_1AFDFCD98();
  v19 = v18;

  if (v1[25])
  {
    v20 = v1[25];
  }

  else
  {
    v20 = v2;
  }

  v21 = v2;
  if (v1[26])
  {
    v2 = v1[26];
  }

  v22 = sub_1AF775D0C(v20, v2);

  v23 = *(v22 + 16);
  if (v23)
  {
    v37 = v19;
    v38 = v1;
    sub_1AFC05CE4(0, v23, 0);
    v24 = v21;
    v25 = (v22 + 56);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v40 = *(v25 - 3);
      v42 = *(v25 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v27, v26);

      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1AFC05CE4(v28 > 1, v29 + 1, 1);
      }

      *(v24 + 16) = v29 + 1;
      v30 = v24 + 16 * v29;
      *(v30 + 32) = v40;
      *(v30 + 40) = v42;
      v25 += 4;
      --v23;
    }

    while (v23);

    v19 = v37;
    v1 = v38;
  }

  else
  {
  }

  v31 = sub_1AFDFCD98();
  v33 = v32;

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF33BD0);
  v35 = v1[2];
  v34 = v1[3];

  MEMORY[0x1B2718AE0](v35, v34);

  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF33BF0);
  MEMORY[0x1B2718AE0](v17, v19);

  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF33C10);
  MEMORY[0x1B2718AE0](v31, v33);

  MEMORY[0x1B2718AE0](10589, 0xE200000000000000);
  return 0;
}

uint64_t sub_1AF777A94(unsigned __int8 a1)
{
  v2 = v1;
  v4 = v1[29];
  if (v4)
  {
    v5 = a1;
    v6 = 0xE100000000000000;
    v7 = 99;
    v8 = 0xE500000000000000;
    v9 = 0x6C6174656DLL;
    v10 = 0xE500000000000000;
    v11 = 0x7466697773;
    if (a1 != 3)
    {
      v11 = 29546;
      v10 = 0xE200000000000000;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    if (a1)
    {
      v7 = 0x7070636A626FLL;
      v6 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (v5 <= 1)
    {
      v13 = v6;
    }

    else
    {
      v13 = v8;
    }

    if (*(v4 + 16))
    {
      v14 = sub_1AF419914(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v4 + 56) + 16 * v14);

        return v17;
      }
    }

    else
    {
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000053, 0x80000001AFF33ED0);
  v19 = v2[42];
  v20 = v2[43];

  MEMORY[0x1B2718AE0](v19, v20);

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v22 = v2[2];
  v21 = v2[3];

  MEMORY[0x1B2718AE0](v22, v21);

  MEMORY[0x1B2718AE0](0x6E616C20726F6620, 0xEF203A6567617567);
  v23 = 99;
  v24 = 0xE500000000000000;
  v25 = 0x6C6174656DLL;
  v26 = 0xE500000000000000;
  v27 = 0x7466697773;
  if (a1 != 3)
  {
    v27 = 29546;
    v26 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v25 = v27;
    v24 = v26;
  }

  v28 = 0xE600000000000000;
  if (a1)
  {
    v23 = 0x7070636A626FLL;
  }

  else
  {
    v28 = 0xE100000000000000;
  }

  if (a1 <= 1u)
  {
    v29 = v23;
  }

  else
  {
    v29 = v25;
  }

  if (a1 <= 1u)
  {
    v30 = v28;
  }

  else
  {
    v30 = v24;
  }

  MEMORY[0x1B2718AE0](v29, v30);

  v31 = v34;
  v32 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v33 = v32;
    swift_once();
    v32 = v33;
  }

  v34 = 0;
  sub_1AF0D4F18(v32, &v34, v31, v35);

  return 0;
}

uint64_t sub_1AF777D78()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 216);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v3 + 48) + ((v2 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v10 == 99 && v11 == 0xE100000000000000;
    if (!v13 && (sub_1AFDFEE28() & 1) == 0)
    {
      v14 = v12 == 0x7070636A626FLL && v11 == 0xE600000000000000;
      if (!v14 && (sub_1AFDFEE28() & 1) == 0)
      {
        v15 = v12 == 0x6C6174656DLL && v11 == 0xE500000000000000;
        if (!v15 && (sub_1AFDFEE28() & 1) == 0)
        {
          if (v12 == 0x7466697773 && v11 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
          {
            v16 = 1;
            goto LABEL_25;
          }

          if ((v12 != 29546 || v11 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
          {
            continue;
          }
        }
      }
    }

    v16 = 0;
LABEL_25:
    v17 = *(v1 + 216);
    if (*(v17 + 16))
    {

      v18 = sub_1AF419914(v12, v11);
      if (v19)
      {
        v20 = (*(v17 + 56) + 16 * v18);
        v126 = *v20;
        v129 = v20[1];
        v21 = v16 == 0;
        if (v16)
        {
          v22 = 0;
        }

        else
        {
          v22 = 59;
        }

        if (v21)
        {
          v23 = 0xE100000000000000;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        MEMORY[0x1B2718AE0](v22, v23);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v1 + 216);
        *(v1 + 216) = 0x8000000000000000;
        v26 = sub_1AF419914(v12, v11);
        v28 = v27;
        v29 = v25[2] + ((v27 & 1) == 0);
        if (v25[3] < v29)
        {
          sub_1AF8357A0(v29, isUniquelyReferenced_nonNull_native);
          v26 = sub_1AF419914(v12, v11);
          if ((v28 & 1) != (v30 & 1))
          {
LABEL_179:
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

LABEL_37:
          v31 = v25;
          if (v28)
          {
            goto LABEL_38;
          }

          goto LABEL_48;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v33 = v26;
        sub_1AF849704();
        v26 = v33;
        v31 = v25;
        if (v28)
        {
LABEL_38:
          v32 = (v31[7] + 16 * v26);
          *v32 = v126;
          v32[1] = v129;

          goto LABEL_49;
        }

LABEL_48:
        v31[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v31[6] + 16 * v26);
        *v34 = v12;
        v34[1] = v11;
        v35 = (v31[7] + 16 * v26);
        *v35 = v126;
        v35[1] = v129;
        ++v31[2];
LABEL_49:
        *(v1 + 216) = v31;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (v2 + 1 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v2++ + 72);
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  v36 = *(v1 + 224);
  if (!v36)
  {
    goto LABEL_104;
  }

  v37 = 1 << *(v36 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v36 + 64);
  v40 = (v37 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v41 = 0;
  while (2)
  {
    if (v39)
    {
LABEL_58:
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = (*(v36 + 48) + ((v41 << 10) | (16 * v43)));
      v46 = *v44;
      v45 = v44[1];
      v47 = *v44 == 99 && v45 == 0xE100000000000000;
      if (!v47 && (sub_1AFDFEE28() & 1) == 0)
      {
        v48 = v46 == 0x7070636A626FLL && v45 == 0xE600000000000000;
        if (!v48 && (sub_1AFDFEE28() & 1) == 0)
        {
          v49 = v46 == 0x6C6174656DLL && v45 == 0xE500000000000000;
          if (!v49 && (sub_1AFDFEE28() & 1) == 0)
          {
            if (v46 == 0x7466697773 && v45 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
            {
              v50 = 1;
              v51 = *(v1 + 224);
              if (!v51)
              {
                continue;
              }

              goto LABEL_74;
            }

            if ((v46 != 29546 || v45 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
            {
              continue;
            }
          }
        }
      }

      v50 = 0;
      v51 = *(v1 + 224);
      if (!v51)
      {
        continue;
      }

LABEL_74:
      if (*(v51 + 16))
      {

        v52 = sub_1AF419914(v46, v45);
        if (v53)
        {
          v54 = (*(v51 + 56) + 16 * v52);
          v56 = *v54;
          v55 = v54[1];
          if (!*(v1 + 224))
          {
            *(v1 + 224) = MEMORY[0x1E69E7CC8];
          }

          v127 = v56;
          v130 = v55;
          v57 = v50 == 0;
          if (v50)
          {
            v58 = 0;
          }

          else
          {
            v58 = 59;
          }

          if (v57)
          {
            v59 = 0xE100000000000000;
          }

          else
          {
            v59 = 0xE000000000000000;
          }

          MEMORY[0x1B2718AE0](v58, v59);

          v60 = swift_isUniquelyReferenced_nonNull_native();
          v61 = *(v1 + 224);
          *(v1 + 224) = 0x8000000000000000;
          v62 = sub_1AF419914(v46, v45);
          v64 = v63;
          v65 = v61[2] + ((v63 & 1) == 0);
          if (v61[3] >= v65)
          {
            if ((v60 & 1) == 0)
            {
              v70 = v62;
              sub_1AF849704();
              v62 = v70;
            }
          }

          else
          {
            sub_1AF8357A0(v65, v60);
            v62 = sub_1AF419914(v46, v45);
            if ((v64 & 1) != (v66 & 1))
            {
              goto LABEL_179;
            }
          }

          if (v64)
          {
            v67 = (v61[7] + 16 * v62);
            *v67 = v127;
            v67[1] = v130;
          }

          else
          {
            v61[(v62 >> 6) + 8] |= 1 << v62;
            v68 = (v61[6] + 16 * v62);
            *v68 = v46;
            v68[1] = v45;
            v69 = (v61[7] + 16 * v62);
            *v69 = v127;
            v69[1] = v130;
            ++v61[2];
          }

          *(v1 + 224) = v61;
        }

        else
        {
        }
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v42 = v41 + 1;
    if (v41 + 1 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v41++ + 72);
    if (v39)
    {
      v41 = v42;
      goto LABEL_58;
    }
  }

LABEL_104:
  v71 = MEMORY[0x1E69E7CC0];
  if (*(v1 + 200))
  {
    v72 = *(v1 + 200);
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  if (*(v1 + 208))
  {
    v73 = *(v1 + 208);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = sub_1AF775D0C(v72, v73);

  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = v74 + 56;
    do
    {
      v76 += 32;

      sub_1AF781654(v1);

      --v75;
    }

    while (v75);
  }

  v77 = *(v1 + 200);
  if (!v77)
  {
    goto LABEL_156;
  }

  v78 = *(v1 + 200);
  if (v77[2] == 1)
  {
    v80 = v77[4];
    v79 = v77[5];
    v81 = *(v1 + 216);
    v82 = 1 << *(v81 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v81 + 64);
    v85 = (v82 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v86 = 0;
    v125 = v79;
    while (v84)
    {
LABEL_123:
      v88 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v89 = (*(v81 + 48) + ((v86 << 10) | (16 * v88)));
      v90 = *v89;
      v91 = v89[1];
      v92 = *v89 == 99 && v91 == 0xE100000000000000;
      if (!v92 && (sub_1AFDFEE28() & 1) == 0)
      {
        v93 = v90 == 0x7070636A626FLL && v91 == 0xE600000000000000;
        if (!v93 && (sub_1AFDFEE28() & 1) == 0 && (v90 != 0x6C6174656DLL || v91 != 0xE500000000000000))
        {
          v95 = sub_1AFDFEE28();
          v96 = v90 == 0x7466697773 && v91 == 0xE500000000000000;
          v97 = v96;
          if ((v95 & 1) == 0 && !v97 && (sub_1AFDFEE28() & 1) == 0 && (v90 != 29546 || v91 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
          {
            continue;
          }
        }
      }

      v98 = *(v1 + 216);
      if (*(v98 + 16))
      {

        v99 = sub_1AF419914(v90, v91);
        if (v100)
        {
          v101 = (*(v98 + 56) + 16 * v99);
          v102 = v101[1];
          v124 = *v101;
          sub_1AF4486E4();

          if (sub_1AFDFDF18() & 1) != 0 || (MEMORY[0x1B2718AE0](v80, v125), sub_1AF770DF0(), sub_1AF770E44(), v103 = sub_1AFDFCD68(), , (v103))
          {
          }

          else
          {

            MEMORY[0x1B2718AE0](v80, v125);
            MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
            MEMORY[0x1B2718AE0](v124, v102);

            v104 = swift_isUniquelyReferenced_nonNull_native();
            v128 = *(v1 + 216);
            *(v1 + 216) = 0x8000000000000000;
            sub_1AF854CE8(36, 0xE100000000000000, v90, v91, v104);

            *(v1 + 216) = v128;
          }
        }
      }
    }

    while (1)
    {
      v87 = v86 + 1;
      if (v86 + 1 >= v85)
      {
        break;
      }

      v84 = *(v81 + 8 * v86++ + 72);
      if (v84)
      {
        v86 = v87;
        goto LABEL_123;
      }
    }

    v78 = *(v1 + 200);
    v71 = MEMORY[0x1E69E7CC0];
    if (!v78)
    {
LABEL_156:
      v78 = MEMORY[0x1E69E7CC0];
    }
  }

  if (*(v1 + 208))
  {
    v105 = *(v1 + 208);
  }

  else
  {
    v105 = v71;
  }

  v106 = sub_1AF775D0C(v78, v105);

  v107 = *(v106 + 16);
  if (v107)
  {
    v108 = (v106 + 56);
    do
    {
      v109 = *(v108 - 3);
      v110 = *(v108 - 2);
      v111 = *(v108 - 1);
      v112 = *v108;

      sub_1AF778B10(v109, v110, v111, v112, v1);

      v108 += 4;
      --v107;
    }

    while (v107);
  }

  v113 = *(v1 + 192);
  if (v113)
  {
    v114 = sub_1AFB7B948(v113, &unk_1F24F7978);
    sub_1AF585778(&unk_1F24F7998);
    if (v114)
    {
      *(v1 + 192) = *(v1 + 160);
    }
  }

  else
  {
    sub_1AF585778(&unk_1F24F7998);
  }

  v115 = *(v1 + 216);
  v116 = 1 << *(v115 + 32);
  v117 = -1;
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  v118 = v117 & *(v115 + 64);
  v119 = (v116 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v120 = 0;
  if (v118)
  {
    while (1)
    {
      v121 = v120;
LABEL_173:
      sub_1AF4486E4();

      if (sub_1AFDFDF18())
      {
        break;
      }

      v118 &= v118 - 1;

      v120 = v121;
      if (!v118)
      {
        goto LABEL_171;
      }
    }

    v122 = 1;
  }

  else
  {
LABEL_171:
    while (1)
    {
      v121 = v120 + 1;
      if (v120 + 1 >= v119)
      {
        break;
      }

      v118 = *(v115 + 72 + 8 * v120++);
      if (v118)
      {
        goto LABEL_173;
      }
    }

    v122 = 0;
  }

  *(v1 + 240) = v122;
  return result;
}

uint64_t sub_1AF778B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v93 = a1;
  sub_1AF7811A0(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v80 - v7;
  v8 = *(a5 + 216);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v82 = 0x80000001AFF33DF0;
  v81 = "CodeGenContext.typeAsCode: ";
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v80 = 0xD00000000000001BLL;
  v89 = a5;
  v84 = v12;
  while (v11)
  {
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = (*(v8 + 48) + ((v13 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *v16 == 99 && v18 == 0xE100000000000000;
    v94 = *v16;
    if (v19 || (sub_1AFDFEE28() & 1) != 0)
    {
      v20 = 0;
      v21 = 0;
LABEL_15:
      v22 = *(a5 + 216);
      if (*(v22 + 16))
      {

        v23 = sub_1AF419914(v94, v18);
        if (v24)
        {
          v92 = v18;
          v25 = (*(v22 + 56) + 16 * v23);
          v26 = *v25;
          v91 = v25[1];

          v27 = v88;

          sub_1AF809DF8(v87, v27, &v99);
          v28 = v100;
          v29 = v101;
          v30 = v103;
          v104[0] = v99;
          v104[1] = v100;
          v104[2] = v101;
          v104[3] = v102;
          v104[4] = v103;
          if (v20)
          {
            v90 = v102;
            v97 = 544499052;
            v98 = 0xE400000000000000;
            MEMORY[0x1B2718AE0](36, 0xE100000000000000);
            v31 = v86;
            MEMORY[0x1B2718AE0](v93, v86);
            MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
            if (v28 < 0x3B)
            {
              v32 = sub_1AF7E4930(v104);
              v34 = v33;
              goto LABEL_48;
            }

            if (*(v30 + 16) && (v37 = v26, v41 = sub_1AF41A220(3), (v42 & 1) != 0))
            {
              v43 = (*(v30 + 56) + 16 * v41);
              v44 = *v43;
              v34 = v43[1];

              v32 = v44;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v95 = 0;
              v96 = 0xE000000000000000;
              sub_1AFDFE218();

              v95 = v80;
              v96 = v82;
              MEMORY[0x1B2718AE0](v29, v90);
              MEMORY[0x1B2718AE0](0xD000000000000011, v81 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
              v52 = v95;
              v51 = v96;
              v53 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                v77 = v53;
                swift_once();
                v53 = v77;
              }

              v95 = 0;
              sub_1AF0D4F18(v53, &v95, v52, v51);

              v32 = 0;
              v34 = 0xE000000000000000;
LABEL_48:
              v37 = v26;
            }

            MEMORY[0x1B2718AE0](v32, v34);

            sub_1AF781D0C(&v99, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720], sub_1AF780FD0);
            v83 = v97;
            v90 = v98;
            v54 = v93;
            goto LABEL_76;
          }

          v97 = 0x2074736E6F63;
          v98 = 0xE600000000000000;
          if (v100 >= 0x3B)
          {
            v45 = v102;
            if (!*(v103 + 16) || (v46 = sub_1AF41A220(v21), (v47 & 1) == 0))
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v95 = 0;
              v96 = 0xE000000000000000;
              sub_1AFDFE218();

              v95 = 0xD00000000000001BLL;
              v96 = v82;
              MEMORY[0x1B2718AE0](v29, v45);
              MEMORY[0x1B2718AE0](0xD000000000000011, v81 | 0x8000000000000000);
              if (v21 <= 1)
              {
                if (v21)
                {
                  v56 = 0x7070436A624FLL;
                }

                else
                {
                  v56 = 67;
                }

                if (v21)
                {
                  v55 = 0xE600000000000000;
                }

                else
                {
                  v55 = 0xE100000000000000;
                }
              }

              else
              {
                if (v21 != 2)
                {
                  if (v21 == 4)
                  {
                    v55 = 0xEA00000000007470;
                    v56 = 0x697263536176614ALL;
                    goto LABEL_71;
                  }

                  v37 = v26;
                  v56 = 0x4C28207466697753;
                  v55 = 0xEE00297963616765;
LABEL_72:
                  MEMORY[0x1B2718AE0](v56, v55);

                  v59 = v95;
                  v60 = v96;
                  v61 = sub_1AFDFDA18();
                  if (qword_1ED731058 != -1)
                  {
                    v78 = v61;
                    swift_once();
                    v61 = v78;
                  }

                  v95 = 0;
                  sub_1AF0D4F18(v61, &v95, v59, v60);

                  v38 = 0;
                  v40 = 0xE000000000000000;
                  v31 = v86;
                  goto LABEL_75;
                }

                v56 = 0x6C6174654DLL;
                v55 = 0xE500000000000000;
              }

LABEL_71:
              v37 = v26;
              goto LABEL_72;
            }

            v48 = (*(v30 + 56) + 16 * v46);
            v49 = *v48;
            v40 = v48[1];

            v38 = v49;
            v31 = v86;
            v37 = v26;
          }

          else
          {
            v36 = v21 >= 2;
            if (v21 > 2)
            {
              v19 = v21 == 3;
              v31 = v86;
              v37 = v26;
              if (!v19)
              {
LABEL_59:
                v38 = sub_1AF7E54DC(v104);
                v40 = v58;
                goto LABEL_75;
              }

              v38 = sub_1AF7E4930(v104);
              v40 = v57;
            }

            else
            {
              v31 = v86;
              v37 = v26;
              if (!v36)
              {
                goto LABEL_59;
              }

              v38 = sub_1AF7E4F70(v104);
              v40 = v39;
            }
          }

LABEL_75:
          MEMORY[0x1B2718AE0](v38, v40);

          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](36, 0xE100000000000000);
          v54 = v93;
          MEMORY[0x1B2718AE0](v93, v31);
          sub_1AF781D0C(&v99, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720], sub_1AF780FD0);
          v83 = v97;
          v90 = v98;
LABEL_76:
          v97 = 36;
          v98 = 0xE100000000000000;
          MEMORY[0x1B2718AE0](v54, v31);
          v62 = v97;
          v63 = v98;
          v64 = v91;
          v97 = v37;
          v98 = v91;
          v95 = v62;
          v96 = v63;
          v65 = sub_1AFDFC328();
          v66 = v37;
          v67 = v85;
          (*(*(v65 - 8) + 56))(v85, 1, 1, v65);
          sub_1AF4486E4();
          v68 = sub_1AFDFDEF8();
          v70 = v69;
          v72 = v71;
          sub_1AF781D0C(v67, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1AF7811A0);

          if (v72)
          {
          }

          else
          {
            v66 = sub_1AF9AADA8(v68, v70, v83, v90, v66, v64);
            v74 = v73;

            v64 = v74;
          }

          a5 = v89;
          v75 = v94;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = *(a5 + 216);
          *(a5 + 216) = 0x8000000000000000;
          sub_1AF854CE8(v66, v64, v75, v92, isUniquelyReferenced_nonNull_native);

          *(a5 + 216) = v97;
          v12 = v84;
        }

        else
        {
        }
      }
    }

    else
    {
      v35 = v17 == 0x7070636A626FLL && v18 == 0xE600000000000000;
      if (v35 || (sub_1AFDFEE28() & 1) != 0)
      {
        v20 = 0;
        v21 = 1;
        goto LABEL_15;
      }

      v50 = v17 == 0x6C6174656DLL && v18 == 0xE500000000000000;
      if (v50 || (sub_1AFDFEE28() & 1) != 0)
      {
        v20 = 0;
        v21 = 2;
        goto LABEL_15;
      }

      if (v17 == 0x7466697773 && v18 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v21 = 3;
        v20 = 1;
        goto LABEL_15;
      }

      if (v17 == 29546 && v18 == 0xE200000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v20 = 0;
        v21 = 4;
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (v13 + 1 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13++ + 72);
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }
}

void sub_1AF77957C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v183 = *(v0 + 144);
    v2 = sub_1AFB7B948(v1, &unk_1F24F7A08);

    v3 = sub_1AF585778(&unk_1F24F7A28);
    if (v2)
    {
      *&v186[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, 59, 0);
      v4 = 0x20u;
      v5 = *&v186[0];
      do
      {
        v6 = *(&unk_1F24F5668 + v4 + 16);
        v190 = *(&unk_1F24F5668 + v4);
        v191 = v6;
        v192 = *(&unk_1F24F5668 + v4 + 32);
        sub_1AF444F60(&v190, v188);
        v7 = sub_1AF7FE65C();
        v9 = v8;
        sub_1AF444FBC(&v190);
        *&v186[0] = v5;
        v11 = *(v5 + 16);
        v10 = *(v5 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AFC05CE4(v10 > 1, v11 + 1, 1);
          v5 = *&v186[0];
        }

        *(v5 + 16) = v11 + 1;
        v12 = v5 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
        v4 += 40;
      }

      while (v4 != 2392);
    }

    else
    {
      v13 = 0x80000001AFF33E70;
      v178 = "ALL_UNSIGNED_INT_TYPES";
      v179 = 0x80000001AFF33E90;
      strcpy(&v190, "ALL_INT_TYPES");
      HIWORD(v190) = -4864;
      MEMORY[0x1EEE9AC00](v3);
      v173 = &v190;
      v14 = sub_1AF7B9518(sub_1AF7714A4, v172, v1);
      v177 = 0;
      if (v14)
      {
        v15 = *(v1 + 16);
        v176 = 0x80000001AFF33E70;
        if (v15)
        {
          v16 = 0;
          v17 = v1 + 40;
          v18 = -v15;
          v19 = MEMORY[0x1E69E7CC0];
          v174 = v1 + 40;
          do
          {
            v175 = v19;
            v20 = (v17 + 16 * v16++);
            while (1)
            {
              v22 = *(v20 - 1);
              v21 = *v20;
              v23 = v22 == 0x5F544E495F4C4C41 && v21 == 0xED00005345505954;
              if (!v23 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v20 += 2;
              ++v16;
              if (v18 + v16 == 1)
              {
                v19 = v175;
                goto LABEL_26;
              }
            }

            v19 = v175;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v190 = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v19 + 16) + 1, 1);
              v19 = v190;
            }

            v26 = *(v19 + 16);
            v25 = *(v19 + 24);
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v175 = v26 + 1;
              sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
              v27 = v175;
              v19 = v190;
            }

            *(v19 + 16) = v27;
            v28 = v19 + 16 * v26;
            *(v28 + 32) = v22;
            *(v28 + 40) = v21;
            v13 = v176;
            v17 = v174;
          }

          while (v18 + v16);
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
        }

LABEL_26:

        v29 = 0;
        v183 = v19;
        v30 = MEMORY[0x1E69E7CC0];
        v31 = MEMORY[0x1E69E7CC0];
LABEL_27:
        v32 = &unk_1F24F5668 + 40 * v29 + 16;
        while (++v29 != 60)
        {
          v33 = (v32 + 40);
          v34 = *(v32 + 3);
          v32 += 40;
          if (v34 - 1 < 9)
          {
            v35 = *(v33 - 3);
            v36 = *(v33 - 1);
            v37 = v33[1];
            v174 = *v33;
            v175 = v36;
            sub_1AF687F90(v35, v34, v36, v174, v37);
            v38 = swift_isUniquelyReferenced_nonNull_native();
            *&v190 = v31;
            if ((v38 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v31 + 16) + 1, 1);
              v31 = v190;
            }

            v40 = *(v31 + 16);
            v39 = *(v31 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_1AFC071E4(v39 > 1, v40 + 1, 1);
              v31 = v190;
            }

            *(v31 + 16) = v40 + 1;
            v41 = (v31 + 40 * v40);
            v41[4] = v35;
            v41[5] = v34;
            v42 = v174;
            v41[6] = v175;
            v41[7] = v42;
            v41[8] = v37;
            goto LABEL_27;
          }
        }

        v43 = *(v31 + 16);
        if (v43)
        {
          *&v186[0] = v30;
          sub_1AFC05CE4(0, v43, 0);
          v44 = 32;
          v45 = *&v186[0];
          do
          {
            v46 = *(v31 + v44);
            v47 = *(v31 + v44 + 16);
            v192 = *(v31 + v44 + 32);
            v190 = v46;
            v191 = v47;
            sub_1AF444F60(&v190, v188);
            v48 = sub_1AF7FE65C();
            v50 = v49;
            sub_1AF444FBC(&v190);
            *&v186[0] = v45;
            v52 = *(v45 + 16);
            v51 = *(v45 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_1AFC05CE4(v51 > 1, v52 + 1, 1);
              v45 = *&v186[0];
            }

            *(v45 + 16) = v52 + 1;
            v53 = v45 + 16 * v52;
            *(v53 + 32) = v48;
            *(v53 + 40) = v50;
            v44 += 40;
            --v43;
          }

          while (v43);

          v13 = v176;
        }

        else
        {

          v45 = MEMORY[0x1E69E7CC0];
        }

        v14 = sub_1AF48FAF8(v45);
        v1 = v183;
      }

      v54 = v179;
      v178 |= 0x8000000000000000;
      *&v188[0] = 0xD000000000000014;
      *(&v188[0] + 1) = v13;
      MEMORY[0x1EEE9AC00](v14);
      v173 = v188;
      v55 = v177;
      v56 = sub_1AF7B9518(sub_1AF7714A4, v172, v1);
      if (v56)
      {
        v177 = v55;
        v57 = *(v1 + 16);
        if (v57)
        {
          v58 = 0;
          v59 = v1 + 40;
          v60 = -v57;
          v61 = MEMORY[0x1E69E7CC0];
          v175 = v1 + 40;
          do
          {
            v62 = (v59 + 16 * v58++);
            while (1)
            {
              v63 = *(v62 - 1);
              v64 = *v62;
              v65 = v63 == 0xD000000000000014 && v13 == v64;
              if (!v65 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v62 += 2;
              ++v58;
              if (v60 + v58 == 1)
              {
                goto LABEL_61;
              }
            }

            v66 = swift_isUniquelyReferenced_nonNull_native();
            *&v188[0] = v61;
            if ((v66 & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v61 + 16) + 1, 1);
              v61 = *&v188[0];
            }

            v68 = *(v61 + 16);
            v67 = *(v61 + 24);
            v69 = v68 + 1;
            if (v68 >= v67 >> 1)
            {
              v174 = v68 + 1;
              sub_1AFC05CE4(v67 > 1, v68 + 1, 1);
              v69 = v174;
              v61 = *&v188[0];
            }

            *(v61 + 16) = v69;
            v70 = v61 + 16 * v68;
            *(v70 + 32) = v63;
            *(v70 + 40) = v64;
            v59 = v175;
          }

          while (v60 + v58);
        }

        else
        {
          v61 = MEMORY[0x1E69E7CC0];
        }

LABEL_61:

        v71 = 0;
        v183 = v61;
        v72 = MEMORY[0x1E69E7CC0];
        v73 = MEMORY[0x1E69E7CC0];
LABEL_62:
        v74 = &unk_1F24F5668 + 40 * v71 + 16;
        while (++v71 != 60)
        {
          v75 = (v74 + 40);
          v76 = *(v74 + 3);
          v74 += 40;
          if (v76 - 5 < 5)
          {
            v77 = *(v75 - 3);
            v78 = *(v75 - 1);
            v79 = v75[1];
            v175 = *v75;
            v176 = v78;
            sub_1AF687F90(v77, v76, v78, v175, v79);
            v80 = swift_isUniquelyReferenced_nonNull_native();
            *&v188[0] = v73;
            if ((v80 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v73 + 16) + 1, 1);
              v73 = *&v188[0];
            }

            v82 = *(v73 + 16);
            v81 = *(v73 + 24);
            if (v82 >= v81 >> 1)
            {
              sub_1AFC071E4(v81 > 1, v82 + 1, 1);
              v73 = *&v188[0];
            }

            *(v73 + 16) = v82 + 1;
            v83 = (v73 + 40 * v82);
            v83[4] = v77;
            v83[5] = v76;
            v84 = v175;
            v83[6] = v176;
            v83[7] = v84;
            v83[8] = v79;
            goto LABEL_62;
          }
        }

        v85 = *(v73 + 16);
        if (v85)
        {
          *&v184[0] = v72;
          sub_1AFC05CE4(0, v85, 0);
          v86 = 32;
          v87 = *&v184[0];
          do
          {
            v88 = *(v73 + v86);
            v89 = *(v73 + v86 + 16);
            v189 = *(v73 + v86 + 32);
            v188[0] = v88;
            v188[1] = v89;
            sub_1AF444F60(v188, v186);
            v90 = sub_1AF7FE65C();
            v92 = v91;
            sub_1AF444FBC(v188);
            *&v184[0] = v87;
            v94 = *(v87 + 16);
            v93 = *(v87 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_1AFC05CE4(v93 > 1, v94 + 1, 1);
              v87 = *&v184[0];
            }

            *(v87 + 16) = v94 + 1;
            v95 = v87 + 16 * v94;
            *(v95 + 32) = v90;
            *(v95 + 40) = v92;
            v86 += 40;
            --v85;
          }

          while (v85);

          v54 = v179;
        }

        else
        {

          v87 = MEMORY[0x1E69E7CC0];
        }

        v56 = sub_1AF48FAF8(v87);
        v1 = v183;
        v55 = v177;
      }

      *&v186[0] = 0xD000000000000016;
      *(&v186[0] + 1) = v54;
      MEMORY[0x1EEE9AC00](v56);
      v173 = v186;
      v96 = sub_1AF7B9518(sub_1AF7714A4, v172, v1);
      if (v96)
      {
        v179 = v55;
        v97 = *(v1 + 16);
        if (v97)
        {
          v98 = 0;
          v99 = v1 + 40;
          v100 = -v97;
          v101 = MEMORY[0x1E69E7CC0];
          do
          {
            v102 = (v99 + 16 * v98++);
            while (1)
            {
              v103 = *(v102 - 1);
              v104 = *v102;
              v105 = v103 == 0xD000000000000016 && v54 == v104;
              if (!v105 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v102 += 2;
              ++v98;
              if (v100 + v98 == 1)
              {
                goto LABEL_95;
              }
            }

            v106 = swift_isUniquelyReferenced_nonNull_native();
            *&v186[0] = v101;
            v177 = v99;
            if ((v106 & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v101 + 16) + 1, 1);
              v101 = *&v186[0];
            }

            v108 = *(v101 + 16);
            v107 = *(v101 + 24);
            if (v108 >= v107 >> 1)
            {
              sub_1AFC05CE4(v107 > 1, v108 + 1, 1);
              v101 = *&v186[0];
            }

            *(v101 + 16) = v108 + 1;
            v109 = v101 + 16 * v108;
            *(v109 + 32) = v103;
            *(v109 + 40) = v104;
            v99 = v177;
          }

          while (v100 + v98);
        }

        else
        {
          v101 = MEMORY[0x1E69E7CC0];
        }

LABEL_95:

        v110 = 0;
        v183 = v101;
        v111 = MEMORY[0x1E69E7CC0];
LABEL_96:
        v112 = &unk_1F24F5668 + 40 * v110 + 16;
        while (++v110 != 60)
        {
          v113 = (v112 + 40);
          v114 = *(v112 + 3);
          v112 += 40;
          if (v114 - 1 < 4)
          {
            v115 = *(v113 - 3);
            v116 = *(v113 - 1);
            v117 = v113[1];
            v118 = v116;
            v177 = *v113;
            sub_1AF687F90(v115, v114, v116, v177, v117);
            v119 = swift_isUniquelyReferenced_nonNull_native();
            *&v186[0] = v111;
            if ((v119 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v111 + 16) + 1, 1);
              v111 = *&v186[0];
            }

            v121 = *(v111 + 16);
            v120 = *(v111 + 24);
            if (v121 >= v120 >> 1)
            {
              sub_1AFC071E4(v120 > 1, v121 + 1, 1);
              v111 = *&v186[0];
            }

            *(v111 + 16) = v121 + 1;
            v122 = (v111 + 40 * v121);
            v122[4] = v115;
            v122[5] = v114;
            v123 = v177;
            v122[6] = v118;
            v122[7] = v123;
            v122[8] = v117;
            goto LABEL_96;
          }
        }

        v124 = *(v111 + 16);
        if (v124)
        {
          v181[0] = MEMORY[0x1E69E7CC0];
          sub_1AFC05CE4(0, v124, 0);
          v125 = 32;
          v126 = v181[0];
          do
          {
            v127 = *(v111 + v125);
            v128 = *(v111 + v125 + 16);
            v187 = *(v111 + v125 + 32);
            v186[0] = v127;
            v186[1] = v128;
            sub_1AF444F60(v186, v184);
            v129 = sub_1AF7FE65C();
            v131 = v130;
            sub_1AF444FBC(v186);
            v181[0] = v126;
            v133 = *(v126 + 16);
            v132 = *(v126 + 24);
            if (v133 >= v132 >> 1)
            {
              sub_1AFC05CE4(v132 > 1, v133 + 1, 1);
              v126 = v181[0];
            }

            *(v126 + 16) = v133 + 1;
            v134 = v126 + 16 * v133;
            *(v134 + 32) = v129;
            *(v134 + 40) = v131;
            v125 += 40;
            --v124;
          }

          while (v124);
        }

        else
        {

          v126 = MEMORY[0x1E69E7CC0];
        }

        v96 = sub_1AF48FAF8(v126);
        v55 = v179;
      }

      v5 = v183;
      v135 = v178;
      *&v184[0] = 0xD000000000000010;
      *(&v184[0] + 1) = v178;
      MEMORY[0x1EEE9AC00](v96);
      v173 = v184;
      if (sub_1AF7B9518(sub_1AF7714A4, v172, v5))
      {
        v177 = v55;
        v136 = *(v5 + 16);
        if (v136)
        {
          v137 = 0;
          v138 = -v136;
          v139 = MEMORY[0x1E69E7CC0];
          do
          {
            v140 = (v5 + 40 + 16 * v137++);
            while (1)
            {
              v141 = *(v140 - 1);
              v142 = *v140;
              v143 = v141 == 0xD000000000000010 && v135 == v142;
              if (!v143 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v140 += 2;
              ++v137;
              if (v138 + v137 == 1)
              {
                goto LABEL_129;
              }
            }

            v144 = swift_isUniquelyReferenced_nonNull_native();
            *&v184[0] = v139;
            if ((v144 & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v139 + 16) + 1, 1);
              v139 = *&v184[0];
            }

            v146 = *(v139 + 16);
            v145 = *(v139 + 24);
            if (v146 >= v145 >> 1)
            {
              sub_1AFC05CE4(v145 > 1, v146 + 1, 1);
              v139 = *&v184[0];
            }

            *(v139 + 16) = v146 + 1;
            v147 = v139 + 16 * v146;
            *(v147 + 32) = v141;
            *(v147 + 40) = v142;
            v135 = v178;
          }

          while (v138 + v137);
        }

        else
        {
          v139 = MEMORY[0x1E69E7CC0];
        }

LABEL_129:

        v148 = 0;
        v183 = v139;
        v149 = MEMORY[0x1E69E7CC0];
        v150 = MEMORY[0x1E69E7CC0];
LABEL_130:
        v151 = &unk_1F24F5668 + 40 * v148 + 16;
        while (++v148 != 60)
        {
          v152 = (v151 + 40);
          v153 = *(v151 + 3);
          v151 += 40;
          if (v153 - 17 < 9)
          {
            v154 = *(v152 - 3);
            v155 = *v152;
            v156 = v152[1];
            v179 = *(v152 - 1);
            sub_1AF687F90(v154, v153, v179, v155, v156);
            v157 = swift_isUniquelyReferenced_nonNull_native();
            *&v184[0] = v150;
            if ((v157 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v150 + 16) + 1, 1);
              v150 = *&v184[0];
            }

            v159 = *(v150 + 16);
            v158 = *(v150 + 24);
            if (v159 >= v158 >> 1)
            {
              sub_1AFC071E4(v158 > 1, v159 + 1, 1);
              v150 = *&v184[0];
            }

            *(v150 + 16) = v159 + 1;
            v160 = (v150 + 40 * v159);
            v160[4] = v154;
            v160[5] = v153;
            v160[6] = v179;
            v160[7] = v155;
            v160[8] = v156;
            goto LABEL_130;
          }
        }

        v161 = *(v150 + 16);
        if (v161)
        {
          v182 = v149;
          sub_1AFC05CE4(0, v161, 0);
          v162 = 32;
          v163 = v182;
          do
          {
            v164 = *(v150 + v162);
            v165 = *(v150 + v162 + 16);
            v185 = *(v150 + v162 + 32);
            v184[0] = v164;
            v184[1] = v165;
            sub_1AF444F60(v184, v181);
            v166 = sub_1AF7FE65C();
            v168 = v167;
            sub_1AF444FBC(v184);
            v182 = v163;
            v170 = *(v163 + 16);
            v169 = *(v163 + 24);
            if (v170 >= v169 >> 1)
            {
              sub_1AFC05CE4(v169 > 1, v170 + 1, 1);
              v163 = v182;
            }

            *(v163 + 16) = v170 + 1;
            v171 = v163 + 16 * v170;
            *(v171 + 32) = v166;
            *(v171 + 40) = v168;
            v162 += 40;
            --v161;
          }

          while (v161);
        }

        else
        {

          v163 = MEMORY[0x1E69E7CC0];
        }

        sub_1AF48FAF8(v163);
        v5 = v183;
      }
    }

    *(v180 + 144) = v5;
  }
}

unint64_t sub_1AF77A47C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x54636972656E6567;
      break;
    case 5:
    case 8:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 1701080931;
      break;
    case 12:
      result = 0x70795465756C6176;
      break;
    case 13:
    case 16:
    case 30:
      result = 0xD000000000000012;
      break;
    case 14:
    case 15:
      result = 0x7461636572706564;
      break;
    case 17:
      result = 0x65756C6156736168;
      break;
    case 18:
      result = 0x656D617261506E69;
      break;
    case 19:
      result = 0x6D6172615074756FLL;
      break;
    case 20:
      result = 0xD00000000000001CLL;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x6E6564646968;
      break;
    case 23:
      result = 0x7069746C6F6F74;
      break;
    case 24:
      result = 0x4370756E61656C63;
      break;
    case 25:
      result = 0x7473655470696B73;
      break;
    case 26:
      result = 0x65706544656D6974;
      break;
    case 27:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0x6574726F70707573;
      break;
    case 29:
      result = 0x61656C6261736964;
      break;
    case 31:
      result = 0x53746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF77A7CC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF77A47C(*a1);
  v5 = v4;
  if (v3 == sub_1AF77A47C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF77A854()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF77A47C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF77A8B8(uint64_t a1)
{
  sub_1AF77A47C(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AF77A90C(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF77A47C(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF77A96C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF7819E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF77A99C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF77A47C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF77A9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF7819E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF77AA04(uint64_t a1)
{
  v2 = sub_1AF780B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF77AA40(uint64_t a1)
{
  v2 = sub_1AF780B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t *sub_1AF77AA7C(void *a1)
{
  v3 = v1;
  v329 = *v1;
  v330 = v2;
  sub_1AF0D4E74(0);
  v321 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v320 = &v299 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_1AFDFC298();
  v322 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v318 = &v299 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF781CA4(0, &qword_1EB63E708, sub_1AF780B60, &_s17CodeSourceSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v327 = v8;
  v325 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v299 - v9;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 80) = 2;
  *(v3 + 26) = 33686018;
  v3[11] = 0;
  v3[12] = 0;
  *(v3 + 7) = 0u;
  *(v3 + 107) = 33686018;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  v3[26] = 0;
  v3[27] = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v3[28] = 0;
  v3[29] = 0;
  *(v3 + 240) = 0;
  *(v3 + 31) = xmmword_1AFE76620;
  *(v3 + 33) = 0u;
  *(v3 + 35) = 0u;
  v3[37] = 0;
  *(v3 + 304) = 2;
  *(v3 + 39) = 0u;
  *(v3 + 41) = 0u;
  v3[43] = 0xE000000000000000;
  v3[44] = &unk_1F25001A8;
  v339 = v3;
  v3[45] = 0;
  v11 = a1[3];
  v328 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF780B60();
  v326 = v10;
  v12 = v330;
  sub_1AFDFF3B8();
  if (v12)
  {
    v17 = v339;

    sub_1AF771214(v17[31], v17[32], v17[33], v17[34], v17[35]);

    swift_deallocPartialClassInstance();
    v18 = v328;
LABEL_4:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
    return v17;
  }

  v324 = (v3 + 28);
  v330 = (v3 + 4);
  v316 = (v3 + 13);
  v315 = (v3 + 14);
  v313 = v3 + 39;
  v314 = MEMORY[0x1E69E7CC0];
  LOBYTE(v332) = 0;
  v13 = v326;
  v14 = v327;
  v15 = sub_1AFDFE708();
  v317 = 0;
  v20 = v339;
  v339[2] = v15;
  v20[3] = v16;
  v21 = sub_1AFDFE7F8();
  v22 = v14;
  v23 = sub_1AF775F50(9, v21);

  if (v23)
  {
    sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    LOBYTE(v331[0]) = 9;
    sub_1AF780C48();
    v24 = v317;
    sub_1AFDFE768();
    v25 = v330;
    v26 = v328;
    if (v24)
    {
      (*(v325 + 8))(v13, v22);
LABEL_136:
      v17 = v339;

      v18 = v26;
      goto LABEL_4;
    }

    v317 = 0;
    v339[25] = v332;
  }

  else
  {
    v25 = v330;
    v26 = v328;
  }

  v27 = sub_1AFDFE7F8();
  v28 = sub_1AF775F50(10, v27);

  if (v28)
  {
    sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    LOBYTE(v331[0]) = 10;
    sub_1AF780C48();
    v29 = v317;
    sub_1AFDFE768();
    v30 = v13;
    if (v29)
    {
      goto LABEL_135;
    }

    v317 = 0;
    v339[26] = v332;
  }

  else
  {
    v30 = v13;
  }

  v31 = sub_1AFDFE7F8();
  v32 = sub_1AF775F50(11, v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_133;
  }

  sub_1AF781204();
  LOBYTE(v331[0]) = 11;
  sub_1AF78132C(&qword_1EB63E798, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v33 = v317;
  sub_1AFDFE768();
  if (v33)
  {
LABEL_135:
    (*(v325 + 8))(v30, v22);
    goto LABEL_136;
  }

  v34 = v332;
  v35 = 1 << v332[32];
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v332 + 8);
  v38 = (v35 + 63) >> 6;
  v306 = "], outParameters: [";
  *&v305 = "CodeSourceSnippet.init(";
  v304 = (v322 + 32);

  v39 = 0;
  v303 = xmmword_1AFE431C0;
  v317 = 0;
  v40 = v339;
  v308 = v34;
  v307 = v38;
LABEL_21:
  if (v37)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (v39 + 1 >= v38)
    {
      break;
    }

    v37 = *&v34[8 * v39++ + 72];
    if (v37)
    {
      v39 = v41;
LABEL_25:
      v42 = (v39 << 10) | (16 * __clz(__rbit64(v37)));
      v43 = *(v34 + 7);
      v44 = *(v34 + 6) + v42;
      v46 = *v44;
      v45 = *(v44 + 8);
      v47 = (v43 + v42);
      v49 = *v47;
      v48 = v47[1];
      v323 = v49;
      v329 = v48;
      v50 = v46 == 42 && v45 == 0xE100000000000000;
      v51 = MEMORY[0x1E69E7CC0];
      v52 = MEMORY[0x1E69E6158];
      v312 = v45;
      v310 = v37;
      v309 = v39;
      if (v50 || (sub_1AFDFEE28() & 1) != 0)
      {
        v332 = v51;

        sub_1AFC05CE4(0, 5, 0);
        if (byte_1F25001F8 <= 1u)
        {
          if (byte_1F25001F8)
          {
            v53 = 0xE600000000000000;
            v54 = 0x7070636A626FLL;
          }

          else
          {
            v53 = 0xE100000000000000;
            v54 = 99;
          }
        }

        else if (byte_1F25001F8 == 2)
        {
          v53 = 0xE500000000000000;
          v54 = 0x6C6174656DLL;
        }

        else if (byte_1F25001F8 == 3)
        {
          v53 = 0xE500000000000000;
          v54 = 0x7466697773;
        }

        else
        {
          v53 = 0xE200000000000000;
          v54 = 29546;
        }

        v56 = v332;
        v58 = *(v332 + 2);
        v57 = *(v332 + 3);
        v59 = v58 + 1;
        if (v58 >= v57 >> 1)
        {
          sub_1AFC05CE4(v57 > 1, v58 + 1, 1);
          v56 = v332;
        }

        *(v56 + 2) = v59;
        v60 = &v56[16 * v58];
        *(v60 + 4) = v54;
        *(v60 + 5) = v53;
        if (byte_1F25001F9 <= 1u)
        {
          if (byte_1F25001F9)
          {
            v61 = 0xE600000000000000;
            v62 = 0x7070636A626FLL;
          }

          else
          {
            v61 = 0xE100000000000000;
            v62 = 99;
          }
        }

        else if (byte_1F25001F9 == 2)
        {
          v61 = 0xE500000000000000;
          v62 = 0x6C6174656DLL;
        }

        else if (byte_1F25001F9 == 3)
        {
          v61 = 0xE500000000000000;
          v62 = 0x7466697773;
        }

        else
        {
          v61 = 0xE200000000000000;
          v62 = 29546;
        }

        v332 = v56;
        v63 = *(v56 + 3);
        v64 = v58 + 2;
        if (v59 >= v63 >> 1)
        {
          sub_1AFC05CE4(v63 > 1, v64, 1);
          v56 = v332;
        }

        *(v56 + 2) = v64;
        v65 = &v56[16 * v59];
        *(v65 + 4) = v62;
        *(v65 + 5) = v61;
        if (byte_1F25001FA <= 1u)
        {
          if (byte_1F25001FA)
          {
            v66 = 0xE600000000000000;
            v67 = 0x7070636A626FLL;
          }

          else
          {
            v66 = 0xE100000000000000;
            v67 = 99;
          }
        }

        else if (byte_1F25001FA == 2)
        {
          v66 = 0xE500000000000000;
          v67 = 0x6C6174656DLL;
        }

        else if (byte_1F25001FA == 3)
        {
          v66 = 0xE500000000000000;
          v67 = 0x7466697773;
        }

        else
        {
          v66 = 0xE200000000000000;
          v67 = 29546;
        }

        v332 = v56;
        v69 = *(v56 + 2);
        v68 = *(v56 + 3);
        v70 = v69 + 1;
        if (v69 >= v68 >> 1)
        {
          sub_1AFC05CE4(v68 > 1, v69 + 1, 1);
          v56 = v332;
        }

        *(v56 + 2) = v70;
        v71 = &v56[16 * v69];
        *(v71 + 4) = v67;
        *(v71 + 5) = v66;
        if (byte_1F25001FB <= 1u)
        {
          if (byte_1F25001FB)
          {
            v72 = 0xE600000000000000;
            v73 = 0x7070636A626FLL;
          }

          else
          {
            v72 = 0xE100000000000000;
            v73 = 99;
          }
        }

        else if (byte_1F25001FB == 2)
        {
          v72 = 0xE500000000000000;
          v73 = 0x6C6174656DLL;
        }

        else if (byte_1F25001FB == 3)
        {
          v72 = 0xE500000000000000;
          v73 = 0x7466697773;
        }

        else
        {
          v72 = 0xE200000000000000;
          v73 = 29546;
        }

        v332 = v56;
        v74 = *(v56 + 3);
        v75 = v69 + 2;
        if (v70 >= v74 >> 1)
        {
          sub_1AFC05CE4(v74 > 1, v75, 1);
          v56 = v332;
        }

        *(v56 + 2) = v75;
        v76 = &v56[16 * v70];
        *(v76 + 4) = v73;
        *(v76 + 5) = v72;
        if (byte_1F25001FC <= 1u)
        {
          if (byte_1F25001FC)
          {
            v77 = 0xE600000000000000;
            v78 = 0x7070636A626FLL;
          }

          else
          {
            v77 = 0xE100000000000000;
            v78 = 99;
          }
        }

        else if (byte_1F25001FC == 2)
        {
          v77 = 0xE500000000000000;
          v78 = 0x6C6174656DLL;
        }

        else if (byte_1F25001FC == 3)
        {
          v77 = 0xE500000000000000;
          v78 = 0x7466697773;
        }

        else
        {
          v77 = 0xE200000000000000;
          v78 = 29546;
        }

        v332 = v56;
        v80 = *(v56 + 2);
        v79 = *(v56 + 3);
        if (v80 >= v79 >> 1)
        {
          sub_1AFC05CE4(v79 > 1, v80 + 1, 1);
          v56 = v332;
        }

        *(v56 + 2) = v80 + 1;
        v81 = &v56[16 * v80];
        *(v81 + 4) = v78;
        *(v81 + 5) = v77;
        v332 = v56;
        sub_1AF780FD0(0, &qword_1ED726C70, v52, MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v46 = sub_1AFDFCD98();
        v55 = v82;

        v40 = v339;
      }

      else
      {
        v55 = v312;
        swift_bridgeObjectRetain_n();
      }

      v332 = v46;
      v333 = v55;
      sub_1AF4486E4();
      v83 = sub_1AFDFDF28();

      v311 = v83;
      v84 = *(v83 + 16);
      if (v84)
      {
        v85 = (v311 + 56);
        do
        {
          v86 = *v85;

          v88 = sub_1AFDFDDA8();
          v89 = v87;
          v90 = v88 == 99 && v87 == 0xE100000000000000;
          if (!v90 && (sub_1AFDFEE28() & 1) == 0)
          {
            v91 = v88 == 0x7070636A626FLL && v89 == 0xE600000000000000;
            if (!v91 && (sub_1AFDFEE28() & 1) == 0 && (v88 != 0x6C6174656DLL || v89 != 0xE500000000000000))
            {
              v106 = sub_1AFDFEE28();
              v107 = v88 == 0x7466697773 && v89 == 0xE500000000000000;
              v108 = v107;
              if ((v106 & 1) == 0 && !v108 && (sub_1AFDFEE28() & 1) == 0 && (v88 != 29546 || v89 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
              {
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v332 = 0;
                v333 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000017, v306 | 0x8000000000000000);
                v109 = v40[2];
                v110 = v40[3];

                MEMORY[0x1B2718AE0](v109, v110);

                MEMORY[0x1B2718AE0](0xD000000000000018, v305 | 0x8000000000000000);
                MEMORY[0x1B2718AE0](v88, v89);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v112 = v332;
                v111 = v333;
                v113 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v302 = v86;
                v114 = v320;
                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                v115 = qword_1ED73B890;
                sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                v116 = swift_allocObject();
                *(v116 + 16) = v303;
                *(v116 + 56) = MEMORY[0x1E69E6158];
                *(v116 + 64) = sub_1AF0D544C();
                *(v116 + 32) = v112;
                *(v116 + 40) = v111;

                sub_1AFDFC4C8(v113, &dword_1AF0CE000, v115, "%{public}s", 10, 2, v116);

                v301 = v112;
                v117 = v318;
                sub_1AFDFC288();
                v300 = v321[12];
                v118 = v321[16];
                LOBYTE(v116) = v113;
                v119 = (v114 + v321[20]);
                (*v304)(v114, v117, v319);
                *(v114 + v300) = v116;
                *(v114 + v118) = 0;
                *v119 = v301;
                v119[1] = v111;

                sub_1AFDFC608();

                sub_1AF0D54A0(v114);

                v40 = v339;
                goto LABEL_109;
              }
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v332 = v40[27];
          v93 = v332;
          v40[27] = 0x8000000000000000;
          v95 = sub_1AF419914(v88, v89);
          v96 = v94;
          v97 = *(v93 + 2) + ((v94 & 1) == 0);
          if (*(v93 + 3) >= v97)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v94)
              {
                goto LABEL_107;
              }
            }

            else
            {
              sub_1AF849704();
              if (v96)
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            sub_1AF8357A0(v97, isUniquelyReferenced_nonNull_native);
            v98 = sub_1AF419914(v88, v89);
            if ((v96 & 1) != (v99 & 1))
            {
              goto LABEL_311;
            }

            v95 = v98;
            if (v96)
            {
LABEL_107:

              v100 = v332;
              v104 = (*(v332 + 7) + 16 * v95);
              v105 = v329;
              *v104 = v323;
              v104[1] = v105;

              goto LABEL_108;
            }
          }

          v100 = v332;
          *&v332[8 * (v95 >> 6) + 64] |= 1 << v95;
          v101 = (*(v100 + 6) + 16 * v95);
          *v101 = v88;
          v101[1] = v89;
          v102 = (*(v100 + 7) + 16 * v95);
          v103 = v329;
          *v102 = v323;
          v102[1] = v103;

          ++*(v100 + 2);
LABEL_108:
          v40 = v339;
          v339[27] = v100;

LABEL_109:
          v25 = v330;
          v85 += 4;
          --v84;
        }

        while (v84);
      }

      v37 = (v310 - 1) & v310;

      v22 = v327;
      v26 = v328;
      v34 = v308;
      v38 = v307;
      v39 = v309;
      goto LABEL_21;
    }
  }

LABEL_133:
  v30 = v326;
  v120 = sub_1AFDFE7F8();
  v121 = sub_1AF775F50(24, v120);

  if (v121)
  {
    v122 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
    v123 = v324;
    *v324 = v122;

    sub_1AF7811A0(0, &qword_1EB63E780, sub_1AF781204, MEMORY[0x1E69E6720]);
    LOBYTE(v331[0]) = 24;
    sub_1AF781260();
    v124 = v317;
    sub_1AFDFE768();
    if (v124)
    {
      goto LABEL_135;
    }

    v125 = v332;
    v126 = 1 << v332[32];
    v127 = -1;
    if (v126 < 64)
    {
      v127 = ~(-1 << v126);
    }

    v128 = v127 & *(v332 + 8);
    v129 = (v126 + 63) >> 6;
    v308 = "], outParameters: [";
    v307 = "CodeSourceSnippet.init(";
    v306 = v322 + 32;

    v130 = 0;
    v305 = xmmword_1AFE431C0;
    v317 = 0;
    v131 = v123;
    v132 = v128;
    v310 = v125;
    v309 = v129;
LABEL_141:
    if (v132)
    {
      goto LABEL_145;
    }

    while (1)
    {
      v133 = v130 + 1;
      if ((v130 + 1) >= v129)
      {
        break;
      }

      v132 = *&v125[8 * v130++ + 72];
      if (v132)
      {
        v130 = v133;
LABEL_145:
        v312 = v130;
        v134 = (v130 << 10) | (16 * __clz(__rbit64(v132)));
        v135 = *(v125 + 7);
        v136 = *(v125 + 6) + v134;
        v137 = *v136;
        v138 = *(v136 + 8);
        v139 = (v135 + v134);
        v141 = *v139;
        v140 = v139[1];
        v323 = v141;
        v329 = v140;
        v142 = v137 == 42 && v138 == 0xE100000000000000;
        v143 = MEMORY[0x1E69E6158];
        v322 = v132;
        v311 = v138;
        if (v142 || (sub_1AFDFEE28() & 1) != 0)
        {
          v332 = MEMORY[0x1E69E7CC0];

          sub_1AFC05CE4(0, 5, 0);
          if (byte_1F2500220 <= 1u)
          {
            if (byte_1F2500220)
            {
              v144 = 0xE600000000000000;
              v145 = 0x7070636A626FLL;
            }

            else
            {
              v144 = 0xE100000000000000;
              v145 = 99;
            }
          }

          else if (byte_1F2500220 == 2)
          {
            v144 = 0xE500000000000000;
            v145 = 0x6C6174656DLL;
          }

          else if (byte_1F2500220 == 3)
          {
            v144 = 0xE500000000000000;
            v145 = 0x7466697773;
          }

          else
          {
            v144 = 0xE200000000000000;
            v145 = 29546;
          }

          v146 = v332;
          v148 = *(v332 + 2);
          v147 = *(v332 + 3);
          v149 = v148 + 1;
          if (v148 >= v147 >> 1)
          {
            sub_1AFC05CE4(v147 > 1, v148 + 1, 1);
            v146 = v332;
          }

          *(v146 + 2) = v149;
          v150 = &v146[16 * v148];
          *(v150 + 4) = v145;
          *(v150 + 5) = v144;
          if (byte_1F2500221 <= 1u)
          {
            if (byte_1F2500221)
            {
              v151 = 0xE600000000000000;
              v152 = 0x7070636A626FLL;
            }

            else
            {
              v151 = 0xE100000000000000;
              v152 = 99;
            }
          }

          else if (byte_1F2500221 == 2)
          {
            v151 = 0xE500000000000000;
            v152 = 0x6C6174656DLL;
          }

          else if (byte_1F2500221 == 3)
          {
            v151 = 0xE500000000000000;
            v152 = 0x7466697773;
          }

          else
          {
            v151 = 0xE200000000000000;
            v152 = 29546;
          }

          v332 = v146;
          v153 = *(v146 + 3);
          v154 = v148 + 2;
          if (v149 >= v153 >> 1)
          {
            sub_1AFC05CE4(v153 > 1, v154, 1);
            v146 = v332;
          }

          *(v146 + 2) = v154;
          v155 = &v146[16 * v149];
          *(v155 + 4) = v152;
          *(v155 + 5) = v151;
          if (byte_1F2500222 <= 1u)
          {
            if (byte_1F2500222)
            {
              v156 = 0xE600000000000000;
              v157 = 0x7070636A626FLL;
            }

            else
            {
              v156 = 0xE100000000000000;
              v157 = 99;
            }
          }

          else if (byte_1F2500222 == 2)
          {
            v156 = 0xE500000000000000;
            v157 = 0x6C6174656DLL;
          }

          else if (byte_1F2500222 == 3)
          {
            v156 = 0xE500000000000000;
            v157 = 0x7466697773;
          }

          else
          {
            v156 = 0xE200000000000000;
            v157 = 29546;
          }

          v332 = v146;
          v159 = *(v146 + 2);
          v158 = *(v146 + 3);
          v160 = v159 + 1;
          if (v159 >= v158 >> 1)
          {
            sub_1AFC05CE4(v158 > 1, v159 + 1, 1);
            v146 = v332;
          }

          *(v146 + 2) = v160;
          v161 = &v146[16 * v159];
          *(v161 + 4) = v157;
          *(v161 + 5) = v156;
          if (byte_1F2500223 <= 1u)
          {
            if (byte_1F2500223)
            {
              v162 = 0xE600000000000000;
              v163 = 0x7070636A626FLL;
            }

            else
            {
              v162 = 0xE100000000000000;
              v163 = 99;
            }
          }

          else if (byte_1F2500223 == 2)
          {
            v162 = 0xE500000000000000;
            v163 = 0x6C6174656DLL;
          }

          else if (byte_1F2500223 == 3)
          {
            v162 = 0xE500000000000000;
            v163 = 0x7466697773;
          }

          else
          {
            v162 = 0xE200000000000000;
            v163 = 29546;
          }

          v332 = v146;
          v164 = *(v146 + 3);
          v165 = v159 + 2;
          if (v160 >= v164 >> 1)
          {
            sub_1AFC05CE4(v164 > 1, v165, 1);
            v146 = v332;
          }

          *(v146 + 2) = v165;
          v166 = &v146[16 * v160];
          *(v166 + 4) = v163;
          *(v166 + 5) = v162;
          if (byte_1F2500224 <= 1u)
          {
            if (byte_1F2500224)
            {
              v167 = 0xE600000000000000;
              v168 = 0x7070636A626FLL;
            }

            else
            {
              v167 = 0xE100000000000000;
              v168 = 99;
            }
          }

          else if (byte_1F2500224 == 2)
          {
            v167 = 0xE500000000000000;
            v168 = 0x6C6174656DLL;
          }

          else if (byte_1F2500224 == 3)
          {
            v167 = 0xE500000000000000;
            v168 = 0x7466697773;
          }

          else
          {
            v167 = 0xE200000000000000;
            v168 = 29546;
          }

          v332 = v146;
          v170 = *(v146 + 2);
          v169 = *(v146 + 3);
          if (v170 >= v169 >> 1)
          {
            sub_1AFC05CE4(v169 > 1, v170 + 1, 1);
            v146 = v332;
          }

          *(v146 + 2) = v170 + 1;
          v171 = &v146[16 * v170];
          *(v171 + 4) = v168;
          *(v171 + 5) = v167;
          v332 = v146;
          sub_1AF780FD0(0, &qword_1ED726C70, v143, MEMORY[0x1E69E62F8]);
          sub_1AF488088();
          v137 = sub_1AFDFCD98();
          v138 = v172;

          v131 = v324;
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

        v332 = v137;
        v333 = v138;
        sub_1AF4486E4();
        v173 = sub_1AFDFDF28();

        v174 = *(v173 + 16);
        if (v174)
        {
          v175 = v173 + 56;
          while (1)
          {

            v177 = sub_1AFDFDDA8();
            v178 = v176;
            v179 = v177 == 99 && v176 == 0xE100000000000000;
            if (!v179 && (sub_1AFDFEE28() & 1) == 0)
            {
              v180 = v177 == 0x7070636A626FLL && v178 == 0xE600000000000000;
              if (!v180 && (sub_1AFDFEE28() & 1) == 0 && (v177 != 0x6C6174656DLL || v178 != 0xE500000000000000))
              {
                v191 = sub_1AFDFEE28();
                v192 = v177 == 0x7466697773 && v178 == 0xE500000000000000;
                v193 = v192;
                if ((v191 & 1) == 0 && !v193 && (sub_1AFDFEE28() & 1) == 0 && (v177 != 29546 || v178 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v332 = 0;
                  v333 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000017, v308 | 0x8000000000000000);
                  v194 = v339[2];
                  v195 = v339[3];

                  MEMORY[0x1B2718AE0](v194, v195);

                  MEMORY[0x1B2718AE0](0xD000000000000018, v307 | 0x8000000000000000);
                  MEMORY[0x1B2718AE0](v177, v178);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v196 = v333;
                  v304 = v332;
                  LODWORD(v303) = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v302 = qword_1ED73B8A0;
                  v197 = v321;
                  v198 = v318;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  v199 = qword_1ED73B890;
                  sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                  v200 = swift_allocObject();
                  *(v200 + 16) = v305;
                  *(v200 + 56) = MEMORY[0x1E69E6158];
                  *(v200 + 64) = sub_1AF0D544C();
                  *(v200 + 32) = v304;
                  *(v200 + 40) = v196;

                  sub_1AFDFC4C8(v303, &dword_1AF0CE000, v199, "%{public}s", 10, 2, v200);

                  sub_1AFDFC288();
                  v201 = v197[12];
                  v302 = v197[16];
                  v202 = v198;
                  v203 = v320;
                  v204 = &v320[v197[20]];
                  (*v306)(v320, v202, v319);
                  *(v203 + v201) = v303;
                  *(v203 + v302) = 0;
                  *v204 = v304;
                  v204[1] = v196;

                  sub_1AFDFC608();

                  sub_1AF0D54A0(v203);

                  v25 = v330;
                  v131 = v324;
                  goto LABEL_249;
                }
              }
            }

            v96 = swift_isUniquelyReferenced_nonNull_native();
            v332 = *v131;
            v181 = v332;
            *v131 = 0x8000000000000000;
            v182 = sub_1AF419914(v177, v178);
            v184 = v183;
            v185 = *(v181 + 2) + ((v183 & 1) == 0);
            if (*(v181 + 3) < v185)
            {
              break;
            }

            if (v96)
            {
              goto LABEL_225;
            }

            v205 = v182;
            sub_1AF849704();
            v182 = v205;
            if ((v184 & 1) == 0)
            {
LABEL_247:
              v188 = v332;
              *&v332[8 * (v182 >> 6) + 64] |= 1 << v182;
              v206 = (*(v188 + 6) + 16 * v182);
              *v206 = v177;
              v206[1] = v178;
              v207 = (*(v188 + 7) + 16 * v182);
              v208 = v329;
              *v207 = v323;
              v207[1] = v208;

              ++*(v188 + 2);
              goto LABEL_248;
            }

LABEL_226:
            v187 = v182;

            v188 = v332;
            v189 = (*(v332 + 7) + 16 * v187);
            v190 = v329;
            *v189 = v323;
            v189[1] = v190;

LABEL_248:
            v131 = v324;
            *v324 = v188;

            v25 = v330;
LABEL_249:
            v175 += 32;
            if (!--v174)
            {
              goto LABEL_140;
            }
          }

          sub_1AF8357A0(v185, v96);
          v182 = sub_1AF419914(v177, v178);
          if ((v184 & 1) != (v186 & 1))
          {
LABEL_311:
            sub_1AFDFF1A8();
            __break(1u);
            goto LABEL_312;
          }

LABEL_225:
          if ((v184 & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_226;
        }

LABEL_140:
        v132 = (v322 - 1) & v322;

        v22 = v327;
        v26 = v328;
        v125 = v310;
        v129 = v309;
        v130 = v312;
        goto LABEL_141;
      }
    }
  }

  v30 = v326;
  v209 = sub_1AFDFE7F8();
  v210 = sub_1AF775F50(2, v209);

  if (v210)
  {
    sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    LOBYTE(v331[0]) = 2;
    sub_1AF780C48();
    v211 = v317;
    sub_1AFDFE768();
    v212 = v22;
    if (v211)
    {
      goto LABEL_135;
    }

    v317 = 0;
    v213 = v339;
    v339[11] = v332;

    v214 = v213[27];
    v215 = 1 << *(v214 + 32);
    v216 = -1;
    if (v215 < 64)
    {
      v216 = ~(-1 << v215);
    }

    v217 = v216 & *(v214 + 64);
    v218 = (v215 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    for (i = 0; v217; v212 = v327)
    {
      v220 = i;
LABEL_263:
      v221 = *(v214 + 48) + ((v220 << 10) | (16 * __clz(__rbit64(v217))));
      v222 = *(v221 + 8);
      v217 &= v217 - 1;
      v332 = *v221;
      v333 = v222;

      v223 = v317;
      sub_1AF77DA0C(&v332, v339);
      v317 = v223;
    }

    while (1)
    {
      v220 = i + 1;
      if (i + 1 >= v218)
      {
        break;
      }

      v217 = *(v214 + 8 * i++ + 72);
      if (v217)
      {
        i = v220;
        goto LABEL_263;
      }
    }
  }

  else
  {
    v212 = v22;
  }

  v224 = v326;
  v225 = sub_1AFDFE7F8();
  v226 = sub_1AF775F50(17, v225);

  if (v226)
  {
    sub_1AF780FD0(0, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    LOBYTE(v331[0]) = 17;
    sub_1AF780BB4();
    v227 = v317;
    sub_1AFDFE768();
    if (v227)
    {
      (*(v325 + 8))(v224, v212);
      goto LABEL_136;
    }

    v317 = 0;
    *(v339 + 80) = v332;
  }

  v228 = v325;
  v229 = MEMORY[0x1E69E6720];
  sub_1AF780FD0(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  LOBYTE(v331[0]) = 1;
  sub_1AF780D10(&qword_1ED726CB8, &qword_1ED726CC0, v229, MEMORY[0x1E69E7C88]);
  v230 = v326;
  v231 = v327;
  v232 = v317;
  sub_1AFDFE6E8();
  if (v232)
  {
    v17 = v339;

    (*(v228 + 8))(v230, v231);
    v18 = v26;
    goto LABEL_4;
  }

  v96 = 0;
  v233 = v333;
  v234 = v339;
  if (v333 == 1)
  {
    v235 = *v25;
  }

  else
  {
    v235 = v332;
  }

  v234[4] = v235;
  v234[5] = v233;

  LOBYTE(v331[0]) = 23;
  sub_1AFDFE6E8();
  v236 = v333;
  if (v333 == 1)
  {
    v237 = v234[8];
  }

  else
  {
    v237 = v332;
  }

  v234[8] = v237;
  v234[9] = v236;

  sub_1AF780FD0(0, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  LOBYTE(v331[0]) = 3;
  sub_1AF780BB4();
  sub_1AFDFE6E8();
  v238 = v332;
  if (v332 == 3)
  {
    v238 = *v316;
  }

  *v316 = v238;
  LOBYTE(v331[0]) = 22;
  sub_1AFDFE6E8();
  v239 = v332;
  if (v332 == 3)
  {
    v239 = *(v339 + 105);
  }

  *(v339 + 105) = v239;
  LOBYTE(v331[0]) = 25;
  sub_1AFDFE6E8();
  v240 = v332;
  if (v332 == 3)
  {
    v240 = *(v339 + 106);
  }

  *(v339 + 106) = v240;
  LOBYTE(v331[0]) = 29;
  sub_1AFDFE6E8();
  v241 = v332;
  if (v332 == 3)
  {
    v241 = *(v339 + 107);
  }

  *(v339 + 107) = v241;
  LOBYTE(v331[0]) = 26;
  sub_1AFDFE6E8();
  v242 = v332;
  if (v332 == 3)
  {
    v242 = *(v339 + 108);
  }

  *(v339 + 108) = v242;
  LOBYTE(v331[0]) = 27;
  sub_1AFDFE6E8();
  v243 = v332;
  if (v332 == 3)
  {
    v243 = *(v339 + 109);
  }

  *(v339 + 109) = v243;
  LOBYTE(v331[0]) = 14;
  sub_1AFDFE6E8();
  v244 = v332;
  if (v332 == 3)
  {
    v244 = *(v339 + 110);
  }

  *(v339 + 110) = v244;
  LOBYTE(v331[0]) = 15;
  sub_1AFDFE6E8();
  v245 = v333;
  if (v333 == 1)
  {
    v246 = *v315;
  }

  else
  {
    v246 = v332;
  }

  v247 = v339;
  v339[14] = v246;
  v247[15] = v245;

  LOBYTE(v331[0]) = 16;
  sub_1AFDFE6E8();
  v248 = v333;
  if (v333 == 1)
  {
    v249 = v339[16];
  }

  else
  {
    v249 = v332;
  }

  v250 = v339;
  v339[16] = v249;
  v250[17] = v248;

  sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
  LOBYTE(v331[0]) = 4;
  sub_1AF780C48();
  sub_1AFDFE6E8();
  v251 = v332;
  if (v332 == 1)
  {
  }

  v339[18] = v251;

  LOBYTE(v331[0]) = 5;
  sub_1AFDFE6E8();
  v252 = v332;
  if (v332 == 1)
  {
  }

  v339[19] = v252;

  LOBYTE(v331[0]) = 6;
  sub_1AFDFE6E8();
  v253 = v332;
  if (v332 == 1)
  {
  }

  v339[20] = v253;

  LOBYTE(v331[0]) = 7;
  sub_1AFDFE6E8();
  v254 = v332;
  if (v332 == 1)
  {
  }

  v339[21] = v254;

  sub_1AF780D78(0, &qword_1EB63E730, &qword_1EB63E738, &_s8MetadataVN);
  LOBYTE(v331[0]) = 8;
  sub_1AF780DE4();
  sub_1AFDFE6E8();
  v255 = v332;
  if (v332 == 1)
  {
  }

  v339[22] = v255;

  LOBYTE(v331[0]) = 20;
  sub_1AFDFE6E8();
  v256 = v332;
  if (v332 == 1)
  {
  }

  v339[23] = v256;

  LOBYTE(v331[0]) = 21;
  sub_1AFDFE6E8();
LABEL_312:
  v257 = v332;
  if (v332 == 1)
  {
  }

  v339[24] = v257;

  sub_1AF780FD0(0, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720]);
  LOBYTE(v331[0]) = 12;
  sub_1AF780F34();
  sub_1AFDFE6E8();
  if (v96)
  {
    v17 = v339;

    (*(v325 + 8))(v326, v327);
    v18 = v328;
    goto LABEL_4;
  }

  v258 = v333;
  if (v333 == 60)
  {
    v259 = v339[31];
    v258 = v339[32];
    v260 = v339[34];
    v261 = v339[35];
    v329 = v339[33];
    v330 = v259;
    v324 = v260;
    sub_1AF775B94(v259, v258, v329, v260, v261);
  }

  else
  {
    v329 = v334;
    v330 = v332;
    v324 = v335;
    v261 = v336;
  }

  v262 = v339;
  v263 = v339[31];
  v264 = v339[32];
  v265 = v339[33];
  v266 = v339[34];
  v267 = v339[35];
  v268 = v329;
  v339[31] = v330;
  v262[32] = v258;
  v269 = v324;
  v262[33] = v268;
  v262[34] = v269;
  v262[35] = v261;
  sub_1AF771214(v263, v264, v265, v266, v267);
  LOBYTE(v331[0]) = 13;
  sub_1AFDFE6E8();
  v270 = v333;
  if (v333 == 1)
  {
    v271 = v339[36];
  }

  else
  {
    v271 = v332;
  }

  v272 = v339;
  v339[36] = v271;
  v272[37] = v270;

  LOBYTE(v331[0]) = 28;
  sub_1AFDFE6E8();
  v273 = v332;
  if (v332 == 1)
  {
  }

  v339[12] = v273;

  LOBYTE(v331[0]) = 31;
  sub_1AFDFE6E8();
  v274 = v332;
  if (v332 == 3)
  {
    v274 = *(v339 + 304);
  }

  *(v339 + 304) = v274;
  v275 = sub_1AFDFE7F8();
  v276 = sub_1AF775F50(18, v275);

  if (v276)
  {
    sub_1AF780D78(0, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
    LOBYTE(v331[0]) = 18;
    sub_1AF781020();
    sub_1AFDFE768();
    v277 = v313;
    *v313 = v332;

    v332 = MEMORY[0x1E69E7CC0];
    v331[0] = MEMORY[0x1E69E7CC0];
    if (*v277)
    {

      sub_1AF7760DC(v278, &v332, v331);

      v279 = v332;
      v280 = v331[0];
    }

    else
    {
      v279 = MEMORY[0x1E69E7CC0];
      v280 = MEMORY[0x1E69E7CC0];
    }

    v281 = v339;
    v339[21] = v279;

    v281[20] = v280;

    v281[39] = 0;
  }

  v282 = sub_1AFDFE7F8();
  v283 = sub_1AF775F50(19, v282);

  if (v283)
  {
    sub_1AF780D78(0, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
    LOBYTE(v331[0]) = 19;
    sub_1AF781020();
    sub_1AFDFE768();
    v284 = v339;
    v339[40] = v332;

    v332 = MEMORY[0x1E69E7CC0];
    v331[0] = MEMORY[0x1E69E7CC0];
    if (v284[40])
    {

      sub_1AF7760DC(v285, &v332, v331);

      v286 = v332;
      v314 = v331[0];
    }

    else
    {
      v286 = MEMORY[0x1E69E7CC0];
    }

    v287 = v339;
    v339[26] = v286;

    v287[25] = v314;

    v287[40] = 0;
  }

  sub_1AF780D78(0, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
  LOBYTE(v331[0]) = 30;
  sub_1AF781020();
  sub_1AFDFE6E8();
  v288 = v332;
  if (v332 == 1)
  {
  }

  v289 = v339;
  v339[41] = v288;

  v290 = v289[5];
  if (v290)
  {
    v291 = v339[4];

    v292 = 0x20u;
    while (1)
    {
      v293 = *(&unk_1F24F5668 + v292 + 16);
      v337[0] = *(&unk_1F24F5668 + v292);
      v337[1] = v293;
      v338 = *(&unk_1F24F5668 + v292 + 32);
      v331[0] = v291;
      v331[1] = v290;
      sub_1AF444F60(v337, &v332);
      v332 = sub_1AF7FE65C();
      v333 = v294;
      sub_1AF4486E4();
      v295 = sub_1AFDFDF18();

      if (v295)
      {
        break;
      }

      sub_1AF444FBC(v337);
      v292 += 40;
      if (v292 == 2392)
      {
        (*(v325 + 8))(v326, v327);
        v296 = v339;
        v339[6] = v291;
        v296[7] = v290;
        goto LABEL_345;
      }
    }

    (*(v325 + 8))(v326, v327);
    sub_1AF444FBC(v337);

    v297 = v339;
    v298 = v339[3];
    v339[6] = v339[2];
    v297[7] = v298;

LABEL_345:
  }

  else
  {
    (*(v325 + 8))(v326, v327);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v328);
  return v339;
}

uint64_t sub_1AF77DA0C(uint64_t *a1, void *a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[27];
  v6 = *(v5 + 16);
  v54 = *a1;
  if (v6)
  {
    v7 = sub_1AF419914(v3, v4);
    if (v8)
    {
      v9 = (*(v5 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      v52 = v11;
      v53 = v10;
      sub_1AF4486E4();
      if ((sub_1AFDFDF18() & 1) == 0)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF33C70);
        v13 = v2[2];
        v12 = v2[3];

        MEMORY[0x1B2718AE0](v13, v12);

        MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF33CA0);
        v14 = v2[27];
        if (*(v14 + 16) && (v15 = sub_1AF419914(v3, v4), (v16 & 1) != 0))
        {
          v17 = (*(v14 + 56) + 16 * v15);
          v19 = *v17;
          v18 = v17[1];

          v20 = v19;
        }

        else
        {
          v20 = 0;
          v18 = 0;
        }

        MEMORY[0x1B2718AE0](v20, v18);

        v21 = v52;
        v22 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v48 = v22;
          swift_once();
          v22 = v48;
        }

        v52 = 0;
        sub_1AF0D4F18(v22, &v52, v21, v53);

        v3 = v54;
      }
    }
  }

  result = v2[11];
  if (result)
  {
    v49 = v2[11];
    v24 = *(result + 16);

    if (v24)
    {
      v25 = v49 + 40;
      do
      {
        v27 = v2[27];
        v28 = *(v27 + 16);

        if (v28)
        {
          v29 = sub_1AF419914(v3, v4);
          if (v30)
          {
            v31 = (*(v27 + 56) + 16 * v29);
            v28 = *v31;
            v32 = v31[1];

            goto LABEL_23;
          }

          v28 = 0;
        }

        v32 = 0;
LABEL_23:
        v52 = v28;
        v53 = v32;
        sub_1AF4486E4();
        v50 = sub_1AFDFDEB8();
        v51 = v33;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v2[27];
        v35 = v52;
        v36 = v2;
        v2[27] = 0x8000000000000000;
        v37 = v54;
        v39 = sub_1AF419914(v54, v4);
        v40 = v38;
        v41 = *(v35 + 16) + ((v38 & 1) == 0);
        if (*(v35 + 24) >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v44 = v52;
            if ((v38 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            sub_1AF849704();
            v44 = v52;
            if ((v40 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_1AF8357A0(v41, isUniquelyReferenced_nonNull_native);
          v42 = sub_1AF419914(v37, v4);
          if ((v40 & 1) != (v43 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v39 = v42;
          v44 = v52;
          if ((v40 & 1) == 0)
          {
LABEL_29:
            v44[(v39 >> 6) + 8] |= 1 << v39;
            v45 = 16 * v39;
            v46 = (v44[6] + 16 * v39);
            v3 = v54;
            *v46 = v54;
            v46[1] = v4;
            v47 = (v44[7] + v45);
            *v47 = v50;
            v47[1] = v51;
            ++v44[2];
            goto LABEL_17;
          }
        }

        v26 = (v44[7] + 16 * v39);
        *v26 = v50;
        v26[1] = v51;

        v3 = v54;
LABEL_17:
        v2 = v36;
        v36[27] = v44;

        v25 += 16;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_1AF77DE7C(void *a1)
{
  v3 = v1;
  sub_1AF781CA4(0, &qword_1EB63E7A0, sub_1AF780B60, &_s17CodeSourceSnippetC10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF780B60();
  sub_1AFDFF3F8();
  LOBYTE(v20) = 0;

  sub_1AFDFE8B8();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    *&v20 = *(v3 + 216);
    v23 = 11;
    sub_1AF781204();
    v12 = v11;
    sub_1AF78132C(&qword_1EB63E7A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1AFDFE918();
    v13 = *(v3 + 200);
    v19[3] = v12;
    *&v20 = v13;
    v23 = 9;
    sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v15 = v14;
    v16 = sub_1AF72774C();
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 208);
    v23 = 10;
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 88);
    v23 = 2;
    sub_1AFDFE8A8();
    v19[1] = v16;
    v19[2] = v15;
    LOBYTE(v20) = 17;
    sub_1AFDFE878();
    LOBYTE(v20) = 1;

    sub_1AFDFE868();

    LOBYTE(v20) = 23;

    sub_1AFDFE868();

    LOBYTE(v20) = 3;
    sub_1AFDFE878();
    LOBYTE(v20) = 22;
    sub_1AFDFE878();
    LOBYTE(v20) = 25;
    sub_1AFDFE878();
    LOBYTE(v20) = 29;
    sub_1AFDFE878();
    LOBYTE(v20) = 26;
    sub_1AFDFE878();
    LOBYTE(v20) = 27;
    sub_1AFDFE878();
    LOBYTE(v20) = 14;
    sub_1AFDFE878();
    LOBYTE(v20) = 15;

    sub_1AFDFE868();

    LOBYTE(v20) = 16;

    sub_1AFDFE868();

    *&v20 = *(v3 + 144);
    v23 = 4;
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 160);
    v23 = 6;
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 168);
    v23 = 7;
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 176);
    v23 = 8;
    sub_1AF780FD0(0, &qword_1EB63E738, &_s8MetadataVN, MEMORY[0x1E69E62F8]);
    sub_1AF780EA4(&qword_1EB63E7B0, sub_1AF775108, MEMORY[0x1E69E6300]);
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 184);
    v23 = 20;
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 192);
    v23 = 21;
    sub_1AFDFE8A8();
    v17 = *(v3 + 280);
    v18 = *(v3 + 264);
    v20 = *(v3 + 248);
    v21 = v18;
    v22 = v17;
    v23 = 12;
    sub_1AF75FC0C();
    sub_1AFDFE8A8();
    LOBYTE(v20) = 13;

    sub_1AFDFE868();

    *&v20 = *(v3 + 224);
    v23 = 24;
    sub_1AFDFE8A8();
    *&v20 = *(v3 + 96);
    v23 = 28;
    sub_1AFDFE8A8();
    LOBYTE(v20) = 31;
    sub_1AFDFE878();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1AF77E684()
{
  v1 = v0;
  sub_1AF0D4E74(0);
  v136 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v135 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1AFDFC298();
  v126 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[21];
  v137 = v0;
  if (v5)
  {
    v6 = *(v5 + 16);
    v125 = v5;

    if (v6)
    {
      v127 = "d as ParameterType";
      v129 = (v126 + 32);
      v130 = " but inParameterNames is empty";
      v7 = (v125 + 40);
      v128 = xmmword_1AFE431C0;
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = qword_1EB633E58;
        swift_bridgeObjectRetain_n();
        if (v10 != -1)
        {
          swift_once();
        }

        if (*(qword_1EB6C2AC8 + 16) && (sub_1AF419914(v8, v9), (v11 & 1) != 0))
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v140 = v8;
          v141 = v9;
          v138 = 0x79546D6F74737543;
          v139 = 0xEB000000003D6570;
          sub_1AF770DF0();
          sub_1AF770E44();
          if ((sub_1AFDFCD68() & 1) == 0)
          {
            goto LABEL_22;
          }

          v12 = v8;
          v13 = v9;
          if (sub_1AFDFD178())
          {
            v14 = sub_1AFDFD048();
            v15 = sub_1AF701628(v14, v8, v9);
            v17 = v16;
            v19 = v18;
            v21 = v20;

            v12 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
            v13 = v22;
          }

          if (!*(MEMORY[0x10] + 16) || (sub_1AF419914(v12, v13), (v23 & 1) == 0))
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v140 = 0;
            v141 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000035, v127 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v12, v13);

            v25 = v140;
            v24 = v141;
            v26 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v43 = v26;
              swift_once();
              v26 = v43;
            }

            v140 = 0;
            sub_1AF0D4F18(v26, &v140, v25, v24);
LABEL_22:

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v140 = 0;
            v141 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
            v27 = v137;
            v28 = v137[42];
            v29 = v137[43];

            MEMORY[0x1B2718AE0](v28, v29);

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            v30 = v27[2];
            v31 = v27[3];

            MEMORY[0x1B2718AE0](v30, v31);

            MEMORY[0x1B2718AE0](0x74757074754F203ALL, 0xEE00206570795420);
            MEMORY[0x1B2718AE0](v8, v9);
            MEMORY[0x1B2718AE0](0xD000000000000022, v130 | 0x8000000000000000);
            v33 = v140;
            v32 = v141;
            v34 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v131 = v9;
            v132 = v6;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v35 = qword_1ED73B890;
            sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v36 = swift_allocObject();
            *(v36 + 16) = v128;
            *(v36 + 56) = MEMORY[0x1E69E6158];
            *(v36 + 64) = sub_1AF0D544C();
            *(v36 + 32) = v33;
            *(v36 + 40) = v32;

            sub_1AFDFC4C8(v34, &dword_1AF0CE000, v35, "%{public}s", 10, 2, v36);

            v37 = v133;
            sub_1AFDFC288();
            v38 = *(v136 + 48);
            v39 = *(v136 + 64);
            v40 = v33;
            v41 = v135;
            v42 = &v135[*(v136 + 80)];
            (*v129)(v135, v37, v134);
            *(v41 + v38) = v34;
            *(v41 + v39) = 0;
            *v42 = v40;
            *(v42 + 1) = v32;
            sub_1AFDFC608();

            sub_1AF0D54A0(v41);
            v6 = v132;
            goto LABEL_5;
          }
        }

LABEL_5:
        v7 += 2;
        --v6;
      }

      while (v6);
    }

    v1 = v137;
  }

  v44 = v1[26];
  if (v44)
  {
    v45 = *(v44 + 16);
    v125 = v1[26];

    if (v45)
    {
      v127 = "d as ParameterType";
      v129 = (v126 + 32);
      v130 = " but inParameterNames is empty";
      v46 = (v125 + 40);
      v128 = xmmword_1AFE431C0;
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        v49 = qword_1EB633E58;
        swift_bridgeObjectRetain_n();
        if (v49 != -1)
        {
          swift_once();
        }

        if (*(qword_1EB6C2AC8 + 16) && (sub_1AF419914(v47, v48), (v50 & 1) != 0))
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v140 = v47;
          v141 = v48;
          v138 = 0x79546D6F74737543;
          v139 = 0xEB000000003D6570;
          sub_1AF770DF0();
          sub_1AF770E44();
          if ((sub_1AFDFCD68() & 1) == 0)
          {
            goto LABEL_51;
          }

          v51 = v47;
          v52 = v48;
          if (sub_1AFDFD178())
          {
            v53 = sub_1AFDFD048();
            v54 = sub_1AF701628(v53, v47, v48);
            v56 = v55;
            v58 = v57;
            v60 = v59;

            v51 = MEMORY[0x1B27189E0](v54, v56, v58, v60);
            v52 = v61;
          }

          if (!*(MEMORY[0x10] + 16) || (sub_1AF419914(v51, v52), (v62 & 1) == 0))
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v140 = 0;
            v141 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000035, v127 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v51, v52);

            v64 = v140;
            v63 = v141;
            v65 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v82 = v65;
              swift_once();
              v65 = v82;
            }

            v140 = 0;
            sub_1AF0D4F18(v65, &v140, v64, v63);
LABEL_51:

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v140 = 0;
            v141 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
            v66 = v137;
            v67 = v137[42];
            v68 = v137[43];

            MEMORY[0x1B2718AE0](v67, v68);

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            v69 = v66[2];
            v70 = v66[3];

            MEMORY[0x1B2718AE0](v69, v70);

            MEMORY[0x1B2718AE0](0x74757074754F203ALL, 0xEE00206570795420);
            MEMORY[0x1B2718AE0](v47, v48);
            MEMORY[0x1B2718AE0](0xD000000000000022, v130 | 0x8000000000000000);
            v72 = v140;
            v71 = v141;
            v73 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v131 = v48;
            v132 = v45;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v74 = qword_1ED73B890;
            sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v75 = swift_allocObject();
            *(v75 + 16) = v128;
            *(v75 + 56) = MEMORY[0x1E69E6158];
            *(v75 + 64) = sub_1AF0D544C();
            *(v75 + 32) = v72;
            *(v75 + 40) = v71;

            sub_1AFDFC4C8(v73, &dword_1AF0CE000, v74, "%{public}s", 10, 2, v75);

            v76 = v133;
            sub_1AFDFC288();
            v77 = *(v136 + 48);
            v78 = *(v136 + 64);
            v79 = v72;
            v80 = v135;
            v81 = &v135[*(v136 + 80)];
            (*v129)(v135, v76, v134);
            *(v80 + v77) = v73;
            *(v80 + v78) = 0;
            *v81 = v79;
            *(v81 + 1) = v71;
            sub_1AFDFC608();

            sub_1AF0D54A0(v80);
            v45 = v132;
            goto LABEL_34;
          }
        }

LABEL_34:
        v46 += 2;
        --v45;
      }

      while (v45);
    }

    v1 = v137;
  }

  if (v1[20])
  {
    v83 = v1[20];
  }

  else
  {
    v83 = MEMORY[0x1E69E7CC0];
  }

  v138 = v83;
  v136 = v1[25];
  if (v136)
  {
    v84 = *(v136 + 16);

    if (v84)
    {
      v85 = 0;
      v86 = v136 + 32;
      do
      {
        while (1)
        {
          v87 = (v86 + 16 * v85);
          v89 = *v87;
          v88 = v87[1];
          ++v85;
          v90 = *(v83 + 2);
          v91 = v90;
          v92 = v83 + 40;
          if (!v90)
          {
            break;
          }

          while (1)
          {
            v93 = *(v92 - 1) == v89 && *v92 == v88;
            if (v93 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v92 += 2;
            if (!--v91)
            {
              v94 = v90 + 1;
              goto LABEL_75;
            }
          }

          if (v85 == v84)
          {
            goto LABEL_82;
          }
        }

        v94 = 1;
LABEL_75:
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1AF420554(0, v94, 1, v83);
        }

        v96 = *(v83 + 2);
        v95 = *(v83 + 3);
        if (v96 >= v95 >> 1)
        {
          v83 = sub_1AF420554(v95 > 1, v96 + 1, 1, v83);
        }

        *(v83 + 2) = v96 + 1;
        v97 = &v83[16 * v96];
        *(v97 + 4) = v89;
        *(v97 + 5) = v88;

        v138 = v83;
      }

      while (v85 != v84);
    }

LABEL_82:

    v1 = v137;
  }

  else
  {
  }

  if (!*(v1[27] + 16))
  {
    v102 = v1[37];
    if (!v102)
    {
      goto LABEL_104;
    }

LABEL_91:
    v103 = v1[36];
    v104 = v1[20];
    if (v104)
    {
      v140 = v1[36];
      v141 = v102;
      MEMORY[0x1EEE9AC00](v98);
      *(&v124 - 2) = &v140;

      v105 = sub_1AF7B9518(sub_1AF771190, (&v124 - 4), v104);

      if (v105)
      {
LABEL_103:

        goto LABEL_104;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v140 = 0;
      v141 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
      v111 = v1[42];
      v112 = v1[43];

      MEMORY[0x1B2718AE0](v111, v112);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v113 = v1[2];
      v114 = v1[3];

      MEMORY[0x1B2718AE0](v113, v114);

      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF33CC0);
      MEMORY[0x1B2718AE0](v103, v102);

      MEMORY[0x1B2718AE0](0x756F6620746F6E20, 0xEE00206E6920646ELL);

      v116 = MEMORY[0x1B2718E40](v115, MEMORY[0x1E69E6158]);
      v118 = v117;

      MEMORY[0x1B2718AE0](v116, v118);
    }

    else
    {
      v106 = qword_1ED730EA0;

      if (v106 != -1)
      {
        swift_once();
      }

      v140 = 0;
      v141 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
      v107 = v1[42];
      v108 = v1[43];

      MEMORY[0x1B2718AE0](v107, v108);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v109 = v1[2];
      v110 = v1[3];

      MEMORY[0x1B2718AE0](v109, v110);

      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF33CC0);
      MEMORY[0x1B2718AE0](v103, v102);

      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF33CE0);
    }

    v120 = v140;
    v119 = v141;
    v121 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v123 = v121;
      swift_once();
      v121 = v123;
    }

    v140 = 0;
    sub_1AF0D4F18(v121, &v140, v120, v119);
    goto LABEL_103;
  }

  v99 = *(v83 + 2);

  if (v99)
  {
    v100 = (v83 + 40);
    do
    {
      v101 = *v100;
      v140 = *(v100 - 1);
      v141 = v101;

      sub_1AF77F840(&v140, &v138, v1);

      v100 += 2;
      --v99;
    }

    while (v99);
  }

  v102 = v1[37];
  if (v102)
  {
    goto LABEL_91;
  }

LABEL_104:
  sub_1AF77FBC8();
}