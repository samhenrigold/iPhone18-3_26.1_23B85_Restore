uint64_t sub_22F14C430(char *__dst, char *__src, char *a3, char *a4)
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

void sub_22F14C624(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v16 < 1)
    {
      v24 = a4 + v16;
    }

    else
    {
      v22 = -v12;
      v23 = a4 + v16;
      v24 = a4 + v16;
      v39 = a4;
      v40 = -v12;
      v38 = a1;
      do
      {
        v36 = v24;
        v25 = a2;
        v26 = a2 + v22;
        v41 = v25;
        while (1)
        {
          v28 = v44;
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v36;
            goto LABEL_60;
          }

          v37 = v24;
          v44 += v22;
          v29 = v23 + v22;
          sub_22F13BA9C(v29, v10, &qword_27DAB0FC0, &qword_22F7713B0);
          v30 = v26;
          v31 = v26;
          v32 = v10;
          v33 = v42;
          sub_22F13BA9C(v31, v42, &qword_27DAB0FC0, &qword_22F7713B0);
          v34 = sub_22F73F5C0();
          v35 = v33;
          v10 = v32;
          sub_22F120ADC(v35, &qword_27DAB0FC0, &qword_22F7713B0);
          sub_22F120ADC(v32, &qword_27DAB0FC0, &qword_22F7713B0);
          if (v34)
          {
            break;
          }

          v24 = v29;
          if (v28 < v23 || v44 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v30;
            a1 = v38;
          }

          else
          {
            v26 = v30;
            a1 = v38;
            if (v28 != v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v29;
          v27 = v29 > v39;
          v22 = v40;
          v25 = v41;
          if (!v27)
          {
            a2 = v41;
            goto LABEL_59;
          }
        }

        if (v28 < v41 || v44 >= v41)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v37;
          a1 = v38;
          v22 = v40;
        }

        else
        {
          v24 = v37;
          a1 = v38;
          a2 = v30;
          v22 = v40;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v39);
    }

LABEL_59:
    v47 = a2;
    v45 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < v44)
    {
      v40 = v12;
      do
      {
        sub_22F13BA9C(a2, v10, &qword_27DAB0FC0, &qword_22F7713B0);
        v18 = v42;
        sub_22F13BA9C(a4, v42, &qword_27DAB0FC0, &qword_22F7713B0);
        v19 = sub_22F73F5C0();
        sub_22F120ADC(v18, &qword_27DAB0FC0, &qword_22F7713B0);
        sub_22F120ADC(v10, &qword_27DAB0FC0, &qword_22F7713B0);
        if (v19)
        {
          v20 = a2 + v12;
          if (a1 < a2 || a1 >= v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v20;
        }

        else
        {
          v21 = a4 + v12;
          if (a1 < a4 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v21;
          a4 = v21;
        }

        v12 = v40;
        a1 += v40;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v44);
    }
  }

LABEL_60:
  sub_22F3B6644(&v47, &v46, &v45);
}

unint64_t sub_22F14CB3C(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 2 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_22F14CB80(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22F14CBD0(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
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

unint64_t sub_22F14CC30(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_22F14CC78(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F107D08(a4, (a5[7] + 32 * a1));
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

uint64_t sub_22F14CCE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Song(0);
  result = sub_22F153340(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Song);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_22F14CD90(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_22F14CDE0(unint64_t result, uint64_t a2, uint64_t a3, void *a4, float a5, float a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = (a4[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a4[7] + 8 * result);
  *v7 = a5;
  v7[1] = a6;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_22F14CE44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22F14CE8C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = _s29IntermediateTimeExtendedTokenVMa(0);
  result = sub_22F153340(a3, v7 + *(*(v8 - 8) + 72) * a1, _s29IntermediateTimeExtendedTokenVMa);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22F14CF34(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_22F14CF90(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22F73FDA0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_22F7407B0();
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

unint64_t sub_22F14D084(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_22F14D0CC(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_22F7402E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_22F14D184(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22F740050();
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

unint64_t sub_22F14D23C(unint64_t result, __int16 a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 2 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_22F14D298(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_22F14D2F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
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

unint64_t sub_22F14D3A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_22F14D3F4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22F73F690();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_22F14D4A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v7 = a6[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a7;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_22F14D4F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22F73FE50();
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

unint64_t sub_22F14D5A8(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v5 = (a3[6] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  *(a3[7] + 8 * result) = a2;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_22F14D5F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DateAndLocation(0);
  result = sub_22F153340(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DateAndLocation);
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

uint64_t sub_22F14D6BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_22F14D770(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22F741A00();
LABEL_9:
  result = sub_22F741B50();
  *v2 = result;
  return result;
}

unint64_t *sub_22F14D810(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22F14DAFC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_22F14DE64(v10, v6, v4, a2);
  result = MEMORY[0x2319033A0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_22F14D97C(uint64_t (*a1)(void *, char *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_22F14DEEC(v10, v7, a3, v5);
      MEMORY[0x2319033A0](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_22F14DBF0(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

unint64_t *sub_22F14DAFC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v12) + 16) >= a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_22F1B09DC(result, a2, v5, a3);
      }
    }
  }

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
      return sub_22F1B09DC(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22F14DBF0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *, __n128))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_22F73F690();
  v6 = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v34 = v5 + 16;
  v35 = v5;
  v32 = 0;
  v33 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v19 = v38;
    v18 = v39;
LABEL_11:
    v22 = v37[7];
    v23 = (v37[6] + 16 * v17);
    v24 = v23[1];
    v40[0] = *v23;
    v40[1] = v24;
    (*(v35 + 16))(v19, v22 + *(v35 + 72) * v17, v18, v6);

    v25 = v41;
    v26 = (v36)(v40, v19);
    v27 = v19;
    v41 = v25;
    if (v25)
    {
      (*v33)(v19, v18);

      return;
    }

    v28 = v26;
    (*v33)(v27, v18);

    if (v28)
    {
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_22F1B0C20(v31, v30, v32, v37);
        return;
      }
    }
  }

  v20 = v8;
  v19 = v38;
  v18 = v39;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22F14DE64(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22F14DAFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22F14DEEC(void *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F14DBF0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t (*sub_22F14DF7C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_22F14DFFC;
  }

  __break(1u);
  return result;
}

void (*sub_22F14E004(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F1534F0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F14E084(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22F1534F4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22F14E104(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22F14E184;
  }

  __break(1u);
  return result;
}

void (*sub_22F14E18C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2319016F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22F14E20C;
  }

  __break(1u);
  return result;
}

unint64_t sub_22F14E214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1280, &unk_22F778600);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F14E334()
{
  result = qword_27DAB0FA8;
  if (!qword_27DAB0FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0FA0, &qword_22F7713A0);
    sub_22F14E3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB0FA8);
  }

  return result;
}

unint64_t sub_22F14E3B8()
{
  result = qword_27DAB0FB0;
  if (!qword_27DAB0FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0FB8, &qword_22F7713A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB0FB0);
  }

  return result;
}

unint64_t sub_22F14E41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB08E0, &qword_22F770AF8);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F14E518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB13B0, &unk_22F7717D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AD8, &qword_22F770C60);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &unk_27DAB13B0, &unk_22F7717D0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22F1229E8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22F73F690();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
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

unint64_t sub_22F14E740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B58, &qword_22F770CD0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F14E83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1288, &unk_22F771690);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B50, &qword_22F770CC8);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &unk_27DAB1288, &unk_22F771690);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22F1229E8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22F73F090();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
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

unint64_t sub_22F14EA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1380, &unk_22F771790);
    v3 = sub_22F741DF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22F13BA9C(v4, &v13, &unk_27DAB2FD0, &qword_22F77A4D0);
      v5 = v13;
      v6 = v14;
      result = sub_22F1229E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22F107D08(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22F14EB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F14EC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1350, &unk_22F771750);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C00, &qword_22F770D70);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &unk_27DAB1350, &unk_22F771750);
      result = sub_22F122CE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22F7402E0();
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

unint64_t sub_22F14EE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0820, &qword_22F770A48);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F14EF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E0, &unk_22F7716E0);
    v3 = sub_22F741DF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22F13BA9C(v4, v13, &qword_27DAB12E8, &qword_22F779E60);
      result = sub_22F122B24(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22F107D08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_22F14F0AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
    v3 = sub_22F741DF0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22F14F1C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F14F2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0930, &qword_22F770B30);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &unk_27DAB10F8, &unk_22F771548);
      result = sub_22F122A14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Song(0);
      result = sub_22F153340(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Song);
      *(v7[7] + 4 * v13) = *(v5 + v8);
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

unint64_t sub_22F14F4A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE8, &unk_22F781690);
    v3 = sub_22F741DF0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22F13BA9C(v4, &v13, &unk_27DAB0FF0, &unk_22F771410);
      v5 = v13;
      v6 = v14;
      result = sub_22F1229E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22F107D08(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22F14F5D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB12C0, &unk_22F7716C0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_22F122EF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22F14F6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1258, &qword_22F771680);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1260, &qword_22F771688);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &qword_27DAB1258, &qword_22F771680);
      v11 = *v5;
      result = sub_22F122BD4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_22F73F090();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_22F14F8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1240, &qword_22F771678);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B28, &qword_22F770CB0);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &unk_27DAB1240, &qword_22F771678);
      result = sub_22F123028(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22F73FDA0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_22F7407B0();
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

unint64_t sub_22F14FAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10B0, &unk_22F7714E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB08E8, &qword_22F770B00);
    v7 = sub_22F741DF0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F13BA9C(v9, v5, &qword_27DAB10B0, &unk_22F7714E0);
      result = sub_22F1230FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22F73F690();
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

unint64_t sub_22F14FD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0AF0, &unk_22F771650);
    v3 = sub_22F741DF0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_22F1232A4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22F14FDF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0A20, &qword_22F7715B0);
    v3 = sub_22F741DF0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_22F12355C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22F14FEE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0A00, &qword_22F770C00);
    v3 = sub_22F741DF0();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_22F15001C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22F1229E8(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void *sub_22F150118(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1160, &unk_22F771590);
  v3 = sub_22F741DF0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22F1235AC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22F1235AC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F150254(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22F741DF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_22F1229E8(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

void *sub_22F150350(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD0, &unk_22F771400);
  v3 = sub_22F741DF0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 6);
  v7 = sub_22F1237E8(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22F1237E8(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F15046C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1008, &qword_22F771428);
    v3 = sub_22F741DF0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22F1229E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

id sub_22F150580(void *a1)
{
  v4 = type metadata accessor for CollectionCuration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F1A26E0(a1);
  if (!v1)
  {
    v9 = v8;
    v10 = [objc_opt_self() ignoreProgress];
    v11 = sub_22F33E998();
    v33 = 0;
    v32 = v9;
    v13 = v11;

    v2 = [objc_allocWithZone(type metadata accessor for RecentlyUsedSongs()) init];
    v14 = v13[2];
    if (v14)
    {
      v36 = v4;
      v15 = *(v5 + 80);
      v31[1] = v13;
      v16 = v13 + ((v15 + 32) & ~v15);
      v17 = *(v5 + 72);
      v34 = xmmword_22F771340;
      v35 = v17;
      do
      {
        sub_22F1533A8(v16, v7, type metadata accessor for CollectionCuration);
        v18 = *(v7 + 5);
        if (v18)
        {
          v19 = *(v7 + 4);
          v20 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v20 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C0, &unk_22F7717E0);
            v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB13B0, &unk_22F7717D0) - 8);
            v22 = v2;
            v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
            v24 = swift_allocObject();
            *(v24 + 16) = v34;
            v25 = (v24 + v23);
            v26 = v21[14];
            *v25 = v19;
            *(v25 + 1) = v18;
            v27 = *(v36 + 28);
            v28 = sub_22F73F690();
            (*(*(v28 - 8) + 16))(&v25[v26], &v7[v27], v28);

            v29 = sub_22F14E518(v24);
            swift_setDeallocating();
            v30 = v25;
            v2 = v22;
            v17 = v35;
            sub_22F120ADC(v30, &unk_27DAB13B0, &unk_22F7717D0);
            swift_deallocClassInstance();
            RecentlyUsedSongs.add(songIDDateMap:)(v29);
          }
        }

        sub_22F153410(v7, type metadata accessor for CollectionCuration);
        v16 += v17;
        --v14;
      }

      while (v14);
    }
  }

  return v2;
}

id sub_22F1508D8(void *a1)
{
  v4 = type metadata accessor for CollectionCuration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F1A26E0(a1);
  if (!v1)
  {
    v9 = v8;
    v10 = [objc_opt_self() ignoreProgress];
    v11 = sub_22F33E998();
    v33 = 0;
    v32 = v9;
    v13 = v11;

    v2 = [objc_allocWithZone(type metadata accessor for RecentlyUsedSongs()) init];
    v14 = v13[2];
    if (v14)
    {
      v36 = v4;
      v15 = *(v5 + 80);
      v31[1] = v13;
      v16 = v13 + ((v15 + 32) & ~v15);
      v17 = *(v5 + 72);
      v34 = xmmword_22F771340;
      v35 = v17;
      do
      {
        sub_22F1533A8(v16, v7, type metadata accessor for CollectionCuration);
        v18 = *(v7 + 3);
        if (v18)
        {
          v19 = *(v7 + 2);
          v20 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v20 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C0, &unk_22F7717E0);
            v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB13B0, &unk_22F7717D0) - 8);
            v22 = v2;
            v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
            v24 = swift_allocObject();
            *(v24 + 16) = v34;
            v25 = (v24 + v23);
            v26 = v21[14];
            *v25 = v19;
            *(v25 + 1) = v18;
            v27 = *(v36 + 28);
            v28 = sub_22F73F690();
            (*(*(v28 - 8) + 16))(&v25[v26], &v7[v27], v28);

            v29 = sub_22F14E518(v24);
            swift_setDeallocating();
            v30 = v25;
            v2 = v22;
            v17 = v35;
            sub_22F120ADC(v30, &unk_27DAB13B0, &unk_22F7717D0);
            swift_deallocClassInstance();
            RecentlyUsedSongs.add(songIDDateMap:)(v29);
          }
        }

        sub_22F153410(v7, type metadata accessor for CollectionCuration);
        v16 += v17;
        --v14;
      }

      while (v14);
    }
  }

  return v2;
}

void *sub_22F150C30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v62 - v3;
  v5 = sub_22F73F690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v62 - v9;
  MEMORY[0x28223BE20](v10);
  v79 = v62 - v11;
  MEMORY[0x28223BE20](v12);
  v64 = v62 - v13;
  v14 = sub_22F14E518(MEMORY[0x277D84F90]);
  v15 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v77 = v6 + 8;
  v78 = v6 + 16;
  v73 = v14;
  v74 = (v6 + 32);
  v62[1] = v6 + 40;
  v80 = v6;
  v68 = (v6 + 56);

  v20 = 0;
  v70 = a1 + 64;
  v71 = v19;
  v69 = v4;
  while (v18)
  {
LABEL_11:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = (*(a1 + 48) + ((v20 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    v28 = *(a1 + 16);

    if (v28 && (v72 = v26, v29 = sub_22F1229E8(v27, v26), v26 = v72, (v30 & 1) != 0) && (v31 = *(*(a1 + 56) + 8 * v29), (v32 = *(v31 + 16)) != 0))
    {
      v66 = v27;
      v63 = a1;
      v33 = v79;
      v34 = v31 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
      v75 = *(v80 + 16);
      v76 = v34;
      v75(v79);

      v35 = v65;
      if (v32 != 1)
      {
        v56 = 1;
        while (v56 < *(v31 + 16))
        {
          v57 = v80;
          (v75)(v35, v76 + *(v80 + 72) * v56, v5);
          sub_22F153050(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v58 = sub_22F740DB0();
          v59 = *(v57 + 8);
          if (v58)
          {
            v59(v33, v5);
            (*v74)(v33, v35, v5);
          }

          else
          {
            v59(v35, v5);
          }

          ++v56;
          v33 = v79;
          if (v32 == v56)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_37;
      }

LABEL_15:

      v36 = *v74;
      v37 = v64;
      (*v74)(v64, v33, v5);
      v36(v67, v37, v5);
      v38 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v38;
      v40 = v66;
      v41 = sub_22F1229E8(v66, v72);
      v43 = v38[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_38;
      }

      v47 = v42;
      if (v38[3] >= v46)
      {
        v19 = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = v41;
          sub_22F134004();
          v19 = v71;
          v41 = v60;
        }

        a1 = v63;
        v15 = v70;
      }

      else
      {
        sub_22F125428(v46, isUniquelyReferenced_nonNull_native);
        v41 = sub_22F1229E8(v40, v72);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_39;
        }

        a1 = v63;
        v15 = v70;
        v19 = v71;
      }

      v73 = v81;
      if (v47)
      {
        (*(v80 + 40))(v81[7] + *(v80 + 72) * v41, v67, v5);
      }

      else
      {
        sub_22F14D6BC(v41, v66, v72, v67, v81, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v49 = v26;
      v50 = v73;
      v51 = sub_22F1229E8(v27, v49);
      if (v52)
      {
        v53 = v51;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v50;
        v55 = v50;
        v22 = v69;
        v15 = v70;
        v19 = v71;
        if (!v54)
        {
          sub_22F134004();
          v19 = v71;
          v55 = v81;
        }

        (*(v80 + 32))(v22, v55[7] + *(v80 + 72) * v53, v5);
        v73 = v55;
        sub_22F3B9858(v53, v55);

        v21 = 0;
      }

      else
      {

        v21 = 1;
        v22 = v69;
        v15 = v70;
        v19 = v71;
      }

      (*v68)(v22, v21, 1, v5);
      sub_22F120ADC(v22, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v73;
    }

    v18 = *(v15 + 8 * v23);
    ++v20;
    if (v18)
    {
      v20 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t *sub_22F1512AC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v14 = sub_22F740B90();
    __swift_project_value_buffer(v14, qword_2810B4D90);
    v15 = sub_22F740B70();
    v16 = sub_22F7415D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v15, v16, "(extractFrequentlyUsedSongs) Empty list of songs", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    return sub_22F15001C(MEMORY[0x277D84F90], &unk_27DAB0F80, &unk_22F771380);
  }

  v19[0] = sub_22F140724(a1);

  sub_22F145D38(v19);

  v4 = v19[0];
  if (!*(v19[0] + 2) || *(v19[0] + 4) < a2)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v5 = sub_22F740B90();
    __swift_project_value_buffer(v5, qword_2810B4D90);

    v6 = sub_22F740B70();
    v7 = sub_22F7415D0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19[0] = v9;
      *v8 = 134218242;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2080;
      v10 = MEMORY[0x231900D40](v4, MEMORY[0x277D83B88]);
      v12 = v11;

      v13 = sub_22F145F20(v10, v12, v19);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_22F0FC000, v6, v7, "(extractFrequentlyUsedSongs) Minimum threshold %ld not met allDateCounts = %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2319033A0](v9, -1, -1);
      MEMORY[0x2319033A0](v8, -1, -1);
    }

    else
    {
    }

    return sub_22F15001C(MEMORY[0x277D84F90], &unk_27DAB0F80, &unk_22F771380);
  }

  return sub_22F14D810(a1, a2);
}

uint64_t sub_22F151588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FC0, &qword_22F7713B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1515F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231901000](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22F10BBDC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22F151690(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_22F10BBDC(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_22F151734(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22F153050(&qword_2810A99B0, type metadata accessor for Song, &protocol conformance descriptor for Song);
  result = MEMORY[0x231901000](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_22F1533A8(v12, v5, type metadata accessor for Song);
      sub_22F10C40C(v8, v5);
      sub_22F153410(v8, type metadata accessor for Song);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t (*sub_22F151950(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void))))(uint64_t)
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_22F153050(a3, a4, MEMORY[0x277D85378]);
    result = MEMORY[0x231901000](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2319016F0](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_22F741A00();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_22F741A00();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F151AEC(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22F153050(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
  result = MEMORY[0x231901000](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22F10D004(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22F151C88(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_22F741A00();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for ImportantEntitiesGraphInferenceMoment();
  v5 = sub_22F153050(&unk_2810AC6B0, type metadata accessor for ImportantEntitiesGraphInferenceMoment, &unk_22F77CC20);
  result = MEMORY[0x231901000](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2319016F0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_22F10D518(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_22F741A00();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F151E54(uint64_t a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v72);
  v82 = &v58 - v2;
  v77 = sub_22F73F690();
  v3 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = type metadata accessor for SongSource(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v59 = (&v58 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = (&v58 - v16);
  v18 = *(a1 + 16);
  v19 = sub_22F153050(&unk_2810AC258, type metadata accessor for SongSource, &protocol conformance descriptor for SongSource);
  v67 = v10;
  v80 = MEMORY[0x231901000](v18, v10, v19);
  v62 = v18;
  if (v18)
  {
    v20 = 0;
    v60 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v79 = *(v11 + 72);
    v75 = (v3 + 48);
    v65 = (v3 + 32);
    v68 = (v3 + 8);
    v61 = v9;
    v76 = v17;
    while (1)
    {
      sub_22F1533A8(v60 + v79 * v20, v17, type metadata accessor for SongSource);
      sub_22F742170();
      v24 = *v17;
      v81 = v17[1];
      sub_22F740D60();
      v25 = *(v17 + v67[11] + 8);
      v63 = v20;
      sub_22F742190();
      if (v25)
      {
        sub_22F740D60();
      }

      v74 = v67[7];
      sub_22F13BA9C(v17 + v74, v9, &qword_27DAB0920, &qword_22F770B20);
      v26 = *v75;
      v27 = v77;
      if ((*v75)(v9, 1, v77) == 1)
      {
        sub_22F742190();
      }

      else
      {
        v28 = v66;
        (*v65)(v66, v9, v27);
        sub_22F742190();
        sub_22F153050(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_22F740D50();
        (*v68)(v28, v27);
      }

      v29 = v67;
      v30 = (v17 + v67[8]);
      v31 = *v30;
      v32 = v30[1];
      v73 = v26;
      v70 = v32;
      sub_22F742190();
      if (v32)
      {
        sub_22F740D60();
      }

      v64 = v31;
      if (*(v17 + v29[12] + 8))
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v33 = sub_22F7421D0();
      v34 = v80 + 56;
      v35 = -1 << *(v80 + 32);
      v36 = v33 & ~v35;
      if (((*(v80 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
LABEL_3:
        v21 = v80;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v76;
        v23 = v59;
        sub_22F1533A8(v76, v59, type metadata accessor for SongSource);
        v84 = v21;
        sub_22F1148BC(v23, v36, isUniquelyReferenced_nonNull_native);
        v80 = v84;
        goto LABEL_4;
      }

      v78 = ~v35;
      v69 = v80 + 56;
      while (1)
      {
        v37 = v83;
        sub_22F1533A8(*(v80 + 48) + v36 * v79, v83, type metadata accessor for SongSource);
        v38 = *v37 == v24 && v37[1] == v81;
        if (!v38 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_19;
        }

        v39 = v24;
        v40 = v29;
        v41 = *(v72 + 48);
        v42 = v82;
        sub_22F13BA9C(v83 + v29[7], v82, &qword_27DAB0920, &qword_22F770B20);
        sub_22F13BA9C(v76 + v74, v42 + v41, &qword_27DAB0920, &qword_22F770B20);
        v43 = v42;
        v44 = v77;
        v45 = v73;
        if (v73(v43, 1, v77) == 1)
        {
          if (v45((v82 + v41), 1, v44) != 1)
          {
            goto LABEL_18;
          }

          sub_22F120ADC(v82, &qword_27DAB0920, &qword_22F770B20);
          v29 = v40;
        }

        else
        {
          v46 = v82;
          sub_22F13BA9C(v82, v71, &qword_27DAB0920, &qword_22F770B20);
          if (v45((v46 + v41), 1, v44) == 1)
          {
            (*v68)(v71, v44);
            v34 = v69;
LABEL_18:
            sub_22F120ADC(v82, &unk_27DAB05B0, &unk_22F771430);
            v29 = v40;
LABEL_19:
            sub_22F153410(v83, type metadata accessor for SongSource);
            goto LABEL_20;
          }

          v47 = v82;
          v48 = v71;
          v49 = v66;
          (*v65)(v66, (v82 + v41), v44);
          sub_22F153050(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v50 = sub_22F740DE0();
          v51 = *v68;
          v52 = v49;
          v53 = v48;
          v29 = v67;
          (*v68)(v52, v44);
          v51(v53, v44);
          sub_22F120ADC(v47, &qword_27DAB0920, &qword_22F770B20);
          v24 = v39;
          v34 = v69;
          if ((v50 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v54 = (v83 + v29[8]);
        v55 = v54[1];
        if (v55)
        {
          break;
        }

        sub_22F153410(v83, type metadata accessor for SongSource);
        if (!v70)
        {
          goto LABEL_40;
        }

LABEL_20:
        v36 = (v36 + 1) & v78;
        if (((*(v34 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (!v70)
      {
        goto LABEL_19;
      }

      if (*v54 != v64 || v55 != v70)
      {
        break;
      }

      sub_22F153410(v83, type metadata accessor for SongSource);
LABEL_40:
      v17 = v76;
LABEL_4:
      sub_22F153410(v17, type metadata accessor for SongSource);
      v20 = v63 + 1;
      v9 = v61;
      if (v63 + 1 == v62)
      {
        return v80;
      }
    }

    v56 = sub_22F742040();
    sub_22F153410(v83, type metadata accessor for SongSource);
    if (v56)
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  return v80;
}

uint64_t sub_22F152874(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x231901000](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_22F152924(uint64_t a1)
{
  v2 = sub_22F7409A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22F153050(&qword_2810A94A0, MEMORY[0x277D1F370], MEMORY[0x277D1F378]);
  result = MEMORY[0x231901000](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22F10EF00(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22F152AC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06B0, &qword_22F770BD0);
  v4 = sub_22F153140();
  result = MEMORY[0x231901000](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_22F10F204(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t *sub_22F152B8C(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v12 = sub_22F120634(0, a2, a3);
    v13 = sub_22F11FA28(a4, a2, a3);
    result = MEMORY[0x231901000](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x2319016F0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22F741A00();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F152CE4(uint64_t a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22F153050(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  result = MEMORY[0x231901000](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22F10C984(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_22F152EB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Song(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v13 = a3 >> 1;
  v14 = __OFSUB__(a3 >> 1, a2);
  v15 = (a3 >> 1) - a2;
  if (v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = sub_22F153050(&qword_2810A99B0, type metadata accessor for Song, &protocol conformance descriptor for Song);
  v20[1] = MEMORY[0x231901000](v15, v6, v16);
  v17 = v13 - a2;
  if (v13 == a2)
  {
    return;
  }

  if (v13 <= a2)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v18 = *(v7 + 72);
  v19 = a1 + v18 * a2;
  do
  {
    sub_22F1533A8(v19, v9, type metadata accessor for Song);
    sub_22F10C40C(v12, v9);
    sub_22F153410(v12, type metadata accessor for Song);
    v19 += v18;
    --v17;
  }

  while (v17);
}

uint64_t sub_22F153050(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22F153098()
{
  result = qword_27DAB1120;
  if (!qword_27DAB1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1120);
  }

  return result;
}

unint64_t sub_22F1530EC()
{
  result = qword_27DAB1128;
  if (!qword_27DAB1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1128);
  }

  return result;
}

unint64_t sub_22F153140()
{
  result = qword_2810A9288;
  if (!qword_2810A9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB06B0, &qword_22F770BD0);
    sub_22F11FA28(&qword_2810A8E90, &qword_2810A8EA0, 0x277CD9938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9288);
  }

  return result;
}

uint64_t sub_22F1531DC(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_22F741A00();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_22F14D770(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_22F1532EC()
{
  result = qword_27DAB12B8;
  if (!qword_27DAB12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB12B8);
  }

  return result;
}

uint64_t sub_22F153340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1533A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F153410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22F153470()
{
  result = qword_2810A93C8;
  if (!qword_2810A93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A93C8);
  }

  return result;
}

uint64_t sub_22F1534FC(uint64_t a1)
{
  sub_22F742170();
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v1 + *(a1 + 32)));
  MEMORY[0x231901D30](*(v1 + *(a1 + 36)));
  return sub_22F7421D0();
}

uint64_t sub_22F1535BC(uint64_t a1, uint64_t a2)
{
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v2 + *(a2 + 32)));
  return MEMORY[0x231901D30](*(v2 + *(a2 + 36)));
}

uint64_t sub_22F153668(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v2 + *(a2 + 32)));
  MEMORY[0x231901D30](*(v2 + *(a2 + 36)));
  return sub_22F7421D0();
}

uint64_t sub_22F153798(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();
  v3 = v1 + *(a1 + 20);
  v4 = type metadata accessor for MomentGroundedLocation(0);
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v3 + *(v4 + 32)));
  MEMORY[0x231901D30](*(v3 + *(v4 + 36)));
  return sub_22F7421D0();
}

uint64_t sub_22F153874(uint64_t a1, uint64_t a2)
{
  sub_22F740D60();
  v4 = v2 + *(a2 + 20);
  v5 = type metadata accessor for MomentGroundedLocation(0);
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v4 + *(v5 + 32)));
  return MEMORY[0x231901D30](*(v4 + *(v5 + 36)));
}

uint64_t sub_22F153938(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  sub_22F740D60();
  v4 = v2 + *(a2 + 20);
  v5 = type metadata accessor for MomentGroundedLocation(0);
  sub_22F73FF10();
  sub_22F15A438(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  MEMORY[0x231901D30](*(v4 + *(v5 + 32)));
  MEMORY[0x231901D30](*(v4 + *(v5 + 36)));
  return sub_22F7421D0();
}

BOOL sub_22F153A10(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    v9 = *(a3 + 20);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for MomentGroundedLocation(0);
    return (sub_22F73FEE0() & 1) != 0 && *&v10[*(v12 + 32)] == *&v11[*(v12 + 32)] && *&v10[*(v12 + 36)] == *&v11[*(v12 + 36)];
  }

  return result;
}

uint64_t MomentBasedLocationAssetsFilterProcessor.filterLocationsByMomentLocationHierarchy(for:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x231900370](a1, a2);
  sub_22F153B4C(v5, a2, a3);
}

void sub_22F153B4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v207 = a2;
  v206 = a3;
  v6 = type metadata accessor for NamedGroundedLocation(0);
  v204 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v203 = &v199 - v10;
  v218 = type metadata accessor for MomentGroundedLocation(0);
  MEMORY[0x28223BE20](v218);
  v233 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v217 = &v199 - v13;
  MEMORY[0x28223BE20](v14);
  v232 = (&v199 - v15);
  v234 = sub_22F73FF10();
  v221 = *(v234 - 1);
  MEMORY[0x28223BE20](v234);
  v231 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v230 = &v199 - v18;
  v19 = v3[1];
  v205 = *v3;
  v220 = v19;
  v20 = *(a1 + 64);
  v209 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v210 = a1;

  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (!v23)
      {
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v27 >= v24)
          {

            v216 = v26[2];
            if (!v216)
            {

              sub_22F7407D0();
              return;
            }

            if (qword_2810A9400 != -1)
            {
              goto LABEL_103;
            }

            goto LABEL_24;
          }

          v23 = *(v209 + 8 * v27);
          ++v25;
          if (v23)
          {
            v25 = v27;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_61:
        v8 = &selRef_floatVector;
LABEL_62:
        v122 = objc_opt_self();
        v123 = sub_22F741160();

        v124 = [v122 businessNodesWithCIDINames:v123 inGraph:v233];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_22F771350;
        v126 = objc_opt_self();
        v127 = v124;
        *(v125 + 32) = [v126 momentOfBusiness];
        *(v125 + 40) = [objc_opt_self() addressOfMoment];
        v128 = objc_allocWithZone(MEMORY[0x277D22C00]);
        sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
        v129 = sub_22F741160();

        v130 = [v128 initWithSteps_];

        v131 = [objc_msgSend(v127 v8[72])];
        swift_unknownObjectRelease();
        v132 = [v131 concreteGraph];

        if (!v132)
        {
          goto LABEL_108;
        }

        v133 = v132;
        v134 = [v127 elementIdentifiers];
        v135 = [v133 adjacencyWithSources:v134 relation:v130];

        v136 = 0.55;
        v137 = v208;
        sub_22F741690();
        if (v137)
        {

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        v221 = v135;
        v222 = v133;
        v213 = v127;
        v138 = *(v210 + 16);
        v241 = MEMORY[0x277D84FA0];
        v242 = MEMORY[0x277D84FA0];
        v139 = 1 << *(v210 + 32);
        v140 = -1;
        if (v139 < 64)
        {
          v140 = ~(-1 << v139);
        }

        v141 = v140 & *(v210 + 64);
        v214 = ((v139 + 63) >> 6);
        v142 = v4 / v138;

        v143 = 0;
        *&v144 = 136315394;
        v212 = v144;
        *&v144 = 136315650;
        v199 = v144;
        v145 = v141;
        v8 = v234;
        v146 = v225;
        while (v145)
        {
          v147 = v143;
LABEL_73:
          v216 = v145;
          v215 = v147;
          v148 = __clz(__rbit64(v145)) | (v147 << 6);
          v149 = *(v210 + 56);
          v150 = *(v210 + 48) + 16 * v148;
          v151 = *(v150 + 8);
          v220 = *v150;
          v152 = *(v149 + 8 * v148);
          v153 = MEMORY[0x277D84FA0];
          v243 = MEMORY[0x277D84FA0];
          v154 = *(v152 + 16);
          v227 = v151;

          v217 = v152;
          if (v154)
          {
            v208 = 0;
            v155 = 0;
            v230 = v154;
            v228 = (v152 + v200);
            do
            {
              v156 = sub_22F73FEF0();
              v158 = v157;
              if (*(v23 + 16) && (v159 = v156, sub_22F1229E8(v156, v157), (v160 & 1) != 0) && (, v161 = , v162 = v208, v163 = sub_22F159E74(v161, v159, v158), v208 = v162, , swift_bridgeObjectRelease_n(), (v164 = *(v163 + 16)) != 0))
              {
                v165 = v163 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
                v166 = *(v204 + 72);
                v167 = v202;
                v168 = v203;
                do
                {
                  sub_22F15A1F8(v165, v167, type metadata accessor for NamedGroundedLocation);
                  sub_22F10C080(v168, v167);
                  sub_22F15A260(v168, type metadata accessor for NamedGroundedLocation);
                  v165 += v166;
                  --v164;
                }

                while (v164);

                v23 = v229;
                v154 = v230;
              }

              else
              {
              }

              ++v155;
            }

            while (v155 != v154);
            v169 = v243;
            v170 = v208;
            v146 = v225;
          }

          else
          {
            v170 = 0;
            v169 = v153;
          }

          v243 = v205;
          v244 = v233;
          v239 = v224;
          v240 = v232;
          v237 = v223;
          v238 = v146;
          v235 = v221;
          v236 = v222;
          v243 = sub_22F155DF0(v169, &v239, &v237, &v235);

          sub_22F158794(&v243);
          v8 = v170;
          v171 = v227;
          if (v170)
          {
            goto LABEL_109;
          }

          v172 = v243;

          v173 = sub_22F740B70();
          v174 = sub_22F7415F0();

          v175 = os_log_type_enabled(v173, v174);
          v230 = v169;
          if (v175)
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            v243 = v177;
            *v176 = v212;
            *(v176 + 4) = sub_22F145F20(v220, v227, &v243);
            *(v176 + 12) = 2080;
            v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
            v179 = MEMORY[0x231900D40](v172, v178);
            v181 = sub_22F145F20(v179, v180, &v243);

            *(v176 + 14) = v181;
            _os_log_impl(&dword_22F0FC000, v173, v174, "Sorted exact matches for query token %s = %s", v176, 0x16u);
            swift_arrayDestroy();
            v171 = v227;
            MEMORY[0x2319033A0](v177, -1, -1);
            MEMORY[0x2319033A0](v176, -1, -1);
          }

          v243 = v205;
          v244 = v233;
          v182 = sub_22F156B1C(v172);

          v183 = sub_22F740B70();
          v184 = sub_22F7415F0();

          if (os_log_type_enabled(v183, v184))
          {
            v185 = swift_slowAlloc();
            v186 = swift_slowAlloc();
            v243 = v186;
            *v185 = v212;
            *(v185 + 4) = sub_22F145F20(v220, v227, &v243);
            *(v185 + 12) = 2080;
            v239 = v182;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
            sub_22F15A2C0();
            v187 = sub_22F740DA0();
            v189 = sub_22F145F20(v187, v188, &v243);

            *(v185 + 14) = v189;
            _os_log_impl(&dword_22F0FC000, v183, v184, "Selected exact matches for query token %s = %s", v185, 0x16u);
            swift_arrayDestroy();
            v171 = v227;
            MEMORY[0x2319033A0](v186, -1, -1);
            MEMORY[0x2319033A0](v185, -1, -1);
          }

          v146 = v225;
          v243 = v205;
          v244 = v233;
          v239 = v224;
          v240 = v232;
          v237 = v223;
          v238 = v225;
          v235 = v221;
          v236 = v222;
          v190 = sub_22F156DBC(v230, v182, &v239, &v237, &v235);

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          v191 = sub_22F740B70();
          v192 = sub_22F7415F0();

          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            v243 = v194;
            *v193 = v199;
            v195 = sub_22F145F20(v220, v171, &v243);

            *(v193 + 4) = v195;
            *(v193 + 12) = 2048;
            v196 = *(v182 + 16);

            *(v193 + 14) = v196;

            *(v193 + 22) = 2048;
            v197 = *(v190 + 2);

            *(v193 + 24) = v197;

            _os_log_impl(&dword_22F0FC000, v191, v192, "Query token %s:\n• Exact Matches: %ld\n• Partial Matches: %ld", v193, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v194);
            MEMORY[0x2319033A0](v194, -1, -1);
            v198 = v193;
            v146 = v225;
            MEMORY[0x2319033A0](v198, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v23 = v229;
          v24 = v218;
          sub_22F2F2D94(v182);

          sub_22F2F2D94(v190);

          sub_22F741690();
          v145 = (v216 - 1) & v216;
          v136 = v142 + v136;
          v143 = v215;
          v8 = v234;
        }

        while (1)
        {
          v147 = (v143 + 1);
          if (__OFADD__(v143, 1))
          {
            break;
          }

          if (v147 >= v214)
          {

            sub_22F7416A0();
            goto LABEL_98;
          }

          v145 = *(v209 + 8 * v147);
          ++v143;
          if (v145)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_10:
      v28 = *(*(v210 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v23)))));
      v29 = *(v28 + 16);
      v30 = v26[2];
      v31 = &v29[v30];
      if (__OFADD__(v30, v29))
      {
        __break(1u);
LABEL_100:
        __break(1u);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 > v26[3] >> 1)
      {
        if (v30 <= v31)
        {
          v33 = &v29[v30];
        }

        else
        {
          v33 = v30;
        }

        v26 = sub_22F13E2B4(isUniquelyReferenced_nonNull_native, v33, 1, v26);
      }

      v23 &= v23 - 1;
      if (*(v28 + 16))
      {
        break;
      }

      if (v29)
      {
        goto LABEL_100;
      }
    }

    if ((v26[3] >> 1) - v26[2] < v29)
    {
      break;
    }

    swift_arrayInitWithCopy();

    if (v29)
    {
      v34 = v26[2];
      v35 = __OFADD__(v34, v29);
      v36 = &v29[v34];
      if (v35)
      {
        goto LABEL_102;
      }

      v26[2] = v36;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_24:
  v37 = sub_22F740B90();
  v38 = __swift_project_value_buffer(v37, qword_2810B4CE0);

  v201 = v38;
  v39 = sub_22F740B70();
  v24 = sub_22F7415F0();

  v40 = os_log_type_enabled(v39, v24);
  v219 = v26;
  v202 = v8;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    v239 = v42;
    *v41 = 136315138;
    v8 = v26[2];
    v44 = v26;
    v45 = MEMORY[0x277D84F90];
    if (v8)
    {
      v222 = v42;
      v223 = v41;
      LODWORD(v224) = v24;
      v225 = v39;
      v237 = MEMORY[0x277D84F90];
      sub_22F146454(0, v8, 0);
      v45 = v237;
      v228 = *(v221 + 2);
      v46 = v44 + ((v221[80] + 32) & ~v221[80]);
      v227 = *(v221 + 9);
      v229 = v221 + 16;
      v226 = (v221 + 8);
      do
      {
        v47 = v230;
        v48 = v234;
        v228(v230, v46, v234);
        v243 = sub_22F73FEF0();
        v244 = v49;
        MEMORY[0x231900B10](2128928, 0xE300000000000000);
        v235 = sub_22F73FF00();
        v50 = sub_22F742010();
        MEMORY[0x231900B10](v50);

        MEMORY[0x231900B10](2128928, 0xE300000000000000);
        v235 = sub_22F73FED0();
        v51 = sub_22F742010();
        MEMORY[0x231900B10](v51);

        v52 = v243;
        v53 = v244;
        (*v226)(v47, v48);
        v237 = v45;
        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          sub_22F146454((v54 > 1), v55 + 1, 1);
          v45 = v237;
        }

        v45[2] = v55 + 1;
        v56 = &v45[2 * v55];
        v56[4] = v52;
        v56[5] = v53;
        v46 += v227;
        v8 = (v8 - 1);
      }

      while (v8);
      v39 = v225;
      v24 = v224;
      v41 = v223;
      v43 = v222;
    }

    v57 = MEMORY[0x231900D40](v45, MEMORY[0x277D837D0]);
    v59 = v58;

    v60 = sub_22F145F20(v57, v59, &v239);

    *(v41 + 1) = v60;
    _os_log_impl(&dword_22F0FC000, v39, v24, "The location infos to process = %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x2319033A0](v43, -1, -1);
    MEMORY[0x2319033A0](v41, -1, -1);

    v26 = v219;
  }

  else
  {
  }

  v245 = MEMORY[0x277D84FA0];
  v215 = objc_opt_self();
  v214 = objc_opt_self();
  v61 = 0;
  v200 = (v221[80] + 32) & ~v221[80];
  v213 = v26 + v200;
  v230 = (v221 + 16);
  *&v212 = v221 + 8;
  v23 = MEMORY[0x277D84F98];
  do
  {
    if (v61 >= v26[2])
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      sub_22F7407D0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }

    v211 = *(v221 + 9);
    v229 = v23;
    v227 = *(v221 + 2);
    v62 = v231;
    (v227)(v231, &v213[v211 * v61], v234);
    v224 = objc_autoreleasePoolPush();
    v228 = sub_22F73FEF0();
    v64 = v63;
    v223 = sub_22F73FEC0();
    v222 = v65;
    v226 = sub_22F73FF00();
    v225 = sub_22F73FED0();
    sub_22F73FEB0();
    v66 = sub_22F741410();

    v67 = [v215 momentNodesForUUIDs:v66 inGraph:v220];

    v68 = [v67 addressNodes];
    v8 = [v214 edgesFromNodes:v67 toNodes:v68];
    v69 = [(SEL *)v8 universalDateIntervals];
    sub_22F73F090();
    sub_22F15A438(&unk_2810AC730, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v70 = sub_22F741420();

    v71 = v218;
    v72 = v232;
    (v227)(v232 + *(v218 + 28), v62, v234);
    v73 = v229;
    *v72 = v68;
    v72[1] = v67;
    v72[2] = v70;
    *(v72 + *(v71 + 32)) = v226;
    *(v72 + *(v71 + 36)) = v225;
    v74 = v72;
    v75 = v228;
    sub_22F15A1F8(v74, v233, type metadata accessor for MomentGroundedLocation);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v243 = v73;
    v24 = sub_22F1229E8(v75, v64);
    v78 = *(v73 + 16);
    v79 = (v77 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_97;
    }

    v81 = v77;
    if (*(v73 + 24) >= v80)
    {
      if ((v76 & 1) == 0)
      {
        sub_22F134188();
      }
    }

    else
    {
      sub_22F1256DC(v80, v76);
      sub_22F1229E8(v75, v64);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_107;
      }
    }

    v83 = v224;
    v23 = v243;
    if (v81)
    {
    }

    else
    {
      sub_22F1534CC();
    }

    ++v61;
    v24 = v217;
    sub_22F10BD2C(v217, v233);
    sub_22F15A260(v24, type metadata accessor for MomentGroundedLocation);
    sub_22F10BBDC(&v243, v223, v222);

    sub_22F15A260(v232, type metadata accessor for MomentGroundedLocation);
    objc_autoreleasePoolPop(v83);
    (*v212)(v231, v234);
    v26 = v219;
  }

  while (v216 != v61);
  v84 = v208;
  sub_22F741690();
  if (v84)
  {

    return;
  }

  v243 = v205;
  v244 = v220;
  v85 = v245;

  v8 = sub_22F155AB4(v86);
  v87 = *(v85 + 16);
  if (v87)
  {
    v88 = sub_22F10B348(*(v85 + 16), 0);
    v89 = sub_22F11A438(&v243, v88 + 4, v87, v85);
    sub_22F1534EC(v243);
    if (v89 != v87)
    {
      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
LABEL_51:
  }

  v90 = objc_opt_self();
  v91 = sub_22F741160();

  v92 = v220;
  v93 = [v90 locationNodesWithCIDINames:v91 inGraph:v92];

  v94 = objc_allocWithZone(PGGraphNamedLocationNodeCollection);
  v234 = v8;
  v95 = [v94 initWithGraph:v92 elementIdentifiers:v8];
  v233 = v92;

  v96 = [v93 collectionByFormingUnionWith_];
  sub_22F120634(0, &qword_2810A9020, off_27887B138);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v97);
  v99 = v96;
  v100 = [ObjCClassFromMetadata addressOfLocation];
  v101 = [objc_msgSend(v99 graph)];
  swift_unknownObjectRelease();
  v102 = [v101 concreteGraph];

  if (!v102)
  {
    goto LABEL_108;
  }

  v103 = [v99 elementIdentifiers];
  v8 = [v102 adjacencyWithSources:v103 relation:v100];

  sub_22F741690();
  v232 = v102;
  v226 = v99;
  v104 = *(v85 + 16);
  v229 = v23;
  v231 = v85;
  if (v104)
  {
    v105 = sub_22F10B348(v104, 0);
    v106 = sub_22F11A438(&v243, v105 + 4, v104, v85);
    v107 = v243;

    sub_22F1534EC(v107);
    if (v106 != v104)
    {
      goto LABEL_105;
    }

    v23 = v229;
    v85 = v231;
  }

  v108 = objc_opt_self();
  v109 = sub_22F741160();

  v110 = [v108 areaNodesWithCIDINames:v109 inGraph:v233];

  v111 = [v110 nonBlockedAreaNodes];
  v112 = objc_opt_self();
  v24 = v111;
  v113 = [v112 addressOfArea];
  v114 = [objc_msgSend(v24 graph)];
  swift_unknownObjectRelease();
  v115 = [v114 concreteGraph];

  if (v115)
  {
    v116 = [v24 elementIdentifiers];
    v117 = [v115 adjacencyWithSources:v116 relation:v113];

    v4 = 0.45;
    sub_22F741690();
    v208 = 0;
    v223 = v117;
    v224 = v8;
    v118 = *(v85 + 16);
    v218 = v24;
    v225 = v115;
    if (!v118)
    {
      goto LABEL_61;
    }

    v119 = sub_22F10B348(v118, 0);
    v120 = sub_22F11A438(&v243, v119 + 4, v118, v85);
    v121 = v243;

    sub_22F1534EC(v121);
    v8 = &selRef_floatVector;
    if (v120 == v118)
    {
      v23 = v229;
      v24 = v218;
      goto LABEL_62;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    sub_22F7420C0();
    __break(1u);
  }

LABEL_108:
  sub_22F741D40();
  __break(1u);
LABEL_109:

  __break(1u);
}

uint64_t sub_22F155A20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22F155A68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_22F155AB4(uint64_t a1)
{
  v25 = a1;
  v2 = sub_22F73F7C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = *(v1 + 8);
  v10 = [objc_opt_self() currentLocale];
  sub_22F73F740();

  sub_22F120634(0, &qword_2810A8F30, off_27887AFA8);
  v12 = [swift_getObjCClassFromMetadata(v11) nodesInGraph_];
  v13 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v23 = @"name";
  v24 = v2;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  *(v16 + v15) = v25;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22F15A5A8;
  *(v17 + 24) = v16;
  aBlock[4] = sub_22F15A678;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2136B4;
  aBlock[3] = &block_descriptor_68;
  v18 = _Block_copy(aBlock);
  v19 = v23;

  v20 = v13;

  [v12 enumerateStringPropertyValuesForKey:v19 withBlock:v18];
  _Block_release(v18);

  (*(v3 + 8))(v8, v24);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F155DF0(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0F58, &qword_22F771310);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v120 = &v100 - v9;
  v127 = sub_22F740410();
  v10 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v117 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MomentGroundedLocation(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NamedGroundedLocation(0);
  v124 = *(v15 - 8);
  v125 = v15;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v123 = &v100 - v17;
  v18 = *(a2 + 8);
  v122 = *a2;
  v121 = v18;
  v19 = a3[1];
  v113 = *a3;
  v112 = v19;
  v20 = a4[1];
  v111 = *a4;
  v110 = v20;
  v21 = a1;
  v116 = *v4;
  v23 = v22;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v115 = *MEMORY[0x277D3C360];
  v114 = (v10 + 104);
  v128 = &v137;
  v101 = (v10 + 16);
  v100 = (v10 + 8);
  v28 = (v25 + 63) >> 6;
  v29 = v24;
  v30 = v14;

  v31 = 0;
  v129 = MEMORY[0x277D84F90];
  v109 = v21;
  v106 = v12;
  v105 = v30;
  v104 = v23;
  v103 = v29;
  v102 = v28;
  while (1)
  {
    if (v27)
    {
      goto LABEL_11;
    }

    do
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_48;
      }

      if (v33 >= v28)
      {

        v98 = sub_22F160E38(v129);

        return v98;
      }

      v27 = *(v29 + 8 * v33);
      ++v31;
    }

    while (!v27);
    v31 = v33;
LABEL_11:
    v131 = v27;
    v34 = __clz(__rbit64(v27)) | (v31 << 6);
    v35 = v123;
    sub_22F15A1F8(*(v21 + 48) + *(v124 + 72) * v34, v123, type metadata accessor for NamedGroundedLocation);
    sub_22F15A324(v35, v23);
    v130 = objc_autoreleasePoolPush();
    v36 = v23[1];
    v126 = *v23;
    sub_22F15A1F8(v23 + *(v125 + 20), v30, type metadata accessor for MomentGroundedLocation);
    if (*(v30 + *(v12 + 32)) != 4)
    {
      v32 = v131;
      goto LABEL_5;
    }

    v119 = v31;
    v37 = *v30;
    v38 = objc_allocWithZone(PGGraphNamedLocationNodeCollection);

    v39 = [v122 sources];
    v40 = [v38 initWithGraph:v121 elementIdentifiers:v39];

    v41 = [v40 array];
    sub_22F120634(0, &qword_2810A9020, off_27887B138);
    v42 = sub_22F741180();

    if (v42 >> 62)
    {
      v43 = sub_22F741A00();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v118 = v36;
    if (v43)
    {
      v44 = 0;
      v133 = v42 & 0xFFFFFFFFFFFFFF8;
      v134 = v42 & 0xC000000000000001;
      v45 = MEMORY[0x277D84F98];
      v132 = v42;
      while (1)
      {
        if (v134)
        {
          v48 = MEMORY[0x2319016F0](v44, v42);
        }

        else
        {
          if (v44 >= *(v133 + 16))
          {
            goto LABEL_46;
          }

          v48 = *(v42 + 8 * v44 + 32);
        }

        v49 = v48;
        v50 = v44 + 1;
        if (__OFADD__(v44, 1))
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
          goto LABEL_51;
        }

        v51 = v43;
        v52 = v37;
        v53 = [v48 identifier];
        v54 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v45;
        v57 = sub_22F122B68(v53);
        v58 = v45[2];
        v59 = (v56 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_47;
        }

        v61 = v56;
        if (v45[3] >= v60)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v45 = aBlock;
            if (v56)
            {
              goto LABEL_16;
            }
          }

          else
          {
            sub_22F13402C();
            v45 = aBlock;
            if (v61)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          sub_22F125450(v60, isUniquelyReferenced_nonNull_native);
          v62 = sub_22F122B68(v53);
          if ((v61 & 1) != (v63 & 1))
          {
            goto LABEL_53;
          }

          v57 = v62;
          v45 = aBlock;
          if (v61)
          {
LABEL_16:
            v46 = v45[7];
            v47 = *(v46 + 8 * v57);
            *(v46 + 8 * v57) = v54;

            goto LABEL_17;
          }
        }

        v45[(v57 >> 6) + 8] |= 1 << v57;
        *(v45[6] + 8 * v57) = v53;
        *(v45[7] + 8 * v57) = v54;

        v64 = v45[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_49;
        }

        v45[2] = v66;
LABEL_17:
        ++v44;
        v43 = v51;
        v37 = v52;
        v42 = v132;
        if (v50 == v51)
        {
          goto LABEL_35;
        }
      }
    }

    v45 = MEMORY[0x277D84F98];
LABEL_35:

    v67 = v117;
    v68 = (*v114)(v117, v115, v127);
    MEMORY[0x28223BE20](v68);
    *(&v100 - 6) = v37;
    *(&v100 - 5) = v45;
    *(&v100 - 4) = v67;
    *(&v100 - 3) = v116;
    v69 = swift_allocObject();
    v69[2] = sub_22F15A97C;
    v69[3] = &v100 - 8;
    v70 = v122;
    v71 = v37;
    v72 = v121;
    v69[4] = v122;
    v69[5] = v72;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_22F15A980;
    *(v73 + 24) = v69;
    v139 = sub_22F15A9A4;
    v140 = v73;
    aBlock = MEMORY[0x277D85DD0];
    v136 = 1107296256;
    v137 = sub_22F107F34;
    v138 = &block_descriptor_35;
    v74 = _Block_copy(&aBlock);
    v75 = v70;
    swift_unknownObjectRetain();

    [v75 enumerateTargetsBySourceWith_];
    _Block_release(v74);
    LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

    if (v74)
    {
      goto LABEL_50;
    }

    MEMORY[0x28223BE20](v76);
    *(&v100 - 2) = v71;
    *(&v100 - 1) = v67;
    v77 = swift_allocObject();
    v77[2] = sub_22F15A9A8;
    v77[3] = &v100 - 4;
    v78 = v113;
    v79 = v112;
    v77[4] = v113;
    v77[5] = v79;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_22F15A984;
    *(v80 + 24) = v77;
    v139 = sub_22F15A9A4;
    v140 = v80;
    aBlock = MEMORY[0x277D85DD0];
    v136 = 1107296256;
    v137 = sub_22F107F34;
    v138 = &block_descriptor_47;
    v81 = _Block_copy(&aBlock);
    v82 = v78;
    swift_unknownObjectRetain();

    [v82 enumerateTargetsBySourceWith_];
    _Block_release(v81);
    LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

    if (v81)
    {
      break;
    }

    MEMORY[0x28223BE20](v83);
    *(&v100 - 2) = v71;
    *(&v100 - 1) = v67;
    v84 = swift_allocObject();
    v84[2] = sub_22F15A9AC;
    v84[3] = &v100 - 4;
    v85 = v111;
    v86 = v110;
    v84[4] = v111;
    v84[5] = v86;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_22F15A988;
    *(v87 + 24) = v84;
    v139 = sub_22F15A9A4;
    v140 = v87;
    aBlock = MEMORY[0x277D85DD0];
    v136 = 1107296256;
    v137 = sub_22F107F34;
    v138 = &block_descriptor_59;
    v88 = _Block_copy(&aBlock);
    v89 = v85;
    swift_unknownObjectRetain();

    [v89 enumerateTargetsBySourceWith_];
    _Block_release(v88);
    LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

    if (v88)
    {
      goto LABEL_52;
    }

    v12 = v106;
    v30 = v105;
    v90 = *(v105 + *(v106 + 36));
    v91 = v120;
    v92 = (v120 + *(v108 + 48));
    v93 = *(v108 + 64);
    (*v101)(v120, v67, v127);
    v94 = v118;
    *v92 = v126;
    v92[1] = v94;
    *(v91 + v93) = v90;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v129 = sub_22F13E184(0, v129[2] + 1, 1, v129);
    }

    v29 = v103;
    v28 = v102;
    v32 = v131;
    v31 = v119;
    v96 = v129[2];
    v95 = v129[3];
    if (v96 >= v95 >> 1)
    {
      v129 = sub_22F13E184((v95 > 1), v96 + 1, 1, v129);
    }

    (*v100)(v67, v127);
    v97 = v129;
    v129[2] = v96 + 1;
    sub_22F1207AC(v120, v97 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v96, &qword_27DAB0F58, &qword_22F771310);
    v21 = v109;
    v23 = v104;
LABEL_5:
    v27 = (v32 - 1) & v32;
    sub_22F15A260(v30, type metadata accessor for MomentGroundedLocation);
    objc_autoreleasePoolPop(v130);
    sub_22F15A260(v23, type metadata accessor for NamedGroundedLocation);
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  type metadata accessor for KGElementIdentifier(0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F156B1C(uint64_t a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    v22 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = &v21 - v6;
    result = sub_22F15A480(v22, &v21 - v6);
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
LABEL_3:
    v21 = v10;
    v11 = v9;
    while (v11 < v7)
    {
      result = sub_22F15A480(v22 + *(v2 + 72) * v11, v4);
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_18;
      }

      v12 = &v4[*(v23 + 48)];
      v13 = *v12;
      v14 = *(v12 + 1);
      sub_22F740410();
      sub_22F15A438(&qword_27DAB1428, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B8]);
      sub_22F7410F0();
      sub_22F7410F0();
      if (v26 == v25)
      {

        sub_22F15A4F0(v4);
        v15 = v21;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_22F13E1A8(0, *(v15 + 16) + 1, 1, v15);
          v15 = result;
        }

        v16 = v15;
        v17 = *(v15 + 16);
        v18 = v16;
        v19 = *(v16 + 24);
        if (v17 >= v19 >> 1)
        {
          result = sub_22F13E1A8((v19 > 1), v17 + 1, 1, v18);
          v18 = result;
        }

        *(v18 + 16) = v17 + 1;
        v20 = v18 + 16 * v17;
        v10 = v18;
        *(v20 + 32) = v13;
        *(v20 + 40) = v14;
        if (v9 == v7)
        {
          goto LABEL_14;
        }

        goto LABEL_3;
      }

      result = sub_22F15A4F0(v4);
      ++v11;
      if (v9 == v7)
      {
        v10 = v21;
LABEL_14:
        sub_22F15A4F0(v24);
        return v10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

char *sub_22F156DBC(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void **a5)
{
  v174 = a2;
  v168 = sub_22F740410();
  v10 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v146 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v142 = &v141 - v13;
  MEMORY[0x28223BE20](v14);
  v151 = &v141 - v15;
  MEMORY[0x28223BE20](v16);
  v170 = &v141 - v17;
  v166 = type metadata accessor for MomentGroundedLocation(0);
  MEMORY[0x28223BE20](v166);
  v19 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for NamedGroundedLocation(0);
  v172 = *(v20 - 8);
  v173 = v20;
  MEMORY[0x28223BE20](v20);
  v177 = (&v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v171 = &v141 - v23;
  v24 = *(a3 + 8);
  v165 = *a3;
  v164 = v24;
  v25 = a4[1];
  v156 = *a4;
  v155 = v25;
  v26 = v19;
  v27 = a5[1];
  v154 = *a5;
  v153 = v27;
  v158 = *v5;
  v28 = a1 + 56;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 56);
  v32 = (v29 + 63) >> 6;
  v163 = *MEMORY[0x277D3C360];
  v162 = (v10 + 104);
  v157 = &v184;
  v161 = (v10 + 8);
  v145 = *MEMORY[0x277D3C378];
  v143 = *MEMORY[0x277D3C390];
  v147 = (v10 + 16);

  v33 = 0;
  v178 = 0;
  v160 = MEMORY[0x277D84F90];
  *&v34 = 136643075;
  v144 = v34;
  *&v34 = 136315394;
  v141 = v34;
  v152 = a1;
  v150 = v26;
  v149 = a1 + 56;
  v148 = v32;
  if (v31)
  {
    while (1)
    {
LABEL_8:
      v175 = v33;
      v176 = v31;
      v36 = __clz(__rbit64(v31)) | (v33 << 6);
      v37 = v171;
      sub_22F15A1F8(*(a1 + 48) + *(v172 + 72) * v36, v171, type metadata accessor for NamedGroundedLocation);
      v38 = v37;
      v39 = v177;
      sub_22F15A324(v38, v177);
      v40 = objc_autoreleasePoolPush();
      v41 = *v39;
      v42 = v39[1];
      v43 = sub_22F15A1F8(v39 + *(v173 + 20), v26, type metadata accessor for MomentGroundedLocation);
      v169 = v41;
      aBlock = v41;
      v183 = v42;
      MEMORY[0x28223BE20](v43);
      *(&v141 - 2) = &aBlock;

      v44 = v178;
      v45 = sub_22F1C0E04(sub_22F15A388, (&v141 - 2), v174);
      v178 = v44;
      if ((v45 & 1) != 0 || (v167 = v42, *(v26 + *(v166 + 32)) == 4))
      {

        v46 = v176;
        goto LABEL_46;
      }

      v159 = v40;
      v47 = *v26;
      v48 = objc_allocWithZone(PGGraphNamedLocationNodeCollection);
      v49 = [v165 sources];
      v50 = [v48 initWithGraph:v164 elementIdentifiers:v49];

      v51 = [v50 array];
      sub_22F120634(0, &qword_2810A9020, off_27887B138);
      v52 = sub_22F741180();

      if (!(v52 >> 62))
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v53)
        {
          break;
        }

        goto LABEL_33;
      }

      v53 = sub_22F741A00();
      if (v53)
      {
        break;
      }

LABEL_33:
      v55 = MEMORY[0x277D84F98];
LABEL_34:

      v75 = v170;
      v181 = *v162;
      v76 = (v181)(v170, v163, v168);
      MEMORY[0x28223BE20](v76);
      *(&v141 - 6) = v47;
      *(&v141 - 5) = v55;
      *(&v141 - 4) = v75;
      *(&v141 - 24) = v158;
      v77 = swift_allocObject();
      v77[2] = sub_22F15A3A8;
      v77[3] = &v141 - 4;
      v78 = v165;
      v79 = v164;
      v77[4] = v165;
      v77[5] = v79;
      v80 = swift_allocObject();
      *(v80 + 16) = sub_22F15A3AC;
      *(v80 + 24) = v77;
      v186 = sub_22F15A3B8;
      v187 = v80;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_22F107F34;
      v185 = &block_descriptor;
      v81 = _Block_copy(&aBlock);
      v82 = v78;
      swift_unknownObjectRetain();

      [v82 enumerateTargetsBySourceWith_];
      _Block_release(v81);
      LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

      if (v81)
      {
        goto LABEL_64;
      }

      MEMORY[0x28223BE20](v83);
      v84 = v170;
      *(&v141 - 2) = v47;
      *(&v141 - 1) = v84;
      v85 = swift_allocObject();
      v85[2] = sub_22F15A3D8;
      v85[3] = &v141 - 2;
      v86 = v156;
      v87 = v155;
      v85[4] = v156;
      v85[5] = v87;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_22F15A3FC;
      *(v88 + 24) = v85;
      v186 = sub_22F15A9A4;
      v187 = v88;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_22F107F34;
      v185 = &block_descriptor_13;
      v89 = _Block_copy(&aBlock);
      v90 = v86;
      swift_unknownObjectRetain();

      [v90 enumerateTargetsBySourceWith_];
      _Block_release(v89);
      LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

      if (v89)
      {
        goto LABEL_65;
      }

      MEMORY[0x28223BE20](v91);
      v92 = v170;
      *(&v141 - 2) = v47;
      *(&v141 - 1) = v92;
      v93 = swift_allocObject();
      v93[2] = sub_22F15A408;
      v93[3] = &v141 - 2;
      v94 = v154;
      v95 = v153;
      v93[4] = v154;
      v93[5] = v95;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_22F15A42C;
      *(v96 + 24) = v93;
      v186 = sub_22F15A9A4;
      v187 = v96;
      aBlock = MEMORY[0x277D85DD0];
      v183 = 1107296256;
      v184 = sub_22F107F34;
      v185 = &block_descriptor_23;
      v97 = _Block_copy(&aBlock);
      v98 = v94;
      swift_unknownObjectRetain();

      [v98 enumerateTargetsBySourceWith_];
      _Block_release(v97);
      LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

      if (v97)
      {
        goto LABEL_66;
      }

      v99 = v151;
      v100 = v168;
      v101 = v181;
      v181(v151, v163, v168);
      sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B0]);
      v102 = v170;
      v103 = sub_22F740DE0();
      v104 = *v161;
      (*v161)(v99, v100);
      if (v103 & 1) != 0 || (v101(v99, v145, v100), v105 = sub_22F740DE0(), v104(v99, v100), (v105) || (v101(v99, v143, v100), v106 = sub_22F740DE0(), v104(v99, v100), (v106))
      {
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v107 = sub_22F740B90();
        __swift_project_value_buffer(v107, qword_2810B4CE0);
        v108 = v146;
        (*v147)(v146, v102, v100);
        v109 = v167;

        v110 = v100;
        v111 = sub_22F740B70();
        v112 = sub_22F7415F0();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          aBlock = v114;
          *v113 = v144;
          v115 = sub_22F145F20(v169, v109, &aBlock);

          *(v113 + 4) = v115;
          *(v113 + 12) = 2080;
          sub_22F15A438(&qword_27DAB1418, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3C0]);
          v116 = sub_22F742010();
          v118 = v117;
          v104(v108, v168);
          v119 = sub_22F145F20(v116, v118, &aBlock);

          *(v113 + 14) = v119;
          _os_log_impl(&dword_22F0FC000, v111, v112, "Filtering out grounded location with name '%{sensitive}s' because it's a %s", v113, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v114, -1, -1);
          MEMORY[0x2319033A0](v113, -1, -1);

          v104(v102, v168);
        }

        else
        {

          v104(v108, v110);
          v104(v102, v110);
        }

        a1 = v152;
        v26 = v150;
        v28 = v149;
        v32 = v148;
        v46 = v176;
        v40 = v159;
      }

      else
      {
        v120 = v142;
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v121 = sub_22F740B90();
        __swift_project_value_buffer(v121, qword_2810B4CE0);
        (*v147)(v120, v102, v100);
        v122 = v167;

        v123 = v100;
        v124 = sub_22F740B70();
        v125 = sub_22F7415F0();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          aBlock = v127;
          *v126 = v141;
          *(v126 + 4) = sub_22F145F20(v169, v122, &aBlock);
          *(v126 + 12) = 2080;
          sub_22F15A438(&qword_27DAB1418, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3C0]);
          v128 = sub_22F742010();
          v129 = v120;
          v131 = v130;
          v104(v129, v168);
          v132 = sub_22F145F20(v128, v131, &aBlock);

          *(v126 + 14) = v132;
          _os_log_impl(&dword_22F0FC000, v124, v125, "%s matches with %s level", v126, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v127, -1, -1);
          MEMORY[0x2319033A0](v126, -1, -1);
        }

        else
        {

          v104(v120, v123);
        }

        a1 = v152;
        v28 = v149;
        v32 = v148;
        v40 = v159;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = v170;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v160 = sub_22F13E1A8(0, *(v160 + 2) + 1, 1, v160);
        }

        v136 = *(v160 + 2);
        v135 = *(v160 + 3);
        if (v136 >= v135 >> 1)
        {
          v160 = sub_22F13E1A8((v135 > 1), v136 + 1, 1, v160);
        }

        v104(v134, v168);
        v137 = v160;
        *(v160 + 2) = v136 + 1;
        v138 = &v137[16 * v136];
        v139 = v167;
        *(v138 + 4) = v169;
        *(v138 + 5) = v139;
        v26 = v150;
        v46 = v176;
      }

LABEL_46:
      v33 = v175;
      v31 = (v46 - 1) & v46;
      sub_22F15A260(v26, type metadata accessor for MomentGroundedLocation);
      objc_autoreleasePoolPop(v40);
      sub_22F15A260(v177, type metadata accessor for NamedGroundedLocation);
      if (!v31)
      {
        goto LABEL_4;
      }
    }

    v54 = 0;
    v180 = v52 & 0xFFFFFFFFFFFFFF8;
    v181 = (v52 & 0xC000000000000001);
    v55 = MEMORY[0x277D84F98];
    v179 = v47;
    while (1)
    {
      if (v181)
      {
        v58 = MEMORY[0x2319016F0](v54, v52);
      }

      else
      {
        if (v54 >= *(v180 + 16))
        {
          goto LABEL_61;
        }

        v58 = *(v52 + 8 * v54 + 32);
      }

      v59 = v58;
      v60 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_60;
      }

      v61 = [v58 identifier];
      v62 = v59;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v55;
      v65 = sub_22F122B68(v61);
      v66 = v55[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_62;
      }

      v69 = v64;
      if (v55[3] >= v68)
      {
        if (v63)
        {
          v55 = aBlock;
          if (v64)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_22F13402C();
          v55 = aBlock;
          if (v69)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_22F125450(v68, v63);
        v70 = sub_22F122B68(v61);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_67;
        }

        v65 = v70;
        v55 = aBlock;
        if (v69)
        {
LABEL_14:
          v56 = v55[7];
          v57 = *(v56 + 8 * v65);
          *(v56 + 8 * v65) = v62;

          goto LABEL_15;
        }
      }

      v55[(v65 >> 6) + 8] |= 1 << v65;
      *(v55[6] + 8 * v65) = v61;
      *(v55[7] + 8 * v65) = v62;

      v72 = v55[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_63;
      }

      v55[2] = v74;
LABEL_15:
      ++v54;
      v47 = v179;
      if (v60 == v53)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_4:
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      return v160;
    }

    v31 = *(v28 + 8 * v35);
    ++v33;
    if (v31)
    {
      v33 = v35;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  type metadata accessor for KGElementIdentifier(0);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

id sub_22F1580F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22F740410();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v32 - v20;
  result = [a2 intersectsCollection_];
  if (result)
  {
    v23 = [a1 elementIdentifiers];
    v24 = [v23 firstElement];

    result = sub_22F741770();
    if (result)
    {
      if (*(a5 + 16))
      {
        result = sub_22F122B68(v24);
        if (v25)
        {
          (*(v12 + 16))(v17, a6, v11);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v26 = MEMORY[0x277D3C398];
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v26 = MEMORY[0x277D3C380];
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v26 = MEMORY[0x277D3C368];
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v26 = MEMORY[0x277D3C358];
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v26 = MEMORY[0x277D3C350];
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v26 = MEMORY[0x277D3C388];
                    }

                    else
                    {
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v26 = MEMORY[0x277D3C370];
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v26 = MEMORY[0x277D3C390];
                        }

                        else
                        {
                          objc_opt_self();
                          v27 = swift_dynamicCastObjCClass();
                          v26 = MEMORY[0x277D3C378];
                          if (!v27)
                          {
                            v26 = MEMORY[0x277D3C360];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          (*(v12 + 104))(v14, *v26, v11);
          sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
          v28 = sub_22F740DC0();
          v29 = (v28 & 1) == 0;
          if (v28)
          {
            v30 = v17;
          }

          else
          {
            v30 = v14;
          }

          if (v29)
          {
            v31 = v17;
          }

          else
          {
            v31 = v14;
          }

          (*(v12 + 8))(v30, v11);
          (*(v12 + 32))(v21, v31, v11);
          return (*(v12 + 40))(a6, v21, v11);
        }
      }
    }
  }

  return result;
}

id sub_22F1584D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v10 = sub_22F740410();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v25 - v19;
  result = [a2 intersectsCollection_];
  if (result)
  {
    (*(v11 + 16))(v16, a5, v10);
    (*(v11 + 104))(v13, *a6, v10);
    sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
    v22 = sub_22F740DC0();
    v23 = (v22 & 1) == 0;
    if (v22)
    {
      v24 = v16;
    }

    else
    {
      v24 = v13;
    }

    if (v23)
    {
      v13 = v16;
    }

    (*(v11 + 8))(v24, v10);
    (*(v11 + 32))(v20, v13, v10);
    return (*(v11 + 40))(a5, v20, v10);
  }

  return result;
}

id sub_22F1586DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  result = sub_22F73F720();
  if (v11)
  {
    v12 = sub_22F740EA0();
    v14 = v13;

    v15 = sub_22F15E910(v12, v14, a6);

    if (v15)
    {

      return [a7 addIdentifier_];
    }
  }

  return result;
}

void sub_22F158794(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6490(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1588C0(v5);
  *a1 = v3;
}

uint64_t sub_22F158888(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F1588C0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F158CF0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F158A04(0, v2, 1, a1);
  }
}

void sub_22F158A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    sub_22F740410();
    v17 = *(v8 + 72);
    v18 = v16 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v20;
    v30 = v19;
    v21 = v19;
    v22 = v18;
    while (1)
    {
      sub_22F15A480(v20, v15);
      sub_22F15A480(v22, v12);
      sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B0]);
      if (sub_22F740DE0())
      {
        v23 = *&v12[*(v36 + 64)] < *&v15[*(v36 + 64)];
      }

      else
      {
        sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
        v23 = sub_22F740DB0();
      }

      sub_22F15A4F0(v12);
      sub_22F15A4F0(v15);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v19 = v30 - 1;
        v20 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v24 = v35;
      sub_22F1207AC(v20, v35, &qword_27DAB13A0, &unk_22F7718B0);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F1207AC(v24, v22, &qword_27DAB13A0, &unk_22F7718B0);
      v22 += v33;
      v20 += v33;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F158CF0(int64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v6 = v5;
  v123 = a1;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  v132 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v127 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v117 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v117 - v16;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v120 = &v117 - v20;
  MEMORY[0x28223BE20](v21);
  v119 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v118 = &v117 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v123;
    if (!*v123)
    {
      goto LABEL_142;
    }

    v4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v111 = v4;
    }

    else
    {
LABEL_136:
      v111 = sub_22F3F5F98(v4);
    }

    v140 = v111;
    v4 = *(v111 + 2);
    if (v4 >= 2)
    {
      do
      {
        v112 = *a3;
        if (!*a3)
        {
          goto LABEL_140;
        }

        v113 = a3;
        a3 = *&v111[16 * v4];
        v114 = v111;
        v115 = *&v111[16 * v4 + 24];
        sub_22F15985C(v112 + *(v132 + 72) * a3, v112 + *(v132 + 72) * *&v111[16 * v4 + 16], v112 + *(v132 + 72) * v115, a4);
        if (v6)
        {
          break;
        }

        if (v115 < a3)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_22F3F5F98(v114);
        }

        if (v4 - 2 >= *(v114 + 2))
        {
          goto LABEL_130;
        }

        v116 = &v114[16 * v4];
        *v116 = a3;
        *(v116 + 1) = v115;
        v140 = v114;
        sub_22F3F5F0C(v4 - 1);
        v111 = v140;
        v4 = *(v140 + 2);
        a3 = v113;
      }

      while (v4 > 1);
    }

LABEL_114:

    return;
  }

  v128 = v24;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v125 = a3;
  v122 = a4;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v133 = v28;
    if (v27 + 1 >= v26)
    {
      goto LABEL_30;
    }

    v130 = v26;
    v31 = *a3;
    v32 = *(v132 + 72);
    v33 = *a3 + v32 * v30;
    a3 = v118;
    sub_22F15A480(v33, v118);
    v124 = v29;
    v134 = v32;
    v34 = v31 + v32 * v29;
    v35 = v119;
    sub_22F15A480(v34, v119);
    v4 = sub_22F740410();
    v129 = sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B0]);
    v36 = sub_22F740DE0();
    v37 = v30;
    v121 = v6;
    if (v36)
    {
      LODWORD(v131) = *(v35 + *(v139 + 64)) < *(a3 + *(v139 + 64));
    }

    else
    {
      sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
      LODWORD(v131) = sub_22F740DB0();
    }

    v38 = v120;
    sub_22F15A4F0(v35);
    sub_22F15A4F0(a3);
    v39 = v124 + 2;
    v40 = v134 * (v124 + 2);
    v41 = v31 + v40;
    v42 = v134 * v37;
    v43 = v31 + v134 * v37;
    do
    {
      v44 = v39;
      v45 = v37;
      v6 = v42;
      v46 = v40;
      if (v39 >= v130)
      {
        break;
      }

      v136 = v39;
      v137 = v37;
      v135 = v40;
      sub_22F15A480(v41, v38);
      v47 = v128;
      sub_22F15A480(v43, v128);
      if (sub_22F740DE0())
      {
        a3 = *(v47 + *(v139 + 64)) < *(v38 + *(v139 + 64));
      }

      else
      {
        sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
        a3 = sub_22F740DB0();
      }

      sub_22F15A4F0(v47);
      sub_22F15A4F0(v38);
      v44 = v136;
      v45 = v137;
      v39 = v136 + 1;
      v46 = v135;
      v41 += v134;
      v43 += v134;
      v37 = v137 + 1;
      v42 = v6 + v134;
      v40 = v135 + v134;
    }

    while ((v131 & 1) == (a3 & 1));
    if ((v131 & 1) == 0)
    {
      goto LABEL_28;
    }

    v29 = v124;
    a4 = v122;
    if (v44 < v124)
    {
      goto LABEL_133;
    }

    if (v124 < v44)
    {
      v4 = v124 * v134;
      do
      {
        if (v29 != v45)
        {
          v137 = v45;
          v49 = *v125;
          if (!*v125)
          {
            goto LABEL_139;
          }

          v50 = v46;
          v51 = v44;
          sub_22F1207AC(v49 + v4, v127, &qword_27DAB13A0, &unk_22F7718B0);
          if (v4 < v6 || v49 + v4 >= v49 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v4 != v6)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22F1207AC(v127, v49 + v6, &qword_27DAB13A0, &unk_22F7718B0);
          v44 = v51;
          v46 = v50;
          v45 = v137;
        }

        ++v29;
        v6 -= v134;
        v46 -= v134;
        v4 += v134;
      }

      while (v29 < v45--);
LABEL_28:
      v30 = v44;
      v6 = v121;
      a4 = v122;
      v29 = v124;
      a3 = v125;
      goto LABEL_30;
    }

    v30 = v44;
    v6 = v121;
    a3 = v125;
LABEL_30:
    v52 = *(a3 + 8);
    v135 = v30;
    if (v30 < v52)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_132;
      }

      if (v30 - v29 < a4)
      {
        if (__OFADD__(v29, a4))
        {
          goto LABEL_134;
        }

        if (v29 + a4 >= v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = v29 + a4;
        }

        if (v53 < v29)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        a4 = v135;
        if (v135 != v53)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v135 < v29)
    {
      goto LABEL_131;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = v133;
    }

    else
    {
      v28 = sub_22F13D970(0, *(v133 + 2) + 1, 1, v133);
    }

    v66 = *(v28 + 2);
    v65 = *(v28 + 3);
    v4 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v28 = sub_22F13D970((v65 > 1), v66 + 1, 1, v28);
    }

    *(v28 + 2) = v4;
    v67 = &v28[16 * v66];
    v68 = v135;
    *(v67 + 4) = v29;
    *(v67 + 5) = v68;
    v137 = *v123;
    if (!v137)
    {
      goto LABEL_141;
    }

    if (v66)
    {
      while (1)
      {
        a4 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v69 = *(v28 + 4);
          v70 = *(v28 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_71:
          if (v72)
          {
            goto LABEL_120;
          }

          v85 = &v28[16 * v4];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_123;
          }

          v91 = &v28[16 * a4 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_127;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              a4 = v4 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v95 = &v28[16 * v4];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_85:
        if (v90)
        {
          goto LABEL_122;
        }

        v98 = &v28[16 * a4];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_125;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_92:
        v106 = a4 - 1;
        if (a4 - 1 >= v4)
        {
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

        v107 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v108 = a3;
        v109 = v28;
        v4 = *&v28[16 * v106 + 32];
        a3 = *&v28[16 * a4 + 40];
        sub_22F15985C(v107 + *(v132 + 72) * v4, v107 + *(v132 + 72) * *&v28[16 * a4 + 32], v107 + *(v132 + 72) * a3, v137);
        if (v6)
        {
          goto LABEL_114;
        }

        if (a3 < v4)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_22F3F5F98(v109);
        }

        if (v106 >= *(v109 + 2))
        {
          goto LABEL_117;
        }

        v110 = &v109[16 * v106];
        *(v110 + 4) = v4;
        *(v110 + 5) = a3;
        v140 = v109;
        sub_22F3F5F0C(a4);
        v28 = v140;
        v4 = *(v140 + 2);
        a3 = v108;
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v28[16 * v4 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_118;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_119;
      }

      v80 = &v28[16 * v4];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_121;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_124;
      }

      if (v84 >= v76)
      {
        v102 = &v28[16 * a4 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_128;
        }

        if (v71 < v105)
        {
          a4 = v4 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v26 = *(a3 + 8);
    v27 = v135;
    a4 = v122;
    if (v135 >= v26)
    {
      goto LABEL_103;
    }
  }

  v121 = v6;
  v54 = *a3;
  v4 = sub_22F740410();
  v55 = *(v132 + 72);
  v56 = v54 + v55 * (a4 - 1);
  v136 = -v55;
  v137 = v54;
  v124 = v29;
  v57 = v29 - a4;
  v126 = v55;
  v58 = v54 + a4 * v55;
  v129 = v53;
LABEL_41:
  v134 = v56;
  v135 = a4;
  v130 = v58;
  v131 = v57;
  v59 = v58;
  v60 = v57;
  v61 = v56;
  while (1)
  {
    sub_22F15A480(v59, v17);
    sub_22F15A480(v61, v14);
    sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B0]);
    if (sub_22F740DE0())
    {
      v62 = *&v14[*(v139 + 64)] < *&v17[*(v139 + 64)];
    }

    else
    {
      sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
      v62 = sub_22F740DB0();
    }

    sub_22F15A4F0(v14);
    sub_22F15A4F0(v17);
    if ((v62 & 1) == 0)
    {
LABEL_40:
      a4 = v135 + 1;
      v56 = v134 + v126;
      v57 = v131 - 1;
      v58 = v130 + v126;
      if (v135 + 1 != v129)
      {
        goto LABEL_41;
      }

      v135 = v129;
      v6 = v121;
      v29 = v124;
      a3 = v125;
      goto LABEL_51;
    }

    if (!v137)
    {
      break;
    }

    v63 = v138;
    sub_22F1207AC(v59, v138, &qword_27DAB13A0, &unk_22F7718B0);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F1207AC(v63, v61, &qword_27DAB13A0, &unk_22F7718B0);
    v61 += v136;
    v59 += v136;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_40;
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

void sub_22F15985C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_68;
  }

  v19 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v18 != -1)
  {
    v20 = (a2 - a1) / v18;
    v50 = a1;
    v49 = a4;
    v21 = v18;
    if (v20 < v19 / v18)
    {
      v22 = v20 * v18;
      if (a4 < a1 || a1 + v22 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = a4 + v22;
      v48 = a4 + v22;
      if (v22 >= 1 && a2 < a3)
      {
        while (1)
        {
          sub_22F15A480(a2, v16);
          sub_22F15A480(a4, v12);
          sub_22F740410();
          sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B0]);
          if (sub_22F740DE0())
          {
            v26 = *&v12[*(v47 + 64)] < *&v16[*(v47 + 64)];
          }

          else
          {
            sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
            v26 = sub_22F740DB0();
          }

          sub_22F15A4F0(v12);
          sub_22F15A4F0(v16);
          if (v26)
          {
            if (a1 < a2 || a1 >= a2 + v21)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v27 = v21;
            a2 += v21;
            goto LABEL_37;
          }

          if (a1 < a4 || a1 >= a4 + v21)
          {
            break;
          }

          v27 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_35:
            v27 = v21;
          }

          v49 = a4 + v21;
          a4 += v21;
LABEL_37:
          a1 += v27;
          v50 = a1;
          if (a4 >= v24 || a2 >= a3)
          {
            goto LABEL_66;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_35;
      }

      goto LABEL_66;
    }

    v23 = v19 / v18 * v18;
    v45 = v14;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_42:
        v28 = a4 + v23;
        if (v23 >= 1)
        {
          v29 = -v18;
          v30 = v28;
          v43 = a4;
          while (2)
          {
            while (1)
            {
              v41 = v28;
              v31 = a2 + v29;
              v44 = a2;
              while (1)
              {
                if (a2 <= a1)
                {
                  v50 = a2;
                  v48 = v41;
                  goto LABEL_66;
                }

                v33 = a3;
                v42 = v28;
                v34 = v29;
                v35 = v30 + v29;
                v36 = v45;
                sub_22F15A480(v35, v45);
                v37 = v46;
                sub_22F15A480(v31, v46);
                sub_22F740410();
                sub_22F15A438(&qword_27DAB1410, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3B0]);
                if (sub_22F740DE0())
                {
                  v38 = *(v37 + *(v47 + 64)) < *(v36 + *(v47 + 64));
                }

                else
                {
                  sub_22F15A438(&qword_27DAB1420, MEMORY[0x277D3C3A0], MEMORY[0x277D3C3A8]);
                  v38 = sub_22F740DB0();
                }

                v39 = v37;
                a3 = v33 + v34;
                sub_22F15A4F0(v39);
                sub_22F15A4F0(v36);
                if (v38)
                {
                  break;
                }

                v28 = v35;
                if (v33 < v30 || a3 >= v30)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v33 != v30)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v30 = v35;
                a2 = v44;
                v32 = v35 > v43;
                v29 = v34;
                if (!v32)
                {
                  goto LABEL_64;
                }
              }

              a2 = v31;
              if (v33 < v44 || a3 >= v44)
              {
                break;
              }

              v28 = v42;
              v40 = v43;
              v29 = v34;
              if (v33 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              if (v30 <= v40)
              {
                goto LABEL_64;
              }
            }

            swift_arrayInitWithTakeFrontToBack();
            v28 = v42;
            v29 = v34;
            if (v30 > v43)
            {
              continue;
            }

            break;
          }
        }

LABEL_64:
        v50 = a2;
        v48 = v28;
LABEL_66:
        sub_22F3B6658(&v50, &v49, &v48);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v18 = v21;
    goto LABEL_42;
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_22F159E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for MomentGroundedLocation(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NamedGroundedLocation(0);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v32 = v9;
  v29 = v3;
  v41 = MEMORY[0x277D84F90];
  sub_22F1465B8(0, v10, 0);
  v11 = v41;
  v40 = a1 + 56;
  result = sub_22F741980();
  v13 = result;
  v14 = 0;
  v30 = a1 + 64;
  v31 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v40 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v39 = *(a1 + 36);
    v17 = v35;
    sub_22F15A1F8(*(a1 + 48) + *(v36 + 72) * v13, v35, type metadata accessor for MomentGroundedLocation);
    v18 = v32;
    sub_22F15A1F8(v17, v32 + *(v34 + 20), type metadata accessor for MomentGroundedLocation);
    v19 = v38;
    *v18 = v37;
    v18[1] = v19;

    sub_22F15A260(v17, type metadata accessor for MomentGroundedLocation);
    v41 = v11;
    v21 = *(v11 + 16);
    v20 = *(v11 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22F1465B8((v20 > 1), v21 + 1, 1);
      v11 = v41;
    }

    *(v11 + 16) = v21 + 1;
    result = sub_22F15A324(v18, v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21);
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v22 = *(v40 + 8 * v16);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v15 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v16 << 6;
      v25 = v16 + 1;
      v26 = (v30 + 8 * v16);
      while (v25 < (v15 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_22F107D18(v13, v39, 0);
          v15 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v13, v39, 0);
    }

LABEL_4:
    ++v14;
    v13 = v15;
    if (v14 == v31)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22F15A1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F15A260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22F15A2C0()
{
  result = qword_2810A92E0;
  if (!qword_2810A92E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92E0);
  }

  return result;
}

uint64_t sub_22F15A324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NamedGroundedLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F15A438(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F15A480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15A4F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13A0, &unk_22F7718B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_22F15A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_22F73F7C0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22F1586DC(a1, a2, a3, a4, v4 + v10, v12, v13);
}

void sub_22F15A6A8(uint64_t a1)
{
  sub_22F120634(319, &qword_2810A8FB0, off_27887AB98);
  if (v1 <= 0x3F)
  {
    sub_22F120634(319, &qword_2810A8FC8, off_27887B108);
    if (v2 <= 0x3F)
    {
      sub_22F15A79C(319);
      if (v3 <= 0x3F)
      {
        sub_22F73FF10();
        if (v4 <= 0x3F)
        {
          type metadata accessor for PHSearchIndexEntityResultMatchType(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22F15A79C(uint64_t a1)
{
  if (!qword_2810A9268)
  {
    sub_22F73F090();
    sub_22F15A438(&unk_2810AC730, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
    v1 = sub_22F741490();
    if (!v2)
    {
      atomic_store(v1, &qword_2810A9268);
    }
  }
}

uint64_t sub_22F15A858(uint64_t a1)
{
  result = type metadata accessor for MomentGroundedLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_22F15A9B0(uint64_t a1)
{
  v2 = sub_22F741980();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22F15C690(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_22F15AA30(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_22F73F4D0();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_22F15AAB8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22F7419B0();
    v5 = v4;
    v6 = sub_22F741A60();
    v8 = v7;
    v9 = MEMORY[0x231901580](v3, v5, v6, v7);
    sub_22F107D18(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_22F107D18(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_22F741980();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22F15C46C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_22F107D18(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_22F15ABD4(uint64_t a1)
{
  v2 = sub_22F741980();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_22F15CC34(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_22F15AC50(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22F741C90();
    v5 = v4;
    v6 = sub_22F741D30();
    v8 = v7;
    v9 = MEMORY[0x231901860](v3, v5, v6, v7);
    sub_22F107D18(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_22F107D18(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_22F741980();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22F15C724(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_22F107D18(v3, v5, v2 != 0);
  return v12;
}

uint64_t CachedEventFeatures.identifier.getter()
{
  v1 = *v0;

  return v1;
}

PhotosGraph::CachedEventFeatures __swiftcall CachedEventFeatures.init(identifier:featureVectorByName:)(Swift::String identifier, Swift::OpaquePointer featureVectorByName)
{
  *v2 = identifier;
  *(v2 + 16) = featureVectorByName;
  result.identifier = identifier;
  result.featureVectorByName = featureVectorByName;
  return result;
}

{
  v37 = v2;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1450, &qword_22F7719D0);
  v4 = sub_22F741DC0();
  v7 = v4;
  v8 = 0;
  v9 = *(featureVectorByName._rawValue + 8);
  v39 = featureVectorByName._rawValue + 64;
  v10 = 1 << *(featureVectorByName._rawValue + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  rawValue = featureVectorByName._rawValue;
  v43 = v4 + 64;
  v40 = v13;
  v41 = v4;
  if ((v11 & v9) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = (*(featureVectorByName._rawValue + 6) + 16 * v17);
      v19 = v18[1];
      v46 = *v18;
      v20 = *(*(featureVectorByName._rawValue + 7) + 8 * v17);
      if (v20 >> 62)
      {
        v31 = v18[1];
        v21 = sub_22F741A00();
        v19 = v31;
        if (v21)
        {
LABEL_12:
          v45 = v12;
          v47 = MEMORY[0x277D84F90];
          v44 = v19;

          v4 = sub_22F1464F4(0, v21 & ~(v21 >> 63), 0);
          if (v21 < 0)
          {
            goto LABEL_29;
          }

          v22 = 0;
          v23 = v47;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x2319016F0](v22, v20);
            }

            else
            {
              v24 = *(v20 + 8 * v22 + 32);
            }

            v25 = v24;
            [v24 floatValue];
            v27 = v26;

            v29 = *(v47 + 16);
            v28 = *(v47 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_22F1464F4((v28 > 1), v29 + 1, 1);
            }

            ++v22;
            *(v47 + 16) = v29 + 1;
            *(v47 + 4 * v29 + 32) = v27;
          }

          while (v21 != v22);

          v7 = v41;
          featureVectorByName._rawValue = rawValue;
          v13 = v40;
          v30 = v44;
          v12 = v45;
          goto LABEL_23;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_12;
        }
      }

      v30 = v4;
      v23 = MEMORY[0x277D84F90];
LABEL_23:
      *(v43 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v32 = (v7[6] + 16 * v17);
      *v32 = v46;
      v32[1] = v30;
      *(v7[7] + 8 * v17) = v23;
      v33 = v7[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      v7[2] = v35;
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

      *v37 = countAndFlagsBits;
      v37[1] = object;
      v37[2] = v7;
      goto LABEL_30;
    }

    v16 = *&v39[8 * v8];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result.featureVectorByName._rawValue = v6;
  result.identifier._object = v5;
  result.identifier._countAndFlagsBits = v4;
  return result;
}

void CachedEventFeatures.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22F15C30C(a1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1458, &qword_22F7719D8);
  sub_22F15C91C(&qword_27DAB1460, sub_22F15C370, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v5 = sub_22F740D00();
  if (v2)
  {
    goto LABEL_2;
  }

  v6 = sub_22F15A9B0(v5);
  v8 = v7;
  v10 = v9;

  if (!v8)
  {
    v40 = sub_22F741B70();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1470, &qword_22F7719E0);
    *v42 = MEMORY[0x277CC9318];
    sub_22F741B60();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
    swift_willThrow();
LABEL_2:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  v43 = v8;
  v44 = v6;
  v45 = a2;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1450, &qword_22F7719D0);
  v11 = sub_22F741DC0();
  v12 = v11;
  v13 = 0;
  v14 = *(v10 + 64);
  v48 = v10 + 64;
  v49 = v10;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v47 = (v15 + 63) >> 6;
  v50 = v11 + 64;
  if ((v16 & v14) != 0)
  {
    do
    {
      v18 = __clz(__rbit64(v17));
      v19 = (v17 - 1) & v17;
LABEL_13:
      v22 = v18 | (v13 << 6);
      v23 = *(v10 + 56);
      v24 = (*(v10 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v23 + 16 * v22);
      v28 = *(v23 + 16 * v22 + 8);
      v29 = v28 >> 62;
      v53 = v19;
      v51 = v27;
      if ((v28 >> 62) > 1)
      {
        if (v29 == 2)
        {
          v32 = *(v27 + 16);
          v33 = *(v27 + 24);
          v30 = v33 - v32;
          if (__OFSUB__(v33, v32))
          {
            goto LABEL_40;
          }

LABEL_22:
          sub_22F15C3C4(v27, v28);
          v34 = v30 + 3;
          if (v30 >= 0)
          {
            v34 = v30;
          }

          if (v30 < -3)
          {
            goto LABEL_37;
          }

          v31 = v34 >> 2;
          goto LABEL_27;
        }

        v30 = 0;
        v31 = 0;
      }

      else
      {
        if (v29)
        {
          if (__OFSUB__(DWORD1(v27), v27))
          {
            goto LABEL_41;
          }

          v30 = DWORD1(v27) - v27;
          goto LABEL_22;
        }

        v30 = BYTE6(v28);
        v31 = BYTE6(v28) >> 2;
      }

LABEL_27:

      if (v30 <= 3)
      {
        v35 = MEMORY[0x277D84F90];
        v31 = *(MEMORY[0x277D84F90] + 16);
      }

      else
      {
        v35 = sub_22F741200();
        *(v35 + 16) = v31;
        bzero((v35 + 32), 4 * v31);
      }

      if (v31 >> 61)
      {
        goto LABEL_38;
      }

      v52[0] = v51;
      sub_22F15C418();
      sub_22F73EFF0();
      sub_22F133BF0(v51, v28);
      *(v50 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v36 = (v12[6] + 16 * v22);
      *v36 = v26;
      v36[1] = v25;
      *(v12[7] + 8 * v22) = v35;
      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_39;
      }

      v12[2] = v39;
      v10 = v49;
      v17 = v53;
    }

    while (v53);
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v47)
    {

      __swift_destroy_boxed_opaque_existential_0(v46);
      *v45 = v44;
      v45[1] = v43;
      v45[2] = v12;
      return;
    }

    v21 = *(v48 + 8 * v13);
    ++v20;
    if (v21)
    {
      v18 = __clz(__rbit64(v21));
      v19 = (v21 - 1) & v21;
      goto LABEL_13;
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
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t CachedEventFeatures.encode(to:)(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = v1[1];
  v36 = *v1;
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1480, &qword_22F7719E8);
  v4 = sub_22F741DC0();
  v5 = v3;
  v6 = v4;
  v7 = v3 + 64;
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v3 + 64);
  v11 = (v8 + 63) >> 6;
  v39 = v4 + 64;
  v35 = v2;

  v12 = 0;
  v38 = v5;
  v40 = v6;
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v16 = *(v7 + 8 * v12);
    ++v15;
    if (v16)
    {
      v13 = __clz(__rbit64(v16));
      v14 = (v16 - 1) & v16;
      while (2)
      {
        v17 = v13 | (v12 << 6);
        v18 = *(*(v5 + 56) + 8 * v17);
        v19 = *(v18 + 16);
        if (!(v19 >> 61))
        {
          v20 = (*(v5 + 48) + 16 * v17);
          v42 = v14;
          v43 = *v20;
          v21 = v20[1];
          v22 = 4 * v19;
          if (4 * v19)
          {
            v41 = v20[1];
            if (v22 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v45 = 4 * v19;
              memcpy(__dst, (v18 + 32), 4 * v19);
              v25 = *__dst;
              v26 = v37 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v45 << 16)) << 32);
              v21 = v41;

              v37 = v26;
            }

            else
            {
              sub_22F73F1A0();
              swift_allocObject();

              v23 = sub_22F73F160();
              v24 = v23;
              if (v22 >= 0x7FFFFFFF)
              {
                sub_22F73F4A0();
                v25 = swift_allocObject();
                *(v25 + 16) = 0;
                *(v25 + 24) = v22;
                v26 = v24 | 0x8000000000000000;
              }

              else
              {
                v25 = v19 << 34;
                v26 = v23 | 0x4000000000000000;
              }

              v21 = v41;
            }
          }

          else
          {

            v25 = 0;
            v26 = 0xC000000000000000;
          }

          v6 = v40;
          *(v39 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
          v27 = (v40[6] + 16 * v17);
          *v27 = v43;
          v27[1] = v21;
          v28 = (v40[7] + 16 * v17);
          *v28 = v25;
          v28[1] = v26;
          v29 = v40[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (!v30)
          {
            v40[2] = v31;
            v5 = v38;
            v10 = v42;
            if (!v42)
            {
              goto LABEL_5;
            }

LABEL_4:
            v13 = __clz(__rbit64(v10));
            v14 = (v10 - 1) & v10;
            continue;
          }

LABEL_25:
          __break(1u);
        }

        break;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1488, &qword_22F7719F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = v36;
  v33 = inited + 32;
  *(inited + 40) = v35;
  *(inited + 48) = v6;
  sub_22F14E704(inited);
  swift_setDeallocating();
  sub_22F15C8B4(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1458, &qword_22F7719D8);
  sub_22F15C91C(&qword_27DAB1498, sub_22F15C9A0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_22F740CF0();
}

unint64_t sub_22F15B898(unint64_t result, uint64_t a2, __n128 a3)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v3 = 4 * a2;
      if (4 * a2)
      {
        if (v3 <= 14)
        {
          return sub_22F15CC88(result, (v3 + result));
        }

        else
        {
          sub_22F73F1A0();
          swift_allocObject();
          sub_22F73F160();
          if (v3 >= 0x7FFFFFFF)
          {
            sub_22F73F4A0();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v3;
          }

          else
          {
            return a2 << 34;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static CachedEventFeatures.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  return sub_22F15B9E0(v2, v3);
}

uint64_t sub_22F15B9E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_22F1229E8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 32;
      while (v21)
      {
        if (*(v20 + v23) != *(v16 + v23))
        {
          goto LABEL_26;
        }

        v23 += 4;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F15BB70(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22F1229E8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22F742040();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_22F15BD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v43 = &v41 - v10;
    v44 = v11;
    v12 = 0;
    v41 = a2;
    v42 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v48 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
      v21 = v44;
LABEL_16:
      v26 = v42;
      v27 = v45;
      sub_22F15CAA0(*(v42 + 48) + *(v46 + 72) * v20, v45);
      v28 = *(*(v26 + 56) + 4 * v20);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
      v30 = *(v29 + 48);
      sub_22F15CB04(v27, v21);
      *(v21 + v30) = v28;
      (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
      a2 = v41;
LABEL_17:
      v31 = v43;
      sub_22F15CB68(v21, v43);
      v32 = v31;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) != 1)
      {
        v34 = *(v33 + 48);
        v35 = v47;
        sub_22F15CB04(v32, v47);
        v36 = *(v32 + v34);
        v37 = sub_22F122A14(v35);
        v39 = v38;
        sub_22F15CBD8(v35);
        if (v39)
        {
          v18 = v48;
          if (*(*(a2 + 56) + 4 * v37) == v36)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v19 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    v21 = v44;
    while (1)
    {
      v24 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
        (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
        v48 = 0;
        v12 = v23;
        goto LABEL_17;
      }

      v25 = *(v14 + 8 * v24);
      ++v12;
      if (v25)
      {
        v48 = (v25 - 1) & v25;
        v20 = __clz(__rbit64(v25)) | (v24 << 6);
        v12 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_22F15C0E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
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
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_22F1229E8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_22F741810();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F15C298(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  return sub_22F15B9E0(v2, v3);
}

uint64_t sub_22F15C30C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22F15C370()
{
  result = qword_27DAB1468;
  if (!qword_27DAB1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1468);
  }

  return result;
}

uint64_t sub_22F15C3C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_22F15C418()
{
  result = qword_27DAB1478;
  if (!qword_27DAB1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1478);
  }

  return result;
}

void sub_22F15C46C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2319015D0](a1, a2, v7);
      sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
    if (sub_22F7419E0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22F7419F0();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_22F741800();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_22F741810();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
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

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void *sub_22F15C690(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_22F15C724(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_22F741CF0();
      sub_22F120634(0, &qword_27DAB14B0, 0x277CD9968);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_22F741CC0() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_22F741CD0();
  sub_22F120634(0, &qword_27DAB0590, off_27887B2F8);
  swift_dynamicCast();
  v5 = sub_22F123978(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_22F15C8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1490, &qword_22F7719F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F15C91C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1458, &qword_22F7719D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F15C9A0()
{
  result = qword_27DAB14A0;
  if (!qword_27DAB14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14A0);
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

uint64_t sub_22F15CA08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22F15CA50(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22F15CAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15CB04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15CB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F15CBD8(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F15CC34(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_22F15CC88(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_22F175D0C(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22F15CD48()
{
  sub_22F742170();
  MEMORY[0x231901D70](*v0);
  return sub_22F7421D0();
}

uint64_t sub_22F15CDB8(uint64_t a1)
{
  sub_22F742170();
  MEMORY[0x231901D70](*v1);
  return sub_22F7421D0();
}

unint64_t sub_22F15CDFC()
{
  result = qword_27DAB14B8;
  if (!qword_27DAB14B8)
  {
    type metadata accessor for PublicEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14B8);
  }

  return result;
}

uint64_t type metadata accessor for PublicEvent(uint64_t a1)
{
  result = qword_27DAB14C8;
  if (!qword_27DAB14C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F15CEA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14C0, &qword_22F77C6C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F771AD0;
  v1 = *MEMORY[0x277D0EA40];
  v2 = *MEMORY[0x277D0EA58];
  *(v0 + 32) = *MEMORY[0x277D0EA40];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D0EA50];
  v4 = *MEMORY[0x277D0EA48];
  *(v0 + 48) = *MEMORY[0x277D0EA50];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277D0EA38];
  v6 = *MEMORY[0x277D0EA20];
  *(v0 + 64) = *MEMORY[0x277D0EA38];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277D0EA08];
  v8 = *MEMORY[0x277D0EA00];
  *(v0 + 80) = *MEMORY[0x277D0EA08];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

void sub_22F15CFC0(uint64_t a1)
{
  sub_22F73F090();
  if (v1 <= 0x3F)
  {
    sub_22F15D0BC(319, &qword_27DAB14D8, &type metadata for PublicEventCategory);
    if (v2 <= 0x3F)
    {
      sub_22F15D0BC(319, &qword_27DAB14E0, &type metadata for PublicEventPerformer);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22F15D0BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22F741280();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t MusicForYouError.hashValue.getter()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F15D184()
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F15D1C8(uint64_t a1)
{
  sub_22F742170();
  MEMORY[0x231901D30](0);
  return sub_22F7421D0();
}

uint64_t sub_22F15D3D0(uint64_t a1, uint64_t a2)
{
  if (qword_2810A9B58 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Favorites Music Elector", 23, 2u, 0, 1, qword_2810B4E48, v9);
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v3 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(&unk_2843D85A8, v7);
  if (v2)
  {
  }

  else
  {
    v5 = v3;

    sub_22F1B2BBC(0);
    v6 = sub_22F151734(v5);

    return v6;
  }
}

uint64_t sub_22F15D570(uint64_t a1, uint64_t a2, uint64_t *a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  swift_beginAccess();
  if (*(a1 + v11) != 1)
  {
    return MEMORY[0x277D84FA0];
  }

  if (qword_2810A9B58 != -1)
  {
    swift_once();
  }

  sub_22F1B560C(a4, a5, 2u, 0, 1, qword_2810B4E48, v18);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 1;
  v12 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(a6, v16);
  if (v6)
  {
  }

  else
  {
    v14 = v12;

    sub_22F1B2BBC(0);
    v15 = sub_22F151734(v14);

    return v15;
  }
}

unint64_t sub_22F15D6E8()
{
  result = qword_27DAB14E8;
  if (!qword_27DAB14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB14E8);
  }

  return result;
}

uint64_t sub_22F15D784()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F15D7F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  *(v4 + 16) = *(*a2 + 32);
  *(v4 + 24) = v3;
}

void sub_22F15D844()
{
  v9 = MEMORY[0x277D84F90];
  sub_22F1465FC(0, 23, 0);
  v0 = 0;
  v1 = v9;
  do
  {
    v2 = byte_2843D8638[v0 + 32];
    v3 = sub_22F740EA0();
    v5 = v4;

    v9 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_22F1465FC((v6 > 1), v7 + 1, 1);
      v1 = v9;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 24 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    *(v8 + 48) = v2;
  }

  while (v0 != 23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B70, &qword_22F770CE8);
  v9 = sub_22F741DF0();
  sub_22F15E58C(v1, 1, &v9);
  off_27DAB14F0 = v9;
}

unint64_t EventLabel.rawValue.getter()
{
  result = 0x6E656D6573756D61;
  switch(*v0)
  {
    case 1:
      result = 0x73726576696E6E61;
      break;
    case 2:
      result = 0x676E696863616562;
      break;
    case 3:
      result = 0x7961646874726962;
      break;
    case 4:
      result = 0x7361666B61657262;
      break;
    case 5:
      result = 0x74617262656C6563;
      break;
    case 6:
      result = 0x676E69626D696C63;
      break;
    case 7:
      result = 0x747265636E6F63;
      break;
    case 8:
      result = 0x65636E6164;
      break;
    case 9:
      result = 0x72656E6E6964;
      break;
    case 0xA:
      result = 0x676E69766964;
      break;
    case 0xB:
      result = 0x6961747265746E65;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0x6E69726568746167;
      break;
    case 0xE:
      result = 0x676E696B6968;
      break;
    case 0xF:
      result = 0x68636E756CLL;
      break;
    case 0x10:
      result = 0x6D756573756DLL;
      break;
    case 0x11:
      result = 0x74754F746867696ELL;
      break;
    case 0x12:
      result = 0x616D726F66726570;
      break;
    case 0x13:
      result = 0x65764574726F7073;
      break;
    case 0x14:
      result = 0x72657461656874;
      break;
    case 0x15:
      result = 0x676E6964646577;
      break;
    case 0x16:
      result = 0x70537265746E6977;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall EventLabel.toGraphNodeLabel()()
{
  v0 = sub_22F740E20();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

PhotosGraph::EventLabel_optional __swiftcall EventLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F742080();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}