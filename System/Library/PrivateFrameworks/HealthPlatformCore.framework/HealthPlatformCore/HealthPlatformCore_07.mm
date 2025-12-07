uint64_t sub_2287B490C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2287B68C0(0);
  result = sub_2287CB9F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_2287CBD80();
    _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    sub_2287CB290();

    result = sub_2287CBDB0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2287B4B24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2287B6B04(0, &qword_280DE35C8, MEMORY[0x277D84098]);
  result = sub_2287CB9F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2287CBD80();

    sub_2287CB290();
    result = sub_2287CBDB0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2287B4D58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2287C9B20();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2287B6A84(0, &qword_280DE18F0, MEMORY[0x277D11E28], sub_2287B6A08, MEMORY[0x277D84098]);
  result = sub_2287CB9F0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_2287B6A08();
    result = sub_2287CB1B0();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2287B5088(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2287B6650(0, &qword_280DE18E8, MEMORY[0x277D84098]);
  result = sub_2287CB9F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2287CB7E0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2287B528C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2287B6974(0);
  result = sub_2287CB9F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2287CB7E0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_2287B5474(uint64_t a1, uint64_t a2)
{

  return sub_2287B54E4(a1, a2, sub_2287B5BB0, sub_2287B5BB0);
}

void *sub_2287B54E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_2287B56C0(v15, v10, a2, a1, a4);

    MEMORY[0x22AABFD90](v15, -1, -1);
  }

  return v13;
}

void *sub_2287B56C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

unint64_t sub_2287B5758(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v44 = result;
  if (a4[2] >= *(a3 + 16))
  {
    v23 = 0;
    v24 = a3 + 56;
    v25 = 1 << *(a3 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v47 = 0;
    v49 = v26 & *(a3 + 56);
    v42 = (v25 + 63) >> 6;
    v27 = a4 + 7;
LABEL_28:
    while (v49)
    {
      v28 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v29 = v28 | (v23 << 6);
LABEL_35:
      v46 = v29;
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v32 = ~(-1 << *(a4 + 32));
      v33 = result & v32;
      if ((*(v27 + (((result & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v32)))
      {
        while (1)
        {
          v34 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
          v36 = v35;
          if (v34 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v36 == v37)
          {
            break;
          }

          v39 = sub_2287CBD00();

          if (v39)
          {
            goto LABEL_44;
          }

          v33 = (v33 + 1) & v32;
          if (((*(v27 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_49;
        }

        ++v47;
      }
    }

    v30 = v23;
    v4 = a3;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v42)
      {
LABEL_46:

        return sub_2287B490C(v44, a2, v47, v4);
      }

      v31 = *(v24 + 8 * v23);
      ++v30;
      if (v31)
      {
        v49 = (v31 - 1) & v31;
        v29 = __clz(__rbit64(v31)) | (v23 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a4[7];
    v6 = a4 + 7;
    v7 = v8;
    v9 = 1 << *(v6 - 24);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v45 = v10 & v7;
    v47 = 0;
    v40 = (v9 + 63) >> 6;
    v41 = v6;
    v48 = a3 + 56;
LABEL_6:
    while (v45)
    {
      v45 &= v45 - 1;
LABEL_13:
      sub_2287CBD80();
      _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
      sub_2287CB290();

      result = sub_2287CBDB0();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = 1 << (result & v13);
      if ((v16 & *(v48 + 8 * v15)) != 0)
      {
        while (1)
        {
          v17 = _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
          v19 = v18;
          if (v17 == _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0() && v19 == v20)
          {
            break;
          }

          v22 = sub_2287CBD00();

          if (v22)
          {
            goto LABEL_22;
          }

          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v4 = a3;
          v16 = 1 << v14;
          if (((1 << v14) & *(v48 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v44[v15] |= v16;
        v4 = a3;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_50;
        }

        ++v47;
      }
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v40)
      {
        goto LABEL_46;
      }

      v12 = v41[v5];
      ++v11;
      if (v12)
      {
        v45 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2287B5BB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v61 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v76 = (v61 - v14);
  result = MEMORY[0x28223BE20](v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_2287B4D58(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_2287B6A08();
          v55 = sub_2287CB1B0();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_2287B6A3C(&qword_280DE3428, MEMORY[0x277D11E28], MEMORY[0x277D11E38]);
              v59 = sub_2287CB200();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_2287B6A08();
          v34 = sub_2287CB1B0();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_2287B6A3C(&qword_280DE3428, MEMORY[0x277D11E28], MEMORY[0x277D11E38]);
              v40 = sub_2287CB200();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2287B63C0(uint64_t a1)
{
  if (!qword_27D850EE8)
  {
    sub_2287C9700();
    sub_22870D3A8(255, &qword_280DE35A0, MEMORY[0x277D84948]);
    v1 = sub_2287CBE10();
    if (!v2)
    {
      atomic_store(v1, &qword_27D850EE8);
    }
  }
}

uint64_t sub_2287B6440(uint64_t a1)
{
  sub_2287B63C0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2287B64D0()
{
  result = qword_280DDFF38;
  if (!qword_280DDFF38)
  {
    sub_2287B6A84(255, &qword_280DDFF40, MEMORY[0x277D11E78], sub_2287B649C, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDFF38);
  }

  return result;
}

uint64_t sub_2287B656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2287063C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2287B65DC()
{
  result = qword_27D850EF0;
  if (!qword_27D850EF0)
  {
    sub_2287B6B04(255, &qword_280DDFF30, MEMORY[0x277D83B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D850EF0);
  }

  return result;
}

void sub_2287B6650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_228703004(255, &qword_280DE3638, 0x277CCD720);
    v7 = sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2287B66EC(uint64_t a1, uint64_t a2)
{
  sub_2287B63C0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_2Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_2287B6840(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287063C8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2287B68C0(uint64_t a1)
{
  if (!qword_280DDFE80)
  {
    sub_22872C4EC();
    v1 = sub_2287CBA00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE80);
    }
  }
}

void sub_2287B6974(uint64_t a1)
{
  if (!qword_280DE18E0)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_22872C220(&qword_280DE1970, &qword_280DE3870, 0x277CCD7C8);
    v1 = sub_2287CBA00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18E0);
    }
  }
}

uint64_t sub_2287B6A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2287B6A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2287B6B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2287B6B84()
{
  sub_2287CA140();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63B0 = v1;
}

void sub_2287B6C04()
{
  if (qword_280DE37E8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63B0;
  v1 = *(sub_2287C9F30() + 16);

  sub_228795C5C(v1);
  v3 = v2;

  qword_280DE63B8 = v3;
}

uint64_t HealthExperienceStoreFeedItemContext.fetchPluginStorage(havingUniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21 = *v3;
  sub_228740FBC();
  sub_22870558C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2287CE0A0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2287043F8();
  *(v7 + 64) = v9;
  strcpy((v7 + 32), "plugin.package");
  *(v7 + 47) = -18;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v10 = sub_2287C9A70();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x80000002287CFCA0;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;

  v12 = sub_2287CB550();
  v13 = sub_2287C9C00();
  (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  v14 = *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = v12;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v21;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2287B73A8;
  *(v16 + 24) = v15;
  aBlock[4] = sub_22877E1B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_13;
  v17 = _Block_copy(aBlock);

  v18 = v12;

  [v14 performBlockAndWait_];

  _Block_release(v17);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

uint64_t HealthExperienceStoreFeedItemContext.fetchAllPluginStorage()()
{
  sub_228740FBC();
  sub_22870558C(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCFF0;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_2287043F8();
  *(v1 + 64) = v3;
  strcpy((v1 + 32), "plugin.package");
  *(v1 + 47) = -18;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v4 = sub_2287C9A70();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  v6 = sub_2287CB550();
  v7 = sub_2287B73D0(v6);

  return v7;
}

uint64_t sub_2287B7094(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2287CAA50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287B791C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9A60();
  if (sub_2287CA300())
  {
    sub_2287C9C10();
    v17 = sub_2287C9C00();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    return sub_2287B7974(v16, a5);
  }

  else
  {
    sub_2287CA9D0();

    v19 = sub_2287CAA40();
    v20 = sub_2287CB610();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = a3;
      v22 = v21;
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v22 = 136446722;
      v32[1] = a6;
      swift_getMetatypeMetadata();
      v23 = sub_2287CB250();
      v25 = sub_2287031D8(v23, v24, v32);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v26 = HealthExperienceStoreFeedItemContext.description.getter();
      v28 = sub_2287031D8(v26, v27, v32);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2082;
      *(v22 + 24) = sub_2287031D8(v30, a4, v32);
      _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s]: No plugin storage found in context %{public}s, identifier %{public}s", v22, 0x20u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v29, -1, -1);
      MEMORY[0x22AABFD90](v22, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287B73D0(uint64_t a1)
{
  v2 = v1;
  sub_2287C9A60();
  v4 = sub_2287C9A40();
  [v4 setPredicate_];
  v13 = MEMORY[0x277D84F90];
  v5 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext);
  v6 = swift_allocObject();
  v6[2] = &v13;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2287B7910;
  *(v7 + 24) = v6;
  aBlock[4] = sub_2287B79DC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_13;
  v8 = _Block_copy(aBlock);

  v9 = v4;

  [v5 performBlockAndWait_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_2287B7590(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2287C9C00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_2287C9A60();
  v11 = sub_2287CB7B0();
  v12 = v11;
  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:

    v14 = MEMORY[0x277D84F90];
LABEL_17:
    *a1 = v14;
  }

  v13 = sub_2287CB920();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  sub_2287136AC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v14 = v26;
    if ((v12 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v13; ++i)
      {
        MEMORY[0x22AABF120](i, v12);
        sub_2287C9C10();
        v26 = v14;
        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2287136AC((v16 > 1), v17 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v17 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v10, v4);
      }
    }

    else
    {
      v18 = 32;
      do
      {
        v19 = *(v12 + v18);
        sub_2287C9C10();
        v26 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2287136AC((v20 > 1), v21 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v21 + 1;
        (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v8, v4);
        v18 += 8;
        --v13;
      }

      while (v13);
    }

    a1 = v24;
    goto LABEL_17;
  }

  __break(1u);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_2287CBA20();
  MEMORY[0x22AABE980](0xD00000000000002ALL, 0x80000002287D35A0);
  v25 = v13;
  sub_22870D3A8(0, &qword_280DE35A0, MEMORY[0x277D84948]);
  sub_2287CBB30();
  result = sub_2287CBB90();
  __break(1u);
  return result;
}

void sub_2287B791C(uint64_t a1)
{
  if (!qword_280DE3420)
  {
    sub_2287C9C00();
    v1 = sub_2287CB820();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE3420);
    }
  }
}

uint64_t sub_2287B7974(uint64_t a1, uint64_t a2)
{
  sub_2287B791C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.__allocating_init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue) = a1;
  v9 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v10 = sub_2287C9E70();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v12 = sub_2287C9ED0();
  (*(*(v12 - 8) + 32))(v8 + v11, a4, v12);
  sub_22871AC0C(a2, v8 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo);
  return v8;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v4 = sub_2287C9E70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2287B7B58()
{
  v1 = sub_2287C9E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2287B7FA8(0);
  v16 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  sub_2287C9E80();
  sub_2287010E4(v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo, &v18);
  v19 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue);
  v9 = v19;
  (*(v2 + 16))(&v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v8, v1);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = swift_allocObject();
  (*(v2 + 32))(v11 + v10, &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_2287B8014();
  sub_228718330();
  v12 = v9;
  sub_2287CAF70();

  sub_228718384(v17);
  sub_2287B80F8();
  v13 = v16;
  v14 = sub_2287CAF40();
  (*(v5 + 8))(v7, v13);
  return v14;
}

uint64_t sub_2287B7DC8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_2287C9E70();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v8 = sub_2287C9CE0();
  v9 = MEMORY[0x277D11EA0];
  a3[3] = v8;
  a3[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(a3);

  return sub_2287C9CC0();
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.init(queue:pluginInfo:domain:context:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue) = a1;
  v8 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v9 = sub_2287C9E70();
  (*(*(v9 - 8) + 32))(v4 + v8, a3, v9);
  v10 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v11 = sub_2287C9ED0();
  (*(*(v11 - 8) + 32))(v4 + v10, a4, v11);
  sub_22871AC0C(a2, v4 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo);
  return v4;
}

void sub_2287B7FA8(uint64_t a1)
{
  if (!qword_280DE0660)
  {
    sub_2287B8014();
    sub_228718330();
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0660);
    }
  }
}

unint64_t sub_2287B8014()
{
  result = qword_280DE3358;
  if (!qword_280DE3358)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE3358);
  }

  return result;
}

uint64_t sub_2287B8078@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(sub_2287C9E70() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2287B7DC8(v5, a2);
}

unint64_t sub_2287B80F8()
{
  result = qword_280DE0668;
  if (!qword_280DE0668)
  {
    sub_2287B7FA8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0668);
  }

  return result;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo));
  v3 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerationOperationToGeneratorPipelineAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo));
  v3 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2287B8330@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain;
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GenerationOperationToGeneratorPipelineAdaptor(uint64_t a1)
{
  result = qword_280DE08A0;
  if (!qword_280DE08A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2287B8400(uint64_t a1)
{
  result = sub_2287C9E70();
  if (v2 <= 0x3F)
  {
    result = sub_2287C9ED0();
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

void *ProfileDashboardsFeedPopulationListener.__allocating_init<A>(sourceProfilePublisher:healthExperienceStore:submissionScheduler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_2287BC348(a1, a2, a3, a4, a5);
  v12 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, a4, a5, v11);
  (*(*(v12 - 8) + 8))(a3, v12);
  return v10;
}

void *ProfileDashboardsFeedPopulationListener.init<A>(sourceProfilePublisher:healthExperienceStore:submissionScheduler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2287BC348(a1, a2, a3, a4, a5);
  v10 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, a4, a5, v9);
  (*(*(v10 - 8) + 8))(a3, v10);
  return v8;
}

uint64_t sub_2287B8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  static FeedPopulationListenerSupport.makeThrottledFeedItemSubmissionPublisher<A>(config:)(a1, a3, a4, &protocol witness table for ProfileDashboardsFeedPopulationListener, a5);
  swift_allocObject();
  swift_weakInit();
  sub_2287BCA54(0);
  sub_2287BC758(&qword_280DE0280, sub_2287BCA54, MEMORY[0x277CBCD90]);
  v5 = sub_2287CB050();

  return v5;
}

uint64_t sub_2287B875C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2287C9A90();

    sub_2287BA040(a1);

    sub_2287C9AA0();
  }

  return result;
}

uint64_t sub_2287B87F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = *(*result + 16);
  v6 = *result + 32;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v3)
    {
      *a2 = v7;
      return result;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    v8 = *(v6 + 8 * v3++);
    if (v8)
    {
      v9 = v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2287134A0(0, *(v7 + 16) + 1, 1);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2287134A0((v10 > 1), v11 + 1, 1);
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287B88F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2287CAA50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_2287C9A90();

    sub_2287CA9E0();

    v11 = sub_2287CAA40();
    v12 = sub_2287CB610();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = v5;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23[0] = v15;
      *v14 = 136315394;
      v23[4] = a3;
      swift_getMetatypeMetadata();
      v16 = sub_2287CB250();
      v18 = sub_2287031D8(v16, v17, v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = MEMORY[0x22AABEA80](v9, MEMORY[0x277D11E90]);
      v21 = sub_2287031D8(v19, v20, v23);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_2286FF000, v11, v12, "[%s]: Received new source profiles, creating new feed population managers for %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v15, -1, -1);
      MEMORY[0x22AABFD90](v14, -1, -1);

      (*(v6 + 8))(v8, v22);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    sub_2287B98D4(v9);

    sub_2287C9AA0();
  }

  return result;
}

void sub_2287B8B88()
{
  if (!v0[8])
  {
    v1 = v0[9];
    if (v1)
    {
      v2 = v0[10];

      v4 = v1(v3);
      sub_228714BC0(v1, v2);
    }

    else
    {
      v4 = 0;
    }

    v0[8] = v4;
  }
}

void sub_2287B8C2C(uint64_t a1)
{
  sub_2287C9A90();
  swift_beginAccess();
  v2 = *(v1 + 96);

  sub_2287C9AA0();
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v27 = v2;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v6)
  {
    v28 = v9;
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = *(*(v27 + 48) + 8 * v11);
    v13 = *(*(v27 + 56) + 16 * v11 + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 24);
    v16 = v12;
    swift_unknownObjectRetain();
    v17 = v15(ObjectType, v13);
    swift_unknownObjectRelease();

    v18 = *(v17 + 16);
    v9 = v28;
    v19 = *(v28 + 2);
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > *(v28 + 3) >> 1)
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v9 = sub_2287238A0(isUniquelyReferenced_nonNull_native, v22, 1, v28);
    }

    v6 &= v6 - 1;
    if (*(v17 + 16))
    {
      v23 = *(v9 + 2);
      if ((*(v9 + 3) >> 1) - v23 < v18)
      {
        goto LABEL_27;
      }

      memcpy(&v9[v23 + 32], (v17 + 32), v18);

      if (v18)
      {
        v24 = *(v9 + 2);
        v25 = __OFADD__(v24, v18);
        v26 = v24 + v18;
        if (v25)
        {
          goto LABEL_28;
        }

        *(v9 + 2) = v26;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v28 = v9;
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_2287B8E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v25 = *v3;
  v26 = a2;
  v4 = sub_2287CB080();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2287CB0E0();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CB090();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9A90();
  swift_beginAccess();
  v14 = v3[12];

  sub_2287C9AA0();
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = sub_228723C14(*(v14 + 16), 0);
  v17 = sub_22872A394(aBlock, v16 + 2, v15, v14);
  sub_22870B3D4(aBlock[0]);
  if (v17 != v15)
  {
    __break(1u);
LABEL_4:

    v16 = MEMORY[0x277D84F90];
  }

  sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851B0], v10);
  v18 = sub_2287CB6E0();
  (*(v11 + 8))(v13, v10);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = v16;
  v19[3] = v21;
  v22 = v28;
  v19[4] = v20;
  v19[5] = v22;
  v19[6] = v25;
  aBlock[4] = sub_2287BC730;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_14;
  v23 = _Block_copy(aBlock);

  sub_2287CB0A0();
  v31 = MEMORY[0x277D84F90];
  sub_2287BC758(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2287723C0(0);
  sub_2287BC758(&qword_280DE3A08, sub_2287723C0, MEMORY[0x277D83970]);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v9, v6, v23);
  _Block_release(v23);

  (*(v30 + 8))(v6, v4);
  (*(v7 + 8))(v9, v29);
}

void sub_2287B92D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v55[1] = a4;
  v56 = a3;
  v61 = sub_2287C9810();
  v7 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2287CAA50();
  v57 = *(v67 - 8);
  v9 = MEMORY[0x28223BE20](v67);
  v55[0] = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v55 - v11;
  v68 = dispatch_group_create();
  v14 = *(a1 + 16);
  if (v14)
  {
    v66 = (v57 + 8);
    v59 = (v7 + 8);
    v15 = (a1 + 40);
    *&v13 = 136315650;
    v58 = v13;
    v69 = v12;
    do
    {
      v32 = *v15;
      swift_unknownObjectRetain();
      sub_2287CA9E0();
      swift_unknownObjectRetain();

      v44 = sub_2287CAA40();
      v45 = sub_2287CB610();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v44, v45))
      {
        v16 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v70 = v65;
        *v16 = v58;
        v71 = v62;
        swift_getMetatypeMetadata();
        v17 = sub_2287CB250();
        v64 = v44;
        v19 = sub_2287031D8(v17, v18, &v70);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        ObjectType = swift_getObjectType();
        v21 = (*(v32 + 16))(ObjectType, v32);
        v22 = [v21 profileIdentifier];

        v23 = [v22 identifier];
        v24 = v60;
        sub_2287C97F0();

        sub_2287BC758(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v63 = v45;
        v25 = v32;
        v26 = a2;
        v27 = v61;
        v28 = sub_2287CBCC0();
        v30 = v29;
        v31 = v27;
        a2 = v26;
        v32 = v25;
        (*v59)(v24, v31);
        v33 = sub_2287031D8(v28, v30, &v70);

        *(v16 + 14) = v33;
        *(v16 + 22) = 2080;
        v34 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D121B8]);
        v36 = sub_2287031D8(v34, v35, &v70);

        *(v16 + 24) = v36;
        v37 = v64;
        _os_log_impl(&dword_2286FF000, v64, v63, "[%s]: Sending population request to populationManager for profile %s and kinds: %s", v16, 0x20u);
        v38 = v65;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v38, -1, -1);
        MEMORY[0x22AABFD90](v16, -1, -1);

        (*v66)(v69, v67);
      }

      else
      {

        (*v66)(v12, v67);
      }

      v39 = v68;
      dispatch_group_enter(v68);
      v40 = swift_getObjectType();
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      v42 = *(v32 + 40);
      v43 = v39;
      v42(a2, sub_22879F5AC, v41, v40, v32);
      swift_unknownObjectRelease();

      v15 += 2;
      --v14;
      v12 = v69;
    }

    while (v14);
  }

  sub_2287CB660();
  v46 = v55[0];
  sub_2287CAA20();
  v47 = sub_2287CAA40();
  v48 = sub_2287CB610();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v70 = v50;
    *v49 = 136315138;
    v71 = v62;
    swift_getMetatypeMetadata();
    v51 = sub_2287CB250();
    v53 = sub_2287031D8(v51, v52, &v70);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_2286FF000, v47, v48, "[%s]: All population complete!", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AABFD90](v50, -1, -1);
    MEMORY[0x22AABFD90](v49, -1, -1);
  }

  v54 = (*(v57 + 8))(v46, v67);
  v56(v54);
}

uint64_t sub_2287B98D4(uint64_t a1)
{
  v2 = v1;
  v88 = *v2;
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = &v84 - v9;
  swift_beginAccess();
  v11 = v2[12];
  v2[12] = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
  }

  v13 = (a1 + 32);
  v92 = (v5 + 8);
  *&v10 = 136315394;
  v86 = v10;
  v87 = v4;
  v93 = v8;
  v90 = v11;
  while (1)
  {
    v15 = *v13;
    v94 = v13 + 1;
    v16 = *(v11 + 16);
    v17 = v15;
    if (v16)
    {
      v18 = sub_228756C9C(v15);
      if (v19)
      {
        v89 = *(*(v11 + 56) + 16 * v18);
        v91 = v89;
        swift_unknownObjectRetain();
        v20 = v85;
        sub_2287CA9E0();
        v21 = v17;
        v22 = sub_2287CAA40();
        v23 = sub_2287CB610();

        v24 = os_log_type_enabled(v22, v23);
        v84 = v21;
        if (v24)
        {
          v25 = v21;
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v95 = v27;
          *v26 = v86;
          v96 = v88;
          swift_getMetatypeMetadata();
          v28 = sub_2287CB250();
          v30 = sub_2287031D8(v28, v29, &v95);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2080;
          v31 = v25;
          v32 = sub_2287C9C50();
          v34 = v33;

          v35 = v32;
          v4 = v87;
          v36 = sub_2287031D8(v35, v34, &v95);
          v11 = v90;

          *(v26 + 14) = v36;
          v8 = v93;
          _os_log_impl(&dword_2286FF000, v22, v23, "[%s]: Reusing existing population manager for sourceProfile %s", v26, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AABFD90](v27, -1, -1);
          MEMORY[0x22AABFD90](v26, -1, -1);

          (*v92)(v85, v4);
        }

        else
        {

          (*v92)(v20, v4);
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v2[12];
        v70 = v95;
        v2[12] = 0x8000000000000000;
        v71 = sub_228756C9C(v15);
        v73 = *(v70 + 16);
        v74 = (v72 & 1) == 0;
        v61 = __OFADD__(v73, v74);
        v75 = v73 + v74;
        if (v61)
        {
          goto LABEL_38;
        }

        v76 = v72;
        if (*(v70 + 24) >= v75)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = v71;
            sub_2287BC1DC();
            v71 = v80;
            v78 = v95;
            if (v76)
            {
              goto LABEL_28;
            }

            goto LABEL_32;
          }
        }

        else
        {
          sub_2287BB5E4(v75, isUniquelyReferenced_nonNull_native);
          v71 = sub_228756C9C(v15);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_40;
          }
        }

        v78 = v95;
        if (v76)
        {
LABEL_28:
          *(v78[7] + 16 * v71) = v89;

          swift_unknownObjectRelease();
LABEL_34:
          v2[12] = v78;
          swift_endAccess();
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_32:
        v78[(v71 >> 6) + 8] |= 1 << v71;
        *(v78[6] + 8 * v71) = v15;
        *(v78[7] + 16 * v71) = v89;
        v81 = v78[2];
        v61 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v61)
        {
          goto LABEL_39;
        }

        v78[2] = v82;
        goto LABEL_34;
      }
    }

    sub_2287CA9E0();
    v37 = v17;
    v38 = sub_2287CAA40();
    v39 = sub_2287CB610();

    v40 = os_log_type_enabled(v38, v39);
    v91 = v37;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v95 = v42;
      *v41 = v86;
      v96 = v88;
      swift_getMetatypeMetadata();
      v43 = sub_2287CB250();
      v45 = sub_2287031D8(v43, v44, &v95);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = v37;
      v47 = sub_2287C9C50();
      v49 = v48;

      v50 = v47;
      v4 = v87;
      v51 = sub_2287031D8(v50, v49, &v95);

      *(v41 + 14) = v51;
      _os_log_impl(&dword_2286FF000, v38, v39, "[%s]: Creating new population manager for sourceProfile %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v42, -1, -1);
      MEMORY[0x22AABFD90](v41, -1, -1);

      (*v92)(v93, v4);
    }

    else
    {

      (*v92)(v8, v4);
    }

    v52 = (*(*v2 + 288))(v15);
    v54 = v53;
    swift_beginAccess();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v2[12];
    v56 = v95;
    v2[12] = 0x8000000000000000;
    v57 = sub_228756C9C(v15);
    v59 = *(v56 + 16);
    v60 = (v58 & 1) == 0;
    v61 = __OFADD__(v59, v60);
    v62 = v59 + v60;
    if (v61)
    {
      break;
    }

    v63 = v58;
    if (*(v56 + 24) < v62)
    {
      sub_2287BB5E4(v62, v55);
      v57 = sub_228756C9C(v15);
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_40;
      }

LABEL_18:
      v65 = v95;
      if ((v63 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_3;
    }

    if (v55)
    {
      goto LABEL_18;
    }

    v79 = v57;
    sub_2287BC1DC();
    v57 = v79;
    v65 = v95;
    if ((v63 & 1) == 0)
    {
LABEL_19:
      v65[(v57 >> 6) + 8] |= 1 << v57;
      *(v65[6] + 8 * v57) = v15;
      v66 = (v65[7] + 16 * v57);
      *v66 = v52;
      v66[1] = v54;
      v67 = v65[2];
      v61 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v61)
      {
        goto LABEL_37;
      }

      v65[2] = v68;
      goto LABEL_4;
    }

LABEL_3:
    v14 = (v65[7] + 16 * v57);
    *v14 = v52;
    v14[1] = v54;

    swift_unknownObjectRelease();
LABEL_4:
    v2[12] = v65;
    swift_endAccess();
    v8 = v93;
    v11 = v90;
LABEL_5:
    --v12;
    v13 = v94;
    if (!v12)
    {
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_2287CBD30();
  __break(1u);
  return result;
}

void sub_2287BA040(uint64_t a1)
{
  v2 = v1;
  v52 = *v2;
  v57 = sub_2287CAA50();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v7 = sub_2287CA1A0();
  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v58 = v7;
  v59 = v2 + 12;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  swift_beginAccess();
  v13 = 0;
  v14 = (v10 + 63) >> 6;
  v56 = (v4 + 8);
  *&v15 = 136315650;
  v51 = v15;
  v53 = v2;
  v50 = v6;
  while (v12)
  {
    v16 = v13;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(*(v58 + 48) + ((v16 << 9) | (8 * v17)));
    v19 = *v59;
    v20 = *(*v59 + 16);
    v21 = v18;
    if (v20)
    {

      v22 = sub_228756C9C(v18);
      if ((v23 & 1) == 0)
      {

        goto LABEL_14;
      }

      v24 = v6;
      v25 = *(*(v19 + 56) + 16 * v22 + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v27 = *(v25 + 48);
      v28 = v25;
      v6 = v24;
      v27(v49, ObjectType, v28);

      swift_unknownObjectRelease();
      v13 = v16;
    }

    else
    {
LABEL_14:
      sub_2287CAA20();
      v29 = v6;
      v30 = v21;

      v31 = sub_2287CAA40();
      v32 = sub_2287CB5F0();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v54 = v32;
        v34 = v33;
        v55 = swift_slowAlloc();
        v60 = v55;
        *v34 = v51;
        v61 = v52;
        swift_getMetatypeMetadata();
        v35 = sub_2287CB250();
        v36 = v31;
        v38 = sub_2287031D8(v35, v37, &v60);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = v30;
        v40 = sub_2287C9C50();
        v42 = v41;

        v43 = sub_2287031D8(v40, v42, &v60);

        *(v34 + 14) = v43;
        *(v34 + 22) = 2080;
        sub_2287BC8BC();
        sub_22872C350();

        v44 = sub_2287CB150();
        v46 = v45;

        v47 = sub_2287031D8(v44, v46, &v60);

        *(v34 + 24) = v47;
        _os_log_impl(&dword_2286FF000, v36, v54, "[%s]: Population manager missing for sourceProfile %s: populationManagers %s", v34, 0x20u);
        v48 = v55;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v48, -1, -1);
        MEMORY[0x22AABFD90](v34, -1, -1);

        v6 = v50;
        (*v56)(v50, v57);
        v13 = v16;
      }

      else
      {

        (*v56)(v29, v57);
        v13 = v16;
        v6 = v29;
      }
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v12 = *(v9 + 8 * v16);
    ++v13;
    if (v12)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t *sub_2287BA4B0(uint64_t a1)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    [v3 setProfileIdentifier_];
    [v3 resume];
    sub_2287010E4(v1 + 16, &v13);
    type metadata accessor for ProfileDashboardFeedPopulationManager(0);
    v4 = swift_allocObject();
    v5 = OBJC_IVAR____TtC18HealthPlatformCore37ProfileDashboardFeedPopulationManager____lazy_storage___pertinentChangeDomain;
    v6 = sub_2287CA1F0();
    (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
    sub_2287010E4(&v13, v12);
    type metadata accessor for ProfileDashboardRelevanceEngineCoordinator();
    swift_allocObject();
    v7 = v3;
    v8 = sub_2287542EC(v12, v7, 0, 0);

    sub_2287010E4(&v13, v12);
    v9 = sub_22871DC94(v12, v7, v8, v4);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    return v9;
  }

  else
  {
    sub_2287CBA20();
    MEMORY[0x22AABE980](0xD000000000000040, 0x80000002287D3680);
    v11 = sub_2287C9C50();
    MEMORY[0x22AABE980](v11);

    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

void *ProfileDashboardsFeedPopulationListener.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  sub_228714BC0(v0[9], v0[10]);

  return v0;
}

uint64_t ProfileDashboardsFeedPopulationListener.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  sub_228714BC0(v0[9], v0[10]);

  return swift_deallocClassInstance();
}

uint64_t sub_2287BA778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2287BCABC(0);
  result = sub_2287CBBD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2287CB7E0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
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
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2287BAA24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  v9 = v5;
  v10 = a2;
  sub_2287BCC7C(0, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v48 - v12;
  v13 = sub_2287C9810();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v55 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v60 = a3;
  v61 = a4;
  v17 = a4;
  v18 = v16;
  sub_2287BCCE0(0, a5, a3, v17);
  v54 = v10;
  result = sub_2287CBBD0();
  v20 = result;
  if (*(v18 + 16))
  {
    v58 = v13;
    v49 = v5;
    v21 = 0;
    v22 = (v18 + 64);
    v23 = 1 << *(v18 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v18 + 64);
    v26 = v14;
    v27 = (v23 + 63) >> 6;
    v50 = (v26 + 16);
    v51 = v26;
    v56 = (v26 + 32);
    v28 = result + 64;
    v52 = v18;
    v29 = v55;
    while (v25)
    {
      v31 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v34 = v31 | (v21 << 6);
      v35 = *(v18 + 48);
      v57 = *(v26 + 72);
      v36 = v35 + v57 * v34;
      if (v54)
      {
        (*v56)(v29, v36, v58);
        v37 = *(v18 + 56);
        v38 = *(v53 + 72);
        sub_2287BCE30(v37 + v38 * v34, v59, v60, v61);
      }

      else
      {
        (*v50)(v29, v36, v58);
        v39 = *(v18 + 56);
        v38 = *(v53 + 72);
        sub_2287BCDB0(v39 + v38 * v34, v59, v60, v61);
      }

      sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2287CB1B0();
      v40 = -1 << *(v20 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v28 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v29 = v55;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v28 + 8 * v42);
          if (v46 != -1)
          {
            v30 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v41) & ~*(v28 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v29 = v55;
LABEL_7:
      *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v56)((*(v20 + 48) + v57 * v30), v29, v58);
      result = sub_2287BCE30(v59, *(v20 + 56) + v38 * v30, v60, v61);
      ++*(v20 + 16);
      v26 = v51;
      v18 = v52;
    }

    v32 = v21;
    while (1)
    {
      v21 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v27)
      {
        break;
      }

      v33 = v22[v21];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v25 = (v33 - 1) & v33;
        goto LABEL_15;
      }
    }

    if ((v54 & 1) == 0)
    {

      v9 = v49;
      goto LABEL_34;
    }

    v47 = 1 << *(v18 + 32);
    v9 = v49;
    if (v47 >= 64)
    {
      bzero(v22, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v47;
    }

    *(v18 + 16) = 0;
  }

LABEL_34:
  *v9 = v20;
  return result;
}

uint64_t sub_2287BAECC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22877F07C(0);
  v35 = v4;
  result = sub_2287CBBD0();
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

      sub_2287CBD80();
      sub_2287CB290();
      result = sub_2287CBDB0();
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

uint64_t sub_2287BB164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  sub_228771868(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2287C9810();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2287BCBD0(0);
  v43 = v4;
  result = sub_2287CBBD0();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2287720CC(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2287720B4(v29 + v28 * v24, v47);
      }

      sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2287CB1B0();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_2287720CC(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2287BB5E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2287BC91C(0);
  result = sub_2287CBBD0();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
        swift_unknownObjectRetain();
      }

      sub_2287CBD80();
      sub_2287C9C90();
      result = sub_2287CBDB0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_2287BB86C()
{
  v1 = v0;
  sub_2287BCABC(0);
  v2 = *v0;
  v3 = sub_2287CBBC0();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

char *sub_2287BBA10(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3)
{
  v7 = v3;
  sub_2287BCC7C(0, a1, a2, type metadata accessor for GeneratorPipelineManagerWrapper);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v37 - v9;
  v45 = sub_2287C9810();
  v51 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v49 = a2;
  sub_2287BCCE0(0, a3, a1, a2);
  v11 = *v3;
  v12 = sub_2287CBBC0();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v38 = v3;
    v39 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v50 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v40 = v51 + 32;
    v41 = v51 + 16;
    v42 = v22;
    v43 = v11;
    v23 = v45;
    v24 = v48;
    v25 = v49;
    if (v21)
    {
      do
      {
        v26 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v29 = v26 | (v17 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        v32 = v44;
        (*(v51 + 16))(v44, *(v11 + 48) + v31, v23);
        v33 = v46;
        v34 = *(v47 + 72) * v29;
        sub_2287BCDB0(*(v11 + 56) + v34, v46, v24, v25);
        v35 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v32, v23);
        v36 = *(v35 + 56);
        v11 = v43;
        result = sub_2287BCE30(v33, v36 + v34, v24, v25);
        v22 = v42;
        v21 = v52;
      }

      while (v52);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v13 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v17);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v13;
  }

  return result;
}

id sub_2287BBD5C()
{
  v1 = v0;
  sub_22877F07C(0);
  v2 = *v0;
  v3 = sub_2287CBBC0();
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

char *sub_2287BBEBC()
{
  v1 = v0;
  sub_228771868(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2287C9810();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287BCBD0(0);
  v5 = *v0;
  v6 = sub_2287CBBC0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2287720B4(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_2287720CC(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_2287BC1DC()
{
  v1 = v0;
  sub_2287BC91C(0);
  v2 = *v0;
  v3 = sub_2287CBBC0();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

void *sub_2287BC348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a2;
  v36 = *v5;
  v37 = a1;
  sub_2287693F0(0);
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x28223BE20](v11);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, a4, a5, v14);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  sub_2287C9AC0();
  *(v5 + 7) = 0u;
  *(v5 + 9) = 0u;
  swift_allocObject();
  v20 = sub_2287C9AB0();
  v21 = MEMORY[0x277D84F98];
  v5[11] = v20;
  v5[12] = v21;
  sub_2287010E4(a2, (v5 + 2));
  (*(v16 + 16))(v19, a3, v15);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  (*(v16 + 32))(v24 + v22, v19, v15);
  *(v24 + v23) = v6;
  v25 = v36;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v26 = v6[9];
  v27 = v6[10];
  v6[9] = sub_2287BC988;
  v6[10] = v24;

  sub_228714BC0(v26, v27);
  v42 = v37;
  v28 = MEMORY[0x277D11E90];
  sub_2287BCB58(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873E054(0, &qword_280DE1A28, v28);
  sub_22873A408();
  v29 = v38;
  sub_2287CAF70();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v25;
  sub_2287BC758(&qword_280DE05F0, sub_2287693F0, MEMORY[0x277CBCC08]);
  v32 = v40;
  v33 = sub_2287CB050();

  __swift_destroy_boxed_opaque_existential_0(v39);
  (*(v41 + 8))(v29, v32);
  v6[7] = v33;

  return v6;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287BC758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2287BC8BC()
{
  result = qword_280DE1038[0];
  if (!qword_280DE1038[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280DE1038);
  }

  return result;
}

void sub_2287BC91C(uint64_t a1)
{
  if (!qword_280DDFE60)
  {
    sub_2287BC8BC();
    sub_22872C350();
    v1 = sub_2287CBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDFE60);
    }
  }
}

uint64_t sub_2287BC988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FeedPopulationListenerSchedulerConfiguration(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + v9);
  v11 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2287B8664(v4 + v8, v10, v11, v5, v6);
}

void sub_2287BCA54(uint64_t a1)
{
  if (!qword_280DE0278)
  {
    sub_2287CA1F0();
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE0278);
    }
  }
}

void sub_2287BCABC(uint64_t a1)
{
  if (!qword_280DE18A8)
  {
    sub_228703004(255, &qword_280DE3870, 0x277CCD7C8);
    sub_228703004(255, &qword_280DE1990, 0x277CCD4D8);
    sub_2287AB250();
    v1 = sub_2287CBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18A8);
    }
  }
}

void sub_2287BCB58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_22873E054(255, a3, a4);
    v9 = a5(a1, v8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2287BCBD0(uint64_t a1)
{
  if (!qword_280DE18D0)
  {
    sub_2287C9810();
    sub_228771868(255);
    sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_2287CBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE18D0);
    }
  }
}

void sub_2287BCC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2287BCCE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2287C9810();
    sub_2287BCC7C(255, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
    sub_2287BC758(&qword_280DE3970, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v7 = sub_2287CBC00();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2287BCDB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287BCC7C(0, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2287BCE30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287BCC7C(0, a3, a4, type metadata accessor for GeneratorPipelineManagerWrapper);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2287BCEB0(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2287CB920();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_228713500(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_2287CB8C0();
    }

    else
    {
      v3 = sub_2287CB890();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_2287C0020(v31, v32, v33, a1, sub_22871BB78);
        v12 = v11;
        v13 = [v11 code];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_228713500((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_2287CB8E0())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_22871BAE4(0);
          v6 = sub_2287CB4A0();
          sub_2287CB980();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_228717DF8(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_228717DF8(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_228717DF8(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

HealthPlatformCore::AppSessionAnalyticsEvent::DemographicAnalytics __swiftcall AppSessionAnalyticsEvent.DemographicAnalytics.init()()
{
  v1 = v0;
  result.hasPairedWatch.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v1->hasPairedWatch.super.super.isa = result.hasPairedWatch.super.super.isa;
  return result;
}

HealthPlatformCore::AppSessionAnalyticsEvent::ImproveHealthAnalytics __swiftcall AppSessionAnalyticsEvent.ImproveHealthAnalytics.init()()
{
  v1 = v0;
  result.isImproveHealthAndActivityAllowed.super.super.isa = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v1->isImproveHealthAndActivityAllowed.super.super.isa = result.isImproveHealthAndActivityAllowed.super.super.isa;
  return result;
}

uint64_t sub_2287BD2DC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.init(ageOfFeed:feedItemsGeneratedTypes:feedItemsShownTypes:feedType:minutesElapsed:spinnerDisplayed:)(char a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char a7@<W6>, char a8@<W7>, void *a9@<X8>)
{
  v11 = 0x277CCA000uLL;
  v12 = &unk_278607000;
  if (a2)
  {
    v42 = 0;
    if ((a7 & 1) == 0)
    {
LABEL_3:
      sub_22877E7CC();
      v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v14 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    sub_22877E7CC();
    v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v15 = v42;
    if ((a7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  if (a3 >> 62)
  {
    v16 = sub_2287CB920();
  }

  else
  {
    v16 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22877E7CC();
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v41 = v13;
  if (v16)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AABF120](v17, a3);
      }

      else
      {
        v18 = *(a3 + 8 * v17 + 32);
      }

      v19 = (*(*v18 + 120))();
      v21 = v20;

      v23 = *(v46 + 16);
      v22 = *(v46 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2287042D4((v22 > 1), v23 + 1, 1);
      }

      ++v17;
      *(v46 + 16) = v23 + 1;
      v24 = v46 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v16 != v17);

    v11 = 0x277CCA000;
    v12 = &unk_278607000;
  }

  else
  {
  }

  v25 = sub_2287CA870();

  if (a4 >> 62)
  {
    v26 = sub_2287CB920();
  }

  else
  {
    v26 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 >= 9)
  {
    v27 = 9;
  }

  else
  {
    v27 = v26;
  }

  v39 = [objc_allocWithZone(*(v11 + 2992)) v12[113]];
  if (!v26)
  {
LABEL_33:

    v36 = sub_2287CA870();

    _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
    v37 = sub_2287CB210();

    v38 = [objc_allocWithZone(*(v11 + 2992)) initWithBool_];

    *a9 = v42;
    a9[1] = v40;
    a9[2] = v25;
    a9[3] = v39;
    a9[4] = v36;
    a9[5] = v37;
    a9[6] = v41;
    a9[7] = v38;
    return;
  }

  v47 = MEMORY[0x277D84F90];
  sub_2287042D4(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = a4;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AABF120](v28, v29);
      }

      else
      {
      }

      v30 = sub_2287BF470();
      v32 = v31;

      v34 = *(v47 + 16);
      v33 = *(v47 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2287042D4((v33 > 1), v34 + 1, 1);
      }

      ++v28;
      *(v47 + 16) = v34 + 1;
      v35 = v47 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v29 = a4;
    }

    while (v26 != v28);
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
}

void AppSessionAnalyticsEvent.ModelAnalytics.init(relevanceEngineMetrics:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v6 = sub_22870304C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a1 + 56) + 8 * v6);
      v10 = v9;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_6:
  sub_2287BFF9C();
  v11 = sub_2287CA840();

  v12 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v14 = sub_22870304C(v12, v13);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(a1 + 56) + 8 * v14);
      v18 = v17;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_11:
  v19 = sub_2287CA840();

  v20 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v22 = sub_22870304C(v20, v21);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(a1 + 56) + 8 * v22);
      v26 = v25;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v25 = 0;
LABEL_16:
  v27 = sub_2287CA840();

  v28 = sub_2287CB220();
  if (*(a1 + 16))
  {
    v30 = sub_22870304C(v28, v29);
    v32 = v31;

    if (v32)
    {
      v33 = *(*(a1 + 56) + 8 * v30);
      v34 = v33;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v33 = 0;
LABEL_21:
  v35 = sub_2287CA840();

  v36 = sub_2287CB220();
  if (!*(a1 + 16))
  {

    goto LABEL_25;
  }

  v38 = sub_22870304C(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_25:

    v41 = 0;
    goto LABEL_26;
  }

  v41 = *(*(a1 + 56) + 8 * v38);
  v42 = v41;

LABEL_26:
  v43 = sub_2287CA840();

  *a2 = v11;
  a2[1] = v19;
  a2[2] = v27;
  a2[3] = v35;
  a2[4] = v43;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.__allocating_init(feedItem:modelTrainingEvent:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_228798D5C(a2, v4 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
  v5 = [a1 sectionSortOrder];
  *(v4 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank) = v5;
  AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(a1);
  sub_2287C04B0(a2, type metadata accessor for ModelTrainingEvent);
  return v4;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.init(averageProbabilityOfPositiveInteractionForThisSession:interactedFeedItems:)@<X0>(unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2287C0308();
  v6 = sub_2287CA850();
  v7 = a3;
  v8 = v6;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:

LABEL_23:
    v29 = sub_2287CA870();

    *a4 = v8;
    a4[1] = v29;
    return result;
  }

  v27 = v7;
  v28 = sub_2287CB920();
  v7 = v27;
  v9 = v28;
  if (!v28)
  {
    goto LABEL_22;
  }

LABEL_3:
  v10 = v7;
  v34 = MEMORY[0x277D84F90];
  result = sub_2287042D4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v30 = v8;
    v12 = 0;
    v13 = v10;
    v31 = a4;
    v14 = v9;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AABF120](v12, v13);
      }

      else
      {
        v15 = *(v13 + 8 * v12 + 32);
      }

      sub_2287BE6B0();
      v16 = sub_2287CBCC0();
      MEMORY[0x22AABE980](v16);

      MEMORY[0x22AABE980](8236, 0xE200000000000000);
      v17 = v15 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent;
      v18 = type metadata accessor for ModelTrainingEvent(0);
      v19 = *(v18 + 20);
      if (*(v17 + *(v18 + 24)))
      {
        v20 = 0x6576697469736F70;
      }

      else
      {
        v20 = 0x657669746167656ELL;
      }

      if (*(v17 + v19))
      {
        v21 = 0x6C6C657764;
      }

      else
      {
        v21 = 7364980;
      }

      if (*(v17 + v19))
      {
        v22 = 0xE500000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      MEMORY[0x22AABE980](v21, v22);

      MEMORY[0x22AABE980](95, 0xE100000000000000);
      MEMORY[0x22AABE980](v20, 0xE800000000000000);

      MEMORY[0x22AABE980](0, 0xE000000000000000);

      v32 = sub_2287CB2E0();
      v33 = v23;
      sub_2287CB2A0();

      v25 = *(v34 + 16);
      v24 = *(v34 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2287042D4((v24 > 1), v25 + 1, 1);
      }

      ++v12;
      *(v34 + 16) = v25 + 1;
      v26 = v34 + 16 * v25;
      *(v26 + 32) = v32;
      *(v26 + 40) = v33;
      v13 = v10;
    }

    while (v14 != v12);

    a4 = v31;
    v8 = v30;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

id AppSessionAnalyticsEvent.ModelAnalytics.averageModelPrediction.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.averageModelEntropy.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.cumulativeAverageProbabilityOfPositiveInteraction.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.modelTotalTrainingEvents.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *AppSessionAnalyticsEvent.ModelAnalytics.normalizedAverageModelEntropy.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t AppSessionAnalyticsEvent.ModelAnalytics.init(averageModelPrediction:averageModelEntropy:cumulativeAverageProbabilityOfPositiveInteraction:modelTotalTrainingEvents:normalizedAverageModelEntropy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ageOfFeed.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.minutesElapsed.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.init(ageOfFeed:feedItemsGeneratedCount:feedItemsGeneratedTypes:feedItemsShownCount:feedItemsShownTypes:feedType:minutesElapsed:spinnerDisplayed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.__allocating_init(dataTypes:dataVisualizationKind:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  sub_2287C03C8(a2, v6 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v6 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v6;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(dataTypes:dataVisualizationKind:timeScope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  sub_2287C03C8(a2, v3 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v3 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v3;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(void *a1)
{
  v2 = v1;
  sub_2287C0510(0, &qword_280DE33D8, MEMORY[0x277D11FF8]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-v5];
  sub_2287C0510(0, &qword_280DE3400, MEMORY[0x277D11F48]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28[-v8];
  sub_2287C0510(0, &qword_280DE3370, MEMORY[0x277D12198]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28[-v11];
  sub_2287C0510(0, &qword_280DE3398, MEMORY[0x277D12080]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28[-v14];
  v16 = sub_2287CA750();
  sub_2287BCEB0(v16);
  v18 = v17;

  *(v1 + 16) = v18;
  v19 = sub_2287CA500();
  sub_2287CA700();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    sub_2287C0454(v12, &qword_280DE3370, MEMORY[0x277D12198]);
    v21 = 1;
  }

  else
  {
    sub_2287CA4F0();
    (*(v20 + 8))(v12, v19);
    v21 = 0;
  }

  v22 = sub_2287CA2E0();
  (*(*(v22 - 8) + 56))(v15, v21, 1, v22);
  sub_2287C03C8(v15, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  v23 = sub_2287CA140();
  sub_2287CA700();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) == 1)
  {

    sub_2287C0454(v6, &qword_280DE33D8, MEMORY[0x277D11FF8]);
    v25 = 1;
  }

  else
  {
    sub_2287CA130();

    (*(v24 + 8))(v6, v23);
    v25 = 0;
  }

  v26 = sub_2287C9F50();
  (*(*(v26 - 8) + 56))(v9, v25, 1, v26);
  sub_2287C03C8(v9, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v2;
}

uint64_t sub_2287BE6B0()
{
  v1 = v0;
  sub_2287C0510(0, &qword_280DE3400, MEMORY[0x277D11F48]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  sub_2287C0510(0, &qword_280DE3398, MEMORY[0x277D12080]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v36 = 0;
  v37 = 0xE000000000000000;
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    *&v34 = MEMORY[0x277D84F90];
    sub_2287132AC(0, v9, 0);
    v10 = v34;
    v11 = (v8 + 32);
    v12 = *(v34 + 16);
    do
    {
      v14 = *v11++;
      v13 = v14;
      *&v34 = v10;
      v15 = *(v10 + 24);
      if (v12 >= v15 >> 1)
      {
        sub_2287132AC((v15 > 1), v12 + 1, 1);
        v10 = v34;
      }

      *(v10 + 16) = v12 + 1;
      *(v10 + 8 * v12++ + 32) = v13;
      --v9;
    }

    while (v9);
  }

  v16 = MEMORY[0x22AABEA80](v10, MEMORY[0x277D83B88]);
  v18 = v17;

  MEMORY[0x22AABE980](v16, v18);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  sub_2287C035C(v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, v7, &qword_280DE3398, MEMORY[0x277D12080]);
  v19 = sub_2287CA2E0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_2287C0454(v7, &qword_280DE3398, MEMORY[0x277D12080]);
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    v21 = sub_2287CA2D0();
    *(&v35 + 1) = MEMORY[0x277D837D0];
    *&v34 = v21;
    *(&v34 + 1) = v22;
    (*(v20 + 8))(v7, v19);
  }

  sub_2287C0564(qword_280DE2B80, type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem, &protocol conformance descriptor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem);
  v23 = sub_2287CA860();
  v25 = v24;
  sub_2287C04B0(&v34, sub_2287108F0);
  MEMORY[0x22AABE980](v23, v25);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  sub_2287C035C(v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, v4, &qword_280DE3400, MEMORY[0x277D11F48]);
  v26 = sub_2287C9F50();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v4, 1, v26) == 1)
  {
    sub_2287C0454(v4, &qword_280DE3400, MEMORY[0x277D11F48]);
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    v28 = sub_2287C9F40();
    *(&v35 + 1) = MEMORY[0x277D837D0];
    *&v34 = v28;
    *(&v34 + 1) = v29;
    (*(v27 + 8))(v4, v26);
  }

  v30 = sub_2287CA860();
  v32 = v31;
  sub_2287C04B0(&v34, sub_2287108F0);
  MEMORY[0x22AABE980](v30, v32);

  return v36;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.deinit()
{

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v0;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.__deallocating_deinit()
{

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);

  return swift_deallocClassInstance();
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.__allocating_init(dataTypes:dataVisualizationKind:timeScope:rank:magnitude:completeness:prominence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank) = a4;
  v18 = v17 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude;
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  v19 = v17 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness;
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  sub_2287C03C8(a9, v17 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  *(v17 + 16) = a1;
  sub_2287C03C8(a2, v17 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v17 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v17;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.init(dataTypes:dataVisualizationKind:timeScope:rank:magnitude:completeness:prominence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9)
{
  *(v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank) = a4;
  v13 = v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude;
  *v13 = a5;
  *(v13 + 8) = a6 & 1;
  v14 = v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness;
  *v14 = a7;
  *(v14 + 8) = a8 & 1;
  sub_2287C03C8(a9, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  *(v9 + 16) = a1;
  sub_2287C03C8(a2, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C03C8(a3, v9 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  return v9;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.init(feedItem:)(void *a1)
{
  v2 = v1;
  sub_2287C0510(0, &qword_280DE33D0, MEMORY[0x277D12028]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  sub_2287C0510(0, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  sub_2287C0510(0, &qword_280DE3378, MEMORY[0x277D12160]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  sub_2287C0510(0, &qword_280DE3380, MEMORY[0x277D12128]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = [a1 sectionSortOrder];
  *(v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank) = v16;
  v17 = sub_2287CA3E0();
  sub_2287CA700();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v15, 1, v17);
  if (v19 == 1)
  {
    sub_2287C0454(v15, &qword_280DE3380, MEMORY[0x277D12128]);
    v20 = 0;
  }

  else
  {
    sub_2287CA3D0();
    v20 = v21;
    (*(v18 + 8))(v15, v17);
  }

  v22 = v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude;
  *v22 = v20;
  *(v22 + 8) = v19 == 1;
  v23 = sub_2287CA4A0();
  sub_2287CA700();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v12, 1, v23);
  if (v25 == 1)
  {
    sub_2287C0454(v12, &qword_280DE3378, MEMORY[0x277D12160]);
    v26 = 0;
  }

  else
  {
    sub_2287CA490();
    v26 = v27;
    (*(v24 + 8))(v12, v23);
  }

  v28 = v1 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness;
  *v28 = v26;
  *(v28 + 8) = v25 == 1;
  v29 = sub_2287CA210();
  sub_2287CA700();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v6, 1, v29) == 1)
  {
    sub_2287C0454(v6, &qword_280DE33D0, MEMORY[0x277D12028]);
    v31 = 1;
  }

  else
  {
    sub_2287CA200();
    (*(v30 + 8))(v6, v29);
    v31 = 0;
  }

  v32 = sub_2287CA050();
  (*(*(v32 - 8) + 56))(v9, v31, 1, v32);
  sub_2287C03C8(v9, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(a1);
  return v2;
}

uint64_t sub_2287BF470()
{
  sub_2287C0510(0, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_2287BE6B0();
  v6 = v5;
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  sub_2287CBA20();

  *&v28 = 8236;
  *(&v28 + 1) = 0xE200000000000000;
  *&v26 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_rank);
  v7 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v7);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  if (*(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude + 8))
  {
    v8 = 0;
    *(&v26 + 1) = 0;
    *&v27 = 0;
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_magnitude);
    v8 = MEMORY[0x277D839F8];
  }

  *&v26 = v9;
  *(&v27 + 1) = v8;
  sub_2287C0564(&qword_280DE2C80, type metadata accessor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem, &protocol conformance descriptor for AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem);
  v10 = sub_2287CA860();
  v12 = v11;
  sub_2287C04B0(&v26, sub_2287108F0);
  MEMORY[0x22AABE980](v10, v12);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  if (*(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness + 8))
  {
    v13 = 0;
    *(&v26 + 1) = 0;
    *&v27 = 0;
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_completeness);
    v13 = MEMORY[0x277D839F8];
  }

  *&v26 = v14;
  *(&v27 + 1) = v13;
  v15 = sub_2287CA860();
  v17 = v16;
  sub_2287C04B0(&v26, sub_2287108F0);
  MEMORY[0x22AABE980](v15, v17);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  sub_2287C035C(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, v3, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  v18 = sub_2287CA050();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v3, 1, v18) == 1)
  {
    sub_2287C0454(v3, &qword_280DE33E0, MEMORY[0x277D11FA8]);
    v26 = 0u;
    v27 = 0u;
  }

  else
  {
    *(&v27 + 1) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
    (*(v19 + 32))(boxed_opaque_existential_0, v3, v18);
  }

  v21 = sub_2287CA860();
  v23 = v22;
  sub_2287C04B0(&v26, sub_2287108F0);
  MEMORY[0x22AABE980](v21, v23);

  v26 = v28;
  *&v28 = v4;
  *(&v28 + 1) = v6;
  *&v28 = sub_2287CB2E0();
  *(&v28 + 1) = v24;
  sub_2287CB2A0();

  return v28;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.deinit()
{

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  return v0;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.ShownFeedItem.__deallocating_deinit()
{

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics13ShownFeedItem_prominence, &qword_280DE33E0, MEMORY[0x277D11FA8]);

  return swift_deallocClassInstance();
}

id AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.averageProbabilityOfPositiveInteractionForThisSession.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.init(averageProbabilityOfPositiveInteractionForThisSession:feedItemsInteractionKind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.init(feedItem:modelTrainingEvent:)(void *a1, uint64_t a2)
{
  sub_228798D5C(a2, v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
  v5 = [a1 sectionSortOrder];
  *(v2 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_rank) = v5;
  AppSessionAnalyticsEvent.HighlightsFeedPresentationAnalytics.GeneratedFeedItem.init(feedItem:)(a1);
  sub_2287C04B0(a2, type metadata accessor for ModelTrainingEvent);
  return v2;
}

uint64_t sub_2287BFC04()
{
  sub_2287BE6B0();
  v1 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v1);

  MEMORY[0x22AABE980](8236, 0xE200000000000000);
  v2 = sub_2287C022C(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent);
  MEMORY[0x22AABE980](v2);

  v4 = sub_2287CB2E0();
  sub_2287CB2A0();

  return v4;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.deinit()
{

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C04B0(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent, type metadata accessor for ModelTrainingEvent);
  return v0;
}

uint64_t AppSessionAnalyticsEvent.HighlightsFeedInteractionAnalytics.InteractedFeedItem.__deallocating_deinit()
{

  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_dataVisualizationKind, &qword_280DE3398, MEMORY[0x277D12080]);
  sub_2287C0454(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent35HighlightsFeedPresentationAnalytics17GeneratedFeedItem_timeScope, &qword_280DE3400, MEMORY[0x277D11F48]);
  sub_2287C04B0(v0 + OBJC_IVAR____TtCVV18HealthPlatformCore24AppSessionAnalyticsEvent34HighlightsFeedInteractionAnalytics18InteractedFeedItem_modelTrainingEvent, type metadata accessor for ModelTrainingEvent);

  return swift_deallocClassInstance();
}

unint64_t sub_2287BFF9C()
{
  result = qword_280DE2A98;
  if (!qword_280DE2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2A98);
  }

  return result;
}

void sub_2287C0020(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AABF010](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_2287CB900() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2287CB910();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_2287CB7E0();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_2287CB7F0();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_2287C022C(uint64_t a1)
{
  v2 = type metadata accessor for ModelTrainingEvent(0);
  v3 = *(v2 + 20);
  if (*(a1 + *(v2 + 24)))
  {
    v4 = 0x6576697469736F70;
  }

  else
  {
    v4 = 0x657669746167656ELL;
  }

  if (*(a1 + v3))
  {
    v5 = 0x6C6C657764;
  }

  else
  {
    v5 = 7364980;
  }

  if (*(a1 + v3))
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x22AABE980](v5, v6);

  MEMORY[0x22AABE980](95, 0xE100000000000000);
  MEMORY[0x22AABE980](v4, 0xE800000000000000);

  return 0;
}

unint64_t sub_2287C0308()
{
  result = qword_280DE2C90;
  if (!qword_280DE2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE2C90);
  }

  return result;
}

uint64_t sub_2287C035C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287C0510(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2287C03C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2287C0510(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2287C0454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2287C0510(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2287C04B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2287C0510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB820();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2287C0564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AppSessionAnalyticsEvent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppSessionAnalyticsEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2287C06AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2287C0708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2287C0788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2287C07D0(uint64_t result, int a2, int a3)
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

void sub_2287C0838(uint64_t a1)
{
  sub_2287C0510(319, &qword_280DE3398, MEMORY[0x277D12080]);
  if (v1 <= 0x3F)
  {
    sub_2287C0510(319, &qword_280DE3400, MEMORY[0x277D11F48]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2287C09B4(uint64_t a1)
{
  sub_2287C0510(319, &qword_280DE33E0, MEMORY[0x277D11FA8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2287C0AF0(uint64_t a1)
{
  result = type metadata accessor for ModelTrainingEvent(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2287C0BD4(uint64_t *a1, int a2)
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

uint64_t sub_2287C0C1C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_18HealthPlatformCore24AppSessionAnalyticsEventV7FailureO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2287C0C80(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2287C0CD4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_2287C0D30(void *result, int a2)
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

uint64_t *BaseFeedPopulationManager.init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(void *a1, void *a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2287C658C(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

uint64_t BaseFeedPopulationManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return v0;
}

uint64_t sub_2287C0EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_2287CACF0();
}

uint64_t sub_2287C0F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v52 = a3;
  v59 = *v3;
  v6 = sub_2287CB080();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287CB0E0();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287C9810();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2287CAA50();
  v13 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v49 = sub_2287C99F0();
  sub_2287CA9E0();

  v16 = sub_2287CAA40();
  v17 = sub_2287CB610();
  v50 = a1;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60 = v46;
    *v18 = 136315650;
    aBlock[0] = v59;
    swift_getMetatypeMetadata();
    v19 = sub_2287CB250();
    v21 = sub_2287031D8(v19, v20, &v60);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = [v3[7] profileIdentifier];
    v23 = [v22 identifier];

    sub_2287C97F0();
    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_2287CBCC0();
    v26 = v25;
    (*(v47 + 8))(v12, v10);
    v27 = sub_2287031D8(v24, v26, &v60);

    *(v18 + 14) = v27;
    *(v18 + 22) = 2080;
    v28 = v50;
    v29 = MEMORY[0x22AABEA80](v50, MEMORY[0x277D121B8]);
    v31 = sub_2287031D8(v29, v30, &v60);

    *(v18 + 24) = v31;
    _os_log_impl(&dword_2286FF000, v16, v17, "[%s]_%s: Enqueuing deleteFeed of kinds: %s", v18, 0x20u);
    v32 = v46;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v32, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    (*(v13 + 8))(v15, v48);
    v33 = v28;
  }

  else
  {

    (*(v13 + 8))(v15, v48);
    v33 = v50;
  }

  v34 = swift_allocObject();
  v34[2] = v4;
  v34[3] = v33;
  v35 = v49;
  v36 = v51;
  v37 = v52;
  v34[4] = v49;
  v34[5] = v36;
  v38 = v59;
  v34[6] = v37;
  v34[7] = v38;
  aBlock[4] = sub_2287C7164;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_15;
  v39 = _Block_copy(aBlock);

  v40 = v35;

  v41 = v53;
  sub_2287CB0A0();
  v60 = MEMORY[0x277D84F90];
  sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v42 = MEMORY[0x277D85198];
  sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v42);
  v43 = v56;
  v44 = v58;
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v41, v43, v39);
  _Block_release(v39);

  (*(v57 + 8))(v43, v44);
  (*(v54 + 8))(v41, v55);
}

uint64_t FeedPopulationManaging<>.handleUpdatedFeedItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2287C9810();
  v152 = *(v7 - 8);
  v153 = v7;
  MEMORY[0x28223BE20](v7);
  v151 = &v144[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = sub_2287CA1F0();
  v9 = *(v157 - 8);
  v10 = MEMORY[0x28223BE20](v157);
  v12 = &v144[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v144[-v13];
  v15 = sub_2287CAA50();
  v155 = *(v15 - 8);
  v156 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v144[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v144[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v150 = &v144[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v144[-v24];
  v26 = *(a3 + 64);
  v158 = v3;
  v154 = a2;
  v27 = (v9 + 16);
  if (v26(a1, a2, a3))
  {
    sub_2287CA9E0();
    (*v27)(v14, a1, v157);
    swift_retain_n();
    v28 = sub_2287CAA40();
    v29 = sub_2287CB610();
    v30 = os_log_type_enabled(v28, v29);
    v31 = a1;
    v149 = v21;
    if (v30)
    {
      v32 = swift_slowAlloc();
      LODWORD(v147) = v29;
      v33 = v32;
      v148 = swift_slowAlloc();
      v160 = v148;
      *v33 = 136446722;
      v159 = v154;
      swift_getMetatypeMetadata();
      v34 = sub_2287CB250();
      v146 = v28;
      v36 = sub_2287031D8(v34, v35, &v160);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = [*(v158 + 56) profileIdentifier];
      v38 = [v37 identifier];

      v39 = v151;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = v153;
      v41 = a3;
      v42 = sub_2287CBCC0();
      v44 = v43;

      v45 = v40;
      v31 = a1;
      (*(v152 + 8))(v39, v45);
      v46 = v42;
      a3 = v41;
      v47 = sub_2287031D8(v46, v44, &v160);

      *(v33 + 14) = v47;
      *(v33 + 22) = 2080;
      sub_2287C71F8(&qword_280DE11B0, MEMORY[0x277D12000], MEMORY[0x277D12008]);
      v48 = v157;
      v49 = sub_2287CBCC0();
      v51 = v50;
      (*(v9 + 8))(v14, v48);
      v52 = v154;
      v53 = sub_2287031D8(v49, v51, &v160);

      *(v33 + 24) = v53;
      v54 = v146;
      _os_log_impl(&dword_2286FF000, v146, v147, "[%{public}s]_%s: received notice of change domain: %s", v33, 0x20u);
      v55 = v148;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v55, -1, -1);
      MEMORY[0x22AABFD90](v33, -1, -1);

      v56 = *(v155 + 8);
      (v56)(v25, v156);
    }

    else
    {

      (*(v9 + 8))(v14, v157);
      v56 = *(v155 + 8);
      (v56)(v25, v156);
      v52 = v154;
    }

    v79 = *(a3 + 32);
    v157 = a3;
    v80 = v79(v52, a3);
    MEMORY[0x28223BE20](v80);
    *&v144[-16] = v31;
    v82 = sub_2287C2594(sub_2287C7240, &v144[-32], v81);
    v83 = v150;
    sub_2287CA9E0();
    swift_retain_n();

    v84 = sub_2287CAA40();
    v85 = sub_2287CB610();

    v86 = v52;
    if (os_log_type_enabled(v84, v85))
    {
      v87 = swift_slowAlloc();
      v148 = v56;
      v88 = v87;
      v89 = swift_slowAlloc();
      v159 = v86;
      v160 = v89;
      *v88 = 136446722;
      swift_getMetatypeMetadata();
      v90 = sub_2287CB250();
      v92 = sub_2287031D8(v90, v91, &v160);

      *(v88 + 4) = v92;
      *(v88 + 12) = 2080;
      v93 = [*(v158 + 56) profileIdentifier];
      v94 = [v93 identifier];

      v95 = v82;
      v96 = v151;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v97 = v153;
      v98 = sub_2287CBCC0();
      v100 = v99;

      v101 = v96;
      v82 = v95;
      (*(v152 + 8))(v101, v97);
      v102 = sub_2287031D8(v98, v100, &v160);

      *(v88 + 14) = v102;
      *(v88 + 22) = 2080;
      v103 = MEMORY[0x22AABEA80](v95, MEMORY[0x277D121B8]);
      v105 = sub_2287031D8(v103, v104, &v160);

      *(v88 + 24) = v105;
      v86 = v154;
      _os_log_impl(&dword_2286FF000, v84, v85, "[%{public}s]_%s: Mapped contentKinds to these FeedKinds: %s", v88, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v89, -1, -1);
      v106 = v88;
      v56 = v148;
      MEMORY[0x22AABFD90](v106, -1, -1);

      v107 = v150;
    }

    else
    {

      v107 = v83;
    }

    (v56)(v107, v156);
    v109 = v149;
    if (*(v82 + 16))
    {
      sub_2287CA9E0();
      swift_retain_n();
      v110 = sub_2287CAA40();
      v111 = sub_2287CB610();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v148 = v56;
        v113 = v112;
        v147 = swift_slowAlloc();
        v159 = v86;
        v160 = v147;
        *v113 = 136446978;
        swift_getMetatypeMetadata();
        v114 = sub_2287CB250();
        v146 = v110;
        v116 = sub_2287031D8(v114, v115, &v160);

        *(v113 + 4) = v116;
        *(v113 + 12) = 2080;
        v145 = v111;
        v117 = v158;
        v118 = *(v158 + 56);
        v119 = [v118 profileIdentifier];
        v120 = [v119 identifier];

        v150 = v82;
        v121 = v151;
        sub_2287C97F0();

        sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v122 = v153;
        v123 = sub_2287CBCC0();
        v125 = v124;

        v126 = *(v152 + 8);
        v126(v121, v122);
        v127 = sub_2287031D8(v123, v125, &v160);

        *(v113 + 14) = v127;
        *(v113 + 22) = 2080;
        v128 = [v118 profileIdentifier];
        v129 = [v128 identifier];

        sub_2287C97F0();

        v130 = sub_2287CBCC0();
        v132 = v131;

        v133 = v121;
        v82 = v150;
        v126(v133, v122);
        v86 = v154;
        v134 = sub_2287031D8(v130, v132, &v160);

        *(v113 + 24) = v134;
        *(v113 + 32) = 2082;
        v159 = v117;

        v135 = sub_2287CB250();
        v137 = sub_2287031D8(v135, v136, &v160);

        *(v113 + 34) = v137;
        v138 = v146;
        _os_log_impl(&dword_2286FF000, v146, v145, "[%{public}s]_%s: Beginning repopulation of live feeds for profile %s; %{public}s", v113, 0x2Au);
        v139 = v147;
        swift_arrayDestroy();
        MEMORY[0x22AABFD90](v139, -1, -1);
        MEMORY[0x22AABFD90](v113, -1, -1);

        (v148)(v149, v156);
      }

      else
      {

        (v56)(v109, v156);
      }

      v140 = swift_allocObject();
      v141 = v157;
      v142 = v158;
      v140[2] = v86;
      v140[3] = v141;
      v140[4] = v142;
      v143 = *(*v142 + 136);

      v143(v82, sub_2287C7260, v140);
    }
  }

  else
  {
    sub_2287CA9E0();
    (*v27)(v12, a1, v157);
    swift_retain_n();
    v57 = sub_2287CAA40();
    v58 = sub_2287CB5D0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v160 = v150;
      *v59 = 136446722;
      v159 = v154;
      swift_getMetatypeMetadata();
      v60 = sub_2287CB250();
      LODWORD(v154) = v58;
      v62 = sub_2287031D8(v60, v61, &v160);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v63 = [*(v158 + 56) profileIdentifier];
      v64 = [v63 identifier];

      v65 = v151;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v66 = v153;
      v67 = sub_2287CBCC0();
      v149 = v57;
      v68 = v67;
      v70 = v69;

      (*(v152 + 8))(v65, v66);
      v71 = sub_2287031D8(v68, v70, &v160);

      *(v59 + 14) = v71;
      *(v59 + 22) = 2080;
      sub_2287C71F8(&qword_280DE11B0, MEMORY[0x277D12000], MEMORY[0x277D12008]);
      v72 = v157;
      v73 = sub_2287CBCC0();
      v75 = v74;
      (*(v9 + 8))(v12, v72);
      v76 = sub_2287031D8(v73, v75, &v160);

      *(v59 + 24) = v76;
      v77 = v149;
      _os_log_impl(&dword_2286FF000, v149, v154, "[%{public}s]_%s: change domain does not contain pertinent changes; ignoring: %s", v59, 0x20u);
      v78 = v150;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v78, -1, -1);
      MEMORY[0x22AABFD90](v59, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v157);
    }

    return (*(v155 + 8))(v18, v156);
  }
}

uint64_t sub_2287C2594(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_2287132CC(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_2287132CC((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t *BaseFeedPopulationManager.__allocating_init(healthExperienceStore:healthStore:relevanceEngineCoordinator:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2287C658C(a1, a2, v11, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

uint64_t sub_2287C282C@<X0>(os_log_t *a1@<X0>, os_log_t *a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, os_log_t *a5@<X8>)
{
  v10 = sub_2287C9810();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CAA50();
  v14 = MEMORY[0x28223BE20](v13);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v20 = *a2;
  v19 = a2[1];
  v21 = a2[2];
  if (*a1)
  {
    v61 = a4;
    v63 = v10;
    v64 = v15;
    v65 = v14;
    v67 = v19;
    v22 = a1[2];
    v68 = a1[1];

    sub_2287CA9E0();
    v23 = a3;

    v24 = sub_2287CAA40();
    v25 = sub_2287CB610();

    v62 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v60 = a5;
      v27 = v26;
      v59 = swift_slowAlloc();
      v69 = v59;
      *v27 = 136315906;
      v70 = v61;
      swift_getMetatypeMetadata();
      v28 = sub_2287CB250();
      v30 = sub_2287031D8(v28, v29, &v69);
      v61 = v24;
      v31 = v30;

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = [v23 profileIdentifier];
      v33 = [v32 identifier];

      sub_2287C97F0();
      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = v63;
      v35 = sub_2287CBCC0();
      v37 = v36;
      (*(v66 + 8))(v12, v34);
      v38 = sub_2287031D8(v35, v37, &v69);

      *(v27 + 14) = v38;
      *(v27 + 22) = 2080;
      v70 = v18;
      v71 = v68;
      v72 = v22;

      v39 = sub_2287CB250();
      v41 = sub_2287031D8(v39, v40, &v69);

      *(v27 + 24) = v41;
      *(v27 + 32) = 2080;
      v70 = v20;
      v71 = v67;
      v72 = v21;

      v42 = sub_2287CB250();
      v44 = sub_2287031D8(v42, v43, &v69);

      *(v27 + 34) = v44;
      v24 = v61;
      _os_log_impl(&dword_2286FF000, v61, v62, "[%s]_%s: Consolidating requests to populate %s with %s", v27, 0x2Au);
      v45 = v59;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v45, -1, -1);
      v46 = v27;
      a5 = v60;
      MEMORY[0x22AABFD90](v46, -1, -1);
    }

    (*(v64 + 8))(v17, v65);
    v47 = v68;

    v49 = sub_22872A948(v48);

    v51 = sub_22872A948(v50);

    v52 = sub_2287C4DC0(v51, v49);
    v53 = v52;
    v54 = *(v52 + 16);
    if (v54)
    {
      v55 = sub_228723A48(*(v52 + 16), 0);
      v56 = sub_228729E78(&v70, v55 + 32, v54, v53);
      sub_22870B3D4(v70);
      if (v56 != v54)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v58 = swift_allocObject();
    v58[2].isa = v18;
    v58[3].isa = v47;
    v58[4].isa = v22;
    v58[5].isa = v20;
    v58[6].isa = v67;
    v58[7].isa = v21;
    *a5 = v55;
    a5[1] = sub_2287C7894;
    a5[2] = v58;
  }

LABEL_7:
  *a5 = v20;
  a5[1] = v19;
  a5[2] = v21;
}

uint64_t sub_2287C2DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v45 = a4;
  v48 = a3;
  v58 = MEMORY[0x277D85AD8];
  v59 = a7;
  sub_2287C7474(0, qword_280DE07D8, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v44 - v13;
  v14 = sub_2287C9B60();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x28223BE20](v14);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C74D8(0);
  v17 = *(v16 - 8);
  v56 = v16;
  v57 = v17;
  MEMORY[0x28223BE20](v16);
  v53 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2287C9810();
  v19 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v46 = a1[1];
  v23 = v46;
  v24 = a1[2];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v25 = sub_2287C99F0();
  sub_2287010E4(v48, &v62);
  v26 = swift_allocObject();
  sub_228706AD4(&v62, (v26 + 2));
  v26[7] = v22;
  v26[8] = v23;
  v26[9] = v24;
  v26[10] = v25;
  v26[11] = v45;
  v26[12] = a5;
  v26[13] = v52;
  v48 = MEMORY[0x277CBCEA8];
  sub_2287C758C(0, &qword_280DE0048, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  v52 = v25;

  v27 = a5;
  v28 = sub_2287CADF0();
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_2287CBA20();

  v60 = 0x3A656C69666F7270;
  v61 = 0xE900000000000020;
  v29 = [v27 profileIdentifier];
  v30 = [v29 identifier];

  sub_2287C97F0();
  sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v31 = v47;
  v32 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v32);

  (*(v19 + 8))(v21, v31);
  MEMORY[0x22AABE980](0x3A73646E696B202CLL, 0xE900000000000020);
  *&v62 = v22;
  *(&v62 + 1) = v46;
  v63 = v24;

  v33 = sub_2287CB250();
  MEMORY[0x22AABE980](v33);

  v35 = v49;
  v34 = v50;
  v36 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277D11E68], v51);
  sub_2287C9B50();
  (*(v34 + 8))(v35, v36);
  v37 = sub_2287CA970();
  v38 = v54;
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  *&v62 = v28;
  sub_22873C718(v38, v55);
  sub_2287C7430(&unk_280DE0050, &qword_280DE0048, v48, MEMORY[0x277CBCEB0]);

  v39 = v53;
  sub_2287CAAE0();
  sub_2287C7634(v38, qword_280DE07D8, v58);
  sub_2287C71F8(&qword_280DE0740, sub_2287C74D8, MEMORY[0x277D12220]);
  v40 = v56;
  v41 = sub_2287CAF40();
  (*(v57 + 8))(v39, v40);
  *&v62 = v41;
  v42 = MEMORY[0x277CBCD88];
  sub_2287C758C(0, &qword_280DE01B0, MEMORY[0x277CBCD88]);
  sub_2287C7430(&qword_280DE01B8, &qword_280DE01B0, v42, MEMORY[0x277CBCD90]);
  sub_2287CAEE0();
}

uint64_t sub_2287C34C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a9;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = sub_2287C76A4;
  v20[9] = v17;
  v20[10] = a10;
  v25 = *(v19 + 24);

  v21 = a7;

  v22 = a9;

  v25(a4, sub_2287C76E4, v20, v18, v19);
}

void sub_2287C3620(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a1;
  v17[10] = a9;
  v21[4] = sub_2287C76FC;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_228712EA8;
  v21[3] = &block_descriptor_49;
  v18 = _Block_copy(v21);

  v19 = a3;

  v20 = a1;

  [v20 performBlock_];
  _Block_release(v18);
}

uint64_t sub_2287C3768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v87 = a6;
  v88 = a7;
  v89 = a5;
  v90 = a3;
  v85 = a4;
  v86 = a2;
  v83 = a8;
  v84 = a9;
  v78 = sub_2287CB080();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v81 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CB0E0();
  v80 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287CB090();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2287C9810();
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287CAA50();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = swift_allocObject();
    v26 = v83;
    v27 = v85;
    v28 = v86;
    v25[2] = v83;
    v25[3] = v28;
    v30 = v89;
    v29 = v90;
    v25[4] = v90;
    v25[5] = v27;
    v31 = v87;
    v32 = v88;
    v25[6] = v30;
    v25[7] = v31;
    v33 = v84;
    v25[8] = v32;
    v25[9] = v33;
    v34 = *(*v24 + 168);
    v35 = v26;
    v36 = v28;

    v34(v35, v36, v29, sub_2287C7754, v25);
  }

  else
  {
    v71 = v18;
    v72 = v20;
    v73 = v19;
    v74 = v15;
    v75 = v13;
    v76 = v12;
    v83 = v10;
    v37 = v22;
    sub_2287CAA20();
    v38 = v86;
    v39 = sub_2287CAA40();
    v40 = sub_2287CB5F0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v91 = v42;
      *v41 = 136315394;
      aBlock[0] = v84;
      swift_getMetatypeMetadata();
      v43 = sub_2287CB250();
      v45 = sub_2287031D8(v43, v44, &v91);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = [v38 profileIdentifier];
      v47 = [v46 identifier];

      v48 = v71;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v49 = sub_2287CBCC0();
      v51 = v50;
      (*(v77 + 8))(v48, v16);
      v52 = sub_2287031D8(v49, v51, &v91);

      *(v41 + 14) = v52;
      _os_log_impl(&dword_2286FF000, v39, v40, "[%s]_%s: Self deallocated during picking", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v42, -1, -1);
      MEMORY[0x22AABFD90](v41, -1, -1);
    }

    (*(v72 + 8))(v37, v73);
    v53 = v78;
    v54 = v81;
    v56 = v89;
    v55 = v90;
    v57 = v87;
    v58 = v88;
    v59 = v85;
    v60 = v75;
    v61 = v79;
    v62 = swift_allocObject();
    v62[2] = v55;
    v62[3] = v59;
    v62[4] = v56;
    v62[5] = v57;
    v62[6] = v58;
    sub_22870FDE4();
    v63 = v74;
    (*(v61 + 104))(v74, *MEMORY[0x277D851B0], v60);

    v64 = sub_2287CB6E0();
    (*(v61 + 8))(v63, v60);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_2287C78F4;
    *(v65 + 24) = v62;
    aBlock[4] = sub_2287763C4;
    aBlock[5] = v65;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228712EA8;
    aBlock[3] = &block_descriptor_59;
    v66 = _Block_copy(aBlock);

    v67 = v76;
    sub_2287CB0A0();
    v91 = MEMORY[0x277D84F90];
    sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v68 = MEMORY[0x277D85198];
    sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v68);
    sub_2287CB880();
    MEMORY[0x22AABED90](0, v67, v54, v66);
    _Block_release(v66);

    (*(v82 + 8))(v54, v53);
    (*(v80 + 8))(v67, v83);
  }
}

void sub_2287C3FF8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  v16[9] = a8;
  v20[4] = sub_2287C77C4;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_228712EA8;
  v20[3] = &block_descriptor_68_0;
  v17 = _Block_copy(v20);
  v18 = a1;
  v19 = a2;

  [v18 performBlock_];
  _Block_release(v17);
}

uint64_t sub_2287C4128(void *a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t a6, uint64_t a7, NSObject *a8)
{
  v78 = a7;
  v84 = a4;
  v85 = a3;
  v92[1] = *MEMORY[0x277D85DE8];
  v13 = sub_2287C9810();
  v73 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2287CAA50();
  v74 = *(v15 - 8);
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  v77 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2287CB080();
  v82 = *(v17 - 8);
  v83 = v17;
  MEMORY[0x28223BE20](v17);
  v81 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2287CB0E0();
  v79 = *(v19 - 8);
  v80 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2287CB090();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  if ([a1 save_])
  {
    v26 = aBlock;
LABEL_6:
    v46 = v85;
    goto LABEL_7;
  }

  v69 = a8;
  v70 = v13;
  v71 = a6;
  v27 = aBlock;
  v76 = a5;
  v28 = v27;
  v29 = sub_2287C9640();

  swift_willThrow();
  a5 = v76;
  sub_2287CAA20();
  v30 = a2;

  v31 = v29;
  v32 = sub_2287CAA40();
  v33 = sub_2287CB5F0();

  v68 = v33;
  if (!os_log_type_enabled(v32, v33))
  {

    (*(v74 + 8))(v77, v75);
    a6 = v71;
    goto LABEL_6;
  }

  v34 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v92[0] = v67;
  *v34 = 136315906;
  aBlock = v69;
  swift_getMetatypeMetadata();
  v35 = sub_2287CB250();
  v69 = v32;
  v37 = sub_2287031D8(v35, v36, v92);

  *(v34 + 4) = v37;
  *(v34 + 12) = 2080;
  v38 = [v30 profileIdentifier];
  v39 = [v38 identifier];

  v40 = v72;
  sub_2287C97F0();

  sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v41 = v70;
  v42 = sub_2287CBCC0();
  v44 = v43;
  (*(v73 + 8))(v40, v41);
  v45 = sub_2287031D8(v42, v44, v92);

  *(v34 + 14) = v45;
  *(v34 + 22) = 2080;
  v46 = v85;
  aBlock = v85;
  v87 = v84;
  v88 = v76;

  v47 = sub_2287CB250();
  v49 = sub_2287031D8(v47, v48, v92);

  *(v34 + 24) = v49;
  *(v34 + 32) = 2080;
  aBlock = v29;
  v50 = v29;
  sub_22874A0A4();
  v51 = sub_2287CB250();
  v53 = sub_2287031D8(v51, v52, v92);

  *(v34 + 34) = v53;
  v54 = v69;
  _os_log_impl(&dword_2286FF000, v69, v68, "[%s]_%s: Unable to save after picking feeds of kinds %s: %s", v34, 0x2Au);
  v55 = v67;
  swift_arrayDestroy();
  MEMORY[0x22AABFD90](v55, -1, -1);
  v56 = v34;
  a5 = v76;
  MEMORY[0x22AABFD90](v56, -1, -1);

  (*(v74 + 8))(v77, v75);
  a6 = v71;
LABEL_7:
  v57 = swift_allocObject();
  v58 = v84;
  v57[2] = v46;
  v57[3] = v58;
  v57[4] = a5;
  v57[5] = a6;
  v57[6] = v78;
  sub_22870FDE4();
  (*(v23 + 104))(v25, *MEMORY[0x277D851B0], v22);

  v59 = sub_2287CB6E0();
  (*(v23 + 8))(v25, v22);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_2287C7840;
  *(v60 + 24) = v57;
  v90 = sub_2287763C4;
  v91 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_228712EA8;
  v89 = &block_descriptor_78;
  v61 = _Block_copy(&aBlock);

  sub_2287CB0A0();
  v92[0] = MEMORY[0x277D84F90];
  sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v62 = MEMORY[0x277D85198];
  sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v62);
  v63 = v81;
  v64 = v83;
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v21, v63, v61);
  _Block_release(v61);

  (*(v82 + 8))(v63, v64);
  (*(v79 + 8))(v21, v80);
}

uint64_t sub_2287C4A2C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_2287C9810();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2287CAA50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  sub_2287CA9E0();
  v14 = a2;

  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v9;
    v18 = v17;
    v36 = swift_slowAlloc();
    v39[0] = v36;
    v39[1] = a3;
    *v18 = 136315650;
    swift_getMetatypeMetadata();
    v19 = sub_2287CB250();
    v21 = sub_2287031D8(v19, v20, v39);
    v35 = v16;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [v14 profileIdentifier];
    v24 = [v23 identifier];

    sub_2287C97F0();
    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = sub_2287CBCC0();
    v27 = v26;
    (*(v38 + 8))(v8, v6);
    v28 = sub_2287031D8(v25, v27, v39);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    v29 = MEMORY[0x22AABEA80](v13, MEMORY[0x277D121B8]);
    v31 = sub_2287031D8(v29, v30, v39);

    *(v18 + 24) = v31;
    _os_log_impl(&dword_2286FF000, v15, v35, "[%s]_%s: Population complete for kinds %s", v18, 0x20u);
    v32 = v36;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v32, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);

    return (*(v10 + 8))(v12, v37);
  }

  else
  {

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2287C4DC0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_228723F40(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287C4EC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v51 = a3;
  v10 = sub_2287C9810();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_2287CAA50();
  v13 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2287CA9E0();

  v16 = sub_2287CAA40();
  v17 = sub_2287CB610();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v50 = a6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = 136315650;
    v52 = v20;
    aBlock[0] = v50;
    swift_getMetatypeMetadata();
    v21 = sub_2287CB250();
    v44 = v17;
    v23 = sub_2287031D8(v21, v22, &v52);
    v46 = a5;
    v24 = v23;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = [*(a1 + 56) profileIdentifier];
    v26 = [v25 identifier];

    sub_2287C97F0();
    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_2287CBCC0();
    v29 = v28;
    (*(v47 + 8))(v12, v10);
    v30 = sub_2287031D8(v27, v29, &v52);
    a5 = v46;

    *(v19 + 14) = v30;
    *(v19 + 22) = 2080;
    v31 = MEMORY[0x22AABEA80](a2, MEMORY[0x277D121B8]);
    v33 = sub_2287031D8(v31, v32, &v52);

    *(v19 + 24) = v33;
    _os_log_impl(&dword_2286FF000, v16, v44, "[%s]_%s: Deleting feeds of kinds: %s", v19, 0x20u);
    v34 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v34, -1, -1);
    v35 = v19;
    a6 = v50;
    MEMORY[0x22AABFD90](v35, -1, -1);
  }

  (*(v13 + 8))(v15, v48);
  v36 = swift_allocObject();
  v37 = v51;
  v36[2] = a2;
  v36[3] = v37;
  v38 = v49;
  v36[4] = a1;
  v36[5] = v38;
  v36[6] = a5;
  v36[7] = a6;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2287C73B0;
  *(v39 + 24) = v36;
  aBlock[4] = sub_22877E1B8;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228742C10;
  aBlock[3] = &block_descriptor_16;
  v40 = _Block_copy(aBlock);

  v41 = v37;

  [v41 performBlockAndWait_];
  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2287C53A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v70 = a6;
  v88 = a5;
  v81 = a4;
  v90[1] = *MEMORY[0x277D85DE8];
  v73 = sub_2287C9810();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2287CAA50();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB080();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2287CB0E0();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CB090();
  v79 = *(v14 - 8);
  v80 = v14;
  MEMORY[0x28223BE20](v14);
  v78 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v17 = *(a1 + 16);
  v74 = a3;
  if (v17)
  {
    sub_2287CA640();
    v18 = *(a3 + 56);
    v19 = a1 + 32;
    do
    {
      ++v19;
      v20 = [v18 profileIdentifier];
      v21 = sub_2287CA630();

      v22 = sub_2287CA300();
      if (v22)
      {
        MEMORY[0x22AABEA50]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2287CB3E0();
        }

        sub_2287CB420();
        v16 = aBlock[0];
      }

      --v17;
    }

    while (v17);
  }

  if (v16 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2287CB920())
  {
    v24 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x22AABF120](v24, v16);
      }

      else
      {
        if (v24 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v25 = *(v16 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      [a2 deleteObject_];

      ++v24;
      if (v27 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  aBlock[0] = 0;
  if ([a2 save_])
  {
    v28 = aBlock[0];
    v30 = v87;
    v29 = v88;
  }

  else
  {
    v31 = aBlock[0];
    v32 = sub_2287C9640();

    swift_willThrow();
    v33 = v75;
    sub_2287CA9E0();
    v34 = v74;

    v35 = v32;
    v36 = sub_2287CAA40();
    v37 = sub_2287CB5F0();

    v38 = os_log_type_enabled(v36, v37);
    v30 = v87;
    v29 = v88;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v90[0] = v69;
      *v39 = 136315650;
      aBlock[0] = v70;
      swift_getMetatypeMetadata();
      v40 = sub_2287CB250();
      v42 = sub_2287031D8(v40, v41, v90);
      LODWORD(v70) = v37;
      v43 = v42;

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = [*(v34 + 56) profileIdentifier];
      v45 = [v44 identifier];

      v46 = v71;
      sub_2287C97F0();

      sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = v73;
      v48 = sub_2287CBCC0();
      v50 = v49;
      (*(v72 + 8))(v46, v47);
      v51 = sub_2287031D8(v48, v50, v90);

      *(v39 + 14) = v51;
      *(v39 + 22) = 2080;
      aBlock[0] = v32;
      v52 = v32;
      sub_22874A0A4();
      v53 = sub_2287CB250();
      v55 = sub_2287031D8(v53, v54, v90);

      *(v39 + 24) = v55;
      _os_log_impl(&dword_2286FF000, v36, v70, "[%s]_%s: Failed to save MOC with error: %s", v39, 0x20u);
      v56 = v69;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v56, -1, -1);
      MEMORY[0x22AABFD90](v39, -1, -1);
    }

    else
    {
    }

    (*(v76 + 8))(v33, v77);
  }

  v58 = v80;
  v57 = v81;
  v59 = MEMORY[0x277D84F90];
  sub_22870FDE4();
  v61 = v78;
  v60 = v79;
  (*(v79 + 104))(v78, *MEMORY[0x277D851B0], v58);

  v62 = sub_2287CB6E0();
  (*(v60 + 8))(v61, v58);
  v63 = swift_allocObject();
  v63[2] = v57;
  v63[3] = v29;
  aBlock[4] = sub_22873FB9C;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_22_1;
  v64 = _Block_copy(aBlock);

  v65 = v82;
  sub_2287CB0A0();
  v90[0] = v59;
  sub_2287C71F8(&qword_280DE3A28, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v66 = MEMORY[0x277D85198];
  sub_2287C7474(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE3A08, &qword_280DE3A10, v66);
  v67 = v84;
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v65, v67, v64);
  _Block_release(v64);

  (*(v86 + 8))(v67, v30);
  (*(v83 + 8))(v65, v85);
}

uint64_t BaseFeedPopulationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

BOOL sub_2287C5DC4(unsigned __int8 *a1)
{
  v1 = sub_2287CA180();
  v2 = sub_2287CA5B0();
  v3 = sub_2287C62B0(v2, v1);

  return (v3 & 1) == 0;
}

uint64_t sub_2287C5E30(id *a1, id *a2)
{
  v4 = sub_2287C9810();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2287CAA50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9E0();
  swift_retain_n();
  v12 = sub_2287CAA40();
  v13 = sub_2287CB610();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v45 = v5;
    v15 = v14;
    v43 = swift_slowAlloc();
    v46 = a2;
    v47 = v43;
    *v15 = 136446978;
    swift_getMetatypeMetadata();
    v16 = sub_2287CB250();
    v44 = v8;
    v18 = sub_2287031D8(v16, v17, &v47);
    v41 = v12;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v42 = v9;
    v39[0] = a1[7];
    v20 = [v39[0] profileIdentifier];
    v21 = [v20 identifier];

    sub_2287C97F0();

    sub_2287C71F8(&qword_280DE3468, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_2287CBCC0();
    v40 = v13;
    v24 = v23;

    v39[1] = a2;
    v25 = *(v45 + 8);
    v45 += 8;
    v25(v7, v4);
    v26 = sub_2287031D8(v22, v24, &v47);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2080;
    v27 = [v39[0] profileIdentifier];
    v28 = [v27 identifier];

    sub_2287C97F0();

    v29 = sub_2287CBCC0();
    v31 = v30;

    v25(v7, v4);
    v32 = sub_2287031D8(v29, v31, &v47);

    *(v15 + 24) = v32;
    *(v15 + 32) = 2082;
    v46 = a1;

    v33 = sub_2287CB250();
    v35 = sub_2287031D8(v33, v34, &v47);

    *(v15 + 34) = v35;
    v36 = v41;
    _os_log_impl(&dword_2286FF000, v41, v40, "[%{public}s]_%s: Live feeds for profile %s repopulated after save detected; %{public}s", v15, 0x2Au);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v37, -1, -1);
    MEMORY[0x22AABFD90](v15, -1, -1);

    return (*(v42 + 8))(v11, v44);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_2287C62B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287C9B20();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return 1;
  }

  v11 = a2;
  v12 = 0;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v24 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v27 = *(v13 + 56);
  v28 = v14;
  v26 = v11 + 56;
  v15 = (v13 - 8);
  while (1)
  {
    v25 = v12;
    v28(v10, v24 + v27 * v12, v4);
    if (*(v11 + 16))
    {
      sub_2287C71F8(&qword_280DE3430, MEMORY[0x277D11E28], MEMORY[0x277D11E30]);
      v16 = sub_2287CB1B0();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_4:
    v12 = v25 + 1;
    (*v15)(v10, v4);
    if (v12 == v23)
    {
      return 1;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v28(v7, *(v11 + 48) + v18 * v27, v4);
    sub_2287C71F8(&qword_280DE3428, MEMORY[0x277D11E28], MEMORY[0x277D11E38]);
    v20 = sub_2287CB200();
    v21 = *v15;
    (*v15)(v7, v4);
    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21(v10, v4);
  return 0;
}

uint64_t *sub_2287C658C(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v87 = a1;
  v72 = *a4;
  v12 = sub_2287CAA50();
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v73 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x277D85248];
  sub_2287C7474(0, &qword_280DE3628, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v66 - v15;
  sub_22871EB04(0);
  v78 = v16;
  v79 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v75 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ECE0(0);
  v81 = v18;
  v82 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v76 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22871ED74(0);
  v21 = *(v20 - 8);
  v83 = v20;
  v84 = v21;
  MEMORY[0x28223BE20](v20);
  v80 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2287CB6B0();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CB670();
  MEMORY[0x28223BE20](v24);
  v25 = sub_2287CB0E0();
  MEMORY[0x28223BE20](v25 - 8);
  v90[3] = a5;
  v90[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v90);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  sub_22871EBD0();
  v68 = v27;
  swift_allocObject();
  a4[14] = sub_2287CAD00();
  a4[15] = 0;
  sub_2287010E4(a1, (a4 + 2));
  a4[7] = a2;
  v66 = sub_22870FDE4();
  v28 = a2;
  v69 = v28;
  *&v89[0] = sub_2287CBE60();
  *(&v89[0] + 1) = v29;
  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000002DLL);
  v30 = [v28 profileIdentifier];
  v31 = [v30 description];
  v32 = sub_2287CB220();
  v34 = v33;

  MEMORY[0x22AABE980](v32, v34);

  sub_2287CB0A0();
  *&v89[0] = MEMORY[0x277D84F90];
  sub_2287C71F8(&qword_280DE39D8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v35 = MEMORY[0x277D85230];
  sub_2287C7474(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2287C7194(&qword_280DE39E8, &qword_280DE39F0, v35);
  sub_2287CB880();
  (*(v70 + 104))(v67, *MEMORY[0x277D85260], v71);
  v36 = sub_2287CB6D0();
  a4[13] = v36;
  sub_2287010E4(v90, (a4 + 8));
  *&v89[0] = a4[14];
  *&v88[0] = v36;
  v37 = sub_2287CB680();
  v38 = v74;
  (*(*(v37 - 8) + 56))(v74, 1, 1, v37);
  sub_2287C71F8(&qword_280DE0120, sub_22871EBD0, MEMORY[0x277CBCE20]);
  sub_2287C71F8(&qword_280DE3620, sub_22870FDE4, MEMORY[0x277D85228]);
  v39 = v36;

  v40 = v75;
  sub_2287CAFF0();
  sub_2287C7634(v38, &qword_280DE3628, v77);

  v41 = swift_allocObject();
  v42 = v69;
  v43 = v72;
  *(v41 + 16) = v69;
  *(v41 + 24) = v43;
  sub_2287C71F8(&qword_280DE02C8, sub_22871EB04, MEMORY[0x277CBCD60]);
  v44 = v42;
  v45 = v76;
  v46 = v78;
  sub_2287CAF10();

  (*(v79 + 8))(v40, v46);
  v47 = swift_allocObject();
  swift_weakInit();
  sub_2287010E4(v87, v89);
  sub_2287010E4(v90, v88);
  v48 = swift_allocObject();
  sub_228706AD4(v89, (v48 + 2));
  sub_228706AD4(v88, (v48 + 7));
  v48[12] = v47;
  v48[13] = v44;
  v48[14] = v43;
  sub_22871EE60(0);
  sub_2287C71F8(&qword_280DE06A0, sub_22871ECE0, MEMORY[0x277D10DB8]);
  sub_2287C71F8(&qword_280DE0690, sub_22871EE60, MEMORY[0x277D10DC8]);
  v49 = v44;
  v50 = v80;
  v51 = v81;
  sub_2287CB070();

  (*(v82 + 8))(v45, v51);
  v52 = swift_allocObject();
  *(v52 + 16) = v49;
  *(v52 + 24) = v43;
  sub_2287C71F8(&unk_280DE03E8, sub_22871ED74, MEMORY[0x277CBCCE0]);
  v53 = v49;
  v54 = v83;
  v55 = sub_2287CB050();

  (*(v84 + 8))(v50, v54);
  a4[15] = v55;

  v56 = v73;
  sub_2287CA9E0();

  v57 = v56;
  v58 = sub_2287CAA40();
  v59 = sub_2287CB610();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v89[0] = v61;
    *v60 = 136446210;
    *&v88[0] = a4;
    type metadata accessor for BaseFeedPopulationManager();

    v62 = sub_2287CB250();
    v64 = sub_2287031D8(v62, v63, v89);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_2286FF000, v58, v59, "Ready: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AABFD90](v61, -1, -1);
    MEMORY[0x22AABFD90](v60, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v87);
  (*(v85 + 8))(v57, v86);
  __swift_destroy_boxed_opaque_existential_0(v90);
  return a4;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287C7194(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287C7474(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2287C71F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2287C7318(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2287C7360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2287C73E0()
{
  if (!qword_280DDFFE8)
  {
    v0 = sub_2287CB450();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFFE8);
    }
  }
}

uint64_t sub_2287C7430(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2287C758C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2287C7474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2287C74D8(uint64_t a1)
{
  if (!qword_280DE0738)
  {
    v1 = MEMORY[0x277CBCEA8];
    sub_2287C758C(255, &qword_280DE0048, MEMORY[0x277CBCEA8]);
    sub_2287C7430(&unk_280DE0050, &qword_280DE0048, v1, MEMORY[0x277CBCEB0]);
    v2 = sub_2287CAAD0();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE0738);
    }
  }
}

void sub_2287C758C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_2287C73E0();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2287C7634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2287C7474(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2287C76A4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2287C7844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  (*(v0 + 24))();
  return v2(v1, 0);
}

uint64_t sub_2287C7894()
{
  v1 = *(v0 + 48);
  v2 = (*(v0 + 24))();
  return v1(v2);
}

uint64_t InteractiveGeneratorToPipelineAdaptor.__allocating_init(queue:pluginInfo:domain:context:commitImmediately:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  InteractiveGeneratorToPipelineAdaptor.init(queue:pluginInfo:domain:context:commitImmediately:)(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t InteractiveGeneratorToPipelineAdaptor.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v4 = sub_2287C9E70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2287C7A08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2287C7AB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *InteractiveGeneratorToPipelineAdaptor.init(queue:pluginInfo:domain:context:commitImmediately:)(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v61 = a5;
  v72 = a2;
  v73 = a1;
  v62 = *v5;
  v10 = sub_2287CAA50();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C913C(0);
  v59 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287C9ED0();
  v71 = *(v14 - 8);
  v15 = v71;
  MEMORY[0x28223BE20](v14);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2287C9E70();
  v70 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_finishObservation) = 0;
  *(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_queue) = a1;
  v21 = *(v20 + 16);
  v74 = v6;
  v21(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain, a3, v17);
  v22 = *(v15 + 16);
  v22(v6 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_context, a4, v14);
  sub_2287010E4(v72, &v76);
  v67 = a3;
  v23 = a3;
  v24 = v71;
  v21(v19, v23, v17);
  v25 = v60;
  v65 = a4;
  (v22)(v60);
  type metadata accessor for GenerationOperationToGeneratorAdaptor(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = v73;
  v27 = *(v70 + 32);
  v63 = v17;
  v28 = v17;
  v29 = v61;
  v27(v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain, v19, v28);
  (*(v24 + 32))(v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v25, v14);
  sub_22871AC0C(&v76, v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
  *(v74 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_adaptor) = v26;
  v64 = v14;
  if (v29)
  {
    v30 = v73;

    v32 = v62;
    v33 = sub_2287C83CC(v31);
  }

  else
  {
    v22(v25, v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v14);
    v34 = v73;
    sub_2287C9E80();
    (*(v24 + 8))(v25, v14);
    sub_2287010E4(v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v78);
    v79 = *(v26 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
    v35 = v79;
    sub_228718330();
    v36 = v35;
    v37 = sub_2287CAF40();
    sub_228718384(&v76);
    *&v76 = v37;
    sub_2287C91F8(0);
    sub_22870D3A8(0, &qword_280DE3358, MEMORY[0x277D12200]);
    sub_2287C94A8(&qword_280DE1AB8, sub_2287C91F8, MEMORY[0x277CBCD90]);

    v38 = v57;
    sub_2287CAF70();

    sub_2287C94A8(&qword_280DE1C48, sub_2287C913C, MEMORY[0x277CBCC08]);
    v39 = v59;
    v33 = sub_2287CAF40();
    (*(v58 + 8))(v38, v39);
    v32 = v62;
  }

  *(v74 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_publisher) = v33;
  v40 = v66;
  sub_2287CA9D0();

  v41 = sub_2287CAA40();
  v42 = sub_2287CB610();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v75 = v44;
    *&v76 = v32;
    *v43 = 136446722;
    swift_getMetatypeMetadata();
    v45 = sub_2287CB250();
    v47 = sub_2287031D8(v45, v46, &v75);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    sub_2287010E4(*(v74 + OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_adaptor) + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v76);
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    v48 = sub_2287C9A70();
    v50 = v49;
    __swift_destroy_boxed_opaque_existential_0(&v76);
    v51 = sub_2287031D8(v48, v50, &v75);

    *(v43 + 14) = v51;
    *(v43 + 22) = 2082;
    if (v29)
    {
      v52 = 1702195828;
    }

    else
    {
      v52 = 0x65736C6166;
    }

    if (v29)
    {
      v53 = 0xE400000000000000;
    }

    else
    {
      v53 = 0xE500000000000000;
    }

    v54 = sub_2287031D8(v52, v53, &v75);

    *(v43 + 24) = v54;
    _os_log_impl(&dword_2286FF000, v41, v42, "[%{public}s]: Initialized for plugin %{public}s with commitImmediately=%{public}s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v44, -1, -1);
    MEMORY[0x22AABFD90](v43, -1, -1);
  }

  (*(v71 + 8))(v65, v64);
  (*(v70 + 8))(v67, v63);
  __swift_destroy_boxed_opaque_existential_0(v72);
  (*(v68 + 8))(v40, v69);
  return v74;
}

uint64_t sub_2287C83CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2287C9ED0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C913C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v4);
  sub_2287C9E80();
  (*(v5 + 8))(v7, v4);
  sub_2287010E4(a1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo, &v21);
  v22 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue);
  v13 = v22;
  sub_228718330();
  v14 = v13;
  v15 = sub_2287CAF40();
  sub_228718384(v20);
  v20[0] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  sub_2287C91F8(0);
  sub_22870D3A8(0, &qword_280DE3358, MEMORY[0x277D12200]);
  sub_2287C94A8(&qword_280DE1AB8, sub_2287C91F8, MEMORY[0x277CBCD90]);

  sub_2287CAF70();

  sub_2287C94A8(&qword_280DE1C48, sub_2287C913C, MEMORY[0x277CBCC08]);
  v17 = sub_2287CAF40();
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_2287C86D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a4;
  v35 = sub_2287CAA50();
  v7 = *(v35 - 8);
  v8 = MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = sub_2287C9ED0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  (*(v12 + 16))(v14, a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v11);
  sub_2287C9E80();
  (*(v12 + 8))(v14, v11);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_2287C9DD0();
  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_2287CA9D0();
  swift_bridgeObjectRetain_n();

  v16 = sub_2287CAA40();
  v17 = sub_2287CB610();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37[0] = v34;
    *v18 = 136446978;
    v38[0] = a3;
    swift_getMetatypeMetadata();
    v19 = sub_2287CB250();
    v21 = sub_2287031D8(v19, v20, v37);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2050;
    v22 = *(v15 + 16);

    *(v18 + 14) = v22;

    *(v18 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo), *(a2 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo + 24));
    v23 = sub_2287C9A70();
    v25 = sub_2287031D8(v23, v24, v37);

    *(v18 + 24) = v25;
    *(v18 + 32) = 2080;
    v26 = MEMORY[0x22AABEA80](v15, MEMORY[0x277D120A0]);
    v28 = sub_2287031D8(v26, v27, v37);

    *(v18 + 34) = v28;
    _os_log_impl(&dword_2286FF000, v16, v17, "[%{public}s]: %{public}ld changes for plugin %{public}s have been committed immediately; emitting empty generator. Changes: %s", v18, 0x2Au);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v29, -1, -1);
    MEMORY[0x22AABFD90](v18, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v7 + 8))(v10, v35);
  v30 = sub_2287C9CE0();
  v31 = MEMORY[0x277D11EA0];
  v32 = v36;
  v36[3] = v30;
  v32[4] = v31;
  __swift_allocate_boxed_opaque_existential_0(v32);
  return sub_2287C9CB0();
}

uint64_t sub_2287C8C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2287C9E70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C9450(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *a1;
  sub_22870C530();

  sub_2287CADB0();
  sub_2287C94A8(qword_280DE12A8, sub_2287C9450, MEMORY[0x277CBCE80]);
  sub_2287CAF40();
  (*(v12 + 8))(v14, v11);
  v15 = OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain;
  swift_beginAccess();
  (*(v7 + 16))(v9, a2 + v15, v6);
  v16 = sub_2287C9CE0();
  v17 = MEMORY[0x277D11EA0];
  a3[3] = v16;
  a3[4] = v17;
  __swift_allocate_boxed_opaque_existential_0(a3);
  return sub_2287C9CD0();
}

uint64_t InteractiveGeneratorToPipelineAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t InteractiveGeneratorToPipelineAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v2 = sub_2287C9E70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_context;
  v4 = sub_2287C9ED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_2287C90C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore37InteractiveGeneratorToPipelineAdaptor_domain;
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_2287C913C(uint64_t a1)
{
  if (!qword_280DE1C40)
  {
    sub_2287C91F8(255);
    sub_22870D3A8(255, &qword_280DE3358, MEMORY[0x277D12200]);
    sub_2287C94A8(&qword_280DE1AB8, sub_2287C91F8, MEMORY[0x277CBCD90]);
    v1 = sub_2287CAB50();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1C40);
    }
  }
}

void sub_2287C91F8(uint64_t a1)
{
  if (!qword_280DE1AB0)
  {
    sub_22870C530();
    v1 = sub_2287CACD0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE1AB0);
    }
  }
}

uint64_t type metadata accessor for InteractiveGeneratorToPipelineAdaptor(uint64_t a1)
{
  result = qword_280DE20A0;
  if (!qword_280DE20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2287C92BC(uint64_t a1)
{
  result = sub_2287C9E70();
  if (v2 <= 0x3F)
  {
    result = sub_2287C9ED0();
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

void sub_2287C9450(uint64_t a1)
{
  if (!qword_280DE12A0)
  {
    sub_22870C530();
    v1 = sub_2287CADA0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE12A0);
    }
  }
}

uint64_t sub_2287C94A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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