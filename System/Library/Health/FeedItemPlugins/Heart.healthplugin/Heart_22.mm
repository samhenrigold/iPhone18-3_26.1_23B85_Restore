char *sub_29D906080(int64_t a1)
{
  v5 = *(v2 + 24);
  if (!*(v5 + 16))
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D934DC8();
  MaxX = CGRectGetMaxX(v36);
  v8 = *(v5 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_38;
  }

  v9 = MaxX;
  v33 = v5 + 32;
  v10 = sub_29D935E88();
  v11 = sub_29D906638(v10, 0);

  v4 = v9 - v11;
  v3 = sub_29D68F5F0(0, 1, 1, MEMORY[0x29EDCA190]);
  v1 = *(v3 + 2);
  v8 = *(v3 + 3);
  a1 = v1 + 1;
  if (v1 >= v8 >> 1)
  {
LABEL_38:
    v3 = sub_29D68F5F0((v8 > 1), a1, 1, v3);
  }

  *(v3 + 2) = a1;
  *&v3[8 * v1 + 32] = v4;
  v12 = *(v5 + 16);
  sub_29D935E88();
  v32 = v12;
  if (v12 >= 2)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = *(v33 + 8 * v17);
      v19 = *(v34 + 32);
      v35 = v3;
      if (v16 >= *(v19 + 16))
      {
        sub_29D935E88();
        sub_29D934F18();
        v20 = v21;
      }

      else
      {
        v20 = *(v19 + 8 * v16 + 32);
        sub_29D935E88();
      }

      sub_29D934E48();
      v22 = 0.0;
      v23 = 0.0;
      if (!v16)
      {
        if (*(v19 + 16))
        {
          v24 = *(v19 + 32);
        }

        else
        {
          v24 = 0.0;
        }

        if (sub_29D934DB8())
        {
          v25 = 0.3;
        }

        else
        {
          v25 = 0.7;
        }

        sub_29D934E58();
        v23 = v25 * (CGRectGetWidth(v37) * 0.5 - *(v34 + 40) - v24);
      }

      v26 = *(v18 + 16);
      if (v26)
      {
        v27 = (v18 + 32);
        do
        {
          sub_29D934E48();
          sub_29D934E58();
          sub_29D934DD8();
          sub_29D693E2C(v27, v27[3]);
          sub_29D935118();
          Width = CGRectGetWidth(v38);

          if (v22 >= Width)
          {
            v29 = v22;
          }

          else
          {
            v29 = Width;
          }

          if (Width > v29)
          {
            v29 = Width;
          }

          if (v29 > v23)
          {
            v22 = v29;
          }

          else
          {
            v22 = v23;
          }

          v27 += 5;
          --v26;
        }

        while (v26);
      }

      v3 = v35;
      v31 = *(v35 + 2);
      v30 = *(v35 + 3);
      if (v31 >= v30 >> 1)
      {
        v3 = sub_29D68F5F0((v30 > 1), v31 + 1, 1, v35);
      }

      ++v17;
      ++v16;
      v4 = v4 - v20 - v22;
      *(v3 + 2) = v31 + 1;
      *&v3[8 * v31 + 32] = v4;
    }

    while (v17 != v32);
  }

  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_29D68F5F0((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  *&v3[8 * v14 + 32] = 0;
  return v3;
}

void sub_29D9063C4()
{
  v1 = *(v0 + 24);
  v21 = *(v1 + 16);
  if (v21)
  {
    v2 = 0;
    v19 = v1 + 32;
    v3 = 0.0;
    v4 = MEMORY[0x29EDCA190];
    v20 = *(v0 + 24);
    while (v2 < *(v1 + 16))
    {
      v6 = *(v19 + 8 * v2);
      sub_29D935E88();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_29D68F5F0(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_29D68F5F0((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v3;
      sub_29D934E48();
      v9 = 0.0;
      v10 = 0.0;
      if (!v2)
      {
        v11 = *(v22 + 32);
        if (*(v11 + 16))
        {
          v12 = *(v11 + 32);
        }

        else
        {
          v12 = 0.0;
        }

        if (sub_29D934DB8())
        {
          v13 = 0.3;
        }

        else
        {
          v13 = 0.7;
        }

        sub_29D934E58();
        v10 = v13 * (CGRectGetWidth(v23) * 0.5 - *(v22 + 40) - v12);
      }

      v14 = *(v6 + 16);
      if (v14)
      {
        v15 = (v6 + 32);
        do
        {
          sub_29D934E48();
          sub_29D934E58();
          sub_29D934DD8();
          sub_29D693E2C(v15, v15[3]);
          sub_29D935118();
          Width = CGRectGetWidth(v24);

          if (v9 >= Width)
          {
            v17 = v9;
          }

          else
          {
            v17 = Width;
          }

          if (Width > v17)
          {
            v17 = Width;
          }

          if (v17 > v10)
          {
            v9 = v17;
          }

          else
          {
            v9 = v10;
          }

          v15 += 5;
          --v14;
        }

        while (v14);
      }

      v18 = *(v22 + 32);
      if (v2 >= *(v18 + 16))
      {
        sub_29D934F18();
      }

      else
      {
        v5 = *(v18 + 8 * v2 + 32);
      }

      v1 = v20;
      ++v2;
      v3 = v3 + v9 + v5;
      if (v2 == v21)
      {
        return;
      }
    }

    __break(1u);
  }
}

double sub_29D906638(uint64_t a1, uint64_t a2)
{
  sub_29D934E48();
  v5 = 0.0;
  v6 = 0.0;
  if (!a2)
  {
    v7 = *(v2 + 32);
    if (*(v7 + 16))
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0.0;
    }

    if (sub_29D934DB8())
    {
      v9 = 0.3;
    }

    else
    {
      v9 = 0.7;
    }

    sub_29D934E58();
    v6 = v9 * (CGRectGetWidth(v15) * 0.5 - *(v2 + 40) - v8);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      sub_29D934E48();
      sub_29D934E58();
      sub_29D934DD8();
      sub_29D693E2C(v11, v11[3]);
      sub_29D935118();
      Width = CGRectGetWidth(v16);

      if (v5 >= Width)
      {
        v13 = v5;
      }

      else
      {
        v13 = Width;
      }

      if (Width > v13)
      {
        v13 = Width;
      }

      if (v13 > v6)
      {
        v5 = v13;
      }

      else
      {
        v5 = v6;
      }

      v11 += 5;
      --v10;
    }

    while (v10);
  }

  return v5;
}

void sub_29D906790(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v20 = *(a1 + 16);
    v21 = a1 + 32;
    v4 = 0.0;
    v19 = v2 - 1;
    v5 = 0.0;
    do
    {
      v7 = *(v21 + 8 * v3);
      v22 = v3;
      v23 = v3 + 1;
      v8 = *(v7 + 16);
      sub_29D935E88();
      v9 = 0;
      v10 = 0.0;
      while (1)
      {
        v11 = 0uLL;
        v12 = v8;
        v13 = 0uLL;
        v14 = 0uLL;
        if (v9 != v8)
        {
          if (v9 >= *(v7 + 16))
          {
            __break(1u);
            return;
          }

          v12 = v9 + 1;
          *&v25 = v9;
          sub_29D6945AC(v7 + 32 + 40 * v9, &v25 + 8);
          v11 = v25;
          v13 = v26;
          v14 = v27;
        }

        v28[0] = v11;
        v28[1] = v13;
        v28[2] = v14;
        if (!v14)
        {
          break;
        }

        v24 = v11;
        sub_29D679D3C((v28 + 8), &v25);
        sub_29D934E48();
        sub_29D934E58();
        sub_29D934DD8();
        sub_29D693E2C(&v25, *(&v26 + 1));
        sub_29D935118();
        Height = CGRectGetHeight(v29);

        v16 = *(v1 + 56);
        if (Height > v16)
        {
          v16 = Height;
        }

        v10 = v10 + v16;
        if (v24 < *(v7 + 16) - 1)
        {
          v10 = v10 + *(v1 + 48);
        }

        sub_29D69417C(&v25);
        v9 = v12;
      }

      if (v10 > v5)
      {
        v5 = v10;
      }

      v17 = sub_29D906638(v7, v22);

      v4 = v4 + v17;
      if (v22 < v19)
      {
        v18 = *(v1 + 32);
        if (v22 >= *(v18 + 16))
        {
          sub_29D934F18();
        }

        else
        {
          v6 = *(v18 + 8 * v22 + 32);
        }

        v4 = v4 + v6;
      }

      v3 = v23;
    }

    while (v23 != v20);
  }

  sub_29D934DC8();
}

uint64_t sub_29D9069C8(uint64_t a1)
{
  v19[1] = a1;
  sub_29D826404(0, &qword_2A17B1000, sub_29D75F218, MEMORY[0x29EDC9E90]);
  result = swift_initStackObject();
  v19[0] = result;
  *(result + 16) = xmmword_29D93DDB0;
  v20 = v1;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDCA190];
    while (v5 < *(v3 + 16))
    {
      v13 = *(v3 + 32 + 8 * v5);
      if (*(v13 + 16))
      {
        sub_29D6945AC(v13 + 32, v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_29D68F5B0(0, v6[2] + 1, 1, v6);
          v24 = v6;
        }

        v16 = v6[2];
        v15 = v6[3];
        if (v16 >= v15 >> 1)
        {
          v6 = sub_29D68F5B0((v15 > 1), v16 + 1, 1, v6);
          v24 = v6;
        }

        v7 = v22;
        v8 = v23;
        v9 = sub_29D693DDC(v21, v22);
        MEMORY[0x2A1C7C4A8](v9, v9);
        v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v11);
        sub_29D693D44(v16, v11, &v24, v7, v8);
        result = sub_29D69417C(v21);
      }

      if (v4 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
LABEL_12:
    v17 = v19[0];
    v18 = v19[0];
    *(v19[0] + 32) = v6;
    sub_29D906790(v17);
    swift_setDeallocating();
    return sub_29D906E28(v18 + 32);
  }

  return result;
}

uint64_t sub_29D906C3C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D906D2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D906E84(&qword_2A17B4E50, &unk_29D9555B8);
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D906E28(uint64_t a1)
{
  sub_29D75F218(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D906E84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BloodPressurePDFClassificationsTable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D906EC4(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  v36 = *(a1 + 16);
  if (!v36)
  {
    sub_29D935E88();
    v7 = MEMORY[0x29EDCA190];
LABEL_26:
    result = v34;
    *(v34 + 24) = v7;
    return result;
  }

  v35 = a1 + 32;
  sub_29D935E88();
  v6 = 0;
  v7 = MEMORY[0x29EDCA190];
LABEL_4:
  v37 = v6 + 1;
  sub_29D693E2C((v35 + 40 * v6), *(v35 + 40 * v6 + 24));
  result = sub_29D935818();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v38 = result + 32;
  while (1)
  {
    v12 = 0uLL;
    v13 = v11;
    v14 = 0uLL;
    v15 = 0uLL;
    if (v10 != v11)
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v13 = v10 + 1;
      *&v43[0] = v10;
      sub_29D6945AC(v38 + 40 * v10, v43 + 8);
      v12 = v43[0];
      v14 = v43[1];
      v15 = v43[2];
    }

    v44[0] = v12;
    v44[1] = v14;
    v44[2] = v15;
    if (!v15)
    {

      v6 = v37;
      if (v37 == v36)
      {
        goto LABEL_26;
      }

      goto LABEL_4;
    }

    v39 = v12;
    sub_29D679D3C((v44 + 8), v43);
    v16 = v7[2];
    v17 = v39;
    if (v39 >= v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_29D68F5CC(0, v16 + 1, 1, v7);
      }

      v19 = v7[2];
      v18 = v7[3];
      if (v19 >= v18 >> 1)
      {
        v7 = sub_29D68F5CC((v18 > 1), v19 + 1, 1, v7);
      }

      v7[2] = v19 + 1;
      v7[v19 + 4] = MEMORY[0x29EDCA190];
    }

    sub_29D6945AC(v43, v40);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      break;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (v17 >= v7[2])
    {
      goto LABEL_28;
    }

    v20 = &v7[v17];
    v23 = v20[4];
    v21 = v20 + 4;
    v22 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_29D68F5B0(0, v22[2] + 1, 1, v22);
      *v21 = v22;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      *v21 = sub_29D68F5B0((v25 > 1), v26 + 1, 1, v22);
    }

    sub_29D69417C(v43);
    v27 = v41;
    v28 = v42;
    v29 = sub_29D693DDC(v40, v41);
    MEMORY[0x2A1C7C4A8](v29, v29);
    v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    sub_29D693D44(v26, v31, v21, v27, v28);
    result = sub_29D69417C(v40);
    v10 = v13;
  }

  result = sub_29D702C34(v7);
  v7 = result;
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_29D907250(char a1, void (*a2)(uint64_t *__return_ptr, char *, id *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  BYTE1(v15) = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v14 = *(a4 + 32);
    v9 = v14;
    a2(&v15, &v15 + 1, &v14);
    if (v4)
    {
    }

    else
    {
      v10 = (a4 + 40);
      for (i = v6 - 1; ; --i)
      {

        v5 = v15;
        BYTE1(v15) = v15;
        if (!i)
        {
          break;
        }

        v12 = *v10++;
        v14 = v12;
        v9 = v12;
        a2(&v15, &v15 + 1, &v14);
      }
    }
  }

  return v5 & 1;
}

void *sub_29D907334(uint64_t a1, uint64_t a2)
{
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D93F680;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  *(v5 + 32) = sub_29D9334A8();
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_29D9334A8();
  *(v5 + 56) = v7;
  v2[3] = a2;
  v2[4] = v5;
  v2[2] = a1;
  return v2;
}

uint64_t sub_29D907470@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v26 - v4;
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v26 - v8;
  v10 = sub_29D9346E8();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v26 - v17;
  (*(v11 + 104))(v26 - v17, *MEMORY[0x29EDC1760], v10);
  v19 = sub_29D92F7E0();
  v26[1] = v20;
  v26[2] = v19;
  v26[0] = sub_29D92F7AC();
  (*(v11 + 16))(v15, v18, v10);
  sub_29D92F86C();
  v21 = sub_29D934798();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  sub_29D935E88();
  sub_29D934818();
  v22 = sub_29D934358();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = v27;
  sub_29D934988();
  (*(v11 + 8))(v18, v10);
  v24 = sub_29D9349A8();
  return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
}

uint64_t sub_29D907808@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v28 - v4;
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = v28 - v8;
  v10 = sub_29D9346E8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v28[0] = sub_29D9334A8();
  v16 = v15;
  v17 = sub_29D92F7E0();
  v28[3] = v18;
  v28[4] = v17;
  v19 = sub_29D92F7AC();
  v28[1] = v20;
  v28[2] = v19;
  (*(v11 + 104))(v14, *MEMORY[0x29EDC1748], v10);
  sub_29D92F86C();
  v21 = sub_29D934798();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  sub_29D9334A8();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29D93F680;
  *(v22 + 32) = sub_29D9334A8();
  *(v22 + 40) = v23;
  *(v22 + 48) = v28[0];
  *(v22 + 56) = v16;
  v24 = sub_29D934358();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = v29;
  sub_29D934988();
  v26 = sub_29D9349A8();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

uint64_t sub_29D907C70@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v31 = v30 - v4;
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = v30 - v7;
  v9 = sub_29D9346E8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v30 - v16;
  (*(v10 + 104))(v30 - v16, *MEMORY[0x29EDC1768], v9);
  v18 = sub_29D92F7E0();
  v30[4] = v19;
  v30[5] = v18;
  v20 = sub_29D92F7AC();
  v30[2] = v21;
  v30[3] = v20;
  (*(v10 + 16))(v14, v17, v9);
  sub_29D92F86C();
  v22 = sub_29D934798();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  v30[1] = sub_29D9347D8();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93F680;
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  *(v23 + 32) = sub_29D9334A8();
  *(v23 + 40) = v24;
  *(v23 + 48) = sub_29D9334A8();
  *(v23 + 56) = v25;
  sub_29D934818();
  v26 = sub_29D934358();
  (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  v27 = v32;
  sub_29D934988();
  (*(v10 + 8))(v17, v9);
  v28 = sub_29D9349A8();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

uint64_t sub_29D9080FC(uint64_t a1, uint64_t a2)
{
  sub_29D90A750(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = sub_29D9346E8();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  sub_29D934958();
  sub_29D9082EC(a2, v6);
  sub_29D9369E8();
  swift_allocObject();
  v9 = sub_29D9369C8();
  sub_29D933108();
  swift_allocObject();
  sub_29D9330F8();
  v12[1] = v9;
  sub_29D90A7B4(&qword_2A17B3920, 255, MEMORY[0x29EDC2970], MEMORY[0x29EDC2978]);
  v10 = sub_29D9330E8();

  return v10;
}

uint64_t sub_29D9082EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_29D9346B8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D90A750(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v53 - v17;
  v19 = sub_29D90883C(a1);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 highestPriorityUnsatisfiedRequirement];
    if (v21)
    {
      v22 = v21;
      v58 = a2;
      v23 = sub_29D9336F8();
      v24 = *(v23 - 8);
      v56 = *(v24 + 56);
      v57 = v23;
      v55 = v24 + 56;
      v56(v18, 1, 1);
      v25 = sub_29D939D68();
      v27 = v26;
      if (v25 == sub_29D939D68() && v27 == v28)
      {
      }

      else
      {
        v54 = v7;
        v30 = sub_29D93AD78();

        if ((v30 & 1) == 0)
        {
          v31 = sub_29D939D68();
          v33 = v32;
          if (v31 == sub_29D939D68() && v33 == v34)
          {

LABEL_20:
            sub_29D92FB90(v15);
            goto LABEL_17;
          }

          v39 = sub_29D93AD78();

          if (v39)
          {
            goto LABEL_20;
          }

          v40 = sub_29D939D68();
          v42 = v41;
          if (v40 == sub_29D939D68() && v42 == v43)
          {
          }

          else
          {
            v44 = sub_29D93AD78();

            if ((v44 & 1) == 0)
            {
              v47 = sub_29D939D68();
              v49 = v48;
              if (v47 == sub_29D939D68() && v49 == v50)
              {
              }

              else
              {
                v51 = sub_29D93AD78();

                if ((v51 & 1) == 0)
                {
                  sub_29D92FDFC(v5, &off_2A244E6C8, v52);
                  goto LABEL_17;
                }
              }

              v45 = MEMORY[0x29EDC1728];
LABEL_26:
              v46 = v54;
              (*(v54 + 104))(v10, *v45, v6);
              sub_29D934698();

              (*(v46 + 8))(v10, v6);
              sub_29D6D96C0(v18);
              goto LABEL_18;
            }
          }

          v45 = MEMORY[0x29EDC1720];
          goto LABEL_26;
        }
      }

      sub_29D92F894(v15);
LABEL_17:

      sub_29D6D96C0(v18);
      (v56)(v15, 0, 1, v57);
LABEL_18:
      v38 = v58;
      sub_29D8C8D38(v15, v18);
      return sub_29D8C8D38(v18, v38);
    }
  }

  v35 = sub_29D9336F8();
  v36 = *(*(v35 - 8) + 56);

  return v36(a2, 1, 1, v35);
}

uint64_t sub_29D90883C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D937118();
  v49 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D937178();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v50 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D937158();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = (v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_29D9371A8();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 != *MEMORY[0x29EDC2D70])
  {
    if (v21 == *MEMORY[0x29EDC2D68])
    {
      (*(v17 + 96))(v20, v16);
      v36 = v49;
      v49[4](v7, v20, v4);
      v58 = v2;
      type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
      sub_29D90A7B4(&qword_2A17B7D70, v37, type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider, &unk_29D95570C);
      v38 = sub_29D934CB8();
      if (v38)
      {
        v39 = v38;
        v40 = v50;
        sub_29D937108();
        v41 = sub_29D937188();

        (*(v51 + 8))(v40, v52);
        (v36[1])(v7, v4);
        return v41;
      }

      (v36[1])(v7, v4);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
    }

    return 0;
  }

  (*(v17 + 96))(v20, v16);
  v22 = *(v12 + 32);
  v49 = v15;
  v22(v15, v20, v11);
  v55 = *MEMORY[0x29EDBA598];
  v23 = v55;
  v58 = v2;
  v24 = type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider();
  v26 = sub_29D90A7B4(&qword_2A17B7D70, v25, type metadata accessor for ElectrocardiogramRecordingHealthChecklistFeedItemProvider, &unk_29D95570C);
  v27 = v23;
  v56 = sub_29D934CB8();
  v53 = v2;
  v48[0] = v26;
  v48[1] = v24;
  result = sub_29D934C88();
  v29 = 0;
  v57 = result;
  v30 = MEMORY[0x29EDCA190];
LABEL_3:
  v31 = 3;
  if (v29 > 3)
  {
    v31 = v29;
  }

  while (v29 != 3)
  {
    if (v31 == v29)
    {
      __break(1u);
      return result;
    }

    v32 = v54[v29++ + 4];
    if (v32)
    {
      v33 = v32;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29D6906A4(0, v30[2] + 1, 1, v30);
        v30 = result;
      }

      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        result = sub_29D6906A4((v34 > 1), v35 + 1, 1, v30);
        v30 = result;
      }

      v30[2] = v35 + 1;
      v30[v35 + 4] = v33;
      goto LABEL_3;
    }
  }

  sub_29D90A750(0, &qword_2A17B7D78, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x29EDC9C68]);
  v42 = swift_arrayDestroy();
  MEMORY[0x2A1C7C4A8](v42, v43);
  v44 = v49;
  v48[-2] = v49;
  v45 = sub_29D907250(0, sub_29D90A734, &v48[-4], v30);

  v41 = 0;
  if ((v45 & 1) == 0)
  {
    v46 = v50;
    sub_29D937108();
    v58 = v2;
    v47 = sub_29D934C88();
    v41 = sub_29D937188();

    (*(v51 + 8))(v46, v52);
  }

  (*(v12 + 8))(v44, v11);
  return v41;
}

void sub_29D908E88(_BYTE *a1@<X0>, unsigned __int8 *a3@<X8>)
{
  v5 = sub_29D937178();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v10 = 1;
  }

  else
  {
    sub_29D937108();
    v11 = sub_29D937188();
    (*(v6 + 8))(v9, v5);
    v10 = [v11 areAllRequirementsSatisfied];
  }

  *a3 = v10;
}

uint64_t sub_29D908FB0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v150 = a1;
  v153 = a2;
  v3 = *v2;
  v4 = MEMORY[0x29EDC9C68];
  sub_29D90A750(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v154 = &v131[-v7];
  sub_29D90A750(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v4);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v145 = &v131[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v131[-v13];
  v15 = sub_29D9349A8();
  v151 = *(v15 - 8);
  v152 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v155 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_29D9346E8();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v143 = &v131[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = &v131[-v25];
  MEMORY[0x2A1C7C4A8](v24, v27);
  v148 = &v131[-v28];
  sub_29D92F7E0();
  sub_29D92F7AC();
  v29 = *MEMORY[0x29EDC1750];
  v144 = v19;
  v30 = *(v19 + 104);
  v132 = v29;
  v149 = v18;
  v134 = v19 + 104;
  v133 = v30;
  v30(v26);
  v146 = v3;
  sub_29D92F86C();
  v31 = sub_29D934798();
  v32 = *(v31 - 8);
  v141 = *(v32 + 56);
  v142 = v31;
  v140 = v32 + 56;
  v141(v14, 0, 1);
  LOBYTE(v19) = sub_29D9347F8();
  sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
  v135 = v33;
  v34 = swift_allocObject();
  v147 = xmmword_29D93DDB0;
  *(v34 + 16) = xmmword_29D93DDB0;
  if (v19)
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v35 = qword_2A1A2C038;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    v35 = qword_2A1A2C038;
  }

  v136 = v35;
  *(v34 + 32) = sub_29D9334A8();
  *(v34 + 40) = v36;
  sub_29D934808();
  v37 = sub_29D934358();
  v38 = *(v37 - 8);
  v138 = *(v38 + 56);
  v139 = v37;
  v137 = v38 + 56;
  v138(v154, 1, 1);
  v39 = v155;
  sub_29D934988();
  v40 = [v150 highestPriorityUnsatisfiedRequirement];
  if (v40)
  {
    v41 = v40;
    v42 = sub_29D939D68();
    v44 = v43;
    if (v42 == sub_29D939D68() && v44 == v45)
    {
      goto LABEL_11;
    }

    v53 = sub_29D93AD78();

    if (v53)
    {
      goto LABEL_16;
    }

    v55 = sub_29D939D68();
    v57 = v56;
    if (v55 == sub_29D939D68() && v57 == v58)
    {
      goto LABEL_11;
    }

    v59 = sub_29D93AD78();

    if (v59)
    {
      goto LABEL_16;
    }

    v60 = sub_29D939D68();
    v62 = v61;
    if (v60 == sub_29D939D68() && v62 == v63)
    {
LABEL_11:

LABEL_16:
      v46 = v151;
      v51 = v152;
      (*(v151 + 8))(v39, v152);

      v52 = 1;
      v48 = v153;
      return (*(v46 + 56))(v48, v52, 1, v51);
    }

    v64 = sub_29D93AD78();

    if (v64)
    {
      goto LABEL_16;
    }

    v65 = sub_29D939D68();
    v67 = v66;
    if (v65 == sub_29D939D68() && v67 == v68)
    {

LABEL_28:
      v133(v148, *MEMORY[0x29EDC1758], v149);
      v70 = swift_allocObject();
      *(v70 + 16) = v147;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      *(v70 + 32) = sub_29D9334A8();
      *(v70 + 40) = v71;
      *&v147 = sub_29D9334A8();
      v150 = v70;
      goto LABEL_37;
    }

    v69 = sub_29D93AD78();

    if (v69)
    {
      goto LABEL_28;
    }

    v72 = sub_29D939D68();
    v74 = v73;
    if (v72 == sub_29D939D68() && v74 == v75)
    {
      goto LABEL_33;
    }

    v76 = sub_29D93AD78();

    if (v76)
    {
      goto LABEL_35;
    }

    v84 = sub_29D939D68();
    v86 = v85;
    if (v84 == sub_29D939D68() && v86 == v87)
    {
LABEL_33:

      goto LABEL_35;
    }

    v88 = sub_29D93AD78();

    if (v88)
    {
LABEL_35:
      v133(v148, v132, v149);
      v77 = swift_allocObject();
      *(v77 + 16) = v147;
      if (qword_2A1A257A0 == -1)
      {
LABEL_36:
        *(v77 + 32) = sub_29D9334A8();
        *(v77 + 40) = v78;
        *&v147 = sub_29D934808();
        v150 = v77;
LABEL_37:
        v136 = sub_29D92F7E0();
        v135 = v79;
        v134 = sub_29D92F7AC();
        v80 = v144;
        v82 = v148;
        v81 = v149;
        (*(v144 + 16))(v143, v148, v149);
        v83 = v145;
        sub_29D92F86C();
        (v141)(v83, 0, 1, v142);
        (v138)(v154, 1, 1, v139);
        v48 = v153;
        sub_29D934988();

        v46 = v151;
        v51 = v152;
        (*(v151 + 8))(v155, v152);
        (*(v80 + 8))(v82, v81);
        goto LABEL_14;
      }

LABEL_66:
      swift_once();
      goto LABEL_36;
    }

    v89 = sub_29D939D68();
    v91 = v90;
    if (v89 == sub_29D939D68() && v91 == v92)
    {

      goto LABEL_45;
    }

    v93 = sub_29D93AD78();

    if (v93)
    {
LABEL_45:
      v133(v148, v132, v149);
      v77 = swift_allocObject();
      *(v77 + 16) = v147;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_66;
    }

    v94 = sub_29D939D68();
    v96 = v95;
    if (v94 == sub_29D939D68() && v96 == v97)
    {

LABEL_52:
      v46 = v151;
      v47 = *(v151 + 32);
      v48 = v153;
      v49 = v153;
      v50 = v155;
      goto LABEL_13;
    }

    v98 = sub_29D93AD78();

    if (v98)
    {
LABEL_51:

      goto LABEL_52;
    }

    v99 = sub_29D939D68();
    v101 = v100;
    if (v99 == sub_29D939D68() && v101 == v102)
    {

      goto LABEL_57;
    }

    v103 = sub_29D93AD78();

    if (v103)
    {
LABEL_57:
      v133(v148, v132, v149);
      v104 = swift_allocObject();
      *(v104 + 16) = v147;
      if (qword_2A1A257A0 == -1)
      {
LABEL_58:
        *(v104 + 32) = sub_29D9334A8();
        *(v104 + 40) = v105;
        v150 = v104;
        v106 = sub_29D934808();
LABEL_59:
        *&v147 = v106;
        goto LABEL_37;
      }

LABEL_80:
      swift_once();
      goto LABEL_58;
    }

    v107 = sub_29D939D68();
    v109 = v108;
    if (v107 == sub_29D939D68() && v109 == v110)
    {

      goto LABEL_64;
    }

    v111 = sub_29D93AD78();

    if (v111)
    {
LABEL_64:
      v133(v148, v132, v149);
      v104 = swift_allocObject();
      *(v104 + 16) = v147;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_80;
    }

    v112 = sub_29D939D68();
    v114 = v113;
    if (v112 == sub_29D939D68() && v114 == v115)
    {
    }

    else
    {
      v116 = sub_29D93AD78();

      if ((v116 & 1) == 0)
      {
        v125 = sub_29D939D68();
        v127 = v126;
        if (v125 == sub_29D939D68() && v127 == v128)
        {
        }

        else
        {
          v129 = sub_29D93AD78();

          if ((v129 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v117 = sub_29D934858();
        v119 = v130;
        if (qword_2A1A257A0 == -1)
        {
          goto LABEL_72;
        }

        goto LABEL_82;
      }
    }

    v117 = sub_29D934848();
    v119 = v118;
    if (qword_2A1A257A0 == -1)
    {
LABEL_72:
      sub_29D9334A8();
      sub_29D90A750(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v120 = swift_allocObject();
      *(v120 + 16) = v147;
      *(v120 + 56) = MEMORY[0x29EDC99B0];
      *(v120 + 64) = sub_29D69AD24();
      *(v120 + 32) = v117;
      *(v120 + 40) = v119;
      v121 = sub_29D939D38();
      v123 = v122;

      v133(v148, *MEMORY[0x29EDC1758], v149);
      v124 = swift_allocObject();
      *(v124 + 16) = v147;
      *(v124 + 32) = v121;
      *(v124 + 40) = v123;
      v150 = v124;
      v106 = sub_29D934828();
      goto LABEL_59;
    }

LABEL_82:
    swift_once();
    goto LABEL_72;
  }

  v46 = v151;
  v47 = *(v151 + 32);
  v48 = v153;
  v49 = v153;
  v50 = v39;
LABEL_13:
  v51 = v152;
  v47(v49, v50, v152);
LABEL_14:
  v52 = 0;
  return (*(v46 + 56))(v48, v52, 1, v51);
}

uint64_t sub_29D90A244()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D90A2A8()
{
  v0 = *MEMORY[0x29EDBA598];
  v1 = *MEMORY[0x29EDBA598];
  return v0;
}

uint64_t sub_29D90A370@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1888];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D90A408(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60FC0](a1, a2, WitnessTable);
}

uint64_t sub_29D90A470()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  *(inited + 32) = [objc_opt_self() electrocardiogramType];
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D90A520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C61000](a1, WitnessTable);
}

uint64_t sub_29D90A584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, WitnessTable);
}

void sub_29D90A750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D90A7B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressurePDFChart(uint64_t a1)
{
  result = qword_2A17B7D80;
  if (!qword_2A17B7D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D90A870(uint64_t a1)
{
  sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    sub_29D90A99C(319);
    if (v2 <= 0x3F)
    {
      sub_29D916164(319, &qword_2A17B1680, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        sub_29D916164(319, &qword_2A17B1E90, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
        if (v4 <= 0x3F)
        {
          sub_29D6EA5E0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D90A9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D90AB0C@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  sub_29D915E28(0, a2, a3, sub_29D6D61A0);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v28 - v12;
  v14 = a4(0);
  a5();
  v15 = *a1;
  v16 = a1;
  v28 = v14;
  v17 = *(v14 - 8);
  (*(v17 + 16))(v13, v15, v14);
  sub_29D6D61A0(0);
  v19 = v18;
  sub_29D916238(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0]);
  sub_29D937F78();
  v20 = *(v10 + 56);
  v21 = a1[1];
  v22 = *(v19 - 8);
  v23 = *(v22 + 16);
  v23(&v13[v20], v21, v19);
  v24 = *(v10 + 72);
  v23(&v13[v24], v16[2], v19);
  v25 = v29;
  (*(v17 + 32))(v29, v13, v28);
  v26 = *(v22 + 32);
  v26(v25 + *(v10 + 56), &v13[v20], v19);
  return (v26)(v25 + *(v10 + 72), &v13[v24], v19);
}

uint64_t sub_29D90AD20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D915E28(0, &qword_2A17B8028, sub_29D912DB8, sub_29D91352C);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v15 - v7;
  sub_29D912DB8(0);
  v10 = v9;
  sub_29D914244(&qword_2A17B7E38, sub_29D912DB8, sub_29D9137A0, MEMORY[0x29EDB8778]);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, *a1, v10);
  sub_29D91352C(0);
  sub_29D913AAC();
  v12 = *(v5 + 56);
  sub_29D915D60(a1[1], &v8[v12], sub_29D91352C);
  v13 = *(v5 + 72);
  sub_29D915D60(a1[2], &v8[v13], sub_29D91352C);
  (*(v11 + 32))(a2, v8, v10);
  sub_29D9157C4(&v8[v12], a2 + *(v5 + 56), sub_29D91352C);
  return sub_29D9157C4(&v8[v13], a2 + *(v5 + 72), sub_29D91352C);
}

uint64_t sub_29D90AF18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_29D915F74(0);
  v4 = (v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D912F48(0);
  v9 = v8;
  sub_29D916238(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
  sub_29D937F38();
  v10 = *a1;
  v32 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v7, v10, v9);
  sub_29D913038(0);
  v13 = v12;
  sub_29D91317C(255);
  sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698], MEMORY[0x29EDB8590]);
  sub_29D937EA8();
  v14 = v4[14];
  v30 = v13;
  v31 = v14;
  v15 = v13;
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v14], a1[1], v15);
  sub_29D913274(0);
  v18 = v17;
  sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700]);
  sub_29D937DF8();
  sub_29D938018();
  sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670], MEMORY[0x29EDB8668]);
  v19 = v4[18];
  v20 = *(v18 - 8);
  (*(v20 + 16))(&v7[v19], a1[2], v18);
  sub_29D9133AC(0);
  v22 = v21;
  sub_29D9134CC(255, v23);
  v24 = v4[22];
  v25 = a1[3];
  v26 = *(v22 - 8);
  (*(v26 + 16))(&v7[v24], v25, v22);
  v27 = *(v11 + 32);
  v28 = v33;
  v27(v33, v7, v32);
  (*(v16 + 32))(v28 + v4[14], &v7[v31], v30);
  (*(v20 + 32))(v28 + v4[18], &v7[v19], v18);
  return (*(v26 + 32))(v28 + v4[22], &v7[v24], v22);
}

void sub_29D90B28C(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  sub_29D6D6C48(0);
  v95 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v93 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v91 = &v83 - v8;
  sub_29D6D6634(0);
  v103 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v98 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F17A0(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D912D24(0);
  v17 = v16;
  v105 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913C14(0);
  v106 = *(v21 - 8);
  v107 = v21;
  MEMORY[0x2A1C7C4A8](v21, v22);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913D14(0);
  v92 = v25;
  v90 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v108 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914678(0);
  v100 = v28;
  v96 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v94 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914848(0);
  v102 = v31;
  v101 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v32);
  v99 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v1;
  sub_29D913E94(0, &qword_2A17B7DA8, sub_29D912DB8, sub_29D91352C);
  sub_29D9136A4();
  sub_29D937E58();
  v34 = type metadata accessor for BloodPressurePDFChart(0);
  sub_29D90E990(*(v1 + *(v34 + 24)));
  v115 = v35;
  v116 = v36;
  v37 = sub_29D938028();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v89 = v37;
  v88 = v39;
  v87 = v38 + 56;
  (v39)(v15, 1, 1);
  sub_29D915EA8(0, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v41 = v40;
  v42 = sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
  v43 = sub_29D6D69EC();
  sub_29D939358();
  v97 = v15;
  sub_29D914FF4(v15, sub_29D6F17A0);
  (*(v105 + 8))(v20, v17);
  v109 = v1;
  sub_29D913E94(0, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
  v45 = v44;
  v111 = v17;
  v112 = v41;
  v113 = v42;
  v114 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_29D914518();
  v48 = v107;
  sub_29D939338();
  (*(v106 + 8))(v24, v48);
  v106 = v34;
  v49 = v1 + *(v34 + 20);
  v50 = sub_29D9339F8();
  sub_29D912AB8(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v51 = v2;
  if (sub_29D939CD8())
  {
    v52 = *(v50 - 8);
    v53 = v52[2];
    v105 = OpaqueTypeConformance2;
    v54 = v91;
    v86 = v51;
    v53(v91, v51, v50);
    v85 = v47;
    v55 = v95;
    v53((v54 + *(v95 + 48)), v49, v50);
    v56 = v93;
    sub_29D91505C(v54, v93, sub_29D6D6C48);
    v57 = *(v55 + 48);
    v58 = v52[4];
    v84 = v45;
    v59 = v98;
    v58(v98, v56, v50);
    v60 = v52[1];
    v60(v56 + v57, v50);
    sub_29D9156C8(v54, v56, sub_29D6D6C48);
    v61 = *(v55 + 48);
    v62 = v103;
    v58((v59 + *(v103 + 36)), v56 + v61, v50);
    v60(v56, v50);
    v63 = v97;
    v88(v97, 1, 1, v89);
    v111 = v107;
    v112 = v84;
    v113 = v105;
    v114 = v85;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = sub_29D6D66C8();
    v66 = v94;
    v67 = v92;
    v68 = v108;
    sub_29D939348();
    sub_29D914FF4(v63, sub_29D6F17A0);
    sub_29D914FF4(v59, sub_29D6D6634);
    v69 = (*(v90 + 8))(v68, v67);
    MEMORY[0x2A1C7C4A8](v69, v70);
    v71 = v86;
    *(&v83 - 2) = v86;
    sub_29D914A98(0);
    v73 = v72;
    v111 = v67;
    v112 = v62;
    v113 = v64;
    v114 = v65;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98, MEMORY[0x29EDB86F8]);
    v76 = v99;
    v77 = v100;
    sub_29D939328();
    (*(v96 + 8))(v66, v77);
    sub_29D914C24(0, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    v111 = v77;
    v112 = v73;
    v113 = v74;
    v114 = v75;
    swift_getOpaqueTypeConformance2();
    sub_29D9152C0();
    v78 = v104;
    v79 = v102;
    sub_29D939368();
    (*(v101 + 8))(v76, v79);
    v80 = *(v71 + *(v106 + 40));
    sub_29D915EFC(0, &qword_2A17B7FD8, sub_29D9153E4, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
    v82 = (v78 + *(v81 + 36));
    *v82 = v80;
    v82[1] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D90BE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  sub_29D915EA8(0, &qword_2A17B22C0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB87A0], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v93 = &v85 - v5;
  v92 = sub_29D937F78();
  v100 = *(v92 - 1);
  MEMORY[0x2A1C7C4A8](v92, v6);
  v96 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDB85E8];
  sub_29D9160EC(0, &qword_2A17B7E28, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], MEMORY[0x29EDB85E8]);
  v91 = v9;
  v103 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v101 = &v85 - v11;
  sub_29D916008(0, &qword_2A17B7E20, &qword_2A17B7E28, v8);
  v90 = v12;
  v89 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v102 = &v85 - v14;
  sub_29D913560(0);
  v88 = v15;
  v107 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v98 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D91352C(0);
  v20 = MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v105 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v104 = &v85 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v108 = &v85 - v27;
  MEMORY[0x2A1C7C4A8](v26, v28);
  v109 = &v85 - v29;
  v30 = type metadata accessor for BloodPressurePDFChart(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v30, v33);
  sub_29D912DB8(0);
  v99 = v34;
  v97 = *(v34 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v34, v35);
  v95 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v40 = &v85 - v39;
  v41 = *(v30 + 24);
  v86 = a1;
  v115 = *(a1 + v41);
  sub_29D91505C(a1, &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressurePDFChart);
  v42 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v43 = swift_allocObject();
  sub_29D9156C8(&v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42, type metadata accessor for BloodPressurePDFChart);
  sub_29D90A99C(0);
  sub_29D9339F8();
  sub_29D912EBC(0);
  sub_29D912AB8(&qword_2A17B7E08, sub_29D90A99C, MEMORY[0x29EDC9A80]);
  sub_29D9137A0();
  sub_29D912AB8(&qword_2A17B8020, type metadata accessor for BloodPressureMinMaxCoordinate, &unk_29D94397C);
  sub_29D935E88();
  v94 = v40;
  sub_29D9397B8();
  v87 = v30;
  v44 = v86;
  v45 = v86 + *(v30 + 28);
  v46 = MEMORY[0x29EDBCA98];
  v47 = MEMORY[0x29EDBCA88];
  if (*(v45 + 8))
  {
    v48 = 1;
    v49 = v92;
    v50 = v91;
    v51 = v88;
    v52 = v109;
    v53 = v107;
  }

  else
  {
    v54 = *v45;
    sub_29D938C18();
    v117 = v54;
    sub_29D937D48();

    v55 = v96;
    sub_29D937F58();
    sub_29D9386D8();
    v56 = v101;
    v49 = v92;
    v57 = MEMORY[0x29EDB86E0];
    sub_29D937C98();
    sub_29D6D70B4(v116);
    (*(v100 + 8))(v55, v49);
    v117 = sub_29D939578();
    sub_29D915AC8();
    v110 = sub_29D939608();
    v117 = v49;
    v118 = v57;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v102;
    v50 = v91;
    sub_29D937C48();

    (*(v103 + 8))(v56, v50);
    v117 = v50;
    v118 = v46;
    v119 = OpaqueTypeConformance2;
    v120 = v47;
    swift_getOpaqueTypeConformance2();
    v60 = v98;
    v61 = v90;
    sub_29D937C78();
    (*(v89 + 8))(v59, v61);
    v53 = v107;
    v62 = v109;
    v51 = v88;
    (*(v107 + 32))(v109, v60, v88);
    v48 = 0;
    v52 = v62;
  }

  v63 = 1;
  v92 = *(v53 + 56);
  (v92)(v52, v48, 1, v51);
  v64 = v44 + *(v87 + 32);
  if ((*(v64 + 8) & 1) == 0)
  {
    v65 = *v64;
    sub_29D938C18();
    v117 = v65;
    v66 = v103;
    sub_29D937D48();

    v67 = v96;
    sub_29D937F58();
    sub_29D9386D8();
    v68 = v101;
    v69 = MEMORY[0x29EDB86E0];
    sub_29D937C98();
    sub_29D6D70B4(&v117);
    (*(v100 + 8))(v67, v49);
    v110 = sub_29D939568();
    sub_29D915AC8();
    v70 = MEMORY[0x29EDBCA98];
    v114 = sub_29D939608();
    v110 = v49;
    v111 = v69;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v102;
    sub_29D937C48();

    (*(v66 + 8))(v68, v50);
    v110 = v50;
    v111 = v70;
    v112 = v71;
    v113 = MEMORY[0x29EDBCA88];
    swift_getOpaqueTypeConformance2();
    v73 = v98;
    v74 = v90;
    sub_29D937C78();
    (*(v89 + 8))(v72, v74);
    (*(v107 + 32))(v108, v73, v51);
    v63 = 0;
  }

  v75 = v108;
  (v92)(v108, v63, 1, v51);
  v76 = v97;
  v77 = v95;
  v78 = v94;
  v79 = v99;
  (*(v97 + 16))(v95, v94, v99);
  v110 = v77;
  v80 = v109;
  v81 = v104;
  sub_29D915D60(v109, v104, sub_29D91352C);
  v111 = v81;
  v82 = v105;
  sub_29D915D60(v75, v105, sub_29D91352C);
  v112 = v82;
  sub_29D90AD20(&v110, v106);
  sub_29D915DC8(v75, sub_29D91352C);
  sub_29D915DC8(v80, sub_29D91352C);
  v83 = *(v76 + 8);
  v83(v78, v79);
  sub_29D915DC8(v82, sub_29D91352C);
  sub_29D915DC8(v81, sub_29D91352C);
  return (v83)(v77, v79);
}

uint64_t sub_29D90CAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v191 = a2;
  sub_29D9133AC(0);
  v194 = v3;
  v193 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  v192 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v190 = &v159 - v8;
  v188 = sub_29D938018();
  v225 = *(v188 - 8);
  MEMORY[0x2A1C7C4A8](v188, v9);
  v201 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D916238(0, &qword_2A17B7DE8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700]);
  v206 = v11;
  v187 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v186 = &v159 - v13;
  sub_29D913274(0);
  v209 = v14;
  v189 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14, v15);
  v208 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v207 = &v159 - v19;
  v173 = sub_29D938C38();
  v171 = *(v173 - 8);
  MEMORY[0x2A1C7C4A8](v173, v20);
  v169 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_29D937EA8();
  v168 = *(v174 - 8);
  MEMORY[0x2A1C7C4A8](v174, v22);
  v167 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9160EC(0, &qword_2A17B7DD8, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698], MEMORY[0x29EDB8590]);
  v176 = v24;
  v172 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v170 = &v159 - v26;
  sub_29D91317C(0);
  v179 = v27;
  v178 = *(v27 - 1);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v175 = &v159 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913038(0);
  v205 = v30;
  v185 = *(v30 - 8);
  v32 = MEMORY[0x2A1C7C4A8](v30, v31);
  v204 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32, v34);
  v224 = &v159 - v35;
  v36 = MEMORY[0x29EDB8620];
  sub_29D915EA8(0, &qword_2A17B8030, MEMORY[0x29EDC99B0], MEMORY[0x29EDB8788], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v37 - 8, v38);
  v196 = &v159 - v39;
  sub_29D915EA8(0, &qword_2A17B1F90, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], v36);
  v42 = MEMORY[0x2A1C7C4A8](v40 - 8, v41);
  v166 = &v159 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42, v44);
  v229 = &v159 - v45;
  sub_29D6F18F0(0);
  MEMORY[0x2A1C7C4A8](v46 - 8, v47);
  v228 = &v159 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_29D933CC8();
  v231 = *(v227 - 8);
  MEMORY[0x2A1C7C4A8](v227, v49);
  v222 = &v159 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D915EFC(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v51 - 8, v52);
  v226 = &v159 - v53;
  v195 = sub_29D937F38();
  v162 = *(v195 - 8);
  MEMORY[0x2A1C7C4A8](v195, v54);
  v161 = &v159 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D916238(0, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
  v165 = v56;
  v164 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56, v57);
  v163 = &v159 - v58;
  sub_29D912F48(0);
  v203 = v59;
  v184 = *(v59 - 8);
  v61 = MEMORY[0x2A1C7C4A8](v59, v60);
  v202 = &v159 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v61, v63);
  v223 = &v159 - v64;
  v183 = sub_29D937DD8();
  v182 = *(v183 - 8);
  MEMORY[0x2A1C7C4A8](v183, v65);
  v67 = &v159 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_29D937DF8();
  v69 = *(v68 - 8);
  v71 = MEMORY[0x2A1C7C4A8](v68, v70);
  v73 = &v159 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v71, v74);
  v76 = &v159 - v75;
  sub_29D9134CC(0, v77);
  v197 = v78;
  v181 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78, v79);
  v221 = &v159 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v82 = *(a1 + v81[9]);
  v83 = (v69 + 8);
  v200 = v67;
  v199 = v68;
  v198 = v73;
  v180 = v83;
  if (v82)
  {
    v230 = sub_29D939568();
    sub_29D937D98();
    sub_29D937DE8();
    v84 = *v83;
    v177 = v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v84(v76, v68);
    sub_29D937D98();
    sub_29D937DC8();
    v85 = 68;
  }

  else
  {
    v230 = sub_29D939578();
    sub_29D937D88();
    sub_29D937DE8();
    v86 = *v83;
    v177 = v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v86(v76, v68);
    sub_29D937D88();
    sub_29D937DB8();
    v85 = 83;
  }

  v213 = v85;
  v87 = *(a1 + v81[8]);
  v212 = a1;
  [v87 _value];
  v89 = v88;
  sub_29D938C18();
  v219 = v81[5];
  v210 = *MEMORY[0x29EDB9CB8];
  v160 = v81;
  v211 = *(v231 + 104);
  v220 = v231 + 104;
  v90 = v222;
  v91 = v227;
  v211(v222);
  v217 = sub_29D933CE8();
  v92 = *(v217 - 8);
  v216 = *(v92 + 56);
  v218 = v92 + 56;
  v93 = v228;
  v216(v228, 1, 1, v217);
  sub_29D937D38();

  v215 = sub_29D6F18F0;
  sub_29D914FF4(v93, sub_29D6F18F0);
  v94 = *(v231 + 8);
  v231 += 8;
  v214 = v94;
  v94(v90, v91);
  sub_29D938C18();
  [v87 _value];
  v237[0] = v95;
  sub_29D937D48();

  sub_29D938C18();
  v237[0] = v213;
  v237[1] = 0xE100000000000000;
  sub_29D937D48();

  v213 = sub_29D9339F8();
  v96 = v161;
  sub_29D937F18();
  v237[0] = v230;
  v196 = sub_29D915AC8();

  v97 = MEMORY[0x29EDBCA98];
  v98 = MEMORY[0x29EDBCA88];
  v237[0] = sub_29D939608();
  v99 = v163;
  v100 = v195;
  v101 = v97;
  v102 = MEMORY[0x29EDB86D0];
  sub_29D937C48();

  (*(v162 + 8))(v96, v100);
  sub_29D9386D8();
  v233 = v100;
  v234 = v101;
  v235 = v102;
  v236 = v98;
  v103 = v212;
  v195 = MEMORY[0x29EDB8598];
  swift_getOpaqueTypeConformance2();
  v104 = v165;
  sub_29D937C98();
  sub_29D6D70B4(v237);
  (*(v164 + 8))(v99, v104);
  sub_29D938C18();
  v105 = v222;
  v106 = v227;
  (v211)(v222, v210, v227);
  v107 = v228;
  v216(v228, 1, 1, v217);
  sub_29D937D38();

  sub_29D914FF4(v107, v215);
  v214(v105, v106);
  sub_29D938C18();
  v108 = v160;
  [*(v103 + v160[6]) _value];
  v233 = v109;
  sub_29D937D48();

  sub_29D938C18();
  [*(v103 + v108[7]) _value];
  v233 = v110;
  sub_29D937D48();

  v111 = v167;
  sub_29D937E88();
  v112 = v171;
  v113 = v169;
  v114 = v173;
  (*(v171 + 104))(v169, *MEMORY[0x29EDBC6F8], v173);
  v115 = v170;
  v116 = v174;
  v117 = MEMORY[0x29EDB8698];
  sub_29D937C38();
  (*(v112 + 8))(v113, v114);
  (*(v168 + 8))(v111, v116);
  v233 = v230;

  v118 = MEMORY[0x29EDBCA98];
  v119 = MEMORY[0x29EDBCA88];
  sub_29D939608();
  v120 = sub_29D9395A8();

  v232 = v120;
  v233 = v116;
  v234 = v117;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v122 = v175;
  v123 = v176;
  sub_29D937C48();

  v124 = (*(v172 + 8))(v115, v123);
  MEMORY[0x2A1C7C4A8](v124, v125);
  sub_29D9398A8();
  v233 = v123;
  v234 = v118;
  v235 = OpaqueTypeConformance2;
  v236 = v119;
  swift_getOpaqueTypeConformance2();
  v126 = v179;
  sub_29D937C18();
  (*(v178 + 8))(v122, v126);
  sub_29D938C18();
  v127 = v222;
  v128 = v227;
  (v211)(v222, v210, v227);
  v129 = v228;
  v216(v228, 1, 1, v217);
  sub_29D937D38();

  sub_29D914FF4(v129, v215);
  v214(v127, v128);
  sub_29D938C18();
  v233 = v89;
  sub_29D937D48();

  v130 = v201;
  sub_29D938008();
  v233 = sub_29D939598();
  v131 = v186;
  v132 = v188;
  v133 = MEMORY[0x29EDBCA98];
  v134 = MEMORY[0x29EDB8700];
  v135 = MEMORY[0x29EDBCA88];
  sub_29D937C48();

  v136 = *(v225 + 8);
  v225 += 8;
  v179 = v136;
  v136(v130, v132);
  v233 = v132;
  v234 = v133;
  v235 = v134;
  v236 = v135;
  v195 = swift_getOpaqueTypeConformance2();
  sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670], MEMORY[0x29EDB8668]);
  v137 = v206;
  sub_29D937C68();
  v187 = *(v187 + 8);
  (v187)(v131, v137);
  sub_29D938C18();
  v138 = v227;
  (v211)(v127, v210, v227);
  v139 = v228;
  v216(v228, 1, 1, v217);
  sub_29D937D38();

  sub_29D914FF4(v139, v215);
  v214(v127, v138);
  sub_29D938C18();
  v233 = v89;
  sub_29D937D48();

  v140 = v201;
  sub_29D938008();
  v233 = v230;

  v233 = sub_29D939608();
  sub_29D937C48();

  v179(v140, v132);
  swift_getOpaqueTypeConformance2();
  v141 = v190;
  v142 = v206;
  sub_29D937C68();
  (v187)(v131, v142);
  v143 = v184;
  v144 = v202;
  (*(v184 + 16))(v202, v223, v203);
  v233 = v144;
  v145 = v185;
  v146 = v204;
  (*(v185 + 16))(v204, v224, v205);
  v234 = v146;
  v147 = v189;
  v148 = v208;
  v149 = v207;
  v150 = v209;
  (*(v189 + 16))(v208, v207, v209);
  v235 = v148;
  v151 = v193;
  v152 = v192;
  v153 = v194;
  (*(v193 + 16))(v192, v141, v194);
  v236 = v152;
  sub_29D90AF18(&v233, v191);

  v231 = *(v151 + 8);
  (v231)(v141, v153);
  v230 = *(v147 + 8);
  v230(v149, v150);
  v154 = *(v145 + 8);
  v155 = v205;
  v154(v224, v205);
  v156 = *(v143 + 8);
  v157 = v203;
  v156(v223, v203);
  (*(v182 + 8))(v200, v183);
  (*v180)(v198, v199);
  (*(v181 + 8))(v221, v197);
  (v231)(v152, v153);
  v230(v208, v209);
  v154(v204, v155);
  return (v156)(v202, v157);
}

void sub_29D90E7A0(uint64_t a2@<X8>, double a3@<D0>)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_29D93AD38();
  sub_29D69AB60();
  v3 = sub_29D9392F8();
  v4 = v7;
  v5 = v8;
  if (qword_2A17B0DB0 != -1)
  {
LABEL_9:
    swift_once();
  }

  v9 = sub_29D9392C8();
  v11 = v10;
  v13 = v12;
  sub_29D69ABB4(v3, v4, v5 & 1);

  sub_29D915AC8();

  sub_29D939608();
  v14 = sub_29D9392B8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_29D69ABB4(v9, v11, v13 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
}

int *sub_29D90E990(uint64_t a1)
{
  v3 = type metadata accessor for BloodPressureMinMaxCoordinate(0);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v45 = v1;
    v46 = MEMORY[0x29EDCA190];
    sub_29D7EE7F8(0, v8, 0);
    v10 = v46;
    v11 = *(v4 + 80);
    v43 = a1;
    v44 = v4;
    v12 = a1 + ((v11 + 32) & ~v11);
    v13 = *(v4 + 72);
    v14 = v8;
    do
    {
      sub_29D91505C(v12, v7, type metadata accessor for BloodPressureMinMaxCoordinate);
      [*&v7[*(v3 + 24)] _value];
      v16 = v15;
      sub_29D914FF4(v7, type metadata accessor for BloodPressureMinMaxCoordinate);
      v46 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_29D7EE7F8((v17 > 1), v18 + 1, 1);
        v10 = v46;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v16;
      v12 += v13;
      --v14;
    }

    while (v14);
    a1 = v43;
  }

  else
  {
    v19 = *(MEMORY[0x29EDCA190] + 16);
    if (!v19)
    {
      goto LABEL_33;
    }

    v44 = v4;
    v45 = v1;
    v10 = MEMORY[0x29EDCA190];
  }

  v20 = *(v10 + 32);
  v21 = v19 - 1;
  if (v19 == 1)
  {
    v22 = v44;
  }

  else
  {
    v23 = (v10 + 40);
    v22 = v44;
    do
    {
      v24 = *v23++;
      v25 = v24;
      if (v24 < v20)
      {
        v20 = v25;
      }

      --v21;
    }

    while (v21);
  }

  if (v8)
  {
    v46 = v9;
    sub_29D7EE7F8(0, v8, 0);
    v9 = v46;
    v26 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v27 = *(v22 + 72);
    do
    {
      sub_29D91505C(v26, v7, type metadata accessor for BloodPressureMinMaxCoordinate);
      [*&v7[*(v3 + 28)] _value];
      v29 = v28;
      sub_29D914FF4(v7, type metadata accessor for BloodPressureMinMaxCoordinate);
      v46 = v9;
      v31 = *(v9 + 16);
      v30 = *(v9 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_29D7EE7F8((v30 > 1), v31 + 1, 1);
        v9 = v46;
      }

      *(v9 + 16) = v32;
      *(v9 + 8 * v31 + 32) = v29;
      v26 += v27;
      --v8;
    }

    while (v8);
    v1 = v45;
  }

  else
  {
    v32 = *(v9 + 16);
    v1 = v45;
    if (!v32)
    {
      goto LABEL_33;
    }
  }

  v33 = *(v9 + 32);
  v34 = v32 - 1;
  if (v32 != 1)
  {
    v35 = (v9 + 40);
    do
    {
      v36 = *v35++;
      v37 = v36;
      if (v33 < v36)
      {
        v33 = v37;
      }

      --v34;
    }

    while (v34);
  }

  result = type metadata accessor for BloodPressurePDFChart(0);
  v40 = *(v1 + result[14]);
  v41 = *(v1 + result[16]);
  if (v20 - v41 < v40)
  {
    v40 = v20 - v41;
  }

  v39 = result[15];
  v42 = v33 + v41;
  if (*(v1 + v39) > v42)
  {
    v42 = *(v1 + v39);
  }

  if (v40 > v42)
  {
    __break(1u);
LABEL_33:

    result = type metadata accessor for BloodPressurePDFChart(0);
    if (*(v1 + result[14]) > *(v1 + result[15]))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29D90ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v95 = a2;
  sub_29D914364(0);
  v99 = v3;
  v97 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v89 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914330(0);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v94 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v93 = v81 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v96 = v81 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v98 = v81 - v17;
  v18 = sub_29D937D68();
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v21 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D937CB8();
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v25 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BloodPressurePDFChart(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v30 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29D937CF8();
  MEMORY[0x2A1C7C4A8](v31 - 8, v32);
  sub_29D913F14(0);
  v91 = *(v33 - 8);
  v92 = v33;
  v35 = MEMORY[0x2A1C7C4A8](v33, v34);
  v90 = v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v39 = v81 - v38;
  v100[0] = 0x4024000000000000;
  sub_29D74D930();
  sub_29D937CC8();
  sub_29D91505C(a1, v30, type metadata accessor for BloodPressurePDFChart);
  v40 = *(v27 + 80);
  v41 = (v40 + 16) & ~v40;
  v42 = v41 + v28;
  v43 = swift_allocObject();
  v85 = v41;
  sub_29D9156C8(v30, v43 + v41, type metadata accessor for BloodPressurePDFChart);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D914CDC(0, &qword_2A17B7E78, MEMORY[0x29EDB8550], sub_29D913FA8);
  sub_29D914144();
  v88 = v39;
  v86 = v21;
  sub_29D937F88();
  v87 = v26;
  v44 = *(v26 + 28);
  v45 = v84;
  v46 = (v84 + v44);
  v47 = *(v46 + 8);
  v82 = v30;
  v83 = v25;
  v81[1] = v40;
  v81[0] = v42;
  if (v47)
  {
    v48 = 1;
    v49 = v85;
  }

  else
  {
    v50 = *v46;
    sub_29D916164(0, &qword_2A17B8000, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_29D93DDB0;
    *(v51 + 32) = v50;
    sub_29D91505C(v45, v30, type metadata accessor for BloodPressurePDFChart);
    v52 = v45;
    v53 = (v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v85;
    sub_29D9156C8(v30, v54 + v85, type metadata accessor for BloodPressurePDFChart);
    *(v54 + v53) = v50;
    v45 = v52;
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D9143F8(0);
    sub_29D912AB8(&qword_2A17B7EF0, sub_29D9143F8, MEMORY[0x29EDB8618]);
    v56 = v89;
    sub_29D937FB8();
    (*(v97 + 32))(v98, v56, v99);
    v48 = 0;
    v49 = v55;
  }

  v57 = *(v97 + 56);
  v58 = 1;
  v57(v98, v48, 1, v99);
  v59 = v45 + *(v87 + 8);
  if ((*(v59 + 8) & 1) == 0)
  {
    v60 = v45;
    v61 = *v59;
    sub_29D916164(0, &qword_2A17B8000, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_29D93DDB0;
    *(v62 + 32) = v61;
    v63 = v82;
    sub_29D91505C(v60, v82, type metadata accessor for BloodPressurePDFChart);
    v64 = v89;
    v65 = v97;
    v87 = v57;
    v66 = (v81[0] + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    sub_29D9156C8(v63, v67 + v49, type metadata accessor for BloodPressurePDFChart);
    *(v67 + v66) = v61;
    v68 = v99;
    v69 = v96;
    sub_29D937CA8();
    sub_29D937D58();
    sub_29D9143F8(0);
    sub_29D912AB8(&qword_2A17B7EF0, sub_29D9143F8, MEMORY[0x29EDB8618]);
    sub_29D937FB8();
    v70 = v68;
    v57 = v87;
    (*(v65 + 32))(v69, v64, v70);
    v58 = 0;
  }

  v71 = v96;
  v57(v96, v58, 1, v99);
  v73 = v90;
  v72 = v91;
  v74 = v88;
  v75 = v92;
  (*(v91 + 16))(v90, v88, v92);
  v100[0] = v73;
  v76 = v98;
  v77 = v93;
  sub_29D91505C(v98, v93, sub_29D914330);
  v100[1] = v77;
  v78 = v94;
  sub_29D91505C(v71, v94, sub_29D914330);
  v100[2] = v78;
  sub_29D9106FC(v100, v95);
  sub_29D914FF4(v71, sub_29D914330);
  sub_29D914FF4(v76, sub_29D914330);
  v79 = *(v72 + 8);
  v79(v74, v75);
  sub_29D914FF4(v78, sub_29D914330);
  sub_29D914FF4(v77, sub_29D914330);
  return (v79)(v73, v75);
}

uint64_t sub_29D90F64C@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X8>)
{
  v64 = a1;
  v69 = a2;
  sub_29D915748(0, &qword_2A17B8018, MEMORY[0x29EDB8550], sub_29D913FA8);
  v68 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v60 - v4;
  v6 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914010(0);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913FDC(0);
  v67 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D913FA8(0);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v60 - v26;
  v28 = sub_29D937BE8();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v34);
  v36 = &v60 - v35;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  sub_29D937BD8();
  sub_29D937FD8();
  if (v71)
  {
    v37 = 1;
LABEL_21:
    (*(v16 + 56))(v27, v37, 1, v67);
    v54 = *(v29 + 16);
    v54(v33, v36, v28);
    sub_29D91505C(v27, v24, sub_29D913FA8);
    v54(v5, v33, v28);
    sub_29D914244(&qword_2A17B7EB0, sub_29D913FA8, sub_29D9142B4, MEMORY[0x29EDB87B8]);
    v55 = v68;
    v56 = *(v68 + 48);
    sub_29D91505C(v24, &v5[v56], sub_29D913FA8);
    v57 = v69;
    (*(v29 + 32))(v69, v5, v28);
    sub_29D9156C8(&v5[v56], v57 + *(v55 + 48), sub_29D913FA8);
    sub_29D914FF4(v27, sub_29D913FA8);
    v58 = *(v29 + 8);
    v58(v36, v28);
    sub_29D914FF4(v24, sub_29D913FA8);
    return (v58)(v33, v28);
  }

  v38 = v70;
  result = type metadata accessor for BloodPressurePDFChart(0);
  v40 = v64 + *(result + 28);
  v41 = *v40;
  if (v40[8])
  {
    v41 = 0;
  }

  v42 = v41 - 10;
  if (__OFSUB__(v41, 10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v43 = __OFADD__(v41, 10);
  v44 = v41 + 10;
  if (v43)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v44 < v42)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v64 + *(result + 32);
  if (v45[8])
  {
    v46 = 0;
  }

  else
  {
    v46 = *v45;
  }

  v47 = v46 - 10;
  if (__OFSUB__(v46, 10))
  {
    goto LABEL_25;
  }

  v43 = __OFADD__(v46, 10);
  v48 = v46 + 10;
  if (v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v48 >= v47)
  {
    if (v38 < v42 || v44 < v38)
    {
      v49 = 1;
      if (v38 < v47 || v48 < v38)
      {
        v64 = &v60;
        MEMORY[0x2A1C7C4A8](result, 1);
        v60 = v59;
        sub_29D937E38();
        sub_29D937E08();
        sub_29D915EA8(0, &qword_2A17B7E98, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC488], MEMORY[0x29EDBC558]);
        v51 = v50;
        v52 = sub_29D9140A0();
        v59[2] = v51;
        v59[3] = v52;
        v59[0] = sub_29D915B24;
        v59[1] = v60;
        v53 = v61;
        sub_29D937D18();
        (*(v65 + 32))(v19, v53, v66);
        v49 = 0;
      }
    }

    else
    {
      v49 = 1;
    }

    (*(v65 + 56))(v19, v49, 1, v66);
    sub_29D9156C8(v19, v27, sub_29D913FDC);
    v37 = 0;
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_29D90FD58(uint64_t a1@<X8>)
{
  sub_29D93AD38();
  sub_29D69AB60();
  v2 = sub_29D9392F8();
  v4 = v3;
  v6 = v5;
  if (qword_2A17B0DA8 != -1)
  {
    swift_once();
  }

  v7 = sub_29D9392C8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_29D69ABB4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0x3FE0000000000000;
}

uint64_t sub_29D90FE70(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D937E38();
  sub_29D937E08();
  sub_29D91448C(0);
  sub_29D9161B4(&qword_2A17B7EE8, sub_29D91448C, sub_29D7287B8);
  return sub_29D937D18();
}

uint64_t sub_29D90FFFC@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_29D9101AC(a1 & 1, a2);
  sub_29D69AB60();
  v5 = sub_29D9392F8();
  v7 = v6;
  v9 = v8;
  if (qword_2A17B0DA8 != -1)
  {
    swift_once();
  }

  v10 = sub_29D9392C8();
  v12 = v11;
  v14 = v13;
  sub_29D69ABB4(v5, v7, v9 & 1);

  if (a1)
  {
    sub_29D939568();
  }

  else
  {
    sub_29D939578();
  }

  sub_29D915AC8();
  sub_29D939608();
  v15 = sub_29D9392B8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_29D69ABB4(v10, v12, v14 & 1);

  v22 = sub_29D939598();
  result = sub_29D9390D8();
  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = v22;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_29D9101AC(uint64_t a1, uint64_t a2)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D90A9D0(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  v4 = MEMORY[0x29EDC9BA8];
  *(v3 + 16) = xmmword_29D93DDB0;
  v5 = MEMORY[0x29EDC9C10];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a2;
  v6 = sub_29D939D88();

  return v6;
}

uint64_t sub_29D9102E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  sub_29D937E38();
  sub_29D937E08();
  sub_29D91448C(0);
  sub_29D9161B4(&qword_2A17B7EE8, sub_29D91448C, sub_29D7287B8);
  return sub_29D937D18();
}

uint64_t sub_29D910468@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D90A9D0(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = MEMORY[0x29EDC9BA8];
  *(v4 + 16) = xmmword_29D93DDB0;
  v6 = MEMORY[0x29EDC9C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  sub_29D939D88();

  sub_29D69AB60();
  v7 = sub_29D9392F8();
  v9 = v8;
  v11 = v10;
  if (qword_2A17B0DA8 != -1)
  {
    swift_once();
  }

  v12 = sub_29D9392C8();
  v14 = v13;
  v16 = v15;
  sub_29D69ABB4(v7, v9, v11 & 1);

  sub_29D939568();
  sub_29D915AC8();
  sub_29D939608();
  v17 = sub_29D9392B8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_29D69ABB4(v12, v14, v16 & 1);

  v24 = sub_29D939598();
  result = sub_29D9390D8();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_29D9106FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D915E28(0, &qword_2A17B8010, sub_29D913F14, sub_29D914330);
  v5 = v4 - 8;
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v15 - v7;
  sub_29D913F14(0);
  v10 = v9;
  sub_29D912AB8(&qword_2A17B7F00, sub_29D913F14, MEMORY[0x29EDB86F8]);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, *a1, v10);
  sub_29D914330(0);
  sub_29D914244(&qword_2A17B7F08, sub_29D914330, sub_29D914644, MEMORY[0x29EDB87A8]);
  v12 = *(v5 + 56);
  sub_29D91505C(a1[1], &v8[v12], sub_29D914330);
  v13 = *(v5 + 72);
  sub_29D91505C(a1[2], &v8[v13], sub_29D914330);
  (*(v11 + 32))(a2, v8, v10);
  sub_29D9156C8(&v8[v12], a2 + *(v5 + 56), sub_29D914330);
  return sub_29D9156C8(&v8[v13], a2 + *(v5 + 72), sub_29D914330);
}

uint64_t sub_29D910924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v2 = sub_29D937D68();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D937CB8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = type metadata accessor for BloodPressurePDFChart(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  sub_29D6F18F0(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D933CC8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D937CF8();
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  (*(v15 + 104))(v18, *MEMORY[0x29EDB9CB8], v14);
  v21 = sub_29D933CE8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_29D937CD8();
  sub_29D914FF4(v13, sub_29D6F18F0);
  (*(v15 + 8))(v18, v14);
  sub_29D91505C(v25[0], v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressurePDFChart);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  sub_29D9156C8(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for BloodPressurePDFChart);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D914B40(0);
  sub_29D914244(&qword_2A17B7F58, sub_29D914B40, sub_29D914D90, MEMORY[0x29EDB87B8]);
  return sub_29D937F88();
}

uint64_t sub_29D910D18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v215 = a1;
  v218 = a2;
  sub_29D914BDC(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v207 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D915748(0, &qword_2A17B7FE8, MEMORY[0x29EDB8550], sub_29D914D5C);
  v204 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v203 = &v161 - v7;
  sub_29D914CA8(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v205 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D915748(0, &qword_2A17B2290, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  v189 = v11;
  MEMORY[0x2A1C7C4A8](v11, v12);
  v188 = &v161 - v13;
  sub_29D914CDC(0, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  v197 = v14;
  v196 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v187 = &v161 - v16;
  v17 = sub_29D937EE8();
  MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v184 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_29D937F08();
  v185 = *(v186 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v186, v20);
  v195 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v194 = &v161 - v24;
  v25 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v25 - 8, v26);
  v183 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v28 - 8, v29);
  v180 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_29D933828();
  v177 = *(v179 - 8);
  MEMORY[0x2A1C7C4A8](v179, v31);
  v173 = &v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_29D9338A8();
  v169 = *(v171 - 8);
  MEMORY[0x2A1C7C4A8](v171, v33);
  v168 = &v161 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_29D9338F8();
  v170 = *(v175 - 8);
  v36 = MEMORY[0x2A1C7C4A8](v175, v35);
  v166 = &v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v167 = &v161 - v40;
  MEMORY[0x2A1C7C4A8](v39, v41);
  v172 = &v161 - v42;
  sub_29D915EA8(0, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v178 = v43;
  v176 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v44);
  v174 = &v161 - v45;
  sub_29D6F121C(0);
  v182 = v46;
  v181 = *(v46 - 8);
  v48 = MEMORY[0x2A1C7C4A8](v46, v47);
  v192 = &v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v48, v50);
  v191 = &v161 - v51;
  sub_29D6F1114(0);
  v201 = v52;
  v200 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52, v53);
  v198 = &v161 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D914D5C(0);
  v57 = MEMORY[0x2A1C7C4A8](v55 - 8, v56);
  v202 = &v161 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v57, v59);
  v206 = &v161 - v60;
  v61 = sub_29D937BE8();
  v211 = *(v61 - 8);
  v212 = v61;
  v63 = MEMORY[0x2A1C7C4A8](v61, v62);
  v210 = &v161 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v63, v65);
  v214 = &v161 - v66;
  sub_29D914C24(0, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
  v216 = *(v67 - 8);
  v217 = v67;
  MEMORY[0x2A1C7C4A8](v67, v68);
  v213 = &v161 - v69;
  v70 = sub_29D933CC8();
  v71 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70, v72);
  v74 = &v161 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_29D933CE8();
  v208 = *(v75 - 8);
  v209 = v75;
  MEMORY[0x2A1C7C4A8](v75, v76);
  v78 = &v161 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v79 - 8, v80);
  v82 = &v161 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29D9339F8();
  v84 = *(v83 - 8);
  v86 = MEMORY[0x2A1C7C4A8](v83, v85);
  v190 = &v161 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x2A1C7C4A8](v86, v88);
  v91 = &v161 - v90;
  MEMORY[0x2A1C7C4A8](v89, v92);
  v94 = &v161 - v93;
  sub_29D937FD8();
  if ((*(v84 + 48))(v82, 1, v83) != 1)
  {
    (*(v84 + 32))(v94, v82, v83);
    sub_29D933C88();
    v199 = v91;
    sub_29D933AD8();
    (*(v71 + 104))(v74, *MEMORY[0x29EDB9CF0], v70);
    v164 = v94;
    v163 = sub_29D933CD8();
    (*(v71 + 8))(v74, v70);
    sub_29D90A9D0(0, &qword_2A17B1438, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
    v97 = *(v84 + 72);
    v98 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_29D93F680;
    v193 = v84;
    v100 = *(v84 + 16);
    v101 = v215;
    v100(v99 + v98, v215, v83);
    v102 = type metadata accessor for BloodPressurePDFChart(0);
    v100(v99 + v98 + v97, v101 + *(v102 + 20), v83);
    v103 = v199;
    v104 = sub_29D719CC4(v199, v99);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v165 = v78;
    if (v163 == sub_29D933AF8())
    {
      if (qword_2A17B0DB8 != -1)
      {
        swift_once();
      }

      v219 = xmmword_2A17D0FF0;
      v220 = xmmword_2A17D1000;
      v221 = qword_2A17D1010;
      sub_29D935E88();
      sub_29D937BD8();
      v105 = *(v215 + *(v102 + 36)) == 1;
      v106 = v206;
      v162 = v83;
      if (v105)
      {
        v107 = v190;
        sub_29D933948();
        v108 = sub_29D933978();
        v109 = (*(v193 + 8))(v107, v83);
        v110 = 1;
        if (v108)
        {
          v111 = v166;
          MEMORY[0x29ED634A0](v109);
          v112 = v168;
          sub_29D933898();
          v113 = v167;
          sub_29D933808();
          (*(v169 + 8))(v112, v171);
          v114 = *(v170 + 8);
          v115 = v175;
          v114(v111, v175);
          v116 = v173;
          sub_29D933818();
          sub_29D9337C8();
          (*(v177 + 8))(v116, v179);
          v114(v113, v115);
          sub_29D937E38();
          sub_29D937E08();
          sub_29D912AB8(&qword_2A17B22A8, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
          v117 = v174;
          sub_29D937D08();
          if (qword_2A17B0DA8 != -1)
          {
            swift_once();
          }

          sub_29D6F12CC();
          v118 = v191;
          v119 = v178;
          sub_29D937EC8();
          (*(v176 + 8))(v117, v119);
          sub_29D935E88();
          sub_29D937ED8();
          v120 = v194;
          sub_29D937EF8();
          v121 = v181;
          v122 = *(v181 + 16);
          v123 = v192;
          v124 = v182;
          v122(v192, v118, v182);
          v125 = v185;
          v126 = *(v185 + 16);
          v127 = v186;
          v126(v195, v120, v186);
          v128 = v188;
          v122(v188, v123, v124);
          v129 = v189;
          v130 = *(v189 + 48);
          v131 = v195;
          v126(&v128[v130], v195, v127);
          v132 = v187;
          (*(v121 + 32))(v187, v128, v124);
          (*(v125 + 32))(v132 + *(v129 + 48), &v128[v130], v127);
          v133 = *(v125 + 8);
          v133(v194, v127);
          v134 = *(v121 + 8);
          v134(v191, v124);
          v133(v131, v127);
          v134(v192, v124);
          sub_29D68AB74(v132, v198);
          v110 = 0;
          v106 = v206;
        }

        v135 = v198;
        (*(v196 + 56))(v198, v110, 1, v197);
        sub_29D9157C4(v135, v106, sub_29D6F1114);
        v143 = 0;
      }

      else
      {
        v143 = 1;
      }

      (*(v200 + 56))(v106, v143, 1, v201);
      v145 = v210;
      v144 = v211;
      v146 = v106;
      v147 = *(v211 + 16);
      v148 = v212;
      v147(v210, v214, v212);
      v149 = v202;
      sub_29D915D60(v146, v202, sub_29D914D5C);
      v150 = v203;
      v147(v203, v145, v148);
      sub_29D914244(&qword_2A17B7F78, sub_29D914D5C, sub_29D914FA4, MEMORY[0x29EDB87B8]);
      v151 = v204;
      v152 = *(v204 + 48);
      sub_29D915D60(v149, &v150[v152], sub_29D914D5C);
      v153 = v205;
      (*(v144 + 32))(v205, v150, v148);
      sub_29D9157C4(&v150[v152], v153 + *(v151 + 48), sub_29D914D5C);
      sub_29D915DC8(v146, sub_29D914D5C);
      v154 = *(v144 + 8);
      v154(v214, v148);
      v155 = *(v193 + 8);
      v156 = v162;
      v155(v199, v162);
      (*(v208 + 8))(v165, v209);
      v155(v164, v156);
      sub_29D915DC8(v149, sub_29D914D5C);
      v154(v145, v148);
      v157 = v207;
      sub_29D9157C4(v153, v207, sub_29D914CA8);
      sub_29D914C24(0, &qword_2A17B7FF8, sub_29D914CA8, MEMORY[0x29EDB8550], MEMORY[0x29EDB8648]);
      swift_storeEnumTagMultiPayload();
      v142 = v157;
      v136 = v213;
    }

    else
    {
      v136 = v213;
      if (!v104)
      {
        v221 = 0;
        v219 = 0u;
        v220 = 0u;
        v158 = v210;
        sub_29D937BD8();
        v159 = *(v193 + 8);
        v159(v103, v83);
        (*(v208 + 8))(v165, v209);
        v159(v164, v83);
        (*(v211 + 32))(v136, v158, v212);
        goto LABEL_20;
      }

      v137 = v165;
      v138 = v164;
      if (qword_2A17B0DB8 != -1)
      {
        swift_once();
      }

      v219 = xmmword_2A17D0FF0;
      v220 = xmmword_2A17D1000;
      v221 = qword_2A17D1010;
      sub_29D935E88();
      v139 = v210;
      sub_29D937BD8();
      v140 = *(v193 + 8);
      v140(v103, v83);
      (*(v208 + 8))(v137, v209);
      v140(v138, v83);
      v141 = v207;
      (*(v211 + 32))(v207, v139, v212);
      sub_29D914C24(0, &qword_2A17B7FF8, sub_29D914CA8, MEMORY[0x29EDB8550], MEMORY[0x29EDB8648]);
      swift_storeEnumTagMultiPayload();
      v142 = v141;
    }

    sub_29D9157C4(v142, v136, sub_29D914BDC);
LABEL_20:
    sub_29D914C24(0, &qword_2A17B7FF0, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8648]);
    swift_storeEnumTagMultiPayload();
    v96 = v218;
    sub_29D68AACC(v136, v218);
    v95 = 0;
    return (*(v216 + 56))(v96, v95, 1, v217);
  }

  sub_29D914FF4(v82, sub_29D6A08F8);
  v95 = 1;
  v96 = v218;
  return (*(v216 + 56))(v96, v95, 1, v217);
}

uint64_t sub_29D912514@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D939518();
  sub_29D912568(v2, a1);
}

uint64_t sub_29D912568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  sub_29D9386D8();
  v7 = v32;
  v8 = v32 * 0.5;
  v9 = v33;
  v10 = DWORD1(v33);
  v11 = *(&v33 + 1);
  v12 = v34;

  v13 = sub_29D9398A8();
  v15 = v14;
  *v35 = v32 * 0.5;
  *(v35 + 1) = v32;
  v35[1] = v33;
  *v36 = v34;
  *&v36[16] = a1;
  *&v36[24] = 256;
  v30 = v33;
  *v31 = v34;
  *&v31[10] = *&v36[10];
  v29 = v35[0];
  v39 = *v31;
  v40 = *&v31[16];
  v37 = v35[0];
  v38 = v33;
  *&v41 = v13;
  *(&v41 + 1) = v14;
  v16 = sub_29D937D78();
  (*(*(v16 - 8) + 16))(a2, v4, v16);
  sub_29D914C24(0, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
  v18 = (a2 + *(v17 + 36));
  v19 = *&v31[16];
  v18[2] = *v31;
  v18[3] = v19;
  v18[4] = v41;
  v20 = v38;
  *v18 = v37;
  v18[1] = v20;
  v42[2] = *v31;
  v42[3] = *&v31[16];
  v42[0] = v29;
  v42[1] = v30;
  v43 = v13;
  v44 = v15;
  sub_29D91505C(v35, v22, sub_29D915160);
  sub_29D91505C(&v37, v22, sub_29D9150CC);
  sub_29D914FF4(v42, sub_29D9150CC);
  *v22 = v8;
  *&v22[1] = v7;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = a1;
  v28 = 256;
  return sub_29D914FF4(v22, sub_29D915160);
}

uint64_t sub_29D9127EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D912AB8(&qword_2A17B7D98, type metadata accessor for BloodPressurePDFChart, &unk_29D9557B8);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D9128A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D912AB8(&qword_2A17B7D98, type metadata accessor for BloodPressurePDFChart, &unk_29D9557B8);

  return a4(a1, a2, v6);
}

uint64_t sub_29D912930(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D912AB8(&qword_2A17B3DB8, type metadata accessor for BloodPressurePDFChart, &unk_29D955810);
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D912AB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D912B00()
{
  sub_29D6F17D4(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D939198();
  v4 = sub_29D939168();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_29D9391A8();
  result = sub_29D914FF4(v3, sub_29D6F17D4);
  qword_2A17D0FE0 = v5;
  return result;
}

uint64_t sub_29D912BE8()
{
  sub_29D6F17D4(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D939168();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_29D9391A8();
  result = sub_29D914FF4(v3, sub_29D6F17D4);
  qword_2A17D0FE8 = v5;
  return result;
}

double sub_29D912CC8()
{
  sub_29D9386D8();
  result = *&v1;
  xmmword_2A17D0FF0 = v1;
  xmmword_2A17D1000 = v2;
  qword_2A17D1010 = v3;
  return result;
}

void sub_29D912D24(uint64_t a1)
{
  if (!qword_2A17B7DA0)
  {
    sub_29D913E94(255, &qword_2A17B7DA8, sub_29D912DB8, sub_29D91352C);
    sub_29D9136A4();
    v1 = sub_29D937E68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7DA0);
    }
  }
}

void sub_29D912DB8(uint64_t a1)
{
  if (!qword_2A17B7DB0)
  {
    sub_29D90A99C(255);
    sub_29D9339F8();
    sub_29D912EBC(255);
    sub_29D912AB8(&qword_2A17B7E08, sub_29D90A99C, MEMORY[0x29EDC9A80]);
    sub_29D912AB8(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7DB0);
    }
  }
}

void sub_29D912EBC(uint64_t a1)
{
  if (!qword_2A17B7DB8)
  {
    sub_29D912F48(255);
    sub_29D913038(255);
    sub_29D913274(255);
    sub_29D9133AC(255);
    v1 = sub_29D937BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7DB8);
    }
  }
}

void sub_29D912F48(uint64_t a1)
{
  if (!qword_2A17B7DC0)
  {
    sub_29D916238(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DC0);
    }
  }
}

void sub_29D913038(uint64_t a1)
{
  if (!qword_2A17B7DC8)
  {
    sub_29D91317C(255);
    sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698], MEMORY[0x29EDB8590]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DC8);
    }
  }
}

void sub_29D91317C(uint64_t a1)
{
  if (!qword_2A17B7DD0)
  {
    sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698], MEMORY[0x29EDB8590]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DD0);
    }
  }
}

void sub_29D913274(uint64_t a1)
{
  if (!qword_2A17B7DE0)
  {
    sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700]);
    sub_29D937DF8();
    sub_29D938018();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670], MEMORY[0x29EDB8668]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DE0);
    }
  }
}

void sub_29D9133AC(uint64_t a1)
{
  if (!qword_2A17B7DF8)
  {
    sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700]);
    sub_29D9134CC(255, v1);
    sub_29D938018();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7DF8);
    }
  }
}

void sub_29D9134CC(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B7E00)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E00);
    }
  }
}

void sub_29D913560(uint64_t a1)
{
  if (!qword_2A17B7E18)
  {
    v1 = MEMORY[0x29EDB85E8];
    sub_29D916008(255, &qword_2A17B7E20, &qword_2A17B7E28, MEMORY[0x29EDB85E8]);
    sub_29D9160EC(255, &qword_2A17B7E28, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], v1);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E18);
    }
  }
}

unint64_t sub_29D9136A4()
{
  result = qword_2A17B7E30;
  if (!qword_2A17B7E30)
  {
    sub_29D913E94(255, &qword_2A17B7DA8, sub_29D912DB8, sub_29D91352C);
    sub_29D914244(&qword_2A17B7E38, sub_29D912DB8, sub_29D9137A0, MEMORY[0x29EDB8778]);
    sub_29D913AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7E30);
  }

  return result;
}

unint64_t sub_29D9137A0()
{
  result = qword_2A17B7E40;
  if (!qword_2A17B7E40)
  {
    sub_29D912EBC(255);
    sub_29D916238(255, &qword_2A17B5240, MEMORY[0x29EDB86D8], MEMORY[0x29EDB86D0]);
    sub_29D937F38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D91317C(255);
    sub_29D9160EC(255, &qword_2A17B7DD8, MEMORY[0x29EDB86A0], MEMORY[0x29EDB8698], MEMORY[0x29EDB8590]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D916238(255, &qword_2A17B7DE8, MEMORY[0x29EDB8708], MEMORY[0x29EDB8700]);
    sub_29D937DF8();
    sub_29D938018();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7DF0, MEMORY[0x29EDB8670], MEMORY[0x29EDB8668]);
    swift_getOpaqueTypeConformance2();
    sub_29D9134CC(255, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7E40);
  }

  return result;
}

unint64_t sub_29D913AAC()
{
  result = qword_2A17B7E48;
  if (!qword_2A17B7E48)
  {
    sub_29D91352C(255);
    v1 = MEMORY[0x29EDB85E8];
    sub_29D916008(255, &qword_2A17B7E20, &qword_2A17B7E28, MEMORY[0x29EDB85E8]);
    sub_29D9160EC(255, &qword_2A17B7E28, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], v1);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7E48);
  }

  return result;
}

void sub_29D913C14(uint64_t a1)
{
  if (!qword_2A17B7E50)
  {
    sub_29D912D24(255);
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E50);
    }
  }
}

void sub_29D913D14(uint64_t a1)
{
  if (!qword_2A17B7E60)
  {
    sub_29D913C14(255);
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24(255);
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7E60);
    }
  }
}

void sub_29D913E94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D913F14(uint64_t a1)
{
  if (!qword_2A17B7E70)
  {
    sub_29D914CDC(255, &qword_2A17B7E78, MEMORY[0x29EDB8550], sub_29D913FA8);
    sub_29D914144();
    v1 = sub_29D937FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7E70);
    }
  }
}

void sub_29D914010(uint64_t a1)
{
  if (!qword_2A17B7E90)
  {
    sub_29D915EA8(255, &qword_2A17B7E98, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC488], MEMORY[0x29EDBC558]);
    sub_29D9140A0();
    v1 = sub_29D937D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7E90);
    }
  }
}

unint64_t sub_29D9140A0()
{
  result = qword_2A17B7EA0;
  if (!qword_2A17B7EA0)
  {
    sub_29D915EA8(255, &qword_2A17B7E98, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC488], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7EA0);
  }

  return result;
}

unint64_t sub_29D914144()
{
  result = qword_2A17B7EA8;
  if (!qword_2A17B7EA8)
  {
    sub_29D914CDC(255, &qword_2A17B7E78, MEMORY[0x29EDB8550], sub_29D913FA8);
    sub_29D914244(&qword_2A17B7EB0, sub_29D913FA8, sub_29D9142B4, MEMORY[0x29EDB87B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7EA8);
  }

  return result;
}

uint64_t sub_29D914244(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D914364(uint64_t a1)
{
  if (!qword_2A17B7ED0)
  {
    sub_29D9143F8(255);
    sub_29D912AB8(&qword_2A17B7EF0, sub_29D9143F8, MEMORY[0x29EDB8618]);
    v1 = sub_29D937FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7ED0);
    }
  }
}

void sub_29D9143F8(uint64_t a1)
{
  if (!qword_2A17B7ED8)
  {
    sub_29D91448C(255);
    sub_29D9161B4(&qword_2A17B7EE8, sub_29D91448C, sub_29D7287B8);
    v1 = sub_29D937D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7ED8);
    }
  }
}

void sub_29D91448C(uint64_t a1)
{
  if (!qword_2A17B7EE0)
  {
    sub_29D915EA8(255, &qword_2A17B2FC8, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8D8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7EE0);
    }
  }
}

unint64_t sub_29D914518()
{
  result = qword_2A17B7EF8;
  if (!qword_2A17B7EF8)
  {
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912AB8(&qword_2A17B7F00, sub_29D913F14, MEMORY[0x29EDB86F8]);
    sub_29D914244(&qword_2A17B7F08, sub_29D914330, sub_29D914644, MEMORY[0x29EDB87A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7EF8);
  }

  return result;
}

void sub_29D914678(uint64_t a1)
{
  if (!qword_2A17B7F18)
  {
    sub_29D913D14(255);
    sub_29D6D6634(255);
    sub_29D913C14(255);
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24(255);
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7F18);
    }
  }
}

void sub_29D914848(uint64_t a1)
{
  if (!qword_2A17B7F20)
  {
    sub_29D914678(255);
    sub_29D914A98(255);
    sub_29D913D14(255);
    sub_29D6D6634(255);
    sub_29D913C14(255);
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24(255);
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7F20);
    }
  }
}

void sub_29D914A98(uint64_t a1)
{
  if (!qword_2A17B7F28)
  {
    sub_29D914B40(255);
    sub_29D914244(&qword_2A17B7F58, sub_29D914B40, sub_29D914D90, MEMORY[0x29EDB87B8]);
    v1 = sub_29D937FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7F28);
    }
  }
}

void sub_29D914B40(uint64_t a1)
{
  if (!qword_2A17B7F30)
  {
    sub_29D914C24(255, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7F30);
    }
  }
}

void sub_29D914C24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29D914CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D914D90()
{
  result = qword_2A17B7F60;
  if (!qword_2A17B7F60)
  {
    sub_29D914C24(255, &qword_2A17B7F38, sub_29D914BDC, MEMORY[0x29EDB8550], MEMORY[0x29EDB8650]);
    sub_29D914E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7F60);
  }

  return result;
}

unint64_t sub_29D914E54()
{
  result = qword_2A17B7F68;
  if (!qword_2A17B7F68)
  {
    sub_29D914BDC(255);
    sub_29D914ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7F68);
  }

  return result;
}

unint64_t sub_29D914ED4()
{
  result = qword_2A17B7F70;
  if (!qword_2A17B7F70)
  {
    sub_29D914CA8(255);
    sub_29D914244(&qword_2A17B7F78, sub_29D914D5C, sub_29D914FA4, MEMORY[0x29EDB87B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7F70);
  }

  return result;
}

uint64_t sub_29D914FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D91505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D9150CC(uint64_t a1)
{
  if (!qword_2A17B7F90)
  {
    sub_29D915160(255);
    sub_29D912AB8(&qword_2A17B7FB8, sub_29D915160, MEMORY[0x29EDBC340]);
    v1 = sub_29D9388F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7F90);
    }
  }
}

void sub_29D915160(uint64_t a1)
{
  if (!qword_2A17B7F98)
  {
    sub_29D915210(255);
    sub_29D912AB8(&qword_2A17B7FB0, sub_29D915210, MEMORY[0x29EDBC438]);
    v1 = sub_29D938698();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7F98);
    }
  }
}

void sub_29D915210(uint64_t a1)
{
  if (!qword_2A17B7FA0)
  {
    sub_29D91526C();
    v1 = sub_29D938768();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B7FA0);
    }
  }
}

unint64_t sub_29D91526C()
{
  result = qword_2A17B7FA8;
  if (!qword_2A17B7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7FA8);
  }

  return result;
}

unint64_t sub_29D9152C0()
{
  result = qword_2A17B7FC0;
  if (!qword_2A17B7FC0)
  {
    sub_29D914C24(255, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    sub_29D912AB8(&qword_2A17B7FC8, MEMORY[0x29EDB8630], MEMORY[0x29EDB8628]);
    sub_29D912AB8(&qword_2A17B7FD0, sub_29D9150CC, MEMORY[0x29EDBC608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B7FC0);
  }

  return result;
}

void sub_29D9153E4()
{
  if (!qword_2A17B7FE0)
  {
    sub_29D914848(255);
    sub_29D914C24(255, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    sub_29D914678(255);
    sub_29D914A98(255);
    sub_29D913D14(255);
    sub_29D6D6634(255);
    sub_29D913C14(255);
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24(255);
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D9152C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B7FE0);
    }
  }
}

uint64_t sub_29D9156C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D915748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D9157C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D91585C()
{
  v1 = (type metadata accessor for BloodPressurePDFChart(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D9339F8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  v7 = v1[15];
  v8 = sub_29D9356C8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29D915A08(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for BloodPressurePDFChart(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_29D915AC8()
{
  result = qword_2A17B8008;
  if (!qword_2A17B8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8008);
  }

  return result;
}

uint64_t sub_29D915B2C()
{
  v1 = (type metadata accessor for BloodPressurePDFChart(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_29D9339F8();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);

  v7 = v1[15];
  v8 = sub_29D9356C8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D915CCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BloodPressurePDFChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_29D915D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D915DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D915E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_29D915EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D915EFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29D915F74(uint64_t a1)
{
  if (!qword_2A17B8038)
  {
    sub_29D912F48(255);
    sub_29D913038(255);
    sub_29D913274(255);
    sub_29D9133AC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B8038);
    }
  }
}

void sub_29D916008(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D9160EC(255, a3, MEMORY[0x29EDB86E8], MEMORY[0x29EDB86E0], a4);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D9160EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D916164(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D9161B4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D916238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D9162D0()
{
  result = qword_2A17B8058;
  if (!qword_2A17B8058)
  {
    sub_29D915EFC(255, &qword_2A17B7FD8, sub_29D9153E4, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
    sub_29D914848(255);
    sub_29D914C24(255, &qword_2A17B7F88, MEMORY[0x29EDB8630], sub_29D9150CC, MEMORY[0x29EDBC558]);
    sub_29D914678(255);
    sub_29D914A98(255);
    sub_29D913D14(255);
    sub_29D6D6634(255);
    sub_29D913C14(255);
    sub_29D913E94(255, &qword_2A17B7E68, sub_29D913F14, sub_29D914330);
    sub_29D912D24(255);
    sub_29D915EA8(255, &qword_2A17B1F48, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D912AB8(&qword_2A17B7E58, sub_29D912D24, MEMORY[0x29EDB8690]);
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    sub_29D914518();
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D912AB8(&qword_2A17B7F80, sub_29D914A98, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D9152C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8058);
  }

  return result;
}

uint64_t sub_29D916614()
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  result = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  qword_2A17D1018 = result;
  return result;
}

id sub_29D916668()
{
  result = [objc_opt_self() percentUnit];
  qword_2A17D1020 = result;
  return result;
}

uint64_t sub_29D9166A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v48 = sub_29D935378();
  v45 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48, v4);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29D9375E8();
  v6 = *(v53 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v53, v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v44 - v12;
  v14 = sub_29D937548();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v19(v18, a1, v14);
  v52 = sub_29D937598();
  if (qword_2A17B0DC0 != -1)
  {
    swift_once();
  }

  v44[1] = v2;
  sub_29D9375F8();
  v19(v18, a1, v14);
  (*(v6 + 16))(v10, v13, v53);
  v20 = v52;
  v49 = v6;
  v50 = v13;
  v47 = a1;
  if (v52)
  {
    v59 = sub_29D937588();
    v60 = sub_29D91735C(&qword_2A17B8098, MEMORY[0x29EDC4E80], MEMORY[0x29EDC4E78]);
    sub_29D693F78(v58);
    sub_29D937578();
  }

  else
  {
    v59 = sub_29D937568();
    v60 = sub_29D91735C(&qword_2A17B80A0, MEMORY[0x29EDC4E70], MEMORY[0x29EDC4E68]);
    sub_29D693F78(v58);
    sub_29D937558();
  }

  v21 = sub_29D934F58();
  v22 = *MEMORY[0x29EDC7638];
  v23 = [objc_opt_self() systemFontOfSize_];
  v57 = sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  *&v56 = v23;
  sub_29D6940E0(&v56, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v21;
  sub_29D6922EC(v55, v22, isUniquelyReferenced_nonNull_native);
  v44[0] = v54;
  sub_29D7FF6FC(0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29D944EA0;
  v26 = sub_29D9174AC(v20 & 1);
  v28 = v27;
  v29 = *MEMORY[0x29EDC1F60];
  v30 = *(v45 + 104);
  v31 = v46;
  v32 = v48;
  v30(v46, v29, v48);
  v33 = sub_29D934FC8();
  v34 = sub_29D9352A8();
  v35 = MEMORY[0x29EDC1EE0];
  *(v25 + 56) = v34;
  *(v25 + 64) = v35;
  sub_29D693F78((v25 + 32));
  MEMORY[0x29ED656B0](v26, v28, v31, v33);
  v36 = sub_29D935488();
  v37 = MEMORY[0x29EDC1FC0];
  *(v25 + 96) = v36;
  *(v25 + 104) = v37;
  sub_29D693F78((v25 + 72));
  sub_29D935498();
  sub_29D9175A8(v47, v52 & 1);
  v30(v31, v29, v32);
  v38 = sub_29D936F78();
  v39 = MEMORY[0x29EDC2BE0];
  *(v25 + 136) = v38;
  *(v25 + 144) = v39;
  sub_29D693F78((v25 + 112));
  sub_29D936F68();
  *(v25 + 176) = v36;
  *(v25 + 184) = v37;
  sub_29D693F78((v25 + 152));
  sub_29D935498();
  sub_29D6945AC(v58, v25 + 192);
  v40 = sub_29D9370F8();
  v41 = MEMORY[0x29EDC2C70];
  v42 = v51;
  v51[3] = v40;
  v42[4] = v41;
  sub_29D693F78(v42);
  sub_29D9370D8();
  (*(v49 + 8))(v50, v53);
  return sub_29D69417C(v58);
}

uint64_t sub_29D916CA8()
{
  v1 = OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartModelFactory;
  v2 = sub_29D937628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartTextSupport));
  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartConfiguration));

  v3 = OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_logger;
  v4 = sub_29D937898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFHistogramRenderableFactory(uint64_t a1)
{
  result = qword_2A17B8088;
  if (!qword_2A17B8088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D916E08(uint64_t a1)
{
  result = sub_29D937628();
  if (v2 <= 0x3F)
  {
    result = sub_29D937898();
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

uint64_t sub_29D916EEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_29D9339F8();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29D937898();
  v8 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D937628();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  sub_29D937618();
  v18 = *(v13 + 16);
  v41 = v12;
  v18(v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartModelFactory, v16, v12);
  v19 = qword_2A17B0DC0;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_2A17B0DC8;
  v22 = qword_2A17D1018;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_2A17D1020;
  v24 = sub_29D937648();
  swift_allocObject();
  v25 = v23;
  v26 = sub_29D937638();
  v27 = MEMORY[0x29EDC4FC0];
  v28 = (v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartTextSupport);
  v28[3] = v24;
  v28[4] = v27;
  *v28 = v26;
  sub_29D937608();
  sub_29D6945AC(v50, v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_chartConfiguration);
  v29 = v51;
  v30 = v52;
  v31 = sub_29D693E2C(v50, v51);
  v48 = v29;
  v49 = *(v30 + 8);
  v32 = sub_29D693F78(&v47);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v33 = v46;
  v34 = v43;
  (*(v8 + 16))(v11, v46, v43);
  v35 = sub_29D937698();
  swift_allocObject();
  v36 = sub_29D937688();
  v37 = v42;
  sub_29D9339E8();
  v38 = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  (*(v13 + 8))(v16, v41);
  v48 = v35;
  v49 = MEMORY[0x29EDC4FC8];
  *&v47 = v36;
  type metadata accessor for AFibBurdenPDFHistogramTextSupport(0);
  v39 = swift_allocObject();
  sub_29D679D3C(&v47, v39 + 16);
  (*(v44 + 32))(v39 + OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_now, v37, v45);
  *(v39 + OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_calendarCache) = v38;
  *(v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_generalTextSupport) = v39;
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC5Heart39AFibBurdenPDFHistogramRenderableFactory_logger, v33, v34);
  sub_29D69417C(v50);
  return v3;
}

uint64_t sub_29D91735C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D9173A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_29D69257C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_29D6907F0(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_29D69395C();
        v15 = v17;
      }

      sub_29D918844(v11, v15);
      *v5 = v15;
    }
  }
}

uint64_t sub_29D9174AC(char a1)
{
  v2 = *v1;
  sub_29D937518();
  v5[3] = v2;
  v5[0] = v1;

  v3 = sub_29D937508();
  sub_29D9189F4(v5, sub_29D70C44C);
  return v3;
}

uint64_t sub_29D9175A8(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_29D937678();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(v3 + 2, v3[5]);
  sub_29D9376A8();
  sub_29D918A5C(0, &qword_2A17B80C8, sub_29D91847C, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000029D96F280;
  *(inited + 48) = sub_29D91792C();
  *(inited + 56) = v11;
  v12 = sub_29D73FD5C(inited);
  swift_setDeallocating();
  sub_29D9189F4(inited + 32, sub_29D91847C);
  v19 = v12;
  v13 = sub_29D937658();
  if (v14)
  {
    sub_29D9173A4(v13, v14, 0x4B4355425F58414DLL, 0xEF5453494C5F5445);
  }

  sub_29D937668();
  sub_29D937518();
  v18[3] = v4;
  v18[0] = v3;

  v15 = sub_29D937508();

  (*(v6 + 8))(v9, v5);
  sub_29D9189F4(v18, sub_29D70C44C);
  return v15;
}

void sub_29D9178BC()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  v1 = sub_29D939D28();
  [v0 setDateTemplate_];

  qword_2A17D1028 = v0;
}

uint64_t sub_29D91792C()
{
  v1 = *v0;
  v2 = sub_29D9331D8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D917B58(v6);
  if (qword_2A17B0DD0 != -1)
  {
    swift_once();
  }

  v7 = qword_2A17D1028;
  v8 = sub_29D933148();
  v9 = [v7 stringFromDateInterval_];

  if (v9)
  {
    v10 = sub_29D939D68();
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v11, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = v1;
    v13[1] = 0;
    sub_29D9371F8();

    v10 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v10;
}

uint64_t sub_29D917B58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v58 = *v1;
  v3 = sub_29D933CC8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D918A5C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v49 - v13;
  v60 = sub_29D9339F8();
  v66 = *(v60 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v60, v15);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v63 = &v49 - v20;
  v22 = MEMORY[0x2A1C7C4A8](v19, v21);
  v50 = &v49 - v23;
  MEMORY[0x2A1C7C4A8](v22, v24);
  v61 = &v49 - v25;
  v64 = sub_29D933CE8();
  v62 = *(v64 - 8);
  MEMORY[0x2A1C7C4A8](v64, v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [*(v1 + OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_calendarCache) currentCalendar];
  sub_29D933C08();

  v30 = *MEMORY[0x29EDB9CB8];
  v31 = *(v4 + 104);
  v31(v7, v30, v3);
  v59 = v2;
  v57 = OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_now;
  sub_29D933C38();
  v32 = v66;
  v33 = *(v4 + 8);
  v34 = v3;
  v35 = v14;
  v53 = v7;
  v54 = v34;
  v56 = v4 + 8;
  v52 = v33;
  (v33)(v7);
  v36 = *(v32 + 48);
  v37 = v60;
  if ((v36)(v14, 1) != 1)
  {
    v49 = *(v32 + 32);
    v49(v61, v14, v37);
    v38 = v53;
    v39 = v30;
    v40 = v54;
    v31(v53, v39, v54);
    v41 = v55;
    sub_29D933C38();
    v52(v38, v40);
    v35 = v41;
    if (v36(v41, 1, v37) != 1)
    {
      v43 = v50;
      v49(v50, v41, v37);
      v44 = v66;
      v45 = *(v66 + 16);
      v45(v63, v43, v37);
      v46 = v61;
      v45(v51, v61, v37);
      sub_29D933188();
      v47 = *(v44 + 8);
      v47(v43, v37);
      v47(v46, v37);
      return (*(v62 + 8))(v28, v64);
    }

    v32 = v66;
    (*(v66 + 8))(v61, v37);
  }

  sub_29D6A0D34(v35);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v42, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = v58;
  v67 = 0;
  sub_29D9371F8();

  (*(v32 + 16))(v63, v59 + v57, v37);
  sub_29D933198();
  return (*(v62 + 8))(v28, v64);
}

uint64_t sub_29D918184(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v1 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000038, 0x800000029D96F3C0);
  return 0;
}

uint64_t sub_29D918228(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v1 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD000000000000036, 0x800000029D96F380);
  return 0;
}

uint64_t sub_29D9182CC()
{
  sub_29D69417C((v0 + 16));
  v1 = OBJC_IVAR____TtC5Heart33AFibBurdenPDFHistogramTextSupport_now;
  v2 = sub_29D9339F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFHistogramTextSupport(uint64_t a1)
{
  result = qword_2A17B80B8;
  if (!qword_2A17B80B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9183D4(uint64_t a1)
{
  result = sub_29D9339F8();
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

void sub_29D91847C()
{
  if (!qword_2A17B80D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B80D0);
    }
  }
}

void sub_29D9184D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29D93A8A8() + 1) & ~v5;
    do
    {
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      v11 = sub_29D93AE98();

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

void sub_29D918694(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29D93A8A8() + 1) & ~v5;
    do
    {
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      v10 = sub_29D93AE98();

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

void sub_29D918844(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29D93A8A8() + 1) & ~v5;
    do
    {
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      v9 = sub_29D93AE98();

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

uint64_t sub_29D9189F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D918A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D918ACC(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v2[36] = *v1;
  sub_29D91AE18(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50]);
  v2[37] = swift_task_alloc();
  v3 = sub_29D937548();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_29D91AE18(0, &qword_2A17B8100, MEMORY[0x29EDC4E18]);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v4 = sub_29D9375D8();
  v2[46] = v4;
  v2[47] = *(v4 - 8);
  v2[48] = swift_task_alloc();
  v5 = sub_29D9371A8();
  v2[49] = v5;
  v2[50] = *(v5 - 8);
  v2[51] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D918D2C, 0, 0);
}

uint64_t sub_29D918D2C()
{
  v23 = v0;
  v1 = *MEMORY[0x29EDBA6B0];
  v2 = *(v0[35] + 32);
  v0[52] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v1 healthStore:v2];
  v0[53] = v3;
  sub_29D6B8230();
  sub_29D937278();
  v4 = sub_29D9371B8();
  LODWORD(v2) = [v4 areAllRequirementsSatisfied];

  if (v2)
  {
    (*(v0[50] + 8))(v0[51], v0[49]);
    v0[54] = OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger;

    return MEMORY[0x2A1C73D48](sub_29D9191F0, 0, 0);
  }

  else
  {
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[50];
    v9 = v0[51];
    v10 = v0[49];
    if (v7)
    {
      v11 = v0[36];
      v21 = v0[51];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136446210;
      v22[2] = v11;
      swift_getMetatypeMetadata();
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Not all requirements satisfied for highlight generation, not including in PDF", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);

      (*(v8 + 8))(v21, v10);
    }

    else
    {

      (*(v8 + 8))(v9, v10);
    }

    v17 = v0[34];
    v18 = sub_29D934E78();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_29D9191F0()
{
  v1 = v0[54];
  v2 = v0[52];
  v4 = v0[35];
  v3 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_29D9192B0;
  v5 = swift_continuation_init();
  sub_29D91A748(v5, v4 + v1, v2, v3);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9192B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 440) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_29D91975C;
  }

  else
  {
    *(v2 + 448) = *(v2 + 264);
    v4 = sub_29D9193D4;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D9193D4()
{
  v32 = v0;
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[39];
  (*(v0[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_analysisBlock))(v0[56]);
  sub_29D9375C8();
  v4 = *(v3 + 48);
  v0[57] = v4;
  v0[58] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  sub_29D91AE6C(v1);
  if (v5 == 1 && (v6 = v0[44], v7 = v0[38], sub_29D9375B8(), v8 = v4(v6, 1, v7), sub_29D91AE6C(v6), v8 == 1))
  {
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[56];
    v13 = v0[53];
    v15 = v0[47];
    v14 = v0[48];
    v16 = v0[46];
    if (v11)
    {
      v30 = v0[46];
      v17 = v0[36];
      v29 = v0[48];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      v31[1] = v17;
      *v18 = 136446210;
      swift_getMetatypeMetadata();
      v20 = sub_29D939DA8();
      v22 = sub_29D6C2364(v20, v21, v31);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] No histograms present after analysis, omitting section", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);

      (*(v15 + 8))(v29, v30);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v25 = v0[34];
    v26 = sub_29D934E78();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

    v27 = v0[1];

    return v27();
  }

  else
  {
    v23 = *(v0[35] + 16);
    v24 = swift_task_alloc();
    v0[59] = v24;
    *v24 = v0;
    v24[1] = sub_29D91983C;

    return MEMORY[0x2A1C63768](v23);
  }
}

uint64_t sub_29D91975C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D91983C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v5 = sub_29D91A538;
  }

  else
  {
    *(v4 + 488) = a1;
    v5 = sub_29D919964;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D919964()
{
  v1 = *(*(v0 + 280) + 24);
  v2 = swift_task_alloc();
  *(v0 + 496) = v2;
  *v2 = v0;
  v2[1] = sub_29D919A00;

  return MEMORY[0x2A1C63768](v1);
}

uint64_t sub_29D919A00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {

    v5 = sub_29D91A640;
  }

  else
  {
    *(v4 + 512) = a1;
    v5 = sub_29D919B40;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D919B40(uint64_t a1)
{
  v90 = v1;
  v2 = v1[57];
  v3 = v1[43];
  v4 = v1[38];
  if (v1[64])
  {
    v5 = v1[64];
  }

  else
  {
    v5 = MEMORY[0x29EDCA190];
  }

  sub_29D9375C8();
  if (v2(v3, 1, v4) == 1)
  {
    sub_29D91AE6C(v1[43]);
  }

  else
  {
    (*(v1[39] + 32))(v1[41], v1[43], v1[38]);
    if (sub_29D937538())
    {
      v6 = v1[41];
      sub_29D693E2C((v1[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory), *(v1[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory + 24));
      sub_29D9166A4(v6, v1 + 25);
      v7 = sub_29D68F5B0(0, 1, 1, MEMORY[0x29EDCA190]);
      v87 = v7;
      v9 = v7[2];
      v8 = v7[3];
      if (v9 >= v8 >> 1)
      {
        goto LABEL_45;
      }

      goto LABEL_8;
    }

    v15 = sub_29D937878();
    v16 = sub_29D93A2A8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[41];
    v20 = v1[38];
    v19 = v1[39];
    if (v17)
    {
      v21 = v1[36];
      v22 = swift_slowAlloc();
      v84 = v5;
      v23 = swift_slowAlloc();
      v89 = v23;
      *v22 = 136446210;
      v1[31] = v21;
      swift_getMetatypeMetadata();
      v24 = sub_29D939DA8();
      v26 = sub_29D6C2364(v24, v25, &v89);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s] Not including time of day histogram as it does not contain enough information", v22, 0xCu);
      sub_29D69417C(v23);
      v27 = v23;
      v5 = v84;
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v22, -1, -1);

      (*(v19 + 8))(v18, v20);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }
  }

  v7 = MEMORY[0x29EDCA190];
  while (1)
  {
    v28 = v1[57];
    v9 = v1[48];
    v29 = v1[42];
    v30 = v1[38];
    sub_29D9375B8();
    if (v28(v29, 1, v30) == 1)
    {
      sub_29D91AE6C(v1[42]);
      v31 = v7[2];
      if (!v31)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }

    (*(v1[39] + 32))(v1[40], v1[42], v1[38]);
    if (sub_29D937538())
    {
      break;
    }

    v9 = sub_29D937878();
    v43 = sub_29D93A2A8();
    v44 = os_log_type_enabled(v9, v43);
    v46 = v1[39];
    v45 = v1[40];
    v47 = v1[38];
    if (v44)
    {
      v85 = v7;
      v48 = v5;
      v49 = v1[36];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v89 = v51;
      *v50 = 136446210;
      v1[30] = v49;
      swift_getMetatypeMetadata();
      v52 = sub_29D939DA8();
      v82 = v45;
      v54 = sub_29D6C2364(v52, v53, &v89);
      v5 = v48;
      v7 = v85;

      *(v50 + 4) = v54;
      _os_log_impl(&dword_29D677000, v9, v43, "[%{public}s] Not including day of week histogram as it does not contain enough information", v50, 0xCu);
      sub_29D69417C(v51);
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);

      (*(v46 + 8))(v82, v47);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
    }

    v31 = v7[2];
    if (!v31)
    {
      goto LABEL_36;
    }

LABEL_22:
    if (v31 != 2)
    {
      goto LABEL_33;
    }

    v40 = sub_29D9351A8();
    v41 = MEMORY[0x29EDC1E40];
    v1[13] = v40;
    v1[14] = v41;
    sub_29D693F78(v1 + 10);
    sub_29D935198();
    v8 = v7[2];
    if (v8)
    {
      sub_29D6959E8(v1 + 5, (v1 + 15));
      v9 = v7[2];
      if (v9)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v7;
        if (!isUniquelyReferenced_nonNull_native || v9 >= v7[3] >> 1)
        {
          v87 = sub_29D68F5B0(isUniquelyReferenced_nonNull_native, &v9->isa + 1, 1, v7);
        }

        sub_29D91AEE4(1uLL, 1, 1, (v1 + 15));
LABEL_33:
        v55 = v1[56];
        v56 = v1[53];
        v58 = v1[47];
        v57 = v1[48];
        v59 = v1[46];
        v60 = v1[37];
        v61 = v1[34];
        sub_29D934DE8();
        v62 = sub_29D934DF8();
        (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
        sub_29D934E68();

        (*(v58 + 8))(v57, v59);
        v63 = sub_29D934E78();
        (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_45:
    v7 = sub_29D68F5B0((v8 > 1), &v9->isa + 1, 1, v7);
    v87 = v7;
LABEL_8:
    (*(v1[39] + 8))(v1[41], v1[38]);
    v10 = v1[28];
    v11 = v1[29];
    v12 = sub_29D693DDC((v1 + 25), v10);
    v13 = *(v10 - 8);
    v14 = swift_task_alloc();
    (*(v13 + 16))(v14, v12, v10);
    sub_29D693D44(v9, v14, &v87, v10, v11);
    sub_29D69417C(v1 + 25);
  }

  v32 = v1[40];
  sub_29D693E2C((v1[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory), *(v1[35] + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory + 24));
  sub_29D9166A4(v32, v1 + 20);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v87 = v7;
  if ((v33 & 1) == 0)
  {
    v7 = sub_29D68F5B0(0, v7[2] + 1, 1, v7);
    v87 = v7;
  }

  v9 = v7[2];
  v34 = v7[3];
  if (v9 >= v34 >> 1)
  {
    v7 = sub_29D68F5B0((v34 > 1), &v9->isa + 1, 1, v7);
    v87 = v7;
  }

  (*(v1[39] + 8))(v1[40], v1[38]);
  v35 = v1[23];
  v36 = v1[24];
  v37 = sub_29D693DDC((v1 + 20), v35);
  v38 = *(v35 - 8);
  v39 = swift_task_alloc();
  (*(v38 + 16))(v39, v37, v35);
  sub_29D693D44(v9, v39, &v87, v35, v36);
  sub_29D69417C(v1 + 20);

  v31 = v7[2];
  if (v31)
  {
    goto LABEL_22;
  }

LABEL_36:

  v64 = sub_29D937878();
  v65 = sub_29D93A2A8();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v1[56];
  v68 = v1[53];
  v70 = v1[47];
  v69 = v1[48];
  v71 = v1[46];
  if (v66)
  {
    v86 = v1[46];
    v72 = v1[36];
    v83 = v1[48];
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v88 = v74;
    v89 = v72;
    *v73 = 136446210;
    swift_getMetatypeMetadata();
    v75 = sub_29D939DA8();
    v77 = sub_29D6C2364(v75, v76, &v88);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_29D677000, v64, v65, "[%{public}s] Both histograms excluded, excluding entire page", v73, 0xCu);
    sub_29D69417C(v74);
    MEMORY[0x29ED6BE30](v74, -1, -1);
    MEMORY[0x29ED6BE30](v73, -1, -1);

    (*(v70 + 8))(v83, v86);
  }

  else
  {

    (*(v70 + 8))(v69, v71);
  }

  v78 = v1[34];
  v79 = sub_29D934E78();
  (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
LABEL_40:

  v80 = v1[1];

  return v80();
}

uint64_t sub_29D91A538()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D91A640()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_29D91A748(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_29D937898();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v9 + 32))(v13 + v12, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v14 = objc_allocWithZone(MEMORY[0x29EDC51E8]);
  aBlock[4] = sub_29D91B0C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D7A09D0;
  aBlock[3] = &unk_2A244E820;
  v15 = _Block_copy(aBlock);
  v16 = [v14 initWithResultsHandler_];
  _Block_release(v15);

  [a3 executeQuery_];
}

uint64_t sub_29D91A93C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(a4 + 64) + 40) = a2;
    v10 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = sub_29D937878();
    v13 = sub_29D93A298();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      v22[1] = a6;
      *v14 = 136446210;
      swift_getMetatypeMetadata();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s] No error but did not receive results as expected", v14, 0xCu);
      sub_29D69417C(v15);
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    sub_29D91B194();
    v19 = swift_allocError();
    *v20 = 1;
    sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    swift_allocError();
    *v21 = v19;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_29D91AB88()
{

  v1 = OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger;
  v2 = sub_29D937898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_29D69417C((v0 + OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFHistogramSectionProvider(uint64_t a1)
{
  result = qword_2A17B80F0;
  if (!qword_2A17B80F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D91ACB4(uint64_t a1)
{
  result = sub_29D937898();
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

uint64_t sub_29D91AD7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D6AC948;

  return sub_29D918ACC(a1);
}

void sub_29D91AE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D91AE6C(uint64_t a1)
{
  sub_29D91AE18(0, &qword_2A17B8100, MEMORY[0x29EDC4E18]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D91AEE4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_29D6B7370(0, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 40 * a3;
      v15 = (v9 + 32 + 40 * a2);
      if (result != v15 || result >= v15 + 40 * v14)
      {
        result = memmove(result, v15, 40 * v14);
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_10:
  if (a3 >= 1)
  {
    result = sub_29D6945AC(a4, v10);
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return sub_29D91B000(a4);
}

uint64_t sub_29D91B000(uint64_t a1)
{
  sub_29D91B05C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D91B05C(uint64_t a1)
{
  if (!qword_2A17B8108)
  {
    sub_29D6B7370(255, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
    v1 = sub_29D93AAA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8108);
    }
  }
}

uint64_t sub_29D91B0C4(uint64_t a1, void *a2, void *a3)
{
  v7 = *(sub_29D937898() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D91A93C(a1, a2, a3, v9, v3 + v8, v10);
}

uint64_t sub_29D91B17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D91B194()
{
  result = qword_2A17B8110;
  if (!qword_2A17B8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8110);
  }

  return result;
}

unint64_t sub_29D91B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_29D935DA8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_29D91B344()
{
  result = qword_2A17B8118;
  if (!qword_2A17B8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8118);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFChartSleepQuery(uint64_t a1)
{
  result = qword_2A17B8120;
  if (!qword_2A17B8120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D91B40C(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D91B4A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  [*(a4 + *(type metadata accessor for AFibBurdenPDFChartSleepQuery(0) + 20)) stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    sub_29D935E88();

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_29D8F3B8C(MEMORY[0x29EDCA190]);
      sub_29D7A0EEC();
      sub_29D933578();
      v9 = v12;
    }

    sub_29D6A0CD0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_29D91B5E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return sub_29D91B744(a1);
}

double sub_29D91B68C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_29D69567C(0, &unk_2A17B8130, 0x29EDBADD0);
    v5 = sub_29D939F38();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

uint64_t sub_29D91B744(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for AFibBurdenPDFChartSleepQuery(0);
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v2[27] = *(v5 + 64);
  v2[28] = swift_task_alloc();
  v6 = sub_29D9339F8();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D91B8F4, 0, 0);
}

uint64_t sub_29D91B8F4(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[29];
  v4 = v1[30];
  sub_29D9331A8();
  v5 = sub_29D933958();
  v6 = *(v4 + 8);
  v1[35] = v6;
  v1[36] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_29D933BB8();
  v8 = [v5 hk:v7 morningIndexWithCalendar:?];

  sub_29D933178();
  v9 = sub_29D933958();
  v6(v2, v3);
  v10 = sub_29D933BB8();
  v11 = [v9 hk:v10 morningIndexWithCalendar:?];

  v15 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = __OFSUB__(v15, v8);
  v17 = v15 - v8;
  if (v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (v16)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2A1C73D48](v12, v13, v14);
  }

  v1[16] = v8;
  v1[17] = v18;
  v12 = sub_29D91BA68;
  v13 = 0;
  v14 = 0;

  return MEMORY[0x2A1C73D48](v12, v13, v14);
}

uint64_t sub_29D91BA68()
{
  v1 = v0[17];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v18 = v0[16];
  v19 = v0[25];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D91BCE4;
  v6 = swift_continuation_init();
  sub_29D91C248(v5, v2);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_29D91C378(v2, v9 + v7, type metadata accessor for AFibBurdenPDFChartSleepQuery);
  *(v9 + v8) = v6;
  v10 = objc_allocWithZone(MEMORY[0x29EDBADE0]);
  v0[14] = sub_29D91C2AC;
  v0[15] = v9;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D91B68C;
  v0[13] = &unk_2A244E910;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithMorningIndexRange:v18 ascending:v1 limit:1 options:0 resultsHandler:{10, v11}];
  _Block_release(v11);

  v13 = objc_allocWithZone(MEMORY[0x29EDBADD8]);
  v14 = sub_29D939D28();
  v15 = [v13 initWithIdentifier:v14 mode:1];

  [v12 setCacheSettings_];
  v16 = sub_29D933BB8();
  [v12 setCalendarOverrides_];

  [*(v5 + *(v19 + 20)) executeQuery_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D91BCE4(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    *(*v1 + 296) = *(*v1 + 144);

    return MEMORY[0x2A1C73D48](sub_29D91BE9C, 0, 0);
  }
}

uint64_t sub_29D91BE9C()
{
  v1 = v0[37];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[37]; v2; i = v0[37])
  {
    v4 = 0;
    v33 = v0[21];
    v34 = v0[22];
    v5 = v1 & 0xC000000000000001;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    v6 = i + 32;
    v29 = (v0[30] + 16);
    v7 = MEMORY[0x29EDCA190];
    v8 = &selRef_initWithResultsHandler_;
    v31 = v1;
    v32 = v5;
    v30 = i + 32;
    while (1)
    {
      if (v5)
      {
        v9 = MEMORY[0x29ED6AE30](v4, v0[37]);
      }

      else
      {
        if (v4 >= *(v1 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v4);
      }

      v10 = v9;
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v9 v8[280]];
      if (v12 <= 2.22044605e-16)
      {
      }

      else
      {
        v38 = v0[35];
        v13 = v8;
        v15 = v0[33];
        v14 = v0[34];
        v16 = v0[31];
        v37 = v0[32];
        v40 = v7;
        v17 = v0[29];
        v18 = v0[23];
        v39 = v0[24];
        v19 = [objc_opt_self() noonAlignedXValueForChartPointInfoProvider_];
        sub_29D933998();

        v20 = *v29;
        (*v29)(v15, v14, v17);
        [v10 v13 + 3487];
        v22 = v21;
        v20(v37, v15, v17);
        v20(v16, v15, v17);
        sub_29D933188();

        v38(v15, v17);
        v23 = v17;
        v7 = v40;
        v38(v14, v23);
        *(v18 + *(v33 + 20)) = v22;
        *(v18 + *(v33 + 24)) = MEMORY[0x29EDCA1A0];
        sub_29D91C378(v18, v39, type metadata accessor for AFibBurdenPDFChartPoint);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_29D68FC3C(0, v40[2] + 1, 1, v40);
        }

        v25 = v7[2];
        v24 = v7[3];
        v2 = v35;
        v0 = v36;
        v5 = v32;
        v6 = v30;
        v8 = &selRef_initWithResultsHandler_;
        v11 = v4 + 1;
        if (v25 >= v24 >> 1)
        {
          v7 = sub_29D68FC3C((v24 > 1), v25 + 1, 1, v7);
        }

        v26 = v36[24];
        v7[2] = v25 + 1;
        sub_29D91C378(v26, v7 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25, type metadata accessor for AFibBurdenPDFChartPoint);
        v1 = v31;
      }

      ++v4;
      if (v11 == v2)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v2 = sub_29D93A928();
  }

  v7 = MEMORY[0x29EDCA190];
LABEL_22:

  v27 = v0[1];

  return v27(v7);
}

uint64_t sub_29D91C248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartSleepQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D91C2AC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for AFibBurdenPDFChartSleepQuery(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D91B4A0(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_29D91C360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D91C378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_29D91C3E0(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingFactorsViewController(0));
      return sub_29D77BD18();
    }

    else
    {
      v11 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingSetupCompleteViewController());
      return sub_29D88848C();
    }
  }

  else if (a1)
  {
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    sub_29D936878();
    swift_allocObject();

    v7 = v6;
    v8 = sub_29D936868();
    v9 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingConfirmDetailsViewController(0));
    v10 = sub_29D91C54C(v5, v8, v9);

    return v10;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for CardioFitnessOnboardingStartViewController());
    return sub_29D69F538();
  }
}

uint64_t sub_29D91C4E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D91C54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = sub_29D936878();
  v16[4] = MEMORY[0x29EDC28E8];
  v16[0] = a2;
  *(a3 + qword_2A17B3478 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + qword_2A17B3480) = 0;
  sub_29D6945AC(v16, v15);
  type metadata accessor for ConfirmDetailsModel(0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_mostRecentDetails;
  v8 = sub_29D935AB8();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_visiblePicker) = 4;
  sub_29D679D3C(v15, v6 + OBJC_IVAR____TtC5Heart19ConfirmDetailsModel_valueFormatter);
  type metadata accessor for ConfirmDetailsDataSource(0);
  swift_allocObject();

  *(a3 + qword_2A17B3488) = sub_29D82396C(a1, v6);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_29D9334A8();

  v12 = [v10 bundleForClass_];
  sub_29D9334A8();

  v13 = sub_29D9365F8();

  sub_29D69417C(v16);
  *(*(v13 + qword_2A17B3488) + qword_2A17B5CF0 + 8) = &off_2A2442E00;
  swift_unknownObjectWeakAssign();
  return v13;
}

id sub_29D91C85C()
{
  v1 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ElectrocardiogramUpdateTileView(0)) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*sub_29D91C8F4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_29D91C85C();
  return sub_29D91C93C;
}

void sub_29D91C93C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  *(v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView) = v2;
}

uint64_t sub_29D91C954()
{
  v1 = v0;
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937858();
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_29D677000, v7, v8, "ElectrocardiogramUpdateViewController loaded", v9, 2u);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  updated = type metadata accessor for ElectrocardiogramUpdateViewController(0);
  v14.receiver = v1;
  v14.super_class = updated;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  sub_29D91CBC4();
  v11 = sub_29D91C85C();
  v12 = sub_29D934B88();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29D935E58();
}

void sub_29D91CB28(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29D91CF84();
  }
}

void sub_29D91CBC4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_29D91C85C();
  [v2 addSubview_];

  sub_29D6A0C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D943A10;
  v5 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView;
  v6 = [*&v0[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView] topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v10;
  v11 = [*&v0[v5] bottomAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v15;
  v16 = [*&v0[v5] leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v20;
  v21 = [*&v0[v5] trailingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v4 + 56) = v26;
  sub_29D6D37A4();
  v27 = sub_29D939F18();

  [v24 activateConstraints_];
}

void sub_29D91CF84()
{
  v1 = v0;
  v2 = sub_29D933CE8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 parentViewController];
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
    swift_beginAccess();
    sub_29D718208(&v1[v9], v34);
    v10 = v35;
    if (v35)
    {
      v11 = sub_29D693E2C(v34, v35);
      v12 = *(v10 - 8);
      MEMORY[0x2A1C7C4A8](v11, v11);
      v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v14);
      v15 = sub_29D936588();
      (*(v12 + 8))(v14, v10);
      sub_29D933C88();
      v16 = objc_allocWithZone(MEMORY[0x29EDC4658]);
      v17 = sub_29D933BB8();
      v18 = [v16 initWithCalendar_];

      (*(v3 + 8))(v6, v2);
      LOBYTE(v32) = 1;
      v19 = [objc_allocWithZone(MEMORY[0x29EDC52B8]) initWithOnboardingType:1 isFirstTimeOnboarding:0 healthStore:v15 dateCache:v18 provenance:3 delegate:v1 isSampleInteractive:v32];

      sub_29D69417C(v34);
      v20 = *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager];
      *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager] = v19;
      v21 = v19;

      if (v21 && (v22 = [v21 onboardingNavigationController], v21, v22))
      {
        [v22 setModalInPresentation_];
        [v8 presentViewController:v22 animated:1 completion:0];
      }

      else
      {
        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v23 = sub_29D937898();
        sub_29D69C6C0(v23, qword_2A1A2C008);
        v24 = v1;
        v25 = sub_29D937878();
        v26 = sub_29D93A298();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v34[0] = v28;
          *v27 = 136446466;
          v33[1] = swift_getObjectType();
          sub_29D91E98C();
          v29 = sub_29D939DA8();
          v31 = sub_29D6C2364(v29, v30, v34);

          *(v27 + 4) = v31;
          *(v27 + 12) = 2082;
          *(v27 + 14) = sub_29D6C2364(0xD000000000000021, 0x800000029D96F660, v34);
          _os_log_impl(&dword_29D677000, v25, v26, "[%{public}s.%{public}s] On-boarding navigation controller not initialized", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x29ED6BE30](v28, -1, -1);
          MEMORY[0x29ED6BE30](v27, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_29D91D3FC()
{
  v1 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v0 + v1, v11);
  if (v12)
  {
    v3 = objc_opt_self();
    v4 = v12;
    v5 = sub_29D693E2C(v11, v12);
    v6 = *(v4 - 8);
    MEMORY[0x2A1C7C4A8](v5, v5);
    v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_29D936588();
    (*(v6 + 8))(v8, v4);
    [v3 markElectrocardiogramUpdateAsViewed_];

    return sub_29D69417C(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D91D560()
{
  v1 = v0;
  v37[1] = swift_getObjectType();
  sub_29D697F20(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v41 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D935DD8();
  v42 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935DC8();
  v40 = [objc_opt_self() electrocardiogramType];
  sub_29D93A388();
  v14 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  result = sub_29D718208(v0 + v14, v48);
  v16 = v49;
  if (!v49)
  {
    __break(1u);
    goto LABEL_6;
  }

  v43 = v10;
  v38 = v7;
  v39 = v6;
  v17 = sub_29D693E2C(v48, v49);
  v37[2] = v37;
  v18 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v17, v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  sub_29D936588();
  (*(v18 + 8))(v20, v16);
  result = sub_29D718208(v1 + v14, v46);
  v21 = v47;
  if (!v47)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v22 = sub_29D693E2C(v46, v47);
  v23 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v22, v22);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25);
  v26 = sub_29D936588();
  (*(v23 + 8))(v25, v21);
  v27 = [v26 profileIdentifier];

  v28 = sub_29D9350C8();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  MEMORY[0x29ED658D0](v27, v5);

  sub_29D91E9DC(v5, sub_29D697F20);
  sub_29D69417C(v46);
  result = sub_29D718208(v1 + v14, v44);
  v29 = v45;
  if (v45)
  {
    v30 = sub_29D693E2C(v44, v45);
    v31 = *(v29 - 8);
    MEMORY[0x2A1C7C4A8](v30, v30);
    v33 = v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    sub_29D9365A8();
    (*(v31 + 8))(v33, v29);
    v34 = v41;
    sub_29D936328();
    sub_29D69417C(v44);
    sub_29D69417C(v48);
    v35 = v40;
    v36 = sub_29D935DB8();

    (*(v38 + 8))(v34, v39);
    (*(v42 + 8))(v13, v43);
    return v36;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_29D91DDC4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager] = 0;
  *&v3[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView] = 0;
  v7 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_detail;
  v8 = *MEMORY[0x29EDC2198];
  v9 = sub_29D935878();
  (*(*(v9 - 8) + 104))(&v3[v7], v8, v9);
  if (a2)
  {
    v10 = sub_29D939D28();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for ElectrocardiogramUpdateViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_29D91DF3C(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_onboardingManager] = 0;
  *&v1[OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView] = 0;
  v4 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_detail;
  v5 = *MEMORY[0x29EDC2198];
  v6 = sub_29D935878();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ElectrocardiogramUpdateViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_29D91E050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramUpdateViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ElectrocardiogramUpdateViewController(uint64_t a1)
{
  result = qword_2A17B8160;
  if (!qword_2A17B8160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D91E18C(uint64_t a1)
{
  result = sub_29D935878();
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

uint64_t sub_29D91E234@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  return sub_29D718208(v1 + v3, a1);
}

uint64_t sub_29D91E28C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_context;
  swift_beginAccess();
  sub_29D91E8C0(a1, v1 + v3);
  return swift_endAccess();
}

id sub_29D91E380@<X0>(void *a1@<X8>)
{
  result = sub_29D91C85C();
  *a1 = result;
  return result;
}

void sub_29D91E3AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView);
  *(*v1 + OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController____lazy_storage___tileView) = v2;
}

void (*sub_29D91E3C8(id **a1))(void *)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D91C8F4(v2);
  return sub_29D91EA3C;
}

uint64_t sub_29D91E43C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C62C70](a1, WitnessTable);
}

uint64_t sub_29D91E4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart37ElectrocardiogramUpdateViewController_detail;
  v5 = sub_29D935878();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D91E520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63350](a1, WitnessTable);
}

uint64_t sub_29D91E574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C63358](a1, a2, a3, WitnessTable);
}

void (*sub_29D91E5E0(uint64_t *a1, uint64_t a2))(void *)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_29D936D08();
  return sub_29D91E67C;
}

uint64_t sub_29D91E87C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ElectrocardiogramUpdateViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D91E8C0(uint64_t a1, uint64_t a2)
{
  sub_29D91E924(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29D91E924(uint64_t a1)
{
  if (!qword_2A17B8190)
  {
    sub_29D6B7370(255, &qword_2A17B2D88, MEMORY[0x29EDC2808]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8190);
    }
  }
}

unint64_t sub_29D91E98C()
{
  result = qword_2A17B81A0;
  if (!qword_2A17B81A0)
  {
    type metadata accessor for ElectrocardiogramUpdateViewController(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B81A0);
  }

  return result;
}

uint64_t sub_29D91E9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BloodPressureClassificationGuidelinesViewController(uint64_t a1)
{
  result = qword_2A17B81E0;
  if (!qword_2A17B81E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29D91EAF8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v31[1] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D939D18();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v31 - v16;
  *(v3 + qword_2A17B81C0) = a1;
  *(v3 + qword_2A17B81C8) = a2;
  v18 = objc_allocWithZone(MEMORY[0x29EDBAA48]);
  v32 = a2;
  v19 = [v18 initWithHealthStore_];
  *(v3 + qword_2A17B81D0) = v19;
  v20 = v19;
  v21 = sub_29D9205E0(a1, v20);

  *(v3 + qword_2A17B81D8) = v21;
  sub_29D9368A8();

  v22 = sub_29D935588();

  sub_29D935F88();
  sub_29D85F948(0, &qword_2A17B1088, &qword_2A17B1090, MEMORY[0x29EDC2040], 0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = sub_29D920A70(&qword_2A17B81F8, sub_29D920AB8, MEMORY[0x29EDC1E90]);
  *(v23 + 32) = v22;
  *(v23 + 40) = v24;
  v31[0] = v22;

  sub_29D935FA8();

  v25 = sub_29D936D88();
  sub_29D939D08();
  if (qword_2A17B0D88 != -1)
  {
    swift_once();
  }

  v26 = qword_2A17D0F70;
  (*(v10 + 16))(v14, v17, v9);
  sub_29D935E88();
  v27 = v26;
  sub_29D933A98();
  sub_29D939D98();
  (*(v10 + 8))(v17, v9);
  v28 = sub_29D939D28();

  [v25 setTitle_];

  v29 = *&v25[qword_2A17B81D0];
  [v29 startObserving_];

  return v25;
}

uint64_t sub_29D91EF04()
{
  sub_29D936DB8();
  sub_29D93A348();
  sub_29D936748();
  return sub_29D93A348();
}

uint64_t sub_29D91EFB0()
{
}

id sub_29D91F000()
{
  [*&v0[qword_2A17B81D0] stopObserving_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureClassificationGuidelinesViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29D91F054(char *a1)
{
  v1 = *&a1[qword_2A17B81D0];
  v2 = a1;
  [v1 stopObserving_];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BloodPressureClassificationGuidelinesViewController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29D91F0BC(uint64_t a1)
{
}

uint64_t sub_29D91F118(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D935D08();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D935CC8();
  sub_29D935CD8();
  if (!a1)
  {
    sub_29D939A88();
    v9 = v8;
    v10 = sub_29D935CE8();
    *v11 = v9;
    v10(v16, 0);
    v12 = sub_29D935CE8();
    *(v13 + 16) = 0;
    v12(v16, 0);
  }

  v14 = sub_29D935CF8();
  (*(v4 + 8))(v7, v3);
  return v14;
}

uint64_t sub_29D91F2CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_29D939968();
  v22 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D939998();
  v12 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v16 = sub_29D93A468();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_29D91FB1C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A244EA00;
  v18 = _Block_copy(aBlock);

  v19 = a3;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D920A70(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D920568(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v15, v11, v18);
  _Block_release(v18);

  (*(v22 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v21);
}

void sub_29D91F5D0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*&Strong[qword_2A17B81C0] == a2)
    {
    }

    else
    {
      *&Strong[qword_2A17B81C0] = a2;
      v7 = sub_29D91FB28(a2, a3);

      sub_29D775BD0(v7);

      sub_29D935B48();

      v8 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesPreference_];
      if (v8)
      {
        v9 = v8;
        sub_29D939D68();
      }

      v16 = sub_29D936768();
      v17 = sub_29D920A70(&qword_2A17B81F0, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A8]);
      sub_29D693F78(v15);
      sub_29D936758();
      v10 = v16;
      v11 = v17;
      v12 = sub_29D693E2C(v15, v16);
      v14[3] = v10;
      v14[4] = *(v11 + 8);
      v13 = sub_29D693F78(v14);
      (*(*(v10 - 8) + 16))(v13, v12, v10);
      sub_29D935B78();

      sub_29D69417C(v14);
      sub_29D69417C(v15);
    }
  }
}

void sub_29D91F7EC(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a3;
  v7[4] = ObjectType;
  v11[4] = sub_29D91FAF8;
  v11[5] = v7;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1107296256;
  v11[2] = sub_29D83C0B4;
  v11[3] = &unk_2A244E9B0;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = a1;

  [v9 preferredClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v8);
}

void sub_29D91F910()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D91FA44(void *a1)
{
  v1 = a1;
  sub_29D91F910();
}

void sub_29D91FA8C(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

uint64_t sub_29D91FB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_29D91FB28(uint64_t a1, void *a2)
{
  v83 = a1;
  v84 = a2;
  v82 = sub_29D936BE8();
  v2 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82, v3);
  v81 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D920568(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v80 = &v57 - v8;
  v79 = sub_29D935C78();
  v9 = *(v79 - 8);
  MEMORY[0x2A1C7C4A8](v79, v10);
  v78 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D920568(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v5);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v66 = &v57 - v14;
  v65 = sub_29D9378F8();
  v15 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65, v16);
  v64 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29D9378C8();
  v18 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63, v19);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D937B88();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D93A638();
  v27 = *(v26 + 16);
  if (v27)
  {
    v75 = 0x800000029D96F730;
    v74 = (v22 + 16);
    v61 = *MEMORY[0x29EDC7768];
    v60 = (v18 + 104);
    v59 = (v15 + 8);
    v58 = (v18 + 8);
    v73 = *MEMORY[0x29EDC22C0];
    v72 = (v9 + 104);
    v71 = *MEMORY[0x29EDC2A38];
    v70 = (v2 + 104);
    v69 = (v22 + 8);
    v28 = MEMORY[0x29EDCA190];
    v29 = 32;
    v57 = xmmword_29D93DDB0;
    v77 = v25;
    v76 = v26;
    v68 = v21;
    do
    {
      v36 = *(v26 + v29);
      if (v36 != 2)
      {
        v89 = sub_29D935DA8();
        v90 = sub_29D920A70(&qword_2A17B54E8, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
        v85 = sub_29D693F78(&v88);
        sub_29D937B38();
        v37 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesName:v36 abbreviated:0];
        v86 = v28;
        if (v37)
        {
          v38 = v37;
          sub_29D939D68();
        }

        sub_29D937B48();
        v91 = 0xD000000000000026;
        v92 = v75;
        v87 = v36;
        v39 = sub_29D93AD38();
        MEMORY[0x29ED6A240](v39);

        v40 = v92;
        v93 = v21;
        v94 = MEMORY[0x29EDC7800];
        v41 = sub_29D693F78(&v91);
        (*v74)(v41, v25, v21);
        if (v36 == v83)
        {
          sub_29D920568(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
          sub_29D937948();
          *(swift_allocObject() + 16) = v57;
          v42 = *v60;
          v67 = v40;
          v43 = v62;
          v44 = v63;
          v42(v62, v61, v63);
          v45 = sub_29D9378D8();
          (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
          v46 = v64;
          sub_29D9378E8();
          sub_29D937938();
          (*v59)(v46, v65);
          (*v58)(v43, v44);
        }

        v47 = swift_allocObject();
        v48 = v84;
        *(v47 + 16) = v84;
        *(v47 + 24) = v36;
        v50 = v78;
        v49 = v79;
        *v78 = 1;
        (*v72)(v50, v73, v49);
        v51 = sub_29D9379E8();
        (*(*(v51 - 8) + 56))(v80, 1, 1, v51);
        (*v70)(v81, v71, v82);
        v52 = v48;
        sub_29D935D98();
        v25 = v77;
        v21 = v68;
        (*v69)(v77, v68);
        sub_29D679D3C(&v88, &v91);
        v28 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_29D68FAC0(0, v28[2] + 1, 1, v28);
          v95 = v28;
        }

        v55 = v28[2];
        v54 = v28[3];
        if (v55 >= v54 >> 1)
        {
          v28 = sub_29D68FAC0((v54 > 1), v55 + 1, 1, v28);
          v95 = v28;
        }

        v30 = v93;
        v31 = v94;
        v32 = sub_29D693DDC(&v91, v93);
        MEMORY[0x2A1C7C4A8](v32, v32);
        v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34);
        sub_29D693D44(v55, v34, &v95, v30, v31);
        sub_29D69417C(&v91);
        v26 = v76;
      }

      v29 += 8;
      --v27;
    }

    while (v27);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v28;
}

void sub_29D920568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9205E0(uint64_t a1, void *a2)
{
  v4 = sub_29D933A58();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9359D8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v37 - v15;
  v17 = sub_29D91FB28(a1, a2);
  sub_29D775BD0(v17);

  sub_29D933A48();
  sub_29D933A18();
  v18 = *(v5 + 8);
  v39 = v4;
  v19 = v4;
  v20 = v18;
  v18(v8, v19);
  sub_29D9359C8();
  sub_29D85F948(0, &qword_2A17B1138, &qword_2A17B1140, MEMORY[0x29EDC18F8], 1);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D93DDB0;
  v22 = [objc_opt_self() localizedStringForBloodPressureClassificationGuidelinesPreference_];
  if (v22)
  {
    v23 = v22;
    sub_29D939D68();
  }

  v41 = sub_29D936768();
  v42 = sub_29D920A70(&qword_2A17B81F0, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A8]);
  sub_29D693F78(v40);
  sub_29D936758();
  v24 = v41;
  v25 = v42;
  v26 = sub_29D693E2C(v40, v41);
  *(v21 + 56) = v24;
  *(v21 + 64) = *(v25 + 8);
  v27 = sub_29D693F78((v21 + 32));
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  sub_29D69417C(v40);
  sub_29D933A48();
  sub_29D933A18();
  v20(v8, v39);
  v28 = v38;
  sub_29D9359C8();
  sub_29D920568(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v29 = *(v10 + 72);
  v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29D93F680;
  v32 = v31 + v30;
  v33 = *(v10 + 16);
  v33(v32, v16, v9);
  v33(v32 + v29, v28, v9);
  sub_29D9368A8();
  swift_allocObject();
  v34 = sub_29D936888();
  v35 = *(v10 + 8);
  v35(v28, v9);
  v35(v16, v9);
  return v34;
}

uint64_t sub_29D920A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D920AB8(uint64_t a1)
{
  if (!qword_2A17B8200)
  {
    sub_29D9368A8();
    v1 = sub_29D935208();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8200);
    }
  }
}

uint64_t type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController(uint64_t a1)
{
  result = qword_2A17B8210;
  if (!qword_2A17B8210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D920BB8(void *a1, void *a2)
{
  *(v2 + qword_2A17B8208 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v4 = qword_2A1A2C038;
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:{v4, 0xE000000000000000}];

  sub_29D6945AC(a1, v14);
  sub_29D6945AC(a2, v13);
  sub_29D6AA400();
  v7 = *MEMORY[0x29EDBA870];
  MEMORY[0x29ED6A6C0]();
  v8 = sub_29D936C38();
  v9 = MEMORY[0x29ED6A6C0](v7);
  sub_29D693E2C(a2, a2[3]);
  sub_29D93A1F8();
  v10 = sub_29D934318();

  if (v10 == 2 || (v10 & 1) != 0)
  {
    sub_29D69417C(a1);
  }

  else
  {
    sub_29D693E2C(a2, a2[3]);
    sub_29D934328();

    sub_29D69417C(a1);
  }

  sub_29D69417C(a2);
  return v8;
}

void sub_29D920EAC()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  sub_29D921094();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  sub_29D88BBC8(&unk_2A243FBD0);
  v3 = sub_29D939F18();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    sub_29D6AA360(aDonebutton);

    v5 = [v1 navigationItem];
    [v5 setHidesBackButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D92104C(void *a1)
{
  v1 = a1;
  sub_29D920EAC();
}

void sub_29D921094()
{
  v1 = v0;
  v2 = [v0 headerView];
  sub_29D88BBC8(&unk_2A243FAF0);
  v3 = sub_29D939F18();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_29D6AA360(aTitle_14);
  [v2 setTitleAccessibilityIdentifier_];

  v5 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243FB60);
  v6 = sub_29D939F18();

  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (!v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_29D6AA360(aDescription_3);
  [v5 setDetailTextAccessibilityIdentifier_];
}

void sub_29D92121C(char *a1)
{
  v2 = &a1[qword_2A17B8208];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D9212DC(char *a1)
{
  v2 = &a1[qword_2A17B8208];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

id sub_29D9213DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingSetupCompleteViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D921468(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B8208 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t type metadata accessor for AFibFeaturesOnboardingViewController(uint64_t a1)
{
  result = qword_2A17B8228;
  if (!qword_2A17B8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D92154C()
{
  *(v0 + qword_2A17B8220 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1A2C038;
  v2 = sub_29D939D28();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:{v1, 0xE000000000000000}];

  if (!v3)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  sub_29D9334A8();
  return sub_29D936CD8();
}

id sub_29D92178C()
{
  ObjectType = swift_getObjectType();
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AFibFeaturesOnboardingViewController(0);
  objc_msgSendSuper2(&v23, sel_viewDidLoad);

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_29D939D28();
  [v3 setAccessibilityIdentifier_];

  v5 = [v0 headerView];
  v6 = sub_29D939D28();
  [v5 setTitleAccessibilityIdentifier_];

  v7 = [v0 headerView];
  v8 = sub_29D939D28();
  [v7 setDetailTextAccessibilityIdentifier_];

  if (qword_2A17B0D48 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    sub_29D9334A8();
    v9 = sub_29D939D28();

    v10 = sub_29D939D28();
    v11 = [v0 hxui:v9 addPrimaryFooterButtonWithTitle:0 bold:v10 accessibilityIdentifier:0xE000000000000000];

    sub_29D9334A8();
    v12 = sub_29D939D28();

    v13 = sub_29D939D28();
    v14 = [v0 hxui:v12 addSecondaryFooterButtonWithTitle:0 bold:v13 accessibilityIdentifier:0xE000000000000000];

    sub_29D6A0C58();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D941B10;
    *(inited + 32) = v11;
    v0 = (inited + 32);
    *(inited + 40) = v14;
    v16 = v11;
    v17 = v14;
    if ((inited & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x29ED6AE30](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v18 = v16;
    }

    v19 = v18;
    v22 = v18;
    sub_29D921B78(&v22, ObjectType);

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v20 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
  }

  v20 = MEMORY[0x29ED6AE30](1, inited);
LABEL_9:
  v21 = v20;
  v22 = v20;
  sub_29D921B78(&v22, ObjectType);

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_29D921B78(uint64_t a1, uint64_t a2)
{
  sub_29D9221AC(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v19 - v9;
  v11 = sub_29D93A788();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D93A7A8();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29D922204(v10);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v16, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = a2;
    v19[1] = 0;
    sub_29D9371E8();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v18 = [objc_opt_self() tintColor];
    sub_29D93A758();
    (*(v12 + 16))(v7, v15, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_29D93A7B8();
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_29D921E34(uint64_t a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0x4C64694477656976, 0xED0000292864616FLL);
  MEMORY[0x29ED6A240](0xD00000000000003ELL, 0x800000029D96FAD0);
  return 0;
}

void sub_29D921F04(void *a1)
{
  v1 = a1;
  sub_29D92178C();
}

void sub_29D921F4C(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = off_2A244BA68[0];
    type metadata accessor for AFibFeaturesPromotionTileActionHandler(0);
    v3 = a1;
    v2();
    sub_29D936978();
  }
}

void sub_29D922018(char *a1, uint64_t a2, char a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_29D89BF48(a3);
    sub_29D936978();
  }
}

void sub_29D9220A4(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_29D89CD58();
    sub_29D936978();
  }
}

id sub_29D92215C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibFeaturesOnboardingViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9221AC(uint64_t a1)
{
  if (!qword_2A17B8238)
  {
    sub_29D93A788();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8238);
    }
  }
}

uint64_t sub_29D922204(uint64_t a1)
{
  sub_29D9221AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D92228C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeartAdvertisableFeatureSourceProvider();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

char *sub_29D9222C4(void *a1, void *a2, uint64_t a3, char *a4)
{
  v16[3] = type metadata accessor for AdvertisableFeatureHeartSettingsProvider(0);
  v16[4] = &off_2A24444F8;
  v16[0] = a3;
  v8 = OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_identifier;
  v9 = *MEMORY[0x29EDC1798];
  v10 = sub_29D934718();
  (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *&a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_healthStore] = a1;
  *&a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue] = a2;
  sub_29D6945AC(v16, &a4[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider]);
  v15.receiver = a4;
  v15.super_class = type metadata accessor for BradycardiaAdvertisableFeatureSource(0);
  v11 = a1;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [*(*sub_29D693E2C(&v13[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v13[OBJC:sel_addHeartRhythmAvailabilityObserver_ IVAR:v13 :? :? :? TtC5Heart36BradycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  sub_29D69417C(v16);
  return v13;
}

char *sub_29D922428(void *a1, void *a2, uint64_t a3, char *a4)
{
  v16[3] = type metadata accessor for AdvertisableFeatureHeartSettingsProvider(0);
  v16[4] = &off_2A24444F8;
  v16[0] = a3;
  v8 = OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_identifier;
  v9 = *MEMORY[0x29EDC17A0];
  v10 = sub_29D934718();
  (*(*(v10 - 8) + 104))(&a4[v8], v9, v10);
  *&a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_healthStore] = a1;
  *&a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_queue] = a2;
  sub_29D6945AC(v16, &a4[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider]);
  v15.receiver = a4;
  v15.super_class = type metadata accessor for TachycardiaAdvertisableFeatureSource(0);
  v11 = a1;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [*(*sub_29D693E2C(&v13[OBJC_IVAR____TtC5Heart36TachycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v13[OBJC:sel_addHeartRhythmAvailabilityObserver_ IVAR:v13 :? :? :? TtC5Heart36TachycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  sub_29D69417C(v16);
  return v13;
}

uint64_t sub_29D92258C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void *, void *, void, id))
{
  v24 = a2;
  v25 = a3;
  v4 = sub_29D934A68();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D934A78();
  v10 = sub_29D934AB8();
  v11 = sub_29D934A78();
  sub_29D934A58();
  v12 = type metadata accessor for AdvertisableFeatureHeartSettingsProvider(0);
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MEMORY[0x29EDBABF8]) initWithHealthStore_];

  *(v13 + 16) = v14;
  (*(v5 + 32))(v13 + OBJC_IVAR____TtC5Heart40AdvertisableFeatureHeartSettingsProvider_activeDeviceSource, v8, v4);
  v27 = v12;
  v28 = &off_2A24444F8;
  v26[0] = v13;
  v15 = objc_allocWithZone(v24(0));
  v16 = sub_29D693DDC(v26, v27);
  MEMORY[0x2A1C7C4A8](v16, v16);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v25(v9, v10, *v18, v15);

  v21 = sub_29D934AC8();
  (*(*(v21 - 8) + 8))(a1, v21);
  sub_29D69417C(v26);
  return v20;
}

uint64_t sub_29D922808(uint64_t a1)
{
  v28 = a1;
  v30 = sub_29D934738();
  v2 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69BECC(0);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934AC8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v11 + 16);
  v29(v14, a1, v10);
  sub_29D934A88();
  sub_29D693E2C(v31, v32);
  sub_29D934AD8();
  v15 = sub_29D934AA8();
  sub_29D934A98();
  (*(v11 + 8))(v14, v10);
  v16 = type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider(0);
  v17 = swift_allocObject();
  sub_29D73B8E4(v9, v17 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_currentCountry);
  *(v17 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_includeFeaturesMadeAvailableByBuddy) = v15 & 1;
  (*(v2 + 32))(v17 + OBJC_IVAR____TtC5Heart46CardioFitnessAdvertisableFeatureSourceProvider_presentationLocation, v5, v30);
  sub_29D69417C(v31);
  sub_29D922C3C(0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29D943EA0;
  sub_29D934638();
  v19 = v28;
  v20 = v29;
  v29(v14, v28, v10);
  v32 = v16;
  v33 = sub_29D922CF4(&qword_2A17B8250, type metadata accessor for CardioFitnessAdvertisableFeatureSourceProvider, &unk_29D93FC08);
  v31[0] = v17;

  v21 = sub_29D934628();
  v22 = MEMORY[0x29EDC16C8];
  *(v18 + 32) = v21;
  *(v18 + 40) = v22;
  v20(v14, v19, v10);
  v23 = sub_29D92258C(v14, type metadata accessor for BradycardiaAdvertisableFeatureSource, sub_29D9222C4);
  v24 = sub_29D922CF4(&qword_2A17B3A98, type metadata accessor for BradycardiaAdvertisableFeatureSource, &unk_29D945A08);
  *(v18 + 48) = v23;
  *(v18 + 56) = v24;
  v20(v14, v19, v10);
  v25 = sub_29D92258C(v14, type metadata accessor for TachycardiaAdvertisableFeatureSource, sub_29D922428);
  v26 = sub_29D922CF4(&qword_2A17B4228, type metadata accessor for TachycardiaAdvertisableFeatureSource, &unk_29D946FD8);
  *(v18 + 64) = v25;
  *(v18 + 72) = v26;

  return v18;
}

void sub_29D922C3C(uint64_t a1)
{
  if (!qword_2A17B8240)
  {
    sub_29D922C94();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8240);
    }
  }
}

unint64_t sub_29D922C94()
{
  result = qword_2A17B8248;
  if (!qword_2A17B8248)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B8248);
  }

  return result;
}

uint64_t sub_29D922CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D922D3C(id *a1)
{
  v1 = [*a1 startDate];
  sub_29D933998();
}

void sub_29D922D9C(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x29ED6AE30](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (v4)
      {

        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = a1;
    i = sub_29D93A928();
  }
}

uint64_t sub_29D922EC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  sub_29D929118(0, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
  v37 = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29D93DDB0;
  v5 = sub_29D935488();
  v6 = MEMORY[0x29EDC1FC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  sub_29D693F78((v4 + 32));
  sub_29D935498();
  v49 = v4;
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 48);
  v40 = *(v2 + 56);
  v10 = *(v2 + 72);
  v11 = *(v2 + 88);
  v39 = *(v2 + 80);
  v38 = v11;
  v12 = *(v2 + 96);
  v50 = v12;
  v13 = sub_29D9288B0(v7, v8);
  if (*(v13 + 2))
  {
    v36 = v10;
    v35 = v9;
    v15 = MEMORY[0x2A1C7C4A8](v13, v14);
    v47 = sub_29D9370F8();
    v16 = MEMORY[0x29EDC2C70];
    v48 = MEMORY[0x29EDC2C70];
    sub_29D693F78(&v46);
    sub_29D9370E8();
    sub_29D923400(v15, v12 & 1, &v46, v45);

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93F680;
    sub_29D6945AC(v45, inited + 32);
    *(inited + 96) = v5;
    *(inited + 104) = MEMORY[0x29EDC1FC0];
    sub_29D693F78((inited + 72));
    sub_29D935498();
    sub_29D88C0D8(inited);
    v9 = v35;
    sub_29D69417C(v45);
    sub_29D69417C(&v46);
    v18 = v16;
  }

  else
  {

    v18 = MEMORY[0x29EDC2C70];
  }

  v19 = sub_29D9288B0(v9, v40);
  if (*(v19 + 2))
  {
    v21 = MEMORY[0x2A1C7C4A8](v19, v20);
    v47 = sub_29D9370F8();
    v48 = v18;
    sub_29D693F78(&v46);
    sub_29D9370E8();
    sub_29D923400(v21, v50, &v46, v45);

    sub_29D6945AC(v45, v42);
    v22 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_29D68F5B0(0, v22[2] + 1, 1, v22);
      v49 = v22;
    }

    v24 = v22[2];
    v23 = v22[3];
    if (v24 >= v23 >> 1)
    {
      v22 = sub_29D68F5B0((v23 > 1), v24 + 1, 1, v22);
      v49 = v22;
    }

    sub_29D69417C(v45);
    v25 = v43;
    v26 = v44;
    v27 = sub_29D693DDC(v42, v43);
    MEMORY[0x2A1C7C4A8](v27, v27);
    v29 = &v34 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_29D693D44(v24, v29, &v49, v25, v26);
    sub_29D69417C(v42);
    v49 = v22;
    sub_29D69417C(&v46);
  }

  else
  {
  }

  v31 = sub_29D9370F8();
  v32 = v41;
  v41[3] = v31;
  v32[4] = v18;
  sub_29D693F78(v32);
  return sub_29D9370B8();
}

void sub_29D923358(void *a1)
{
  v2 = *(sub_29D9339F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_29D8DF6F0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_29D925058(v5);
  *a1 = v3;
}

uint64_t sub_29D923400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v127 = a3;
  v5 = a2;
  v132 = a4;
  v158[5] = *MEMORY[0x29EDCA608];
  v7 = sub_29D934FF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v128 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v137 = &v122 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v136 = &v122 - v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v122 - v19;
  v145 = v5;
  v130 = v4;
  sub_29D9243CC(v5);
  sub_29D929288(0, &qword_2A17B1350, MEMORY[0x29EDC1CC8], MEMORY[0x29EDC9E90]);
  v21 = *(v8 + 80);
  v22 = (v21 + 32) & ~v21;
  v144 = *(v8 + 72);
  v125 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29D93DDB0;
  v24 = *(v8 + 16);
  v143 = v22;
  v129 = v20;
  v123 = v24;
  v24((v23 + v22), v20, v7);
  v25 = *(a1 + 16);
  v131 = v8;
  v126 = v9;
  v124 = v8 + 16;
  if (v25)
  {
    v139 = (v8 + 32);
    v26 = (a1 + 48);
    v142 = *MEMORY[0x29EDC7638];
    v141 = *MEMORY[0x29EDC7640];
    v140 = *MEMORY[0x29EDC7650];
    v135 = xmmword_29D946CA0;
    v134 = xmmword_29D943EA0;
    v133 = v7;
    do
    {
      v146 = v26;
      v147 = v25;
      v30 = *(v26 - 2);
      v29 = *(v26 - 1);
      v31 = *v26;
      v32 = v26[1];
      v34 = v26[2];
      v33 = v26[3];
      if (v145)
      {
        v138 = v23;
        v35 = v26[4];
        v36 = v26[5];
        sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        v37 = swift_allocObject();
        *(v37 + 16) = v135;
        *(v37 + 32) = v30;
        *(v37 + 40) = v29;
        *(v37 + 48) = v31;
        *(v37 + 56) = v32;
        *(v37 + 64) = v34;
        *(v37 + 72) = v33;
        *(v37 + 80) = v35;
        *(v37 + 88) = v36;
        v23 = v138;
        v38 = v142;
        v148[0] = v142;
        v39 = objc_opt_self();
        sub_29D935E88();
        sub_29D935E88();
        sub_29D935E88();
        sub_29D935E88();
        v40 = v38;
        v41 = [v39 systemFontOfSize_];
        v42 = sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
        v148[1] = v41;
        v43 = v141;
        v148[4] = v42;
        v149[0] = v141;
        v44 = objc_opt_self();
        v45 = v43;
        v46 = [v44 darkTextColor];
        v47 = sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
        v149[1] = v46;
        v48 = v140;
        v149[4] = v47;
        v150[0] = v140;
        v49 = sub_29D69567C(0, &qword_2A17B1038, 0x29EDC7688);
        v50 = v48;
        v51 = sub_29D93A5B8();
        v150[4] = v49;
        v150[1] = v51;
        sub_29D6941F0(0);
        v52 = sub_29D93ABA8();

        sub_29D929478(v148, &v151, sub_29D929034);
        v53 = v151;
        v54 = sub_29D6959E0();
        if (v55)
        {
          goto LABEL_24;
        }

        v56 = v52 + 8;
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v54;
        *(v52[6] + 8 * v54) = v53;
        sub_29D6940E0(v152, (v52[7] + 32 * v54));
        v57 = v52[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_27;
        }

        v52[2] = v59;
        sub_29D929478(v149, &v151, sub_29D929034);
        v60 = v151;
        v61 = sub_29D6959E0();
        if (v62)
        {
          goto LABEL_24;
        }

        *(v56 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        *(v52[6] + 8 * v61) = v60;
        sub_29D6940E0(v152, (v52[7] + 32 * v61));
        v63 = v52[2];
        v58 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v58)
        {
          goto LABEL_27;
        }

        v52[2] = v64;
        sub_29D929478(v150, &v151, sub_29D929034);
        v65 = v151;
        v66 = sub_29D6959E0();
        if (v67)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }

        *(v56 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
        *(v52[6] + 8 * v66) = v65;
        sub_29D6940E0(v152, (v52[7] + 32 * v66));
        v68 = v52[2];
        v58 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v58)
        {
          goto LABEL_27;
        }

        v52[2] = v69;

        sub_29D929034(0);
        swift_arrayDestroy();
        v70 = v136;
        sub_29D935008();
        v72 = *(v23 + 16);
        v71 = *(v23 + 24);
        v73 = v72 + 1;
        if (v72 < v71 >> 1)
        {
          v28 = v70;
          v7 = v133;
          v27 = v147;
          goto LABEL_5;
        }

        v7 = v133;
      }

      else
      {
        sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
        v74 = swift_allocObject();
        *(v74 + 16) = v134;
        *(v74 + 32) = v30;
        *(v74 + 40) = v29;
        *(v74 + 48) = v31;
        *(v74 + 56) = v32;
        *(v74 + 64) = v34;
        *(v74 + 72) = v33;
        v75 = v142;
        v156[0] = v142;
        v76 = objc_opt_self();
        sub_29D935E88();
        sub_29D935E88();
        sub_29D935E88();
        v77 = v75;
        v78 = [v76 systemFontOfSize_];
        v79 = sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
        v156[1] = v78;
        v80 = v141;
        v156[4] = v79;
        v157[0] = v141;
        v81 = objc_opt_self();
        v82 = v80;
        v83 = [v81 darkTextColor];
        v84 = sub_29D69567C(0, &qword_2A17B2CE8, 0x29EDC7A00);
        v157[1] = v83;
        v85 = v140;
        v157[4] = v84;
        v158[0] = v140;
        v86 = sub_29D69567C(0, &qword_2A17B1038, 0x29EDC7688);
        v87 = v85;
        v88 = sub_29D93A5B8();
        v158[4] = v86;
        v158[1] = v88;
        sub_29D6941F0(0);
        v89 = sub_29D93ABA8();

        sub_29D929478(v156, &v151, sub_29D929034);
        v90 = v151;
        v91 = sub_29D6959E0();
        if (v92)
        {
          goto LABEL_25;
        }

        v93 = v89 + 8;
        *(v89 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v91;
        *(v89[6] + 8 * v91) = v90;
        sub_29D6940E0(v152, (v89[7] + 32 * v91));
        v94 = v89[2];
        v58 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        v89[2] = v95;
        sub_29D929478(v157, &v151, sub_29D929034);
        v96 = v151;
        v97 = sub_29D6959E0();
        if (v98)
        {
          goto LABEL_25;
        }

        *(v93 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
        *(v89[6] + 8 * v97) = v96;
        sub_29D6940E0(v152, (v89[7] + 32 * v97));
        v99 = v89[2];
        v58 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        v89[2] = v100;
        sub_29D929478(v158, &v151, sub_29D929034);
        v101 = v151;
        v102 = sub_29D6959E0();
        if (v103)
        {
          goto LABEL_25;
        }

        *(v93 + ((v102 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v102;
        *(v89[6] + 8 * v102) = v101;
        sub_29D6940E0(v152, (v89[7] + 32 * v102));
        v104 = v89[2];
        v58 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v58)
        {
          goto LABEL_26;
        }

        v89[2] = v105;

        sub_29D929034(0);
        swift_arrayDestroy();
        v70 = v137;
        sub_29D935008();
        v72 = *(v23 + 16);
        v71 = *(v23 + 24);
        v73 = v72 + 1;
        if (v72 < v71 >> 1)
        {
          v28 = v70;
          v27 = v147;
          goto LABEL_5;
        }
      }

      v27 = v147;
      v23 = sub_29D690304((v71 > 1), v73, 1, v23);
      v28 = v70;
LABEL_5:
      *(v23 + 16) = v73;
      (*v139)(v23 + v143 + v72 * v144, v28, v7);
      v26 = v146 + 8;
      v25 = v27 - 1;
    }

    while (v25);
  }

  v106 = v125;
  v107 = sub_29D77648C(v23);

  v108 = v127;
  sub_29D6945AC(v127, v155);
  sub_29D6945AC(v108, v154);
  v109 = v128;
  v110 = v129;
  v123(v128, v129, v7);
  v111 = (v106 + 168) & ~v106;
  v112 = swift_allocObject();
  v113 = v130;
  v114 = v130[5];
  *(v112 + 5) = v130[4];
  *(v112 + 6) = v114;
  *(v112 + 7) = v113[6];
  v115 = v113[1];
  *(v112 + 1) = *v113;
  *(v112 + 2) = v115;
  v116 = v113[3];
  *(v112 + 3) = v113[2];
  *(v112 + 4) = v116;
  sub_29D6959E8(v154, (v112 + 128));
  v117 = v131;
  (*(v131 + 32))(&v112[v111], v109, v7);
  sub_29D693FE0(v155, v153);
  v118 = type metadata accessor for BloodPressurePDFHistoryTable();
  swift_allocObject();
  sub_29D929180(v113, &v151);
  v119 = sub_29D68BD88(v107, v153, sub_29D9290A0, v112, 5.0, 10.0);
  sub_29D9291B8(v155);
  v120 = v132;
  v132[3] = v118;
  v120[4] = sub_29D929240(&qword_2A17B1050, type metadata accessor for BloodPressurePDFHistoryTable, &unk_29D93E408);
  *v120 = v119;
  return (*(v117 + 8))(v110, v7);
}

uint64_t sub_29D923F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = sub_29D935378();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D929288(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = v24 - v10;
  v12 = sub_29D933AA8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D929118(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
  v13 = swift_allocObject();
  v14 = MEMORY[0x29EDC9BA8];
  *(v13 + 16) = xmmword_29D93DDB0;
  v15 = MEMORY[0x29EDC9C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v16 = sub_29D9334A8();
  v18 = v17;
  if (*(v13 + 16))
  {
    v19 = sub_29D939D78();
    v21 = v20;

    v18 = v21;
  }

  else
  {
    v19 = v16;
  }

  sub_29D9293B8(v11, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
  v22 = sub_29D934F68();
  (*(v4 + 104))(v7, *MEMORY[0x29EDC1F60], v3);
  return MEMORY[0x29ED67390](v19, v18, v7, v22);
}

uint64_t sub_29D92423C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v4 = sub_29D934FF8();
  v12[3] = v4;
  v12[4] = MEMORY[0x29EDC1CC0];
  v5 = sub_29D693F78(v12);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  v6 = sub_29D936418();
  sub_29D69417C(v12);
  sub_29D9292EC(0, &qword_2A17B1390, &qword_2A17B1398, &unk_2A17B13A0, MEMORY[0x29EDC2160]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D93DDB0;
  *(v7 + 32) = v6;
  v8 = MEMORY[0x29ED66800]();

  sub_29D693FE0(v13, v12);
  v9 = type metadata accessor for BloodPressurePDFHistoryTable();
  swift_allocObject();
  v10 = sub_29D68BD88(v8, v12, 0, 0, 5.0, 10.0);
  sub_29D9291B8(v13);
  a2[3] = v9;
  result = sub_29D929240(&qword_2A17B1050, type metadata accessor for BloodPressurePDFHistoryTable, &unk_29D93E408);
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t sub_29D9243CC(char a1)
{
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v15 = sub_29D939DC8();
  v16 = v1;

  sub_29D9334A8();
  v2 = sub_29D939DC8();
  v4 = v3;

  sub_29D9334A8();
  v5 = sub_29D939DC8();
  v7 = v6;

  sub_29D9334A8();
  v8 = sub_29D939DC8();
  v10 = v9;

  if (a1)
  {
    sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29D946CA0;
    *(v11 + 32) = v15;
    *(v11 + 40) = v16;
    *(v11 + 48) = v2;
    *(v11 + 56) = v4;
    *(v11 + 64) = v5;
    *(v11 + 72) = v7;
    *(v11 + 80) = v8;
    *(v11 + 88) = v10;
  }

  else
  {

    sub_29D929540(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D943EA0;
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    *(v12 + 48) = v2;
    *(v12 + 56) = v4;
    *(v12 + 64) = v5;
    *(v12 + 72) = v7;
  }

  sub_29D934FD8();

  return sub_29D935008();
}

uint64_t sub_29D924680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_29D934DA8();
  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_29D929118(0, &qword_2A17B1018, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9E90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_29D944710;
    v9 = sub_29D935488();
    v10 = MEMORY[0x29EDC1FC0];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    sub_29D693F78((v8 + 32));
    sub_29D935498();
    v11 = sub_29D936F88();
    v12 = MEMORY[0x29EDC2C00];
    *(v8 + 96) = v11;
    *(v8 + 104) = v12;
    v13 = sub_29D693F78((v8 + 72));
    sub_29D923F30(v7, v13);
    *(v8 + 136) = v9;
    *(v8 + 144) = v10;
    sub_29D693F78((v8 + 112));
    sub_29D935498();
    sub_29D6945AC(a3, v8 + 152);
    sub_29D92423C(a4, (v8 + 192));
    *(v8 + 256) = v9;
    *(v8 + 264) = v10;
    sub_29D693F78((v8 + 232));
    sub_29D935498();
    return v8;
  }

  return result;
}

uint64_t sub_29D9247C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v7 = sub_29D935378();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935E88();
  v12 = sub_29D934FC8();
  v13 = *MEMORY[0x29EDC1F60];
  v14 = *(v8 + 104);
  v14(v11, v13, v7);
  v15 = sub_29D936FD8();
  v25 = v15;
  v26 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v24);
  MEMORY[0x29ED673E0](a1, a2, v11, v12);
  v16 = sub_29D935808();
  sub_29D69417C(v24);
  sub_29D935E88();
  v17 = sub_29D934F68();
  v14(v11, v13, v7);
  v25 = v15;
  v26 = MEMORY[0x29EDC2C40];
  sub_29D693F78(v24);
  MEMORY[0x29ED673E0](v23, a4, v11, v17);
  v18 = sub_29D935808();
  sub_29D69417C(v24);
  v25 = sub_29D935488();
  v26 = MEMORY[0x29EDC1FC0];
  sub_29D693F78(v24);
  sub_29D935498();
  v19 = sub_29D935808();
  sub_29D69417C(v24);
  sub_29D9292EC(0, &qword_2A17B1000, &qword_2A17B1008, &qword_2A17B1010, MEMORY[0x29EDC1DD8]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D943EA0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v18;
  *(v20 + 48) = v19;
  v21 = MEMORY[0x29ED65BE0]();

  return v21;
}

uint64_t sub_29D924A20(uint64_t *a1, void **a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v28 - v11;
  v13 = *a2;
  v14 = [v13 startDate];
  sub_29D933998();

  sub_29D933AD8();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_29D690A14(v12), (v18 & 1) != 0))
  {
    v30 = *(*(v16 + 56) + 8 * v17);
    v19 = v13;
    v20 = sub_29D935E88();
    MEMORY[0x29ED6A300](v20);
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();
    v21 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    sub_29D692704(v21, v12, isUniquelyReferenced_nonNull_native);
    v23 = v29;
  }

  else
  {
    sub_29D929540(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29D940030;
    *(v24 + 32) = v13;
    v25 = v13;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a1;
    sub_29D692704(v24, v12, v26);
    v23 = v30;
  }

  *a1 = v23;
  return (v15)(v12, v4);
}

BOOL sub_29D924CA0(void **a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933CC8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v8 + 104))(v11, *MEMORY[0x29EDB9CC8], v7);
  v13 = [v12 startDate];
  sub_29D933998();

  v14 = sub_29D933CD8();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  return v14 < 12;
}

BOOL sub_29D924E7C(void **a1)
{
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933CC8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v8 + 104))(v11, *MEMORY[0x29EDB9CC8], v7);
  v13 = [v12 startDate];
  sub_29D933998();

  v14 = sub_29D933CD8();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  return v14 > 11;
}

void sub_29D925058(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29D93AD28();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29D9339F8();
        v6 = sub_29D939F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_29D9339F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_29D925408(v8, v9, a1, v4);
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
    sub_29D925184(0, v2, 1, a1);
  }
}

uint64_t sub_29D925184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_29D9339F8();
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v43 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v47 = &v33 - v14;
  result = MEMORY[0x2A1C7C4A8](v13, v15);
  v46 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = *(v17 + 16);
    v45 = v17 + 16;
    v20 = *(v17 + 72);
    v21 = (v17 + 8);
    v22 = v19 + v20 * (a3 - 1);
    v40 = -v20;
    v41 = (v17 + 32);
    v23 = a1 - a3;
    v42 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v38 = v22;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      v25 = v46;
      v26 = v44;
      v44(v46, v24, v8);
      v27 = v47;
      v26(v47, v22, v8);
      v28 = sub_29D933968();
      v29 = *v21;
      (*v21)(v27, v8);
      result = v29(v25, v8);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v39 + 1;
        v22 = v38 + v34;
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v30)(v22, v31, v8);
      v22 += v40;
      v24 += v40;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_29D925408(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v128 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v12, v14);
  v136 = &v121 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v142 = &v121 - v19;
  MEMORY[0x2A1C7C4A8](v18, v20);
  v141 = &v121 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x29EDCA190];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_136;
    }

    a4 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v115 = a4;
    }

    else
    {
LABEL_130:
      v115 = sub_29D8DF4A0(a4);
    }

    v116 = v6;
    v144 = v115;
    a4 = *(v115 + 2);
    if (a4 >= 2)
    {
      v117 = v10;
      v10 = a3;
      a3 = v117;
      while (*v10)
      {
        v118 = *&v115[16 * a4];
        v119 = v115;
        v6 = *&v115[16 * a4 + 24];
        sub_29D925DF4(*v10 + a3[9] * v118, (*v10 + a3[9] * *&v115[16 * a4 + 16]), *v10 + a3[9] * v6, v5);
        if (v116)
        {
          goto LABEL_107;
        }

        if (v6 < v118)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_29D8DF4A0(v119);
        }

        if (a4 - 2 >= *(v119 + 2))
        {
          goto LABEL_124;
        }

        v120 = &v119[16 * a4];
        *v120 = v118;
        *(v120 + 1) = v6;
        v144 = v119;
        sub_29D8DF414(a4 - 1);
        v115 = v144;
        a4 = *(v144 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v23 = 0;
  v139 = (v10 + 1);
  v140 = v10 + 2;
  v138 = (v10 + 4);
  v24 = MEMORY[0x29EDCA190];
  v126 = a3;
  v124 = a4;
  v143 = v9;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v36 = v23 + 1;
    }

    else
    {
      v134 = v22;
      v123 = v6;
      v131 = *a3;
      v26 = v131;
      v27 = v10[9];
      v5 = v131 + v27 * (v23 + 1);
      v28 = v10[2];
      v29 = v141;
      v28(v141, v5, v9);
      v30 = v26 + v27 * v25;
      v31 = v142;
      v133 = v28;
      v28(v142, v30, v9);
      LODWORD(v135) = sub_29D933968();
      v32 = v9;
      v33 = v10[1];
      v33(v31, v32);
      v132 = v33;
      v33(v29, v32);
      v122 = v25;
      v34 = v25 + 2;
      v137 = v27;
      v35 = v131 + v27 * (v25 + 2);
      while (1)
      {
        v36 = v134;
        if (v134 == v34)
        {
          break;
        }

        v37 = v10;
        v38 = v141;
        v39 = v143;
        v40 = v133;
        (v133)(v141, v35, v143);
        v41 = v142;
        v40(v142, v5, v39);
        v42 = sub_29D933968() & 1;
        v43 = v132;
        (v132)(v41, v39);
        v44 = v38;
        v10 = v37;
        v43(v44, v39);
        ++v34;
        v35 += v137;
        v5 += v137;
        if ((v135 & 1) != v42)
        {
          v36 = v34 - 1;
          break;
        }
      }

      a3 = v126;
      v24 = v129;
      v6 = v123;
      a4 = v124;
      v9 = v143;
      v25 = v122;
      if (v135)
      {
        if (v36 < v122)
        {
          goto LABEL_127;
        }

        if (v122 < v36)
        {
          v121 = v10;
          v45 = v137 * (v36 - 1);
          v46 = v36 * v137;
          v47 = v36;
          v48 = v122;
          v49 = v122 * v137;
          do
          {
            if (v48 != --v47)
            {
              v51 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v52 = v36;
              v5 = &v51[v49];
              v135 = *v138;
              (v135)(v128, &v51[v49], v143, v24);
              if (v49 < v45 || v5 >= &v51[v46])
              {
                v50 = v143;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v50 = v143;
                if (v49 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v135(&v51[v45], v128, v50);
              a3 = v126;
              v24 = v129;
              v36 = v52;
            }

            ++v48;
            v45 -= v137;
            v46 -= v137;
            v49 += v137;
          }

          while (v48 < v47);
          v6 = v123;
          a4 = v124;
          v10 = v121;
          v9 = v143;
          v25 = v122;
        }
      }
    }

    v53 = a3[1];
    if (v36 < v53)
    {
      if (__OFSUB__(v36, v25))
      {
        goto LABEL_126;
      }

      if (v36 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_128;
        }

        if ((v25 + a4) >= v53)
        {
          v54 = a3[1];
        }

        else
        {
          v54 = v25 + a4;
        }

        if (v54 < v25)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v36 != v54)
        {
          break;
        }
      }
    }

    v55 = v36;
    if (v36 < v25)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = v129;
    }

    else
    {
      v24 = sub_29D68FFE8(0, *(v129 + 2) + 1, 1, v129);
    }

    a4 = *(v24 + 2);
    v56 = *(v24 + 3);
    v5 = a4 + 1;
    if (a4 >= v56 >> 1)
    {
      v24 = sub_29D68FFE8((v56 > 1), a4 + 1, 1, v24);
    }

    *(v24 + 2) = v5;
    v57 = &v24[16 * a4];
    *(v57 + 4) = v25;
    *(v57 + 5) = v55;
    v58 = *v125;
    if (!*v125)
    {
      goto LABEL_135;
    }

    v130 = v55;
    if (a4)
    {
      while (1)
      {
        v59 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v60 = *(v24 + 4);
          v61 = *(v24 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_52:
          if (v63)
          {
            goto LABEL_114;
          }

          v76 = &v24[16 * v5];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_117;
          }

          v82 = &v24[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_121;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v86 = &v24[16 * v5];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_66:
        if (v81)
        {
          goto LABEL_116;
        }

        v89 = &v24[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v59 - 1;
        if (v59 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v97 = v24;
        v98 = *&v24[16 * a4 + 32];
        v5 = *&v24[16 * v59 + 40];
        sub_29D925DF4(*a3 + v10[9] * v98, (*a3 + v10[9] * *&v24[16 * v59 + 32]), *a3 + v10[9] * v5, v58);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v98)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_29D8DF4A0(v97);
        }

        if (a4 >= *(v97 + 2))
        {
          goto LABEL_111;
        }

        v99 = &v97[16 * a4];
        *(v99 + 4) = v98;
        *(v99 + 5) = v5;
        v144 = v97;
        sub_29D8DF414(v59);
        v24 = v144;
        v5 = *(v144 + 2);
        v9 = v143;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v24[16 * v5 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_112;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_113;
      }

      v71 = &v24[16 * v5];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_115;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_118;
      }

      if (v75 >= v67)
      {
        v93 = &v24[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_122;
        }

        if (v62 < v96)
        {
          v59 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v130;
    a4 = v124;
    if (v130 >= v22)
    {
      goto LABEL_95;
    }
  }

  v123 = v6;
  v100 = *a3;
  v101 = v10[9];
  v121 = v10;
  v137 = v10[2];
  v102 = v100 + v101 * (v36 - 1);
  v103 = -v101;
  v122 = v25;
  v104 = (v25 - v36);
  v135 = v100;
  v127 = v101;
  v5 = v100 + v36 * v101;
  v130 = v54;
LABEL_85:
  v133 = v102;
  v134 = v36;
  v131 = v5;
  v132 = v104;
  v105 = v102;
  while (1)
  {
    v106 = v141;
    v107 = v137;
    (v137)(v141, v5, v9, v24);
    v108 = v142;
    v107(v142, v105, v143);
    v109 = sub_29D933968();
    a4 = v139;
    v110 = *v139;
    v111 = v108;
    v9 = v143;
    (*v139)(v111, v143);
    v110(v106, v9);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v36 = v134 + 1;
      v102 = &v133[v127];
      v104 = v132 - 1;
      v5 = v131 + v127;
      v55 = v130;
      if (v134 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v123;
      a3 = v126;
      v10 = v121;
      v25 = v122;
      if (v130 < v122)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v135)
    {
      break;
    }

    a4 = v138;
    v112 = *v138;
    v113 = v136;
    (*v138)(v136, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v9);
    v105 += v103;
    v5 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

uint64_t sub_29D925DF4(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v59 = sub_29D9339F8();
  v8 = *(v59 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v59, v9);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v10, v12);
  v56 = &v47 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v58 = a3;
  v18 = &a2[-a1] / v16;
  v62 = a1;
  v61 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || &a2[v20] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = &a4[v20];
    if (v20 < 1)
    {
      v35 = &a4[v20];
    }

    else
    {
      v32 = -v16;
      v51 = (v8 + 8);
      v52 = (v8 + 16);
      v33 = &a4[v20];
      v34 = v58;
      v35 = v31;
      v49 = a1;
      v50 = a4;
      v53 = -v16;
      do
      {
        v47 = v35;
        v36 = a2;
        v37 = &a2[v32];
        v54 = v36;
        v55 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v62 = v36;
            v60 = v47;
            goto LABEL_59;
          }

          v39 = v34;
          v48 = v35;
          v58 = v34 + v32;
          v40 = &v33[v32];
          v41 = *v52;
          v42 = v56;
          v43 = v59;
          v44 = v33;
          (*v52)(v56, v40, v59);
          v45 = v57;
          (v41)(v57, v37, v43);
          LOBYTE(v41) = sub_29D933968();
          v46 = *v51;
          (*v51)(v45, v43);
          v46(v42, v43);
          if (v41)
          {
            break;
          }

          v35 = v40;
          v34 = v58;
          if (v39 < v44 || v58 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v55;
            a1 = v49;
          }

          else
          {
            v37 = v55;
            a1 = v49;
            if (v39 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v40;
          v38 = v40 > v50;
          v32 = v53;
          v36 = v54;
          if (!v38)
          {
            a2 = v54;
            goto LABEL_58;
          }
        }

        v47 = v44;
        v34 = v58;
        if (v39 < v54 || v58 >= v54)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v48;
          a1 = v49;
          v32 = v53;
        }

        else
        {
          a2 = v55;
          v35 = v48;
          a1 = v49;
          v32 = v53;
          if (v39 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v33 = v47;
      }

      while (v47 > v50);
    }

LABEL_58:
    v62 = a2;
    v60 = v35;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = &a4[v19];
    v60 = &a4[v19];
    if (v19 >= 1 && a2 < v58)
    {
      v53 = *(v8 + 16);
      v54 = (v8 + 16);
      v51 = v16;
      v52 = (v8 + 8);
      do
      {
        v22 = v56;
        v23 = v59;
        v24 = v53;
        (v53)(v56, a2, v59);
        v25 = a2;
        v26 = v57;
        v24(v57, a4, v23);
        v27 = sub_29D933968();
        v28 = *v52;
        (*v52)(v26, v23);
        v28(v22, v23);
        if (v27)
        {
          v29 = v51;
          a2 = &v51[v25];
          if (a1 < v25 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v29 = v51;
          v30 = &v51[a4];
          if (a1 < a4 || a1 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v61 = v30;
          a4 = &v29[a4];
        }

        a1 += v29;
        v62 = a1;
      }

      while (a4 < v55 && a2 < v58);
    }
  }

LABEL_59:
  sub_29D8DF4B4(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_29D926384@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v134 = a2;
  v3 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v169 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v172 = &v132 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v171 = &v132 - v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v132 - v15;
  sub_29D929288(0, &qword_2A17B1030, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8, v18);
  v155 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v158 = &v132 - v22;
  v170 = sub_29D933788();
  v168 = *(v170 - 8);
  MEMORY[0x2A1C7C4A8](v170, v23);
  v160 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_29D9337B8();
  v167 = *(v164 - 8);
  MEMORY[0x2A1C7C4A8](v164, v25);
  v159 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D9339F8();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v165 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v161 = &v132 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v156 = &v132 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v163 = &v132 - v40;
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = &v132 - v42;
  v44 = type metadata accessor for BloodPressurePDFViewModel(0);
  v45 = *(a1 + v44[16]);
  v173 = *(a1 + v44[15]);
  v46 = a1 + v44[17];
  v166 = v28;
  v47 = *(v28 + 16);
  v147 = v28 + 16;
  v148 = v46;
  v47(v43);
  v150 = v44;
  v48 = a1 + v44[14];
  v162 = v27;
  v151 = v47;
  (v47)(v163, v48, v27);
  v157 = a1;
  v140 = *a1;
  v133 = v45;
  sub_29D935E88();
  sub_29D935E88();
  v49 = v159;
  sub_29D933798();
  v50 = v160;
  sub_29D933768();
  v149 = v43;
  v152 = sub_29D9339C8();
  v141 = v51;
  v52 = *(v168 + 8);
  v168 += 8;
  v52(v50, v170);
  v53 = v167 + 8;
  v54 = *(v167 + 8);
  v55 = v164;
  v54(v49, v164);
  sub_29D933798();
  sub_29D933768();
  v136 = sub_29D9339C8();
  v135 = v56;
  v154 = v52;
  v52(v50, v170);
  v167 = v53;
  v153 = v54;
  v54(v49, v55);
  v57 = "PDF_TITLE_DESCRIPTION";
  v58 = sub_29D933AA8();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v146 = v58;
  v145 = v60;
  v144 = v59 + 56;
  (v60)(v158, 1, 1);
  if (qword_2A1A242C0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v62 = qword_2A1A2BE98;
    v61 = unk_2A1A2BEA0;
    v63 = qword_2A1A2BEA8;
    sub_29D929118(0, &qword_2A1A24860, &qword_2A1A24818, MEMORY[0x29EDCA100], MEMORY[0x29EDC9E90]);
    v143 = v64;
    v65 = swift_allocObject();
    v142 = xmmword_29D93F680;
    *(v65 + 16) = xmmword_29D93F680;
    v66 = MEMORY[0x29EDC99B0];
    *(v65 + 56) = MEMORY[0x29EDC99B0];
    v67 = sub_29D69AD24();
    v68 = v141;
    *(v65 + 32) = v152;
    *(v65 + 40) = v68;
    *(v65 + 96) = v66;
    *(v65 + 104) = v67;
    v141 = v67;
    v69 = v136;
    *(v65 + 64) = v67;
    *(v65 + 72) = v69;
    *(v65 + 80) = v135;
    v152 = v57;
    v70 = v63;
    v71 = sub_29D9334A8();
    v73 = v72;
    if (*(v65 + 16))
    {
      v74 = v158;
      v136 = sub_29D939D78();
      v73 = v75;
    }

    else
    {
      v136 = v71;

      v74 = v158;
    }

    sub_29D9293B8(v74, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    v76 = v61;
    v77 = sub_29D9334A8();
    v79 = v78;
    v135 = v73;
    v139 = v76;
    v138 = v70;
    v137 = v62;
    if (v140 && [v140 journalType] < 2)
    {

      v132 = sub_29D9334A8();
      v140 = v80;
    }

    else
    {
      v132 = v77;
      v140 = v79;
    }

    v81 = v162;
    v83 = v166 + 8;
    v82 = *(v166 + 8);
    v82(v163, v162);
    v166 = v83;
    v163 = v82;
    v82(v149, v81);
    v84 = v156;
    sub_29D933948();
    v85 = v157[1];
    v86 = v157[2];
    v87 = v151;
    (v151)(v161, v157 + *(v150 + 28), v81);
    v87(v165, v84, v81);
    v148 = v86;
    sub_29D935E88();
    sub_29D935E88();
    v88 = v159;
    sub_29D933798();
    v89 = v160;
    sub_29D933768();
    v158 = sub_29D9339C8();
    v151 = v90;
    v91 = v154;
    v154(v89, v170);
    v92 = v153;
    v153(v88, v164);
    sub_29D933798();
    sub_29D933768();
    v150 = sub_29D9339C8();
    v149 = v93;
    v91(v89, v170);
    v92(v88, v164);
    v94 = v155;
    v145(v155, 1, 1, v146);
    v95 = swift_allocObject();
    *(v95 + 16) = v142;
    v96 = MEMORY[0x29EDC99B0];
    v97 = v141;
    *(v95 + 56) = MEMORY[0x29EDC99B0];
    *(v95 + 64) = v97;
    v98 = v151;
    *(v95 + 32) = v158;
    *(v95 + 40) = v98;
    *(v95 + 96) = v96;
    *(v95 + 104) = v97;
    v99 = v149;
    *(v95 + 72) = v150;
    *(v95 + 80) = v99;
    v100 = sub_29D9334A8();
    if (*(v95 + 16))
    {
      v168 = sub_29D939D78();
      v170 = v102;

      v167 = v170;
    }

    else
    {
      v167 = v101;
      v168 = v100;
    }

    v103 = v172;
    sub_29D9293B8(v94, &qword_2A17B1030, MEMORY[0x29EDB9C70]);
    v164 = sub_29D9334A8();
    v160 = v104;
    v57 = v166;
    v105 = v162;
    v106 = v163;
    (v163)(v165, v162);
    v106(v161, v105);
    v107 = v173;
    v108 = *(v173 + 16);
    v170 = v3;
    if (v108)
    {
      v109 = 0;
      v110 = MEMORY[0x29EDCA190];
      while (v109 < *(v107 + 16))
      {
        v57 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v111 = *(v4 + 72);
        sub_29D929478(&v57[v107 + v111 * v109], v16, type metadata accessor for BloodPressurePDFSampleInterval);
        if (v16[*(v3 + 24)] - 1 > 1)
        {
          sub_29D9294E0(v16, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        else
        {
          sub_29D75E928(v16, v171);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v174 = v110;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29D7EE660(0, *(v110 + 16) + 1, 1);
            v110 = v174;
          }

          v114 = *(v110 + 16);
          v113 = *(v110 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_29D7EE660((v113 > 1), v114 + 1, 1);
            v110 = v174;
          }

          *(v110 + 16) = v114 + 1;
          sub_29D75E928(v171, &v57[v110 + v114 * v111]);
          v3 = v170;
          v103 = v172;
        }

        ++v109;
        v107 = v173;
        if (v108 == v109)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v110 = MEMORY[0x29EDCA190];
LABEL_24:
    v16 = *(v110 + 16);

    v115 = *(v85 + 2);
    if (!v115)
    {
      break;
    }

    v116 = 0;
    v117 = MEMORY[0x29EDCA190];
    while (v116 < *(v85 + 2))
    {
      v57 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v118 = *(v4 + 72);
      sub_29D929478(&v57[v85 + v118 * v116], v103, type metadata accessor for BloodPressurePDFSampleInterval);
      if (*(v103 + *(v3 + 24)) - 1 > 1)
      {
        sub_29D9294E0(v103, type metadata accessor for BloodPressurePDFSampleInterval);
      }

      else
      {
        sub_29D75E928(v103, v169);
        v119 = swift_isUniquelyReferenced_nonNull_native();
        v174 = v117;
        if ((v119 & 1) == 0)
        {
          sub_29D7EE660(0, *(v117 + 16) + 1, 1);
          v117 = v174;
        }

        v121 = *(v117 + 16);
        v120 = *(v117 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_29D7EE660((v120 > 1), v121 + 1, 1);
          v117 = v174;
        }

        *(v117 + 16) = v121 + 1;
        sub_29D75E928(v169, &v57[v117 + v121 * v118]);
        v3 = v170;
        v103 = v172;
      }

      if (v115 == ++v116)
      {
        goto LABEL_36;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v117 = MEMORY[0x29EDCA190];
LABEL_36:
  (v163)(v156, v162);
  sub_29D9294E0(v157, type metadata accessor for BloodPressurePDFViewModel);
  v122 = *(v117 + 16);

  if (v16)
  {
    v124 = 0;
  }

  else
  {
    v124 = v122 <= 0;
  }

  v125 = !v124;
  v126 = v134;
  v127 = v173;
  *v134 = v133;
  v126[1] = v127;
  v128 = v140;
  v126[2] = v132;
  v126[3] = v128;
  v129 = v135;
  v126[4] = v136;
  v126[5] = v129;
  v126[6] = v148;
  v126[7] = v85;
  v130 = v160;
  v126[8] = v164;
  v126[9] = v130;
  v131 = v167;
  v126[10] = v168;
  v126[11] = v131;
  *(v126 + 96) = v125;
  return result;
}

void sub_29D9272A4(void *a1)
{
  v2 = sub_29D933A58();
  v62 = *(v2 - 1);
  v63 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933788();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9337B8();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9339F8();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v17 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v18 = [a1 objectsForType_];

  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  sub_29D702E20();
  v19 = sub_29D93A0D8();

  v20 = sub_29D701128(v19);

  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
      v24 = [a1 objectsForType_];

      v25 = sub_29D93A0D8();
      v26 = sub_29D701128(v25);

      if (v26)
      {
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v63 = v27;
          v28 = [a1 startDate];
          sub_29D933998();

          sub_29D933768();
          sub_29D933778();
          v29 = sub_29D9339C8();
          v31 = v30;
          (*(v59 + 8))(v8, v60);
          (*(v57 + 8))(v12, v58);
          (*(v55 + 8))(v16, v56);
          v32 = [v22 quantity];
          [v32 _value];
          v34 = v33;
          v35 = v33;

          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v34 > -9.22337204e18)
          {
            if (v34 < 9.22337204e18)
            {
              v36 = [v63 quantity];
              [v36 _value];
              v38 = v37;
              v39 = v37;

              if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v38 > -9.22337204e18)
                {
                  if (v38 < 9.22337204e18)
                  {
                    v64 = v34;
                    v65[0] = sub_29D93AD38();
                    v65[1] = v40;
                    MEMORY[0x29ED6A240](47, 0xE100000000000000);
                    v64 = v38;
                    v41 = sub_29D93AD38();
                    MEMORY[0x29ED6A240](v41);

                    MEMORY[0x29ED6A240](8236, 0xE200000000000000);
                    MEMORY[0x29ED6A240](v29, v31);

                    return;
                  }

                  goto LABEL_24;
                }

LABEL_23:
                __break(1u);
LABEL_24:
                __break(1u);
                return;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_21;
        }

        v20 = v26;
      }
    }
  }

  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v42 = sub_29D937898();
  sub_29D69C6C0(v42, qword_2A1A2BF10);
  v43 = a1;
  v44 = sub_29D937878();
  v45 = sub_29D93A288();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v65[0] = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D955ED0, v65);
    *(v46 + 12) = 2080;
    v48 = [v43 UUID];
    v49 = v61;
    sub_29D933A38();

    sub_29D929240(&qword_2A17B3C50, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
    v50 = v63;
    v51 = sub_29D93AD38();
    v53 = v52;
    (*(v62 + 8))(v49, v50);
    v54 = sub_29D6C2364(v51, v53, v65);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_29D677000, v44, v45, "[%{public}s] Could not parse blood pressure sample with UUID: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v47, -1, -1);
    MEMORY[0x29ED6BE30](v46, -1, -1);
  }
}

uint64_t sub_29D927A28()
{
  swift_getKeyPath();
  sub_29D695614(0);
  sub_29D929240(&qword_2A17B2930, sub_29D695614, MEMORY[0x29EDC9A70]);
  sub_29D929240(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v0 = sub_29D939E98();

  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    sub_29D929540(0, &qword_2A17B3628, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D738398(v14);
    v15 = sub_29D939CA8();

    return v15;
  }

  result = sub_29D93A928();
  v2 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x29EDCA190];
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED6AE30](v3, v0);
      }

      else
      {
        v5 = *(v0 + 8 * v3 + 32);
      }

      v6 = v5;
      sub_29D9272A4(v5);
      v8 = v7;
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_29D68F740(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_29D68F740((v11 > 1), v12 + 1, 1, v4);
      }

      ++v3;

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v3);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D927C8C(void *a1, uint64_t a2)
{
  v100 = a2;
  v109 = a1;
  v96 = sub_29D933A58();
  v95 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96, v3);
  v94 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v110 = *(v114 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v114, v5);
  v112 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v111 = &v94 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9, v11);
  v113 = &v94 - v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v94 - v15;
  v17 = sub_29D9331D8();
  v97 = *(v17 - 8);
  v98 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v101 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D929288(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v107 = &v94 - v22;
  v106 = sub_29D933CE8();
  v23 = *(v106 - 8);
  MEMORY[0x2A1C7C4A8](v106, v24);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D9339F8();
  v105 = *(v27 - 8);
  v28 = v105;
  v30 = MEMORY[0x2A1C7C4A8](v27, v29);
  v99 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30, v32);
  v102 = &v94 - v34;
  v36 = MEMORY[0x2A1C7C4A8](v33, v35);
  v38 = &v94 - v37;
  MEMORY[0x2A1C7C4A8](v36, v39);
  v41 = &v94 - v40;
  sub_29D933C88();
  v42 = [a1 startDate];
  sub_29D933998();

  v108 = v41;
  sub_29D933AD8();
  v44 = v28 + 8;
  v43 = *(v28 + 8);
  v43(v38, v27);
  v45 = (v23 + 8);
  v46 = *(v23 + 8);
  v47 = v106;
  v46(v26, v106);
  sub_29D933C88();
  v48 = [v109 startDate];
  sub_29D933998();

  v49 = v107;
  sub_29D933B98();
  v103 = v43;
  v104 = v44;
  v43(v38, v27);
  v50 = v47;
  v51 = v105;
  v46(v26, v50);
  if ((*(v51 + 48))(v49, 1, v27) == 1)
  {
    v45 = v108;
    sub_29D9293B8(v49, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A24658 == -1)
    {
LABEL_3:
      v52 = sub_29D937898();
      sub_29D69C6C0(v52, qword_2A1A2BF10);
      v53 = v109;
      v54 = sub_29D937878();
      v55 = sub_29D93A288();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v115[0] = v57;
        *v56 = 136446466;
        *(v56 + 4) = sub_29D6C2364(0xD000000000000028, 0x800000029D955ED0, v115);
        *(v56 + 12) = 2080;
        v58 = [v53 UUID];
        v59 = v94;
        sub_29D933A38();

        sub_29D929240(&qword_2A17B3C50, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C38]);
        v60 = v96;
        v61 = sub_29D93AD38();
        v63 = v62;
        (*(v95 + 8))(v59, v60);
        v64 = sub_29D6C2364(v61, v63, v115);

        *(v56 + 14) = v64;
        _os_log_impl(&dword_29D677000, v54, v55, "[%{public}s] Could not determine end of day from sample start date. Sample UUID: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v57, -1, -1);
        MEMORY[0x29ED6BE30](v56, -1, -1);
      }

      v103(v45, v27);
      return 0;
    }

LABEL_42:
    swift_once();
    goto LABEL_3;
  }

  v66 = v102;
  (*(v51 + 32))(v102, v49, v27);
  v67 = *(v51 + 16);
  v67(v38, v108, v27);
  v67(v99, v66, v27);
  v68 = v101;
  v69 = sub_29D933188();
  MEMORY[0x2A1C7C4A8](v69, v70);
  v93 = v68;
  v71 = v100;
  sub_29D935E88();
  v72 = sub_29D92976C(sub_29D929428, (&v94 - 4), v71);
  v73 = *(v72 + 16);
  if (v73)
  {
    v109 = v27;
    v74 = 0;
    v75 = MEMORY[0x29EDCA190];
    v76 = v110;
    do
    {
      if (v74 >= *(v72 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v27 = *(v76 + 72);
      sub_29D929478(v72 + v77 + v27 * v74, v16, type metadata accessor for BloodPressurePDFSampleInterval);
      if (v16[*(v114 + 24)] == 1)
      {
        sub_29D75E928(v16, v113);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_29D7EE660(0, *(v75 + 16) + 1, 1);
          v76 = v110;
          v75 = v115[0];
        }

        v80 = *(v75 + 16);
        v79 = *(v75 + 24);
        v45 = (v80 + 1);
        if (v80 >= v79 >> 1)
        {
          sub_29D7EE660((v79 > 1), v80 + 1, 1);
          v76 = v110;
          v75 = v115[0];
        }

        *(v75 + 16) = v45;
        sub_29D75E928(v113, v75 + v77 + v80 * v27);
      }

      else
      {
        sub_29D9294E0(v16, type metadata accessor for BloodPressurePDFSampleInterval);
      }

      ++v74;
    }

    while (v73 != v74);
    v81 = *(v75 + 16);

    v45 = 0;
    v82 = v72 + v77;
    v83 = MEMORY[0x29EDCA190];
    v84 = v111;
    while (v45 < *(v72 + 16))
    {
      sub_29D929478(v82, v84, type metadata accessor for BloodPressurePDFSampleInterval);
      if (*(v84 + *(v114 + 24)) == 2)
      {
        sub_29D75E928(v84, v112);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v115[0] = v83;
        if ((v85 & 1) == 0)
        {
          sub_29D7EE660(0, *(v83 + 16) + 1, 1);
          v83 = v115[0];
        }

        v87 = *(v83 + 16);
        v86 = *(v83 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_29D7EE660((v86 > 1), v87 + 1, 1);
          v83 = v115[0];
        }

        *(v83 + 16) = v87 + 1;
        sub_29D75E928(v112, v83 + v77 + v87 * v27);
        v84 = v111;
      }

      else
      {
        sub_29D9294E0(v84, type metadata accessor for BloodPressurePDFSampleInterval);
      }

      ++v45;
      v82 += v27;
      if (v73 == v45)
      {
        v27 = v109;
        v68 = v101;
        goto LABEL_30;
      }
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v83 = MEMORY[0x29EDCA190];
  v81 = *(MEMORY[0x29EDCA190] + 16);

LABEL_30:

  v88 = *(v83 + 16);

  if (v81)
  {
    v89 = v102;
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v93 = 0xE000000000000000;
  }

  else
  {
    v89 = v102;
    if (!v88)
    {
      v92 = v103;
      v103(v102, v27);
      v92(v108, v27);
      (*(v97 + 8))(v68, v98);
      return 0;
    }

    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v93 = 0xE000000000000000;
  }

  v90 = sub_29D9334A8();
  v91 = v103;
  v103(v89, v27);
  v91(v108, v27);
  (*(v97 + 8))(v68, v98);
  return v90;
}

char *sub_29D9288B0(unint64_t a1, uint64_t a2)
{
  v76 = a2;
  v75 = sub_29D933788();
  v89 = *(v75 - 8);
  MEMORY[0x2A1C7C4A8](v75, v3);
  v74 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_29D9337B8();
  v5 = *(v73 - 8);
  MEMORY[0x2A1C7C4A8](v73, v6);
  v72 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9339F8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29D933CE8();
  v65 = *(v66 - 8);
  MEMORY[0x2A1C7C4A8](v66, v13);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  v78 = v15;
  v92 = v15;
  v16 = 0;
  sub_29D922D9C(MEMORY[0x29EDCA198], sub_29D92935C, v91, a1);
  v18 = v17;
  v19 = *(v17 + 16);
  if (v19)
  {
    v87 = 0;
    v88 = v5;
    v20 = sub_29D702AC8(v19, 0);
    v77 = v9;
    v90 = sub_29D7AECB0(v93, &v20[(*(v9 + 80) + 32) & ~*(v9 + 80)], v19, v18);
    v21 = v93[0];
    v16 = v93[4];
    swift_bridgeObjectRetain_n();
    sub_29D7AF2E8(v21);
    if (v90 != v19)
    {
      goto LABEL_31;
    }

    v9 = v77;
    v16 = v87;
    v5 = v88;
  }

  else
  {
    sub_29D935E88();
    v20 = MEMORY[0x29EDCA190];
  }

  v93[0] = v20;
  sub_29D923358(v93);
  if (v16)
  {
LABEL_32:

    __break(1u);
  }

  else
  {

    v22 = *(v93[0] + 16);
    if (v22)
    {
      v90 = 0;
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
      v64[1] = v93[0];
      v26 = v93[0] + v25;
      v27 = v24;
      v28 = *(v23 + 56);
      v68 = (v89 + 8);
      v67 = (v5 + 8);
      v29 = (v23 - 8);
      v16 = MEMORY[0x29EDCA190];
      v71 = v8;
      v77 = v23;
      v70 = v18;
      v69 = v24;
      v79 = v28;
      v24(v12, v93[0] + v25, v8);
      while (1)
      {
        if (!*(v18 + 16) || (v30 = sub_29D690A14(v12), (v31 & 1) == 0))
        {
          (*v29)(v12, v8);
          goto LABEL_9;
        }

        v32 = *(*(v18 + 56) + 8 * v30);
        if (v32 >> 62)
        {
          if (sub_29D93A928())
          {
LABEL_15:
            v89 = v16;
            if ((v32 & 0xC000000000000001) != 0)
            {
              sub_29D935E88();
              v34 = MEMORY[0x29ED6AE30](0, v32);
            }

            else
            {
              if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v33 = *(v32 + 32);
              sub_29D935E88();
              v34 = v33;
            }

            v86 = v34;
            v35 = v72;
            sub_29D933798();
            v36 = v74;
            sub_29D933768();
            v37 = sub_29D9339C8();
            v87 = v38;
            v88 = v37;
            (*v68)(v36, v75);
            v39 = (*v67)(v35, v73);
            MEMORY[0x2A1C7C4A8](v39, v40);
            v41 = v78;
            v64[-2] = v78;
            sub_29D935E88();
            v42 = v90;
            v43 = sub_29D9297D4(sub_29D929378, &v64[-4], v32);
            MEMORY[0x2A1C7C4A8](v43, v44);
            v64[-2] = v41;
            sub_29D9297D4(sub_29D929398, &v64[-4], v32);
            v45 = sub_29D927A28();
            v47 = v46;

            v48 = sub_29D927A28();
            v82 = v49;
            v83 = v48;

            v50 = v86;
            v51 = sub_29D927C8C(v86, v76);
            v80 = v52;
            v81 = v51;
            v53 = v89;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90 = v42;
            v84 = v47;
            v85 = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v53 = sub_29D6901E0(0, *(v53 + 2) + 1, 1, v53);
            }

            v8 = v71;
            v56 = *(v53 + 2);
            v55 = *(v53 + 3);
            v57 = v53;
            v18 = v70;
            if (v56 >= v55 >> 1)
            {
              v57 = sub_29D6901E0((v55 > 1), v56 + 1, 1, v57);
            }

            (*v29)(v12, v8);
            *(v57 + 2) = v56 + 1;
            v16 = v57;
            v58 = &v57[64 * v56];
            v59 = v87;
            *(v58 + 4) = v88;
            *(v58 + 5) = v59;
            v60 = v84;
            *(v58 + 6) = v85;
            *(v58 + 7) = v60;
            v61 = v82;
            *(v58 + 8) = v83;
            *(v58 + 9) = v61;
            v62 = v80;
            *(v58 + 10) = v81;
            *(v58 + 11) = v62;
            v27 = v69;
            goto LABEL_25;
          }
        }

        else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        (*v29)(v12, v8);
LABEL_25:
        v28 = v79;
LABEL_9:
        v26 += v28;
        if (!--v22)
        {

          goto LABEL_29;
        }

        v27(v12, v26, v8);
      }
    }

    v16 = MEMORY[0x29EDCA190];
LABEL_29:
    (*(v65 + 8))(v78, v66);
    return v16;
  }

  return result;
}

void sub_29D929034(uint64_t a1)
{
  if (!qword_2A17B8258)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B8258);
    }
  }
}

uint64_t sub_29D9290A0(uint64_t a1)
{
  v3 = *(sub_29D934FF8() - 8);
  v4 = v1 + ((*(v3 + 80) + 168) & ~*(v3 + 80));

  return sub_29D924680(a1, v1 + 16, v1 + 128, v4);
}

void sub_29D929118(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D6B7370(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D9291B8(uint64_t a1)
{
  sub_29D929118(0, &qword_2A17B1020, &qword_2A17B1010, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D929240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D929288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D9292EC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29D929118(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    v6 = sub_29D93AD48();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D9293B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D929288(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D929478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9294E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D929540(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_29D9295A0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_29D9295C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_29D92960C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_29D929678(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29D9296A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_29D9296EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D9297D4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x29ED6AE30](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_29D93AAB8();
        sub_29D93AAE8();
        v4 = v15;
        sub_29D93AAF8();
        sub_29D93AAC8();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x29EDCA190];
LABEL_20:

  return v12;
}

uint64_t sub_29D929980(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v28 = a7;
  v31 = a6;
  v35 = a1;
  v36 = a2;
  v10 = a4(0);
  v34 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v12, v14);
  v17 = &v27 - v16;
  v32 = *(a3 + 16);
  if (v32)
  {
    v18 = 0;
    v19 = MEMORY[0x29EDCA190];
    v29 = a5;
    v30 = a3;
    while (v18 < *(a3 + 16))
    {
      v20 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v21 = *(v34 + 72);
      sub_29D92B304(a3 + v20 + v21 * v18, v17, a5);
      v22 = v35(v17);
      if (v7)
      {
        sub_29D92B36C(v17, v31);

        goto LABEL_15;
      }

      if (v22)
      {
        sub_29D92B3CC(v17, v33, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28(0, *(v19 + 16) + 1, 1);
          v19 = v37;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          v28(v24 > 1, v25 + 1, 1);
          v19 = v37;
        }

        *(v19 + 16) = v25 + 1;
        v26 = v19 + v20 + v25 * v21;
        a5 = v29;
        result = sub_29D92B3CC(v33, v26, v29);
        a3 = v30;
      }

      else
      {
        result = sub_29D92B36C(v17, v31);
      }

      if (v32 == ++v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x29EDCA190];
LABEL_15:

    return v19;
  }

  return result;
}

uint64_t sub_29D929BD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_29D9331D8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for PregnancyModel(0);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_29D6A08F8(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_29D92B210(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_29D9339F8();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D929E60, 0, 0);
}

uint64_t sub_29D929E60()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v25 = v0[4];
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v0[23] = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4B8]);
  sub_29D933938();
  v4 = objc_opt_self();
  v5 = sub_29D933958();
  v6 = sub_29D933958();
  v7 = [v4 predicateForSamplesWithStartDate:v5 endDate:v6 options:0];
  v0[24] = v7;

  sub_29D9339E8();
  v8 = sub_29D933958();
  v9 = *(v2 + 8);
  v0[25] = v9;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  sub_29D933928();
  v10 = sub_29D933958();
  v9(v1, v3);
  v11 = [v4 predicateForSamplesWithStartDate:v8 endDate:v10 options:0];
  v0[27] = v11;

  sub_29D6A0C58();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D941B10;
  *(v12 + 32) = v7;
  *(v12 + 40) = v11;
  sub_29D69567C(0, &qword_2A17B4138, 0x29EDBA0A8);
  v13 = v7;
  v14 = v11;
  v15 = sub_29D939F18();

  v16 = [objc_opt_self() orPredicateWithSubpredicates_];
  v0[28] = v16;

  v17 = MEMORY[0x29EDBA210];
  sub_29D92B278(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  sub_29D92B210(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, v17);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  v18 = v16;
  sub_29D939AB8();

  v19 = MEMORY[0x29EDB9980];
  sub_29D92B278(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
  sub_29D92B210(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v19);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED63750](KeyPath, 0);
  sub_29D939B28();
  v21 = *(v25 + 16);
  v22 = swift_task_alloc();
  v0[29] = v22;
  *v22 = v0;
  v22[1] = sub_29D92A304;
  v23 = v0[15];

  return MEMORY[0x2A1C5B578](v21, v23);
}

uint64_t sub_29D92A304(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {

    v4 = sub_29D92AC28;
  }

  else
  {
    v4 = sub_29D92A420;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D92A420()
{
  v89 = v0;
  v1 = v0[30];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[30];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_28:
    v82 = MEMORY[0x29EDCA190];
LABEL_29:
    v62 = v0[28];
    v64 = v0[27];
    v85 = v0[25];
    v61 = v0[23];
    v48 = v0[21];
    v49 = v0[19];
    v50 = v0[20];
    v51 = v0[18];
    v71 = v0[17];
    v73 = v0[22];
    v52 = v0[16];
    v66 = v0[24];
    v68 = v0[15];
    v53 = v0[8];
    v76 = v0[7];
    v79 = v0[6];
    v55 = v0[2];
    v54 = v0[3];

    v56 = *(v49 + 16);
    v56(v48, v55, v51);
    v56(v50, v54, v51);
    sub_29D933188();
    v57 = swift_task_alloc();
    *(v57 + 16) = v53;
    v58 = v53;
    sub_29D935E88();
    v47 = sub_29D929980(sub_29D92B2E4, v57, v82, type metadata accessor for PregnancyModel, type metadata accessor for PregnancyModel, type metadata accessor for PregnancyModel, sub_29D7EE6E8);

    (*(v52 + 8))(v71, v68);
    v85(v73, v51);

    (*(v76 + 8))(v58, v79);
    goto LABEL_30;
  }

LABEL_27:
  v2 = sub_29D93A928();
  v3 = v0[30];
  if (!v2)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = 0;
  v80 = v1 & 0xFFFFFFFFFFFFFF8;
  v83 = v1 & 0xC000000000000001;
  v77 = v3 + 32;
  v72 = (v0[19] + 56);
  v5 = MEMORY[0x29EDCA190];
  v67 = v0[9];
  v69 = v0[10];
  v74 = v2;
  while (1)
  {
    if (v83)
    {
      v6 = v86;
      v7 = MEMORY[0x29ED6AE30](v4, v86[30]);
    }

    else
    {
      v6 = v86;
      if (v4 >= *(v80 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v77 + 8 * v4);
    }

    v8 = v7;
    v1 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = objc_opt_self();
    v12 = v8;
    v13 = [v11 calculatePhysiologicalWashoutFromPregnancySample_];
    if (v13)
    {
      v14 = v13;
      sub_29D933998();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v6[18];
    v17 = v6[13];
    v18 = v6[14];
    v21 = v6 + 11;
    v20 = v6[11];
    v19 = v21[1];
    (*v72)(v17, v15, 1, v16);
    sub_29D92B3CC(v17, v18, sub_29D6A08F8);
    v22 = v12;
    v23 = [v10 startDate];
    sub_29D933998();

    v24 = [v10 endDate];
    sub_29D933998();

    sub_29D92B304(v18, v19 + *(v67 + 24), sub_29D6A08F8);
    sub_29D92B304(v19, v20, type metadata accessor for PregnancyModel);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_29D68FFB4(0, v5[2] + 1, 1, v5);
    }

    v26 = v5[2];
    v25 = v5[3];
    v0 = v86;
    if (v26 >= v25 >> 1)
    {
      v5 = sub_29D68FFB4((v25 > 1), v26 + 1, 1, v5);
    }

    v27 = v86[14];
    v29 = v86[11];
    v28 = v86[12];

    sub_29D92B36C(v28, type metadata accessor for PregnancyModel);
    sub_29D92B36C(v27, sub_29D6A08F8);
    v5[2] = v26 + 1;
    sub_29D92B3CC(v29, v5 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v26, type metadata accessor for PregnancyModel);
    ++v4;
    if (v1 == v74)
    {
      v0 = v86;
      v82 = v5;
      goto LABEL_29;
    }
  }

  v0 = v6;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v30 = sub_29D937898();
  sub_29D69C6C0(v30, qword_2A1A2BF10);
  v31 = v8;
  v32 = sub_29D937878();
  v33 = sub_29D93A288();

  v34 = os_log_type_enabled(v32, v33);
  v78 = v0[28];
  v81 = v0[27];
  v35 = v0[25];
  v75 = v0[23];
  v36 = v0[22];
  v38 = v0[17];
  v37 = v0[18];
  v39 = v0[16];
  v84 = v0[15];
  v87 = v0[24];
  if (v34)
  {
    v70 = v0[18];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v65 = v38;
    v42 = swift_slowAlloc();
    v88 = v42;
    *v40 = 136446466;
    v43 = sub_29D93AF08();
    v63 = v36;
    v45 = sub_29D6C2364(v43, v44, &v88);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2112;
    v46 = [v31 sampleType];
    *(v40 + 14) = v46;
    *v41 = v46;
    _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s] Found unexpected sample of type: %@", v40, 0x16u);
    sub_29D6ACA3C(v41);
    MEMORY[0x29ED6BE30](v41, -1, -1);
    sub_29D69417C(v42);
    MEMORY[0x29ED6BE30](v42, -1, -1);
    MEMORY[0x29ED6BE30](v40, -1, -1);

    (*(v39 + 8))(v65, v84);
    v35(v63, v70);
  }

  else
  {

    (*(v39 + 8))(v38, v84);
    v35(v36, v37);
  }

  v47 = 0;
LABEL_30:

  v59 = v0[1];

  return v59(v47);
}

uint64_t sub_29D92AC28()
{
  v25 = v0;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2BF10);
  v2 = sub_29D937878();
  v3 = sub_29D93A288();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[22];
  v9 = v0[18];
  v22 = v0[24];
  v23 = v0[17];
  v10 = v0[16];
  v20 = v0[27];
  v21 = v0[15];
  if (v4)
  {
    v19 = v0[25];
    v11 = swift_slowAlloc();
    v18 = v9;
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v13 = sub_29D93AF08();
    v15 = sub_29D6C2364(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Failed to execute pregnancy sample query", v11, 0xCu);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v11, -1, -1);

    (*(v10 + 8))(v23, v21);
    v19(v8, v18);
  }

  else
  {

    (*(v10 + 8))(v23, v21);
    v6(v8, v9);
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_29D92AEC8(uint64_t a1)
{
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v20[-v13];
  v22 = type metadata accessor for PregnancyModel(0);
  sub_29D92B304(a1 + *(v22 + 24), v5, sub_29D6A08F8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29D92B36C(v5, sub_29D6A08F8);
    v21 = 0;
  }

  else
  {
    (*(v7 + 32))(v14, v5, v6);
    v21 = sub_29D9331B8();
    (*(v7 + 8))(v14, v6);
  }

  sub_29D9331A8();
  sub_29D702F18();
  v15 = sub_29D939CB8();
  v16 = *(v7 + 8);
  v16(v11, v6);
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    sub_29D933178();
    v18 = sub_29D939CB8();
    v16(v11, v6);
    v17 = v18 ^ 1;
  }

  if (sub_29D9331B8() & 1) != 0 || ((sub_29D9331B8() | v21))
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t type metadata accessor for PregnancyModel(uint64_t a1)
{
  result = qword_2A17B8260;
  if (!qword_2A17B8260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D92B210(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D92B278(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D92B210(255, a3, &unk_2A17B37A0, 0x29EDBAD60, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D92B304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D92B36C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D92B3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D92B45C(uint64_t a1)
{
  sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    sub_29D6A08F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D92B4E0(uint64_t a1)
{
  v1 = sub_29D939D68();
  v3 = v2;
  if (v1 == sub_29D939D68() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_29D93AD78();

  if (v6)
  {
    goto LABEL_14;
  }

  v7 = sub_29D939D68();
  v9 = v8;
  if (v7 == sub_29D939D68() && v9 == v10)
  {
LABEL_13:

    goto LABEL_14;
  }

  v12 = sub_29D93AD78();

  if ((v12 & 1) == 0)
  {
    v13 = sub_29D939D68();
    v15 = v14;
    if (v13 != sub_29D939D68() || v15 != v16)
    {
      v19 = sub_29D93AD78();

      if (v19)
      {
        goto LABEL_14;
      }

      v20 = sub_29D939D68();
      v22 = v21;
      if (v20 != sub_29D939D68() || v22 != v23)
      {
        v24 = sub_29D93AD78();

        v17 = v24 ^ 1;
        return v17 & 1;
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_29D92B6BC(uint64_t a1)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v20[-v11];
  v14 = sub_29D92BB4C(a1);
  if (v13)
  {
    v15 = v13;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v16 = qword_2A1A2BE98;
    (*(v5 + 16))(v9, v12, v4);
    sub_29D935E88();
    v17 = v16;
    sub_29D933A98();
    sub_29D939D98();
    (*(v5 + 8))(v12, v4);
    sub_29D6CC0B8(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29D93DDB0;
    *(v18 + 56) = MEMORY[0x29EDC99B0];
    *(v18 + 64) = sub_29D69AD24();
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    v14 = sub_29D939D38();
  }

  return v14;
}

uint64_t sub_29D92B940(char a1)
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v16[-v10];
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v13 = v12;
  sub_29D933A98();
  v14 = sub_29D939D98();
  (*(v4 + 8))(v11, v3);
  return v14;
}

uint64_t sub_29D92BB4C(uint64_t a1)
{
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v78[-v10];
  v12 = sub_29D939D68();
  v14 = v13;
  if (v12 == sub_29D939D68() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_29D93AD78();

  if (v17)
  {
    goto LABEL_14;
  }

  v18 = sub_29D939D68();
  v20 = v19;
  if (v18 == sub_29D939D68() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = sub_29D93AD78();

  if (v23)
  {
    goto LABEL_14;
  }

  v24 = sub_29D939D68();
  v26 = v25;
  if (v24 == sub_29D939D68() && v26 == v27)
  {
    goto LABEL_13;
  }

  v32 = sub_29D93AD78();

  if (v32)
  {
    goto LABEL_14;
  }

  v33 = sub_29D939D68();
  v35 = v34;
  if (v33 == sub_29D939D68() && v35 == v36)
  {
    goto LABEL_13;
  }

  v37 = sub_29D93AD78();

  if (v37)
  {
    goto LABEL_14;
  }

  v38 = sub_29D939D68();
  v40 = v39;
  if (v38 == sub_29D939D68() && v40 == v41)
  {
    goto LABEL_13;
  }

  v42 = sub_29D93AD78();

  if (v42)
  {
    goto LABEL_14;
  }

  v43 = sub_29D939D68();
  v45 = v44;
  if (v43 == sub_29D939D68() && v45 == v46)
  {
    goto LABEL_13;
  }

  v47 = sub_29D93AD78();

  if (v47)
  {
    goto LABEL_14;
  }

  v48 = sub_29D939D68();
  v50 = v49;
  if (v48 == sub_29D939D68() && v50 == v51)
  {
    goto LABEL_13;
  }

  v52 = sub_29D93AD78();

  if (v52)
  {
    goto LABEL_14;
  }

  v53 = sub_29D939D68();
  v55 = v54;
  if (v53 == sub_29D939D68() && v55 == v56)
  {
    goto LABEL_13;
  }

  v57 = sub_29D93AD78();

  if (v57)
  {
    goto LABEL_14;
  }

  v58 = sub_29D939D68();
  v60 = v59;
  if (v58 == sub_29D939D68() && v60 == v61)
  {
    goto LABEL_13;
  }

  v62 = sub_29D93AD78();

  if (v62)
  {
    goto LABEL_14;
  }

  v63 = sub_29D939D68();
  v65 = v64;
  if (v63 == sub_29D939D68() && v65 == v66)
  {
    goto LABEL_13;
  }

  v67 = sub_29D93AD78();

  if (v67)
  {
    goto LABEL_14;
  }

  v68 = sub_29D939D68();
  v70 = v69;
  if (v68 == sub_29D939D68() && v70 == v71)
  {
    goto LABEL_13;
  }

  v72 = sub_29D93AD78();

  if (v72)
  {
    goto LABEL_14;
  }

  v73 = sub_29D939D68();
  v75 = v74;
  if (v73 == sub_29D939D68() && v75 == v76)
  {
LABEL_13:

    goto LABEL_14;
  }

  v77 = sub_29D93AD78();

  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v28 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v29 = v28;
  sub_29D933A98();
  v30 = sub_29D939D98();
  (*(v4 + 8))(v11, v3);
  return v30;
}

uint64_t sub_29D92C444()
{

  v1 = v0 + *(*v0 + qword_2A17D1068 + 32);

  return sub_29D7C06BC(v1);
}

void *sub_29D92C4E0()
{
  v0 = sub_29D935568();

  sub_29D7C06BC(v0 + *(*v0 + qword_2A17D1068 + 32));
  return v0;
}

uint64_t sub_29D92C57C()
{
  sub_29D92C4E0();

  return swift_deallocClassInstance();
}

void sub_29D92C5D8(uint64_t a1)
{
  if (!qword_2A17B3DD0)
  {
    sub_29D9361F8();
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B3DD0);
    }
  }
}

uint64_t type metadata accessor for BloodPressureJournalHighlightsComponent(uint64_t a1)
{
  result = qword_2A17B82F0;
  if (!qword_2A17B82F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D92C690(uint64_t a1)
{
  sub_29D92C5D8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *sub_29D92C728(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v32 = a1;
  sub_29D92D1AC(0, &qword_2A17B8320, MEMORY[0x29EDC2008]);
  v33 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v32 - v10;
  *(v3 + *(*v3 + qword_2A17D0998 + 24)) = 0;
  sub_29D934528();
  v35 = a3;
  v12 = sub_29D9344F8();
  sub_29D6A0C58();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D940030;
  sub_29D8EFD98();
  swift_getKeyPath();
  *(v13 + 32) = sub_29D93A338();
  v14 = sub_29D939F18();

  [v12 setSortDescriptors_];

  [v12 setFetchLimit_];
  v15 = objc_allocWithZone(MEMORY[0x29EDB8C58]);
  v34 = a2;
  v16 = [v15 initWithFetchRequest:v12 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_29D75A420(0);
  v18 = objc_allocWithZone(v17);
  v19 = v16;
  v20 = sub_29D936A38();
  *(v4 + *(*v4 + qword_2A17D0998 + 16)) = v20;
  v21 = v20;
  v22 = sub_29D9369F8();
  v23 = [v22 fetchedObjects];

  if (v23)
  {
    v24 = sub_29D939F38();

    if (v24 >> 62)
    {
      v25 = sub_29D93A928();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = MEMORY[0x29EDC2000];
    if (v25 > 0)
    {
      v26 = MEMORY[0x29EDC1FF8];
    }
  }

  else
  {

    v26 = MEMORY[0x29EDC2000];
  }

  (*(v8 + 104))(v11, *v26, v33);
  swift_unknownObjectRetain();
  v27 = sub_29D935538();
  v28 = *(v27 + *(*v27 + qword_2A17D0998 + 16));

  v29 = v28;
  v30 = sub_29D936A18();

  [v30 registerObserver_];

  sub_29D936978();

  return v27;
}

void sub_29D92CAE4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = sub_29D939D68();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_29D92CB3C(uint64_t a1)
{
  sub_29D92C5D8(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BloodPressureJournalHighlightsComponent(0);
  sub_29D7603C4(v1 + *(v6 + 20), v5);
  v7 = sub_29D9361F8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_29D92CF58(v5);
    sub_29D935248();
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    sub_29D92CFB4(0);
    sub_29D92D0A8(&qword_2A17B8308, sub_29D92CFB4, MEMORY[0x29EDC2030]);

    sub_29D935418();
  }

  else
  {
    v9 = sub_29D9361E8();
    (*(v8 + 8))(v5, v7);
    swift_unknownObjectRetain();
    sub_29D936318();
    sub_29D693E2C(v17, v17[3]);
    v10 = sub_29D933EC8();
    sub_29D934528();
    v11 = sub_29D9344D8();
    sub_29D92D1AC(0, &qword_2A17B70C0, type metadata accessor for BloodPressureJournalHighlightsDataSource);
    swift_allocObject();
    v12 = sub_29D92C728(v9, v10, v11);
    sub_29D69417C(v17);

    v13 = sub_29D936338();
    sub_29D92CFB4(0);
    swift_allocObject();
    sub_29D88D194(v12, v13, 0);
    sub_29D92D0A8(&qword_2A17B8308, sub_29D92CFB4, MEMORY[0x29EDC2030]);
    sub_29D935438();

    sub_29D9353F8();

    sub_29D935248();

    sub_29D935408();

    sub_29D936978();
  }

  sub_29D92D0F0(0);
  sub_29D92D0A8(&qword_2A17B8318, sub_29D92D0F0, MEMORY[0x29EDC22A8]);

  v14 = sub_29D9353F8();

  return v14;
}

uint64_t sub_29D92CF58(uint64_t a1)
{
  sub_29D92C5D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D92CFB4(uint64_t a1)
{
  if (!qword_2A17B8300)
  {
    sub_29D92D1AC(255, &qword_2A17B70C0, type metadata accessor for BloodPressureJournalHighlightsDataSource);
    v3 = v2;
    v4 = sub_29D92D034();
    v6 = type metadata accessor for BloodPressureJournalHideableDataSource(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_2A17B8300);
    }
  }
}

unint64_t sub_29D92D034()
{
  result = qword_2A17B70D0;
  if (!qword_2A17B70D0)
  {
    sub_29D92D1AC(255, &qword_2A17B70C0, type metadata accessor for BloodPressureJournalHighlightsDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B70D0);
  }

  return result;
}

uint64_t sub_29D92D0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D92D0F0(uint64_t a1)
{
  if (!qword_2A17B8310)
  {
    sub_29D92CFB4(255);
    sub_29D935248();
    sub_29D92D0A8(&qword_2A17B8308, sub_29D92CFB4, MEMORY[0x29EDC2030]);
    v1 = sub_29D935C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8310);
    }
  }
}

void sub_29D92D1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D897F30(255, a2);
    v7 = v6;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v9 = a3(a1, v7, OpaqueTypeConformance2);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D92D23C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  swift_beginAccess();
  sub_29D69F108(&v1[v2], v36);
  if (v37)
  {
    sub_29D6B7370(0, &qword_2A17B1080, MEMORY[0x29EDC1910]);
    sub_29D6B7370(0, &qword_2A17B8340, &protocol descriptor for NumberedTextProviding);
    if (swift_dynamicCast())
    {
      if (*(&v39 + 1))
      {
        sub_29D679D3C(&v38, v41);
        v3 = sub_29D92D708();
        v4 = sub_29D693E2C(v41, v42);
        v5 = OBJC_IVAR____TtC5Heart16NumberedTextView_number;
        *&v3[OBJC_IVAR____TtC5Heart16NumberedTextView_number] = *v4;
        v6 = sub_29D8EB8B8();
        if (qword_2A17B0D28 != -1)
        {
          swift_once();
        }

        sub_29D7513E4(*&v3[v5]);
        v7 = sub_29D939D28();

        [v6 setText_];

        v8 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView;
        v9 = *&v1[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView];
        v10 = sub_29D693E2C(v41, v42);
        v11 = v10[2];
        v12 = &v9[OBJC_IVAR____TtC5Heart16NumberedTextView_title];
        *v12 = v10[1];
        *(v12 + 1) = v11;
        v13 = v9;
        sub_29D935E88();

        v14 = sub_29D8EBA80();
        if (*(v12 + 1))
        {
          sub_29D935E88();
          v15 = sub_29D939D28();
        }

        else
        {
          v15 = 0;
        }

        [v14 setText_];

        v29 = *&v1[v8];
        v30 = sub_29D693E2C(v41, v42);
        v31 = v30[4];
        v32 = &v29[OBJC_IVAR____TtC5Heart16NumberedTextView_details];
        *v32 = v30[3];
        *(v32 + 1) = v31;
        v33 = v29;
        sub_29D935E88();

        v34 = sub_29D8EBBB8();
        sub_29D935E88();
        v35 = sub_29D939D28();

        [v34 setText_];

        sub_29D69417C(v41);
        return;
      }
    }

    else
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
    }
  }

  else
  {
    sub_29D6B72BC(v36, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
  }

  sub_29D6B72BC(&v38, &qword_2A17B8338, &qword_2A17B8340, &protocol descriptor for NumberedTextProviding);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A1A2C008);
  v17 = v1;
  v18 = sub_29D937878();
  v19 = sub_29D93A288();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41[0] = v21;
    *v20 = 136446722;
    v22 = sub_29D93AF08();
    v24 = sub_29D6C2364(v22, v23, v41);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_29D6C2364(1835365481, 0xE400000000000000, v41);
    *(v20 + 22) = 2082;
    sub_29D6B7318(0, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910]);
    *&v38 = v25;
    sub_29D92DAD8();
    v26 = sub_29D939DA8();
    v28 = sub_29D6C2364(v26, v27, v41);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to NumberedTextProviding", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v21, -1, -1);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }
}

id sub_29D92D708()
{
  v1 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for NumberedTextView());
    v6 = sub_29D8EBCE0(0, 0, 0xE000000000000000, 0, 0xE000000000000000);
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_29D92D8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NumberedTextTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D92D964@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t sub_29D92D9BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D92D23C();
  return sub_29D6B72BC(a1, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910]);
}

void (*sub_29D92DA40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29D92DAA4;
}

void sub_29D92DAA4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D92D23C();
  }
}

unint64_t sub_29D92DAD8()
{
  result = qword_2A17B8348;
  if (!qword_2A17B8348)
  {
    sub_29D6B7318(255, &qword_2A17B1830, &qword_2A17B1080, MEMORY[0x29EDC1910]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B8348);
  }

  return result;
}

char *sub_29D92DB38(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v2[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView] = 0;
  if (a2)
  {
    v4 = sub_29D939D28();
  }

  else
  {
    v4 = 0;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for NumberedTextTableViewCell();
  v5 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, 1, v4);

  v6 = v5;
  [v6 setUserInteractionEnabled_];
  v7 = [v6 contentView];
  v8 = sub_29D92D708();
  [v7 addSubview_];

  v9 = *&v6[OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView];
  v10 = [v6 contentView];
  [v9 hk:v10 alignConstraintsWithView:10.0 insets:{0.0, 10.0, 0.0}];

  return v6;
}

uint64_t type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(uint64_t a1)
{
  result = qword_2A17B8350;
  if (!qword_2A17B8350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D92DD00(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v3 <= 0x3F)
    {
      result = sub_29D69567C(319, &qword_2A1A24910, 0x29EDBAD20);
      if (v4 <= 0x3F)
      {
        result = sub_29D934948();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29D92DDD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_29D8D5A00(0, &qword_2A17B8360, &qword_2A17B18A8, 0x29EDBAD10, MEMORY[0x29EDBA238]);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_29D933CE8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_29D9339F8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_29D939BD8();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D92DFF0, 0, 0);
}

uint64_t sub_29D92DFF0(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[16];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[8];
  v8 = v1[4];
  sub_29D9331A8();
  v26 = *(v5 + 16);
  v28 = v8;
  v26(v6, v8, v7);
  sub_29D939BB8();
  v27 = sub_29D939BC8();
  v9 = *(v2 + 8);
  v9(v3, v4);
  sub_29D933178();
  v26(v6, v8, v7);
  sub_29D939BB8();
  v10 = sub_29D939BC8();
  v9(v3, v4);
  v11 = objc_opt_self();
  v12 = [v11 hk:v27 earliestPossibleDateWithDayIndex:?];
  sub_29D933998();

  v13 = [v11 hk:v10 latestPossibleDateWithDayIndex:?];
  sub_29D933998();

  v14 = MEMORY[0x29EDBA210];
  sub_29D92F52C(0, &qword_2A17B8368, &qword_2A17B3430, MEMORY[0x29EDBA210]);
  sub_29D8D5A00(0, &qword_2A17B3430, &qword_2A17B18A8, 0x29EDBAD10, v14);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v15 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(0);
  v16 = objc_opt_self();
  v17 = sub_29D933958();
  v18 = sub_29D933958();
  v19 = [v16 predicateForSamplesWithStartDate:v17 endDate:v18 options:3];

  sub_29D69567C(0, &qword_2A17B18A8, 0x29EDBAD10);
  sub_29D939AB8();

  v20 = MEMORY[0x29EDB9980];
  sub_29D92F52C(0, &qword_2A17B8370, &qword_2A17B8378, MEMORY[0x29EDB9980]);
  sub_29D8D5A00(0, &qword_2A17B8378, &qword_2A17B18A8, 0x29EDBAD10, v20);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED63750](KeyPath, 0);
  sub_29D939B28();
  v22 = *(v28 + *(v15 + 20));
  v23 = swift_task_alloc();
  *(v29 + 152) = v23;
  *v23 = v29;
  v23[1] = sub_29D92E460;
  v24 = *(v29 + 40);

  return MEMORY[0x2A1C5B578](v22, v24);
}

uint64_t sub_29D92E460(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_29D92E6F0;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_29D92E588;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D92E588()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v13 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v8 + 16) = *(v0 + 24);
  v9 = sub_29D79E174(sub_29D92F598, v8, v1);

  (*(v5 + 8))(v6, v7);
  v10 = *(v3 + 8);
  v10(v13, v4);
  v10(v2, v4);

  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t sub_29D92E6F0()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_29D92E7F4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v78 = a3;
  v5 = sub_29D9331D8();
  v79 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5, v6);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v70 - v10;
  sub_29D92F5B4(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  v14 = MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v20 = &v70 - v19;
  MEMORY[0x2A1C7C4A8](v18, v21);
  v75 = &v70 - v22;
  v23 = sub_29D933CE8();
  v76 = *(v23 - 8);
  v77 = v23;
  MEMORY[0x2A1C7C4A8](v23, v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = [v27 quantity];
  [v28 doubleValueForUnit_];
  v30 = v29;

  sub_29D92EF7C(v27, v26);
  v31 = objc_opt_self();
  v72 = v27;
  sub_29D93A6B8();
  v32 = sub_29D933148();
  v33 = *(v79 + 8);
  v73 = v5;
  v33(v11, v5);
  v74 = v26;
  v34 = sub_29D933BB8();
  v35 = sub_29D933BB8();
  v36 = [v31 hk:v32 julianDayDateIntervalFromOpenUpperBoundDateInterval:v34 sourceCalendar:v35 localCalendar:?];

  if (v36)
  {
    sub_29D933168();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v79;
  v39 = v73;
  (*(v79 + 56))(v20, v37, 1, v73);
  v40 = v75;
  sub_29D92F608(v20, v75);
  sub_29D92F688(v40, v16);
  if ((*(v38 + 48))(v16, 1, v39) != 1)
  {
    v55 = *(v38 + 32);
    v56 = v71;
    v55(v71, v16, v39);
    v57 = [v72 metadata];
    if (!v57)
    {
      goto LABEL_20;
    }

    v58 = v57;
    v59 = sub_29D939C68();

    v60 = sub_29D939D68();
    if (!*(v59 + 16))
    {

      goto LABEL_20;
    }

    v62 = sub_29D6907F0(v60, v61);
    v64 = v63;

    if (v64)
    {
      sub_29D694294(*(v59 + 56) + 32 * v62, v80);

      if (swift_dynamicCast())
      {
        v56 = v71;
        if (v81)
        {
          v65 = sub_29D6E6050(&unk_2A243FC70);
LABEL_21:
          sub_29D92F750(v40, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
          (*(v76 + 8))(v74, v77);
          v68 = v78;
          v55(v78, v56, v39);
          v69 = type metadata accessor for AFibBurdenPDFChartPoint(0);
          *&v68[*(v69 + 20)] = v30;
          *&v68[*(v69 + 24)] = v65;
          return (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
        }

LABEL_20:
        v65 = MEMORY[0x29EDCA1A0];
        goto LABEL_21;
      }
    }

    else
    {
    }

    v56 = v71;
    goto LABEL_20;
  }

  sub_29D92F750(v16, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v41 = sub_29D937898();
  sub_29D69C6C0(v41, qword_2A1A2BF28);
  v42 = v72;
  v43 = sub_29D937878();
  v44 = sub_29D93A298();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v40;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v80[0] = v48;
    *v45 = 136446467;
    v81 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(0);
    sub_29D92F708();
    v49 = sub_29D939DA8();
    v51 = sub_29D6C2364(v49, v50, v80);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2117;
    *(v45 + 14) = v42;
    *v47 = v42;
    v52 = v42;
    _os_log_impl(&dword_29D677000, v43, v44, "[%{public}s] Invalid date interval for AFibBurden sample: %{sensitive}@", v45, 0x16u);
    sub_29D6ACA3C(v47);
    MEMORY[0x29ED6BE30](v47, -1, -1);
    sub_29D69417C(v48);
    MEMORY[0x29ED6BE30](v48, -1, -1);
    MEMORY[0x29ED6BE30](v45, -1, -1);

    v53 = MEMORY[0x29EDB98E8];
    v54 = v46;
  }

  else
  {

    v53 = MEMORY[0x29EDB98E8];
    v54 = v40;
  }

  sub_29D92F750(v54, &qword_2A17B3A18, v53);
  (*(v76 + 8))(v74, v77);
  v66 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  return (*(*(v66 - 8) + 56))(v78, 1, 1, v66);
}

uint64_t sub_29D92EF7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_29D92F5B4(0, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = sub_29D933D38();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 _timeZoneName];
  if (!v15)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v29 = sub_29D937898();
    sub_29D69C6C0(v29, qword_2A1A2BF28);
    v30 = a1;
    v19 = sub_29D937878();
    v20 = sub_29D93A298();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v21 = 136446467;
    v40 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(0);
    sub_29D92F708();
    v31 = sub_29D939DA8();
    v33 = sub_29D6C2364(v31, v32, &v41);

    *(v21 + 4) = v33;
    *(v21 + 12) = 2117;
    *(v21 + 14) = v30;
    *v22 = v30;
    v34 = v30;
    v28 = "[%{public}s] AFibBurden sample with missing timezone: %{sensitive}@";
    goto LABEL_11;
  }

  v16 = v15;
  sub_29D939D68();

  sub_29D933CF8();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_29D92F750(v9, &qword_2A17B3428, MEMORY[0x29EDB9D58]);
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2BF28);
    v18 = a1;
    v19 = sub_29D937878();
    v20 = sub_29D93A298();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v21 = 136446467;
    v40 = type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(0);
    sub_29D92F708();
    v24 = sub_29D939DA8();
    v26 = sub_29D6C2364(v24, v25, &v41);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2117;
    *(v21 + 14) = v18;
    *v22 = v18;
    v27 = v18;
    v28 = "[%{public}s] AFibBurden sample with non-existing timezone: %{sensitive}@";
LABEL_11:
    _os_log_impl(&dword_29D677000, v19, v20, v28, v21, 0x16u);
    sub_29D6ACA3C(v22);
    MEMORY[0x29ED6BE30](v22, -1, -1);
    sub_29D69417C(v23);
    MEMORY[0x29ED6BE30](v23, -1, -1);
    MEMORY[0x29ED6BE30](v21, -1, -1);
LABEL_12:

    v35 = sub_29D933CE8();
    return (*(*(v35 - 8) + 16))(a2, v3, v35);
  }

  (*(v11 + 32))(v14, v9, v10);
  v37 = *(v3 + *(type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(0) + 28));
  v38 = sub_29D933D08();
  v39 = [v37 calendarForTimeZone_];

  sub_29D933C08();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_29D92F488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D68E20C;

  return sub_29D92DDD4(a1, a2);
}

void sub_29D92F52C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D8D5A00(255, a3, &qword_2A17B18A8, 0x29EDBAD10, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D92F5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D92F608(uint64_t a1, uint64_t a2)
{
  sub_29D92F5B4(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D92F688(uint64_t a1, uint64_t a2)
{
  sub_29D92F5B4(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D92F708()
{
  result = qword_2A17B8380;
  if (!qword_2A17B8380)
  {
    type metadata accessor for AFibBurdenPDFChartJulianIndexedSevenDaySampleQuery(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B8380);
  }

  return result;
}

uint64_t sub_29D92F750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D92F5B4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D92F7E0()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D92F894@<X0>(uint64_t a2@<X8>)
{
  sub_29D92FB2C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() seedExpiredLinkURL];
  sub_29D939D68();

  sub_29D9336E8();
  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_29D6D96C0(v7);
    sub_29D92FB2C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93F680;
    v18[1] = v2;
    swift_getMetatypeMetadata();
    v13 = sub_29D939DA8();
    v15 = v14;
    v16 = MEMORY[0x29EDC99B0];
    *(v12 + 56) = MEMORY[0x29EDC99B0];
    v17 = sub_29D69AD24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 64) = v17;
    *(v12 + 72) = 0xD00000000000001DLL;
    *(v12 + 80) = 0x800000029D970320;
    sub_29D939D88();
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(a2, v7, v9);
  }

  return result;
}

void sub_29D92FB2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D92FB90@<X0>(uint64_t a2@<X8>)
{
  sub_29D92FB2C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v17 - v6;
  sub_29D939D68();
  sub_29D9336E8();
  v8 = sub_29D9336F8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29D6D96C0(v7);
    sub_29D92FB2C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29D93F680;
    v17[1] = v2;
    swift_getMetatypeMetadata();
    v12 = sub_29D939DA8();
    v14 = v13;
    v15 = MEMORY[0x29EDC99B0];
    *(v11 + 56) = MEMORY[0x29EDC99B0];
    v16 = sub_29D69AD24();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 64) = v16;
    *(v11 + 72) = 0xD000000000000020;
    *(v11 + 80) = 0x800000029D970340;
    sub_29D939D88();
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {

    return (*(v9 + 32))(a2, v7, v8);
  }

  return result;
}

uint64_t sub_29D92FE00@<X0>(uint64_t a2@<X8>)
{
  sub_29D92FB2C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v18 - v6;
  v8 = [objc_opt_self() electrocardiogramLearnMoreURL];
  sub_29D939D68();

  sub_29D9336E8();
  v9 = sub_29D9336F8();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_29D6D96C0(v7);
    sub_29D92FB2C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_29D93F680;
    v18[1] = v2;
    swift_getMetatypeMetadata();
    v13 = sub_29D939DA8();
    v15 = v14;
    v16 = MEMORY[0x29EDC99B0];
    *(v12 + 56) = MEMORY[0x29EDC99B0];
    v17 = sub_29D69AD24();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 64) = v17;
    *(v12 + 72) = 0xD00000000000001BLL;
    *(v12 + 80) = 0x800000029D970370;
    sub_29D939D88();
    result = sub_29D93AB28();
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(a2, v7, v9);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenFeatureRegulatoryInfoTransformProvider(uint64_t a1)
{
  result = qword_2A17B8388;
  if (!qword_2A17B8388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D930124()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

double sub_29D9301D0()
{
  v0 = [objc_opt_self() aFibBurdenAppleSupportURL];
  sub_29D939D68();

  sub_29D9336E8();

  return result;
}

void sub_29D930258(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_displayType);
  v4 = [v3 presentation];
  v5 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  v6 = sub_29D93A048();
  v7 = [v4 adjustedValueForDaemonValue_];

  if (sub_29D6AA2D8(*(a1 + *(v5 + 24))))
  {
    v8 = HKAFibBurdenClampedLowerBoundLocalizedString();
    v9 = sub_29D939D68();
    v11 = v10;

    sub_29D930454(v9, v11);
  }

  else
  {
    v12 = [*(v1 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unitController) localizedDisplayNameForDisplayType:v3 value:v7];
    v13 = sub_29D939D68();
    v15 = v14;

    v16 = [v3 hk:*(v1 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_unit) numberFormatterForUnit:?];
    v17 = HKFormattedStringFromValue();
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = sub_29D939D68();
    v21 = v20;

    sub_29D935E88();
    MEMORY[0x29ED6A240](v13, v15);

    sub_29D930454(v19, v21);

    sub_29D936978();
  }
}

uint64_t sub_29D930454(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D9334C8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  sub_29D935E88();
  sub_29D9334B8();
  sub_29D933478();
  if (qword_2A17B0CB0 != -1)
  {
    swift_once();
  }

  sub_29D69ADE0();

  sub_29D933488();
  if (qword_2A17B0CA0 != -1)
  {
    swift_once();
  }

  sub_29D930744();

  return sub_29D933488();
}

uint64_t sub_29D9305BC()
{
  sub_29D930798(v0 + OBJC_IVAR____TtC5Heart36AFibBurdenPDFAFibAnnotationFormatter_viewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFAFibAnnotationFormatter(uint64_t a1)
{
  result = qword_2A17B83B8;
  if (!qword_2A17B83B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9306A4(uint64_t a1)
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel(319);
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

unint64_t sub_29D930744()
{
  result = qword_2A17B83C8;
  if (!qword_2A17B83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B83C8);
  }

  return result;
}

uint64_t sub_29D930798(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenPDFChartViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D930804(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  return a3(v3, a2);
}

uint64_t sub_29D930838(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    v4 = 5;
  }

  else if (a1 == 1)
  {
    v4 = 6;
  }

  else
  {
    v6 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = sub_29D937878();
    v9 = sub_29D93A298();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v16);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = a1;
      _os_log_impl(&dword_29D677000, v8, v9, "[%s] User encountered notification authorization status other than authorized or denied (%ld), proceeding", v10, 0x16u);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v10, -1, -1);
    }

    v4 = 5;
    a2 = v6;
  }

  return a2(v4);
}

id sub_29D930A10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HypertensionNotificationsOnboardingModel();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D930ABC()
{
  result = qword_2A17B83F0;
  if (!qword_2A17B83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B83F0);
  }

  return result;
}

unint64_t sub_29D930B24()
{
  result = qword_2A17B83F8;
  if (!qword_2A17B83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B83F8);
  }

  return result;
}

uint64_t sub_29D930B7C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x29EDB8E78]) initWithSuiteName_];
  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x29EDB8E78]) initWithSuiteName_];
  if (!v7)
  {

    return MEMORY[0x29EDCA190];
  }

  v8 = v7;
  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D941B10;
  sub_29D939D68();
  v10 = sub_29D9348D8();
  objc_allocWithZone(v10);
  v11 = v6;
  *(v9 + 32) = sub_29D9348B8();
  sub_29D939D68();
  objc_allocWithZone(v10);
  v12 = v8;
  *(v9 + 40) = sub_29D9348B8();
  if (a1 && a3)
  {
    v13 = objc_allocWithZone(v10);
    v14 = a1;
    sub_29D935E88();
    sub_29D9348B8();
    MEMORY[0x29ED6A300]();
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();

    return v9;
  }

  else
  {

    return v9;
  }
}

uint64_t sub_29D930DB8(unint64_t a1)
{
  sub_29D931E40(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D931F70(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v14 = sub_29D93A928();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x29EDCA190];
  if (!v14)
  {
LABEL_11:
    v29 = v15;
    sub_29D700D5C();
    sub_29D932004(0);
    sub_29D93209C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);
    sub_29D93209C(&qword_2A1A24998, sub_29D932004, MEMORY[0x29EDC9A70]);
    sub_29D9381D8();
    sub_29D93209C(&qword_2A1A24AF0, sub_29D931F70, MEMORY[0x29EDB89D8]);
    v23 = sub_29D938418();
    (*(v10 + 8))(v13, v9);
    return v23;
  }

  v29 = MEMORY[0x29EDCA190];
  result = sub_29D93AAD8();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v26 = v9;
    v27 = v14;
    v24 = v13;
    v25 = v10;
    v17 = 0;
    v18 = a1;
    v19 = a1 & 0xC000000000000001;
    v20 = (v4 + 8);
    do
    {
      if (v19)
      {
        v21 = MEMORY[0x29ED6AE30](v17, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v17 + 32);
      }

      v22 = v21;
      ++v17;
      v28 = sub_29D9348C8();
      sub_29D931EE0(0);
      sub_29D93209C(&qword_2A1A24A80, sub_29D931EE0, MEMORY[0x29EDB8A58]);
      sub_29D938468();

      sub_29D93209C(&qword_2A1A24B80, sub_29D931E40, MEMORY[0x29EDB8908]);
      sub_29D938418();

      (*v20)(v7, v3);
      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
    }

    while (v27 != v17);
    v15 = v29;
    v10 = v25;
    v9 = v26;
    v13 = v24;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D9311E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

char *sub_29D93125C()
{
  v1 = *(v0 + 48);
  [v1 removeHeartRhythmAvailabilityObserver_];
  v2 = *(v0 + 56);
  [v2 unregisterObserver_];

  v3 = OBJC_IVAR____TtC5Heart36BradycardiaFeatureStatusAvailability__featureStatus;
  sub_29D932038(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_29D931350()
{
  sub_29D93125C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BradycardiaFeatureStatusAvailability(uint64_t a1)
{
  result = qword_2A1A25030;
  if (!qword_2A1A25030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9313FC(uint64_t a1)
{
  sub_29D932038(319, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D9314F0@<X0>(uint64_t a2@<X8>)
{
  if (sub_29D9347C8())
  {
    if (sub_29D9316CC())
    {
      v3 = objc_opt_self();
      if ([v3 isBackgroundHeartRateEnabled])
      {
        v4 = [v3 isBradycardiaDetectionEnabled];
        v5 = sub_29D9346E8();
        v6 = *(v5 - 8);
        v17 = (v6 + 56);
        if (v4)
        {
          v7 = MEMORY[0x29EDC1760];
        }

        else
        {
          v7 = MEMORY[0x29EDC1768];
        }

        (*(v6 + 104))(a2, *v7, v5);
        v9 = *v17;
        v11 = a2;
        v12 = 0;
        v10 = v5;
        goto LABEL_12;
      }

      v13 = MEMORY[0x29EDC1758];
    }

    else
    {
      v13 = MEMORY[0x29EDC1750];
    }

    v14 = *v13;
    v15 = sub_29D9346E8();
    v18 = *(v15 - 8);
    (*(v18 + 104))(a2, v14, v15);
    v9 = *(v18 + 56);
    v11 = a2;
    v12 = 0;
    v10 = v15;
  }

  else
  {
    v8 = sub_29D9346E8();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a2;
    v12 = 1;
  }

LABEL_12:

  return v9(v11, v12, 1, v10);
}

id sub_29D9316CC()
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() activePairedWatchSupportsHeartRateMotionContexts];
  if (result)
  {
    result = [objc_opt_self() isBradycardiaDetectionSupportedOnActiveWatch];
    if (result)
    {
      v7 = *(v0 + 48);
      sub_29D9339E8();
      v8 = sub_29D933958();
      (*(v2 + 8))(v5, v1);
      v9 = [v7 isHeartAgeGatingEnabledOnActiveWatchWithCurrentDate_];

      return (v9 ^ 1);
    }
  }

  return result;
}

void sub_29D9317FC()
{
  v1 = v0;
  [*(v0 + 48) addHeartRhythmAvailabilityObserver_];
  [*(v0 + 56) registerObserver_];
  v2 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v3 = sub_29D939D28();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = v1[4];
    v6 = v1[5];
    v7 = v4;
    v8 = sub_29D930B7C(v4, v5, v6);

    v1[8] = v8;

    v9 = sub_29D935E88();
    sub_29D930DB8(v9);

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_29D931E38;
    *(v11 + 24) = v10;
    sub_29D700D5C();
    sub_29D93209C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);
    v12 = sub_29D938588();

    v1[9] = v12;
  }
}

uint64_t sub_29D9319D0(uint64_t a1)
{
  sub_29D6D278C(0);
  v3 = MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D9314F0(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D700C8C(v8, v5);
    sub_29D9383D8();
    return sub_29D700CF0(v8);
  }

  return result;
}

uint64_t sub_29D931CC0(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D931D3C(uint64_t a1, uint64_t *a2)
{
  sub_29D6D278C(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12 - v9;
  sub_29D700C8C(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v10, v7);

  sub_29D9383D8();
  return sub_29D700CF0(v10);
}

void sub_29D931E40(uint64_t a1)
{
  if (!qword_2A1A24B78)
  {
    sub_29D931EE0(255);
    sub_29D93209C(&qword_2A1A24A80, sub_29D931EE0, MEMORY[0x29EDB8A58]);
    v1 = sub_29D9380F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B78);
    }
  }
}

void sub_29D931EE0(uint64_t a1)
{
  if (!qword_2A1A24A78)
  {
    sub_29D6C5040(255, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
    v1 = sub_29D9382A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24A78);
    }
  }
}

void sub_29D931F70(uint64_t a1)
{
  if (!qword_2A1A24AE8)
  {
    sub_29D700D5C();
    sub_29D93209C(&qword_2A1A24A90, sub_29D700D5C, MEMORY[0x29EDB8A00]);
    v1 = sub_29D9381C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24AE8);
    }
  }
}

void sub_29D932038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D93209C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_29D9320E4(void *a1)
{
  sub_29D932038(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v25 - v7;
  sub_29D6D278C(0);
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v25 - v15;
  *(v1 + 2) = sub_29D939D68();
  *(v1 + 3) = v17;
  *(v1 + 4) = sub_29D939D68();
  *(v1 + 5) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x29EDBAEB8]) init];
  v20 = MEMORY[0x29EDCA190];
  *(v1 + 7) = v19;
  *(v1 + 8) = v20;
  *(v1 + 9) = 0;
  v21 = OBJC_IVAR____TtC5Heart36BradycardiaFeatureStatusAvailability__featureStatus;
  v22 = sub_29D9346E8();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  sub_29D700C8C(v16, v13);
  sub_29D938398();
  sub_29D700CF0(v16);
  (*(v5 + 32))(&v1[v21], v8, v4);
  *(v1 + 6) = a1;
  v23 = a1;
  sub_29D9314F0(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v16, v13);

  sub_29D9383D8();
  sub_29D700CF0(v16);
  sub_29D9317FC();
  return v1;
}

uint64_t sub_29D932378@<X0>(uint64_t a1@<X8>)
{
  sub_29D938C18();
  result = sub_29D9392D8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_29D9323F8(uint64_t a1)
{
  type metadata accessor for ViewSandboxCollectionViewCell();
  sub_29D9329F0();
  return sub_29D9350D8();
}

uint64_t sub_29D932448(uint64_t a1)
{
  v2 = sub_29D93299C();

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29D9325C0()
{
  v1 = v0;
  sub_29D9328D8(0);
  v3 = objc_allocWithZone(v2);
  v4 = sub_29D938CF8();
  v5 = [v4 view];
  if (v5)
  {
    v6 = OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView;
    v7 = *&v0[OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView];
    *&v0[OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView] = v5;
    v8 = v5;

    v9 = [v1 contentView];
    if (!*&v1[v6])
    {
LABEL_9:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 addSubview_];
  }

  v11 = *&v1[OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v1 contentView];
  [v12 hk:v13 alignConstraintsWithView:?];
}

id sub_29D9326E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ViewSandboxCollectionViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D9327B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  swift_beginAccess();
  return sub_29D69F108(v1 + v3, a1);
}

uint64_t sub_29D932810(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  return sub_29D69F230(a1);
}

void sub_29D9328D8(uint64_t a1)
{
  if (!qword_2A17B8410)
  {
    sub_29D932934();
    v1 = sub_29D938D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B8410);
    }
  }
}

unint64_t sub_29D932934()
{
  result = qword_2A17B8418;
  if (!qword_2A17B8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8418);
  }

  return result;
}

unint64_t sub_29D93299C()
{
  result = qword_2A17B8420;
  if (!qword_2A17B8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B8420);
  }

  return result;
}

unint64_t sub_29D9329F0()
{
  result = qword_2A17B5548;
  if (!qword_2A17B5548)
  {
    type metadata accessor for ViewSandboxCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B5548);
  }

  return result;
}

id sub_29D932A68()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A17B8428 = result;
  return result;
}

uint64_t sub_29D932AC0()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1090);
  sub_29D69C6C0(v0, qword_2A17D1090);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932B68()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10A8);
  sub_29D69C6C0(v0, qword_2A17D10A8);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932C10()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10C0);
  sub_29D69C6C0(v0, qword_2A17D10C0);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932CB8()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10D8);
  sub_29D69C6C0(v0, qword_2A17D10D8);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932D60()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D10F0);
  sub_29D69C6C0(v0, qword_2A17D10F0);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932E08()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1108);
  sub_29D69C6C0(v0, qword_2A17D1108);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932EB0()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1120);
  sub_29D69C6C0(v0, qword_2A17D1120);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D932F58()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1138);
  sub_29D69C6C0(v0, qword_2A17D1138);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

uint64_t sub_29D933000()
{
  v0 = sub_29D9376C8();
  sub_29D6FD494(v0, qword_2A17D1150);
  sub_29D69C6C0(v0, qword_2A17D1150);
  if (qword_2A17B0DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2A17B8428;
  return sub_29D9376B8();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}