void sub_27B8D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2EC708(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v10 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_33217C();
      v9 = v10;
    }

    sub_9AFE0(*(v9 + 56) + 16 * v7, a2);
    sub_27D180(v7, v9);
    *v3 = v9;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

void sub_27B97C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2EBF88(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_332458();
      v10 = v13;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    sub_27CFD0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }
}

void sub_27BA24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2EC7DC(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_332A18();
      v10 = v11;
    }

    sub_9B150(*(v10 + 56) + 8 * v8, a2);
    sub_27D6F8(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
}

double sub_27BADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2EBF88(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_332E78();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_27D8A4(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_27BB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2EC9AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_333354();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
    sub_12E1C(v10 + *(*(v11 - 8) + 72) * v7, &unk_DFEEE0, &qword_AF7AF0);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
    v20 = *(v13 - 8);
    sub_27F37C(v12 + *(v20 + 72) * v7, a2);
    sub_27DA60(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_27BDA8(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  v5 = v3;
  v6 = a2(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_27EB60(v8, v10);
  *v5 = v10;
  return v11;
}

double sub_27BE3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2ECB8C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_333B24();
      v9 = v11;
    }

    sub_9B098(*(v9 + 56) + 40 * v7, a2);
    sub_27E318(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 1;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }

  return result;
}

uint64_t sub_27BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2ECD38(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_3352A0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
    sub_12E1C(v10 + *(*(v11 - 8) + 72) * v7, &unk_DFEF20, &qword_AFA570);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
    v20 = *(v13 - 8);
    sub_27F37C(v12 + *(v20 + 72) * v7, a2);
    sub_27E704(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_27C0C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_9ACA0(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_ABACF0(*(a2 + 40));
      result = sub_8085C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_27C268(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    v31 = v4;
    do
    {
      v10 = v8;
      v11 = 24 * v6;
      v12 = v2;
      v13 = *(v2 + 48) + 24 * v6;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_ABB5C0();
      if (v16)
      {
        sub_ABB5D0(1uLL);
        v17 = v15;
        sub_ABA7A0();
      }

      else
      {
        sub_ABB5D0(0);

        sub_AB93F0();
      }

      v18 = sub_ABB610();
      sub_13CC8(v15, v14, v16);
      v19 = v18 & v7;
      v8 = v10;
      if (v3 >= v10)
      {
        v4 = v31;
        v2 = v12;
        if (v19 < v10)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v31;
        v2 = v12;
        if (v19 >= v10)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v19)
      {
LABEL_13:
        v20 = *(v2 + 48);
        v21 = 24 * v3;
        v22 = v20 + 24 * v3;
        v23 = (v20 + v11);
        if (24 * v3 < v11 || v22 >= v23 + 24 || v3 != v6)
        {
          v24 = *v23;
          *(v22 + 16) = *(v23 + 2);
          *v22 = v24;
        }

        v25 = *(v2 + 56);
        v26 = v25 + v21;
        v27 = (v25 + v11);
        if (v21 < v11 || v26 >= v27 + 24 || v3 != v6)
        {
          v9 = *v27;
          *(v26 + 16) = *(v27 + 2);
          *v26 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(v2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v30;
    ++*(v2 + 36);
  }
}

void sub_27C4A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v9 = sub_ABB610();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_27C654(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v9 = sub_ABB610();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_27C804(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_27C990(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_27CB20(int64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_ABABD0();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      sub_27F3EC(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v20 = sub_AB90D0();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_27CE20(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v9 = sub_ABB610();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_27CFD0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v10 = sub_ABB610();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_27D180(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      if (v3 < v6 || *(a2 + 56) + 16 * v3 >= *(a2 + 56) + 16 * v6 + 16)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

Swift::Int sub_27D32C(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_27D518(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_ABB5C0();
      sub_ABB5D0(v10);
      sub_ABB5D0(v11);
      result = sub_ABB610();
      v12 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v3);
      v15 = (v13 + 16 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_AB31C0() - 8) + 72);
      v18 = v17 * v3;
      result = v16 + v17 * v3;
      v19 = v17 * v6;
      v20 = v16 + v17 * v6 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_27D6F8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_27D8A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();

      sub_AB93F0();
      v11 = sub_ABB610();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_27DA60(int64_t a1, uint64_t a2)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  v4 = *(v27 - 8);
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v26 = (sub_ABABD0() + 1) & ~v8;
    v11 = *(v4 + 72);
    while (1)
    {
      v12 = v11 * v9;
      sub_15F84(*(a2 + 48) + v11 * v9, v6, &unk_DFEEE0, &qword_AF7AF0);
      sub_ABB5C0();
      sub_ABA7A0();
      sub_AB93F0();

      sub_AB3430();
      sub_27F3EC(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_AB90E0();
      v13 = sub_ABB610();
      sub_12E1C(v6, &unk_DFEEE0, &qword_AF7AF0);
      v14 = v13 & v10;
      if (a1 >= v26)
      {
        if (v14 < v26 || a1 < v14)
        {
          goto LABEL_3;
        }
      }

      else if (v14 < v26 && a1 < v14)
      {
        goto LABEL_3;
      }

      if (v11 * a1 < v12 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v12 + v11))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v11 * a1 != v12)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530) - 8) + 72);
      v17 = v16 * a1;
      v18 = v15 + v16 * a1;
      v19 = v16 * v9;
      v20 = v15 + v16 * v9 + v16;
      if (v17 < v19 || v18 >= v20)
      {
        break;
      }

      a1 = v9;
      if (v17 != v19)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_23;
      }

LABEL_3:
      v9 = (v9 + 1) & v10;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    swift_arrayInitWithTakeFrontToBack();
LABEL_23:
    a1 = v9;
    goto LABEL_3;
  }

LABEL_24:
  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    JUMPOUT(0x27DFACLL);
  }

  *(a2 + 16) = v24;
  ++*(a2 + 36);
}

void sub_27DFF4(int64_t a1, uint64_t a2)
{
  v38 = sub_AB3820();
  v4 = *(v38 - 8);
  __chkstk_darwin();
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_ABABD0();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_27F3EC(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = sub_AB90D0();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_27E318(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_ABA780(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      if (v3 < v6 || *(a2 + 56) + 40 * v3 >= *(a2 + 56) + 40 * v6 + 40)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

Swift::Int sub_27E4CC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_27E704(int64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
  v4 = *(v24 - 8);
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v23 = (sub_ABABD0() + 1) & ~v8;
    v11 = *(v4 + 72);
    do
    {
      v12 = v11;
      v13 = v11 * v9;
      sub_15F84(*(a2 + 48) + v11 * v9, v6, &unk_DFEF20, &qword_AFA570);
      sub_ABB5C0();
      sub_ABA7A0();
      sub_AB93F0();

      sub_AB3430();
      sub_27F3EC(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_AB90E0();
      v14 = sub_ABB610();
      sub_12E1C(v6, &unk_DFEF20, &qword_AFA570);
      v15 = v14 & v10;
      if (a1 >= v23)
      {
        v11 = v12;
        if (v15 < v23)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v11 = v12;
        if (v15 >= v23)
        {
          goto LABEL_10;
        }
      }

      if (a1 >= v15)
      {
LABEL_10:
        if (v11 * a1 < v13 || *(a2 + 48) + v11 * a1 >= (*(a2 + 48) + v13 + v11))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v11 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530) - 8) + 72);
        v18 = v17 * a1;
        if (v17 * a1 < (v17 * v9) || v16 + v17 * a1 >= v16 + v17 * v9 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v9;
          v11 = v12;
        }

        else
        {
          a1 = v9;
          v11 = v12;
          if (v18 != v17 * v9)
          {
            swift_arrayInitWithTakeBackToFront();
            a1 = v9;
          }
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_27EB60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_ABABD0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_ABB5B0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27ECD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFBF58, &unk_B07290);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_ABB5C0();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = sub_ABB610();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_27EE14(void *a1)
{
  if (!a1)
  {
    return 20;
  }

  v1 = *(&stru_108.size + (swift_isaMask & *a1));
  v2 = a1;
  LOBYTE(v1) = v1();

  return byte_B071C0[v1];
}

uint64_t sub_27EEA4(void *a1)
{
  v2 = (*(&stru_B8.offset + (swift_isaMask & *a1)))();
  if (v2)
  {
    v3 = v2;
    v4 = (*(&stru_B8.reserved2 + (swift_isaMask & *v2)))();
    v6 = v5;

    if (v6)
    {
      return v4;
    }
  }

  v7 = (*(&stru_B8.reserved2 + (swift_isaMask & *a1)))();
  if (!v7)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_11:
    sub_12E1C(&v13, &unk_DE8E40, &unk_AF8050);
    return 0;
  }

  v8 = v7;
  if ([v7 storeID])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;

  if (!*(&v12 + 1))
  {
    goto LABEL_11;
  }

  sub_9ACFC(&v13, &v15);
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  sub_ABB3A0();
  v9 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (v9)
  {
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v15);
  return v4;
}

unint64_t sub_27F09C(uint64_t a1)
{
  type metadata accessor for JSShelf(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = &OBJC_IVAR____TtC11MusicJSCore7JSShelf_title;
LABEL_5:
    v3 = (v1 + *v2);
    swift_beginAccess();
    v4 = *v3;

    return v4;
  }

  type metadata accessor for JSBrick(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = &OBJC_IVAR____TtC11MusicJSCore7JSBrick_title;
    goto LABEL_5;
  }

  type metadata accessor for JSMenu(0);
  if (swift_dynamicCastClass())
  {
    result = JSMenu.sections.getter();
    if (result >> 62)
    {
      v13 = result;
      v14 = sub_ABB060();
      result = v13;
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_10;
    }

    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_10:
      if ((result & 0xC000000000000001) != 0)
      {
        v7 = sub_35FCC4(0, result, v6);
        goto LABEL_13;
      }

      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
        v7 = *(result + 32);
LABEL_13:
        v8 = v7;

        v9 = &OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_title;
LABEL_21:
        v12 = &v8[*v9];
        swift_beginAccess();
        v4 = *v12;

        return v4;
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_29:

    return 0;
  }

  type metadata accessor for JSGrid(0);
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for JSSearchLandingViewModel(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = &OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title;
      goto LABEL_5;
    }

    return 0;
  }

  result = JSGrid.sections.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = result;
  v16 = sub_ABB060();
  result = v15;
  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = sub_35FC8C(0, result, v10);
    goto LABEL_20;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(result + 32);
LABEL_20:
    v8 = v11;

    v9 = &OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_27F2E4(id result)
{
  if (result >= 8)
  {
    return result;
  }

  return result;
}

void sub_27F2F4(id result)
{
  if (result != &dword_8)
  {
    sub_27F304(result);
  }
}

void sub_27F304(id a1)
{
  if (a1 >= 8)
  {
  }
}

uint64_t sub_27F314()
{

  return swift_deallocObject();
}

double block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_27F37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040, &unk_AFA530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27F3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27F434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_27F490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27F524(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 8))
  {
    return (*a1 + 2147483640);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27F578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_27F5E8()
{
  result = qword_DFBF60;
  if (!qword_DFBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBF60);
  }

  return result;
}

unint64_t sub_27F640()
{
  result = qword_DFBF68;
  if (!qword_DFBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFBF68);
  }

  return result;
}

unint64_t sub_27F694(uint64_t a1, uint64_t a2)
{
  v2 = sub_ABB420();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

void sub_27F854(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle];
  *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle] = a1;
  v14 = v3;
  v4 = sub_AB92A0();
  v6 = v5;
  if (v4 == sub_AB92A0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();
    v13 = a1;

    if ((v9 & 1) != 0 || ([v1 setNeedsLayout], (v10 = *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler]) == 0))
    {

      v12 = v13;
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler + 8];

      v10(v1);

      sub_17654(v10, v11);
      v12 = v14;
    }
  }
}

id sub_27FA54(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BadgingView();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_27FB20(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  v14 = type metadata accessor for BadgingView();
  v28.receiver = v9;
  v28.super_class = v14;
  objc_msgSendSuper2(&v28, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v27.receiver = v9;
  v27.super_class = v14;
  objc_msgSendSuper2(&v27, *a2, a3, a4, a5, a6);
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  CGRectGetWidth(v29);
  [v9 *a1];
  Width = CGRectGetWidth(v30);
  result = sub_AB38D0();
  if (result)
  {
    result = [v9 setNeedsLayout];
    v24 = *&v9[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler];
    if (v24)
    {
      v25 = *&v9[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler + 8];

      v24(v9);
      return sub_17654(v24, v25);
    }
  }

  return result;
}

void sub_27FD08(double a1)
{
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v35 = v1;
  v4 = *(*&v1[OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems] + 16);
  if (v4)
  {
    v33 = v3;
    v34 = OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle;
    v5 =  + 48;
    v6 = 0.0;
    v7 = &selRef__authenticateReturningError_;
    v8 = &off_DE6000;
    v9 = &OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible;
    p_name = (&JSDateDescriptor + 24);
    v11 = 0.0;
    do
    {
      v12 = *(v5 - 16);
      if (v12 == 1)
      {
        v13 = objc_allocWithZone(type metadata accessor for BadgeLabel());

        v14 = [v13 v7[124]];
      }

      else
      {
        v15 = objc_allocWithZone(UILabel);

        v16 = [v15 v7[124]];
        v17 = v9;
        v18 = v8;
        v19 = v7;
        v20 = objc_opt_self();
        v14 = v16;
        v21 = [v20 clearColor];
        [v14 setBackgroundColor:v21];

        [v14 setClipsToBounds:0];
        [v14 setTextAlignment:1];
        sub_89F60();
        v22 = *&v35[v34];
        v23 = sub_ABA560();

        v7 = v19;
        v8 = v18;
        v9 = v17;
        p_name = &JSDateDescriptor.name;
        [v14 setFont:v23];
      }

      if (v8[401] != -1)
      {
        swift_once();
      }

      [v14 p_name[425]];

      v24 = sub_AB9260();

      [v14 setText:v24];

      v25 = v14;
      [v25 sizeThatFits:{a1, 1.79769313e308}];
      v28 = v27;
      v29 = v26;
      if (v11 < v26)
      {
        v11 = v26;
      }

      sub_AB39F0();
      v31 = v30;
      [v25 setFrame:?];

      v36.origin.y = 0.0;
      v36.origin.x = v31;
      v36.size.width = v28;
      v36.size.height = v29;
      Width = CGRectGetWidth(v36);

      if (v12)
      {
        v6 = v6 + Width + 12.0 + 4.0;
      }

      else
      {
        v6 = v6 + Width + 12.0;
      }

      v5 += 24;
      --v4;
    }

    while (v4);

    v3 = v33;
  }

  sub_AB39F0();
}

void sub_2800DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52.receiver = v2;
  v52.super_class = type metadata accessor for BadgingView();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v45 = [v2 traitCollection];
  [v45 displayScale];
  [v2 bounds];
  Width = CGRectGetWidth(v53);
  v47 = OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems;
  if (*(*&v2[OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems] + 16))
  {

    v5 = sub_AB9260();
    v6 = [v5 _isNaturallyRTL];
  }

  else
  {
    v6 = 0;
  }

  v7 = OBJC_IVAR____TtC16MusicApplication11BadgingView_itemLabels;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8 >> 62)
  {
    goto LABEL_50;
  }

  v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (v9)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (2)
    {
      *&v3[v7] = _swiftEmptyArrayStorage;

      v8 = *(*&v3[v47] + 16);
      v46 = OBJC_IVAR____TtC16MusicApplication11BadgingView_fontTextStyle;
      v50 = *&v3[v47];

      v49 = v8;
      if (!v8)
      {
LABEL_46:

        return;
      }

      v13 = 0;
      v14 = 0;
      v15 = v50 + 48;
      v16 = 0.0;
      v48 = v3;
      while (v14 < *(v50 + 16))
      {
        v51 = *(v15 - 16);
        if (v51 == 1)
        {
          v20 = objc_allocWithZone(type metadata accessor for BadgeLabel());

          v21 = [v20 init];
        }

        else
        {
          v22 = objc_allocWithZone(UILabel);

          v23 = [v22 init];
          v24 = v7;
          v25 = v6;
          v26 = objc_opt_self();
          v21 = v23;
          v27 = [v26 clearColor];
          [v21 setBackgroundColor:v27];

          [v21 setClipsToBounds:0];
          [v21 setTextAlignment:1];
          sub_89F60();
          v28 = *&v3[v46];
          v29 = sub_ABA560();

          v6 = v25;
          v7 = v24;
          [v21 setFont:v29];
        }

        if (qword_DE6C88 != -1)
        {
          swift_once();
        }

        [v21 setTextColor:qword_E718C8];

        v30 = sub_AB9260();

        [v21 setText:v30];

        v31 = v21;
        v3 = v48;
        [v48 addSubview:v31];
        swift_beginAccess();
        v32 = v31;
        sub_AB9730();
        if (*(&dword_10 + (*&v3[v7] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v3[v7] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        v8 = &v48[v7];
        sub_AB97F0();
        swift_endAccess();
        if (v6)
        {
          [v48 bounds];
          CGRectGetMaxX(v54);
        }

        [v32 sizeThatFits:{Width, 1.79769313e308}];
        v17 = v33;
        v18 = v34;
        if (!v14)
        {
          goto LABEL_41;
        }

        v35 = *&v48[v7];
        if ((v35 & 0xC000000000000001) != 0)
        {

          v8 = sub_36160C(v14 - 1, v35);
        }

        else
        {
          if (v14 > *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_49;
          }

          v8 = *(v35 + 8 * v14 + 24);
        }

        v36 = *&v48[v47];
        if (v14 > *(v36 + 16))
        {
          goto LABEL_48;
        }

        v37 = *(v36 + v13 + 8);

        [v8 frame];
        if (v6)
        {
          MinX = CGRectGetMinX(*&v38);
          v43 = -12.0;
        }

        else
        {
          MinX = CGRectGetMaxX(*&v38);
          v43 = 12.0;
        }

        if (Width < v17 + MinX + v43)
        {
          sub_AB39F0();
          v16 = v16 + v44 + 4.0;
          if (v6)
          {
            [v48 bounds];
            CGRectGetMaxX(v55);
          }
        }

        if ((v37 & 1) == 0)
        {
          if (!v51)
          {
            goto LABEL_16;
          }
        }

        else
        {
LABEL_41:
          if (!v51)
          {
            goto LABEL_16;
          }
        }

        v17 = v17 + 4.0;
        v18 = v18 + 4.0;
LABEL_16:
        ++v14;
        sub_AB39F0();
        if (v6)
        {
          v19 = v19 - v17;
        }

        [v32 setFrame:{v19, v16, v17, v18}];

        v15 += 24;
        v13 += 24;
        if (v49 == v14)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      v9 = sub_ABB060();
      if (!v9)
      {
        continue;
      }

      break;
    }

LABEL_6:
    if (v9 >= 1)
    {

      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_36160C(i, v8);
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 removeFromSuperview];
      }

      continue;
    }

    break;
  }

  __break(1u);
}

id sub_2807AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BadgingView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_280874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2808BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_28090C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = v3 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties;
  if (*(v3 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties) == 2)
  {
    v83 = a1;
    v84 = a2;
    v80 = OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_requestedProperties;
    v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_requestedProperties);
    v8 = [v7 properties];
    v9 = sub_AB9B40();

    v10 = sub_AB92A0();
    v12 = sub_4DFDA8(v10, v11, v9);
    v14 = v13;
    v16 = v15;

    v82 = v16;
    sub_F01A0(v12, v14, v16);
    v17 = sub_AB92A0();
    v19 = sub_4DFDA8(v17, v18, v9);
    v21 = v20;
    LODWORD(v14) = v22;

    v81 = v14;
    sub_F01A0(v19, v21, v14);
    v23 = sub_AB92A0();
    v25 = sub_4DFDA8(v23, v24, v9);
    v27 = v26;
    LODWORD(v14) = v28;

    v79 = v14;
    sub_F01A0(v25, v27, v14);
    v29 = sub_AB92A0();
    v31 = sub_4DFDA8(v29, v30, v9);
    v33 = v32;
    LODWORD(v14) = v34;

    v78 = v14;
    sub_F01A0(v31, v33, v14);
    v35 = sub_AB92A0();
    v37 = sub_4DFDA8(v35, v36, v9);
    v39 = v38;
    v41 = v40;

    sub_F01A0(v37, v39, v41);
    v42 = sub_AB92A0();
    v44 = sub_4DFDA8(v42, v43, v9);
    v46 = v45;
    v48 = v47;

    sub_F01A0(v44, v46, v48);
    v49 = sub_AB92A0();
    v51 = sub_4DFDA8(v49, v50, v9);
    v53 = v52;
    v55 = v54;

    sub_F01A0(v51, v53, v55);
    v56 = sub_AB92A0();
    v58 = sub_4DFDA8(v56, v57, v9);
    v60 = v59;
    v62 = v61;

    v77 = v62 != -1;
    sub_F01A0(v58, v60, v62);
    v63 = *(v3 + v80);
    v64 = [v63 relationships];
    sub_119B5C();
    v65 = sub_AB8FF0();

    v66 = sub_AB92A0();
    if (*(v65 + 16))
    {
      sub_2EBF88(v66, v67);
      v69 = v68;

      v70 = v69 & 1;
    }

    else
    {

      v70 = 0;
    }

    *v6 = ((~v82 != 0) << 8) | ((~v81 != 0) << 16) | ((~v79 != 0) << 24) | ((~v78 != 0) << 32) | ((~v41 != 0) << 40) | ((~v48 != 0) << 48) | ((v55 != -1) << 56) | v70;
    *(v6 + 8) = v77;

    v5 = v83;
    v4 = v84;
  }

  v86 = 1;
  v71 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin();
  v76[2] = v3;
  v76[3] = v5;
  v76[4] = v4;
  v76[5] = &v86;
  v72 = objc_allocWithZone(MusicModelFlowcaseItem);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_281694;
  *(v73 + 24) = v76;
  aBlock[4] = sub_57B84;
  aBlock[5] = v73;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_94;
  v74 = _Block_copy(aBlock);

  v75 = [v72 initWithIdentifiers:v71 block:v74];
  _Block_release(v74);

  LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

  if (v74)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v75 personalizationStyle:v86];
  }
}

void sub_280EA0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = (a2 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties);
  v11 = *(a2 + OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties);
  if (v11 == 2)
  {
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
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  v12 = v9;
  if (v11)
  {

    sub_4D3314(a3, a4);
    v14 = v13;
    v16 = v15;

    [v12 setContentItem:v14];
    if (v14)
    {

      *a5 = v16;
    }
  }

  v17 = *v10;
  if (*v10 == 2)
  {
    goto LABEL_46;
  }

  if ((v17 & 0x100) != 0)
  {
    v18 = &a3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionTitleText];
    swift_beginAccess();
    if (*(v18 + 1))
    {

      v19 = sub_AB9260();
    }

    else
    {
      v19 = 0;
    }

    [v12 setDescriptionTitleText:v19];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_47;
  }

  if ((v17 & 0x10000) != 0)
  {
    v20 = &a3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_descriptionText];
    swift_beginAccess();
    if (*(v20 + 1))
    {

      v21 = sub_AB9260();
    }

    else
    {
      v21 = 0;
    }

    [v12 setDescriptionText:v21];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_48;
  }

  if ((v17 & 0x1000000) != 0)
  {
    v22 = &a3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText];
    swift_beginAccess();
    if (*(v22 + 1))
    {

      v23 = sub_AB9260();
    }

    else
    {
      v23 = 0;
    }

    [v12 setHeadlineText:v23];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_49;
  }

  if ((v17 & 0x100000000) != 0)
  {
    v24 = &a3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_subtitleText];
    swift_beginAccess();
    if (*(v24 + 1))
    {

      v25 = sub_AB9260();
    }

    else
    {
      v25 = 0;
    }

    [v12 setSubtitleText:v25];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_50;
  }

  if ((v17 & 0x10000000000) != 0)
  {
    v26 = &a3[OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_titleText];
    swift_beginAccess();
    if (*(v26 + 1))
    {

      v27 = sub_AB9260();
    }

    else
    {
      v27 = 0;
    }

    [v12 setTitleText:v27];

    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_51;
  }

  if ((v17 & 0x1000000000000) != 0)
  {
    v28 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailHorizontalAlignment;
    swift_beginAccess();
    [v12 setThumbnailHorizontalAlignment:a3[v28]];
    v17 = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_52;
  }

  if ((v17 & 0x100000000000000) != 0)
  {
    v29 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
    swift_beginAccess();
    v30 = *&a3[v29];
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = a3;
    v44 = sub_281740;
    v45 = v31;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_119878;
    v43 = &block_descriptor_26_2;
    v32 = _Block_copy(&aBlock);
    v33 = v30;
    v34 = a3;

    [v12 setBackgroundArtworkCatalogBlock:v32];
    _Block_release(v32);

    LOBYTE(v17) = *v10;
  }

  if (v17 == 2)
  {
    goto LABEL_53;
  }

  if (v10[1])
  {
    v35 = OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_thumbnailArtwork;
    swift_beginAccess();
    v36 = *&a3[v35];
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v44 = sub_119C50;
    v45 = v37;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_119878;
    v43 = &block_descriptor_20_2;
    v38 = _Block_copy(&aBlock);
    v39 = v36;

    [v12 setThumbnailArtworkCatalogBlock:v38];
    _Block_release(v38);
  }
}

id sub_281468(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = ICStoreArtworkInfoCropStyleSpecificRectangle;
    v4 = a2;
    v5 = JSArtwork.artworkCatalog(defaultCropStyle:)(v3);

    return v5;
  }

  else
  {
    v7 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
    swift_beginAccess();
    v9 = *(a3 + v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 flowcaseEditorialArtworkRequestToken];
      if (v11)
      {
        v12 = v11;
        v13 = objc_opt_self();
        v14 = v12;
        result = [v13 sharedStoreArtworkDataSource];
        if (result)
        {
          v15 = result;
          v16 = objc_allocWithZone(MPArtworkCatalog);
          v17 = v14;
          v18 = [v16 initWithToken:v17 dataSource:v15];

          return v18;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2815E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSModelFlowcaseItemBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2816C8()
{

  return swift_deallocObject();
}

uint64_t sub_281700()
{

  return swift_deallocObject();
}

id sub_281748(void *a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_initializedProperties];
  *v3 = 2;
  v3[8] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_requestedProperties] = a1;
  v4 = [a1 relationships];
  sub_119B5C();
  v5 = sub_AB8FF0();
  v6 = sub_AB92A0();
  if (*(v5 + 16) && (v8 = sub_2EBF88(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 8 * v8);
  }

  else
  {

    v10 = [objc_opt_self() emptyPropertySet];
  }

  type metadata accessor for JSModelMediaContentItemBuilder();
  v11 = swift_allocObject();
  v11[4] = 0;
  v11[2] = v10;
  result = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v10];
  if (result)
  {
    v11[3] = result;
    *&v2[OBJC_IVAR____TtC16MusicApplication26JSModelFlowcaseItemBuilder_contentItemBuilder] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for JSModelFlowcaseItemBuilder();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2818F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_AB3290();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_466B8(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_284478(v9, 0);
      v12 = sub_AB3200();
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      sub_466B8(a1, a2);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_281A6C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a8;
  if (!a8)
  {
    v16 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_12;
      }

      v19 = *(a2 + 16);
      v18 = *(a2 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v20)
      {
LABEL_12:
        v20 = __OFADD__(v17, 16);
        v21 = v17 + 16;
        if (v20)
        {
          __break(1u);
          goto LABEL_54;
        }

        v22 = a7 >> 62;
        if ((a7 >> 62) > 1)
        {
          if (v22 != 2)
          {
            v23 = 0;
            goto LABEL_23;
          }

          v25 = *(a6 + 16);
          v24 = *(a6 + 24);
          v20 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (!v20)
          {
LABEL_23:
            v8 = v21 - v23;
            if (!__OFSUB__(v21, v23))
            {
              goto LABEL_24;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          __break(1u);
        }

        else if (!v22)
        {
          v23 = BYTE6(a7);
          goto LABEL_23;
        }

        LODWORD(v23) = HIDWORD(a6) - a6;
        if (__OFSUB__(HIDWORD(a6), a6))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v23 = v23;
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(a3);
      goto LABEL_12;
    }

    LODWORD(v17) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v17 = v17;
    goto LABEL_12;
  }

LABEL_24:
  v42 = sub_284DD4(v8);
  v43 = v26;
  v41 = 0;
  sub_90090(a2, a3);
  sub_90090(a6, a7);
  sub_90090(a4, a5);
  v27 = sub_284E74(&v42, a2, a3, a6, a7, a4, a5, a1, v8, &v41);
  sub_466B8(a4, a5);
  sub_466B8(a6, a7);
  sub_466B8(a2, a3);
  if (!v27)
  {
    v28 = v42;
    v31 = v43;
    v32 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v36 = v41;
        if (v41 < 0)
        {
          v37 = 0;
          goto LABEL_48;
        }

        goto LABEL_50;
      }

      v35 = *(v42 + 16);
      v34 = *(v42 + 24);
      v20 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (!v20)
      {
LABEL_37:
        v36 = v41;
        if (v41 < v33)
        {
          if (v32 == 2)
          {
            v39 = *(v28 + 16);
            v38 = *(v28 + 24);
            v37 = v38 - v39;
            if (!__OFSUB__(v38, v39))
            {
LABEL_48:
              if (v37 >= v36)
              {
                sub_AB3220();
                v28 = v42;
                v31 = v43;
                goto LABEL_50;
              }

              goto LABEL_55;
            }

            __break(1u);
          }

          else if (v32 == 1)
          {
            if (__OFSUB__(HIDWORD(v28), v28))
            {
              goto LABEL_59;
            }

            v37 = HIDWORD(v28) - v28;
            goto LABEL_48;
          }

          v37 = BYTE6(v31);
          goto LABEL_48;
        }

LABEL_50:
        sub_90090(v28, v31);
        v29 = v28;
        v30 = v31;
        goto LABEL_51;
      }

      __break(1u);
    }

    else if (!v32)
    {
      v33 = BYTE6(v43);
      goto LABEL_37;
    }

    LODWORD(v33) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    v33 = v33;
    goto LABEL_37;
  }

  if (v27 == -4301)
  {
    v28 = sub_281A6C(a1, a2, a3, a4, a5, a6, a7, v41);
    v29 = v42;
    v30 = v43;
LABEL_51:
    sub_466B8(v29, v30);
    return v28;
  }

  sub_466B8(v42, v43);
  return 0;
}

uint64_t sub_281D6C@<X0>(void *dataOut@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, CCCryptorStatus *a9@<X8>, unint64_t a10, uint64_t dataOutAvailable, size_t *a12)
{
  v14 = a4;
  v16 = dataOut;
  v18 = dataOutAvailable;
  v19 = a12;
  v20 = a10;
  v21 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_10;
  }

  if (!v21)
  {
    dataIn[0] = a3;
    LOWORD(dataIn[1]) = a4;
    BYTE2(dataIn[1]) = BYTE2(a4);
    BYTE3(dataIn[1]) = BYTE3(a4);
    BYTE4(dataIn[1]) = BYTE4(a4);
    v22 = a6 >> 62;
    BYTE5(dataIn[1]) = BYTE5(a4);
    if ((a6 >> 62) > 1)
    {
      goto LABEL_31;
    }

    if (v22)
    {
      v153 = a4;
      v175 = dataOutAvailable;
      v184 = v16;
      v166 = a9;
      *op = a10;
      v56 = a5;
      if (a5 > a5 >> 32)
      {
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      v14 = a3;
      v57 = a7;
      v163 = a5;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v59 = sub_AB2D10();
      v195 = a6;
      if (v59)
      {
        v60 = sub_AB2D40();
        if (__OFSUB__(v56, v60))
        {
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        v59 += v56 - v60;
      }

      v61 = a12;
      sub_AB2D30();
      v62 = a8 >> 62;
      if ((a8 >> 62) <= 1)
      {
        if (v62)
        {
          v152 = v14;
          v14 = v153;
          if (v57 > v57 >> 32)
          {
LABEL_269:
            __break(1u);
            goto LABEL_270;
          }

          v96 = v59;
          v68 = sub_AB2D10();
          if (v68)
          {
            v145 = sub_AB2D40();
            if (__OFSUB__(v57, v145))
            {
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
            }

            v68 += v57 - v145;
          }

          sub_AB2D30();
          v99 = a10;
          if ((a10 & 0x8000000000000000) != 0)
          {
            goto LABEL_286;
          }

          a9 = v166;
          v100 = dataOutAvailable;
          v101 = v184;
          if (HIDWORD(a10))
          {
LABEL_288:
            __break(1u);
            goto LABEL_289;
          }

          goto LABEL_205;
        }

        v63 = v59;
        key[0] = v57;
        LOWORD(key[1]) = a8;
        BYTE2(key[1]) = BYTE2(a8);
        BYTE3(key[1]) = BYTE3(a8);
        BYTE4(key[1]) = BYTE4(a8);
        BYTE5(key[1]) = BYTE5(a8);
        v64 = v153;
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        a9 = v166;
        if (HIDWORD(a10))
        {
LABEL_277:
          __break(1u);
          goto LABEL_278;
        }

        v65 = CCCrypt(a10, 0, 1u, key, 0x20uLL, v63, dataIn, BYTE6(v153), v184, dataOutAvailable, a12);
LABEL_221:
        v38 = v65;
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v14;
        goto LABEL_222;
      }

LABEL_95:
      v96 = v59;
      if (v62 == 2)
      {
        v152 = v14;
        v97 = *(v57 + 16);
        v68 = sub_AB2D10();
        v14 = v153;
        if (v68)
        {
          v98 = sub_AB2D40();
          if (__OFSUB__(v97, v98))
          {
LABEL_300:
            __break(1u);
            goto LABEL_301;
          }

          v68 += v97 - v98;
        }

        sub_AB2D30();
        v99 = op[0];
        if ((*op & 0x8000000000000000) != 0)
        {
          goto LABEL_273;
        }

        v70 = HIDWORD(*op);
        a9 = v166;
        v100 = v175;
        v101 = v184;
        if (HIDWORD(*op))
        {
          __break(1u);
LABEL_102:
          v102 = v68;
          if (v70 == 2)
          {
            v103 = *(v57 + 16);
            v104 = sub_AB2D10();
            v105 = v153;
            if (v104)
            {
              v106 = sub_AB2D40();
              if (__OFSUB__(v103, v106))
              {
LABEL_301:
                __break(1u);
                goto LABEL_302;
              }

              v104 += v103 - v106;
            }

            sub_AB2D30();
            if ((*op & 0x8000000000000000) != 0)
            {
              goto LABEL_274;
            }

            a9 = v166;
            if (HIDWORD(*op))
            {
LABEL_283:
              __break(1u);
              goto LABEL_284;
            }

            v38 = CCCrypt(op[0], 0, 1u, v104, 0x20uLL, v102, dataIn, 0, v184, v175, v61);
            sub_466B8(v163, v195);
            sub_466B8(v57, a8);
            v73 = v14;
LABEL_214:
            v138 = v105;
            goto LABEL_223;
          }

          memset(key, 0, 14);
          v64 = v153;
          if ((*op & 0x8000000000000000) != 0)
          {
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
            goto LABEL_277;
          }

          a9 = v166;
          if (HIDWORD(*op))
          {
LABEL_282:
            __break(1u);
            goto LABEL_283;
          }

          v65 = CCCrypt(op[0], 0, 1u, key, 0x20uLL, v102, dataIn, 0, v184, v175, v61);
          goto LABEL_221;
        }

LABEL_205:
        v38 = CCCrypt(v99, 0, 1u, v68, 0x20uLL, v96, dataIn, BYTE6(v14), v101, v100, v61);
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v152;
        goto LABEL_206;
      }

      memset(key, 0, 14);
      v64 = v153;
      if ((*op & 0x8000000000000000) != 0)
      {
LABEL_271:
        __break(1u);
        goto LABEL_272;
      }

      a9 = v166;
      if (HIDWORD(*op))
      {
LABEL_281:
        __break(1u);
        goto LABEL_282;
      }

      v65 = CCCrypt(op[0], 0, 1u, key, 0x20uLL, v96, dataIn, BYTE6(v153), v184, v175, v61);
      goto LABEL_221;
    }

    key[0] = a5;
    LOWORD(key[1]) = a6;
    BYTE2(key[1]) = BYTE2(a6);
    BYTE3(key[1]) = BYTE3(a6);
    BYTE4(key[1]) = BYTE4(a6);
    v23 = a8 >> 62;
    BYTE5(key[1]) = BYTE5(a6);
    if ((a8 >> 62) > 1)
    {
LABEL_67:
      if (v23 != 2)
      {
        memset(v196, 0, 14);
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_243:
          __break(1u);
          goto LABEL_244;
        }

        if (!HIDWORD(a10))
        {
          goto LABEL_172;
        }

        __break(1u);
LABEL_167:
        memset(v196, 0, 14);
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_244:
          __break(1u);
          goto LABEL_245;
        }

        if (HIDWORD(v20))
        {
          __break(1u);
LABEL_170:
          memset(v196, 0, 14);
          if ((v20 & 0x8000000000000000) != 0)
          {
LABEL_245:
            __break(1u);
            goto LABEL_246;
          }

          if (HIDWORD(v20))
          {
LABEL_257:
            __break(1u);
            goto LABEL_258;
          }

LABEL_172:
          v139 = a3;
          v140 = CCCrypt(v20, 0, 1u, v196, 0x20uLL, key, dataIn, BYTE6(v14), v16, v18, v19);
LABEL_176:
          v38 = v140;
          result = sub_466B8(v139, v14);
          goto LABEL_224;
        }

LABEL_175:
        v139 = a3;
        v140 = CCCrypt(v20, 0, 1u, v196, 0x20uLL, key, dataIn, 0, v16, v18, v19);
        goto LABEL_176;
      }

      v76 = a3;
      v77 = a12;
      v185 = v16;
      v163 = a5;
      v167 = a9;
      v19 = a10;
      v78 = *(a7 + 16);
      v195 = a6;
      sub_90090(a5, a6);
      v57 = a7;
      sub_90090(a7, a8);
      v80 = sub_AB2D10();
      if (v80)
      {
        v81 = sub_AB2D40();
        if (__OFSUB__(v78, v81))
        {
LABEL_290:
          __break(1u);
          goto LABEL_291;
        }

        v80 += v78 - v81;
      }

      sub_AB2D30();
      if ((a10 & 0x8000000000000000) != 0)
      {
        goto LABEL_247;
      }

      v20 = a10;
      v40 = HIDWORD(a10);
      a9 = v167;
      v82 = dataOutAvailable;
      v83 = v185;
      if (!HIDWORD(a10))
      {
        goto LABEL_155;
      }

      __break(1u);
LABEL_74:
      if (v40 == 2)
      {
        v76 = a3;
        v84 = v19;
        v176 = v18;
        v186 = v16;
        v163 = a5;
        v168 = a9;
        v19 = v20;
        v85 = *(a7 + 16);
        v195 = a6;
        v86 = a7;
        sub_90090(a5, a6);
        v57 = v86;
        sub_90090(v86, a8);
        v59 = sub_AB2D10();
        if (v59)
        {
          v87 = sub_AB2D40();
          if (__OFSUB__(v85, v87))
          {
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

          v59 += v85 - v87;
        }

        sub_AB2D30();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_248;
        }

        v20 = v19;
        v74 = HIDWORD(v19);
        a9 = v168;
        v88 = v176;
        v89 = v186;
        if (!HIDWORD(v19))
        {
          goto LABEL_162;
        }

        __break(1u);
        goto LABEL_81;
      }

      goto LABEL_167;
    }

    if (v23)
    {
LABEL_135:
      v178 = v18;
      v188 = v16;
      v170 = a9;
      v128 = a7;
      if (a7 > a7 >> 32)
      {
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

      v76 = a3;
      v77 = v19;
      v19 = v20;
      v57 = a7;
      v163 = a5;
      v195 = a6;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v80 = sub_AB2D10();
      if (v80)
      {
        v129 = sub_AB2D40();
        if (__OFSUB__(v128, v129))
        {
LABEL_296:
          __break(1u);
          goto LABEL_297;
        }

        v80 += v128 - v129;
      }

      sub_AB2D30();
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_263;
      }

      v20 = v19;
      a9 = v170;
      v82 = v178;
      v83 = v188;
      if (!HIDWORD(v19))
      {
        goto LABEL_155;
      }

      __break(1u);
LABEL_142:
      v179 = v18;
      v189 = v16;
      v171 = a9;
      v130 = a7;
      if (a7 > a7 >> 32)
      {
LABEL_240:
        __break(1u);
        goto LABEL_241;
      }

      v76 = a3;
      v84 = v19;
      v19 = v20;
      v57 = a7;
      v163 = a5;
      v195 = a6;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v59 = sub_AB2D10();
      if (v59)
      {
        v131 = sub_AB2D40();
        if (__OFSUB__(v130, v131))
        {
LABEL_297:
          __break(1u);
          goto LABEL_298;
        }

        v59 += v130 - v131;
      }

      sub_AB2D30();
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_264;
      }

      v20 = v19;
      a9 = v171;
      v88 = v179;
      v89 = v189;
      if (HIDWORD(v19))
      {
        __break(1u);
        goto LABEL_149;
      }

LABEL_162:
      v135 = CCCrypt(v20, 0, 1u, v59, 0x20uLL, key, dataIn, 0, v89, v88, v84);
      goto LABEL_163;
    }

    v196[0] = a7;
    LOWORD(v196[1]) = a8;
    BYTE2(v196[1]) = BYTE2(a8);
    BYTE3(v196[1]) = BYTE3(a8);
    BYTE4(v196[1]) = BYTE4(a8);
    BYTE5(v196[1]) = BYTE5(a8);
    if ((a10 & 0x8000000000000000) != 0)
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v21 = HIDWORD(a10);
    if (!HIDWORD(a10))
    {
      goto LABEL_172;
    }

    __break(1u);
LABEL_10:
    if (v21 == 2)
    {
      v181 = v16;
      v164 = a9;
      v26 = *(a3 + 16);
      v27 = *(a3 + 24);
      sub_90090(a5, a6);
      v154 = a8;
      sub_90090(a7, a8);
      sub_90090(a3, v14);
      v28 = sub_AB2D10();
      if (v28)
      {
        v29 = sub_AB2D40();
        if (__OFSUB__(v26, v29))
        {
LABEL_227:
          __break(1u);
          goto LABEL_228;
        }

        v28 += v26 - v29;
      }

      if (!__OFSUB__(v27, v26))
      {
        sub_AB2D30();
        sub_2835C8(dataIn, v28, a10, a5, a6, a7, v154, a3, v14, v181, a2, dataOutAvailable, a12);
        if (!v12)
        {
          sub_466B8(a5, a6);
          sub_466B8(a7, v154);
          v30 = a3;
          v31 = v14;
LABEL_23:
          result = sub_466B8(v30, v31);
          v38 = dataIn[0];
          a9 = v164;
LABEL_224:
          *a9 = v38;
          return result;
        }

        sub_466B8(a5, a6);
        sub_466B8(a7, v154);
        v149 = a3;
        v150 = v14;
        goto LABEL_308;
      }

LABEL_226:
      __break(1u);
      goto LABEL_227;
    }

    v39 = a6 >> 62;
    memset(dataIn, 0, 14);
    if ((a6 >> 62) > 1)
    {
      if (v39 == 2)
      {
        v151 = a3;
        v49 = a12;
        v174 = dataOutAvailable;
        v183 = v16;
        v162 = a5;
        v165 = a9;
        *opa = a10;
        v50 = *(a5 + 16);
        sub_90090(a5, a6);
        v52 = a7;
        sub_90090(a7, a8);
        v53 = sub_AB2D10();
        v194 = a6;
        if (v53)
        {
          v54 = v53;
          v55 = sub_AB2D40();
          if (__OFSUB__(v50, v55))
          {
LABEL_232:
            __break(1u);
            goto LABEL_233;
          }

          iva = (v50 - v55 + v54);
LABEL_123:
          v19 = v49;
          sub_AB2D30();
          v119 = a8 >> 62;
          if ((a8 >> 62) <= 1)
          {
            v120 = opa[0];
            v109 = v52;
            if (v119)
            {
              v52 = v151;
              if (v109 > v109 >> 32)
              {
LABEL_255:
                __break(1u);
                goto LABEL_256;
              }

              v124 = sub_AB2D10();
              if (v124)
              {
                v144 = sub_AB2D40();
                if (__OFSUB__(v109, v144))
                {
LABEL_303:
                  __break(1u);
                  goto LABEL_304;
                }

                v124 += v109 - v144;
              }

              sub_AB2D30();
              LODWORD(v20) = opa[0];
              if ((*opa & 0x8000000000000000) != 0)
              {
                goto LABEL_276;
              }

              a9 = v165;
              v126 = v174;
              v127 = v183;
              if (HIDWORD(*opa))
              {
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
                goto LABEL_288;
              }

LABEL_193:
              v142 = CCCrypt(v20, 0, 1u, v124, 0x20uLL, iva, dataIn, 0, v127, v126, v49);
              goto LABEL_194;
            }

            key[0] = v52;
            LOWORD(key[1]) = a8;
            BYTE2(key[1]) = BYTE2(a8);
            BYTE3(key[1]) = BYTE3(a8);
            BYTE4(key[1]) = BYTE4(a8);
            BYTE5(key[1]) = BYTE5(a8);
            v110 = v151;
            if ((*opa & 0x8000000000000000) != 0)
            {
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v119 = HIDWORD(*opa);
            a9 = v165;
            v121 = v174;
            v122 = v183;
            if (!HIDWORD(*opa))
            {
              goto LABEL_197;
            }

            __break(1u);
          }

          v109 = v52;
          if (v119 == 2)
          {
            v123 = *(v52 + 16);
            v124 = sub_AB2D10();
            v52 = v151;
            if (v124)
            {
              v125 = sub_AB2D40();
              if (__OFSUB__(v123, v125))
              {
LABEL_295:
                __break(1u);
                goto LABEL_296;
              }

              v124 += v123 - v125;
            }

            sub_AB2D30();
            v20 = *opa;
            if ((*opa & 0x8000000000000000) != 0)
            {
              goto LABEL_260;
            }

            a9 = v165;
            v126 = v174;
            v127 = v183;
            if (HIDWORD(*opa))
            {
              __break(1u);
              goto LABEL_135;
            }

            goto LABEL_193;
          }

          memset(key, 0, 14);
          v120 = opa[0];
          v110 = v151;
          if ((*opa & 0x8000000000000000) != 0)
          {
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }

          a9 = v165;
          v121 = v174;
          v122 = v183;
          if (HIDWORD(*opa))
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

LABEL_197:
          v143 = CCCrypt(v120, 0, 1u, key, 0x20uLL, iva, dataIn, 0, v122, v121, v49);
          goto LABEL_198;
        }

LABEL_122:
        iva = 0;
        goto LABEL_123;
      }

LABEL_62:
      v75 = a8 >> 62;
      memset(key, 0, 14);
      if ((a8 >> 62) > 1)
      {
LABEL_88:
        if (v75 == 2)
        {
          v76 = a3;
          v84 = v19;
          v175 = v18;
          v184 = v16;
          v163 = a5;
          v166 = a9;
          v61 = v20;
          v93 = *(a7 + 16);
          v195 = a6;
          v94 = a7;
          sub_90090(a5, a6);
          v57 = v94;
          sub_90090(v94, a8);
          v59 = sub_AB2D10();
          if (v59)
          {
            v95 = sub_AB2D40();
            if (__OFSUB__(v93, v95))
            {
LABEL_293:
              __break(1u);
              goto LABEL_294;
            }

            v59 += v93 - v95;
          }

          sub_AB2D30();
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_250;
          }

          LODWORD(v20) = v61;
          v62 = HIDWORD(v61);
          a9 = v166;
          v88 = v175;
          v89 = v184;
          if (!HIDWORD(v61))
          {
            goto LABEL_162;
          }

          __break(1u);
          goto LABEL_95;
        }

        memset(v196, 0, 14);
        if ((v20 & 0x8000000000000000) != 0)
        {
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        if (HIDWORD(v20))
        {
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        goto LABEL_175;
      }

      if (v75)
      {
        v191 = v16;
        v173 = a9;
        v136 = a7;
        if (a7 > a7 >> 32)
        {
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v76 = a3;
        v84 = a12;
        v57 = a7;
        v163 = a5;
        v195 = a6;
        sub_90090(a5, a6);
        sub_90090(v57, a8);
        v59 = sub_AB2D10();
        if (v59)
        {
          v137 = sub_AB2D40();
          if (__OFSUB__(v136, v137))
          {
LABEL_299:
            __break(1u);
            goto LABEL_300;
          }

          v59 += v136 - v137;
        }

        sub_AB2D30();
        if ((a10 & 0x8000000000000000) != 0)
        {
          goto LABEL_266;
        }

        LODWORD(v20) = a10;
        a9 = v173;
        v88 = dataOutAvailable;
        v89 = v191;
        if (HIDWORD(a10))
        {
LABEL_280:
          __break(1u);
          goto LABEL_281;
        }

        goto LABEL_162;
      }

      v196[0] = a7;
      LOWORD(v196[1]) = a8;
      BYTE2(v196[1]) = BYTE2(a8);
      BYTE3(v196[1]) = BYTE3(a8);
      BYTE4(v196[1]) = BYTE4(a8);
      BYTE5(v196[1]) = BYTE5(a8);
      if ((a10 & 0x8000000000000000) != 0)
      {
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      v23 = HIDWORD(a10);
      if (!HIDWORD(a10))
      {
        goto LABEL_175;
      }

      __break(1u);
      goto LABEL_67;
    }

    if (v39)
    {
      v153 = a4;
      v175 = dataOutAvailable;
      v184 = v16;
      v166 = a9;
      *op = a10;
      v66 = a5;
      if (a5 > a5 >> 32)
      {
LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      v14 = a3;
      v57 = a7;
      v163 = a5;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v68 = sub_AB2D10();
      v195 = a6;
      if (v68)
      {
        v69 = sub_AB2D40();
        if (__OFSUB__(v66, v69))
        {
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        v68 += v66 - v69;
      }

      v61 = a12;
      sub_AB2D30();
      v70 = a8 >> 62;
      if ((a8 >> 62) <= 1)
      {
        v71 = v14;
        if (v70)
        {
          v105 = v153;
          if (v57 > v57 >> 32)
          {
LABEL_270:
            __break(1u);
            goto LABEL_271;
          }

          v146 = v68;
          v147 = sub_AB2D10();
          if (v147)
          {
            v148 = sub_AB2D40();
            if (__OFSUB__(v57, v148))
            {
              goto LABEL_305;
            }

            v147 += v57 - v148;
          }

          sub_AB2D30();
          if ((a10 & 0x8000000000000000) != 0)
          {
            goto LABEL_287;
          }

          a9 = v166;
          if (HIDWORD(a10))
          {
LABEL_289:
            __break(1u);
            goto LABEL_290;
          }

          v38 = CCCrypt(a10, 0, 1u, v147, 0x20uLL, v146, dataIn, 0, v184, dataOutAvailable, a12);
          sub_466B8(v163, v195);
          sub_466B8(v57, a8);
          v73 = v71;
          goto LABEL_214;
        }

        v72 = v68;
        key[0] = v57;
        LOWORD(key[1]) = a8;
        BYTE2(key[1]) = BYTE2(a8);
        BYTE3(key[1]) = BYTE3(a8);
        BYTE4(key[1]) = BYTE4(a8);
        BYTE5(key[1]) = BYTE5(a8);
        v64 = v153;
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        a9 = v166;
        if (HIDWORD(a10))
        {
LABEL_278:
          __break(1u);
          goto LABEL_279;
        }

        v38 = CCCrypt(a10, 0, 1u, key, 0x20uLL, v72, dataIn, 0, v184, dataOutAvailable, a12);
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v14;
LABEL_222:
        v138 = v64;
        goto LABEL_223;
      }

      goto LABEL_102;
    }

    key[0] = a5;
    LOWORD(key[1]) = a6;
    BYTE2(key[1]) = BYTE2(a6);
    BYTE3(key[1]) = BYTE3(a6);
    BYTE4(key[1]) = BYTE4(a6);
    v40 = a8 >> 62;
    BYTE5(key[1]) = BYTE5(a6);
    if ((a8 >> 62) > 1)
    {
      goto LABEL_74;
    }

    if (v40)
    {
      goto LABEL_142;
    }

    v196[0] = a7;
    LOWORD(v196[1]) = a8;
    BYTE2(v196[1]) = BYTE2(a8);
    BYTE3(v196[1]) = BYTE3(a8);
    BYTE4(v196[1]) = BYTE4(a8);
    BYTE5(v196[1]) = BYTE5(a8);
    if ((a10 & 0x8000000000000000) != 0)
    {
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    v22 = HIDWORD(a10);
    if (!HIDWORD(a10))
    {
      goto LABEL_175;
    }

    __break(1u);
LABEL_31:
    if (v22 == 2)
    {
      v151 = a3;
      v174 = dataOutAvailable;
      v183 = v16;
      v162 = a5;
      v165 = a9;
      *opa = a10;
      v42 = *(a5 + 16);
      sub_90090(a5, a6);
      v44 = a7;
      sub_90090(a7, a8);
      v45 = sub_AB2D10();
      v194 = a6;
      if (v45)
      {
        v46 = v45;
        v47 = sub_AB2D40();
        if (__OFSUB__(v42, v47))
        {
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        iv = (v42 - v47 + v46);
      }

      else
      {
        iv = 0;
      }

      sub_AB2D30();
      v107 = a8 >> 62;
      v49 = v12;
      if ((a8 >> 62) <= 1)
      {
        v108 = a10;
        v109 = v44;
        if (v107)
        {
          v52 = v151;
          if (v109 > v109 >> 32)
          {
LABEL_253:
            __break(1u);
            goto LABEL_254;
          }

          v114 = sub_AB2D10();
          if (v114)
          {
            v141 = sub_AB2D40();
            if (__OFSUB__(v109, v141))
            {
LABEL_302:
              __break(1u);
              goto LABEL_303;
            }

            v114 += v109 - v141;
          }

          sub_AB2D30();
          v116 = a10;
          if ((a10 & 0x8000000000000000) != 0)
          {
            goto LABEL_275;
          }

          a9 = v165;
          v117 = dataOutAvailable;
          v118 = v183;
          if (HIDWORD(a10))
          {
LABEL_284:
            __break(1u);
            goto LABEL_285;
          }

          goto LABEL_183;
        }

        key[0] = v44;
        LOWORD(key[1]) = a8;
        BYTE2(key[1]) = BYTE2(a8);
        BYTE3(key[1]) = BYTE3(a8);
        BYTE4(key[1]) = BYTE4(a8);
        BYTE5(key[1]) = BYTE5(a8);
        v110 = v151;
        if ((a10 & 0x8000000000000000) != 0)
        {
LABEL_251:
          __break(1u);
          goto LABEL_252;
        }

        v107 = HIDWORD(a10);
        a9 = v165;
        v111 = dataOutAvailable;
        v112 = v183;
        if (!HIDWORD(a10))
        {
LABEL_186:
          v143 = CCCrypt(v108, 0, 1u, key, 0x20uLL, iv, dataIn, BYTE6(v14), v112, v111, a12);
LABEL_198:
          v38 = v143;
          sub_466B8(v162, v194);
          sub_466B8(v109, a8);
          v73 = v110;
          goto LABEL_206;
        }

        __break(1u);
      }

      v109 = v44;
      if (v107 == 2)
      {
        v113 = *(v44 + 16);
        v114 = sub_AB2D10();
        v52 = v151;
        if (v114)
        {
          v115 = sub_AB2D40();
          if (__OFSUB__(v113, v115))
          {
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }

          v114 += v113 - v115;
        }

        sub_AB2D30();
        v116 = a10;
        if ((a10 & 0x8000000000000000) != 0)
        {
          goto LABEL_259;
        }

        a9 = v165;
        v117 = dataOutAvailable;
        v118 = v183;
        if (HIDWORD(a10))
        {
          __break(1u);
          goto LABEL_122;
        }

LABEL_183:
        v142 = CCCrypt(v116, 0, 1u, v114, 0x20uLL, iv, dataIn, BYTE6(v14), v118, v117, a12);
LABEL_194:
        v38 = v142;
        sub_466B8(v162, v194);
        sub_466B8(v109, a8);
        v73 = v52;
LABEL_206:
        v138 = v14;
        goto LABEL_223;
      }

      memset(key, 0, 14);
      v108 = a10;
      v110 = v151;
      if ((a10 & 0x8000000000000000) != 0)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      a9 = v165;
      v111 = dataOutAvailable;
      v112 = v183;
      if (HIDWORD(a10))
      {
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      goto LABEL_186;
    }

    v74 = a8 >> 62;
    memset(key, 0, 14);
    if ((a8 >> 62) > 1)
    {
LABEL_81:
      if (v74 == 2)
      {
        v76 = a3;
        v77 = v19;
        v177 = v18;
        v187 = v16;
        v163 = a5;
        v169 = a9;
        v19 = v20;
        v90 = *(a7 + 16);
        v195 = a6;
        v91 = a7;
        sub_90090(a5, a6);
        v57 = v91;
        sub_90090(v91, a8);
        v80 = sub_AB2D10();
        if (v80)
        {
          v92 = sub_AB2D40();
          if (__OFSUB__(v90, v92))
          {
LABEL_292:
            __break(1u);
            goto LABEL_293;
          }

          v80 += v90 - v92;
        }

        sub_AB2D30();
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_249;
        }

        v20 = v19;
        v75 = HIDWORD(v19);
        a9 = v169;
        v82 = v177;
        v83 = v187;
        if (HIDWORD(v19))
        {
          __break(1u);
          goto LABEL_88;
        }

LABEL_155:
        v135 = CCCrypt(v20, 0, 1u, v80, 0x20uLL, key, dataIn, BYTE6(v14), v83, v82, v77);
LABEL_163:
        v38 = v135;
        sub_466B8(v163, v195);
        sub_466B8(v57, a8);
        v73 = v76;
        v138 = v14;
LABEL_223:
        result = sub_466B8(v73, v138);
        goto LABEL_224;
      }

      goto LABEL_170;
    }

    if (v74)
    {
LABEL_149:
      v180 = v18;
      v190 = v16;
      v172 = a9;
      v132 = a7;
      if (a7 > a7 >> 32)
      {
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v76 = a3;
      v77 = v19;
      v133 = v20;
      v57 = a7;
      v163 = a5;
      v195 = a6;
      sub_90090(a5, a6);
      sub_90090(v57, a8);
      v80 = sub_AB2D10();
      if (v80)
      {
        v134 = sub_AB2D40();
        if (__OFSUB__(v132, v134))
        {
LABEL_298:
          __break(1u);
          goto LABEL_299;
        }

        v80 += v132 - v134;
      }

      sub_AB2D30();
      if ((v133 & 0x8000000000000000) != 0)
      {
        goto LABEL_265;
      }

      LODWORD(v20) = v133;
      a9 = v172;
      v82 = v180;
      v83 = v190;
      if (HIDWORD(v133))
      {
LABEL_279:
        __break(1u);
        goto LABEL_280;
      }

      goto LABEL_155;
    }

    v196[0] = a7;
    LOWORD(v196[1]) = a8;
    BYTE2(v196[1]) = BYTE2(a8);
    BYTE3(v196[1]) = BYTE3(a8);
    BYTE4(v196[1]) = BYTE4(a8);
    BYTE5(v196[1]) = BYTE5(a8);
    if ((a10 & 0x8000000000000000) != 0)
    {
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    if (!HIDWORD(a10))
    {
      goto LABEL_172;
    }

    __break(1u);
    goto LABEL_62;
  }

  v182 = v16;
  v32 = a3;
  if (a3 >> 32 < a3)
  {
    __break(1u);
    goto LABEL_226;
  }

  v164 = a9;
  sub_90090(a5, a6);
  v155 = a8;
  sub_90090(a7, a8);
  sub_90090(a3, v14);
  v35 = sub_AB2D10();
  if (v35)
  {
    v36 = sub_AB2D40();
    if (__OFSUB__(v32, v36))
    {
LABEL_228:
      __break(1u);
      goto LABEL_229;
    }

    v35 += v32 - v36;
  }

  sub_AB2D30();
  sub_2835C8(dataIn, v35, a10, a5, a6, a7, v155, a3, v14, v182, a2, dataOutAvailable, a12);
  if (!v12)
  {
    sub_466B8(a5, a6);
    sub_466B8(a7, v155);
    v30 = a3;
    v31 = v14;
    goto LABEL_23;
  }

  sub_466B8(a5, a6);
  sub_466B8(a7, v155);
  v149 = a3;
  v150 = v14;
LABEL_308:
  sub_466B8(v149, v150);

  __break(1u);
  return result;
}

uint64_t sub_2835C8@<X0>(uint64_t *__return_ptr a1@<X8>, void *dataIn@<X0>, unint64_t op@<X6>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, unint64_t a7@<X5>, void *a8@<X7>, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, size_t *a13)
{
  v14 = v13;
  v15 = a8;
  v18 = a5;
  v19 = dataIn;
  v21 = a12;
  v22 = a13;
  v24 = a9;
  v23 = a10;
  v25 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v25)
    {
      v100 = a1;
      dataIna = dataIn;
      v34 = a4;
      if (a4 <= a4 >> 32)
      {
        v102 = a13;
        v103 = a12;
        v104 = a10;
        v27 = op;
        sub_90090(a6, a7);
        v105 = v15;
        v19 = a9;
        sub_90090(v15, a9);
        v15 = sub_AB2D10();
        if (v15)
        {
          v35 = sub_AB2D40();
          if (__OFSUB__(v34, v35))
          {
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

          v15 = (v15 + v34 - v35);
        }

        v24 = v18 & 0x3FFFFFFFFFFFFFFFLL;
        sub_AB2D30();
        v36 = a7 >> 62;
        if ((a7 >> 62) <= 1)
        {
          if (!v36)
          {
            v30 = v27;
            iv[0] = a6;
            LOWORD(iv[1]) = a7;
            BYTE2(iv[1]) = BYTE2(a7);
            BYTE3(iv[1]) = BYTE3(a7);
            BYTE4(iv[1]) = BYTE4(a7);
            BYTE5(iv[1]) = BYTE5(a7);
            if ((v27 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v27))
              {
                v24 = a9;
                v37 = a9 >> 62;
                op = dataIna;
                if ((a9 >> 62) <= 1)
                {
                  if (v37)
                  {
                    if (__OFSUB__(HIDWORD(v105), v105))
                    {
LABEL_298:
                      __break(1u);
                      goto LABEL_299;
                    }

                    v38 = HIDWORD(v105) - v105;
                  }

                  else
                  {
                    v38 = BYTE6(a9);
                  }

                  goto LABEL_235;
                }

                goto LABEL_184;
              }

              goto LABEL_279;
            }

            goto LABEL_268;
          }

          if (a6 > a6 >> 32)
          {
LABEL_274:
            __break(1u);
            goto LABEL_275;
          }

          v18 = sub_AB2D10();
          if (v18)
          {
            v65 = sub_AB2D40();
            if (__OFSUB__(a6, v65))
            {
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
              goto LABEL_297;
            }

            v18 += a6 - v65;
          }

          sub_AB2D30();
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_285;
          }

          v49 = v27;
          op = dataIna;
          if (HIDWORD(v27))
          {
LABEL_286:
            __break(1u);
            goto LABEL_287;
          }

          v66 = a9 >> 62;
          if ((a9 >> 62) <= 1)
          {
            if (v66)
            {
              v51 = HIDWORD(v105) - v105;
              if (__OFSUB__(HIDWORD(v105), v105))
              {
                goto LABEL_302;
              }

              goto LABEL_243;
            }

LABEL_141:
            v67 = BYTE6(v19);
LABEL_244:
            v96 = CCCrypt(v49, 0, 1u, v18, 0x20uLL, v15, op, v67, v104, v103, v102);
            goto LABEL_245;
          }

          if (v66 == 2)
          {
            v89 = v105[2];
            v88 = v105[3];
            v67 = v88 - v89;
            if (!__OFSUB__(v88, v89))
            {
              goto LABEL_244;
            }

            __break(1u);
          }

LABEL_214:
          v67 = 0;
          goto LABEL_244;
        }

LABEL_76:
        if (v36 == 2)
        {
          v47 = *(a6 + 16);
          v18 = sub_AB2D10();
          if (v18)
          {
            v48 = sub_AB2D40();
            if (__OFSUB__(v47, v48))
            {
LABEL_292:
              __break(1u);
              goto LABEL_293;
            }

            v18 += v47 - v48;
          }

          v24 = a7 & 0x3FFFFFFFFFFFFFFFLL;
          sub_AB2D30();
          a1 = v100;
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_277;
          }

          v49 = v27;
          op = dataIna;
          if (HIDWORD(v27))
          {
LABEL_283:
            __break(1u);
            goto LABEL_284;
          }

          v50 = v19 >> 62;
          if ((v19 >> 62) <= 1)
          {
            if (v50)
            {
              v51 = HIDWORD(v105) - v105;
              if (!__OFSUB__(HIDWORD(v105), v105))
              {
LABEL_243:
                v67 = v51;
                goto LABEL_244;
              }

              __break(1u);
LABEL_87:
              v102 = v22;
              v103 = v21;
              v104 = v23;
              if (a6 <= a6 >> 32)
              {
                v52 = op;
                sub_90090(a6, a7);
                v105 = v15;
                sub_90090(v15, v24);
                v15 = sub_AB2D10();
                if (v15)
                {
                  v53 = sub_AB2D40();
                  if (__OFSUB__(a6, v53))
                  {
LABEL_290:
                    __break(1u);
                    goto LABEL_291;
                  }

                  v15 = (v15 + a6 - v53);
                }

                sub_AB2D30();
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_271;
                }

                v30 = v52;
                if (HIDWORD(v52))
                {
LABEL_280:
                  __break(1u);
                  goto LABEL_281;
                }

                v54 = v24 >> 62;
                if ((v24 >> 62) > 1)
                {
                  goto LABEL_188;
                }

                if (!v54)
                {
                  goto LABEL_106;
                }

                LODWORD(v31) = HIDWORD(v105) - v105;
                if (!__OFSUB__(HIDWORD(v105), v105))
                {
                  goto LABEL_229;
                }

                __break(1u);
LABEL_98:
                v102 = v22;
                v103 = v21;
                v104 = v23;
                if (a6 <= a6 >> 32)
                {
                  v55 = op;
                  sub_90090(a6, a7);
                  v105 = v15;
                  sub_90090(v15, v24);
                  v15 = sub_AB2D10();
                  if (v15)
                  {
                    v56 = sub_AB2D40();
                    if (__OFSUB__(a6, v56))
                    {
LABEL_291:
                      __break(1u);
                      goto LABEL_292;
                    }

                    v15 = (v15 + a6 - v56);
                  }

                  sub_AB2D30();
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_272;
                  }

                  v30 = v55;
                  if (HIDWORD(v55))
                  {
LABEL_281:
                    __break(1u);
                    goto LABEL_282;
                  }

                  v57 = v24 >> 62;
                  if ((v24 >> 62) > 1)
                  {
LABEL_192:
                    if (v57 == 2)
                    {
                      v83 = v105[2];
                      v82 = v105[3];
                      v58 = v82 - v83;
                      if (!__OFSUB__(v82, v83))
                      {
                        goto LABEL_230;
                      }

                      __break(1u);
                    }

                    goto LABEL_196;
                  }

                  if (v57)
                  {
                    LODWORD(v31) = HIDWORD(v105) - v105;
                    if (__OFSUB__(HIDWORD(v105), v105))
                    {
LABEL_299:
                      __break(1u);
                      goto LABEL_300;
                    }

                    goto LABEL_229;
                  }

LABEL_106:
                  v58 = BYTE6(v24);
LABEL_230:
                  v93 = CCCrypt(v30, 0, 1u, v15, 0x20uLL, iv, v19, v58, v104, v103, v102);
LABEL_231:
                  v91 = v93;
                  sub_466B8(a6, a7);
                  v94 = v105;
                  v95 = v24;
LABEL_246:
                  result = sub_466B8(v94, v95);
                  goto LABEL_247;
                }

                goto LABEL_254;
              }

LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
              goto LABEL_255;
            }

            goto LABEL_141;
          }

          goto LABEL_201;
        }

        memset(iv, 0, 14);
        if ((v27 & 0x8000000000000000) != 0)
        {
LABEL_275:
          __break(1u);
          goto LABEL_276;
        }

        v49 = v27;
        a1 = v100;
        if (HIDWORD(v27))
        {
LABEL_282:
          __break(1u);
          goto LABEL_283;
        }

        v68 = v19 >> 62;
        op = dataIna;
        if ((v19 >> 62) > 1)
        {
          if (v68 == 2)
          {
            v84 = v105[2];
            v50 = v105[3];
            v69 = v50 - v84;
            if (__OFSUB__(v50, v84))
            {
              __break(1u);
LABEL_201:
              if (v50 == 2)
              {
                v85 = v105[2];
                v63 = v105[3];
                v67 = v63 - v85;
                if (__OFSUB__(v63, v85))
                {
                  __break(1u);
                  goto LABEL_205;
                }

                goto LABEL_244;
              }

              goto LABEL_214;
            }
          }

          else
          {
            v69 = 0;
          }
        }

        else if (v68)
        {
          if (__OFSUB__(HIDWORD(v105), v105))
          {
LABEL_300:
            __break(1u);
            goto LABEL_301;
          }

          v69 = HIDWORD(v105) - v105;
        }

        else
        {
          v69 = BYTE6(v19);
        }

        v96 = CCCrypt(v27, 0, 1u, iv, 0x20uLL, v15, dataIna, v69, v104, v103, v102);
LABEL_245:
        v91 = v96;
        sub_466B8(a6, a7);
        v94 = v105;
        v95 = v19;
        goto LABEL_246;
      }

      __break(1u);
LABEL_249:
      __break(1u);
      goto LABEL_250;
    }

    iv[0] = a4;
    LOWORD(iv[1]) = a5;
    BYTE2(iv[1]) = BYTE2(a5);
    BYTE3(iv[1]) = BYTE3(a5);
    BYTE4(iv[1]) = BYTE4(a5);
    v25 = a7 >> 62;
    BYTE5(iv[1]) = BYTE5(a5);
    if ((a7 >> 62) > 1)
    {
      goto LABEL_43;
    }

    if (v25)
    {
      goto LABEL_87;
    }

    key[0] = a6;
    LOWORD(key[1]) = a7;
    BYTE2(key[1]) = BYTE2(a7);
    BYTE3(key[1]) = BYTE3(a7);
    BYTE4(key[1]) = BYTE4(a7);
    BYTE5(key[1]) = BYTE5(a7);
    if ((op & 0x8000000000000000) != 0)
    {
      goto LABEL_251;
    }

    if (HIDWORD(op))
    {
LABEL_262:
      __break(1u);
      goto LABEL_263;
    }

    v26 = a9 >> 62;
    if ((a9 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_163;
      }

      v70 = a8[2];
      v39 = a8[3];
      v61 = v39 - v70;
      if (!__OFSUB__(v39, v70))
      {
        goto LABEL_217;
      }

      __break(1u);
      goto LABEL_151;
    }

    if (!v26)
    {
      goto LABEL_118;
    }

    LODWORD(v25) = HIDWORD(a8) - a8;
    if (!__OFSUB__(HIDWORD(a8), a8))
    {
      goto LABEL_216;
    }

    __break(1u);
  }

  if (v25 == 2)
  {
    v102 = a13;
    v103 = a12;
    v104 = a10;
    v27 = op;
    dataIna = dataIn;
    v19 = a1;
    v28 = *(a4 + 16);
    sub_90090(a6, a7);
    v105 = v15;
    v100 = a9;
    sub_90090(v15, a9);
    v15 = sub_AB2D10();
    if (!v15)
    {
      goto LABEL_16;
    }

    v29 = sub_AB2D40();
    if (!__OFSUB__(v28, v29))
    {
      v15 = (v15 + v28 - v29);
LABEL_16:
      v30 = sub_AB2D30();
      v31 = a7 >> 62;
      if ((a7 >> 62) <= 1)
      {
        if (!v31)
        {
          v30 = v27;
          iv[0] = a6;
          LOWORD(iv[1]) = a7;
          BYTE2(iv[1]) = BYTE2(a7);
          BYTE3(iv[1]) = BYTE3(a7);
          BYTE4(iv[1]) = BYTE4(a7);
          BYTE5(iv[1]) = BYTE5(a7);
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v27))
            {
              v32 = a9 >> 62;
              op = dataIna;
              if ((a9 >> 62) <= 1)
              {
                v24 = v105;
                if (!v32)
                {
                  v33 = BYTE6(a9);
LABEL_223:
                  dataOutAvailable = a12;
                  v99 = a13;
                  v92 = iv;
                  dataOut = a10;
LABEL_241:
                  v91 = CCCrypt(v30, 0, 1u, v92, 0x20uLL, v15, op, v33, dataOut, dataOutAvailable, v99);
                  sub_466B8(a6, a7);
                  v94 = v24;
                  v95 = v100;
                  goto LABEL_246;
                }

                if (!__OFSUB__(HIDWORD(v105), v105))
                {
                  v33 = HIDWORD(v105) - v105;
                  goto LABEL_223;
                }

                goto LABEL_296;
              }

              v24 = v105;
              if (v32 != 2)
              {
                v33 = 0;
                goto LABEL_223;
              }

              v75 = v105[2];
              v41 = v105[3];
              v33 = v41 - v75;
              if (!__OFSUB__(v41, v75))
              {
                goto LABEL_223;
              }

              __break(1u);
              goto LABEL_168;
            }

            goto LABEL_267;
          }

          goto LABEL_257;
        }

        if (a6 > a6 >> 32)
        {
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v18 = sub_AB2D10();
        if (v18)
        {
          v62 = sub_AB2D40();
          if (__OFSUB__(a6, v62))
          {
LABEL_293:
            __break(1u);
            goto LABEL_294;
          }

          v18 += a6 - v62;
        }

        sub_AB2D30();
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_278;
        }

        op = dataIna;
        if (HIDWORD(v27))
        {
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          goto LABEL_286;
        }

        v63 = a9 >> 62;
        v24 = v105;
        if ((a9 >> 62) <= 1)
        {
          if (!v63)
          {
            goto LABEL_127;
          }

          LODWORD(v36) = HIDWORD(v105) - v105;
          if (__OFSUB__(HIDWORD(v105), v105))
          {
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
          }

          goto LABEL_239;
        }

LABEL_205:
        if (v63 == 2)
        {
          v87 = *(v24 + 16);
          v86 = *(v24 + 24);
          v33 = v86 - v87;
          if (!__OFSUB__(v86, v87))
          {
            goto LABEL_240;
          }

          __break(1u);
        }

LABEL_209:
        v33 = 0;
        goto LABEL_240;
      }

      goto LABEL_65;
    }

    goto LABEL_249;
  }

  v31 = a7 >> 62;
  memset(iv, 0, 14);
  if ((a7 >> 62) > 1)
  {
    goto LABEL_54;
  }

  if (v31)
  {
    goto LABEL_98;
  }

  key[0] = a6;
  LOWORD(key[1]) = a7;
  BYTE2(key[1]) = BYTE2(a7);
  BYTE3(key[1]) = BYTE3(a7);
  BYTE4(key[1]) = BYTE4(a7);
  BYTE5(key[1]) = BYTE5(a7);
  if ((op & 0x8000000000000000) != 0)
  {
    goto LABEL_252;
  }

  if (HIDWORD(op))
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v39 = a9 >> 62;
  if ((a9 >> 62) > 1)
  {
LABEL_151:
    if (v39 != 2)
    {
      goto LABEL_163;
    }

    v71 = v15[2];
    v59 = v15[3];
    v61 = v59 - v71;
    if (!__OFSUB__(v59, v71))
    {
      goto LABEL_217;
    }

    __break(1u);
    goto LABEL_155;
  }

  if (!v39)
  {
    goto LABEL_118;
  }

  LODWORD(v25) = HIDWORD(a8) - a8;
  if (!__OFSUB__(HIDWORD(a8), a8))
  {
    goto LABEL_216;
  }

  __break(1u);
LABEL_43:
  if (v25 == 2)
  {
    v102 = a13;
    v103 = a12;
    v104 = a10;
    v27 = op;
    v18 = *(a6 + 16);
    sub_90090(a6, a7);
    v105 = v15;
    sub_90090(v15, a9);
    v15 = sub_AB2D10();
    if (v15)
    {
      v40 = sub_AB2D40();
      if (__OFSUB__(v18, v40))
      {
LABEL_287:
        __break(1u);
        goto LABEL_288;
      }

      v15 = (v15 + v18 - v40);
    }

    sub_AB2D30();
    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_258;
    }

    v30 = v27;
    if (HIDWORD(v27))
    {
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v41 = a9 >> 62;
    v14 = v13;
    if ((a9 >> 62) > 1)
    {
LABEL_168:
      if (v41 != 2)
      {
        goto LABEL_196;
      }

      v76 = v105[2];
      v43 = v105[3];
      v58 = v43 - v76;
      if (!__OFSUB__(v43, v76))
      {
        goto LABEL_230;
      }

      __break(1u);
      goto LABEL_172;
    }

    if (!v41)
    {
      goto LABEL_106;
    }

    LODWORD(v31) = HIDWORD(v105) - v105;
    if (!__OFSUB__(HIDWORD(v105), v105))
    {
      goto LABEL_229;
    }

    __break(1u);
LABEL_54:
    if (v31 == 2)
    {
      v102 = v22;
      v103 = v21;
      v104 = v23;
      dataIna = v14;
      v27 = op;
      v18 = *(a6 + 16);
      sub_90090(a6, a7);
      v105 = v15;
      sub_90090(v15, a9);
      v15 = sub_AB2D10();
      if (v15)
      {
        v42 = sub_AB2D40();
        if (__OFSUB__(v18, v42))
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

        v15 = (v15 + v18 - v42);
      }

      sub_AB2D30();
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_259;
      }

      v30 = v27;
      if (HIDWORD(v27))
      {
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
        goto LABEL_274;
      }

      v43 = a9 >> 62;
      if ((a9 >> 62) > 1)
      {
LABEL_172:
        if (v43 != 2)
        {
          goto LABEL_196;
        }

        v77 = v105[2];
        v64 = v105[3];
        v58 = v64 - v77;
        if (!__OFSUB__(v64, v77))
        {
          goto LABEL_230;
        }

        __break(1u);
        goto LABEL_176;
      }

      if (!v43)
      {
        goto LABEL_106;
      }

      LODWORD(v31) = HIDWORD(v105) - v105;
      if (__OFSUB__(HIDWORD(v105), v105))
      {
        __break(1u);
LABEL_65:
        if (v31 != 2)
        {
          memset(iv, 0, 14);
          if ((v27 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v27))
            {
              a1 = v19;
              v64 = v100 >> 62;
              op = dataIna;
              if ((v100 >> 62) <= 1)
              {
                v24 = v105;
                if (v64)
                {
                  if (__OFSUB__(HIDWORD(v105), v105))
                  {
LABEL_297:
                    __break(1u);
                    goto LABEL_298;
                  }

                  v33 = HIDWORD(v105) - v105;
                }

                else
                {
                  v33 = BYTE6(v100);
                }

                goto LABEL_225;
              }

LABEL_176:
              v24 = v105;
              if (v64 == 2)
              {
                v78 = v105[2];
                v46 = v105[3];
                v33 = v46 - v78;
                if (!__OFSUB__(v46, v78))
                {
                  goto LABEL_225;
                }

                __break(1u);
LABEL_180:
                if (v46 == 2)
                {
                  v79 = *(v24 + 16);
                  v37 = *(v24 + 24);
                  v33 = v37 - v79;
                  if (!__OFSUB__(v37, v79))
                  {
                    goto LABEL_240;
                  }

                  __break(1u);
LABEL_184:
                  if (v37 != 2)
                  {
                    v38 = 0;
LABEL_235:
                    v93 = CCCrypt(v30, 0, 1u, iv, 0x20uLL, v15, op, v38, v104, v103, v102);
                    goto LABEL_231;
                  }

                  v80 = v105[2];
                  v54 = v105[3];
                  v38 = v54 - v80;
                  if (!__OFSUB__(v54, v80))
                  {
                    goto LABEL_235;
                  }

                  __break(1u);
LABEL_188:
                  if (v54 == 2)
                  {
                    v81 = v105[2];
                    v57 = v105[3];
                    v58 = v57 - v81;
                    if (!__OFSUB__(v57, v81))
                    {
                      goto LABEL_230;
                    }

                    __break(1u);
                    goto LABEL_192;
                  }

LABEL_196:
                  v58 = 0;
                  goto LABEL_230;
                }

                goto LABEL_209;
              }

              v33 = 0;
LABEL_225:
              dataOutAvailable = v103;
              v99 = v102;
              v92 = iv;
              dataOut = v104;
              v30 = v27;
              goto LABEL_241;
            }

            goto LABEL_273;
          }

          goto LABEL_261;
        }

        v44 = *(a6 + 16);
        v18 = sub_AB2D10();
        if (v18)
        {
          v45 = sub_AB2D40();
          if (__OFSUB__(v44, v45))
          {
LABEL_289:
            __break(1u);
            goto LABEL_290;
          }

          v18 += v44 - v45;
        }

        v30 = sub_AB2D30();
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_266;
        }

        op = dataIna;
        if (HIDWORD(v27))
        {
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
          goto LABEL_280;
        }

        a1 = v19;
        v46 = v100 >> 62;
        v24 = v105;
        if ((v100 >> 62) > 1)
        {
          goto LABEL_180;
        }

        if (!v46)
        {
LABEL_127:
          v33 = BYTE6(v100);
LABEL_240:
          dataOutAvailable = v103;
          v99 = v102;
          dataOut = v104;
          v30 = v27;
          v92 = v18;
          goto LABEL_241;
        }

        LODWORD(v36) = HIDWORD(v105) - v105;
        if (!__OFSUB__(HIDWORD(v105), v105))
        {
LABEL_239:
          v33 = v36;
          goto LABEL_240;
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_229:
      v58 = v31;
      goto LABEL_230;
    }

LABEL_114:
    memset(key, 0, 14);
    if ((op & 0x8000000000000000) != 0)
    {
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    if (HIDWORD(op))
    {
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v60 = a9 >> 62;
    if ((a9 >> 62) <= 1)
    {
      if (v60)
      {
        LODWORD(v25) = HIDWORD(v15) - v15;
        if (!__OFSUB__(HIDWORD(v15), v15))
        {
LABEL_216:
          v61 = v25;
          goto LABEL_217;
        }

        goto LABEL_295;
      }

      goto LABEL_118;
    }

    goto LABEL_159;
  }

  memset(key, 0, 14);
  if ((op & 0x8000000000000000) != 0)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  if (HIDWORD(op))
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v59 = a9 >> 62;
  if ((a9 >> 62) > 1)
  {
LABEL_155:
    if (v59 == 2)
    {
      v72 = v15[2];
      v60 = v15[3];
      v61 = v60 - v72;
      if (!__OFSUB__(v60, v72))
      {
        goto LABEL_217;
      }

      __break(1u);
LABEL_159:
      if (v60 == 2)
      {
        v74 = v15[2];
        v73 = v15[3];
        v61 = v73 - v74;
        if (!__OFSUB__(v73, v74))
        {
          goto LABEL_217;
        }

        __break(1u);
      }
    }

LABEL_163:
    v61 = 0;
    goto LABEL_217;
  }

  if (v59)
  {
    LODWORD(v25) = HIDWORD(a8) - a8;
    if (!__OFSUB__(HIDWORD(a8), a8))
    {
      goto LABEL_216;
    }

    __break(1u);
    goto LABEL_114;
  }

LABEL_118:
  v61 = BYTE6(a9);
LABEL_217:
  result = CCCrypt(op, 0, 1u, key, 0x20uLL, iv, v19, v61, v23, v21, v22);
  v91 = result;
LABEL_247:
  *a1 = v91;
  return result;
}

void *sub_284478(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E25170, &qword_AF8EB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2845A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_ABB060();
  }

  return sub_ABAE30();
}

_BYTE *sub_284608@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_28469C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_284754(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2847D0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_28469C(_BYTE *__src, _BYTE *a2)
{
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

uint64_t sub_284754(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_AB2D50();
  swift_allocObject();
  result = sub_AB2D00();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_AB3210();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2847D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_AB2D50();
  swift_allocObject();
  result = sub_AB2D00();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_284854(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFBFF8, &unk_B07540);
  v10 = sub_284D70();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_284608(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_284904(uint64_t a1, unint64_t a2, int64_t a3, int8x16_t a4, int8x16_t a5)
{
  v11 = a1;
  *a4.i64 = vcvtd_n_f64_s64(a3, 3uLL);
  *a5.i64 = *a4.i64 - trunc(*a4.i64);
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  v14 = vbslq_s8(v13, a5, a4);
  if (*v14.i64 == 0.0)
  {
    if ((a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (*a4.i64 > -9.22337204e18)
    {
      if (*a4.i64 < 9.22337204e18)
      {
        v15 = a2 >> 62;
        if ((a2 >> 62) > 1)
        {
          a1 = 0;
          if (v15 == 2)
          {
            a1 = *(v11 + 16);
          }
        }

        else if (v15)
        {
          a1 = a1;
        }

        else
        {
          a1 = 0;
        }

        if (a1 <= *a4.i64)
        {
          v18 = sub_AB3240();
          v20 = v19;
          v21 = Data.hexRepresentation.getter(v18, v19);
          sub_466B8(v18, v20);
          return v21;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_63;
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a2);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    if (a3 > 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v25 = __OFSUB__(v23, v24);
  v17 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_20:
    LODWORD(v17) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_77;
    }

    v17 = v17;
  }

LABEL_22:
  if ((v17 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a3 > 8 * v17)
  {
LABEL_24:

    return Data.hexRepresentation.getter(a1, a2);
  }

LABEL_28:
  *v14.i64 = a3;
  v26 = ceil(*a4.i64);
  v27 = v26 * 8.0 - a3;
  if (v27 <= -9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  *v13.i64 = *v14.i64 - trunc(*v14.i64 * 0.25) * 4.0;
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v29 = *v14.i64 + 4.0 - *vbslq_s8(vnegq_f64(v28), v13, v14).i64 - *v14.i64;
  if (v29 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v30 = COERCE_UNSIGNED_INT64(fabs(v26 * 8.0 - a3)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v30)
  {
    goto LABEL_70;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v26 < 9.22337204e18)
  {
    v31 = 0;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v31 = *(v11 + 16);
      }
    }

    else if (v16)
    {
      v31 = v11;
    }

    if (v31 > v26)
    {
      goto LABEL_73;
    }

    v5 = sub_AB3240();
    v6 = v32;
    sub_90090(v5, v32);
    sub_2818F0(v5, v6);
    v8 = *(v33 + 16);
    if (!v8)
    {
      goto LABEL_74;
    }

    v7 = v33;
    v34 = v27;
    v11 = v29;
    v9 = v8 - 1;
    if (v27 < -8 || v34 > 8)
    {
LABEL_46:
      if (v11 - 9 >= 0xFFFFFFFFFFFFFFEFLL)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        LOBYTE(v10) = 0;
        v35 = 0;
        if (v11 >= 8)
        {
          goto LABEL_58;
        }

LABEL_57:
        v10 = v35 << v11;
        goto LABEL_58;
      }

      goto LABEL_54;
    }

    v36 = *(v33 + v9 + 32);
    if (v34 < 0)
    {
      if (v34 == -8)
      {
        goto LABEL_46;
      }

      v35 = v36 << -v34;
    }

    else
    {
      if (v34 == 8)
      {
        goto LABEL_46;
      }

      v35 = v36 >> v34;
    }

    if (v11 - 9 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        if (v11 > 0xFFFFFFFFFFFFFFF8)
        {
          goto LABEL_83;
        }
      }

      else if (v11 < 8)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    LOBYTE(v10) = 0;
    goto LABEL_58;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  v7 = sub_284540(v7);
  while (1)
  {
    v11 = *(v7 + 2);
    if (v8 <= v11)
    {
      break;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    LOBYTE(v35) = 0;
    LOBYTE(v10) = 0;
    if (v11 > 0xFFFFFFFFFFFFFFF8)
    {
LABEL_83:
      v10 = v35 >> -v11;
    }

LABEL_58:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  v7[v9 + 32] = v10;

  v38 = sub_284854(v37);
  v40 = v39;

  v41 = Data.hexRepresentation.getter(v38, v40);
  sub_466B8(v5, v6);
  sub_466B8(v38, v40);

  return v41;
}

unint64_t sub_284D70()
{
  result = qword_DFC000;
  if (!qword_DFC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DFBFF8, &unk_B07540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC000);
  }

  return result;
}

uint64_t sub_284DD4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_AB2D50();
      swift_allocObject();
      sub_AB2D20();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_AB3210();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_284E74(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, size_t *a10)
{
  v13 = a5;
  v18 = *a1;
  v17 = a1[1];
  v19 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v19 != 2)
    {
      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      sub_90090(a2, a3);
      sub_90090(a4, v13);
      sub_90090(a6, a7);
      sub_281D6C(&dataOut, &dataOut, a2, a3, a4, v13, a6, a7, &v59, a8, a9, a10);
      sub_466B8(a2, a3);
      sub_466B8(a4, v13);
      if (!v10)
      {
        v13 = v59;
      }

      goto LABEL_34;
    }

    sub_90090(a2, a3);
    sub_90090(a4, v13);
    sub_90090(a6, a7);
    sub_90090(a2, a3);
    sub_90090(a4, v13);
    sub_90090(a6, a7);
    sub_90090(v18, v17);
    sub_466B8(v18, v17);
    *&dataOut = v18;
    *(&dataOut + 1) = v17 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_B07530;
    sub_466B8(0, 0xC000000000000000);
    sub_AB31D0();
    v21 = *(&dataOut + 1);
    v22 = v13;
    v23 = *(dataOut + 16);
    v24 = *(dataOut + 24);
    v50 = dataOut;
    sub_90090(a2, a3);
    v55 = v22;
    sub_90090(a4, v22);
    v52 = a6;
    sub_90090(a6, a7);
    result = sub_AB2D10();
    if (!result)
    {
      __break(1u);
      goto LABEL_42;
    }

    v26 = result;
    v27 = sub_AB2D40();
    v28 = v23 - v27;
    if (!__OFSUB__(v23, v27))
    {
      v29 = __OFSUB__(v24, v23);
      v13 = v24 - v23;
      if (!v29)
      {
        v30 = sub_AB2D30();
        if (v30 >= v13)
        {
          v31 = v13;
        }

        else
        {
          v31 = v30;
        }

        v32 = (v26 + v28);
        v33 = v26 + v28 + v31;
        a6 = v52;
        sub_281D6C(v32, v33, a2, a3, a4, v55, v52, a7, &v59, a8, a9, a10);
        v34 = v21 | 0x8000000000000000;
        sub_466B8(v52, a7);
        sub_466B8(a4, v55);
        sub_466B8(a2, a3);
        sub_466B8(a2, a3);
        sub_466B8(a4, v55);
        if (!v10)
        {
          v13 = v59;
        }

        sub_466B8(v52, a7);
        sub_466B8(a2, a3);
        sub_466B8(a4, v55);
        *a1 = v50;
        a1[1] = v34;
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v19)
  {
    sub_90090(a2, a3);
    sub_90090(a4, a5);
    sub_90090(a6, a7);
    sub_90090(a2, a3);
    sub_90090(a4, a5);
    sub_90090(a6, a7);
    sub_466B8(v18, v17);
    *&dataOut = v18;
    WORD4(dataOut) = v17;
    BYTE10(dataOut) = BYTE2(v17);
    BYTE11(dataOut) = BYTE3(v17);
    BYTE12(dataOut) = BYTE4(v17);
    BYTE13(dataOut) = BYTE5(v17);
    BYTE14(dataOut) = BYTE6(v17);
    sub_281D6C(&dataOut, &dataOut + BYTE6(v17), a2, a3, a4, a5, a6, a7, &v59, a8, a9, a10);
    if (v10)
    {
      v20 = dataOut;
      v13 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      sub_466B8(a6, a7);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      *a1 = v20;
      a1[1] = v13;
    }

    else
    {
      v13 = v59;
      v38 = dataOut;
      v39 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      sub_466B8(a6, a7);
      sub_466B8(a2, a3);
      sub_466B8(a4, a5);
      *a1 = v38;
      a1[1] = v39;
    }

LABEL_34:
    sub_466B8(a6, a7);
    return v13;
  }

  v13 = v17 & 0x3FFFFFFFFFFFFFFFLL;
  sub_90090(a2, a3);
  sub_90090(a4, a5);
  sub_90090(a6, a7);
  sub_90090(a2, a3);
  v51 = a4;
  sub_90090(a4, a5);
  sub_90090(a6, a7);
  sub_90090(v18, v17);
  sub_466B8(v18, v17);
  *a1 = xmmword_B07530;
  sub_466B8(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v18;
  v37 = v18 >> 32;
  v53 = a6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v37 < v18)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (sub_AB2D10() && __OFSUB__(v18, sub_AB2D40()))
    {
LABEL_40:
      __break(1u);
    }

    sub_AB2D50();
    swift_allocObject();
    v36 = v18;
    v40 = sub_AB2CF0();

    v13 = v40;
    v37 = v18 >> 32;
  }

  v41 = v37 - v36;
  if (v37 < v36)
  {
    goto LABEL_36;
  }

  sub_90090(a2, a3);
  sub_90090(v51, a5);
  v49 = a7;
  sub_90090(a6, a7);

  result = sub_AB2D10();
  if (result)
  {
    v42 = result;
    v43 = sub_AB2D40();
    v44 = v36 - v43;
    if (!__OFSUB__(v36, v43))
    {
      v45 = sub_AB2D30();
      if (v45 >= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v45;
      }

      v47 = (v42 + v44);
      v48 = v42 + v44 + v46;
      a6 = v53;
      a7 = v49;
      sub_281D6C(v47, v48, a2, a3, v51, a5, v53, v49, &dataOut, a8, a9, a10);
      v57 = v13 | 0x4000000000000000;
      if (v10)
      {
        sub_466B8(v53, v49);
        sub_466B8(v51, a5);
        sub_466B8(a2, a3);

        sub_466B8(a2, a3);
        sub_466B8(v51, a5);
        sub_466B8(v53, v49);
        sub_466B8(a2, a3);
        sub_466B8(v51, a5);
        *a1 = v18;
        a1[1] = v57;
      }

      else
      {
        sub_466B8(v53, v49);
        sub_466B8(v51, a5);
        sub_466B8(a2, a3);

        sub_466B8(a2, a3);
        v13 = dataOut;
        sub_466B8(v51, a5);
        sub_466B8(v53, v49);
        sub_466B8(a2, a3);
        sub_466B8(v51, a5);
        *a1 = v18;
        a1[1] = v57;
      }

      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
  return result;
}

double sub_285778()
{
  result = -Int.seconds.getter(16);
  qword_DFC020 = *&result;
  return result;
}

uint64_t sub_2857E8(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_ABA330();

  return v2 & 1;
}

void (*sub_285838(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = _s17CellConfigurationVMa(0);
  v4[24] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(*(v5 - 8) + 64));
  }

  v4[25] = v6;
  v4[3] = v5;
  v4[4] = sub_28D000(&unk_DFC268, 255, _s17CellConfigurationVMa, &unk_B0768C);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  v8 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  sub_28D09C(v1 + v8, boxed_opaque_existential_0, _s17CellConfigurationVMa);
  return sub_285978;
}

void sub_285978(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 200);
  if (a2)
  {
    sub_E8BA0(*a1, (v2 + 5));
    sub_E8BA0((v2 + 5), (v2 + 10));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
    swift_dynamicCast();
    sub_285A70(v3);
    __swift_destroy_boxed_opaque_existential_0(v2 + 5);
  }

  else
  {
    sub_E8BA0(*a1, (v2 + 15));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
    swift_dynamicCast();
    sub_285A70(v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  free(v3);

  free(v2);
}

uint64_t sub_285A70(uint64_t a1)
{
  _s17CellConfigurationVMa(0);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  sub_28D09C(v1 + v7, v6, _s17CellConfigurationVMa);
  swift_beginAccess();
  sub_28F314(a1, v1 + v7, _s17CellConfigurationVMa);
  swift_endAccess();
  sub_28D09C(v1 + v7, v4, _s17CellConfigurationVMa);
  v8 = sub_28D104(v4, v6);
  sub_28D434(v4, _s17CellConfigurationVMa);
  if ((v8 & 1) == 0)
  {
    sub_286378();
  }

  sub_28D434(a1, _s17CellConfigurationVMa);
  return sub_28D434(v6, _s17CellConfigurationVMa);
}

void sub_285CDC(void *a1)
{
  v2 = OBJC_IVAR___MusicInterstellarContentView_pill;
  v3 = *&v1[OBJC_IVAR___MusicInterstellarContentView_pill];
  *&v1[OBJC_IVAR___MusicInterstellarContentView_pill] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v1 addSubview:v6];
  }

LABEL_4:
}

void *sub_285D88()
{
  v1 = OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton;
  v2 = *&v0[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton];
  }

  else
  {
    v4 = _s11MusicCoreUI12SymbolButtonC0A11ApplicationE014mediaPickerAddE0ACvgZ_0();
    [v4 sizeToFit];
    [v4 setHidden:1];
    [v4 setUserInteractionEnabled:0];

    [v0 addSubview:v4];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_285E40(id result)
{
  v2 = v1[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton];
  v1[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton] = result;
  if (v2 != (result & 1))
  {
    v3 = result;
    v4 = sub_285D88();
    v5 = v4;
    if (v3)
    {
      [v4 setSelected:v1[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected]];

      [*&v1[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton] setHidden:0];
    }

    else
    {
      [v4 setHidden:1];
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

char *sub_285F14(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR___MusicInterstellarContentView_separatorHidden] = 1;
  v6 = OBJC_IVAR___MusicInterstellarContentView_badgeView;
  v7 = objc_allocWithZone(type metadata accessor for BadgeView());
  v8 = UIFontTextStyleBody;
  *&v1[v6] = sub_4CABD8(_swiftEmptyArrayStorage, v8);
  v9 = OBJC_IVAR___MusicInterstellarContentView_titleLabel;
  *&v2[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR___MusicInterstellarContentView_subtitleLabel;
  *&v2[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR___MusicInterstellarContentView_separator;
  _s9SeparatorCMa();
  *&v2[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR___MusicInterstellarContentView_pill] = 0;
  *&v2[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton] = 0;
  v2[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected] = 0;
  v2[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton] = 0;
  sub_28D09C(a1, &v2[OBJC_IVAR___MusicInterstellarContentView_typedConfiguration], _s17CellConfigurationVMa);
  v12 = _s17CellConfigurationVMa(0);
  sub_28D09C(a1 + *(v12 + 28), v5, type metadata accessor for Artwork);
  v13 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  *&v2[OBJC_IVAR___MusicInterstellarContentView_artworkView] = Artwork.View.init(configuration:)(v5);
  v14 = _s11ContentViewCMa(0);
  v34.receiver = v2;
  v34.super_class = v14;
  v15 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR___MusicInterstellarContentView_artworkView];
  v17 = v15;
  [v17 addSubview:v16];
  v18 = OBJC_IVAR___MusicInterstellarContentView_titleLabel;
  [v17 addSubview:*&v17[OBJC_IVAR___MusicInterstellarContentView_titleLabel]];
  [v17 addSubview:*&v17[OBJC_IVAR___MusicInterstellarContentView_badgeView]];
  v19 = OBJC_IVAR___MusicInterstellarContentView_subtitleLabel;
  [v17 addSubview:*&v17[OBJC_IVAR___MusicInterstellarContentView_subtitleLabel]];
  v20 = OBJC_IVAR___MusicInterstellarContentView_separator;
  [v17 addSubview:*&v17[OBJC_IVAR___MusicInterstellarContentView_separator]];
  [*&v17[v20] setHidden:1];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  v21 = *&v17[v18];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 labelColor];
  [v23 setTextColor:v24];

  v25 = *&v17[v19];
  v26 = [v22 secondaryLabelColor];
  [v25 setTextColor:v26];

  v27 = *&v17[v18];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 preferredFontForTextStyle:v8];
  [v29 setFont:v30];

  v31 = *&v17[v19];
  v32 = [v28 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v31 setFont:v32];

  [*&v17[v18] setAdjustsFontForContentSizeCategory:1];
  [*&v17[v19] setAdjustsFontForContentSizeCategory:1];
  sub_286378();
  sub_28D434(a1, _s17CellConfigurationVMa);

  return v17;
}

uint64_t sub_286378()
{
  v1 = v0;
  v2 = _s17CellConfigurationVMa(0);
  __chkstk_darwin();
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  sub_28D09C(v1 + v5, v4, _s17CellConfigurationVMa);
  v6 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_artworkView);
  v7 = *(v2 + 28);
  v27[3] = type metadata accessor for Artwork(0);
  v27[4] = sub_28D000(&unk_DF0C60, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  sub_28D09C(v4 + v7, boxed_opaque_existential_0, type metadata accessor for Artwork);
  v9 = type metadata accessor for Artwork.View(0);
  v10 = sub_28D000(&qword_DFC328, 255, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  v11 = v6;
  MusicUIContentView.configuration.setter(v27, v9, v10, v12);

  v13 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_titleLabel);
  if (v4[2])
  {
    v14 = sub_AB9260();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:v14];

  v15 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_subtitleLabel);
  if (v4[4])
  {
    v16 = sub_AB9260();
  }

  else
  {
    v16 = 0;
  }

  [v15 setText:v16];

  if (*(v4 + *(v2 + 32)))
  {
    v17 = &off_CEFA98;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v18 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_badgeView);
  v19 = sub_2F3AA8(v17);

  v20 = *&v18[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
  *&v18[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v19;
  sub_4CAE8C(v20);

  v21 = *v4;
  if (*v4)
  {
    v22 = objc_allocWithZone(SLAttributionView);
    v23 = v21;
    v24 = [v22 initWithHighlight:v23];
    v25 = v24;
    sub_285CDC(v24);
  }

  else
  {
    sub_285CDC(0);
  }

  return sub_28D434(v4, _s17CellConfigurationVMa);
}

void sub_28676C()
{
  v1 = v0;
  v81.receiver = v0;
  v81.super_class = _s11ContentViewCMa(0);
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 layoutMargins];
  v3 = v2;
  v5 = v4;
  [v0 effectiveUserInterfaceLayoutDirection];
  v78 = [v0 traitCollection];
  [v0 bounds];
  v10 = UIEdgeInsetsInsetRect(v6, v7, v8, v9, v3, v5);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (qword_DE6A30 != -1)
  {
    swift_once();
  }

  v17 = *&qword_DFC010;
  v18 = *&v0[OBJC_IVAR___MusicInterstellarContentView_artworkView];
  sub_ABA460(v5, v3, v17, v17);
  v80 = v12;
  sub_ABA490();
  [v18 setFrame:?];

  if (qword_DE6A38 != -1)
  {
    swift_once();
  }

  v19 = v17 + *&qword_DFC018;
  v20 = v14 - (v17 + *&qword_DFC018);
  v77 = OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton;
  v21 = v20;
  if (v1[OBJC_IVAR___MusicInterstellarContentView_wantsMediaPickerAddButton] == 1)
  {
    v22 = sub_285D88();
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v82.origin.x = v24;
    v82.origin.y = v26;
    v82.size.width = v28;
    v82.size.height = v30;
    v21 = v20 - CGRectGetWidth(v82);
  }

  v31 = v10 + v19;
  v32 = &v1[OBJC_IVAR___MusicInterstellarContentView_typedConfiguration];
  swift_beginAccess();
  v75 = _s17CellConfigurationVMa(0);
  v76 = v32;
  if (v32[*(v75 + 32)])
  {
    [*&v1[OBJC_IVAR___MusicInterstellarContentView_badgeView] sizeThatFits:{v21, v16}];
    v34 = v20 - v33;
  }

  else
  {
    v34 = v20;
  }

  v79 = *&v1[OBJC_IVAR___MusicInterstellarContentView_titleLabel];
  [v79 sizeThatFits:{v34, v16}];
  v83.origin.x = v31;
  v83.origin.y = v80;
  v83.size.width = v34;
  v83.size.height = v16;
  CGRectGetWidth(v83);
  v35 = *&v1[OBJC_IVAR___MusicInterstellarContentView_subtitleLabel];
  [v35 sizeThatFits:{v21, v16}];
  v36 = OBJC_IVAR___MusicInterstellarContentView_pill;
  [*&v1[OBJC_IVAR___MusicInterstellarContentView_pill] prepareLayoutWithMaxWidth:v20];
  v37 = *&v1[v36];
  if (v37)
  {
    [v37 frame];
  }

  v38 = objc_opt_self();
  v39 = [v38 defaultMetrics];
  v40 = sub_ABA310();
  __chkstk_darwin();
  sub_AB9EF0();

  v41 = [v38 defaultMetrics];
  v42 = sub_ABA310();
  __chkstk_darwin();
  sub_AB9EF0();
  v44 = v43;

  [v79 _baselineOffsetFromBottom];
  [v35 _firstBaselineOffsetFromTop];
  v84.origin.x = v31;
  v84.origin.y = v80;
  v84.size.width = v20;
  v84.size.height = v16;
  CGRectGetMidY(v84);
  v85.origin.x = v31;
  v85.origin.y = v80;
  v85.size.width = v34;
  v85.size.height = v16;
  CGRectGetMinX(v85);
  sub_ABA490();
  [v79 setFrame:?];
  if (v76[*(v75 + 32)] == 1)
  {
    v45 = *&v1[OBJC_IVAR___MusicInterstellarContentView_badgeView];
    v86.origin.x = v31;
    v86.origin.y = v80;
    v86.size.width = v34;
    v86.size.height = v16;
    CGRectGetMinX(v86);
    sub_ABA490();
    [v45 setFrame:?];
  }

  [v79 frame];
  CGRectGetMaxY(v87);
  [v79 _baselineOffsetFromBottom];
  [v35 _firstBaselineOffsetFromTop];
  v88.origin.x = v31;
  v88.origin.y = v80;
  v88.size.width = v20;
  v88.size.height = v16;
  CGRectGetMinX(v88);
  sub_ABA490();
  [v35 setFrame:?];
  [v35 frame];
  MaxY = CGRectGetMaxY(v89);
  [v35 _baselineOffsetFromBottom];
  v48 = *&v1[v36];
  if (v48)
  {
    v49 = v44 + MaxY - v47;
    v50 = v48;
    v90.origin.x = v31;
    v90.origin.y = v80;
    v90.size.width = v20;
    v90.size.height = v16;
    MinX = CGRectGetMinX(v90);
    [v50 frame];
    [v50 setFrame:{MinX, v49}];

    v52 = *&v1[v36];
    if (v52)
    {
      [v52 frame];
      v53 = *&v1[v36];
      if (v53)
      {
        v54 = v53;
        sub_ABA490();
        [v54 setFrame:?];
      }
    }
  }

  if (v1[v77] == 1)
  {
    [v79 frame];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [v35 frame];
    v98.origin.x = v63;
    v98.origin.y = v64;
    v98.size.width = v65;
    v98.size.height = v66;
    v91.origin.x = v56;
    v91.origin.y = v58;
    v91.size.width = v60;
    v91.size.height = v62;
    v92 = CGRectUnion(v91, v98);
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    v71 = sub_285D88();
    v93.origin.x = x;
    v93.origin.y = y;
    v93.size.width = width;
    v93.size.height = height;
    CGRectGetMidY(v93);
    [v35 _baselineOffsetFromBottom];
    [v71 center];
    [v71 setCenter:?];

    v72 = OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton;
    [*&v1[OBJC_IVAR___MusicInterstellarContentView____lazy_storage___mediaPickerAddButton] bounds];
    v73 = *&v1[v72];
    [v1 bounds];
    CGRectGetMaxX(v94);
    [*&v1[v72] frame];
    CGRectGetMinY(v95);
    sub_ABA490();
    [v73 setFrame:?];
  }

  v74 = *&v1[OBJC_IVAR___MusicInterstellarContentView_separator];
  [v74 intrinsicContentSize];
  [v1 bounds];
  CGRectGetMaxY(v96);
  v97.origin.x = v31;
  v97.origin.y = v80;
  v97.size.width = v20;
  v97.size.height = v16;
  CGRectGetWidth(v97);
  sub_ABA490();
  [v74 setFrame:?];
}

uint64_t sub_287240@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = _s17CellConfigurationVMa(0);
  a1[4] = sub_28D000(&unk_DFC268, 255, _s17CellConfigurationVMa, &unk_B0768C);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v4 = OBJC_IVAR___MusicInterstellarContentView_typedConfiguration;
  swift_beginAccess();
  return sub_28D09C(v1 + v4, boxed_opaque_existential_0, _s17CellConfigurationVMa);
}

uint64_t sub_287300(void *a1)
{
  _s17CellConfigurationVMa(0);
  __chkstk_darwin();
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_E8BA0(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  swift_dynamicCast();
  sub_285A70(v3);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_2873C4(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_285838(v2);
  return sub_A8F90;
}

void sub_287448(char a1)
{
  v2 = OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected;
  v3 = *(v1 + OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected);
  *(v1 + OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected) = a1;
  if (v3 != (a1 & 1))
  {
    v4 = sub_285D88();
    [v4 setSelected:*(v1 + v2)];
  }
}

uint64_t sub_2874C4(void **a1)
{
  sub_1253F8(*a1, a1[1]);
  *a1 = 0;
  a1[1] = 0;
  v2 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v19 = v2[5];
  v20 = v2[4];
  v7 = type metadata accessor for Artwork(0);
  v8 = a1 + *(v7 + 32);
  v17 = *(v8 + 1);
  v18 = *v8;
  v9 = *(v8 + 3);
  v16 = *(v8 + 2);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v4;
  sub_2F1C8(v18, v17, v16, v9);
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v20;
  *(v8 + 5) = v19;
  v14 = Artwork.Decoration.grid.unsafeMutableAddressor();
  return sub_28F314(v14, a1 + *(v7 + 28), type metadata accessor for Artwork.Decoration);
}

char *sub_2875B4(uint64_t a1)
{
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28D09C(v1, v3, _s17CellConfigurationVMa);
  v4 = objc_allocWithZone(_s11ContentViewCMa(0));
  v5 = sub_285F14(v3);
  sub_28D000(&qword_DFC278, 255, _s11ContentViewCMa, &unk_B07748);
  return v5;
}

id sub_2876C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC320, &qword_AF7E08);
  __chkstk_darwin();
  v1 = &v11[-v0];
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = sub_ABA8C0();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(UIButton) init];
  v7 = UIView.forAutolayout.getter();

  sub_ABA8A0();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_ABA8B0();
  (*(v3 + 16))(v1, v5, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_ABA8F0();
  v8 = [v7 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontForContentSizeCategory:1];
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_287988(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC310, &unk_B077F0);
  __chkstk_darwin();
  v3 = &v13[-1] - v2;
  v4 = sub_AB5070();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_AB4C60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC260, &unk_AFD130);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v9(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
    sub_AB5050();
    v13[3] = v4;
    v13[4] = &protocol witness table for UIListContentConfiguration;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
    (*(v5 + 16))(boxed_opaque_existential_0, v7, v4);
    sub_AB4C70();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v9(v3, 1, 1, v4);

    return sub_12E1C(v3, &unk_DFC310, &unk_B077F0);
  }
}

char *sub_287BE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_AB5070();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton;
  *&v4[v14] = sub_2876C4();
  v15 = OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator;
  _s9SeparatorCMa();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = &v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_isSeeAllButtonHidden] = 0;
  sub_AB5030();
  sub_AB5020();
  v17 = sub_AB4F70();
  v18 = &v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView];
  *v18 = v17;
  v18[1] = v19;
  [v17 addSubview:*&v5[v14]];
  v20 = _s10HeaderViewCMa();
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v22 = *&v21[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView];
  v23 = v21;
  [v23 addSubview:v22];
  [v23 addSubview:*&v23[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator]];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_13C80(0, &qword_DF13D0, UIButton_ptr);
  ControlEventHandling<>.on(_:handler:)(64, sub_28F30C, v24, v25);
  (*(v11 + 8))(v13, v10);

  return v23;
}

void sub_287EC4(uint64_t a1)
{
  v2 = v1;
  v22.receiver = v1;
  v22.super_class = _s10HeaderViewCMa();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v3 = *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_contentView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator];
  [v2 bounds];
  v6 = v5;
  [v2 bounds];
  v8 = v7;
  [v2 bounds];
  v10 = v9;
  [v4 intrinsicContentSize];
  [v4 setFrame:{v6, v8, v10, v11}];
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF7C50;
  v14 = *&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton];
  v15 = [v14 trailingAnchor];
  v16 = [v3 trailingAnchor];
  if (qword_DE6A40 != -1)
  {
    swift_once();
  }

  v17 = [v15 constraintEqualToAnchor:v16 constant:*&qword_DFC020];

  *(v13 + 32) = v17;
  v18 = [v14 centerYAnchor];
  v19 = [v3 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v13 + 40) = v20;
  sub_13C80(0, &qword_DF7920, NSLayoutConstraint_ptr);
  isa = sub_AB9740().super.isa;

  [v12 activateConstraints:isa];
}

void sub_288194(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler + 8];
      sub_307CC(*&Strong[OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler], v5);

      v4();
      sub_17654(v4, v5);
    }

    else
    {
    }
  }
}

id sub_288244(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_2882EC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView] = 0;
  v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context] = 0;
  v3 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v1[v3] = swift_allocObject();
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController] = 0;
  *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker] = 0;
  v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_verticalStackItemPrefersTopHairline] = 1;
  v7.receiver = v1;
  v7.super_class = _s14ViewControllerCMa();
  v4 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  v5 = *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel];
  *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel] = a1;

  return v4;
}

id sub_288418()
{
  v0 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 setScrollDirection:0];
  qword_E713E0 = v0;
  return result;
}

id sub_288468()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionViewLayout);
  }

  else
  {
    v4 = sub_28D24C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2884CC()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = sub_288468();
    v5 = [objc_allocWithZone(UICollectionView) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_288614()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D8, &qword_B077D0);
  v50 = *(v1 - 8);
  v51 = v1;
  __chkstk_darwin();
  v48 = v2;
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v43 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC2E0, &qword_B077D8);
  v45 = *(v52 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin();
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v43 - v5;
  v7 = _s14ViewControllerCMa();
  v55.receiver = v0;
  v55.super_class = v7;
  objc_msgSendSuper2(&v55, "viewDidLoad");
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    v10 = v0;
    v11 = sub_2884CC();
    [v9 addSubview:v11];

    v12 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView;
    v13 = *&v10[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView];
    v43 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView;
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    swift_weakInit();
    strcpy(v54, "SharedWithYou");
    v54[7] = -4864;
    swift_weakAssign();
    sub_125340(v54, v53);
    v17 = swift_allocObject();
    sub_28F058(v53, v17 + 16);
    sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
    sub_ABA030();
    sub_AB92A0();
    v18 = swift_allocObject();
    v44 = v6;
    *(v18 + 16) = v10;
    _s10HeaderViewCMa();
    v19 = v10;
    v20 = v47;
    sub_ABA040();
    v21 = *&v10[v12];
    v22 = v45;
    v23 = v46;
    v24 = v6;
    v25 = v52;
    (*(v45 + 16))(v46, v24, v52);
    v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v27 = swift_allocObject();
    (*(v22 + 32))(v27 + v26, v23, v25);
    v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2F0, &qword_B077E0));
    v29 = v21;
    v30 = sub_AB5200();
    v31 = v49;
    v32 = v50;
    v33 = v51;
    (*(v50 + 16))(v49, v20, v51);
    v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v35 = swift_allocObject();
    (*(v32 + 32))(v35 + v34, v31, v33);
    sub_AB5210();
    v36 = *&v19[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
    *&v19[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource] = v30;
    v37 = v30;

    [*&v10[v43] setDelegate:v19];
    v38 = sub_28C1E0();

    (*(v32 + 8))(v20, v33);
    (*(v22 + 8))(v44, v52);
    sub_1253A4(v54);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = (v38 + *(*v38 + 128));
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    *v40 = sub_28F2C4;
    v40[1] = v39;

    sub_17654(v41, v42);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_288BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFC300, &qword_AFEFF0);
  __chkstk_darwin();
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v39[-1] - v8;
  v10 = _s17CellConfigurationVMa(0);
  __chkstk_darwin();
  v12 = (&v39[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  if (*(a3 + 8))
  {
    sub_25FAA8(v42);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
  }

  v14 = (v12 + *(v10 + 28));
  static Artwork.with(_:)(sub_2874C4, v14);
  sub_12E1C((v14 + 2), &unk_DF0CA0, &unk_AFEFA0);
  sub_125340(a4, (v14 + 2));
  sub_15F84(v42, v39, &unk_DFC288, &qword_B07790);
  v15 = v40;
  if (v40)
  {
    v16 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v17 = (*(v16 + 24))(v15, v16);
    v15 = v18;
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_12E1C(v39, &unk_DFC288, &qword_B07790);
    v17 = 0;
  }

  sub_1253F8(*v14, v14[1]);
  *v14 = v17;
  v14[1] = v15;
  sub_15F84(v42, v39, &unk_DFC288, &qword_B07790);
  v19 = v40;
  if (v40)
  {
    v20 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v21 = (*(v20 + 8))(v19, v20);
    v19 = v22;
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_12E1C(v39, &unk_DFC288, &qword_B07790);
    v21 = 0;
  }

  v12[1] = v21;
  v12[2] = v19;
  sub_15F84(v42, v39, &unk_DFC288, &qword_B07790);
  v23 = v40;
  if (v40)
  {
    v24 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v25 = (*(v24 + 16))(v23, v24);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_12E1C(v39, &unk_DFC288, &qword_B07790);
    v25 = 0;
  }

  v12[3] = v25;
  v12[4] = v23;
  *v12 = v13;
  sub_15F84(v42, v39, &unk_DFC288, &qword_B07790);
  v27 = v40;
  if (v40)
  {
    v28 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v29 = v13;
    v30 = *(v28 + 32);
    v31 = v29;
    v32 = v30(v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v33 = v13;
    sub_12E1C(v39, &unk_DFC288, &qword_B07790);
    v32 = 0;
  }

  *(v12 + *(v10 + 32)) = v32 & 1;
  sub_AB4ED0();
  v34 = sub_AB4F50();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v9, 0, 1, v34);
  sub_ABA2D0();
  sub_ABA2C0();
  if ((*(v35 + 48))(v7, 1, v34))
  {
    sub_15F84(v7, v9, &unk_DFC300, &qword_AFEFF0);
    sub_ABA2D0();
    sub_12E1C(v7, &unk_DFC300, &qword_AFEFF0);
  }

  else
  {
    sub_AB4EC0();
    sub_ABA2D0();
  }

  v40 = v10;
  v41 = sub_28D000(&unk_DFC268, 255, _s17CellConfigurationVMa, &unk_B0768C);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  sub_28D09C(v12, boxed_opaque_existential_0, _s17CellConfigurationVMa);
  sub_ABA2B0();
  sub_12E1C(v42, &unk_DFC288, &qword_B07790);
  return sub_28D434(v12, _s17CellConfigurationVMa);
}

double sub_289134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_28C1E0();
  swift_beginAccess();
  v8 = v7[2];

  v9 = *&v8[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

  v10 = [v9 displayName];
  v11 = sub_AB92A0();
  v13 = v12;

  sub_287988(v11, v13);
  [*(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_separator) setHidden:(*(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_verticalStackItemPrefersTopHairline) & 1) == 0];
  v14 = *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController);
  swift_beginAccess();
  *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_isSeeAllButtonHidden) = *(*(v14 + 16) + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_isSeeAllButtonHidden);
  [*(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_seeAllButton) setHidden:?];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = (a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler);
  v17 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar10HeaderView_buttonSelectionHandler);
  v18 = v16[1];
  *v16 = sub_28F2CC;
  v16[1] = v15;

  sub_17654(v17, v18);

  return result;
}

void sub_2892E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = objc_allocWithZone(_s14ViewControllerCMa());
    v4 = sub_2882EC(0);
    v5 = sub_28C1E0();
    swift_beginAccess();
    v6 = v5[2];

    v7 = *&v6[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

    v8 = [v7 displayName];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      sub_AB92A0();
      v9 = sub_AB9260();
    }

    [v4 setTitle:v9];

    v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context] = 1;
    v10 = [v4 navigationItem];

    [v10 setLargeTitleDisplayMode:2];
    v11 = [v2 navigationController];
    if (v11)
    {
      v12 = v11;
      [v11 pushViewController:v4 animated:1];
    }
  }
}

uint64_t sub_289494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v6 = v4;
  v7 = v5;
  v8 = sub_ABA050();

  return v8;
}

void sub_289538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2F8, &qword_B077E8);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8, qword_B077B8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    RequestResponse.Revision.content.getter(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_12E1C(v4, &qword_DFC2F8, &qword_B077E8);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v11 = *&v10[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
      if (v11)
      {
        v12 = v11;
        sub_AB5240();
        (*(v6 + 8))(v8, v5);

        v10 = v12;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
      }
    }
  }
}

void sub_289784(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = _s14ViewControllerCMa();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = sub_2884CC();
  v5 = [v4 collectionViewLayout];

  [v5 invalidateLayout];
  v6 = [v2 traitCollection];
  LOBYTE(v5) = UITraitCollection.isMediaPicker.getter(v6);

  if (v5)
  {
    v7 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController;
    if (!*&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController])
    {
      v8 = [v2 navigationController];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for MediaPickerNavigationController(0);
        if (swift_dynamicCastClass())
        {
          v10 = *&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___collectionView];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2D0, &qword_B046D0);
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v11 + 24) = 0;
          *(v11 + 32) = 0;
          swift_unknownObjectWeakAssign();
          v12 = v10;

          v13 = *(v11 + 24);
          *(v11 + 24) = v10;

          *&v2[v7] = v11;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_289974(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = sub_AB3430();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin();
  v31[1] = v5;
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v31 - v6;
  v7 = _s14ViewControllerCMa();
  v38.receiver = v1;
  v38.super_class = v7;
  objc_msgSendSuper2(&v38, "viewWillAppear:", v3 & 1);
  if (qword_DE6C48 != -1)
  {
LABEL_18:
    swift_once();
  }

  v37 = v3;
  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E71878);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F10();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "ViewWillAppear", v11, 2u);
  }

  sub_28C1E0();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);

  v36 = v2;
  v12 = sub_28C2C8();
  *(v12 + 145) = 1;
  v13 = v12[4];
  v3 = *(v13 + 16);

  if (v3)
  {
    v14 = 0;
    v2 = (v13 + 40);
    do
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v17 = *v2;
      v18 = qword_DE6D68;
      swift_unknownObjectRetain();
      if (v18 == -1)
      {
        if (byte_E71A90)
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_once();
        if (byte_E71A90)
        {
LABEL_11:
          v15 = 0;
          goto LABEL_7;
        }
      }

      v15 = *(v12 + 145);
LABEL_7:
      ++v14;
      ObjectType = swift_getObjectType();
      (*(v17 + 16))(v15, ObjectType, v17);
      swift_unknownObjectRelease();
      v2 += 2;
    }

    while (v3 != v14);
  }

  if (qword_DE6D68 == -1)
  {
    if (byte_E71A90)
    {
LABEL_16:

      v20 = v37;
      v21 = v36;
      goto LABEL_24;
    }
  }

  else
  {
    swift_once();
    if (byte_E71A90)
    {
      goto LABEL_16;
    }
  }

  v20 = v37;
  v21 = v36;
  if (*(v12 + 145) & 1) != 0 && (sub_472A68(v19))
  {
    v22 = v35;
    sub_AB3420();
    v23 = swift_allocObject();
    swift_weakInit();
    v25 = v32;
    v24 = v33;
    v26 = v34;
    (*(v33 + 16))(v32, v22, v34);
    v27 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    (*(v24 + 32))(v28 + v27, v25, v26);

    sub_48C6A0(sub_28EFA4, v28);
    (*(v24 + 8))(v35, v26);
  }

LABEL_24:
  v29 = sub_2884CC();
  UICollectionView.clearSelection(using:animated:)([v21 transitionCoordinator], v20 & 1);

  return swift_unknownObjectRelease();
}

void sub_289E34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v33 = &v32 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v3 = &v32 - v2;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  sub_28C2C8();
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_AB3420();
  sub_15F84(v36, v35, &qword_DF2BD0, &unk_AFDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
  v8 = sub_AB3820();
  v9 = swift_dynamicCast();
  (*(*(v8 - 8) + 56))(v3, v9 ^ 1u, 1, v8);
  v10 = sub_2CA81C(2u, v7, v3);
  (*(v5 + 8))(v7, v4);
  sub_12E1C(v36, &qword_DF2BD0, &unk_AFDC00);
  sub_12E1C(v3, &unk_DE8E20, &qword_AF7990);

  if (!v10)
  {
    goto LABEL_26;
  }

  if (!(v10 >> 62))
  {
    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      v11 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_19:
      v24 = v11;
      v15 = _swiftEmptyArrayStorage;
LABEL_20:
      sub_12B2FC();
      v26 = v33;
      if (v27)
      {
        v28 = v25;
        ObjectType = swift_getObjectType();
        (*(v28 + 24))(ObjectType, v28);
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = type metadata accessor for MetricsPageProperties(0);
        (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
      }

      (*(&stru_68.flags + (swift_isaMask & *v11)))(v15, v26, 0, 0, 0, 0, 0);
      sub_12E1C(v26, &unk_DF1330, &qword_AF9120);
    }

LABEL_25:

LABEL_26:

    sub_2E4810(v31);

    return;
  }

  if (!sub_ABB060())
  {
    goto LABEL_25;
  }

  v11 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v12 = sub_ABB060();
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_5:
  *&v36[0] = _swiftEmptyArrayStorage;
  v13 = v11;
  sub_6D410(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = *&v36[0];
    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = *(sub_35FC58(v16, v10, v14) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

        swift_unknownObjectRelease();
        *&v36[0] = v15;
        v19 = v15[2];
        v18 = v15[3];
        if (v19 >= v18 >> 1)
        {
          sub_6D410((v18 > 1), v19 + 1, 1);
          v15 = *&v36[0];
        }

        ++v16;
        v15[2] = v19 + 1;
        v15[v19 + 4] = v17;
      }

      while (v12 != v16);
    }

    else
    {
      v20 = (v10 + 32);
      do
      {
        v21 = *(*v20 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
        *&v36[0] = v15;
        v23 = v15[2];
        v22 = v15[3];

        if (v23 >= v22 >> 1)
        {
          sub_6D410((v22 > 1), v23 + 1, 1);
          v15 = *&v36[0];
        }

        v15[2] = v23 + 1;
        v15[v23 + 4] = v21;
        ++v20;
        --v12;
      }

      while (v12);
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_28A3F0(void *a1, id a2, unint64_t a3)
{
  v4 = v3;
  v36 = [a2 contentView];
  _s11ContentViewCMa(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    [a1 frame];
    Width = CGRectGetWidth(v42);
    v11 = [v3 traitCollection];
    v12 = UITraitCollection.isAccessibilitySizeCategory.getter();

    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, v12 & 1, &v40, Width);
    v13 = v36;
    [v9 layoutMargins];
    [v9 setLayoutMargins:?];

    v14 = sub_AB37B0();
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_AB37B0();
      v17 = [a1 numberOfItemsInSection:sub_AB37F0()];
      if (!__OFSUB__(v17, 1))
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * v15 + 0x2AAAAAAAAAAAAAAALL < 0x5555555555555555;
        if (v16 == v17 - 1)
        {
          v18 = 1;
        }

        if (v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context])
        {
          v19 = v16 == (v17 - 1);
        }

        else
        {
          v19 = v18;
        }

        v9[OBJC_IVAR___MusicInterstellarContentView_separatorHidden] = v19;
        [*&v9[OBJC_IVAR___MusicInterstellarContentView_separator] setHidden:v36];
        v20 = *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
        if (!v20)
        {
          goto LABEL_24;
        }

        v21 = v20;
        sub_AB5230();

        v22 = v38;
        if (!v38)
        {
          goto LABEL_24;
        }

        v23 = sub_28C1E0();
        swift_beginAccess();
        v24 = v23[2];

        v25 = *&v24[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

        [v25 feedbackForHighlight:v38 withType:0 completionBlock:0];
        if (v39)
        {
          v37 = v25;
          v26 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController;
          if (*&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController])
          {
            v27 = v39;

            v28 = sub_2FBF94(v27);
          }

          else
          {
            v29 = v39;
            v28 = 0;
          }

          sub_285E40((v28 & 1));
          if (*&v4[v26])
          {

            v31 = sub_304104(v39, v30);

            v32 = &v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v33 = v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected] = v31;
            if (v31 != v33)
            {
LABEL_20:
              v34 = sub_285D88();
              [v34 setSelected:*v32];

LABEL_24:
              sub_28C2C8();
              sub_466840(a2, a3);

              return;
            }
          }

          else
          {
            v32 = &v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v35 = v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected];
            v9[OBJC_IVAR___MusicInterstellarContentView_isMediaPickerAddButtonSelected] = 0;
            if (v35)
            {
              goto LABEL_20;
            }
          }

          v22 = v25;
          v25 = v39;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_28ABF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_28ACE4(a2);
  }
}

void sub_28ACE4(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v84 - v5;
  __chkstk_darwin();
  v8 = &v84 - v7;
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v84 - v13;
  v15 = *&v1[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  sub_AB5230();

  v91 = v98;
  if (!v98)
  {
    return;
  }

  if (!v99)
  {
    v29 = &v105;
LABEL_49:

    return;
  }

  v17 = *&v2[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_mediaPickerAddController];
  v90 = v10;
  v89 = v99;
  if (!v17)
  {
    v30 = v99;
    v31 = v99;
    v32 = v91;
    goto LABEL_18;
  }

  v86 = v99;

  v18 = v17;
  v19 = [v2 traitCollection];
  v20 = UITraitCollection.mediaPickerConfiguration.getter();
  if (!v20)
  {

LABEL_16:
    v32 = v91;
LABEL_17:
    v30 = v89;
LABEL_18:
    v33 = sub_28C1E0();
    swift_beginAccess();
    v34 = v33[2];

    v35 = *&v34[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];

    v88 = v35;
    [v35 feedbackForHighlight:v32 withType:1 completionBlock:0];
    (*(v90 + 56))(v6, 1, 1, v9);
    v36 = [v30 innermostModelObject];
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      if ([v37 hasVideo])
      {
LABEL_20:
        v39 = [objc_opt_self() deviceMediaLibrary];
        sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v39, v4);

        sub_267C14(v4, v6);
LABEL_35:
        v49 = v90 + 48;
        v50 = *(v90 + 48);
        if (!v50(v6, 1, v9))
        {
          v90 = v49;
          v87 = v2;
          v51 = UIViewController.playActivityInformation.getter();
          v53 = v52;
          v86 = v54;
          v56 = v55;
          v58 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v51, v52, v54, v55, v57);
          v59 = HIBYTE(v53) & 0xF;
          if ((v53 & 0x2000000000000000) == 0)
          {
            v59 = v51 & 0xFFFFFFFFFFFFLL;
          }

          v85 = v36;
          if (v59)
          {

            v60 = sub_AB9260();
          }

          else
          {
            v60 = 0;
          }

          [v58 setPlayActivityFeatureName:v60];

          v61 = v56;
          if (v56 >> 60 == 15)
          {
            isa = 0;
            v63 = v86;
          }

          else
          {
            v63 = v86;
            isa = sub_AB3250().super.isa;
          }

          [v58 setPlayActivityRecommendationData:isa];

          sub_466A4(v63, v61);
          v32 = v91;
          v36 = v85;
        }

        if (!v50(v6, 1, v9))
        {
          sub_28D09C(v6, v12, type metadata accessor for PlaybackIntentDescriptor);
          sub_37D3DC(0);
          sub_28D434(v12, type metadata accessor for PlaybackIntentDescriptor);
        }

        sub_28B85C(v36, 0x1Fu);
        goto LABEL_48;
      }

      v43 = [v38 album];
      if (!v43)
      {
        goto LABEL_35;
      }

      v44 = v43;
      sub_28E278(v43, v38, v32, v2, &v92);
      if (!v92)
      {

        goto LABEL_35;
      }

      v98 = v92;
      v100 = v94;
      v101 = v95;
      v102 = v96;
      v103 = v97;
      v99 = v93;
      v45 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
      v46 = sub_2D72DC(&v98);
    }

    else
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        sub_28E278(v40, 0, v32, v2, &v92);
        if (!v92)
        {
          goto LABEL_35;
        }

        v98 = v92;
        v100 = v94;
        v101 = v95;
        v102 = v96;
        v103 = v97;
        v99 = v93;
        v41 = objc_allocWithZone(type metadata accessor for AlbumDetailViewController(0));
        v42 = sub_2D72DC(&v98);
      }

      else
      {
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (!v47)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            goto LABEL_35;
          }

          goto LABEL_20;
        }

        sub_28E278(v47, 0, v32, v2, &v92);
        if (!v92)
        {
          goto LABEL_35;
        }

        v98 = v92;
        v100 = v94;
        v101 = v95;
        v102 = v96;
        v103 = v97;
        v99 = v93;
        v48 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
        v42 = sub_39891C(&v98, 0);
      }

      v46 = v42;
    }

    sub_728FC(v46, 0, 1, v2);
    sub_28B85C(v36, 0x1Cu);

    v36 = v46;
LABEL_48:

    sub_12E1C(v6, &unk_DEA510, "\b]\r");
    v64 = v89;

    v29 = &v104;
    goto LABEL_49;
  }

  v87 = v20;
  v88 = v18;

  v21 = sub_2884CC();
  v22 = sub_AB3770().super.isa;
  v23 = [v21 cellForItemAtIndexPath:v22];

  if (!v23 || (v24 = [v23 contentView], v23, !v24))
  {
LABEL_15:

    goto LABEL_16;
  }

  _s11ContentViewCMa(0);
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_16;
  }

  v84 = v25;
  v85 = v24;
  v26 = v86;
  v27 = [v86 innermostModelObject];
  v28 = [objc_opt_self() deviceMediaLibrary];
  sub_264648(static MPMediaLibraryFilteringOptions.none.getter, 0, v28, v8);

  if ((*(v90 + 48))(v8, 1, v9) == 1)
  {

    sub_12E1C(v8, &unk_DEA510, "\b]\r");
    goto LABEL_15;
  }

  sub_28E998(v8, v14, type metadata accessor for PlaybackIntentDescriptor);
  v65 = [v26 pickableObjectFor:{objc_msgSend(v87, "selectionMode")}];
  if (!v65)
  {
    v66 = v85;
    v32 = v91;
LABEL_59:

    sub_28D434(v14, type metadata accessor for PlaybackIntentDescriptor);

    goto LABEL_17;
  }

  v66 = v65;
  v67 = [v65 musicTypeIdentifier];
  v32 = v91;
  if (!v67)
  {

    goto LABEL_59;
  }

  v68 = v67;

  v69 = v2;
  v70 = UIViewController.playActivityInformation.getter();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = PlaybackIntentDescriptor.IntentType.underlyingIntent.getter(v70, v71, v73, v75, v77);
  v79 = HIBYTE(v72) & 0xF;
  if ((v72 & 0x2000000000000000) == 0)
  {
    v79 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {

    v80 = sub_AB9260();
  }

  else
  {
    v80 = 0;
  }

  [v78 setPlayActivityFeatureName:v80];

  if (v76 >> 60 == 15)
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_AB3250().super.isa;
  }

  [v78 setPlayActivityRecommendationData:v81];

  sub_466A4(v74, v76);
  v82 = v85;
  v83 = v86;
  sub_3B97D0(v14, v86, v84, &off_D07518);

  sub_28D434(v14, type metadata accessor for PlaybackIntentDescriptor);
}

uint64_t sub_28B85C(void *a1, unsigned int a2)
{
  v75 = a2;
  v4 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v77 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9300();
  __chkstk_darwin();
  v72[1] = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v78 = v72 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v9 = v72 - v8;
  v10 = type metadata accessor for MetricsPageProperties(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v74 = (v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v81 = v72 - v13;
  v79 = MPModelObject.bestIdentifier(for:)(0, 2u);
  v80 = v2;
  v15 = v14;
  sub_12B2FC();
  v76 = v4;
  if (v17)
  {
    v18 = v16;
    ObjectType = swift_getObjectType();
    (*(v18 + 24))(ObjectType, v18);
    swift_unknownObjectRelease();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_28E998(v9, v81, type metadata accessor for MetricsPageProperties);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  v20 = sub_AB31C0();
  v21 = v78;
  (*(*(v20 - 8) + 56))(v78, 1, 1, v20);
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x497972617262694CLL, 0xEB000000006D6574, 0, 0xE000000000000000, v21, 0, 0, 0, v81);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_12E1C(v9, &unk_DF1330, &qword_AF9120);
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  *(inited + 32) = 25705;
  *(inited + 16) = xmmword_AF8600;
  v23 = 0xE000000000000000;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = &type metadata for String;
  if (v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = 0xEB000000006D6574;
  }

  v73 = v24;
  v25 = v79;
  if (v15)
  {
    v23 = v15;
  }

  else
  {
    v25 = 0;
  }

  *(inited + 48) = v25;
  *(inited + 56) = v23;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;

  sub_25FAA8(&v83);
  v26 = *(&v84 + 1);
  if (*(&v84 + 1))
  {
    v27 = v85;
    __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0(&v83);
    v31 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    if (v30)
    {
      *v31 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    sub_12E1C(&v83, &unk_DFC288, &qword_B07790);
    v31 = (inited + 96);
    *(inited + 120) = &type metadata for String;
  }

  *v31 = 0;
  v30 = 0xE000000000000000;
LABEL_18:
  *(inited + 104) = v30;
  strcpy((inited + 128), "locationType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 0x657449666C656853;
  *(inited + 152) = 0xE90000000000006DLL;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 1684957547;
  *(inited + 184) = 0xE400000000000000;
  v82 = a1;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC298, &qword_B07798);
  if (!swift_dynamicCast())
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    sub_12E1C(&v83, &unk_DFC2A0, &unk_B077A0);
    v38 = (inited + 192);
    *(inited + 216) = &type metadata for String;
    goto LABEL_22;
  }

  v33 = *(&v84 + 1);
  v34 = v85;
  __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
  v35 = (*(v34 + 8))(v33, v34);
  v37 = v36;
  __swift_destroy_boxed_opaque_existential_0(&v83);
  v38 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v37)
  {
LABEL_22:
    *v38 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_23;
  }

  *v38 = v35;
LABEL_23:
  *(inited + 200) = v37;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000000B5B050;
  v39 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel;
  v40 = *(v80 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel);
  if (!v40 || (v41 = *(&stru_68.offset + (swift_isaMask & *v40)), v42 = v40, v43 = v41(), v45 = v44, v42, v45 >> 60 == 15))
  {
    v46 = (inited + 240);
    *(inited + 264) = &type metadata for String;
LABEL_26:
    v47 = v76;
    *v46 = 0;
    v48 = 0xE000000000000000;
    goto LABEL_27;
  }

  sub_AB92F0();
  v64 = sub_AB92C0();
  v48 = v65;
  sub_466A4(v43, v45);
  v46 = (inited + 240);
  *(inited + 264) = &type metadata for String;
  if (!v48)
  {
    goto LABEL_26;
  }

  *v46 = v64;
  v47 = v76;
LABEL_27:
  *(inited + 248) = v48;
  v49 = sub_97420(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
  swift_arrayDestroy();
  if (v15)
  {
    v50 = v79;
  }

  else
  {
    v50 = 0x497972617262694CLL;
  }

  v51 = sub_AB31C0();
  v52 = v78;
  (*(*(v51 - 8) + 56))(v78, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B0, &qword_B077B0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_AF4EC0;
  *(v53 + 32) = v49;
  v54 = v74;
  sub_28D09C(v81, v74, type metadata accessor for MetricsPageProperties);
  v55 = v77;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v50, v73, 25, v75, v52, v53, 0, 12, v77, 0, 0, 0xFF00u, v54, 0);
  *(v55 + *(v47 + 76)) = 1;
  v56 = *(v80 + v39);
  if (v56)
  {
    v57 = *(&stru_68.offset + (swift_isaMask & *v56));
    v58 = v56;
    v59 = v57();
    v61 = v60;

    if (v61 >> 60 == 15)
    {
      v62 = 0;
      v63 = 0;
    }

    else
    {
      sub_AB92F0();
      v62 = sub_AB92C0();
      v63 = v66;
      sub_466A4(v59, v61);
    }
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v67 = (v55 + *(v47 + 80));

  *v67 = v62;
  v67[1] = v63;
  v68 = MetricsReportingController.shared.unsafeMutableAddressor();
  v69 = *&stru_B8.sectname[swift_isaMask & **v68];
  v70 = *v68;
  v69(v55, 0, 0, 0, 0, 0);
  sub_28D434(v81, type metadata accessor for MetricsPageProperties);

  return sub_28D434(v55, type metadata accessor for MetricsEvent.Click);
}

uint64_t *sub_28C1E0()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController;
  if (*(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController))
  {
    v2 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___requestResponseController);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_context);
    if (qword_DE6C18 != -1)
    {
      swift_once();
    }

    v5 = qword_E71848;
    v11 = qword_E71848;
    v12 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC280, &qword_B07788);
    swift_allocObject();
    v6 = v5;
    v2 = RequestResponse.Controller.init(request:)(&v11, v7, v8, v9);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_28C2C8()
{
  v1 = OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker;
  if (*&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker])
  {
    v2 = *&v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController____lazy_storage___impressionsTracker];
  }

  else
  {
    [v0 loadViewIfNeeded];
    v3 = sub_2884CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC220, &qword_B076E8);
    swift_allocObject();
    v2 = sub_2BE860(v0, v3, 1, 0);
    *&v0[v1] = v2;
  }

  return v2;
}

double sub_28C480@<D0>(_OWORD *a2@<X8>)
{
  v3 = v2;
  sub_AB9300();
  __chkstk_darwin();
  v5 = *(v2 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_dataSource);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  sub_AB5230();

  if (!v102)
  {
    goto LABEL_8;
  }

  if (!*(&v102 + 1))
  {

LABEL_8:
    sub_465CC(&v102);
    goto LABEL_15;
  }

  v25 = v102;
  v26 = *(&v102 + 1);
  v7 = IndexPath.safeItem.getter();
  v8 = *(v3 + OBJC_IVAR____TtCO16MusicApplication12Interstellar14ViewController_viewModel);
  if (v8 && (v9 = *(&stru_68.offset + (swift_isaMask & *v8)), v10 = v8, v11 = v9(), v13 = v12, v10, v13 >> 60 != 15))
  {
    sub_AB92F0();
    v14 = sub_AB92C0();
    v24 = v15;
    sub_466A4(v11, v13);
  }

  else
  {
    v14 = 0;
    v24 = 0;
  }

  sub_27A160(v26, &v97);
  v101 = v97;
  v100 = v98;
  v86 = v97;
  v87 = v98;
  v16 = v99;
  if (sub_279AC8(v99) == 0x497972617262696CLL && v17 == 0xEB000000006D6574)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_ABB3C0() ^ 1;
  }

  sub_15F84(&v101, &v102, &unk_DEE6F0, &unk_AF8970);
  sub_15F84(&v100, &v102, &unk_DEE6F0, &unk_AF8970);

  sub_28D048(&v97);
  v27[0] = v86;
  v27[1] = v87;
  *&v28 = 5;
  *(&v28 + 1) = v7;
  LOWORD(v29) = 512;
  BYTE2(v29) = v16;
  *(&v29 + 3) = v84;
  BYTE7(v29) = v85;
  *(&v29 + 1) = v14;
  *&v30[0] = v24;
  *(&v30[3] + 1) = 0;
  *(&v30[2] + 8) = 0u;
  *(&v30[1] + 8) = 0u;
  *(v30 + 8) = 0u;
  LOBYTE(v31) = v18 & 1;
  *(&v31 + 1) = *v83;
  DWORD1(v31) = *&v83[3];
  *(&v31 + 1) = 0;
  v32 = 0;
  v33 = 2;
  sub_465F4(v27, &v102);

  v34[0] = v86;
  v34[1] = v87;
  v35 = 5;
  v36 = v7;
  v37 = 512;
  v38 = v16;
  v39 = v84;
  v40 = v85;
  v41 = v14;
  v42 = v24;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v47 = v18 & 1;
  *v48 = *v83;
  *&v48[3] = *&v83[3];
  v49 = 0;
  v50 = 0;
  v51 = 2;
  sub_46650(v34);

  v96 = v27[0];
  v92 = v30[2];
  v93 = v30[3];
  v94 = v31;
  v88 = v28;
  v89 = v29;
  v90 = v30[0];
  v91 = v30[1];
  v52 = v27[0];
  v59 = v30[2];
  v60 = v30[3];
  v61[0] = v31;
  v55 = v28;
  v56 = v29;
  v95 = v32;
  v53 = 0;
  v54 = 0;
  *&v61[1] = v32;
  v57 = v30[0];
  v58 = v30[1];
  BYTE8(v61[1]) = 1;
  v62 = v27[0];
  v63 = 0u;
  v66 = v30[0];
  v67 = v30[1];
  v64 = v28;
  v65 = v29;
  v69 = v30[3];
  v70[0] = v31;
  v68 = v30[2];
  *(v70 + 9) = *(v61 + 9);
  UIScreen.Dimensions.size.getter();
  v71 = v96;
  v73 = 0;
  v72 = 0;
  v78 = v92;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v82 = 1;
  sub_465F4(&v52, &v102);
  sub_46650(&v71);

  v108 = v68;
  v109 = v69;
  v110[0] = v70[0];
  *(v110 + 9) = *(v70 + 9);
  v104 = v64;
  v105 = v65;
  v106 = v66;
  v107 = v67;
  v102 = v62;
  v103 = v63;
LABEL_15:
  v19 = v109;
  a2[6] = v108;
  a2[7] = v19;
  a2[8] = v110[0];
  *(a2 + 137) = *(v110 + 9);
  v20 = v105;
  a2[2] = v104;
  a2[3] = v20;
  v21 = v107;
  a2[4] = v106;
  a2[5] = v21;
  result = *&v102;
  v23 = v103;
  *a2 = v102;
  a2[1] = v23;
  return result;
}