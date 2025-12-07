char *sub_1E14139CC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E141D0E8(*(a2 + 48) + 136 * v6, v20);
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();

      sub_1E166DD10(v19, v20[8]);
      sub_1E166D858(v19, v20[7]);
      sub_1E1AF764C();
      sub_1E1AF764C();
      sub_1E1AF764C();
      v9 = sub_1E1AF767C();
      result = sub_1E141D144(v20);
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
        result = (v11 + 136 * v3);
        v12 = (v11 + 136 * v6);
        if (v3 != v6 || result >= v12 + 136)
        {
          result = memmove(result, v12, 0x88uLL);
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

uint64_t sub_1E1413C48(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
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

void sub_1E1413F60(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v12 = sub_1E1AF767C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1E1414118(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E134E724(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_1E1AF6F2C();
      result = sub_1E134B88C(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
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

      else if (v10 >= v8 || v3 >= v10)
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

  return result;
}

void sub_1E14142BC(int64_t a1, uint64_t a2)
{
  v38 = sub_1E1AF468C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1E1AF6F0C();
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
      sub_1E141D20C(&qword_1EE1D29A0, MEMORY[0x1E69AB1C8], MEMORY[0x1E69AB1D0]);
      v22 = sub_1E1AF5D0C();
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

uint64_t sub_1E14145DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1E1AF761C();
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

unint64_t sub_1E141474C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1E1AF761C();
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
          result = v15 + 88 * v3;
          v16 = (v15 + 88 * v6);
          if (v3 != v6 || result >= v16 + 88)
          {
            result = memmove(result, v16, 0x58uLL);
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

  return result;
}

uint64_t sub_1E14148C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_1E1AF761C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 48 * v3);
          v19 = (v17 + 48 * v6);
          if (v3 != v6 || v18 >= v19 + 3)
          {
            v9 = *v19;
            v10 = v19[2];
            v18[1] = v19[1];
            v18[2] = v10;
            *v18 = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E1414A3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E134E724(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_1E1AF6F2C();
      result = sub_1E134B88C(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
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

      else if (v10 >= v8 || v3 >= v10)
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

  return result;
}

void sub_1E1414BE0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      v10 = sub_1E1AF767C();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

void sub_1E1414D9C(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    v25 = v4;
    do
    {
      v9 = 32 * v6;
      v10 = v2;
      v11 = *(*(v2 + 48) + 32 * v6 + 16);
      v12 = v8;
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      MEMORY[0x1E6900360](v11);
      sub_1E1AF764C();
      v13 = sub_1E1AF767C();

      v8 = v12;
      v14 = v13 & v7;
      if (v3 >= v12)
      {
        if (v14 < v12)
        {
          v4 = v25;
          v2 = v10;
        }

        else
        {
          v4 = v25;
          v2 = v10;
          if (v3 >= v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v25;
        v2 = v10;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_11:
          v15 = *(v2 + 48);
          v16 = (v15 + 32 * v3);
          v17 = (v15 + v9);
          if (32 * v3 != v9 || v16 >= v17 + 2)
          {
            v18 = v17[1];
            *v16 = *v17;
            v16[1] = v18;
          }

          v19 = *(v2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(v2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v24;
    ++*(v2 + 36);
  }
}

char *sub_1E1414FAC(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E141CF00(*(a2 + 48) + 40 * v6, v21);
      sub_1E1AF762C();
      _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
      v9 = sub_1E1AF767C();
      result = sub_1E138867C(v21);
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
        v12 = v11 + 40 * v3;
        v13 = (v11 + 40 * v6);
        if (v3 != v6 || v12 >= v13 + 40)
        {
          v14 = *v13;
          v15 = v13[1];
          *(v12 + 32) = *(v13 + 4);
          *v12 = v14;
          *(v12 + 16) = v15;
        }

        v16 = *(a2 + 56);
        result = (v16 + 88 * v3);
        v17 = (v16 + 88 * v6);
        if (v3 != v6 || result >= v17 + 88)
        {
          result = memmove(result, v17, 0x58uLL);
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

  return result;
}

uint64_t sub_1E1415168(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E1AF762C();
      v10 = [swift_unknownObjectRetain() hash];
      MEMORY[0x1E6900360](v10);
      v11 = sub_1E1AF767C();
      result = swift_unknownObjectRelease();
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
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
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

  return result;
}

uint64_t sub_1E1415328(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E1AF6F0C() + 1) & ~v5;
    do
    {
      sub_1E134E724(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1E1AF6F2C();
      result = sub_1E134B88C(v25);
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
          v20 = v19 + 24 * v3;
          v21 = (v19 + 24 * v6);
          if (v3 != v6 || v20 >= v21 + 24)
          {
            v9 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v9;
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

void sub_1E14154D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D0, &unk_1E1B08360);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1E137A5C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1E1301CF0(v25, (*(v4 + 56) + v22));
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
}

void *sub_1E1415690()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37F8, &qword_1E1B083B8);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        result = sub_1E141CF00(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E1415834()
{
  v1 = v0;
  v30 = sub_1E1AEFCCC();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36E0, &qword_1E1B081B8);
  v3 = *v0;
  v4 = sub_1E1AF729C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28[1] = v32 + 32;
    for (v28[2] = v32 + 16; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v22, v23))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = 40 * v18;
      sub_1E134E724(*(v3 + 48) + 40 * v18, v33);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v22 = v29;
      v23 = v30;
      (*(v32 + 16))(v29, *(v3 + 56) + v21, v30);
      v24 = v31;
      v25 = *(v31 + 48) + v19;
      v26 = v33[0];
      v27 = v33[1];
      *(v25 + 32) = v34;
      *v25 = v26;
      *(v25 + 16) = v27;
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

        v1 = v28[0];
        v5 = v31;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

id sub_1E1415B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5CD0, &unk_1E1B081D0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        sub_1E134E724(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1E1415CB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B8, &qword_1E1B19E10);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        v18 = 40 * v17;
        sub_1E134E724(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1E137A5C4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1E1301CF0(v22, (*(v4 + 56) + v17));
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

void sub_1E1415E90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB60D0, &unk_1E1B19D80);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void *sub_1E1416008()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3790, &unk_1E1B082E0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        result = sub_1E134E724(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = *v18;
        v21 = v18[1];
        v22 = v26;
        v23 = v25[1];
        *v19 = v25[0];
        *(v19 + 16) = v23;
        *(v19 + 32) = v22;
        v24 = (*(v4 + 56) + 32 * v17);
        *v24 = v20;
        v24[1] = v21;
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

void *sub_1E14161A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3858, &unk_1E1B08450);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v22[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + (v14 << 6));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v22 = (*(v4 + 56) + (v14 << 6));
      v22[2] = v20;
      v22[3] = v21;
      *v22 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_1E141637C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - v8;
  v45 = sub_1E1AEFEAC();
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1E1AF729C();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || result >= &v14[8 * v15])
    {
      result = memmove(result, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        result = (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }

  return result;
}

void *sub_1E14166C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6130, &qword_1E1B19DE0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        v19 = v18;
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

id sub_1E1416844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3860, &unk_1E1B08460);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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

id sub_1E14169B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3850, &unk_1E1B25810);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        sub_1E134E724(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void sub_1E1416B58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3750, &unk_1E1B25740);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1E1416CE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5EC0, &unk_1E1B19C00);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1E1416E60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6080, &unk_1E1B19D30);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 40 * v17;
        sub_1E134E724(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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
}

void sub_1E1417014()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5DE0, &unk_1E1B08300);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1E141D0E8(*(v2 + 48) + 136 * v17, v26);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 136 * v17;
        v20 = v26[7];
        v21 = v26[6];
        v22 = v26[5];
        *(v19 + 128) = v27;
        *(v19 + 96) = v21;
        *(v19 + 112) = v20;
        *(v19 + 80) = v22;
        v23 = v26[4];
        v24 = v26[2];
        v25 = v26[1];
        *(v19 + 48) = v26[3];
        *(v19 + 64) = v23;
        *(v19 + 16) = v25;
        *(v19 + 32) = v24;
        *v19 = v26[0];
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void *sub_1E14171E4()
{
  v1 = v0;
  v29 = sub_1E1AF227C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37C8, &unk_1E1B257A0);
  v3 = *v0;
  v4 = sub_1E1AF729C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_1E1417480(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_1E1AF729C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_1E1300B24(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }
}

void *sub_1E1417624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5DA0, &unk_1E1B08190);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1E14177AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

id sub_1E14178F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3818, &unk_1E1B25800);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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

void sub_1E1417A80(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_1E1AF729C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

void *sub_1E1417D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB60C0, &unk_1E1B081F0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1E141CF5C(&v32, &v31);
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

void *sub_1E1417EA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3798, &unk_1E1B25780);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1E141802C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        sub_1E134E724(*(v4 + 48) + 40 * v19, v24);
        v20 = *(v6 + 48) + 40 * v19;
        v21 = *(*(v4 + 56) + 16 * v19);
        v22 = v24[0];
        v23 = v24[1];
        *(v20 + 32) = v25;
        *v20 = v22;
        *(v20 + 16) = v23;
        *(*(v6 + 56) + 16 * v19) = v21;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1E14181B8()
{
  v1 = v0;
  v33 = sub_1E1AF468C();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E50, &unk_1E1B08330);
  v3 = *v0;
  v4 = sub_1E1AF729C();
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

char *sub_1E1418438()
{
  v1 = v0;
  v31 = sub_1E1AF468C();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6060, &unk_1E1B08350);
  v3 = *v0;
  v4 = sub_1E1AF729C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void *sub_1E14186BC()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8, &unk_1E1B02F50);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v28 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5FD0, &qword_1E1B083B0);
  v3 = *v0;
  v4 = sub_1E1AF729C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28[1] = v32 + 32;
    for (v28[2] = v32 + 16; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v22, v23))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = 40 * v18;
      sub_1E134E724(*(v3 + 48) + 40 * v18, v33);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v22 = v29;
      v23 = v30;
      (*(v32 + 16))(v29, *(v3 + 56) + v21, v30);
      v24 = v31;
      v25 = *(v31 + 48) + v19;
      v26 = v33[0];
      v27 = v33[1];
      *(v25 + 32) = v34;
      *v25 = v26;
      *(v25 + 16) = v27;
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

        v1 = v28[0];
        v5 = v31;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void *sub_1E1418960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F30, &unk_1E1B08280);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1E1418AAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37E8, &unk_1E1B08390);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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

void *sub_1E1418C10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37E0, &unk_1E1B257C0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;

        result = sub_1E1300E34(v25, v26);
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

void sub_1E1418DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D60, &unk_1E1B08270);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        v19 = (*(v2 + 48) + 40 * v17);
        v21 = *v19;
        v20 = v19[1];
        v23 = v19[2];
        v22 = v19[3];
        v24 = v19[4];
        v17 *= 16;
        v25 = (*(v2 + 56) + v17);
        v26 = *v25;
        v27 = v25[1];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v28[2] = v23;
        v28[3] = v22;
        v28[4] = v24;
        v29 = (*(v4 + 56) + v17);
        *v29 = v26;
        v29[1] = v27;

        v30 = v23;
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
}

void sub_1E1418F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3748, &unk_1E1B25730);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 40 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = v18[4];
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = (*(v4 + 48) + 40 * v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v21;
        v24[3] = v20;
        v24[4] = v22;
        *(*(v4 + 56) + 8 * v17) = v23;

        v25 = v21;
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
}

id sub_1E14190F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D50, &unk_1E1B08260);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        v18 = (*(v2 + 48) + 40 * v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = v18[4];
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = (*(v4 + 48) + 40 * v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v21;
        v24[3] = v20;
        v24[4] = v22;
        *(*(v4 + 56) + 8 * v17) = v23;

        v25 = v21;

        result = v23;
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

void sub_1E141928C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3740, &qword_1E1B19B40);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void *sub_1E14193F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D30, &unk_1E1B08250);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1E141CFB8(&v45, v44))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 216;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v49 = *(v21 + 64);
      v50 = v24;
      v48 = v23;
      v25 = *(v21 + 144);
      v27 = *(v21 + 96);
      v26 = *(v21 + 112);
      v53 = *(v21 + 128);
      v54 = v25;
      v51 = v27;
      v52 = v26;
      v29 = *(v21 + 176);
      v28 = *(v21 + 192);
      v30 = *(v21 + 160);
      v58 = *(v21 + 208);
      v56 = v29;
      v57 = v28;
      v55 = v30;
      v31 = *(v21 + 16);
      v45 = *v21;
      v46 = v31;
      v47 = v22;
      v32 = (*(v4 + 48) + v17);
      *v32 = v20;
      v32[1] = v19;
      v33 = *(v4 + 56) + v16;
      v34 = v46;
      *v33 = v45;
      *(v33 + 16) = v34;
      v35 = v47;
      v36 = v48;
      v37 = v50;
      *(v33 + 64) = v49;
      *(v33 + 80) = v37;
      *(v33 + 32) = v35;
      *(v33 + 48) = v36;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      *(v33 + 128) = v53;
      *(v33 + 144) = v40;
      *(v33 + 96) = v38;
      *(v33 + 112) = v39;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      *(v33 + 208) = v58;
      *(v33 + 176) = v42;
      *(v33 + 192) = v43;
      *(v33 + 160) = v41;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1E1419604()
{
  v1 = v0;
  v29 = sub_1E1AEFE6C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37D8, &unk_1E1B257B0);
  v3 = *v0;
  v4 = sub_1E1AF729C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_1E141986C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3788, &unk_1E1B25770);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_1E14199DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E30, &unk_1E1B08370);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
}

void *sub_1E1419B58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6070, &qword_1E1B08400);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1E141D198(&v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_1E1419D18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3838, &qword_1E1B08408);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 56) + 48 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 48 * v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v22;
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
}

void sub_1E1419E9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3700, &unk_1E1B25710);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

id sub_1E141A004()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37B0, &unk_1E1B08320);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        sub_1E134E724(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v4 + 48) + 40 * v17;
        v22 = v26;
        v23 = v25[1];
        *v21 = v25[0];
        *(v21 + 16) = v23;
        *(v21 + 32) = v22;
        v24 = (*(v4 + 56) + 16 * v17);
        *v24 = v19;
        v24[1] = v20;
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

void sub_1E141A1C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3730, &unk_1E1B08240);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1E141A338()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37C0, &unk_1E1B08340);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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
}

void sub_1E141A4C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3780, &unk_1E1B082C0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1E141A650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E10, &qword_1E1B08310);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

id sub_1E141A7B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3718, &qword_1E1B08218);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void sub_1E141A914()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36C0, &unk_1E1B256C0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
}

void *sub_1E141AA7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B8, &unk_1E1B08180);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E141ABEC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        sub_1E134E724(*(v4 + 48) + 40 * v19, v24);
        v20 = *(*(v4 + 56) + 8 * v19);
        v21 = *(v6 + 48) + 40 * v19;
        v22 = v24[0];
        v23 = v24[1];
        *(v21 + 32) = v25;
        *v21 = v22;
        *(v21 + 16) = v23;
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_1E141AD70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37A0, &unk_1E1B25790);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

void sub_1E141AEEC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *sub_1E141B04C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DD0, &unk_1E1B082F0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        v18 = 152 * v17;
        v19 = *(v2 + 48) + 152 * v17;
        v20 = *(v19 + 32);
        v21 = *(v19 + 48);
        v22 = *(v19 + 80);
        v41 = *(v19 + 64);
        v42 = v22;
        v40 = v21;
        v23 = *(v19 + 96);
        v24 = *(v19 + 112);
        v25 = *(v19 + 128);
        v46 = *(v19 + 144);
        v44 = v24;
        v45 = v25;
        v43 = v23;
        v26 = *(v19 + 16);
        v37 = *v19;
        v38 = v26;
        v39 = v20;
        v27 = 392 * v17;
        memcpy(__dst, (*(v2 + 56) + 392 * v17), 0x188uLL);
        v28 = *(v4 + 48) + v18;
        v29 = v43;
        v30 = v44;
        v31 = v45;
        *(v28 + 144) = v46;
        *(v28 + 112) = v30;
        *(v28 + 128) = v31;
        *(v28 + 96) = v29;
        v32 = v39;
        v33 = v40;
        v34 = v42;
        *(v28 + 64) = v41;
        *(v28 + 80) = v34;
        *(v28 + 32) = v32;
        *(v28 + 48) = v33;
        v35 = v38;
        *v28 = v37;
        *(v28 + 16) = v35;
        memcpy((*(v4 + 56) + v27), __dst, 0x188uLL);
        sub_1E141D030(&v37, v36);
        result = sub_1E141D08C(__dst, v36);
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

void sub_1E141B260()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3710, &qword_1E1B08208);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 48) + 32 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 24);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v18;
        *(*(v4 + 56) + 8 * v17) = v22;
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
}

void *sub_1E141B3F4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_1E141B568(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

id sub_1E141B6C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1E141B838(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E1AF729C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        sub_1E141CF00(*(v4 + 48) + 40 * v19, v24);
        v20 = *(*(v4 + 56) + 8 * v19);
        v21 = *(v6 + 48) + 40 * v19;
        v22 = v24[0];
        v23 = v24[1];
        *(v21 + 32) = v25;
        *v21 = v22;
        *(v21 + 16) = v23;
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1E141B9E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v4;
  v9 = sub_1E1AF729C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v7;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 64);
    for (i = (v15 + 63) >> 6; v17; *(v27 + 32) = v29)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v22 = v19 | (v14 << 6);
      v23 = 40 * v22;
      sub_1E141CF00(*(v8 + 48) + 40 * v22, v35);
      v22 *= 88;
      result = sub_1E134FD1C(*(v8 + 56) + v22, v33, a3, a4);
      v24 = *(v10 + 48) + v23;
      v25 = v36;
      v26 = v35[1];
      *v24 = v35[0];
      *(v24 + 16) = v26;
      *(v24 + 32) = v25;
      v27 = *(v10 + 56) + v22;
      v28 = v33[1];
      *v27 = v33[0];
      *(v27 + 16) = v28;
      v29 = v33[2];
      v30 = v33[3];
      v31 = v33[4];
      *(v27 + 80) = v34;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= i)
      {

        v7 = v32;
        goto LABEL_21;
      }

      v21 = *(v8 + 64 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v10;
  }

  return result;
}

void sub_1E141BBB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3770, &qword_1E1B082B0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
        swift_unknownObjectRetain();
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
}

void *sub_1E141BD40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D90, &unk_1E1B08440);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        v18 = 40 * v17;
        sub_1E134E724(*(v2 + 48) + 40 * v17, v27);
        v19 = 24 * v17;
        v20 = *(v2 + 56) + 24 * v17;
        v21 = *(v20 + 16);
        v22 = *(v4 + 48) + v18;
        v23 = *v20;
        v24 = v28;
        v25 = v27[1];
        *v22 = v27[0];
        *(v22 + 16) = v25;
        *(v22 + 32) = v24;
        v26 = *(v4 + 56) + v19;
        *v26 = v23;
        *(v26 + 16) = v21;
        swift_unknownObjectRetain();
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

void sub_1E141BEF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3778, &qword_1E1B082B8);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1E134E724(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v4 + 48) + 40 * v17;
        v22 = v26;
        v23 = v25[1];
        *v21 = v25[0];
        *(v21 + 16) = v23;
        *(v21 + 32) = v22;
        v24 = (*(v4 + 56) + 16 * v17);
        *v24 = v20;
        v24[1] = v19;
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
}

void *sub_1E141C098()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D70, &unk_1E1B082A0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        sub_1E134E724(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 16 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

id sub_1E141C248()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6030, &unk_1E1B256D0);
  v2 = *v0;
  v3 = sub_1E1AF729C();
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
        sub_1E137A5C4(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1E1301CF0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

void sub_1E141C3C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3768, &unk_1E1B25760);
  v2 = *v0;
  v3 = sub_1E1AF729C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        sub_1E141D014(v19, v20, v21);
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
}

double sub_1E141C53C(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  v4 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator__activeVideo);
  *v3 = a1;
  v3[1] = a2;
  v5 = a1;

  v7 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24VideoPlaybackCoordinator_playbackQueue);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = v7 + 40;
    do
    {
      v10 = *(v9 - 8);
      if (*v3)
      {
        v11 = v10 == *v3;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        ObjectType = swift_getObjectType();
        v13 = *(*v9 + 8);
        v14 = *(v13 + 40);
        v15 = v10;
        v14(ObjectType, v13);
      }

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_1E141C648(double a1)
{
  if (qword_1EE1EB198 != -1)
  {
    swift_once();
  }

  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE2167C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF382C();
  v3[3] = MEMORY[0x1E69E63B0];
  *v3 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(v3, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  sub_1E1AF548C();

  sub_1E1410338();
}

uint64_t sub_1E141C840(uint64_t a1)
{
  result = sub_1E1AF436C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1E141D014(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

uint64_t sub_1E141D20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SmallStoryCardLayout.init(contentView:headingLabel:descriptionLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E1308EC0(a1, a5);
  sub_1E1308EC0(a2, a5 + 40);
  sub_1E1308EC0(a3, a5 + 80);
  v9 = a5 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);

  return sub_1E141D368(a4, v9);
}

uint64_t sub_1E141D368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SmallStoryCardLayout.Metrics.contentAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF127C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SmallStoryCardLayout.Metrics.init(contentAspectRatio:headingPrimarySpace:descriptionPrimarySpace:headingSecondarySpace:descriptionSecondarySpace:descriptionBottomSpace:descriptionNumberOfLines:headingNumberOfLines:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_1E1AF127C();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  sub_1E1308EC0(a2, a9 + v19[5]);
  sub_1E1308EC0(a3, a9 + v19[7]);
  sub_1E1308EC0(a4, a9 + v19[6]);
  sub_1E1308EC0(a5, a9 + v19[8]);
  result = sub_1E1308EC0(a6, a9 + v19[9]);
  *(a9 + v19[11]) = a7;
  *(a9 + v19[10]) = a8;
  return result;
}

uint64_t SmallStoryCardLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);

  return sub_1E141D700(v3, a1);
}

uint64_t sub_1E141D700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static SmallStoryCardLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  _s11AppStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v7, a3, a4);
  v9 = v8;

  return v9;
}

uint64_t SmallStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v34 = a2;
  v12 = sub_1E1AF111C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  Width = CGRectGetWidth(v40);
  v19 = v6 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  v33 = a6;
  CGRectGetWidth(v41);
  sub_1E1AF123C();
  v21 = v20;
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  sub_1E1AF116C();
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  v32 = CGRectGetMinX(v42);
  v43.origin.x = MinX;
  v43.origin.y = MinY;
  v43.size.width = Width;
  v43.size.height = v21;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  v30 = CGRectGetWidth(v44);
  v45.origin.x = a3;
  v45.origin.y = a4;
  v45.size.width = a5;
  v45.size.height = a6;
  Height = CGRectGetHeight(v45);
  v46.origin.x = MinX;
  v46.origin.y = MinY;
  v46.size.width = Width;
  v46.size.height = v21;
  v23 = Height - CGRectGetHeight(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B8, &unk_1E1B02B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  v25 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  v26 = *(v25 + 20);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1E1300B24((v7 + 5), inited + 32);
  sub_1E1300B24(&v19[v26], inited + 80);
  sub_1E141E104(&v35, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 2;
  sub_1E141E174(&v35);
  v27 = *(v25 + 28);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_1E1300B24((v7 + 10), inited + 168);
  sub_1E1300B24(&v19[v27], inited + 216);
  sub_1E141E104(&v35, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_1E141E174(&v35);
  LOBYTE(v35) = 0;
  *(&v35 + 1) = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v15, v32, MaxY, v30, v23);
  (*(v13 + 8))(v15, v12);

  return sub_1E1AF106C();
}

uint64_t sub_1E141DB44(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E141E3AC(&qword_1ECEB3878, &protocol conformance descriptor for SmallStoryCardLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double sub_1E141DBCC(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  _s11AppStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v7, a3, a4);
  v9 = v8;

  return v9;
}

uint64_t _s11AppStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, void *a2, double a3, double a4)
{
  v27 = a2;
  v5 = sub_1E1AF127C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF162C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF165C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x1E69AB970], v9, v15);
  sub_1E1AF163C();
  (*(v6 + 16))(v8, a1, v5);
  v30 = sub_1E1AF17BC();
  v31 = MEMORY[0x1E69AB9D8];
  __swift_allocate_boxed_opaque_existential_0(v29);
  sub_1E1AF17CC();
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v29);
  v18 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  sub_1E1300B24(a1 + v18[5], v28);
  v19 = sub_1E1AF1A1C();
  v20 = MEMORY[0x1E69ABA90];
  v30 = v19;
  v31 = MEMORY[0x1E69ABA90];
  __swift_allocate_boxed_opaque_existential_0(v29);
  sub_1E1AF1A2C();
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v29);
  result = sub_1E1300B24(a1 + v18[6], v28);
  if (__OFSUB__(*(a1 + v18[10]), 1))
  {
    __break(1u);
  }

  else
  {
    v30 = v19;
    v31 = v20;
    __swift_allocate_boxed_opaque_existential_0(v29);
    sub_1E1AF1A2C();
    sub_1E1AF164C();
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1E1300B24(a1 + v18[7], v28);
    v30 = v19;
    v31 = v20;
    __swift_allocate_boxed_opaque_existential_0(v29);
    sub_1E1AF1A2C();
    sub_1E1AF164C();
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = sub_1E1300B24(a1 + v18[8], v28);
    if (!__OFSUB__(*(a1 + v18[11]), 1))
    {
      v30 = v19;
      v31 = v20;
      __swift_allocate_boxed_opaque_existential_0(v29);
      sub_1E1AF1A2C();
      sub_1E1AF164C();
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1E1300B24(a1 + v18[9], v28);
      v30 = v19;
      v31 = v20;
      __swift_allocate_boxed_opaque_existential_0(v29);
      sub_1E1AF1A2C();
      sub_1E1AF164C();
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1E1AF1A8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1E1B06D70;
      v23 = v27;
      *(v22 + 32) = v27;
      v24 = v23;
      v25 = sub_1E1AF1A9C();
      sub_1E1AF11CC();

      return (*(v14 + 8))(v17, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E141E104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47F0, &qword_1E1B05780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E141E174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47F0, &qword_1E1B05780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E141E238(uint64_t a1)
{
  result = sub_1E138432C(319, &qword_1EE1D2AE0, MEMORY[0x1E69AB888]);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SmallStoryCardLayout.Metrics(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E141E2FC(uint64_t a1)
{
  result = sub_1E1AF127C();
  if (v2 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AC0, MEMORY[0x1E69AB8E8]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E141E3AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmallStoryCardLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PrivacyTypeLayout.Metrics.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t PrivacyTypeLayout.Metrics.iconTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_1E1308EC0(a1, v1 + 8);
}

uint64_t PrivacyTypeLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_1E1308EC0(a1, v1 + 72);
}

uint64_t PrivacyTypeLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));

  return sub_1E1308EC0(a1, v1 + 112);
}

uint64_t PrivacyTypeLayout.Metrics.minimumCategoriesColumnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_1E1308EC0(a1, v1 + 192);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 232));

  return sub_1E1308EC0(a1, v1 + 232);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 272));

  return sub_1E1308EC0(a1, v1 + 272);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 312));

  return sub_1E1308EC0(a1, v1 + 312);
}

uint64_t PrivacyTypeLayout.Metrics.horizontalMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 352));

  return sub_1E1308EC0(a1, v1 + 352);
}

uint64_t PrivacyTypeLayout.Metrics.compactBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 392));

  return sub_1E1308EC0(a1, v1 + 392);
}

uint64_t PrivacyTypeLayout.Metrics.regularBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 432));

  return sub_1E1308EC0(a1, v1 + 432);
}

uint64_t PrivacyTypeLayout.Metrics.init(horizontalAlignment:iconTopSpace:iconSize:iconBaseline:titleTopSpace:detailTopSpace:maxTextWidth:minimumCategoriesColumnWidth:categoriesTopSpace:categoriesHorizontalPadding:categoriesBottomSpace:horizontalMargin:compactBottomMargin:regularBottomMargin:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __int128 *a13, __int128 *a14, __int128 *a15, __int128 *a16)
{
  v26 = *a1;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0;
  *(a9 + 152) = 0u;
  *a9 = v26;
  sub_1E1308EC0(a2, a9 + 8);
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  sub_1E1308EC0(a3, a9 + 72);
  sub_1E1308EC0(a4, a9 + 112);
  sub_1E13BC4E4(a5, a9 + 152);
  sub_1E1308EC0(a6, a9 + 192);
  sub_1E1308EC0(a7, a9 + 232);
  sub_1E1308EC0(a8, a9 + 272);
  sub_1E1308EC0(a13, a9 + 312);
  sub_1E1308EC0(a14, a9 + 352);
  sub_1E1308EC0(a15, a9 + 392);

  return sub_1E1308EC0(a16, a9 + 432);
}

uint64_t PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v19 = *a11;
  memcpy(a9, __src, 0x1D8uLL);
  v20 = *(a2 + 16);
  *(a9 + 472) = *a2;
  *(a9 + 488) = v20;
  *(a9 + 504) = *(a2 + 32);
  v21 = *(a3 + 16);
  *(a9 + 512) = *a3;
  *(a9 + 528) = v21;
  *(a9 + 544) = *(a3 + 32);
  *(a9 + 584) = *(a4 + 32);
  v22 = *(a4 + 16);
  *(a9 + 552) = *a4;
  *(a9 + 568) = v22;
  v23 = *(a5 + 16);
  *(a9 + 592) = *a5;
  *(a9 + 608) = v23;
  *(a9 + 624) = *(a5 + 32);
  sub_1E1308EC0(a6, a9 + 632);
  sub_1E1308EC0(a7, a9 + 672);
  result = sub_1E1308EC0(a8, a9 + 712);
  *(a9 + 752) = a10;
  *(a9 + 760) = v19;
  return result;
}

double static PrivacyTypeLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_1E1AF162C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_1E1AF165C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v6 + 104))(v8, *MEMORY[0x1E69AB970], v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0, &unk_1E1B038F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E1B04930;
  sub_1E1300B24(a1 + 72, v21);
  v15 = sub_1E1AF1A1C();
  v16 = MEMORY[0x1E69ABA90];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 112, v21);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  __swift_allocate_boxed_opaque_existential_0((v14 + 72));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 232, v21);
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  __swift_allocate_boxed_opaque_existential_0((v14 + 112));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 312, v21);
  *(v14 + 176) = v15;
  *(v14 + 184) = v16;
  __swift_allocate_boxed_opaque_existential_0((v14 + 152));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 432, v21);
  *(v14 + 216) = v15;
  *(v14 + 224) = v16;
  __swift_allocate_boxed_opaque_existential_0((v14 + 192));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  return v18;
}

void PrivacyTypeLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 760))
  {
    v11 = sub_1E1AF74AC();

    if ((v11 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v13 = *(v3 + 376);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 44, v4[47]);
  sub_1E13BC274(v13);
  sub_1E1AF12DC();
  (*(v8 + 8))(v10, v7);
  v12 = 1;
LABEL_6:
  sub_1E1AF6B5C();
  sub_1E134FD1C((v4 + 19), &v69, &unk_1ECEB47F0, &qword_1E1B05780);
  v14 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v69, *(&v70 + 1));
    sub_1E13BC274(v14);
    sub_1E1AF12DC();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(&v69);
  }

  else
  {
    sub_1E1308058(&v69, &unk_1ECEB47F0, &qword_1E1B05780);
  }

  sub_1E134FD1C((v4 + 74), &v69, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v61 = a2;
  v59 = v12;
  if (*(&v70 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v69, *(&v70 + 1));
    v15 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(&v69);
    if ((v15 & 1) == 0)
    {
      v16 = [a1 traitCollection];
      sub_1E1AF1E6C();
    }
  }

  else
  {
    sub_1E1308058(&v69, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  v17 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v17);
  sub_1E13BC274(v17);
  sub_1E1AF12DC();
  v20 = *(v8 + 8);
  v19 = v8 + 8;
  v18 = v20;
  v20(v10, v7);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 84, v4[87]);
  sub_1E1AF11CC();
  v22 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 9, v4[12]);
  sub_1E1AF12FC();
  *&v69 = v22;
  sub_1E1AF12CC();
  v62 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 89, v4[92]);
  sub_1E1AF11CC();
  v24 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v4 + 14, v4[17]);
  sub_1E1AF12FC();
  *&v69 = v24;
  sub_1E1AF12CC();
  v64 = v4[94];
  v25 = *(v64 + 16);
  v60 = v20;
  if (v25)
  {
    v26 = v4[32];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 29, v26);
    sub_1E13BC274(v26);
    sub_1E1AF12DC();
    v27 = v62;
    v18(v10, v62);
    v28 = _s11AppStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v4, a1, v61);
    v29 = v4[37];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 34, v29);
    sub_1E13BC274(v29);
    sub_1E1AF12DC();
    v18(v10, v27);
    if (__OFSUB__(v28, 1))
    {
LABEL_49:
      __break(1u);
    }

    else if ((v28 & 0x8000000000000000) == 0)
    {
      v58 = v19;
      v57 = v4;
      v56 = v10;
      if (v28)
      {
        v30 = sub_1E1AF628C();
        *(v30 + 16) = v28;
        bzero((v30 + 32), 8 * v28);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }

      v33 = 0;
      v63 = v64 + 32;
      v34 = *(v64 + 16);
      v35 = (v30 + 32);
      while (1)
      {
        v36 = 0uLL;
        v37 = v34;
        v38 = 0uLL;
        v39 = 0uLL;
        if (v33 != v34)
        {
          if (v33 >= *(v64 + 16))
          {
            goto LABEL_48;
          }

          v37 = v33 + 1;
          *&v66 = v33;
          sub_1E1300B24(v63 + 40 * v33, &v66 + 8);
          v36 = v66;
          v38 = v67;
          v39 = v68;
        }

        v69 = v36;
        v70 = v38;
        v71 = v39;
        if (!v39)
        {
          break;
        }

        v65 = v36;
        sub_1E1308EC0((&v69 + 8), &v66);
        if (!v28)
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v40 = v65 % v28;
        __swift_project_boxed_opaque_existential_1Tm(&v66, *(&v67 + 1));
        sub_1E1AF11CC();
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v40 >= *(v30 + 16))
        {
          goto LABEL_47;
        }

        v35[v40] = v41 + v35[v40];
        __swift_destroy_boxed_opaque_existential_1(&v66);
        v33 = v37;
      }

      v42 = *(v30 + 16);
      if (v42)
      {
        v43 = *v35;
        v44 = v42 - 1;
        v31 = v62;
        v4 = v57;
        v45 = v59;
        if (v44)
        {
          v46 = (v30 + 40);
          v10 = v56;
          do
          {
            v47 = *v46++;
            v48 = v47;
            if (v43 < v47)
            {
              v43 = v48;
            }

            --v44;
          }

          while (v44);
        }

        else
        {
          v10 = v56;
        }
      }

      else
      {
        v31 = v62;
        v4 = v57;
        v10 = v56;
        v45 = v59;
      }

      if (v45)
      {
        goto LABEL_39;
      }

      goto LABEL_19;
    }

    __break(1u);
    return;
  }

  v31 = v62;
  if (v59)
  {
LABEL_39:
    v49 = v4[42];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 39, v49);
    sub_1E13BC274(v49);
    sub_1E1AF12DC();
    v32 = v60;
    v60(v10, v31);
    goto LABEL_40;
  }

LABEL_19:
  v32 = v60;
LABEL_40:
  v50 = [a1 traitCollection];
  v51 = sub_1E1AF696C();

  v52 = 49;
  if (v51)
  {
    v52 = 54;
  }

  v53 = 52;
  if (v51)
  {
    v53 = 57;
  }

  v54 = v4[v53];
  __swift_project_boxed_opaque_existential_1Tm(&v4[v52], v54);
  sub_1E13BC274(v54);
  sub_1E1AF12DC();
  v32(v10, v31);
}

uint64_t sub_1E141FAB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

void PrivacyTypeLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v133 = a6;
  v132 = a4;
  v131 = a3;
  v120[1] = a2;
  v125 = sub_1E1AF1E4C();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  *&v126 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = COERCE_DOUBLE(sub_1E1AF1E7C());
  v130 = *(*&v134 - 8);
  MEMORY[0x1EEE9AC00](*&v134);
  v12 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = v6[760];
  v129 = a1;
  if (v15)
  {
    v17 = sub_1E1AF74AC();

    if ((v17 & 1) == 0)
    {
      v18 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = *(v7 + 47);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 44, v19);
  sub_1E13BC274(v19);
  sub_1E1AF12DC();
  (*(v14 + 8))(v16, v13);
  v18 = 1;
LABEL_6:
  sub_1E1AF6B0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1E134FD1C((v7 + 152), &v139, &unk_1ECEB47F0, &qword_1E1B05780);
  v28 = *(&v140 + 1);
  v123 = v27;
  v128 = v21;
  v122 = v23;
  v127 = v25;
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
    sub_1E13BC274(v28);
    v29 = v129;
    v30 = sub_1E1AF12DC();
    (*(v14 + 8))(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v139);
    v142.origin.x = v21;
    v142.origin.y = v23;
    v142.size.width = v25;
    v142.size.height = v27;
    Width = CGRectGetWidth(v142);
    if (v30 < Width)
    {
      Width = v30;
    }

    *&v135 = Width;
  }

  else
  {
    sub_1E1308058(&v139, &unk_1ECEB47F0, &qword_1E1B05780);
    *&v135 = v25;
    v29 = v129;
  }

  v32 = [v29 traitCollection];
  v33 = sub_1E1AF696C();

  v34 = 392;
  if (v33)
  {
    v34 = 432;
  }

  v35 = 416;
  if (v33)
  {
    v35 = 456;
  }

  v36 = *&v7[v35];
  __swift_project_boxed_opaque_existential_1Tm(&v7[v34], v36);
  sub_1E13BC274(v36);
  sub_1E1AF12DC();
  v37 = *(v14 + 8);
  v37(v16, v13);
  v38 = v131;
  v143.origin.x = v131;
  v39 = v132;
  v143.origin.y = v132;
  v143.size.width = a5;
  v40 = v133;
  v143.size.height = v133;
  CGRectGetMinX(v143);
  v144.origin.x = v38;
  v144.origin.y = v39;
  v144.size.width = a5;
  v144.size.height = v40;
  CGRectGetMinY(v144);
  v145.origin.x = v38;
  v145.origin.y = v39;
  v145.size.width = a5;
  v145.size.height = v40;
  CGRectGetWidth(v145);
  v146.origin.x = v38;
  v146.origin.y = v39;
  v146.size.width = a5;
  v146.size.height = v40;
  CGRectGetHeight(v146);
  sub_1E134FD1C((v7 + 472), &v139, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v139);
  }

  else
  {
    sub_1E1308058(&v139, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  sub_1E134FD1C((v7 + 512), &v139, &qword_1ECEB4E00, &qword_1E1B0AB20);
  v41 = v127;
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v139);
  }

  else
  {
    sub_1E1308058(&v139, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

  v42 = v128;
  sub_1E134FD1C((v7 + 552), &v139, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v139);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1E1308058(&v139, &qword_1ECEB4E00, &qword_1E1B0AB20);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  sub_1E134FD1C((v7 + 592), &v136, &qword_1ECEB4E00, &qword_1E1B0AB20);
  if (*(&v137 + 1))
  {
    sub_1E1308EC0(&v136, &v139);
    (*(*&v124 + 104))(COERCE_DOUBLE(*&v126), *MEMORY[0x1E69ABBA0], v125);
    *(&v137 + 1) = sub_1E1AF140C();
    *&v138 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(&v136);
    sub_1E1AF13FC();
    sub_1E1AF1E5C();
    __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
    sub_1E1AF1E3C();
    sub_1E1AF116C();
    (*(*&v130 + 8))(v12, COERCE_DOUBLE(*&v134));
    __swift_destroy_boxed_opaque_existential_1(&v139);
  }

  else
  {
    sub_1E1308058(&v136, &qword_1ECEB4E00, &qword_1E1B0AB20);
  }

LABEL_28:
  v130 = a5;
  v147.origin.x = v42;
  v43 = v122;
  v147.origin.y = v122;
  v147.size.width = v41;
  v44 = v123;
  v147.size.height = v123;
  MinY = CGRectGetMinY(v147);
  v46 = *(v7 + 4);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 1, v46);
  sub_1E13BC274(v46);
  v47 = v129;
  v48 = sub_1E1AF12DC();
  v37(v16, v13);
  v49 = *(v7 + 6);
  v50 = *(v7 + 7);
  v134 = *(v7 + 8);
  v51 = MinY + v48 - v50 + v134;
  LODWORD(v46) = *v7;
  v148.origin.x = v42;
  v148.origin.y = v43;
  v148.size.width = v41;
  v148.size.height = v44;
  MinX = CGRectGetMinX(v148);
  if (v46 == 1)
  {
    v149.origin.x = v42;
    v149.origin.y = v43;
    v149.size.width = v41;
    v149.size.height = v123;
    MinX = MinX + (CGRectGetWidth(v149) - v49) * 0.5;
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 79, *(v7 + 82));
  v53 = v42;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v150.origin.x = MinX;
  v150.origin.y = v51;
  v150.size.width = v49;
  v150.size.height = v50;
  v126 = CGRectGetMaxY(v150) - v134;
  v54 = *(v7 + 87);
  v134 = *&v7;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 84, v54);
  v55 = *&v135;
  v56 = v123;
  sub_1E1AF11CC();
  v58 = v57;
  v60 = v59;
  __swift_project_boxed_opaque_existential_1Tm((*&v134 + 72), *(*&v134 + 96));
  sub_1E1AF12FC();
  v62 = v61;
  v63 = v53;
  v151.origin.x = v53;
  v64 = v43;
  v151.origin.y = v43;
  v151.size.width = v55;
  v151.size.height = v56;
  v65 = CGRectGetMinX(v151);
  v66 = v126 + v62;
  v152.origin.x = v63;
  v152.origin.y = v64;
  v152.size.width = v55;
  v152.size.height = v56;
  v67 = CGRectGetWidth(v152);
  __swift_project_boxed_opaque_existential_1Tm((*&v134 + 672), *(*&v134 + 696));
  v68 = v130;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v153.origin.x = v65;
  v153.origin.y = v66;
  v153.size.width = v67;
  v153.size.height = v58;
  v126 = CGRectGetMaxY(v153) - v60;
  __swift_project_boxed_opaque_existential_1Tm((*&v134 + 712), *(*&v134 + 736));
  sub_1E1AF11CC();
  v70 = v69;
  v72 = v71;
  __swift_project_boxed_opaque_existential_1Tm((*&v134 + 112), *(*&v134 + 136));
  v125 = v72;
  v73 = v68;
  sub_1E1AF12FC();
  v75 = v74;
  v76 = v128;
  v154.origin.x = v128;
  v77 = v122;
  v154.origin.y = v122;
  v154.size.width = v55;
  v154.size.height = v56;
  v78 = CGRectGetMinX(v154);
  v79 = v126 + v75;
  v155.origin.x = v76;
  v155.origin.y = v77;
  v155.size.width = v55;
  v155.size.height = v56;
  v80 = CGRectGetWidth(v155);
  __swift_project_boxed_opaque_existential_1Tm((*&v134 + 712), *(*&v134 + 736));
  sub_1E1AF6B1C();
  v81 = v134;
  sub_1E1AF116C();
  v156.origin.x = v78;
  v156.origin.y = v79;
  v156.size.width = v80;
  v156.size.height = v70;
  MaxY = CGRectGetMaxY(v156);
  if (!*(*(*&v81 + 752) + 16))
  {
LABEL_65:
    sub_1E1AF106C();
    return;
  }

  v83 = MaxY;
  v126 = *(*&v81 + 752);
  v84 = *(*&v81 + 256);
  __swift_project_boxed_opaque_existential_1Tm((*&v81 + 232), v84);
  sub_1E13BC274(v84);
  v85 = sub_1E1AF12DC();
  v37(v16, v13);
  v86 = _s11AppStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(*&v81, v47, v73);
  v87 = *(*&v81 + 296);
  __swift_project_boxed_opaque_existential_1Tm((*&v81 + 272), v87);
  sub_1E13BC274(v87);
  v88 = sub_1E1AF12DC();
  v37(v16, v13);
  if (!__OFSUB__(v86, 1))
  {
    v124 = v85;
    *&v135 = v83;
    v121 = v88;
    v89 = floor((v127 - v88 * (v86 - 1)) / v86);
    v90 = v126;
    v91 = *(*&v126 + 16);
    if (v91)
    {
      v92 = *&v126 + 32;
      v93 = MEMORY[0x1E69E7CC0];
      v94 = 0.0;
      v95 = v122;
      do
      {
        sub_1E1300B24(v92, &v139);
        __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
        sub_1E1AF11CC();
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_1(&v139);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_1E172D774(0, *(v93 + 2) + 1, 1, v93);
        }

        v105 = *(v93 + 2);
        v104 = *(v93 + 3);
        if (v105 >= v104 >> 1)
        {
          v93 = sub_1E172D774((v104 > 1), v105 + 1, 1, v93);
        }

        *(v93 + 2) = v105 + 1;
        v106 = &v93[32 * v105];
        *(v106 + 4) = v97;
        *(v106 + 5) = v99;
        *(v106 + 6) = v101;
        *(v106 + 7) = v103;
        if (v94 <= v97)
        {
          v94 = v97;
        }

        v92 += 40;
        --v91;
      }

      while (v91);
    }

    else
    {
      v93 = MEMORY[0x1E69E7CC0];
      v95 = v122;
    }

    if (v86 < 0)
    {
      goto LABEL_74;
    }

    if (v86)
    {
      v107 = sub_1E1AF628C();
      *(v107 + 16) = v86;
      bzero((v107 + 32), 8 * v86);
    }

    else
    {
      v107 = MEMORY[0x1E69E7CC0];
    }

    v108 = v123;
    v109 = v121;
    v110 = 0;
    v111 = *(*&v90 + 16);
    *&v121 = *&v90 + 32;
    v125 = (v93 + 32);
    v124 = v109 + v89;
    while (1)
    {
      v112 = 0uLL;
      v113 = v111;
      v114 = 0uLL;
      v115 = 0uLL;
      if (v110 != v111)
      {
        if (v110 >= *(*&v90 + 16))
        {
          goto LABEL_72;
        }

        v113 = v110 + 1;
        *&v136 = v110;
        sub_1E1300B24(*&v121 + 40 * v110, &v136 + 8);
        v112 = v136;
        v114 = v137;
        v115 = v138;
      }

      v139 = v112;
      v140 = v114;
      v141 = v115;
      if (!v115)
      {

        goto LABEL_65;
      }

      v135 = v112;
      sub_1E1308EC0((&v139 + 8), &v136);
      if (!v86)
      {
        break;
      }

      v116 = v135 % v86;
      if (v135 % v86 < 0)
      {
        goto LABEL_67;
      }

      if (v116 >= *(v107 + 16))
      {
        goto LABEL_68;
      }

      if ((v135 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v135 >= *(v93 + 2))
      {
        goto LABEL_70;
      }

      v117 = *(v125 + 32 * v135 + 8);
      if ((*(*&v90 + 16) == 1 || v86 == 1) && **&v134 == 1)
      {
        v118 = v128;
        v157.origin.x = v128;
        v157.origin.y = v122;
        v119 = v127;
        v157.size.width = v127;
        v157.size.height = v123;
        CGRectGetMinX(v157);
        v158.origin.x = v118;
        v95 = v122;
        v158.origin.y = v122;
        v158.size.width = v119;
        v108 = v123;
        v158.size.height = v123;
        CGRectGetWidth(v158);
      }

      else
      {
        v159.origin.x = v128;
        v159.origin.y = v95;
        v159.size.width = v127;
        v159.size.height = v108;
        CGRectGetMinX(v159);
      }

      __swift_project_boxed_opaque_existential_1Tm(&v136, *(&v137 + 1));
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      if (v116 >= *(v107 + 16))
      {
        goto LABEL_71;
      }

      *(v107 + 32 + 8 * v116) = v117 + *(v107 + 32 + 8 * v116);
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v110 = v113;
      v90 = v126;
    }

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
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t _s11AppStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return 1;
  }

  v9 = *(a1 + 216);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 192), v9);
  sub_1E13BC274(v9);
  v10 = sub_1E1AF12DC();
  v11 = *(v6 + 8);
  v11(v8, v5);
  v12 = *(a1 + 296);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 272), v12);
  sub_1E13BC274(v12);
  v13 = sub_1E1AF12DC();
  v11(v8, v5);
  v14 = *(a1 + 376);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 352), v14);
  sub_1E13BC274(v14);
  v15 = sub_1E1AF12DC();
  result = (v11)(v8, v5);
  v17 = floor((v13 + a3 - (v15 + v15)) / (v10 + v13));
  v18 = fmax(v17, 1.0);
  if (v17 >= 3.0)
  {
    v19 = 3.0;
  }

  else
  {
    v19 = v18;
  }

  if (v19 == INFINITY)
  {
    __break(1u);
  }

  else if (v19 > -9.22337204e18)
  {
    if (v19 < 9.22337204e18)
    {
      return v19;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1E1420FA4()
{
  result = qword_1ECEB3880;
  if (!qword_1ECEB3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3880);
  }

  return result;
}

uint64_t sub_1E1421000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
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

uint64_t sub_1E1421048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1421168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
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

uint64_t sub_1E14211B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E14212A0(uint64_t a1)
{
  v2 = sub_1E1AF3E2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69AB010], v2);
  return sub_1E1AF582C();
}

unint64_t sub_1E14213AC()
{
  result = qword_1ECEB3888[0];
  if (!qword_1ECEB3888[0])
  {
    type metadata accessor for LocalAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB3888);
  }

  return result;
}

uint64_t sub_1E142141C()
{
  result = sub_1E1AF5DBC();
  qword_1ECEB3918 = result;
  return result;
}

id static NSNotificationName.updateAllActionImplementationWillRun.getter()
{
  if (qword_1ECEB0DA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEB3918;

  return v1;
}

unint64_t sub_1E14214CC()
{
  result = qword_1ECEB39A0;
  if (!qword_1ECEB39A0)
  {
    type metadata accessor for UpdateAllAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB39A0);
  }

  return result;
}

void sub_1E1421524(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v35 = aBlock;
  v36 = v39;
  type metadata accessor for UpdateStore();
  sub_1E1AF55EC();
  v32 = aBlock;
  v4 = MEMORY[0x1E69E7CD0];
  v45 = MEMORY[0x1E69E7CD0];
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1E159F67C(MEMORY[0x1E69E7CC0]);
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      swift_bridgeObjectRetain_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E130C06C(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1E130C06C((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;

      sub_1E18943C0(&aBlock, v9, v10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v6;
      sub_1E1599648(v9, v10, v11, v12, isUniquelyReferenced_nonNull_native);

      v6 = aBlock;
      v8 += 4;
      --v7;
    }

    while (v7);
    v4 = v45;
  }

  v17 = v4 + 56;
  v18 = 1 << *(v4 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v4 + 56);
  v21 = (v18 + 63) >> 6;
  v34 = v4;

  v22 = 0;
  while (v20)
  {
    v23 = v22;
LABEL_17:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = (*(v34 + 48) + ((v23 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    ObjectType = swift_getObjectType();
    aBlock = v27;
    v39 = v26;
    v44 = 2;
    v28 = *(v36 + 64);

    v28(&aBlock, &v44, ObjectType, v36);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v29 = sub_1E1AF620C();

      v30 = swift_allocObject();
      v30[2] = v6;
      v30[3] = v34;
      v30[4] = v35;
      v30[5] = v36;
      v30[6] = a3;
      v42 = sub_1E1422FDC;
      v43 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1E1421DE8;
      v41 = &block_descriptor_11;
      v31 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v32 updateAllWithOrder:v29 completionBlock:v31];

      swift_unknownObjectRelease();
      _Block_release(v31);

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1E14218F4(char a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a6;
  v75 = a7;
  v13 = sub_1E1AF3E2C();
  v14 = *(v13 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v78 = MEMORY[0x1E69E7CD0];
  v69 = v17;
  v70 = a8;
  v67 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v14;
  v71 = a5;
  if ((a1 & 1) == 0)
  {
    v78 = a5;

LABEL_20:
    v33 = v32 + 56;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 56);
    v37 = (v34 + 63) >> 6;
    v72 = v75 + 24;
    v73 = v32;

    v38 = 0;
    v39 = v75;
    while (v36)
    {
      v40 = v38;
      v41 = v73;
LABEL_29:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = (*(v41 + 48) + ((v40 << 10) | (16 * v42)));
      v45 = *v43;
      v44 = v43[1];
      v46 = v74;
      ObjectType = swift_getObjectType();
      v76 = v45;
      v77 = v44;
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v39;
      v48[4] = v45;
      v48[5] = v44;
      v49 = *(v39 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v49(&v76, sub_1E1422FEC, v48, ObjectType, v39);
    }

    v41 = v73;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v40 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_29;
      }
    }

    v50 = v71;
    if (*(v41 + 16) <= *(v71 + 16) >> 3)
    {
      v76 = v71;

      sub_1E15CEBB8(v41);

      v51 = v76;
    }

    else
    {

      v51 = sub_1E15CEF44(v41, v50);
    }

    v52 = 0;
    v53 = 1 << *(v51 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v51 + 56);
    v56 = (v53 + 63) >> 6;
    while (v55)
    {
      v57 = v52;
LABEL_42:
      v58 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v59 = (*(v51 + 48) + ((v57 << 10) | (16 * v58)));
      v61 = *v59;
      v60 = v59[1];
      v62 = swift_getObjectType();
      v76 = v61;
      v77 = v60;

      v63.underlyingAdamID._countAndFlagsBits = &v76;
      v63.underlyingAdamID._object = v62;
      AppStateController.clearWaiting(for:)(v63);
    }

    while (1)
    {
      v57 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v57 >= v56)
      {

        v65 = v67;
        v64 = v68;
        v66 = v69;
        (*(v68 + 104))(v67, *MEMORY[0x1E69AB010], v69);
        sub_1E1AF586C();
        (*(v64 + 8))(v65, v66);
        return;
      }

      v55 = *(v51 + 56 + 8 * v57);
      ++v52;
      if (v55)
      {
        v52 = v57;
        goto LABEL_42;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!(a2 >> 62))
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_19:
    v32 = MEMORY[0x1E69E7CD0];
    goto LABEL_20;
  }

  v18 = sub_1E1AF71CC();
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v19 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1E68FFD80](v19, a2, v15);
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      if ([v20 status] == 1)
      {
        v22 = [v21 bundleID];
        v23 = sub_1E1AF5DFC();
        v25 = v24;

        if (*(a4 + 16))
        {
          v26 = sub_1E13018F8(v23, v25);
          v28 = v27;

          if (v28)
          {
            v29 = (*(a4 + 56) + 16 * v26);
            v30 = *v29;
            v31 = v29[1];

            sub_1E18943C0(&v76, v30, v31);

            goto LABEL_8;
          }
        }

        else
        {
        }
      }

LABEL_8:
      if (v18 == ++v19)
      {
        v32 = v78;
        goto LABEL_20;
      }
    }
  }

LABEL_47:
  __break(1u);
}

void sub_1E1421DE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_1E13006E4(0, &qword_1ECEB39A8, 0x1E698B500);
  v7 = sub_1E1AF621C();

  v8 = a4;
  v6(a2, v7, a4);
}

void sub_1E1421EA0(unint64_t a1)
{
  v33 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E68FFD80](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 updateState];
      if (v7 > 4 || ((1 << v7) & 0x19) == 0)
      {
      }

      else
      {
        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v33 = sub_1E1AA750C(v10, v9);
  v11 = 0;
  sub_1E14221EC(&v33);
  v12 = v33;
  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v13 = *(v33 + 16);
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_39:
    v15 = MEMORY[0x1E69E7CC0];
LABEL_40:

    v29 = sub_1E14D6A64(v15);

    v33 = v29;
    sub_1E1AF586C();

    return;
  }

LABEL_38:
  v13 = sub_1E1AF71CC();
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_23:
  v14 = 0;
  v32 = v12 & 0xC000000000000001;
  v15 = MEMORY[0x1E69E7CC0];
  v30 = v13;
  v31 = v12;
  while (1)
  {
    if (v32)
    {
      v16 = MEMORY[0x1E68FFD80](v14, v12);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_37;
      }

      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v33 = [v16 storeItemIdentifier];
    v19 = sub_1E1AF742C();
    v21 = v20;
    v22 = [v17 bundleIdentifier];
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = sub_1E1AF5DFC();
    v26 = v25;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1E172DE6C(0, v15[2] + 1, 1, v15);
    }

    v11 = v15[2];
    v27 = v15[3];
    if (v11 >= v27 >> 1)
    {
      v15 = sub_1E172DE6C((v27 > 1), v11 + 1, 1, v15);
    }

    v15[2] = v11 + 1;
    v28 = &v15[4 * v11];
    v28[4] = v19;
    v28[5] = v21;
    v28[6] = v24;
    v28[7] = v26;
    ++v14;
    v12 = v31;
    if (v18 == v30)
    {
      goto LABEL_40;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1E14221EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E196B840(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E1422268(v6);
  return sub_1E1AF70CC();
}

void sub_1E1422268(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1E1AF741C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E13006E4(0, &qword_1ECEB39B8, 0x1E698B550);
        v6 = sub_1E1AF628C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1E1422454(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1E142237C(0, v2, 1, a1);
  }
}

void sub_1E142237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_1E1AA68D0(v12, v13);

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1E1422454(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_1E1968F00(v8);
    }

    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v8[16 * v86];
        v88 = *&v8[16 * v86 + 24];
        sub_1E1422A5C((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v86 + 16]), (*a3 + 8 * v88), v6);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v88 < v87)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E1968F00(v8);
        }

        if (v86 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v8[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_1E1968E74(v86 - 1);
        v86 = *(v8 + 2);
        if (v86 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v91 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      v17 = sub_1E1AA68D0(v15, v16);

      v93 = v7;
      v18 = v7 + 2;
      while (v6 != v18)
      {
        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        LODWORD(v19) = sub_1E1AA68D0(v20, v21) & 1;

        ++v18;
        ++v13;
        if ((v17 & 1) != v19)
        {
          v6 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        v9 = v93;
        if (v6 < v93)
        {
          goto LABEL_117;
        }

        if (v93 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v93;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v91;
      }

      else
      {
        v10 = v6;
        v5 = v91;
        v9 = v93;
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E172D878(0, *(v8 + 2) + 1, 1, v8);
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v8 = sub_1E172D878((v40 > 1), v41 + 1, 1, v8);
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v10;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_107;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_106;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v84 = *&v8[16 * v83 + 32];
        v6 = *&v8[16 * v45 + 40];
        sub_1E1422A5C((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v6), v44);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v6 < v84)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E1968F00(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v85 = &v8[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v6;
        sub_1E1968E74(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_108;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_112;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v92 = v5;
  v94 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = v9 - v10;
  v96 = v28;
LABEL_30:
  v97 = v10;
  v32 = *(v29 + 8 * v10);
  v6 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *v33;
    v35 = v32;
    v36 = v34;
    v37 = sub_1E1AA68D0(v35, v36);

    if ((v37 & 1) == 0)
    {
LABEL_29:
      v10 = v97 + 1;
      v30 += 8;
      --v31;
      if (v97 + 1 != v96)
      {
        goto LABEL_30;
      }

      v10 = v96;
      v5 = v92;
      v9 = v94;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v33;
    v32 = *(v33 + 8);
    *v33 = v32;
    *(v33 + 8) = v38;
    v33 -= 8;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_29;
    }
  }

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
}