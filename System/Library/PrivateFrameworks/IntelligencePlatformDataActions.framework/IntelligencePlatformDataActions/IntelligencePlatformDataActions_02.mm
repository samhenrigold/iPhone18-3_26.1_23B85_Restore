void sub_254FE89B8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_254FC59CC();
    if (v8 != v9)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254FC59AC();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254FC0048(&qword_27F76CDE8, &unk_254FF4828);
  v12 = sub_254FC0048(&qword_27F76C900, &qword_254FF3900);
  sub_254FC58B0(v12);
  v14 = *(v13 + 72);
  v15 = sub_254FEDD10();
  v16 = j__malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_18:
  v18 = *(sub_254FC0048(&qword_27F76C900, &qword_254FF3900) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_254FD15A0(a4 + v19, v10, v15 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void sub_254FE8B80(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_254FC59CC();
    if (v8 != v9)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254FC59AC();
    }
  }

  else
  {
    v7 = a2;
  }

  v10 = *(a4 + 16);
  if (v7 <= v10)
  {
    v11 = *(a4 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254FC0048(&qword_27F76CDB8, &qword_254FF47F0);
  v12 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  sub_254FC58B0(v12);
  v14 = *(v13 + 72);
  v15 = sub_254FEDD10();
  v16 = j__malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  v15[2] = v10;
  v15[3] = 2 * ((v16 - v4) / v14);
LABEL_18:
  v18 = *(sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0) - 8);
  if (a1)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_254FD1668(a4 + v19, v10, v15 + v19);
    *(a4 + 16) = 0;
  }

  else
  {
    sub_254FC5A8C();
  }
}

void *sub_254FE8D48(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254FC0048(&qword_27F76C8A0, &qword_254FF47C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_254FD1838((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_254FE8E48(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_254FD1610((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_254FE8F48(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_254FC59CC();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_254FC59AC();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_254FC0048(a5, a6);
  v17 = a7(0);
  sub_254FC58B0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(a7(0) - 8);
  if (a1)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    a8(a4 + v26, v15, v22 + v26);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_254FE90F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_254FF1CD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_254FC0048(&qword_27F76CD90, &qword_254FF47D8);
  v39 = v4;
  result = sub_254FF22F4();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_254FE957C(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_254FEDC98(&qword_27F76C8B0, MEMORY[0x277D1F340], MEMORY[0x277D1F348]);
    result = sub_254FF1EF4();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_254FE94D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  type metadata accessor for SportsAction.CacheEntry(0);
  result = sub_254FEDBC0();
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

uint64_t sub_254FE957C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_254FF46E0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_254FE95E0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_254FC4A60(a2);
  if (v4)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_254FC0048(&qword_27F76CD48, &qword_254FF4798);
    sub_254FF22A4();

    v5 = type metadata accessor for SportsAction.CacheEntry(0);
    sub_254FEDBC0();
    sub_254FF22C4();
    *v2 = v10;
    v6 = a1;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v8 = type metadata accessor for SportsAction.CacheEntry(0);
    v6 = a1;
    v7 = 1;
  }

  return sub_254FC4BB8(v6, v7, 1, v8);
}

uint64_t sub_254FE9728(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_254FC4A60(a2);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_254FC0048(&qword_27F76CD48, &qword_254FF4798);
  if ((sub_254FF22A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_254FC4A60(a2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_254FF2384();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for SportsAction.CacheEntry(0) - 8) + 72) * v12;

    return sub_254FEDC18(a1, v18);
  }

  else
  {
    sub_254FE94D0(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_254FE9880(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_25;
  }

  sub_254FC0048(&qword_27F76CDE0, &qword_254FF4818);
  result = sub_254FF2224();
  v3 = result;
  v22 = *(a1 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

  v4 = 0;
  v5 = result + 56;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v6 = (a1 + 32 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    sub_254FF2404();
    sub_254FF2424();
    if (v7)
    {

      sub_254FF1FC4();
    }

    result = sub_254FF2434();
    v9 = ~(-1 << *(v3 + 32));
    v10 = result & v9;
    v11 = (result & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (result & v9);
    v14 = *(v3 + 48);
    if ((v13 & v12) == 0)
    {
      break;
    }

    while (1)
    {
      v15 = (v14 + 16 * v10);
      v16 = v15[1];
      if (!v16)
      {
        if (!v7)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      if (v7)
      {
        if (*v15 == v8 && v16 == v7)
        {
          break;
        }

        result = sub_254FF2364();
        if (result)
        {
          break;
        }
      }

LABEL_17:
      v10 = (v10 + 1) & v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if ((v12 & (1 << v10)) == 0)
      {
        v14 = *(v3 + 48);
        goto LABEL_19;
      }
    }

LABEL_22:
    if (++v4 == v22)
    {
LABEL_25:

      return v3;
    }
  }

LABEL_19:
  *(v5 + 8 * v11) = v12 | v13;
  v18 = (v14 + 16 * v10);
  *v18 = v8;
  v18[1] = v7;
  v19 = *(v3 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v3 + 16) = v21;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_254FE9B28(uint64_t a1)
{
  v2 = sub_254FF1C84();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_254FC0048(&qword_27F76CDA0, &qword_254FF47E8);
  result = sub_254FF2224();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_254FEDC98(&qword_27F76CDA8, MEMORY[0x277D1F310], MEMORY[0x277D1F318]);
    v14 = sub_254FF1EF4();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_254FEDC98(&qword_27F76CDB0, MEMORY[0x277D1F310], MEMORY[0x277D1F320]);
      v21 = sub_254FF1F14();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_254FE9E6C(uint64_t a1, char a2, void *a3)
{
  v44 = a3;
  v6 = sub_254FF1CD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  v10 = MEMORY[0x28223BE20](v9);
  v42 = &v36 - v12;
  v41 = *(a1 + 16);
  if (!v41)
  {
LABEL_13:

    return;
  }

  v36 = v3;
  v37 = v6;
  v13 = 0;
  v40 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v10 + 48);
  v38 = v7;
  v39 = v14;
  v43 = (v7 + 32);
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_254FF2384();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v42;
    sub_254FC5770();
    v17 = *v43;
    v18 = v45;
    (*v43)(v45, v16, v6);
    v19 = *&v16[v39];
    v20 = *v44;
    v22 = sub_254FC4D14(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_19;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_254FC0048(&qword_27F76CD98, &qword_254FF47E0);
      sub_254FF22B4();
      if (v26)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v29 = v45;
    v30 = *v44;
    *(*v44 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v6 = v37;
    v17(v30[6] + *(v38 + 72) * v22, v29, v37);
    *(v30[7] + 8 * v22) = v19;
    v31 = v30[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_20;
    }

    ++v13;
    v30[2] = v33;
    a2 = 1;
    v11 = v15;
    if (v41 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_254FE90F8(v25, a2 & 1);
  v27 = sub_254FC4D14(v45);
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_21;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v34 = swift_allocError();
  swift_willThrow();

  v48 = v34;
  v35 = v34;
  sub_254FC0048(&qword_27F76CC58, &qword_254FF3F38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v38 + 8))(v45, v37);

    return;
  }

LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_254FF2254();
  MEMORY[0x259C316D0](0xD00000000000001BLL, 0x8000000254FF6290);
  sub_254FF2294();
  MEMORY[0x259C316D0](39, 0xE100000000000000);
  sub_254FF22D4();
  __break(1u);
}

_BYTE *sub_254FEA2D8@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t sub_254FEA344(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_254FEDA88(v6);
  }

  v7 = v6[2];
  v9[0] = (v6 + 4);
  v9[1] = v7;

  sub_254FEA790(v9, a2, a3);
  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_254FEA3F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_254FEDA9C(v2);
  }

  v4 = v2[2];
  v6[0] = (v2 + 4);
  v6[1] = v4;
  result = sub_254FEA8DC(v6, v3);
  *a1 = v2;
  return result;
}

uint64_t sub_254FEA45C(uint64_t *a1)
{
  v2 = *(type metadata accessor for SportsEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_254FEDAB0(v3);
    v3 = v5;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v8[1] = v6;
  result = sub_254FEA9D0(v8, v4);
  *a1 = v3;
  return result;
}

uint64_t sub_254FEA54C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254FF1614();
    v9 = a1 + *(a3 + 20);

    return sub_254FC5364(v9, a2, v8);
  }
}

void *sub_254FEA5E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_254FF1614();
    v8 = v5 + *(a4 + 20);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SportsAction.CacheEntry(uint64_t a1)
{
  result = qword_27F76CD20;
  if (!qword_27F76CD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_254FEA6B4(uint64_t a1)
{
  sub_254FEA738(319);
  if (v1 <= 0x3F)
  {
    sub_254FF1614();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254FEA738(uint64_t a1)
{
  if (!qword_27F76CD30)
  {
    type metadata accessor for SportsEvent(255);
    v1 = sub_254FF20D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F76CD30);
    }
  }
}

uint64_t sub_254FEA790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_254FF2334();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_254FF20B4();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      sub_254FEAF2C(v11, v12, a1, v8, a2, a3);
      *(v10 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_254FEAB00(0, v6, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_254FEA8DC(uint64_t *a1, __n128 a2)
{
  v3 = a1[1];
  result = sub_254FF2334();
  if (result < v3)
  {
    if (v3 >= -1)
    {
      v5 = result;
      v6 = v3 / 2;
      if (v3 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = sub_254FF20B4();
        *(v7 + 16) = v6;
      }

      v8[0] = (v7 + 32);
      v8[1] = v6;
      sub_254FEB6D0(v8, v9, a1, v5);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_254FEAC24(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_254FEA9D0(uint64_t *a1, __n128 a2)
{
  v3 = a1[1];
  result = sub_254FF2334();
  if (result < v3)
  {
    if (v3 >= -1)
    {
      v5 = result;
      v6 = v3 / 2;
      if (v3 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SportsEvent(0);
        v7 = sub_254FF20B4();
        *(v7 + 16) = v6;
      }

      v8 = *(type metadata accessor for SportsEvent(0) - 8);
      v9[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v9[1] = v6;
      sub_254FEBBD8(v9, v10, a1, v5);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_254FEACEC(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_254FEAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v8 = *a4;
    v9 = *a4 + (a3 << 6);
    v10 = a1 - a3;
    while (2)
    {
      v27 = a3;
      v11 = v10;
      v26 = v9;
      do
      {
        v12 = (v9 - 64);
        v13 = *(v9 - 64);
        v14 = *(v9 - 56);
        v15 = *v9 == a5 && *(v9 + 8) == a6;
        if (!v15 && (sub_254FF2364() & 1) == 0)
        {
          break;
        }

        if (v13 == a5 && v14 == a6)
        {
          break;
        }

        result = sub_254FF2364();
        if (result)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        v19 = *(v9 + 32);
        v18 = *(v9 + 48);
        v21 = *v9;
        v20 = *(v9 + 16);
        v22 = *(v9 - 48);
        *v9 = *v12;
        *(v9 + 16) = v22;
        v23 = *(v9 - 16);
        *(v9 + 32) = *(v9 - 32);
        *(v9 + 48) = v23;
        *v12 = v21;
        *(v9 - 48) = v20;
        v9 -= 64;
        v12[2] = v19;
        v12[3] = v18;
      }

      while (!__CFADD__(v11++, 1));
      a3 = v27 + 1;
      v9 = v26 + 64;
      --v10;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_254FEAC24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_254FF2364();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_254FEACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for SportsEvent(0);
  v8 = MEMORY[0x28223BE20](v32);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  result = MEMORY[0x28223BE20](v9);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v31 = v16;
    v25 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v29 = v18;
      v30 = a3;
      v27 = v21;
      v28 = v20;
      do
      {
        sub_254FEDB10();
        sub_254FEDB10();
        v22 = sub_254FF15C4();
        sub_254FEDB68(v11, type metadata accessor for SportsEvent);
        result = sub_254FEDB68(v15, type metadata accessor for SportsEvent);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return result;
        }

        sub_254FEDBC0();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_254FEDBC0();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v30 + 1;
      v18 = v29 + v25;
      v20 = v28 - 1;
      v21 = v27 + v25;
      if (v30 + 1 != v26)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_254FEAF2C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_122:
    v134 = *a1;
    if (!*a1)
    {
      goto LABEL_165;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_124:
      v133 = v10;
      v116 = v10 + 16;
      for (i = *(v10 + 2); ; *v10 = i)
      {
        v117 = i - 2;
        if (i < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_162;
        }

        v119 = &v133[16 * i];
        v120 = *v119;
        v10 = v116;
        v138 = i;
        v121 = &v116[16 * i];
        v122 = *(v121 + 1);
        v123 = (v118 + (*v119 << 6));
        v124 = (v118 + (*v121 << 6));
        v125 = (v118 + (v122 << 6));

        sub_254FEC610(v123, v124, v125, v134, a5, a6);
        if (v140)
        {
          break;
        }

        if (v122 < v120)
        {
          goto LABEL_150;
        }

        if (v117 >= *v10)
        {
          goto LABEL_151;
        }

        v116 = v10;
        *v119 = v120;
        *(v119 + 1) = v122;
        if (*v10 < v138)
        {
          goto LABEL_152;
        }

        i = *v10 - 1;
        memmove(v121, v121 + 16, 16 * (*v10 - v138));
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_159:
    v10 = sub_254FECE9C(v10);
    goto LABEL_124;
  }

  v127 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v135 = a6;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_41;
    }

    v12 = (*a3 + (v9 << 6));
    v13 = (*a3 + (v11 << 6));
    v14 = *v13;
    v15 = v13[1];
    v16 = a5;
    v17 = *v12 == a5 && v12[1] == a6;
    if (v17 || (v18 = sub_254FF2364(), v16 = a5, (v18 & 1) != 0))
    {
      v19 = v11;
      if (v14 != v16 || v15 != a6)
      {
        v21 = sub_254FF2364();
        v16 = a5;
        v22 = v21 ^ 1;
        goto LABEL_16;
      }
    }

    else
    {
      v19 = v11;
    }

    v22 = 0;
LABEL_16:
    v23 = v19;
    v9 = v19 + 2;
    v128 = v23;
    v24 = v23 << 6;
    v25 = v13 + 17;
    while (v9 < v8)
    {
      v26 = *(v25 - 9);
      v27 = *(v25 - 8);
      v28 = *(v25 - 1) == v16 && *v25 == a6;
      if (v28 || (v29 = sub_254FF2364(), v16 = a5, (v29)) && (v26 == v16 ? (v30 = v27 == a6) : (v30 = 0), !v30))
      {
        v31 = sub_254FF2364();
        v16 = a5;
        if (((v22 ^ v31) & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        goto LABEL_32;
      }

      ++v9;
      v25 += 8;
    }

    if ((v22 & 1) == 0)
    {
      v11 = v128;
      goto LABEL_41;
    }

LABEL_32:
    v11 = v128;
    if (v9 < v128)
    {
      goto LABEL_156;
    }

    if (v128 < v9)
    {
      v32 = (v9 << 6) - 64;
      v33 = v9;
      v34 = v128;
      do
      {
        if (v34 != --v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v36 = (v35 + v24);
          v37 = (v35 + v32);
          v39 = v36[2];
          v38 = v36[3];
          v41 = *v36;
          v40 = v36[1];
          v42 = v37[3];
          v44 = *v37;
          v43 = v37[1];
          v36[2] = v37[2];
          v36[3] = v42;
          *v36 = v44;
          v36[1] = v43;
          *v37 = v41;
          v37[1] = v40;
          v37[2] = v39;
          v37[3] = v38;
        }

        ++v34;
        v32 -= 64;
        v24 += 64;
      }

      while (v34 < v33);
    }

LABEL_41:
    v45 = a3[1];
    if (v9 < v45)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_155;
      }

      if (v9 - v11 < v127)
      {
        break;
      }
    }

LABEL_68:
    if (v9 < v11)
    {
      goto LABEL_154;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_254FC412C();
      v10 = v113;
    }

    v67 = *(v10 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v10 + 3) >> 1)
    {
      sub_254FC412C();
      v10 = v114;
    }

    *(v10 + 2) = v68;
    v69 = v10 + 32;
    v70 = &v10[16 * v67 + 32];
    *v70 = v11;
    *(v70 + 1) = v9;
    v134 = *a1;
    if (!*a1)
    {
      goto LABEL_164;
    }

    if (v67)
    {
      v137 = v9;
      v132 = v10 + 32;
      while (1)
      {
        v71 = v68 - 1;
        v72 = &v69[16 * v68 - 16];
        v73 = &v10[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v74 = *(v10 + 4);
          v75 = *(v10 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_89:
          if (v77)
          {
            goto LABEL_141;
          }

          v89 = *v73;
          v88 = *(v73 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_144;
          }

          v93 = *(v72 + 1);
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_147;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_149;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = v68 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        if (v68 < 2)
        {
          goto LABEL_143;
        }

        v96 = *v73;
        v95 = *(v73 + 1);
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_104:
        if (v92)
        {
          goto LABEL_146;
        }

        v98 = *v72;
        v97 = *(v72 + 1);
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_148;
        }

        if (v99 < v91)
        {
          goto LABEL_118;
        }

LABEL_111:
        if (v71 - 1 >= v68)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v103 = *a3;
        if (!*a3)
        {
          goto LABEL_161;
        }

        v104 = v10;
        v105 = &v69[16 * v71 - 16];
        v10 = *v105;
        v106 = v71;
        v107 = &v69[16 * v71];
        v108 = *(v107 + 1);
        v109 = (v103 + (*v105 << 6));
        v110 = (v103 + (*v107 << 6));
        v111 = (v103 + (v108 << 6));
        a6 = v135;

        sub_254FEC610(v109, v110, v111, v134, a5, v135);
        if (v140)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v108 < v10)
        {
          goto LABEL_136;
        }

        v112 = *(v104 + 2);
        if (v106 > v112)
        {
          goto LABEL_137;
        }

        *v105 = v10;
        *(v105 + 1) = v108;
        if (v106 >= v112)
        {
          goto LABEL_138;
        }

        v68 = v112 - 1;
        memmove(v107, v107 + 16, 16 * (v112 - 1 - v106));
        v10 = v104;
        *(v104 + 2) = v112 - 1;
        a6 = v135;
        v9 = v137;
        v69 = v132;
        if (v112 <= 2)
        {
          goto LABEL_118;
        }
      }

      v78 = &v69[16 * v68];
      v79 = *(v78 - 8);
      v80 = *(v78 - 7);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_139;
      }

      v83 = *(v78 - 6);
      v82 = *(v78 - 5);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_140;
      }

      v85 = *(v73 + 1);
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_142;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_145;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = *(v72 + 1);
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_153;
        }

        if (v76 < v102)
        {
          v71 = v68 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_89;
    }

LABEL_118:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_122;
    }
  }

  v46 = v11 + v127;
  if (__OFADD__(v11, v127))
  {
    goto LABEL_157;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v11)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v9 == v46)
  {
    goto LABEL_68;
  }

  v131 = v10;
  v47 = *a3;
  v48 = v9;
  v49 = *a3 + (v9 << 6);
  v136 = v48;
  v129 = v11;
  v50 = v11 - v48;
  v51 = a5;
  v134 = v46;
LABEL_50:
  v52 = v50;
  v53 = v49;
  while (1)
  {
    v54 = (v53 - 64);
    v55 = *(v53 - 64);
    v56 = *(v53 - 56);
    if (*v53 != v51 || *(v53 + 8) != a6)
    {
      v58 = sub_254FF2364();
      v51 = a5;
      if ((v58 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (v55 == v51 && v56 == a6)
    {
      goto LABEL_66;
    }

    if (sub_254FF2364())
    {
      v51 = a5;
LABEL_66:
      v49 += 64;
      --v50;
      if (++v136 == v134)
      {
        v9 = v134;
        v10 = v131;
        v11 = v129;
        goto LABEL_68;
      }

      goto LABEL_50;
    }

    if (!v47)
    {
      break;
    }

    v61 = *(v53 + 32);
    v60 = *(v53 + 48);
    v63 = *v53;
    v62 = *(v53 + 16);
    v64 = *(v53 - 48);
    *v53 = *v54;
    *(v53 + 16) = v64;
    v65 = *(v53 - 16);
    *(v53 + 32) = *(v53 - 32);
    *(v53 + 48) = v65;
    *v54 = v63;
    *(v53 - 48) = v62;
    v53 -= 64;
    v54[2] = v61;
    v54[3] = v60;
    v66 = __CFADD__(v52++, 1);
    v51 = a5;
    if (v66)
    {
      goto LABEL_66;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_162:

  __break(1u);
LABEL_163:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_164:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_165:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_254FEB6D0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_254FF2364();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_254FF2364()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_254FF2364() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254FC412C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_254FC412C();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_254FEC86C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_254FEC4E4(&v91, *result, a3);
LABEL_102:
}

void sub_254FEBBD8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v9 = type metadata accessor for SportsEvent(0);
  v108 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v104 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v112 = &v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v98 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v98 - v16;
  v110 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_101:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v92 = v20 + 16;
      v93 = *(v20 + 2);
      for (i = v20; v93 >= 2; v20 = i)
      {
        if (!*v110)
        {
          goto LABEL_139;
        }

        v94 = &v20[16 * v93];
        v95 = *v94;
        v20 = &v92[2 * v93];
        v96 = *(v20 + 1);
        sub_254FECA10(*v110 + *(v108 + 72) * *v94, *v110 + *(v108 + 72) * *v20, *v110 + *(v108 + 72) * v96, v5);
        if (v6)
        {
          break;
        }

        if (v96 < v95)
        {
          goto LABEL_127;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_128;
        }

        *v94 = v95;
        *(v94 + 1) = v96;
        v97 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_129;
        }

        v93 = *v92 - 1;
        memmove(v20, v20 + 16, 16 * v97);
        *v92 = v93;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = sub_254FECE9C(v20);
    goto LABEL_103;
  }

  v99 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v114 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    i = v20;
    v101 = v19;
    if (v19 + 1 < v18)
    {
      v23 = *v110;
      v24 = *(v108 + 72);
      v25 = *v110 + v24 * v22;
      v107 = v18;
      sub_254FEDB10();
      v5 = v113;
      sub_254FEDB10();
      LODWORD(v106) = sub_254FF15C4();
      sub_254FEDB68(v5, type metadata accessor for SportsEvent);
      sub_254FEDB68(v17, type metadata accessor for SportsEvent);
      v26 = v107;
      v27 = v101 + 2;
      v109 = v24;
      v20 = (v23 + v24 * (v101 + 2));
      while (1)
      {
        v28 = v27;
        if (++v22 >= v26)
        {
          break;
        }

        sub_254FEDB10();
        v5 = v113;
        sub_254FEDB10();
        v29 = sub_254FF15C4() & 1;
        sub_254FEDB68(v5, type metadata accessor for SportsEvent);
        sub_254FEDB68(v17, type metadata accessor for SportsEvent);
        v20 += v109;
        v25 += v109;
        v27 = v28 + 1;
        v26 = v107;
        if ((v106 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v22 = v26;
LABEL_9:
      if (v106)
      {
        v21 = v101;
        if (v22 < v101)
        {
          goto LABEL_133;
        }

        if (v101 >= v22)
        {
          v20 = i;
          goto LABEL_32;
        }

        v98 = v6;
        if (v26 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        v31 = v109 * (v30 - 1);
        v32 = v101;
        v33 = v109 * v30;
        v34 = v101 * v109;
        v35 = v22;
        v20 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = v22;
            v36 = *v110;
            if (!*v110)
            {
              goto LABEL_140;
            }

            sub_254FEDBC0();
            v37 = v34 < v31 || v36 + v34 >= (v36 + v33);
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_254FEDBC0();
            v20 = i;
            v22 = v5;
          }

          ++v32;
          v31 -= v109;
          v33 -= v109;
          v34 += v109;
        }

        while (v32 < v35);
        v6 = v98;
      }

      else
      {
        v20 = i;
      }

      v21 = v101;
    }

LABEL_32:
    v38 = v110[1];
    if (v22 < v38)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_132;
      }

      if (v22 - v21 < v99)
      {
        break;
      }
    }

LABEL_48:
    if (v22 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_254FC412C();
      v20 = v90;
    }

    v48 = *(v20 + 2);
    v49 = v48 + 1;
    if (v48 >= *(v20 + 3) >> 1)
    {
      sub_254FC412C();
      v20 = v91;
    }

    *(v20 + 2) = v49;
    v50 = v20 + 32;
    v51 = &v20[16 * v48 + 32];
    *v51 = v101;
    *(v51 + 1) = v22;
    v107 = *v100;
    if (!v107)
    {
      goto LABEL_141;
    }

    v109 = v22;
    if (v48)
    {
      i = v20;
      while (1)
      {
        v52 = v49 - 1;
        v53 = &v50[16 * v49 - 16];
        v54 = &v20[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v20 + 4);
          v56 = *(v20 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_69:
          if (v58)
          {
            goto LABEL_118;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_121;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_126;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v49 < 2)
        {
          goto LABEL_120;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_84:
        if (v73)
        {
          goto LABEL_123;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_125;
        }

        if (v80 < v72)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v110)
        {
          goto LABEL_138;
        }

        v5 = v17;
        v84 = &v50[16 * v52 - 16];
        v85 = *v84;
        v86 = v50;
        v87 = v52;
        v20 = &v50[16 * v52];
        v88 = *(v20 + 1);
        sub_254FECA10(*v110 + *(v108 + 72) * *v84, *v110 + *(v108 + 72) * *v20, *v110 + *(v108 + 72) * v88, v107);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v88 < v85)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v87 > v6)
        {
          goto LABEL_114;
        }

        *v84 = v85;
        *(v84 + 1) = v88;
        if (v87 >= v6)
        {
          goto LABEL_115;
        }

        v49 = v6 - 1;
        memmove(v20, v20 + 16, 16 * (v6 - 1 - v87));
        v20 = i;
        *(i + 2) = v6 - 1;
        v89 = v6 > 2;
        v6 = 0;
        v50 = v86;
        v17 = v5;
        if (!v89)
        {
          goto LABEL_98;
        }
      }

      v59 = &v50[16 * v49];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_116;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_117;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_119;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_122;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_130;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v19 = v109;
    v18 = v110[1];
    if (v109 >= v18)
    {
      goto LABEL_101;
    }
  }

  v39 = v21 + v99;
  if (__OFADD__(v21, v99))
  {
    goto LABEL_134;
  }

  if (v39 >= v38)
  {
    v39 = v110[1];
  }

  if (v39 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v22 == v39)
  {
    goto LABEL_48;
  }

  v98 = v6;
  v40 = *v110;
  v41 = *(v108 + 72);
  v42 = *v110 + v41 * (v22 - 1);
  v43 = -v41;
  v44 = v21 - v22;
  v102 = v41;
  v103 = v39;
  v45 = v40 + v22 * v41;
LABEL_41:
  v109 = v22;
  v105 = v45;
  v106 = v44;
  v107 = v42;
  v46 = v42;
  while (1)
  {
    sub_254FEDB10();
    v5 = v113;
    sub_254FEDB10();
    v47 = sub_254FF15C4();
    sub_254FEDB68(v5, type metadata accessor for SportsEvent);
    sub_254FEDB68(v17, type metadata accessor for SportsEvent);
    if ((v47 & 1) == 0)
    {
LABEL_46:
      v22 = v109 + 1;
      v42 = v107 + v102;
      v44 = v106 - 1;
      v45 = v105 + v102;
      if (v109 + 1 == v103)
      {
        v22 = v103;
        v6 = v98;
        v20 = i;
        v21 = v101;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v5 = v112;
    sub_254FEDBC0();
    swift_arrayInitWithTakeFrontToBack();
    sub_254FEDBC0();
    v46 += v43;
    v45 += v43;
    v37 = __CFADD__(v44++, 1);
    if (v37)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_254FEC4E4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_254FECE9C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_254FEC86C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_254FEC610(char *a1, char *a2, __int128 *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 64;
  v12 = (a3 - a2) / 64;
  if (v11 < v12)
  {
    sub_254FD1838(a1, (a2 - a1) / 64, a4);
    v13 = &v7[64 * v11];
    v14 = a6;
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_46;
      }

      v16 = *v7;
      v17 = *(v7 + 1);
      v18 = *v9 == a5 && *(v9 + 1) == v14;
      if (!v18)
      {
        v19 = sub_254FF2364();
        v14 = a6;
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      if (v16 == a5 && v17 == v14)
      {
        break;
      }

      v21 = sub_254FF2364();
      v14 = a6;
      if (v21)
      {
        break;
      }

      v22 = v9;
      v18 = v10 == v9;
      v9 += 64;
      if (!v18)
      {
        goto LABEL_18;
      }

LABEL_19:
      v10 += 64;
    }

    v22 = v7;
    v18 = v10 == v7;
    v7 += 64;
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = *(v22 + 3);
    *(v10 + 2) = *(v22 + 2);
    *(v10 + 3) = v25;
    *v10 = v23;
    *(v10 + 1) = v24;
    goto LABEL_19;
  }

  sub_254FD1838(a2, (a3 - a2) / 64, a4);
  v13 = &v7[64 * v12];
  v26 = a6;
LABEL_24:
  v43 = (v9 - 64);
  for (v8 -= 4; v13 > v7 && v9 > v10; v8 -= 4)
  {
    v28 = *(v9 - 8);
    v29 = *(v9 - 7);
    v30 = *(v13 - 8) == a5 && *(v13 - 7) == v26;
    if (v30 || (v31 = sub_254FF2364(), v26 = a6, (v31 & 1) != 0))
    {
      if (v28 != a5 || v29 != v26)
      {
        v33 = sub_254FF2364();
        v26 = a6;
        if ((v33 & 1) == 0)
        {
          v18 = v8 + 4 == v9;
          v9 -= 64;
          if (!v18)
          {
            v37 = *v43;
            v38 = v43[1];
            v39 = v43[3];
            v8[2] = v43[2];
            v8[3] = v39;
            *v8 = v37;
            v8[1] = v38;
            v9 = v43;
          }

          goto LABEL_24;
        }
      }
    }

    if (v13 != (v8 + 4))
    {
      v34 = *(v13 - 4);
      v35 = *(v13 - 3);
      v36 = *(v13 - 1);
      v8[2] = *(v13 - 2);
      v8[3] = v36;
      *v8 = v34;
      v8[1] = v35;
    }

    v13 -= 64;
  }

LABEL_46:
  v40 = (v13 - v7) / 64;
  if (v9 != v7 || v9 >= &v7[64 * v40])
  {
    memmove(v9, v7, v40 << 6);
  }

  return 1;
}

uint64_t sub_254FEC86C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_254FD1610(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_254FF2364() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_254FD1610(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_254FF2364() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_254FECA10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for SportsEvent(0);
  v8 = MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v57 = a1;
  v56 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_254FD1764(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v49 = a1;
    v50 = v30;
LABEL_36:
    v51 = a2 + v30;
    v52 = a2;
    v32 = a3;
    v33 = v31;
    v48 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v57 = v52;
        v55 = v33;
        goto LABEL_58;
      }

      if (v52 <= a1)
      {
        break;
      }

      v47 = v33;
      v34 = a4;
      v35 = v32 + v30;
      v36 = v29 + v30;
      v37 = v32;
      sub_254FEDB10();
      v38 = v12;
      v39 = v53;
      sub_254FEDB10();
      v40 = sub_254FF15C4();
      v41 = v39;
      v12 = v38;
      sub_254FEDB68(v41, type metadata accessor for SportsEvent);
      sub_254FEDB68(v38, type metadata accessor for SportsEvent);
      if (v40)
      {
        v44 = v37 < v52 || v35 >= v52;
        a4 = v34;
        if (v44)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v35;
          v31 = v47;
          a1 = v49;
          v30 = v50;
        }

        else
        {
          v16 = v37 == v52;
          v30 = v50;
          v45 = v51;
          a2 = v51;
          a3 = v35;
          v31 = v47;
          a1 = v49;
          if (!v16)
          {
            v31 = v47;
            swift_arrayInitWithTakeBackToFront();
            a2 = v45;
          }
        }

        goto LABEL_36;
      }

      v42 = v37 < v29 || v35 >= v29;
      a4 = v34;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v35;
        v29 = v36;
        v33 = v36;
        a1 = v49;
        v30 = v50;
        v31 = v48;
      }

      else
      {
        v33 = v36;
        v16 = v29 == v37;
        v32 = v35;
        v29 = v36;
        v43 = v35;
        a1 = v49;
        v30 = v50;
        v31 = v48;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v43;
          v29 = v36;
          v33 = v36;
        }
      }
    }

    v57 = v52;
    v55 = v31;
  }

  else
  {
    sub_254FD1764(a1, v15 / v14, a4);
    v52 = a4 + v19 * v14;
    v55 = v52;
    while (a4 < v52 && a2 < a3)
    {
      v22 = a3;
      sub_254FEDB10();
      v23 = a2;
      v24 = v53;
      sub_254FEDB10();
      v25 = sub_254FF15C4();
      sub_254FEDB68(v24, type metadata accessor for SportsEvent);
      sub_254FEDB68(v12, type metadata accessor for SportsEvent);
      if (v25)
      {
        a2 = v23 + v14;
        v26 = a1 < v23 || a1 >= a2;
        v27 = v23;
        if (v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v23;
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v22;
        }

        else
        {
          a3 = v22;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v57 = a1;
    }
  }

LABEL_58:
  sub_254FECEB0(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_254FECEB0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SportsEvent(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254FECF90(char *result, int64_t a2, char a3, char *a4)
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
    sub_254FC0048(&qword_27F76C898, &unk_254FF3150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

BOOL sub_254FED090(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_254FF2404();
  sub_254FF1FC4();
  v8 = sub_254FF2434();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_254FF2364() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_254FED438(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_254FED1DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254FC0048(&qword_27F76CDD0, &qword_254FF4800);
  result = sub_254FF2214();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_254FE957C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_254FF2404();
    sub_254FF1FC4();
    result = sub_254FF2434();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_254FED438(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_254FED1DC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_254FED6F8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_254FF2404();
      sub_254FF1FC4();
      result = sub_254FF2434();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_254FF2364() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_254FED5A0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_254FF2374();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_254FED5A0()
{
  v1 = v0;
  sub_254FC0048(&qword_27F76CDD0, &qword_254FF4800);
  v2 = *v0;
  v3 = sub_254FF2204();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_254FED6F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254FC0048(&qword_27F76CDD0, &qword_254FF4800);
  result = sub_254FF2214();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_254FF2404();

        sub_254FF1FC4();
        result = sub_254FF2434();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
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

  return result;
}

void *sub_254FED92C(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254FEDB10()
{
  sub_254FC5DD4();
  v1(0);
  sub_254FC5864();
  v2 = sub_254FBF6B0();
  v3(v2);
  return v0;
}

uint64_t sub_254FEDB68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_254FC5864();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254FEDBC0()
{
  sub_254FC5DD4();
  v1(0);
  sub_254FC5864();
  v2 = sub_254FBF6B0();
  v3(v2);
  return v0;
}

uint64_t sub_254FEDC18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsAction.CacheEntry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FEDC98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254FEDD10()
{

  return swift_allocObject();
}

uint64_t SportsEvent.init(id:teams:homeTeam:awayTeam:startTime:firstTeamId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v118 = a7;
  v117 = a6;
  v121 = a3;
  v122 = a2;
  v116 = a8;
  v110 = sub_254FF1644();
  sub_254FC583C();
  v109 = v11;
  MEMORY[0x28223BE20](v12);
  sub_254FC7780();
  v15 = v14 - v13;
  v108 = sub_254FF1654();
  sub_254FC583C();
  v107 = v16;
  MEMORY[0x28223BE20](v17);
  sub_254FC7780();
  v20 = v19 - v18;
  v21 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v103 - v22;
  v120 = sub_254FF1614();
  sub_254FC583C();
  v119 = v24;
  MEMORY[0x28223BE20](v25);
  sub_254FDE4EC();
  v105 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v103 - v29;
  MEMORY[0x28223BE20](v28);
  v111 = v103 - v31;
  v114 = sub_254FF1EB4();
  sub_254FC583C();
  v113 = v32;
  MEMORY[0x28223BE20](v33);
  sub_254FDE4EC();
  v106 = v34;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v103 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = v103 - v39;
  v115 = type metadata accessor for SportsEvent(0);
  sub_254FC5864();
  MEMORY[0x28223BE20](v41);
  sub_254FC7780();
  v44 = v43 - v42;
  v45 = a4[1];
  v124 = *a4;
  v125 = v45;
  v46 = a4[2];
  v47 = a4[3];
  v48 = v122;
  v126 = v46;
  v127 = v47;
  v49 = a5[1];
  v128 = *a5;
  v129 = v49;
  v50 = a5[2];
  v51 = a5[3];
  v52 = HIBYTE(v122) & 0xF;
  v112 = a1;
  if ((v122 & 0x2000000000000000) == 0)
  {
    v52 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v130 = v50;
  v131 = v51;
  if (!v52)
  {
    sub_254FC538C(&v124, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FC538C(&v128, &qword_27F76CD80, &qword_254FF47C8);

    sub_254FF1D14();
    v77 = sub_254FF1EA4();
    v78 = sub_254FF2174();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_254FBD000, v77, v78, "SportsEvent: Event has an empty ID", v79, 2u);
      sub_254FDE524();
    }

    v80 = sub_254FEEE80();
    v81(v80);
    sub_254FEEE70();
    v83 = v40;
    goto LABEL_16;
  }

  v53 = v121;
  if (*(v121 + 16) != 2)
  {

    sub_254FC538C(&v124, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FC538C(&v128, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FF1D14();

    v84 = sub_254FF1EA4();
    v85 = sub_254FF2174();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = v53;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v123 = v88;
      *v87 = 136643075;
      v89 = sub_254FC4454(v112, v48, &v123);

      *(v87 + 4) = v89;
      *(v87 + 12) = 2048;
      v90 = *(v86 + 16);

      *(v87 + 14) = v90;

      _os_log_impl(&dword_254FBD000, v84, v85, "SportsEvent: Event %{sensitive}s has %ld teams instead of 2", v87, 0x16u);
      sub_254FC49C4(v88);
      sub_254FDE524();
      sub_254FDE524();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v91 = sub_254FEEE80();
    v92(v91);
    sub_254FEEE70();
    v83 = v38;
LABEL_16:
    v82(v83, v114);
    goto LABEL_17;
  }

  sub_254FF1634();
  v54 = v109;
  v55 = v110;
  (*(v109 + 104))(v15, *MEMORY[0x277CC9968], v110);
  sub_254FF1604();
  sub_254FF1624();
  v56 = v119;
  v57 = v30;
  v58 = v120;
  v104 = *(v119 + 8);
  v103[1] = v119 + 8;
  v104(v57, v120);
  (*(v54 + 8))(v15, v55);
  (*(v107 + 8))(v20, v108);
  result = sub_254FC5364(v23, 1, v58);
  if (result != 1)
  {

    v60 = *(v56 + 32);
    v61 = v111;
    v60(v111, v23, v58);
    v62 = v117;
    if ((sub_254FF15C4() & 1) == 0)
    {
      v104(v61, v58);
      v96 = v122;
      *v44 = v112;
      *(v44 + 8) = v96;
      v95 = v115;
      v60((v44 + *(v115 + 32)), v62, v58);
      *(v44 + 144) = v121;
      v97 = v125;
      *(v44 + 16) = v124;
      *(v44 + 32) = v97;
      v98 = v127;
      *(v44 + 48) = v126;
      *(v44 + 64) = v98;
      v99 = v129;
      *(v44 + 80) = v128;
      *(v44 + 96) = v99;
      v100 = v131;
      *(v44 + 112) = v130;
      *(v44 + 128) = v100;
      v94 = v116;
      sub_254FEEADC(v44, v116);
      v93 = 0;
      return sub_254FC4BB8(v94, v93, 1, v95);
    }

    sub_254FC538C(&v124, &qword_27F76CD80, &qword_254FF47C8);
    sub_254FC538C(&v128, &qword_27F76CD80, &qword_254FF47C8);
    v63 = v106;
    sub_254FF1D14();
    v64 = v105;
    (*(v56 + 16))(v105, v62, v58);
    v65 = v122;

    v66 = sub_254FF1EA4();
    v67 = sub_254FF2174();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v68 = 136643075;
      v69 = sub_254FC4454(v112, v65, &v123);

      *(v68 + 4) = v69;
      *(v68 + 12) = 2080;
      sub_254FEEB40();
      v70 = sub_254FF2344();
      v72 = v71;
      v73 = v64;
      v74 = v104;
      v104(v73, v58);
      v75 = sub_254FC4454(v70, v72, &v123);

      *(v68 + 14) = v75;
      _os_log_impl(&dword_254FBD000, v66, v67, "SportsEvent: Event %{sensitive}s is earlier than yesterday: %s", v68, 0x16u);
      swift_arrayDestroy();
      sub_254FDE524();
      sub_254FDE524();

      v74(v62, v58);
      sub_254FEEE70();
      v76(v106, v114);
      v74(v111, v58);
    }

    else
    {

      v101 = v104;
      v104(v62, v58);
      v101(v64, v58);
      sub_254FEEE70();
      v102(v63, v114);
      v101(v61, v58);
    }

LABEL_17:
    v93 = 1;
    v94 = v116;
    v95 = v115;
    return sub_254FC4BB8(v94, v93, 1, v95);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SportsEvent(uint64_t a1)
{
  result = qword_27F76CDF0;
  if (!qword_27F76CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SportsEvent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsEvent(0) + 32);
  sub_254FF1614();
  sub_254FC5864();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SportsEvent.init(id:teams:startTime:firstTeamId:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_254FF1614();
  sub_254FC583C();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_254FC7780();
  v18 = (v17 - v16);
  v19 = sub_254FC0048(&qword_27F76CD50, &unk_254FF47A0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v25 - v20;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  (*(v14 + 16))(v18, a4, v12);
  SportsEvent.init(id:teams:homeTeam:awayTeam:startTime:firstTeamId:)(a1, a2, a3, v26, v25, v18, a5, v21);
  (*(v14 + 8))(a4, v12);
  v22 = type metadata accessor for SportsEvent(0);
  if (sub_254FC5364(v21, 1, v22))
  {
    sub_254FC538C(v21, &qword_27F76CD50, &unk_254FF47A0);
    v23 = 1;
  }

  else
  {
    sub_254FEEADC(v21, a6);
    v23 = 0;
  }

  return sub_254FC4BB8(a6, v23, 1, v22);
}

uint64_t sub_254FEEAB4@<X0>(uint64_t *a1@<X8>)
{
  result = SportsEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FEEADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254FEEB40()
{
  result = qword_27F76CC38;
  if (!qword_27F76CC38)
  {
    sub_254FF1614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC38);
  }

  return result;
}

uint64_t sub_254FEEB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CD80, &qword_254FF47C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FEEC1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FF1614();
    v9 = a1 + *(a3 + 32);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FEECB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FF1614();
    v8 = v5 + *(a4 + 32);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FEED38(uint64_t a1)
{
  sub_254FEEE1C(319, &qword_27F76CE00, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_254FEEE1C(319, &qword_27F76CE08, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_254FF1614();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254FEEE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SportsTeam);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_254FEEE9C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a18, __n128 a19)
{
  a18 = a4;
  a19 = a5;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;

  return sub_254FEEB98(&a14, &a6);
}

IntelligencePlatformDataActions::SportsEventTimeFrame_optional __swiftcall SportsEventTimeFrame.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

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

  *v2 = v5;
  return result;
}

uint64_t SportsEventTimeFrame.rawValue.getter()
{
  if (*v0)
  {
    return 0x746E6F4D7478656ELL;
  }

  else
  {
    return 0x6B6565577478656ELL;
  }
}

unint64_t sub_254FEEF74()
{
  result = qword_27F76CE10;
  if (!qword_27F76CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE10);
  }

  return result;
}

uint64_t sub_254FEEFEC@<X0>(uint64_t *a1@<X8>)
{
  result = SportsEventTimeFrame.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsEventTimeFrame(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SportsEventTimeFrame(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254FEF218);
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

unint64_t sub_254FEF25C()
{
  result = qword_27F76CE18;
  if (!qword_27F76CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE18);
  }

  return result;
}

void __swiftcall SportsTeam.init(id:name:league:imageData:)(IntelligencePlatformDataActions::SportsTeam_optional *__return_ptr retstr, Swift::String id, Swift::String name, Swift::String league, Swift::String imageData)
{
  object = imageData._object;
  countAndFlagsBits = imageData._countAndFlagsBits;
  v7 = league._object;
  v8 = league._countAndFlagsBits;
  v9 = name._object;
  v10 = name._countAndFlagsBits;
  v11 = id._object;
  v12 = id._countAndFlagsBits;
  v14 = sub_254FF1EB4();
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  v21 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v21 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v22 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      retstr->value.id._countAndFlagsBits = v12;
      retstr->value.id._object = v11;
      retstr->value.name._countAndFlagsBits = v10;
      retstr->value.name._object = v9;
      retstr->value.league._countAndFlagsBits = v8;
      retstr->value.league._object = v7;
      retstr->value.imageData._countAndFlagsBits = countAndFlagsBits;
      retstr->value.imageData._object = object;
      return;
    }

    v28 = v17;
    v35 = v16;
    v29 = v18;

    sub_254FF1D14();

    v30 = sub_254FF1EA4();
    v31 = sub_254FF2174();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136642819;
      v34 = sub_254FC4454(v12, v11, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_254FBD000, v30, v31, "SportsTeam: Cannot initialize with empty name for team with id:%{sensitive}s", v32, 0xCu);
      sub_254FC49C4(v33);
      MEMORY[0x259C32150](v33, -1, -1);
      MEMORY[0x259C32150](v32, -1, -1);
    }

    else
    {
    }

    (*(v28 + 8))(v29, v35);
  }

  else
  {
    v23 = v17;
    v24 = v16;

    sub_254FF1D14();
    v25 = sub_254FF1EA4();
    v26 = sub_254FF2174();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_254FBD000, v25, v26, "SportsTeam: Team has an empty ID", v27, 2u);
      MEMORY[0x259C32150](v27, -1, -1);
    }

    (*(v23 + 8))(v20, v24);
  }

  retstr->value.league = 0u;
  retstr->value.imageData = 0u;
  retstr->value.id = 0u;
  retstr->value.name = 0u;
}

uint64_t sub_254FEF67C@<X0>(uint64_t *a1@<X8>)
{
  result = SportsTeam.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_254FEF6A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254FEF6B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FEF6F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WalletOrder.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WalletOrder.productDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WalletOrder.merchant.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_254FEF800@<X0>(uint64_t *a1@<X8>)
{
  result = WalletOrder.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FEF830(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FEF870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WalletOrderShipping.shippingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletOrderShipping(0) + 32);

  return sub_254FDCD30(v3, a1);
}

uint64_t type metadata accessor for WalletOrderShipping(uint64_t a1)
{
  result = qword_27F76CE20;
  if (!qword_27F76CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletOrderShipping.estimatedDeliveryStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletOrderShipping(0) + 36);

  return sub_254FDCD30(v3, a1);
}

uint64_t WalletOrderShipping.estimatedDeliveryEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WalletOrderShipping(0) + 40);

  return sub_254FDCD30(v3, a1);
}

uint64_t WalletOrderShipping.emails.getter()
{
  type metadata accessor for WalletOrderShipping(0);
}

uint64_t sub_254FEFACC@<X0>(uint64_t *a1@<X8>)
{
  result = WalletOrderShipping.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FEFB08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = a1 + *(a3 + 32);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FEFBB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v8 = v5 + *(a4 + 32);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FEFC3C(uint64_t a1)
{
  sub_254FD6F54();
  if (v1 <= 0x3F)
  {
    sub_254FEFD58(319, &qword_27F76CB58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_254FEFD58(319, &qword_27F76CE30, type metadata accessor for Email, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254FEFD58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_254FEFDBC(unsigned __int8 a1, char a2)
{
  v2 = 1685024614;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1685024614;
  switch(v4)
  {
    case 1:
      v5 = 0x6961747265746E65;
      v3 = 0xED0000746E656D6ELL;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C6576617274;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x676E6970706F6873;
      break;
    case 4:
      v5 = 0x616368746C616568;
      v3 = 0xEA00000000006572;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x65636E616E6966;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6961747265746E65;
      v6 = 0xED0000746E656D6ELL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C6576617274;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x676E6970706F6873;
      break;
    case 4:
      v2 = 0x616368746C616568;
      v6 = 0xEA00000000006572;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x65636E616E6966;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254FF2364();
  }

  return v8 & 1;
}

uint64_t sub_254FEFFDC(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746E6F4D7478656ELL;
  }

  else
  {
    v3 = 0x6B6565577478656ELL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000068;
  }

  if (a2)
  {
    v5 = 0x746E6F4D7478656ELL;
  }

  else
  {
    v5 = 0x6B6565577478656ELL;
  }

  if (a2)
  {
    v6 = 0xE900000000000068;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254FF1340(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_254FF0074()
{
  v0 = SoftwareCategory.rawValue.getter();
  v2 = v1;
  v3 = SoftwareCategory.rawValue.getter();
  if (v0 == v3 && v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_254FF1340(v0, v4, v3);
  }

  return v6 & 1;
}

uint64_t sub_254FF00FC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746867696C66;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746867696C66;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C65746F68;
      break;
    case 2:
      v5 = 0x72656E6E6964;
      break;
    case 3:
      sub_254FF1368();
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x656C6369686576;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 2003789939;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C65746F68;
      break;
    case 2:
      v2 = 0x72656E6E6964;
      break;
    case 3:
      v2 = 0x726F70736E617274;
      v6 = 0xEE006E6F69746174;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x656C6369686576;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 2003789939;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254FF1340(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_254FF02AC(char a1, uint64_t a2)
{
  v2 = 7105633;
  if (a1)
  {
    sub_254FF135C();
    if (v3)
    {
      v5 = 7368801;
    }

    else
    {
      v5 = 0x65746973626577;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7105633;
  }

  if (a2)
  {
    sub_254FF135C();
    if (v7)
    {
      v2 = 7368801;
    }

    else
    {
      v2 = 0x65746973626577;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_254FF1340(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_254FF03BC(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_254FF2404();
  a2(v5, a1);
  return sub_254FF2434();
}

uint64_t sub_254FF040C(uint64_t a1, char a2)
{
  sub_254FF1FC4();
}

uint64_t sub_254FF0528(uint64_t a1, char a2)
{
  sub_254FF1FC4();
}

uint64_t sub_254FF0598(uint64_t a1)
{
  SoftwareCategory.rawValue.getter();
  sub_254FF1FC4();
}

uint64_t sub_254FF05F8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_254FF1368();
      break;
    default:
      break;
  }

  sub_254FF1FC4();
}

uint64_t sub_254FF06E0(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_254FF135C();
  }

  sub_254FF1FC4();
}

uint64_t sub_254FF0758(uint64_t a1, char a2)
{
  sub_254FF2404();
  if (a2)
  {
    sub_254FF135C();
  }

  sub_254FF1FC4();

  return sub_254FF2434();
}

uint64_t sub_254FF07FC(uint64_t a1)
{
  sub_254FF2404();
  SoftwareCategory.rawValue.getter();
  sub_254FF1FC4();

  return sub_254FF2434();
}

uint64_t sub_254FF0860(uint64_t a1, char a2)
{
  sub_254FF2404();
  sub_254FF1FC4();

  return sub_254FF2434();
}

uint64_t sub_254FF08E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_254FF2404();
  a3(v6, a2);
  return sub_254FF2434();
}

uint64_t WalletOrderTransaction.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for WalletOrderTransaction(uint64_t a1)
{
  result = qword_27F76CE58;
  if (!qword_27F76CE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalletOrderTransaction.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for WalletOrderTransaction(0) + 28));

  return v1;
}

uint64_t WalletOrderTransaction.category.getter()
{
  result = sub_254FF137C();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_254FF0AD8@<X0>(uint64_t *a1@<X8>)
{
  result = WalletOrderTransaction.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatformDataActions::TransactionMerchantCategory_optional __swiftcall TransactionMerchantCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TransactionMerchantCategory.rawValue.getter()
{
  result = 1685024614;
  switch(*v0)
  {
    case 1:
      result = 0x6961747265746E65;
      break;
    case 2:
      result = 0x6C6576617274;
      break;
    case 3:
      result = 0x676E6970706F6873;
      break;
    case 4:
      result = 0x616368746C616568;
      break;
    case 5:
      result = 0x65636E616E6966;
      break;
    case 6:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254FF0C5C()
{
  result = qword_27F76CE40;
  if (!qword_27F76CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE40);
  }

  return result;
}

uint64_t sub_254FF0D24@<X0>(uint64_t *a1@<X8>)
{
  result = TransactionMerchantCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254FF0D50()
{
  result = qword_27F76CE48;
  if (!qword_27F76CE48)
  {
    sub_254FC5448(&qword_27F76CE50, &qword_254FF4C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CE48);
  }

  return result;
}

uint64_t sub_254FF0DD8(uint64_t a1, uint64_t a2, int *a3)
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
    sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    sub_254FDFC9C();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      sub_254FC0048(&qword_27F76CC88, ",5");
      sub_254FDFC9C();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = sub_254FC0048(&qword_27F76CE38, &qword_254FF4B90);
        v11 = a3[8];
      }
    }

    return sub_254FC5364(a1 + v11, a2, v10);
  }
}

uint64_t sub_254FF0F18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    sub_254FDFC9C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_254FC0048(&qword_27F76CC88, ",5");
      sub_254FDFC9C();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = sub_254FC0048(&qword_27F76CE38, &qword_254FF4B90);
        v11 = a4[8];
      }
    }

    return sub_254FC4BB8(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_254FF1040(uint64_t a1)
{
  sub_254FF1160(319, &qword_27F76CB58, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_254FF1160(319, &qword_27F76CCD8, MEMORY[0x277CBA1B8]);
    if (v2 <= 0x3F)
    {
      sub_254FD6F54();
      if (v3 <= 0x3F)
      {
        sub_254FF1160(319, &qword_27F76CE68, MEMORY[0x277CBA0A0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254FF1160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_254FF21A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionMerchantCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransactionMerchantCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x254FF1308);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254FF1340(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_254FF2364();
}

uint64_t sub_254FF137C()
{

  return type metadata accessor for WalletOrderTransaction(0);
}