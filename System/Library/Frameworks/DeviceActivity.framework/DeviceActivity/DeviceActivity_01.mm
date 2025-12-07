uint64_t sub_237FB84EC(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57A0, &unk_238036550);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410, MEMORY[0x277CD4B00]);
      result = sub_238031E24();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_237FB884C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_238031BE4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5790, &unk_238033C70);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
      result = sub_238031E24();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_237FB8BA8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_238031C44();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5080, &qword_238033C68);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
      result = sub_238031E24();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_237FB8F04(uint64_t a1)
{
  v2 = v1;
  v36 = sub_238031CC4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5780, &qword_238033C60);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
      result = sub_238031E24();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_237FB9260(uint64_t a1)
{
  v2 = v1;
  v36 = sub_238031994();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5020, &qword_238033C08);
  result = sub_238032274();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_238031E24();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_237FB95BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_237FB796C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_238023ABC();
      goto LABEL_16;
    }

    sub_237FBAE30(v8 + 1);
  }

  v10 = *v4;
  sub_2380325B4();
  sub_238031ED4();
  result = sub_2380325F4();
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

      result = sub_2380324E4();
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
  result = sub_238032524();
  __break(1u);
  return result;
}

void sub_237FB973C(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_237FB7BCC(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_238023C18();
        goto LABEL_68;
      }

      sub_237FBB068(v8 + 1);
    }

    v10 = *v4;
    sub_2380325B4();
    sub_2380319B4();
    v11 = sub_2380325F4();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = v11 & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (result)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(result), result);
      v46 = v18;
      v45 = HIDWORD(result) - result;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = result;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(result + 16);
          v28 = *(result + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_237FBC9FC(v21, v20);
              v35 = sub_238031664();
              if (v35)
              {
                v36 = sub_238031684();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_237FBC9FC(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_237FBC9FC(v21, v20);
              v35 = sub_238031664();
              if (v35)
              {
                v37 = sub_238031684();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_238031674();
              result = v42;
              a2 = v43;
              sub_237FCBE14(v35, v42, v43, v51);
              sub_237FA5048(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_237FBC9FC(v21, v20);
            v14 = v47;
          }

          sub_237FCBE14(v51, result, a2, &v50);
          sub_237FA5048(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        sub_238032524();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = result;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
}

uint64_t sub_237FB9BB4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB7E2C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_238023D74();
      goto LABEL_12;
    }

    sub_237FBB2A4(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0, MEMORY[0x277CD4B00]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCCF0(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0, MEMORY[0x277CD4B08]);
      v21 = sub_238031E64();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FB9E58(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB818C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_238023D98();
      goto LABEL_12;
    }

    sub_237FBB5C4(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980, MEMORY[0x277CD4B00]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCCF0(&qword_27DEE5098, &qword_27DEE4FF0, &unk_238033980, MEMORY[0x277CD4B08]);
      v21 = sub_238031E64();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA0FC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB84EC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_238023DBC();
      goto LABEL_12;
    }

    sub_237FBB8E4(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410, MEMORY[0x277CD4B00]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCCF0(&qword_27DEE5090, &qword_27DEE4FE8, &unk_238035410, MEMORY[0x277CD4B08]);
      v21 = sub_238031E64();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA3A0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_238031BE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB884C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23802400C();
      goto LABEL_12;
    }

    sub_237FBBC04(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCC60(&qword_27DEE5088, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC0]);
      v21 = sub_238031E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA644(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_238031C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB8BA8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_238024034();
      goto LABEL_12;
    }

    sub_237FBBF20(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCC60(&qword_27DEE5078, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE0]);
      v21 = sub_238031E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBA8E8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_238031CC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB8F04(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23802405C();
      goto LABEL_12;
    }

    sub_237FBC23C(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCC60(&qword_27DEE5070, MEMORY[0x277CD4B20], MEMORY[0x277CD4B30]);
      v21 = sub_238031E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBAB8C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_238031994();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_237FB9260(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_238024084();
      goto LABEL_12;
    }

    sub_237FBC558(v10 + 1);
  }

  v12 = *v3;
  sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v13 = sub_238031E24();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_237FBCC60(&qword_280C35048, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v21 = sub_238031E64();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_238032524();
  __break(1u);
  return result;
}

uint64_t sub_237FBAE30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5760, &unk_238036530);
  result = sub_238032274();
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
      sub_2380325B4();

      sub_238031ED4();
      result = sub_2380325F4();
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

uint64_t sub_237FBB068(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B0, &qword_238033C98);
  result = sub_238032274();
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
      sub_2380325B4();
      sub_237FBC9FC(v18, v19);
      sub_2380319B4();
      result = sub_2380325F4();
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

uint64_t sub_237FBB2A4(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE57C0, &qword_238036560);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCCF0(&qword_280C34B10, &qword_27DEE4FF8, &unk_2380343E0, MEMORY[0x277CD4B00]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBB5C4(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57B0, &unk_238033C80);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCCF0(&qword_280C34AF8, &qword_27DEE4FF0, &unk_238033980, MEMORY[0x277CD4B00]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBB8E4(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE57A0, &unk_238036550);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCCF0(&qword_280C34AE0, &qword_27DEE4FE8, &unk_238035410, MEMORY[0x277CD4B00]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBBC04(uint64_t a1)
{
  v2 = v1;
  v33 = sub_238031BE4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5790, &unk_238033C70);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCC60(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBBF20(uint64_t a1)
{
  v2 = v1;
  v33 = sub_238031C44();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5080, &qword_238033C68);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCC60(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBC23C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_238031CC4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5780, &qword_238033C60);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCC60(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBC558(uint64_t a1)
{
  v2 = v1;
  v33 = sub_238031994();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5020, &qword_238033C08);
  v7 = sub_238032274();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_237FBCC60(&qword_280C35050, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_238031E24();
      v21 = -1 << *(v7 + 32);
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
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_237FBC874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_237FBC910(a1, a2, a3);
  result = MEMORY[0x2383E51F0](v4, MEMORY[0x277CC9318], v5);
  v11 = result;
  if (v4)
  {
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      sub_237FBC9FC(v9, *v7);
      sub_237FB60B8(v10, v9, v8);
      sub_237FA5048(v10[0], v10[1]);
      v7 += 2;
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

unint64_t sub_237FBC910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5000;
  if (!qword_27DEE5000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5000);
  }

  return result;
}

uint64_t sub_237FBC964(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2383E51F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_237FB5F68(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_237FBC9FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_237FBCA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5008;
  if (!qword_27DEE5008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5008);
  }

  return result;
}

unint64_t sub_237FBCAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5010;
  if (!qword_27DEE5010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5010);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_237FBCB38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237FBCB80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237FBCBCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_237FBCC14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237FBCC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_237FBCCF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_237FBCD7C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_238032214();
    sub_237FBDA34();
    sub_237FBDA80();
    sub_238032094();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_238032224() || (sub_237FBDA34(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_237FBDBF0(v1);
      return;
    }

LABEL_17:
    v12 = [v11 bundleIdentifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_238031EA4();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_237FB5A94(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_237FB5A94((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_237FBCFF4()
{
  result = [objc_allocWithZone(MEMORY[0x277D26568]) init];
  qword_280C356F8 = result;
  return result;
}

uint64_t static DeviceActivityAuthorization.authorizedClientIdentifiers.getter()
{
  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  v0 = [qword_280C356F8 deviceActivity];
  v1 = [v0 allowedClients];

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  sub_237FBDA34();
  sub_237FBDA80();
  v2 = sub_238032074();

  sub_237FBCD7C(v2);
  v4 = v3;

  return v4;
}

uint64_t static DeviceActivityAuthorization.sharingEnabled.getter()
{
  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  v0 = [qword_280C356F8 deviceActivity];
  v1 = [v0 shareAcrossDevices];

  if (!v1)
  {
    return 1;
  }

  v2 = [v1 BOOLValue];

  return v2;
}

id DeviceActivityAuthorization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceActivityAuthorization.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceActivityAuthorization();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceActivityAuthorization.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceActivityAuthorization();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0()
{
  sub_238031EC4();
  v0 = os_variant_allows_internal_security_policies();

  if (!v0)
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_238031E74();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t _s14DeviceActivity0aB13AuthorizationC12isAuthorizedySbSSFZ_0(int64_t a1, int64_t a2)
{
  if (_s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0())
  {
    return 1;
  }

  if (qword_280C356F0 != -1)
  {
    goto LABEL_34;
  }

LABEL_4:
  v5 = [qword_280C356F8 deviceActivity];
  v6 = [v5 allowedClients];

  if (v6)
  {
    sub_237FBDA34();
    sub_237FBDA80();
    v7 = sub_238032074();

    v29 = a1;
    v30 = a2;
    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_238032214();
      sub_238032094();
      v8 = v32;
      v9 = v33;
      v10 = v34;
      v11 = v35;
      v12 = v36;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v9 = v7 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v7 + 56);

      v11 = 0;
      v8 = v7;
    }

    a2 = (v10 + 64) >> 6;
    while (1)
    {
      a1 = v11;
      if (v8 < 0)
      {
        if (!sub_238032224() || (swift_dynamicCast(), (v18 = v31) == 0))
        {
LABEL_30:
          v28 = 0;
          goto LABEL_31;
        }
      }

      else
      {
        v16 = v11;
        v17 = v12;
        if (!v12)
        {
          while (1)
          {
            v11 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v11 >= a2)
            {
              goto LABEL_30;
            }

            v17 = *(v9 + 8 * v11);
            ++v16;
            if (v17)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_34:
          swift_once();
          goto LABEL_4;
        }

LABEL_19:
        v12 = (v17 - 1) & v17;
        v18 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v18)
        {
          goto LABEL_30;
        }
      }

      v19 = [v18 bundleIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = v12;
        v22 = v8;
        v23 = sub_238031EA4();
        v25 = v24;

        if (v23 == v29 && v25 == v30)
        {

          v28 = 1;
          v8 = v22;
          goto LABEL_31;
        }

        v27 = sub_2380324E4();

        v8 = v22;
        v12 = v21;
        if (v27)
        {
          v28 = 1;
LABEL_31:
          sub_237FBDBF0(v8);

          return v28;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

BOOL _s14DeviceActivity0aB13AuthorizationC12isAuthorizedSbvgZ_0()
{
  if (_s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvgZ_0())
  {
    return 1;
  }

  if (qword_280C356F0 != -1)
  {
    swift_once();
  }

  v1 = [qword_280C356F8 deviceActivity];
  v2 = [v1 allowedClients];

  if (v2)
  {
    sub_237FBDA34();
    sub_237FBDA80();
    v3 = sub_238032074();

    sub_237FBCD7C(v3);
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v5 + 16);

  return v6 != 0;
}

unint64_t sub_237FBDA34()
{
  result = qword_280C356E0;
  if (!qword_280C356E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C356E0);
  }

  return result;
}

unint64_t sub_237FBDA80()
{
  result = qword_280C356D8;
  if (!qword_280C356D8)
  {
    sub_237FBDA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C356D8);
  }

  return result;
}

void _s14DeviceActivity0aB13AuthorizationC12isOverriddenSbvsZ_0(char a1)
{
  sub_238031EC4();
  v2 = os_variant_allows_internal_security_policies();

  if (v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_238031E74();
    [v3 setBool:a1 & 1 forKey:v4];
  }
}

id sub_237FBDC28()
{
  v0 = [objc_opt_self() newConnection];
  result = [v0 resume];
  qword_27DEE50C0 = v0;
  return result;
}

void __swiftcall DeviceActivityCenter.init()(DeviceActivity::DeviceActivityCenter *__return_ptr retstr)
{
  if (qword_27DEE4CF8 != -1)
  {
    v4 = retstr;
    swift_once();
    retstr = v4;
  }

  v2 = qword_27DEE50C0;
  retstr->allowShortIntervals = 0;
  retstr->clientIdentifier = 0u;
  retstr->extensionIdentifier = 0u;
  retstr->xpcConnection.super.isa = v2;

  v3 = v2;
}

void __swiftcall DeviceActivityCenter.init(clientIdentifier:extensionIdentifier:)(DeviceActivity::DeviceActivityCenter *__return_ptr retstr, Swift::String clientIdentifier, Swift::String extensionIdentifier)
{
  if (qword_27DEE4CF8 != -1)
  {
    countAndFlagsBits = clientIdentifier._countAndFlagsBits;
    object = clientIdentifier._object;
    v7 = extensionIdentifier._object;
    v8 = extensionIdentifier._countAndFlagsBits;
    v9 = retstr;
    swift_once();
    clientIdentifier._countAndFlagsBits = countAndFlagsBits;
    clientIdentifier._object = object;
    retstr = v9;
    extensionIdentifier._countAndFlagsBits = v8;
    extensionIdentifier._object = v7;
  }

  v4 = qword_27DEE50C0;
  retstr->allowShortIntervals = 0;
  retstr->clientIdentifier.value = clientIdentifier;
  retstr->extensionIdentifier.value = extensionIdentifier;
  retstr->xpcConnection.super.isa = v4;

  MEMORY[0x2821F9908]();
}

uint64_t sub_237FBDDF0()
{
  v1 = v0[1];
  v22 = *v0;
  v23 = v1;
  v24 = v0[2];
  v2 = swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v19 = &type metadata for Feature.FeatureFlags;
    v20 = sub_237FBEFF4(v2, v3, v4);
    LOBYTE(aBlock[0]) = 0;
    v5 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v5 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = MEMORY[0x277D84F90];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v10 = v23;
  *(v9 + 16) = v22;
  *(v9 + 32) = v10;
  *(v9 + 48) = v24;
  *(v9 + 64) = v8;
  v11 = *(&v24 + 1);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  v14[2] = sub_237FC1664;
  v14[3] = v9;
  v14[4] = v12;
  v20 = sub_237FC16DC;
  v21 = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v19 = &block_descriptor_82;
  v15 = _Block_copy(aBlock);

  sub_237FC0E80(&v22, v17);

  [v13 synchronousProxyFromConnection:v11 withRetryCount:1 proxyHandler:v15];
  _Block_release(v15);
  swift_beginAccess();
  if (*(v12 + 16))
  {
    swift_willThrow();
  }

  swift_beginAccess();
  v6 = *(v8 + 16);

  return v6;
}

void sub_237FBE074(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v5 = sub_238031E74();
  }

  else
  {
    v5 = 0;
  }

  v7[4] = sub_237FC16B0;
  v7[5] = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_237FBE648;
  v7[3] = &block_descriptor_85;
  v6 = _Block_copy(v7);

  [a1 fetchActivitiesForClient:v5 replyHandler:v6];
  _Block_release(v6);
}

void sub_237FBE16C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v23[0] = MEMORY[0x277D84F90];
      sub_23800F174(0, v4, 0);
      v5 = v23[0];
      v6 = (a1 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v23[0] = v5;
        v10 = *(v5 + 16);
        v9 = *(v5 + 24);

        if (v10 >= v9 >> 1)
        {
          sub_23800F174((v9 > 1), v10 + 1, 1);
          v5 = v23[0];
        }

        *(v5 + 16) = v10 + 1;
        v11 = v5 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        v6 += 2;
        --v4;
      }

      while (v4);
    }

    swift_beginAccess();
    sub_237FE7624(v5);
    swift_endAccess();
  }

  else
  {
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v13 = sub_238031DB4();
    __swift_project_value_buffer(v13, qword_27DEE95A8);
    v14 = a2;
    v15 = sub_238031D94();
    v16 = sub_2380320F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136446210;
      if (a2)
      {
        v19 = v18;
        v23[3] = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
        v20 = sub_238031EB4();
        v22 = sub_237FDF8EC(v20, v21, v23);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_237FA1000, v15, v16, "Failed to fetch activities:%{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2383E5E30](v19, -1, -1);
        MEMORY[0x2383E5E30](v17, -1, -1);
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
}

id sub_237FBE3E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_23800F194(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_2380321F4();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = v1;
  v26 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v27 = v7;
    v11 = (*(a1 + 48) + 16 * v6);
    v12 = v11[1];
    v28 = *v11;
    v13 = *(*(a1 + 56) + 8 * v6);
    v14 = *(v29 + 16);
    v15 = *(v29 + 24);

    result = v13;
    if (v14 >= v15 >> 1)
    {
      v24 = result;
      sub_23800F194((v15 > 1), v14 + 1, 1);
      result = v24;
    }

    *(v29 + 16) = v14 + 1;
    v16 = (v29 + 24 * v14);
    v16[4] = v28;
    v16[5] = v12;
    v16[6] = result;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v26;
    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 72 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_237FC1560(v6, v26, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_237FC1560(v6, v26, 0);
    }

LABEL_4:
    v7 = v27 + 1;
    v6 = v9;
    if (v27 + 1 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_237FBE648(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_238031F94();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t DeviceActivityCenter.schedule(for:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 5);
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 24);
  v11 = v5;
  v7[0] = v3;
  v7[1] = v4;
  return sub_237FBE738(v7, a2);
}

uint64_t sub_237FBE738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[1];
  v26 = *v2;
  v27 = v6;
  v28 = v2[2];
  result = swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v23 = &type metadata for Feature.FeatureFlags;
    v24 = sub_237FBEFF4(result, v8, v9);
    LOBYTE(aBlock[0]) = 0;
    v10 = sub_238031BA4();
    result = __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      *a2 = 0;
      return result;
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    goto LABEL_3;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v5;
  v13 = v27;
  *(v12 + 32) = v26;
  *(v12 + 48) = v13;
  *(v12 + 64) = v28;
  *(v12 + 80) = v11;
  v14 = *(&v28 + 1);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  v17[2] = sub_237FC164C;
  v17[3] = v12;
  v17[4] = v15;
  v24 = sub_237FC16DC;
  v25 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v23 = &block_descriptor_65;
  v18 = _Block_copy(aBlock);

  sub_237FC0E80(&v26, v21);

  [v16 synchronousProxyFromConnection:v14 withRetryCount:1 proxyHandler:v18];
  _Block_release(v18);
  swift_beginAccess();
  if (*(v15 + 16))
  {
    swift_willThrow();
  }

  swift_beginAccess();
  v19 = *(v11 + 16);
  *a2 = v19;
  v20 = v19;
}

void sub_237FBE9C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_238031E74();
  if (*(a4 + 16))
  {
    v9 = sub_238031E74();
  }

  else
  {
    v9 = 0;
  }

  v11[4] = sub_237FC165C;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_237FBECD4;
  v11[3] = &block_descriptor_68;
  v10 = _Block_copy(v11);

  [a1 fetchScheduleForActivity:v8 withClient:v9 replyHandler:v10];
  _Block_release(v10);
}

void sub_237FBEAD8(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = a1;
    v6 = a1;
  }

  else if (a2)
  {
    v8 = a2;
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v9 = sub_238031DB4();
    __swift_project_value_buffer(v9, qword_27DEE95A8);
    v10 = a2;
    v11 = sub_238031D94();
    v12 = sub_2380320F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136446210;
      v19[3] = a2;
      v15 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v16 = sub_238031EB4();
      v18 = sub_237FDF8EC(v16, v17, v19);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_237FA1000, v11, v12, "Failed to fetch schedule: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2383E5E30](v14, -1, -1);
      MEMORY[0x2383E5E30](v13, -1, -1);
    }

    else
    {
    }
  }
}

void sub_237FBECD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t DeviceActivityCenter.events(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v1[1];
  v25 = *v1;
  v26 = v4;
  v27 = v1[2];
  v5 = swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v22 = &type metadata for Feature.FeatureFlags;
    v23 = sub_237FBEFF4(v5, v6, v7);
    LOBYTE(aBlock[0]) = 0;
    v8 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v8 & 1) == 0)
    {
      return MEMORY[0x277D84F98];
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    return MEMORY[0x277D84F98];
  }

  v10 = MEMORY[0x277D84F98];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v2;
  v13 = v26;
  *(v12 + 32) = v25;
  *(v12 + 48) = v13;
  *(v12 + 64) = v27;
  *(v12 + 80) = v11;
  v14 = *(&v27 + 1);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  v17[2] = sub_237FBF158;
  v17[3] = v12;
  v17[4] = v15;
  v23 = sub_237FC0DAC;
  v24 = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v22 = &block_descriptor;
  v18 = _Block_copy(aBlock);

  sub_237FC0E80(&v25, v20);

  [v16 synchronousProxyFromConnection:v14 withRetryCount:1 proxyHandler:v18];
  _Block_release(v18);
  swift_beginAccess();
  if (*(v15 + 16))
  {
    swift_willThrow();
  }

  swift_beginAccess();
  v9 = *(v11 + 16);

  return v9;
}

unint64_t sub_237FBEFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34B30;
  if (!qword_280C34B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34B30);
  }

  return result;
}

void sub_237FBF048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_238031E74();
  if (*(a4 + 16))
  {
    v9 = sub_238031E74();
  }

  else
  {
    v9 = 0;
  }

  v11[4] = sub_237FC15EC;
  v11[5] = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_237FBF51C;
  v11[3] = &block_descriptor_51;
  v10 = _Block_copy(v11);

  [a1 fetchEventsForActivity:v8 withClient:v9 replyHandler:v10];
  _Block_release(v10);
}

void sub_237FBF168(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = a2;
    if (qword_27DEE4D80 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v46 = a3;
  v47 = v10;
  while (v8)
  {
LABEL_12:
    v17 = __clz(__rbit64(v8)) | (v11 << 6);
    v18 = (*(v10 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    v21 = *(*(v10 + 56) + 8 * v17);
    swift_beginAccess();
    v3 = v21;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a3 + 16);
    v23 = v49;
    *(a3 + 16) = 0x8000000000000000;
    v24 = sub_237FA4E8C(v20, v19);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_31;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_237FCC454(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_237FA4E8C(v20, v19);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_35;
      }

LABEL_17:
      if (v30)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v35 = v24;
    sub_237FCE010();
    v24 = v35;
    if (v30)
    {
LABEL_5:
      v12 = v24;

      v13 = v49;
      v14 = v49[7];
      v15 = *(v14 + 8 * v12);
      *(v14 + 8 * v12) = v3;

      goto LABEL_6;
    }

LABEL_18:
    v13 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v13[6] + 16 * v24);
    *v32 = v20;
    v32[1] = v19;
    *(v13[7] + 8 * v24) = v3;
    v33 = v13[2];
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v28)
    {
      goto LABEL_32;
    }

    v13[2] = v34;
LABEL_6:
    v8 &= v8 - 1;
    a3 = v46;
    *(v46 + 16) = v13;
    swift_endAccess();

    v10 = v47;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v16);
    ++v11;
    if (v8)
    {
      v11 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_24:
  v36 = sub_238031DB4();
  __swift_project_value_buffer(v36, qword_27DEE95A8);
  v37 = v3;
  v38 = sub_238031D94();
  v39 = sub_2380320F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v40 = 136446210;
    if (v3)
    {
      v42 = v41;
      v49 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v43 = sub_238031EB4();
      v45 = sub_237FDF8EC(v43, v44, v48);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_237FA1000, v38, v39, "Failed to fetch events: %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2383E5E30](v42, -1, -1);
      MEMORY[0x2383E5E30](v40, -1, -1);
    }

    else
    {
      __break(1u);
LABEL_35:
      sub_238032534();
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_237FBF51C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_237FC1458();
    v4 = sub_238031DF4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t DeviceActivityCenter.MonitoringError.errorDescription.getter()
{
  v0 = [objc_opt_self() usageTrackingBundle];
  v1 = sub_2380316F4();

  return v1;
}

uint64_t DeviceActivityCenter.MonitoringError.recoverySuggestion.getter()
{
  v0 = [objc_opt_self() usageTrackingBundle];
  v1 = sub_2380316F4();

  return v1;
}

uint64_t DeviceActivityCenter.MonitoringError.hashValue.getter()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t sub_237FBF870()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t sub_237FBF8E4(uint64_t a1)
{
  v2 = *v1;
  sub_2380325B4();
  MEMORY[0x2383E5730](v2);
  return sub_2380325F4();
}

uint64_t DeviceActivityCenter.startMonitoring(_:during:events:)(uint64_t a1, void **a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *a2;
  v16 = v3[1];
  v64 = *v3;
  v17 = v3[2];
  v65 = v16;
  v66 = v17;
  v18 = swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v61 = &type metadata for Feature.FeatureFlags;
    v62 = sub_237FBEFF4(v18, v19, v20);
    LOBYTE(aBlock[0]) = 0;
    v21 = sub_238031BA4();
    v18 = __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v21 & 1) == 0)
    {
LABEL_3:
      sub_237FC0EB8(v18, v19, v20);
      swift_allocError();
      v23 = 4;
LABEL_16:
      *v22 = v23;
      return swift_willThrow();
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    goto LABEL_3;
  }

  v56 = v14;
  v58 = v15;
  v24 = [v15 nextInterval];
  v57 = v13;
  v25 = a3;
  if (v24)
  {
    v26 = v24;
    sub_2380315F4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_238031654();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v10, v27, 1, v28);
  sub_237FC0F0C(v10, v12);
  if ((*(v29 + 48))(v12, 1, v28) == 1)
  {
    v30 = sub_237FA5750(v12, &qword_27DEE50C8, &qword_2380357C0);
    sub_237FC0EB8(v30, v31, v32);
    swift_allocError();
    v23 = 3;
    goto LABEL_16;
  }

  sub_238031644();
  v34 = v33;
  v35 = (*(v29 + 8))(v12, v28);
  if ((v64 & 1) == 0 && v34 < 900.0)
  {
    sub_237FC0EB8(v35, v36, v37);
    swift_allocError();
    v23 = 2;
    goto LABEL_16;
  }

  if (*(v25 + 16) && v34 > 608400.0)
  {
    sub_237FC0EB8(v35, v36, v37);
    swift_allocError();
    v23 = 1;
    goto LABEL_16;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v55 = (v39 + 16);
  v40 = swift_allocObject();
  v41 = v57;
  *(v40 + 16) = v56;
  *(v40 + 24) = v41;
  *(v40 + 32) = v58;
  *(v40 + 40) = v25;
  v42 = v65;
  v43 = v66;
  *(v40 + 48) = v64;
  *(v40 + 64) = v42;
  *(v40 + 80) = v43;
  *(v40 + 96) = v39;
  v44 = *(&v66 + 1);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v56 = objc_opt_self();
  v46 = swift_allocObject();
  v46[2] = sub_237FC0F7C;
  v46[3] = v40;
  v46[4] = v45;
  v62 = sub_237FC16DC;
  v63 = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v61 = &block_descriptor_21;
  v47 = _Block_copy(aBlock);

  v48 = v58;
  sub_237FC0E80(&v64, v59);

  [v56 synchronousProxyFromConnection:v44 withRetryCount:1 proxyHandler:v47];
  _Block_release(v47);
  swift_beginAccess();
  v49 = *(v45 + 16);
  if (v49)
  {
    swift_willThrow();
    v50 = v49;
  }

  else
  {

    v51 = v55;
    swift_beginAccess();
    v52 = *v51;
    if (*v51)
    {
      swift_willThrow();
      v53 = v52;
    }
  }
}

void sub_237FBFEF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_238031E74();
  if (*(sub_237FBE3E8(a5) + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E8, &qword_238033EB8);
    v13 = sub_2380323A4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  aBlock[0] = v13;

  sub_237FC10C8(v14, 1, aBlock);

  sub_237FC1458();
  v15 = sub_238031DE4();

  if (!*(a6 + 16))
  {
    v16 = 0;
    if (*(a6 + 32))
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = sub_238031E74();
  if (!*(a6 + 32))
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_238031E74();
LABEL_9:
  v18 = swift_allocObject();
  v19 = *(a6 + 16);
  *(v18 + 24) = *a6;
  *(v18 + 16) = a7;
  *(v18 + 40) = v19;
  *(v18 + 56) = *(a6 + 32);
  aBlock[4] = sub_237FC14FC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FE7844;
  aBlock[3] = &block_descriptor_48;
  v20 = _Block_copy(aBlock);

  sub_237FC0E80(a6, v21);

  [a1 startMonitoringActivity:v12 withSchedule:a4 events:v15 forClient:v16 withExtension:v17 replyHandler:v20];
  _Block_release(v20);
}

void sub_237FC014C(void *a1, uint64_t a2, _OWORD *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_237FC01D4(a1);

    swift_beginAccess();
    v7 = *(a2 + 16);
    *(a2 + 16) = v6;
  }
}

id sub_237FC01D4(void *a1)
{
  v1 = a1;
  v32 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
  type metadata accessor for USError(0);
  if (swift_dynamicCast())
  {
    v3 = v31;
    v32 = v31;
    sub_237FC1508();
    v4 = sub_238031824();
    if (v31 == 2)
    {
      sub_237FC0EB8(v4, v5, v6);
      v1 = swift_allocError();
      *v19 = 4;
    }

    else if (v31 == 103)
    {
      sub_237FC0EB8(v4, v5, v6);
      v1 = swift_allocError();
      *v7 = 0;
    }

    else
    {
      if (qword_27DEE4D80 != -1)
      {
        swift_once();
      }

      v20 = sub_238031DB4();
      __swift_project_value_buffer(v20, qword_27DEE95A8);
      v1 = v31;
      v21 = sub_238031D94();
      v22 = sub_2380320F4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136446210;
        v25 = v1;
        v26 = sub_238031EB4();
        v28 = sub_237FDF8EC(v26, v27, &v30);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_237FA1000, v21, v22, "System error occurred: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x2383E5E30](v24, -1, -1);
        MEMORY[0x2383E5E30](v23, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v8 = sub_238031DB4();
    __swift_project_value_buffer(v8, qword_27DEE95A8);
    v9 = v1;
    v10 = sub_238031D94();
    v11 = sub_2380320F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v1;
      v32 = v13;
      *v12 = 136446210;
      v14 = v1;
      v15 = sub_238031EB4();
      v17 = sub_237FDF8EC(v15, v16, &v32);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_237FA1000, v10, v11, "System error occurred: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x2383E5E30](v13, -1, -1);
      MEMORY[0x2383E5E30](v12, -1, -1);
    }

    v18 = v1;
  }

  return v1;
}

Swift::Void __swiftcall DeviceActivityCenter.stopMonitoring(_:)(Swift::OpaquePointer a1)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v22 = v1[2];
  v4 = swift_beginAccess();
  if (byte_27DEE58A0 == 2)
  {
    v17 = &type metadata for Feature.FeatureFlags;
    v18 = sub_237FBEFF4(v4, v5, v6);
    LOBYTE(aBlock[0]) = 0;
    v7 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else if ((byte_27DEE58A0 & 1) == 0)
  {
    return;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v21;
  *(v8 + 24) = v20;
  *(v8 + 40) = v9;
  *(v8 + 56) = v22;
  v10 = *(&v22 + 1);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2] = sub_237FC0F90;
  v13[3] = v8;
  v13[4] = v11;
  v18 = sub_237FC16DC;
  v19 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FC0DB8;
  v17 = &block_descriptor_32;
  v14 = _Block_copy(aBlock);

  sub_237FC0E80(&v20, v15);

  [v12 synchronousProxyFromConnection:v10 withRetryCount:1 proxyHandler:v14];
  _Block_release(v14);
  swift_beginAccess();
  if (*(v11 + 16))
  {
    swift_willThrow();
  }
}

void sub_237FC0774(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 16);
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23800F1B4(0, v6, 0);
    v7 = aBlock[0];
    v8 = (a2 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      aBlock[0] = v7;
      v11 = *(v7 + 16);
      v12 = *(v7 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_23800F1B4((v12 > 1), v11 + 1, 1);
        v7 = aBlock[0];
      }

      *(v7 + 16) = v11 + 1;
      v13 = v7 + 16 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 2;
      --v6;
    }

    while (v6);
    v14 = sub_238031F84();

    v5 = a1;
    if (*(a3 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  if (!*(a3 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = sub_238031E74();
LABEL_10:
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  aBlock[4] = sub_237FC10C0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237FE7844;
  aBlock[3] = &block_descriptor_42;
  v17 = _Block_copy(aBlock);

  [v5 stopMonitoringActivities:v14 forClient:v15 replyHandler:v17];
  _Block_release(v17);
}

void sub_237FC0958(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27DEE4D80 != -1)
    {
      swift_once();
    }

    v5 = sub_238031DB4();
    __swift_project_value_buffer(v5, qword_27DEE95A8);
    v6 = a1;

    v7 = sub_238031D94();
    v8 = sub_2380320F4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446466;
      v11 = MEMORY[0x2383E5110](a2, &type metadata for DeviceActivityName);
      v13 = sub_237FDF8EC(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v14 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v15 = sub_238031EB4();
      v17 = sub_237FDF8EC(v15, v16, &v18);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_237FA1000, v7, v8, "Failed to stop monitoring %{public}s: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v10, -1, -1);
      MEMORY[0x2383E5E30](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_237FC0B74(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_237FC157C(a1, v21);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5100, &qword_238033EC8);
    if (swift_dynamicCast())
    {
      a3(v20);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_237FA5750(v21, &qword_27DEE50F8, &qword_238033EC0);
  }

  swift_beginAccess();
  v8 = *(a5 + 16);
  *(a5 + 16) = a2;
  v9 = a2;

  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v10 = sub_238031DB4();
  __swift_project_value_buffer(v10, qword_27DEE95A8);
  v11 = a2;
  v12 = sub_238031D94();
  v13 = sub_2380320F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    if (a2)
    {
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
      v17 = sub_238031EB4();
      v19 = sub_237FDF8EC(v17, v18, &v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_237FA1000, v12, v13, "Failed to create UsageTrackingAgent proxy: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2383E5E30](v16, -1, -1);
      MEMORY[0x2383E5E30](v14, -1, -1);
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

uint64_t sub_237FC0DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_237FC156C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_237FA5750(v10, &qword_27DEE50F8, &qword_238033EC0);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237FC0EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE50D0;
  if (!qword_27DEE50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE50D0);
  }

  return result;
}

uint64_t sub_237FC0F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237FC0FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE50D8;
  if (!qword_27DEE50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE50D8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_237FC100C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237FC1054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_237FC10C8(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_237FA4E8C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_237FCC6F8(v16, v5 & 1);
    v11 = sub_237FA4E8C(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_238032534();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_237FCE17C();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50E0, &qword_238033EB0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2380322B4();
    MEMORY[0x2383E5050](0xD00000000000001BLL, 0x8000000238036CC0);
    sub_238032354();
    MEMORY[0x2383E5050](39, 0xE100000000000000);
    sub_238032364();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_237FA4E8C(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_237FCC6F8(v33, 1);
        v29 = sub_237FA4E8C(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_237FC1458()
{
  result = qword_27DEE50F0;
  if (!qword_27DEE50F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEE50F0);
  }

  return result;
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 72, 7);
}

unint64_t sub_237FC1508()
{
  result = qword_27DEE4F70;
  if (!qword_27DEE4F70)
  {
    type metadata accessor for USError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE4F70);
  }

  return result;
}

uint64_t sub_237FC1560(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

_OWORD *sub_237FC156C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_237FC157C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50F8, &qword_238033EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t DeviceActivityData.device.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeviceActivityData(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 DeviceActivityData.device.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[3].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for DeviceActivityData(0) + 20));

  v6->n128_u64[0] = v3;
  v6->n128_u64[1] = v4;
  result = a1[1];
  v8 = a1[2];
  v6[1] = result;
  v6[2] = v8;
  v6[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_237FC1918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FC19AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t DeviceActivityData.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 28);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeviceActivityData.lastUpdatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 28);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DeviceActivityData.activitySegmentRecordNames.getter()
{
  type metadata accessor for DeviceActivityData(0);
}

uint64_t DeviceActivityData.activitySegmentRecordNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityData.elementFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeviceActivityData(0) + 36);

  return sub_237FC1C9C(v3, a1);
}

uint64_t sub_237FC1C9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DeviceActivityData.elementFetcher.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for DeviceActivityData(0) + 36);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));

  return sub_237FB0034(a1, v1 + v3);
}

uint64_t DeviceActivityData.init(user:device:segmentInterval:lastUpdatedDate:activitySegmentRecordNames:elementFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 48);
  sub_237FC1EC0(a1, a7, type metadata accessor for DeviceActivityData.User);
  v16 = type metadata accessor for DeviceActivityData(0);
  v17 = a7 + v16[5];
  *v17 = v13;
  *(v17 + 8) = v14;
  v18 = *(a2 + 2);
  *(v17 + 16) = *(a2 + 1);
  *(v17 + 32) = v18;
  *(v17 + 48) = v15;
  sub_237FC1EC0(a3, a7 + v16[6], type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v19 = v16[7];
  v20 = sub_238031A64();
  (*(*(v20 - 8) + 32))(a7 + v19, a4, v20);
  *(a7 + v16[8]) = a5;
  v21 = a7 + v16[9];

  return sub_237FB0034(a6, v21);
}

uint64_t sub_237FC1EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237FC1F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2380324E4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_237FC1FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v45 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v11 = MEMORY[0x28223BE20](v45);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v44 = v4;
  v18 = 0;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = a1 + v19;
  v39 = a1 + v19;
  v40 = a2 + v19;
  v21 = *(v14 + 72);
  v42 = v17;
  v37 = v5;
  v38 = v21;
  while (1)
  {
    result = sub_237FC1918(v20 + v21 * v18, v16, type metadata accessor for DeviceActivityData.CategoryActivity);
    if (v18 == v42)
    {
      break;
    }

    v41 = v18;
    sub_237FC1918(v40 + v21 * v18, v13, type metadata accessor for DeviceActivityData.CategoryActivity);
    if ((MEMORY[0x2383E4DA0](v16, v13) & 1) == 0)
    {
      goto LABEL_22;
    }

    if (*&v16[v45[5]] != *&v13[v45[5]])
    {
      goto LABEL_22;
    }

    if ((sub_237FC23F4(*&v16[v45[6]], *&v13[v45[6]]) & 1) == 0)
    {
      goto LABEL_22;
    }

    v23 = v45[7];
    v24 = *&v16[v23];
    v25 = *&v13[v23];
    v26 = *(v24 + 16);
    if (v26 != *(v25 + 16))
    {
      goto LABEL_22;
    }

    if (v26 && v24 != v25)
    {
      v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v28 = v24 + v27;
      v29 = v25 + v27;
      v43 = *(v37 + 72);
      while (1)
      {
        sub_237FC1918(v28, v10, type metadata accessor for DeviceActivityData.WebDomainActivity);
        sub_237FC1918(v29, v8, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v30 = MEMORY[0x2383E4DE0](v10, v8);
        v31 = v44;
        if ((v30 & 1) == 0 || *&v10[*(v44 + 20)] != *&v8[*(v44 + 20)])
        {
          break;
        }

        v32 = v13;
        v33 = v10[*(v44 + 24)];
        sub_237FAB774(v10, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v34 = v8[*(v31 + 24)];
        sub_237FAB774(v8, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v35 = v33 == v34;
        v13 = v32;
        if (!v35)
        {
          goto LABEL_22;
        }

        v29 += v43;
        v28 += v43;
        if (!--v26)
        {
          goto LABEL_6;
        }
      }

      sub_237FAB774(v8, type metadata accessor for DeviceActivityData.WebDomainActivity);
      sub_237FAB774(v10, type metadata accessor for DeviceActivityData.WebDomainActivity);
LABEL_22:
      sub_237FAB774(v13, type metadata accessor for DeviceActivityData.CategoryActivity);
      sub_237FAB774(v16, type metadata accessor for DeviceActivityData.CategoryActivity);
      return 0;
    }

LABEL_6:
    v18 = v41 + 1;
    sub_237FAB774(v13, type metadata accessor for DeviceActivityData.CategoryActivity);
    sub_237FAB774(v16, type metadata accessor for DeviceActivityData.CategoryActivity);
    result = 1;
    v21 = v38;
    v20 = v39;
    if (v18 == v42)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237FC23F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityData.ApplicationActivity(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_237FC1918(v13, v10, type metadata accessor for DeviceActivityData.ApplicationActivity);
        sub_237FC1918(v14, v7, type metadata accessor for DeviceActivityData.ApplicationActivity);
        if ((MEMORY[0x2383E4D40](v10, v7) & 1) == 0 || *&v10[v4[5]] != *&v7[v4[5]] || *&v10[v4[6]] != *&v7[v4[6]] || *&v10[v4[7]] != *&v7[v4[7]])
        {
          break;
        }

        v16 = v10[v4[8]];
        sub_237FAB774(v10, type metadata accessor for DeviceActivityData.ApplicationActivity);
        v17 = v7[v4[8]];
        sub_237FAB774(v7, type metadata accessor for DeviceActivityData.ApplicationActivity);
        if (((v16 ^ v17) & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v18 = v16 ^ v17 ^ 1;
        return v18 & 1;
      }

      sub_237FAB774(v7, type metadata accessor for DeviceActivityData.ApplicationActivity);
      sub_237FAB774(v10, type metadata accessor for DeviceActivityData.ApplicationActivity);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_237FC2644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityData.WebDomainActivity(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_237FC1918(v13, v10, type metadata accessor for DeviceActivityData.WebDomainActivity);
        sub_237FC1918(v14, v7, type metadata accessor for DeviceActivityData.WebDomainActivity);
        if ((MEMORY[0x2383E4DE0](v10, v7) & 1) == 0 || *&v10[*(v4 + 20)] != *&v7[*(v4 + 20)])
        {
          break;
        }

        v16 = v10[*(v4 + 24)];
        sub_237FAB774(v10, type metadata accessor for DeviceActivityData.WebDomainActivity);
        v17 = v7[*(v4 + 24)];
        sub_237FAB774(v7, type metadata accessor for DeviceActivityData.WebDomainActivity);
        if (((v16 ^ v17) & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v18 = v16 ^ v17 ^ 1;
        return v18 & 1;
      }

      sub_237FAB774(v7, type metadata accessor for DeviceActivityData.WebDomainActivity);
      sub_237FAB774(v10, type metadata accessor for DeviceActivityData.WebDomainActivity);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_237FC286C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v97 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v75 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v75 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C8, &unk_2380343F0);
  MEMORY[0x28223BE20](v101);
  v103 = &v75 - v10;
  v102 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v104 = *(v102 - 8);
  v11 = MEMORY[0x28223BE20](v102);
  v13 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v75 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v20 - 8);
  v98 = &v75 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D8, &qword_238034408);
  MEMORY[0x28223BE20](v99);
  v100 = &v75 - v22;
  v105 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v23 = MEMORY[0x28223BE20](v105);
  v107 = (&v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v106 = (&v75 - v26);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_51:
    v74 = 0;
    return v74 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v74 = 1;
    return v74 & 1;
  }

  v76 = v19;
  v85 = v16;
  v28 = 0;
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = a1 + v29;
  v86 = a2 + v29;
  v84 = (v17 + 48);
  v75 = (v17 + 32);
  v77 = (v17 + 8);
  v80 = (v97 + 32);
  v82 = (v97 + 8);
  v31 = *(v25 + 72);
  v32 = v106;
  v94 = v4;
  v81 = v6;
  v83 = v9;
  v95 = v27;
  v79 = a1 + v29;
  v96 = (v97 + 48);
  v78 = v31;
  while (1)
  {
    result = sub_237FC1918(v30 + v31 * v28, v32, type metadata accessor for _DeviceActivityData.CategoryActivity);
    if (v28 == v95)
    {
      break;
    }

    v89 = v28;
    v34 = v107;
    sub_237FC1918(v86 + v31 * v28, v107, type metadata accessor for _DeviceActivityData.CategoryActivity);
    v35 = *v32 == *v34 && v32[1] == v34[1];
    v37 = v102;
    v36 = v103;
    if (!v35 && (sub_2380324E4() & 1) == 0)
    {
      goto LABEL_50;
    }

    v38 = v105[5];
    v39 = v100;
    v40 = *(v99 + 48);
    sub_237FA90E4(v106 + v38, v100, &qword_27DEE51D0, &qword_238034400);
    sub_237FA90E4(v107 + v38, v39 + v40, &qword_27DEE51D0, &qword_238034400);
    v41 = *v84;
    v42 = v85;
    if ((*v84)(v39, 1, v85) == 1)
    {
      if (v41(v39 + v40, 1, v42) != 1)
      {
        goto LABEL_54;
      }

      result = sub_237FA5750(v39, &qword_27DEE51D0, &qword_238034400);
      v43 = v96;
    }

    else
    {
      v44 = v98;
      sub_237FA90E4(v39, v98, &qword_27DEE51D0, &qword_238034400);
      if (v41(v39 + v40, 1, v42) == 1)
      {
        (*v77)(v44, v42);
LABEL_54:
        sub_237FA5750(v39, &qword_27DEE51D8, &qword_238034408);
LABEL_50:
        sub_237FAB774(v107, type metadata accessor for _DeviceActivityData.CategoryActivity);
        sub_237FAB774(v106, type metadata accessor for _DeviceActivityData.CategoryActivity);
        goto LABEL_51;
      }

      v45 = v76;
      (*v75)(v76, v39 + v40, v42);
      sub_237FC8764(&qword_27DEE5098, &qword_27DEE4FF0, &unk_238033980);
      LODWORD(v97) = sub_238031E64();
      v46 = *v77;
      (*v77)(v45, v42);
      v46(v44, v42);
      result = sub_237FA5750(v39, &qword_27DEE51D0, &qword_238034400);
      v43 = v96;
      if ((v97 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (*(v106 + v105[6]) != *(v107 + v105[6]))
    {
      goto LABEL_50;
    }

    v47 = v105[7];
    v48 = *(v106 + v47);
    v49 = *(v107 + v47);
    v50 = *(v48 + 16);
    if (v50 != *(v49 + 16))
    {
      goto LABEL_50;
    }

    if (v50 && v48 != v49)
    {
      v51 = 0;
      v52 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v97 = v48 + v52;
      v92 = v13;
      v93 = v49 + v52;
      v90 = v49;
      v91 = v15;
      v87 = v50;
      v88 = v48;
      while (1)
      {
        v53 = v94;
        if (v51 >= *(v48 + 16))
        {
          break;
        }

        v54 = *(v104 + 72) * v51;
        result = sub_237FC1918(v97 + v54, v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if (v51 >= *(v49 + 16))
        {
          goto LABEL_56;
        }

        sub_237FC1918(v93 + v54, v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        if ((*v15 != *v13 || v15[1] != v13[1]) && (sub_2380324E4() & 1) == 0)
        {
          goto LABEL_49;
        }

        v55 = v37[5];
        v56 = *(v101 + 48);
        sub_237FA90E4(v15 + v55, v36, &qword_27DEE51C0, &unk_238034790);
        sub_237FA90E4(v13 + v55, v36 + v56, &qword_27DEE51C0, &unk_238034790);
        v57 = *v43;
        if ((*v43)(v36, 1, v53) == 1)
        {
          v58 = v57(v36 + v56, 1, v53);
          v15 = v91;
          if (v58 != 1)
          {
            goto LABEL_48;
          }

          sub_237FA5750(v36, &qword_27DEE51C0, &unk_238034790);
          v13 = v92;
          v49 = v90;
        }

        else
        {
          v59 = v83;
          sub_237FA90E4(v36, v83, &qword_27DEE51C0, &unk_238034790);
          if (v57(v36 + v56, 1, v53) == 1)
          {
            (*v82)(v59, v53);
            v15 = v91;
LABEL_48:
            sub_237FA5750(v36, &qword_27DEE51C8, &unk_2380343F0);
            v13 = v92;
LABEL_49:
            sub_237FAB774(v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            sub_237FAB774(v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
            goto LABEL_50;
          }

          v60 = v36 + v56;
          v61 = v81;
          (*v80)(v81, v60, v53);
          sub_237FC8764(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0);
          v62 = sub_238031E64();
          v63 = *v82;
          v64 = v61;
          v36 = v103;
          (*v82)(v64, v53);
          v63(v59, v53);
          v43 = v96;
          sub_237FA5750(v36, &qword_27DEE51C0, &unk_238034790);
          v37 = v102;
          v15 = v91;
          v13 = v92;
          v49 = v90;
          if ((v62 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        v65 = v37[6];
        v66 = (v15 + v65);
        v67 = *(v15 + v65 + 8);
        v68 = (v13 + v65);
        v69 = v68[1];
        if (v67)
        {
          if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_2380324E4() & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        else if (v69)
        {
          goto LABEL_49;
        }

        if (*(v15 + v37[7]) != *(v13 + v37[7]) || *(v15 + v37[8]) != *(v13 + v37[8]) || *(v15 + v37[9]) != *(v13 + v37[9]))
        {
          goto LABEL_49;
        }

        v70 = v37[10];
        v71 = *(v15 + v70);
        v72 = *(v13 + v70);
        sub_237FAB774(v13, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        result = sub_237FAB774(v15, type metadata accessor for _DeviceActivityData.ApplicationActivity);
        v48 = v88;
        if (v71 != v72)
        {
          goto LABEL_50;
        }

        if (v87 == ++v51)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      break;
    }

LABEL_43:
    v32 = v106;
    v73 = v107;
    v74 = sub_237FC3A10(*(v106 + v105[8]), *(v107 + v105[8]));
    sub_237FAB774(v73, type metadata accessor for _DeviceActivityData.CategoryActivity);
    sub_237FAB774(v32, type metadata accessor for _DeviceActivityData.CategoryActivity);
    if (v74)
    {
      v28 = v89 + 1;
      v30 = v79;
      v31 = v78;
      if (v89 + 1 != v95)
      {
        continue;
      }
    }

    return v74 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237FC3438(uint64_t a1, uint64_t a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C8, &unk_2380343F0);
  MEMORY[0x28223BE20](v52);
  v10 = &v42 - v9;
  v11 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v42 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_32:
    v40 = 0;
    return v40 & 1;
  }

  if (v18 && a1 != a2)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v42 = (v4 + 32);
    v43 = v11;
    v44 = (v4 + 8);
    v45 = v8;
    v48 = *(v15 + 72);
    v49 = (v4 + 48);
    while (1)
    {
      sub_237FC1918(v20, v17, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FC1918(v21, v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_2380324E4() & 1) == 0)
      {
        break;
      }

      v51 = v18;
      v23 = v11[5];
      v24 = *(v52 + 48);
      sub_237FA90E4(v17 + v23, v10, &qword_27DEE51C0, &unk_238034790);
      sub_237FA90E4(v14 + v23, &v10[v24], &qword_27DEE51C0, &unk_238034790);
      v25 = *v49;
      if ((*v49)(v10, 1, v53) == 1)
      {
        if (v25(&v10[v24], 1, v53) != 1)
        {
          goto LABEL_30;
        }

        sub_237FA5750(v10, &qword_27DEE51C0, &unk_238034790);
        v26 = v51;
      }

      else
      {
        v27 = v21;
        v28 = v45;
        sub_237FA90E4(v10, v45, &qword_27DEE51C0, &unk_238034790);
        if (v25(&v10[v24], 1, v53) == 1)
        {
          (*v44)(v28, v53);
LABEL_30:
          sub_237FA5750(v10, &qword_27DEE51C8, &unk_2380343F0);
          break;
        }

        v29 = *v42;
        v47 = v20;
        v30 = v50;
        v31 = v53;
        v29(v50, &v10[v24], v53);
        sub_237FC8764(&qword_27DEE50A0, &qword_27DEE4FF8, &unk_2380343E0);
        v46 = sub_238031E64();
        v32 = *v44;
        v33 = v30;
        v20 = v47;
        (*v44)(v33, v31);
        v32(v28, v31);
        sub_237FA5750(v10, &qword_27DEE51C0, &unk_238034790);
        v21 = v27;
        v11 = v43;
        v26 = v51;
        if ((v46 & 1) == 0)
        {
          break;
        }
      }

      v34 = v11[6];
      v35 = (v17 + v34);
      v36 = *(v17 + v34 + 8);
      v37 = (v14 + v34);
      v38 = v37[1];
      if (v36)
      {
        if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_2380324E4() & 1) == 0)
        {
          break;
        }
      }

      else if (v38)
      {
        break;
      }

      if (*(v17 + v11[7]) != *(v14 + v11[7]) || *(v17 + v11[8]) != *(v14 + v11[8]) || *(v17 + v11[9]) != *(v14 + v11[9]))
      {
        break;
      }

      v39 = *(v17 + v11[10]) ^ *(v14 + v11[10]);
      sub_237FAB774(v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      sub_237FAB774(v17, type metadata accessor for _DeviceActivityData.ApplicationActivity);
      if ((v39 & 1) == 0)
      {
        v21 += v48;
        v20 += v48;
        v18 = v26 - 1;
        if (v18)
        {
          continue;
        }
      }

      v40 = v39 ^ 1;
      return v40 & 1;
    }

    sub_237FAB774(v14, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    sub_237FAB774(v17, type metadata accessor for _DeviceActivityData.ApplicationActivity);
    goto LABEL_32;
  }

  v40 = 1;
  return v40 & 1;
}

uint64_t sub_237FC3A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v36 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B8, &qword_2380343D8);
  MEMORY[0x28223BE20](v46);
  v11 = &v36 - v10;
  v47 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v12 = MEMORY[0x28223BE20](v47);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v36 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_23:
    v34 = 0;
    return v34 & 1;
  }

  if (v18 && a1 != a2)
  {
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v43 = (v5 + 48);
    v44 = v4;
    v36 = (v5 + 32);
    v37 = v7;
    v38 = (v5 + 8);
    v41 = *(v15 + 72);
    v42 = v14;
    v22 = &qword_27DEE51B0;
    while (1)
    {
      sub_237FC1918(v20, v17, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FC1918(v21, v14, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      v23 = *v17 == *v14 && v17[1] == v14[1];
      if (!v23 && (sub_2380324E4() & 1) == 0)
      {
        break;
      }

      v24 = v47[5];
      v25 = *(v46 + 48);
      sub_237FA90E4(v17 + v24, v11, v22, &qword_2380343D0);
      sub_237FA90E4(v14 + v24, &v11[v25], v22, &qword_2380343D0);
      v26 = v22;
      v27 = v44;
      v28 = *v43;
      if ((*v43)(v11, 1, v44) == 1)
      {
        if (v28(&v11[v25], 1, v27) != 1)
        {
          goto LABEL_21;
        }

        sub_237FA5750(v11, v22, &qword_2380343D0);
        v14 = v42;
      }

      else
      {
        sub_237FA90E4(v11, v45, v22, &qword_2380343D0);
        if (v28(&v11[v25], 1, v27) == 1)
        {
          (*v38)(v45, v27);
LABEL_21:
          sub_237FA5750(v11, &qword_27DEE51B8, &qword_2380343D8);
          v14 = v42;
          break;
        }

        v29 = v37;
        v30 = &v11[v25];
        v31 = v45;
        (*v36)(v37, v30, v27);
        sub_237FC8764(&qword_27DEE5090, &qword_27DEE4FE8, &unk_238035410);
        v39 = sub_238031E64();
        v40 = v20;
        v32 = *v38;
        (*v38)(v29, v27);
        v32(v31, v27);
        v20 = v40;
        sub_237FA5750(v11, v26, &qword_2380343D0);
        v22 = v26;
        v14 = v42;
        if ((v39 & 1) == 0)
        {
          break;
        }
      }

      if (*(v17 + v47[6]) != *(v14 + v47[6]))
      {
        break;
      }

      v33 = *(v17 + v47[7]) ^ *(v14 + v47[7]);
      sub_237FAB774(v14, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      sub_237FAB774(v17, type metadata accessor for _DeviceActivityData.WebDomainActivity);
      if ((v33 & 1) == 0)
      {
        v21 += v41;
        v20 += v41;
        if (--v18)
        {
          continue;
        }
      }

      v34 = v33 ^ 1;
      return v34 & 1;
    }

    sub_237FAB774(v14, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    sub_237FAB774(v17, type metadata accessor for _DeviceActivityData.WebDomainActivity);
    goto LABEL_23;
  }

  v34 = 1;
  return v34 & 1;
}

uint64_t DeviceActivityData.hash(into:)(uint64_t a1)
{
  v3 = sub_2380317D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  if (*(v1 + 8))
  {
    sub_2380325D4();
    sub_238031ED4();
    if (*(v1 + 24))
    {
LABEL_3:
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2380325D4();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_2380325D4();
LABEL_6:
  v10 = type metadata accessor for DeviceActivityData.User(0);
  sub_237FA90E4(v1 + *(v10 + 24), v9, &qword_27DEE5108, &qword_238033EE0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_2380325D4();
    sub_237FC7580(&qword_27DEE5110, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_238031E34();
    (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x2383E5730](*(v1 + *(v10 + 28)));
  v11 = type metadata accessor for DeviceActivityData(0);
  v12 = v1 + *(v11 + 20);
  v13 = *(v12 + 24);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  sub_238031ED4();
  if (v13)
  {
    sub_2380325D4();
    sub_238031ED4();
    if (v14)
    {
LABEL_11:
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_14;
    }
  }

  else
  {
    sub_2380325D4();
    if (v14)
    {
      goto LABEL_11;
    }
  }

  sub_2380325D4();
LABEL_14:
  MEMORY[0x2383E5730](v15 - 1);
  DeviceActivityFilter.SegmentInterval.hash(into:)(a1);
  sub_238031A64();
  sub_237FC7580(&qword_27DEE5118, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_238031E34();
  v16 = *(v1 + *(v11 + 32));
  result = MEMORY[0x2383E5730](*(v16 + 16));
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = v16 + 40;
    do
    {

      sub_238031ED4();

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t _DeviceActivityData.Metadata.recordName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _DeviceActivityData.Metadata.recordSystemFields.getter()
{
  v1 = *(v0 + 16);
  sub_237FC75C8(v1, *(v0 + 24));
  return v1;
}

uint64_t _DeviceActivityData.Metadata.recordSystemFields.setter(uint64_t a1, uint64_t a2)
{
  result = sub_237FA38D0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _DeviceActivityData.Metadata.device.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for _DeviceActivityData.Metadata(0) + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = *(v3 + 40);
}

__n128 _DeviceActivityData.Metadata.device.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  v5 = a1[3].n128_u64[0];
  v6 = (v1 + *(type metadata accessor for _DeviceActivityData.Metadata(0) + 28));

  v6->n128_u64[0] = v3;
  v6->n128_u64[1] = v4;
  result = a1[1];
  v8 = a1[2];
  v6[1] = result;
  v6[2] = v8;
  v6[3].n128_u64[0] = v5;
  return result;
}

uint64_t _DeviceActivityData.Metadata.segmentInterval.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for _DeviceActivityData.Metadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t _DeviceActivityData.Metadata.segmentInterval.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for _DeviceActivityData.Metadata(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t _DeviceActivityData.Metadata.lastUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DeviceActivityData.Metadata(0) + 36);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _DeviceActivityData.Metadata.lastUpdatedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.Metadata(0) + 36);
  v4 = sub_238031A64();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _DeviceActivityData.Metadata.init(recordName:recordSystemFields:user:device:segmentInterval:lastUpdatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = a6[6];
  v18 = *a7;
  *a9 = a1;
  a9[1] = a2;
  sub_237FA38D0(0, 0xF000000000000000);
  a9[2] = a3;
  a9[3] = a4;
  v19 = type metadata accessor for _DeviceActivityData.Metadata(0);
  sub_237FC1EC0(a5, a9 + v19[6], type metadata accessor for _DeviceActivityData.User);
  v20 = a9 + v19[7];
  *v20 = v15;
  *(v20 + 1) = v16;
  v21 = *(a6 + 2);
  *(v20 + 1) = *(a6 + 1);
  *(v20 + 2) = v21;
  *(v20 + 6) = v17;
  *(a9 + v19[8]) = v18;
  v22 = v19[9];
  v23 = sub_238031A64();
  v24 = *(*(v23 - 8) + 32);

  return v24(a9 + v22, a8, v23);
}

uint64_t sub_237FC49C8()
{
  v1 = *v0;
  v2 = 0x614E64726F636572;
  v3 = 0x656369766564;
  v4 = 0x49746E656D676573;
  if (v1 != 4)
  {
    v4 = 0x616470557473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 1919251317;
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

uint64_t sub_237FC4A98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FC854C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FC4AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FC78BC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FC4B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FC78BC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5120, &qword_238033EE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FC78BC(v9, v10, v11);
  sub_238032614();
  LOBYTE(v29) = 0;
  sub_238032464();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v29 = *(v3 + 16);
    v30 = v12;
    v34 = 1;
    sub_237FC75C8(v29, v12);
    sub_237FC7910(v13, v14, v15);
    sub_238032454();
    sub_237FA38D0(v29, v30);
    v16 = type metadata accessor for _DeviceActivityData.Metadata(0);
    LOBYTE(v29) = 2;
    type metadata accessor for _DeviceActivityData.User(0);
    sub_237FC7580(&qword_280C34F50, type metadata accessor for _DeviceActivityData.User, &protocol conformance descriptor for _DeviceActivityData.User);
    v17 = sub_2380324A4();
    v18 = v3 + *(v16 + 28);
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v29 = *v18;
    v30 = v19;
    v31 = v20;
    v21 = *(v18 + 40);
    v32 = *(v18 + 24);
    v33 = v21;
    v34 = 3;
    sub_237FC7964(v17, v22, v23);

    sub_2380324A4();

    LOBYTE(v29) = *(v3 + *(v16 + 32));
    v34 = 4;
    sub_237FC79B8(v24, v25, v26);
    sub_2380324A4();
    LOBYTE(v29) = 5;
    sub_238031A64();
    sub_237FC7580(&qword_280C35030, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _DeviceActivityData.Metadata.hash(into:)(uint64_t a1)
{
  v2 = sub_2380317D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_238031ED4();
  if (*(v1 + 24) >> 60 == 15)
  {
    sub_2380325D4();
  }

  else
  {
    sub_2380325D4();
    sub_2380319B4();
  }

  v8 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v9 = v1 + v8[6];
  if (*(v9 + 8))
  {
    sub_2380325D4();
    sub_238031ED4();
    if (*(v9 + 24))
    {
LABEL_6:
      sub_2380325D4();
      sub_238031ED4();
      goto LABEL_9;
    }
  }

  else
  {
    sub_2380325D4();
    if (*(v9 + 24))
    {
      goto LABEL_6;
    }
  }

  sub_2380325D4();
LABEL_9:
  v10 = type metadata accessor for _DeviceActivityData.User(0);
  sub_237FA90E4(v9 + *(v10 + 24), v7, &qword_27DEE5108, &qword_238033EE0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    v11 = v18;
    (*(v3 + 32))(v18, v7, v2);
    sub_2380325D4();
    sub_237FC7580(&qword_27DEE5110, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
    sub_238031E34();
    (*(v3 + 8))(v11, v2);
  }

  MEMORY[0x2383E5730](*(v9 + *(v10 + 28)));
  v12 = (v1 + v8[7]);
  v13 = v12[3];
  v14 = v12[5];
  v15 = v12[6];
  sub_238031ED4();
  if (!v13)
  {
    sub_2380325D4();
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_16:
    sub_2380325D4();
    goto LABEL_17;
  }

  sub_2380325D4();
  sub_238031ED4();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_14:
  sub_2380325D4();
  sub_238031ED4();
LABEL_17:
  MEMORY[0x2383E5730](v15);
  MEMORY[0x2383E5730](*(v1 + v8[8]));
  sub_238031A64();
  sub_237FC7580(&qword_27DEE5118, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_238031E34();
}

uint64_t sub_237FC52B8(uint64_t (*a1)(void *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_238031A64();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _DeviceActivityData.User(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5128, &qword_238033EF0);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for _DeviceActivityData.Metadata(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 1) = xmmword_238033ED0;
  v14 = a1[3];
  v49 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_237FC78BC(v15, v16, v17);
  v47 = v10;
  v18 = v48;
  sub_238032604();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    return sub_237FA38D0(0, 0xF000000000000000);
  }

  else
  {
    v19 = v7;
    v48 = v4;
    v21 = v45;
    v20 = v46;
    LOBYTE(v50) = 0;
    v22 = sub_2380323F4();
    v23 = v13;
    *v13 = v22;
    *(v13 + 1) = v24;
    v55 = 1;
    sub_237FA3688(v22, v24, v25);
    sub_2380323E4();
    v26 = v50;
    v27 = v51;
    sub_237FA38D0(0, 0xF000000000000000);
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;
    LOBYTE(v50) = 2;
    sub_237FC7580(&qword_280C352C0, type metadata accessor for _DeviceActivityData.User, &protocol conformance descriptor for _DeviceActivityData.User);
    sub_238032434();
    v28 = sub_237FC1EC0(v19, v23 + v11[6], type metadata accessor for _DeviceActivityData.User);
    v55 = 3;
    sub_237FC7A0C(v28, v29, v30);
    v31 = sub_238032434();
    v32 = v51;
    v33 = v54;
    v34 = v23 + v11[7];
    *v34 = v50;
    *(v34 + 8) = v32;
    v35 = v53;
    *(v34 + 16) = v52;
    *(v34 + 32) = v35;
    *(v34 + 48) = v33;
    v55 = 4;
    sub_237FC7A60(v31, v36, v37);
    sub_238032434();
    *(v23 + v11[8]) = v50;
    LOBYTE(v50) = 5;
    sub_237FC7580(&qword_280C35348, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v38 = v48;
    v39 = v44;
    sub_238032434();
    (*(v21 + 8))(v47, v20);
    (*(v42 + 32))(v23 + v11[9], v38, v39);
    sub_237FC1918(v23, v43, type metadata accessor for _DeviceActivityData.Metadata);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    return sub_237FAB774(v23, type metadata accessor for _DeviceActivityData.Metadata);
  }
}

uint64_t sub_237FC5930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FC5994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t _DeviceActivityData.activitySegmentRecordNames.getter()
{
  type metadata accessor for _DeviceActivityData(0);
}

uint64_t _DeviceActivityData.activitySegmentRecordNames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t _DeviceActivityData.init(metadata:activitySegmentRecordNames:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_237FC1918(a1, a3, type metadata accessor for _DeviceActivityData.Metadata);
  v8 = a2;

  sub_237FC696C(&v8);

  sub_237FAB774(a1, type metadata accessor for _DeviceActivityData.Metadata);
  v6 = v8;
  result = type metadata accessor for _DeviceActivityData(0);
  *(a3 + *(result + 20)) = v6;
  return result;
}

uint64_t static _DeviceActivityData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if ((_s14DeviceActivity01_aB4DataV8MetadataV2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for _DeviceActivityData(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_237FC1F2C(v5, v6);
}

uint64_t sub_237FC5C50()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_237FC5C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2380324E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000238036D80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2380324E4();

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

uint64_t sub_237FC5D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FC7AD4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FC5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FC7AD4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5130, &qword_238033EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FC7AD4(v9, v10, v11);
  sub_238032614();
  v15 = 0;
  type metadata accessor for _DeviceActivityData.Metadata(0);
  sub_237FC7580(&qword_280C34F48, type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
  sub_2380324A4();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for _DeviceActivityData(0) + 20));
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5140, &qword_238033F00);
    sub_237FC7B28(&qword_27DEE5148, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _DeviceActivityData.hash(into:)(uint64_t a1)
{
  _DeviceActivityData.Metadata.hash(into:)(a1);
  v2 = *(v1 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  result = MEMORY[0x2383E5730](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_238031ED4();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _DeviceActivityData.hashValue.getter()
{
  sub_2380325B4();
  _DeviceActivityData.Metadata.hash(into:)(v5);
  v1 = *(v0 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  MEMORY[0x2383E5730](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_238031ED4();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_2380325F4();
}

uint64_t _DeviceActivityData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for _DeviceActivityData.Metadata(0);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5150, &qword_238033F08);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for _DeviceActivityData(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FC7AD4(v12, v13, v14);
  sub_238032604();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v21;
  v16 = v11;
  v26 = 0;
  sub_237FC7580(&qword_280C352A0, type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
  v17 = v22;
  sub_238032434();
  sub_237FC1EC0(v23, v16, type metadata accessor for _DeviceActivityData.Metadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5140, &qword_238033F00);
  v25 = 1;
  sub_237FC7B28(&qword_27DEE5158, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_238032434();
  (*(v15 + 8))(v8, v17);
  *(v16 + *(v9 + 20)) = v24;
  sub_237FC1918(v16, v20, type metadata accessor for _DeviceActivityData);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_237FAB774(v16, type metadata accessor for _DeviceActivityData);
}

uint64_t sub_237FC64C0(uint64_t a1, uint64_t a2)
{
  sub_2380325B4();
  _DeviceActivityData.Metadata.hash(into:)(v8);
  v4 = *(v2 + *(a2 + 20));
  MEMORY[0x2383E5730](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_238031ED4();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return sub_2380325F4();
}

uint64_t sub_237FC6558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static _DeviceActivityData.Metadata.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_237FC1F2C(v7, v8);
}

uint64_t DeviceActivityData.init(_:segmentInterval:elementFetcher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a4;
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for DeviceActivityData.User(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DeviceActivityData.User(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceActivityData(0);
  v39 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _DeviceActivityData.Metadata(0);
  sub_237FC1918(a1 + v16[6], v12, type metadata accessor for _DeviceActivityData.User);
  v17 = *(v6 + 32);
  v18 = sub_2380317D4();
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  *v8 = *v12;
  v19 = *(v12 + 3);
  *(v8 + 8) = *(v12 + 8);
  *(v8 + 3) = v19;
  v20 = *(v10 + 32);

  sub_237FC7B94(&v12[v20], &v8[v17]);
  v21 = *&v12[*(v10 + 36)];
  sub_237FAB774(v12, type metadata accessor for _DeviceActivityData.User);
  v8[*(v6 + 36)] = v21 == 1;
  sub_237FC1EC0(v8, v15, type metadata accessor for DeviceActivityData.User);
  v22 = v37;
  v23 = (v37 + v16[7]);
  v24 = *v23;
  v25 = v23[1];
  v27 = v23[2];
  v26 = v23[3];
  v29 = v23[4];
  v28 = v23[5];
  DeviceActivityData.Device.Model.init(rawValue:)(v23[6], &v42);
  v30 = v42;
  if (v42 == 6)
  {
    v30 = 0;
  }

  v31 = &v15[v13[5]];
  *v31 = v24;
  *(v31 + 1) = v25;
  *(v31 + 2) = v27;
  *(v31 + 3) = v26;
  *(v31 + 4) = v29;
  *(v31 + 5) = v28;
  v31[48] = v30;
  sub_237FC1EC0(v38, &v15[v13[6]], type metadata accessor for DeviceActivityFilter.SegmentInterval);
  v32 = v16[9];
  v33 = v13[7];
  v34 = sub_238031A64();
  (*(*(v34 - 8) + 16))(&v15[v33], v22 + v32, v34);

  sub_237FAB774(v22, type metadata accessor for _DeviceActivityData.Metadata);
  *&v15[v13[8]] = *(v22 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  sub_237FB0034(v40, &v15[v13[9]]);
  v35 = v41;
  sub_237FC1EC0(v15, v41, type metadata accessor for DeviceActivityData);
  return (*(v39 + 56))(v35, 0, 1, v13);
}

uint64_t sub_237FC696C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_238010D44(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_237FC69D8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_237FC69D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2380324B4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_238031FD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_237FC6BA0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237FC6AD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_237FC6AD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2380324E4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_237FC6BA0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_238010D30(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_237FC717C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2380324E4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2380324E4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237FB5990(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_237FB5990((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_237FC717C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_238010D30(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_238010CA4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2380324E4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_237FC717C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2380324E4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2380324E4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s14DeviceActivity0aB4DataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static DeviceActivityData.User.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DeviceActivityData(0);
  v5 = a1 + *(v4 + 20);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 40);
  v9 = *(v5 + 48);
  v25[0] = *v5;
  v25[1] = v6;
  v25[2] = v7;
  v26 = *(v5 + 24);
  v27 = v8;
  v28 = v9;
  v19 = v4;
  v10 = a2 + *(v4 + 20);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  v21[0] = *v10;
  v21[1] = v11;
  v21[2] = v12;
  v22 = *(v10 + 24);
  v23 = v13;
  v24 = v14;
  v20 = _s14DeviceActivity0aB4DataV0A0V2eeoiySbAE_AEtFZ_0(v25, v21);

  if (!v20 || (_s14DeviceActivity0aB6FilterV15SegmentIntervalO2eeoiySbAE_AEtFZ_0(a1 + *(v19 + 24), a2 + *(v19 + 24)) & 1) == 0 || (sub_238031A34() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v19 + 32);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);

  return sub_237FC1F2C(v16, v17);
}

uint64_t sub_237FC7580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_237FC75C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_237FBC9FC(a1, a2);
  }
}

uint64_t _s14DeviceActivity01_aB4DataV8MetadataV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2380324E4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      sub_237FC75C8(a1[2], a1[3]);
      sub_237FC75C8(v8, v7);
      v9 = sub_237FD2814(v6, v5, v8, v7);
      sub_237FA38D0(v8, v7);
      sub_237FA38D0(v6, v5);
      if (v9)
      {
        goto LABEL_12;
      }

      return 0;
    }

LABEL_10:
    sub_237FC75C8(a1[2], a1[3]);
    sub_237FC75C8(v8, v7);
    sub_237FA38D0(v6, v5);
    sub_237FA38D0(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_10;
  }

  sub_237FC75C8(a1[2], a1[3]);
  sub_237FC75C8(v8, v7);
  sub_237FA38D0(v6, v5);
LABEL_12:
  v10 = type metadata accessor for _DeviceActivityData.Metadata(0);
  if ((static _DeviceActivityData.User.== infix(_:_:)(a1 + v10[6], a2 + v10[6]) & 1) == 0)
  {
    return 0;
  }

  v11 = a1 + v10[7];
  v12 = *(v11 + 1);
  v13 = *(v11 + 2);
  v23[0] = *v11;
  v23[1] = v12;
  v23[2] = v13;
  v24 = *(v11 + 24);
  v25 = *(v11 + 40);
  v14 = a2 + v10[7];
  v15 = *(v14 + 1);
  v16 = *(v14 + 2);
  v20[0] = *v14;
  v20[1] = v15;
  v20[2] = v16;
  v18 = *(v14 + 40);
  v21 = *(v14 + 24);
  v22 = v18;
  v19 = _s14DeviceActivity01_aB4DataV0A0V2eeoiySbAE_AEtFZ_0(v23, v20);

  if (!v19 || *(a1 + v10[8]) != *(a2 + v10[8]))
  {
    return 0;
  }

  return sub_238031A34();
}

unint64_t sub_237FC78BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352B8;
  if (!qword_280C352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352B8);
  }

  return result;
}

unint64_t sub_237FC7910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C35038;
  if (!qword_280C35038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35038);
  }

  return result;
}

unint64_t sub_237FC7964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34F80;
  if (!qword_280C34F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34F80);
  }

  return result;
}

unint64_t sub_237FC79B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C34B40;
  if (!qword_280C34B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34B40);
  }

  return result;
}

unint64_t sub_237FC7A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352F0;
  if (!qword_280C352F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352F0);
  }

  return result;
}

unint64_t sub_237FC7A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C35110;
  if (!qword_280C35110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35110);
  }

  return result;
}

unint64_t sub_237FC7AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5138;
  if (!qword_27DEE5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5138);
  }

  return result;
}

uint64_t sub_237FC7B28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5140, &qword_238033F00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237FC7B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5108, &qword_238033EE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_237FC7D04(uint64_t a1)
{
  type metadata accessor for DeviceActivityData.User(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceActivityFilter.SegmentInterval(319);
    if (v2 <= 0x3F)
    {
      sub_238031A64();
      if (v3 <= 0x3F)
      {
        sub_237FC8040(319, &qword_280C350C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_237FC7DFC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_237FC7DFC()
{
  result = qword_27DEE5188;
  if (!qword_27DEE5188)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DEE5188);
  }

  return result;
}

void sub_237FC7E88(uint64_t a1)
{
  type metadata accessor for _DeviceActivityData.Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_237FC8040(319, &qword_280C350C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237FC7F58(uint64_t a1)
{
  sub_237FC8040(319, &qword_280C356C0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for _DeviceActivityData.User(319);
    if (v2 <= 0x3F)
    {
      sub_238031A64();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237FC8040(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s4UserV10FamilyRoleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4UserV10FamilyRoleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s6DeviceV5ModelOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6DeviceV5ModelOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_237FC8340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5190;
  if (!qword_27DEE5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5190);
  }

  return result;
}

unint64_t sub_237FC8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5198;
  if (!qword_27DEE5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5198);
  }

  return result;
}

unint64_t sub_237FC83F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE51A0;
  if (!qword_27DEE51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE51A0);
  }

  return result;
}

unint64_t sub_237FC8448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE51A8;
  if (!qword_27DEE51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE51A8);
  }

  return result;
}

unint64_t sub_237FC84A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352A8;
  if (!qword_280C352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352A8);
  }

  return result;
}

unint64_t sub_237FC84F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C352B0;
  if (!qword_280C352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C352B0);
  }

  return result;
}

uint64_t sub_237FC854C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_2380324E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000238036D60 == a2 || (sub_2380324E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1919251317 && a2 == 0xE400000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_2380324E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746E656D676573 && a2 == 0xEF6C61767265746ELL || (sub_2380324E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEF65746144646574)
  {

    return 5;
  }

  else
  {
    v6 = sub_2380324E4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_237FC8764(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DeviceActivityData.ActivitySegment.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238031654();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DeviceActivityData.ActivitySegment.dateInterval.setter(uint64_t a1)
{
  v3 = sub_238031654();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DeviceActivityData.ActivitySegment.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.totalPickupsWithoutApplicationActivity.setter(uint64_t a1)
{
  result = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.categoryActivities.getter()
{
  type metadata accessor for DeviceActivityData.ActivitySegment(0);
}

uint64_t DeviceActivityData.ActivitySegment.categoryActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityData.ActivitySegment(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.init(dateInterval:totalActivityDuration:longestActivity:firstPickup:totalPickupsWithoutApplicationActivity:categoryActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v13 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  v14 = v13[6];
  v15 = sub_238031654();
  v16 = *(v15 - 8);
  (*(v16 + 56))(a6 + v14, 1, 1, v15);
  v17 = v13[7];
  v18 = sub_238031A64();
  (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  (*(v16 + 32))(a6, a1, v15);
  *(a6 + v13[5]) = a7;
  sub_237FA39BC(a2, a6 + v14, &qword_27DEE50C8, &qword_2380357C0);
  result = sub_237FA39BC(a3, a6 + v17, &qword_27DEE51E0, &qword_2380365F0);
  *(a6 + v13[8]) = a4;
  *(a6 + v13[9]) = a5;
  return result;
}

uint64_t DeviceActivityData.ActivitySegment.hash(into:)(uint64_t a1)
{
  v3 = sub_238031A64();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_238031654();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  sub_237FA38E4(&qword_27DEE51E8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_238031E34();
  v15 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  v16 = *(v1 + v15[5]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x2383E5750](*&v16);
  sub_237FA90E4(v1 + v15[6], v14, &qword_27DEE50C8, &qword_2380357C0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_2380325D4();
    sub_238031E34();
    (*(v9 + 8))(v11, v8);
  }

  sub_237FA90E4(v1 + v15[7], v7, &qword_27DEE51E0, &qword_2380365F0);
  v18 = v23;
  v17 = v24;
  if ((*(v23 + 48))(v7, 1, v24) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    v19 = v22;
    (*(v18 + 32))(v22, v7, v17);
    sub_2380325D4();
    sub_237FA38E4(&qword_27DEE5118, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_238031E34();
    (*(v18 + 8))(v19, v17);
  }

  MEMORY[0x2383E5730](*(v1 + v15[8]));
  return sub_237FD1160(a1, *(v1 + v15[9]));
}

uint64_t _DeviceActivityData.ActivitySegment.recordName.getter()
{
  v0 = sub_238031A64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  sub_238031634();
  sub_2380319E4();
  (*(v1 + 8))(v3, v0);
  return sub_238032054();
}

uint64_t _DeviceActivityData.ActivitySegment.recordSystemFields.getter()
{
  v1 = *v0;
  sub_237FC75C8(*v0, *(v0 + 8));
  return v1;
}

uint64_t _DeviceActivityData.ActivitySegment.recordSystemFields.setter(uint64_t a1, uint64_t a2)
{
  result = sub_237FA38D0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.recordZoneName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _DeviceActivityData.ActivitySegment.dateInterval.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 24);
  v4 = sub_238031654();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _DeviceActivityData.ActivitySegment.totalActivityDuration.setter(double a1)
{
  result = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.totalPickupsWithoutApplicationActivity.setter(uint64_t a1)
{
  result = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.categoryActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _DeviceActivityData.ActivitySegment(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.init(recordSystemFields:recordZoneName:dateInterval:totalActivityDuration:longestActivity:firstPickup:totalPickupsWithoutApplicationActivity:categoryActivities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = xmmword_238033ED0;
  v16 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v17 = v16[7];
  v18 = sub_238031654();
  v19 = *(v18 - 8);
  (*(v19 + 56))(&a9[v17], 1, 1, v18);
  v20 = v16[8];
  v21 = sub_238031A64();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  sub_237FA38D0(*a9, *(a9 + 1));
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  (*(v19 + 16))(&a9[v16[6]], a5, v18);
  *&a9[v16[9]] = a10;
  sub_237FD3ACC(a6, &a9[v17], &qword_27DEE50C8, &qword_2380357C0);
  sub_237FD3ACC(a7, &a9[v20], &qword_27DEE51E0, &qword_2380365F0);
  *&a9[v16[10]] = a8;
  v28 = a11;

  sub_237FCBD6C(&v28);

  sub_237FA5750(a7, &qword_27DEE51E0, &qword_2380365F0);
  sub_237FA5750(a6, &qword_27DEE50C8, &qword_2380357C0);
  result = (*(v19 + 8))(a5, v18);
  *&a9[v16[11]] = v28;
  return result;
}

uint64_t _DeviceActivityData.ActivitySegment.update(using:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v3 - 8);
  v173 = &v153 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51F0, &qword_238034410);
  MEMORY[0x28223BE20](v5 - 8);
  v166 = &v153 - v6;
  v174 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v177 = *(v174 - 8);
  v7 = MEMORY[0x28223BE20](v174);
  v176 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v153 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v179 = &v153 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v178 = (&v153 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v153 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v153 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v162 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v164 = (&v153 - v24);
  v167 = sub_238031A64();
  v172 = *(v167 - 8);
  v25 = MEMORY[0x28223BE20](v167);
  v159 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v171 = &v153 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v158 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v153 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v153 - v34;
  v36 = sub_238031654();
  v175 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v156 = &v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v153 - v40;
  MEMORY[0x28223BE20](v39);
  v161 = &v153 - v42;
  v43 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  *(v1 + v43[9]) = *(a1 + v43[9]) + *(v1 + v43[9]);
  v44 = v43[10];
  v45 = *(a1 + v44);
  v46 = *(v1 + v44);
  v47 = __OFADD__(v46, v45);
  v48 = v46 + v45;
  if (v47)
  {
    goto LABEL_72;
  }

  v49 = v43;
  v165 = v11;
  *(v1 + v44) = v48;
  v50 = v43[7];
  v169 = a1;
  sub_237FA90E4(a1 + v50, v35, &qword_27DEE50C8, &qword_2380357C0);
  v51 = *(v175 + 48);
  v52 = v51(v35, 1, v36);
  v168 = v49;
  v163 = v1;
  if (v52 == 1)
  {
    sub_237FA5750(v35, &qword_27DEE50C8, &qword_2380357C0);
    v53 = v1;
LABEL_11:
    v70 = v172;
    v71 = v164;
    goto LABEL_12;
  }

  v154 = v41;
  v155 = v18;
  v54 = (v175 + 32);
  v55 = v161;
  v157 = *(v175 + 32);
  v157(v161, v35, v36);
  v56 = v49[7];
  v57 = v1;
  sub_237FA90E4(v1 + v56, v33, &qword_27DEE50C8, &qword_2380357C0);
  v160 = v36;
  if (v51(v33, 1, v36) == 1)
  {
    sub_237FA5750(v33, &qword_27DEE50C8, &qword_2380357C0);
    sub_237FA5750(v1 + v56, &qword_27DEE50C8, &qword_2380357C0);
    v58 = (v1 + v56);
    v59 = v160;
    v157(v58, v55, v160);
    (*(v175 + 56))(v57 + v56, 0, 1, v59);
    v53 = v57;
LABEL_10:
    v18 = v155;
    goto LABEL_11;
  }

  v60 = v154;
  v61 = v33;
  v62 = v160;
  v157(v154, v61, v160);
  v63 = v158;
  sub_2380315C4();
  if (v51(v63, 1, v62) != 1)
  {
    v73 = v63;
    v74 = v175;
    v75 = *(v175 + 8);
    v76 = v160;
    v75(v60, v160);
    v75(v55, v76);
    v77 = v156;
    v78 = v73;
    v79 = v157;
    v157(v156, v78, v76);
    v80 = v163;
    sub_237FA5750(v163 + v56, &qword_27DEE50C8, &qword_2380357C0);
    v79(v80 + v56, v77, v76);
    v53 = v80;
    (*(v74 + 56))(v80 + v56, 0, 1, v76);
    goto LABEL_10;
  }

  v156 = v54;
  sub_237FA5750(v63, &qword_27DEE50C8, &qword_2380357C0);
  sub_238031644();
  v65 = v64;
  sub_238031644();
  v67 = v66;
  v68 = v175;
  v69 = *(v175 + 8);
  v69(v60, v160);
  v70 = v172;
  v71 = v164;
  if (v67 >= v65)
  {
    v69(v55, v160);
    v53 = v163;
  }

  else
  {
    v53 = v163;
    sub_237FA5750(v163 + v56, &qword_27DEE50C8, &qword_2380357C0);
    v72 = v160;
    v157((v53 + v56), v55, v160);
    (*(v68 + 56))(v53 + v56, 0, 1, v72);
  }

  v18 = v155;
LABEL_12:
  v81 = v168;
  sub_237FA90E4(v169 + v168[8], v71, &qword_27DEE51E0, &qword_2380365F0);
  v11 = *(v70 + 6);
  v82 = v167;
  if ((v11)(v71, 1, v167) == 1)
  {
    sub_237FA5750(v71, &qword_27DEE51E0, &qword_2380365F0);
  }

  else
  {
    v175 = *(v70 + 4);
    (v175)(v171, v71, v82);
    v83 = v81[8];
    v84 = v162;
    sub_237FA90E4(v53 + v83, v162, &qword_27DEE51E0, &qword_2380365F0);
    if ((v11)(v84, 1, v82) == 1)
    {
      v11 = &qword_2380365F0;
      sub_237FA5750(v84, &qword_27DEE51E0, &qword_2380365F0);
      sub_237FA5750(v53 + v83, &qword_27DEE51E0, &qword_2380365F0);
      (v175)(v53 + v83, v171, v82);
      (*(v172 + 7))(v53 + v83, 0, 1, v82);
    }

    else
    {
      v85 = v159;
      (v175)(v159, v84, v82);
      v86 = sub_238031A14();
      v87 = v82;
      v11 = (v172 + 8);
      v88 = *(v172 + 1);
      v89 = v85;
      v90 = v87;
      v88(v89, v87);
      if (v86)
      {
        sub_237FA5750(v53 + v83, &qword_27DEE51E0, &qword_2380365F0);
        (v175)(v53 + v83, v171, v90);
        (*(v172 + 7))(v53 + v83, 0, 1, v90);
      }

      else
      {
        v88(v171, v90);
      }
    }
  }

  v162 = v81[11];
  v91 = *(v53 + v162);
  v92 = sub_237FD38D0(MEMORY[0x277D84F90]);
  v93 = *(v91 + 2);
  v171 = v91;
  v175 = v93;
  if (v93)
  {
    v94 = 0;
    v172 = &v91[(*(v177 + 80) + 32) & ~*(v177 + 80)];
    v170 = v20;
    do
    {
      if (v94 >= *(v91 + 2))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        sub_238032534();
        __break(1u);
LABEL_74:

        __break(1u);
        return result;
      }

      v96 = *(v177 + 72);
      sub_237FA4CFC(&v172[v96 * v94], v20, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v98 = *v20;
      v97 = v20[1];
      v99 = v20;
      v100 = v18;
      sub_237FA4CFC(v99, v18, type metadata accessor for _DeviceActivityData.CategoryActivity);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v92;
      v103 = sub_237FA4EA4(v98, v97, sub_237FA4F28);
      v104 = v92[2];
      v105 = (v102 & 1) == 0;
      v106 = v104 + v105;
      if (__OFADD__(v104, v105))
      {
        goto LABEL_67;
      }

      v11 = v102;
      if (v92[3] >= v106)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v92 = v180;
          if (v102)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_237FCE758();
          v92 = v180;
          if (v11)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_237FCD02C(v106, isUniquelyReferenced_nonNull_native);
        v107 = sub_237FA4EA4(v98, v97, sub_237FA4F28);
        if ((v11 & 1) != (v108 & 1))
        {
          goto LABEL_73;
        }

        v103 = v107;
        v92 = v180;
        if (v11)
        {
LABEL_21:
          v95 = v92[7] + v103 * v96;
          v18 = v100;
          sub_237FD3B34(v100, v95);
          goto LABEL_22;
        }
      }

      v92[(v103 >> 6) + 8] |= 1 << v103;
      v109 = (v92[6] + 16 * v103);
      *v109 = v98;
      v109[1] = v97;
      v110 = v92[7] + v103 * v96;
      v18 = v100;
      sub_237FA9354(v100, v110, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v111 = v92[2];
      v47 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v47)
      {
        goto LABEL_70;
      }

      v92[2] = v112;

LABEL_22:
      ++v94;
      v20 = v170;
      sub_237FA4DCC(v170, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v91 = v171;
    }

    while (v175 != v94);
  }

  v11 = *(v169 + v168[11]);
  v170 = *(v11 + 16);
  if (v170)
  {
    v113 = 0;
    v175 = 0;
    v169 = v11 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
    v168 = (v177 + 56);
    v164 = (v177 + 48);
    v114 = v166;
    v115 = v174;
    v167 = v11;
    while (1)
    {
      if (v113 >= *(v11 + 16))
      {
        goto LABEL_68;
      }

      v116 = v178;
      v117 = *(v177 + 72);
      sub_237FA4CFC(v169 + v117 * v113, v178, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v118 = *v116;
      v119 = v116[1];
      if (v92[2] && (v120 = sub_237FA4EA4(*v116, v116[1], sub_237FA4F28), (v121 & 1) != 0))
      {
        sub_237FA4CFC(v92[7] + v120 * v117, v114, type metadata accessor for _DeviceActivityData.CategoryActivity);
        (*v168)(v114, 0, 1, v115);
        sub_237FA9354(v114, v179, type metadata accessor for _DeviceActivityData.CategoryActivity);
      }

      else
      {
        v172 = v117;
        (*v168)(v114, 1, 1, v115);
        v122 = v118;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
        v124 = v119;
        v125 = *(*(v123 - 8) + 56);
        v126 = v173;
        v125(v173, 1, 1, v123);
        v127 = *(v174 + 20);
        v128 = v165;
        v129 = v123;
        v118 = v122;
        v125(v165 + v127, 1, 1, v129);
        v119 = v124;
        *v128 = v122;
        v128[1] = v124;

        v130 = v126;
        v115 = v174;
        sub_237FD3ACC(v130, v128 + v127, &qword_27DEE51D0, &qword_238034400);
        *(v128 + v115[6]) = 0;
        v131 = MEMORY[0x277D84F90];
        v180 = MEMORY[0x277D84F90];
        v11 = v175;
        sub_237FAA928(&v180, type metadata accessor for _DeviceActivityData.ApplicationActivity, sub_237FAABC8, sub_237FAAC14);
        if (v11)
        {
          goto LABEL_74;
        }

        *(v128 + v115[7]) = v180;
        v180 = v131;
        sub_237FAA928(&v180, type metadata accessor for _DeviceActivityData.WebDomainActivity, sub_237FAAFD8, sub_237FAB024);
        v175 = 0;
        sub_237FA5750(v173, &qword_27DEE51D0, &qword_238034400);
        v132 = v179;
        *(v128 + v115[8]) = v180;
        sub_237FA9354(v128, v132, type metadata accessor for _DeviceActivityData.CategoryActivity);
        v114 = v166;
        if ((*v164)(v166, 1, v115) != 1)
        {
          sub_237FA5750(v114, &qword_27DEE51F0, &qword_238034410);
        }

        v117 = v172;
      }

      v133 = v179;
      _DeviceActivityData.CategoryActivity.update(using:)(v178);
      sub_237FA4CFC(v133, v176, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v92;
      v11 = v118;
      v135 = v118;
      v136 = v119;
      v137 = sub_237FA4EA4(v135, v119, sub_237FA4F28);
      v139 = v92[2];
      v140 = (v138 & 1) == 0;
      v47 = __OFADD__(v139, v140);
      v141 = v139 + v140;
      if (v47)
      {
        goto LABEL_69;
      }

      v142 = v138;
      if (v92[3] < v141)
      {
        break;
      }

      if (v134)
      {
        goto LABEL_52;
      }

      v147 = v137;
      sub_237FCE758();
      v137 = v147;
      v92 = v180;
      if (v142)
      {
LABEL_37:
        sub_237FD3B34(v176, v92[7] + v137 * v117);
        sub_237FA4DCC(v179, type metadata accessor for _DeviceActivityData.CategoryActivity);
        goto LABEL_38;
      }

LABEL_53:
      v92[(v137 >> 6) + 8] |= 1 << v137;
      v144 = (v92[6] + 16 * v137);
      *v144 = v11;
      v144[1] = v136;
      sub_237FA9354(v176, v92[7] + v137 * v117, type metadata accessor for _DeviceActivityData.CategoryActivity);

      sub_237FA4DCC(v179, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v145 = v92[2];
      v47 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (v47)
      {
        goto LABEL_71;
      }

      v92[2] = v146;
LABEL_38:
      v113 = (v113 + 1);
      sub_237FA4DCC(v178, type metadata accessor for _DeviceActivityData.CategoryActivity);
      v11 = v167;
      if (v170 == v113)
      {
        goto LABEL_58;
      }
    }

    sub_237FCD02C(v141, v134);
    v137 = sub_237FA4EA4(v11, v136, sub_237FA4F28);
    if ((v142 & 1) != (v143 & 1))
    {
      goto LABEL_73;
    }

LABEL_52:
    v92 = v180;
    if (v142)
    {
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  v175 = 0;
LABEL_58:
  v148 = v92[2];
  if (!v148)
  {
    goto LABEL_61;
  }

  v149 = sub_237FCC2D0(v92[2], 0, &qword_27DEE5038, &unk_238033C20, type metadata accessor for _DeviceActivityData.CategoryActivity);
  v150 = sub_237FD0DC4(&v180, v149 + ((*(v177 + 80) + 32) & ~*(v177 + 80)), v148, v92, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity, type metadata accessor for _DeviceActivityData.CategoryActivity);
  v151 = v180;
  swift_bridgeObjectRetain_n();
  sub_237FBDBF0(v151);
  if (v150 != v148)
  {
    __break(1u);
LABEL_61:

    v149 = MEMORY[0x277D84F90];
  }

  v180 = v149;
  v11 = v175;
  sub_237FCBD6C(&v180);
  if (v11)
  {
    goto LABEL_74;
  }

  result = swift_bridgeObjectRelease_n();
  *(v163 + v162) = v180;
  return result;
}

uint64_t sub_237FCADF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_237FD4C48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_237FCAE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FA3634(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_237FCAE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237FA3634(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t _DeviceActivityData.ActivitySegment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51F8, &qword_238034418);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237FA3634(v9, v10, v11);
  sub_238032614();
  v12 = v3[1];
  v18 = *v3;
  v19 = v12;
  v20 = 0;
  sub_237FC75C8(v18, v12);
  sub_237FC7910(v13, v14, v15);
  sub_238032454();
  if (v2)
  {
    sub_237FA38D0(v18, v19);
  }

  else
  {
    sub_237FA38D0(v18, v19);
    LOBYTE(v18) = 1;
    sub_238032464();
    v16 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
    LOBYTE(v18) = 2;
    sub_238031654();
    sub_237FA38E4(&qword_280C35078, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
    sub_2380324A4();
    LOBYTE(v18) = 3;
    sub_238032454();
    LOBYTE(v18) = 4;
    sub_238031A64();
    sub_237FA38E4(&qword_280C35030, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_238032454();
    LOBYTE(v18) = 5;
    sub_238032484();
    LOBYTE(v18) = 6;
    sub_238032494();
    v18 = *(v3 + *(v16 + 44));
    v20 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5200, &qword_238034420);
    sub_237FA3A24(&qword_280C34A78, &qword_280C34FB8, &protocol conformance descriptor for _DeviceActivityData.CategoryActivity, MEMORY[0x277D83948]);
    sub_2380324A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _DeviceActivityData.ActivitySegment.hash(into:)(uint64_t a1)
{
  v3 = sub_238031A64();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_238031654();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  if (*(v1 + 8) >> 60 == 15)
  {
    sub_2380325D4();
  }

  else
  {
    sub_2380325D4();
    sub_2380319B4();
  }

  sub_238031ED4();
  v15 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  sub_237FA38E4(&qword_27DEE51E8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_238031E34();
  sub_237FA90E4(v1 + v15[7], v14, &qword_27DEE50C8, &qword_2380357C0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_2380325D4();
    sub_238031E34();
    (*(v9 + 8))(v11, v8);
  }

  sub_237FA90E4(v1 + v15[8], v7, &qword_27DEE51E0, &qword_2380365F0);
  v17 = v23;
  v16 = v24;
  if ((*(v23 + 48))(v7, 1, v24) == 1)
  {
    sub_2380325D4();
  }

  else
  {
    v18 = v22;
    (*(v17 + 32))(v22, v7, v16);
    sub_2380325D4();
    sub_237FA38E4(&qword_27DEE5118, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_238031E34();
    (*(v17 + 8))(v18, v16);
  }

  v19 = *(v1 + v15[9]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x2383E5750](*&v19);
  MEMORY[0x2383E5730](*(v1 + v15[10]));
  return sub_237FD19B4(a1, *(v1 + v15[11]));
}

uint64_t sub_237FCB6BC(uint64_t (*a1)(void *))
{
  sub_2380325B4();
  a1(v3);
  return sub_2380325F4();
}

uint64_t sub_237FCB734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_2380325B4();
  a3(v5);
  return sub_2380325F4();
}

uint64_t sub_237FCB798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_2380325B4();
  a4(v6);
  return sub_2380325F4();
}

uint64_t DeviceActivityData.ActivitySegment.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5210, &qword_238034430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v48 = type metadata accessor for DeviceActivityData.CategoryActivity(0);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v40 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for DeviceActivityData.ActivitySegment(0);
  v42 = *(v13 - 1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 24);
  v44 = v17;
  v18 = sub_238031654();
  v19 = *(v18 - 8);
  (*(v19 + 56))(&v16[v17], 1, 1, v18);
  v20 = v13[7];
  v21 = sub_238031A64();
  (*(*(v21 - 8) + 56))(&v16[v20], 1, 1, v21);
  v22 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  (*(v19 + 16))(v16, a1 + v22[6], v18);
  *&v16[v13[5]] = *(a1 + v22[9]);
  sub_237FD3ACC(a1 + v22[7], &v16[v44], &qword_27DEE50C8, &qword_2380357C0);
  sub_237FD3ACC(a1 + v22[8], &v16[v20], &qword_27DEE51E0, &qword_2380365F0);
  v23 = *(a1 + v22[10]);
  v43 = v13;
  v44 = a1;
  v24 = v13[8];
  v41 = v16;
  *&v16[v24] = v23;
  v25 = *(a1 + v22[11]);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v28 = *(v40 + 72);
    v29 = (v46 + 48);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_237FA4CFC(v27, v12, type metadata accessor for _DeviceActivityData.CategoryActivity);
      sub_237FA4CFC(v12, v10, type metadata accessor for _DeviceActivityData.CategoryActivity);
      DeviceActivityData.CategoryActivity.init(_:)(v10, v5);
      sub_237FA4DCC(v12, type metadata accessor for _DeviceActivityData.CategoryActivity);
      if ((*v29)(v5, 1, v48) == 1)
      {
        sub_237FA5750(v5, &qword_27DEE5210, &qword_238034430);
      }

      else
      {
        sub_237FA9354(v5, v47, type metadata accessor for DeviceActivityData.CategoryActivity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_237FB5DB8(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = v46;
        if (v32 >= v31 >> 1)
        {
          v34 = sub_237FB5DB8((v31 > 1), v32 + 1, 1, v30);
          v33 = v46;
          v30 = v34;
        }

        v30[2] = v32 + 1;
        sub_237FA9354(v47, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32, type metadata accessor for DeviceActivityData.CategoryActivity);
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  sub_237FA4DCC(v44, type metadata accessor for _DeviceActivityData.ActivitySegment);
  v35 = v43;
  v36 = v41;
  *&v41[v43[9]] = v30;
  v37 = v45;
  sub_237FA4CFC(v36, v45, type metadata accessor for DeviceActivityData.ActivitySegment);
  (*(v42 + 56))(v37, 0, 1, v35);
  return sub_237FA4DCC(v36, type metadata accessor for DeviceActivityData.ActivitySegment);
}

uint64_t sub_237FCBD6C(uint64_t *a1)
{
  v2 = *(type metadata accessor for _DeviceActivityData.CategoryActivity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238010D58(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_237FCEFBC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_237FCBE14@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_238031664();
    if (v10)
    {
      v11 = sub_238031684();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_238031674();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_238031664();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_238031684();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_238031674();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_237FCC044(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_237FD275C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_237FA5048(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_237FCBE14(v13, a3, a4, &v12);
  v10 = v4;
  sub_237FA5048(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}