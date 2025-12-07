uint64_t sub_2489AFB40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56A0, &unk_248A15320);
  result = sub_248A13230();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_248A13430();
      sub_248A12BB0();

      result = sub_248A13460();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2489AFE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = sub_248A11BC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A28, qword_248A163F8);
  v47 = v4;
  result = sub_248A13230();
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

      sub_2489B1D88(&unk_27EEB5A30, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_248A12AE0();
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

uint64_t sub_2489B02E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248A12480();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2489A7DFC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2489B0F1C();
      goto LABEL_7;
    }

    sub_2489AED6C(v17, a3 & 1);
    v22 = sub_2489A7DFC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2489B0C8C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_248A13380();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_2489B04B4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2489A7D40(a2, a3);
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
      sub_2489B119C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2489AF148(v16, a4 & 1);
    v11 = sub_2489A7D40(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_248A13380();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_248983794(a1, v22);
  }

  else
  {
    sub_2489B0D44(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2489B0604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v17 = *v8;
  v18 = sub_2489A7ED0(a4, a5, a6, a7);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a8 & 1) == 0)
  {
    if (v25 < v23 || (a8 & 1) != 0)
    {
      sub_2489AF400(v23, a8 & 1);
      v18 = sub_2489A7ED0(a4, a5, a6, a7);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_248A13380();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_2489B1340();
      v18 = v26;
    }
  }

  v28 = *v9;
  if (v24)
  {
    v29 = (v28[7] + 24 * v18);
    v30 = v29[2];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v32 = v28[6] + 32 * v18;
  *v32 = a4;
  *(v32 + 8) = a5;
  *(v32 + 16) = a6;
  *(v32 + 24) = a7;
  v33 = (v28[7] + 24 * v18);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v34 = v28[2];
  v22 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;

  return sub_2489837A4(a4, a5, a6, a7);
}

uint64_t sub_2489B07EC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2489A86D0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2489B14E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2489AF8C0(v14, a3 & 1);
    v9 = sub_2489A86D0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_248A13380();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_248978948(a1, v20);
  }

  else
  {

    return sub_2489B0DB0(v9, a2, a1, v19);
  }
}

unint64_t sub_2489B091C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2489A8714(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2489AFB40(v16, a4 & 1);
      result = sub_2489A8714(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_248A13380();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2489B1664();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_2489B0A7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_248A11BC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2489A881C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2489B17C8();
      goto LABEL_7;
    }

    sub_2489AFE38(v17, a3 & 1);
    v28 = sub_2489A881C(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2489B0E1C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_248A13380();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2489B0C8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_248A12480();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_2489B0D44(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_248983794(a4, (a5[7] + 32 * a1));
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

uint64_t sub_2489B0DB0(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_248978948(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2489B0E1C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_248A11BC0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_2489B0F1C()
{
  v1 = v0;
  v33 = sub_248A12480();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A20, &qword_248A15358);
  v3 = *v0;
  v4 = sub_248A13220();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2489B119C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56B8, &unk_248A16440);
  v2 = *v0;
  v3 = sub_248A13220();
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
        sub_24897C864(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_248983794(v25, (*(v4 + 56) + v22));
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

id sub_2489B1340()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB56F0, &unk_248A15360);
  v2 = *v0;
  v3 = sub_248A13220();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v17 *= 24;
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = *(v4 + 48) + v18;
        v28 = *(v19 + 24);
        *v27 = *v19;
        *(v27 + 8) = v21;
        *(v27 + 16) = v22;
        *(v27 + 24) = v28;
        v29 = (*(v4 + 56) + v17);
        *v29 = v24;
        v29[1] = v25;
        v29[2] = v26;
        sub_2489837A4(v20, v21, v22, v28);

        result = v26;
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

void *sub_2489B14E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A40, &qword_248A16410);
  v2 = *v0;
  v3 = sub_248A13220();
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
        sub_248997228(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_248978948(v19, *(v4 + 56) + 40 * v17);
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

void *sub_2489B1664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56A0, &unk_248A15320);
  v2 = *v0;
  v3 = sub_248A13220();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

char *sub_2489B17C8()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = sub_248A11BC0();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A28, qword_248A163F8);
  v4 = *v0;
  v5 = sub_248A13220();
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

uint64_t sub_2489B1B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489AE5A4(a1, v4, v5, v6);
}

uint64_t sub_2489B1D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2489B1DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489B1E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2489B1EA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489AEB7C(a1, v4);
}

uint64_t sub_2489B1F60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return sub_2489AEB7C(a1, v4);
}

uint64_t sub_2489B2018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489AD0B4(a1, v4, v5, v7, v6);
}

uint64_t NearbyDevice.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NearbyDevice.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NearbyDevice.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyDevice(0) + 24);
  v4 = sub_248A12540();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyDevice.init(name:identifier:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for NearbyDevice(0) + 24);
  v9 = sub_248A12540();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t NearbyDevice.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  sub_248A12BB0();
  type metadata accessor for NearbyDevice(0);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  return sub_248A12AF0();
}

uint64_t NearbyDevice.hashValue.getter()
{
  sub_248A13430();
  if (*(v0 + 8))
  {
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  sub_248A12BB0();
  type metadata accessor for NearbyDevice(0);
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  sub_248A12AF0();
  return sub_248A13460();
}

uint64_t sub_2489B241C()
{
  sub_248A13430();
  if (*(v0 + 8))
  {
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  sub_248A12BB0();
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  sub_248A12AF0();
  return sub_248A13460();
}

uint64_t sub_2489B2508(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  sub_248A12BB0();
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  return sub_248A12AF0();
}

uint64_t sub_2489B25DC(uint64_t a1)
{
  sub_248A13430();
  if (*(v1 + 8))
  {
    sub_248A13450();
    sub_248A12BB0();
  }

  else
  {
    sub_248A13450();
  }

  sub_248A12BB0();
  sub_248A12540();
  sub_2489B70B4(&qword_27EEB5A48, MEMORY[0x277CD8B10], MEMORY[0x277CD8B18]);
  sub_248A12AF0();
  return sub_248A13460();
}

uint64_t static NearbyDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v2 || (sub_248A13340() & 1) != 0)
  {
    type metadata accessor for NearbyDevice(0);

    JUMPOUT(0x24C1DF1C0);
  }

  return 0;
}

uint64_t NearbyDevice.isRemoteUnlockDevice(_:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = [a1 name];
  v6 = sub_248A12B60();
  v8 = v7;

  if (v4)
  {
    if (v3 == v6 && v4 == v8)
    {
    }

    else
    {
      v10 = sub_248A13340();

      v11 = 0;
      if ((v10 & 1) == 0)
      {
        return v11 & 1;
      }
    }

    v13 = v1[2];
    v12 = v1[3];
    v14 = [a1 uniqueIdentifier];
    v15 = sub_248A12B60();
    v17 = v16;

    if (v13 == v15 && v12 == v17)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_248A13340();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2489B2864(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v2 || (sub_248A13340() & 1) != 0)
  {

    JUMPOUT(0x24C1DF1C0);
  }

  return 0;
}

uint64_t NearbyDevice.description.getter()
{
  sub_248A13100();
  MEMORY[0x24C1DF8B0](0xD000000000000013, 0x8000000248A19B30);
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v2 = 0xE100000000000000;
    v1 = 45;
  }

  MEMORY[0x24C1DF8B0](v1, v2);

  MEMORY[0x24C1DF8B0](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x24C1DF8B0](v0[2], v0[3]);
  MEMORY[0x24C1DF8B0](0x696F70646E65202CLL, 0xEC000000203A746ELL);
  type metadata accessor for NearbyDevice(0);
  sub_248A12540();
  sub_248A131F0();
  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return 0;
}

uint64_t NearbyDeviceProviderState.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = type metadata accessor for NearbyDeviceProviderState(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2489B711C(v1, v10, type metadata accessor for NearbyDeviceProviderState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0x7261745320746F4ELL;
    }

    else
    {
      return 0x656C6C65636E6143;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v15 = *v10;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD000000000000013, 0x8000000248A19B50);
    v16[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    sub_248A131F0();

    return v17;
  }

  else
  {
    sub_2489B7044(v10, v7);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_248A13100();

    v17 = 0x4428207964616552;
    v18 = 0xEF203A6563697665;
    sub_24898D610(v7, v5, &qword_27EEB5A50, &unk_248A16450);
    v12 = sub_248A12B80();
    MEMORY[0x24C1DF8B0](v12);

    v13 = v17;
    sub_248983734(v7, &qword_27EEB5A50, &unk_248A16450);
    return v13;
  }
}

uint64_t NearbyDeviceProvidingError.hashValue.getter()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

BOOL sub_2489B2D54()
{
  v1 = sub_248A129A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AB8, &qword_248A16740);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AC0, &qword_248A16748);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *v0;
  v30 = *v0 == 0;
  if (v15)
  {
    v16 = v0[1];
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(ObjectType, v16);
    v18 = *(v2 + 56);
    v18(v14, 0, 1, v1);
  }

  else
  {
    v18 = *(v2 + 56);
    v18(&v27 - v13, 1, 1, v1);
  }

  (*(v2 + 104))(v12, *MEMORY[0x277CD9118], v1);
  v18(v12, 0, 1, v1);
  v19 = *(v4 + 48);
  sub_24898D610(v14, v6, &qword_27EEB5AC0, &qword_248A16748);
  sub_24898D610(v12, &v6[v19], &qword_27EEB5AC0, &qword_248A16748);
  v20 = *(v2 + 48);
  if (v20(v6, 1, v1) != 1)
  {
    v21 = v29;
    sub_24898D610(v6, v29, &qword_27EEB5AC0, &qword_248A16748);
    if (v20(&v6[v19], 1, v1) != 1)
    {
      v23 = v28;
      (*(v2 + 32))(v28, &v6[v19], v1);
      sub_2489B70B4(&qword_27EEB5AC8, MEMORY[0x277CD9120], MEMORY[0x277CD9128]);
      v24 = v21;
      v25 = sub_248A12B00();
      v26 = *(v2 + 8);
      v26(v23, v1);
      sub_248983734(v12, &qword_27EEB5AC0, &qword_248A16748);
      sub_248983734(v14, &qword_27EEB5AC0, &qword_248A16748);
      v26(v24, v1);
      sub_248983734(v6, &qword_27EEB5AC0, &qword_248A16748);
      if (v25)
      {
        return 1;
      }

      return v30;
    }

    sub_248983734(v12, &qword_27EEB5AC0, &qword_248A16748);
    sub_248983734(v14, &qword_27EEB5AC0, &qword_248A16748);
    (*(v2 + 8))(v21, v1);
LABEL_9:
    sub_248983734(v6, &qword_27EEB5AB8, &qword_248A16740);
    return v30;
  }

  sub_248983734(v12, &qword_27EEB5AC0, &qword_248A16748);
  sub_248983734(v14, &qword_27EEB5AC0, &qword_248A16748);
  if (v20(&v6[v19], 1, v1) != 1)
  {
    goto LABEL_9;
  }

  sub_248983734(v6, &qword_27EEB5AC0, &qword_248A16748);
  return 1;
}

uint64_t NearbyDeviceProvider.__allocating_init(sharingInteractionController:browserProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  NearbyDeviceProvider.init(sharingInteractionController:browserProvider:)(a1, a2, a3);
  return v6;
}

void *NearbyDeviceProvider.init(sharingInteractionController:browserProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v15 = sub_248A12EA0();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12ED0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_248A12A40();
  MEMORY[0x28223BE20](v9 - 8);
  sub_2489B7884(0, &qword_28150F560, 0x277D85C90);
  sub_248A12A30();
  v19 = MEMORY[0x277D84F90];
  sub_2489B70B4(&unk_28150F570, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v15);
  *(v3 + 72) = sub_248A12EE0();
  sub_248A11DF0();
  v10 = (v3 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  v11 = type metadata accessor for NearbyDeviceProvider.State(0);
  type metadata accessor for NearbyDeviceProviderState(0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  v10[1] = 0;
  *(v10 + *(v11 + 24)) = 0;
  v12 = v17;
  *(v4 + 16) = v16;
  *(v4 + 24) = v12;
  sub_248978948(v18, v4 + 32);
  return v4;
}

uint64_t sub_2489B3540()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_248A129A0();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DB0);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  v9 = os_log_type_enabled(v7, v8);
  v34 = v2;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37[0] = v11;
    *v10 = 136446210;
    v12 = sub_248A13570();
    v14 = sub_24897BC00(v12, v13, v37);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Start browsing for nearby devices", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  v16 = (v1[2])(v15);
  v18 = v17;
  v19 = sub_248A122B0();
  v20 = sub_248A12E80();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37[0] = v22;
    *v21 = 136446210;
    v23 = sub_248A13570();
    v25 = sub_24897BC00(v23, v24, v37);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_248975000, v19, v20, "[%{public}s] Clearing previous browsing state and results", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1E0A80](v22, -1, -1);
    MEMORY[0x24C1E0A80](v21, -1, -1);
  }

  ObjectType = swift_getObjectType();
  (*(v18 + 8))(ObjectType, v18);
  sub_2489B5C8C(v5);
  (*(v35 + 8))(v5, v36);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v18 + 32);

  v28(sub_2489B7B14, v27, ObjectType, v18);

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v16;
  v30[4] = v18;
  v31 = *(v18 + 56);

  swift_unknownObjectRetain();
  v31(sub_2489B7B1C, v30, ObjectType, v18);

  (*(v18 + 72))(v1[9], ObjectType, v18);
  v32 = (v1 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  swift_beginAccess();
  *v32 = v16;
  v32[1] = v18;
  return swift_unknownObjectRelease();
}

uint64_t sub_2489B39C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489B5C8C(a1);
  }

  return result;
}

uint64_t sub_2489B3A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_248A129A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 8))(ObjectType, a5);
    sub_2489B5C8C(v9);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_2489B3B4C()
{
  v1 = v0;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DB0);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Stop browsing for nearby devices", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = (v1 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  swift_beginAccess();
  if (*v10)
  {
    v11 = v10[1];
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 32);
    swift_unknownObjectRetain();
    v13(0, 0, ObjectType, v11);
    swift_unknownObjectRelease();
    if (*v10)
    {
      v14 = v10[1];
      v15 = swift_getObjectType();
      v16 = *(v14 + 56);
      swift_unknownObjectRetain();
      v16(0, 0, v15, v14);
      swift_unknownObjectRelease();
      if (*v10)
      {
        v17 = v10[1];
        v18 = swift_getObjectType();
        v19 = *(v17 + 80);
        swift_unknownObjectRetain();
        v19(v18, v17);
        swift_unknownObjectRelease();
      }
    }
  }

  *v10 = 0;
  v10[1] = 0;
  return swift_unknownObjectRelease();
}

void sub_2489B3DD4(void *a1)
{
  v2 = v1;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DB0);
  v5 = a1;
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v8 = 136446466;
    v11 = sub_248A13570();
    v13 = sub_24897BC00(v11, v12, v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Set trusted device %{public}@", v8, 0x16u);
    sub_248983734(v9, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v15 = v2 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
  swift_beginAccess();
  v16 = *(type metadata accessor for NearbyDeviceProvider.State(0) + 24);
  v17 = *(v15 + v16);
  *(v15 + v16) = v5;
  v18 = v5;
}

uint64_t sub_2489B3FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NearbyDeviceProvider.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_27EEB9DB0);
  swift_unknownObjectRetain();
  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136446466;
    v14 = sub_248A13570();
    v16 = sub_24897BC00(v14, v15, v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v23[1] = a1;
    v23[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A60, &qword_248A16470);
    v17 = sub_248A12B80();
    v19 = sub_24897BC00(v17, v18, v23);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Add observer %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  if (sub_248A11D80())
  {
    v20 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
    swift_beginAccess();
    sub_2489B711C(v3 + v20, v8, type metadata accessor for NearbyDeviceProvider.State);
    v21 = sub_2489B2D54();
    sub_2489B78CC(v8, type metadata accessor for NearbyDeviceProvider.State);
    sub_248A11DA0();
    if (!v21)
    {
      return sub_2489B4748(a1, a2);
    }
  }

  else
  {
    sub_248A11DA0();
  }

  return sub_2489B3540();
}

uint64_t sub_2489B42DC(uint64_t a1, uint64_t a2)
{
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DB0);
  swift_unknownObjectRetain();
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A60, &qword_248A16470);
    v10 = sub_248A12B80();
    v12 = sub_24897BC00(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Remove observer %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  sub_248A11DB0();
  result = sub_248A11D80();
  if ((result & 1) == 0)
  {
    return sub_2489B3B4C();
  }

  return result;
}

uint64_t sub_2489B44FC()
{
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DB0);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Notifying observers", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  return sub_248A11DC0();
}

uint64_t sub_2489B46CC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2489B4748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NearbyDeviceProviderState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NearbyDeviceProvider.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_27EEB9DB0);

  swift_unknownObjectRetain();
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  swift_unknownObjectRelease();

  v15 = 0x27EEB5000;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v36 = v9;
    v17 = v16;
    v35 = swift_slowAlloc();
    v37[0] = v35;
    *v17 = 136446722;
    v18 = sub_248A13570();
    v20 = a2;
    v21 = sub_24897BC00(v18, v19, v37);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
    swift_beginAccess();
    sub_2489B711C(v3 + v22, v11, type metadata accessor for NearbyDeviceProvider.State);
    v23 = sub_248A12B80();
    v25 = sub_24897BC00(v23, v24, v37);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2082;
    v37[1] = a1;
    v37[2] = v20;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A60, &qword_248A16470);
    v26 = sub_248A12B80();
    v28 = sub_24897BC00(v26, v27, v37);

    *(v17 + 24) = v28;
    a2 = v20;
    v15 = 0x27EEB5000uLL;
    _os_log_impl(&dword_248975000, v13, v14, "[%{public}s] Sending current state %{public}s to observer %{public}s", v17, 0x20u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v29, -1, -1);
    v30 = v17;
    v9 = v36;
    MEMORY[0x24C1E0A80](v30, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v32 = v3 + *(v15 + 2648);
  swift_beginAccess();
  sub_2489B711C(v32 + *(v9 + 20), v8, type metadata accessor for NearbyDeviceProviderState);
  (*(a2 + 8))(v3, &protocol witness table for NearbyDeviceProvider, v8, ObjectType, a2);
  return sub_2489B78CC(v8, type metadata accessor for NearbyDeviceProviderState);
}

void sub_2489B4B00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v5 = *v2;
  v6 = type metadata accessor for NearbyDevice(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v2 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
  swift_beginAccess();
  v11 = *&v10[*(type metadata accessor for NearbyDeviceProvider.State(0) + 24)];
  if (!v11)
  {
    if (qword_27EEB5198 != -1)
    {
      swift_once();
    }

    v47 = sub_248A122D0();
    __swift_project_value_buffer(v47, qword_27EEB9DB0);
    v48 = sub_248A122B0();
    v49 = sub_248A12E60();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v77 = v51;
      *v50 = 136446210;
      v52 = sub_248A13570();
      v54 = sub_24897BC00(v52, v53, &v77);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_248975000, v48, v49, "[%{public}s] Trusted device is not set", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x24C1E0A80](v51, -1, -1);
      MEMORY[0x24C1E0A80](v50, -1, -1);
    }

    sub_2489B7AB8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v75 = v5;
  v72 = v6;
  v73 = a2;
  v12 = qword_27EEB5198;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_248A122D0();
  v15 = __swift_project_value_buffer(v14, qword_27EEB9DB0);
  v16 = v13;
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();

  v19 = os_log_type_enabled(v17, v18);
  v74 = v3;
  v70 = v11;
  v71 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v77 = v69;
    *v20 = 136446466;
    v21 = sub_248A13570();
    v23 = sub_24897BC00(v21, v22, &v77);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2114;
    *(v20 + 14) = v16;
    v24 = v68;
    *v68 = v11;
    v25 = v16;
    _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Trusted device set to: %{public}@", v20, 0x16u);
    sub_248983734(v24, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v24, -1, -1);
    v26 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x24C1E0A80](v26, -1, -1);
    MEMORY[0x24C1E0A80](v20, -1, -1);
  }

  v27 = v16;
  v28 = *(v76 + 16);
  if (!v28)
  {
    v55 = 1;
    v56 = v73;
    goto LABEL_32;
  }

  v29 = v7;
  v30 = v76 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v69 = v29;
  v76 = v29[9];
  while (1)
  {
    sub_2489B711C(v30, v9, type metadata accessor for NearbyDevice);
    v31 = *v9;
    v32 = v9[1];
    v33 = v27;
    v34 = [v27 name];
    v35 = sub_248A12B60();
    v37 = v36;

    if (!v32)
    {

      v27 = v33;
      goto LABEL_9;
    }

    if (v31 == v35 && v32 == v37)
    {

      v27 = v33;
    }

    else
    {
      v39 = sub_248A13340();

      v27 = v33;
      if ((v39 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v40 = v9[2];
    v41 = v9[3];
    v42 = [v27 uniqueIdentifier];
    v43 = sub_248A12B60();
    v45 = v44;

    if (v40 == v43 && v41 == v45)
    {
      break;
    }

    v46 = sub_248A13340();

    v27 = v33;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_9:
    sub_2489B78CC(v9, type metadata accessor for NearbyDevice);
    v30 += v76;
    if (!--v28)
    {
      v55 = 1;
      v56 = v73;
      goto LABEL_31;
    }
  }

  v27 = v33;
LABEL_30:
  v57 = v73;
  sub_2489B7A50(v9, v73, type metadata accessor for NearbyDevice);
  v56 = v57;
  v55 = 0;
LABEL_31:
  v7 = v69;
LABEL_32:
  (v7[7])(v56, v55, 1, v72);
  v58 = v27;
  v59 = sub_248A122B0();
  v60 = sub_248A12E80();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v77 = v63;
    *v61 = 136446466;
    v64 = sub_248A13570();
    v66 = sub_24897BC00(v64, v65, &v77);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2114;
    *(v61 + 14) = v58;
    *v62 = v70;
    v67 = v58;
    _os_log_impl(&dword_248975000, v59, v60, "[%{public}s] Found trusted device: %{public}@", v61, 0x16u);
    sub_248983734(v62, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x24C1E0A80](v63, -1, -1);
    MEMORY[0x24C1E0A80](v61, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2489B5228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  v3 = sub_248A128A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A11BC0();
  v79 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_248A12540();
  v78 = *(v83 - 8);
  v9 = MEMORY[0x28223BE20](v83);
  v82 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v66 - v11;
  v90 = sub_248A129E0();
  v85 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NearbyDevice(0);
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x28223BE20](v14);
  v84 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = v66 - v17;
  v18 = sub_248A129A0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == *MEMORY[0x277CD9108])
  {
    (*(v19 + 96))(v21, v18);
    v23 = *(v4 + 32);
    v23(v6, v21, v3);
    sub_2489B70B4(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v24 = swift_allocError();
    v23(v25, v6, v3);
    v26 = v86;
    *v86 = v24;
    v27 = type metadata accessor for NearbyDeviceProviderState(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  if (v22 == *MEMORY[0x277CD9110])
  {
    (*(v19 + 8))(v21, v18);
LABEL_6:
    v27 = type metadata accessor for NearbyDeviceProviderState(0);
    v26 = v86;
    goto LABEL_7;
  }

  if (v22 == *MEMORY[0x277CD9100])
  {
    goto LABEL_6;
  }

  if (v22 != *MEMORY[0x277CD90F8])
  {
    goto LABEL_13;
  }

  v68 = v7;
  v29 = (v75 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state);
  swift_beginAccess();
  v18 = *v29;
  if (!*v29)
  {
    sub_2489B79F4();
    swift_allocError();
    return swift_willThrow();
  }

  v30 = v29[1];
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 16);
  swift_unknownObjectRetain();
  v33 = v32(ObjectType, v30);
  v34 = v33;
  v35 = *(v33 + 16);
  if (v35)
  {
    v36 = sub_2489B666C(*(v33 + 16), 0);
    v37 = sub_2489B6768(&v89, &v36[(*(v85 + 80) + 32) & ~*(v85 + 80)], v35, v34);
    v22 = sub_2489B7A48(v89);
    if (v37 != v35)
    {
      __break(1u);
LABEL_13:
      v38 = *MEMORY[0x277CD9118];
      v39 = v22;
      v40 = type metadata accessor for NearbyDeviceProviderState(0);
      v41 = v40;
      if (v39 == v38)
      {
        v42 = v86;
        swift_storeEnumTagMultiPayload();
        return (*(*(v41 - 8) + 56))(v42, 0, 1, v41);
      }

      else
      {
        (*(*(v40 - 8) + 56))(v86, 1, 1, v40);
        return (*(v19 + 8))(v21, v18);
      }
    }
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v43 = *(v36 + 2);
  if (v43)
  {
    v66[2] = v18;
    v89 = MEMORY[0x277D84F90];
    sub_2489CE5EC(0, v43, 0);
    v44 = v89;
    v72 = *(v85 + 16);
    v45 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v66[1] = v36;
    v46 = &v36[v45];
    v71 = *(v85 + 72);
    v70 = (v78 + 8);
    v67 = (v79 + 8);
    v85 += 16;
    v69 = (v85 - 8);
    v73 = v12;
    do
    {
      v79 = v44;
      v72(v88, v46, v90);
      sub_248A129D0();
      v47 = sub_248A124F0();
      v77 = v48;
      v78 = v47;
      v49 = *v70;
      v50 = v83;
      (*v70)(v12, v83);
      v51 = v82;
      sub_248A129D0();
      v52 = sub_248A12530();
      v54 = v53;
      v49(v51, v50);
      if (!v54)
      {
        v55 = v76;
        sub_248A11BB0();
        v52 = sub_248A11B90();
        v54 = v56;
        (*v67)(v55, v68);
      }

      v57 = v84;
      v44 = v79;
      v58 = v88;
      sub_248A129D0();
      (*v69)(v58, v90);
      v59 = v77;
      *v57 = v78;
      v57[1] = v59;
      v57[2] = v52;
      v57[3] = v54;
      v89 = v44;
      v61 = *(v44 + 16);
      v60 = *(v44 + 24);
      v12 = v73;
      if (v61 >= v60 >> 1)
      {
        sub_2489CE5EC((v60 > 1), v61 + 1, 1);
        v44 = v89;
      }

      *(v44 + 16) = v61 + 1;
      sub_2489B7A50(v57, v44 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v61, type metadata accessor for NearbyDevice);
      v46 += v71;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  v62 = v74;
  v63 = v87;
  sub_2489B4B00(v44, v74);
  v64 = v86;
  swift_unknownObjectRelease();
  if (v63)
  {
  }

  sub_2489B7044(v62, v64);
  v65 = type metadata accessor for NearbyDeviceProviderState(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
}

uint64_t sub_2489B5C8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A98, &qword_248A16730);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = (&v55 - v5);
  v6 = type metadata accessor for NearbyDeviceProviderState(0);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v55 - v9);
  v11 = sub_248A129A0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  if (qword_27EEB5198 != -1)
  {
    swift_once();
  }

  v17 = sub_248A122D0();
  v18 = __swift_project_value_buffer(v17, qword_27EEB9DB0);
  v19 = *(v12 + 16);
  v19(v16, a1, v11);
  v64 = v18;
  v20 = sub_248A122B0();
  v62 = sub_248A12E80();
  if (os_log_type_enabled(v20, v62))
  {
    v21 = swift_slowAlloc();
    v58 = v2;
    v22 = v21;
    v56 = swift_slowAlloc();
    v67[0] = v56;
    *v22 = 136446466;
    v23 = sub_248A13570();
    v57 = a1;
    v25 = sub_24897BC00(v23, v24, v67);
    v55 = v20;
    v26 = v10;
    v27 = v25;

    *(v22 + 4) = v27;
    v10 = v26;
    *(v22 + 12) = 2082;
    v19(v63, v16, v11);
    v28 = sub_248A12B80();
    v30 = v29;
    (*(v12 + 8))(v16, v11);
    v31 = sub_24897BC00(v28, v30, v67);
    a1 = v57;

    *(v22 + 14) = v31;
    v32 = v55;
    _os_log_impl(&dword_248975000, v55, v62, "[%{public}s] Handle browser state update: %{public}s", v22, 0x16u);
    v33 = v56;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v33, -1, -1);
    v34 = v22;
    v2 = v58;
    MEMORY[0x24C1E0A80](v34, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
  }

  v35 = v65;
  sub_2489B5228(a1, v65);
  if ((*(v60 + 48))(v35, 1, v61) == 1)
  {
    return sub_248983734(v35, &qword_27EEB5A98, &qword_248A16730);
  }

  sub_2489B7A50(v35, v10, type metadata accessor for NearbyDeviceProviderState);
  v37 = v2 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state;
  swift_beginAccess();
  v38 = type metadata accessor for NearbyDeviceProvider.State(0);
  v39 = v59;
  sub_2489B711C(&v37[*(v38 + 20)], v59, type metadata accessor for NearbyDeviceProviderState);
  v40 = _s13DeviceSharing06NearbyA13ProviderStateO2eeoiySbAC_ACtFZ_0(v10, v39);
  sub_2489B78CC(v39, type metadata accessor for NearbyDeviceProviderState);
  v41 = sub_248A122B0();
  v42 = sub_248A12E80();
  v43 = os_log_type_enabled(v41, v42);
  if (v40)
  {
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66[0] = v45;
      *v44 = 136446210;
      v46 = sub_248A13570();
      v48 = sub_24897BC00(v46, v47, v66);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_248975000, v41, v42, "[%{public}s] Browser state unchanged", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C1E0A80](v45, -1, -1);
      MEMORY[0x24C1E0A80](v44, -1, -1);
    }
  }

  else
  {
    if (v43)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v66[0] = v50;
      *v49 = 136446210;
      v51 = sub_248A13570();
      v53 = sub_24897BC00(v51, v52, v66);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_248975000, v41, v42, "[%{public}s] Browser state changed", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x24C1E0A80](v50, -1, -1);
      MEMORY[0x24C1E0A80](v49, -1, -1);
    }

    swift_beginAccess();
    sub_2489B792C(v10, &v37[*(v38 + 20)]);
    v54 = swift_endAccess();
    MEMORY[0x28223BE20](v54);
    *(&v55 - 2) = v2;
    *(&v55 - 1) = v10;
    sub_2489B44FC();
  }

  return sub_2489B78CC(v10, type metadata accessor for NearbyDeviceProviderState);
}

uint64_t NearbyDeviceProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v1 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_observers;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2489B78CC(v0 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state, type metadata accessor for NearbyDeviceProvider.State);
  return v0;
}

uint64_t NearbyDeviceProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  v1 = OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_observers;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2489B78CC(v0 + OBJC_IVAR____TtC13DeviceSharing20NearbyDeviceProvider_state, type metadata accessor for NearbyDeviceProvider.State);

  return swift_deallocClassInstance();
}

void *sub_2489B666C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AA8, &qword_248A16738);
  v4 = *(sub_248A129E0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2489B6768(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_248A129E0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s13DeviceSharing06NearbyA13ProviderStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyDevice(0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5AD0, &qword_248A16750);
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for NearbyDeviceProviderState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5AD8, &qword_248A16758);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  v23 = *(v20 + 56);
  sub_2489B711C(a1, &v34 - v21, type metadata accessor for NearbyDeviceProviderState);
  sub_2489B711C(a2, &v22[v23], type metadata accessor for NearbyDeviceProviderState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    v25 = v22;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2489B711C(v22, v18, type metadata accessor for NearbyDeviceProviderState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_248983734(v18, &qword_27EEB5A50, &unk_248A16450);
LABEL_13:
        sub_248983734(v22, qword_27EEB5AD8, &qword_248A16758);
        v26 = 0;
        return v26 & 1;
      }

      sub_2489B7044(v18, v15);
      sub_2489B7044(&v22[v23], v13);
      v28 = *(v6 + 48);
      v29 = v39;
      sub_24898D610(v15, v39, &qword_27EEB5A50, &unk_248A16450);
      sub_24898D610(v13, v29 + v28, &qword_27EEB5A50, &unk_248A16450);
      v30 = v38;
      v31 = *(v37 + 48);
      if (v31(v29, 1, v38) == 1)
      {
        sub_248983734(v13, &qword_27EEB5A50, &unk_248A16450);
        sub_248983734(v15, &qword_27EEB5A50, &unk_248A16450);
        if (v31(v29 + v28, 1, v30) == 1)
        {
          sub_248983734(v29, &qword_27EEB5A50, &unk_248A16450);
          v26 = 1;
LABEL_26:
          sub_2489B78CC(v22, type metadata accessor for NearbyDeviceProviderState);
          return v26 & 1;
        }
      }

      else
      {
        v32 = v36;
        sub_24898D610(v29, v36, &qword_27EEB5A50, &unk_248A16450);
        if (v31(v29 + v28, 1, v30) != 1)
        {
          v33 = v35;
          sub_2489B7A50(v29 + v28, v35, type metadata accessor for NearbyDevice);
          if (*(v32 + 16) == *(v33 + 16) && *(v32 + 24) == *(v33 + 24) || (v26 = 0, (sub_248A13340() & 1) != 0))
          {
            v26 = MEMORY[0x24C1DF1C0](v32 + *(v30 + 24), v33 + *(v30 + 24));
          }

          sub_248983734(v13, &qword_27EEB5A50, &unk_248A16450);
          sub_248983734(v15, &qword_27EEB5A50, &unk_248A16450);
          sub_2489B78CC(v33, type metadata accessor for NearbyDevice);
          sub_2489B78CC(v32, type metadata accessor for NearbyDevice);
          sub_248983734(v29, &qword_27EEB5A50, &unk_248A16450);
          goto LABEL_26;
        }

        sub_248983734(v13, &qword_27EEB5A50, &unk_248A16450);
        sub_248983734(v15, &qword_27EEB5A50, &unk_248A16450);
        sub_2489B78CC(v32, type metadata accessor for NearbyDevice);
      }

      sub_248983734(v29, &qword_27EEB5AD0, &qword_248A16750);
      v26 = 0;
      goto LABEL_26;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_13;
    }

    sub_2489B78CC(&v22[v23], type metadata accessor for NearbyDeviceProviderState);
    v25 = v22;
  }

  sub_2489B78CC(v25, type metadata accessor for NearbyDeviceProviderState);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_2489B7044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489B70B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2489B711C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2489B71D0()
{
  result = qword_27EEB5A70;
  if (!qword_27EEB5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5A70);
  }

  return result;
}

void sub_2489B724C(uint64_t a1)
{
  sub_2489B72D8();
  if (v1 <= 0x3F)
  {
    sub_248A12540();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2489B72D8()
{
  if (!qword_28150F588)
  {
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_28150F588);
    }
  }
}

void sub_2489B7378(uint64_t a1)
{
  sub_2489B73EC(319);
  if (v1 <= 0x3F)
  {
    sub_2489B7444();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2489B73EC(uint64_t a1)
{
  if (!qword_281510110)
  {
    type metadata accessor for NearbyDevice(255);
    v1 = sub_248A12F20();
    if (!v2)
    {
      atomic_store(v1, &qword_281510110);
    }
  }
}

unint64_t sub_2489B7444()
{
  result = qword_28150F550;
  if (!qword_28150F550)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28150F550);
  }

  return result;
}

uint64_t sub_2489B7530(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2489B7568(uint64_t a1)
{
  result = sub_248A11E00();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NearbyDeviceProvider.State(319);
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

void sub_2489B771C(uint64_t a1)
{
  sub_2489B77B8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NearbyDeviceProviderState(319);
    if (v2 <= 0x3F)
    {
      sub_2489B781C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2489B77B8(uint64_t a1)
{
  if (!qword_27EEB5A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5A80, &qword_248A16728);
    v1 = sub_248A12F20();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB5A78);
    }
  }
}

void sub_2489B781C(uint64_t a1)
{
  if (!qword_27EEB5A88)
  {
    sub_2489B7884(255, &qword_27EEB5A90, 0x277D050E0);
    v1 = sub_248A12F20();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB5A88);
    }
  }
}

uint64_t sub_2489B7884(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2489B78CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2489B792C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyDeviceProviderState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489B7990(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(a2 + 8))(v5, &protocol witness table for NearbyDeviceProvider, v4, ObjectType, a2);
}

unint64_t sub_2489B79F4()
{
  result = qword_27EEB5AA0;
  if (!qword_27EEB5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5AA0);
  }

  return result;
}

uint64_t sub_2489B7A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2489B7AB8()
{
  result = qword_27EEB5AB0;
  if (!qword_27EEB5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5AB0);
  }

  return result;
}

uint64_t sub_2489B7B98()
{
  v0 = swift_allocObject();
  sub_2489BA4BC();
  return v0;
}

void sub_2489B7BD0()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F30, &qword_248A16958);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_248A12520();
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_27EEB9DC8);
  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  v12 = os_log_type_enabled(v10, v11);
  v33 = v4;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v13 = 136446210;
    v14 = sub_248A13570();
    v16 = sub_24897BC00(v14, v15, &v34);

    *(v13 + 4) = v16;
    v2 = v1;
    _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Activate", v13, 0xCu);
    v17 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C1E0A80](v17, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  v18 = *(v3 + 40);
  if ((v18 & 0xC0) == 0x80 && v18 == 128 && *(v3 + 3) == 0)
  {
    sub_248A116D0();

    sub_248A12510();
    sub_248A125F0();
    swift_allocObject();
    v19 = sub_248A125A0();
    if (v2)
    {
    }

    else
    {
      v20 = v19;
      sub_248A125C0();
      v21 = sub_248A125D0();
      (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
      sub_248A125E0();
      v32 = 0;
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v24 = v33;
      v25 = *(v33 + 80);
      v23[2] = v25;
      v26 = *(v24 + 88);
      v23[3] = v26;
      v23[4] = v22;

      sub_2489789C8(sub_2489BA944, v23);
      sub_248A12550();

      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      v28[2] = v25;
      v28[3] = v26;
      v28[4] = v27;

      sub_2489789C8(sub_2489BA950, v28);
      sub_248A12560();

      sub_248A12590();

      v29 = v3[3];
      v30 = v3[4];
      v3[3] = v20;
      v3[4] = 0;
      v31 = *(v3 + 40);
      *(v3 + 40) = 0;
      sub_2489BA88C(v29, v30, v31);
    }
  }
}

uint64_t sub_2489B8038(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489B8934(a1);
  }

  return result;
}

uint64_t sub_2489B8098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489B9F0C(a1, &protocol witness table for NWConnection);
  }

  return result;
}

uint64_t sub_2489B8100()
{
  v1[6] = v0;
  v1[7] = *v0;
  v1[8] = *v0;
  return MEMORY[0x2822009F8](sub_2489B8170, 0, 0);
}

uint64_t sub_2489B8170()
{
  v38 = v0;
  v1 = sub_2489B869C(*(v0 + 48));
  if (v3 == -1)
  {
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v10[1] = sub_2489B856C;

    return MEMORY[0x282200480](500000000);
  }

  else
  {
    v4 = *(v0 + 48);
    sub_2489BA8B8(v1, v2, v3);
    v5 = sub_2489B869C(v4);
    if (v7 == -1)
    {
      if (qword_28150F5F0 != -1)
      {
        swift_once();
      }

      v11 = sub_248A122D0();
      __swift_project_value_buffer(v11, qword_2815105C0);

      v12 = sub_248A122B0();
      v13 = sub_248A12E60();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 64);
        v15 = *(v0 + 48);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37[0] = v17;
        *v16 = 136446466;
        v18 = *(v14 + 80);
        v19 = *(v14 + 88);
        v20 = sub_248A13570();
        v22 = sub_24897BC00(v20, v21, v37);

        *(v16 + 4) = v22;
        *(v16 + 12) = 2082;
        v23 = *(v15 + 24);
        v24 = *(v15 + 32);
        v25 = *(v15 + 40);
        *(v0 + 16) = v23;
        *(v0 + 24) = v24;
        *(v0 + 32) = v25;
        sub_2489BA918(v23, v24, v25);
        type metadata accessor for PeerListener.State(0, v18, v19, v26);
        v27 = sub_248A12B80();
        v29 = sub_24897BC00(v27, v28, v37);

        *(v16 + 14) = v29;
        _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Peer Listener expected result in state %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v17, -1, -1);
        MEMORY[0x24C1E0A80](v16, -1, -1);
      }

      v30 = sub_248A12150();
      sub_2489BA8D0(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
      swift_allocError();
      (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D05118], v30);
      swift_willThrow();
      goto LABEL_13;
    }

    v9 = v5;
    if (v7)
    {
      *(v0 + 40) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      swift_willThrowTypedImpl();
LABEL_13:
      v32 = *(v0 + 8);

      return v32();
    }

    v33 = v6;
    type metadata accessor for PeerConnection(0, *(*(v0 + 64) + 80), *(*(v0 + 64) + 88), v8);
    v34 = PeerConnection.__allocating_init(networkConnection:)(v9, v33);
    v35 = *(v0 + 8);

    return v35(v34);
  }
}

uint64_t sub_2489B856C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489BA95C, 0, 0);
  }
}

void *sub_2489B869C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 & 0xC0) != 0x40)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  sub_2489BA938(v2, *(a1 + 32), v1 & 1);
  return v2;
}

void sub_2489B8704()
{
  v1 = *(v0 + 40);
  if (v1 <= 0x3F)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 40);

    sub_2489B8784();
    sub_2489BA88C(v3, v2, v4);
    LOBYTE(v1) = *(v0 + 40);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 24) = xmmword_248A167C0;
  *(v0 + 40) = 0x80;

  sub_2489BA88C(v5, v6, v1);
}

uint64_t sub_2489B8784()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Cleaning up listener", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  sub_2489789C8(0, 0);
  sub_248A12550();
  sub_2489789C8(0, 0);
  sub_248A12560();
  return sub_248A125B0();
}

void sub_2489B8934(uint64_t a1)
{
  v143 = *v1;
  v3 = sub_248A128A0();
  v4 = *(v3 - 8);
  v144 = v3;
  v145 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v140 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v139 = &v133 - v8;
  MEMORY[0x28223BE20](v7);
  v142 = &v133 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF0, &qword_248A16948);
  v10 = MEMORY[0x28223BE20](v136);
  v135 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v137 = &v133 - v13;
  MEMORY[0x28223BE20](v12);
  v138 = &v133 - v14;
  v15 = sub_248A12580();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v141 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v134 = &v133 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v133 - v24;
  v26 = sub_248A12A50();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v1 + 2);
  *v29 = v30;
  (*(v27 + 104))(v29, *MEMORY[0x277D85200], v26);
  v31 = v30;
  v32 = sub_248A12A60();
  (*(v27 + 8))(v29, v26);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_5:
    v34 = sub_248A122D0();
    __swift_project_value_buffer(v34, qword_27EEB9DC8);
    (v32)(v19, a1, v15);
    v35 = sub_248A122B0();
    v36 = sub_248A12E80();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v145 = v32;
      v146 = v38;
      v39 = v38;
      *v37 = 136446466;
      v40 = sub_248A13570();
      v42 = sub_24897BC00(v40, v41, &v146);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2082;
      (v145)(v141, v19, v15);
      v43 = sub_248A12B80();
      v45 = v44;
      (*(v16 + 8))(v19, v15);
      v46 = sub_24897BC00(v43, v45, &v146);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_248975000, v35, v36, "%{public}s listener state %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v39, -1, -1);
      MEMORY[0x24C1E0A80](v37, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    return;
  }

  v32 = *(v16 + 16);
  (v32)(v25, a1, v15);
  v33 = (*(v16 + 88))(v25, v15);
  if (v33 == *MEMORY[0x277CD8B40])
  {
    (*(v16 + 8))(v25, v15);
    goto LABEL_4;
  }

  if (v33 == *MEMORY[0x277CD8B38])
  {
    v138 = v1;
    (*(v16 + 96))(v25, v15);
    v47 = v144;
    v48 = v142;
    (*(v145 + 32))(v142, v25, v144);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v49 = sub_248A122D0();
    __swift_project_value_buffer(v49, qword_27EEB9DC8);
    v50 = sub_248A122B0();
    v51 = sub_248A12E60();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v146 = v53;
      *v52 = 136446210;
      v54 = sub_248A13570();
      v56 = sub_24897BC00(v54, v55, &v146);
      v48 = v142;

      *(v52 + 4) = v56;
      _os_log_impl(&dword_248975000, v50, v51, " %{public}s !!! PEER LISTENER FAILED !!!", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      v57 = v53;
      v47 = v144;
      MEMORY[0x24C1E0A80](v57, -1, -1);
      MEMORY[0x24C1E0A80](v52, -1, -1);
    }

    v58 = v140;
    v59 = sub_2489B9AA4();
    v60 = *(v145 + 16);
    if (v59)
    {
      v61 = v139;
      v60(v139, v48, v47);
      v62 = sub_248A122B0();
      v63 = sub_248A12E60();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v146 = v66;
        *v64 = 136446466;
        v67 = sub_248A13570();
        v69 = sub_24897BC00(v67, v68, &v146);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2114;
        sub_2489BA8D0(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        swift_allocError();
        v60(v70, v61, v144);
        v71 = _swift_stdlib_bridgeErrorToNSError();
        v72 = *(v145 + 8);
        v72(v61, v144);
        *(v64 + 14) = v71;
        *v65 = v71;
        v48 = v142;
        _os_log_impl(&dword_248975000, v62, v63, "%{public}s listener failed with %{public}@; restarting", v64, 0x16u);
        sub_248983734(v65, &qword_27EEB5600, &unk_248A15210);
        v73 = v65;
        v47 = v144;
        MEMORY[0x24C1E0A80](v73, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x24C1E0A80](v66, -1, -1);
        MEMORY[0x24C1E0A80](v64, -1, -1);
      }

      else
      {

        v72 = *(v145 + 8);
        v72(v61, v47);
      }

      sub_2489BA07C();
    }

    else
    {
      v60(v58, v48, v47);
      v79 = sub_248A122B0();
      v80 = sub_248A12E60();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v146 = v83;
        *v81 = 136446466;
        v84 = sub_248A13570();
        v86 = sub_24897BC00(v84, v85, &v146);

        *(v81 + 4) = v86;
        *(v81 + 12) = 2114;
        sub_2489BA8D0(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        swift_allocError();
        v60(v87, v58, v144);
        v88 = _swift_stdlib_bridgeErrorToNSError();
        v72 = *(v145 + 8);
        v72(v58, v144);
        *(v81 + 14) = v88;
        *v82 = v88;
        v48 = v142;
        _os_log_impl(&dword_248975000, v79, v80, "%{public}s listener failed with %{public}@; stopping", v81, 0x16u);
        sub_248983734(v82, &qword_27EEB5600, &unk_248A15210);
        v89 = v82;
        v47 = v144;
        MEMORY[0x24C1E0A80](v89, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x24C1E0A80](v83, -1, -1);
        MEMORY[0x24C1E0A80](v81, -1, -1);
      }

      else
      {

        v72 = *(v145 + 8);
        v72(v58, v47);
      }

      v105 = v138;
      sub_2489BA8D0(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      v106 = swift_allocError();
      v60(v107, v48, v47);
      v108 = *(v105 + 3);
      v109 = *(v105 + 4);
      *(v105 + 3) = v106;
      *(v105 + 4) = 0;
      v110 = v105[40];
      v105[40] = 65;
      sub_2489BA88C(v108, v109, v110);
      sub_2489B8704();
    }

    v72(v48, v47);
  }

  else
  {
    if (v33 == *MEMORY[0x277CD8B30])
    {
LABEL_4:
      if (qword_27EEB51A0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_47;
    }

    if (v33 == *MEMORY[0x277CD8B28])
    {
      v74 = v1[40];
      if (v74 > 0x3F)
      {
        v111 = sub_248A12520();
        v78 = v138;
        (*(*(v111 - 8) + 56))(v138, 1, 1, v111);
      }

      else
      {
        v77 = v1 + 24;
        v76 = *(v1 + 3);
        v75 = *(v77 + 1);

        v78 = v138;
        sub_248A12570();
        sub_2489BA88C(v76, v75, v74);
      }

      v112 = v137;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v113 = sub_248A122D0();
      __swift_project_value_buffer(v113, qword_27EEB9DC8);
      sub_24898D610(v78, v112, &qword_27EEB5BF0, &qword_248A16948);
      v114 = sub_248A122B0();
      v115 = sub_248A12E80();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v146 = v117;
        *v116 = 136446466;
        v118 = sub_248A13570();
        v120 = sub_24897BC00(v118, v119, &v146);

        *(v116 + 4) = v120;
        *(v116 + 12) = 2082;
        sub_24898D610(v112, v135, &qword_27EEB5BF0, &qword_248A16948);
        v121 = sub_248A12B80();
        v123 = v122;
        sub_248983734(v112, &qword_27EEB5BF0, &qword_248A16948);
        v124 = sub_24897BC00(v121, v123, &v146);

        *(v116 + 14) = v124;
        _os_log_impl(&dword_248975000, v114, v115, "%{public}s listener state ready on port %{public}s", v116, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v117, -1, -1);
        MEMORY[0x24C1E0A80](v116, -1, -1);
      }

      else
      {

        sub_248983734(v112, &qword_27EEB5BF0, &qword_248A16948);
      }

      sub_248983734(v78, &qword_27EEB5BF0, &qword_248A16948);
    }

    else if (v33 == *MEMORY[0x277CD8B48])
    {
      v138 = v1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v90 = sub_248A122D0();
      __swift_project_value_buffer(v90, qword_27EEB9DC8);
      v91 = v134;
      (v32)(v134, a1, v15);
      v92 = sub_248A122B0();
      v93 = sub_248A12E80();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v145 = v32;
        v146 = v95;
        v96 = v95;
        *v94 = 136446466;
        v97 = sub_248A13570();
        v98 = v91;
        v100 = sub_24897BC00(v97, v99, &v146);

        *(v94 + 4) = v100;
        *(v94 + 12) = 2082;
        (v145)(v141, v91, v15);
        v101 = sub_248A12B80();
        v103 = v102;
        (*(v16 + 8))(v98, v15);
        v104 = sub_24897BC00(v101, v103, &v146);

        *(v94 + 14) = v104;
        _os_log_impl(&dword_248975000, v92, v93, "%{public}s listener state %{public}s; invalidating", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v96, -1, -1);
        MEMORY[0x24C1E0A80](v94, -1, -1);
      }

      else
      {

        (*(v16 + 8))(v91, v15);
      }

      sub_2489B8704();
    }

    else
    {
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v125 = sub_248A122D0();
      __swift_project_value_buffer(v125, qword_27EEB9DC8);
      v126 = sub_248A122B0();
      v127 = sub_248A12E70();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v146 = v129;
        *v128 = 136446210;
        v130 = sub_248A13570();
        v132 = sub_24897BC00(v130, v131, &v146);

        *(v128 + 4) = v132;
        _os_log_impl(&dword_248975000, v126, v127, "%{public}s found unexpected NWListener.State type", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v129);
        MEMORY[0x24C1E0A80](v129, -1, -1);
        MEMORY[0x24C1E0A80](v128, -1, -1);
      }

      (*(v16 + 8))(v25, v15);
    }
  }
}

uint64_t sub_2489B9AA4()
{
  v1 = v0;
  v2 = sub_248A128A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF8, &qword_248A16950);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  (*(v3 + 16))(&v25 - v15, v1, v2);
  v17 = *(v3 + 56);
  v17(v16, 0, 1, v2);
  *v14 = -65569;
  (*(v3 + 104))(v14, *MEMORY[0x277CD8FA0], v2);
  v17(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_24898D610(v16, v8, &qword_27EEB5608, &qword_248A15110);
  sub_24898D610(v14, &v8[v18], &qword_27EEB5608, &qword_248A15110);
  v19 = *(v3 + 48);
  if (v19(v8, 1, v2) != 1)
  {
    v21 = v26;
    sub_24898D610(v8, v26, &qword_27EEB5608, &qword_248A15110);
    if (v19(&v8[v18], 1, v2) != 1)
    {
      v22 = v25;
      (*(v3 + 32))(v25, &v8[v18], v2);
      sub_2489BA8D0(&qword_27EEB5C00, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FC8]);
      v20 = sub_248A12B00();
      v23 = *(v3 + 8);
      v23(v22, v2);
      sub_248983734(v14, &qword_27EEB5608, &qword_248A15110);
      v23(v21, v2);
      sub_248983734(v8, &qword_27EEB5608, &qword_248A15110);
      goto LABEL_8;
    }

    sub_248983734(v14, &qword_27EEB5608, &qword_248A15110);
    (*(v3 + 8))(v21, v2);
    goto LABEL_6;
  }

  sub_248983734(v14, &qword_27EEB5608, &qword_248A15110);
  if (v19(&v8[v18], 1, v2) != 1)
  {
LABEL_6:
    sub_248983734(v8, &qword_27EEB5BF8, &qword_248A16950);
    v20 = 0;
    goto LABEL_8;
  }

  sub_248983734(v8, &qword_27EEB5608, &qword_248A15110);
  v20 = 1;
LABEL_8:
  sub_248983734(v16, &qword_27EEB5608, &qword_248A15110);
  return v20 & 1;
}

void sub_2489B9F0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_248A12A50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_248A12A60();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v2 + 40);
    if (v11 <= 0x3F)
    {
      v13 = *(v2 + 24);
      v12 = *(v2 + 32);

      sub_2489B8784();
      sub_2489BA88C(v13, v12, v11);
      LOBYTE(v11) = *(v2 + 40);
    }

    v14 = *(v2 + 24);
    v15 = *(v2 + 32);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 64;
    swift_unknownObjectRetain();
    sub_2489BA88C(v14, v15, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_2489BA07C()
{
  sub_2489B8704();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v3 = *(v0 + 40);
  *(v0 + 40) = 0x80;
  sub_2489BA88C(v1, v2, v3);
  sub_2489B7BD0();
}

uint64_t sub_2489BA2C8()
{
  sub_2489B8704();

  sub_2489BA88C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t sub_2489BA2F8()
{
  sub_2489BA2C8();

  return swift_deallocClassInstance();
}

uint64_t sub_2489BA344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing12PeerListenerC5State33_26B84ACC0C36B2854C5996939FED1525LLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2489BA3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2489BA414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2489BA478(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_2489BA4BC()
{
  v8[0] = sub_248A12EA0();
  v1 = *(v8[0] - 8);
  MEMORY[0x28223BE20](v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12E90();
  MEMORY[0x28223BE20](v4);
  v5 = sub_248A12A40();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2489BA7DC();
  sub_248A12A20();
  v8[1] = MEMORY[0x277D84F90];
  sub_2489BA8D0(&unk_27EEB5F40, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BE8, &qword_248A16940);
  sub_2489BA828();
  sub_248A12FA0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8[0]);
  v6 = sub_248A12EB0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v6;
  *(v0 + 40) = 0x80;
  return v0;
}

uint64_t sub_2489BA728()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24898283C;

  return sub_2489B8100();
}

unint64_t sub_2489BA7DC()
{
  result = qword_27EEB5BE0;
  if (!qword_27EEB5BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB5BE0);
  }

  return result;
}

unint64_t sub_2489BA828()
{
  result = qword_27EEB5F50;
  if (!qword_27EEB5F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5BE8, &qword_248A16940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5F50);
  }

  return result;
}

void sub_2489BA88C(void *result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_2489BA8AC(result, a2, a3 & 1);
  }

  else if (!(a3 >> 6))
  {
  }
}

void sub_2489BA8AC(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_2489BA8B8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2489BA8AC(a1, a2, a3 & 1);
  }
}

uint64_t sub_2489BA8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2489BA918(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_2489BA938(result, a2, a3 & 1);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

id sub_2489BA938(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t PeerBrowser.__allocating_init(nearbyDeviceProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PeerBrowser.init(nearbyDeviceProvider:)(a1, a2);
  return v4;
}

uint64_t sub_2489BA9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v6 = type metadata accessor for PeerBrowser.State(0, *(v3 + 80), *(v3 + 88), v5);
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2489BAA70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v6 = type metadata accessor for PeerBrowser.State(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

char *PeerBrowser.init(nearbyDeviceProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 104);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 3, v6);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  return v2;
}

char *PeerBrowser.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  sub_2489BBA60(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  v6 = *(*v4 + 104);
  v8 = type metadata accessor for PeerBrowser.State(0, *(v5 + 80), *(v5 + 88), v7);
  (*(*(v8 - 8) + 8))(v4 + v6, v8);
  return v4;
}

uint64_t PeerBrowser.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PeerBrowser.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t sub_2489BACD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for PeerBrowser.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v13 = sub_248A122D0();
  __swift_project_value_buffer(v13, qword_27EEB9DC8);
  v14 = sub_248A122B0();
  v15 = sub_248A12E80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136446210;
    v19 = sub_248A13570();
    v21 = sub_24897BC00(v19, v20, &v30);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_248975000, v14, v15, "[%{public}s] Activate", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x24C1E0A80](v18, -1, -1);
    v22 = v17;
    v10 = v29;
    MEMORY[0x24C1E0A80](v22, -1, -1);
  }

  sub_2489BA9B0(v12);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v12, 3, v23);
  result = (*(v7 + 8))(v12, v6);
  if (v25 == 1)
  {
    v27 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v27 + 16))(v5, &protocol witness table for PeerBrowser<A>, ObjectType, v27);
    (*(v24 + 56))(v10, 2, 3, v23);
    return sub_2489BAA70(v10);
  }

  return result;
}

uint64_t sub_2489BB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = v4;
  v5[4] = *v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[5] = v7;
  v8 = *(v6 + 88);
  v5[6] = v8;
  v5[7] = type metadata accessor for PeerBrowser.State(0, v7, v8, a4);
  v5[8] = swift_task_alloc();
  v9 = sub_248A12540();
  v5[9] = v9;
  v5[10] = *(v9 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for NearbyDevice(0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F10, &qword_248A16988);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489BB1D8, 0, 0);
}

uint64_t sub_2489BB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = v4;
  v5 = v4[16];
  sub_2489BB8A8(v4[3], v5, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  v7 = *(*(v6 - 8) + 48);
  v8 = v7(v5, 1, v6);
  v9 = v4[16];
  if (v8 == 1)
  {
    sub_248983734(v9, &unk_27EEB5F10, &qword_248A16988);
    v10 = swift_task_alloc();
    v4[17] = v10;
    *v10 = v4;
    v10[1] = sub_2489BB724;

    return MEMORY[0x282200480](500000000);
  }

  v11 = v4[15];
  v12 = v4[3];
  sub_248983734(v9, &unk_27EEB5F10, &qword_248A16988);
  sub_2489BB8A8(v12, v11, v13);
  v14 = v7(v11, 1, v6);
  v15 = v4[15];
  if (v14 == 1)
  {
    sub_248983734(v4[15], &unk_27EEB5F10, &qword_248A16988);
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v16 = sub_248A122D0();
    __swift_project_value_buffer(v16, qword_2815105C0);

    v17 = sub_248A122B0();
    v18 = sub_248A12E60();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v4[8];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43[0] = v21;
      *v20 = 136446466;
      v22 = sub_248A13570();
      v24 = sub_24897BC00(v22, v23, v43);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      sub_2489BA9B0(v19);
      v25 = sub_248A12B80();
      v27 = sub_24897BC00(v25, v26, v43);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Peer Browser expected result in state is %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v21, -1, -1);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    v28 = sub_248A12150();
    sub_2489BCB48();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D05118], v28);
    swift_willThrow();
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4[2] = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    swift_willThrowTypedImpl();
LABEL_13:

    v30 = v4[1];

    return v30();
  }

  v31 = v4[13];
  v32 = v4[14];
  v34 = v4[11];
  v33 = v4[12];
  v35 = v4[9];
  v36 = v4[10];
  v38 = v4[5];
  v37 = v4[6];
  sub_2489BCBA0(v15, v31);
  sub_2489BCBA0(v31, v32);
  type metadata accessor for PeerConnection(0, v38, v37, v39);
  (*(v36 + 16))(v34, v32 + *(v33 + 24), v35);
  v40 = PeerConnection.__allocating_init(endpoint:)(v34);
  sub_2489BD908(v32, type metadata accessor for NearbyDevice);

  v41 = v4[1];

  return v41(v40);
}

uint64_t sub_2489BB724()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489BDB10, 0, 0);
  }
}

uint64_t sub_2489BB8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for PeerBrowser.State(0, *(*a1 + 80), *(*a1 + 88), a3);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  sub_2489BA9B0(&v12 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  if ((*(*(v8 - 8) + 48))(v7, 3, v8))
  {
    (*(v5 + 8))(v7, v4);
    v9 = 1;
  }

  else
  {
    sub_2489BDAA8(v7, a2, qword_27EEB5C10, &unk_248A16990);
    v9 = 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  return (*(*(v10 - 8) + 56))(a2, v9, 1, v10);
}

uint64_t sub_2489BBA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for PeerBrowser.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_2489BA9B0(&v19 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 3, v13);
  (*(v7 + 8))(v12, v6);
  if (v15 == 2)
  {
    v16 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v5, &protocol witness table for PeerBrowser<A>, ObjectType, v16);
  }

  (*(v14 + 56))(v10, 3, 3, v13);
  return sub_2489BAA70(v10);
}

uint64_t sub_2489BBC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PeerBrowser.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_2489BBA60(v6, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  (*(*(v12 - 8) + 56))(v8, 1, 3, v12);
  v13 = sub_2489BAA70(v8);
  return sub_2489BACD0(v13, v14, v15, v16);
}

uint64_t sub_2489BBD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v5[4] = *v4;
  v6 = type metadata accessor for PeerBrowser.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for NearbyDevice(0);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489BBF0C, 0, 0);
}

uint64_t sub_2489BBF0C()
{
  v42 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_2489BD830(v0[2], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_248983734(v0[9], &qword_27EEB5A50, &unk_248A16450);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_27EEB9DC8);
    v5 = sub_248A122B0();
    v6 = sub_248A12E80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41 = v8;
      *v7 = 136446210;
      v9 = sub_248A13570();
      v11 = sub_24897BC00(v9, v10, &v41);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Device not available", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1E0A80](v8, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }
  }

  else
  {
    sub_2489BCBA0(v0[9], v0[13]);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v12 = v0[12];
    v13 = v0[13];
    v14 = sub_248A122D0();
    __swift_project_value_buffer(v14, qword_27EEB9DC8);
    sub_2489BD8A0(v13, v12, type metadata accessor for NearbyDevice);
    v15 = sub_248A122B0();
    v16 = sub_248A12E80();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[12];
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136446466;
      v21 = sub_248A13570();
      v23 = sub_24897BC00(v21, v22, &v41);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = NearbyDevice.description.getter();
      v26 = v25;
      sub_2489BD908(v18, type metadata accessor for NearbyDevice);
      v27 = sub_24897BC00(v24, v26, &v41);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Connecting to %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v20, -1, -1);
      MEMORY[0x24C1E0A80](v19, -1, -1);
    }

    else
    {

      sub_2489BD908(v18, type metadata accessor for NearbyDevice);
    }

    v28 = v0[8];
    v29 = v0[5];
    v30 = v0[6];
    sub_2489BA9B0(v28);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v28, 3, v31);
    (*(v30 + 8))(v28, v29);
    if (v33 == 2)
    {
      v34 = v0[3];
      v35 = *(v34 + 24);
      ObjectType = swift_getObjectType();
      (*(v35 + 24))(v34, &protocol witness table for PeerBrowser<A>, ObjectType, v35);
    }

    v37 = v0[13];
    v38 = v0[7];
    sub_2489BD8A0(v37, v38, type metadata accessor for NearbyDevice);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
    swift_storeEnumTagMultiPayload();
    (*(v32 + 56))(v38, 0, 3, v31);
    sub_2489BAA70(v38);
    sub_2489BD908(v37, type metadata accessor for NearbyDevice);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_2489BC470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24898283C;

  return sub_2489BB00C(v1, v2, v3, v4);
}

uint64_t sub_2489BC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for PeerBrowser.State(0, *(*a4 + 80), *(*a4 + 88), a4);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_2489BC654;

  return MEMORY[0x282200480](100000000);
}

uint64_t sub_2489BC654()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489BC7A0, 0, 0);
  }
}

uint64_t sub_2489BC7A0()
{
  v22 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_2489BA9B0(v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v5 = (*(*(v4 - 8) + 48))(v1, 3, v4);
  (*(v2 + 8))(v1, v3);
  if (v5 == 2)
  {
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v6 = sub_248A122D0();
    __swift_project_value_buffer(v6, qword_27EEB9DC8);
    v7 = sub_248A122B0();
    v8 = sub_248A12E80();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      v11 = sub_248A13570();
      v13 = sub_24897BC00(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Current peer browser state is connecting", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_2489BCA28;
    v18 = v0[3];

    return sub_2489BBD4C(v18, v15, v16, v17);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2489BCA28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2489BCB48()
{
  result = qword_27EEB5470[0];
  if (!qword_27EEB5470[0])
  {
    sub_248A12150();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEB5470);
  }

  return result;
}

uint64_t sub_2489BCBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2489BCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v95 = *(*v4 + 88);
  v9 = type metadata accessor for PeerBrowser.State(0, v8, v95, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = (&v86 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  v91 = *(v13 - 8);
  v14 = *(v91 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v92 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v93 = &v86 - v16;
  v96 = type metadata accessor for NearbyDeviceProviderState(0);
  v17 = MEMORY[0x28223BE20](v96);
  v19 = (&v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v22 = sub_248A122D0();
  v23 = __swift_project_value_buffer(v22, qword_27EEB9DC8);
  sub_2489BD8A0(a1, v21, type metadata accessor for NearbyDeviceProviderState);
  v90 = v23;
  v24 = sub_248A122B0();
  v25 = sub_248A12E80();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v87 = v8;
    v27 = v26;
    v28 = swift_slowAlloc();
    v88 = v5;
    v29 = v28;
    v97[0] = v28;
    *v27 = 136446466;
    v30 = sub_248A13570();
    v32 = sub_24897BC00(v30, v31, v97);
    v86 = v14;
    v33 = a1;
    v34 = v7;
    v35 = v32;

    *(v27 + 4) = v35;
    *(v27 + 12) = 2082;
    v36 = NearbyDeviceProviderState.description.getter();
    v38 = v37;
    sub_2489BD908(v21, type metadata accessor for NearbyDeviceProviderState);
    v39 = sub_24897BC00(v36, v38, v97);
    v7 = v34;
    a1 = v33;
    v14 = v86;

    *(v27 + 14) = v39;
    _os_log_impl(&dword_248975000, v24, v25, "[%{public}s] Nearby device provider state update %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    v40 = v29;
    v5 = v88;
    MEMORY[0x24C1E0A80](v40, -1, -1);
    v41 = v27;
    v8 = v87;
    MEMORY[0x24C1E0A80](v41, -1, -1);
  }

  else
  {

    sub_2489BD908(v21, type metadata accessor for NearbyDeviceProviderState);
  }

  sub_2489BD8A0(a1, v19, type metadata accessor for NearbyDeviceProviderState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2489BBA60(EnumCaseMultiPayload, v43, v44, v45);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v53 = *v19;
    swift_getErrorValue();
    v54 = sub_2489F4ED0(v97[2]);
    v55 = v53;
    v56 = sub_248A122B0();
    v57 = sub_248A12E60();

    v58 = os_log_type_enabled(v56, v57);
    if (v54)
    {
      if (v58)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v97[0] = v61;
        *v59 = 136446466;
        v62 = sub_248A13570();
        v64 = sub_24897BC00(v62, v63, v97);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2114;
        v65 = v53;
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 14) = v66;
        *v60 = v66;
        _os_log_impl(&dword_248975000, v56, v57, "[%{public}s] Browser failed with %{public}@; restarting", v59, 0x16u);
        sub_248983734(v60, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v60, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x24C1E0A80](v61, -1, -1);
        MEMORY[0x24C1E0A80](v59, -1, -1);
      }

      sub_2489BBC64(v67, v68, v69, v70);
    }

    else
    {
      if (v58)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v97[0] = v73;
        *v71 = 136446466;
        v74 = sub_248A13570();
        v76 = sub_24897BC00(v74, v75, v97);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2114;
        v77 = v53;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 14) = v78;
        *v72 = v78;
        _os_log_impl(&dword_248975000, v56, v57, "[%{public}s] Browser failed with %{public}@; stopping", v71, 0x16u);
        sub_248983734(v72, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v72, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x24C1E0A80](v73, -1, -1);
        MEMORY[0x24C1E0A80](v71, -1, -1);
      }

      v79 = v89;
      *v89 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
      swift_storeEnumTagMultiPayload();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
      (*(*(v80 - 8) + 56))(v79, 0, 3, v80);
      v81 = v53;
      v82 = sub_2489BAA70(v79);
      sub_2489BBA60(v82, v83, v84, v85);
    }
  }

  else
  {
    v46 = v93;
    sub_2489BDAA8(v19, v93, &qword_27EEB5A50, &unk_248A16450);
    v47 = sub_248A12D40();
    v48 = v94;
    (*(*(v47 - 8) + 56))(v94, 1, 1, v47);
    v49 = v92;
    sub_2489BD830(v46, v92);
    v50 = (*(v91 + 80) + 56) & ~*(v91 + 80);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v52 = v95;
    v51[4] = v8;
    v51[5] = v52;
    v51[6] = v5;
    sub_2489BDAA8(v49, v51 + v50, &qword_27EEB5A50, &unk_248A16450);
    *(v51 + ((v14 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

    sub_2489E5FD4(0, 0, v48, &unk_248A16A48, v51);

    sub_248983734(v46, &qword_27EEB5A50, &unk_248A16450);
  }
}

uint64_t sub_2489BD4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for PeerBrowser.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of PeerBrowser.peerConnection()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24898314C;

  return v4();
}

uint64_t sub_2489BD6EC(uint64_t a1)
{
  sub_2489BD76C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2489BD76C()
{
  if (!qword_27EEB5D18)
  {
    sub_2489BD7B4(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB5D18);
    }
  }
}

void sub_2489BD7B4(uint64_t a1)
{
  if (!qword_27EEB5D20)
  {
    type metadata accessor for NearbyDevice(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB5EB0, &qword_248A15C20);
    v1 = sub_248A13470();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB5D20);
    }
  }
}

uint64_t sub_2489BD830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2489BD8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2489BD908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2489BD968(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_248978D74;

  return sub_2489BC52C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2489BDAA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2489BDB14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_2489BDE7C(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_24897BC00(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_248975000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2489BDE04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_248A122D0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_248A122C0();
}

uint64_t sub_2489BDE7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2489835B8();
  v8 = (sub_248A12F30() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_2489BE0D8(46, 0xE100000000000000, a1, a2);
  v10 = sub_248A12C40();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x24C1DF860](v10, v12, v14, v16);
  v19 = v18;

  sub_2489BE0D8(40, 0xE100000000000000, a3, a4);
  v20 = sub_248A12C40();
  v21 = MEMORY[0x24C1DF860](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v25);

  MEMORY[0x24C1DF8B0](8285, 0xE200000000000000);
  MEMORY[0x24C1DF8B0](v17, v19);

  MEMORY[0x24C1DF8B0](14906, 0xE200000000000000);
  MEMORY[0x24C1DF8B0](v21, v23);

  return 91;
}

unint64_t sub_2489BE0D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_248A12C30() != a1 || v9 != a2)
  {
    v10 = sub_248A13340();

    if (v10)
    {
      return v8;
    }

    v8 = sub_248A12BD0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_2489BE1C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_248978948(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_2489B07EC(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_248983734(a1, &unk_27EEB5D70, &unk_248A16A50);
    v7 = sub_2489A86D0(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_2489B14E4();
        v11 = v13;
      }

      sub_248978948((*(v11 + 56) + 40 * v9), v14);
      sub_2489DD3A0(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_248983734(v14, &unk_27EEB5D70, &unk_248A16A50);
  }

  return result;
}

uint64_t sub_2489BE2D4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_248983734(a1, &qword_27EEB5450, qword_248A14E30);
    sub_2489DD1E4(a2);
    v12 = sub_248A11BC0();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_248983734(v7, &qword_27EEB5450, qword_248A14E30);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2489B0A7C(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_248A11BC0();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t Dependencies.DependenciesError.hashValue.getter()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t Dependencies.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2489918CC(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_2489BE5E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5);
  v11[3] = type metadata accessor for Dependencies.Dependency(0, a2, v6, v7);
  v11[4] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
  (*(v3 + 32))(boxed_opaque_existential_1Tm, v5, a2);
  swift_beginAccess();
  sub_2489BE1C8(v11, a2);
  return swift_endAccess();
}

uint64_t sub_2489BE720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_248A12F20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  swift_beginAccess();
  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = sub_2489A86D0(a1), (v11 & 1) != 0))
  {
    sub_248997228(*(v9 + 56) + 40 * v10, &v27);
    if (*(&v28 + 1))
    {
      v12 = *(&v28 + 1);
      v13 = v29;
      v14 = __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      v26 = &v23;
      v15 = *(v12 - 8);
      v32 = a2;
      v16 = v15;
      MEMORY[0x28223BE20](v14);
      v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v18);
      sub_248983734(&v27, &unk_27EEB5D70, &unk_248A16A50);
      v24 = v13;
      v25 = *(v13 + 16);
      *(&v31 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v30);
      v25(v12, v24);
      (*(v16 + 8))(v18, v12);
      a2 = v32;
      goto LABEL_7;
    }
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  sub_248983734(&v27, &unk_27EEB5D70, &unk_248A16A50);
  v30 = 0u;
  v31 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  v19 = swift_dynamicCast();
  v20 = *(*(a1 - 8) + 56);
  if (v19)
  {
    v21 = *(a1 - 8);
    v20(v8, 0, 1, a1);
    return (*(v21 + 32))(a2, v8, a1);
  }

  else
  {
    v20(v8, 1, 1, a1);
    (*(v6 + 8))(v8, v5);
    sub_2489BEB30();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t Dependencies.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2489BEB30()
{
  result = qword_27EEB5D80;
  if (!qword_27EEB5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5D80);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2489BEBEC()
{
  result = qword_27EEB5D28;
  if (!qword_27EEB5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5D28);
  }

  return result;
}

uint64_t sub_2489BECFC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2489BED6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2489BEEAC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2489BF0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2489BF0D8, 0, 0);
}

uint64_t sub_2489BF0D8()
{
  v1 = v0[3];
  v0[5] = swift_getObjectType();
  v0[6] = *(v1 + 24);
  v0[7] = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0xCD1A000000000000;

  v3 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489BF18C, v3, v2);
}

uint64_t sub_2489BF18C()
{
  (*(v0 + 48))(&unk_248A16D30, *(v0 + 32), *(v0 + 40), *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489BF214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489BF2C8;

  return sub_2489BF5A0(1, a1);
}

uint64_t sub_2489BF2C8()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489BF3FC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489BF3FC()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error initiating peer connection: %@", v8, 0xCu);
    sub_248983734(v9, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489BF5A0(char a1, uint64_t a2)
{
  *(v3 + 400) = a2;
  *(v3 + 408) = v2;
  *(v3 + 73) = a1;
  *(v3 + 416) = *v2;
  v4 = sub_248A131D0();
  *(v3 + 424) = v4;
  *(v3 + 432) = *(v4 - 8);
  *(v3 + 440) = swift_task_alloc();
  v5 = sub_248A134B0();
  *(v3 + 448) = v5;
  *(v3 + 456) = *(v5 - 8);
  *(v3 + 464) = swift_task_alloc();
  v6 = sub_248A13310();
  *(v3 + 472) = v6;
  *(v3 + 480) = *(v6 - 8);
  *(v3 + 488) = swift_task_alloc();
  v7 = sub_248A134D0();
  *(v3 + 496) = v7;
  *(v3 + 504) = *(v7 - 8);
  *(v3 + 512) = swift_task_alloc();
  v8 = sub_248A13510();
  *(v3 + 520) = v8;
  *(v3 + 528) = *(v8 - 8);
  *(v3 + 536) = swift_task_alloc();
  v9 = sub_248A13520();
  *(v3 + 544) = v9;
  *(v3 + 552) = *(v9 - 8);
  *(v3 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489BF858, v2, 0);
}

uint64_t sub_2489BF858()
{
  v15 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  *(v0 + 76) = *MEMORY[0x277D84680];
  *(v0 + 568) = 1;
  v1 = sub_248A122D0();
  *(v0 + 576) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    if (*(v0 + 73))
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v5 = 0x72656E657473696CLL;
    }

    else
    {
      v5 = 0x726573776F7262;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446722;
    v8 = sub_248A13570();
    v10 = sub_24897BC00(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = sub_24897BC00(v5, v4, &v14);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2050;
    *(v6 + 24) = 1;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v12 = swift_task_alloc();
  *(v0 + 584) = v12;
  *v12 = v0;
  v12[1] = sub_2489BFACC;

  return sub_248999F68();
}

uint64_t sub_2489BFACC()
{
  v2 = *v1;
  v2[74] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[51];

    return MEMORY[0x2822009F8](sub_2489BFC5C, v5, 0);
  }
}

uint64_t sub_2489BFC5C(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 73);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26[0] = v7;
      *v6 = 136446210;
      v8 = sub_248A13570();
      v10 = sub_24897BC00(v8, v9, v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing listener", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1E0A80](v7, -1, -1);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    v11 = *(v1 + 592);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5EA8, &qword_248A16D40);
    swift_allocObject();
    *(v1 + 696) = sub_2489C3E34();
    sub_2489C2324();
    if (v11)
    {

      v12 = *(v1 + 8);

      return v12();
    }

    else
    {

      return MEMORY[0x2822009F8](sub_2489C1B28, 0, 0);
    }
  }

  else
  {
    if (v5)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136446210;
      v16 = sub_248A13570();
      v18 = sub_24897BC00(v16, v17, v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Initializing browser", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1E0A80](v15, -1, -1);
      MEMORY[0x24C1E0A80](v14, -1, -1);
    }

    v19 = *(v1 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EF0, &qword_248A16D48);
    v20 = swift_allocObject();
    v21 = *v20;
    v25 = *(v19 + 184);
    *(v1 + 600) = v20;
    v22 = *(v21 + 104);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
    (*(*(v23 - 8) + 56))(v20 + v22, 1, 3, v23);
    *(v20 + 16) = v25;
    swift_unknownObjectRetain();
    sub_2489C40B8();
    v24 = swift_task_alloc();
    *(v1 + 608) = v24;
    *v24 = v1;
    v24[1] = sub_2489C0050;

    return sub_2489C43FC();
  }
}

uint64_t sub_2489C0050(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 616) = v1;

  if (v1)
  {
    v5 = *(v4 + 408);
    v6 = sub_2489C05A4;
    v7 = 0;
  }

  else
  {
    *(v4 + 624) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_2489CBBD8(&qword_27EEB5EC0, &qword_27EEB5898, &qword_248A15C28, &protocol conformance descriptor for PeerConnection<A>);
    v8 = sub_248A12CD0();
    v10 = v9;
    v6 = sub_2489C01E8;
    v5 = v8;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v6, v5, v7);
}

uint64_t sub_2489C01E8()
{
  v1 = *(v0 + 408);
  sub_248A030F0(v1, *(v0 + 624));

  return MEMORY[0x2822009F8](sub_2489C0264, v1, 0);
}

uint64_t sub_2489C0264()
{
  v19 = v0;
  sub_2489C55C0();
  v1 = v0[78];
  v0[79] = v1;
  v2 = v0[51];

  v3 = *(v2 + 200);
  v0[80] = v3;
  v4 = *(v2 + 208);
  v0[81] = v4;
  if (v3)
  {
    sub_2489789C8(v3, v4);

    v17 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[82] = v5;
    *v5 = v0;
    v5[1] = sub_2489C065C;

    return (v17)(v0 + 26, v1);
  }

  else
  {
    v7 = sub_248A122B0();
    v8 = sub_248A12E70();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v11 = sub_248A13570();
      v13 = sub_24897BC00(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Peer connection service provider not set", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }

    v14 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D05130], v14);
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2489C05A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489C065C()
{
  v1 = *(*v0 + 408);

  return MEMORY[0x2822009F8](sub_2489C076C, v1, 0);
}

uint64_t sub_2489C076C()
{
  v25 = v0;
  sub_248997228(v0 + 208, v0 + 248);

  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v24 = v4;
    *v3 = 136446722;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v24);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2082;
    sub_248997228(v0 + 248, v0 + 288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5780, &unk_248A155A8);
    v8 = sub_248A12B80();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    v11 = sub_24897BC00(v8, v10, &v24);

    *(v3 + 14) = v11;
    *(v3 + 22) = 2082;
    v12 = sub_2489FA2C8();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v24);

    *(v3 + 24) = v15;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Created peer connection service %{public}s with peer connection %{public}s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  }

  v16 = *(v0 + 632);
  v17 = *(v0 + 408);
  *(v0 + 16) = *(v0 + 73) & 1;
  *(v0 + 24) = v16;
  sub_248997228(v0 + 208, v0 + 32);
  *(v0 + 72) = 0;
  swift_beginAccess();

  sub_24898D194(v0 + 16, v17 + 112, &unk_27EEB5ED0, &qword_248A15BE0);
  swift_endAccess();
  v18 = *(v0 + 232);
  v19 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v18);
  v23 = (*(v19 + 8) + **(v19 + 8));
  v20 = swift_task_alloc();
  *(v0 + 664) = v20;
  *v20 = v0;
  v20[1] = sub_2489C0AD4;
  v21 = *(v0 + 400);

  return v23(v21, v18, v19);
}

uint64_t sub_2489C0AD4()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    v4 = sub_2489C0F04;
  }

  else
  {
    v4 = sub_2489C0C00;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2489C0C00()
{
  v21 = v0;
  *(v0 + 80) = *(v0 + 73) & 1;
  v1 = *(v0 + 408);
  *(v0 + 88) = *(v0 + 632);
  sub_248997228(v0 + 208, v0 + 96);
  *(v0 + 136) = 1;
  swift_beginAccess();

  sub_24898D194(v0 + 80, v1 + 112, &unk_27EEB5ED0, &qword_248A15BE0);
  swift_endAccess();
  swift_retain_n();
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v18 = *(v0 + 640);
    v19 = *(v0 + 648);
    v4 = *(v0 + 408);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_24898D610(v4 + 112, v0 + 144, &unk_27EEB5ED0, &qword_248A15BE0);

    v10 = sub_248999A58();
    v12 = v11;

    sub_248983734(v0 + 144, &unk_27EEB5ED0, &qword_248A15BE0);
    v13 = sub_24897BC00(v10, v12, &v20);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Peer connection initiated: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);

    sub_248996A48(v18, v19);
  }

  else
  {
    v14 = *(v0 + 648);
    v15 = *(v0 + 640);

    sub_248996A48(v15, v14);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2489C0F04()
{
  v59 = v0;
  v1 = *(v0 + 568);
  if (v1 == 5)
  {
    v2 = *(v0 + 672);
    v3 = v2;
    v4 = sub_248A122B0();
    v5 = sub_248A12E60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 672);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v58[0] = v9;
      *v7 = 136446466;
      v10 = sub_248A13570();
      v12 = sub_24897BC00(v10, v11, v58);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Failed to initiate peer connection with error: %{public}@; out of retries", v7, 0x16u);
      sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1E0A80](v9, -1, -1);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v15 = *(v0 + 672);
    v16 = *(v0 + 648);
    v17 = *(v0 + 640);
    [objc_opt_self() dss:140 errorWithCode:0 userInfo:1 retryable:?];
    swift_willThrow();

    sub_248996A48(v17, v16);

    __swift_destroy_boxed_opaque_existential_0((v0 + 208));

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v55 = *(v0 + 672);
    v46 = *(v0 + 76);
    v47 = *(v0 + 560);
    v53 = *(v0 + 544);
    v54 = *(v0 + 552);
    v51 = *(v0 + 528);
    v52 = *(v0 + 520);
    v44 = *(v0 + 536);
    v45 = *(v0 + 512);
    v49 = *(v0 + 504);
    v20 = *(v0 + 488);
    v50 = *(v0 + 496);
    v21 = *(v0 + 480);
    v43 = *(v0 + 472);
    v23 = *(v0 + 456);
    v22 = *(v0 + 464);
    v57 = 1000000000000000000 * v1;
    v48 = *(v0 + 448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5788, &qword_248A155B8);
    v24 = sub_248A134F0();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_248A14B30;
    sub_248A134E0();
    sub_24899728C(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    sub_248A13500();
    (*(v21 + 104))(v20, v46, v43);
    sub_248A134C0();
    (*(v21 + 8))(v20, v43);
    sub_248A134A0();
    sub_248A11970();

    (*(v23 + 8))(v22, v48);
    (*(v49 + 8))(v45, v50);
    (*(v51 + 8))(v44, v52);
    sub_2489CBB90(&unk_27EEB5EE0, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
    sub_248A13530();
    (*(v54 + 8))(v47, v53);
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = v55;

    v31 = sub_248A122B0();
    v32 = sub_248A12E60();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 672);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v58[0] = v56;
      *v34 = 136446722;
      v36 = sub_248A13570();
      v38 = sub_24897BC00(v36, v37, v58);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2114;
      v39 = v33;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v40;
      *v35 = v40;
      *(v34 + 22) = 2082;
      v41 = sub_24897BC00(v29, v28, v58);

      *(v34 + 24) = v41;
      _os_log_impl(&dword_248975000, v31, v32, "[%{public}s] Failed to initiate peer connection with error: %{public}@; will re-attempt to initiate peer connection after %{public}s delay", v34, 0x20u);
      sub_248983734(v35, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v35, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v56, -1, -1);
      MEMORY[0x24C1E0A80](v34, -1, -1);
    }

    else
    {
    }

    sub_248A133B0();
    v42 = swift_task_alloc();
    *(v0 + 680) = v42;
    *v42 = v0;
    v42[1] = sub_2489C1668;

    return sub_248996414(v57, 0, 0, 0, 1);
  }
}

uint64_t sub_2489C1668()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  v3 = v2[55];
  v4 = v2[54];
  v5 = v2[53];
  v6 = v2[51];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_2489C1A48;
  }

  else
  {
    v7 = sub_2489C17E4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2489C17E4()
{
  v20 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 568);

  sub_248996A48(v3, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  v5 = v4 + 1;
  *(v0 + 568) = v4 + 1;
  v6 = sub_248A122D0();
  *(v0 + 576) = __swift_project_value_buffer(v6, qword_27EEB9DC8);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    if (*(v0 + 73))
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (*(v0 + 73))
    {
      v10 = 0x72656E657473696CLL;
    }

    else
    {
      v10 = 0x726573776F7262;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446722;
    v13 = sub_248A13570();
    v15 = sub_24897BC00(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_24897BC00(v10, v9, &v19);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2050;
    *(v11 + 24) = v5;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Initiating peer connection with role %{public}s (attempt #: %{public}ld)", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  v17 = swift_task_alloc();
  *(v0 + 584) = v17;
  *v17 = v0;
  v17[1] = sub_2489BFACC;

  return sub_248999F68();
}

uint64_t sub_2489C1A48()
{
  v1 = v0[84];
  v2 = v0[81];
  v3 = v0[80];

  sub_248996A48(v3, v2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489C1B28()
{
  v1 = v0[87];
  if ((*(v1 + 40) & 0xC0) == 0x40)
  {
    v2 = *(v1 + 24);
    if (*(v1 + 40))
    {
      v0[49] = v2;
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      swift_willThrowTypedImpl();
      v0[90] = v2;
      v4 = v0[51];
      v5 = sub_2489C226C;
      v6 = 0;
    }

    else
    {
      v8 = *(v1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
      v9 = swift_allocObject();
      ObjectType = swift_getObjectType();
      v11 = swift_unknownObjectRetain();
      v0[89] = sub_24898BF28(v11, v9, ObjectType, v8);
      sub_2489CBBD8(&qword_27EEB5EC0, &qword_27EEB5898, &qword_248A15C28, &protocol conformance descriptor for PeerConnection<A>);

      v12 = sub_248A12CD0();
      v14 = v13;
      v5 = sub_2489C1E60;
      v4 = v12;
      v6 = v14;
    }

    return MEMORY[0x2822009F8](v5, v4, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[88] = v7;
    *v7 = v0;
    v7[1] = sub_2489C1D34;

    return MEMORY[0x282200480](500000000);
  }
}

uint64_t sub_2489C1D34()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 720) = v0;
    v3 = *(v2 + 408);
    v4 = sub_2489C226C;
  }

  else
  {
    v4 = sub_2489CBC20;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2489C1E60()
{
  v1 = *(v0 + 408);
  sub_248A030F0(v1, *(v0 + 712));

  return MEMORY[0x2822009F8](sub_2489C1EDC, v1, 0);
}

uint64_t sub_2489C1EDC()
{
  v26 = v0;
  v1 = v0[87];
  v2 = *(v1 + 40);
  if (v2 < 0x40)
  {
    v4 = *(v1 + 24);
    v3 = *(v1 + 32);
    v5 = *(v1 + 40);

    sub_2489C27D4();
    sub_2489BA88C(v4, v3, v5);
    LOBYTE(v2) = *(v1 + 40);
    v1 = v0[87];
  }

  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  *(v1 + 24) = xmmword_248A167C0;
  *(v1 + 40) = 0x80;
  sub_2489BA88C(v6, v7, v2);
  v8 = v0[89];
  v0[79] = v8;
  v9 = v0[51];

  v10 = *(v9 + 200);
  v0[80] = v10;
  v11 = *(v9 + 208);
  v0[81] = v11;
  if (v10)
  {
    sub_2489789C8(v10, v11);

    v24 = (v10 + *v10);
    v12 = swift_task_alloc();
    v0[82] = v12;
    *v12 = v0;
    v12[1] = sub_2489C065C;

    return (v24)(v0 + 26, v8);
  }

  else
  {
    v14 = sub_248A122B0();
    v15 = sub_248A12E70();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446210;
      v18 = sub_248A13570();
      v20 = sub_24897BC00(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_248975000, v14, v15, "[%{public}s] Peer connection service provider not set", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1E0A80](v17, -1, -1);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    v21 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D05130], v21);
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2489C226C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2489C2324()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F30, &qword_248A16958);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_248A12520();
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);
  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446210;
    v14 = sub_248A13570();
    v16 = sub_24897BC00(v14, v15, &v29);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Activate", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    v17 = v12;
    v2 = v28;
    MEMORY[0x24C1E0A80](v17, -1, -1);
  }

  v18 = *(v3 + 40);
  if ((v18 & 0xC0) == 0x80 && v18 == 128 && *(v3 + 24) == 0)
  {
    sub_248A116D0();

    sub_248A12510();
    sub_248A125F0();
    swift_allocObject();
    v19 = sub_248A125A0();
    if (v2)
    {
    }

    else
    {
      v20 = v19;
      sub_248A125C0();
      v21 = sub_248A125D0();
      (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
      sub_248A125E0();
      v22 = swift_allocObject();
      swift_weakInit();

      sub_2489789C8(sub_2489CBB80, v22);
      sub_248A12550();

      v23 = swift_allocObject();
      swift_weakInit();

      sub_2489789C8(sub_2489CBB88, v23);
      sub_248A12560();

      sub_248A12590();

      v24 = *(v3 + 24);
      v25 = *(v3 + 32);
      *(v3 + 24) = v20;
      *(v3 + 32) = 0;
      v26 = *(v3 + 40);
      *(v3 + 40) = 0;
      sub_2489BA88C(v24, v25, v26);
    }
  }
}

uint64_t sub_2489C2710(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489C2984(a1);
  }

  return result;
}

uint64_t sub_2489C2770(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489CA494(a1, result);
  }

  return result;
}

uint64_t sub_2489C27D4()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_248A13570();
    v7 = sub_24897BC00(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Cleaning up listener", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  sub_2489789C8(0, 0);
  sub_248A12550();
  sub_2489789C8(0, 0);
  sub_248A12560();
  return sub_248A125B0();
}

void sub_2489C2984(uint64_t a1)
{
  v150 = *v1;
  v151 = sub_248A128A0();
  v147 = *(v151 - 1);
  v3 = MEMORY[0x28223BE20](v151);
  v146 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v145 = &v139 - v6;
  MEMORY[0x28223BE20](v5);
  v149 = &v139 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF0, &qword_248A16948);
  v8 = MEMORY[0x28223BE20](v142);
  v141 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v143 = &v139 - v11;
  MEMORY[0x28223BE20](v10);
  v144 = &v139 - v12;
  v13 = sub_248A12580();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v148 = (&v139 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v140 = &v139 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v139 - v22;
  v24 = sub_248A12A50();
  v25 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v27 = (&v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v1 + 2);
  *v27 = v28;
  (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
  v29 = v28;
  LOBYTE(v28) = sub_248A12A60();
  (*(v25 + 8))(v27, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_49:
    swift_once();
LABEL_5:
    v31 = sub_248A122D0();
    __swift_project_value_buffer(v31, qword_27EEB9DC8);
    v24(v17, a1, v13);
    v32 = sub_248A122B0();
    v33 = sub_248A12E80();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v151 = v24;
      v152 = v35;
      v36 = v14;
      v37 = v35;
      *v34 = 136446466;
      v38 = sub_248A13570();
      v40 = sub_24897BC00(v38, v39, &v152);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2082;
      (v151)(v148, v17, v13);
      v41 = sub_248A12B80();
      v43 = v42;
      (*(v36 + 8))(v17, v13);
      v44 = sub_24897BC00(v41, v43, &v152);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_248975000, v32, v33, "%{public}s listener state %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v37, -1, -1);
      MEMORY[0x24C1E0A80](v34, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    return;
  }

  v24 = *(v14 + 16);
  v24(v23, a1, v13);
  v30 = (*(v14 + 88))(v23, v13);
  if (v30 == *MEMORY[0x277CD8B40])
  {
    (*(v14 + 8))(v23, v13);
    goto LABEL_4;
  }

  if (v30 == *MEMORY[0x277CD8B38])
  {
    v144 = v1;
    (*(v14 + 96))(v23, v13);
    v45 = v147;
    v46 = v149;
    v47 = v151;
    (*(v147 + 32))(v149, v23, v151);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v48 = sub_248A122D0();
    __swift_project_value_buffer(v48, qword_27EEB9DC8);
    v49 = sub_248A122B0();
    v50 = sub_248A12E60();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v152 = v52;
      *v51 = 136446210;
      v53 = sub_248A13570();
      v55 = sub_24897BC00(v53, v54, &v152);
      v47 = v151;

      *(v51 + 4) = v55;
      _os_log_impl(&dword_248975000, v49, v50, " %{public}s !!! PEER LISTENER FAILED !!!", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1E0A80](v52, -1, -1);
      MEMORY[0x24C1E0A80](v51, -1, -1);
    }

    v56 = v146;
    v57 = sub_2489B9AA4();
    v58 = *(v45 + 16);
    if (v57)
    {
      v59 = v145;
      v58(v145, v46, v47);
      v60 = sub_248A122B0();
      v61 = sub_248A12E60();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v152 = v148;
        *v62 = 136446466;
        v63 = sub_248A13570();
        v65 = sub_24897BC00(v63, v64, &v152);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2114;
        sub_2489CBB90(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
        swift_allocError();
        v58(v66, v59, v151);
        v67 = _swift_stdlib_bridgeErrorToNSError();
        v68 = *(v45 + 8);
        v68(v59, v151);
        *(v62 + 14) = v67;
        v69 = v146;
        *v146 = v67;
        v47 = v151;
        _os_log_impl(&dword_248975000, v60, v61, "%{public}s listener failed with %{public}@; restarting", v62, 0x16u);
        sub_248983734(v69, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v69, -1, -1);
        v70 = v148;
        __swift_destroy_boxed_opaque_existential_0(v148);
        MEMORY[0x24C1E0A80](v70, -1, -1);
        MEMORY[0x24C1E0A80](v62, -1, -1);
      }

      else
      {

        v68 = *(v45 + 8);
        v68(v59, v47);
      }

      sub_2489C3BB4();
      v68(v149, v47);
      return;
    }

    v58(v56, v46, v47);
    v76 = sub_248A122B0();
    v77 = sub_248A12E60();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v56;
      v80 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v152 = v148;
      *v78 = 136446466;
      v81 = sub_248A13570();
      v83 = sub_24897BC00(v81, v82, &v152);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2114;
      sub_2489CBB90(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      v58(v84, v79, v151);
      v85 = _swift_stdlib_bridgeErrorToNSError();
      v86 = v79;
      v87 = *(v45 + 8);
      v87(v86, v151);
      *(v78 + 14) = v85;
      *v80 = v85;
      v47 = v151;
      _os_log_impl(&dword_248975000, v76, v77, "%{public}s listener failed with %{public}@; stopping", v78, 0x16u);
      sub_248983734(v80, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v80, -1, -1);
      v88 = v148;
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x24C1E0A80](v88, -1, -1);
      MEMORY[0x24C1E0A80](v78, -1, -1);
    }

    else
    {

      v87 = *(v45 + 8);
      v87(v56, v47);
    }

    v102 = v144;
    sub_2489CBB90(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v103 = swift_allocError();
    v104 = v149;
    v58(v105, v149, v47);
    v106 = *(v102 + 3);
    v107 = *(v102 + 4);
    *(v102 + 3) = v103;
    *(v102 + 4) = 0;
    v108 = v102[40];
    v102[40] = 65;
    v109 = v103;
    sub_2489BA88C(v106, v107, v108);

    v87(v104, v47);
    v110 = *(v102 + 3);
    v111 = *(v102 + 4);
    *(v102 + 24) = xmmword_248A167C0;
    LOBYTE(v112) = v102[40];
    v102[40] = 0x80;
LABEL_31:
    sub_2489BA88C(v110, v111, v112);
    return;
  }

  if (v30 == *MEMORY[0x277CD8B30])
  {
LABEL_4:
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

  if (v30 == *MEMORY[0x277CD8B28])
  {
    v71 = v1[40];
    if (v71 > 0x3F)
    {
      v113 = sub_248A12520();
      v75 = v144;
      (*(*(v113 - 8) + 56))(v144, 1, 1, v113);
    }

    else
    {
      v74 = v1 + 24;
      v73 = *(v1 + 3);
      v72 = *(v74 + 1);

      v75 = v144;
      sub_248A12570();
      sub_2489BA88C(v73, v72, v71);
    }

    v114 = v143;
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v115 = sub_248A122D0();
    __swift_project_value_buffer(v115, qword_27EEB9DC8);
    sub_24898D610(v75, v114, &qword_27EEB5BF0, &qword_248A16948);
    v116 = sub_248A122B0();
    v117 = sub_248A12E80();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v152 = v119;
      *v118 = 136446466;
      v120 = sub_248A13570();
      v122 = sub_24897BC00(v120, v121, &v152);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2082;
      sub_24898D610(v114, v141, &qword_27EEB5BF0, &qword_248A16948);
      v123 = sub_248A12B80();
      v125 = v124;
      sub_248983734(v114, &qword_27EEB5BF0, &qword_248A16948);
      v126 = sub_24897BC00(v123, v125, &v152);

      *(v118 + 14) = v126;
      _os_log_impl(&dword_248975000, v116, v117, "%{public}s listener state ready on port %{public}s", v118, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v119, -1, -1);
      MEMORY[0x24C1E0A80](v118, -1, -1);
    }

    else
    {

      sub_248983734(v114, &qword_27EEB5BF0, &qword_248A16948);
    }

    sub_248983734(v75, &qword_27EEB5BF0, &qword_248A16948);
  }

  else
  {
    if (v30 == *MEMORY[0x277CD8B48])
    {
      v144 = v1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v89 = sub_248A122D0();
      __swift_project_value_buffer(v89, qword_27EEB9DC8);
      v90 = v140;
      v24(v140, a1, v13);
      v91 = sub_248A122B0();
      v92 = sub_248A12E80();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v152 = v151;
        *v93 = 136446466;
        v94 = sub_248A13570();
        v96 = sub_24897BC00(v94, v95, &v152);

        *(v93 + 4) = v96;
        *(v93 + 12) = 2082;
        v24(v148, v90, v13);
        v97 = sub_248A12B80();
        v99 = v98;
        (*(v14 + 8))(v90, v13);
        v100 = sub_24897BC00(v97, v99, &v152);

        *(v93 + 14) = v100;
        _os_log_impl(&dword_248975000, v91, v92, "%{public}s listener state %{public}s; invalidating", v93, 0x16u);
        v101 = v151;
        swift_arrayDestroy();
        MEMORY[0x24C1E0A80](v101, -1, -1);
        MEMORY[0x24C1E0A80](v93, -1, -1);
      }

      else
      {

        (*(v14 + 8))(v90, v13);
      }

      v135 = v144;
      v112 = v144[40];
      if (v112 <= 0x3F)
      {
        v137 = *(v144 + 3);
        v136 = *(v144 + 4);
        v138 = v144[40];

        sub_2489C27D4();
        v135 = v144;
        sub_2489BA88C(v137, v136, v138);
        LOBYTE(v112) = v135[40];
      }

      v110 = *(v135 + 3);
      v111 = *(v135 + 4);
      *(v135 + 24) = xmmword_248A167C0;
      v135[40] = 0x80;
      goto LABEL_31;
    }

    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v127 = sub_248A122D0();
    __swift_project_value_buffer(v127, qword_27EEB9DC8);
    v128 = sub_248A122B0();
    v129 = sub_248A12E70();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v152 = v131;
      *v130 = 136446210;
      v132 = sub_248A13570();
      v134 = sub_24897BC00(v132, v133, &v152);

      *(v130 + 4) = v134;
      _os_log_impl(&dword_248975000, v128, v129, "%{public}s found unexpected NWListener.State type", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v131);
      MEMORY[0x24C1E0A80](v131, -1, -1);
      MEMORY[0x24C1E0A80](v130, -1, -1);
    }

    (*(v14 + 8))(v23, v13);
  }
}

void sub_2489C3BB4()
{
  v1 = *(v0 + 40);
  if (v1 <= 0x3F)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 40);

    sub_2489C27D4();
    sub_2489BA88C(v3, v2, v4);
    LOBYTE(v1) = *(v0 + 40);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0x80;
  sub_2489BA88C(v5, v6, v1);
  sub_2489C2324();
}

uint64_t sub_2489C3E34()
{
  v10 = sub_248A12EA0();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248A12E90();
  MEMORY[0x28223BE20](v4);
  v5 = sub_248A12A40();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2489B7884(0, &qword_27EEB5BE0, 0x277D85C78);
  v9[0] = "rProvider";
  v9[1] = v6;
  sub_248A12A20();
  v11 = MEMORY[0x277D84F90];
  sub_2489CBB90(&unk_27EEB5F40, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BE8, &qword_248A16940);
  sub_2489CBBD8(&qword_27EEB5F50, &qword_27EEB5BE8, &qword_248A16940, MEMORY[0x277D83970]);
  sub_248A12FA0();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  v7 = sub_248A12EB0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v7;
  *(v0 + 40) = 0x80;
  return v0;
}

uint64_t sub_2489C40B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F00, &qword_248A16D58);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-v6];
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);
  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136446210;
    v13 = sub_248A13570();
    v15 = sub_24897BC00(v13, v14, v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Activate", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  v16 = *(*v1 + 104);
  swift_beginAccess();
  sub_24898D610(v1 + v16, v7, &unk_27EEB5F00, &qword_248A16D58);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v7, 3, v17);
  result = sub_248983734(v7, &unk_27EEB5F00, &qword_248A16D58);
  if (v19 == 1)
  {
    v21 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(v1, &protocol witness table for PeerBrowser<A>, ObjectType, v21);
    (*(v18 + 56))(v5, 2, 3, v17);
    swift_beginAccess();
    sub_24898D194(v5, v1 + v16, &unk_27EEB5F00, &qword_248A16D58);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2489C43FC()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = sub_248A12540();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB5C10, &unk_248A16990);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = type metadata accessor for NearbyDevice(0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F00, &qword_248A16D58);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F10, &qword_248A16988);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489C4620, 0, 0);
}

uint64_t sub_2489C4620()
{
  v47 = v0;
  *(v0 + 184) = *(**(v0 + 48) + 104);
  swift_beginAccess();
  v1 = *(v0 + 168);
  sub_24898D610(*(v0 + 48) + *(v0 + 184), v1, &unk_27EEB5F00, &qword_248A16D58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v3 = *(*(v2 - 8) + 48);
  if (v3(v1, 3, v2))
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    sub_248983734(*(v0 + 168), &unk_27EEB5F00, &qword_248A16D58);
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_248983734(v4, &unk_27EEB5F10, &qword_248A16988);
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_2489C4D2C;

    return MEMORY[0x282200480](500000000);
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 48);
  sub_2489CBAB4(*(v0 + 168), v8);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_248983734(v8, &unk_27EEB5F10, &qword_248A16988);
  sub_24898D610(v13 + v9, v10, &unk_27EEB5F00, &qword_248A16D58);
  v14 = v3(v10, 3, v2);
  v15 = *(v0 + 160);
  if (v14)
  {
    sub_248983734(v15, &unk_27EEB5F00, &qword_248A16D58);
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v16 = sub_248A122D0();
    __swift_project_value_buffer(v16, qword_2815105C0);

    v17 = sub_248A122B0();
    v18 = sub_248A12E60();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 184);
      v20 = *(v0 + 152);
      v21 = *(v0 + 48);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136446466;
      v24 = sub_248A13570();
      v26 = sub_24897BC00(v24, v25, v46);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      sub_24898D610(v21 + v19, v20, &unk_27EEB5F00, &qword_248A16D58);
      v27 = sub_248A12B80();
      v29 = sub_24897BC00(v27, v28, v46);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Peer Browser expected result in state is %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    v30 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D05118], v30);
    swift_willThrow();
    goto LABEL_13;
  }

  sub_2489CBAB4(v15, *(v0 + 112));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *(v0 + 40) = **(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    swift_willThrowTypedImpl();
LABEL_13:

    v32 = *(v0 + 8);

    return v32();
  }

  v33 = *(v0 + 128);
  v34 = *(v0 + 136);
  v35 = *(v0 + 120);
  v36 = *(v0 + 80);
  v37 = *(v0 + 88);
  v39 = *(v0 + 64);
  v38 = *(v0 + 72);
  sub_2489BCBA0(*(v0 + 112), v33);
  sub_2489BCBA0(v33, v34);
  v40 = *(v38 + 16);
  v40(v37, v34 + *(v35 + 24), v39);
  sub_248A116D0();
  v40(v36, v37, v39);
  sub_248A12720();
  swift_allocObject();

  v41 = sub_248A126D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v42 = swift_allocObject();
  v43 = sub_2489C9FB0(v41, v42);

  (*(v38 + 8))(v37, v39);
  sub_2489CBB24(v34);

  v44 = *(v0 + 8);

  return v44(v43);
}

uint64_t sub_2489C4D2C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489C4EE4, 0, 0);
  }
}

uint64_t sub_2489C4EE4()
{
  v47 = v0;
  v1 = v0[21];
  sub_24898D610(v0[6] + v0[23], v1, &unk_27EEB5F00, &qword_248A16D58);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v3 = *(*(v2 - 8) + 48);
  if (v3(v1, 3, v2))
  {
    v4 = v0[22];
    v5 = v0[12];
    v6 = v0[13];
    sub_248983734(v0[21], &unk_27EEB5F00, &qword_248A16D58);
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_248983734(v4, &unk_27EEB5F10, &qword_248A16988);
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_2489C4D2C;

    return MEMORY[0x282200480](500000000);
  }

  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[6];
  sub_2489CBAB4(v0[21], v8);
  (*(v12 + 56))(v8, 0, 1, v11);
  sub_248983734(v8, &unk_27EEB5F10, &qword_248A16988);
  sub_24898D610(v13 + v9, v10, &unk_27EEB5F00, &qword_248A16D58);
  v14 = v3(v10, 3, v2);
  v15 = v0[20];
  if (v14)
  {
    sub_248983734(v15, &unk_27EEB5F00, &qword_248A16D58);
    if (qword_28150F5F0 != -1)
    {
      swift_once();
    }

    v16 = sub_248A122D0();
    __swift_project_value_buffer(v16, qword_2815105C0);

    v17 = sub_248A122B0();
    v18 = sub_248A12E60();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[23];
      v20 = v0[19];
      v21 = v0[6];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136446466;
      v24 = sub_248A13570();
      v26 = sub_24897BC00(v24, v25, v46);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      sub_24898D610(v21 + v19, v20, &unk_27EEB5F00, &qword_248A16D58);
      v27 = sub_248A12B80();
      v29 = sub_24897BC00(v27, v28, v46);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Peer Browser expected result in state is %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    v30 = sub_248A12150();
    sub_2489CBB90(qword_27EEB5470, MEMORY[0x277D05138], MEMORY[0x277D05140]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D05118], v30);
    swift_willThrow();
    goto LABEL_13;
  }

  sub_2489CBAB4(v15, v0[14]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0[5] = *v0[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    swift_willThrowTypedImpl();
LABEL_13:

    v32 = v0[1];

    return v32();
  }

  v33 = v0[16];
  v34 = v0[17];
  v35 = v0[15];
  v36 = v0[10];
  v37 = v0[11];
  v39 = v0[8];
  v38 = v0[9];
  sub_2489BCBA0(v0[14], v33);
  sub_2489BCBA0(v33, v34);
  v40 = *(v38 + 16);
  v40(v37, v34 + *(v35 + 24), v39);
  sub_248A116D0();
  v40(v36, v37, v39);
  sub_248A12720();
  swift_allocObject();

  v41 = sub_248A126D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v42 = swift_allocObject();
  v43 = sub_2489C9FB0(v41, v42);

  (*(v38 + 8))(v37, v39);
  sub_2489CBB24(v34);

  v44 = v0[1];

  return v44(v43);
}

uint64_t sub_2489C55C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F00, &qword_248A16D58);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-v5];
  v7 = *(*v0 + 104);
  swift_beginAccess();
  sub_24898D610(v0 + v7, v6, &unk_27EEB5F00, &qword_248A16D58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 3, v8);
  sub_248983734(v6, &unk_27EEB5F00, &qword_248A16D58);
  if (v10 == 2)
  {
    v11 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(v0, &protocol witness table for PeerBrowser<A>, ObjectType, v11);
  }

  (*(v9 + 56))(v4, 3, 3, v8);
  swift_beginAccess();
  sub_24898D194(v4, v0 + v7, &unk_27EEB5F00, &qword_248A16D58);
  return swift_endAccess();
}

uint64_t sub_2489C57C4(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2489A86D0(v3), (v6 & 1) != 0))
  {
    sub_248997228(*(v4 + 56) + 40 * v5, &v15);
    if (*(&v16 + 1))
    {
      v7 = *(&v16 + 1);
      v8 = v17;
      v9 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      v10 = *(v7 - 8);
      MEMORY[0x28223BE20](v9);
      v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
      v13 = *(v8 + 16);
      *(&v19 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v18);
      v13(v7, v8);
      (*(v10 + 8))(v12, v7);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
  v18 = 0u;
  v19 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return v15;
  }

  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C5A10(uint64_t (*a1)(void))
{
  v2 = a1(0);
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_2489A86D0(v2), (v5 & 1) != 0))
  {
    sub_248997228(*(v3 + 56) + 40 * v4, &v14);
    if (*(&v15 + 1))
    {
      v6 = *(&v15 + 1);
      v7 = v16;
      v8 = __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
      v9 = *(v6 - 8);
      MEMORY[0x28223BE20](v8);
      v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v11);
      sub_248983734(&v14, &unk_27EEB5D70, &unk_248A16A50);
      v12 = *(v7 + 16);
      *(&v18 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v17);
      v12(v6, v7);
      (*(v9 + 8))(v11, v6);
      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  sub_248983734(&v14, &unk_27EEB5D70, &unk_248A16A50);
  v17 = 0u;
  v18 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return v14;
  }

  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C5C68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E98, &qword_248A16D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_248A11EF0();
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_2489A86D0(v6), (v9 & 1) != 0))
  {
    sub_248997228(*(v7 + 56) + 40 * v8, &v22);
    if (*(&v23 + 1))
    {
      v10 = *(&v23 + 1);
      v11 = v24;
      v12 = __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      v21[1] = v21;
      v13 = *(v10 - 8);
      MEMORY[0x28223BE20](v12);
      v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v15);
      sub_248983734(&v22, &unk_27EEB5D70, &unk_248A16A50);
      v27 = a1;
      v16 = *(v11 + 16);
      *(&v26 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v25);
      v16(v10, v11);
      a1 = v27;
      (*(v13 + 8))(v15, v10);
      goto LABEL_7;
    }
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  sub_248983734(&v22, &unk_27EEB5D70, &unk_248A16A50);
  v25 = 0u;
  v26 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  v17 = swift_dynamicCast();
  v18 = *(*(v6 - 8) + 56);
  if (v17)
  {
    v19 = *(v6 - 8);
    v18(v5, 0, 1, v6);
    return (*(v19 + 32))(a1, v5, v6);
  }

  else
  {
    v18(v5, 1, 1, v6);
    sub_248983734(v5, &unk_27EEB5E98, &qword_248A16D10);
    sub_2489BEB30();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_2489C5FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E00, &qword_248A16C98);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2489A86D0(v3), (v6 & 1) != 0))
  {
    sub_248997228(*(v4 + 56) + 40 * v5, &v15);
    if (*(&v16 + 1))
    {
      v7 = *(&v16 + 1);
      v8 = v17;
      v9 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      v20 = &v15;
      v10 = *(v7 - 8);
      MEMORY[0x28223BE20](v9);
      v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
      v13 = *(v8 + 16);
      *(&v19 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v18);
      v13(v7, v8);
      (*(v10 + 8))(v12, v7);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
  v18 = 0u;
  v19 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return sub_248978948(&v15, a1);
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  sub_248983734(&v15, &qword_27EEB5F58, &qword_248A16D60);
  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C6244(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2489A86D0(v3), (v6 & 1) != 0))
  {
    sub_248997228(*(v4 + 56) + 40 * v5, &v15);
    if (*(&v16 + 1))
    {
      v7 = *(&v16 + 1);
      v8 = v17;
      v9 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      v10 = *(v7 - 8);
      MEMORY[0x28223BE20](v9);
      v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
      v13 = *(v8 + 16);
      *(&v19 + 1) = swift_getAssociatedTypeWitness();
      __swift_allocate_boxed_opaque_existential_1Tm(&v18);
      v13(v7, v8);
      (*(v10 + 8))(v12, v7);
      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  sub_248983734(&v15, &unk_27EEB5D70, &unk_248A16A50);
  v18 = 0u;
  v19 = 0u;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5610, &qword_248A15118);
  if (swift_dynamicCast())
  {
    return v15;
  }

  sub_2489BEB30();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2489C6EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E98, &qword_248A16D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_2489C5C68(&v8 - v3);
  v5 = sub_248A11EF0();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v4, 0, 1, v5);
  return (*(v6 + 32))(a1, v4, v5);
}

uint64_t Daemon.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Daemon.init()@<X0>(void *a1@<X8>)
{
  sub_2489CA768();
  v2 = sub_2489CB3E4();

  *a1 = 0xD000000000000018;
  a1[1] = 0x8000000248A19C80;
  a1[2] = v2;
  return result;
}

uint64_t Daemon.init(dependencies:)@<X0>(void *a2@<X8>)
{
  *a2 = 0xD000000000000018;
  a2[1] = 0x8000000248A19C80;
  v3 = sub_2489CB3E4();

  a2[2] = v3;
  return result;
}

uint64_t sub_2489C858C()
{
  if (qword_28150F5D0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_281510578);
  sub_2489BDB14(0xD000000000000055, 0x8000000248A19CA0, 0x6574617669746361, 0xEA00000000002928);
  sub_248A120F0();
  v3 = sub_248A120E0();
  sub_248A120D0();

  v4 = *(v1 + 16);
  v0[8] = v4;
  if (v4)
  {
    v5 = v0[7];
    v0[9] = 0;
    sub_248997228(v5 + 32, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v11 = (*(v7 + 8) + **(v7 + 8));
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_2489C87A0;

    return v11(v6, v7);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2489C87A0()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_2489C88A4, 0, 0);
}

uint64_t sub_2489C88A4()
{
  v1 = v0[9] + 1;
  if (v1 == v0[8])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    sub_248997228(v0[7] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v7 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_2489C87A0;

    return v7(v4, v5);
  }
}

uint64_t sub_2489C8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2489C8A48, 0, 0);
}

uint64_t sub_2489C8A48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_2489C8AB4, v1, 0);
}

uint64_t sub_2489C8AB4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  *(v2 + 200) = &unk_248A16D08;
  *(v2 + 208) = v1;
  sub_248996A48(v3, v4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2489C8B64;

  return sub_24899D6C8();
}

uint64_t sub_2489C8B64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489C8C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2489C8C7C, 0, 0);
}

uint64_t sub_2489C8C7C()
{
  v1 = v0[7];
  sub_24899A680(v0[8], v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v1[3] = v2;
  v1[4] = *(v3 + 8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2489C8D4C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2489C991C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2489C8E40(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2489C9C68(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D60, &qword_248A16C50);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Daemon.bootstrapSandbox()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_248A12CB0();
  *(v3 + 16) = 1024;
  bzero((v3 + 32), 0x400uLL);
  sub_248A12B90();

  v4 = _set_user_dir_suffix();

  if (!v4)
  {
    v10 = MEMORY[0x24C1DF180](v5);
    if (strerror(v10))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v3 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2489C9DB0(0, *(v3 + 16), 0, v3);
  }

  if (!confstr(65537, (v3 + 32), v6))
  {
LABEL_16:
    v11 = MEMORY[0x24C1DF180]();
    if (strerror(v11))
    {
      v24 = sub_248A12C00();
      v26 = v25;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_248A13100();
      MEMORY[0x24C1DF8B0](0xD000000000000034, 0x8000000248A19D80);
      MEMORY[0x24C1DF8B0](v2, v1);
      v27 = MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
      LODWORD(v45) = MEMORY[0x24C1DF180](v27);
      v28 = sub_248A132F0();
      MEMORY[0x24C1DF8B0](v28);

      MEMORY[0x24C1DF8B0](2112041, 0xE300000000000000);
      MEMORY[0x24C1DF8B0](v24, v26);
      v29 = qword_28150F5D0;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_248A122D0();
      __swift_project_value_buffer(v30, qword_281510578);

      v20 = sub_248A122B0();
      v31 = sub_248A12E60();

      if (os_log_type_enabled(v20, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v45 = v33;
        *v32 = 136446210;
        *(v32 + 4) = sub_24897BC00(0, 0xE000000000000000, &v45);
        _os_log_impl(&dword_248975000, v20, v31, "Sandbox bootstrap error: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x24C1E0A80](v33, -1, -1);
        MEMORY[0x24C1E0A80](v32, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!mkdir((v3 + 32), 0x2BCu) && MEMORY[0x24C1DF180]() != 17)
  {
LABEL_18:
    v12 = MEMORY[0x24C1DF180]();
    if (strerror(v12))
    {
      v34 = sub_248A12C00();
      v36 = v35;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_248A13100();
      MEMORY[0x24C1DF8B0](0xD000000000000029, 0x8000000248A19D50);
      MEMORY[0x24C1DF8B0](v2, v1);
      v37 = MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
      LODWORD(v45) = MEMORY[0x24C1DF180](v37);
      v38 = sub_248A132F0();
      MEMORY[0x24C1DF8B0](v38);

      MEMORY[0x24C1DF8B0](2112041, 0xE300000000000000);
      MEMORY[0x24C1DF8B0](v34, v36);
      v39 = qword_28150F5D0;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_248A122D0();
      __swift_project_value_buffer(v40, qword_281510578);

      v20 = sub_248A122B0();
      v41 = sub_248A12E60();

      if (os_log_type_enabled(v20, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_24897BC00(0, 0xE000000000000000, &v45);
        _os_log_impl(&dword_248975000, v20, v41, "Sandbox bootstrap error: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1E0A80](v43, -1, -1);
        MEMORY[0x24C1E0A80](v42, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_20:
    v13 = sub_248A12C00();
    v15 = v14;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000002DLL, 0x8000000248A19D00);
    MEMORY[0x24C1DF8B0](v2, v1);
    v16 = MEMORY[0x24C1DF8B0](10272, 0xE200000000000000);
    LODWORD(v45) = MEMORY[0x24C1DF180](v16);
    v17 = sub_248A132F0();
    MEMORY[0x24C1DF8B0](v17);

    MEMORY[0x24C1DF8B0](2112041, 0xE300000000000000);
    MEMORY[0x24C1DF8B0](v13, v15);
    v18 = qword_28150F5D0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_248A122D0();
    __swift_project_value_buffer(v19, qword_281510578);

    v20 = sub_248A122B0();
    v21 = sub_248A12E60();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_24897BC00(0, 0xE000000000000000, &v45);
      _os_log_impl(&dword_248975000, v20, v21, "Sandbox bootstrap error: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

LABEL_34:

    sub_248A13200();
    __break(1u);
    return;
  }

  if (qword_28150F5D0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_281510578);
  oslog = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_248975000, oslog, v8, "Sandbox bootstrapped successfully", v9, 2u);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }
}

char *sub_2489C970C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5F68, &qword_248A16D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2489C9818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5F60, &qword_248A16D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2489C991C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2489C9A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F70, &qword_248A16D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2489C9B34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D38, &qword_248A16C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D40, &qword_248A16C38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2489C9C68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D50, &qword_248A16C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D60, &qword_248A16C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2489C9DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D48, &qword_248A16C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2489C9EA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D30, &qword_248A16C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2489C9FB0(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v24 - v4;
  v25 = sub_248A12EA0();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12ED0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_248A12A40();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2489B7884(0, &qword_28150F560, 0x277D85C90);
  v24[0] = "8Q16@NSError24";
  v24[1] = v10;
  sub_248A12A20();
  v28 = MEMORY[0x277D84F90];
  sub_2489CBB90(&unk_28150F570, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_2489CBBD8(&qword_28150F580, &unk_27EEB5F20, &unk_248A16460, MEMORY[0x277D83970]);
  sub_248A12FA0();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v25);
  v11 = v26;
  *(a2 + 24) = sub_248A12EE0();
  v12 = qword_27EEB5408;
  v13 = sub_248A11BC0();
  v14 = *(*(v13 - 8) + 56);
  v14(a2 + v12, 1, 1, v13);
  sub_248A11DF0();
  v15 = qword_27EEB5418;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  v17 = qword_27EEB5428;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  *(a2 + qword_27EEB5438) = 0;
  v19 = (a2 + qword_27EEB5440);
  *v19 = v11;
  v19[1] = &protocol witness table for NWConnection;
  *(a2 + qword_27EEB5448) = 0;
  sub_248A122A0();
  swift_unknownObjectRetain();
  *(a2 + 16) = sub_248A12290();
  v20 = MEMORY[0x24C1DF380]();
  nw_connection_copy_endpoint(v20);
  swift_unknownObjectRelease();
  if (nw_endpoint_get_device_id())
  {
    sub_248A12C00();
    v21 = v27;
    sub_248A11B80();

    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v27;
    v14(v27, 1, 1, v13);

    swift_unknownObjectRelease();
  }

  v22 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v21, a2 + v22, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();
  return a2;
}

void sub_2489CA494(uint64_t a1, uint64_t a2)
{
  v4 = sub_248A12A50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_248A12A60();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = *(a2 + 40);
    if (v10 <= 0x3F)
    {
      v12 = *(a2 + 24);
      v11 = *(a2 + 32);

      sub_2489C27D4();
      sub_2489BA88C(v12, v11, v10);
      LOBYTE(v10) = *(a2 + 40);
    }

    v13 = *(a2 + 24);
    v14 = *(a2 + 32);
    *(a2 + 24) = a1;
    *(a2 + 32) = &protocol witness table for NWConnection;
    *(a2 + 40) = 64;
    swift_unknownObjectRetain();
    sub_2489BA88C(v13, v14, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2489CA604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  swift_defaultActor_initialize();
  *(v4 + 160) = 0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 168) = 2;
  *(v4 + 176) = 0;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_2489AC334(0, 0, v11, &unk_248A16D20, v13);

  return v4;
}

uint64_t sub_2489CA768()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v0 - 8);
  v54 = v52 - v1;
  v2 = sub_248A11EF0();
  v3 = *(v2 - 8);
  v56 = v2;
  v57 = v3;
  MEMORY[0x28223BE20](v2);
  v55 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Dependencies();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2489918CC(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for NotificationController();
  v7 = [objc_allocWithZone(v6) init];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5DA8, &qword_248A16C78);
  v62 = sub_2489CBBD8(&unk_28150FD70, &unk_27EEB5DA8, &qword_248A16C78, &unk_248A16BB0);
  *&v60 = v7;
  swift_beginAccess();
  v53 = v7;
  sub_2489BE1C8(&v60, v6);
  swift_endAccess();
  type metadata accessor for RapportXPCEventServer();
  swift_allocObject();
  v8 = sub_2489D54A0();
  v52[4] = v8;
  v9 = sub_2489CBB90(&qword_27EEB5DB8, type metadata accessor for RapportXPCEventServer, &protocol conformance descriptor for RapportXPCEventServer);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5D98, &qword_248A16C70);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5DC0, &qword_248A16C80);
  v62 = sub_2489CBBD8(&unk_27EEB5DC8, &qword_27EEB5DC0, &qword_248A16C80, &unk_248A16BB0);
  *&v60 = v8;
  *(&v60 + 1) = v9;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v10);
  swift_endAccess();
  type metadata accessor for DarwinNotificationXPCEventServer();
  swift_allocObject();
  v11 = sub_2489D1480();
  v52[3] = v11;
  v12 = sub_2489CBB90(&unk_28150F940, type metadata accessor for DarwinNotificationXPCEventServer, &protocol conformance descriptor for DarwinNotificationXPCEventServer);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D90, &qword_248A16C68);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5DD8, &qword_248A16C88);
  v62 = sub_2489CBBD8(&unk_27EEB5DE0, &qword_27EEB5DD8, &qword_248A16C88, &unk_248A16BB0);
  *&v60 = v11;
  *(&v60 + 1) = v12;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v13);
  swift_endAccess();
  sub_248A11D70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_248A14B30;
  *(v14 + 32) = sub_248A11D60();
  *(v14 + 40) = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v17 = sub_248A12B30();

  v18 = [v16 initWithMachServiceName_];

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D58, &qword_248A181B0);
  v20 = swift_allocObject();
  sub_248A11DF0();
  v21 = type metadata accessor for ServerListener();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v22[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener] = v18;
  v59.receiver = v22;
  v59.super_class = v21;
  v23 = v18;
  v20[3] = objc_msgSendSuper2(&v59, sel_init);
  v20[4] = v14;
  sub_248A122A0();
  v24 = sub_248A12290();

  v20[2] = v24;
  *(v20[3] + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8) = &off_285B62840;
  swift_unknownObjectWeakAssign();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5DF0, &qword_248A16C90);
  v62 = sub_2489CBBD8(&qword_28150FD48, &unk_27EEB5DF0, &qword_248A16C90, &unk_248A16BB0);
  *&v60 = v20;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v19);
  swift_endAccess();
  v25 = type metadata accessor for SharingInteractionController();
  swift_allocObject();
  v26 = SharingInteractionController.init()();
  v61 = v25;
  v62 = &protocol witness table for SharingInteractionController;
  *&v60 = v26;
  v52[2] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E00, &qword_248A16C98);
  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E08, &qword_248A16CA0);
  v58[4] = sub_2489CBBD8(&qword_28150FD80, &unk_27EEB5E08, &qword_248A16CA0, &unk_248A16BB0);
  v58[0] = swift_allocObject();
  sub_248997228(&v60, v58[0] + 16);
  swift_beginAccess();

  sub_2489BE1C8(v58, v27);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(&v60);

  sub_2489C6C34(&v60);
  type metadata accessor for NearbyDeviceProvider(0);
  swift_allocObject();
  v28 = NearbyDeviceProvider.init(sharingInteractionController:browserProvider:)(&v60, sub_2489B3210, 0);
  v52[1] = v28;

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E18, &qword_248A16CA8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E20, &qword_248A16CB0);
  v62 = sub_2489CBBD8(&qword_28150FD88, &unk_27EEB5E20, &qword_248A16CB0, &unk_248A16BB0);
  *&v60 = v28;
  *(&v60 + 1) = &protocol witness table for NearbyDeviceProvider;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v29);
  swift_endAccess();

  v30 = sub_2489C6490();
  v32 = v31;
  v33 = sub_2489C671C();
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E30, &qword_248A16CB8);
  swift_allocObject();
  v37 = sub_2489CA604(v30, v32, v33, v35);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E38, &qword_248A16CC0);
  v62 = sub_2489CBBD8(&unk_28150FD60, &unk_27EEB5E38, &qword_248A16CC0, &unk_248A16BB0);
  *&v60 = v37;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v36);
  swift_endAccess();
  v38 = sub_248A11EB0();
  v39 = sub_248A11EA0();
  v52[0] = v39;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E48, &qword_248A16CC8);
  v62 = sub_2489CBBD8(qword_28150FDB0, &unk_27EEB5E48, &qword_248A16CC8, &unk_248A16BB0);
  *&v60 = v39;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v38);
  swift_endAccess();
  v40 = v55;
  sub_248A11EE0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E58, &qword_248A16CD0);
  v62 = sub_2489CBBD8(&unk_28150FDA0, &unk_27EEB5E58, &qword_248A16CD0, &unk_248A16BB0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v60);
  v42 = v56;
  (*(v57 + 16))(boxed_opaque_existential_1Tm, v40, v56);
  swift_beginAccess();
  sub_2489BE1C8(&v60, v42);
  swift_endAccess();
  v43 = sub_248A11FD0();
  swift_allocObject();
  v44 = sub_248A11FC0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E68, &qword_248A16CD8);
  v62 = sub_2489CBBD8(&unk_28150FD90, &unk_27EEB5E68, &qword_248A16CD8, &unk_248A16BB0);
  *&v60 = v44;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v43);
  swift_endAccess();
  type metadata accessor for GuestUserAccessResponseController(0);
  swift_allocObject();

  v45 = sub_2489A47F8();

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D88, &qword_248A16C60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5E78, &qword_248A16CE0);
  v62 = sub_2489CBBD8(&unk_28150FD50, &unk_27EEB5E78, &qword_248A16CE0, &unk_248A16BB0);
  *&v60 = v45;
  *(&v60 + 1) = &off_285B61480;
  swift_beginAccess();

  sub_2489BE1C8(&v60, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D68, &qword_248A16C58);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5E88, &qword_248A16CE8);
  v62 = sub_2489CBBD8(&qword_27EEB5E90, &qword_27EEB5E88, &qword_248A16CE8, &unk_248A16BB0);
  *&v60 = v45;
  *(&v60 + 1) = &off_285B61440;

  sub_2489BE1C8(&v60, v47);
  swift_endAccess();
  v48 = sub_248A12D40();
  v49 = v54;
  (*(*(v48 - 8) + 56))(v54, 1, 1, v48);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v37;
  v50[5] = v45;

  sub_2489E5FD4(0, 0, v49, &unk_248A16CF8, v50);

  (*(v57 + 8))(v55, v56);
  return v5;
}

void *sub_2489CB3E4()
{
  v0 = sub_2489C7A4C();
  v1 = sub_2489C671C();
  v3 = v2;
  v4 = sub_2489C81F0();
  v6 = v5;
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D50, &qword_248A16C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A16300;
  v8 = type metadata accessor for GuestUserHandoverServer();
  v9 = swift_allocObject();
  type metadata accessor for GuestUserHandoverServer.NotifyServiceState();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  v9[7] = v10;
  v9[2] = sub_2489C7A4C();
  v9[3] = sub_2489C7CD8();
  v9[4] = v11;
  v9[5] = sub_2489C7F64();
  v9[6] = v12;
  *(inited + 56) = v8;
  *(inited + 64) = &off_285B63050;
  *(inited + 32) = v9;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5D58, &qword_248A181B0);
  *(inited + 104) = &protocol witness table for XPCServer<A>;
  *(inited + 72) = v0;
  *(inited + 136) = swift_getObjectType();
  *(inited + 144) = *(v3 + 8);
  *(inited + 112) = v1;
  *(inited + 176) = swift_getObjectType();
  *(inited + 184) = *(v6 + 8);
  *(inited + 152) = v4;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2489C8E40(inited);
  v13 = swift_unknownObjectRetain();
  v14 = _s13DeviceSharing21EnrollmentAssetServerC026darwinNotificationXPCEventE0AcA06DarwinghE8Protocol_p_tcfC_0(v13, v6);
  v15 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2489C9C68(0, v22[2] + 1, 1, v22);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_2489C9C68((v16 > 1), v17 + 1, 1, v15);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v20 = type metadata accessor for EnrollmentAssetServer();
  v21 = &protocol witness table for EnrollmentAssetServer;
  *&v19 = v14;
  v15[2] = v17 + 1;
  sub_248978948(&v19, &v15[5 * v17 + 4]);
  return v15;
}