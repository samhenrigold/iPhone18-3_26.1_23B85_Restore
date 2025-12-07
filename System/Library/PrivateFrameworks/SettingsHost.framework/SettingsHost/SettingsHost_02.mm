id sub_2659F73A0@<X0>(void *a3@<X8>)
{
  sub_265A1E790();
  v4 = sub_265A1EB70();

  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v4, 0xD000000000000015, 0x8000000265A23DB0, isUniquelyReferenced_nonNull_native);
  v7 = sub_265A1EB70();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v7, 0xD00000000000001FLL, 0x8000000265A23A10, v8);
  v9 = [objc_opt_self() processInfo];
  result = [v9 processName];
  if (result)
  {
    v11 = result;

    v12 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2659F7A80(v11, 0x4E737365636F7270, 0xEB00000000656D61, v12);
    *a3 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2659F751C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002B6E0, qword_265A22508);
  v37 = v4;
  result = sub_265A1F200();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_265A1F3D0();
      sub_265A1EBF0();
      result = sub_265A1F400();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2659F77DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6D8, &qword_265A22500);
  v35 = v4;
  result = sub_265A1F200();
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

      sub_265A1F3D0();
      sub_265A1EBF0();
      result = sub_265A1F400();
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

uint64_t sub_2659F7A80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265A0C9AC(a2, a3);
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
      sub_2659F77DC(v16, a4 & 1);
      v11 = sub_265A0C9AC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_265A1F370();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2659F7D70();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
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

void *sub_2659F7BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002B6E0, qword_265A22508);
  v2 = *v0;
  v3 = sub_265A1F1F0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_2659F7D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6D8, &qword_265A22500);
  v2 = *v0;
  v3 = sub_265A1F1F0();
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

id sub_2659F7EDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_2659F7F28(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_265A0C9AC(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_2659F7D70();
      }
    }

    else
    {
      sub_2659F77DC(v30, v43 & 1);
      v32 = sub_265A0C9AC(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_2659F3AB4(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265A1F370();
  __break(1u);
  return result;
}

uint64_t sub_2659F81C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2659F8224(void *a1, char a2)
{
  if (a2)
  {
    v7 = 0x206D756E45707041;
  }

  else
  {
    v7 = 0x7469746E45707041;
  }

  v2 = [a1 identifier];
  v3 = sub_265A1EBA0();
  v5 = v4;

  MEMORY[0x266765220](v3, v5);

  MEMORY[0x266765220](41, 0xE100000000000000);
  return v7;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2659F8324(uint64_t a1, unsigned int a2)
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

uint64_t sub_2659F836C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2659F83CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_265A1E6D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 attributionBundleIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_265A1EBA0();
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265A225E0;
    *(inited + 32) = v11;
    *(inited + 40) = v13;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_2659F94B8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_265A21A40;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    v15 = sub_2659F94B8(v16);
    swift_setDeallocating();
    sub_2659F9620(v16 + 32);
  }

  v17 = [v2 effectiveBundleIdentifiers];
  v18 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v33 = v17;
  sub_265A1EF10();
  sub_2659F9674(&qword_28156B038, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_265A1EFD0();
  if (v37)
  {
    v32 = v6;
    do
    {
      while (1)
      {
        sub_2659DE79C(&v36, &v34);
        sub_2659F3D98(0, &unk_28156A870, 0x277D237E0);
        if ((swift_dynamicCast() & 1) == 0 || !v35)
        {
          break;
        }

        MEMORY[0x2667652B0]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_265A1ECF0();
        }

        sub_265A1ED20();
        v18 = v38;
        sub_265A1EFD0();
        v6 = v32;
        if (!v37)
        {
          goto LABEL_14;
        }
      }

      sub_265A1EFD0();
    }

    while (v37);
    v6 = v32;
  }

LABEL_14:

  (*(v6 + 8))(v8, v5);
  if (v18 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_265A1F1E0())
  {
    v20 = 0;
    v33 = (v18 & 0xC000000000000001);
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33)
      {
        v22 = v18;
        v23 = MEMORY[0x2667656F0](v20, v18);
      }

      else
      {
        if (v20 >= *(v21 + 16))
        {
          goto LABEL_26;
        }

        v22 = v18;
        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      *&v34 = v15;

      v25 = [v24 bundleIdentifier];
      v26 = sub_265A1EBA0();
      v28 = v27;

      sub_2659F1B74(&v36, v26, v28);

      v15 = v34;
      ++v20;
      v29 = v18 == i;
      v18 = v22;
      if (v29)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  return v15;
}

id sub_2659F8854()
{
  v1 = sub_265A1E6D0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v81 - v6;
  v81 = v0;
  result = [v0 typeSpecificMetadata];
  if (result)
  {
    v9 = result;
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    sub_2659F9674(&qword_28156A860, type metadata accessor for LNActionTypeSpecificMetadataKey, &unk_265A2025C);
    v10 = sub_265A1EAD0();

    if (*(v10 + 16) && (v11 = sub_265A0CA24(*MEMORY[0x277D236F0]), (v12 & 1) != 0))
    {
      sub_2659D9900(*(v10 + 56) + 32 * v11, v96);

      sub_2659D9900(v96, v95);
      sub_2659F3D98(0, &qword_28156A8D0, 0x277D23818);
      if (swift_dynamicCast())
      {
        v86 = v94;
        v13 = [v81 effectiveBundleIdentifiers];
        v14 = MEMORY[0x277D84F90];
        v93 = MEMORY[0x277D84F90];
        sub_265A1EF10();
        sub_2659F9674(&qword_28156B038, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
        sub_265A1EFD0();
        if (v92)
        {
          v88 = v13;
          do
          {
            while (1)
            {
              sub_2659DE79C(&v91, v89);
              sub_2659F3D98(0, &unk_28156A870, 0x277D237E0);
              if ((swift_dynamicCast() & 1) == 0 || !v90)
              {
                break;
              }

              MEMORY[0x2667652B0]();
              if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v87 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_265A1ECF0();
              }

              sub_265A1ED20();
              v14 = v93;
              sub_265A1EFD0();
              v13 = v88;
              if (!v92)
              {
                goto LABEL_30;
              }
            }

            sub_265A1EFD0();
          }

          while (v92);
          v13 = v88;
        }

LABEL_30:

        (*(v2 + 8))(v7, v1);
        if (v14 >> 62)
        {
          goto LABEL_86;
        }

        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v16)
        {
          goto LABEL_87;
        }

        goto LABEL_32;
      }

      sub_2659F3D98(0, &unk_28156A8E0, 0x277D23838);
      if (swift_dynamicCast())
      {
        v86 = v94;
        v15 = [v81 effectiveBundleIdentifiers];
        v14 = MEMORY[0x277D84F90];
        v93 = MEMORY[0x277D84F90];
        sub_265A1EF10();
        sub_2659F9674(&qword_28156B038, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
        sub_265A1EFD0();
        if (v92)
        {
          v88 = v15;
          do
          {
            while (1)
            {
              sub_2659DE79C(&v91, v89);
              sub_2659F3D98(0, &unk_28156A870, 0x277D237E0);
              if ((swift_dynamicCast() & 1) == 0 || !v90)
              {
                break;
              }

              MEMORY[0x2667652B0]();
              if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v87 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_265A1ECF0();
              }

              sub_265A1ED20();
              v14 = v93;
              sub_265A1EFD0();
              v15 = v88;
              if (!v92)
              {
                goto LABEL_55;
              }
            }

            sub_265A1EFD0();
          }

          while (v92);
          v15 = v88;
        }

LABEL_55:

        (*(v2 + 8))(v5, v1);
        if (v14 >> 62)
        {
          v47 = sub_265A1F1E0();
          if (!v47)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v47 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v47)
          {
            goto LABEL_87;
          }
        }

        v48 = 0;
        v85 = v14 & 0xC000000000000001;
        v84 = v14 & 0xFFFFFFFFFFFFFF8;
        v49 = MEMORY[0x277D84F98];
        v83 = v14;
        v82 = v47;
        while (1)
        {
          if (v85)
          {
            v52 = MEMORY[0x2667656F0](v48, v14);
          }

          else
          {
            if (v48 >= *(v84 + 16))
            {
              goto LABEL_82;
            }

            v52 = *(v14 + 8 * v48 + 32);
          }

          v53 = v52;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_81;
          }

          v87 = v48 + 1;

          v54 = [v53 bundleIdentifier];
          v55 = sub_265A1EBA0();
          v57 = v56;

          v88 = v53;
          v58 = [v53 bundleIdentifier];
          if (!v58)
          {
            sub_265A1EBA0();
            v58 = sub_265A1EB70();
          }

          v59 = [v86 mangledTypeNameForBundleIdentifier_];

          v60 = sub_265A1EBA0();
          v62 = v61;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v91 = v49;
          v14 = sub_265A0C9AC(v55, v57);
          v65 = v49[2];
          v66 = (v64 & 1) == 0;
          v67 = v65 + v66;
          if (__OFADD__(v65, v66))
          {
            while (2)
            {
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              v16 = sub_265A1F1E0();
              if (!v16)
              {
LABEL_87:

                v77 = [v81 effectiveBundleIdentifiers];
                v78 = sub_265A1EAC0();

                v79 = v86;
                v80 = [v86 metadataByAddingEffectiveBundleIdentifiers:v77 mangledTypeNameByBundleIdentifier:v78];

                __swift_destroy_boxed_opaque_existential_1(v96);
                __swift_destroy_boxed_opaque_existential_1(v95);
                return v80;
              }

LABEL_32:
              v17 = 0;
              v85 = v14 & 0xC000000000000001;
              v84 = v14 & 0xFFFFFFFFFFFFFF8;
              v18 = MEMORY[0x277D84F98];
              v83 = v14;
              v82 = v16;
LABEL_35:
              if (v85)
              {
                v21 = MEMORY[0x2667656F0](v17, v14);
              }

              else
              {
                if (v17 >= *(v84 + 16))
                {
                  goto LABEL_79;
                }

                v21 = *(v14 + 8 * v17 + 32);
              }

              v22 = v21;
              if (__OFADD__(v17, 1))
              {
                __break(1u);
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
                continue;
              }

              break;
            }

            v87 = v17 + 1;

            v23 = [v22 bundleIdentifier];
            v24 = sub_265A1EBA0();
            v26 = v25;

            v88 = v22;
            v27 = [v22 bundleIdentifier];
            if (!v27)
            {
              sub_265A1EBA0();
              v27 = sub_265A1EB70();
            }

            v28 = [v86 mangledTypeNameForBundleIdentifier_];

            v29 = sub_265A1EBA0();
            v31 = v30;

            v32 = swift_isUniquelyReferenced_nonNull_native();
            *&v91 = v18;
            v14 = sub_265A0C9AC(v24, v26);
            v34 = v18[2];
            v35 = (v33 & 1) == 0;
            v36 = v34 + v35;
            if (__OFADD__(v34, v35))
            {
              goto LABEL_80;
            }

            v37 = v33;
            if (v18[3] >= v36)
            {
              if (v32)
              {
                v40 = v88;
                if ((v33 & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                sub_2659F7BF8();
                v40 = v88;
                if ((v37 & 1) == 0)
                {
                  goto LABEL_48;
                }
              }
            }

            else
            {
              sub_2659F751C(v36, v32);
              v38 = sub_265A0C9AC(v24, v26);
              if ((v37 & 1) != (v39 & 1))
              {
                goto LABEL_90;
              }

              v14 = v38;
              v40 = v88;
              if ((v37 & 1) == 0)
              {
LABEL_48:
                v41 = v91;
                *(v91 + 8 * (v14 >> 6) + 64) |= 1 << v14;
                v42 = (v41[6] + 16 * v14);
                *v42 = v24;
                v42[1] = v26;
                v43 = (v41[7] + 16 * v14);
                *v43 = v29;
                v43[1] = v31;

                v44 = v41[2];
                v45 = __OFADD__(v44, 1);
                v46 = v44 + 1;
                if (v45)
                {
                  goto LABEL_84;
                }

                v41[2] = v46;
                v18 = v41;
                goto LABEL_34;
              }
            }

            v19 = v91;
            v20 = (*(v91 + 56) + 16 * v14);
            *v20 = v29;
            v20[1] = v31;

            v18 = v19;
LABEL_34:
            ++v17;
            v14 = v83;
            if (v87 == v82)
            {
              goto LABEL_87;
            }

            goto LABEL_35;
          }

          v68 = v64;
          if (v49[3] >= v67)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v71 = v88;
              if (v64)
              {
                goto LABEL_58;
              }
            }

            else
            {
              sub_2659F7BF8();
              v71 = v88;
              if (v68)
              {
                goto LABEL_58;
              }
            }
          }

          else
          {
            sub_2659F751C(v67, isUniquelyReferenced_nonNull_native);
            v69 = sub_265A0C9AC(v55, v57);
            if ((v68 & 1) != (v70 & 1))
            {
LABEL_90:
              result = sub_265A1F370();
              __break(1u);
              return result;
            }

            v14 = v69;
            v71 = v88;
            if (v68)
            {
LABEL_58:

              v50 = v91;
              v51 = (*(v91 + 56) + 16 * v14);
              *v51 = v60;
              v51[1] = v62;

              v49 = v50;
              goto LABEL_59;
            }
          }

          v72 = v91;
          *(v91 + 8 * (v14 >> 6) + 64) |= 1 << v14;
          v73 = (v72[6] + 16 * v14);
          *v73 = v55;
          v73[1] = v57;
          v74 = (v72[7] + 16 * v14);
          *v74 = v60;
          v74[1] = v62;

          v75 = v72[2];
          v45 = __OFADD__(v75, 1);
          v76 = v75 + 1;
          if (v45)
          {
            goto LABEL_85;
          }

          v72[2] = v76;
          v49 = v72;
LABEL_59:
          ++v48;
          v14 = v83;
          if (v87 == v82)
          {
            goto LABEL_87;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v96);
      __swift_destroy_boxed_opaque_existential_1(v95);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_2659F94B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
    v3 = sub_265A1F080();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_265A1F3D0();

      sub_265A1EBF0();
      result = sub_265A1F400();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_265A1F340();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2659F9674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2659F96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_265A1E9F0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659F9790, 0, 0);
}

uint64_t sub_2659F9790()
{
  v24 = v0;
  v1 = [*(v0 + 48) identifier];
  v2 = sub_265A1EBA0();
  v4 = v3;

  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v5 = sub_265A1EA20();
  __swift_project_value_buffer(v5, qword_28156B4E8);

  sub_265A1E9E0();
  v6 = sub_265A1EA10();
  v7 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_2659D9320(v9, v8, &v23);
    *(v10 + 12) = 2082;
    v12 = sub_2659D9320(v2, v4, &v23);

    *(v10 + 14) = v12;
    v13 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v6, v7, v13, "Search Items From All Entities", "AppIntent: '%{public}s', Entity: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v11, -1, -1);
    MEMORY[0x266766110](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  (*(v16 + 16))(*(v0 + 72), v14, v15);
  sub_265A1EA60();
  swift_allocObject();
  *(v0 + 88) = sub_265A1EA50();
  (*(v16 + 8))(v14, v15);
  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *v17 = v0;
  v17[1] = sub_2659F9A74;
  v18 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 16);

  return sub_2659FA144(v21, v19, v20, v18, 0);
}

uint64_t sub_2659F9A74()
{

  return MEMORY[0x2822009F8](sub_2659F9B70, 0, 0);
}

uint64_t sub_2659F9B70()
{
  sub_265A0BD44(*(v0 + 88), "Search Items From All Entities");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2659F9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_265A1E9F0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659F9CD4, 0, 0);
}

uint64_t sub_2659F9CD4()
{
  v24 = v0;
  v1 = [*(v0 + 48) identifier];
  v2 = sub_265A1EBA0();
  v4 = v3;

  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v5 = sub_265A1EA20();
  __swift_project_value_buffer(v5, qword_28156B4E8);

  sub_265A1E9E0();
  v6 = sub_265A1EA10();
  v7 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_2659D9320(v9, v8, &v23);
    *(v10 + 12) = 2082;
    v12 = sub_2659D9320(v2, v4, &v23);

    *(v10 + 14) = v12;
    v13 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v6, v7, v13, "Search Items From Suggested Entities", "AppIntent: '%{public}s', Entity: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v11, -1, -1);
    MEMORY[0x266766110](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  (*(v16 + 16))(*(v0 + 72), v14, v15);
  sub_265A1EA60();
  swift_allocObject();
  *(v0 + 88) = sub_265A1EA50();
  (*(v16 + 8))(v14, v15);
  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *v17 = v0;
  v17[1] = sub_2659F9FB8;
  v18 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 16);

  return sub_2659FA144(v21, v19, v20, v18, 1);
}

uint64_t sub_2659F9FB8()
{

  return MEMORY[0x2822009F8](sub_2659FA0B4, 0, 0);
}

uint64_t sub_2659FA0B4()
{
  sub_265A0BD44(*(v0 + 88), "Search Items From Suggested Entities");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2659FA144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1328) = v5;
  *(v6 + 2084) = a5;
  *(v6 + 1320) = a4;
  *(v6 + 1312) = a3;
  *(v6 + 1304) = a2;
  *(v6 + 1296) = a1;
  v7 = sub_265A1E6C0();
  *(v6 + 1336) = v7;
  *(v6 + 1344) = *(v7 - 8);
  *(v6 + 1352) = swift_task_alloc();
  v8 = type metadata accessor for SettingsSearchIndexableItem(0);
  *(v6 + 1360) = v8;
  *(v6 + 1368) = *(v8 - 8);
  *(v6 + 1376) = swift_task_alloc();
  *(v6 + 1384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  *(v6 + 1392) = swift_task_alloc();
  *(v6 + 1400) = swift_task_alloc();
  *(v6 + 1408) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F8, &qword_265A22650);
  *(v6 + 1416) = v9;
  *(v6 + 1424) = *(v9 - 8);
  *(v6 + 1432) = swift_task_alloc();
  *(v6 + 1440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  *(v6 + 1448) = swift_task_alloc();
  *(v6 + 1456) = swift_task_alloc();
  *(v6 + 1464) = swift_task_alloc();
  *(v6 + 1472) = swift_task_alloc();
  *(v6 + 1480) = swift_task_alloc();
  *(v6 + 1488) = swift_task_alloc();
  *(v6 + 1496) = swift_task_alloc();
  *(v6 + 1504) = swift_task_alloc();
  *(v6 + 1512) = swift_task_alloc();
  *(v6 + 1520) = swift_task_alloc();
  v10 = sub_265A1E770();
  *(v6 + 1528) = v10;
  *(v6 + 1536) = *(v10 - 8);
  *(v6 + 1544) = swift_task_alloc();
  *(v6 + 1552) = swift_task_alloc();
  *(v6 + 1560) = swift_task_alloc();
  *(v6 + 1568) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B708, &unk_265A22660);
  *(v6 + 1576) = v11;
  *(v6 + 1584) = *(v11 - 8);
  *(v6 + 1592) = swift_task_alloc();
  v12 = sub_265A1EF70();
  *(v6 + 1600) = v12;
  *(v6 + 1608) = *(v12 - 8);
  *(v6 + 1616) = swift_task_alloc();
  v13 = sub_265A1EF60();
  *(v6 + 1624) = v13;
  *(v6 + 1632) = *(v13 - 8);
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  v14 = sub_265A1E9C0();
  *(v6 + 1656) = v14;
  *(v6 + 1664) = *(v14 - 8);
  *(v6 + 1672) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659FA614, 0, 0);
}

uint64_t sub_2659FA614()
{
  v156 = v0;
  v155 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  v3 = *(v0 + 1656);
  v4 = *(v0 + 1648);
  v5 = *(v0 + 1632);
  v146 = *(v0 + 1624);
  v6 = *(v0 + 1328);
  v7 = [v6 identifier];
  v8 = sub_265A1EBA0();
  v10 = v9;

  v148 = v8;
  *(v0 + 1680) = v8;
  v143 = v10;
  *(v0 + 1688) = v10;
  v11 = swift_allocObject();
  *(v0 + 1696) = v11;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  v138 = v11;
  *(v11 + 64) = -1;
  v12 = [objc_allocWithZone(MEMORY[0x277D23C68]) init];
  *(v0 + 1704) = v12;
  sub_265A1E9B0();
  sub_265A1E980();
  (*(v2 + 8))(v1, v3);
  v13 = objc_allocWithZone(MEMORY[0x277D237C8]);
  v14 = sub_265A1EB70();

  v15 = [v13 initWithContentType_];
  *(v0 + 1712) = v15;

  v141 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v15 preferredExtractionType:1];
  [v12 setExportConfiguration_];

  *v4 = v6;
  (*(v5 + 104))(v4, *MEMORY[0x277D23A40], v146);
  v17 = [v6 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B710, &qword_265A22670);
  sub_265A0C954();
  v18 = sub_265A1EAD0();

  v130 = *MEMORY[0x277D23708];
  if (*(v18 + 16))
  {
    sub_265A0CA28(*MEMORY[0x277D23708]);
    v20 = v19;

    if (v20)
    {
      v21 = *(v0 + 1616);
      v22 = *(v0 + 1608);
      v23 = *(v0 + 1600);
      sub_2659F3D98(0, &qword_28156A890, 0x277D23B90);
      v24 = *(v22 + 104);
      v24(v21, *MEMORY[0x277D23A58], v23);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v25 = *(v0 + 1608);
  v26 = *(v0 + 2084);
  sub_2659F3D98(0, &qword_28156A890, 0x277D23B90);
  v24 = *(v25 + 104);
  if (v26)
  {
    v27 = MEMORY[0x277D23A30];
  }

  else
  {
    v27 = MEMORY[0x277D23A10];
  }

  v24(*(v0 + 1616), *v27, *(v0 + 1600));
LABEL_9:
  *(v0 + 1720) = v24;
  v28 = *(v0 + 1648);
  v29 = *(v0 + 1640);
  v30 = *(v0 + 1624);
  v31 = *(v0 + 1328);
  v32 = *(*(v0 + 1632) + 16);
  *(v0 + 1728) = v32;
  v32(v29, v28, v30);
  v137 = v12;
  v147 = sub_265A1EF80();
  *(v0 + 1736) = v147;
  v33 = [objc_opt_self() policyWithEntityMetadata_];
  *(v0 + 1744) = v33;
  v34 = v143;
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v35 = sub_265A1EAA0();
  *(v0 + 1752) = __swift_project_value_buffer(v35, qword_28156B518);

  v36 = sub_265A1EA80();
  v37 = sub_265A1EF30();

  if (os_log_type_enabled(v36, v37))
  {
    v127 = *(v0 + 1312);
    v38 = v8;
    v39 = v33;
    v40 = *(v0 + 1304);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v150 = v42;
    *v41 = 136446466;
    v43 = v40;
    v33 = v39;
    v8 = v38;
    v34 = v143;
    *(v41 + 4) = sub_2659D9320(v43, v127, &v150);
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_2659D9320(v8, v143, &v150);
    _os_log_impl(&dword_2659CA000, v36, v37, "Making Link Connection to AppExtension for AppIntent: %{public}s, AppEntity %{public}s…", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v42, -1, -1);
    MEMORY[0x266766110](v41, -1, -1);
  }

  *(v0 + 1160) = 0;
  v44 = [v33 connectionWithError_];
  *(v0 + 1760) = v44;
  v45 = *(v0 + 1160);
  if (v44)
  {
    v142 = v44;

    v46 = v45;
    v47 = sub_265A1EA80();
    v48 = sub_265A1EF30();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = *(v0 + 1312);
      v50 = *(v0 + 1304);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v150 = v52;
      *v51 = 136446466;
      *(v51 + 4) = sub_2659D9320(v50, v49, &v150);
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_2659D9320(v148, v34, &v150);
      _os_log_impl(&dword_2659CA000, v47, v48, "Successfully established Link Connection to AppExtension for AppIntent: %{public}s, AppEntity %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v52, -1, -1);
      MEMORY[0x266766110](v51, -1, -1);
    }

    v53 = sub_265A1EA80();
    v54 = sub_265A1EF30();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 1312);
      v56 = *(v0 + 1304);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v150 = v58;
      *v57 = 136446466;
      *(v57 + 4) = sub_2659D9320(v56, v55, &v150);
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_2659D9320(v148, v34, &v150);
      _os_log_impl(&dword_2659CA000, v53, v54, "Performing Entity Query for AppIntent: %{public}s, AppEntity %{public}s…", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v58, -1, -1);
      MEMORY[0x266766110](v57, -1, -1);
    }

    if (*(v0 + 2084))
    {
      goto LABEL_21;
    }

    v59 = [*(v0 + 1328) systemProtocolMetadata];
    v60 = sub_265A1EAD0();

    if (*(v60 + 16))
    {
      sub_265A0CA28(v130);
      v62 = v61;

      if (v62)
      {
LABEL_21:
        v63 = v0 + 80;
        v64 = *(v0 + 1592);
        v65 = *(v0 + 1584);
        v66 = *(v0 + 1576);
        *(v0 + 80) = v0;
        *(v0 + 120) = v0 + 1184;
        *(v0 + 88) = sub_2659FE444;
        swift_continuation_init();
        *(v0 + 392) = v66;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 368));
        sub_2659F3D98(0, &qword_28156A8F0, 0x277D23C50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
        sub_265A1ED80();
        (*(v65 + 32))(boxed_opaque_existential_1, v64, v66);
        *(v0 + 336) = MEMORY[0x277D85DD0];
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_265A0C130;
        *(v0 + 360) = &block_descriptor_11;
        [v142 performConfigurableQuery:v147 completionHandler:v0 + 336];
        (*(v65 + 8))(boxed_opaque_existential_1, v66);
LABEL_31:

        return MEMORY[0x282200938](v63);
      }
    }

    else
    {
    }

    v63 = v0 + 208;
    v89 = *(v0 + 1592);
    v90 = *(v0 + 1584);
    v91 = *(v0 + 1576);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1216;
    *(v0 + 216) = sub_2659FB8FC;
    swift_continuation_init();
    *(v0 + 520) = v91;
    v92 = __swift_allocate_boxed_opaque_existential_1((v0 + 496));
    *(v0 + 1768) = sub_2659F3D98(0, &qword_28156A8F0, 0x277D23C50);
    *(v0 + 1776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_265A1ED80();
    v93 = *(v90 + 32);
    *(v0 + 1784) = v93;
    *(v0 + 1792) = (v90 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v93(v92, v89, v91);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_265A0C130;
    *(v0 + 488) = &block_descriptor_0;
    [v142 performConfigurableQuery:v147 completionHandler:v0 + 464];
    v94 = *(v90 + 8);
    *(v0 + 1800) = v94;
    *(v0 + 1808) = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v94(v92, v91);
    goto LABEL_31;
  }

  v149 = v33;
  v68 = (v0 + 1192);
  v69 = v45;
  v70 = sub_265A1E690();

  swift_willThrow();
  *(v0 + 1176) = v70;
  v71 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_35;
  }

  v72 = *v68;
  if ([*v68 code] != -10814)
  {

LABEL_35:

    v95 = v70;
    v96 = sub_265A1EA80();
    v97 = sub_265A1EF20();

    if (os_log_type_enabled(v96, v97))
    {
      v135 = *(v0 + 1312);
      v98 = *(v0 + 1304);
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *&v150 = v101;
      *v99 = 136446722;
      *(v99 + 4) = sub_2659D9320(v8, v34, &v150);
      *(v99 + 12) = 2082;
      *(v99 + 14) = sub_2659D9320(v98, v135, &v150);
      *(v99 + 22) = 2114;
      v102 = v70;
      v103 = _swift_stdlib_bridgeErrorToNSError();
      *(v99 + 24) = v103;
      *v100 = v103;
      _os_log_impl(&dword_2659CA000, v96, v97, "Unable to form connection for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v99, 0x20u);
      sub_2659DA270(v100, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v100, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v101, -1, -1);
      MEMORY[0x266766110](v99, -1, -1);
    }

    v104 = *(v0 + 1312);
    v105 = *(v0 + 1304);
    v106 = sub_265A1E680();
    sub_265A0BFD4(v138, v105, v104, v8, v34, &v150);
    v140 = v151;
    v145 = v150;
    v133 = v153;
    v136 = v152;
    v132 = v154;
    v107 = [v106 domain];
    v108 = sub_265A1EBA0();
    v129 = v109;
    v131 = v108;

    v128 = [v106 code];
    swift_getErrorValue();
    v110 = sub_265A1F380();
    v126 = v111;
    Current = CFAbsoluteTimeGetCurrent();
    v82 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v114 = *(v82 + 2);
    v113 = *(v82 + 3);
    if (v114 >= v113 >> 1)
    {
      v82 = sub_2659E0698((v113 > 1), v114 + 1, 1, v82);
    }

    v115 = *(v0 + 1648);
    v116 = *(v0 + 1632);
    v117 = *(v0 + 1624);

    (*(v116 + 8))(v115, v117);
    *(v82 + 2) = v114 + 1;
    v118 = &v82[120 * v114];
    v118[32] = 2;
    *(v118 + 56) = v140;
    *(v118 + 40) = v145;
    *(v118 + 9) = v136;
    *(v118 + 10) = v133;
    v118[88] = v132;
    *(v118 + 12) = 1;
    *(v118 + 13) = v131;
    *(v118 + 14) = v129;
    *(v118 + 15) = v128;
    *(v118 + 16) = v110;
    *(v118 + 17) = v126;
    *(v118 + 18) = Current;
    goto LABEL_40;
  }

  v73 = sub_265A1EA80();
  v74 = sub_265A1EF30();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = *(v0 + 1312);
    v76 = *(v0 + 1304);
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v150 = v78;
    *v77 = 136446210;
    *(v77 + 4) = sub_2659D9320(v76, v75, &v150);
    _os_log_impl(&dword_2659CA000, v73, v74, "AppIntent '%{public}s' is from a bundle that is in an offloaded state, skipping (entity).", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x266766110](v78, -1, -1);
    MEMORY[0x266766110](v77, -1, -1);
  }

  sub_265A0BFD4(v138, *(v0 + 1304), *(v0 + 1312), v8, v34, &v150);
  v139 = v151;
  v144 = v150;
  v79 = v153;
  v134 = v152;
  v80 = v154;
  v81 = CFAbsoluteTimeGetCurrent();
  v82 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
  v84 = *(v82 + 2);
  v83 = *(v82 + 3);
  if (v84 >= v83 >> 1)
  {
    v82 = sub_2659E0698((v83 > 1), v84 + 1, 1, v82);
  }

  v85 = *(v0 + 1648);
  v86 = *(v0 + 1632);
  v87 = *(v0 + 1624);

  (*(v86 + 8))(v85, v87);
  *(v82 + 2) = v84 + 1;
  v88 = &v82[120 * v84];
  v88[32] = 0;
  *(v88 + 56) = v139;
  *(v88 + 40) = v144;
  *(v88 + 9) = v134;
  *(v88 + 10) = v79;
  v88[88] = v80;
  *(v88 + 12) = 0x8000000000000000;
  *(v88 + 104) = 0u;
  *(v88 + 120) = 0u;
  *(v88 + 17) = 0;
  *(v88 + 18) = v81;

LABEL_40:
  v119 = *(v0 + 1688);
  v120 = *(v0 + 1680);
  v121 = *(v0 + 1312);
  v122 = *(v0 + 1304);
  v123 = *(v0 + 1296);

  *v123 = v122;
  v123[1] = v121;
  v123[2] = v120;
  v123[3] = v119;
  v123[4] = MEMORY[0x277D84F90];
  v123[5] = v82;

  v124 = *(v0 + 8);

  return v124();
}

uint64_t sub_2659FB8FC()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1816) = v1;
  if (v1)
  {
    v2 = sub_265A03F84;
  }

  else
  {
    v2 = sub_2659FBA38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2659FBA38()
{
  v420 = v0;
  v419 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1216);
  *(v0 + 1832) = v1;

  v2 = v1;
  v3 = sub_265A1EA80();
  v4 = sub_265A1EF30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1688);
    v6 = *(v0 + 1680);
    v7 = *(v0 + 1312);
    v8 = *(v0 + 1304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v414 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2659D9320(v8, v7, &v414);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_2659D9320(v6, v5, &v414);
    _os_log_impl(&dword_2659CA000, v3, v4, "…successfully executed Entity Query for AppIntent: %{public}s, AppEntity %{public}s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v10, -1, -1);
    MEMORY[0x266766110](v9, -1, -1);
  }

  v11 = [v2 value];
  v12 = [v11 value];

  sub_265A1F000();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B718, &qword_265A22678);
  if (!swift_dynamicCast())
  {
    sub_265A0CAD0();
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();

    v408 = MEMORY[0x277D84F90];
    v403 = MEMORY[0x277D84F90];
LABEL_9:
    v26 = (v0 + 1280);
    *(v0 + 1248) = v24;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v28 = *v26;
      v29 = [*v26 domain];
      v30 = sub_265A1EBA0();
      v32 = v31;

      if (v30 == sub_265A1EBA0() && v32 == v33)
      {

LABEL_104:

        v238 = v28;
        v239 = sub_265A1EA80();
        v240 = sub_265A1EF30();

        if (os_log_type_enabled(v239, v240))
        {
          v241 = *(v0 + 1688);
          v242 = *(v0 + 1680);
          v397 = *(v0 + 1312);
          v243 = *(v0 + 1304);
          v244 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          *&v414 = v246;
          *v244 = 136446722;
          *(v244 + 4) = sub_2659D9320(v242, v241, &v414);
          *(v244 + 12) = 2082;
          *(v244 + 14) = sub_2659D9320(v243, v397, &v414);
          *(v244 + 22) = 2114;
          *(v244 + 24) = v238;
          *v245 = v238;
          v247 = v238;
          _os_log_impl(&dword_2659CA000, v239, v240, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v244, 0x20u);
          sub_2659DA270(v245, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v245, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v246, -1, -1);
          MEMORY[0x266766110](v244, -1, -1);
        }

        v248 = *(v0 + 1696);
        v249 = *(v0 + 1688);
        v250 = *(v0 + 1680);
        v251 = *(v0 + 1312);
        v252 = *(v0 + 1304);
        v253 = v238;
        sub_265A0BFD4(v248, v252, v251, v250, v249, &v414);
        v392 = v415;
        v398 = v414;
        v384 = v416;
        v381 = v417;
        v374 = v418;
        v254 = [v253 domain];
        v255 = sub_265A1EBA0();
        v364 = v256;
        v367 = v255;

        v361 = [v253 code];
        v257 = [v253 localizedDescription];

        v258 = sub_265A1EBA0();
        v354 = v259;
        v358 = v258;

        Current = CFAbsoluteTimeGetCurrent();
        v261 = v408;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v261 = sub_2659E0698(0, *(v408 + 2) + 1, 1, v408);
        }

        v263 = *(v261 + 2);
        v262 = *(v261 + 3);
        if (v263 >= v262 >> 1)
        {
          v408 = sub_2659E0698((v262 > 1), v263 + 1, 1, v261);
        }

        else
        {
          v408 = v261;
        }

        v264 = *(v0 + 1760);
        v265 = *(v0 + 1744);
        v266 = *(v0 + 1712);
        v267 = *(v0 + 1704);
        v268 = *(v0 + 1648);
        v269 = *(v0 + 1632);
        v270 = *(v0 + 1624);

        (*(v269 + 8))(v268, v270);
        *(v408 + 2) = v263 + 1;
        v271 = &v408[120 * v263];
        v271[32] = 0;
        *(v271 + 56) = v392;
        *(v271 + 40) = v398;
        *(v271 + 9) = v384;
        *(v271 + 10) = v381;
        v271[88] = v374;
        *(v271 + 12) = 2;
        *(v271 + 13) = v367;
        *(v271 + 14) = v364;
        *(v271 + 15) = v361;
        *(v271 + 16) = v358;
        *(v271 + 17) = v354;
        *(v271 + 18) = Current;

        goto LABEL_133;
      }

      v237 = sub_265A1F340();

      if (v237)
      {
        goto LABEL_104;
      }
    }

    v273 = v24;
    v274 = sub_265A1EA80();
    v275 = sub_265A1EF20();

    if (os_log_type_enabled(v274, v275))
    {
      v276 = *(v0 + 1688);
      v277 = *(v0 + 1680);
      v399 = *(v0 + 1312);
      v393 = *(v0 + 1304);
      v278 = swift_slowAlloc();
      v279 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      *&v414 = v280;
      *v278 = 136446722;
      *(v278 + 4) = sub_2659D9320(v277, v276, &v414);
      *(v278 + 12) = 2082;
      *(v278 + 14) = sub_2659D9320(v393, v399, &v414);
      *(v278 + 22) = 2114;
      v281 = v24;
      v282 = _swift_stdlib_bridgeErrorToNSError();
      *(v278 + 24) = v282;
      *v279 = v282;
      _os_log_impl(&dword_2659CA000, v274, v275, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v278, 0x20u);
      sub_2659DA270(v279, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v279, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v280, -1, -1);
      MEMORY[0x266766110](v278, -1, -1);
    }

    v283 = *(v0 + 1696);
    v284 = *(v0 + 1688);
    v285 = *(v0 + 1680);
    v286 = *(v0 + 1312);
    v287 = *(v0 + 1304);
    v288 = sub_265A1E680();
    sub_265A0BFD4(v283, v287, v286, v285, v284, &v414);
    v394 = v415;
    v400 = v414;
    v385 = v416;
    v382 = v417;
    v375 = v418;
    v289 = [v288 domain];
    v290 = sub_265A1EBA0();
    v365 = v291;
    v368 = v290;

    v362 = v288;
    v359 = [v288 code];
    swift_getErrorValue();
    v355 = sub_265A1F380();
    v351 = v292;
    v293 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v408 = sub_2659E0698(0, *(v408 + 2) + 1, 1, v408);
    }

    v295 = *(v408 + 2);
    v294 = *(v408 + 3);
    if (v295 >= v294 >> 1)
    {
      v408 = sub_2659E0698((v294 > 1), v295 + 1, 1, v408);
    }

    v296 = *(v0 + 1760);
    v297 = *(v0 + 1744);
    v298 = *(v0 + 1712);
    v299 = *(v0 + 1704);
    v300 = *(v0 + 1648);
    v301 = *(v0 + 1632);
    v302 = *(v0 + 1624);

    (*(v301 + 8))(v300, v302);
    *(v408 + 2) = v295 + 1;
    v303 = &v408[120 * v295];
    v303[32] = 2;
    *(v303 + 56) = v394;
    *(v303 + 40) = v400;
    *(v303 + 9) = v385;
    *(v303 + 10) = v382;
    v303[88] = v375;
    *(v303 + 12) = 2;
    *(v303 + 13) = v368;
    *(v303 + 14) = v365;
    *(v303 + 15) = v359;
    *(v303 + 16) = v355;
    *(v303 + 17) = v351;
    *(v303 + 18) = v293;
    goto LABEL_133;
  }

  v13 = *(v0 + 1272);
  *(v0 + 1840) = v13;

  v14 = sub_265A1EA80();
  v15 = sub_265A1EF30();

  v16 = v13 >> 62;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v414 = v18;
    *v17 = 134349570;
    v402 = v18;
    if (v16)
    {
      v19 = sub_265A1F1E0();
    }

    else
    {
      v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = *(v0 + 1688);
    v21 = *(v0 + 1680);
    v22 = *(v0 + 1312);
    v23 = *(v0 + 1304);
    *(v17 + 4) = v19;

    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2659D9320(v23, v22, &v414);
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_2659D9320(v21, v20, &v414);
    _os_log_impl(&dword_2659CA000, v14, v15, "Begin processing %{public}ld Link Entity Instances for AppIntent: %{public}s, AppEntity %{public}s…", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v402, -1, -1);
    MEMORY[0x266766110](v17, -1, -1);
  }

  else
  {
  }

  *(v0 + 1848) = v13;
  if (v16)
  {
    goto LABEL_128;
  }

  v34 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1856) = v34;
  if (v34)
  {
    do
    {
      v35 = 0;
      v331 = (v0 + 584);
      v334 = (v0 + 808);
      v396 = (v0 + 1232);
      v363 = (v0 + 633);
      v332 = (v0 + 857);
      v333 = (v0 + 801);
      v335 = (v0 + 1984);
      v336 = (v0 + 1153);
      v337 = (v0 + 2047);
      v338 = (v0 + 2040);
      v360 = (v0 + 2068);
      v408 = MEMORY[0x277D84F90];
      v36 = MEMORY[0x277D84F90];
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        *(v0 + 1880) = v37;
        *(v0 + 1872) = v36;
        *(v0 + 1864) = v408;
        v38 = *(v0 + 1848);
        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x2667656F0](v35, *(v0 + 1840));
        }

        else
        {
          if (v35 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }

          v39 = *(*(v0 + 1840) + 8 * v35 + 32);
        }

        v40 = v39;
        *(v0 + 1888) = v39;
        *(v0 + 1896) = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v41 = [v39 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (!swift_dynamicCast())
        {
          v50 = v37;
          sub_265A0CAD0();
          v51 = swift_allocError();
          *v52 = 1;
          swift_willThrow();
          *v396 = v51;
          v387 = v51;
          v53 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          v403 = v36;
          if (!swift_dynamicCast())
          {
            goto LABEL_111;
          }

          if (*(v0 + 2082) == 1)
          {

            v54 = sub_265A1EA80();
            v64 = sub_265A1EF20();

            if (!os_log_type_enabled(v54, v64))
            {
              goto LABEL_17;
            }

            v65 = *(v0 + 1688);
            v66 = *(v0 + 1680);
            v378 = *(v0 + 1312);
            v67 = *(v0 + 1304);
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *&v414 = v60;
            *v59 = 136446466;
            *(v59 + 4) = sub_2659D9320(v66, v65, &v414);
            *(v59 + 12) = 2082;
            *(v59 + 14) = sub_2659D9320(v67, v378, &v414);
            v61 = v64;
            v62 = v54;
            v63 = "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.";
LABEL_37:
            _os_log_impl(&dword_2659CA000, v62, v61, v63, v59, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v60, -1, -1);
            MEMORY[0x266766110](v59, -1, -1);

            v36 = v403;
          }

          else
          {
            if (*(v0 + 2082))
            {
LABEL_111:
              v272 = *(v0 + 1832);

              v24 = v51;
              goto LABEL_9;
            }

            v54 = sub_265A1EA80();
            v55 = sub_265A1EF20();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = *(v0 + 1688);
              v57 = *(v0 + 1680);
              v377 = *(v0 + 1312);
              v58 = *(v0 + 1304);
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              *&v414 = v60;
              *v59 = 136446466;
              *(v59 + 4) = sub_2659D9320(v57, v56, &v414);
              *(v59 + 12) = 2082;
              *(v59 + 14) = sub_2659D9320(v58, v377, &v414);
              v61 = v55;
              v62 = v54;
              v63 = "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.";
              goto LABEL_37;
            }

LABEL_17:
          }

          v37 = v50;

          goto LABEL_19;
        }

        v42 = *(v0 + 1256);
        *(v0 + 1904) = v42;
        v43 = swift_allocObject();
        *(v0 + 1912) = v43;
        *(v43 + 16) = 0u;
        *(v43 + 32) = 0u;
        *(v43 + 48) = 0u;
        *(v43 + 64) = -1;
        v44 = [v40 displayRepresentation];
        *(v0 + 1920) = v44;
        if (!v44)
        {
          v404 = v36;
          sub_265A0C1E0(v43, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v42, v0 + 528);
          v379 = *(v0 + 544);
          v388 = *(v0 + 528);
          v68 = *(v0 + 560);
          v69 = *(v0 + 568);
          v70 = *(v0 + 576);
          v71 = CFAbsoluteTimeGetCurrent();
          *v360 = *(v0 + 577);
          *(v0 + 2071) = *(v0 + 580);
          *v363 = *(v0 + 2033);
          *(v0 + 636) = *(v0 + 2036);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v408 = sub_2659E0698(0, *(v408 + 2) + 1, 1, v408);
          }

          v72 = v408;
          v74 = *(v408 + 2);
          v73 = *(v408 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = sub_2659E0698((v73 > 1), v74 + 1, 1, v408);
          }

          v408 = v72;
          *(v72 + 2) = v74 + 1;
          v75 = &v72[120 * v74];
          v75[32] = 2;
          v76 = *v360;
          *(v75 + 9) = *(v0 + 2071);
          *(v75 + 33) = v76;
          *(v75 + 56) = v379;
          *(v75 + 40) = v388;
          *(v75 + 9) = v68;
          *(v75 + 10) = v69;
          v75[88] = v70;
          v77 = *v363;
          *(v75 + 23) = *(v0 + 636);
          *(v75 + 89) = v77;
          *(v75 + 12) = 0x8000000000000001;
          *(v75 + 104) = 0u;
          *(v75 + 120) = 0u;
          *(v75 + 17) = 0;
          *(v75 + 18) = v71;

          v36 = v404;
          goto LABEL_19;
        }

        v45 = [v40 exportedContent];
        if (!v45)
        {
          v78 = *(*(v0 + 1536) + 56);
          v78(*(v0 + 1520), 1, 1, *(v0 + 1528));
LABEL_46:
          *(v0 + 1928) = v78;
          sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
          v85 = [v40 exportedContent];
          if (!v85)
          {
            goto LABEL_123;
          }

          v86 = v85;
          v87 = [v85 content];

          v88 = [v87 data];
          v89 = sub_265A1E780();
          v91 = v90;

          v92 = v91 >> 62;
          if ((v91 >> 62) > 1)
          {
            if (v92 != 2)
            {
              goto LABEL_121;
            }

            v93 = *(v89 + 16);
            v94 = *(v89 + 24);
          }

          else
          {
            if (!v92)
            {
              if ((v91 & 0xFF000000000000) == 0)
              {
                goto LABEL_121;
              }

LABEL_55:
              v95 = *(v0 + 1536);
              v96 = *(v0 + 1528);
              v97 = *(v0 + 1504);
              v98 = *(v0 + 1496);
              v78(v98, 1, 1, v96);
              sub_265A1E700();
              sub_265A0CB94(v89, v91);
              sub_2659DA270(v98, &qword_28002B700, &qword_265A22658);
              v409 = *(v95 + 48);
              v99 = v409(v97, 1, v96);
              v84 = (v0 + 1504);
              if (v99 == 1)
              {
                sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
LABEL_123:
                v413 = *(v0 + 1760);
                v305 = *(v0 + 1488);
                v306 = *(v0 + 1432);
                v307 = *(v0 + 1424);
                v308 = *(v0 + 1416);
                *(v0 + 16) = v0;
                *(v0 + 56) = v305;
                *(v0 + 24) = sub_265A00F8C;
                swift_continuation_init();
                *(v0 + 328) = v308;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
                *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
                sub_265A1ED80();
                (*(v307 + 32))(boxed_opaque_existential_1, v306, v308);
                *(v0 + 272) = MEMORY[0x277D85DD0];
                *(v0 + 280) = 1107296256;
                *(v0 + 288) = sub_265A0C3A0;
                *(v0 + 296) = &block_descriptor_8;
                [v413 fetchEntityURL:v42 completionHandler:?];
                (*(v307 + 8))(boxed_opaque_existential_1, v308);
                v310 = v0 + 16;

                return MEMORY[0x282200938](v310);
              }

              goto LABEL_56;
            }

            v93 = v89;
            v94 = v89 >> 32;
          }

          if (v93 == v94)
          {
LABEL_121:
            sub_265A0CB94(v89, v91);
            goto LABEL_123;
          }

          goto LABEL_55;
        }

        v46 = v45;
        v47 = [v45 content];

        v48 = [v47 fileURL];
        if (v48)
        {
          sub_265A1E730();

          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v79 = *(v0 + 1536);
        v80 = *(v0 + 1528);
        v81 = *(v0 + 1520);
        v82 = *(v0 + 1512);
        v78 = *(v79 + 56);
        v78(v82, v49, 1, v80);
        sub_265A0CB24(v82, v81);
        v409 = *(v79 + 48);
        v83 = v409(v81, 1, v80);
        v84 = (v0 + 1520);
        if (v83 == 1)
        {
          goto LABEL_46;
        }

LABEL_56:
        v100 = *(v0 + 1568);
        v101 = *(v0 + 1552);
        v102 = *(v0 + 1544);
        v103 = *(v0 + 1536);
        v104 = *(v0 + 1528);
        v105 = *(v0 + 1320);
        v370 = *(v103 + 32);
        v370(v100, *v84, v104);
        v106 = *(v103 + 16);
        v106(v101, v100, v104);
        v389 = v106;
        v106(v102, v100, v104);
        v107 = *(v105 + 16);

        if (v107)
        {
          v108 = 0;
          while (1)
          {
            v109 = *(v0 + 1544);
            v110 = *(v0 + 1528);
            v111 = *(v0 + 1464);
            v112 = *(v0 + 1320) + v108;
            v113 = *(v112 + 32);

            v113(v109);

            if (v409(v111, 1, v110) != 1)
            {
              break;
            }

            sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
            v108 += 16;
            if (!--v107)
            {
              goto LABEL_60;
            }
          }

          v116 = *(v0 + 1552);
          v117 = *(v0 + 1536);
          v118 = *(v0 + 1528);
          v119 = *(v0 + 1456);
          v120 = *(v0 + 1448);
          sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
          v121 = *(v112 + 32);

          v121(v116);
          v114 = *(v117 + 8);
          v114(v116, v118);

          sub_265A0CBE8(v119, v120, &qword_28002B700, &qword_265A22658);
          if (v409(v120, 1, v118) == 1)
          {
            v310 = (v114)(*(v0 + 1544), *(v0 + 1528));
            __break(1u);
            return MEMORY[0x282200938](v310);
          }

          v122 = *(v0 + 1456);
          v370(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
          sub_2659DA270(v122, &qword_28002B700, &qword_265A22658);
          v115 = 0;
        }

        else
        {
LABEL_60:
          v114 = *(*(v0 + 1536) + 8);
          v114(*(v0 + 1552), *(v0 + 1528));
          v115 = 1;
        }

        v380 = v114;
        v123 = *(v0 + 1544);
        v124 = *(v0 + 1528);
        v125 = *(v0 + 1472);
        v78(v125, v115, 1, v124);

        v114(v123, v124);
        if (v409(v125, 1, v124) == 1)
        {
          v126 = *(v0 + 1568);
          v127 = *(v0 + 1560);
          v128 = *(v0 + 1528);
          sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
          v389(v127, v126, v128);
          v129 = *(v0 + 1864);
        }

        else
        {
          v130 = *(v0 + 1912);
          v131 = *(v0 + 1904);
          v132 = *(v0 + 1688);
          v133 = *(v0 + 1680);
          v134 = *(v0 + 1312);
          v135 = *(v0 + 1304);
          v370(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
          sub_265A0C1E0(v130, v135, v134, v133, v132, v131, v334);
          *v371 = *(v0 + 824);
          v410 = *v334;
          v136 = *(v0 + 840);
          v137 = *(v0 + 848);
          v138 = *(v0 + 856);
          v139 = CFAbsoluteTimeGetCurrent();
          *v338 = *(v0 + 2054);
          *(v0 + 2043) = *(v0 + 2057);
          *v337 = *(v0 + 2061);
          *(v0 + 2050) = *(v0 + 2064);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = *(v0 + 1864);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v129 = sub_2659E0698(0, *(v129 + 2) + 1, 1, *(v0 + 1864));
          }

          v142 = *(v129 + 2);
          v141 = *(v129 + 3);
          if (v142 >= v141 >> 1)
          {
            v129 = sub_2659E0698((v141 > 1), v142 + 1, 1, v129);
          }

          *(v129 + 2) = v142 + 1;
          v143 = &v129[120 * v142];
          v143[32] = 1;
          v144 = *v338;
          *(v143 + 9) = *(v0 + 2043);
          *(v143 + 33) = v144;
          *(v143 + 56) = *v371;
          *(v143 + 40) = v410;
          *(v143 + 9) = v136;
          *(v143 + 10) = v137;
          v143[88] = v138;
          v145 = *v337;
          *(v143 + 23) = *(v0 + 2050);
          *(v143 + 89) = v145;
          *(v143 + 6) = xmmword_265A22600;
          *(v143 + 7) = 0u;
          *(v143 + 8) = 0u;
          *(v143 + 18) = v139;
        }

        v146 = [*(v0 + 1920) image];
        if (v146 && (v147 = v146, sub_265A1110C(v0 + 1096), v147, *(v0 + 1104)))
        {
          v372 = *(v0 + 1104);
          v356 = *(v0 + 1096);
          v352 = *(v0 + 1112);
        }

        else
        {
          sub_265A1CF6C(v0 + 1128);
          if (!*(v0 + 1136))
          {
            v412 = v129;
            v207 = *(v0 + 1904);
            v208 = *(v0 + 1328);

            v209 = v207;
            v210 = sub_265A1EA80();
            v211 = sub_265A1EF30();

            if (os_log_type_enabled(v210, v211))
            {
              v373 = *(v0 + 1904);
              v212 = *(v0 + 1328);
              v406 = *(v0 + 1312);
              v390 = *(v0 + 1304);
              v213 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              v215 = swift_slowAlloc();
              *&v414 = v215;
              *v213 = 136446979;
              v216 = [v212 identifier];
              v217 = sub_265A1EBA0();
              v219 = v218;

              v220 = sub_2659D9320(v217, v219, &v414);

              *(v213 + 4) = v220;
              *(v213 + 12) = 2160;
              *(v213 + 14) = 1752392040;
              *(v213 + 22) = 2113;
              v221 = [v373 identifier];
              *(v213 + 24) = v221;
              *v214 = v221;
              *(v213 + 32) = 2082;
              *(v213 + 34) = sub_2659D9320(v390, v406, &v414);
              _os_log_impl(&dword_2659CA000, v210, v211, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v213, 0x2Au);
              sub_2659DA270(v214, &qword_28002B678, &unk_265A21AC0);
              MEMORY[0x266766110](v214, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x266766110](v215, -1, -1);
              MEMORY[0x266766110](v213, -1, -1);
            }

            sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
            v391 = *(v0 + 656);
            v407 = *(v0 + 640);
            v222 = *(v0 + 672);
            v223 = *(v0 + 680);
            v224 = *(v0 + 688);
            v225 = CFAbsoluteTimeGetCurrent();
            *v333 = *(v0 + 1114);
            *(v0 + 804) = *(v0 + 1117);
            *v332 = *(v0 + 1121);
            *(v0 + 860) = *(v0 + 1124);
            v226 = v412;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v226 = sub_2659E0698(0, *(v412 + 2) + 1, 1, v412);
            }

            v228 = *(v226 + 2);
            v227 = *(v226 + 3);
            v353 = v224;
            if (v228 >= v227 >> 1)
            {
              v226 = sub_2659E0698((v227 > 1), v228 + 1, 1, v226);
            }

            v229 = *(v0 + 1920);
            v230 = *(v0 + 1888);
            v231 = *(v0 + 1568);
            v232 = *(v0 + 1560);
            v233 = *(v0 + 1528);

            v380(v232, v233);
            v380(v231, v233);
            *(v226 + 2) = v228 + 1;
            v408 = v226;
            v234 = &v226[120 * v228];
            v234[32] = 2;
            v235 = *v333;
            *(v234 + 9) = *(v0 + 804);
            *(v234 + 33) = v235;
            *(v234 + 56) = v391;
            *(v234 + 40) = v407;
            *(v234 + 9) = v222;
            *(v234 + 10) = v223;
            v234[88] = v353;
            v236 = *v332;
            *(v234 + 23) = *(v0 + 860);
            *(v234 + 89) = v236;
            *(v234 + 6) = xmmword_265A22620;
            *(v234 + 7) = 0u;
            *(v234 + 8) = 0u;
            *(v234 + 18) = v225;

            v37 = *(v0 + 1880);
            v36 = *(v0 + 1872);
            goto LABEL_19;
          }

          v372 = *(v0 + 1136);
          v356 = *(v0 + 1128);
          v352 = *(v0 + 1144);
          sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v331);
          v349 = *(v0 + 600);
          v411 = *v331;
          v148 = *(v0 + 616);
          v149 = *(v0 + 624);
          v150 = *(v0 + 632);
          v151 = CFAbsoluteTimeGetCurrent();
          *v336 = *(v0 + 1991);
          *(v0 + 1156) = *(v0 + 1994);
          *v335 = *(v0 + 1998);
          *(v0 + 1987) = *(v0 + 2001);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_2659E0698(0, *(v129 + 2) + 1, 1, v129);
          }

          v153 = *(v129 + 2);
          v152 = *(v129 + 3);
          if (v153 >= v152 >> 1)
          {
            v129 = sub_2659E0698((v152 > 1), v153 + 1, 1, v129);
          }

          *(v129 + 2) = v153 + 1;
          v154 = &v129[120 * v153];
          v154[32] = 1;
          v155 = *v336;
          *(v154 + 9) = *(v0 + 1156);
          *(v154 + 33) = v155;
          *(v154 + 56) = v349;
          *(v154 + 40) = v411;
          *(v154 + 9) = v148;
          *(v154 + 10) = v149;
          v154[88] = v150;
          v156 = *v335;
          *(v154 + 23) = *(v0 + 1987);
          *(v154 + 89) = v156;
          *(v154 + 6) = xmmword_265A22610;
          *(v154 + 7) = 0u;
          *(v154 + 8) = 0u;
          *(v154 + 18) = v151;
        }

        v157 = [*(v0 + 1920) subtitle];
        if (v157)
        {
          v158 = v157;
          v159 = [v157 localizedStringResource];
          if (!v159)
          {
            return sub_265A1F1C0();
          }

          v160 = v159;
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v160;
          v161 = v160;
          sub_265A1E6A0();

          v162 = 0;
        }

        else
        {
          v162 = 1;
        }

        v163 = *(v0 + 1920);
        v164 = *(v0 + 1904);
        v165 = *(*(v0 + 1344) + 56);
        (v165)(*(v0 + 1408), v162, 1, *(v0 + 1336));
        v166 = [v164 identifier];
        v167 = [v166 instanceIdentifier];

        v168 = sub_265A1EBA0();
        v350 = v169;

        v170 = [v163 title];
        v171 = [v170 localizedStringResource];
        if (!v171)
        {
          return sub_265A1F1C0();
        }

        v172 = v171;
        v408 = v129;
        v173 = *(v0 + 1920);
        v174 = *(v0 + 1408);
        v175 = *(v0 + 1400);
        v176 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        *(v0 + 888) = v176;
        *(v0 + 864) = v172;
        v177 = v172;
        sub_265A1E6A0();

        sub_265A0CBE8(v174, v175, &qword_28002B6F0, &qword_265A21110);
        v178 = [v173 synonyms];
        if (v178)
        {
          v179 = v178;
          sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
          sub_265A1ECC0();

          v180 = sub_265A0C54C();
        }

        else
        {
          v180 = MEMORY[0x277D84F90];
        }

        v181 = [*(v0 + 1920) descriptionText];
        v347 = v168;
        v348 = v165;
        v346 = v180;
        if (v181)
        {
          v182 = v181;
          v183 = [v181 localizedStringResource];
          if (!v183)
          {
            return sub_265A1F1C0();
          }

          *(v0 + 920) = v176;
          *(v0 + 896) = v183;
          v184 = v183;
          sub_265A1E6A0();
        }

        v185 = *(v0 + 1560);
        v186 = *(v0 + 1528);
        v344 = *(v0 + 1400);
        v342 = *(v0 + 1688);
        v343 = *(v0 + 1392);
        v187 = *(v0 + 1384);
        v345 = *(v0 + 1376);
        v188 = *(v0 + 1360);
        v340 = *(v0 + 1680);
        v341 = *(v0 + 1352);
        v189 = *(v0 + 1344);
        v190 = *(v0 + 1336);
        v191 = *(v0 + 1312);
        v339 = *(v0 + 1304);
        v348();
        v389(&v187[v188[11]], v185, v186);
        v192 = v188[8];
        (v348)(&v187[v192], 1, 1, v190);
        v193 = v188[10];
        (v348)(&v187[v193], 1, 1, v190);
        *v187 = v339;
        *(v187 + 1) = v191;
        *(v187 + 2) = v340;
        *(v187 + 3) = v342;
        *(v187 + 4) = v347;
        *(v187 + 5) = v350;
        (*(v189 + 32))(&v187[v188[7]], v341, v190);

        sub_2659D9AD0(v344, &v187[v192]);
        *&v187[v188[9]] = v346;
        sub_2659D9AD0(v343, &v187[v193]);
        v194 = &v187[v188[12]];
        *v194 = v356;
        *(v194 + 1) = v372;
        v194[16] = v352 & 1;
        v194[17] = HIBYTE(v352) & 1;
        sub_2659DE470(v187, v345);
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v196 = *(v0 + 1880);
        if ((v195 & 1) == 0)
        {
          v196 = sub_2659E0670(0, v196[2] + 1, 1, v196);
        }

        v198 = v196[2];
        v197 = v196[3];
        if (v198 >= v197 >> 1)
        {
          v405 = sub_2659E0670((v197 > 1), v198 + 1, 1, v196);
        }

        else
        {
          v405 = v196;
        }

        v199 = *(v0 + 1904);
        v200 = *(v0 + 1888);
        v201 = *(v0 + 1568);
        v202 = *(v0 + 1560);
        v203 = *(v0 + 1528);
        v204 = *(v0 + 1408);
        v357 = *(v0 + 1384);
        v205 = *(v0 + 1376);
        v206 = *(v0 + 1368);

        sub_2659DA270(v204, &qword_28002B6F0, &qword_265A21110);
        v380(v202, v203);
        v380(v201, v203);
        v36 = v405;
        v405[2] = v198 + 1;
        sub_265A0CC50(v205, v405 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v198);
        sub_2659DCF64(v357);

        v37 = v405;
LABEL_19:
        v35 = *(v0 + 1896);
        if (v35 == *(v0 + 1856))
        {
          goto LABEL_130;
        }
      }

      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v311 = sub_265A1F1E0();
      *(v0 + 1856) = v311;
    }

    while (v311);
  }

  v36 = MEMORY[0x277D84F90];
  v408 = MEMORY[0x277D84F90];
LABEL_130:

  v312 = sub_265A1EA80();
  v313 = sub_265A1EF30();

  v314 = os_log_type_enabled(v312, v313);
  v315 = *(v0 + 1832);
  v316 = *(v0 + 1760);
  v395 = *(v0 + 1744);
  v317 = *(v0 + 1736);
  v401 = *(v0 + 1704);
  v318 = *(v0 + 1648);
  v319 = *(v0 + 1632);
  v320 = *(v0 + 1624);
  v403 = v36;
  if (v314)
  {
    v386 = *(v0 + 1648);
    v321 = *(v0 + 1312);
    v383 = *(v0 + 1624);
    v322 = *(v0 + 1304);
    v376 = *(v0 + 1712);
    v369 = *(v0 + 1832);
    v323 = swift_slowAlloc();
    v366 = v317;
    v324 = swift_slowAlloc();
    *&v414 = v324;
    *v323 = 136446466;
    *(v323 + 4) = sub_2659D9320(v322, v321, &v414);
    *(v323 + 12) = 2050;
    *(v323 + 14) = v36[2];

    _os_log_impl(&dword_2659CA000, v312, v313, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v323, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v324);
    MEMORY[0x266766110](v324, -1, -1);
    MEMORY[0x266766110](v323, -1, -1);

    (*(v319 + 8))(v386, v383);
  }

  else
  {

    (*(v319 + 8))(v318, v320);
  }

LABEL_133:
  v325 = *(v0 + 1688);
  v326 = *(v0 + 1680);
  v327 = *(v0 + 1312);
  v328 = *(v0 + 1304);
  v329 = *(v0 + 1296);

  *v329 = v328;
  v329[1] = v327;
  v329[2] = v326;
  v329[3] = v325;
  v329[4] = v403;
  v329[5] = v408;

  v330 = *(v0 + 8);

  return v330();
}

uint64_t sub_2659FE444()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1824) = v1;
  if (v1)
  {
    v2 = sub_265A08488;
  }

  else
  {
    v2 = sub_2659FE580;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2659FE580()
{
  v420 = v0;
  v419 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1184);
  *(v0 + 1832) = v1;

  v2 = v1;
  v3 = sub_265A1EA80();
  v4 = sub_265A1EF30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1688);
    v6 = *(v0 + 1680);
    v7 = *(v0 + 1312);
    v8 = *(v0 + 1304);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v414 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2659D9320(v8, v7, &v414);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_2659D9320(v6, v5, &v414);
    _os_log_impl(&dword_2659CA000, v3, v4, "…successfully executed Entity Query for AppIntent: %{public}s, AppEntity %{public}s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v10, -1, -1);
    MEMORY[0x266766110](v9, -1, -1);
  }

  v11 = [v2 value];
  v12 = [v11 value];

  sub_265A1F000();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B718, &qword_265A22678);
  if (!swift_dynamicCast())
  {
    sub_265A0CAD0();
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();

    v408 = MEMORY[0x277D84F90];
    v403 = MEMORY[0x277D84F90];
LABEL_9:
    v26 = (v0 + 1280);
    *(v0 + 1248) = v24;
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v28 = *v26;
      v29 = [*v26 domain];
      v30 = sub_265A1EBA0();
      v32 = v31;

      if (v30 == sub_265A1EBA0() && v32 == v33)
      {

LABEL_104:

        v238 = v28;
        v239 = sub_265A1EA80();
        v240 = sub_265A1EF30();

        if (os_log_type_enabled(v239, v240))
        {
          v241 = *(v0 + 1688);
          v242 = *(v0 + 1680);
          v397 = *(v0 + 1312);
          v243 = *(v0 + 1304);
          v244 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          *&v414 = v246;
          *v244 = 136446722;
          *(v244 + 4) = sub_2659D9320(v242, v241, &v414);
          *(v244 + 12) = 2082;
          *(v244 + 14) = sub_2659D9320(v243, v397, &v414);
          *(v244 + 22) = 2114;
          *(v244 + 24) = v238;
          *v245 = v238;
          v247 = v238;
          _os_log_impl(&dword_2659CA000, v239, v240, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v244, 0x20u);
          sub_2659DA270(v245, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v245, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v246, -1, -1);
          MEMORY[0x266766110](v244, -1, -1);
        }

        v248 = *(v0 + 1696);
        v249 = *(v0 + 1688);
        v250 = *(v0 + 1680);
        v251 = *(v0 + 1312);
        v252 = *(v0 + 1304);
        v253 = v238;
        sub_265A0BFD4(v248, v252, v251, v250, v249, &v414);
        v392 = v415;
        v398 = v414;
        v384 = v416;
        v381 = v417;
        v374 = v418;
        v254 = [v253 domain];
        v255 = sub_265A1EBA0();
        v364 = v256;
        v367 = v255;

        v361 = [v253 code];
        v257 = [v253 localizedDescription];

        v258 = sub_265A1EBA0();
        v354 = v259;
        v358 = v258;

        Current = CFAbsoluteTimeGetCurrent();
        v261 = v408;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v261 = sub_2659E0698(0, *(v408 + 2) + 1, 1, v408);
        }

        v263 = *(v261 + 2);
        v262 = *(v261 + 3);
        if (v263 >= v262 >> 1)
        {
          v408 = sub_2659E0698((v262 > 1), v263 + 1, 1, v261);
        }

        else
        {
          v408 = v261;
        }

        v264 = *(v0 + 1760);
        v265 = *(v0 + 1744);
        v266 = *(v0 + 1712);
        v267 = *(v0 + 1704);
        v268 = *(v0 + 1648);
        v269 = *(v0 + 1632);
        v270 = *(v0 + 1624);

        (*(v269 + 8))(v268, v270);
        *(v408 + 2) = v263 + 1;
        v271 = &v408[120 * v263];
        v271[32] = 0;
        *(v271 + 56) = v392;
        *(v271 + 40) = v398;
        *(v271 + 9) = v384;
        *(v271 + 10) = v381;
        v271[88] = v374;
        *(v271 + 12) = 2;
        *(v271 + 13) = v367;
        *(v271 + 14) = v364;
        *(v271 + 15) = v361;
        *(v271 + 16) = v358;
        *(v271 + 17) = v354;
        *(v271 + 18) = Current;

        goto LABEL_133;
      }

      v237 = sub_265A1F340();

      if (v237)
      {
        goto LABEL_104;
      }
    }

    v273 = v24;
    v274 = sub_265A1EA80();
    v275 = sub_265A1EF20();

    if (os_log_type_enabled(v274, v275))
    {
      v276 = *(v0 + 1688);
      v277 = *(v0 + 1680);
      v399 = *(v0 + 1312);
      v393 = *(v0 + 1304);
      v278 = swift_slowAlloc();
      v279 = swift_slowAlloc();
      v280 = swift_slowAlloc();
      *&v414 = v280;
      *v278 = 136446722;
      *(v278 + 4) = sub_2659D9320(v277, v276, &v414);
      *(v278 + 12) = 2082;
      *(v278 + 14) = sub_2659D9320(v393, v399, &v414);
      *(v278 + 22) = 2114;
      v281 = v24;
      v282 = _swift_stdlib_bridgeErrorToNSError();
      *(v278 + 24) = v282;
      *v279 = v282;
      _os_log_impl(&dword_2659CA000, v274, v275, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v278, 0x20u);
      sub_2659DA270(v279, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v279, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v280, -1, -1);
      MEMORY[0x266766110](v278, -1, -1);
    }

    v283 = *(v0 + 1696);
    v284 = *(v0 + 1688);
    v285 = *(v0 + 1680);
    v286 = *(v0 + 1312);
    v287 = *(v0 + 1304);
    v288 = sub_265A1E680();
    sub_265A0BFD4(v283, v287, v286, v285, v284, &v414);
    v394 = v415;
    v400 = v414;
    v385 = v416;
    v382 = v417;
    v375 = v418;
    v289 = [v288 domain];
    v290 = sub_265A1EBA0();
    v365 = v291;
    v368 = v290;

    v362 = v288;
    v359 = [v288 code];
    swift_getErrorValue();
    v355 = sub_265A1F380();
    v351 = v292;
    v293 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v408 = sub_2659E0698(0, *(v408 + 2) + 1, 1, v408);
    }

    v295 = *(v408 + 2);
    v294 = *(v408 + 3);
    if (v295 >= v294 >> 1)
    {
      v408 = sub_2659E0698((v294 > 1), v295 + 1, 1, v408);
    }

    v296 = *(v0 + 1760);
    v297 = *(v0 + 1744);
    v298 = *(v0 + 1712);
    v299 = *(v0 + 1704);
    v300 = *(v0 + 1648);
    v301 = *(v0 + 1632);
    v302 = *(v0 + 1624);

    (*(v301 + 8))(v300, v302);
    *(v408 + 2) = v295 + 1;
    v303 = &v408[120 * v295];
    v303[32] = 2;
    *(v303 + 56) = v394;
    *(v303 + 40) = v400;
    *(v303 + 9) = v385;
    *(v303 + 10) = v382;
    v303[88] = v375;
    *(v303 + 12) = 2;
    *(v303 + 13) = v368;
    *(v303 + 14) = v365;
    *(v303 + 15) = v359;
    *(v303 + 16) = v355;
    *(v303 + 17) = v351;
    *(v303 + 18) = v293;
    goto LABEL_133;
  }

  v13 = *(v0 + 1272);
  *(v0 + 1840) = v13;

  v14 = sub_265A1EA80();
  v15 = sub_265A1EF30();

  v16 = v13 >> 62;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v414 = v18;
    *v17 = 134349570;
    v402 = v18;
    if (v16)
    {
      v19 = sub_265A1F1E0();
    }

    else
    {
      v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = *(v0 + 1688);
    v21 = *(v0 + 1680);
    v22 = *(v0 + 1312);
    v23 = *(v0 + 1304);
    *(v17 + 4) = v19;

    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2659D9320(v23, v22, &v414);
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_2659D9320(v21, v20, &v414);
    _os_log_impl(&dword_2659CA000, v14, v15, "Begin processing %{public}ld Link Entity Instances for AppIntent: %{public}s, AppEntity %{public}s…", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v402, -1, -1);
    MEMORY[0x266766110](v17, -1, -1);
  }

  else
  {
  }

  *(v0 + 1848) = v13;
  if (v16)
  {
    goto LABEL_128;
  }

  v34 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1856) = v34;
  if (v34)
  {
    do
    {
      v35 = 0;
      v331 = (v0 + 584);
      v334 = (v0 + 808);
      v396 = (v0 + 1232);
      v363 = (v0 + 633);
      v332 = (v0 + 857);
      v333 = (v0 + 801);
      v335 = (v0 + 1984);
      v336 = (v0 + 1153);
      v337 = (v0 + 2047);
      v338 = (v0 + 2040);
      v360 = (v0 + 2068);
      v408 = MEMORY[0x277D84F90];
      v36 = MEMORY[0x277D84F90];
      v37 = MEMORY[0x277D84F90];
      while (1)
      {
        *(v0 + 1880) = v37;
        *(v0 + 1872) = v36;
        *(v0 + 1864) = v408;
        v38 = *(v0 + 1848);
        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x2667656F0](v35, *(v0 + 1840));
        }

        else
        {
          if (v35 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_127;
          }

          v39 = *(*(v0 + 1840) + 8 * v35 + 32);
        }

        v40 = v39;
        *(v0 + 1888) = v39;
        *(v0 + 1896) = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v41 = [v39 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (!swift_dynamicCast())
        {
          v50 = v37;
          sub_265A0CAD0();
          v51 = swift_allocError();
          *v52 = 1;
          swift_willThrow();
          *v396 = v51;
          v387 = v51;
          v53 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          v403 = v36;
          if (!swift_dynamicCast())
          {
            goto LABEL_111;
          }

          if (*(v0 + 2082) == 1)
          {

            v54 = sub_265A1EA80();
            v64 = sub_265A1EF20();

            if (!os_log_type_enabled(v54, v64))
            {
              goto LABEL_17;
            }

            v65 = *(v0 + 1688);
            v66 = *(v0 + 1680);
            v378 = *(v0 + 1312);
            v67 = *(v0 + 1304);
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *&v414 = v60;
            *v59 = 136446466;
            *(v59 + 4) = sub_2659D9320(v66, v65, &v414);
            *(v59 + 12) = 2082;
            *(v59 + 14) = sub_2659D9320(v67, v378, &v414);
            v61 = v64;
            v62 = v54;
            v63 = "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.";
LABEL_37:
            _os_log_impl(&dword_2659CA000, v62, v61, v63, v59, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v60, -1, -1);
            MEMORY[0x266766110](v59, -1, -1);

            v36 = v403;
          }

          else
          {
            if (*(v0 + 2082))
            {
LABEL_111:
              v272 = *(v0 + 1832);

              v24 = v51;
              goto LABEL_9;
            }

            v54 = sub_265A1EA80();
            v55 = sub_265A1EF20();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = *(v0 + 1688);
              v57 = *(v0 + 1680);
              v377 = *(v0 + 1312);
              v58 = *(v0 + 1304);
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              *&v414 = v60;
              *v59 = 136446466;
              *(v59 + 4) = sub_2659D9320(v57, v56, &v414);
              *(v59 + 12) = 2082;
              *(v59 + 14) = sub_2659D9320(v58, v377, &v414);
              v61 = v55;
              v62 = v54;
              v63 = "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.";
              goto LABEL_37;
            }

LABEL_17:
          }

          v37 = v50;

          goto LABEL_19;
        }

        v42 = *(v0 + 1256);
        *(v0 + 1904) = v42;
        v43 = swift_allocObject();
        *(v0 + 1912) = v43;
        *(v43 + 16) = 0u;
        *(v43 + 32) = 0u;
        *(v43 + 48) = 0u;
        *(v43 + 64) = -1;
        v44 = [v40 displayRepresentation];
        *(v0 + 1920) = v44;
        if (!v44)
        {
          v404 = v36;
          sub_265A0C1E0(v43, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v42, v0 + 528);
          v379 = *(v0 + 544);
          v388 = *(v0 + 528);
          v68 = *(v0 + 560);
          v69 = *(v0 + 568);
          v70 = *(v0 + 576);
          v71 = CFAbsoluteTimeGetCurrent();
          *v360 = *(v0 + 577);
          *(v0 + 2071) = *(v0 + 580);
          *v363 = *(v0 + 2033);
          *(v0 + 636) = *(v0 + 2036);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v408 = sub_2659E0698(0, *(v408 + 2) + 1, 1, v408);
          }

          v72 = v408;
          v74 = *(v408 + 2);
          v73 = *(v408 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = sub_2659E0698((v73 > 1), v74 + 1, 1, v408);
          }

          v408 = v72;
          *(v72 + 2) = v74 + 1;
          v75 = &v72[120 * v74];
          v75[32] = 2;
          v76 = *v360;
          *(v75 + 9) = *(v0 + 2071);
          *(v75 + 33) = v76;
          *(v75 + 56) = v379;
          *(v75 + 40) = v388;
          *(v75 + 9) = v68;
          *(v75 + 10) = v69;
          v75[88] = v70;
          v77 = *v363;
          *(v75 + 23) = *(v0 + 636);
          *(v75 + 89) = v77;
          *(v75 + 12) = 0x8000000000000001;
          *(v75 + 104) = 0u;
          *(v75 + 120) = 0u;
          *(v75 + 17) = 0;
          *(v75 + 18) = v71;

          v36 = v404;
          goto LABEL_19;
        }

        v45 = [v40 exportedContent];
        if (!v45)
        {
          v78 = *(*(v0 + 1536) + 56);
          v78(*(v0 + 1520), 1, 1, *(v0 + 1528));
LABEL_46:
          *(v0 + 1928) = v78;
          sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
          v85 = [v40 exportedContent];
          if (!v85)
          {
            goto LABEL_123;
          }

          v86 = v85;
          v87 = [v85 content];

          v88 = [v87 data];
          v89 = sub_265A1E780();
          v91 = v90;

          v92 = v91 >> 62;
          if ((v91 >> 62) > 1)
          {
            if (v92 != 2)
            {
              goto LABEL_121;
            }

            v93 = *(v89 + 16);
            v94 = *(v89 + 24);
          }

          else
          {
            if (!v92)
            {
              if ((v91 & 0xFF000000000000) == 0)
              {
                goto LABEL_121;
              }

LABEL_55:
              v95 = *(v0 + 1536);
              v96 = *(v0 + 1528);
              v97 = *(v0 + 1504);
              v98 = *(v0 + 1496);
              v78(v98, 1, 1, v96);
              sub_265A1E700();
              sub_265A0CB94(v89, v91);
              sub_2659DA270(v98, &qword_28002B700, &qword_265A22658);
              v409 = *(v95 + 48);
              v99 = v409(v97, 1, v96);
              v84 = (v0 + 1504);
              if (v99 == 1)
              {
                sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
LABEL_123:
                v413 = *(v0 + 1760);
                v305 = *(v0 + 1488);
                v306 = *(v0 + 1432);
                v307 = *(v0 + 1424);
                v308 = *(v0 + 1416);
                *(v0 + 16) = v0;
                *(v0 + 56) = v305;
                *(v0 + 24) = sub_265A00F8C;
                swift_continuation_init();
                *(v0 + 328) = v308;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
                *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
                sub_265A1ED80();
                (*(v307 + 32))(boxed_opaque_existential_1, v306, v308);
                *(v0 + 272) = MEMORY[0x277D85DD0];
                *(v0 + 280) = 1107296256;
                *(v0 + 288) = sub_265A0C3A0;
                *(v0 + 296) = &block_descriptor_8;
                [v413 fetchEntityURL:v42 completionHandler:?];
                (*(v307 + 8))(boxed_opaque_existential_1, v308);
                v310 = v0 + 16;

                return MEMORY[0x282200938](v310);
              }

              goto LABEL_56;
            }

            v93 = v89;
            v94 = v89 >> 32;
          }

          if (v93 == v94)
          {
LABEL_121:
            sub_265A0CB94(v89, v91);
            goto LABEL_123;
          }

          goto LABEL_55;
        }

        v46 = v45;
        v47 = [v45 content];

        v48 = [v47 fileURL];
        if (v48)
        {
          sub_265A1E730();

          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v79 = *(v0 + 1536);
        v80 = *(v0 + 1528);
        v81 = *(v0 + 1520);
        v82 = *(v0 + 1512);
        v78 = *(v79 + 56);
        v78(v82, v49, 1, v80);
        sub_265A0CB24(v82, v81);
        v409 = *(v79 + 48);
        v83 = v409(v81, 1, v80);
        v84 = (v0 + 1520);
        if (v83 == 1)
        {
          goto LABEL_46;
        }

LABEL_56:
        v100 = *(v0 + 1568);
        v101 = *(v0 + 1552);
        v102 = *(v0 + 1544);
        v103 = *(v0 + 1536);
        v104 = *(v0 + 1528);
        v105 = *(v0 + 1320);
        v370 = *(v103 + 32);
        v370(v100, *v84, v104);
        v106 = *(v103 + 16);
        v106(v101, v100, v104);
        v389 = v106;
        v106(v102, v100, v104);
        v107 = *(v105 + 16);

        if (v107)
        {
          v108 = 0;
          while (1)
          {
            v109 = *(v0 + 1544);
            v110 = *(v0 + 1528);
            v111 = *(v0 + 1464);
            v112 = *(v0 + 1320) + v108;
            v113 = *(v112 + 32);

            v113(v109);

            if (v409(v111, 1, v110) != 1)
            {
              break;
            }

            sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
            v108 += 16;
            if (!--v107)
            {
              goto LABEL_60;
            }
          }

          v116 = *(v0 + 1552);
          v117 = *(v0 + 1536);
          v118 = *(v0 + 1528);
          v119 = *(v0 + 1456);
          v120 = *(v0 + 1448);
          sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
          v121 = *(v112 + 32);

          v121(v116);
          v114 = *(v117 + 8);
          v114(v116, v118);

          sub_265A0CBE8(v119, v120, &qword_28002B700, &qword_265A22658);
          if (v409(v120, 1, v118) == 1)
          {
            v310 = (v114)(*(v0 + 1544), *(v0 + 1528));
            __break(1u);
            return MEMORY[0x282200938](v310);
          }

          v122 = *(v0 + 1456);
          v370(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
          sub_2659DA270(v122, &qword_28002B700, &qword_265A22658);
          v115 = 0;
        }

        else
        {
LABEL_60:
          v114 = *(*(v0 + 1536) + 8);
          v114(*(v0 + 1552), *(v0 + 1528));
          v115 = 1;
        }

        v380 = v114;
        v123 = *(v0 + 1544);
        v124 = *(v0 + 1528);
        v125 = *(v0 + 1472);
        v78(v125, v115, 1, v124);

        v114(v123, v124);
        if (v409(v125, 1, v124) == 1)
        {
          v126 = *(v0 + 1568);
          v127 = *(v0 + 1560);
          v128 = *(v0 + 1528);
          sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
          v389(v127, v126, v128);
          v129 = *(v0 + 1864);
        }

        else
        {
          v130 = *(v0 + 1912);
          v131 = *(v0 + 1904);
          v132 = *(v0 + 1688);
          v133 = *(v0 + 1680);
          v134 = *(v0 + 1312);
          v135 = *(v0 + 1304);
          v370(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
          sub_265A0C1E0(v130, v135, v134, v133, v132, v131, v334);
          *v371 = *(v0 + 824);
          v410 = *v334;
          v136 = *(v0 + 840);
          v137 = *(v0 + 848);
          v138 = *(v0 + 856);
          v139 = CFAbsoluteTimeGetCurrent();
          *v338 = *(v0 + 2054);
          *(v0 + 2043) = *(v0 + 2057);
          *v337 = *(v0 + 2061);
          *(v0 + 2050) = *(v0 + 2064);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = *(v0 + 1864);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v129 = sub_2659E0698(0, *(v129 + 2) + 1, 1, *(v0 + 1864));
          }

          v142 = *(v129 + 2);
          v141 = *(v129 + 3);
          if (v142 >= v141 >> 1)
          {
            v129 = sub_2659E0698((v141 > 1), v142 + 1, 1, v129);
          }

          *(v129 + 2) = v142 + 1;
          v143 = &v129[120 * v142];
          v143[32] = 1;
          v144 = *v338;
          *(v143 + 9) = *(v0 + 2043);
          *(v143 + 33) = v144;
          *(v143 + 56) = *v371;
          *(v143 + 40) = v410;
          *(v143 + 9) = v136;
          *(v143 + 10) = v137;
          v143[88] = v138;
          v145 = *v337;
          *(v143 + 23) = *(v0 + 2050);
          *(v143 + 89) = v145;
          *(v143 + 6) = xmmword_265A22600;
          *(v143 + 7) = 0u;
          *(v143 + 8) = 0u;
          *(v143 + 18) = v139;
        }

        v146 = [*(v0 + 1920) image];
        if (v146 && (v147 = v146, sub_265A1110C(v0 + 1096), v147, *(v0 + 1104)))
        {
          v372 = *(v0 + 1104);
          v356 = *(v0 + 1096);
          v352 = *(v0 + 1112);
        }

        else
        {
          sub_265A1CF6C(v0 + 1128);
          if (!*(v0 + 1136))
          {
            v412 = v129;
            v207 = *(v0 + 1904);
            v208 = *(v0 + 1328);

            v209 = v207;
            v210 = sub_265A1EA80();
            v211 = sub_265A1EF30();

            if (os_log_type_enabled(v210, v211))
            {
              v373 = *(v0 + 1904);
              v212 = *(v0 + 1328);
              v406 = *(v0 + 1312);
              v390 = *(v0 + 1304);
              v213 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              v215 = swift_slowAlloc();
              *&v414 = v215;
              *v213 = 136446979;
              v216 = [v212 identifier];
              v217 = sub_265A1EBA0();
              v219 = v218;

              v220 = sub_2659D9320(v217, v219, &v414);

              *(v213 + 4) = v220;
              *(v213 + 12) = 2160;
              *(v213 + 14) = 1752392040;
              *(v213 + 22) = 2113;
              v221 = [v373 identifier];
              *(v213 + 24) = v221;
              *v214 = v221;
              *(v213 + 32) = 2082;
              *(v213 + 34) = sub_2659D9320(v390, v406, &v414);
              _os_log_impl(&dword_2659CA000, v210, v211, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v213, 0x2Au);
              sub_2659DA270(v214, &qword_28002B678, &unk_265A21AC0);
              MEMORY[0x266766110](v214, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x266766110](v215, -1, -1);
              MEMORY[0x266766110](v213, -1, -1);
            }

            sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
            v391 = *(v0 + 656);
            v407 = *(v0 + 640);
            v222 = *(v0 + 672);
            v223 = *(v0 + 680);
            v224 = *(v0 + 688);
            v225 = CFAbsoluteTimeGetCurrent();
            *v333 = *(v0 + 1114);
            *(v0 + 804) = *(v0 + 1117);
            *v332 = *(v0 + 1121);
            *(v0 + 860) = *(v0 + 1124);
            v226 = v412;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v226 = sub_2659E0698(0, *(v412 + 2) + 1, 1, v412);
            }

            v228 = *(v226 + 2);
            v227 = *(v226 + 3);
            v353 = v224;
            if (v228 >= v227 >> 1)
            {
              v226 = sub_2659E0698((v227 > 1), v228 + 1, 1, v226);
            }

            v229 = *(v0 + 1920);
            v230 = *(v0 + 1888);
            v231 = *(v0 + 1568);
            v232 = *(v0 + 1560);
            v233 = *(v0 + 1528);

            v380(v232, v233);
            v380(v231, v233);
            *(v226 + 2) = v228 + 1;
            v408 = v226;
            v234 = &v226[120 * v228];
            v234[32] = 2;
            v235 = *v333;
            *(v234 + 9) = *(v0 + 804);
            *(v234 + 33) = v235;
            *(v234 + 56) = v391;
            *(v234 + 40) = v407;
            *(v234 + 9) = v222;
            *(v234 + 10) = v223;
            v234[88] = v353;
            v236 = *v332;
            *(v234 + 23) = *(v0 + 860);
            *(v234 + 89) = v236;
            *(v234 + 6) = xmmword_265A22620;
            *(v234 + 7) = 0u;
            *(v234 + 8) = 0u;
            *(v234 + 18) = v225;

            v37 = *(v0 + 1880);
            v36 = *(v0 + 1872);
            goto LABEL_19;
          }

          v372 = *(v0 + 1136);
          v356 = *(v0 + 1128);
          v352 = *(v0 + 1144);
          sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v331);
          v349 = *(v0 + 600);
          v411 = *v331;
          v148 = *(v0 + 616);
          v149 = *(v0 + 624);
          v150 = *(v0 + 632);
          v151 = CFAbsoluteTimeGetCurrent();
          *v336 = *(v0 + 1991);
          *(v0 + 1156) = *(v0 + 1994);
          *v335 = *(v0 + 1998);
          *(v0 + 1987) = *(v0 + 2001);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_2659E0698(0, *(v129 + 2) + 1, 1, v129);
          }

          v153 = *(v129 + 2);
          v152 = *(v129 + 3);
          if (v153 >= v152 >> 1)
          {
            v129 = sub_2659E0698((v152 > 1), v153 + 1, 1, v129);
          }

          *(v129 + 2) = v153 + 1;
          v154 = &v129[120 * v153];
          v154[32] = 1;
          v155 = *v336;
          *(v154 + 9) = *(v0 + 1156);
          *(v154 + 33) = v155;
          *(v154 + 56) = v349;
          *(v154 + 40) = v411;
          *(v154 + 9) = v148;
          *(v154 + 10) = v149;
          v154[88] = v150;
          v156 = *v335;
          *(v154 + 23) = *(v0 + 1987);
          *(v154 + 89) = v156;
          *(v154 + 6) = xmmword_265A22610;
          *(v154 + 7) = 0u;
          *(v154 + 8) = 0u;
          *(v154 + 18) = v151;
        }

        v157 = [*(v0 + 1920) subtitle];
        if (v157)
        {
          v158 = v157;
          v159 = [v157 localizedStringResource];
          if (!v159)
          {
            return sub_265A1F1C0();
          }

          v160 = v159;
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v160;
          v161 = v160;
          sub_265A1E6A0();

          v162 = 0;
        }

        else
        {
          v162 = 1;
        }

        v163 = *(v0 + 1920);
        v164 = *(v0 + 1904);
        v165 = *(*(v0 + 1344) + 56);
        (v165)(*(v0 + 1408), v162, 1, *(v0 + 1336));
        v166 = [v164 identifier];
        v167 = [v166 instanceIdentifier];

        v168 = sub_265A1EBA0();
        v350 = v169;

        v170 = [v163 title];
        v171 = [v170 localizedStringResource];
        if (!v171)
        {
          return sub_265A1F1C0();
        }

        v172 = v171;
        v408 = v129;
        v173 = *(v0 + 1920);
        v174 = *(v0 + 1408);
        v175 = *(v0 + 1400);
        v176 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        *(v0 + 888) = v176;
        *(v0 + 864) = v172;
        v177 = v172;
        sub_265A1E6A0();

        sub_265A0CBE8(v174, v175, &qword_28002B6F0, &qword_265A21110);
        v178 = [v173 synonyms];
        if (v178)
        {
          v179 = v178;
          sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
          sub_265A1ECC0();

          v180 = sub_265A0C54C();
        }

        else
        {
          v180 = MEMORY[0x277D84F90];
        }

        v181 = [*(v0 + 1920) descriptionText];
        v347 = v168;
        v348 = v165;
        v346 = v180;
        if (v181)
        {
          v182 = v181;
          v183 = [v181 localizedStringResource];
          if (!v183)
          {
            return sub_265A1F1C0();
          }

          *(v0 + 920) = v176;
          *(v0 + 896) = v183;
          v184 = v183;
          sub_265A1E6A0();
        }

        v185 = *(v0 + 1560);
        v186 = *(v0 + 1528);
        v344 = *(v0 + 1400);
        v342 = *(v0 + 1688);
        v343 = *(v0 + 1392);
        v187 = *(v0 + 1384);
        v345 = *(v0 + 1376);
        v188 = *(v0 + 1360);
        v340 = *(v0 + 1680);
        v341 = *(v0 + 1352);
        v189 = *(v0 + 1344);
        v190 = *(v0 + 1336);
        v191 = *(v0 + 1312);
        v339 = *(v0 + 1304);
        v348();
        v389(&v187[v188[11]], v185, v186);
        v192 = v188[8];
        (v348)(&v187[v192], 1, 1, v190);
        v193 = v188[10];
        (v348)(&v187[v193], 1, 1, v190);
        *v187 = v339;
        *(v187 + 1) = v191;
        *(v187 + 2) = v340;
        *(v187 + 3) = v342;
        *(v187 + 4) = v347;
        *(v187 + 5) = v350;
        (*(v189 + 32))(&v187[v188[7]], v341, v190);

        sub_2659D9AD0(v344, &v187[v192]);
        *&v187[v188[9]] = v346;
        sub_2659D9AD0(v343, &v187[v193]);
        v194 = &v187[v188[12]];
        *v194 = v356;
        *(v194 + 1) = v372;
        v194[16] = v352 & 1;
        v194[17] = HIBYTE(v352) & 1;
        sub_2659DE470(v187, v345);
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v196 = *(v0 + 1880);
        if ((v195 & 1) == 0)
        {
          v196 = sub_2659E0670(0, v196[2] + 1, 1, v196);
        }

        v198 = v196[2];
        v197 = v196[3];
        if (v198 >= v197 >> 1)
        {
          v405 = sub_2659E0670((v197 > 1), v198 + 1, 1, v196);
        }

        else
        {
          v405 = v196;
        }

        v199 = *(v0 + 1904);
        v200 = *(v0 + 1888);
        v201 = *(v0 + 1568);
        v202 = *(v0 + 1560);
        v203 = *(v0 + 1528);
        v204 = *(v0 + 1408);
        v357 = *(v0 + 1384);
        v205 = *(v0 + 1376);
        v206 = *(v0 + 1368);

        sub_2659DA270(v204, &qword_28002B6F0, &qword_265A21110);
        v380(v202, v203);
        v380(v201, v203);
        v36 = v405;
        v405[2] = v198 + 1;
        sub_265A0CC50(v205, v405 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v198);
        sub_2659DCF64(v357);

        v37 = v405;
LABEL_19:
        v35 = *(v0 + 1896);
        if (v35 == *(v0 + 1856))
        {
          goto LABEL_130;
        }
      }

      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v311 = sub_265A1F1E0();
      *(v0 + 1856) = v311;
    }

    while (v311);
  }

  v36 = MEMORY[0x277D84F90];
  v408 = MEMORY[0x277D84F90];
LABEL_130:

  v312 = sub_265A1EA80();
  v313 = sub_265A1EF30();

  v314 = os_log_type_enabled(v312, v313);
  v315 = *(v0 + 1832);
  v316 = *(v0 + 1760);
  v395 = *(v0 + 1744);
  v317 = *(v0 + 1736);
  v401 = *(v0 + 1704);
  v318 = *(v0 + 1648);
  v319 = *(v0 + 1632);
  v320 = *(v0 + 1624);
  v403 = v36;
  if (v314)
  {
    v386 = *(v0 + 1648);
    v321 = *(v0 + 1312);
    v383 = *(v0 + 1624);
    v322 = *(v0 + 1304);
    v376 = *(v0 + 1712);
    v369 = *(v0 + 1832);
    v323 = swift_slowAlloc();
    v366 = v317;
    v324 = swift_slowAlloc();
    *&v414 = v324;
    *v323 = 136446466;
    *(v323 + 4) = sub_2659D9320(v322, v321, &v414);
    *(v323 + 12) = 2050;
    *(v323 + 14) = v36[2];

    _os_log_impl(&dword_2659CA000, v312, v313, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v323, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v324);
    MEMORY[0x266766110](v324, -1, -1);
    MEMORY[0x266766110](v323, -1, -1);

    (*(v319 + 8))(v386, v383);
  }

  else
  {

    (*(v319 + 8))(v318, v320);
  }

LABEL_133:
  v325 = *(v0 + 1688);
  v326 = *(v0 + 1680);
  v327 = *(v0 + 1312);
  v328 = *(v0 + 1304);
  v329 = *(v0 + 1296);

  *v329 = v328;
  v329[1] = v327;
  v329[2] = v326;
  v329[3] = v325;
  v329[4] = v403;
  v329[5] = v408;

  v330 = *(v0 + 8);

  return v330();
}

uint64_t sub_265A00F8C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1944) = v1;
  if (v1)
  {
    v2 = sub_265A08EAC;
  }

  else
  {
    v2 = sub_265A010C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265A010C8()
{
  v495 = v0;
  v1 = (v0 + 584);
  v425 = (v0 + 808);
  v494 = *MEMORY[0x277D85DE8];
  v2 = (v0 + 1280);
  v3 = (v0 + 577);
  v4 = (v0 + 801);
  v423 = (v0 + 857);
  v5 = (v0 + 1114);
  v426 = (v0 + 1984);
  v429 = (v0 + 1153);
  v443 = (v0 + 2040);
  v435 = (v0 + 633);
  v439 = (v0 + 2047);
  v432 = (v0 + 2068);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1480);
  sub_265A0CB24(*(v0 + 1488), v8);
  v474 = *(v6 + 48);
  if (v474(v8, 1, v7) != 1)
  {
    v43 = (v0 + 1480);
    v44 = *(v0 + 1928);
LABEL_11:
    v470 = v44;
    v385 = v5;
    v386 = v1;
    v387 = v3;
    v388 = v4;
    v389 = v2;
    v45 = *(v0 + 1568);
    v46 = *(v0 + 1552);
    v47 = *(v0 + 1544);
    v48 = *(v0 + 1536);
    v49 = *(v0 + 1528);
    v50 = *(v0 + 1320);
    v458 = *(v48 + 32);
    v458(v45, *v43, v49);
    v51 = *(v48 + 16);
    v51(v46, v45, v49);
    v390 = v51;
    v51(v47, v45, v49);
    v52 = *(v50 + 16);

    if (v52)
    {
      v53 = 0;
      while (1)
      {
        v54 = *(v0 + 1544);
        v55 = *(v0 + 1528);
        v56 = *(v0 + 1464);
        v57 = *(v0 + 1320) + v53;
        v58 = *(v57 + 32);

        v58(v54);

        if (v474(v56, 1, v55) != 1)
        {
          break;
        }

        sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
        v53 += 16;
        if (!--v52)
        {
          goto LABEL_15;
        }
      }

      v96 = *(v0 + 1552);
      v97 = *(v0 + 1536);
      v98 = *(v0 + 1528);
      v99 = *(v0 + 1456);
      v100 = *(v0 + 1448);
      sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
      v101 = *(v57 + 32);

      v101(v96);
      v102 = *(v97 + 8);
      v102(v96, v98);

      sub_265A0CBE8(v99, v100, &qword_28002B700, &qword_265A22658);
      if (v474(v100, 1, v98) == 1)
      {
        v384 = (v102)(*(v0 + 1544), *(v0 + 1528));
        __break(1u);
        return MEMORY[0x282200938](v384);
      }

      v103 = *(v0 + 1456);
      v458(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
      sub_2659DA270(v103, &qword_28002B700, &qword_265A22658);
      v60 = 0;
      v59 = v102;
    }

    else
    {
LABEL_15:
      v59 = *(*(v0 + 1536) + 8);
      v59(*(v0 + 1552), *(v0 + 1528));
      v60 = 1;
    }

    v104 = *(v0 + 1544);
    v105 = *(v0 + 1528);
    v106 = *(v0 + 1472);
    v470(v106, v60, 1, v105);

    v472 = v59;
    v59(v104, v105);
    if (v474(v106, 1, v105) == 1)
    {
      v107 = *(v0 + 1568);
      v108 = *(v0 + 1560);
      v109 = *(v0 + 1528);
      sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
      v390(v108, v107, v109);
      v110 = *(v0 + 1864);
    }

    else
    {
      v111 = *(v0 + 1912);
      v112 = *(v0 + 1904);
      v113 = *(v0 + 1688);
      v114 = *(v0 + 1680);
      v115 = *(v0 + 1312);
      v116 = *(v0 + 1304);
      v458(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
      sub_265A0C1E0(v111, v116, v115, v114, v113, v112, v425);
      v460 = *(v0 + 824);
      v477 = *v425;
      v117 = *(v0 + 840);
      v118 = *(v0 + 848);
      v119 = *(v0 + 856);
      Current = CFAbsoluteTimeGetCurrent();
      *v443 = *(v0 + 2054);
      *(v0 + 2043) = *(v0 + 2057);
      *v439 = *(v0 + 2061);
      *(v0 + 2050) = *(v0 + 2064);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = *(v0 + 1864);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_2659E0698(0, *(v110 + 2) + 1, 1, *(v0 + 1864));
      }

      v123 = *(v110 + 2);
      v122 = *(v110 + 3);
      if (v123 >= v122 >> 1)
      {
        v110 = sub_2659E0698((v122 > 1), v123 + 1, 1, v110);
      }

      *(v110 + 2) = v123 + 1;
      v124 = &v110[120 * v123];
      v124[32] = 1;
      v125 = *v443;
      *(v124 + 9) = *(v0 + 2043);
      *(v124 + 33) = v125;
      *(v124 + 56) = v460;
      *(v124 + 40) = v477;
      *(v124 + 9) = v117;
      *(v124 + 10) = v118;
      v124[88] = v119;
      v126 = *v439;
      *(v124 + 23) = *(v0 + 2050);
      *(v124 + 89) = v126;
      *(v124 + 6) = xmmword_265A22600;
      *(v124 + 7) = 0u;
      *(v124 + 8) = 0u;
      *(v124 + 18) = Current;
    }

    v127 = [*(v0 + 1920) image];
    if (v127 && (v128 = v127, sub_265A1110C(v0 + 1096), v128, *(v0 + 1104)))
    {
      v478 = *(v0 + 1104);
      v420 = *(v0 + 1096);
      v415 = *(v0 + 1112);
    }

    else
    {
      sub_265A1CF6C(v0 + 1128);
      v129 = *(v0 + 1136);
      if (!v129)
      {
        v465 = v110;
        v283 = *(v0 + 1904);
        v284 = *(v0 + 1328);

        v285 = v283;
        v286 = sub_265A1EA80();
        v287 = sub_265A1EF30();

        if (os_log_type_enabled(v286, v287))
        {
          v417 = *(v0 + 1904);
          v288 = *(v0 + 1328);
          v484 = *(v0 + 1312);
          v421 = *(v0 + 1304);
          v289 = swift_slowAlloc();
          v290 = swift_slowAlloc();
          v291 = swift_slowAlloc();
          *&v489 = v291;
          *v289 = 136446979;
          v292 = [v288 identifier];
          v293 = sub_265A1EBA0();
          v295 = v294;

          v296 = sub_2659D9320(v293, v295, &v489);

          *(v289 + 4) = v296;
          *(v289 + 12) = 2160;
          *(v289 + 14) = 1752392040;
          *(v289 + 22) = 2113;
          v297 = [v417 identifier];
          *(v289 + 24) = v297;
          *v290 = v297;
          *(v289 + 32) = 2082;
          *(v289 + 34) = sub_2659D9320(v421, v484, &v489);
          _os_log_impl(&dword_2659CA000, v286, v287, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v289, 0x2Au);
          sub_2659DA270(v290, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v290, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v291, -1, -1);
          MEMORY[0x266766110](v289, -1, -1);
        }

        sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
        v422 = *(v0 + 656);
        v485 = *(v0 + 640);
        v418 = *(v0 + 672);
        v412 = *(v0 + 680);
        v407 = *(v0 + 688);
        v298 = CFAbsoluteTimeGetCurrent();
        *v388 = *v385;
        *(v388 + 3) = *(v385 + 3);
        *v423 = *(v0 + 1121);
        *(v0 + 860) = *(v0 + 1124);
        v299 = v465;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v299 = sub_2659E0698(0, *(v465 + 2) + 1, 1, v465);
        }

        v301 = *(v299 + 2);
        v300 = *(v299 + 3);
        if (v301 >= v300 >> 1)
        {
          v299 = sub_2659E0698((v300 > 1), v301 + 1, 1, v299);
        }

        v302 = *(v0 + 1920);
        v34 = *(v0 + 1912);
        v303 = *(v0 + 1888);
        v304 = *(v0 + 1568);
        v305 = *(v0 + 1560);
        v306 = *(v0 + 1528);

        v472(v305, v306);
        v472(v304, v306);
        v92 = v299;
        *(v299 + 2) = v301 + 1;
        v307 = &v299[120 * v301];
        v307[32] = 2;
        v308 = *v388;
        *(v307 + 9) = *(v388 + 3);
        *(v307 + 33) = v308;
        *(v307 + 56) = v422;
        *(v307 + 40) = v485;
        *(v307 + 9) = v418;
        *(v307 + 10) = v412;
        v307[88] = v407;
        v309 = *v423;
        *(v307 + 23) = *(v0 + 860);
        *(v307 + 89) = v309;
        *(v307 + 6) = xmmword_265A22620;
        *(v307 + 7) = 0u;
        *(v307 + 8) = 0u;
        *(v307 + 18) = v298;
LABEL_107:

        v469 = *(v0 + 1872);
        goto LABEL_58;
      }

      v420 = *(v0 + 1128);
      v415 = *(v0 + 1144);
      sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v386);
      v409 = v386[1];
      v461 = *v386;
      v130 = *(v0 + 616);
      v131 = *(v0 + 624);
      v132 = *(v0 + 632);
      v133 = CFAbsoluteTimeGetCurrent();
      *v429 = *(v0 + 1991);
      *(v0 + 1156) = *(v0 + 1994);
      *v426 = *(v0 + 1998);
      *(v0 + 1987) = *(v0 + 2001);
      v478 = v129;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_2659E0698(0, *(v110 + 2) + 1, 1, v110);
      }

      v135 = *(v110 + 2);
      v134 = *(v110 + 3);
      if (v135 >= v134 >> 1)
      {
        v110 = sub_2659E0698((v134 > 1), v135 + 1, 1, v110);
      }

      *(v110 + 2) = v135 + 1;
      v136 = &v110[120 * v135];
      v136[32] = 1;
      v137 = *v429;
      *(v136 + 9) = *(v0 + 1156);
      *(v136 + 33) = v137;
      *(v136 + 56) = v409;
      *(v136 + 40) = v461;
      *(v136 + 9) = v130;
      *(v136 + 10) = v131;
      v136[88] = v132;
      v138 = *v426;
      *(v136 + 23) = *(v0 + 1987);
      *(v136 + 89) = v138;
      *(v136 + 6) = xmmword_265A22610;
      *(v136 + 7) = 0u;
      *(v136 + 8) = 0u;
      *(v136 + 18) = v133;
    }

    v139 = [*(v0 + 1920) subtitle];
    v140 = 1;
    if (v139)
    {
      v141 = v139;
      v142 = [v139 localizedStringResource];
      if (!v142)
      {
        return sub_265A1F1C0();
      }

      v143 = v142;
      *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
      *(v0 + 928) = v143;
      v144 = v143;
      sub_265A1E6A0();

      v140 = 0;
    }

    v145 = *(v0 + 1920);
    v146 = *(v0 + 1904);
    v410 = *(*(v0 + 1344) + 56);
    (v410)(*(v0 + 1408), v140, 1, *(v0 + 1336));
    v147 = [v146 identifier];
    v148 = [v147 instanceIdentifier];

    v149 = sub_265A1EBA0();
    v406 = v150;

    v151 = [v145 title];
    v152 = [v151 localizedStringResource];
    if (v152)
    {
      v153 = v152;
      v457 = v110;
      v154 = *(v0 + 1920);
      v155 = *(v0 + 1408);
      v156 = *(v0 + 1400);
      v157 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
      *(v0 + 888) = v157;
      *(v0 + 864) = v153;
      v158 = v153;
      sub_265A1E6A0();

      sub_265A0CBE8(v155, v156, &qword_28002B6F0, &qword_265A21110);
      v159 = [v154 synonyms];
      v160 = MEMORY[0x277D84F90];
      if (v159)
      {
        v161 = v159;
        sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
        sub_265A1ECC0();

        v160 = sub_265A0C54C();
      }

      v162 = [*(v0 + 1920) descriptionText];
      if (!v162)
      {
        goto LABEL_50;
      }

      v163 = v162;
      v164 = [v162 localizedStringResource];
      if (v164)
      {
        *(v0 + 920) = v157;
        *(v0 + 896) = v164;
        v165 = v164;
        sub_265A1E6A0();

LABEL_50:
        v394 = *(v0 + 1688);
        v395 = v149;
        v166 = *(v0 + 1560);
        v401 = v160;
        v167 = *(v0 + 1528);
        v397 = *(v0 + 1392);
        v399 = *(v0 + 1400);
        v168 = *(v0 + 1384);
        v403 = *(v0 + 1376);
        v169 = *(v0 + 1360);
        v392 = *(v0 + 1680);
        v393 = *(v0 + 1352);
        v170 = *(v0 + 1344);
        v171 = *(v0 + 1336);
        v172 = *(v0 + 1312);
        v391 = *(v0 + 1304);
        v410();
        v390(&v168[v169[11]], v166, v167);
        v173 = v169[8];
        (v410)(&v168[v173], 1, 1, v171);
        v174 = v169[10];
        (v410)(&v168[v174], 1, 1, v171);
        *v168 = v391;
        *(v168 + 1) = v172;
        *(v168 + 2) = v392;
        *(v168 + 3) = v394;
        *(v168 + 4) = v395;
        *(v168 + 5) = v406;
        (*(v170 + 32))(&v168[v169[7]], v393, v171);

        sub_2659D9AD0(v399, &v168[v173]);
        *&v168[v169[9]] = v401;
        sub_2659D9AD0(v397, &v168[v174]);
        v175 = &v168[v169[12]];
        *v175 = v420;
        *(v175 + 1) = v478;
        v175[16] = v415 & 1;
        v175[17] = HIBYTE(v415) & 1;
        sub_2659DE470(v168, v403);
        v176 = swift_isUniquelyReferenced_nonNull_native();
        v177 = *(v0 + 1880);
        if ((v176 & 1) == 0)
        {
          v177 = sub_2659E0670(0, v177[2] + 1, 1, *(v0 + 1880));
        }

        v34 = v177[2];
        v178 = v177[3];
        if (v34 >= v178 >> 1)
        {
          v177 = sub_2659E0670((v178 > 1), v34 + 1, 1, v177);
        }

        v179 = *(v0 + 1904);
        v180 = *(v0 + 1888);
        v181 = *(v0 + 1568);
        v182 = *(v0 + 1560);
        v183 = *(v0 + 1528);
        v184 = *(v0 + 1408);
        v416 = *(v0 + 1384);
        v411 = *(v0 + 1376);
        v185 = *(v0 + 1368);

        sub_2659DA270(v184, &qword_28002B6F0, &qword_265A21110);
        v472(v182, v183);
        v472(v181, v183);
        v177[2] = v34 + 1;
        sub_265A0CC50(v411, v177 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v34);
        sub_2659DCF64(v416);

        v186 = vdupq_n_s64(v177);
        goto LABEL_56;
      }
    }

    return sub_265A1F1C0();
  }

  v387 = (v0 + 577);
  v388 = (v0 + 801);
  v386 = (v0 + 584);
  v389 = (v0 + 1280);
  sub_2659DA270(*(v0 + 1480), &qword_28002B700, &qword_265A22658);
  sub_265A0CAD0();
  v9 = swift_allocError();
  *v10 = 2;
  swift_willThrow();
  *(v0 + 1208) = v9;
  v475 = v9;
  v11 = v9;
  v385 = (v0 + 1114);
  if (!swift_dynamicCast() || *(v0 + 2083) != 2)
  {
    v459 = (v0 + 2019);
    v471 = (v0 + 2026);
    v61 = *(v0 + 1904);

    v62 = v61;
    v63 = sub_265A1EA80();
    v64 = sub_265A1EF20();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 1904);
      v66 = *(v0 + 1688);
      v67 = *(v0 + 1680);
      v68 = *(v0 + 1312);
      v413 = *(v0 + 1304);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v489 = v71;
      *v69 = 136446979;
      *(v69 + 4) = sub_2659D9320(v67, v66, &v489);
      *(v69 + 12) = 2160;
      *(v69 + 14) = 1752392040;
      *(v69 + 22) = 2113;
      v72 = [v65 identifier];
      *(v69 + 24) = v72;
      *v70 = v72;
      *(v69 + 32) = 2082;
      *(v69 + 34) = sub_2659D9320(v413, v68, &v489);
      _os_log_impl(&dword_2659CA000, v63, v64, "Error when fetching AppEntity URL via IPC '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v69, 0x2Au);
      sub_2659DA270(v70, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v70, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v71, -1, -1);
      MEMORY[0x266766110](v69, -1, -1);
    }

    v73 = *(v0 + 1912);
    v74 = *(v0 + 1904);
    v75 = *(v0 + 1688);
    v76 = *(v0 + 1680);
    v77 = *(v0 + 1312);
    v78 = *(v0 + 1304);
    v79 = sub_265A1E680();
    sub_265A0C1E0(v73, v78, v77, v76, v75, v74, v0 + 752);
    v408 = *(v0 + 768);
    *v414 = *(v0 + 752);
    v404 = *(v0 + 792);
    v405 = *(v0 + 784);
    v402 = *(v0 + 800);
    v80 = [v79 domain];
    v81 = sub_265A1EBA0();
    v398 = v82;
    v400 = v81;

    v396 = [v79 code];
    swift_getErrorValue();
    v83 = sub_265A1F380();
    v85 = v84;
    v86 = CFAbsoluteTimeGetCurrent();
    *v459 = *(v0 + 2012);
    *(v0 + 2022) = *(v0 + 2015);
    *v471 = *(v0 + 2005);
    *(v0 + 2029) = *(v0 + 2008);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v88 = *(v0 + 1864);
    if ((v87 & 1) == 0)
    {
      v88 = sub_2659E0698(0, *(v88 + 2) + 1, 1, *(v0 + 1864));
    }

    v34 = *(v88 + 2);
    v89 = *(v88 + 3);
    if (v34 >= v89 >> 1)
    {
      v88 = sub_2659E0698((v89 > 1), v34 + 1, 1, v88);
    }

    v90 = *(v0 + 1904);
    v91 = *(v0 + 1888);

    v92 = v88;
    *(v88 + 2) = v34 + 1;
    v93 = &v88[120 * v34];
    v93[32] = 2;
    v94 = *v459;
    *(v93 + 9) = *(v0 + 2022);
    *(v93 + 33) = v94;
    *(v93 + 56) = v408;
    *(v93 + 40) = *v414;
    *(v93 + 9) = v405;
    *(v93 + 10) = v404;
    v93[88] = v402;
    v95 = *v471;
    *(v93 + 23) = *(v0 + 2029);
    *(v93 + 89) = v95;
    *(v93 + 12) = 3;
    *(v93 + 13) = v400;
    *(v93 + 14) = v398;
    *(v93 + 15) = v396;
    *(v93 + 16) = v83;
    *(v93 + 17) = v85;
    *(v93 + 18) = v86;
    goto LABEL_107;
  }

  v12 = *(v0 + 1912);
  v466 = *(v0 + 1904);
  v13 = *(v0 + 1688);
  v14 = *(v0 + 1680);
  v15 = *(v0 + 1312);
  v16 = *(v0 + 1304);

  sub_265A0C1E0(v12, v16, v15, v14, v13, v466, v0 + 696);
  v467 = *(v0 + 712);
  v476 = *(v0 + 696);
  v17 = *(v0 + 728);
  v18 = *(v0 + 736);
  v19 = *(v0 + 744);
  v20 = CFAbsoluteTimeGetCurrent();
  *(v0 + 1146) = *(v0 + 689);
  *(v0 + 1149) = *(v0 + 692);
  *(v0 + 745) = *(v0 + 2075);
  *(v0 + 748) = *(v0 + 2078);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v0 + 1864);
  if ((v21 & 1) == 0)
  {
    v22 = sub_2659E0698(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v17;
  if (v24 >= v23 >> 1)
  {
    v457 = sub_2659E0698((v23 > 1), v24 + 1, 1, v22);
  }

  else
  {
    v457 = v22;
  }

  v26 = *(v0 + 1904);
  *(v457 + 2) = v24 + 1;
  v27 = &v457[120 * v24];
  v27[32] = 2;
  v28 = *(v0 + 1146);
  *(v27 + 9) = *(v0 + 1149);
  *(v27 + 33) = v28;
  *(v27 + 56) = v467;
  *(v27 + 40) = v476;
  *(v27 + 9) = v25;
  *(v27 + 10) = v18;
  v27[88] = v19;
  v29 = *(v0 + 745);
  *(v27 + 23) = *(v0 + 748);
  *(v27 + 89) = v29;
  *(v27 + 12) = 0x8000000000000003;
  *(v27 + 104) = 0u;
  *(v27 + 120) = 0u;
  *(v27 + 17) = 0;
  *(v27 + 18) = v20;

  v30 = v26;
  v31 = sub_265A1EA80();
  v32 = sub_265A1EF20();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 1920);
  v35 = *(v0 + 1904);
  v36 = *(v0 + 1888);
  if (!v33)
  {

    v186 = *(v0 + 1872);
LABEL_56:
    v469 = v186;
    goto LABEL_57;
  }

  v37 = *(v0 + 1688);
  v38 = *(v0 + 1680);
  v447 = *(v0 + 1312);
  v419 = *(v0 + 1304);
  v468 = *(v0 + 1888);
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *&v489 = v41;
  *v39 = 136446979;
  *(v39 + 4) = sub_2659D9320(v38, v37, &v489);
  *(v39 + 12) = 2160;
  *(v39 + 14) = 1752392040;
  *(v39 + 22) = 2113;
  v42 = [v35 identifier];
  *(v39 + 24) = v42;
  *v40 = v42;
  *(v39 + 32) = 2082;
  *(v39 + 34) = sub_2659D9320(v419, v447, &v489);
  _os_log_impl(&dword_2659CA000, v31, v32, "Could not export URL for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v39, 0x2Au);
  sub_2659DA270(v40, &qword_28002B678, &unk_265A21AC0);
  MEMORY[0x266766110](v40, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x266766110](v41, -1, -1);
  MEMORY[0x266766110](v39, -1, -1);

  v469 = *(v0 + 1872);
LABEL_57:
  v92 = v457;
LABEL_58:
  v187 = *(v0 + 1896);
  if (v187 == *(v0 + 1856))
  {
LABEL_89:
    v464 = v92;

    v230 = sub_265A1EA80();
    v231 = sub_265A1EF30();

    v232 = os_log_type_enabled(v230, v231);
    v233 = *(v0 + 1832);
    v234 = *(v0 + 1760);
    v454 = *(v0 + 1744);
    v235 = *(v0 + 1736);
    v481 = *(v0 + 1704);
    v236 = *(v0 + 1648);
    v237 = *(v0 + 1632);
    v238 = *(v0 + 1624);
    if (v232)
    {
      v451 = *(v0 + 1648);
      v239 = *(v0 + 1312);
      v448 = *(v0 + 1624);
      v240 = *(v0 + 1304);
      v444 = *(v0 + 1712);
      v440 = *(v0 + 1832);
      v241 = swift_slowAlloc();
      v436 = v235;
      v242 = swift_slowAlloc();
      *&v489 = v242;
      *v241 = 136446466;
      *(v241 + 4) = sub_2659D9320(v240, v239, &v489);
      *(v241 + 12) = 2050;
      *(v241 + 14) = *(v469.i64[0] + 16);

      _os_log_impl(&dword_2659CA000, v230, v231, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v241, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v242);
      MEMORY[0x266766110](v242, -1, -1);
      MEMORY[0x266766110](v241, -1, -1);

      (*(v237 + 8))(v451, v448);
    }

    else
    {

      (*(v237 + 8))(v236, v238);
    }

    goto LABEL_116;
  }

  v188 = 0x279BB1000uLL;
LABEL_60:
  v462 = v92;
  while (1)
  {
    *(v0 + 1872) = v469;
    *(v0 + 1864) = v92;
    v189 = *(v0 + 1848);
    if ((v189 & 0xC000000000000001) != 0)
    {
      v190 = MEMORY[0x2667656F0](v187, *(v0 + 1840));
    }

    else
    {
      if (v187 >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_139;
      }

      v190 = *(*(v0 + 1840) + 8 * v187 + 32);
    }

    v2 = v190;
    *(v0 + 1888) = v190;
    *(v0 + 1896) = v187 + 1;
    if (__OFADD__(v187, 1))
    {
      __break(1u);
      goto LABEL_126;
    }

    v191 = [v190 *(v188 + 2912)];
    sub_265A1F000();
    swift_unknownObjectRelease();
    sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
    if (swift_dynamicCast())
    {
      v187 = *(v0 + 1256);
      *(v0 + 1904) = v187;
      v212 = swift_allocObject();
      *(v0 + 1912) = v212;
      *(v212 + 16) = 0u;
      *(v212 + 32) = 0u;
      *(v212 + 48) = 0u;
      *(v212 + 64) = -1;
      v213 = [v2 displayRepresentation];
      *(v0 + 1920) = v213;
      if (!v213)
      {
        sub_265A0C1E0(v212, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v187, v0 + 528);
        v463 = *(v0 + 544);
        v480 = *(v0 + 528);
        v34 = *(v0 + 560);
        v214 = *(v0 + 568);
        v215 = *(v0 + 576);
        v216 = CFAbsoluteTimeGetCurrent();
        *v432 = *v387;
        *(v0 + 2071) = *(v387 + 3);
        *v435 = *(v0 + 2033);
        *(v0 + 636) = *(v0 + 2036);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_2659E0698(0, *(v92 + 2) + 1, 1, v92);
        }

        v218 = *(v92 + 2);
        v217 = *(v92 + 3);
        if (v218 >= v217 >> 1)
        {
          v92 = sub_2659E0698((v217 > 1), v218 + 1, 1, v92);
        }

        *(v92 + 2) = v218 + 1;
        v219 = &v92[120 * v218];
        v219[32] = 2;
        v220 = *v432;
        *(v219 + 9) = *(v0 + 2071);
        *(v219 + 33) = v220;
        *(v219 + 56) = v463;
        *(v219 + 40) = v480;
        *(v219 + 9) = v34;
        *(v219 + 10) = v214;
        v219[88] = v215;
        v221 = *v435;
        *(v219 + 23) = *(v0 + 636);
        *(v219 + 89) = v221;
        *(v219 + 12) = 0x8000000000000001;
        *(v219 + 104) = 0u;
        *(v219 + 120) = 0u;
        *(v219 + 17) = 0;
        *(v219 + 18) = v216;

        v187 = *(v0 + 1896);
        v188 = 0x279BB1000;
        if (v187 != *(v0 + 1856))
        {
          goto LABEL_60;
        }

        goto LABEL_89;
      }

      v34 = 0x279BB1000uLL;
      v92 = v2;
      v355 = [v2 exportedContent];
      v188 = 0x279BB1000uLL;
      v2 = v389;
      if (v355)
      {
        v356 = v355;
        v357 = [v355 content];

        v358 = [v357 fileURL];
        v359 = 1;
        if (v358)
        {
          sub_265A1E730();

          v359 = 0;
        }

        v360 = *(v0 + 1536);
        v361 = *(v0 + 1528);
        v43 = (v0 + 1520);
        v362 = *(v0 + 1520);
        v363 = *(v0 + 1512);
        v364 = *(v360 + 56);
        v364(v363, v359, 1, v361);
        sub_265A0CB24(v363, v362);
        v474 = *(v360 + 48);
        v365 = v474(v362, 1, v361);
        v44 = v364;
        v188 = 0x279BB1000;
        v34 = 0x279BB1000;
        if (v365 != 1)
        {
          v1 = v386;
          v3 = v387;
          v4 = v388;
          v5 = v385;
          goto LABEL_11;
        }

LABEL_127:
        *(v0 + 1928) = v44;
        sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
        v366 = [v92 *(v34 + 2928)];
        if (!v366)
        {
          goto LABEL_141;
        }

        v367 = v366;
        v368 = [v366 *(v188 + 2936)];

        v369 = [v368 data];
        v188 = sub_265A1E780();
        v34 = v370;

        v371 = v34 >> 62;
        if ((v34 >> 62) > 1)
        {
          if (v371 != 2)
          {
            goto LABEL_139;
          }

          v372 = *(v188 + 16);
          v373 = *(v188 + 24);
        }

        else
        {
          if (!v371)
          {
            if ((v34 & 0xFF000000000000) == 0)
            {
              goto LABEL_139;
            }

LABEL_136:
            v374 = v44;
            v375 = *(v0 + 1536);
            v376 = *(v0 + 1528);
            v43 = (v0 + 1504);
            v377 = *(v0 + 1504);
            v378 = *(v0 + 1496);
            v473 = v374;
            v374(v378, 1, 1, v376);
            sub_265A1E700();
            sub_265A0CB94(v188, v34);
            sub_2659DA270(v378, &qword_28002B700, &qword_265A22658);
            v474 = *(v375 + 48);
            if (v474(v377, 1, v376) != 1)
            {
              v1 = v386;
              v3 = v387;
              v4 = v388;
              v5 = v385;
              v44 = v473;
              goto LABEL_11;
            }

            sub_2659DA270(*v43, &qword_28002B700, &qword_265A22658);
            goto LABEL_141;
          }

          v372 = v188;
          v373 = v188 >> 32;
        }

        if (v372 != v373)
        {
          goto LABEL_136;
        }

LABEL_139:
        sub_265A0CB94(v188, v34);
LABEL_141:
        v488 = *(v0 + 1760);
        v379 = *(v0 + 1488);
        v380 = *(v0 + 1432);
        v381 = *(v0 + 1424);
        v382 = *(v0 + 1416);
        *(v0 + 16) = v0;
        *(v0 + 56) = v379;
        *(v0 + 24) = sub_265A00F8C;
        swift_continuation_init();
        *(v0 + 328) = v382;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
        *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
        sub_265A1ED80();
        (*(v381 + 32))(boxed_opaque_existential_1, v380, v382);
        *(v0 + 272) = MEMORY[0x277D85DD0];
        *(v0 + 280) = 1107296256;
        *(v0 + 288) = sub_265A0C3A0;
        *(v0 + 296) = &block_descriptor_8;
        [v488 fetchEntityURL:v187 completionHandler:v0 + 272];
        (*(v381 + 8))(boxed_opaque_existential_1, v382);
        v384 = v0 + 16;

        return MEMORY[0x282200938](v384);
      }

LABEL_126:
      v44 = *(*(v0 + 1536) + 56);
      v44(*(v0 + 1520), 1, 1, *(v0 + 1528));
      goto LABEL_127;
    }

    sub_265A0CAD0();
    v192 = swift_allocError();
    *v193 = 1;
    swift_willThrow();
    *(v0 + 1232) = v192;
    v194 = v192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    if (!swift_dynamicCast())
    {
      goto LABEL_85;
    }

    if (*(v0 + 2082) != 1)
    {
      break;
    }

    v34 = *(v0 + 1688);

    v195 = sub_265A1EA80();
    v205 = sub_265A1EF20();

    if (os_log_type_enabled(v195, v205))
    {
      v34 = *(v0 + 1688);
      v206 = *(v0 + 1680);
      v207 = *(v0 + 1312);
      v208 = *(v0 + 1304);
      v209 = swift_slowAlloc();
      v479 = v2;
      v210 = swift_slowAlloc();
      *&v489 = v210;
      *v209 = 136446466;
      *(v209 + 4) = sub_2659D9320(v206, v34, &v489);
      *(v209 + 12) = 2082;
      v211 = v207;
      v188 = 0x279BB1000;
      *(v209 + 14) = sub_2659D9320(v208, v211, &v489);
      _os_log_impl(&dword_2659CA000, v195, v205, "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.", v209, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v210, -1, -1);
      v204 = v209;
      v92 = v462;
LABEL_76:
      MEMORY[0x266766110](v204, -1, -1);
LABEL_77:

      goto LABEL_62;
    }

LABEL_62:
    v187 = *(v0 + 1896);
    if (v187 == *(v0 + 1856))
    {
      goto LABEL_89;
    }
  }

  if (!*(v0 + 2082))
  {
    v479 = v2;
    v34 = *(v0 + 1688);

    v195 = sub_265A1EA80();
    v196 = sub_265A1EF20();

    if (os_log_type_enabled(v195, v196))
    {
      v197 = *(v0 + 1688);
      v34 = *(v0 + 1680);
      v198 = *(v0 + 1312);
      v199 = *(v0 + 1304);
      v200 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      *&v489 = v201;
      *v200 = 136446466;
      *(v200 + 4) = sub_2659D9320(v34, v197, &v489);
      *(v200 + 12) = 2082;
      v202 = v198;
      v188 = 0x279BB1000;
      *(v200 + 14) = sub_2659D9320(v199, v202, &v489);
      _os_log_impl(&dword_2659CA000, v195, v196, "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.", v200, 0x16u);
      swift_arrayDestroy();
      v203 = v201;
      v92 = v462;
      MEMORY[0x266766110](v203, -1, -1);
      v204 = v200;
      goto LABEL_76;
    }

    goto LABEL_77;
  }

LABEL_85:
  v222 = *(v0 + 1832);

  *(v0 + 1248) = v192;
  v223 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v224 = *v389;
    v225 = [*v389 domain];
    v226 = sub_265A1EBA0();
    v228 = v227;

    if (v226 == sub_265A1EBA0() && v228 == v229)
    {

LABEL_93:

      v244 = v224;
      v245 = sub_265A1EA80();
      v246 = sub_265A1EF30();

      if (os_log_type_enabled(v245, v246))
      {
        v247 = *(v0 + 1688);
        v248 = *(v0 + 1680);
        v482 = *(v0 + 1312);
        v249 = *(v0 + 1304);
        v250 = swift_slowAlloc();
        v251 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        *&v489 = v252;
        *v250 = 136446722;
        *(v250 + 4) = sub_2659D9320(v248, v247, &v489);
        *(v250 + 12) = 2082;
        *(v250 + 14) = sub_2659D9320(v249, v482, &v489);
        *(v250 + 22) = 2114;
        *(v250 + 24) = v244;
        *v251 = v244;
        v253 = v244;
        _os_log_impl(&dword_2659CA000, v245, v246, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v250, 0x20u);
        sub_2659DA270(v251, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v251, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v252, -1, -1);
        MEMORY[0x266766110](v250, -1, -1);
      }

      v254 = *(v0 + 1696);
      v255 = *(v0 + 1688);
      v256 = *(v0 + 1680);
      v257 = *(v0 + 1312);
      v258 = *(v0 + 1304);
      v259 = v244;
      sub_265A0BFD4(v254, v258, v257, v256, v255, &v489);
      v455 = v490;
      v483 = v489;
      v260 = v491;
      v261 = v492;
      v262 = v493;
      v263 = [v259 domain];
      v264 = sub_265A1EBA0();
      v266 = v265;

      v267 = [v259 code];
      v268 = [v259 localizedDescription];

      v269 = sub_265A1EBA0();
      v427 = v270;
      v430 = v269;

      v271 = CFAbsoluteTimeGetCurrent();
      v272 = v462;
      v452 = v260;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v272 = sub_2659E0698(0, *(v462 + 2) + 1, 1, v462);
      }

      v274 = *(v272 + 2);
      v273 = *(v272 + 3);
      v449 = v261;
      v445 = v262;
      v437 = v266;
      v441 = v264;
      v433 = v267;
      if (v274 >= v273 >> 1)
      {
        v464 = sub_2659E0698((v273 > 1), v274 + 1, 1, v272);
      }

      else
      {
        v464 = v272;
      }

      v275 = *(v0 + 1760);
      v276 = *(v0 + 1744);
      v277 = *(v0 + 1712);
      v278 = *(v0 + 1704);
      v279 = *(v0 + 1648);
      v280 = *(v0 + 1632);
      v281 = *(v0 + 1624);

      (*(v280 + 8))(v279, v281);
      *(v464 + 2) = v274 + 1;
      v282 = &v464[120 * v274];
      v282[32] = 0;
      *(v282 + 56) = v455;
      *(v282 + 40) = v483;
      *(v282 + 9) = v452;
      *(v282 + 10) = v449;
      v282[88] = v445;
      *(v282 + 12) = 2;
      *(v282 + 13) = v441;
      *(v282 + 14) = v437;
      *(v282 + 15) = v433;
      *(v282 + 16) = v430;
      *(v282 + 17) = v427;
      *(v282 + 18) = v271;

      goto LABEL_116;
    }

    v243 = sub_265A1F340();

    if (v243)
    {
      goto LABEL_93;
    }
  }

  v310 = v192;
  v311 = sub_265A1EA80();
  v312 = sub_265A1EF20();

  if (os_log_type_enabled(v311, v312))
  {
    v313 = *(v0 + 1688);
    v314 = *(v0 + 1680);
    v486 = *(v0 + 1312);
    v315 = *(v0 + 1304);
    v316 = swift_slowAlloc();
    v317 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    *&v489 = v318;
    *v316 = 136446722;
    *(v316 + 4) = sub_2659D9320(v314, v313, &v489);
    *(v316 + 12) = 2082;
    *(v316 + 14) = sub_2659D9320(v315, v486, &v489);
    *(v316 + 22) = 2114;
    v319 = v192;
    v320 = _swift_stdlib_bridgeErrorToNSError();
    *(v316 + 24) = v320;
    *v317 = v320;
    _os_log_impl(&dword_2659CA000, v311, v312, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v316, 0x20u);
    sub_2659DA270(v317, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v317, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v318, -1, -1);
    MEMORY[0x266766110](v316, -1, -1);
  }

  v321 = *(v0 + 1696);
  v322 = *(v0 + 1688);
  v323 = *(v0 + 1680);
  v324 = *(v0 + 1312);
  v325 = *(v0 + 1304);
  v326 = sub_265A1E680();
  sub_265A0BFD4(v321, v325, v324, v323, v322, &v489);
  v456 = v490;
  v487 = v489;
  v327 = v491;
  v328 = v492;
  v329 = v493;
  v330 = [v326 domain];
  v331 = sub_265A1EBA0();
  v333 = v332;

  v434 = [v326 code];
  swift_getErrorValue();
  v334 = sub_265A1F380();
  v428 = v335;
  v431 = v334;
  v336 = CFAbsoluteTimeGetCurrent();
  v337 = v462;
  v450 = v328;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v337 = sub_2659E0698(0, *(v462 + 2) + 1, 1, v462);
  }

  v339 = *(v337 + 2);
  v338 = *(v337 + 3);
  v453 = v327;
  v446 = v329;
  v438 = v333;
  v442 = v331;
  v340 = v326;
  if (v339 >= v338 >> 1)
  {
    v464 = sub_2659E0698((v338 > 1), v339 + 1, 1, v337);
  }

  else
  {
    v464 = v337;
  }

  v341 = *(v0 + 1760);
  v342 = *(v0 + 1744);
  v343 = *(v0 + 1712);
  v344 = *(v0 + 1704);
  v424 = *(v0 + 1648);
  v345 = *(v0 + 1632);
  v346 = *(v0 + 1624);

  (*(v345 + 8))(v424, v346);
  *(v464 + 2) = v339 + 1;
  v347 = &v464[120 * v339];
  v347[32] = 2;
  *(v347 + 56) = v456;
  *(v347 + 40) = v487;
  *(v347 + 9) = v453;
  *(v347 + 10) = v450;
  v347[88] = v446;
  *(v347 + 12) = 2;
  *(v347 + 13) = v442;
  *(v347 + 14) = v438;
  *(v347 + 15) = v434;
  *(v347 + 16) = v431;
  *(v347 + 17) = v428;
  *(v347 + 18) = v336;
LABEL_116:
  v348 = *(v0 + 1688);
  v349 = *(v0 + 1680);
  v350 = *(v0 + 1312);
  v351 = *(v0 + 1304);
  v352 = *(v0 + 1296);

  *v352 = v351;
  v352[1] = v350;
  v352[2] = v349;
  v352[3] = v348;
  v352[4] = v469.i64[0];
  v352[5] = v464;

  v353 = *(v0 + 8);

  return v353();
}

uint64_t sub_265A03F84()
{
  v168 = v0;
  v167 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1816);
  swift_willThrow();
  *(v0 + 1224) = v1;
  v2 = v1;
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1240);
    *(v0 + 1952) = v3;
    if ([v3 code] == 10002)
    {

      v4 = v3;
      v5 = sub_265A1EA80();
      v6 = sub_265A1EF20();

      if (os_log_type_enabled(v5, v6))
      {
        v157 = *(v0 + 1688);
        v7 = *(v0 + 1680);
        v8 = *(v0 + 1312);
        v9 = *(v0 + 1304);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v162 = v12;
        *v10 = 136446722;
        *(v10 + 4) = sub_2659D9320(v9, v8, &v162);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_2659D9320(v7, v157, &v162);
        *(v10 + 22) = 2114;
        *(v10 + 24) = v4;
        *v11 = v4;
        v13 = v4;
        _os_log_impl(&dword_2659CA000, v5, v6, "Failed to execute all entities query for AppIntent: %{public}s, AppEntity %{public}s with error %{public}@. Falling back to suggested entities query", v10, 0x20u);
        sub_2659DA270(v11, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v11, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v12, -1, -1);
        MEMORY[0x266766110](v10, -1, -1);
      }

      sub_265A0BFD4(*(v0 + 1696), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), &v162);
      v129 = v163;
      v130 = v162;
      v127 = v165;
      v128 = v164;
      v126 = v166;
      Current = CFAbsoluteTimeGetCurrent();
      v15 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_2659E0698((v16 > 1), v17 + 1, 1, v15);
      }

      *(v0 + 1960) = v15;
      v154 = *(v0 + 1800);
      v144 = *(v0 + 1784);
      v151 = *(v0 + 1760);
      v18 = *(v0 + 1720);
      v124 = *(v0 + 1728);
      v125 = *(v0 + 1704);
      v123 = *(v0 + 1648);
      v19 = *(v0 + 1640);
      v20 = *(v0 + 1624);
      v21 = *(v0 + 1616);
      v22 = *(v0 + 1600);
      v137 = *(v0 + 1592);
      v131 = *(v0 + 1576);
      *(v15 + 2) = v17 + 1;
      v23 = &v15[120 * v17];
      v23[32] = 1;
      *(v23 + 56) = v129;
      *(v23 + 40) = v130;
      *(v23 + 9) = v128;
      *(v23 + 10) = v127;
      v23[88] = v126;
      *(v23 + 6) = xmmword_265A22630;
      *(v23 + 7) = 0u;
      *(v23 + 8) = 0u;
      *(v23 + 18) = Current;
      sub_2659F3D98(0, &qword_28156A890, 0x277D23B90);
      v18(v21, *MEMORY[0x277D23A30], v22);
      v124(v19, v123, v20);
      v24 = v125;
      v25 = sub_265A1EF80();
      *(v0 + 1968) = v25;
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 1168;
      *(v0 + 152) = sub_265A04EFC;
      swift_continuation_init();
      *(v0 + 456) = v131;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
      sub_265A1ED80();
      v144(boxed_opaque_existential_1, v137, v131);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_265A0C130;
      *(v0 + 424) = &block_descriptor_4;
      [v151 performConfigurableQuery:v25 completionHandler:?];
      v154(boxed_opaque_existential_1, v131);

      return MEMORY[0x282200938](v0 + 144);
    }
  }

  v27 = (v0 + 1280);

  v28 = *(v0 + 1816);
  *(v0 + 1248) = v28;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  if (!swift_dynamicCast())
  {
    goto LABEL_24;
  }

  v30 = *v27;
  v31 = [*v27 domain];
  v32 = sub_265A1EBA0();
  v34 = v33;

  if (v32 != sub_265A1EBA0() || v34 != v35)
  {
    v36 = sub_265A1F340();

    if (v36)
    {
      goto LABEL_16;
    }

LABEL_24:

    v77 = v28;
    v78 = sub_265A1EA80();
    v79 = sub_265A1EF20();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v0 + 1688);
      v81 = v28;
      v82 = *(v0 + 1680);
      v160 = *(v0 + 1312);
      v83 = *(v0 + 1304);
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v162 = v86;
      *v84 = 136446722;
      v87 = v82;
      v28 = v81;
      *(v84 + 4) = sub_2659D9320(v87, v80, &v162);
      *(v84 + 12) = 2082;
      *(v84 + 14) = sub_2659D9320(v83, v160, &v162);
      *(v84 + 22) = 2114;
      v88 = v81;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 24) = v89;
      *v85 = v89;
      _os_log_impl(&dword_2659CA000, v78, v79, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v84, 0x20u);
      sub_2659DA270(v85, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v85, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v86, -1, -1);
      MEMORY[0x266766110](v84, -1, -1);
    }

    v90 = *(v0 + 1696);
    v91 = *(v0 + 1688);
    v92 = *(v0 + 1680);
    v93 = *(v0 + 1312);
    v94 = *(v0 + 1304);
    v95 = sub_265A1E680();
    sub_265A0BFD4(v90, v94, v93, v92, v91, &v162);
    v153 = v163;
    v156 = v162;
    v96 = v165;
    v150 = v164;
    v97 = v166;
    v98 = [v95 domain];
    v99 = sub_265A1EBA0();
    v101 = v100;

    v136 = [v95 code];
    swift_getErrorValue();
    v102 = sub_265A1F380();
    v132 = v103;
    v134 = v102;
    v104 = CFAbsoluteTimeGetCurrent();
    v105 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = sub_2659E0698(0, *(v105 + 2) + 1, 1, v105);
    }

    v107 = *(v105 + 2);
    v106 = *(v105 + 3);
    v148 = v96;
    v146 = v97;
    v141 = v101;
    v143 = v99;
    v139 = v28;
    if (v107 >= v106 >> 1)
    {
      v161 = sub_2659E0698((v106 > 1), v107 + 1, 1, v105);
    }

    else
    {
      v161 = v105;
    }

    v108 = *(v0 + 1760);
    v109 = *(v0 + 1744);
    v110 = *(v0 + 1712);
    v111 = *(v0 + 1704);
    v112 = *(v0 + 1648);
    v113 = *(v0 + 1632);
    v114 = *(v0 + 1624);

    (*(v113 + 8))(v112, v114);
    v75 = v161;
    *(v161 + 2) = v107 + 1;
    v115 = &v161[120 * v107];
    v115[32] = 2;
    *(v115 + 56) = v153;
    *(v115 + 40) = v156;
    *(v115 + 9) = v150;
    *(v115 + 10) = v148;
    v115[88] = v146;
    *(v115 + 12) = 2;
    *(v115 + 13) = v143;
    *(v115 + 14) = v141;
    *(v115 + 15) = v136;
    *(v115 + 16) = v134;
    *(v115 + 17) = v132;
    *(v115 + 18) = v104;
    goto LABEL_31;
  }

LABEL_16:

  v37 = v30;
  v38 = sub_265A1EA80();
  v39 = sub_265A1EF30();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 1688);
    v41 = *(v0 + 1680);
    v158 = *(v0 + 1312);
    v42 = *(v0 + 1304);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v162 = v45;
    *v43 = 136446722;
    *(v43 + 4) = sub_2659D9320(v41, v40, &v162);
    *(v43 + 12) = 2082;
    *(v43 + 14) = sub_2659D9320(v42, v158, &v162);
    *(v43 + 22) = 2114;
    *(v43 + 24) = v37;
    *v44 = v37;
    v46 = v37;
    _os_log_impl(&dword_2659CA000, v38, v39, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v43, 0x20u);
    sub_2659DA270(v44, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v45, -1, -1);
    MEMORY[0x266766110](v43, -1, -1);
  }

  v47 = *(v0 + 1696);
  v48 = *(v0 + 1688);
  v49 = *(v0 + 1680);
  v50 = *(v0 + 1312);
  v51 = *(v0 + 1304);
  v52 = v37;
  sub_265A0BFD4(v47, v51, v50, v49, v48, &v162);
  v152 = v163;
  v155 = v162;
  v53 = v164;
  v54 = v165;
  v55 = v166;
  v56 = [v52 domain];
  v57 = sub_265A1EBA0();
  v59 = v58;

  v60 = [v52 code];
  v61 = [v52 localizedDescription];

  v62 = sub_265A1EBA0();
  v133 = v63;
  v135 = v62;

  v64 = CFAbsoluteTimeGetCurrent();
  v65 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_2659E0698(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  v147 = v54;
  v149 = v53;
  v145 = v55;
  v140 = v59;
  v142 = v57;
  v138 = v60;
  if (v67 >= v66 >> 1)
  {
    v159 = sub_2659E0698((v66 > 1), v67 + 1, 1, v65);
  }

  else
  {
    v159 = v65;
  }

  v68 = *(v0 + 1760);
  v69 = *(v0 + 1744);
  v70 = *(v0 + 1712);
  v71 = *(v0 + 1704);
  v72 = *(v0 + 1648);
  v73 = *(v0 + 1632);
  v74 = *(v0 + 1624);

  (*(v73 + 8))(v72, v74);
  v75 = v159;
  *(v159 + 2) = v67 + 1;
  v76 = &v159[120 * v67];
  v76[32] = 0;
  *(v76 + 56) = v152;
  *(v76 + 40) = v155;
  *(v76 + 9) = v149;
  *(v76 + 10) = v147;
  v76[88] = v145;
  *(v76 + 12) = 2;
  *(v76 + 13) = v142;
  *(v76 + 14) = v140;
  *(v76 + 15) = v138;
  *(v76 + 16) = v135;
  *(v76 + 17) = v133;
  *(v76 + 18) = v64;

LABEL_31:
  v116 = *(v0 + 1688);
  v117 = *(v0 + 1680);
  v118 = *(v0 + 1312);
  v119 = *(v0 + 1304);
  v120 = *(v0 + 1296);

  *v120 = v119;
  v120[1] = v118;
  v120[2] = v117;
  v120[3] = v116;
  v120[4] = MEMORY[0x277D84F90];
  v120[5] = v75;

  v121 = *(v0 + 8);

  return v121();
}

uint64_t sub_265A04EFC()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1976) = v1;
  if (v1)
  {
    v2 = sub_265A07A4C;
  }

  else
  {
    v2 = sub_265A05038;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265A05038()
{
  v433 = v0;
  v432 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1968);

  v2 = *(v0 + 1168);
  v3 = *(v0 + 1960);
  *(v0 + 1832) = v2;

  v4 = sub_265A1EA80();
  v5 = sub_265A1EF30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1688);
    v7 = *(v0 + 1680);
    v8 = *(v0 + 1312);
    v9 = *(v0 + 1304);
    v10 = swift_slowAlloc();
    v412 = v3;
    v11 = swift_slowAlloc();
    *&v427 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_2659D9320(v9, v8, &v427);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_2659D9320(v7, v6, &v427);
    _os_log_impl(&dword_2659CA000, v4, v5, "…successfully executed Entity Query for AppIntent: %{public}s, AppEntity %{public}s.", v10, 0x16u);
    swift_arrayDestroy();
    v12 = v11;
    v3 = v412;
    MEMORY[0x266766110](v12, -1, -1);
    MEMORY[0x266766110](v10, -1, -1);
  }

  v13 = [v2 value];
  v14 = [v13 value];

  sub_265A1F000();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B718, &qword_265A22678);
  if (!swift_dynamicCast())
  {
    sub_265A0CAD0();
    v26 = swift_allocError();
    *v27 = 0;
    swift_willThrow();

    v407 = MEMORY[0x277D84F90];
LABEL_9:
    v28 = (v0 + 1280);
    *(v0 + 1248) = v26;
    v29 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v30 = *v28;
      v31 = [*v28 domain];
      v32 = sub_265A1EBA0();
      v34 = v33;

      if (v32 == sub_265A1EBA0() && v34 == v35)
      {

LABEL_103:

        v240 = v30;
        v241 = sub_265A1EA80();
        v242 = sub_265A1EF30();

        if (os_log_type_enabled(v241, v242))
        {
          v243 = *(v0 + 1688);
          v244 = *(v0 + 1680);
          v402 = *(v0 + 1312);
          v423 = v3;
          v245 = *(v0 + 1304);
          v246 = swift_slowAlloc();
          v247 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          *&v427 = v248;
          *v246 = 136446722;
          *(v246 + 4) = sub_2659D9320(v244, v243, &v427);
          *(v246 + 12) = 2082;
          v249 = v245;
          v3 = v423;
          *(v246 + 14) = sub_2659D9320(v249, v402, &v427);
          *(v246 + 22) = 2114;
          *(v246 + 24) = v240;
          *v247 = v240;
          v250 = v240;
          _os_log_impl(&dword_2659CA000, v241, v242, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v246, 0x20u);
          sub_2659DA270(v247, &qword_28002B678, &unk_265A21AC0);
          MEMORY[0x266766110](v247, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266766110](v248, -1, -1);
          MEMORY[0x266766110](v246, -1, -1);
        }

        v251 = *(v0 + 1696);
        v252 = *(v0 + 1688);
        v253 = *(v0 + 1680);
        v254 = *(v0 + 1312);
        v255 = *(v0 + 1304);
        v256 = v240;
        sub_265A0BFD4(v251, v255, v254, v253, v252, &v427);
        v394 = v428;
        v403 = v427;
        v390 = v429;
        v383 = v430;
        v377 = v431;
        v257 = [v256 domain];
        v258 = sub_265A1EBA0();
        v368 = v259;
        v371 = v258;

        v365 = [v256 code];
        v260 = [v256 localizedDescription];

        v261 = sub_265A1EBA0();
        v357 = v262;
        v362 = v261;

        Current = CFAbsoluteTimeGetCurrent();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2659E0698(0, *(v3 + 2) + 1, 1, v3);
        }

        v265 = *(v3 + 2);
        v264 = *(v3 + 3);
        if (v265 >= v264 >> 1)
        {
          v424 = sub_2659E0698((v264 > 1), v265 + 1, 1, v3);
        }

        else
        {
          v424 = v3;
        }

        v266 = *(v0 + 1760);
        v267 = *(v0 + 1744);
        v268 = *(v0 + 1712);
        v269 = *(v0 + 1704);
        v270 = *(v0 + 1648);
        v271 = *(v0 + 1632);
        v272 = *(v0 + 1624);

        (*(v271 + 8))(v270, v272);
        *(v424 + 2) = v265 + 1;
        v273 = &v424[120 * v265];
        v273[32] = 0;
        *(v273 + 56) = v394;
        *(v273 + 40) = v403;
        *(v273 + 9) = v390;
        *(v273 + 10) = v383;
        v273[88] = v377;
        *(v273 + 12) = 2;
        *(v273 + 13) = v371;
        *(v273 + 14) = v368;
        *(v273 + 15) = v365;
        *(v273 + 16) = v362;
        *(v273 + 17) = v357;
        *(v273 + 18) = Current;

        goto LABEL_132;
      }

      v239 = sub_265A1F340();

      if (v239)
      {
        goto LABEL_103;
      }
    }

    v275 = v26;
    v276 = sub_265A1EA80();
    v277 = sub_265A1EF20();

    if (os_log_type_enabled(v276, v277))
    {
      v278 = *(v0 + 1688);
      v279 = *(v0 + 1680);
      v404 = *(v0 + 1312);
      v425 = v3;
      v280 = *(v0 + 1304);
      v281 = swift_slowAlloc();
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      *&v427 = v283;
      *v281 = 136446722;
      *(v281 + 4) = sub_2659D9320(v279, v278, &v427);
      *(v281 + 12) = 2082;
      v284 = v280;
      v3 = v425;
      *(v281 + 14) = sub_2659D9320(v284, v404, &v427);
      *(v281 + 22) = 2114;
      v285 = v26;
      v286 = _swift_stdlib_bridgeErrorToNSError();
      *(v281 + 24) = v286;
      *v282 = v286;
      _os_log_impl(&dword_2659CA000, v276, v277, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v281, 0x20u);
      sub_2659DA270(v282, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v282, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v283, -1, -1);
      MEMORY[0x266766110](v281, -1, -1);
    }

    v287 = *(v0 + 1696);
    v288 = *(v0 + 1688);
    v289 = *(v0 + 1680);
    v290 = *(v0 + 1312);
    v291 = *(v0 + 1304);
    v292 = sub_265A1E680();
    sub_265A0BFD4(v287, v291, v290, v289, v288, &v427);
    v395 = v428;
    v405 = v427;
    v391 = v429;
    v384 = v430;
    v378 = v431;
    v293 = [v292 domain];
    v294 = sub_265A1EBA0();
    v369 = v295;
    v372 = v294;

    v366 = v292;
    v363 = [v292 code];
    swift_getErrorValue();
    v358 = sub_265A1F380();
    v355 = v296;
    v297 = CFAbsoluteTimeGetCurrent();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2659E0698(0, *(v3 + 2) + 1, 1, v3);
    }

    v299 = *(v3 + 2);
    v298 = *(v3 + 3);
    if (v299 >= v298 >> 1)
    {
      v424 = sub_2659E0698((v298 > 1), v299 + 1, 1, v3);
    }

    else
    {
      v424 = v3;
    }

    v300 = *(v0 + 1760);
    v301 = *(v0 + 1744);
    v302 = *(v0 + 1712);
    v303 = *(v0 + 1704);
    v304 = *(v0 + 1648);
    v305 = *(v0 + 1632);
    v306 = *(v0 + 1624);

    (*(v305 + 8))(v304, v306);
    *(v424 + 2) = v299 + 1;
    v307 = &v424[120 * v299];
    v307[32] = 2;
    *(v307 + 56) = v395;
    *(v307 + 40) = v405;
    *(v307 + 9) = v391;
    *(v307 + 10) = v384;
    v307[88] = v378;
    *(v307 + 12) = 2;
    *(v307 + 13) = v372;
    *(v307 + 14) = v369;
    *(v307 + 15) = v363;
    *(v307 + 16) = v358;
    *(v307 + 17) = v355;
    *(v307 + 18) = v297;
    goto LABEL_132;
  }

  v15 = *(v0 + 1272);
  *(v0 + 1840) = v15;

  v16 = sub_265A1EA80();
  v17 = sub_265A1EF30();

  v18 = v15 >> 62;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v427 = v20;
    *v19 = 134349570;
    v413 = v3;
    v397 = v20;
    if (v18)
    {
      v21 = sub_265A1F1E0();
    }

    else
    {
      v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = *(v0 + 1688);
    v23 = *(v0 + 1680);
    v24 = *(v0 + 1312);
    v25 = *(v0 + 1304);
    *(v19 + 4) = v21;

    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2659D9320(v25, v24, &v427);
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_2659D9320(v23, v22, &v427);
    _os_log_impl(&dword_2659CA000, v16, v17, "Begin processing %{public}ld Link Entity Instances for AppIntent: %{public}s, AppEntity %{public}s…", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v397, -1, -1);
    MEMORY[0x266766110](v19, -1, -1);

    v3 = v413;
  }

  else
  {
  }

  *(v0 + 1848) = v15;
  if (v18)
  {
    goto LABEL_127;
  }

  v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1856) = v36;
  if (v36)
  {
    do
    {
      v37 = 0;
      v335 = (v0 + 584);
      v338 = (v0 + 808);
      v393 = (v0 + 1232);
      v367 = (v0 + 633);
      v336 = (v0 + 857);
      v337 = (v0 + 801);
      v339 = (v0 + 1984);
      v340 = (v0 + 1153);
      v341 = (v0 + 2047);
      v342 = (v0 + 2040);
      v364 = (v0 + 2068);
      v38 = MEMORY[0x277D84F90];
      v39 = MEMORY[0x277D84F90];
      while (1)
      {
        *(v0 + 1880) = v39;
        *(v0 + 1872) = v38;
        *(v0 + 1864) = v3;
        v40 = *(v0 + 1848);
        if ((v40 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x2667656F0](v37, *(v0 + 1840));
        }

        else
        {
          if (v37 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v41 = *(*(v0 + 1840) + 8 * v37 + 32);
        }

        v42 = v41;
        *(v0 + 1888) = v41;
        *(v0 + 1896) = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v43 = [v41 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (!swift_dynamicCast())
        {
          sub_265A0CAD0();
          v26 = swift_allocError();
          *v51 = 1;
          swift_willThrow();
          *v393 = v26;
          v52 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          v407 = v38;
          if (!swift_dynamicCast())
          {
            goto LABEL_110;
          }

          v398 = v39;
          if (*(v0 + 2082) == 1)
          {

            v53 = sub_265A1EA80();
            v64 = sub_265A1EF20();

            if (os_log_type_enabled(v53, v64))
            {
              v65 = *(v0 + 1688);
              v66 = *(v0 + 1680);
              v388 = *(v0 + 1312);
              v415 = v3;
              v67 = *(v0 + 1304);
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *&v427 = v59;
              *v58 = 136446466;
              *(v58 + 4) = sub_2659D9320(v66, v65, &v427);
              *(v58 + 12) = 2082;
              v68 = v67;
              v3 = v415;
              *(v58 + 14) = sub_2659D9320(v68, v388, &v427);
              v61 = v64;
              v62 = v53;
              v63 = "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.";
LABEL_17:
              _os_log_impl(&dword_2659CA000, v62, v61, v63, v58, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266766110](v59, -1, -1);
              MEMORY[0x266766110](v58, -1, -1);
            }
          }

          else
          {
            if (*(v0 + 2082))
            {
LABEL_110:
              v274 = *(v0 + 1832);

              goto LABEL_9;
            }

            v53 = sub_265A1EA80();
            v54 = sub_265A1EF20();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = *(v0 + 1688);
              v56 = *(v0 + 1680);
              v387 = *(v0 + 1312);
              v414 = v3;
              v57 = *(v0 + 1304);
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *&v427 = v59;
              *v58 = 136446466;
              *(v58 + 4) = sub_2659D9320(v56, v55, &v427);
              *(v58 + 12) = 2082;
              v60 = v57;
              v3 = v414;
              *(v58 + 14) = sub_2659D9320(v60, v387, &v427);
              v61 = v54;
              v62 = v53;
              v63 = "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.";
              goto LABEL_17;
            }
          }

          v38 = v407;
          v39 = v398;

          goto LABEL_19;
        }

        v386 = *(v0 + 1256);
        *(v0 + 1904) = v386;
        v44 = swift_allocObject();
        *(v0 + 1912) = v44;
        *(v44 + 16) = 0u;
        *(v44 + 32) = 0u;
        *(v44 + 48) = 0u;
        *(v44 + 64) = -1;
        v45 = [v42 displayRepresentation];
        *(v0 + 1920) = v45;
        if (!v45)
        {
          v408 = v38;
          sub_265A0C1E0(v44, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v386, v0 + 528);
          v380 = *(v0 + 544);
          v416 = *(v0 + 528);
          v69 = *(v0 + 560);
          v70 = *(v0 + 568);
          v71 = *(v0 + 576);
          v72 = CFAbsoluteTimeGetCurrent();
          *v364 = *(v0 + 577);
          *(v0 + 2071) = *(v0 + 580);
          *v367 = *(v0 + 2033);
          *(v0 + 636) = *(v0 + 2036);
          v399 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_2659E0698(0, *(v3 + 2) + 1, 1, v3);
          }

          v74 = *(v3 + 2);
          v73 = *(v3 + 3);
          if (v74 >= v73 >> 1)
          {
            v3 = sub_2659E0698((v73 > 1), v74 + 1, 1, v3);
          }

          *(v3 + 2) = v74 + 1;
          v75 = &v3[120 * v74];
          v75[32] = 2;
          v76 = *v364;
          *(v75 + 9) = *(v0 + 2071);
          *(v75 + 33) = v76;
          *(v75 + 56) = v380;
          *(v75 + 40) = v416;
          *(v75 + 9) = v69;
          *(v75 + 10) = v70;
          v75[88] = v71;
          v77 = *v367;
          *(v75 + 23) = *(v0 + 636);
          *(v75 + 89) = v77;
          *(v75 + 12) = 0x8000000000000001;
          *(v75 + 104) = 0u;
          *(v75 + 120) = 0u;
          *(v75 + 17) = 0;
          *(v75 + 18) = v72;

          v38 = v408;
          v39 = v399;
          goto LABEL_19;
        }

        v46 = [v42 exportedContent];
        if (!v46)
        {
          v78 = *(*(v0 + 1536) + 56);
          v78(*(v0 + 1520), 1, 1, *(v0 + 1528));
LABEL_45:
          *(v0 + 1928) = v78;
          sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
          v85 = [v42 exportedContent];
          if (!v85)
          {
            goto LABEL_122;
          }

          v86 = v85;
          v87 = [v85 content];

          v88 = [v87 data];
          v89 = sub_265A1E780();
          v91 = v90;

          v92 = v91 >> 62;
          if ((v91 >> 62) > 1)
          {
            if (v92 != 2)
            {
              goto LABEL_120;
            }

            v93 = *(v89 + 16);
            v94 = *(v89 + 24);
          }

          else
          {
            if (!v92)
            {
              if ((v91 & 0xFF000000000000) == 0)
              {
                goto LABEL_120;
              }

LABEL_54:
              v95 = *(v0 + 1536);
              v96 = *(v0 + 1528);
              v97 = *(v0 + 1504);
              v98 = *(v0 + 1496);
              v78(v98, 1, 1, v96);
              sub_265A1E700();
              sub_265A0CB94(v89, v91);
              sub_2659DA270(v98, &qword_28002B700, &qword_265A22658);
              v417 = *(v95 + 48);
              v99 = v417(v97, 1, v96);
              v84 = (v0 + 1504);
              if (v99 == 1)
              {
                sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
LABEL_122:
                v426 = *(v0 + 1760);
                v309 = *(v0 + 1488);
                v310 = *(v0 + 1432);
                v311 = *(v0 + 1424);
                v312 = *(v0 + 1416);
                *(v0 + 16) = v0;
                *(v0 + 56) = v309;
                *(v0 + 24) = sub_265A00F8C;
                swift_continuation_init();
                *(v0 + 328) = v312;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
                *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
                sub_265A1ED80();
                (*(v311 + 32))(boxed_opaque_existential_1, v310, v312);
                *(v0 + 272) = MEMORY[0x277D85DD0];
                *(v0 + 280) = 1107296256;
                *(v0 + 288) = sub_265A0C3A0;
                *(v0 + 296) = &block_descriptor_8;
                [v426 fetchEntityURL:v386 completionHandler:v0 + 272];
                (*(v311 + 8))(boxed_opaque_existential_1, v312);
                v314 = v0 + 16;

                return MEMORY[0x282200938](v314);
              }

              goto LABEL_55;
            }

            v93 = v89;
            v94 = v89 >> 32;
          }

          if (v93 == v94)
          {
LABEL_120:
            sub_265A0CB94(v89, v91);
            goto LABEL_122;
          }

          goto LABEL_54;
        }

        v47 = v46;
        v48 = [v46 content];

        v49 = [v48 fileURL];
        if (v49)
        {
          sub_265A1E730();

          v50 = 0;
        }

        else
        {
          v50 = 1;
        }

        v79 = *(v0 + 1536);
        v80 = *(v0 + 1528);
        v81 = *(v0 + 1520);
        v82 = *(v0 + 1512);
        v78 = *(v79 + 56);
        v78(v82, v50, 1, v80);
        sub_265A0CB24(v82, v81);
        v417 = *(v79 + 48);
        v83 = v417(v81, 1, v80);
        v84 = (v0 + 1520);
        if (v83 == 1)
        {
          goto LABEL_45;
        }

LABEL_55:
        v389 = v78;
        v100 = *(v0 + 1568);
        v101 = *(v0 + 1552);
        v102 = *(v0 + 1544);
        v103 = *(v0 + 1536);
        v104 = *(v0 + 1528);
        v105 = *(v0 + 1320);
        v374 = *(v103 + 32);
        v374(v100, *v84, v104);
        v106 = *(v103 + 16);
        v106(v101, v100, v104);
        v400 = v106;
        v106(v102, v100, v104);
        v107 = *(v105 + 16);

        if (v107)
        {
          v108 = 0;
          while (1)
          {
            v109 = *(v0 + 1544);
            v110 = *(v0 + 1528);
            v111 = *(v0 + 1464);
            v112 = *(v0 + 1320) + v108;
            v113 = *(v112 + 32);

            v113(v109);

            if (v417(v111, 1, v110) != 1)
            {
              break;
            }

            sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
            v108 += 16;
            if (!--v107)
            {
              goto LABEL_59;
            }
          }

          v116 = *(v0 + 1552);
          v117 = *(v0 + 1536);
          v381 = *(v0 + 1528);
          v118 = *(v0 + 1456);
          v119 = *(v0 + 1448);
          sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
          v120 = *(v112 + 32);

          v120(v116);
          v114 = *(v117 + 8);
          v114(v116, v381);

          sub_265A0CBE8(v118, v119, &qword_28002B700, &qword_265A22658);
          if (v417(v119, 1, v381) == 1)
          {
            v314 = (v114)(*(v0 + 1544), *(v0 + 1528));
            __break(1u);
            return MEMORY[0x282200938](v314);
          }

          v121 = *(v0 + 1456);
          v374(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
          sub_2659DA270(v121, &qword_28002B700, &qword_265A22658);
          v115 = 0;
        }

        else
        {
LABEL_59:
          v114 = *(*(v0 + 1536) + 8);
          v114(*(v0 + 1552), *(v0 + 1528));
          v115 = 1;
        }

        v382 = v114;
        v122 = *(v0 + 1544);
        v123 = *(v0 + 1528);
        v124 = *(v0 + 1472);
        v389(v124, v115, 1, v123);

        v114(v122, v123);
        if (v417(v124, 1, v123) == 1)
        {
          v125 = *(v0 + 1568);
          v126 = *(v0 + 1560);
          v127 = *(v0 + 1528);
          sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
          v400(v126, v125, v127);
          v128 = *(v0 + 1864);
        }

        else
        {
          v129 = *(v0 + 1912);
          v130 = *(v0 + 1904);
          v131 = *(v0 + 1688);
          v132 = *(v0 + 1680);
          v133 = *(v0 + 1312);
          v134 = *(v0 + 1304);
          v374(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
          sub_265A0C1E0(v129, v134, v133, v132, v131, v130, v338);
          v375 = *(v0 + 824);
          v418 = *v338;
          v135 = *(v0 + 840);
          v136 = *(v0 + 848);
          v137 = *(v0 + 856);
          v138 = CFAbsoluteTimeGetCurrent();
          *v342 = *(v0 + 2054);
          *(v0 + 2043) = *(v0 + 2057);
          *v341 = *(v0 + 2061);
          *(v0 + 2050) = *(v0 + 2064);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128 = *(v0 + 1864);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v128 = sub_2659E0698(0, *(v128 + 2) + 1, 1, *(v0 + 1864));
          }

          v141 = *(v128 + 2);
          v140 = *(v128 + 3);
          if (v141 >= v140 >> 1)
          {
            v128 = sub_2659E0698((v140 > 1), v141 + 1, 1, v128);
          }

          *(v128 + 2) = v141 + 1;
          v142 = &v128[120 * v141];
          v142[32] = 1;
          v143 = *v342;
          *(v142 + 9) = *(v0 + 2043);
          *(v142 + 33) = v143;
          *(v142 + 56) = v375;
          *(v142 + 40) = v418;
          *(v142 + 9) = v135;
          *(v142 + 10) = v136;
          v142[88] = v137;
          v144 = *v341;
          *(v142 + 23) = *(v0 + 2050);
          *(v142 + 89) = v144;
          *(v142 + 6) = xmmword_265A22600;
          *(v142 + 7) = 0u;
          *(v142 + 8) = 0u;
          *(v142 + 18) = v138;
        }

        v145 = [*(v0 + 1920) image];
        if (v145 && (v146 = v145, sub_265A1110C(v0 + 1096), v146, *(v0 + 1104)))
        {
          v376 = *(v0 + 1104);
          v359 = *(v0 + 1096);
          v356 = *(v0 + 1112);
        }

        else
        {
          sub_265A1CF6C(v0 + 1128);
          if (!*(v0 + 1136))
          {
            v206 = *(v0 + 1904);
            v207 = *(v0 + 1328);

            v208 = v206;
            v209 = sub_265A1EA80();
            v210 = sub_265A1EF30();

            if (os_log_type_enabled(v209, v210))
            {
              v401 = *(v0 + 1904);
              v211 = *(v0 + 1328);
              v421 = *(v0 + 1312);
              v410 = *(v0 + 1304);
              v212 = swift_slowAlloc();
              v213 = swift_slowAlloc();
              v214 = swift_slowAlloc();
              *&v427 = v214;
              *v212 = 136446979;
              v215 = [v211 identifier];
              v216 = v128;
              v217 = sub_265A1EBA0();
              v219 = v218;

              v220 = v217;
              v128 = v216;
              v221 = sub_2659D9320(v220, v219, &v427);

              *(v212 + 4) = v221;
              *(v212 + 12) = 2160;
              *(v212 + 14) = 1752392040;
              *(v212 + 22) = 2113;
              v222 = [v401 identifier];
              *(v212 + 24) = v222;
              *v213 = v222;
              *(v212 + 32) = 2082;
              *(v212 + 34) = sub_2659D9320(v410, v421, &v427);
              _os_log_impl(&dword_2659CA000, v209, v210, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v212, 0x2Au);
              sub_2659DA270(v213, &qword_28002B678, &unk_265A21AC0);
              MEMORY[0x266766110](v213, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x266766110](v214, -1, -1);
              MEMORY[0x266766110](v212, -1, -1);
            }

            sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
            v411 = *(v0 + 656);
            v422 = *(v0 + 640);
            v223 = *(v0 + 672);
            v224 = *(v0 + 680);
            v225 = *(v0 + 688);
            v226 = CFAbsoluteTimeGetCurrent();
            *v337 = *(v0 + 1114);
            *(v0 + 804) = *(v0 + 1117);
            *v336 = *(v0 + 1121);
            *(v0 + 860) = *(v0 + 1124);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v128 = sub_2659E0698(0, *(v128 + 2) + 1, 1, v128);
            }

            v227 = v128;
            v228 = *(v128 + 2);
            v229 = v227;
            v230 = *(v227 + 3);
            v361 = v225;
            if (v228 >= v230 >> 1)
            {
              v229 = sub_2659E0698((v230 > 1), v228 + 1, 1, v229);
            }

            v231 = *(v0 + 1920);
            v232 = *(v0 + 1888);
            v233 = *(v0 + 1568);
            v234 = *(v0 + 1560);
            v235 = *(v0 + 1528);

            v382(v234, v235);
            v382(v233, v235);
            *(v229 + 2) = v228 + 1;
            v236 = &v229[120 * v228];
            v3 = v229;
            v236[32] = 2;
            v237 = *v337;
            *(v236 + 9) = *(v0 + 804);
            *(v236 + 33) = v237;
            *(v236 + 56) = v411;
            *(v236 + 40) = v422;
            *(v236 + 9) = v223;
            *(v236 + 10) = v224;
            v236[88] = v361;
            v238 = *v336;
            *(v236 + 23) = *(v0 + 860);
            *(v236 + 89) = v238;
            *(v236 + 6) = xmmword_265A22620;
            *(v236 + 7) = 0u;
            *(v236 + 8) = 0u;
            *(v236 + 18) = v226;

            v39 = *(v0 + 1880);
            v38 = *(v0 + 1872);
            goto LABEL_19;
          }

          v376 = *(v0 + 1136);
          v359 = *(v0 + 1128);
          v356 = *(v0 + 1144);
          sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v335);
          v353 = *(v0 + 600);
          v419 = *v335;
          v147 = *(v0 + 616);
          v148 = *(v0 + 624);
          v149 = *(v0 + 632);
          v150 = CFAbsoluteTimeGetCurrent();
          *v340 = *(v0 + 1991);
          *(v0 + 1156) = *(v0 + 1994);
          *v339 = *(v0 + 1998);
          *(v0 + 1987) = *(v0 + 2001);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = sub_2659E0698(0, *(v128 + 2) + 1, 1, v128);
          }

          v152 = *(v128 + 2);
          v151 = *(v128 + 3);
          if (v152 >= v151 >> 1)
          {
            v128 = sub_2659E0698((v151 > 1), v152 + 1, 1, v128);
          }

          *(v128 + 2) = v152 + 1;
          v153 = &v128[120 * v152];
          v153[32] = 1;
          v154 = *v340;
          *(v153 + 9) = *(v0 + 1156);
          *(v153 + 33) = v154;
          *(v153 + 56) = v353;
          *(v153 + 40) = v419;
          *(v153 + 9) = v147;
          *(v153 + 10) = v148;
          v153[88] = v149;
          v155 = *v339;
          *(v153 + 23) = *(v0 + 1987);
          *(v153 + 89) = v155;
          *(v153 + 6) = xmmword_265A22610;
          *(v153 + 7) = 0u;
          *(v153 + 8) = 0u;
          *(v153 + 18) = v150;
        }

        v156 = [*(v0 + 1920) subtitle];
        if (v156)
        {
          v157 = v156;
          v158 = [v156 localizedStringResource];
          if (!v158)
          {
            return sub_265A1F1C0();
          }

          v159 = v158;
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v159;
          v160 = v159;
          sub_265A1E6A0();

          v161 = 0;
        }

        else
        {
          v161 = 1;
        }

        v162 = *(v0 + 1920);
        v163 = *(v0 + 1904);
        v164 = *(*(v0 + 1344) + 56);
        (v164)(*(v0 + 1408), v161, 1, *(v0 + 1336));
        v165 = [v163 identifier];
        v166 = [v165 instanceIdentifier];

        v167 = sub_265A1EBA0();
        v354 = v168;

        v169 = [v162 title];
        v170 = [v169 localizedStringResource];
        if (!v170)
        {
          return sub_265A1F1C0();
        }

        v171 = v170;
        v420 = v128;
        v172 = *(v0 + 1920);
        v173 = *(v0 + 1408);
        v174 = *(v0 + 1400);
        v175 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        *(v0 + 888) = v175;
        *(v0 + 864) = v171;
        v176 = v171;
        sub_265A1E6A0();

        sub_265A0CBE8(v173, v174, &qword_28002B6F0, &qword_265A21110);
        v177 = [v172 synonyms];
        if (v177)
        {
          v178 = v177;
          sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
          sub_265A1ECC0();

          v179 = sub_265A0C54C();
        }

        else
        {
          v179 = MEMORY[0x277D84F90];
        }

        v180 = [*(v0 + 1920) descriptionText];
        v351 = v167;
        v352 = v164;
        v350 = v179;
        if (v180)
        {
          v181 = v180;
          v182 = [v180 localizedStringResource];
          if (!v182)
          {
            return sub_265A1F1C0();
          }

          *(v0 + 920) = v175;
          *(v0 + 896) = v182;
          v183 = v182;
          sub_265A1E6A0();
        }

        v184 = *(v0 + 1560);
        v185 = *(v0 + 1528);
        v348 = *(v0 + 1400);
        v346 = *(v0 + 1688);
        v347 = *(v0 + 1392);
        v186 = *(v0 + 1384);
        v349 = *(v0 + 1376);
        v187 = *(v0 + 1360);
        v344 = *(v0 + 1680);
        v345 = *(v0 + 1352);
        v188 = *(v0 + 1344);
        v189 = *(v0 + 1336);
        v190 = *(v0 + 1312);
        v343 = *(v0 + 1304);
        v352();
        v400(&v186[v187[11]], v184, v185);
        v191 = v187[8];
        (v352)(&v186[v191], 1, 1, v189);
        v192 = v187[10];
        (v352)(&v186[v192], 1, 1, v189);
        *v186 = v343;
        *(v186 + 1) = v190;
        *(v186 + 2) = v344;
        *(v186 + 3) = v346;
        *(v186 + 4) = v351;
        *(v186 + 5) = v354;
        (*(v188 + 32))(&v186[v187[7]], v345, v189);

        sub_2659D9AD0(v348, &v186[v191]);
        *&v186[v187[9]] = v350;
        sub_2659D9AD0(v347, &v186[v192]);
        v193 = &v186[v187[12]];
        *v193 = v359;
        *(v193 + 1) = v376;
        v193[16] = v356 & 1;
        v193[17] = HIBYTE(v356) & 1;
        sub_2659DE470(v186, v349);
        v194 = swift_isUniquelyReferenced_nonNull_native();
        v195 = *(v0 + 1880);
        if ((v194 & 1) == 0)
        {
          v195 = sub_2659E0670(0, v195[2] + 1, 1, v195);
        }

        v197 = v195[2];
        v196 = v195[3];
        if (v197 >= v196 >> 1)
        {
          v409 = sub_2659E0670((v196 > 1), v197 + 1, 1, v195);
        }

        else
        {
          v409 = v195;
        }

        v198 = *(v0 + 1904);
        v199 = *(v0 + 1888);
        v200 = *(v0 + 1568);
        v201 = *(v0 + 1560);
        v202 = *(v0 + 1528);
        v203 = *(v0 + 1408);
        v360 = *(v0 + 1384);
        v204 = *(v0 + 1376);
        v205 = *(v0 + 1368);

        sub_2659DA270(v203, &qword_28002B6F0, &qword_265A21110);
        v382(v201, v202);
        v382(v200, v202);
        v38 = v409;
        v409[2] = v197 + 1;
        sub_265A0CC50(v204, v409 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v197);
        sub_2659DCF64(v360);

        v39 = v409;
        v3 = v420;
LABEL_19:
        v37 = *(v0 + 1896);
        if (v37 == *(v0 + 1856))
        {
          goto LABEL_129;
        }
      }

      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      v315 = sub_265A1F1E0();
      *(v0 + 1856) = v315;
    }

    while (v315);
  }

  v38 = MEMORY[0x277D84F90];
LABEL_129:
  v424 = v3;

  v316 = sub_265A1EA80();
  v317 = sub_265A1EF30();

  v318 = os_log_type_enabled(v316, v317);
  v319 = *(v0 + 1832);
  v320 = *(v0 + 1760);
  v396 = *(v0 + 1744);
  v321 = *(v0 + 1736);
  v406 = *(v0 + 1704);
  v322 = *(v0 + 1648);
  v323 = *(v0 + 1632);
  v324 = *(v0 + 1624);
  v407 = v38;
  if (v318)
  {
    v392 = *(v0 + 1648);
    v325 = *(v0 + 1312);
    v385 = *(v0 + 1624);
    v326 = *(v0 + 1304);
    v379 = *(v0 + 1712);
    v373 = *(v0 + 1832);
    v327 = swift_slowAlloc();
    v370 = v321;
    v328 = swift_slowAlloc();
    *&v427 = v328;
    *v327 = 136446466;
    *(v327 + 4) = sub_2659D9320(v326, v325, &v427);
    *(v327 + 12) = 2050;
    *(v327 + 14) = v38[2];

    _os_log_impl(&dword_2659CA000, v316, v317, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v327, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v328);
    MEMORY[0x266766110](v328, -1, -1);
    MEMORY[0x266766110](v327, -1, -1);

    (*(v323 + 8))(v392, v385);
  }

  else
  {

    (*(v323 + 8))(v322, v324);
  }

LABEL_132:
  v329 = *(v0 + 1688);
  v330 = *(v0 + 1680);
  v331 = *(v0 + 1312);
  v332 = *(v0 + 1304);
  v333 = *(v0 + 1296);

  *v333 = v332;
  v333[1] = v331;
  v333[2] = v330;
  v333[3] = v329;
  v333[4] = v407;
  v333[5] = v424;

  v334 = *(v0 + 8);

  return v334();
}

uint64_t sub_265A07A4C()
{
  v122 = v0;
  v121 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 1280);
  v2 = *(v0 + 1968);
  v3 = *(v0 + 1952);
  swift_willThrow();

  v4 = *(v0 + 1976);
  v5 = *(v0 + 1960);
  *(v0 + 1248) = v4;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *v1;
  v8 = [*v1 domain];
  v9 = sub_265A1EBA0();
  v11 = v10;

  if (v9 == sub_265A1EBA0() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_265A1F340();

    if ((v14 & 1) == 0)
    {

LABEL_8:

      v15 = v4;
      v16 = sub_265A1EA80();
      v17 = sub_265A1EF20();

      v113 = v4;
      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 1688);
        v19 = *(v0 + 1680);
        v109 = *(v0 + 1312);
        v20 = *(v0 + 1304);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *&v116 = v23;
        *v21 = 136446722;
        *(v21 + 4) = sub_2659D9320(v19, v18, &v116);
        *(v21 + 12) = 2082;
        *(v21 + 14) = sub_2659D9320(v20, v109, &v116);
        *(v21 + 22) = 2114;
        v24 = v113;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 24) = v25;
        *v22 = v25;
        _os_log_impl(&dword_2659CA000, v16, v17, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v21, 0x20u);
        sub_2659DA270(v22, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v22, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v23, -1, -1);
        MEMORY[0x266766110](v21, -1, -1);
      }

      v26 = *(v0 + 1696);
      v27 = *(v0 + 1688);
      v28 = *(v0 + 1680);
      v29 = *(v0 + 1312);
      v30 = *(v0 + 1304);
      v31 = sub_265A1E680();
      sub_265A0BFD4(v26, v30, v29, v28, v27, &v116);
      v107 = v117;
      v110 = v116;
      v103 = v119;
      v105 = v118;
      v101 = v120;
      v32 = [v31 domain];
      v33 = sub_265A1EBA0();
      v97 = v34;
      v99 = v33;

      v95 = v31;
      v93 = [v31 code];
      swift_getErrorValue();
      v35 = sub_265A1F380();
      v90 = v36;
      v91 = v35;
      Current = CFAbsoluteTimeGetCurrent();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2659E0698(0, *(v5 + 2) + 1, 1, v5);
      }

      v39 = *(v5 + 2);
      v38 = *(v5 + 3);
      if (v39 >= v38 >> 1)
      {
        v40 = sub_2659E0698((v38 > 1), v39 + 1, 1, v5);
      }

      else
      {
        v40 = v5;
      }

      v41 = *(v0 + 1760);
      v42 = *(v0 + 1744);
      v43 = *(v0 + 1712);
      v44 = *(v0 + 1704);
      v45 = *(v0 + 1648);
      v46 = *(v0 + 1632);
      v47 = *(v0 + 1624);

      (*(v46 + 8))(v45, v47);
      *(v40 + 2) = v39 + 1;
      v48 = &v40[120 * v39];
      v48[32] = 2;
      *(v48 + 56) = v107;
      *(v48 + 40) = v110;
      *(v48 + 9) = v105;
      *(v48 + 10) = v103;
      v48[88] = v101;
      *(v48 + 12) = 2;
      *(v48 + 13) = v99;
      *(v48 + 14) = v97;
      *(v48 + 15) = v93;
      *(v48 + 16) = v91;
      *(v48 + 17) = v90;
      *(v48 + 18) = Current;
      goto LABEL_23;
    }
  }

  v114 = v5;

  v49 = v7;
  v50 = sub_265A1EA80();
  v51 = sub_265A1EF30();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 1688);
    v53 = *(v0 + 1680);
    v111 = *(v0 + 1312);
    v54 = *(v0 + 1304);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&v116 = v57;
    *v55 = 136446722;
    *(v55 + 4) = sub_2659D9320(v53, v52, &v116);
    *(v55 + 12) = 2082;
    *(v55 + 14) = sub_2659D9320(v54, v111, &v116);
    *(v55 + 22) = 2114;
    *(v55 + 24) = v49;
    *v56 = v49;
    v58 = v49;
    _os_log_impl(&dword_2659CA000, v50, v51, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v55, 0x20u);
    sub_2659DA270(v56, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v56, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v57, -1, -1);
    MEMORY[0x266766110](v55, -1, -1);
  }

  v59 = *(v0 + 1696);
  v60 = *(v0 + 1688);
  v61 = *(v0 + 1680);
  v62 = *(v0 + 1312);
  v63 = *(v0 + 1304);
  v64 = v49;
  sub_265A0BFD4(v59, v63, v62, v61, v60, &v116);
  v108 = v117;
  v112 = v116;
  v104 = v119;
  v106 = v118;
  v102 = v120;
  v65 = [v64 domain];
  v66 = sub_265A1EBA0();
  v98 = v67;
  v100 = v66;

  v96 = [v64 code];
  v68 = [v64 localizedDescription];

  v69 = sub_265A1EBA0();
  v92 = v70;
  v94 = v69;

  v71 = CFAbsoluteTimeGetCurrent();
  v72 = v114;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_2659E0698(0, *(v114 + 2) + 1, 1, v114);
  }

  v74 = *(v72 + 2);
  v73 = *(v72 + 3);
  if (v74 >= v73 >> 1)
  {
    v115 = sub_2659E0698((v73 > 1), v74 + 1, 1, v72);
  }

  else
  {
    v115 = v72;
  }

  v75 = *(v0 + 1760);
  v76 = *(v0 + 1744);
  v77 = *(v0 + 1712);
  v78 = *(v0 + 1704);
  v79 = *(v0 + 1648);
  v80 = *(v0 + 1632);
  v81 = *(v0 + 1624);

  (*(v80 + 8))(v79, v81);
  v40 = v115;
  *(v115 + 2) = v74 + 1;
  v82 = &v115[120 * v74];
  v82[32] = 0;
  *(v82 + 56) = v108;
  *(v82 + 40) = v112;
  *(v82 + 9) = v106;
  *(v82 + 10) = v104;
  v82[88] = v102;
  *(v82 + 12) = 2;
  *(v82 + 13) = v100;
  *(v82 + 14) = v98;
  *(v82 + 15) = v96;
  *(v82 + 16) = v94;
  *(v82 + 17) = v92;
  *(v82 + 18) = v71;

LABEL_23:
  v83 = *(v0 + 1688);
  v84 = *(v0 + 1680);
  v85 = *(v0 + 1312);
  v86 = *(v0 + 1304);
  v87 = *(v0 + 1296);

  *v87 = v86;
  v87[1] = v85;
  v87[2] = v84;
  v87[3] = v83;
  v87[4] = MEMORY[0x277D84F90];
  v87[5] = v40;

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_265A08488()
{
  v119 = v0;
  v118 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 1280);
  swift_willThrow();
  v2 = *(v0 + 1824);
  *(v0 + 1248) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = [*v1 domain];
  v6 = sub_265A1EBA0();
  v8 = v7;

  if (v6 == sub_265A1EBA0() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_265A1F340();

    if ((v11 & 1) == 0)
    {

LABEL_8:

      v12 = v2;
      v13 = sub_265A1EA80();
      v14 = sub_265A1EF20();

      v110 = v2;
      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 1688);
        v16 = *(v0 + 1680);
        v107 = *(v0 + 1312);
        v17 = *(v0 + 1304);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v113 = v20;
        *v18 = 136446722;
        *(v18 + 4) = sub_2659D9320(v16, v15, &v113);
        *(v18 + 12) = 2082;
        *(v18 + 14) = sub_2659D9320(v17, v107, &v113);
        *(v18 + 22) = 2114;
        v21 = v110;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 24) = v22;
        *v19 = v22;
        _os_log_impl(&dword_2659CA000, v13, v14, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v18, 0x20u);
        sub_2659DA270(v19, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v19, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v20, -1, -1);
        MEMORY[0x266766110](v18, -1, -1);
      }

      v23 = *(v0 + 1696);
      v24 = *(v0 + 1688);
      v25 = *(v0 + 1680);
      v26 = *(v0 + 1312);
      v27 = *(v0 + 1304);
      v28 = sub_265A1E680();
      sub_265A0BFD4(v23, v27, v26, v25, v24, &v113);
      v105 = v114;
      v108 = v113;
      v101 = v116;
      v103 = v115;
      v99 = v117;
      v29 = [v28 domain];
      v30 = sub_265A1EBA0();
      v95 = v31;
      v97 = v30;

      v93 = v28;
      v91 = [v28 code];
      swift_getErrorValue();
      v32 = sub_265A1F380();
      v88 = v33;
      v89 = v32;
      Current = CFAbsoluteTimeGetCurrent();
      v35 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2659E0698(0, *(v35 + 2) + 1, 1, v35);
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_2659E0698((v36 > 1), v37 + 1, 1, v35);
      }

      v38 = *(v0 + 1760);
      v39 = *(v0 + 1744);
      v40 = *(v0 + 1712);
      v41 = *(v0 + 1704);
      v42 = *(v0 + 1648);
      v43 = *(v0 + 1632);
      v44 = *(v0 + 1624);

      (*(v43 + 8))(v42, v44);
      v45 = v35;
      *(v35 + 2) = v37 + 1;
      v46 = &v35[120 * v37];
      v46[32] = 2;
      *(v46 + 56) = v105;
      *(v46 + 40) = v108;
      *(v46 + 9) = v103;
      *(v46 + 10) = v101;
      v46[88] = v99;
      *(v46 + 12) = 2;
      *(v46 + 13) = v97;
      *(v46 + 14) = v95;
      *(v46 + 15) = v91;
      *(v46 + 16) = v89;
      *(v46 + 17) = v88;
      *(v46 + 18) = Current;
      goto LABEL_23;
    }
  }

  v47 = v4;
  v48 = sub_265A1EA80();
  v49 = sub_265A1EF30();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v0 + 1688);
    v51 = *(v0 + 1680);
    v111 = *(v0 + 1312);
    v52 = *(v0 + 1304);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v113 = v55;
    *v53 = 136446722;
    *(v53 + 4) = sub_2659D9320(v51, v50, &v113);
    *(v53 + 12) = 2082;
    *(v53 + 14) = sub_2659D9320(v52, v111, &v113);
    *(v53 + 22) = 2114;
    *(v53 + 24) = v47;
    *v54 = v47;
    v56 = v47;
    _os_log_impl(&dword_2659CA000, v48, v49, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v53, 0x20u);
    sub_2659DA270(v54, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v54, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266766110](v55, -1, -1);
    MEMORY[0x266766110](v53, -1, -1);
  }

  v57 = *(v0 + 1696);
  v58 = *(v0 + 1688);
  v59 = *(v0 + 1680);
  v60 = *(v0 + 1312);
  v61 = *(v0 + 1304);
  v62 = v47;
  sub_265A0BFD4(v57, v61, v60, v59, v58, &v113);
  v106 = v114;
  v109 = v113;
  v102 = v116;
  v104 = v115;
  v100 = v117;
  v63 = [v62 domain];
  v64 = sub_265A1EBA0();
  v96 = v65;
  v98 = v64;

  v94 = [v62 code];
  v66 = [v62 localizedDescription];

  v67 = sub_265A1EBA0();
  v90 = v68;
  v92 = v67;

  v69 = CFAbsoluteTimeGetCurrent();
  v70 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v70 = sub_2659E0698(0, *(v70 + 2) + 1, 1, v70);
  }

  v72 = *(v70 + 2);
  v71 = *(v70 + 3);
  if (v72 >= v71 >> 1)
  {
    v112 = sub_2659E0698((v71 > 1), v72 + 1, 1, v70);
  }

  else
  {
    v112 = v70;
  }

  v73 = *(v0 + 1760);
  v74 = *(v0 + 1744);
  v75 = *(v0 + 1712);
  v76 = *(v0 + 1704);
  v77 = *(v0 + 1648);
  v78 = *(v0 + 1632);
  v79 = *(v0 + 1624);

  (*(v78 + 8))(v77, v79);
  v45 = v112;
  *(v112 + 2) = v72 + 1;
  v80 = &v112[120 * v72];
  v80[32] = 0;
  *(v80 + 56) = v106;
  *(v80 + 40) = v109;
  *(v80 + 9) = v104;
  *(v80 + 10) = v102;
  v80[88] = v100;
  *(v80 + 12) = 2;
  *(v80 + 13) = v98;
  *(v80 + 14) = v96;
  *(v80 + 15) = v94;
  *(v80 + 16) = v92;
  *(v80 + 17) = v90;
  *(v80 + 18) = v69;

LABEL_23:
  v81 = *(v0 + 1688);
  v82 = *(v0 + 1680);
  v83 = *(v0 + 1312);
  v84 = *(v0 + 1304);
  v85 = *(v0 + 1296);

  *v85 = v84;
  v85[1] = v83;
  v85[2] = v82;
  v85[3] = v81;
  v85[4] = MEMORY[0x277D84F90];
  v85[5] = v45;

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_265A08EAC()
{
  v481 = v0;
  v480 = *MEMORY[0x277D85DE8];
  v422 = (v0 + 528);
  v1 = *(v0 + 1944);
  swift_willThrow();
  *(v0 + 1208) = v1;
  v459 = v1;
  v2 = v1;
  if (swift_dynamicCast() && *(v0 + 2083) == 2)
  {
    v3 = *(v0 + 1912);
    v446 = *(v0 + 1904);
    v4 = *(v0 + 1688);
    v5 = *(v0 + 1680);
    v6 = *(v0 + 1312);
    v7 = *(v0 + 1304);

    sub_265A0C1E0(v3, v7, v6, v5, v4, v446, v0 + 696);
    v447 = *(v0 + 712);
    v460 = *(v0 + 696);
    v8 = *(v0 + 728);
    v9 = *(v0 + 736);
    v10 = *(v0 + 744);
    Current = CFAbsoluteTimeGetCurrent();
    *(v0 + 1146) = *(v0 + 689);
    *(v0 + 1149) = *(v0 + 692);
    *(v0 + 745) = *(v0 + 2075);
    *(v0 + 748) = *(v0 + 2078);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v472 = *(v0 + 1864);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
    }

    v14 = *(v472 + 2);
    v13 = *(v472 + 3);
    v15 = v8;
    if (v14 >= v13 >> 1)
    {
      v472 = sub_2659E0698((v13 > 1), v14 + 1, 1, v472);
    }

    v16 = *(v0 + 1904);
    *(v472 + 2) = v14 + 1;
    v17 = &v472[120 * v14];
    v17[32] = 2;
    v18 = *(v0 + 1146);
    *(v17 + 9) = *(v0 + 1149);
    *(v17 + 33) = v18;
    *(v17 + 56) = v447;
    *(v17 + 40) = v460;
    *(v17 + 9) = v15;
    *(v17 + 10) = v9;
    v17[88] = v10;
    v19 = *(v0 + 745);
    *(v17 + 23) = *(v0 + 748);
    *(v17 + 89) = v19;
    *(v17 + 12) = 0x8000000000000003;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 17) = 0;
    *(v17 + 18) = Current;

    v20 = v16;
    v21 = sub_265A1EA80();
    v22 = sub_265A1EF20();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 1920);
    v25 = *(v0 + 1904);
    v26 = *(v0 + 1888);
    if (v23)
    {
      v461 = *(v0 + 1888);
      v27 = *(v0 + 1688);
      v28 = *(v0 + 1680);
      v435 = *(v0 + 1304);
      v439 = *(v0 + 1312);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v475 = v31;
      *v29 = 136446979;
      *(v29 + 4) = sub_2659D9320(v28, v27, &v475);
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2113;
      v32 = [v25 identifier];
      *(v29 + 24) = v32;
      *v30 = v32;
      *(v29 + 32) = 2082;
      *(v29 + 34) = sub_2659D9320(v435, v439, &v475);
      _os_log_impl(&dword_2659CA000, v21, v22, "Could not export URL for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v29, 0x2Au);
      sub_2659DA270(v30, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v30, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v31, -1, -1);
      MEMORY[0x266766110](v29, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v440 = (v0 + 2019);
    v448 = (v0 + 2026);
    v33 = *(v0 + 1904);

    v34 = v33;
    v35 = sub_265A1EA80();
    v36 = sub_265A1EF20();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 1904);
      v38 = *(v0 + 1688);
      v39 = *(v0 + 1680);
      v40 = *(v0 + 1312);
      v430 = *(v0 + 1304);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v475 = v43;
      *v41 = 136446979;
      *(v41 + 4) = sub_2659D9320(v39, v38, &v475);
      *(v41 + 12) = 2160;
      *(v41 + 14) = 1752392040;
      *(v41 + 22) = 2113;
      v44 = [v37 identifier];
      *(v41 + 24) = v44;
      *v42 = v44;
      *(v41 + 32) = 2082;
      *(v41 + 34) = sub_2659D9320(v430, v40, &v475);
      _os_log_impl(&dword_2659CA000, v35, v36, "Error when fetching AppEntity URL via IPC '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v41, 0x2Au);
      sub_2659DA270(v42, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v42, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v43, -1, -1);
      MEMORY[0x266766110](v41, -1, -1);
    }

    v45 = *(v0 + 1912);
    v46 = *(v0 + 1904);
    v47 = *(v0 + 1688);
    v48 = *(v0 + 1680);
    v49 = *(v0 + 1312);
    v50 = *(v0 + 1304);
    v51 = sub_265A1E680();
    sub_265A0C1E0(v45, v50, v49, v48, v47, v46, v0 + 752);
    v426 = *(v0 + 768);
    v431 = *(v0 + 752);
    v414 = *(v0 + 792);
    v418 = *(v0 + 784);
    v411 = *(v0 + 800);
    v52 = [v51 domain];
    v53 = sub_265A1EBA0();
    v407 = v54;
    v410 = v53;

    v55 = [v51 code];
    swift_getErrorValue();
    v56 = sub_265A1F380();
    v58 = v57;
    v59 = CFAbsoluteTimeGetCurrent();
    *v440 = *(v0 + 2012);
    *(v0 + 2022) = *(v0 + 2015);
    *v448 = *(v0 + 2005);
    *(v0 + 2029) = *(v0 + 2008);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v472 = *(v0 + 1864);
    if ((v60 & 1) == 0)
    {
      v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
    }

    v62 = *(v472 + 2);
    v61 = *(v472 + 3);
    if (v62 >= v61 >> 1)
    {
      v472 = sub_2659E0698((v61 > 1), v62 + 1, 1, v472);
    }

    v63 = *(v0 + 1904);
    v64 = *(v0 + 1888);

    *(v472 + 2) = v62 + 1;
    v65 = &v472[120 * v62];
    v65[32] = 2;
    v66 = *v440;
    *(v65 + 9) = *(v0 + 2022);
    *(v65 + 33) = v66;
    *(v65 + 56) = v426;
    *(v65 + 40) = v431;
    *(v65 + 9) = v418;
    *(v65 + 10) = v414;
    v65[88] = v411;
    v67 = *v448;
    *(v65 + 23) = *(v0 + 2029);
    *(v65 + 89) = v67;
    *(v65 + 12) = 3;
    *(v65 + 13) = v410;
    *(v65 + 14) = v407;
    *(v65 + 15) = v55;
    *(v65 + 16) = v56;
    *(v65 + 17) = v58;
    *(v65 + 18) = v59;
  }

  v68 = *(v0 + 1872);
  v69 = *(v0 + 1896);
  if (v69 == *(v0 + 1856))
  {
    goto LABEL_18;
  }

  v400 = (v0 + 584);
  v403 = (v0 + 808);
  v83 = (v0 + 1280);
  v419 = (v0 + 633);
  v401 = (v0 + 857);
  v402 = (v0 + 801);
  v404 = (v0 + 1984);
  v405 = (v0 + 1153);
  v406 = (v0 + 2047);
  v408 = (v0 + 2040);
  v415 = (v0 + 2068);
  v450 = *(v0 + 1880);
  while (2)
  {
    v441 = v68;
    while (1)
    {
      while (1)
      {
        *(v0 + 1880) = v450;
        *(v0 + 1872) = v68;
        *(v0 + 1864) = v472;
        v84 = *(v0 + 1848);
        if ((v84 & 0xC000000000000001) != 0)
        {
          v85 = MEMORY[0x2667656F0](v69, *(v0 + 1840));
        }

        else
        {
          if (v69 >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_136;
          }

          v85 = *(*(v0 + 1840) + 8 * v69 + 32);
        }

        v86 = v85;
        *(v0 + 1888) = v85;
        *(v0 + 1896) = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
LABEL_136:
          __break(1u);
          return sub_265A1F1C0();
        }

        v87 = [v85 value];
        sub_265A1F000();
        swift_unknownObjectRelease();
        sub_2659F3D98(0, &qword_28156A808, 0x277D237F0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_265A0CAD0();
        v88 = swift_allocError();
        *v89 = 1;
        swift_willThrow();
        *(v0 + 1232) = v88;
        v90 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
        if (!swift_dynamicCast())
        {
          goto LABEL_112;
        }

        if (*(v0 + 2082) != 1)
        {
          if (!*(v0 + 2082))
          {
            v463 = v86;

            v91 = sub_265A1EA80();
            v92 = sub_265A1EF20();

            if (os_log_type_enabled(v91, v92))
            {
              v93 = *(v0 + 1688);
              v94 = *(v0 + 1680);
              v95 = *(v0 + 1312);
              v96 = *(v0 + 1304);
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              *&v475 = v98;
              *v97 = 136446466;
              v99 = v94;
              v68 = v441;
              *(v97 + 4) = sub_2659D9320(v99, v93, &v475);
              *(v97 + 12) = 2082;
              *(v97 + 14) = sub_2659D9320(v96, v95, &v475);
              _os_log_impl(&dword_2659CA000, v91, v92, "Entity Query returned unexpected type '%{public}s', AppIntent '%{public}s'.", v97, 0x16u);
              swift_arrayDestroy();
              v100 = v98;
              v83 = (v0 + 1280);
              MEMORY[0x266766110](v100, -1, -1);
              MEMORY[0x266766110](v97, -1, -1);
            }

            goto LABEL_23;
          }

LABEL_112:
          v287 = *(v0 + 1832);

          *(v0 + 1248) = v88;
          v288 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
          if (swift_dynamicCast())
          {
            v289 = *v83;
            v290 = [*v83 domain];
            v291 = sub_265A1EBA0();
            v293 = v292;

            if (v291 == sub_265A1EBA0() && v293 == v294)
            {

LABEL_117:

              v296 = v289;
              v297 = sub_265A1EA80();
              v298 = sub_265A1EF30();

              if (os_log_type_enabled(v297, v298))
              {
                v299 = *(v0 + 1688);
                v300 = *(v0 + 1680);
                v468 = *(v0 + 1312);
                v301 = *(v0 + 1304);
                v302 = swift_slowAlloc();
                v303 = swift_slowAlloc();
                v304 = swift_slowAlloc();
                *&v475 = v304;
                *v302 = 136446722;
                *(v302 + 4) = sub_2659D9320(v300, v299, &v475);
                *(v302 + 12) = 2082;
                *(v302 + 14) = sub_2659D9320(v301, v468, &v475);
                *(v302 + 22) = 2114;
                *(v302 + 24) = v296;
                *v303 = v296;
                v305 = v296;
                _os_log_impl(&dword_2659CA000, v297, v298, "Query for AppEntity '%{public}s', AppIntent '%{public}s' threw a prebuilt error: %{public}@", v302, 0x20u);
                sub_2659DA270(v303, &qword_28002B678, &unk_265A21AC0);
                MEMORY[0x266766110](v303, -1, -1);
                swift_arrayDestroy();
                MEMORY[0x266766110](v304, -1, -1);
                MEMORY[0x266766110](v302, -1, -1);
              }

              v306 = *(v0 + 1696);
              v307 = *(v0 + 1688);
              v308 = *(v0 + 1680);
              v309 = *(v0 + 1312);
              v310 = *(v0 + 1304);
              v311 = v296;
              sub_265A0BFD4(v306, v310, v309, v308, v307, &v475);
              v457 = v476;
              v469 = v475;
              v454 = v477;
              v437 = v478;
              v433 = v479;
              v312 = [v311 domain];
              v313 = sub_265A1EBA0();
              v424 = v314;
              v428 = v313;

              v420 = [v311 code];
              v315 = [v311 localizedDescription];

              v316 = sub_265A1EBA0();
              v412 = v317;
              v416 = v316;

              v318 = CFAbsoluteTimeGetCurrent();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
              }

              v320 = *(v472 + 2);
              v319 = *(v472 + 3);
              if (v320 >= v319 >> 1)
              {
                v472 = sub_2659E0698((v319 > 1), v320 + 1, 1, v472);
              }

              v321 = *(v0 + 1760);
              v322 = *(v0 + 1744);
              v323 = *(v0 + 1712);
              v324 = *(v0 + 1704);
              v325 = *(v0 + 1648);
              v326 = *(v0 + 1632);
              v327 = *(v0 + 1624);

              (*(v326 + 8))(v325, v327);
              *(v472 + 2) = v320 + 1;
              v328 = &v472[120 * v320];
              v328[32] = 0;
              *(v328 + 56) = v457;
              *(v328 + 40) = v469;
              *(v328 + 9) = v454;
              *(v328 + 10) = v437;
              v328[88] = v433;
              *(v328 + 12) = 2;
              *(v328 + 13) = v428;
              *(v328 + 14) = v424;
              *(v328 + 15) = v420;
              *(v328 + 16) = v416;
              *(v328 + 17) = v412;
              *(v328 + 18) = v318;

              goto LABEL_132;
            }

            v295 = sub_265A1F340();

            if (v295)
            {
              goto LABEL_117;
            }
          }

          v329 = v88;
          v330 = sub_265A1EA80();
          v331 = sub_265A1EF20();

          if (os_log_type_enabled(v330, v331))
          {
            v332 = *(v0 + 1688);
            v333 = *(v0 + 1680);
            v470 = *(v0 + 1312);
            v334 = *(v0 + 1304);
            v335 = swift_slowAlloc();
            v336 = swift_slowAlloc();
            v337 = swift_slowAlloc();
            *&v475 = v337;
            *v335 = 136446722;
            *(v335 + 4) = sub_2659D9320(v333, v332, &v475);
            *(v335 + 12) = 2082;
            *(v335 + 14) = sub_2659D9320(v334, v470, &v475);
            *(v335 + 22) = 2114;
            v338 = v88;
            v339 = _swift_stdlib_bridgeErrorToNSError();
            *(v335 + 24) = v339;
            *v336 = v339;
            _os_log_impl(&dword_2659CA000, v330, v331, "Encountered Error while executing query for AppEntity '%{public}s', AppIntent '%{public}s': %{public}@", v335, 0x20u);
            sub_2659DA270(v336, &qword_28002B678, &unk_265A21AC0);
            MEMORY[0x266766110](v336, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x266766110](v337, -1, -1);
            MEMORY[0x266766110](v335, -1, -1);
          }

          v340 = *(v0 + 1696);
          v341 = *(v0 + 1688);
          v342 = *(v0 + 1680);
          v343 = *(v0 + 1312);
          v344 = *(v0 + 1304);
          v345 = sub_265A1E680();
          sub_265A0BFD4(v340, v344, v343, v342, v341, &v475);
          v458 = v476;
          v471 = v475;
          v346 = v477;
          v347 = v478;
          LOBYTE(v343) = v479;
          v348 = [v345 domain];
          v349 = sub_265A1EBA0();
          v351 = v350;

          v352 = [v345 code];
          swift_getErrorValue();
          v353 = sub_265A1F380();
          v413 = v354;
          v355 = CFAbsoluteTimeGetCurrent();
          v434 = v343;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
          }

          v357 = *(v472 + 2);
          v356 = *(v472 + 3);
          v455 = v346;
          v438 = v347;
          v425 = v351;
          v429 = v349;
          v417 = v353;
          v421 = v352;
          if (v357 >= v356 >> 1)
          {
            v472 = sub_2659E0698((v356 > 1), v357 + 1, 1, v472);
          }

          v358 = *(v0 + 1760);
          v359 = *(v0 + 1744);
          v360 = *(v0 + 1712);
          v361 = *(v0 + 1704);
          v409 = *(v0 + 1648);
          v362 = *(v0 + 1632);
          v363 = *(v0 + 1624);

          (*(v362 + 8))(v409, v363);
          *(v472 + 2) = v357 + 1;
          v364 = &v472[120 * v357];
          v364[32] = 2;
          *(v364 + 56) = v458;
          *(v364 + 40) = v471;
          *(v364 + 9) = v455;
          *(v364 + 10) = v438;
          v364[88] = v434;
          *(v364 + 12) = 2;
          *(v364 + 13) = v429;
          *(v364 + 14) = v425;
          *(v364 + 15) = v421;
          *(v364 + 16) = v417;
          *(v364 + 17) = v413;
          *(v364 + 18) = v355;
          goto LABEL_132;
        }

        v101 = sub_265A1EA80();
        v102 = sub_265A1EF20();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = *(v0 + 1688);
          v104 = *(v0 + 1680);
          v105 = *(v0 + 1312);
          v106 = *(v0 + 1304);
          v464 = v86;
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v475 = v108;
          *v107 = 136446466;
          *(v107 + 4) = sub_2659D9320(v104, v103, &v475);
          *(v107 + 12) = 2082;
          *(v107 + 14) = sub_2659D9320(v106, v105, &v475);
          _os_log_impl(&dword_2659CA000, v101, v102, "Failed to retrieve the instance of AppEntity '%{public}s', AppIntent '%{public}s'.", v107, 0x16u);
          swift_arrayDestroy();
          v109 = v108;
          v83 = (v0 + 1280);
          MEMORY[0x266766110](v109, -1, -1);
          MEMORY[0x266766110](v107, -1, -1);
        }

        else
        {
        }

        v68 = v441;
LABEL_23:

        v69 = *(v0 + 1896);
        if (v69 == *(v0 + 1856))
        {
          goto LABEL_18;
        }
      }

      v110 = *(v0 + 1256);
      *(v0 + 1904) = v110;
      v111 = swift_allocObject();
      *(v0 + 1912) = v111;
      *(v111 + 16) = 0u;
      *(v111 + 32) = 0u;
      *(v111 + 48) = 0u;
      *(v111 + 64) = -1;
      v112 = [v86 displayRepresentation];
      *(v0 + 1920) = v112;
      if (v112)
      {
        break;
      }

      sub_265A0C1E0(v111, *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), v110, v422);
      v398 = *(v0 + 544);
      v465 = *v422;
      v113 = *(v0 + 560);
      v114 = *(v0 + 568);
      v115 = *(v0 + 576);
      v116 = CFAbsoluteTimeGetCurrent();
      *v415 = *(v0 + 577);
      *(v0 + 2071) = *(v0 + 580);
      *v419 = *(v0 + 2033);
      *(v0 + 636) = *(v0 + 2036);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
      }

      v118 = *(v472 + 2);
      v117 = *(v472 + 3);
      if (v118 >= v117 >> 1)
      {
        v472 = sub_2659E0698((v117 > 1), v118 + 1, 1, v472);
      }

      *(v472 + 2) = v118 + 1;
      v119 = &v472[120 * v118];
      v119[32] = 2;
      v120 = *v415;
      *(v119 + 9) = *(v0 + 2071);
      *(v119 + 33) = v120;
      *(v119 + 56) = v398;
      *(v119 + 40) = v465;
      *(v119 + 9) = v113;
      *(v119 + 10) = v114;
      v119[88] = v115;
      v121 = *v419;
      *(v119 + 23) = *(v0 + 636);
      *(v119 + 89) = v121;
      *(v119 + 12) = 0x8000000000000001;
      *(v119 + 104) = 0u;
      *(v119 + 120) = 0u;
      *(v119 + 17) = 0;
      *(v119 + 18) = v116;

      v69 = *(v0 + 1896);
      v68 = v441;
      if (v69 == *(v0 + 1856))
      {
        goto LABEL_18;
      }
    }

    v122 = [v86 exportedContent];
    if (!v122)
    {
      v128 = *(*(v0 + 1536) + 56);
      v128(*(v0 + 1520), 1, 1, *(v0 + 1528));
      goto LABEL_52;
    }

    v123 = v122;
    v124 = [v122 content];

    v125 = [v124 fileURL];
    v126 = v86;
    if (v125)
    {
      sub_265A1E730();

      v127 = 0;
    }

    else
    {
      v127 = 1;
    }

    v129 = *(v0 + 1536);
    v130 = *(v0 + 1528);
    v131 = *(v0 + 1520);
    v132 = *(v0 + 1512);
    v128 = *(v129 + 56);
    v128(v132, v127, 1, v130);
    sub_265A0CB24(v132, v131);
    v473 = *(v129 + 48);
    v133 = v473(v131, 1, v130);
    v134 = (v0 + 1520);
    v86 = v126;
    if (v133 != 1)
    {
      goto LABEL_62;
    }

LABEL_52:
    *(v0 + 1928) = v128;
    sub_2659DA270(*(v0 + 1520), &qword_28002B700, &qword_265A22658);
    v135 = [v86 exportedContent];
    if (!v135)
    {
LABEL_140:
      v474 = *(v0 + 1760);
      v372 = *(v0 + 1488);
      v373 = *(v0 + 1432);
      v374 = *(v0 + 1424);
      v375 = *(v0 + 1416);
      *(v0 + 16) = v0;
      *(v0 + 56) = v372;
      *(v0 + 24) = sub_265A00F8C;
      swift_continuation_init();
      *(v0 + 328) = v375;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 304));
      *(v0 + 1936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
      sub_265A1ED80();
      (*(v374 + 32))(boxed_opaque_existential_1, v373, v375);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_265A0C3A0;
      *(v0 + 296) = &block_descriptor_8;
      [v474 fetchEntityURL:v110 completionHandler:v0 + 272];
      (*(v374 + 8))(boxed_opaque_existential_1, v375);
      v377 = v0 + 16;

      return MEMORY[0x282200938](v377);
    }

    v136 = v135;
    v137 = [v135 content];

    v138 = [v137 data];
    v139 = sub_265A1E780();
    v141 = v140;

    v142 = v141 >> 62;
    if ((v141 >> 62) > 1)
    {
      if (v142 != 2)
      {
        goto LABEL_138;
      }

      v143 = *(v139 + 16);
      v144 = *(v139 + 24);
LABEL_60:
      if (v143 == v144)
      {
        goto LABEL_138;
      }

      goto LABEL_61;
    }

    if (v142)
    {
      v143 = v139;
      v144 = v139 >> 32;
      goto LABEL_60;
    }

    if ((v141 & 0xFF000000000000) == 0)
    {
LABEL_138:
      sub_265A0CB94(v139, v141);
      goto LABEL_140;
    }

LABEL_61:
    v145 = *(v0 + 1536);
    v146 = *(v0 + 1528);
    v147 = *(v0 + 1504);
    v148 = *(v0 + 1496);
    v128(v148, 1, 1, v146);
    sub_265A1E700();
    sub_265A0CB94(v139, v141);
    sub_2659DA270(v148, &qword_28002B700, &qword_265A22658);
    v473 = *(v145 + 48);
    v149 = v473(v147, 1, v146);
    v134 = (v0 + 1504);
    if (v149 == 1)
    {
      sub_2659DA270(*(v0 + 1504), &qword_28002B700, &qword_265A22658);
      goto LABEL_140;
    }

LABEL_62:
    v150 = *(v0 + 1568);
    v151 = *(v0 + 1552);
    v152 = *(v0 + 1544);
    v153 = *(v0 + 1536);
    v154 = *(v0 + 1528);
    v155 = *(v0 + 1320);
    v393 = *(v153 + 32);
    v393(v150, *v134, v154);
    v156 = *(v153 + 16);
    v156(v151, v150, v154);
    v451 = v156;
    v156(v152, v150, v154);
    v157 = *(v155 + 16);

    if (!v157)
    {
LABEL_66:
      v164 = *(*(v0 + 1536) + 8);
      v164(*(v0 + 1552), *(v0 + 1528));
      v165 = 1;
      goto LABEL_69;
    }

    v158 = 0;
    while (1)
    {
      v159 = *(v0 + 1544);
      v160 = *(v0 + 1528);
      v161 = *(v0 + 1464);
      v162 = *(v0 + 1320) + v158;
      v163 = *(v162 + 32);

      v163(v159);

      if (v473(v161, 1, v160) != 1)
      {
        break;
      }

      sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
      v158 += 16;
      if (!--v157)
      {
        goto LABEL_66;
      }
    }

    v166 = *(v0 + 1552);
    v167 = *(v0 + 1536);
    v399 = *(v0 + 1528);
    v168 = *(v0 + 1456);
    v169 = *(v0 + 1448);
    sub_2659DA270(*(v0 + 1464), &qword_28002B700, &qword_265A22658);
    v170 = *(v162 + 32);

    v170(v166);
    v171 = v166;
    v172 = *(v167 + 8);
    v172(v171, v399);

    sub_265A0CBE8(v168, v169, &qword_28002B700, &qword_265A22658);
    if (v473(v169, 1, v399) == 1)
    {
      v377 = (v172)(*(v0 + 1544), *(v0 + 1528));
      __break(1u);
      return MEMORY[0x282200938](v377);
    }

    v173 = *(v0 + 1456);
    v393(*(v0 + 1472), *(v0 + 1448), *(v0 + 1528));
    sub_2659DA270(v173, &qword_28002B700, &qword_265A22658);
    v165 = 0;
    v164 = v172;
LABEL_69:
    v174 = *(v0 + 1544);
    v175 = *(v0 + 1528);
    v176 = *(v0 + 1472);
    v128(v176, v165, 1, v175);

    v164(v174, v175);
    if (v473(v176, 1, v175) == 1)
    {
      v177 = *(v0 + 1568);
      v178 = *(v0 + 1560);
      v179 = *(v0 + 1528);
      sub_2659DA270(*(v0 + 1472), &qword_28002B700, &qword_265A22658);
      v451(v178, v177, v179);
      v472 = *(v0 + 1864);
    }

    else
    {
      v180 = v164;
      v181 = *(v0 + 1912);
      v182 = *(v0 + 1904);
      v183 = *(v0 + 1688);
      v184 = *(v0 + 1680);
      v185 = *(v0 + 1312);
      v186 = *(v0 + 1304);
      v393(*(v0 + 1560), *(v0 + 1472), *(v0 + 1528));
      sub_265A0C1E0(v181, v186, v185, v184, v183, v182, v403);
      v394 = *(v0 + 824);
      v442 = *v403;
      v187 = *(v0 + 840);
      v188 = *(v0 + 848);
      v189 = *(v0 + 856);
      v190 = CFAbsoluteTimeGetCurrent();
      *v408 = *(v0 + 2054);
      *(v0 + 2043) = *(v0 + 2057);
      *v406 = *(v0 + 2061);
      *(v0 + 2050) = *(v0 + 2064);
      v191 = swift_isUniquelyReferenced_nonNull_native();
      v472 = *(v0 + 1864);
      if ((v191 & 1) == 0)
      {
        v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
      }

      v193 = *(v472 + 2);
      v192 = *(v472 + 3);
      if (v193 >= v192 >> 1)
      {
        v472 = sub_2659E0698((v192 > 1), v193 + 1, 1, v472);
      }

      *(v472 + 2) = v193 + 1;
      v194 = &v472[120 * v193];
      v194[32] = 1;
      v195 = *v408;
      *(v194 + 9) = *(v0 + 2043);
      *(v194 + 33) = v195;
      *(v194 + 56) = v394;
      *(v194 + 40) = v442;
      *(v194 + 9) = v187;
      *(v194 + 10) = v188;
      v194[88] = v189;
      v196 = *v406;
      *(v194 + 23) = *(v0 + 2050);
      *(v194 + 89) = v196;
      *(v194 + 6) = xmmword_265A22600;
      *(v194 + 7) = 0u;
      *(v194 + 8) = 0u;
      *(v194 + 18) = v190;
      v164 = v180;
    }

    v197 = [*(v0 + 1920) image];
    if (v197)
    {
      v198 = v197;
      sub_265A1110C(v0 + 1096);

      v199 = *(v0 + 1104);
      if (v199)
      {
        v443 = *(v0 + 1096);
        v390 = *(v0 + 1112);
        goto LABEL_85;
      }
    }

    sub_265A1CF6C(v0 + 1128);
    v199 = *(v0 + 1136);
    if (v199)
    {
      v443 = *(v0 + 1128);
      v390 = *(v0 + 1144);
      sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v400);
      v388 = *(v0 + 600);
      v395 = *v400;
      v200 = *(v0 + 616);
      v201 = *(v0 + 624);
      v202 = *(v0 + 632);
      v203 = CFAbsoluteTimeGetCurrent();
      *v405 = *(v0 + 1991);
      *(v0 + 1156) = *(v0 + 1994);
      *v404 = *(v0 + 1998);
      *(v0 + 1987) = *(v0 + 2001);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
      }

      v205 = *(v472 + 2);
      v204 = *(v472 + 3);
      if (v205 >= v204 >> 1)
      {
        v472 = sub_2659E0698((v204 > 1), v205 + 1, 1, v472);
      }

      *(v472 + 2) = v205 + 1;
      v206 = &v472[120 * v205];
      v206[32] = 1;
      v207 = *v405;
      *(v206 + 9) = *(v0 + 1156);
      *(v206 + 33) = v207;
      *(v206 + 56) = v388;
      *(v206 + 40) = v395;
      *(v206 + 9) = v200;
      *(v206 + 10) = v201;
      v206[88] = v202;
      v208 = *v404;
      *(v206 + 23) = *(v0 + 1987);
      *(v206 + 89) = v208;
      *(v206 + 6) = xmmword_265A22610;
      *(v206 + 7) = 0u;
      *(v206 + 8) = 0u;
      *(v206 + 18) = v203;
LABEL_85:
      v396 = v164;
      v209 = [*(v0 + 1920) subtitle];
      if (v209)
      {
        v210 = v209;
        v211 = [v209 localizedStringResource];
        if (v211)
        {
          v212 = v211;
          *(v0 + 952) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
          *(v0 + 928) = v212;
          v213 = v212;
          sub_265A1E6A0();

          v214 = 0;
          goto LABEL_89;
        }

        return sub_265A1F1C0();
      }

      v214 = 1;
LABEL_89:
      v215 = *(v0 + 1920);
      v216 = *(v0 + 1904);
      v217 = *(*(v0 + 1344) + 56);
      (v217)(*(v0 + 1408), v214, 1, *(v0 + 1336));
      v218 = [v216 identifier];
      v219 = [v218 instanceIdentifier];

      v220 = sub_265A1EBA0();
      v389 = v221;

      v222 = [v215 title];
      v223 = [v222 localizedStringResource];
      if (!v223)
      {
        return sub_265A1F1C0();
      }

      v224 = v223;
      v386 = *(v0 + 1920);
      v225 = *(v0 + 1408);
      v226 = *(v0 + 1400);
      v227 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
      *(v0 + 888) = v227;
      *(v0 + 864) = v224;
      v228 = v224;
      sub_265A1E6A0();

      sub_265A0CBE8(v225, v226, &qword_28002B6F0, &qword_265A21110);
      v229 = [v386 synonyms];
      if (v229)
      {
        v230 = v229;
        sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
        sub_265A1ECC0();

        v231 = sub_265A0C54C();
      }

      else
      {
        v231 = MEMORY[0x277D84F90];
      }

      v232 = [*(v0 + 1920) descriptionText];
      v385 = v220;
      v387 = v231;
      if (v232)
      {
        v233 = v232;
        v234 = [v232 localizedStringResource];
        if (!v234)
        {
          return sub_265A1F1C0();
        }

        *(v0 + 920) = v227;
        *(v0 + 896) = v234;
        v235 = v234;
        sub_265A1E6A0();
      }

      v236 = *(v0 + 1560);
      v237 = *(v0 + 1528);
      v383 = *(v0 + 1400);
      v381 = *(v0 + 1688);
      v382 = *(v0 + 1392);
      v238 = *(v0 + 1384);
      v384 = *(v0 + 1376);
      v239 = *(v0 + 1360);
      v379 = *(v0 + 1680);
      v380 = *(v0 + 1352);
      v240 = *(v0 + 1344);
      v241 = *(v0 + 1336);
      v242 = *(v0 + 1312);
      v378 = *(v0 + 1304);
      v217();
      v451(&v238[v239[11]], v236, v237);
      v243 = v239[8];
      (v217)(&v238[v243], 1, 1, v241);
      v244 = v239[10];
      (v217)(&v238[v244], 1, 1, v241);
      *v238 = v378;
      *(v238 + 1) = v242;
      *(v238 + 2) = v379;
      *(v238 + 3) = v381;
      *(v238 + 4) = v385;
      *(v238 + 5) = v389;
      (*(v240 + 32))(&v238[v239[7]], v380, v241);

      sub_2659D9AD0(v383, &v238[v243]);
      *&v238[v239[9]] = v387;
      sub_2659D9AD0(v382, &v238[v244]);
      v245 = &v238[v239[12]];
      *v245 = v443;
      *(v245 + 1) = v199;
      v245[16] = v390 & 1;
      v245[17] = HIBYTE(v390) & 1;
      sub_2659DE470(v238, v384);
      v246 = swift_isUniquelyReferenced_nonNull_native();
      v247 = *(v0 + 1880);
      if ((v246 & 1) == 0)
      {
        v247 = sub_2659E0670(0, v247[2] + 1, 1, v247);
      }

      v249 = v247[2];
      v248 = v247[3];
      if (v249 >= v248 >> 1)
      {
        v444 = sub_2659E0670((v248 > 1), v249 + 1, 1, v247);
      }

      else
      {
        v444 = v247;
      }

      v250 = *(v0 + 1904);
      v251 = *(v0 + 1888);
      v252 = *(v0 + 1568);
      v253 = *(v0 + 1560);
      v254 = *(v0 + 1528);
      v255 = *(v0 + 1408);
      v391 = *(v0 + 1384);
      v256 = *(v0 + 1376);
      v257 = *(v0 + 1368);

      sub_2659DA270(v255, &qword_28002B6F0, &qword_265A21110);
      v396(v253, v254);
      v396(v252, v254);
      v68 = v444;
      v444[2] = v249 + 1;
      sub_265A0CC50(v256, v444 + ((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v249);
      sub_2659DCF64(v391);

      v450 = v444;
    }

    else
    {
      v258 = *(v0 + 1904);
      v259 = *(v0 + 1328);

      v260 = v258;
      v261 = sub_265A1EA80();
      v262 = sub_265A1EF30();

      if (os_log_type_enabled(v261, v262))
      {
        v445 = *(v0 + 1904);
        v263 = *(v0 + 1328);
        v466 = *(v0 + 1312);
        v452 = *(v0 + 1304);
        v264 = swift_slowAlloc();
        v397 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *&v475 = v265;
        *v264 = 136446979;
        v266 = [v263 identifier];
        v267 = sub_265A1EBA0();
        v269 = v268;

        v270 = sub_2659D9320(v267, v269, &v475);

        *(v264 + 4) = v270;
        *(v264 + 12) = 2160;
        *(v264 + 14) = 1752392040;
        *(v264 + 22) = 2113;
        v271 = [v445 identifier];
        *(v264 + 24) = v271;
        *v397 = v271;
        *(v264 + 32) = 2082;
        *(v264 + 34) = sub_2659D9320(v452, v466, &v475);
        _os_log_impl(&dword_2659CA000, v261, v262, "Could not resolve Icon for AppEntity '%{public}s', instance '%{private,mask.hash}@', AppIntent '%{public}s'.", v264, 0x2Au);
        sub_2659DA270(v397, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v397, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v265, -1, -1);
        MEMORY[0x266766110](v264, -1, -1);
      }

      sub_265A0C1E0(*(v0 + 1912), *(v0 + 1304), *(v0 + 1312), *(v0 + 1680), *(v0 + 1688), *(v0 + 1904), v0 + 640);
      v453 = *(v0 + 656);
      v467 = *(v0 + 640);
      v272 = *(v0 + 672);
      v273 = *(v0 + 680);
      v274 = *(v0 + 688);
      v275 = CFAbsoluteTimeGetCurrent();
      *v402 = *(v0 + 1114);
      *(v0 + 804) = *(v0 + 1117);
      *v401 = *(v0 + 1121);
      *(v0 + 860) = *(v0 + 1124);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v472 = sub_2659E0698(0, *(v472 + 2) + 1, 1, v472);
      }

      v277 = *(v472 + 2);
      v276 = *(v472 + 3);
      v392 = v274;
      v278 = v164;
      if (v277 >= v276 >> 1)
      {
        v472 = sub_2659E0698((v276 > 1), v277 + 1, 1, v472);
      }

      v279 = *(v0 + 1920);
      v280 = *(v0 + 1888);
      v281 = *(v0 + 1568);
      v282 = *(v0 + 1560);
      v283 = *(v0 + 1528);

      v278(v282, v283);
      v278(v281, v283);
      *(v472 + 2) = v277 + 1;
      v284 = &v472[120 * v277];
      v284[32] = 2;
      v285 = *v402;
      *(v284 + 9) = *(v0 + 804);
      *(v284 + 33) = v285;
      *(v284 + 56) = v453;
      *(v284 + 40) = v467;
      *(v284 + 9) = v272;
      *(v284 + 10) = v273;
      v284[88] = v392;
      v286 = *v401;
      *(v284 + 23) = *(v0 + 860);
      *(v284 + 89) = v286;
      *(v284 + 6) = xmmword_265A22620;
      *(v284 + 7) = 0u;
      *(v284 + 8) = 0u;
      *(v284 + 18) = v275;

      v450 = *(v0 + 1880);
      v68 = *(v0 + 1872);
    }

    v69 = *(v0 + 1896);
    v83 = (v0 + 1280);
    if (v69 != *(v0 + 1856))
    {
      continue;
    }

    break;
  }

LABEL_18:

  v70 = sub_265A1EA80();
  v71 = sub_265A1EF30();

  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v0 + 1832);
  v74 = *(v0 + 1760);
  v456 = *(v0 + 1744);
  v75 = *(v0 + 1736);
  v462 = *(v0 + 1704);
  v76 = *(v0 + 1648);
  v77 = *(v0 + 1632);
  v78 = *(v0 + 1624);
  v441 = v68;
  if (v72)
  {
    v436 = *(v0 + 1648);
    v79 = *(v0 + 1312);
    v449 = *(v0 + 1624);
    v80 = *(v0 + 1304);
    v432 = *(v0 + 1712);
    v427 = *(v0 + 1832);
    v81 = swift_slowAlloc();
    v423 = v75;
    v82 = swift_slowAlloc();
    *&v475 = v82;
    *v81 = 136446466;
    *(v81 + 4) = sub_2659D9320(v80, v79, &v475);
    *(v81 + 12) = 2050;
    *(v81 + 14) = v68[2];

    _os_log_impl(&dword_2659CA000, v70, v71, "…finished processing Link Entity Instances for AppIntent '%{public}s', retrieved %{public}ld items.", v81, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x266766110](v82, -1, -1);
    MEMORY[0x266766110](v81, -1, -1);

    (*(v77 + 8))(v436, v449);
  }

  else
  {

    (*(v77 + 8))(v76, v78);
  }

LABEL_132:
  v365 = *(v0 + 1688);
  v366 = *(v0 + 1680);
  v367 = *(v0 + 1312);
  v368 = *(v0 + 1304);
  v369 = *(v0 + 1296);

  *v369 = v368;
  v369[1] = v367;
  v369[2] = v366;
  v369[3] = v365;
  v369[4] = v441;
  v369[5] = v472;

  v370 = *(v0 + 8);

  return v370();
}

uint64_t sub_265A0BD44(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_265A1EA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A1E9F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28156B4E8);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_265A0BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v8 = a1 + 16;
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = (v8 + 32);
  v14 = *(v8 + 32);
  v15 = *(v8 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = *(v8 + 48);
  v21 = v14;
  v22 = v15;
  v23 = *(v8 + 48);
  if (v20 == 255)
  {
    v38 = v10;
    v39 = v9;
    swift_beginAccess();
    v34 = *(a1 + 24);
    v35 = *(a1 + 16);
    v32 = *(a1 + 40);
    v33 = *(a1 + 32);
    v30 = *(a1 + 56);
    v31 = *(a1 + 48);
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = a4;
    v19 = a5;
    *(a1 + 40) = a5;
    *v13 = 0;
    v13[1] = 0;
    v29 = *(a1 + 64);
    v23 = 3;
    *(a1 + 64) = 3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_2659E0A0C(v35, v34, v33, v32, v31, v30, v29);
    v10 = v38;
    v9 = v39;
    v21 = 0;
    v22 = 0;
    v18 = a4;
    v16 = a2;
    v17 = a3;
  }

  *a6 = v16;
  *(a6 + 8) = v17;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v21;
  *(a6 + 40) = v22;
  *(a6 + 48) = v23;
  return sub_2659E0A20(v9, v10, v11, v12, v14, v15, v20);
}

void sub_265A0C130(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B708, &unk_265A22660);
    sub_265A1ED90();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B708, &unk_265A22660);
    sub_265A1EDA0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265A0C1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = a1 + 16;
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  v19 = *(v16 + 32);
  v20 = *(v16 + 40);
  v21 = v14;
  v22 = v15;
  v23 = v17;
  v24 = v18;
  v25 = *(v16 + 48);
  v26 = v19;
  v27 = v20;
  v28 = *(v16 + 48);
  if (v25 == 255)
  {
    v48 = v15;
    v49 = v14;
    v46 = *(v16 + 24);
    v47 = *(v16 + 16);
    v44 = a3;
    v45 = *(v16 + 32);
    v30 = a4;
    v41 = a4;
    v43 = a2;

    v31 = [a6 identifier];
    v42 = a5;
    v32 = [v31 instanceIdentifier];

    v26 = sub_265A1EBA0();
    v27 = v33;

    swift_beginAccess();
    v39 = *(a1 + 24);
    v40 = *(a1 + 16);
    v37 = *(a1 + 40);
    v38 = *(a1 + 32);
    v35 = *(a1 + 56);
    v36 = *(a1 + 48);
    *(a1 + 16) = v43;
    *(a1 + 24) = v44;
    *(a1 + 32) = v30;
    *(a1 + 40) = v42;
    *(a1 + 48) = v26;
    *(a1 + 56) = v27;
    LOBYTE(v31) = *(a1 + 64);
    v28 = 4;
    *(a1 + 64) = 4;

    sub_2659E0A0C(v40, v39, v38, v37, v36, v35, v31);
    v19 = v45;
    v18 = v46;
    v17 = v47;
    v15 = v48;
    v14 = v49;
    v21 = v43;
    v22 = v44;
    v23 = v41;
    v24 = v42;
  }

  *a7 = v21;
  *(a7 + 8) = v22;
  *(a7 + 16) = v23;
  *(a7 + 24) = v24;
  *(a7 + 32) = v26;
  *(a7 + 40) = v27;
  *(a7 + 48) = v28;
  return sub_2659E0A20(v14, v15, v17, v18, v19, v20, v25);
}

void sub_265A0C3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v15[1] = a3;
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F8, &qword_265A22650);
    sub_265A1ED90();
  }

  else
  {
    if (a2)
    {
      sub_265A1E730();
      v13 = sub_265A1E770();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = sub_265A1E770();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    sub_265A0CB24(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F8, &qword_265A22650);
    sub_265A1EDA0();
  }
}

uint64_t sub_265A0C54C()
{
  v0 = sub_265A1E6C0();
  v42 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v40 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  if (v9 >> 62)
  {
    v38 = v9;
    v39 = sub_265A1F1E0();
    v9 = v38;
    v12 = v39;
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v14 = v3;
  v15 = v9;
  v45 = MEMORY[0x277D84F90];
  sub_265A1D304(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = v45;
    v16 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      v18 = (v42 + 32);
      while (1)
      {
        v19 = v16;
        v20 = [MEMORY[0x2667656F0](v17) localizedStringResource];
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v44 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        v43 = v21;
        v22 = v41;
        sub_265A1E6A0();
        v23 = *v18;
        (*v18)(v11, v22, v0);
        swift_unknownObjectRelease();
        v45 = v13;
        v24 = v0;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_265A1D304((v25 > 1), v26 + 1, 1);
          v13 = v45;
        }

        ++v17;
        *(v13 + 16) = v26 + 1;
        v23((v13 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v26), v11, v24);
        v0 = v24;
        v16 = v19;
        if (v12 == v17)
        {
          return v13;
        }
      }
    }

    else
    {
      v27 = (v15 + 32);
      v28 = (v42 + 32);
      v29 = v14;
      while (1)
      {
        v30 = *v27;
        v31 = [v30 localizedStringResource];
        if (!v31)
        {
          break;
        }

        v32 = v31;
        v44 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
        v43 = v32;
        sub_265A1E6A0();
        v33 = *v28;
        (*v28)(v6, v29, v0);

        v45 = v13;
        v34 = v0;
        v36 = *(v13 + 16);
        v35 = *(v13 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_265A1D304((v35 > 1), v36 + 1, 1);
          v13 = v45;
        }

        *(v13 + 16) = v36 + 1;
        v33((v13 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36), v6, v34);
        ++v27;
        --v12;
        v0 = v34;
        if (!v12)
        {
          return v13;
        }
      }
    }
  }

  result = sub_265A1F1C0();
  __break(1u);
  return result;
}

unint64_t sub_265A0C954()
{
  result = qword_28156A830;
  if (!qword_28156A830)
  {
    type metadata accessor for LNSystemEntityProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A830);
  }

  return result;
}

unint64_t sub_265A0C9AC(uint64_t a1, uint64_t a2)
{
  sub_265A1F3D0();
  sub_265A1EBF0();
  v4 = sub_265A1F400();

  return sub_265A0CCF8(a1, a2, v4);
}

unint64_t sub_265A0CA28(uint64_t a1)
{
  sub_265A1EBA0();
  sub_265A1F3D0();
  sub_265A1EBF0();
  v2 = sub_265A1F400();

  return sub_265A0CDB0(a1, v2);
}

unint64_t sub_265A0CAD0()
{
  result = qword_28156B000;
  if (!qword_28156B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156B000);
  }

  return result;
}