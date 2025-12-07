uint64_t sub_1AAF44974@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + (v3 << 6);
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v10[0] = v6;
  result = sub_1AAD117A0(v5 + 32, v10 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v11;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  return result;
}

void sub_1AAF44A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v43 = MEMORY[0x1E69E7CC0];
  sub_1AAD0F6F0(0, v6, 0);
  v7 = &unk_1AAF92000;
  v38 = v5;
  v39 = v4;
  v36 = a2;
  v37 = v6;
  v35 = a1;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v8;
      v11 = *v9;
      v42 = v6;
      v12 = type metadata accessor for SgGroup(0);
      v41 = swift_allocBox();
      v14 = v13;
      sub_1AACCB990(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1AAF92AB0;
      *(v15 + 32) = v10;
      v16 = v12[6];
      v17 = type metadata accessor for SgClipRect(0);
      (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
      *v14 = 0;
      *(v14 + 1) = v15;
      *&v14[v12[7]] = v11;
      *&v14[v12[8]] = 0;
      *&v14[v12[9]] = MEMORY[0x1E69E7CC0];
      v14[v12[10]] = 0;
      v18 = *(v43 + 16);
      v19 = *(v43 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_1AAD0F6F0((v19 > 1), v18 + 1, 1);
      }

      --v5;
      *(v43 + 16) = v18 + 1;
      *(v43 + 8 * v18 + 32) = v41;
      --v4;
      ++v9;
      ++v8;
      --v6;
      v7 = &unk_1AAF92000;
      if (v42 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v21 = v38;
    v20 = v39;
    if (v39 <= v38)
    {
      return;
    }

    v22 = v37;
    v40 = v7[171];
    while (v22 < v20)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_24;
      }

      if (v21 != v22)
      {
        if (v22 >= v21)
        {
          goto LABEL_25;
        }

        v24 = *(v35 + 32 + 8 * v22);
        v25 = *(v36 + 32 + 8 * v22);
        v26 = type metadata accessor for SgGroup(0);
        v27 = swift_allocBox();
        v29 = v28;
        sub_1AACCB990(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v30 + 16) = v40;
        *(v30 + 32) = v24;
        v31 = v26[6];
        v32 = type metadata accessor for SgClipRect(0);
        (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
        *v29 = 0;
        *(v29 + 1) = v30;
        *&v29[v26[7]] = v25;
        *&v29[v26[8]] = 0;
        *&v29[v26[9]] = MEMORY[0x1E69E7CC0];
        v29[v26[10]] = 0;
        v34 = *(v43 + 16);
        v33 = *(v43 + 24);

        if (v34 >= v33 >> 1)
        {
          sub_1AAD0F6F0((v33 > 1), v34 + 1, 1);
        }

        *(v43 + 16) = v34 + 1;
        *(v43 + 8 * v34 + 32) = v27;
        ++v22;
        v21 = v38;
        v20 = v39;
        if (v23 != v39)
        {
          continue;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1AAF44DE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4D0(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v14;
          *v13 = v11;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAF50198(0, &qword_1EB422FF0, MEMORY[0x1E69E76D8], "id x y ");
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = (v7 + 32);
    v17[1] = v6;
    sub_1AAF4CDB0(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1AAF44F5C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4D0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 24;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          *(v13 + 1) = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAF50198(0, &qword_1EB422FF0, MEMORY[0x1E69E76D8], "id x y ");
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    sub_1AAF4C7E8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1AAF450D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4E4(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 3))
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v13 + 5);
          v16 = *(v13 - 1);
          *(v13 + 8) = *(v13 - 2);
          v17 = *(v13 + 24);
          *(v13 + 24) = v16;
          *(v13 + 5) = *v13;
          *(v13 - 4) = v14;
          *(v13 - 3) = v11;
          *(v13 - 1) = v17;
          *v13 = v15;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAD45BD0(0);
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = (v7 + 32);
    v19[1] = v6;
    sub_1AAF4D954(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1AAF45248(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4E4(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          v17 = *(v13 + 3);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v11;
          *(v13 + 8) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAD45BD0(0);
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = (v7 + 32);
    v19[1] = v6;
    sub_1AAF4D378(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

double sub_1AAF453B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1AAD1FCE0(a1, a2);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v10 = 0.0;
    goto LABEL_10;
  }

  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0.0;
LABEL_8:
    v13 = v8 - v9;
    v14 = (v7 + 8 * v9 + 32);
    do
    {
      v15 = *v14++;
      v10 = v10 + v15;
      --v13;
    }

    while (v13);
    goto LABEL_10;
  }

  v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  v11 = (v7 + 48);
  v10 = 0.0;
  v12 = v8 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v10 = v10 + *(v11 - 2) + *(v11 - 1) + *v11 + v11[1];
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v9)
  {
    goto LABEL_8;
  }

LABEL_10:

  if ((a4 & 1) == 0)
  {
    v19 = *(a2 + 16);
    if (v19)
    {
      if (v19 > 3)
      {
        v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
        v22 = (a2 + 48);
        v21 = 0.0;
        v23 = v19 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v21 = v21 + *(v22 - 2) + *(v22 - 1) + *v22 + v22[1];
          v22 += 4;
          v23 -= 4;
        }

        while (v23);
        if (v19 == v20)
        {
          return v10 + (1.0 - v21) * *&a3;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0.0;
      }

      v24 = v19 - v20;
      v25 = (a2 + 8 * v20 + 32);
      do
      {
        v26 = *v25++;
        v21 = v21 + v26;
        --v24;
      }

      while (v24);
    }

    else
    {
      v21 = 0.0;
    }

    return v10 + (1.0 - v21) * *&a3;
  }

  if (*&a3 != 0.0)
  {
    v16 = *(a2 + 16);
    if (v16)
    {
      if (v16 > 3)
      {
        v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
        v27 = (a2 + 48);
        v18 = 0.0;
        v28 = v16 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v18 = v18 + *(v27 - 2) + *(v27 - 1) + *v27 + v27[1];
          v27 += 4;
          v28 -= 4;
        }

        while (v28);
        if (v16 == v17)
        {
          return v10 * (1.0 / v18);
        }
      }

      else
      {
        v17 = 0;
        v18 = 0.0;
      }

      v29 = v16 - v17;
      v30 = (a2 + 8 * v17 + 32);
      do
      {
        v31 = *v30++;
        v18 = v18 + v31;
        --v29;
      }

      while (v29);
    }

    else
    {
      v18 = 0.0;
    }

    return v10 * (1.0 / v18);
  }

  return v10;
}

float64_t sub_1AAF455B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1AAD26370(a1, a2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    v12 = 0uLL;
    do
    {
      v13 = *v11++;
      v12 = vaddq_f64(v12, v13);
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = 0uLL;
  }

  v32 = v12;

  if ((a5 & 1) == 0)
  {
    *&v17.f64[1] = a4;
    v18 = *(a2 + 16);
    if (v18)
    {
      if (v18 > 3)
      {
        v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
        v21 = (a2 + 48);
        v20 = 0.0;
        v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
          v21 += 4;
          v22 -= 4;
        }

        while (v22);
        if (v18 == v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0.0;
      }

      v23 = v18 - v19;
      v24 = (a2 + 8 * v19 + 32);
      do
      {
        v25 = *v24++;
        v20 = v20 + v25;
        --v23;
      }

      while (v23);
    }

    else
    {
      v20 = 0.0;
    }

LABEL_21:
    *&v17.f64[0] = a3;
    *&v17.f64[0] = *&vaddq_f64(v32, vmulq_n_f64(v17, 1.0 - v20));
    return v17.f64[0];
  }

  if (a3 | a4)
  {
    v14 = *(a2 + 16);
    if (v14)
    {
      if (v14 > 3)
      {
        v15 = v14 & 0x7FFFFFFFFFFFFFFCLL;
        v26 = (a2 + 48);
        v16 = 0.0;
        v27 = v14 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v16 = v16 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
          v26 += 4;
          v27 -= 4;
        }

        while (v27);
        if (v14 == v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
      }

      v28 = v14 - v15;
      v29 = (a2 + 8 * v15 + 32);
      do
      {
        v30 = *v29++;
        v16 = v16 + v30;
        --v28;
      }

      while (v28);
    }

    else
    {
      v16 = 0.0;
    }

LABEL_28:
    *&v17.f64[0] = *&vmulq_n_f64(v32, 1.0 / v16);
    return v17.f64[0];
  }

  v17.f64[0] = v32.f64[0];
  return v17.f64[0];
}

unint64_t sub_1AAF4577C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    if ((v4 - result) >= 1 && v4 < result)
    {
      __break(1u);
    }

    a3(0);
    return a2;
  }

  return result;
}

unint64_t sub_1AAF45814()
{
  result = sub_1AAD10684(MEMORY[0x1E69E7CC0]);
  qword_1ED9C3480 = result;
  return result;
}

void sub_1AAF4583C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0.0; v5; i = i + v11 * v11)
  {
    v9 = v7;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_1AAD1125C(*(a1 + 56) + 776 * (v10 | (v9 << 6)), v12);
    v11 = *v12;
    sub_1AAD11338(v12);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1AAF45948@<D0>(void *a1@<X8>)
{
  if (qword_1ED9B0F50 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED9C3480;

  return result;
}

void sub_1AAF459B8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t **a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v4;
  sub_1AAD19788(v5, sub_1AAD19DA4, 0, isUniquelyReferenced_nonNull_native, &v8);

  v7 = sub_1AAD1A804(v8);

  *a3 = v7;
}

void sub_1AAF45A6C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t **a3@<X8>)
{
  v4 = *a1;
  v8 = *a2;

  sub_1AAD178A8(-1.0);
  v5 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v4;
  sub_1AAD19788(v5, sub_1AAD19DA4, 0, isUniquelyReferenced_nonNull_native, &v8);

  v7 = sub_1AAD1A804(v8);

  *a3 = v7;
}

uint64_t sub_1AAF45B58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 705))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 104);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF45BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 696) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 704) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 705) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 705) = 0;
    }

    if (a2)
    {
      *(result + 104) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1AAF45CB8()
{
  result = qword_1ED9B12D8;
  if (!qword_1ED9B12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B12D8);
  }

  return result;
}

unint64_t sub_1AAF45D10()
{
  result = qword_1ED9B12D0;
  if (!qword_1ED9B12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B12D0);
  }

  return result;
}

void sub_1AAF45D64(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82.n128_u64[0] = a4;
  v81.n128_u64[0] = a3;
  v79 = a2;
  v78 = type metadata accessor for SgClipRect(0);
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v9 = (&v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v80 = a1;
  if (v10)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v10, 0);
    v11 = v83[0];
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    v14 = v10;
    do
    {
      sub_1AAD1C5AC(v12, v9, type metadata accessor for SgClipRect);
      v15 = v9->n128_f64[0];
      sub_1AAF502C0(v9, type metadata accessor for SgClipRect);
      v83[0] = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AAD1FAF4((v16 > 1), v17 + 1, 1);
        v11 = v83[0];
      }

      *(v11 + 16) = v17 + 1;
      *(v11 + 8 * v17 + 32) = v15;
      v12 += v13;
      --v14;
    }

    while (v14);
    a1 = v80;
  }

  sub_1AAD21FF8(v11, v81.n128_i64[0], v82.n128_i64[0], sub_1AAD22150);
  v19 = v18;

  v20 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v10, 0);
    v20 = v83[0];
    v21 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v23 = v10;
    do
    {
      sub_1AAD1C5AC(v21, v9, type metadata accessor for SgClipRect);
      v24 = v9->n128_f64[0];
      Width = CGRectGetWidth(*v9->n128_u64);
      sub_1AAF502C0(v9, type metadata accessor for SgClipRect);
      v83[0] = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1AAD1FAF4((v26 > 1), v27 + 1, 1);
        v20 = v83[0];
      }

      *(v20 + 16) = v27 + 1;
      *(v20 + 8 * v27 + 32) = v24 + Width;
      v21 += v22;
      --v23;
    }

    while (v23);
    a1 = v80;
  }

  sub_1AAD21FF8(v20, v81.n128_i64[0], v82.n128_i64[0], sub_1AAD22150);
  v29 = v28;

  v30 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v10, 0);
    v30 = v83[0];
    v31 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v32 = *(v7 + 72);
    v33 = v10;
    do
    {
      sub_1AAD1C5AC(v31, v9, type metadata accessor for SgClipRect);
      v34 = v9->n128_u64[1];
      sub_1AAF502C0(v9, type metadata accessor for SgClipRect);
      v83[0] = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1AAD1FAF4((v35 > 1), v36 + 1, 1);
        v30 = v83[0];
      }

      *(v30 + 16) = v36 + 1;
      *(v30 + 8 * v36 + 32) = v34;
      v31 += v32;
      --v33;
    }

    while (v33);
    a1 = v80;
  }

  sub_1AAD21FF8(v30, v81.n128_i64[0], v82.n128_i64[0], sub_1AAD22AF0);
  v38 = v37;

  v39 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v10, 0);
    v39 = v83[0];
    v40 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v41 = *(v7 + 72);
    v42 = v10;
    do
    {
      sub_1AAD1C5AC(v40, v9, type metadata accessor for SgClipRect);
      *&v85.origin.x = v9->n128_u64[0];
      v43 = v9->n128_f64[1];
      *&v85.size.width = v9[1].n128_u64[0];
      *&v85.size.height = v9[1].n128_u64[1];
      v85.origin.y = v43;
      Height = CGRectGetHeight(v85);
      sub_1AAF502C0(v9, type metadata accessor for SgClipRect);
      v83[0] = v39;
      v46 = *(v39 + 16);
      v45 = *(v39 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1AAD1FAF4((v45 > 1), v46 + 1, 1);
        v39 = v83[0];
      }

      *(v39 + 16) = v46 + 1;
      *(v39 + 8 * v46 + 32) = v43 + Height;
      v40 += v41;
      --v42;
    }

    while (v42);
    a1 = v80;
  }

  sub_1AAD21FF8(v39, v81.n128_i64[0], v82.n128_i64[0], sub_1AAD22AF0);
  v48 = v47;

  v49 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD25AB8(0, v10, 0);
    v49 = v83[0];
    v50 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v51 = *(v7 + 72);
    v52 = v10;
    do
    {
      sub_1AAD1C5AC(v50, v9, type metadata accessor for SgClipRect);
      v53 = v9[2];
      v81 = v9[3];
      v82 = v53;
      sub_1AAF502C0(v9, type metadata accessor for SgClipRect);
      v83[0] = v49;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1AAD25AB8((v54 > 1), v55 + 1, 1);
        v49 = v83[0];
      }

      *(&v56 + 1) = v82.n128_u64[1];
      *&v57 = v82.n128_u64[0];
      *(&v57 + 1) = v81.n128_u64[1];
      *&v56 = v81.n128_u64[0];
      *(v49 + 16) = v55 + 1;
      v58 = v49 + 32 * v55;
      *(v58 + 32) = v57;
      *(v58 + 48) = v56;
      v50 += v51;
      --v52;
    }

    while (v52);
    a1 = v80;
  }

  v83[0] = 1;
  memset(&v83[1], 0, 24);
  v84 = 1;
  v59.n128_f64[0] = sub_1AAD25CF0(v49, v79, v83);
  v81 = v60;
  v82 = v59;

  sub_1AAF43334(v82, v81);
  if (v10)
  {
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v68 = v64;
    v69 = v19;
    v70 = vabdd_f64(v48, v38);
    v71 = v29;
    v72 = vabdd_f64(v29, v69);
    if (v48 < v38)
    {
      v38 = v48;
    }

    if (v71 >= v69)
    {
      v73 = v69;
    }

    else
    {
      v73 = v71;
    }

    v74 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v75 = *(v78 + 24);
    v76 = sub_1AAF8E244();
    (*(*(v76 - 8) + 16))(a5 + v75, a1 + v75 + v74, v76);
    *a5 = v73;
    *(a5 + 8) = v38;
    *(a5 + 16) = v72;
    *(a5 + 24) = v70;
    *(a5 + 32) = v65;
    *(a5 + 40) = v66;
    *(a5 + 48) = v67;
    *(a5 + 56) = v68;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAF4644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1AAD20690(MEMORY[0x1E69E7CC0]);
  v47 = v6;
  v43 = *(a1 + 16);
  if (!v43)
  {
    v8 = 0;
LABEL_35:

    v37 = sub_1AAD21128(v5, &v47, a2, a3, a4);

    sub_1AACB4A98(v8, 0);
    return v37;
  }

  v7 = 0;
  v8 = 0;
  v42 = a1 + 32;
  while (1)
  {
    v9 = *(v42 + 32 * v7 + 8);
    v10 = *(v9 + 16);
    swift_bridgeObjectRetain_n();

    v46 = v10;
    if (v10)
    {
      break;
    }

LABEL_3:
    ++v7;

    swift_bridgeObjectRelease_n();
    if (v7 == v43)
    {
      goto LABEL_35;
    }
  }

  v11 = 0;
  v44 = v9;
  v45 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    v12 = *(v45 + 8 * v11);

    v13 = sub_1AACAB6D8(v12);
    v14 = v11 + 0x8000000000000000;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11 + 0x8000000000000000;
    }

    if (!v6[2] || (sub_1AACC9B78(v15), (v16 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AAD20B88(0, *(v5 + 2) + 1, 1, v5);
      }

      v18 = *(v5 + 2);
      v17 = *(v5 + 3);
      if (v18 >= v17 >> 1)
      {
        v5 = sub_1AAD20B88((v17 > 1), v18 + 1, 1, v5);
      }

      *(v5 + 2) = v18 + 1;
      *&v5[8 * v18 + 32] = v15;
    }

    sub_1AACB4A98(v8, 0);
    v6 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1AACC9B78(v15);
    v22 = v47[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_37;
    }

    v25 = v20;
    if (v47[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1AAD99628();
        v6 = v47;
        if (v25)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1AAD20B9C(v24, isUniquelyReferenced_nonNull_native);
      v6 = v47;
      v26 = sub_1AACC9B78(v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_39;
      }

      v21 = v26;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    v6[(v21 >> 6) + 8] |= 1 << v21;
    *(v6[6] + 8 * v21) = v15;
    *(v6[7] + 8 * v21) = MEMORY[0x1E69E7CC0];
    v28 = v6[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_38;
    }

    v6[2] = v30;
LABEL_26:
    v31 = v6[7];
    v32 = *(v31 + 8 * v21);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 8 * v21) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_1AAD20E80(0, v32[2] + 1, 1, v32);
      *(v31 + 8 * v21) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1AAD20E80((v34 > 1), v35 + 1, 1, v32);
      *(v31 + 8 * v21) = v32;
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = v7;
    v36[5] = v12;
    v11 = v14 - 0x7FFFFFFFFFFFFFFFLL;
    v8 = sub_1AACAEEC4;
    v9 = v44;
    if (v14 - 0x7FFFFFFFFFFFFFFFLL == v46)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF467F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1AAD20690(MEMORY[0x1E69E7CC0]);
  v47 = v6;
  v43 = *(a1 + 16);
  if (!v43)
  {
    v8 = 0;
LABEL_35:

    v37 = sub_1AAD21128(v5, &v47, a2, a3, a4);

    sub_1AACB4A98(v8, 0);
    return v37;
  }

  v7 = 0;
  v8 = 0;
  v42 = a1 + 32;
  while (1)
  {
    v9 = *(v42 + 32 * v7 + 16);
    v10 = *(v9 + 16);

    swift_bridgeObjectRetain_n();
    v46 = v10;
    if (v10)
    {
      break;
    }

LABEL_3:
    ++v7;

    swift_bridgeObjectRelease_n();
    if (v7 == v43)
    {
      goto LABEL_35;
    }
  }

  v11 = 0;
  v44 = v9;
  v45 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    v12 = *(v45 + 8 * v11);

    v13 = sub_1AACAB6D8(v12);
    v14 = v11 + 0x8000000000000000;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11 + 0x8000000000000000;
    }

    if (!v6[2] || (sub_1AACC9B78(v15), (v16 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AAD20B88(0, *(v5 + 2) + 1, 1, v5);
      }

      v18 = *(v5 + 2);
      v17 = *(v5 + 3);
      if (v18 >= v17 >> 1)
      {
        v5 = sub_1AAD20B88((v17 > 1), v18 + 1, 1, v5);
      }

      *(v5 + 2) = v18 + 1;
      *&v5[8 * v18 + 32] = v15;
    }

    sub_1AACB4A98(v8, 0);
    v6 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1AACC9B78(v15);
    v22 = v47[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_37;
    }

    v25 = v20;
    if (v47[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1AAD99628();
        v6 = v47;
        if (v25)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1AAD20B9C(v24, isUniquelyReferenced_nonNull_native);
      v6 = v47;
      v26 = sub_1AACC9B78(v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_39;
      }

      v21 = v26;
      if (v25)
      {
        goto LABEL_26;
      }
    }

    v6[(v21 >> 6) + 8] |= 1 << v21;
    *(v6[6] + 8 * v21) = v15;
    *(v6[7] + 8 * v21) = MEMORY[0x1E69E7CC0];
    v28 = v6[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_38;
    }

    v6[2] = v30;
LABEL_26:
    v31 = v6[7];
    v32 = *(v31 + 8 * v21);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 8 * v21) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_1AAD20E80(0, v32[2] + 1, 1, v32);
      *(v31 + 8 * v21) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1AAD20E80((v34 > 1), v35 + 1, 1, v32);
      *(v31 + 8 * v21) = v32;
    }

    v32[2] = v35 + 1;
    v36 = &v32[2 * v35];
    v36[4] = v7;
    v36[5] = v12;
    v11 = v14 - 0x7FFFFFFFFFFFFFFFLL;
    v8 = sub_1AACAEEC4;
    v9 = v44;
    if (v14 - 0x7FFFFFFFFFFFFFFFLL == v46)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF46BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1AAD20690(MEMORY[0x1E69E7CC0]);
  v52 = 0;
  v53 = v6;
  v50 = a1;
  v51 = 0;

  sub_1AAF44974(&v44);
  v7 = v45;
  v43 = v44;
  v8 = *v46;
  v47 = *&v46[8];
  v48 = *&v46[24];
  v49 = *&v46[40];
  v9 = 0;
  if (!*v46)
  {
LABEL_2:

    v10 = sub_1AAD21128(v5, &v53, a2, a3, a4);

    sub_1AACB4A98(v9, 0);
    return v10;
  }

  while (1)
  {
    v44 = v7;
    v45 = v8;
    *v46 = v47;
    *&v46[16] = v48;
    *&v46[32] = v49;
    v12 = *(v8 + 16);

    v42 = v12;
    if (v12)
    {
      break;
    }

LABEL_3:

    sub_1AAF14C40(&v44);
    sub_1AAF44974(&v44);
    v7 = v45;
    v43 = v44;
    v8 = *v46;
    v47 = *&v46[8];
    v48 = *&v46[24];
    v49 = *&v46[40];
    if (!*v46)
    {
      goto LABEL_2;
    }
  }

  v13 = 0;
  while (v13 < *(v8 + 16))
  {
    v14 = *(v8 + 32 + 8 * v13);

    v15 = sub_1AACAB6D8(v14);
    v16 = v13 + 0x8000000000000000;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13 + 0x8000000000000000;
    }

    if (!v6[2] || (sub_1AACC9B78(v17), (v18 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AAD20B88(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = *(v5 + 2);
      v19 = *(v5 + 3);
      if (v20 >= v19 >> 1)
      {
        v5 = sub_1AAD20B88((v19 > 1), v20 + 1, 1, v5);
      }

      *(v5 + 2) = v20 + 1;
      *&v5[8 * v20 + 32] = v17;
    }

    sub_1AACB4A98(v9, 0);
    v6 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_1AACC9B78(v17);
    v24 = v6[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_35;
    }

    v27 = v22;
    if (v6[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v53 = v6;
        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1AAD99628();
        v53 = v6;
        if (v27)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1AAD20B9C(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_1AACC9B78(v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_37;
      }

      v23 = v28;
      v53 = v6;
      if (v27)
      {
        goto LABEL_26;
      }
    }

    v6[(v23 >> 6) + 8] |= 1 << v23;
    *(v6[6] + 8 * v23) = v17;
    *(v6[7] + 8 * v23) = MEMORY[0x1E69E7CC0];
    v30 = v6[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_36;
    }

    v6[2] = v32;
LABEL_26:
    v33 = v6[7];
    v34 = *(v33 + 8 * v23);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 8 * v23) = v34;
    if ((v35 & 1) == 0)
    {
      v34 = sub_1AAD20E80(0, v34[2] + 1, 1, v34);
      *(v33 + 8 * v23) = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1AAD20E80((v36 > 1), v37 + 1, 1, v34);
      *(v33 + 8 * v23) = v34;
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = v43;
    v38[5] = v14;
    v13 = v16 - 0x7FFFFFFFFFFFFFFFLL;
    v9 = sub_1AACAEEC4;
    if (v16 - 0x7FFFFFFFFFFFFFFFLL == v42)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AAF46F94(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a4;
  v95 = a3;
  v91 = a2;
  v94 = a5;
  v6 = type metadata accessor for SgShapeStyle(0);
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v90 - v10;
  v92 = type metadata accessor for SgRectangle(0);
  v11 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v99.n128_u64[0] = a1;
  if (v14)
  {
    v101[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v14, 0);
    v15 = v101[0];
    v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    v18 = v14;
    do
    {
      sub_1AAD1C5AC(v16, v13, type metadata accessor for SgRectangle);
      v19 = *(v13 + 1);
      sub_1AAF502C0(v13, type metadata accessor for SgRectangle);
      v101[0] = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AAD1FAF4((v20 > 1), v21 + 1, 1);
        v15 = v101[0];
      }

      *(v15 + 16) = v21 + 1;
      *(v15 + 8 * v21 + 32) = v19;
      v16 += v17;
      --v18;
    }

    while (v18);
    a1 = v99.n128_u64[0];
  }

  sub_1AAD21FF8(v15, v95, v96, sub_1AAD22150);
  v23 = v22;

  v24 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v101[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v14, 0);
    v24 = v101[0];
    v25 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v26 = *(v11 + 72);
    v27 = v14;
    do
    {
      sub_1AAD1C5AC(v25, v13, type metadata accessor for SgRectangle);
      v28 = *(v13 + 1);
      v29 = *(v13 + 3);
      sub_1AAF502C0(v13, type metadata accessor for SgRectangle);
      v101[0] = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AAD1FAF4((v30 > 1), v31 + 1, 1);
        v24 = v101[0];
      }

      *(v24 + 16) = v31 + 1;
      *(v24 + 8 * v31 + 32) = v28 + v29;
      v25 += v26;
      --v27;
    }

    while (v27);
    a1 = v99.n128_u64[0];
  }

  sub_1AAD21FF8(v24, v95, v96, sub_1AAD22150);
  v33 = v32;

  v34 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v101[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v14, 0);
    v34 = v101[0];
    v35 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v36 = *(v11 + 72);
    v37 = v14;
    do
    {
      sub_1AAD1C5AC(v35, v13, type metadata accessor for SgRectangle);
      v38 = *(v13 + 2);
      sub_1AAF502C0(v13, type metadata accessor for SgRectangle);
      v101[0] = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1AAD1FAF4((v39 > 1), v40 + 1, 1);
        v34 = v101[0];
      }

      *(v34 + 16) = v40 + 1;
      *(v34 + 8 * v40 + 32) = v38;
      v35 += v36;
      --v37;
    }

    while (v37);
    a1 = v99.n128_u64[0];
  }

  sub_1AAD21FF8(v34, v95, v96, sub_1AAD22AF0);
  v42 = v41;

  v43 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v101[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v14, 0);
    v44 = v101[0];
    v45 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v46 = *(v11 + 72);
    v47 = v14;
    do
    {
      sub_1AAD1C5AC(v45, v13, type metadata accessor for SgRectangle);
      v48 = *(v13 + 2);
      v49 = *(v13 + 4);
      sub_1AAF502C0(v13, type metadata accessor for SgRectangle);
      v101[0] = v44;
      v51 = *(v44 + 16);
      v50 = *(v44 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1AAD1FAF4((v50 > 1), v51 + 1, 1);
        v44 = v101[0];
      }

      *(v44 + 16) = v51 + 1;
      *(v44 + 8 * v51 + 32) = v48 + v49;
      v45 += v46;
      --v47;
    }

    while (v47);
    a1 = v99.n128_u64[0];
    v43 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAD21FF8(v44, v95, v96, sub_1AAD22AF0);
  v53 = v52;

  if (v14)
  {
    v54 = (a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v90 = *v54;
    v101[0] = v43;
    sub_1AAD25AB8(0, v14, 0);
    v55 = v101[0];
    v56 = *(v11 + 72);
    v57 = v54;
    v58 = v14;
    do
    {
      sub_1AAD1C5AC(v57, v13, type metadata accessor for SgRectangle);
      v59 = *(v13 + 40);
      v98 = *(v13 + 56);
      v99 = v59;
      sub_1AAF502C0(v13, type metadata accessor for SgRectangle);
      v101[0] = v55;
      v61 = *(v55 + 16);
      v60 = *(v55 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1AAD25AB8((v60 > 1), v61 + 1, 1);
        v55 = v101[0];
      }

      *(&v62 + 1) = v99.n128_u64[1];
      *&v63 = v99.n128_u64[0];
      *(&v63 + 1) = v98.n128_u64[1];
      *&v62 = v98.n128_u64[0];
      *(v55 + 16) = v61 + 1;
      v64 = v55 + 32 * v61;
      *(v64 + 32) = v63;
      *(v64 + 48) = v62;
      v57 += v56;
      --v58;
    }

    while (v58);
    v65 = v33;
    v66 = v23;
    v101[0] = 1;
    memset(&v101[1], 0, 24);
    v102 = 1;
    v67 = v91;
    v68.n128_f64[0] = sub_1AAD25CF0(v55, v91, v101);
    v98 = v69;
    v99 = v68;

    sub_1AAF43334(v99, v98);
    v99.n128_u64[0] = v70;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v100 = MEMORY[0x1E69E7CC0];
    sub_1AAD23694(0, v14, 0);
    v77 = v100;
    v78 = v92;
    do
    {
      sub_1AAD1C5AC(v54, v13, type metadata accessor for SgRectangle);
      sub_1AAD1C5AC(&v13[v78[11]], v8, type metadata accessor for SgShapeStyle);
      sub_1AAF502C0(v13, type metadata accessor for SgRectangle);
      v100 = v77;
      v80 = *(v77 + 16);
      v79 = *(v77 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_1AAD23694((v79 > 1), v80 + 1, 1);
        v77 = v100;
      }

      *(v77 + 16) = v80 + 1;
      sub_1AAD1FA8C(v8, v77 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v80, type metadata accessor for SgShapeStyle);
      v54 = (v54 + v56);
      --v14;
    }

    while (v14);
    v81 = vabdd_f64(v53, v42);
    v82 = v66;
    v83 = vabdd_f64(v65, v66);
    if (v53 < v42)
    {
      v42 = v53;
    }

    if (v65 >= v82)
    {
      v84 = v82;
    }

    else
    {
      v84 = v65;
    }

    v85 = v93;
    sub_1AAD236E4(v77, v67, v95, v96, v93);

    v86 = v78[10];
    v87 = *MEMORY[0x1E697F468];
    v88 = sub_1AAF8E244();
    v89 = v94;
    (*(*(v88 - 8) + 104))(v94 + v86, v87, v88);
    *v89 = v90;
    *(v89 + 8) = v84;
    *(v89 + 16) = v42;
    *(v89 + 24) = v83;
    *(v89 + 32) = v81;
    *(v89 + 40) = v99.n128_u64[0];
    *(v89 + 48) = v72;
    *(v89 + 56) = v74;
    *(v89 + 64) = v76;
    sub_1AAD1FA8C(v85, v89 + v78[11], type metadata accessor for SgShapeStyle);
    *(v89 + v78[12]) = 0;
  }

  else
  {
    __break(1u);
  }
}

double sub_1AAF478B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v10 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for AnyVectorizedRenderer(0) - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = a3;
  sub_1AAD1C5AC(a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * (v17 - 1), &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyVectorizedRenderer);
  v3 = sub_1AAF31E68();
  v4 = sub_1AAF4577C(1uLL, a1, type metadata accessor for AnyVectorizedRenderer);
  v5 = v18;
  v6 = v19;
  a3 = v20;
  if ((v20 & 1) == 0)
  {

LABEL_4:
    sub_1AAF4C0D8(v4, v5, v6, a3);
    v22 = v21;
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v29 = a2;
  sub_1AAF90514();
  swift_unknownObjectRetain_n();

  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(v23 + 16);

  if (__OFSUB__(a3 >> 1, v6))
  {
    goto LABEL_14;
  }

  if (v24 != (a3 >> 1) - v6)
  {
LABEL_15:
    swift_unknownObjectRelease();
    a2 = v29;
    goto LABEL_4;
  }

  v22 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  a2 = v29;
  if (!v22)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

LABEL_12:
  *v12 = v3;
  v12[1] = v22;
  v12[2] = a2;
  v12[3] = 0;
  sub_1AAD1FA8C(v16, v12 + *(v10 + 32), type metadata accessor for AnyVectorizedRenderer);
  v25 = (v12 + *(v10 + 36));
  *v25 = 0;
  v25[1] = 0;
  v26 = swift_allocBox();
  sub_1AAD1FA8C(v12, v27, type metadata accessor for SgVectorized);
  *v30 = v26;
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

void sub_1AAF47B8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a3;
  v109 = a4;
  v111 = a5;
  v7 = type metadata accessor for SgShapeStyle(0);
  v116 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v107 - v11;
  v12 = type metadata accessor for SgSector(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v107 - v16);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v114 = a1;
  v115 = v18;
  v113 = v13;
  if (v18)
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v18, 0);
    v19 = v117;
    v20 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v21 = *(v13 + 72);
    v22 = v18;
    do
    {
      sub_1AAD1C5AC(v20, v17, type metadata accessor for SgSector);
      v23 = v17[1];
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1AAD1FAF4((v24 > 1), v25 + 1, 1);
        v19 = v117;
      }

      *(v19 + 16) = v25 + 1;
      *(v19 + 8 * v25 + 32) = v23;
      v20 += v21;
      --v22;
    }

    while (v22);
    a1 = v114;
    v18 = v115;
    v13 = v113;
  }

  v26 = sub_1AAF453B8(v19, a2, 1, 1);

  v27 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v18, 0);
    v27 = v117;
    v28 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v29 = *(v13 + 72);
    v30 = v18;
    do
    {
      sub_1AAD1C5AC(v28, v17, type metadata accessor for SgSector);
      v31 = v17[2];
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AAD1FAF4((v32 > 1), v33 + 1, 1);
        v27 = v117;
      }

      *(v27 + 16) = v33 + 1;
      *(v27 + 8 * v33 + 32) = v31;
      v28 += v29;
      --v30;
    }

    while (v30);
    a1 = v114;
    v18 = v115;
    v13 = v113;
  }

  v34 = sub_1AAF453B8(v27, a2, 1, 1);

  v35 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v18, 0);
    v35 = v117;
    v36 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v37 = *(v13 + 72);
    v38 = v18;
    do
    {
      sub_1AAD1C5AC(v36, v17, type metadata accessor for SgSector);
      v39 = v17[3];
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1AAD1FAF4((v40 > 1), v41 + 1, 1);
        v35 = v117;
      }

      *(v35 + 16) = v41 + 1;
      *(v35 + 8 * v41 + 32) = v39;
      v36 += v37;
      --v38;
    }

    while (v38);
    a1 = v114;
    v18 = v115;
    v13 = v113;
  }

  v42 = sub_1AAF453B8(v35, a2, 1, 1);

  v43 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v18, 0);
    v43 = v117;
    v44 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v45 = *(v13 + 72);
    v46 = v18;
    do
    {
      sub_1AAD1C5AC(v44, v17, type metadata accessor for SgSector);
      v47 = v17[4];
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v43;
      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1AAD1FAF4((v48 > 1), v49 + 1, 1);
        v43 = v117;
      }

      *(v43 + 16) = v49 + 1;
      *(v43 + 8 * v49 + 32) = v47;
      v44 += v45;
      --v46;
    }

    while (v46);
    a1 = v114;
    v18 = v115;
    v13 = v113;
  }

  v50 = sub_1AAF453B8(v43, a2, 1, 1);

  v51 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v18, 0);
    v51 = v117;
    v52 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v53 = *(v13 + 72);
    v54 = v18;
    do
    {
      sub_1AAD1C5AC(v52, v17, type metadata accessor for SgSector);
      v55 = *(v17 + v12[13]);
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v51;
      v57 = *(v51 + 16);
      v56 = *(v51 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1AAD1FAF4((v56 > 1), v57 + 1, 1);
        v51 = v117;
      }

      *(v51 + 16) = v57 + 1;
      *(v51 + 8 * v57 + 32) = v55;
      v52 += v53;
      --v54;
    }

    while (v54);
    a1 = v114;
    v18 = v115;
    v13 = v113;
  }

  v58 = sub_1AAF453B8(v51, a2, 1, 1);

  v59 = MEMORY[0x1E69E7CC0];
  v112 = a2;
  if (v18)
  {
    v117 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v18, 0);
    v60 = v117;
    v61 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v62 = *(v13 + 72);
    v63 = v18;
    do
    {
      sub_1AAD1C5AC(v61, v17, type metadata accessor for SgSector);
      v64 = *(v17 + v12[13] + 8);
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1AAD1FAF4((v65 > 1), v66 + 1, 1);
        v60 = v117;
      }

      *(v60 + 16) = v66 + 1;
      *(v60 + 8 * v66 + 32) = v64;
      v61 += v62;
      --v63;
    }

    while (v63);
    a2 = v112;
    v13 = v113;
    a1 = v114;
    v18 = v115;
    v59 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
  }

  v67 = sub_1AAF453B8(v60, a2, 1, 1);

  if (v18)
  {
    v68 = (a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
    v114 = *v68;
    v117 = v59;
    sub_1AAD1FAF4(0, v18, 0);
    v69 = v117;
    v70 = *(v13 + 72);
    v71 = v68;
    v72 = v18;
    do
    {
      sub_1AAD1C5AC(v71, v17, type metadata accessor for SgSector);
      v73 = v17[5];
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v69;
      v75 = *(v69 + 16);
      v74 = *(v69 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1AAD1FAF4((v74 > 1), v75 + 1, 1);
        v69 = v117;
      }

      *(v69 + 16) = v75 + 1;
      *(v69 + 8 * v75 + 32) = v73;
      v71 += v70;
      --v72;
    }

    while (v72);
    v76 = sub_1AAF453B8(v69, v112, 1, 1);

    v117 = MEMORY[0x1E69E7CC0];
    v77 = v115;
    sub_1AAD1FAF4(0, v115, 0);
    v78 = v117;
    v79 = v68;
    do
    {
      sub_1AAD1C5AC(v79, v17, type metadata accessor for SgSector);
      v80 = v17[6];
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v78;
      v82 = *(v78 + 16);
      v81 = *(v78 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1AAD1FAF4((v81 > 1), v82 + 1, 1);
        v78 = v117;
      }

      *(v78 + 16) = v82 + 1;
      *(v78 + 8 * v82 + 32) = v80;
      v79 += v70;
      --v77;
    }

    while (v77);
    v83 = sub_1AAF453B8(v78, v112, 1, 1);

    v117 = MEMORY[0x1E69E7CC0];
    v84 = v115;
    sub_1AAD23694(0, v115, 0);
    v85 = v117;
    v86 = v68;
    do
    {
      sub_1AAD1C5AC(v86, v17, type metadata accessor for SgSector);
      sub_1AAD1C5AC(v17 + v12[12], v9, type metadata accessor for SgShapeStyle);
      sub_1AAF502C0(v17, type metadata accessor for SgSector);
      v117 = v85;
      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_1AAD23694((v87 > 1), v88 + 1, 1);
        v85 = v117;
      }

      *(v85 + 16) = v88 + 1;
      sub_1AAD1FA8C(v9, v85 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v88, type metadata accessor for SgShapeStyle);
      v86 += v70;
      --v84;
    }

    while (v84);
    v89 = v110;
    sub_1AAD236E4(v85, v112, v108, v109, v110);

    v90 = v115 + 1;
    v91 = v107;
    do
    {
      if (!--v90)
      {
        break;
      }

      sub_1AAD1C5AC(v68, v91, type metadata accessor for SgSector);
      v92 = *(v91 + v12[14]);
      sub_1AAF502C0(v91, type metadata accessor for SgSector);
      v68 = (v68 + v70);
    }

    while ((v92 & 1) != 0);
    v93 = v90 == 0;
    v94 = (v42 + v50) * 0.5;
    v95 = vabdd_f64(v50, v42) * 0.5;
    v96 = (v26 + v34) * 0.5;
    v97 = vabdd_f64(v34, v26);
    v98 = v96 - v97 * 0.5;
    v99 = v96 + v97 * 0.5;
    v100 = v94 - v95;
    v101 = v94 + v95;
    v102 = v12[11];
    v103 = *MEMORY[0x1E697F468];
    v104 = sub_1AAF8E244();
    v105 = v111;
    (*(*(v104 - 8) + 104))(v111 + v102, v103, v104);
    *v105 = v114;
    *(v105 + 8) = v98;
    *(v105 + 16) = v99;
    *(v105 + 24) = v100;
    *(v105 + 32) = v101;
    *(v105 + 40) = v76;
    *(v105 + 48) = v83;
    sub_1AAD1FA8C(v89, v105 + v12[12], type metadata accessor for SgShapeStyle);
    v106 = (v105 + v12[13]);
    *v106 = v58;
    v106[1] = v67;
    *(v105 + v12[14]) = v93;
    *(v105 + v12[15]) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAF48770(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a3;
  v61 = a2;
  v8 = type metadata accessor for SgShapeStyle(0);
  v55 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48[-v11];
  v56 = type metadata accessor for SgPoint(0);
  v12 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v59 = a4;
  v60 = a5;
  if (v15)
  {
    *&v63 = MEMORY[0x1E69E7CC0];
    sub_1AAD26350(0, v15, 0);
    v17 = v63;
    v18 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    v20 = v15;
    do
    {
      sub_1AAD1C5AC(v18, v14, type metadata accessor for SgPoint);
      v62 = *(v14 + 8);
      sub_1AAF502C0(v14, type metadata accessor for SgPoint);
      *&v63 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AAD26350((v21 > 1), v22 + 1, 1);
        v17 = v63;
      }

      *(v17 + 16) = v22 + 1;
      *(v17 + 16 * v22 + 32) = v62;
      v18 += v19;
      --v15;
    }

    while (v15);
    v15 = v20;
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  *&v23 = sub_1AAF455B4(v17, v61, 1, 0, 1);
  v62 = v23;

  swift_getKeyPath();
  v63 = v62;
  swift_getAtKeyPath();

  v24 = v65;
  swift_getKeyPath();
  v63 = v62;
  swift_getAtKeyPath();

  if (v15)
  {
    v25 = v65;
    v26 = (a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    v52 = *v26;
    *&v63 = v16;
    sub_1AAD41964(0, v15, 0);
    v27 = v63;
    *&v62 = *(v12 + 72);
    v28 = v26;
    v53 = v15;
    do
    {
      sub_1AAD1C5AC(v28, v14, type metadata accessor for SgPoint);
      v30 = *(v14 + 3);
      v29 = *(v14 + 4);
      v31 = v14[40];
      sub_1AAF502C0(v14, type metadata accessor for SgPoint);
      *&v63 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1AAD41964((v32 > 1), v33 + 1, 1);
        v27 = v63;
      }

      *(v27 + 16) = v33 + 1;
      v34 = v27 + 24 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v29;
      *(v34 + 48) = v31;
      v28 += v62;
      --v15;
    }

    while (v15);
    v51 = sub_1AAF4F340(v27, v61);
    v50 = v35;
    v49 = v36;

    v37 = v53;
    sub_1AAD9ADE4(v26 + v62 * (v53 - 1) + 48, &v63);
    v65 = MEMORY[0x1E69E7CC0];
    sub_1AAD23694(0, v37, 0);
    v38 = v65;
    v39 = v60;
    v41 = v55;
    v40 = v56;
    v42 = v54;
    do
    {
      sub_1AAD1C5AC(v26, v14, type metadata accessor for SgPoint);
      sub_1AAD1C5AC(&v14[*(v40 + 36)], v42, type metadata accessor for SgShapeStyle);
      sub_1AAF502C0(v14, type metadata accessor for SgPoint);
      v65 = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1AAD23694((v43 > 1), v44 + 1, 1);
        v38 = v65;
      }

      *(v38 + 16) = v44 + 1;
      sub_1AAD1FA8C(v42, v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v44, type metadata accessor for SgShapeStyle);
      v26 = (v26 + v62);
      --v37;
    }

    while (v37);
    v45 = v57;
    sub_1AAD236E4(v38, v61, v58, v59, v57);

    *v39 = v52;
    *(v39 + 8) = v24;
    *(v39 + 16) = v25;
    v46 = v50;
    *(v39 + 24) = v51;
    *(v39 + 32) = v46;
    *(v39 + 40) = v49 & 1;
    v47 = v64[0];
    *(v39 + 48) = v63;
    *(v39 + 64) = v47;
    *(v39 + 73) = *(v64 + 9);
    sub_1AAD1FA8C(v45, v39 + *(v40 + 36), type metadata accessor for SgShapeStyle);
    *(v39 + *(v40 + 40)) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAF48D38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v259 = a3;
  v260 = a4;
  v258 = a2;
  v255 = a5;
  v268 = type metadata accessor for SgLine(0);
  v6 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v8 = &v248.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v252 = 0;
  v9 = type metadata accessor for SgShapeStyle(0);
  v267 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v248.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v257 = v248.i64 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v275 = MEMORY[0x1E69E7CC0];
    sub_1AAD23694(0, v14, 0);
    v15 = v275;
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    *&v269 = *(v6 + 72);
    v17 = v16;
    v18 = v14;
    do
    {
      sub_1AAD1C5AC(v17, v8, type metadata accessor for SgLine);
      sub_1AAD1C5AC(&v8[*(v268 + 32)], v11, type metadata accessor for SgShapeStyle);
      sub_1AAF502C0(v8, type metadata accessor for SgLine);
      v275 = v15;
      v20 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_1AAD23694((v19 > 1), v20 + 1, 1);
        v15 = v275;
      }

      *(v15 + 2) = v20 + 1;
      sub_1AAD1FA8C(v11, &v15[((*(v267 + 80) + 32) & ~*(v267 + 80)) + v267[9] * v20], type metadata accessor for SgShapeStyle);
      v17 += v269;
      --v18;
    }

    while (v18);
    sub_1AAD236E4(v15, v258, v259, v260, v257);

    v254 = *(v16 + 24);
    v253 = *(v16 + 32);
    v256 = *(v16 + 16);
    v275 = MEMORY[0x1E69E7CC0];
    sub_1AAD419D4(0, v14, 0);
    v21 = v275;
    do
    {
      sub_1AAD1C5AC(v16, v8, type metadata accessor for SgLine);
      v22 = *(v8 + 1);
      swift_beginAccess();
      v23 = *(v22 + 16);

      sub_1AAF502C0(v8, type metadata accessor for SgLine);
      v275 = v21;
      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        sub_1AAD419D4((v24 > 1), v25 + 1, 1);
        v21 = v275;
      }

      *(v21 + 2) = v25 + 1;
      *&v21[8 * v25 + 32] = v23;
      v16 += v269;
      --v14;
    }

    while (v14);
    v26 = *(v21 + 4);
    v261 = v21;
    if (!v25)
    {
LABEL_17:
      type metadata accessor for SgLine.Points();
      v30 = swift_allocObject();
      *(v30 + 16) = MEMORY[0x1E69E7CC0];
      v267 = (v30 + 16);
      v31 = *(v26 + 16);
      if (!v31)
      {
LABEL_172:

        v246 = v268;
        v247 = v255;
        sub_1AAD1FA8C(v257, v255 + *(v268 + 32), type metadata accessor for SgShapeStyle);
        *v247 = 0;
        *(v247 + 8) = v30;
        *(v247 + 16) = v256;
        *(v247 + 24) = v254;
        *(v247 + 32) = v253;
        *(v247 + *(v246 + 36)) = 0;
        return;
      }

      v32 = (v26 + 32);

      v33 = 0;
      v266 = v21 + 32;
      while (v33 < *(v26 + 16))
      {
        v34 = v33 + 1;
        v35 = 96 * v33;
        *&v269 = v33;
        v36 = sub_1AAE5EDF4(&v32[96 * v33], &v275);
        v37 = v25;
        v38 = 40;
        while (v37)
        {
          v39 = *&v21[v38];
          if (v269 >= *(v39 + 16))
          {
            goto LABEL_176;
          }

          v38 += 8;
          --v37;
          if (*(v39 + v35 + 32) != v275)
          {
            sub_1AAE5EE50(&v275);

            goto LABEL_56;
          }
        }

        *&v249 = v35;
        v265 = v275;
        v250 = v34;
        v251 = v32;
        *&v262 = v31;
        v263 = v30;
        *&v264 = v26;
        MEMORY[0x1EEE9AC00](v36);
        *(&v248 - 2) = v40;
        swift_getKeyPath();
        v41 = *(v21 + 2);
        if (v41)
        {
          *&v273 = MEMORY[0x1E69E7CC0];
          sub_1AAD1FAF4(0, v41, 0);
          v42 = v273;
          v43 = v266;
          v44 = v41;
          do
          {
            v270 = *v43;

            swift_getAtKeyPath();

            v45 = v271;
            *&v273 = v42;
            v47 = *(v42 + 16);
            v46 = *(v42 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_1AAD1FAF4((v46 > 1), v47 + 1, 1);
              v42 = v273;
            }

            *(v42 + 16) = v47 + 1;
            *(v42 + 8 * v47 + 32) = v45;
            v43 += 8;
            --v44;
          }

          while (v44);
        }

        else
        {

          v42 = MEMORY[0x1E69E7CC0];
        }

        sub_1AAD21FF8(v42, v259, v260, sub_1AAD22150);
        v49 = v48;

        MEMORY[0x1EEE9AC00](v50);
        *(&v248 - 2) = v269;
        swift_getKeyPath();
        if (v41)
        {
          *&v273 = MEMORY[0x1E69E7CC0];
          sub_1AAD1FAF4(0, v41, 0);
          v51 = v273;
          v52 = v266;
          v53 = v41;
          do
          {
            v270 = *v52;

            swift_getAtKeyPath();

            v54 = v271;
            *&v273 = v51;
            v56 = *(v51 + 16);
            v55 = *(v51 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_1AAD1FAF4((v55 > 1), v56 + 1, 1);
              v51 = v273;
            }

            *(v51 + 16) = v56 + 1;
            *(v51 + 8 * v56 + 32) = v54;
            v52 += 8;
            --v53;
          }

          while (v53);
        }

        else
        {

          v51 = MEMORY[0x1E69E7CC0];
        }

        sub_1AAD21FF8(v51, v259, v260, sub_1AAD22AF0);
        v58 = v57;

        sub_1AAD1900C(v277, &v271, qword_1ED9B3000, &type metadata for SgSymbol);
        if (v279 == 255)
        {
          v73 = *(&v278 + 1);
          v72 = v278;
          v74 = -1;
        }

        else
        {
          if (v41)
          {
            *&v273 = MEMORY[0x1E69E7CC0];
            sub_1AAD41964(0, v41, 0);
            v59 = v273;
            v60 = v266;
            v61 = v269;
            v62 = v249;
            while (v61 < *(*v60 + 16))
            {
              v63 = *v60 + v62;
              v64 = *(v63 + 104);
              v65 = *(v63 + 120);
              v66 = v65 != 255;
              *&v273 = v59;
              v68 = *(v59 + 16);
              v67 = *(v59 + 24);
              if (v68 >= v67 >> 1)
              {
                v248 = v64;
                sub_1AAD41964((v67 > 1), v68 + 1, 1);
                v64 = v248;
                v62 = v249;
                v61 = v269;
                v59 = v273;
              }

              v69 = vdup_n_s32(v66);
              v70.i64[0] = v69.u32[0];
              v70.i64[1] = v69.u32[1];
              *(v59 + 16) = v68 + 1;
              v71 = (v59 + 24 * v68);
              v71[2] = vandq_s8(v64, vcltzq_s64(vshlq_n_s64(v70, 0x3FuLL)));
              v71[3].i8[0] = v66 & v65;
              v60 += 8;
              --v41;
              v21 = v261;
              if (!v41)
              {
                goto LABEL_49;
              }
            }

            goto LABEL_182;
          }

          v59 = MEMORY[0x1E69E7CC0];
LABEL_49:
          v72 = sub_1AAF4F340(v59, v258);
          v73 = v75;
          v77 = v76;

          v74 = v77 & 1;
        }

        v26 = v264;
        v273 = v271;
        v274[0] = v272[0];
        *(v274 + 9) = *(v272 + 9);
        v78 = v267;
        swift_beginAccess();
        v79 = *v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v78 = v79;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_1AAD69968(0, *(v79 + 2) + 1, 1, v79);
          *v267 = v79;
        }

        v82 = *(v79 + 2);
        v81 = *(v79 + 3);
        v83 = v265;
        if (v82 >= v81 >> 1)
        {
          v88 = sub_1AAD69968((v81 > 1), v82 + 1, 1, v79);
          v83 = v265;
          v79 = v88;
        }

        *(v79 + 2) = v82 + 1;
        v84 = &v79[96 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v49;
        *(v84 + 6) = v58;
        v85 = v273;
        v86 = v274[0];
        *(v84 + 81) = *(v274 + 9);
        *(v84 + 72) = v86;
        *(v84 + 56) = v85;
        v87 = *(&v270 + 3);
        *(v84 + 97) = v270;
        *(v84 + 25) = v87;
        *(v84 + 13) = v72;
        *(v84 + 14) = v73;
        v84[120] = v74;
        *v267 = v79;
        swift_endAccess();
        sub_1AAE5EE50(&v275);
        v32 = v251;
        v33 = v250;
        v31 = v262;
        v30 = v263;
        if (v250 == v262)
        {

          goto LABEL_172;
        }
      }

      goto LABEL_186;
    }

    v27 = *(v26 + 16);
    v28 = v21 + 40;
    v29 = v25;
    while (*(*v28 + 16) == v27 && (!v27 || *(*v28 + 96 * v27 - 64) == *(v26 - 64 + 96 * v27)))
    {
      v28 += 8;
      if (!--v29)
      {
        goto LABEL_17;
      }
    }

LABEL_56:
    v89 = MEMORY[0x1E69E7CC0];
    v90 = sub_1AADF69B0(MEMORY[0x1E69E7CC0]);
    v280 = sub_1AADF69C8(v89);
    v91 = sub_1AADF6AF0(v89);
    v92 = 0;
    v93 = (v25 + 1);
    v264 = xmmword_1AAF92AB0;
LABEL_57:
    v263 = v91;
    while (v93 != v92)
    {
      if (v92 >= *(v21 + 2))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v94 = *&v21[8 * v92++ + 32];
      v95 = *(v94 + 2);
      if (v95)
      {
        v251 = v93;
        v96 = (v94 + 32);

        v97 = 0;
        *&v269 = v92 - 1;
        v265 = v95;
        v266 = v94;
        while (1)
        {
          if (v97 >= *(v94 + 2))
          {
            goto LABEL_174;
          }

          sub_1AAE5EDF4(v96, &v275);
          v98 = v275;
          if (v90[2] && (v99 = sub_1AACC9B78(v275), (v100 & 1) != 0))
          {
            v101 = v90;
            v102 = (v90[7] + 16 * v99);
            v104 = *v102;
            v103 = v102[1];
            v105 = v276;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = sub_1AAD6BCCC(0, *(v103 + 2) + 1, 1, v103);
            }

            v107 = *(v103 + 2);
            v106 = *(v103 + 3);
            if (v107 >= v106 >> 1)
            {
              v103 = sub_1AAD6BCCC((v106 > 1), v107 + 1, 1, v103);
            }

            *(v103 + 2) = v107 + 1;
            v108 = &v103[24 * v107];
            *(v108 + 4) = v269;
            *(v108 + 40) = v105;
            v109 = v101;
            v110 = swift_isUniquelyReferenced_nonNull_native();
            *&v273 = v109;
            v111 = sub_1AACC9B78(v98);
            v113 = v109[2];
            v114 = (v112 & 1) == 0;
            v115 = __OFADD__(v113, v114);
            v116 = v113 + v114;
            if (v115)
            {
              goto LABEL_178;
            }

            v117 = v112;
            if (v109[3] >= v116)
            {
              if ((v110 & 1) == 0)
              {
                v181 = v111;
                sub_1AAD99A70();
                v111 = v181;
              }
            }

            else
            {
              sub_1AAD916FC(v116, v110);
              v111 = sub_1AACC9B78(v98);
              if ((v117 & 1) != (v118 & 1))
              {
                goto LABEL_190;
              }
            }

            v144 = v273;
            if (v117)
            {
              v145 = (*(v273 + 56) + 16 * v111);
              *v145 = v104;
              v145[1] = v103;

              v90 = v144;
            }

            else
            {
              *(v273 + 8 * (v111 >> 6) + 64) |= 1 << v111;
              *(v144[6] + 8 * v111) = v98;
              v146 = (v144[7] + 16 * v111);
              *v146 = v104;
              v146[1] = v103;
              v147 = v144[2];
              v115 = __OFADD__(v147, 1);
              v148 = v147 + 1;
              if (v115)
              {
                goto LABEL_183;
              }

              v90 = v144;
              v144[2] = v148;
            }

            sub_1AAD1900C(v277, &v273, qword_1ED9B3000, &type metadata for SgSymbol);
            if (BYTE8(v274[1]) == 255)
            {
              sub_1AAE5EE50(&v275);
              v143 = &v273;
              goto LABEL_125;
            }

            sub_1AAD19258(&v273, qword_1ED9B3000, &type metadata for SgSymbol);
            v149 = v279;
            if (v279 == 255)
            {
              goto LABEL_127;
            }

            v262 = v278;
            v151 = sub_1AAF447D4(&v273, v98);
            v152 = *v150;
            if (!*v150)
            {
              (v151)(&v273, 0);
LABEL_127:
              sub_1AAE5EE50(&v275);
              goto LABEL_64;
            }

            v153 = v150;
            v267 = v90;
            v154 = swift_isUniquelyReferenced_nonNull_native();
            *v153 = v152;
            if ((v154 & 1) == 0)
            {
              v152 = sub_1AAD6BBD4(0, *(v152 + 2) + 1, 1, v152);
              *v153 = v152;
            }

            v156 = *(v152 + 2);
            v155 = *(v152 + 3);
            if (v156 >= v155 >> 1)
            {
              v152 = sub_1AAD6BBD4((v155 > 1), v156 + 1, 1, v152);
              *v153 = v152;
            }

            *(v152 + 2) = v156 + 1;
            v157 = &v152[32 * v156];
            *(v157 + 2) = v262;
            v157[48] = v149 & 1;
            *(v157 + 7) = v269;
            (v151)(&v273, 0);
          }

          else
          {
            sub_1AAF4FF94(0);
            v119 = swift_allocObject();
            *(v119 + 16) = v264;
            *(v119 + 32) = v269;
            *(v119 + 40) = v276;
            v120 = swift_isUniquelyReferenced_nonNull_native();
            *&v273 = v90;
            v121 = sub_1AACC9B78(v98);
            v123 = v90[2];
            v124 = (v122 & 1) == 0;
            v115 = __OFADD__(v123, v124);
            v125 = v123 + v124;
            if (v115)
            {
              goto LABEL_175;
            }

            v126 = v122;
            if (v90[3] >= v125)
            {
              if ((v120 & 1) == 0)
              {
                v180 = v121;
                sub_1AAD99A70();
                v121 = v180;
              }
            }

            else
            {
              sub_1AAD916FC(v125, v120);
              v121 = sub_1AACC9B78(v98);
              if ((v126 & 1) != (v127 & 1))
              {
                goto LABEL_190;
              }
            }

            v90 = v273;
            if (v126)
            {
              v128 = (*(v273 + 56) + 16 * v121);
              *v128 = v98;
              v128[1] = v119;
            }

            else
            {
              *(v273 + 8 * (v121 >> 6) + 64) |= 1 << v121;
              *(v90[6] + 8 * v121) = v98;
              v129 = (v90[7] + 16 * v121);
              *v129 = v98;
              v129[1] = v119;
              v130 = v90[2];
              v115 = __OFADD__(v130, 1);
              v131 = v130 + 1;
              if (v115)
              {
                goto LABEL_177;
              }

              v90[2] = v131;
            }

            sub_1AAD1900C(v277, &v271, qword_1ED9B3000, &type metadata for SgSymbol);
            if (BYTE8(v272[1]) == 255)
            {
              sub_1AAE5EE50(&v275);
              v143 = &v271;
LABEL_125:
              sub_1AAD19258(v143, qword_1ED9B3000, &type metadata for SgSymbol);
              goto LABEL_64;
            }

            v267 = v90;
            v273 = v271;
            v274[0] = v272[0];
            *(v274 + 9) = *(v272 + 9);
            v132 = v279;
            if (v279 != 255)
            {
              *&v262 = *(&v278 + 1);
              v133 = v278;
              sub_1AAD9ADE4(&v273, &v271);
              v134 = v263;
              v135 = swift_isUniquelyReferenced_nonNull_native();
              v270 = v134;
              v136 = sub_1AACC9B78(v98);
              v138 = v134[2];
              v139 = (v137 & 1) == 0;
              v115 = __OFADD__(v138, v139);
              v140 = v138 + v139;
              if (v115)
              {
                goto LABEL_179;
              }

              v141 = v137;
              if (v134[3] >= v140)
              {
                if ((v135 & 1) == 0)
                {
                  v182 = v136;
                  sub_1AAD998F4();
                  v136 = v182;
                }
              }

              else
              {
                sub_1AAD91474(v140, v135);
                v136 = sub_1AACC9B78(v98);
                if ((v141 & 1) != (v142 & 1))
                {
                  goto LABEL_190;
                }
              }

              v158 = v270;
              v263 = v270;
              if (v141)
              {
                v159 = v133;
                sub_1AAF50058(&v271, v270[7] + 48 * v136);
              }

              else
              {
                v270[(v136 >> 6) + 8] |= 1 << v136;
                *(v158[6] + 8 * v136) = v98;
                v160 = (v158[7] + 48 * v136);
                v161 = v271;
                v162 = v272[0];
                *(v160 + 25) = *(v272 + 9);
                *v160 = v161;
                v160[1] = v162;
                v163 = v158[2];
                v115 = __OFADD__(v163, 1);
                v164 = v163 + 1;
                if (v115)
                {
                  goto LABEL_184;
                }

                v159 = v133;
                v158[2] = v164;
              }

              sub_1AAD1F8C0(0, &qword_1EB423AC0, sub_1AAD9AF04, MEMORY[0x1E69E6F90]);
              v165 = swift_allocObject();
              *(v165 + 16) = v264;
              v166 = v262;
              *(v165 + 32) = v159;
              *(v165 + 40) = v166;
              *(v165 + 48) = v132 & 1;
              *(v165 + 56) = v269;
              v167 = v280;
              v168 = swift_isUniquelyReferenced_nonNull_native();
              *&v271 = v167;
              v170 = sub_1AACC9B78(v98);
              v171 = v167[2];
              v172 = (v169 & 1) == 0;
              v173 = v171 + v172;
              if (__OFADD__(v171, v172))
              {
                goto LABEL_180;
              }

              v174 = v169;
              if (v167[3] >= v173)
              {
                if ((v168 & 1) == 0)
                {
                  sub_1AAD99778();
                }
              }

              else
              {
                sub_1AAD911E4(v173, v168);
                v175 = sub_1AACC9B78(v98);
                if ((v174 & 1) != (v176 & 1))
                {
                  goto LABEL_190;
                }

                v170 = v175;
              }

              v90 = v267;
              v177 = v271;
              if (v174)
              {
                *(*(v271 + 56) + 8 * v170) = v165;

                sub_1AAF50004(&v273);
                sub_1AAE5EE50(&v275);
              }

              else
              {
                *(v271 + 8 * (v170 >> 6) + 64) |= 1 << v170;
                *(v177[6] + 8 * v170) = v98;
                *(v177[7] + 8 * v170) = v165;
                sub_1AAF50004(&v273);
                sub_1AAE5EE50(&v275);
                v178 = v177[2];
                v115 = __OFADD__(v178, 1);
                v179 = v178 + 1;
                if (v115)
                {
                  goto LABEL_185;
                }

                v177[2] = v179;
              }

              v280 = v177;
              goto LABEL_64;
            }

            sub_1AAF50004(&v273);
          }

          sub_1AAE5EE50(&v275);
          v90 = v267;
LABEL_64:
          v94 = v266;
          ++v97;
          v96 += 96;
          if (v265 == v97)
          {

            v21 = v261;
            v91 = v263;
            v93 = v251;
            goto LABEL_57;
          }
        }
      }
    }

    type metadata accessor for SgLine.Points();
    v183 = swift_allocObject();
    *(v183 + 16) = MEMORY[0x1E69E7CC0];
    v184 = (v183 + 16);
    v185 = v258;

    v186 = v259;

    v188 = v252;
    sub_1AAF4F6C8(v187, v185, v186);
    v190 = v189;

    LODWORD(v186) = sub_1AAF8E7A4();
    if (v186 == sub_1AAF8E7A4())
    {
      v275 = v190;

      sub_1AAF44DE4(&v275);
      if (!v188)
      {
        goto LABEL_131;
      }
    }

    else
    {
      v275 = v190;

      sub_1AAF44F5C(&v275);
      if (!v188)
      {
LABEL_131:
        *&v264 = v188;

        v191 = v275;
        v265 = v183;
        v266 = (v183 + 16);
        v192 = *(v275 + 2);
        if (v192)
        {
          v275 = MEMORY[0x1E69E7CC0];
          sub_1AAD41994(0, v192, 0);
          v193 = v275;
          v194 = *(v275 + 2);
          v195 = 96 * v194 + 120;
          v196 = v191 + 40;
          v197 = 0uLL;
          do
          {
            v198 = *(v196 - 1);
            v199 = *v196;
            v275 = v193;
            v200 = *(v193 + 3);
            v201 = v194 + 1;
            if (v194 >= v200 >> 1)
            {
              v269 = v199;
              sub_1AAD41994((v200 > 1), v194 + 1, 1);
              v199 = v269;
              v197 = 0uLL;
              v193 = v275;
            }

            *(v193 + 2) = v201;
            v202 = &v193[v195];
            *(v202 - 11) = v198;
            *(v202 - 5) = v199;
            *(v202 - 4) = v197;
            *(v202 - 3) = v197;
            *(v202 - 4) = 0;
            *(v202 - 24) = -1;
            v203 = v273;
            *(v202 - 5) = *(&v273 + 3);
            *(v202 - 23) = v203;
            *(v202 - 2) = 0;
            *(v202 - 1) = 0;
            *v202 = -1;
            v195 += 96;
            v196 = (v196 + 24);
            v194 = v201;
            --v192;
          }

          while (v192);

          v184 = v266;
LABEL_140:
          swift_beginAccess();
          *v184 = v193;

          v204 = v263;
          if (!*(v263 + 16) || (v205 = v280, !v280[2]) || (v206 = *(*v184 + 2)) == 0)
          {
LABEL_171:

            v243 = v268;
            v244 = v255;
            sub_1AAD1FA8C(v257, v255 + *(v268 + 32), type metadata accessor for SgShapeStyle);

            v245 = v265;
            *v244 = 0;
            *(v244 + 8) = v245;
            *(v244 + 16) = v256;
            *(v244 + 24) = v254;
            *(v244 + 32) = v253;
            *(v244 + *(v243 + 36)) = 0;

            return;
          }

          v207 = 0;
          v267 = v90;
          *&v262 = v280;
          v252 = v206;
          while (1)
          {
            v208 = *v184;
            if (v207 >= *(*v184 + 2))
            {
              break;
            }

            if (*(v204 + 16))
            {
              *&v269 = 96 * v207;
              v209 = *&v208[96 * v207 + 32];
              v210 = sub_1AACC9B78(v209);
              if (v211)
              {
                sub_1AAD9ADE4(*(v204 + 56) + 48 * v210, &v275);
                if (v205[2])
                {
                  v212 = sub_1AACC9B78(v209);
                  if (v213)
                  {
                    v214 = *(v205[7] + 8 * v212);
                    v215 = *(v214 + 16);
                    if (v215)
                    {
                      *&v273 = MEMORY[0x1E69E7CC0];

                      sub_1AAD214F4(0, v215, 0);
                      v216 = v273;
                      v217 = *(v273 + 16);
                      v218 = (v214 + 56);
                      v219 = v215;
                      do
                      {
                        v221 = *v218;
                        v218 += 4;
                        v220 = v221;
                        *&v273 = v216;
                        v222 = *(v216 + 24);
                        if (v217 >= v222 >> 1)
                        {
                          sub_1AAD214F4((v222 > 1), v217 + 1, 1);
                          v216 = v273;
                        }

                        *(v216 + 16) = v217 + 1;
                        *(v216 + 8 * v217++ + 32) = v220;
                        --v219;
                      }

                      while (v219);
                      v184 = v266;
                    }

                    else
                    {

                      v216 = MEMORY[0x1E69E7CC0];
                    }

                    v223 = sub_1AAD21514(v216, v258, v259);
                    v225 = v224;

                    if (v215)
                    {
                      v250 = v225;
                      v251 = v223;
                      *&v273 = MEMORY[0x1E69E7CC0];
                      sub_1AAD41964(0, v215, 0);
                      v226 = 0;
                      v227 = v273;
                      v228 = *(v273 + 16);
                      v229 = 24 * v228;
                      do
                      {
                        v230 = *(v214 + v226 + 32);
                        v231 = *(v214 + v226 + 48);
                        *&v273 = v227;
                        v232 = *(v227 + 24);
                        v233 = v228 + 1;
                        if (v228 >= v232 >> 1)
                        {
                          v249 = v230;
                          sub_1AAD41964((v232 > 1), v228 + 1, 1);
                          v230 = v249;
                          v227 = v273;
                        }

                        *(v227 + 16) = v233;
                        v234 = v227 + v229;
                        *(v234 + 32) = v230;
                        *(v234 + 48) = v231;
                        v229 += 24;
                        v226 += 32;
                        v228 = v233;
                        --v215;
                      }

                      while (v215);

                      v184 = v266;
                      v223 = v251;
                    }

                    else
                    {

                      v227 = MEMORY[0x1E69E7CC0];
                    }

                    v235 = sub_1AAF4F340(v227, v223);
                    v237 = v236;
                    v239 = v238;

                    sub_1AAD9ADE4(&v275, &v273);
                    swift_beginAccess();
                    v240 = *v184;
                    v241 = swift_isUniquelyReferenced_nonNull_native();
                    *v184 = v240;
                    if ((v241 & 1) == 0)
                    {
                      v240 = sub_1AADB8298(v240);
                      *v184 = v240;
                    }

                    if (v207 >= *(v240 + 2))
                    {
                      goto LABEL_187;
                    }

                    v242 = &v240[v269];
                    sub_1AAF500B4(&v273, &v240[v269 + 56]);
                    *v184 = v240;
                    if (v207 >= *(v240 + 2))
                    {
                      goto LABEL_188;
                    }

                    *(v242 + 13) = v235;
                    *(v242 + 14) = v237;
                    v242[120] = v239 & 1;
                    *v184 = v240;
                    swift_endAccess();
                    v205 = v262;
                    v206 = v252;
                  }
                }

                sub_1AAF50004(&v275);
                v204 = v263;
              }
            }

            if (++v207 == v206)
            {
              goto LABEL_171;
            }
          }

LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

LABEL_139:

        v193 = MEMORY[0x1E69E7CC0];
        goto LABEL_140;
      }
    }

    __break(1u);
    goto LABEL_139;
  }

LABEL_189:
  sub_1AAD236E4(MEMORY[0x1E69E7CC0], v258, v259, v260, v257);

  __break(1u);
LABEL_190:
  sub_1AAF905B4();
  __break(1u);
}

void sub_1AAF4A5A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v119 = a4;
  v118 = a3;
  v117 = a2;
  v114 = a5;
  v133 = type metadata accessor for SgArea(0);
  v6 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SgShapeStyle(0);
  v131 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v110 - v12;
  sub_1AAD20998(0, &qword_1EB4273D0, type metadata accessor for SgArea);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v120 = (&v110 - v16);
  sub_1AAF4FD58(0, &qword_1EB4273D8, &qword_1EB4273D0, type metadata accessor for SgArea, sub_1AAD20998);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v110 - v21);
  v23 = *(a1 + 16);
  if (!v23)
  {
    goto LABEL_64;
  }

  v121 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v116 = *(v121 + 16);
  v24 = sub_1AADF6C2C(MEMORY[0x1E69E7CC0]);
  v129 = (v15 + 48);
  *&v130 = v15 + 56;
  v112 = a1;

  v25 = 0;
  v111 = 0;
  v122 = xmmword_1AAF92AB0;
  v127 = v23;
  v115 = v6;
  v128 = v22;
  while (1)
  {
LABEL_3:
    if (v25 == v23)
    {
      v26 = 1;
      *&v134 = v23;
      goto LABEL_8;
    }

    if (v25 >= v23)
    {
      goto LABEL_59;
    }

    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    v28 = v121 + *(v6 + 72) * v25;
    v29 = *(v14 + 48);
    v30 = v120;
    *v120 = v25;
    sub_1AAD1C5AC(v28, v30 + v29, type metadata accessor for SgArea);
    sub_1AAF4FE28(v30, v19, &qword_1EB4273D0, type metadata accessor for SgArea);
    v26 = 0;
    *&v134 = v27;
LABEL_8:
    (*v130)(v19, v26, 1, v14);
    sub_1AAF501F8(v19, v22, &qword_1EB4273D8, &qword_1EB4273D0, type metadata accessor for SgArea);
    if ((*v129)(v22, 1, v14) == 1)
    {

      type metadata accessor for SgArea.Points();
      v81 = swift_allocObject();
      *(v81 + 16) = MEMORY[0x1E69E7CC0];
      v82 = v117;

      v83 = v118;

      v85 = v111;
      sub_1AAF4F954(v84, v82, v83);
      v87 = v86;

      LODWORD(v83) = sub_1AAF8E7A4();
      if (v83 == sub_1AAF8E7A4())
      {
        v135 = v87;

        sub_1AAF450D8(&v135);
        if (!v85)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v135 = v87;

        sub_1AAF45248(&v135);
        if (!v85)
        {
LABEL_43:

          v88 = v135;
          v89 = *(v135 + 2);
          if (v89)
          {
            v135 = MEMORY[0x1E69E7CC0];
            sub_1AAD41A18(0, v89, 0);
            v90 = 0;
            v91 = v135;
            v92 = *(v135 + 2);
            v93 = 40 * v92;
            do
            {
              v94 = *&v88[v90 + 32];
              v95 = *&v88[v90 + 40];
              v96 = *&v88[v90 + 56];
              v135 = v91;
              v97 = *(v91 + 3);
              v98 = v92 + 1;
              if (v92 >= v97 >> 1)
              {
                v134 = v95;
                v130 = v96;
                sub_1AAD41A18((v97 > 1), v92 + 1, 1);
                v96 = v130;
                v95 = v134;
                v91 = v135;
              }

              *(v91 + 2) = v98;
              v99 = &v91[v93 + v90];
              *(v99 + 4) = v94;
              *(v99 + 40) = v95;
              *(v99 + 56) = v96;
              v90 += 40;
              v92 = v98;
              --v89;
            }

            while (v89);

            v6 = v115;
            v23 = v127;
            goto LABEL_52;
          }

LABEL_51:

          v91 = MEMORY[0x1E69E7CC0];
LABEL_52:
          *(v81 + 16) = v91;

          v100 = v121;
          *&v134 = *(v121 + 24);
          v101 = *(v121 + 32);
          v135 = MEMORY[0x1E69E7CC0];
          sub_1AAD23694(0, v23, 0);
          v102 = v135;
          v103 = *(v6 + 72);
          do
          {
            v104 = v132;
            sub_1AAD1C5AC(v100, v132, type metadata accessor for SgArea);
            sub_1AAD1C5AC(v104 + *(v133 + 32), v10, type metadata accessor for SgShapeStyle);
            sub_1AAF502C0(v104, type metadata accessor for SgArea);
            v135 = v102;
            v106 = *(v102 + 2);
            v105 = *(v102 + 3);
            if (v106 >= v105 >> 1)
            {
              sub_1AAD23694((v105 > 1), v106 + 1, 1);
              v102 = v135;
            }

            *(v102 + 2) = v106 + 1;
            sub_1AAD1FA8C(v10, &v102[((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v106], type metadata accessor for SgShapeStyle);
            v100 += v103;
            --v23;
          }

          while (v23);
          v107 = v113;
          sub_1AAD236E4(v102, v117, v118, v119, v113);

          v108 = v114;
          *v114 = 0;
          v108[1] = v81;
          *(v108 + 16) = v116;
          v109 = v133;
          v108[3] = v134;
          *(v108 + 32) = v101;
          sub_1AAD1FA8C(v107, v108 + *(v109 + 32), type metadata accessor for SgShapeStyle);

          *(v108 + *(v109 + 36)) = 0;
          return;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v31 = *v22;
    v32 = v22 + *(v14 + 48);
    v33 = *(v32 + 8);

    sub_1AAF502C0(v32, type metadata accessor for SgArea);
    v34 = *(v33 + 16);

    v35 = *(v34 + 16);
    if (v35)
    {
      v126 = v31;
      v110 = v14;
      v36 = 0;
      v37 = (v34 + 64);
      v124 = v19;
      v125 = v10;
      v123 = v35;
      while (1)
      {
        if (v36 >= *(v34 + 16))
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v39 = *(v37 - 4);
        v41 = *(v37 - 3);
        v40 = *(v37 - 2);
        v43 = *(v37 - 1);
        v42 = *v37;
        if (*(v24 + 2))
        {
          v44 = sub_1AACC9B78(*(v37 - 4));
          if (v45)
          {
            break;
          }
        }

        sub_1AAD1F8C0(0, &qword_1EB423AE0, sub_1AAD6C66C, MEMORY[0x1E69E6F90]);
        v62 = swift_allocObject();
        *(v62 + 16) = v122;
        *(v62 + 32) = v126;
        *(v62 + 40) = v41;
        *(v62 + 48) = v40;
        *(v62 + 56) = v43;
        *(v62 + 64) = v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v24;
        v65 = sub_1AACC9B78(v39);
        v66 = *(v24 + 2);
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_58;
        }

        v69 = v64;
        if (*(v24 + 3) >= v68)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AAD99A88();
          }
        }

        else
        {
          sub_1AAD91714(v68, isUniquelyReferenced_nonNull_native);
          v70 = sub_1AACC9B78(v39);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_65;
          }

          v65 = v70;
        }

        v10 = v125;
        v24 = v135;
        if (v69)
        {
          v38 = (*(v135 + 7) + 16 * v65);
          *v38 = v39;
          v38[1] = v62;
        }

        else
        {
          *&v135[8 * (v65 >> 6) + 64] |= 1 << v65;
          *(*(v24 + 6) + 8 * v65) = v39;
          v72 = (*(v24 + 7) + 16 * v65);
          *v72 = v39;
          v72[1] = v62;
          v73 = *(v24 + 2);
          v58 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v58)
          {
            goto LABEL_61;
          }

          *(v24 + 2) = v74;
        }

LABEL_13:
        v23 = v127;
        v19 = v124;
        ++v36;
        v37 += 5;
        if (v123 == v36)
        {

          v6 = v115;
          v14 = v110;
          v22 = v128;
          v25 = v134;
          goto LABEL_3;
        }
      }

      v46 = (*(v24 + 7) + 16 * v44);
      v48 = *v46;
      v47 = v46[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1AAD6BE0C(0, *(v47 + 2) + 1, 1, v47);
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      v51 = v126;
      if (v50 >= v49 >> 1)
      {
        v76 = sub_1AAD6BE0C((v49 > 1), v50 + 1, 1, v47);
        v51 = v126;
        v47 = v76;
      }

      *(v47 + 2) = v50 + 1;
      v52 = &v47[40 * v50];
      *(v52 + 4) = v51;
      *(v52 + 5) = v41;
      *(v52 + 6) = v40;
      *(v52 + 7) = v43;
      *(v52 + 8) = v42;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v24;
      v54 = sub_1AACC9B78(v39);
      v56 = *(v24 + 2);
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_62;
      }

      v60 = v55;
      if (*(v24 + 3) >= v59)
      {
        if ((v53 & 1) == 0)
        {
          v77 = v54;
          sub_1AAD99A88();
          v54 = v77;
          v24 = v135;
          if ((v60 & 1) == 0)
          {
LABEL_38:
            *&v24[8 * (v54 >> 6) + 64] |= 1 << v54;
            *(*(v24 + 6) + 8 * v54) = v39;
            v78 = (*(v24 + 7) + 16 * v54);
            *v78 = v48;
            v78[1] = v47;
            v79 = *(v24 + 2);
            v58 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v58)
            {
              goto LABEL_63;
            }

            *(v24 + 2) = v80;
            v10 = v125;
            goto LABEL_13;
          }

          goto LABEL_36;
        }
      }

      else
      {
        sub_1AAD91714(v59, v53);
        v54 = sub_1AACC9B78(v39);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_65;
        }
      }

      v24 = v135;
      if ((v60 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      v75 = (*(v24 + 7) + 16 * v54);
      *v75 = v48;
      v75[1] = v47;

      v10 = v125;
      goto LABEL_13;
    }

    v22 = v128;
    v25 = v134;
  }

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
  sub_1AAF905B4();
  __break(1u);
}

void sub_1AAF4B194(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v50 = a2;
  v9 = type metadata accessor for SgShapeStyle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38[-v14];
  v16 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v22 = *(a1 + 16);
  if (v22)
  {
    v46 = a3;
    v47 = v15;
    v48 = a4;
    v49 = a5;
    v23 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v24 = *(v20 + 72);
    v25 = &v38[-v21];
    sub_1AAD1C5AC(v23 + v24 * (v22 - 1), &v38[-v21], type metadata accessor for SgPath);
    v26 = *(v25 + 1);
    v44 = *v25;
    v45 = v25;
    v27 = *(v25 + 3);
    v28 = *(v25 + 4);
    v29 = v25[40];
    v42 = *(v25 + 2);
    v43 = v26;
    v40 = v28;
    v41 = v27;
    v39 = v29;
    sub_1AAE5214C(v26, v42, v27, v28, v29);
    v51 = MEMORY[0x1E69E7CC0];
    sub_1AAD23694(0, v22, 0);
    v30 = v51;
    do
    {
      sub_1AAD1C5AC(v23, v18, type metadata accessor for SgPath);
      sub_1AAD1C5AC(&v18[*(v16 + 24)], v12, type metadata accessor for SgShapeStyle);
      sub_1AAF502C0(v18, type metadata accessor for SgPath);
      v51 = v30;
      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1AAD23694((v31 > 1), v32 + 1, 1);
        v30 = v51;
      }

      *(v30 + 16) = v32 + 1;
      sub_1AAD1FA8C(v12, v30 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, type metadata accessor for SgShapeStyle);
      v23 += v24;
      --v22;
    }

    while (v22);
    v33 = v47;
    sub_1AAD236E4(v30, v50, v46, v48, v47);

    v34 = *&v45[*(v16 + 28)];
    sub_1AAF502C0(v45, type metadata accessor for SgPath);
    v35 = v49;
    v36 = v43;
    *v49 = v44;
    v35[1] = v36;
    v37 = v41;
    v35[2] = v42;
    v35[3] = v37;
    v35[4] = v40;
    *(v35 + 40) = v39;
    sub_1AAD1FA8C(v33, v35 + *(v16 + 24), type metadata accessor for SgShapeStyle);
    *(v35 + *(v16 + 28)) = v34;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAF4B540@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    return sub_1AAE5EDF4(*result + 96 * v3 + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF4B574(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v5 = *a3;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1AADB8298(v6);
  v6 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 < *(v6 + 16))
  {
    result = sub_1AAF5013C(a1, v6 + 96 * v5 + 32);
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1AAF4B5F4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v34 = *a1;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v32 = a3;
    v33 = a2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AAD214F4(0, v5, 0);
    v6 = v36;
    v7 = (v4 + 32);
    v8 = *(v36 + 16);
    v9 = v5;
    do
    {
      v11 = *v7;
      v7 += 3;
      v10 = v11;
      v12 = *(v36 + 24);
      if (v8 >= v12 >> 1)
      {
        sub_1AAD214F4((v12 > 1), v8 + 1, 1);
      }

      *(v36 + 16) = v8 + 1;
      *(v36 + 8 * v8++ + 32) = v10;
      --v9;
    }

    while (v9);
    a3 = v32;
    a2 = v33;
  }

  sub_1AAD21514(v6, a2, a3);
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v17 = v37;
    v18 = *(v37 + 16);
    v19 = (v4 + 40);
    v20 = v5;
    do
    {
      v21 = *v19;
      v22 = *(v37 + 24);
      if (v18 >= v22 >> 1)
      {
        sub_1AAD1FAF4((v22 > 1), v18 + 1, 1);
      }

      *(v37 + 16) = v18 + 1;
      *(v37 + 8 * v18 + 32) = v21;
      v19 += 3;
      ++v18;
      --v20;
    }

    while (v20);
  }

  sub_1AAD21FF8(v17, v14, v16, sub_1AAD22150);
  v24 = v23;

  v25 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v25 = v38;
    v26 = *(v38 + 16);
    v27 = (v4 + 48);
    do
    {
      v28 = *v27;
      v29 = *(v38 + 24);
      if (v26 >= v29 >> 1)
      {
        sub_1AAD1FAF4((v29 > 1), v26 + 1, 1);
      }

      *(v38 + 16) = v26 + 1;
      *(v38 + 8 * v26 + 32) = v28;
      v27 += 3;
      ++v26;
      --v5;
    }

    while (v5);
  }

  sub_1AAD21FF8(v25, v14, v16, sub_1AAD22AF0);
  v31 = v30;

  *a4 = v34;
  a4[1] = v24;
  a4[2] = v31;
}

void sub_1AAF4B8A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a1[1];
  v50 = *a1;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v52 = v4;
  if (v5)
  {
    v49 = a2;
    v7 = a3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1AAD214F4(0, v5, 0);
    v6 = v53;
    v8 = (v4 + 32);
    v9 = *(v53 + 16);
    v10 = v5;
    do
    {
      v12 = *v8;
      v8 += 5;
      v11 = v12;
      v13 = *(v53 + 24);
      if (v9 >= v13 >> 1)
      {
        sub_1AAD214F4((v13 > 1), v9 + 1, 1);
      }

      *(v53 + 16) = v9 + 1;
      *(v53 + 8 * v9++ + 32) = v11;
      --v10;
    }

    while (v10);
    a3 = v7;
    a2 = v49;
    v4 = v52;
  }

  sub_1AAD21514(v6, a2, a3);
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v18 = v54;
    v19 = *(v54 + 16);
    v20 = (v4 + 40);
    v21 = v5;
    do
    {
      v22 = *v20;
      v23 = *(v54 + 24);
      if (v19 >= v23 >> 1)
      {
        sub_1AAD1FAF4((v23 > 1), v19 + 1, 1);
      }

      *(v54 + 16) = v19 + 1;
      *(v54 + 8 * v19 + 32) = v22;
      v20 += 5;
      ++v19;
      --v21;
    }

    while (v21);
    v4 = v52;
  }

  sub_1AAD21FF8(v18, v15, v17, sub_1AAD22150);
  v25 = v24;

  v26 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v26 = v55;
    v27 = *(v55 + 16);
    v28 = (v4 + 48);
    v29 = v5;
    do
    {
      v30 = *v28;
      v31 = *(v55 + 24);
      if (v27 >= v31 >> 1)
      {
        sub_1AAD1FAF4((v31 > 1), v27 + 1, 1);
      }

      *(v55 + 16) = v27 + 1;
      *(v55 + 8 * v27 + 32) = v30;
      v28 += 5;
      ++v27;
      --v29;
    }

    while (v29);
    v4 = v52;
  }

  sub_1AAD21FF8(v26, v15, v17, sub_1AAD22AF0);
  v33 = v32;

  v34 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v34 = v56;
    v35 = *(v56 + 16);
    v36 = (v4 + 56);
    v37 = v5;
    do
    {
      v38 = *v36;
      v39 = *(v56 + 24);
      if (v35 >= v39 >> 1)
      {
        sub_1AAD1FAF4((v39 > 1), v35 + 1, 1);
      }

      *(v56 + 16) = v35 + 1;
      *(v56 + 8 * v35 + 32) = v38;
      v36 += 5;
      ++v35;
      --v37;
    }

    while (v37);
    v4 = v52;
  }

  sub_1AAD21FF8(v34, v15, v17, sub_1AAD22150);
  v41 = v40;

  v42 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v5, 0);
    v42 = v57;
    v43 = *(v57 + 16);
    v44 = (v4 + 64);
    do
    {
      v45 = *v44;
      v46 = *(v57 + 24);
      if (v43 >= v46 >> 1)
      {
        sub_1AAD1FAF4((v46 > 1), v43 + 1, 1);
      }

      *(v57 + 16) = v43 + 1;
      *(v57 + 8 * v43 + 32) = v45;
      v44 += 5;
      ++v43;
      --v5;
    }

    while (v5);
  }

  sub_1AAD21FF8(v42, v15, v17, sub_1AAD22AF0);
  v48 = v47;

  *a4 = v50;
  a4[1] = v25;
  a4[2] = v33;
  a4[3] = v41;
  a4[4] = v48;
}

uint64_t sub_1AAF4BCE4(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

void sub_1AAF4BD90(uint64_t a1)
{
  v2 = type metadata accessor for DateBins(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADABD50(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAD1C5AC(a1, v10, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AACE99D0(0);
      v13 = *(v10 + *(v12 + 64));
      sub_1AAF502C0(v10, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v14 = *(*v10 + 16);

      v13 = v14 - 1;
    }
  }

  else
  {
    v13 = v10[2];
  }

  if (v13 < 0)
  {
    __break(1u);
  }

  else if (v13)
  {
    v15 = sub_1AAD6C0E8(v13, 0);
    sub_1AACE9A60(0);
    v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
    sub_1AAD1C5AC(a1, v4, type metadata accessor for DateBins);
    v18 = sub_1AADA8D60(v7, v15 + v17, v13);
    sub_1AAF502C0(v7, sub_1AADABD50);
    if (v18 != v13)
    {
      __break(1u);
    }
  }
}

void sub_1AAF4BFD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1AAD463D8(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1AAD1F8C0(0, &qword_1EB423050, sub_1AAD463D8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1AAF4C0D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1AAD1F8C0(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
      v7 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for AnyVectorizedRenderer(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void (*sub_1AAF4C29C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v2 = a2;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AAF4C7C0(v5);
  v5[9] = sub_1AAF4C3E4(v5 + 4, v2, isUniquelyReferenced_nonNull_native);
  return sub_1AAD1908C;
}

uint64_t (*sub_1AAF4C340(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AAD17CCC(v5);
  v5[9] = sub_1AAF4C5E4(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1AAD18504;
}

void (*sub_1AAF4C3E4(uint64_t *a1, unsigned __int8 a2, char a3))(uint64_t **a1, double a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 32) = a2;
  v10 = *v3;
  v11 = sub_1AACE1760(a2);
  *(v9 + 33) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1AAD961D8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1AAD8AF44(v16, a3 & 1);
    v11 = sub_1AACE1760(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = (*(*v4 + 56) + 16 * v11);
    v22 = *v21;
    v23 = v21[1];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *v9 = v22;
  *(v9 + 8) = v23;
  return sub_1AAF4C538;
}

void sub_1AAF4C538(uint64_t **a1, double a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 33);
  if (v3)
  {
    v6 = v2[3];
    v7 = *v2[2];
    if (v5)
    {
      v8 = (v7[7] + 16 * v6);
      *v8 = v3;
      v8[1] = v4;
    }

    else
    {
      sub_1AADD453C(v6, *(v2 + 32), v3, v4, v7);
    }
  }

  else if (*(*a1 + 33))
  {
    sub_1AAD930A0(v2[3], *v2[2], a2);
  }

  v9 = *v2;
  v10 = v2[1];
  sub_1AAF5027C(v3, v4);
  sub_1AAEB8738(v9, v10);

  free(v2);
}

void (*sub_1AAF4C5E4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, double a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1AACC9B78(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1AAD99778();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1AAD911E4(v16, a3 & 1);
    v11 = sub_1AACC9B78(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1AAF4C72C;
}

void sub_1AAF4C72C(uint64_t **a1, double a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 32);
  if (v3)
  {
    v5 = v2[3];
    v6 = *v2[2];
    if (v4)
    {
      *(v6[7] + 8 * v5) = v3;
    }

    else
    {
      sub_1AADD47AC(v5, v2[1], v3, v6);
    }
  }

  else if ((*a1)[4])
  {
    sub_1AAD928F4(v2[3], *v2[2], a2);
  }

  free(v2);
}

uint64_t (*sub_1AAF4C7C0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AAD19364;
}

void sub_1AAF4C7E8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1AADAA0A4(v7);
    }

    v84 = v7 + 16;
    v85 = *(v7 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1AAF4E674((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = *(v22 - 24);
            v21[2] = *(v22 - 8);
            *v21 = v25;
            *(v22 - 24) = v23;
            *(v22 - 16) = v24;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AAD68568(0, *(v7 + 2) + 1, 1, v7);
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v7 = sub_1AAD68568((v36 > 1), v37 + 1, 1, v7);
    }

    *(v7 + 2) = v38;
    v39 = v7 + 32;
    v40 = &v7[16 * v37 + 32];
    *v40 = v8;
    *(v40 + 1) = v6;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 4);
          v43 = *(v7 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[16 * v41 - 16];
        v80 = *v79;
        v81 = &v39[16 * v41];
        v82 = *(v81 + 1);
        sub_1AAF4E674((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v7 + 2);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        memmove(&v39[16 * v41], v81 + 16, 16 * (v83 - 1 - v41));
        *(v7 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[16 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = v8 - v6;
  v29 = *a3 + 24 * v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v31 - 1))
    {
LABEL_29:
      ++v6;
      --v28;
      v29 += 24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v31;
    v34 = *(v31 + 1);
    *v31 = *(v31 - 3);
    v31[2] = *(v31 - 1);
    *(v31 - 2) = v34;
    *(v31 - 1) = v30;
    *(v31 - 3) = v33;
    v31 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1AAF4CDB0(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1AADAA0A4(v7);
    }

    v84 = v7 + 16;
    v85 = *(v7 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1AAF4E8B0((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 8);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *v21;
            v24 = *(v21 + 1);
            v25 = *(v22 - 24);
            v21[2] = *(v22 - 8);
            *v21 = v25;
            *(v22 - 24) = v23;
            *(v22 - 16) = v24;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AAD68568(0, *(v7 + 2) + 1, 1, v7);
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v7 = sub_1AAD68568((v36 > 1), v37 + 1, 1, v7);
    }

    *(v7 + 2) = v38;
    v39 = v7 + 32;
    v40 = &v7[16 * v37 + 32];
    *v40 = v8;
    *(v40 + 1) = v6;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 4);
          v43 = *(v7 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[16 * v41];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v39[16 * v41 - 16];
        v80 = *v79;
        v81 = &v39[16 * v41];
        v82 = *(v81 + 1);
        sub_1AAF4E8B0((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v7 + 2);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        memmove(&v39[16 * v41], v81 + 16, 16 * (v83 - 1 - v41));
        *(v7 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[16 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[16 * v41];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 2))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = *(v32 + 2);
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v30;
    *(v32 - 1) = v34;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1AAF4D378(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1AADAA0A4(v7);
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1AAF4EAEC((*a3 + 40 * *v91), (*a3 + 40 * *v93), *a3 + 40 * v94, v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 16);
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 16);
      v12 = v8 + 2;
      v13 = (v10 + 96);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 5;
        v16 = v15 >= v14;
        ++v12;
        v14 = v15;
        if ((((v9 < v11) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 40 * v6 - 40;
        v18 = 40 * v8 + 24;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v28 + v18);
            v22 = *(v28 + v18 - 24);
            v23 = v28 + v17;
            v24 = *(v21 - 1);
            v25 = *v21;
            v26 = *(v23 + 32);
            v27 = *(v23 + 16);
            *(v21 - 24) = *v23;
            *(v21 - 8) = v27;
            *(v21 + 1) = v26;
            *v23 = v22;
            *(v23 + 8) = v24;
            *(v23 + 24) = v25;
          }

          ++v20;
          v17 -= 40;
          v18 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AAD68568(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v7 = sub_1AAD68568((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v43;
    v44 = v7 + 32;
    v45 = &v7[16 * v42 + 32];
    *v45 = v8;
    *(v45 + 1) = v6;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[16 * v46];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[16 * v46 - 16];
        v85 = *v84;
        v86 = &v44[16 * v46];
        v87 = *(v86 + 1);
        sub_1AAF4EAEC((*a3 + 40 * *v84), (*a3 + 40 * *v86), *a3 + 40 * v87, v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *(v7 + 2);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        memmove(&v44[16 * v46], v86 + 16, 16 * (v88 - 1 - v46));
        *(v7 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[16 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[16 * v46];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = *(v29 + 40 * v6 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *(v34 + 16))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 48);
    v36 = *(v34 + 16);
    v38 = *(v34 + 32);
    v37 = *(v34 + 40);
    *(v34 + 40) = *v34;
    v39 = *(v34 + 64);
    *(v34 + 56) = v36;
    *(v34 + 72) = v38;
    *v34 = v37;
    *(v34 + 8) = v35;
    *(v34 + 16) = v32;
    *(v34 + 24) = v39;
    v34 -= 40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1AAF4D954(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1AADAA0A4(v7);
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1AAF4ED28((*a3 + 40 * *v91), (*a3 + 40 * *v93), *a3 + 40 * v94, v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 8);
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 8);
      v12 = v8 + 2;
      v13 = (v10 + 88);
      v14 = v9;
      while (v5 != v12)
      {
        v15 = *v13;
        v13 += 5;
        v16 = v15 >= v14;
        ++v12;
        v14 = v15;
        if ((((v9 < v11) ^ v16) & 1) == 0)
        {
          v6 = v12 - 1;
          if (v9 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 40 * v6 - 40;
        v18 = 40 * v8 + 24;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v28 + v18);
            v22 = *(v28 + v18 - 24);
            v23 = v28 + v17;
            v24 = *(v21 - 1);
            v25 = *v21;
            v26 = *(v23 + 32);
            v27 = *(v23 + 16);
            *(v21 - 24) = *v23;
            *(v21 - 8) = v27;
            *(v21 + 1) = v26;
            *v23 = v22;
            *(v23 + 8) = v24;
            *(v23 + 24) = v25;
          }

          ++v20;
          v17 -= 40;
          v18 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AAD68568(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v7 = sub_1AAD68568((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v43;
    v44 = v7 + 32;
    v45 = &v7[16 * v42 + 32];
    *v45 = v8;
    *(v45 + 1) = v6;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[16 * v46];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[16 * v46 - 16];
        v85 = *v84;
        v86 = &v44[16 * v46];
        v87 = *(v86 + 1);
        sub_1AAF4ED28((*a3 + 40 * *v84), (*a3 + 40 * *v86), *a3 + 40 * v87, v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *(v7 + 2);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        memmove(&v44[16 * v46], v86 + 16, 16 * (v88 - 1 - v46));
        *(v7 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[16 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[16 * v46];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = *(v29 + 40 * v6 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *(v34 + 8))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 72);
    v36 = *(v34 + 16);
    v38 = *(v34 + 32);
    v37 = *(v34 + 40);
    *(v34 + 40) = *v34;
    v39 = *(v34 + 56);
    *(v34 + 56) = v36;
    *(v34 + 72) = v38;
    *v34 = v37;
    *(v34 + 8) = v32;
    *(v34 + 16) = v39;
    *(v34 + 32) = v35;
    v34 -= 40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1AAF4DF34(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v10 = sub_1AADAA0A4(v10);
    }

    v95 = v10;
    v78 = *(v10 + 2);
    if (v78 >= 2)
    {
      while (*v7)
      {
        v79 = *&v10[16 * v78];
        v80 = *&v10[16 * v78 + 24];
        sub_1AAF4EF64((*v7 + 784 * v79), (*v7 + 784 * *&v10[16 * v78 + 16]), (*v7 + 784 * v80), v5);
        if (v6)
        {
          goto LABEL_101;
        }

        if (v80 < v79)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AADAA0A4(v10);
        }

        if (v78 - 2 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v81 = &v10[16 * v78];
        *v81 = v79;
        *(v81 + 1) = v80;
        v95 = v10;
        sub_1AADAA018(v78 - 1);
        v10 = v95;
        v78 = *(v95 + 2);
        if (v78 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if (v12 >= v8)
    {
      v18 = v12;
    }

    else
    {
      v13 = *v7;
      v5 = v11;
      sub_1AAD1C5AC(*v7 + 784 * v12, __dst, sub_1AAD1A1A0);
      v14 = 784 * v11;
      sub_1AAD1C5AC(v13 + 784 * v11, v93, sub_1AAD1A1A0);
      v88 = v93[0];
      v91 = __dst[0];
      sub_1AAF502C0(v93, sub_1AAD1A1A0);
      sub_1AAF502C0(__dst, sub_1AAD1A1A0);
      v85 = v11;
      v15 = (v11 + 2);
      v16 = v13 + 784 * v11 + 1568;
      while (v8 != v15)
      {
        sub_1AAD1C5AC(v16, __dst, sub_1AAD1A1A0);
        sub_1AAD1C5AC(v16 - 784, v93, sub_1AAD1A1A0);
        v17 = __dst[0];
        v5 = v93[0];
        sub_1AAF502C0(v93, sub_1AAD1A1A0);
        sub_1AAF502C0(__dst, sub_1AAD1A1A0);
        ++v15;
        v16 += 784;
        if (v91 < v88 == v17 >= v5)
        {
          v18 = (v15 - 1);
          goto LABEL_11;
        }
      }

      v18 = v8;
LABEL_11:
      v7 = a3;
      v11 = v85;
      if (v91 < v88)
      {
        if (v18 < v85)
        {
          goto LABEL_120;
        }

        if (v85 < v18)
        {
          v5 = v18;
          v19 = 784 * v18 - 784;
          v20 = v18;
          do
          {
            if (v11 != --v5)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              memcpy(__dst, (v21 + v14), 0x309uLL);
              memmove((v21 + v14), (v21 + v19), 0x310uLL);
              memcpy((v21 + v19), __dst, 0x309uLL);
            }

            ++v11;
            v19 -= 784;
            v14 += 784;
          }

          while (v11 < v5);
          v11 = v85;
          v18 = v20;
        }
      }
    }

    v22 = v7[1];
    if (v18 < v22)
    {
      if (__OFSUB__(v18, v11))
      {
        goto LABEL_119;
      }

      if (v18 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_121;
        }

        if (v11 + a4 >= v22)
        {
          v23 = v7[1];
        }

        else
        {
          v23 = v11 + a4;
        }

        if (v23 < v11)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v18 != v23)
        {
          break;
        }
      }
    }

    v24 = v18;
    if (v18 < v11)
    {
      goto LABEL_118;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AAD68568(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v10 = sub_1AAD68568((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v27;
    v28 = &v10[16 * v26];
    *(v28 + 4) = v11;
    *(v28 + 5) = v24;
    v29 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    v89 = v24;
    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v10 + 4);
          v32 = *(v10 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_107;
          }

          v47 = &v10[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_110;
          }

          v53 = &v10[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_114;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v10[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_109;
        }

        v60 = &v10[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_112;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_103:
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
          goto LABEL_122;
        }

        if (!*v7)
        {
          goto LABEL_125;
        }

        v5 = *&v10[16 * v68 + 32];
        v69 = *&v10[16 * v30 + 40];
        sub_1AAF4EF64((*v7 + 784 * v5), (*v7 + 784 * *&v10[16 * v30 + 32]), (*v7 + 784 * v69), v29);
        if (v6)
        {
          goto LABEL_101;
        }

        if (v69 < v5)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AADAA0A4(v10);
        }

        if (v68 >= *(v10 + 2))
        {
          goto LABEL_104;
        }

        v70 = &v10[16 * v68];
        *(v70 + 4) = v5;
        *(v70 + 5) = v69;
        v95 = v10;
        sub_1AADAA018(v30);
        v10 = v95;
        v27 = *(v95 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v10[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_105;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_106;
      }

      v42 = &v10[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_108;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_111;
      }

      if (v46 >= v38)
      {
        v64 = &v10[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_115;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v89;
    if (v89 >= v8)
    {
      goto LABEL_91;
    }
  }

  v84 = v6;
  v86 = v11;
  v5 = *v7;
  v71 = *v7 + 784 * v18 - 784;
  v72 = (v11 - v18);
  v90 = v23;
LABEL_82:
  v92 = v18;
  v73 = v72;
  v74 = v71;
  while (1)
  {
    sub_1AAD1C5AC(v74 + 784, __dst, sub_1AAD1A1A0);
    sub_1AAD1C5AC(v74, v93, sub_1AAD1A1A0);
    v75 = __dst[0];
    v76 = v93[0];
    sub_1AAF502C0(v93, sub_1AAD1A1A0);
    sub_1AAF502C0(__dst, sub_1AAD1A1A0);
    if (v75 >= v76)
    {
LABEL_81:
      v24 = v90;
      v18 = v92 + 1;
      v71 += 784;
      --v72;
      if (v92 + 1 != v90)
      {
        goto LABEL_82;
      }

      v7 = a3;
      v6 = v84;
      v11 = v86;
      if (v90 < v86)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v5)
    {
      break;
    }

    memcpy(__dst, (v74 + 784), 0x309uLL);
    memcpy((v74 + 784), v74, 0x310uLL);
    memcpy(v74, __dst, 0x309uLL);
    v74 -= 784;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_81;
    }
  }

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
}

uint64_t sub_1AAF4E674(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1AAF4E8B0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) < *(v6 - 2))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_1AAF4EAEC(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 3) < *(v6 - 3))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_1AAF4ED28(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 4) < *(v6 - 4))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_1AAF4EF64(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 784;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 784;
  if (v8 >= v10)
  {
    v20 = 784 * v10;
    if (a4 != __src || &__src[v20] <= a4)
    {
      memmove(a4, __src, 784 * v10);
    }

    v13 = &v4[v20];
    if (v9 < 784 || __src <= v6)
    {
      v19 = __src;
    }

    else
    {
      v22 = __src;
      v34 = v6;
      do
      {
        v35 = v22;
        v23 = (v22 - 784);
        v24 = v13 - 784;
        v5 -= 784;
        while (1)
        {
          v27 = v4;
          v28 = v24 + 784;
          v29 = v5 + 784;
          sub_1AAD1C5AC(v24, v37, sub_1AAD1A1A0);
          v19 = v23;
          sub_1AAD1C5AC(v23, v36, sub_1AAD1A1A0);
          v30 = v37[0];
          v31 = v36[0];
          sub_1AAF502C0(v36, sub_1AAD1A1A0);
          sub_1AAF502C0(v37, sub_1AAD1A1A0);
          if (v30 < v31)
          {
            break;
          }

          if (v29 != v28)
          {
            memmove(v5, v24, 0x310uLL);
          }

          v25 = v24 - 784;
          v5 -= 784;
          v4 = v27;
          v26 = v24 > v27;
          v24 -= 784;
          v23 = v19;
          if (!v26)
          {
            v13 = v25 + 784;
            v19 = v35;
            goto LABEL_35;
          }
        }

        if (v29 != v35)
        {
          memmove(v5, v19, 0x310uLL);
        }

        v4 = v27;
        v13 = v24 + 784;
        if (v28 <= v27)
        {
          break;
        }

        v22 = v19;
      }

      while (v19 > v34);
      v13 = v24 + 784;
    }
  }

  else
  {
    v12 = 784 * v8;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v7 >= 784 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        sub_1AAD1C5AC(v14, v37, sub_1AAD1A1A0);
        sub_1AAD1C5AC(v4, v36, sub_1AAD1A1A0);
        v15 = v37[0];
        v16 = v36[0];
        sub_1AAF502C0(v36, sub_1AAD1A1A0);
        sub_1AAF502C0(v37, sub_1AAD1A1A0);
        if (v15 >= v16)
        {
          break;
        }

        v17 = v14;
        v18 = v6 == v14;
        v14 += 784;
        if (!v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        v6 += 784;
        if (v4 >= v13 || v14 >= v5)
        {
          goto LABEL_16;
        }
      }

      v17 = v4;
      v18 = v6 == v4;
      v4 += 784;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v6, v17, 0x310uLL);
      goto LABEL_14;
    }

LABEL_16:
    v19 = v6;
  }

LABEL_35:
  v32 = 784 * ((v13 - v4) / 784);
  if (v19 != v4 || v19 >= &v4[v32])
  {
    memmove(v19, v4, v32);
  }

  return 1;
}

unint64_t *sub_1AAF4F2C8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1AAD1A964(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1AAF4F340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 48);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(a1 + 16);
    do
    {
      if ((*v5 & 1) == 0)
      {
        v8 = *(v5 - 2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AAD69810(0, *(v6 + 2) + 1, 1, v6);
        }

        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        if (v10 >= v9 >> 1)
        {
          v6 = sub_1AAD69810((v9 > 1), v10 + 1, 1, v6);
        }

        *(v6 + 2) = v10 + 1;
        *&v6[8 * v10 + 32] = v8;
      }

      v5 += 24;
      --v7;
    }

    while (v7);
    if (*(v6 + 2) != v3)
    {

      v11 = (a1 + 48);
      v6 = MEMORY[0x1E69E7CC0];
      v12 = v3;
      do
      {
        if (*v11 == 1)
        {
          v31 = *(v11 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1AAD6BAAC(0, *(v6 + 2) + 1, 1, v6);
          }

          v14 = *(v6 + 2);
          v13 = *(v6 + 3);
          if (v14 >= v13 >> 1)
          {
            v6 = sub_1AAD6BAAC((v13 > 1), v14 + 1, 1, v6);
          }

          *(v6 + 2) = v14 + 1;
          *&v6[16 * v14 + 32] = v31;
        }

        v11 += 24;
        --v12;
      }

      while (v12);
      if (*(v6 + 2) != v3)
      {

        return *(a1 + 32);
      }

      goto LABEL_26;
    }

LABEL_22:
    v15 = sub_1AAD1FCE0(v6, a2);
    v16 = *(v15 + 16);
    if (!v16)
    {

      return 0;
    }

    if (v16 >= 4)
    {
      v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      v25 = (v15 + 48);
      v18 = 0.0;
      v26 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = v18 + *(v25 - 2) + *(v25 - 1) + *v25 + v25[1];
        v25 += 4;
        v26 -= 4;
      }

      while (v26);
      if (v16 == v17)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0.0;
    }

    v27 = v16 - v17;
    v28 = (v15 + 8 * v17 + 32);
    do
    {
      v29 = *v28++;
      v18 = v18 + v29;
      --v27;
    }

    while (v27);
LABEL_38:

    return *&v18;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_22;
  }

  if (*(v6 + 2))
  {

    __break(1u);
    goto LABEL_22;
  }

LABEL_26:
  v19 = sub_1AAD26370(v6, a2);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 32);
    v22 = 0uLL;
    do
    {
      v23 = *v21++;
      v22 = vaddq_f64(v22, v23);
      --v20;
    }

    while (v20);
  }

  swift_getKeyPath();
  swift_getAtKeyPath();

  v24 = v32;
  swift_getKeyPath();
  swift_getAtKeyPath();

  return v24;
}

void sub_1AAF4F6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1AAD419B4(0, v4, 0);
    v6 = v38;
    v34 = v5 + 64;
    v7 = sub_1AAF8FF74();
    v8 = 0;
    v29 = v5 + 72;
    v30 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v34 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v33 = v8;
      v12 = *(v5 + 36);
      v13 = v5;
      v14 = (*(v5 + 56) + 16 * v7);
      v15 = v14[1];
      v35[0] = *v14;
      v35[1] = v15;

      sub_1AAF4B5F4(v35, a2, a3, &v36);
      if (v3)
      {
        goto LABEL_26;
      }

      v16 = v36;
      v17 = v37;
      v38 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        v28 = v37;
        sub_1AAD419B4((v18 > 1), v19 + 1, 1);
        v17 = v28;
        v6 = v38;
      }

      *(v6 + 16) = v19 + 1;
      v20 = v6 + 24 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v9 = 1 << *(v13 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v21 = *(v34 + 8 * v11);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v13;
      if (v12 != *(v13 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v30;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v10 = v30;
        v25 = (v29 + 8 * v11);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1AACAA2EC(v7, v12, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_1AACAA2EC(v7, v12, 0);
      }

LABEL_4:
      v3 = 0;
      v8 = v33 + 1;
      v7 = v9;
      if (v33 + 1 == v10)
      {
        return;
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
  }
}

void sub_1AAF4F954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1AAD41A70(0, v4, 0);
    v6 = v41;
    v36 = v5 + 64;
    v7 = sub_1AAF8FF74();
    v8 = 0;
    v31 = v5 + 72;
    v32 = v4;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v36 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v35 = v8;
      v12 = *(v5 + 36);
      v13 = v5;
      v14 = (*(v5 + 56) + 16 * v7);
      v15 = v14[1];
      v37[0] = *v14;
      v37[1] = v15;

      sub_1AAF4B8A0(v37, a2, a3, &v38);
      if (v3)
      {
        goto LABEL_26;
      }

      v16 = v38;
      v17 = v39;
      v18 = v40;
      v41 = v6;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        v29 = v40;
        v30 = v39;
        sub_1AAD41A70((v19 > 1), v20 + 1, 1);
        v18 = v29;
        v17 = v30;
        v6 = v41;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 40 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      *(v21 + 56) = v18;
      v9 = 1 << *(v13 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v22 = *(v36 + 8 * v11);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v5 = v13;
      if (v12 != *(v13 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v32;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v10 = v32;
        v26 = (v31 + 8 * v11);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1AACAA2EC(v7, v12, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1AACAA2EC(v7, v12, 0);
      }

LABEL_4:
      v3 = 0;
      v8 = v35 + 1;
      v7 = v9;
      if (v35 + 1 == v10)
      {
        return;
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
  }
}

void *sub_1AAF4FBE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD1F8C0(0, &qword_1EB4273E0, type metadata accessor for ChartContentList.Item, MEMORY[0x1E69E6F90]);
  v3 = *(type metadata accessor for ChartContentList.Item(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = j__malloc_size(v6);
  if (v4)
  {
    if ((result - v5) != 0x8000000000000000 || v4 != -1)
    {
      v6[2] = v1;
      v6[3] = 2 * ((result - v5) / v4);
      sub_1AAD1C5AC(a1 + v5, v6 + v5, type metadata accessor for ChartContentList.Item);
      v9 = v1 - 1;
      if (v9)
      {
        v10 = v4 + v5;
        do
        {
          sub_1AAD1C5AC(a1 + v10, v6 + v10, type metadata accessor for ChartContentList.Item);
          v10 += v4;
          --v9;
        }

        while (v9);
      }

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AAF4FD58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF4FDD0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AAF904F4() & 1;
  }
}

uint64_t sub_1AAF4FE28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AAD20998(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF4FE94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AAD1F8C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF4FF14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AAD1F8C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1AAF4FF94(uint64_t a1)
{
  if (!qword_1EB423AD0)
  {
    sub_1AAF50198(255, &qword_1EB423AD8, MEMORY[0x1E69E6530], "index x y ");
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB423AD0);
    }
  }
}

uint64_t sub_1AAF500B4(uint64_t a1, uint64_t a2)
{
  sub_1AACCB990(0, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AAF50198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1AAF501F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF4FD58(0, a3, a4, a5, sub_1AAD20998);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

double sub_1AAF5027C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1AAF502C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1AAF503AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 16))
  {
    return 1;
  }

  v4 = sub_1AAF90684();
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 1;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    result = v8 != a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_1AAF50448(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = *(a1 + 160);
  if (*(a1 + 160) == 6)
  {
    return;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = v10 - *(a1 + 24) * v11;
  v14 = *(a1 + 32) * v12;
  v37 = v9;
  v15 = v9 - v14;
  if ((v7 - 3) >= 3u)
  {
    v33 = a7;
    v34 = a5;
    v35 = a4;
    v16 = *(a1 + 160);
    if (v16 != 1)
    {
      a2 = 0.0;
    }

    if (v16 != 1)
    {
      a3 = 0.0;
    }

    v32 = a3;
    v38.origin.x = v10 - *(a1 + 24) * v11;
    v38.origin.y = v9 - v14;
    v38.size.width = *(a1 + 88);
    v38.size.height = *(a1 + 96);
    MinX = CGRectGetMinX(v38);
    v39.origin.x = v13;
    v39.origin.y = v15;
    v39.size.width = v11;
    v39.size.height = v12;
    MaxX = CGRectGetMaxX(v39);
    if (a6 >= 0.0)
    {
      v22 = 0.0 - a2;
      a5 = v34;
      a4 = v35;
      a7 = v33;
      if (MinX < v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = a6 - a2;
      a5 = v34;
      a4 = v35;
      a7 = v33;
      a6 = 0.0;
      if (MinX < v22)
      {
LABEL_13:
        v23 = MinX - v22;
        goto LABEL_17;
      }
    }

    v23 = 0.0;
    if (v32 + a6 < MaxX)
    {
      v23 = MaxX - (v32 + a6);
    }

LABEL_17:
    *(a1 + 8) = v10 - v23;
    v7 = *(a1 + 160);
    if (*(a1 + 160) == 6)
    {
      return;
    }
  }

  v24 = v7 >> 8;
  if (v24 - 3 >= 3)
  {
    if (v24 == 1)
    {
      v25 = a4;
    }

    else
    {
      v25 = 0.0;
    }

    if (v24 == 1)
    {
      v26 = a5;
    }

    else
    {
      v26 = 0.0;
    }

    v36 = v26;
    v40.origin.x = v13;
    v40.origin.y = v15;
    v40.size.width = v11;
    v40.size.height = v12;
    v27 = a7;
    MinY = CGRectGetMinY(v40);
    v41.origin.x = v13;
    v41.origin.y = v15;
    v41.size.width = v11;
    v41.size.height = v12;
    MaxY = CGRectGetMaxY(v41);
    if (v27 >= 0.0)
    {
      v30 = 0.0 - v25;
    }

    else
    {
      v30 = v27 - v25;
      v27 = 0.0;
    }

    if (MinY >= v30)
    {
      v31 = 0.0;
      if (v36 + v27 < MaxY)
      {
        v31 = MaxY - (v36 + v27);
      }
    }

    else
    {
      v31 = MinY - v30;
    }

    *(a1 + 16) = v37 - v31;
  }
}

uint64_t sub_1AAF50640(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 96 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 12);
      v9 -= 12;
      v11 = v10 < *v8;
      v12 = *(v8 + 1) < *(v8 - 11);
      if (*v8 != v10)
      {
        v12 = v11;
      }

      if (!v12)
      {
LABEL_4:
        ++a3;
        v5 += 96;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *(v8 + 2);
      v20 = *(v8 + 3);
      v21 = *(v8 + 4);
      v22 = *(v8 + 5);
      v17 = *v8;
      v18 = *(v8 + 1);
      v13 = *(v9 + 3);
      *(v8 + 2) = *(v9 + 2);
      *(v8 + 3) = v13;
      v14 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v14;
      v15 = *(v9 + 1);
      *v8 = *v9;
      *(v8 + 1) = v15;
      *(v9 + 2) = v19;
      *(v9 + 3) = v20;
      *(v9 + 4) = v21;
      *(v9 + 5) = v22;
      v8 = v9;
      *v9 = v17;
      *(v9 + 1) = v18;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AAF50718(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v8 = sub_1AADAA0A4(v8);
    }

    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = *&v8[16 * v85];
        v87 = *&v8[16 * v85 + 24];
        sub_1AAF50D68((*a3 + 96 * v86), (*a3 + 96 * *&v8[16 * v85 + 16]), (*a3 + 96 * v87), v5);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v87 < v86)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AADAA0A4(v8);
        }

        if (v85 - 2 >= *(v8 + 2))
        {
          goto LABEL_120;
        }

        v88 = &v8[16 * v85];
        *v88 = v86;
        *(v88 + 1) = v87;
        sub_1AADAA018(v85 - 1);
        v85 = *(v8 + 2);
        if (v85 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3 + 96 * v7;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = 96 * v9;
      v14 = *a3 + 96 * v9;
      v15 = *v14 < *v10;
      v16 = *&v12 < *(v14 + 8);
      if (v11 != *v14)
      {
        v16 = v15;
      }

      v17 = v9 + 2;
      v18 = (v14 + 200);
      while (v6 != v17)
      {
        v19 = *(v18 - 1);
        v21 = *v18;
        v18 += 12;
        v20 = v21;
        v22 = *&v21 >= *&v12;
        v23 = v11 >= v19;
        if (v19 == v11)
        {
          v23 = v22;
        }

        ++v17;
        v12 = v20;
        v11 = v19;
        if (v16 == v23)
        {
          v7 = v17 - 1;
          if (!v16)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v7 = v6;
      if (!v16)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v7 < v9)
      {
        goto LABEL_123;
      }

      if (v9 < v7)
      {
        v5 = 96 * v7 - 96;
        v24 = v7;
        v89 = v9;
        do
        {
          if (v9 != --v24)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v25 = (v26 + v5);
            v97 = *(v26 + v13 + 32);
            v99 = *(v26 + v13 + 48);
            v101 = *(v26 + v13 + 64);
            v103 = *(v26 + v13 + 80);
            v93 = *(v26 + v13);
            v95 = *(v26 + v13 + 16);
            memmove((v26 + v13), (v26 + v5), 0x60uLL);
            *(v25 + 2) = v97;
            *(v25 + 3) = v99;
            *(v25 + 4) = v101;
            *(v25 + 5) = v103;
            *v25 = v93;
            *(v25 + 1) = v95;
          }

          ++v9;
          v5 -= 96;
          v13 += 96;
        }

        while (v9 < v24);
        v6 = a3[1];
        v9 = v89;
      }
    }

LABEL_24:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_122;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_124;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v7 < v9)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AAD68568(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v40 = *(v8 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      v8 = sub_1AAD68568((v40 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v5];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v5)
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
LABEL_63:
          if (v48)
          {
            goto LABEL_110;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_113;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_117;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_77:
        if (v66)
        {
          goto LABEL_112;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_115;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_84:
        v5 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v82 = *&v8[16 * v5 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1AAF50D68((*a3 + 96 * v82), (*a3 + 96 * *&v8[16 * v44 + 32]), (*a3 + 96 * v83), v43);
        if (v4)
        {
          goto LABEL_104;
        }

        if (v83 < v82)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AADAA0A4(v8);
        }

        if (v5 >= *(v8 + 2))
        {
          goto LABEL_107;
        }

        v84 = &v8[16 * v5];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1AADAA018(v44);
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
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
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
          goto LABEL_118;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_94;
    }
  }

  v27 = *a3;
  v28 = *a3 + 96 * v7;
  v29 = v9 - v7;
LABEL_34:
  v30 = v29;
  v31 = v28;
  v32 = v28;
  while (1)
  {
    v33 = *(v32 - 12);
    v32 -= 12;
    v34 = v33 < *v31;
    v35 = *(v31 + 1) < *(v31 - 11);
    if (*v31 != v33)
    {
      v35 = v34;
    }

    if (!v35)
    {
LABEL_33:
      ++v7;
      v28 += 96;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_34;
      }

      v7 = v6;
      goto LABEL_43;
    }

    if (!v27)
    {
      break;
    }

    v98 = *(v31 + 2);
    v100 = *(v31 + 3);
    v102 = *(v31 + 4);
    v104 = *(v31 + 5);
    v94 = *v31;
    v96 = *(v31 + 1);
    v36 = *(v32 + 3);
    *(v31 + 2) = *(v32 + 2);
    *(v31 + 3) = v36;
    v37 = *(v32 + 5);
    *(v31 + 4) = *(v32 + 4);
    *(v31 + 5) = v37;
    v38 = *(v32 + 1);
    *v31 = *v32;
    *(v31 + 1) = v38;
    *(v32 + 2) = v98;
    *(v32 + 3) = v100;
    *(v32 + 4) = v102;
    *(v32 + 5) = v104;
    v31 = v32;
    *v32 = v94;
    *(v32 + 1) = v96;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_33;
    }
  }

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
}