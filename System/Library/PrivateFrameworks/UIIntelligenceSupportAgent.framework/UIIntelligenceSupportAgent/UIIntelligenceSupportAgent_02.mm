uint64_t sub_22BAEA8A8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v5 = a2;
  v53 = sub_22BB1E68C();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F2AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A8, &qword_22BB21288);
  v48 = v5;
  result = sub_22BB1FC1C();
  v13 = result;
  if (*(v11 + 16))
  {
    v14 = 0;
    v15 = v9;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v15 + 16);
    v45 = v15;
    v42 = v3;
    v43 = v6 + 16;
    v46 = v11;
    v47 = v6;
    v49 = (v6 + 32);
    v50 = (v15 + 32);
    v21 = result + 64;
    v22 = v15;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v14 << 6);
      v28 = *(v11 + 48);
      v51 = *(v22 + 72);
      v29 = v28 + v51 * v27;
      if (v48)
      {
        (*v50)(v54, v29, v8);
        v30 = *(v11 + 56);
        v31 = *(v47 + 72);
        (*(v47 + 32))(v52, v30 + v31 * v27, v53);
      }

      else
      {
        (*v44)(v54, v29, v8);
        v32 = *(v11 + 56);
        v31 = *(v47 + 72);
        (*(v47 + 16))(v52, v32 + v31 * v27, v53);
      }

      sub_22BAC36FC(&qword_27D8DF0B0, MEMORY[0x277D74928], MEMORY[0x277D74930]);
      result = sub_22BB1F61C();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v50)((*(v13 + 48) + v51 * v23), v54, v8);
      result = (*v49)(*(v13 + 56) + v31 * v23, v52, v53);
      ++*(v13 + 16);
      v22 = v45;
      v11 = v46;
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v20)
      {
        break;
      }

      v26 = v16[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v4 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v11 + 32);
    v4 = v42;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v4 = v13;
  return result;
}

void sub_22BAEAD50(int64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E9DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_22BB1FAAC();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
      v21 = sub_22BB1F61C();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_22BB1EA5C() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_22BAEB094(int64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_22BB1F2AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_22BB1FAAC();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_22BAC36FC(&qword_27D8DF0B0, MEMORY[0x277D74928], MEMORY[0x277D74930]);
      v22 = sub_22BB1F61C();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(sub_22BB1E68C() - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

void *sub_22BAEB3D8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionID(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF118, &unk_22BB22070);
  v5 = *v0;
  v6 = sub_22BB1FC0C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_22BABE90C(*(v5 + 48) + v21, v4, type metadata accessor for ConnectionID);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_22BAC3614(v4, *(v7 + 48) + v21, type metadata accessor for ConnectionID);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_22BAEB618()
{
  v1 = v0;
  v2 = _s17AsyncProviderTaskVMa(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF050, &qword_22BB21240);
  v5 = *v0;
  v6 = sub_22BB1FC0C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_22BABE90C(*(v5 + 48) + v21, v4, _s17AsyncProviderTaskVMa);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_22BAC3614(v4, *(v7 + 48) + v21, _s17AsyncProviderTaskVMa);
        *(*(v7 + 56) + 8 * v20) = v22;
        result = swift_unknownObjectRetain();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_22BAEB8A8()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionID(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF130, &qword_22BB212F0);
  v5 = *v0;
  v6 = sub_22BB1FC0C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_22BABE90C(*(v5 + 48) + v21, v4, type metadata accessor for ConnectionID);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_22BAC3614(v4, *(v7 + 48) + v21, type metadata accessor for ConnectionID);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_22BAEBAE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF018, &qword_22BB21218);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_22BAEBC50()
{
  v1 = v0;
  v2 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF010, &qword_22BB21210);
  v4 = *v0;
  v5 = sub_22BB1FC0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22BABE90C(*(v4 + 56) + v26, v30, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22BAC3614(v25, *(v27 + 56) + v26, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

char *sub_22BAEBEA8()
{
  v1 = v0;
  v35 = sub_22BB1E55C();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF008, &unk_22BB21F90);
  v3 = *v0;
  v4 = sub_22BB1FC0C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

void *sub_22BAEC128(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_22BB1EADC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_22BB1FC0C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
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

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

char *sub_22BAEC3A0()
{
  v1 = v0;
  v33 = sub_22BB1F2EC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF028, &qword_22BB21220);
  v3 = *v0;
  v4 = sub_22BB1FC0C();
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

void *sub_22BAEC620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF098, &qword_22BB21278);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_22BABFC10(v19, *(&v19 + 1));
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

void *sub_22BAEC790()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A0, &qword_22BB21280);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
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
        v18 = *(*(v2 + 56) + v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_22BABFC10(v19, *(&v19 + 1));
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

void *sub_22BAEC8F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF610, &qword_22BB21248);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_22BAECA60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
  v2 = *v0;
  v3 = sub_22BB1FC0C();
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
        sub_22BABDE24(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22BAEEDE4(v25, (*(v4 + 56) + v22));
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

char *sub_22BAECC40(uint64_t (*a1)(void), uint64_t (*a2)(void, __n128), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v49 = a1(0);
  v52 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v38 - v10;
  v47 = a2(0, v9);
  v51 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_22BB1FC0C();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v8;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v8 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v14;
  }

  return result;
}

uint64_t sub_22BAECF9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for ConnectionID(0);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2;
  v7 = *v2;
  sub_22BB1FDDC();
  v8 = *a1;
  MEMORY[0x23189D810](*a1);
  v24 = v4;
  sub_22BB1EADC();
  sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  v23 = a1;
  sub_22BB1F62C();
  v9 = sub_22BB1FE0C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return (*(v22 + 56))(v21, 1, 1, v24);
  }

  v12 = ~v10;
  v13 = *(v22 + 72);
  while (1)
  {
    sub_22BABE90C(*(v7 + 48) + v13 * v11, v6, type metadata accessor for ConnectionID);
    if (*v6 == v8)
    {
      break;
    }

    sub_22BAC1514(v6, type metadata accessor for ConnectionID);
LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return (*(v22 + 56))(v21, 1, 1, v24);
    }
  }

  v14 = sub_22BB1EAAC();
  sub_22BAC1514(v6, type metadata accessor for ConnectionID);
  if ((v14 & 1) == 0)
  {
    goto LABEL_4;
  }

  v15 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v15;
  v25 = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BB1C360();
    v17 = v25;
  }

  v18 = v21;
  sub_22BAC3614(*(v17 + 48) + v13 * v11, v21, type metadata accessor for ConnectionID);
  sub_22BAED510(v11);
  *v15 = v25;
  return (*(v22 + 56))(v18, 0, 1, v24);
}

uint64_t sub_22BAED268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22BB1E9DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
  v31 = a1;
  v10 = sub_22BB1F61C();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_22BAC36FC(&unk_2814250F0, MEMORY[0x277D746D8], MEMORY[0x277D746E8]);
      v19 = sub_22BB1F65C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BB1C558();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_22BAED834(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_22BAED510(int64_t a1)
{
  v26 = type metadata accessor for ConnectionID(0);
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = sub_22BB1FAAC();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v25 = (v11 + 1) & v10;
      v12 = *(v3 + 72);
      v13 = v10;
      do
      {
        v14 = v7;
        v15 = v12;
        v16 = v12 * v9;
        sub_22BABE90C(*(v6 + 48) + v12 * v9, v5, type metadata accessor for ConnectionID);
        sub_22BB1FDDC();
        v17 = v13;
        MEMORY[0x23189D810](*v5);
        sub_22BB1EADC();
        sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
        sub_22BB1F62C();
        v18 = sub_22BB1FE0C();
        sub_22BAC1514(v5, type metadata accessor for ConnectionID);
        v19 = v18 & v17;
        v13 = v17;
        if (a1 >= v25)
        {
          if (v19 < v25)
          {
            v12 = v15;
            goto LABEL_5;
          }

          v12 = v15;
          if (a1 < v19)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v12 = v15;
          if (v19 < v25 && a1 < v19)
          {
            goto LABEL_5;
          }
        }

        v20 = v12 * a1;
        if (v12 * a1 < v16 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v16 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v20 != v16)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v13;
        v7 = v14;
      }

      while (((*(v14 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }
}

void sub_22BAED834(int64_t a1)
{
  v3 = sub_22BB1E9DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_22BB1FAAC();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
        v23 = sub_22BB1F61C();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_22BAEDB3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1769105779 && a2 == 0xE400000000000000 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BB26DB0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022BB26DD0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22BB1FD9C();

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

unint64_t sub_22BAEDD08()
{
  result = qword_27D8DEF48;
  if (!qword_27D8DEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF48);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceSupportAgent.ActiveRequest(uint64_t a1)
{
  result = qword_281424FA8;
  if (!qword_281424FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BAEDE08(uint64_t a1)
{
  result = sub_22BB1F5BC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IntelligenceSupportAgent.RequestParameters(319);
    if (v3 <= 0x3F)
    {
      result = sub_22BB1F11C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
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

uint64_t sub_22BAEDF68(uint64_t *a1, int a2)
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

uint64_t sub_22BAEDFB0(uint64_t result, int a2, int a3)
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

uint64_t _s14descr283F6AF29O14TimeoutReasonsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr283F6AF29O14TimeoutReasonsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BAEE1A4()
{
  result = qword_27D8DEF50;
  if (!qword_27D8DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF50);
  }

  return result;
}

unint64_t sub_22BAEE1FC()
{
  result = qword_27D8DEF58;
  if (!qword_27D8DEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF58);
  }

  return result;
}

unint64_t sub_22BAEE254()
{
  result = qword_27D8DEF60;
  if (!qword_27D8DEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF60);
  }

  return result;
}

unint64_t sub_22BAEE2AC()
{
  result = qword_27D8DEF68;
  if (!qword_27D8DEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF68);
  }

  return result;
}

unint64_t sub_22BAEE304()
{
  result = qword_27D8DEF70;
  if (!qword_27D8DEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF70);
  }

  return result;
}

unint64_t sub_22BAEE35C()
{
  result = qword_27D8DEF78;
  if (!qword_27D8DEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF78);
  }

  return result;
}

unint64_t sub_22BAEE3B4()
{
  result = qword_27D8DEF80;
  if (!qword_27D8DEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF80);
  }

  return result;
}

unint64_t sub_22BAEE40C()
{
  result = qword_27D8DEF88;
  if (!qword_27D8DEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF88);
  }

  return result;
}

unint64_t sub_22BAEE464()
{
  result = qword_27D8DEF90;
  if (!qword_27D8DEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF90);
  }

  return result;
}

unint64_t sub_22BAEE4BC()
{
  result = qword_27D8DEF98;
  if (!qword_27D8DEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF98);
  }

  return result;
}

unint64_t sub_22BAEE514()
{
  result = qword_27D8DEFA0;
  if (!qword_27D8DEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEFA0);
  }

  return result;
}

unint64_t sub_22BAEE56C()
{
  result = qword_27D8DEFA8;
  if (!qword_27D8DEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEFA8);
  }

  return result;
}

unint64_t sub_22BAEE5C4()
{
  result = qword_27D8DEFB0;
  if (!qword_27D8DEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEFB0);
  }

  return result;
}

uint64_t sub_22BAEE618(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);

  return sub_22BAE07E0(a1);
}

void sub_22BAEE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
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

uint64_t sub_22BAEE72C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0D8, &qword_22BB212A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v28 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0E0, &qword_22BB212A8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22BB1E4CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0E8, &qword_22BB212B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v30 = sub_22BB1E46C();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1E4BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v28 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v29 = &v28 - v19;
  (*(v5 + 104))(v7, *MEMORY[0x277CC9830], v4, v18);
  sub_22BB1E4DC();
  (*(v5 + 8))(v7, v4);
  v20 = sub_22BB1E4EC();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  sub_22BB1E4FC();
  sub_22BB1E45C();
  sub_22BB1E44C();
  (*(v11 + 8))(v13, v30);
  if ((*(v15 + 48))(v2, 1, v14) == 1)
  {
    sub_22BAC81E8(v2, &qword_27D8DF0D8, &qword_22BB212A0);
    v21 = 1;
  }

  else
  {
    v22 = v29;
    (*(v15 + 32))(v29, v2, v14);
    v31[3] = &type metadata for IntelligenceFeatureFlags;
    v31[4] = sub_22BAEEDF4();
    v23 = swift_allocObject();
    v31[0] = v23;
    *(v23 + 16) = "SwiftUI";
    *(v23 + 24) = 7;
    *(v23 + 32) = 2;
    *(v23 + 40) = "Solarium";
    *(v23 + 48) = 8;
    *(v23 + 56) = 2;
    v24 = sub_22BB1E57C();
    __swift_destroy_boxed_opaque_existential_0(v31);
    if (v24)
    {
      v25 = v28;
      sub_22BB1E4AC();
      v21 = sub_22BB1E49C();
      v26 = *(v15 + 8);
      v26(v25, v14);
      v26(v22, v14);
    }

    else
    {
      (*(v15 + 8))(v22, v14);
      v21 = 0;
    }
  }

  return v21 & 1;
}

uint64_t sub_22BAEEC90(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

void sub_22BAEECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_22BAEED44()
{
  sub_22BB1F2EC();
  v1 = *(v0 + 16);

  return sub_22BAE34AC(v1);
}

_OWORD *sub_22BAEEDE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22BAEEDF4()
{
  result = qword_27D8DF0F0;
  if (!qword_27D8DF0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF0F0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22BAEEE80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22BAEEEC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22BAEEF0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22BAEEFB4(uint64_t a1)
{
  result = sub_22BB1EADC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BAEF030(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF150, &qword_22BB214D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAEF914();
  sub_22BB1FE2C();
  v8[15] = 0;
  sub_22BB1FD3C();
  if (!v1)
  {
    type metadata accessor for ConnectionID(0);
    v8[14] = 1;
    sub_22BB1EADC();
    sub_22BACBEBC(&qword_27D8DF158, MEMORY[0x277D74708], MEMORY[0x277D74710]);
    sub_22BB1FD4C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22BAEF1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_22BB1EADC();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF138, &qword_22BB214C8);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAEF914();
  sub_22BB1FE1C();
  if (!v2)
  {
    v17 = v8;
    v11 = v20;
    v12 = v21;
    v24 = 0;
    v13 = v22;
    *v10 = sub_22BB1FCAC();
    v23 = 1;
    sub_22BACBEBC(&qword_27D8DF148, MEMORY[0x277D74708], MEMORY[0x277D74738]);
    v16 = v5;
    sub_22BB1FCBC();
    (*(v11 + 8))(v7, v13);
    (*(v18 + 32))(v10 + *(v17 + 20), v16, v12);
    sub_22BAEF968(v10, v19);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22BAEF4E4()
{
  if (*v0)
  {
    return 0x49737365636F7270;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_22BAEF528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_22BB1FD9C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49737365636F7270 && a2 == 0xEB000000006F666ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22BB1FD9C();

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

uint64_t sub_22BAEF614(uint64_t a1)
{
  v2 = sub_22BAEF914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAEF650(uint64_t a1)
{
  v2 = sub_22BAEF914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BAEF68C()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v0);
  sub_22BB1EADC();
  sub_22BACBEBC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  sub_22BB1F62C();
  return sub_22BB1FE0C();
}

uint64_t sub_22BAEF738(uint64_t a1)
{
  MEMORY[0x23189D810](*v1);
  sub_22BB1EADC();
  sub_22BACBEBC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  return sub_22BB1F62C();
}

uint64_t sub_22BAEF7CC(uint64_t a1)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v1);
  sub_22BB1EADC();
  sub_22BACBEBC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  sub_22BB1F62C();
  return sub_22BB1FE0C();
}

uint64_t sub_22BAEF8A4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_22BB1EAAC();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22BAEF914()
{
  result = qword_27D8DF140;
  if (!qword_27D8DF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF140);
  }

  return result;
}

uint64_t sub_22BAEF968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ConnectionID.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionID.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BAEFB2C()
{
  result = qword_27D8DF160;
  if (!qword_27D8DF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF160);
  }

  return result;
}

unint64_t sub_22BAEFB84()
{
  result = qword_27D8DF168;
  if (!qword_27D8DF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF168);
  }

  return result;
}

unint64_t sub_22BAEFBDC()
{
  result = qword_27D8DF170;
  if (!qword_27D8DF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF170);
  }

  return result;
}

void sub_22BAEFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v35 - v8;
  v41 = sub_22BB1EADC();
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a4 + 40);
    v13 = *(a4 + 16) + 1;
    do
    {
      v14 = --v13 != 0;
      if (!v13)
      {
        break;
      }

      if (*(v12 - 1) == a1 && *v12 == a2)
      {
        break;
      }

      v12 += 5;
    }

    while ((sub_22BB1FD9C() & 1) == 0);
    v16 = *(a4 + 16);
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v14 = 0;
    v16 = *(a4 + 16);
    if (!v16)
    {
      return;
    }
  }

  v42 = v9;
  v39 = a1;
  v46 = a2;
  LOBYTE(a1) = 0;
  v17 = (v10 + 48);
  v37 = (v10 + 32);
  v38 = (v10 + 8);
  v35[2] = *MEMORY[0x277D66F58];
  v35[1] = *MEMORY[0x277D66F50];
  v18 = (a4 + 64);
  v19 = v41;
  v36 = v17;
  v40 = v14;
  while (1)
  {
    v20 = *(v18 - 4);
    v21 = *v18;
    if (v14)
    {
      if (v46)
      {
        v22 = v20 == v39 && *(v18 - 3) == v46;
        if (v22 || (sub_22BB1FD9C() & 1) != 0)
        {
          return;
        }
      }

      goto LABEL_39;
    }

    v23 = *(v18 - 3);
    v24 = *(v18 - 1);
    v43 = *(v18 - 2);
    v25 = v42;
    sub_22BAF1E60(v44, v42);
    if ((*v17)(v25, 1, v19) == 1)
    {
      sub_22BAC81E8(v25, &qword_27D8DEEA0, &qword_22BB20A30);
LABEL_38:
      v14 = v40;
      goto LABEL_39;
    }

    (*v37)(v45, v25, v19);
    swift_bridgeObjectRetain_n();

    v26 = sub_22BB1EA9C();
    if (!v24)
    {
      if (!v27)
      {
        goto LABEL_52;
      }

LABEL_28:

      goto LABEL_29;
    }

    if (!v27)
    {
      goto LABEL_28;
    }

    if (v43 == v26 && v24 == v27)
    {
      break;
    }

    v28 = sub_22BB1FD9C();

    if (v28)
    {

      goto LABEL_52;
    }

LABEL_29:
    v43 = v24;
    v29 = v45;
    v30 = sub_22BB1EA7C();
    v19 = v41;
    if ((v30 & 1) == 0)
    {
      (*v38)(v29, v41);

      v17 = v36;
      goto LABEL_38;
    }

    if (v20 == sub_22BB1F68C() && v23 == v31)
    {

LABEL_49:

      (*v38)(v45, v19);
      return;
    }

    v32 = sub_22BB1FD9C();

    if (v32)
    {
      v19 = v41;
      goto LABEL_49;
    }

    if (v20 == sub_22BB1F68C() && v23 == v33)
    {

      (*v38)(v45, v41);

      return;
    }

    v34 = sub_22BB1FD9C();

    v19 = v41;
    (*v38)(v45, v41);

    v17 = v36;
    v14 = v40;
    if (v34)
    {
      return;
    }

LABEL_39:
    if (v21 <= a1)
    {
      LODWORD(a1) = a1;
    }

    else
    {
      LODWORD(a1) = v21;
    }

    if (--v16)
    {
      v18 += 40;
      if (a1 != 3)
      {
        continue;
      }
    }

    return;
  }

  swift_bridgeObjectRelease_n();
LABEL_52:

  (*v38)(v45, v41);
}

uint64_t sub_22BAF0144()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAC3744(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC8324(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710, MEMORY[0x277D83970]);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281424270 = result;
  return result;
}

uint64_t sub_22BAF03B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F5BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  *(v2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF198, &qword_22BB21718);
  v11 = swift_allocObject();
  v16[8] = 1;
  v16[0] = 1;
  *(v11 + 80) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = MEMORY[0x277D84F98];
  *(v11 + 48) = MEMORY[0x277D84F90];
  *(v11 + 56) = v12;
  v13 = MEMORY[0x277D84FA0];
  *(v11 + 64) = v12;
  *(v11 + 72) = v13;
  *(v2 + 24) = v11;
  sub_22BB1F0CC();
  sub_22BB1F10C();
  sub_22BB1F5DC();
  v14 = sub_22BB1F11C();
  (*(*(v14 - 8) + 8))(a1, v14);
  (*(v5 + 8))(v7, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline, v10, v4);
  return v2;
}

uint64_t sub_22BAF05A8()
{
  v1 = v0;
  v2 = sub_22BB1F52C();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = _s17AsyncProviderTaskVMa(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_22BAC8A94(v0 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline, 0xD00000000000001DLL, 0x800000022BB272C0, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22BAC81E8(v10, &qword_27D8DF048, &unk_22BB216E0);
  }

  sub_22BACDEBC(v10, v17);
  if (qword_281424268 != -1)
  {
    swift_once();
  }

  v23 = qword_281424270;
  sub_22BAC9EBC(v17, v14);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  sub_22BACDEBC(v14, v20 + v19);
  aBlock[4] = sub_22BAC8248;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);

  sub_22BB1F54C();
  v28 = MEMORY[0x277D84F90];
  sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
  v22 = v27;
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v7, v4, v21);
  _Block_release(v21);
  (*(v26 + 8))(v4, v22);
  (*(v24 + 8))(v7, v25);
  sub_22BAC9F20(v17);
}

void sub_22BAF0A40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22BB1F45C();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v16 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_22BAF2C78(a1, a2);
  v17 = sub_22BAF2BB8();
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v6;
  sub_22BAF2CCC(a1, a2);
  sub_22BAC83C0(0, &qword_2814240C0, 0x277D0ACF0);
  sub_22BB1F68C();
  v27 = v17;
  v18 = sub_22BB1F9DC();

  if (v18)
  {
    if (([v18 isMainDisplay] & 1) == 0)
    {
      sub_22BAF0E68(v18, v23, v24);
    }

    v19 = v27;
  }

  else
  {
    sub_22BB1F43C();
    v20 = sub_22BB1F44C();
    v21 = sub_22BB1F8BC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22BABB000, v20, v21, "unable to decode FBSDisplayIdentity", v22, 2u);
      MEMORY[0x23189DF20](v22, -1, -1);
    }

    (*(v28 + 8))(v14, v29);
  }
}

void sub_22BAF0E68(void *a1, uint64_t a2, unint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v47 = sub_22BB1F52C();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22BB1F56C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F5BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = &v37 - v12;
  v13 = _s17AsyncProviderTaskVMa(0);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v40 = &v37 - v16;
  v54 = a1;
  sub_22BB1EAFC();
  sub_22BB1EAEC();

  v17 = *(v3 + 24);
  v41 = a1;
  v53 = a1;
  os_unfair_lock_lock(v17 + 20);
  sub_22BAF2D48(&aBlock);
  os_unfair_lock_unlock(v17 + 20);
  if (aBlock == 1)
  {
    v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = *(v8 + 16);
    v39 = v3;
    v18(v10, v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline, v7);
    aBlock = 0;
    v57 = 0xE000000000000000;
    sub_22BB1FB7C();

    aBlock = 0xD000000000000022;
    v57 = 0x800000022BB271A0;
    v19 = v52;
    v20 = v51;
    if (v52)
    {
      v21 = v51;
    }

    else
    {
      v21 = 7104878;
    }

    if (v52)
    {
      v22 = v52;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    MEMORY[0x23189D130](v21, v22);

    v23 = v50;
    sub_22BAC8A94(v10, aBlock, v57, v50);

    (*(v8 + 8))(v10, v7);
    v24 = v48;
    if ((*(v48 + 48))(v23, 1, v49) == 1)
    {
      sub_22BAC81E8(v23, &qword_27D8DF048, &unk_22BB216E0);
    }

    else
    {
      v25 = v19;
      v26 = v40;
      sub_22BACDEBC(v23, v40);
      if (qword_281424268 != -1)
      {
        swift_once();
      }

      v27 = v38;
      sub_22BAC9EBC(v26, v38);
      v28 = (*(v24 + 80) + 48) & ~*(v24 + 80);
      v29 = swift_allocObject();
      v30 = v41;
      v31 = v39;
      v29[2] = v41;
      v29[3] = v31;
      v29[4] = v20;
      v29[5] = v25;
      sub_22BACDEBC(v27, v29 + v28);
      v60 = sub_22BAF2D64;
      v61 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = sub_22BAC37D4;
      v59 = &block_descriptor_1;
      v32 = _Block_copy(&aBlock);

      v33 = v30;

      v34 = v42;
      sub_22BB1F54C();
      v55 = MEMORY[0x277D84F90];
      sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
      sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
      v35 = v44;
      v36 = v47;
      sub_22BB1FA8C();
      MEMORY[0x23189D350](0, v34, v35, v32);
      _Block_release(v32);
      (*(v46 + 8))(v35, v36);
      (*(v43 + 8))(v34, v45);
      sub_22BAC9F20(v26);
    }
  }
}

void sub_22BAF1548(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = sub_22BB1A088(&v4, a1);

  *a2 = v3 & 1;
}

void sub_22BAF15A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22BB1F45C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = SBSCreateLayoutServiceEndpointForExternalDisplay();
  if (v13)
  {
    v14 = v13;
    v23 = [objc_opt_self() configurationWithEndpoint_];
    sub_22BACD014(v23, a3, a4, a5, 0);

    v15 = v23;
  }

  else
  {
    sub_22BB1F43C();
    v16 = a1;
    v17 = sub_22BB1F44C();
    v18 = sub_22BB1F8BC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_22BABB000, v17, v18, "unable to create endpoint for FBSDisplayIdentity: %{public}@", v19, 0xCu);
      sub_22BAC81E8(v20, &qword_27D8DF178, &qword_22BB216F0);
      MEMORY[0x23189DF20](v20, -1, -1);
      MEMORY[0x23189DF20](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_22BAF17E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v38 = a6;
  v39 = a7;
  v13 = sub_22BB1F51C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BB1F45C();
  v40 = *(v17 - 8);
  v41 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((a1 + 24));
  v20 = *(a1 + 16);
  if (v20)
  {
    v37 = a5;
    [v20 invalidate];

    *(a1 + 16) = 0;
    os_unfair_lock_unlock((a1 + 24));
    sub_22BB1F43C();
    (*(v14 + 16))(v16, a2, v13);
    sub_22BABFC10(a3, a4);
    v21 = sub_22BB1F44C();
    v22 = sub_22BB1F8BC();
    sub_22BABFC24(a3, a4);
    if (os_log_type_enabled(v21, v22))
    {
      v36 = v22;
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v23 = 136446466;
      v24 = sub_22BB1F4FC();
      v26 = v25;
      (*(v14 + 8))(v16, v13);
      v27 = sub_22BABDC4C(v24, v26, &v45);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      if (a4 == 1)
      {
        v28 = 0xE400000000000000;
        v29 = 1852399981;
      }

      else
      {
        v43 = 0;
        v44 = 0xE000000000000000;

        sub_22BB1FB7C();

        v43 = 0xD000000000000015;
        v44 = 0x800000022BB27230;
        v30 = a3;
        v31 = a4;
        if (!a4)
        {
          sub_22BABFC24(a3, 0);
          v31 = 0xE300000000000000;
          v30 = 7104878;
        }

        MEMORY[0x23189D130](v30, v31);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v29 = v43;
        v28 = v44;
      }

      v32 = sub_22BABDC4C(v29, v28, &v45);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_22BABB000, v21, v36, "scheduling retry after waiting %{public}s for FBSDisplayLayoutMonitor to provide window list for display: %{public}s", v23, 0x16u);
      v33 = v35;
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v33, -1, -1);
      MEMORY[0x23189DF20](v23, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    (*(v40 + 8))(v19, v41);
    if (__OFADD__(v42, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22BACD014(v38, a3, a4, v39, v42 + 1);
    }
  }

  else
  {

    os_unfair_lock_unlock((a1 + 24));
  }
}

uint64_t sub_22BAF1C00()
{

  v1 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent32EmbeddedWindowVisibilityProvider_deadline;
  v2 = sub_22BB1F5BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmbeddedWindowVisibilityProvider(uint64_t a1)
{
  result = qword_281424248;
  if (!qword_281424248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BAF1CF8(uint64_t a1)
{
  result = sub_22BB1F5BC();
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

uint64_t sub_22BAF1DB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BAF1E00(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_22BAF1E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22BAF1ED0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_22BAF1F44(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v10 = 0x278720000;
    while (1)
    {
      v11 = v8++;
      if (v8 < v7)
      {
        v116 = v9;
        v118 = v11;
        v12 = *a3;
        v4 = *(*a3 + 8 * v11);
        v13 = *(*a3 + 8 * v8);
        v14 = v4;
        v15 = [v13 *(v10 + 2248)];
        if (v15 == [v14 *(v10 + 2248)])
        {
          v16 = [v13 layoutRole];
          if ((v16 - 1) > 9)
          {
            v4 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v4 = qword_22BB217B0[(v16 - 1)];
          }

          v21 = [v14 layoutRole];
          if ((v21 - 1) > 9)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = qword_22BB217B0[(v21 - 1)];
          }

          v20 = v4 < v22;
        }

        else
        {
          v17 = [v13 *(v10 + 2248)];
          v18 = [v14 *(v10 + 2248)];

          v19 = v18 < v17;
          v10 = 0x278720000;
          v20 = v19;
        }

        v122 = v20;
        v11 = v118;
        v8 = v118 + 2;
        if (v118 + 2 < v7)
        {
          v23 = (v12 + 8 * v118 + 16);
          do
          {
            v4 = v8;
            v27 = *(v23 - 1);
            v28 = *v23;
            v29 = v27;
            v30 = [v28 *(v10 + 2248)];
            if (v30 == [v29 *(v10 + 2248)])
            {
              v31 = [v28 layoutRole];
              if ((v31 - 1) > 9)
              {
                v32 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = qword_22BB217B0[(v31 - 1)];
              }

              v33 = v7;
              v34 = [v29 layoutRole];
              if ((v34 - 1) > 9)
              {
                v35 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = qword_22BB217B0[(v34 - 1)];
              }

              v36 = v32 >= v35;
              v7 = v33;
              if (((v122 ^ v36) & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v24 = [v28 *(v10 + 2248)];
              v25 = [v29 *(v10 + 2248)];

              v19 = v25 < v24;
              v10 = 0x278720000uLL;
              v26 = !v19;
              if (v122 == v26)
              {
LABEL_31:
                v9 = v116;
                v8 = v4;
                goto LABEL_35;
              }
            }

            v8 = v4 + 1;
            ++v23;
          }

          while (v7 != v4 + 1);
          v8 = v7;
          v9 = v116;
LABEL_35:
          v11 = v118;
          if (!v122)
          {
            goto LABEL_43;
          }

LABEL_36:
          if (v8 < v11)
          {
            goto LABEL_153;
          }

          if (v11 < v8)
          {
            v37 = 8 * v8 - 8;
            v38 = 8 * v11;
            v39 = v8;
            v40 = v11;
            while (1)
            {
              if (v40 != --v39)
              {
                v41 = *a3;
                if (!*a3)
                {
                  goto LABEL_159;
                }

                v42 = *(v41 + v38);
                *(v41 + v38) = *(v41 + v37);
                *(v41 + v37) = v42;
              }

              ++v40;
              v37 -= 8;
              v38 += 8;
              if (v40 >= v39)
              {
                goto LABEL_43;
              }
            }
          }

          goto LABEL_43;
        }

        v9 = v116;
        if (v20)
        {
          goto LABEL_36;
        }
      }

LABEL_43:
      v43 = a3[1];
      if (v8 >= v43)
      {
        goto LABEL_70;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_152;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_70;
      }

      v44 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        goto LABEL_154;
      }

      if (v44 >= v43)
      {
        v44 = a3[1];
      }

      if (v44 < v11)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (v8 == v44)
      {
        goto LABEL_70;
      }

      v117 = v9;
      v119 = v11;
      v114 = v6;
      v7 = *a3;
      v45 = *a3 + 8 * v8 - 8;
      v46 = v11 - v8;
      v121 = v44;
      while (2)
      {
        v123 = v8;
        v47 = *(v7 + 8 * v8);
        v48 = v46;
        v4 = v45;
        while (1)
        {
          v49 = *v4;
          v50 = v47;
          v51 = v49;
          v52 = [v50 *(v10 + 2248)];
          if (v52 == [v51 *(v10 + 2248)])
          {
            break;
          }

          v55 = [v50 *(v10 + 2248)];
          v56 = [v51 *(v10 + 2248)];

          if (v56 >= v55)
          {
            goto LABEL_52;
          }

LABEL_65:
          if (!v7)
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v59 = *v4;
          v47 = *(v4 + 8);
          *v4 = v47;
          *(v4 + 8) = v59;
          v4 -= 8;
          v60 = __CFADD__(v48++, 1);
          v10 = 0x278720000;
          if (v60)
          {
            goto LABEL_53;
          }
        }

        v53 = [v50 layoutRole];
        if ((v53 - 1) > 9)
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = qword_22BB217B0[(v53 - 1)];
        }

        v57 = [v51 layoutRole];
        if ((v57 - 1) > 9)
        {
          v58 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = qword_22BB217B0[(v57 - 1)];
        }

        if (v54 < v58)
        {
          goto LABEL_65;
        }

LABEL_52:
        v10 = 0x278720000uLL;
LABEL_53:
        v8 = v123 + 1;
        v45 += 8;
        --v46;
        if (v123 + 1 != v121)
        {
          continue;
        }

        break;
      }

      v8 = v121;
      v6 = v114;
      v9 = v117;
      v11 = v119;
LABEL_70:
      if (v8 < v11)
      {
        goto LABEL_151;
      }

      v61 = v9;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v9 = v61;
      }

      else
      {
        v9 = sub_22BAF6114(0, *(v61 + 2) + 1, 1, v61);
      }

      v4 = *(v9 + 2);
      v62 = *(v9 + 3);
      v63 = v4 + 1;
      if (v4 >= v62 >> 1)
      {
        v9 = sub_22BAF6114((v62 > 1), v4 + 1, 1, v9);
      }

      *(v9 + 2) = v63;
      v64 = &v9[16 * v4];
      *(v64 + 4) = v11;
      *(v64 + 5) = v8;
      v65 = *a1;
      if (!*a1)
      {
        goto LABEL_161;
      }

      if (v4)
      {
        while (2)
        {
          v66 = v63 - 1;
          if (v63 >= 4)
          {
            v71 = &v9[16 * v63 + 32];
            v72 = *(v71 - 64);
            v73 = *(v71 - 56);
            v77 = __OFSUB__(v73, v72);
            v74 = v73 - v72;
            if (v77)
            {
              goto LABEL_138;
            }

            v76 = *(v71 - 48);
            v75 = *(v71 - 40);
            v77 = __OFSUB__(v75, v76);
            v69 = v75 - v76;
            v70 = v77;
            if (v77)
            {
              goto LABEL_139;
            }

            v78 = &v9[16 * v63];
            v80 = *v78;
            v79 = *(v78 + 1);
            v77 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v77)
            {
              goto LABEL_141;
            }

            v77 = __OFADD__(v69, v81);
            v82 = v69 + v81;
            if (v77)
            {
              goto LABEL_144;
            }

            if (v82 >= v74)
            {
              v100 = &v9[16 * v66 + 32];
              v102 = *v100;
              v101 = *(v100 + 1);
              v77 = __OFSUB__(v101, v102);
              v103 = v101 - v102;
              if (v77)
              {
                goto LABEL_148;
              }

              if (v69 < v103)
              {
                v66 = v63 - 2;
              }
            }

            else
            {
LABEL_90:
              if (v70)
              {
                goto LABEL_140;
              }

              v83 = &v9[16 * v63];
              v85 = *v83;
              v84 = *(v83 + 1);
              v86 = __OFSUB__(v84, v85);
              v87 = v84 - v85;
              v88 = v86;
              if (v86)
              {
                goto LABEL_143;
              }

              v89 = &v9[16 * v66 + 32];
              v91 = *v89;
              v90 = *(v89 + 1);
              v77 = __OFSUB__(v90, v91);
              v92 = v90 - v91;
              if (v77)
              {
                goto LABEL_146;
              }

              if (__OFADD__(v87, v92))
              {
                goto LABEL_147;
              }

              if (v87 + v92 < v69)
              {
                goto LABEL_104;
              }

              if (v69 < v92)
              {
                v66 = v63 - 2;
              }
            }
          }

          else
          {
            if (v63 == 3)
            {
              v67 = *(v9 + 4);
              v68 = *(v9 + 5);
              v77 = __OFSUB__(v68, v67);
              v69 = v68 - v67;
              v70 = v77;
              goto LABEL_90;
            }

            v93 = &v9[16 * v63];
            v95 = *v93;
            v94 = *(v93 + 1);
            v77 = __OFSUB__(v94, v95);
            v87 = v94 - v95;
            v88 = v77;
LABEL_104:
            if (v88)
            {
              goto LABEL_142;
            }

            v96 = &v9[16 * v66];
            v98 = *(v96 + 4);
            v97 = *(v96 + 5);
            v77 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v77)
            {
              goto LABEL_145;
            }

            if (v99 < v87)
            {
              break;
            }
          }

          v4 = v66 - 1;
          if (v66 - 1 >= v63)
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
            goto LABEL_155;
          }

          if (!*a3)
          {
            goto LABEL_158;
          }

          v7 = v8;
          v104 = v9;
          v105 = *&v9[16 * v4 + 32];
          v106 = *&v9[16 * v66 + 40];
          sub_22BAF27D0((*a3 + 8 * v105), (*a3 + 8 * *&v9[16 * v66 + 32]), (*a3 + 8 * v106), v65);
          if (v6)
          {
            goto LABEL_133;
          }

          if (v106 < v105)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_22BB10CB4(v104);
          }

          if (v4 >= *(v104 + 2))
          {
            goto LABEL_137;
          }

          v107 = &v104[16 * v4];
          *(v107 + 4) = v105;
          *(v107 + 5) = v106;
          sub_22BB10C28(v66);
          v9 = v104;
          v63 = *(v104 + 2);
          v8 = v7;
          if (v63 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_122;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_122:
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_162;
  }

  v4 = v9;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v108 = v4;
  }

  else
  {
LABEL_156:
    v108 = sub_22BB10CB4(v4);
  }

  v109 = v6;
  v4 = *(v108 + 2);
  if (v4 < 2)
  {
LABEL_133:

    return;
  }

  while (*a3)
  {
    v6 = v4 - 1;
    v110 = *&v108[16 * v4];
    v111 = v108;
    v112 = *&v108[16 * v4 + 24];
    sub_22BAF27D0((*a3 + 8 * v110), (*a3 + 8 * *&v108[16 * v4 + 16]), (*a3 + 8 * v112), v7);
    if (v109)
    {
      goto LABEL_133;
    }

    if (v112 < v110)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = sub_22BB10CB4(v111);
    }

    if (v4 - 2 >= *(v111 + 2))
    {
      goto LABEL_150;
    }

    v113 = &v111[16 * v4];
    *v113 = v110;
    *(v113 + 1) = v112;
    sub_22BB10C28(v4 - 1);
    v108 = v111;
    v4 = *(v111 + 2);
    if (v4 <= 1)
    {
      goto LABEL_133;
    }
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

uint64_t sub_22BAF27D0(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v31 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 >= 8 && v31 > v6)
    {
      v48 = v4;
LABEL_35:
      v47 = v31;
      v32 = v31 - 1;
      --v5;
      v33 = v14;
      do
      {
        v34 = *--v33;
        v35 = v32;
        v36 = *v32;
        v37 = v34;
        v38 = v36;
        v39 = [v37 level];
        if (v39 == [v38 level])
        {
          v40 = [v37 layoutRole];
          if ((v40 - 1) > 9)
          {
            v41 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = qword_22BB217B0[(v40 - 1)];
          }

          v44 = [v38 layoutRole];
          if ((v44 - 1) > 9)
          {
            v45 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = qword_22BB217B0[(v44 - 1)];
          }

          if (v41 < v45)
          {
LABEL_49:
            v4 = v48;
            if (v5 + 1 != v47)
            {
              *v5 = *v35;
            }

            if (v14 <= v48 || (v31 = v35, v35 <= v6))
            {
              v31 = v35;
              goto LABEL_55;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v42 = [v37 level];
          v43 = [v38 level];

          if (v43 < v42)
          {
            goto LABEL_49;
          }
        }

        v4 = v48;
        if (v5 + 1 != v14)
        {
          *v5 = *v33;
        }

        --v5;
        v14 = v33;
        v32 = v35;
      }

      while (v33 > v48);
      v14 = v33;
      v31 = v47;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      do
      {
        v16 = v15;
        v17 = *v4;
        v18 = *v15;
        v19 = v17;
        v20 = [v18 level];
        if (v20 == [v19 level])
        {
          v21 = [v18 layoutRole];
          if ((v21 - 1) > 9)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = qword_22BB217B0[(v21 - 1)];
          }

          v28 = [v19 layoutRole];
          if ((v28 - 1) > 9)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = qword_22BB217B0[(v28 - 1)];
          }

          if (v22 >= v29)
          {
LABEL_24:
            v27 = v4;
            v30 = v6 == v4++;
            v15 = v16;
            if (v30)
            {
              goto LABEL_26;
            }

LABEL_25:
            *v6 = *v27;
            goto LABEL_26;
          }
        }

        else
        {
          v23 = [v18 level];
          v24 = v4;
          v25 = [v19 level];

          v26 = v25 < v23;
          v4 = v24;
          if (!v26)
          {
            goto LABEL_24;
          }
        }

        v27 = v16;
        v15 = v16 + 1;
        if (v6 != v16)
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v6;
      }

      while (v4 < v14 && v15 < v5);
    }

    v31 = v6;
  }

LABEL_55:
  if (v31 != v4 || v31 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v4, 8 * (v14 - v4));
  }

  return 1;
}

id sub_22BAF2BB8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22BB1E48C();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_22BB1E47C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_22BAF2C78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22BAF2CCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_22BAF2D64()
{
  v1 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_22BAF15A4(v2, v3, v4, v5, v6);
}

void sub_22BAF2DCC()
{
  v1 = *(sub_22BB1F51C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v7 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + v3);
  v10 = *(v0 + v3 + 8);
  v11 = *(v0 + v4);
  v12 = *(v0 + v5);
  v13 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22BAF17E8(v8, v0 + v2, v9, v10, v11, v12, v0 + v7, v13);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22BAF2F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22BAF2F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BAF2FD0(uint64_t a1)
{
  result = sub_22BB1F2EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BAF3064()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1A0, &qword_22BB218B8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_2814247A8 = result;
  return result;
}

uint64_t sub_22BAF30A8()
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v0);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAF3118(uint64_t a1)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*v1);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAF31AC()
{
  v0 = sub_22BB1F8EC();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22BB1F90C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F56C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v7[1] = MEMORY[0x277D84F90];
  sub_22BAF3A74(&unk_2814240D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC836C(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_2814247C0 = result;
  return result;
}

uint64_t sub_22BAF340C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_22BB1F52C();
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22BB1F56C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s17AsyncProviderTaskVMa(0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = v7;
  v39 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F51C();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = sub_22BB1F95C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BB1F5BC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB1F59C();
  sub_22BAF3A74(&qword_281424178, MEMORY[0x277D851E0], MEMORY[0x277D851E8]);
  v40 = a2;
  LOBYTE(a2) = sub_22BB1F64C();
  (*(v19 + 8))(v21, v18);
  v22 = 0;
  if (a2)
  {
    v34 = v3;
    v33[1] = sub_22BAC83C0(0, &qword_2814240B0, 0x277D85CA0);
    if (qword_2814247B8 != -1)
    {
      swift_once();
    }

    aBlock[0] = MEMORY[0x277D84F90];
    sub_22BAF3A74(&qword_2814240B8, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF060, &qword_22BB21250);
    sub_22BAC836C(&qword_281424138, &unk_27D8DF060, &qword_22BB21250);
    sub_22BB1FA8C();
    v22 = sub_22BB1F96C();
    (*(v15 + 8))(v17, v14);
    ObjectType = swift_getObjectType();
    sub_22BAE33C0(v13);
    sub_22BAE3434(v10);
    MEMORY[0x23189D3F0](v40, v13, v10, ObjectType);
    v24 = v36;
    v25 = *(v35 + 8);
    v25(v10, v36);
    v25(v13, v24);
    v26 = v39;
    sub_22BAC9EBC(v41, v39);
    v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v28 = swift_allocObject();
    sub_22BACDEBC(v26, v28 + v27);
    aBlock[4] = sub_22BACE618;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22BAC37D4;
    aBlock[3] = &block_descriptor_2;
    v29 = _Block_copy(aBlock);
    v30 = v42;
    sub_22BAE3560(ObjectType);
    v31 = v44;
    sub_22BAE3564();
    sub_22BB1F97C();
    _Block_release(v29);
    (*(v46 + 8))(v31, v34);
    (*(v43 + 8))(v30, v45);

    sub_22BB1F99C();
  }

  return v22;
}

uint64_t sub_22BAF3A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_26UIIntelligenceSupportAgent16FragmentCollatorC10DisplayKeyO(uint64_t a1)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22BAF3B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BAF3BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_22BAF3C44(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t _s18SystemOverlayStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18SystemOverlayStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BAF3DD0()
{
  result = qword_27D8DF1A8;
  if (!qword_27D8DF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1A8);
  }

  return result;
}

uint64_t sub_22BAF3E24(uint64_t a1, unint64_t a2)
{
  if (a2 == 1)
  {
    return 1852399981;
  }

  v3 = a2;

  sub_22BB1FB7C();

  v5 = a1;
  if (!v3)
  {
    sub_22BABFC24(a1, 0);
    v3 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x23189D130](v5, v3);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_22BAF3EF8()
{
  v1 = *(v0 + 8);
  sub_22BB1FDDC();
  if (v1 == 1)
  {
    MEMORY[0x23189D810](0);
  }

  else
  {
    MEMORY[0x23189D810](1);
    sub_22BB1FDFC();
    if (v1)
    {
      sub_22BB1F6EC();
    }
  }

  return sub_22BB1FE0C();
}

uint64_t sub_22BAF3F88(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    return MEMORY[0x23189D810](0);
  }

  MEMORY[0x23189D810](1);
  if (!v2)
  {
    return sub_22BB1FDFC();
  }

  sub_22BB1FDFC();

  return sub_22BB1F6EC();
}

uint64_t sub_22BAF4018(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_22BB1FDDC();
  if (v2 == 1)
  {
    MEMORY[0x23189D810](0);
  }

  else
  {
    MEMORY[0x23189D810](1);
    sub_22BB1FDFC();
    if (v2)
    {
      sub_22BB1F6EC();
    }
  }

  return sub_22BB1FE0C();
}

BOOL sub_22BAF40AC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (sub_22BB1FD9C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_22BAF4130@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22BAF4210(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22BAF41BC()
{
  result = qword_281424860[0];
  if (!qword_281424860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281424860);
  }

  return result;
}

unint64_t sub_22BAF4210(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t IntelligenceSupportAgent.TimeoutReasons.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84FA0];
  v2 = MEMORY[0x277D84F90];
  result = sub_22BAF709C(MEMORY[0x277D84F90], &qword_27D8DF2B8, &unk_22BB21F78, &unk_27D8DEFF8, &unk_22BB21200);
  *(a1 + 16) = result;
  *(a1 + 24) = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.waitingForProcesses.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.waitingForClientTasks.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.waitingForSystemTasks.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_22BAF43E8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD00000000000001ALL;
  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22BAF4474@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BAF7F64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BAF449C(uint64_t a1)
{
  v2 = sub_22BAF727C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAF44D8(uint64_t a1)
{
  v2 = sub_22BAF727C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1B0, &qword_22BB21AE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v16 = *(v1 + 1);
  v8 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = v8;
  v13 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAF727C();
  sub_22BB1FE2C();
  LOBYTE(v18) = 0;
  sub_22BB1FD1C();
  if (!v2)
  {
    v9 = v14;
    v10 = v15;
    v11 = v13;
    LOBYTE(v18) = 1;
    sub_22BB1FD1C();
    v18 = v10;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BAF73B0(&qword_27D8DF1C8, &qword_27D8DF158, MEMORY[0x277D74710], MEMORY[0x277D83B50]);
    sub_22BB1FD4C();
    v18 = v9;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    sub_22BAF72D0();
    sub_22BB1FD4C();
    v18 = v11;
    v17 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    sub_22BAF752C(&qword_27D8DF1E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22BB1FD4C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1E8, &qword_22BB21B00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v18 = sub_22BAF709C(MEMORY[0x277D84F90], &qword_27D8DF2B8, &unk_22BB21F78, &unk_27D8DEFF8, &unk_22BB21200);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAF727C();
  sub_22BB1FE1C();
  if (!v2)
  {
    v9 = v6;
    LOBYTE(v20) = 0;
    v17 = sub_22BB1FC8C();
    LOBYTE(v20) = 1;
    v16 = sub_22BB1FC8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    v19 = 2;
    sub_22BAF73B0(&qword_27D8DF1F0, &qword_27D8DF148, MEMORY[0x277D74738], MEMORY[0x277D83B70]);
    sub_22BB1FCBC();
    v11 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    v19 = 3;
    sub_22BAF744C();
    sub_22BB1FCBC();

    v12 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    v19 = 4;
    sub_22BAF752C(&qword_27D8DF200, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22BB1FCBC();
    (*(v9 + 8))(v8, v5);
    v13 = v20;
    v14 = v16 & 1;
    *a2 = v17 & 1;
    *(a2 + 1) = v14;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void IntelligenceSupportAgent.ElementHierarchy.timeoutReasons.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_22BAEE694(v2, v3, v4, v5);
}

__n128 IntelligenceSupportAgent.ElementHierarchy.timeoutReasons.setter(uint64_t a1)
{
  sub_22BAEECF4(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.roots.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.executableCommands.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}

double IntelligenceSupportAgent.ElementHierarchy.init(roots:executableCommands:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = a1;
  *(a3 + 40) = v3;
  return result;
}

unint64_t sub_22BAF4D24()
{
  v1 = 0x73746F6F72;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5274756F656D6974;
  }
}

uint64_t sub_22BAF4D8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BAF8124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BAF4DC0(uint64_t a1)
{
  v2 = sub_22BAF7598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAF4DFC(uint64_t a1)
{
  v2 = sub_22BAF7598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.ElementHierarchy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF208, &qword_22BB21B08);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v18 = v1[5];
  v19 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_22BAEE694(v4, v5, v7, v6);
  sub_22BAF7598();
  sub_22BB1FE2C();
  v22 = v4;
  v23 = v5;
  v24 = v7;
  v25 = v6;
  v13 = v3;
  v26 = 0;
  sub_22BAF75EC();
  v14 = v20;
  sub_22BB1FCFC();
  sub_22BAEECF4(v22, v23, v24, v25);
  if (v14)
  {
    return (*(v21 + 8))(v12, v3);
  }

  v16 = v18;
  v17 = v21;
  v22 = v19;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF220, &qword_22BB21B10);
  sub_22BAF76E8(&qword_27D8DF228, &qword_27D8DF230, MEMORY[0x277D746B8], MEMORY[0x277D83948]);
  sub_22BB1FD4C();
  v22 = v16;
  v26 = 2;
  sub_22BAF7640();

  sub_22BB1FD4C();

  return (*(v17 + 8))(v12, v13);
}

void IntelligenceSupportAgent.ElementHierarchy.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF240, &qword_22BB21B18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BAF7598();
  sub_22BB1FE1C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_22BAEECF4(0, 0, 0, 0);
  }

  else
  {
    v24 = 0;
    sub_22BAF7694();
    sub_22BB1FC6C();
    v18 = a2;
    v10 = v20;
    v9 = v21;
    v11 = v22;
    v19 = v23;
    sub_22BAEECF4(0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF220, &qword_22BB21B10);
    v24 = 1;
    sub_22BAF76E8(&qword_27D8DF250, &qword_27D8DF258, MEMORY[0x277D746C8], MEMORY[0x277D83978]);
    sub_22BB1FCBC();
    v17 = v20;
    v24 = 2;
    sub_22BAF7784();
    sub_22BB1FCBC();
    (*(v6 + 8))(v8, v5);
    v13 = v19;
    v12 = v20;
    v15 = v17;
    v14 = v18;
    *v18 = v10;
    v14[1] = v9;
    v14[2] = v11;
    v14[3] = v13;
    v14[4] = v15;
    v14[5] = v12;
    sub_22BAEE694(v10, v9, v11, v13);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_22BAEECF4(v10, v9, v11, v13);
  }
}

uint64_t sub_22BAF5448(char a1)
{
  v3 = sub_22BB1E96C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  if (a1)
  {
    v40 = 2651;
    v41 = 0xE200000000000000;
    v8 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v39 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v8, 0);
      v9 = v39;
      v11 = *(v4 + 16);
      v10 = v4 + 16;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v36 = *(v10 + 56);
      v37 = v11;
      v38 = v10;
      v35 = (v10 - 8);
      do
      {
        v37(v6, v12, v3);
        v13 = sub_22BB1E76C();
        v15 = v14;
        v16 = v3;
        (*v35)(v6, v3);
        v39 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_22BAC8968((v17 > 1), v18 + 1, 1);
          v9 = v39;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v12 += v36;
        --v8;
        v3 = v16;
      }

      while (v8);
    }
  }

  else
  {
    v40 = 2651;
    v41 = 0xE200000000000000;
    v20 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v20)
    {
      v39 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v20, 0);
      v9 = v39;
      v22 = *(v4 + 16);
      v21 = v4 + 16;
      v23 = v7 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v36 = *(v21 + 56);
      v37 = v22;
      v38 = v21;
      v35 = (v21 - 8);
      do
      {
        v37(v6, v23, v3);
        sub_22BACFA94(&qword_27D8DF2B0, MEMORY[0x277D746B0], MEMORY[0x277D746D0]);
        v24 = sub_22BB1FD7C();
        v26 = v25;
        (*v35)(v6, v3);
        v39 = v9;
        v28 = *(v9 + 16);
        v27 = *(v9 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22BAC8968((v27 > 1), v28 + 1, 1);
          v9 = v39;
        }

        *(v9 + 16) = v28 + 1;
        v29 = v9 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v23 += v36;
        --v20;
      }

      while (v20);
    }
  }

  v39 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v30 = sub_22BB1F63C();
  v32 = v31;

  MEMORY[0x23189D130](v30, v32);

  MEMORY[0x23189D130](23818, 0xE200000000000000);
  return v40;
}

unint64_t sub_22BAF57F4(char a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (*(*(v2 + 32) + 16))
  {
    v4 = sub_22BAF5448(a1 & 1);
    MEMORY[0x23189D130](v4);

    v5 = sub_22BACE678(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_22BACE678((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = 0x203A73746F6F72;
    *(v8 + 5) = 0xE700000000000000;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if ((sub_22BB17F84() & 1) == 0)
  {
    v9 = IntelligenceSupportAgent.ExecutableCommands.description.getter();
    MEMORY[0x23189D130](v9);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v11 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v11 >= v10 >> 1)
    {
      v5 = sub_22BACE678((v10 > 1), v11 + 1, 1, v5);
    }

    *(v5 + 2) = v11 + 1;
    v12 = &v5[16 * v11];
    *(v12 + 4) = 0x73646E616D6D6F63;
    *(v12 + 5) = 0xEA0000000000203ALL;
  }

  if (v3)
  {
    sub_22BB1FB7C();

    v13 = IntelligenceSupportAgent.TimeoutReasons.description.getter();
    MEMORY[0x23189D130](v13);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_22BACE678((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    v16 = &v5[16 * v15];
    *(v16 + 4) = 0xD000000000000010;
    *(v16 + 5) = 0x800000022BB27360;
  }

  sub_22BB1FB7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v17 = sub_22BB1F63C();
  v19 = v18;

  MEMORY[0x23189D130](v17, v19);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t IntelligenceSupportAgent.TimeoutReasons.description.getter()
{
  v1 = *(v0 + 1);
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 != 1)
  {
    v5 = MEMORY[0x277D84F90];
    if (!*(v0 + 1))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = sub_22BACE678(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22BACE678((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = 0xD000000000000025;
  *(v8 + 5) = 0x800000022BB27410;
  if (v1)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_22BACE678((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = 0xD000000000000020;
    *(v11 + 5) = 0x800000022BB273E0;
  }

LABEL_12:
  if (*(v3 + 16))
  {
    sub_22BB1FB7C();

    sub_22BB1EADC();
    sub_22BACFA94(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
    v12 = sub_22BB1F85C();
    MEMORY[0x23189D130](v12);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_22BACE678((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = 0xD000000000000015;
    *(v15 + 5) = 0x800000022BB27380;
  }

  if (*(v2 + 16))
  {
    sub_22BB1FB7C();

    sub_22BB1EADC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    sub_22BACFA94(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
    v16 = sub_22BB1F5FC();
    MEMORY[0x23189D130](v16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v18 = *(v5 + 2);
    v17 = *(v5 + 3);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_22BACE678((v17 > 1), v18 + 1, 1, v5);
    }

    *(v5 + 2) = v18 + 1;
    v19 = &v5[16 * v18];
    *(v19 + 4) = 0xD000000000000017;
    *(v19 + 5) = 0x800000022BB273A0;
  }

  if (*(v4 + 16))
  {
    sub_22BB1FB7C();

    v20 = MEMORY[0x23189D210](v4, MEMORY[0x277D837D0]);
    MEMORY[0x23189D130](v20);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_22BACE678(0, *(v5 + 2) + 1, 1, v5);
    }

    v22 = *(v5 + 2);
    v21 = *(v5 + 3);
    if (v22 >= v21 >> 1)
    {
      v5 = sub_22BACE678((v21 > 1), v22 + 1, 1, v5);
    }

    *(v5 + 2) = v22 + 1;
    v23 = &v5[16 * v22];
    *(v23 + 4) = 0xD000000000000017;
    *(v23 + 5) = 0x800000022BB273C0;
  }

  sub_22BB1FB7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v24 = sub_22BB1F63C();
  v26 = v25;

  MEMORY[0x23189D130](v24, v26);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 0x5274756F656D6954;
}

char *sub_22BAF6114(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF600, &unk_22BB21FA0);
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

char *sub_22BAF6240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2A0, &qword_22BB21F68);
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

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C16ElementHierarchyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    v24[0] = *a1;
    v24[1] = v3;
    v24[2] = v5;
    v24[3] = v4;
    if (v9)
    {
      v18 = v12;
      v19 = v6;
      v20 = v8 & 0x101;
      v21 = v9;
      v22 = v11;
      v23 = v10;
      sub_22BAEE694(v2, v3, v5, v4);
      sub_22BAEE694(v8, v9, v11, v10);
      sub_22BAEE694(v2, v3, v5, v4);
      v14 = _s26UIIntelligenceSupportAgent012IntelligencebC0C14TimeoutReasonsV2eeoiySbAE_AEtFZ_0(v24, &v20);

      sub_22BAEECF4(v2, v3, v5, v4);
      if ((v14 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_22BAEE694(v2, v3, v5, v4);
    sub_22BAEE694(v8, 0, v11, v10);
    sub_22BAEE694(v2, v3, v5, v4);

LABEL_8:
    sub_22BAEECF4(v2, v3, v5, v4);
    sub_22BAEECF4(v8, v9, v11, v10);
    return 0;
  }

  v18 = a2[5];
  v19 = a1[5];
  sub_22BAEE694(v2, 0, v5, v4);
  if (v9)
  {
    sub_22BAEE694(v8, v9, v11, v10);
    goto LABEL_8;
  }

  sub_22BAEE694(v8, 0, v11, v10);
  sub_22BAEECF4(v2, 0, v5, v4);
LABEL_10:
  if (sub_22BAF9BD4(v7, v13))
  {

    sub_22BB173EC(v19, v18);
    v16 = v15;

    return v16 & 1;
  }

  return 0;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C14TimeoutReasonsV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  sub_22BAF92BC(*(a1 + 1), *(a2 + 1));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_22BB17A90(v3, v5);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  return sub_22BAF9E14(v2, v4);
}

unint64_t sub_22BAF6664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF360, &qword_22BB22068);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF118, &unk_22BB22070);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF360, &qword_22BB22068);
      result = sub_22BABE164(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ConnectionID(0);
      result = sub_22BAF8248(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ConnectionID);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF6848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF330, &unk_22BB22010);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF028, &qword_22BB21220);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF330, &unk_22BB22010);
      result = sub_22BACB688(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22BB1F2EC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF6A30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF338, &unk_22BB22020);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A8, &qword_22BB21288);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF338, &unk_22BB22020);
      result = sub_22BB19350(v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6];
      v16 = sub_22BB1F2AC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5, v16);
      v17 = v7[7];
      v18 = sub_22BB1E68C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF6C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF348, &unk_22BB22040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF090, &qword_22BB21270);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF348, &unk_22BB22040);
      result = sub_22BB19424(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22BB1E9DC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_22BB1EA5C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF6E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF350, &unk_22BB22050);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF130, &qword_22BB212F0);
    v7 = sub_22BB1FC2C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v9, v5, &qword_27D8DF350, &unk_22BB22050);
      result = sub_22BABE164(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ConnectionID(0);
      result = sub_22BAF8248(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ConnectionID);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF709C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_22BB1FC2C();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_22BAD6B34(v16, v12, a2, v27);
      result = sub_22BB1927C(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_22BB1EADC();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF727C()
{
  result = qword_27D8DF1B8;
  if (!qword_27D8DF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1B8);
  }

  return result;
}

unint64_t sub_22BAF72D0()
{
  result = qword_27D8DF1D8;
  if (!qword_27D8DF1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    sub_22BACFA94(&qword_27D8DF158, MEMORY[0x277D74708], MEMORY[0x277D74710]);
    sub_22BAF752C(&qword_27D8DF1E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1D8);
  }

  return result;
}

uint64_t sub_22BAF73B0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1C0, &qword_22BB21AE8);
    sub_22BACFA94(a2, MEMORY[0x277D74708], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BAF744C()
{
  result = qword_27D8DF1F8;
  if (!qword_27D8DF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF1D0, &unk_22BB21AF0);
    sub_22BACFA94(&qword_27D8DF148, MEMORY[0x277D74708], MEMORY[0x277D74738]);
    sub_22BAF752C(&qword_27D8DF200, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF1F8);
  }

  return result;
}

uint64_t sub_22BAF752C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8DF070, &qword_22BB21258);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BAF7598()
{
  result = qword_27D8DF210;
  if (!qword_27D8DF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF210);
  }

  return result;
}

unint64_t sub_22BAF75EC()
{
  result = qword_27D8DF218;
  if (!qword_27D8DF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF218);
  }

  return result;
}

unint64_t sub_22BAF7640()
{
  result = qword_27D8DF238;
  if (!qword_27D8DF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF238);
  }

  return result;
}

unint64_t sub_22BAF7694()
{
  result = qword_27D8DF248;
  if (!qword_27D8DF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF248);
  }

  return result;
}

uint64_t sub_22BAF76E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8DF220, &qword_22BB21B10);
    sub_22BACFA94(a2, MEMORY[0x277D746B0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BAF7784()
{
  result = qword_27D8DF260;
  if (!qword_27D8DF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF260);
  }

  return result;
}

unint64_t sub_22BAF77D8()
{
  result = qword_281424148;
  if (!qword_281424148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8DF070, &qword_22BB21258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281424148);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BAF7848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22BAF7890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26UIIntelligenceSupportAgent012IntelligencebC0C14TimeoutReasonsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22BAF78F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BAF7940(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t _s14descr283F6AF29O16ElementHierarchyV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr283F6AF29O16ElementHierarchyV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BAF7B00()
{
  result = qword_27D8DF268;
  if (!qword_27D8DF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF268);
  }

  return result;
}

unint64_t sub_22BAF7B58()
{
  result = qword_27D8DF270;
  if (!qword_27D8DF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF270);
  }

  return result;
}

unint64_t sub_22BAF7BB0()
{
  result = qword_27D8DF278;
  if (!qword_27D8DF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF278);
  }

  return result;
}

unint64_t sub_22BAF7C08()
{
  result = qword_27D8DF280;
  if (!qword_27D8DF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF280);
  }

  return result;
}

unint64_t sub_22BAF7C60()
{
  result = qword_27D8DF288;
  if (!qword_27D8DF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF288);
  }

  return result;
}

unint64_t sub_22BAF7CB8()
{
  result = qword_27D8DF290;
  if (!qword_27D8DF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DF290);
  }

  return result;
}

unint64_t sub_22BAF7D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF310, &qword_22BB21FE8);
    v3 = sub_22BB1FC2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22BAD6B34(v4, &v11, &qword_27D8DF318, &unk_22BB21FF0);
      v5 = v11;
      result = sub_22BB1953C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22BAEEDE4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22BAF7E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0B8, &unk_22BB21290);
    v3 = sub_22BB1FC2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22BAD6B34(v4, &v13, &qword_27D8DF320, &qword_22BB22000);
      v5 = v13;
      v6 = v14;
      result = sub_22BAD6B9C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22BAEEDE4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22BAF7F64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x800000022BB27440 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022BB27460 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022BB27480 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022BB274A0 == a2 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022BB274C0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_22BB1FD9C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22BAF8124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5274756F656D6974 && a2 == 0xEE00736E6F736165;
  if (v4 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746F6F72 && a2 == 0xE500000000000000 || (sub_22BB1FD9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022BB274E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22BB1FD9C();

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

uint64_t sub_22BAF8248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BAF82B0(uint64_t a1)
{
  v35 = sub_22BB1E67C();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_22BAC8968(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22BB1FA9C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_22BB1E66C();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22BAC8968((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22BADEAF4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_22BADEAF4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_22BAF85B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v74 = sub_22BB1EE9C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1F0BC();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22BB1EC7C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1EC5C();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BB1EC9C();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22BB1EC1C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v15 - 8);
  v55 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v52 - v20;
  v22 = sub_22BB1F5BC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v52[1] = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v52 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v52 - v29;
  v31 = sub_22BB1F2EC();
  v32 = MEMORY[0x28223BE20](v31);
  v64 = v35;
  v65 = v34;
  v36 = *(v35 + 16);
  v76 = a1;
  v36(v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v32);
  (*(v23 + 16))(v30);
  v37 = *(a2 + 16);
  v66 = v23;
  v67 = v22;
  if (v37)
  {
    (*(v23 + 56))(v21, 1, 1, v22);
    sub_22BB1F5DC();
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      sub_22BAC81E8(v21, &qword_27D8DF040, &unk_22BB21230);
    }
  }

  else
  {
    sub_22BB1F57C();
    (*(v23 + 56))(v21, 0, 1, v22);
    (*(v23 + 32))(v27, v21, v22);
  }

  sub_22BB1F0EC();
  sub_22BB1EFCC();
  sub_22BB1EF4C();
  sub_22BB1F01C();
  sub_22BB1F07C();
  sub_22BB1F04C();
  sub_22BB1EEFC();
  sub_22BB1EFDC();
  sub_22BB1F06C();
  v38 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v39 = v54;
  sub_22BAD6B34(a2 + v38[19], v54, &qword_27D8DF3A0, &qword_22BB220B8);
  sub_22BB1EC3C();
  v40 = v55;
  sub_22BB1EC2C();
  v41 = v56;
  v42 = v57;
  if ((*(v56 + 48))(v40, 1, v57) == 1)
  {
    sub_22BAC81E8(v40, &qword_27D8DF3A0, &qword_22BB220B8);
  }

  else
  {
    v43 = v53;
    (*(v41 + 32))(v53, v40, v42);
    sub_22BB1F0DC();
    sub_22BB1EBFC();
    (*(v41 + 16))(v39, v43, v42);
    (*(v41 + 56))(v39, 0, 1, v42);
    sub_22BB1EC3C();
    (*(v41 + 8))(v43, v42);
  }

  (*(v59 + 16))(v58, a2 + v38[20], v60);
  sub_22BB1ECAC();
  (*(v62 + 16))(v61, a2 + v38[21], v63);
  sub_22BB1EEBC();
  v44 = v73;
  v45 = *(v73 + 16);
  v46 = v75;
  v45(v9, a2 + v38[22], v75);
  sub_22BB1EECC();

  sub_22BB1F05C();
  v45(v9, a2 + v38[24], v46);
  sub_22BB1ECBC();
  v45(v9, a2 + v38[25], v46);
  sub_22BB1EF0C();
  v45(v9, a2 + v38[26], v46);
  sub_22BB1EFAC();
  sub_22BB1EFFC();
  sub_22BB1F03C();
  (*(v69 + 16))(v68, a2 + v38[31], v70);
  sub_22BB1F09C();

  sub_22BB1EF6C();
  sub_22BB1EEEC();
  sub_22BB1EEDC();
  (*(v72 + 16))(v71, a2 + v38[34], v74);
  sub_22BB1EEAC();
  v45(v9, a2 + v38[28], v46);
  sub_22BB1EF8C();
  v47 = *(a2 + 24);
  if (v47)
  {
    v48 = v77;
    v50 = v66;
    v49 = v67;
    if (!*(v47 + 16))
    {
      (*(v44 + 104))(v9, *MEMORY[0x277D74848], v46);
      sub_22BB1EC4C();
      (*(v44 + 8))(v9, v46);
    }
  }

  else
  {
    v48 = v77;
    v50 = v66;
    v49 = v67;
  }

  sub_22BB1EF2C();
  (*(v50 + 8))(v48, v49);
  (*(v64 + 8))(v76, v65);
  return sub_22BB04D58(a2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.effectiveDeadline(for:)@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  if (*(v2 + 16))
  {
    v7 = sub_22BB1F5BC();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_22BB1F5DC();
    result = (*(v8 + 48))(v6, 1, v7);
    if (result != 1)
    {
      return sub_22BAC81E8(v6, &qword_27D8DF040, &unk_22BB21230);
    }
  }

  else
  {
    sub_22BB1F57C();
    v10 = sub_22BB1F5BC();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 0, 1, v10);
    return (*(v11 + 32))(a2, v6, v10);
  }

  return result;
}

uint64_t sub_22BAF9210(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_22BAF92BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1EADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
        v26 = sub_22BB1F61C();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_22BACFADC(&unk_2814250D0, MEMORY[0x277D74708], MEMORY[0x277D74728]);
          v31 = sub_22BB1F65C();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22BAF966C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22BB1FDDC();

    sub_22BB1F6EC();
    v16 = sub_22BB1FE0C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_22BB1FD9C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_22BAF9824(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E67C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_22BACFADC(&qword_281425110, MEMORY[0x277D74500], MEMORY[0x277D74518]);
        v26 = sub_22BB1F61C();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_22BACFADC(&qword_27D8DF508, MEMORY[0x277D74500], MEMORY[0x277D74528]);
          v31 = sub_22BB1F65C();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22BAF9C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_22BACFADC(v32, v33, v34);
    v26 = sub_22BB1F65C();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BAF9E14(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_22BB1FD9C() & 1) == 0)
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

uint64_t IntelligenceSupportAgent.RequestParameters.deadline.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = 1;
  }

  else
  {
    sub_22BB1F57C();
    v3 = 0;
  }

  v4 = sub_22BB1F5BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_22BAF9F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = 1;
  }

  else
  {
    sub_22BB1F57C();
    v3 = 0;
  }

  v4 = sub_22BB1F5BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_22BAF9FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_22BAD6B34(a1, &v6 - v3, &qword_27D8DF040, &unk_22BB21230);
  return IntelligenceSupportAgent.RequestParameters.deadline.setter(v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.deadline.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F51C();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_22BB1F5BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  sub_22BAD6B34(a1, v9, &qword_27D8DF040, &unk_22BB21230);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22BAC81E8(a1, &qword_27D8DF040, &unk_22BB21230);
    result = sub_22BAC81E8(v9, &qword_27D8DF040, &unk_22BB21230);
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    *(v2 + 8) = sub_22BB1F58C();
    *(v2 + 16) = 0;
    sub_22BB1F59C();
    sub_22BB1F5AC();
    v18 = *(v11 + 8);
    v18(v13, v10);
    v19 = sub_22BB1F50C();
    v21 = v20;
    sub_22BAC81E8(a1, &qword_27D8DF040, &unk_22BB21230);
    (*(v23 + 8))(v6, v24);
    result = (v18)(v16, v10);
    v22 = *&v19;
    if (v21)
    {
      v22 = 1.79769313e308;
    }

    *v2 = v22;
  }

  return result;
}

void (*IntelligenceSupportAgent.RequestParameters.deadline.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_22BB1F51C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = sub_22BB1F5BC();
  v5[4] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[5] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v5[7] = v13;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230) - 8) + 64);
  if (v3)
  {
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v5[8] = malloc(v14);
    v5[9] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = v15;
  v5[10] = v15;
  if (*(v1 + 16))
  {
    v17 = 1;
  }

  else
  {
    sub_22BB1F57C();
    v17 = 0;
  }

  (*(v11 + 56))(v16, v17, 1, v9);
  return sub_22BAFA5C0;
}

void sub_22BAFA5C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];
    v8 = v2[3];
    sub_22BAD6B34((*a1)[10], v5, &qword_27D8DF040, &unk_22BB21230);
    IntelligenceSupportAgent.RequestParameters.deadline.setter(v5);
    sub_22BAC81E8(v4, &qword_27D8DF040, &unk_22BB21230);
  }

  else
  {
    v9 = v2[4];
    v10 = v2[5];
    sub_22BAD6B34((*a1)[10], v3, &qword_27D8DF040, &unk_22BB21230);
    v11 = (*(v10 + 48))(v3, 1, v9);
    v12 = v2[9];
    if (v11 == 1)
    {
      v13 = *v2;
      sub_22BAC81E8(v2[10], &qword_27D8DF040, &unk_22BB21230);
      sub_22BAC81E8(v12, &qword_27D8DF040, &unk_22BB21230);
      *(v13 + 8) = 0;
      *(v13 + 16) = 1;
    }

    else
    {
      v15 = v2[6];
      v14 = v2[7];
      v16 = v2[4];
      v17 = v2[5];
      v19 = v2[2];
      v18 = v2[3];
      v20 = *v2;
      v25 = v2[1];
      v26 = v2[10];
      (*(v17 + 32))(v14, v12, v16);
      *(v20 + 8) = sub_22BB1F58C();
      *(v20 + 16) = 0;
      sub_22BB1F59C();
      sub_22BB1F5AC();
      v21 = *(v17 + 8);
      v21(v15, v16);
      v22 = sub_22BB1F50C();
      LOBYTE(v15) = v23;
      (*(v19 + 8))(v18, v25);
      v21(v14, v16);
      sub_22BAC81E8(v26, &qword_27D8DF040, &unk_22BB21230);
      v24 = *&v22;
      if (v15)
      {
        v24 = 1.79769313e308;
      }

      *v20 = v24;
    }

    v3 = v2[9];
    v4 = v2[10];
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];
    v8 = v2[3];
  }

  free(v4);
  free(v3);
  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.targetedAppProcesses.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.targetedAppBundleIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.excludedAppProcesses.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.excludedAppBundleIdentifiers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowFractionVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *v1 = a1;
  return result;
}

uint64_t sub_22BAFAA84(double a1)
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB27DA0);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD00000000000001CLL, 0x800000022BB27D60);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowFractionVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_22BAFAB60;
}

uint64_t sub_22BAFAB60(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *a1[1] = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowAreaVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_22BAFACA4(double a1)
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD000000000000012, 0x800000022BB27D80);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD000000000000026, 0x800000022BB27D10);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.windowAreaVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_22BAFAD80;
}

uint64_t sub_22BAFAD80(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *(a1[1] + 8) = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.fractionVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_22BAFAEC4(double a1)
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD000000000000010, 0x800000022BB27D40);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD00000000000001CLL, 0x800000022BB27D60);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.fractionVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return sub_22BAFAFA0;
}

uint64_t sub_22BAFAFA0(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *(a1[1] + 16) = v2;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.areaVisible.setter(double a1)
{
  result = sub_22BB1EAEC();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_22BAFB0E4(double a1)
{
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0x6973695661657261, 0xEC00000020656C62);
  sub_22BB1F82C();
  MEMORY[0x23189D130](0xD000000000000026, 0x800000022BB27D10);
  return 0;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.areaVisible.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 24);
  return sub_22BAFB1C0;
}

uint64_t sub_22BAFB1C0(uint64_t *a1)
{
  v2 = *a1;
  result = sub_22BB1EAEC();
  *(a1[1] + 24) = v2;
  return result;
}

double sub_22BAFB280()
{
  result = 0.0;
  xmmword_27D8DF368 = 0u;
  unk_27D8DF378 = 0u;
  return result;
}

double static IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27D8DECC0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&xmmword_27D8DF368;
  v2 = unk_27D8DF378;
  *a1 = xmmword_27D8DF368;
  a1[1] = v2;
  return result;
}

unint64_t sub_22BAFB300()
{
  v1 = 0x6E6F697463617266;
  if (*v0 != 2)
  {
    v1 = 0x6973695661657261;
  }

  v2 = 0xD000000000000015;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22BAFB39C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BB05CD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BAFB3D0(uint64_t a1)
{
  v2 = sub_22BB04358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BAFB40C(uint64_t a1)
{
  v2 = sub_22BB04358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF388, &qword_22BB220A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB04358();
  sub_22BB1FE2C();
  v8[15] = 0;
  sub_22BB1FD2C();
  if (!v1)
  {
    v8[14] = 1;
    sub_22BB1FD2C();
    v8[13] = 2;
    sub_22BB1FD2C();
    v8[12] = 3;
    sub_22BB1FD2C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceSupportAgent.RequestParameters.VisibilityThresholds.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF398, &qword_22BB220B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22BB04358();
  sub_22BB1FE1C();
  if (!v2)
  {
    v22 = 0;
    sub_22BB1FC9C();
    v10 = v9;
    v21 = 1;
    sub_22BB1FC9C();
    v12 = v11;
    v20 = 2;
    sub_22BB1FC9C();
    v15 = v14;
    v19 = 3;
    sub_22BB1FC9C();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 IntelligenceSupportAgent.RequestParameters.visibilityThresholds.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 IntelligenceSupportAgent.RequestParameters.visibilityThresholds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.maximumOffscreenSubelements.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.textOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 80);
  v4 = sub_22BB1EC9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.textOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 80);
  v4 = sub_22BB1EC9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.userActivities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 84);
  v4 = sub_22BB1EC5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 88);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 88);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentPreferredContentTypes.getter()
{
  type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
}

uint64_t IntelligenceSupportAgent.RequestParameters.documentPreferredContentTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 92);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 96);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 96);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageMediaContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 100);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageMediaContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 100);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowSnapshotImages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 104);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowSnapshotImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 104);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.downscaleWindowSnapshots.setter(char a1)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.screenSnapshotImages.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 112);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.screenSnapshotImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 112);
  v4 = sub_22BB1EC7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.snapshotsIgnoreAssistantUI.setter(char a1)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.snapshotsIgnoreDisableUpdateMasks.setter(char a1)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowContentGeneratedPDFCollection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 124);
  v4 = sub_22BB1F0BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.windowContentGeneratedPDFCollection.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 124);
  v4 = sub_22BB1F0BC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageRepresentations.getter()
{
  type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
}

uint64_t IntelligenceSupportAgent.RequestParameters.imageRepresentations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 128);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22BAFC6D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t IntelligenceSupportAgent.RequestParameters.requestedComponents.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  *a1 = *(v1 + *(result + 132));
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.Components.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (&unk_283F6B158 + 24 * v1 + 32);
  while (++v1 != 3)
  {
    v6 = v5 + 3;
    v7 = *v5;
    v5 += 3;
    if ((v7 & ~v2) == 0)
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BB033A8(0, v4[2] + 1, 1);
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_22BB033A8((v10 > 1), v11 + 1, 1);
      }

      v4[2] = v11 + 1;
      v12 = &v4[3 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v12[6] = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A8, &unk_22BB220C0);
  swift_arrayDestroy();
  v13 = v4[2];
  if (v13)
  {
    sub_22BAC8968(0, v13, 0);
    v14 = v3;
    v15 = v4 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_22BAC8968((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v13;
    }

    while (v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v21 = sub_22BB1F63C();
  v23 = v22;

  MEMORY[0x23189D130](v21, v23);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_22BAFCAAC()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAFCAF4(uint64_t a1)
{
  v2 = *v1;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v2);
  return sub_22BB1FE0C();
}

BOOL sub_22BAFCB64(void *a1, uint64_t *a2)
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

void *sub_22BAFCB94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_22BAFCBC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22BAFCC6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.commandOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 136);
  v4 = sub_22BB1EE9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.commandOptions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 136);
  v4 = sub_22BB1EE9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloads.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
  *(v5 + 18) = v9;
  sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = sub_22BB1EC1C();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 48);
  v5[7] = v12;
  v5[8] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v12(v8, 1, v10) != 1;
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  *(v5 + 76) = v13;
  return sub_22BAFDFB4;
}

uint64_t IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  sub_22BAD6B34(v0 + *(v4 + 76), v3, &qword_27D8DF3A0, &qword_22BB220B8);
  v5 = sub_22BB1EC1C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_22BAC81E8(v3, &qword_27D8DF3A0, &qword_22BB220B8);
    v7 = 0;
  }

  else
  {
    v7 = sub_22BB1EBCC();
    (*(v6 + 8))(v3, v5);
  }

  return v7 & 1;
}

uint64_t sub_22BAFD118@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  sub_22BAD6B34(a1 + *(v7 + 76), v6, &qword_27D8DF3A0, &qword_22BB220B8);
  v8 = sub_22BB1EC1C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    result = sub_22BAC81E8(v6, &qword_27D8DF3A0, &qword_22BB220B8);
    v11 = 0;
  }

  else
  {
    v11 = sub_22BB1EBCC();
    result = (*(v9 + 8))(v6, v8);
  }

  *a2 = v11 & 1;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.setter(char a1)
{
  v3 = sub_22BB1EC1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if ((a1 & 1) != 0 && (v10 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76), sub_22BAD6B34(v1 + v10, v9, &qword_27D8DF3A0, &qword_22BB220B8), v11 = (*(v4 + 48))(v9, 1, v3), sub_22BAC81E8(v9, &qword_27D8DF3A0, &qword_22BB220B8), v11 == 1))
  {
    sub_22BB1ECCC();
    sub_22BB1EBDC();
    sub_22BAC81E8(v1 + v10, &qword_27D8DF3A0, &qword_22BB220B8);
    (*(v4 + 32))(v1 + v10, v6, v3);
    return (*(v4 + 56))(v1 + v10, 0, 1, v3);
  }

  else
  {
    v13 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
    result = (*(v4 + 48))(v1 + *(v13 + 76), 1, v3);
    if (!result)
    {
      return sub_22BB1EBDC();
    }
  }

  return result;
}

void (*IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_22BB1EC1C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[3] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
  *(v5 + 16) = v13;
  sub_22BAD6B34(v1 + v13, v12, &qword_27D8DF3A0, &qword_22BB220B8);
  v14 = *(v8 + 48);
  v5[6] = v14;
  v5[7] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v14(v12, 1, v6) == 1)
  {
    sub_22BAC81E8(v12, &qword_27D8DF3A0, &qword_22BB220B8);
    v15 = 0;
  }

  else
  {
    v15 = sub_22BB1EBCC();
    (*(v8 + 8))(v12, v6);
  }

  *(v5 + 68) = v15 & 1;
  return sub_22BAFD68C;
}

void sub_22BAFD68C(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];
    IntelligenceSupportAgent.RequestParameters.includeAppIntentsPayloadDebugDescription.setter(*(*a1 + 68));
  }

  else
  {
    if (*(*a1 + 68) && (v6 = v2[6], v7 = v2[4], v8 = v2[1], sub_22BAD6B34(*v2 + *(v2 + 16), v7, &qword_27D8DF3A0, &qword_22BB220B8), LODWORD(v8) = v6(v7, 1, v8), sub_22BAC81E8(v7, &qword_27D8DF3A0, &qword_22BB220B8), v8 == 1))
    {
      v9 = *(v2 + 16);
      v11 = v2[2];
      v10 = v2[3];
      v13 = *v2;
      v12 = v2[1];
      sub_22BB1ECCC();
      sub_22BB1EBDC();
      sub_22BAC81E8(v13 + v9, &qword_27D8DF3A0, &qword_22BB220B8);
      (*(v11 + 32))(v13 + v9, v10, v12);
      (*(v11 + 56))(v13 + v9, 0, 1, v12);
    }

    else if (!(v2[6])(*v2 + *(v2 + 16), 1, v2[1]))
    {
      sub_22BB1EBDC();
    }

    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];
  }

  free(v3);
  free(v4);
  free(v5);

  free(v2);
}

BOOL _s26UIIntelligenceSupportAgent012IntelligencebC0C17RequestParametersV17includeAppIntentsSbvg_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  sub_22BAD6B34(v0 + *(v4 + 76), v3, &qword_27D8DF3A0, &qword_22BB220B8);
  v5 = sub_22BB1EC1C();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22BAC81E8(v3, &qword_27D8DF3A0, &qword_22BB220B8);
  return v6;
}

uint64_t sub_22BAFD910@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  sub_22BAD6B34(a1 + *(v7 + 76), v6, &qword_27D8DF3A0, &qword_22BB220B8);
  v8 = sub_22BB1EC1C();
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = sub_22BAC81E8(v6, &qword_27D8DF3A0, &qword_22BB220B8);
  *a2 = a1;
  return result;
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C17RequestParametersV17includeAppIntentsSbvs_0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
  if (a1)
  {
    sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
    v10 = sub_22BB1EC1C();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    result = sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
    if (v12 == 1)
    {
      sub_22BB1ECCC();
      (*(v11 + 56))(v5, 0, 1, v10);
      return sub_22BAC2A3C(v5, v1 + v9);
    }
  }

  else
  {
    sub_22BAC81E8(v1 + v9, &qword_27D8DF3A0, &qword_22BB220B8);
    v14 = sub_22BB1EC1C();
    v15 = *(*(v14 - 8) + 56);

    return v15(v1 + v9, 1, 1, v14);
  }

  return result;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.includeAppEntities.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
  *(v5 + 18) = v9;
  sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = sub_22BB1EC1C();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 48);
  v5[7] = v12;
  v5[8] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v12(v8, 1, v10) != 1;
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  *(v5 + 76) = v13;
  return sub_22BB06EB8;
}

uint64_t (*IntelligenceSupportAgent.RequestParameters.includeAppIntents.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);
  *(v5 + 18) = v9;
  sub_22BAD6B34(v1 + v9, v8, &qword_27D8DF3A0, &qword_22BB220B8);
  v10 = sub_22BB1EC1C();
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 48);
  v5[7] = v12;
  v5[8] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v13 = v12(v8, 1, v10) != 1;
  sub_22BAC81E8(v8, &qword_27D8DF3A0, &qword_22BB220B8);
  *(v5 + 76) = v13;
  return sub_22BAFDFB4;
}

void sub_22BAFDFB8(int **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (*(*a1 + 76))
    {
      v3 = *(v2 + 7);
      v4 = *(v2 + 5);
      v5 = *(v2 + 18);
      v6 = *(v2 + 1);
      goto LABEL_6;
    }

LABEL_8:
    v13 = *(v2 + 5);
    v14 = *(v2 + 6);
    v15 = *(v2 + 18);
    v16 = *v2;
    sub_22BAC81E8(*v2 + v15, &qword_27D8DF3A0, &qword_22BB220B8);
    (*(v14 + 56))(v16 + v15, 1, 1, v13);
    goto LABEL_9;
  }

  if (!*(*a1 + 76))
  {
    goto LABEL_8;
  }

  v3 = *(v2 + 7);
  v4 = *(v2 + 5);
  v5 = *(v2 + 18);
  v6 = *(v2 + 3);
LABEL_6:
  sub_22BAD6B34(*v2 + v5, v6, &qword_27D8DF3A0, &qword_22BB220B8);
  v7 = v3(v6, 1, v4);
  sub_22BAC81E8(v6, &qword_27D8DF3A0, &qword_22BB220B8);
  if (v7 == 1)
  {
    v8 = *(v2 + 5);
    v9 = *(v2 + 6);
    v10 = *(v2 + 18);
    v11 = *(v2 + 2);
    v12 = *v2;
    sub_22BB1ECCC();
    (*(v9 + 56))(v11, 0, 1, v8);
    sub_22BAC2A3C(v11, v12 + v10);
  }

LABEL_9:
  v17 = *(v2 + 3);
  v19 = *(v2 + 1);
  v18 = *(v2 + 2);
  free(*(v2 + 4));
  free(v17);
  free(v18);
  free(v19);

  free(v2);
}

unint64_t sub_22BAFE140(char a1)
{
  result = 0x74756F656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6E696C646165645FLL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 6:
    case 13:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0x476564756C636E69;
      break;
    case 14:
      v3 = 10;
      goto LABEL_24;
    case 15:
    case 21:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6974704F74786574;
      break;
    case 17:
      result = 0x6974634172657375;
      break;
    case 18:
      result = 0x746E656D75636F64;
      break;
    case 19:
      v3 = 9;
LABEL_24:
      result = v3 | 0xD000000000000014;
      break;
    case 20:
      result = 0x6E6F436567616D69;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 26:
      result = 0xD000000000000021;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 28:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0x4F646E616D6D6F63;
      break;
    default:
      return result;
  }

  return result;
}