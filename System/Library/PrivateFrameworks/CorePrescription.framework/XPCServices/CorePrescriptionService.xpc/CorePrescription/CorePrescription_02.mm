char *sub_10003DB4C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100006940(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_10003DC38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7D60, &qword_100085A18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10003DD68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7D88, &qword_100085A38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10003DE90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100006940(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006940(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

_BYTE *sub_10003DFC4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_100065DD0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10003ED08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10003ED84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_10003E058(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003E078(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E098(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E370(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E0B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E600(a1, a2, a3, *v3, &qword_1000B7D78, &qword_100085A30, &qword_1000B7D80, &qword_100085BD0);
  *v3 = result;
  return result;
}

void *sub_10003E0F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E4B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10003E118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10003E600(a1, a2, a3, *v3, &qword_1000B7D68, &qword_100085A20, &unk_1000B8390, &qword_100086040);
  *v3 = result;
  return result;
}

char *sub_10003E158(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7D60, &qword_100085A18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10003E264(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7DB0, &unk_100085A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10003E370(void *result, int64_t a2, char a3, void *a4)
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
    sub_100006940(&unk_1000B8360, &unk_1000856E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006940(&qword_1000B7D00, qword_100085E80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003E4B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100006940(&qword_1000B7D30, &unk_100085BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10003E600(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100006940(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006940(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unsigned __int8 *sub_10003E734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_100081448();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100049A34(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000816B8();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10003ED08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100080B28();
  swift_allocObject();
  result = sub_100080AD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100080C78();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10003ED84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_100080B28();
  swift_allocObject();
  result = sub_100080AD8();
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

uint64_t sub_10003EE08(uint64_t a1)
{
  v9 = sub_100006940(&qword_1000B7D98, &qword_100085A48);
  v10 = sub_10003EEE8(&qword_1000B7DA0, &qword_1000B7D98, &qword_100085A48, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_10002329C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10003DFC4(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000068F4(v8);
  return v5;
}

uint64_t sub_10003EEE8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000069EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003EF50()
{
  if (*(v0[5] + 288))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_1000B73F8 != -1)
    {
      swift_once();
    }

    v3 = sub_100081018();
    v0[6] = sub_100016240(v3, qword_1000B7DB8);
    v4 = sub_100080FF8();
    v5 = sub_1000815C8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Creating data store tables", v6, 2u);
    }

    v7 = v0[5];

    v8 = *(v7 + 248);
    v0[7] = v8;

    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_10003F100;

    return sub_10004D204(v8);
  }
}

uint64_t sub_10003F100()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[5];

    return _swift_task_switch(sub_10003F560, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[10] = v4;
    *v4 = v2;
    v4[1] = sub_10003F274;

    return sub_1000482D0();
  }
}

uint64_t sub_10003F274(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 40);
    *(v4 + 88) = a1 & 1;

    return _swift_task_switch(sub_10003F3C4, v8, 0);
  }
}

uint64_t sub_10003F3C4()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = swift_beginAccess();
    v5 = *(v1 + 280);
    if (v5 >> 62)
    {
      v2 = sub_1000817A8();
      v6 = v2;
      if (v2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return _swift_task_switch(v2, v3, v4);
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            sub_1000816A8();
            swift_unknownObjectRelease();
          }
        }
      }
    }

    v8 = sub_100080FF8();
    v9 = sub_1000815C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Created tables", v10, 2u);
    }
  }

  v3 = *(v0 + 40);
  v2 = sub_10003F53C;
  v4 = 0;

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10003F560()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F5C4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10003F5E4, v1, 0);
}

uint64_t sub_10003F5E4()
{
  if (qword_1000B73F8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v1 = sub_100081018();
    v0[20] = sub_100016240(v1, qword_1000B7DB8);
    v2 = sub_100080FF8();
    v3 = sub_1000815B8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Purging all data from read-write tables", v4, 2u);
    }

    v5 = v0[19];

    swift_beginAccess();
    v6 = *(v5 + 280);
    v7 = v6 >> 62 ? sub_1000817A8() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      break;
    }

    v8 = 0;
    while ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000816A8();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_13:
      v11 = *(v9 + 56);
      if ((v11 & 4) != 0 || (v11 & 2) != 0)
      {
      }

      else
      {
        sub_1000816D8();
        sub_1000816F8();
        sub_100081708();
        sub_1000816E8();
      }

      ++v8;
      if (v10 == v7)
      {
        goto LABEL_19;
      }
    }

    if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

LABEL_19:
  v0[21] = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v40 = sub_1000817A8();
    v0[22] = v40;
    if (!v40)
    {
      goto LABEL_62;
    }

LABEL_22:
    v13 = 0;
    while (1)
    {
      v14 = v0[21];
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = sub_1000816A8();
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_58;
        }

        v15 = *(v14 + 8 * v13 + 32);
      }

      v0[23] = v15;
      v0[24] = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_57;
      }

      v16 = v0[19];
      if (v15 == v16[33] && (v0[18] & 1) != 0)
      {
        break;
      }

      v18 = v0[18] & 2;
      if (v15 != v16[30] || v18 == 0)
      {
        if (v15 != v16[31] || v18 == 0)
        {
          v29 = sub_10003C818(_swiftEmptyArrayStorage);
          v0[39] = v29;
          v30 = swift_task_alloc();
          v0[40] = v30;
          *v30 = v0;
          v30[1] = sub_1000407B0;

          return sub_100050708(v15, v29, 1);
        }

        else
        {
          v32 = sub_100080FF8();
          v33 = sub_1000815C8();
          if (os_log_type_enabled(v32, v33))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v32, v33, "Preserving prescription presence properties", v35, 2u);
          }

          v36 = v0[19];

          v0[25] = *(v36 + 152);
          v37 = *(v36 + 248);
          v0[26] = v37;

          v38 = sub_10003C818(_swiftEmptyArrayStorage);
          v0[27] = v38;
          v39 = swift_task_alloc();
          v0[28] = v39;
          *v39 = v0;
          v39[1] = sub_10003FBA8;

          return sub_10004DAFC(v37, 0, 0, v38, 0, 0);
        }
      }

      v25 = sub_100080FF8();
      v20 = sub_1000815C8();
      if (os_log_type_enabled(v25, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = v20;
        v23 = v25;
        v24 = "Preserving RXSystemState";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v23, v22, v24, v21, 2u);
      }

LABEL_24:

      v13 = v0[24];
      if (v13 == v0[22])
      {
        goto LABEL_62;
      }
    }

    v25 = sub_100080FF8();
    v26 = sub_1000815C8();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_24;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = v26;
    v23 = v25;
    v24 = "Preserving the sharing data table";
    goto LABEL_23;
  }

  v12 = _swiftEmptyArrayStorage[2];
  v0[22] = v12;
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_62:

  v41 = v0[1];

  return v41();
}

uint64_t sub_10003FBA8(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v4 = v3[19];
    v5 = sub_10003FF98;
  }

  else
  {
    v6 = v3[19];

    v5 = sub_10003FCD8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

void sub_10003FCD8()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v19 = v4;
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        v6 = *(v1 + 32 + 8 * v5);
        if (!*(v6 + 16))
        {
          goto LABEL_21;
        }

        v7 = sub_1000526A8(32);
        if ((v8 & 1) == 0)
        {
          goto LABEL_22;
        }

        sub_100006888(*(v6 + 56) + 32 * v7, v0 + 48);
        sub_1000068E4((v0 + 48), (v0 + 16));
        swift_dynamicCast();
        v9 = *(v0 + 112);
        *(v0 + 120) = *(v0 + 104);
        *(v0 + 128) = v9;
        v10 = swift_task_alloc();
        *(v10 + 16) = v0 + 120;
        v11 = sub_100059D50(sub_10004B30C, v10, &off_1000AA318);

        if (v11)
        {
          break;
        }

        ++v5;

        if (v2 == v5)
        {
          v4 = v19;
          goto LABEL_17;
        }
      }

      v4 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 136) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10003E0B8(0, v19[2] + 1, 1);
        v4 = *(v0 + 136);
      }

      v14 = v4[2];
      v13 = v4[3];
      if (v14 >= v13 >> 1)
      {
        sub_10003E0B8((v13 > 1), v14 + 1, 1);
        v4 = *(v0 + 136);
      }

      v3 = v5 + 1;
      v4[2] = v14 + 1;
      v4[v14 + 4] = v6;
    }

    while (v2 - 1 != v5);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  *(v0 + 248) = v4;
  v15 = *(v0 + 152);
  swift_arrayDestroy();

  v16 = *(v15 + 248);
  *(v0 + 256) = v16;

  v17 = sub_10003C818(_swiftEmptyArrayStorage);
  *(v0 + 264) = v17;
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_100040030;

  sub_100050708(v16, v17, 1);
}

uint64_t sub_10003FF98()
{

  swift_arrayDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040030()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);

    v4 = sub_100040900;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 152);

    v4 = sub_1000401B8;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1000401B8()
{
  v1 = *(v0[19] + 248);
  v0[36] = v1;

  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_100040270;
  v3 = v0[31];

  return sub_10004EE80(v1, v3);
}

uint64_t sub_100040270()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);

    v4 = sub_100040964;
  }

  else
  {
    v3 = *(v2 + 152);

    v4 = sub_1000403EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1000403EC()
{

  v1 = v0[24];
  if (v1 == v0[22])
  {
LABEL_2:

    v2 = v0[1];

    v2();
    return;
  }

  while (1)
  {
    v3 = v0[21];
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1000816A8();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_40;
      }

      v4 = *(v3 + 8 * v1 + 32);
    }

    v0[23] = v4;
    v0[24] = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v5 = v0[19];
    if (v4 == v5[33] && (v0[18] & 1) != 0)
    {
      v14 = sub_100080FF8();
      v15 = sub_1000815C8();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_7;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = v15;
      v12 = v14;
      v13 = "Preserving the sharing data table";
      goto LABEL_6;
    }

    v7 = v0[18] & 2;
    if (v4 != v5[30] || v7 == 0)
    {
      break;
    }

    v14 = sub_100080FF8();
    v9 = sub_1000815C8();
    if (!os_log_type_enabled(v14, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = v9;
    v12 = v14;
    v13 = "Preserving RXSystemState";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v12, v11, v13, v10, 2u);

LABEL_7:

    v1 = v0[24];
    if (v1 == v0[22])
    {
      goto LABEL_2;
    }
  }

  if (v4 != v5[31] || v7 == 0)
  {
    v18 = sub_10003C818(_swiftEmptyArrayStorage);
    v0[39] = v18;
    v19 = swift_task_alloc();
    v0[40] = v19;
    *v19 = v0;
    v19[1] = sub_1000407B0;

    sub_100050708(v4, v18, 1);
  }

  else
  {
    v20 = sub_100080FF8();
    v21 = sub_1000815C8();
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Preserving prescription presence properties", v23, 2u);
    }

    v24 = v0[19];

    v0[25] = *(v24 + 152);
    v25 = *(v24 + 248);
    v0[26] = v25;

    v26 = sub_10003C818(_swiftEmptyArrayStorage);
    v0[27] = v26;
    v27 = swift_task_alloc();
    v0[28] = v27;
    *v27 = v0;
    v27[1] = sub_10003FBA8;

    sub_10004DAFC(v25, 0, 0, v26, 0, 0);
  }
}

uint64_t sub_1000407B0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);

    v4 = sub_1000409C8;
  }

  else
  {
    v3 = *(v2 + 152);

    v4 = sub_10004B738;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100040900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040964()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000409C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100040A2C()
{
  v1[66] = v0;
  sub_100006940(&qword_1000B7F28, &qword_100085BF8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v2 = type metadata accessor for DataManager.StateInfo(0);
  v1[69] = v2;
  v1[70] = *(v2 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v3 = sub_100080D98();
  v1[78] = v3;
  v1[79] = *(v3 - 8);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();

  return _swift_task_switch(sub_100040BE0, v0, 0);
}

uint64_t sub_100040BE0()
{
  if (qword_1000B73F8 != -1)
  {
    swift_once();
  }

  v1 = sub_100081018();
  v0[82] = sub_100016240(v1, qword_1000B7DB8);
  v2 = sub_100080FF8();
  v3 = sub_1000815B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Validating sharing data on iOS", v4, 2u);
  }

  v5 = v0[81];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[66];

  sub_100080D88();
  sub_100080D28();
  v10 = v9;
  v11 = *(v6 + 8);
  v0[83] = v11;
  v0[84] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v5, v7);
  *(v8 + 328) = v10;
  v0[64] = _swiftEmptyArrayStorage;
  v0[85] = 0;
  v12 = *(v0[66] + 264);
  v0[86] = v12;
  sub_100006940(&qword_1000B7D70, &qword_100085A28);
  inited = swift_initStackObject();
  *(inited + 32) = 58;
  *(inited + 16) = xmmword_100084830;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 0;

  v14 = sub_10003C818(inited);
  v0[87] = v14;
  swift_setDeallocating();
  sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
  v15 = swift_task_alloc();
  v0[88] = v15;
  *v15 = v0;
  v15[1] = sub_100040E48;

  return sub_10004DAFC(v12, 0, 0, v14, 0, 0);
}

uint64_t sub_100040E48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 712) = v1;

  v5 = *(v4 + 528);

  if (v1)
  {

    v6 = sub_1000439C4;
  }

  else
  {

    *(v4 + 720) = a1;
    v6 = sub_100040FA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

unint64_t sub_100040FA8()
{
  v207 = v0;
  v1 = (v0 + 512);
  v2 = *(v0 + 680);
  sub_100049214(*(v0 + 720));
  if (v2 != 2)
  {
    v105 = *(v0 + 680) + 1;
    *(v0 + 680) = v105;
    v106 = *(&off_1000AA368 + v105 + 32);
    v107 = *(*(v0 + 528) + 264);
    *(v0 + 688) = v107;
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    inited = swift_initStackObject();
    *(inited + 32) = 58;
    *(inited + 16) = xmmword_100084830;
    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = 32 * v106;

    v109 = sub_10003C818(inited);
    *(v0 + 696) = v109;
    swift_setDeallocating();
    sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
    v110 = swift_task_alloc();
    *(v0 + 704) = v110;
    *v110 = v0;
    v110[1] = sub_100040E48;

    return sub_10004DAFC(v107, 0, 0, v109, 0, 0);
  }

  v204 = sub_10003C940(_swiftEmptyArrayStorage);
  v203 = sub_10003CB14(_swiftEmptyArrayStorage);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
LABEL_87:
    *(v0 + 728) = v204;

    v111 = sub_100080FF8();
    v112 = sub_1000815C8();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v206 = v114;
      *v113 = 136315138;
      v115 = v203;

      v116 = sub_100081228();
      v118 = v117;

      v119 = sub_1000597A8(v116, v118, &v206);

      *(v113 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v111, v112, "records to delete: %s", v113, 0xCu);
      sub_1000068F4(v114);
    }

    else
    {

      v115 = v203;
    }

    v120 = &type metadata for String;
    *(v0 + 736) = v115;
    v121 = *(v115 + 32);
    *(v0 + 888) = v121;
    v122 = -1;
    v123 = -1 << v121;
    if (-(-1 << v121) < 64)
    {
      v122 = ~(-1 << -v123);
    }

    v124 = v122 & v115[8];

    if (v124)
    {
      v125 = 0;
LABEL_97:
      *(v0 + 752) = v125;
      *(v0 + 744) = v124;
      v127 = *(v0 + 528);
      v128 = __clz(__rbit64(v124)) | (v125 << 6);
      v129 = (v115[6] + 16 * v128);
      v130 = *v129;
      *(v0 + 760) = *v129;
      v131 = v129[1];
      *(v0 + 768) = v131;
      v132 = *(v115[7] + v128);
      *(v0 + 776) = *(v127 + 152);
      v133 = *(v127 + 264);
      *(v0 + 784) = v133;
      sub_100006940(&qword_1000B7D70, &qword_100085A28);
      v134 = swift_initStackObject();
      *(v134 + 16) = xmmword_100085A60;
      *(v134 + 32) = 48;
      *(v134 + 64) = &type metadata for String;
      *(v134 + 40) = v130;
      *(v134 + 48) = v131;
      *(v134 + 72) = 58;
      *(v134 + 104) = &type metadata for Int;
      *(v134 + 80) = 32 * v132;
      swift_bridgeObjectRetain_n();

      v135 = sub_10003C818(v134);
      *(v0 + 792) = v135;
      swift_setDeallocating();
      sub_100006940(&qword_1000B7D30, &unk_100085BC0);
      swift_arrayDestroy();
      v136 = swift_task_alloc();
      *(v0 + 800) = v136;
      *v136 = v0;
      v136[1] = sub_1000425D0;

      return sub_100050708(v133, v135, 0);
    }

    else
    {
      v126 = 0;
      while (((63 - v123) >> 6) - 1 != v126)
      {
        v125 = v126 + 1;
        v124 = v115[v126++ + 9];
        if (v124)
        {
          goto LABEL_97;
        }
      }

      v137 = *(v0 + 728);

      v138 = *(v137 + 32);
      *(v0 + 889) = v138;
      v139 = 1 << v138;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      else
      {
        v140 = -1;
      }

      v141 = v140 & *(v137 + 64);

      v142 = 0;
      while (v141)
      {
        v143 = *(v0 + 728);
LABEL_116:
        v148 = *(v0 + 568);
        v149 = *(v0 + 536);
        v150 = __clz(__rbit64(v141));
        v141 &= v141 - 1;
        v151 = v150 | (v142 << 6);
        v152 = (*(v143 + 48) + 16 * v151);
        v153 = *v152;
        v154 = v152[1];
        sub_10004AD04(*(v143 + 56) + *(*(v0 + 560) + 72) * v151, v148);
        v155 = sub_100006940(&qword_1000B7F30, &unk_100085C00);
        v156 = *(v155 + 48);
        *v149 = v153;
        v149[1] = v154;
        sub_10003CE00(v148, v149 + v156);
        (*(*(v155 - 8) + 56))(v149, 0, 1, v155);

        v146 = v142;
LABEL_117:
        *(v0 + 840) = v146;
        *(v0 + 832) = v141;
        v157 = *(v0 + 544);
        sub_10004AD68(*(v0 + 536), v157);
        v158 = sub_100006940(&qword_1000B7F30, &unk_100085C00);
        if ((*(*(v158 - 8) + 48))(v157, 1, v158) == 1)
        {

          v173 = *(v0 + 8);

          return v173();
        }

        v159 = *(v0 + 544);
        v161 = *v159;
        v160 = v159[1];
        v162 = v159 + *(v158 + 48);
        v163 = *(v162 + *(*(v0 + 552) + 28));
        sub_10004ADD8(v162);
        if (v163)
        {
          if (v163 == 1)
          {
            v172 = 32;
          }

          else
          {
            v172 = 64;
          }

          v174 = sub_100080FF8();
          v175 = sub_1000815C8();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = v172;
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            v206 = v178;
            *v177 = 136315138;
            *(v177 + 4) = sub_1000597A8(v161, v160, &v206);
            _os_log_impl(&_mh_execute_header, v174, v175, "Updating sync state to active for rxUUID: %s", v177, 0xCu);
            sub_1000068F4(v178);

            v172 = v176;
          }

          v179 = *(*(v0 + 528) + 264);
          *(v0 + 848) = v179;
          sub_100006940(&qword_1000B7D70, &qword_100085A28);
          v180 = swift_initStackObject();
          *(v180 + 16) = xmmword_100085A60;
          *(v180 + 32) = 48;
          *(v180 + 64) = v120;
          *(v180 + 40) = v161;
          *(v180 + 48) = v160;
          *(v180 + 72) = 58;
          *(v180 + 104) = &type metadata for Int;
          *(v180 + 80) = v172;

          v181 = sub_10003C818(v180);
          *(v0 + 856) = v181;
          swift_setDeallocating();
          sub_100006940(&qword_1000B7D30, &unk_100085BC0);
          swift_arrayDestroy();
          v182 = swift_initStackObject();
          *(v182 + 16) = xmmword_100084830;
          *(v182 + 32) = 58;
          v183 = v182 + 32;
          *(v182 + 64) = &type metadata for Int;
          *(v182 + 40) = 0;
          v184 = sub_10003C818(v182);
          *(v0 + 864) = v184;
          swift_setDeallocating();
          sub_10001A80C(v183, &qword_1000B7D30, &unk_100085BC0);
          v185 = swift_task_alloc();
          *(v0 + 872) = v185;
          *v185 = v0;
          v185[1] = sub_10004319C;

          return sub_10004FA98(v179, v181, v184);
        }

        v164 = sub_100080FF8();
        v165 = sub_1000815C8();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = v120;
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v206 = v168;
          *v167 = 136315138;
          v169 = sub_1000597A8(v161, v160, &v206);

          *(v167 + 4) = v169;
          _os_log_impl(&_mh_execute_header, v164, v165, "Sync state is already active for rxUUID: %s", v167, 0xCu);
          sub_1000068F4(v168);

          v120 = v166;
        }

        else
        {
        }

        v142 = v146;
      }

      v144 = ((1 << *(v0 + 889)) + 63) >> 6;
      if (v144 <= (v142 + 1))
      {
        v145 = v142 + 1;
      }

      else
      {
        v145 = ((1 << *(v0 + 889)) + 63) >> 6;
      }

      v146 = v145 - 1;
      while (1)
      {
        v147 = v142 + 1;
        if (__OFADD__(v142, 1))
        {
          break;
        }

        if (v147 >= v144)
        {
          v170 = *(v0 + 536);
          v171 = sub_100006940(&qword_1000B7F30, &unk_100085C00);
          (*(*(v171 - 8) + 56))(v170, 1, 1, v171);
          v141 = 0;
          goto LABEL_117;
        }

        v143 = *(v0 + 728);
        v141 = *(v143 + 8 * v147 + 64);
        ++v142;
        if (v141)
        {
          v142 = v147;
          goto LABEL_116;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:

      return sub_1000818E8();
    }
  }

  v5 = 0;
  v197 = *(v0 + 600);
  v198 = *(v0 + 584);
  v200 = *(v0 + 560);
  v201 = *(v0 + 552);
  v202 = (v0 + 520);
  v199 = (*(v0 + 632) + 16);
  v205 = *(v0 + 528);
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_134;
    }

    v6 = *(v3 + 32 + 8 * v5);
    if (!*(v6 + 16))
    {
      goto LABEL_39;
    }

    v7 = sub_1000526A8(19);
    if ((v8 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_100006888(*(v6 + 56) + 32 * v7, v0 + 384);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v9 = *(v205 + 312);
    v10 = sub_100081288();

    v11 = [v9 dateFromString:v10];

    if (!v11)
    {
      goto LABEL_38;
    }

    sub_100080D78();

    if (!*(v6 + 16) || (v12 = sub_1000526A8(58), (v13 & 1) == 0))
    {
      v16 = *(v0 + 664);
      v17 = *(v0 + 640);
      v18 = *(v0 + 624);

      v16(v17, v18);
      goto LABEL_39;
    }

    sub_100006888(*(v6 + 56) + 32 * v12, v0 + 416);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v0 + 664))(*(v0 + 640), *(v0 + 624));

      goto LABEL_39;
    }

    v14 = *v202;
    if (!*v202)
    {
      v15 = 0;
LABEL_22:
      if (!*(v6 + 16))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v14 == 64)
    {
      v15 = 2;
      goto LABEL_22;
    }

    if (v14 != 32)
    {
      goto LABEL_37;
    }

    v15 = 1;
    if (!*(v6 + 16))
    {
LABEL_36:
      v42 = *(v0 + 664);
      v43 = *(v0 + 640);
      v44 = *(v0 + 624);

      v42(v43, v44);
      goto LABEL_39;
    }

LABEL_23:
    v19 = sub_1000526A8(48);
    if ((v20 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_100006888(*(v6 + 56) + 32 * v19, v0 + 448);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_37:
      (*(v0 + 664))(*(v0 + 640), *(v0 + 624));
LABEL_38:

LABEL_39:
      v45 = sub_100080FF8();
      v46 = sub_1000815D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Error reading record data. Skipping record.", v47, 2u);
      }

      goto LABEL_42;
    }

    v21 = *(v0 + 504);
    v193 = *(v0 + 496);
    if (v193 == 0xD000000000000024 && 0x80000001000943A0 == v21 || (sub_100081888() & 1) != 0)
    {

      v196 = 0x534E454C2D4F4E3CLL;
      v22 = 0xEB000000003E5345;
    }

    else
    {
      v196 = sub_10004AE34(v6);
      v22 = v65;

      if (!v22)
      {
        (*(v0 + 664))(*(v0 + 640), *(v0 + 624));

        goto LABEL_42;
      }
    }

    v191 = v21;
    v194 = v22;
    if (v204[2])
    {
      v23 = sub_1000525C4(v196, v22);
      if (v24)
      {
        v25 = *(v0 + 616);
        v26 = *(v0 + 608);
        v27 = *(v200 + 72);
        sub_10004AD04(v204[7] + v27 * v23, v26);
        sub_10003CE00(v26, v25);
        if (sub_100080D58())
        {
          v186 = v27;
          v28 = *(v0 + 616);
          v29 = (v28 + v201[6]);
          v31 = *v29;
          v30 = v29[1];
          v187 = *(v28 + v201[7]);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v206 = v203;
          v188 = v31;
          result = sub_1000525C4(v31, v30);
          v35 = v203[2];
          v36 = (v34 & 1) == 0;
          v37 = __OFADD__(v35, v36);
          v38 = v35 + v36;
          if (v37)
          {
            goto LABEL_141;
          }

          v39 = v34;
          if (v203[3] >= v38)
          {
            v41 = v201;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v101 = v30;
              v102 = result;
              sub_100053E90();
              v41 = v201;
              result = v102;
              v30 = v101;
              v203 = v206;
            }
          }

          else
          {
            sub_100053264(v38, isUniquelyReferenced_nonNull_native);
            v203 = v206;
            result = sub_1000525C4(v188, v30);
            if ((v39 & 1) != (v40 & 1))
            {
              goto LABEL_135;
            }

            v41 = v201;
          }

          if (v39)
          {
            *(v203[7] + result) = v187;
          }

          else
          {
            v203[(result >> 6) + 8] |= 1 << result;
            v77 = (v203[6] + 16 * result);
            *v77 = v188;
            v77[1] = v30;
            *(v203[7] + result) = v187;
            v78 = v203[2];
            v37 = __OFADD__(v78, 1);
            v79 = v78 + 1;
            if (v37)
            {
              goto LABEL_144;
            }

            v203[2] = v79;

            v41 = v201;
          }

          v80 = *(v0 + 600);
          v190 = *(v0 + 592);
          v81 = v41;
          (*v199)(v80 + v41[5], *(v0 + 640), *(v0 + 624));
          *v80 = v196;
          *(v197 + 8) = v194;
          v82 = (v80 + v81[6]);
          *v82 = v193;
          v82[1] = v191;
          *(v80 + v81[7]) = v15;
          sub_10003CE00(v80, v190);

          v83 = swift_isUniquelyReferenced_nonNull_native();
          v206 = v204;
          result = sub_1000525C4(v196, v194);
          v85 = v204[2];
          v86 = (v84 & 1) == 0;
          v37 = __OFADD__(v85, v86);
          v87 = v85 + v86;
          if (v37)
          {
            goto LABEL_142;
          }

          v88 = v84;
          if (v204[3] >= v87)
          {
            if ((v83 & 1) == 0)
            {
              v104 = result;
              sub_100053C60();
              result = v104;
            }
          }

          else
          {
            sub_100052F28(v87, v83);
            result = sub_1000525C4(v196, v194);
            if ((v88 & 1) != (v89 & 1))
            {
              goto LABEL_135;
            }
          }

          v94 = *(v0 + 592);
          if (v88)
          {
            v95 = result;

            v204 = v206;
            sub_10004B254(v94, v206[7] + v95 * v186);
          }

          else
          {
            v96 = v206;
            v206[(result >> 6) + 8] |= 1 << result;
            v97 = (v96[6] + 16 * result);
            *v97 = v196;
            v97[1] = v194;
            result = sub_10003CE00(v94, v96[7] + result * v186);
            v98 = v96[2];
            v37 = __OFADD__(v98, 1);
            v99 = v98 + 1;
            if (v37)
            {
              goto LABEL_145;
            }

            v204 = v96;
            v96[2] = v99;
          }

          v100 = *(v0 + 616);
          (*(v0 + 664))(*(v0 + 640), *(v0 + 624));
          sub_10004ADD8(v100);
        }

        else
        {

          v66 = swift_isUniquelyReferenced_nonNull_native();
          v206 = v203;
          result = sub_1000525C4(v193, v191);
          v68 = v203[2];
          v69 = (v67 & 1) == 0;
          v37 = __OFADD__(v68, v69);
          v70 = v68 + v69;
          if (v37)
          {
            goto LABEL_140;
          }

          v71 = v67;
          if (v203[3] >= v70)
          {
            if ((v66 & 1) == 0)
            {
              v103 = result;
              sub_100053E90();
              result = v103;
            }
          }

          else
          {
            sub_100053264(v70, v66);
            result = sub_1000525C4(v193, v191);
            if ((v71 & 1) != (v72 & 1))
            {
              goto LABEL_135;
            }
          }

          v73 = *(v0 + 664);
          v74 = *(v0 + 640);
          v75 = *(v0 + 624);
          if (v71)
          {
            v76 = result;
            v195 = *(v0 + 664);

            v203 = v206;
            *(v206[7] + v76) = v15;
            v195(v74, v75);
          }

          else
          {
            v90 = v206;
            v206[(result >> 6) + 8] |= 1 << result;
            v91 = (v90[6] + 16 * result);
            *v91 = v193;
            v91[1] = v191;
            *(v90[7] + result) = v15;
            result = v73(v74, v75);
            v92 = v90[2];
            v37 = __OFADD__(v92, 1);
            v93 = v92 + 1;
            if (v37)
            {
              goto LABEL_143;
            }

            v203 = v90;
            v90[2] = v93;
          }

          sub_10004ADD8(*(v0 + 616));
        }

        goto LABEL_42;
      }
    }

    v48 = *(v0 + 584);
    v49 = *(v0 + 576);
    (*v199)(v48 + v201[5], *(v0 + 640), *(v0 + 624));
    *v48 = v196;
    *(v198 + 8) = v22;
    v50 = (v48 + v201[6]);
    *v50 = v193;
    v50[1] = v191;
    *(v48 + v201[7]) = v15;
    sub_10003CE00(v48, v49);

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v204;
    v53 = sub_1000525C4(v196, v22);
    v54 = v204[2];
    v55 = (v52 & 1) == 0;
    result = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v56 = v52;
    if (v204[3] >= result)
    {
      if ((v51 & 1) == 0)
      {
        sub_100053C60();
      }
    }

    else
    {
      sub_100052F28(result, v51);
      v57 = sub_1000525C4(v196, v194);
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_135;
      }

      v53 = v57;
    }

    v192 = *(v0 + 664);
    v59 = *(v0 + 640);
    v189 = *(v0 + 624);
    v60 = *(v0 + 576);
    if (v56)
    {

      v204 = v206;
      sub_10004B254(v60, v206[7] + *(v200 + 72) * v53);
      v192(v59, v189);
    }

    else
    {
      v61 = v206;
      v206[(v53 >> 6) + 8] |= 1 << v53;
      v62 = (v61[6] + 16 * v53);
      *v62 = v196;
      v62[1] = v194;
      sub_10003CE00(v60, v61[7] + *(v200 + 72) * v53);
      result = (v192)(v59, v189);
      v63 = v61[2];
      v37 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v37)
      {
        goto LABEL_139;
      }

      v204 = v61;
      v61[2] = v64;
    }

LABEL_42:
    if (v4 == ++v5)
    {
      goto LABEL_87;
    }
  }

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
  return result;
}

uint64_t sub_1000425D0()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v4 = v2[66];

    return _swift_task_switch(sub_100043AC8, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v2[102] = v5;
    *v5 = v3;
    v5[1] = sub_1000427AC;
    v6 = v2[96];
    v7 = v2[95];

    return sub_100051EC0(v7, v6, 1, 1);
  }
}

uint64_t sub_1000427AC()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 528);

  if (v0)
  {
    v4 = sub_100043BEC;
  }

  else
  {
    v4 = sub_1000428F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1000428F4()
{
  v66 = v0;
  v1 = *(v0 + 752);
  v2 = (*(v0 + 744) - 1) & *(v0 + 744);
  if (v2)
  {
    v3 = *(v0 + 736);
LABEL_7:
    *(v0 + 752) = v1;
    *(v0 + 744) = v2;
    v5 = *(v0 + 528);
    v6 = __clz(__rbit64(v2)) | (v1 << 6);
    v7 = (*(v3 + 48) + 16 * v6);
    v8 = *v7;
    *(v0 + 760) = *v7;
    v9 = v7[1];
    *(v0 + 768) = v9;
    v10 = *(*(v3 + 56) + v6);
    *(v0 + 776) = *(v5 + 152);
    v11 = *(v5 + 264);
    *(v0 + 784) = v11;
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A60;
    *(inited + 32) = 48;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    *(inited + 72) = 58;
    *(inited + 104) = &type metadata for Int;
    *(inited + 80) = 32 * v10;
    swift_bridgeObjectRetain_n();

    v13 = sub_10003C818(inited);
    *(v0 + 792) = v13;
    swift_setDeallocating();
    sub_100006940(&qword_1000B7D30, &unk_100085BC0);
    swift_arrayDestroy();
    v14 = swift_task_alloc();
    *(v0 + 800) = v14;
    *v14 = v0;
    v14[1] = sub_1000425D0;

    sub_100050708(v11, v13, 0);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v3 = *(v0 + 736);
      if (v4 >= (((1 << *(v0 + 888)) + 63) >> 6))
      {
        v15 = *(v0 + 728);

        v16 = *(v15 + 32);
        *(v0 + 889) = v16;
        v17 = 1 << v16;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(v15 + 64);

        v20 = 0;
        v21 = &qword_1000B7F30;
        if (!v19)
        {
          goto LABEL_17;
        }

        do
        {
          while (1)
          {
            v22 = *(v0 + 728);
LABEL_25:
            v27 = *(v0 + 568);
            v28 = *(v0 + 536);
            v29 = __clz(__rbit64(v19));
            v19 &= v19 - 1;
            v30 = v29 | (v20 << 6);
            v31 = (*(v22 + 48) + 16 * v30);
            v32 = *v31;
            v33 = v31[1];
            sub_10004AD04(*(v22 + 56) + *(*(v0 + 560) + 72) * v30, v27);
            v34 = sub_100006940(v21, &unk_100085C00);
            v35 = *(v34 + 48);
            *v28 = v32;
            v28[1] = v33;
            sub_10003CE00(v27, v28 + v35);
            (*(*(v34 - 8) + 56))(v28, 0, 1, v34);

            v25 = v20;
LABEL_26:
            *(v0 + 840) = v25;
            *(v0 + 832) = v19;
            v36 = *(v0 + 544);
            sub_10004AD68(*(v0 + 536), v36);
            v37 = sub_100006940(v21, &unk_100085C00);
            if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
            {

              v52 = *(v0 + 8);

              v52();
              return;
            }

            v38 = *(v0 + 544);
            v40 = *v38;
            v39 = v38[1];
            v41 = v38 + *(v37 + 48);
            v42 = *(v41 + *(*(v0 + 552) + 28));
            sub_10004ADD8(v41);
            if (v42)
            {
              if (v42 == 1)
              {
                v51 = 32;
              }

              else
              {
                v51 = 64;
              }

              v53 = sub_100080FF8();
              v54 = sub_1000815C8();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = v51;
                v56 = swift_slowAlloc();
                v57 = swift_slowAlloc();
                v65 = v57;
                *v56 = 136315138;
                *(v56 + 4) = sub_1000597A8(v40, v39, &v65);
                _os_log_impl(&_mh_execute_header, v53, v54, "Updating sync state to active for rxUUID: %s", v56, 0xCu);
                sub_1000068F4(v57);

                v51 = v55;
              }

              v58 = *(*(v0 + 528) + 264);
              *(v0 + 848) = v58;
              sub_100006940(&qword_1000B7D70, &qword_100085A28);
              v59 = swift_initStackObject();
              *(v59 + 32) = 48;
              *(v59 + 16) = xmmword_100085A60;
              *(v59 + 64) = &type metadata for String;
              *(v59 + 40) = v40;
              *(v59 + 48) = v39;
              *(v59 + 72) = 58;
              *(v59 + 104) = &type metadata for Int;
              *(v59 + 80) = v51;

              v60 = sub_10003C818(v59);
              *(v0 + 856) = v60;
              swift_setDeallocating();
              sub_100006940(&qword_1000B7D30, &unk_100085BC0);
              swift_arrayDestroy();
              v61 = swift_initStackObject();
              *(v61 + 16) = xmmword_100084830;
              *(v61 + 32) = 58;
              v62 = v61 + 32;
              *(v61 + 64) = &type metadata for Int;
              *(v61 + 40) = 0;
              v63 = sub_10003C818(v61);
              *(v0 + 864) = v63;
              swift_setDeallocating();
              sub_10001A80C(v62, &qword_1000B7D30, &unk_100085BC0);
              v64 = swift_task_alloc();
              *(v0 + 872) = v64;
              *v64 = v0;
              v64[1] = sub_10004319C;

              sub_10004FA98(v58, v60, v63);
              return;
            }

            v43 = sub_100080FF8();
            v44 = sub_1000815C8();

            if (os_log_type_enabled(v43, v44))
            {
              break;
            }

            v20 = v25;
            if (!v19)
            {
              goto LABEL_17;
            }
          }

          v45 = v21;
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v65 = v47;
          *v46 = 136315138;
          v48 = sub_1000597A8(v40, v39, &v65);

          *(v46 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v43, v44, "Sync state is already active for rxUUID: %s", v46, 0xCu);
          sub_1000068F4(v47);

          v21 = v45;

          v20 = v25;
        }

        while (v19);
LABEL_17:
        v23 = ((1 << *(v0 + 889)) + 63) >> 6;
        if (v23 <= (v20 + 1))
        {
          v24 = v20 + 1;
        }

        else
        {
          v24 = ((1 << *(v0 + 889)) + 63) >> 6;
        }

        v25 = v24 - 1;
        while (1)
        {
          v26 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v26 >= v23)
          {
            v49 = *(v0 + 536);
            v50 = sub_100006940(v21, &unk_100085C00);
            (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
            v19 = 0;
            goto LABEL_26;
          }

          v22 = *(v0 + 728);
          v19 = *(v22 + 8 * v26 + 64);
          ++v20;
          if (v19)
          {
            v20 = v26;
            goto LABEL_25;
          }
        }

        __break(1u);
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004319C()
{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = *(v2 + 528);

  if (v0)
  {
    v4 = sub_100043D10;
  }

  else
  {
    v4 = sub_100043324;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100043324()
{
  v48 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = &qword_1000B7F30;
  if (!v2)
  {
    goto LABEL_5;
  }

  do
  {
    while (1)
    {
      v4 = *(v0 + 728);
LABEL_13:
      v9 = *(v0 + 568);
      v10 = *(v0 + 536);
      v11 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v12 = v11 | (v1 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_10004AD04(*(v4 + 56) + *(*(v0 + 560) + 72) * v12, v9);
      v16 = sub_100006940(v3, &unk_100085C00);
      v17 = *(v16 + 48);
      *v10 = v14;
      v10[1] = v15;
      sub_10003CE00(v9, v10 + v17);
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);

      v7 = v1;
LABEL_14:
      *(v0 + 840) = v7;
      *(v0 + 832) = v2;
      v18 = *(v0 + 544);
      sub_10004AD68(*(v0 + 536), v18);
      v19 = sub_100006940(v3, &unk_100085C00);
      if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
      {

        v34 = *(v0 + 8);

        v34();
        return;
      }

      v20 = *(v0 + 544);
      v22 = *v20;
      v21 = v20[1];
      v23 = v20 + *(v19 + 48);
      v24 = *(v23 + *(*(v0 + 552) + 28));
      sub_10004ADD8(v23);
      if (v24)
      {
        if (v24 == 1)
        {
          v33 = 32;
        }

        else
        {
          v33 = 64;
        }

        v35 = sub_100080FF8();
        v36 = sub_1000815C8();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = v33;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v47 = v39;
          *v38 = 136315138;
          *(v38 + 4) = sub_1000597A8(v22, v21, &v47);
          _os_log_impl(&_mh_execute_header, v35, v36, "Updating sync state to active for rxUUID: %s", v38, 0xCu);
          sub_1000068F4(v39);

          v33 = v37;
        }

        v40 = *(*(v0 + 528) + 264);
        *(v0 + 848) = v40;
        sub_100006940(&qword_1000B7D70, &qword_100085A28);
        inited = swift_initStackObject();
        *(inited + 32) = 48;
        *(inited + 16) = xmmword_100085A60;
        *(inited + 64) = &type metadata for String;
        *(inited + 40) = v22;
        *(inited + 48) = v21;
        *(inited + 72) = 58;
        *(inited + 104) = &type metadata for Int;
        *(inited + 80) = v33;

        v42 = sub_10003C818(inited);
        *(v0 + 856) = v42;
        swift_setDeallocating();
        sub_100006940(&qword_1000B7D30, &unk_100085BC0);
        swift_arrayDestroy();
        v43 = swift_initStackObject();
        *(v43 + 16) = xmmword_100084830;
        *(v43 + 32) = 58;
        v44 = v43 + 32;
        *(v43 + 64) = &type metadata for Int;
        *(v43 + 40) = 0;
        v45 = sub_10003C818(v43);
        *(v0 + 864) = v45;
        swift_setDeallocating();
        sub_10001A80C(v44, &qword_1000B7D30, &unk_100085BC0);
        v46 = swift_task_alloc();
        *(v0 + 872) = v46;
        *v46 = v0;
        v46[1] = sub_10004319C;

        sub_10004FA98(v40, v42, v45);
        return;
      }

      v25 = sub_100080FF8();
      v26 = sub_1000815C8();

      if (os_log_type_enabled(v25, v26))
      {
        break;
      }

      v1 = v7;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    v27 = v3;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v47 = v29;
    *v28 = 136315138;
    v30 = sub_1000597A8(v22, v21, &v47);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "Sync state is already active for rxUUID: %s", v28, 0xCu);
    sub_1000068F4(v29);

    v3 = v27;

    v1 = v7;
  }

  while (v2);
LABEL_5:
  v5 = ((1 << *(v0 + 889)) + 63) >> 6;
  if (v5 <= (v1 + 1))
  {
    v6 = v1 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 889)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v31 = *(v0 + 536);
      v32 = sub_100006940(v3, &unk_100085C00);
      (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      v2 = 0;
      goto LABEL_14;
    }

    v4 = *(v0 + 728);
    v2 = *(v4 + 8 * v8 + 64);
    ++v1;
    if (v2)
    {
      v1 = v8;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1000439C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043D10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043E34(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 184) = a1;
  return _swift_task_switch(sub_100043E58, v1, 0);
}

uint64_t sub_100043E58()
{
  v1 = *(*(v0 + 136) + 248);
  *(v0 + 144) = v1;
  v2 = *(v0 + 184);
  sub_100006940(&qword_1000B7D70, &qword_100085A28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 32;
  v4 = sub_1000565A4(v2);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v4;
  *(inited + 48) = v5;

  v6 = sub_10003C818(inited);
  *(v0 + 152) = v6;
  swift_setDeallocating();
  sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_100043FA8;

  return sub_10004DAFC(v1, 0, 0, v6, 0, 0);
}

uint64_t sub_100043FA8(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = sub_100044494;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_1000440D8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

unint64_t sub_1000440D8()
{
  v38 = v0;
  v1 = v0[21];
  if (!*(v1 + 16))
  {
    goto LABEL_24;
  }

  v2 = *(v1 + 32);

  if (!*(v2 + 16))
  {
    goto LABEL_24;
  }

  v3 = sub_1000526A8(53);
  if ((v4 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_100006888(*(v2 + 56) + 32 * v3, (v0 + 11));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v6 = v0[15];
  result = v0[16];
  v7 = HIBYTE(result) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if (!((result & 0x2000000000000000) != 0 ? HIBYTE(result) & 0xF : v6 & 0xFFFFFFFFFFFFLL))
  {
LABEL_24:

    goto LABEL_25;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    if ((result & 0x2000000000000000) != 0)
    {
      v37[0] = v0[15];
      v37[1] = result & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v7)
        {
          v10 = (v7 - 1);
          if (v7 != 1)
          {
            v13 = 0;
            v26 = v37 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_80:
        __break(1u);
        return result;
      }

      if (v6 != 45)
      {
        if (v7)
        {
          v13 = 0;
          v31 = v37;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v7)
            {
LABEL_69:
              LOBYTE(v10) = 0;
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v7)
      {
        v10 = (v7 - 1);
        if (v7 != 1)
        {
          v13 = 0;
          v19 = v37 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v10 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v36 = v0[16];
        v10 = sub_1000816B8();
        result = v36;
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v22 = v8 - 1;
          if (v8 != 1)
          {
            v13 = 0;
            if (v10)
            {
              v23 = v10 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_70;
                }

                v25 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_70;
                }

                v13 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_70;
                }

                ++v23;
                if (!--v22)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_71;
          }

          goto LABEL_70;
        }

        goto LABEL_79;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v13 = 0;
          if (v10)
          {
            while (1)
            {
              v29 = *v10 - 48;
              if (v29 > 9)
              {
                goto LABEL_70;
              }

              v30 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_70;
              }

              v13 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_70;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_70:
        v13 = 0;
        LOBYTE(v10) = 1;
        goto LABEL_71;
      }

      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (v10)
          {
            v14 = v10 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_70;
              }

              v16 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_70;
              }

              v13 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_70;
              }

              ++v14;
              if (!--v12)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_71:
          v34 = v10;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v13 = sub_1000494A8(v0[15], v0[16], 10);
  v34 = v35;
LABEL_72:

  if (v34)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

LABEL_26:
  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_100044494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044500(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 184) = a1;
  return _swift_task_switch(sub_100044524, v1, 0);
}

uint64_t sub_100044524()
{
  v1 = *(*(v0 + 136) + 248);
  *(v0 + 144) = v1;
  v2 = *(v0 + 184);
  sub_100006940(&qword_1000B7D70, &qword_100085A28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 32;
  v4 = sub_1000565A4(v2);
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v4;
  *(inited + 48) = v5;

  v6 = sub_10003C818(inited);
  *(v0 + 152) = v6;
  swift_setDeallocating();
  sub_10001A80C(inited + 32, &qword_1000B7D30, &unk_100085BC0);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_100044674;

  return sub_10004DAFC(v1, 0, 0, v6, 0, 0);
}

uint64_t sub_100044674(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[17];
    v5 = sub_100044494;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_1000447A4;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000447A4()
{
  v1 = v0[21];
  if (*(v1 + 16) && (v2 = *(v1 + 32), , , *(v2 + 16)) && (v3 = sub_1000526A8(53), (v4 & 1) != 0))
  {
    sub_100006888(*(v2 + 56) + 32 * v3, (v0 + 11));

    if (swift_dynamicCast())
    {
      v5 = v0[15];
      v6 = v0[16];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = 0;
  v6 = 0;
LABEL_8:
  v7 = v0[1];

  return v7(v5, v6);
}

uint64_t sub_100044894(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_100006940(&qword_1000B7F38, &qword_100085C18);
  v3[23] = swift_task_alloc();
  sub_100006940(&qword_1000B7F40, &qword_100085C20);
  v3[24] = swift_task_alloc();
  v4 = sub_100006940(&qword_1000B7F48, &qword_100085C28);
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000449D4, v2, 0);
}

uint64_t sub_1000449D4()
{
  v31 = v0;
  v1 = v0[22];
  v2 = sub_10003C570(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v3 = *(v1 + 280);
  v30 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
LABEL_31:
    v4 = sub_1000817A8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v0[26];
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = v0[21];
    v28 = (v7 + 56);
    v29 = v9;
    v26 = (v7 + 32);
    v27 = (v7 + 8);
    v25 = v4;
    v24 = v2;
    while (1)
    {
      if (v6)
      {
        v10 = sub_1000816A8();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v2 = v24;
          break;
        }
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = *(v3 + 8 * v5 + 32);

        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      v11 = *(v10 + 56);
      if ((v11 & 4) != 0 || (v11 & 2) != 0)
      {
      }

      else
      {
        if (!v9)
        {
          goto LABEL_16;
        }

        v0[13] = v0[20];
        v0[14] = v9;
        v0[15] = 42;
        v0[16] = 0xE100000000000000;
        v0[17] = 10798;
        v0[18] = 0xE200000000000000;
        sub_10004B2B8();
        sub_100081648();
        sub_100080E48();
        v12 = v0[27];
        v14 = v0[24];
        v13 = v0[25];
        (*v28)(v14, 0, 1, v13);
        (*v26)(v12, v14, v13);
        sub_100080E38();
        v15 = v0[23];
        (*v27)(v0[27], v0[25]);
        v16 = sub_100006940(&qword_1000B7F58, &unk_100085C30);
        v8 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((*(*(v16 - 8) + 48))(v15, 1, v16) != 1)
        {
          sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
          v6 = v3 & 0xC000000000000001;
          v4 = v25;
LABEL_16:
          sub_1000816D8();
          sub_1000816F8();
          sub_100081708();
          sub_1000816E8();
          v9 = v29;
          goto LABEL_6;
        }

        v6 = v3 & 0xC000000000000001;
        v4 = v25;
        v9 = v29;
        sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
      }

LABEL_6:
      ++v5;
      if (v2 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  v30 = sub_10004A990(v17);
  sub_100049EA8(&v30);

  v18 = v30;
  v0[28] = v30;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    result = sub_1000817A8();
    v0[29] = result;
    if (result)
    {
      goto LABEL_24;
    }

LABEL_33:

    v23 = v0[1];

    return v23(v2);
  }

  result = *(v18 + 16);
  v0[29] = result;
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_24:
  v0[30] = v2;
  v20 = v0[28];
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_1000816A8();
  }

  else
  {
    if (!*(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v20 + 32);
  }

  v0[31] = v21;
  v0[32] = 1;
  v22 = swift_task_alloc();
  v0[33] = v22;
  *v22 = v0;
  v22[1] = sub_100044F8C;

  return sub_100051804(v21);
}

uint64_t sub_100044F8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = *(v4 + 176);

    v6 = sub_1000453E4;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 176);
    *(v4 + 280) = a1;
    v6 = sub_1000450D8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000450D8()
{
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = sub_100006940(&unk_1000B8390, &qword_100086040);
  *(v0 + 16) = v2;
  *(v0 + 40) = v7;
  sub_1000068E4((v0 + 16), (v0 + 48));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v4;
  v9 = v0 + 152;
  v10 = sub_1000525C4(v6, v5);
  v12 = *(v4 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v11;
  if (*(*(v0 + 240) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = v10;
    sub_1000537E4();
    v10 = v21;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_100052730(v15, isUniquelyReferenced_nonNull_native);
  v10 = sub_1000525C4(v6, v5);
  if ((v1 & 1) != (v16 & 1))
  {

    return sub_1000818E8();
  }

LABEL_8:
  if (v1)
  {
LABEL_9:
    v18 = v10;

    v19 = *v9;
    v20 = (*(*v9 + 56) + 32 * v18);
    sub_1000068F4(v20);
    sub_1000068E4((v0 + 48), v20);

    goto LABEL_14;
  }

LABEL_12:
  v19 = *v9;
  *(*v9 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v19[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  sub_1000068E4((v0 + 48), (v19[7] + 32 * v10));

  v23 = v19[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
    __break(1u);
LABEL_26:
    result = sub_1000816A8();
    v27 = result;
    goto LABEL_21;
  }

  v19[2] = v24;
LABEL_14:
  v5 = *(v0 + 256);
  if (v5 == *(v0 + 232))
  {

    v25 = *(v0 + 8);

    return v25(v19);
  }

  *(v0 + 240) = v19;
  v26 = *(v0 + 224);
  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v5 >= *(v26 + 16))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v27 = *(v26 + 8 * v5 + 32);

LABEL_21:
  *(v0 + 248) = v27;
  *(v0 + 256) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v28 = swift_task_alloc();
  *(v0 + 264) = v28;
  *v28 = v0;
  v28[1] = sub_100044F8C;

  return sub_100051804(v27);
}

uint64_t sub_1000453E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045470(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_100006940(&qword_1000B7F38, &qword_100085C18);
  v3[23] = swift_task_alloc();
  sub_100006940(&qword_1000B7F40, &qword_100085C20);
  v3[24] = swift_task_alloc();
  v4 = sub_100006940(&qword_1000B7F48, &qword_100085C28);
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000455B0, v2, 0);
}

uint64_t sub_1000455B0()
{
  v32 = v0;
  v1 = v0[22];
  v2 = sub_10003C570(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v3 = *(v1 + 280);
  v31 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
LABEL_31:
    v4 = sub_1000817A8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v0[26];
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v9 = v0[21];
    v29 = (v7 + 56);
    v30 = v9;
    v27 = (v7 + 32);
    v28 = (v7 + 8);
    v26 = v4;
    v25 = v2;
    while (1)
    {
      if (v6)
      {
        v10 = sub_1000816A8();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v2 = v25;
          break;
        }
      }

      else
      {
        if (v5 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v10 = *(v3 + 8 * v5 + 32);

        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      v11 = *(v10 + 56);
      if ((v11 & 4) != 0 || (v11 & 2) != 0)
      {
      }

      else
      {
        if (!v9)
        {
          goto LABEL_16;
        }

        v0[13] = v0[20];
        v0[14] = v9;
        v0[15] = 42;
        v0[16] = 0xE100000000000000;
        v0[17] = 10798;
        v0[18] = 0xE200000000000000;
        sub_10004B2B8();
        sub_100081648();
        sub_100080E48();
        v12 = v0[27];
        v14 = v0[24];
        v13 = v0[25];
        (*v29)(v14, 0, 1, v13);
        (*v27)(v12, v14, v13);
        sub_100080E38();
        v15 = v0[23];
        (*v28)(v0[27], v0[25]);
        v16 = sub_100006940(&qword_1000B7F58, &unk_100085C30);
        v8 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((*(*(v16 - 8) + 48))(v15, 1, v16) != 1)
        {
          sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
          v6 = v3 & 0xC000000000000001;
          v4 = v26;
LABEL_16:
          sub_1000816D8();
          sub_1000816F8();
          sub_100081708();
          sub_1000816E8();
          v9 = v30;
          goto LABEL_6;
        }

        v6 = v3 & 0xC000000000000001;
        v4 = v26;
        v9 = v30;
        sub_10001A80C(v0[23], &qword_1000B7F38, &qword_100085C18);
      }

LABEL_6:
      ++v5;
      if (v2 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  v31 = sub_10004A990(v17);
  sub_100049EA8(&v31);

  v19 = v31;
  v0[28] = v31;
  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    v20 = sub_1000817A8();
    v0[29] = v20;
    if (v20)
    {
LABEL_24:
      v0[30] = v2;
      v21 = v0[28];
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = sub_1000816A8();
      }

      else
      {
        if (!*(v21 + 16))
        {
          __break(1u);
          return _swift_task_switch(v20, v21, v18);
        }
      }

      v0[31] = v22;
      v0[32] = 1;
      v21 = *(v0[22] + 152);
      v0[33] = v21;
      v20 = sub_100045B30;
      v18 = 0;

      return _swift_task_switch(v20, v21, v18);
    }
  }

  else
  {
    v20 = *(v19 + 16);
    v0[29] = v20;
    if (v20)
    {
      goto LABEL_24;
    }
  }

  v23 = v0[1];

  return v23(v2);
}

uint64_t sub_100045B30()
{
  v1 = sub_10003C818(_swiftEmptyArrayStorage);
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_100045BF0;
  v3 = v0[31];

  return sub_10004DAFC(v3, 0, 0, v1, 0, 1);
}

uint64_t sub_100045BF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v5 = *(v3 + 264);

  if (v1)
  {

    v6 = sub_100045E88;
  }

  else
  {
    v6 = sub_100045D50;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100045D50()
{
  v1 = v0[36];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = _swiftEmptyArrayStorage;
    do
    {

      v6 = sub_100006048(v5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10003DE6C(0, v4[2] + 1, 1, v4);
      }

      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        v4 = sub_10003DE6C((v7 > 1), v8 + 1, 1, v4);
      }

      v4[2] = v8 + 1;
      v4[v8 + 4] = v6;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[38] = v4;
  v9 = v0[22];

  return _swift_task_switch(sub_100045F80, v9, 0);
}

uint64_t sub_100045E88()
{
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100045EF4, v1, 0);
}

uint64_t sub_100045EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100045F80()
{
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = sub_100006940(&qword_1000B7F70, &qword_100085C58);
  *(v0 + 16) = v2;
  *(v0 + 40) = v7;
  sub_1000068E4((v0 + 16), (v0 + 48));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v4;
  v9 = v0 + 152;
  v10 = sub_1000525C4(v6, v5);
  v12 = *(v4 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v11;
  if (*(*(v0 + 240) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21 = v10;
    sub_1000537E4();
    v10 = v21;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_100052730(v15, isUniquelyReferenced_nonNull_native);
  v10 = sub_1000525C4(v6, v5);
  if ((v1 & 1) != (v16 & 1))
  {

    return sub_1000818E8();
  }

LABEL_8:
  if (v1)
  {
LABEL_9:
    v18 = v10;

    v19 = *v9;
    v20 = (*(*v9 + 56) + 32 * v18);
    sub_1000068F4(v20);
    sub_1000068E4((v0 + 48), v20);
    goto LABEL_14;
  }

LABEL_12:
  v19 = *v9;
  *(*v9 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v19[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  sub_1000068E4((v0 + 48), (v19[7] + 32 * v10));
  v23 = v19[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19[2] = v24;
LABEL_14:
  v25 = *(v0 + 256);
  v26 = *(v0 + 232);

  if (v25 != v26)
  {
    v5 = *(v0 + 256);
    *(v0 + 240) = v19;
    v30 = *(v0 + 224);
    if ((v30 & 0xC000000000000001) == 0)
    {
      if (v5 >= *(v30 + 16))
      {
        goto LABEL_28;
      }

LABEL_21:
      *(v0 + 248) = v27;
      *(v0 + 256) = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        v30 = *(*(v0 + 176) + 152);
        *(v0 + 264) = v30;
        v27 = sub_100045B30;
        v28 = 0;

        return _swift_task_switch(v27, v30, v28);
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return _swift_task_switch(v27, v30, v28);
    }

LABEL_26:
    v27 = sub_1000816A8();
    goto LABEL_21;
  }

  v29 = *(v0 + 8);

  return v29(v19);
}

Swift::Int sub_100046258()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(32 * v1);
  return sub_1000819B8();
}

Swift::Int sub_1000462D0()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(32 * v1);
  return sub_1000819B8();
}

uint64_t *sub_100046314@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 32)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 64)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

void sub_100046364()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B7DB8);
  sub_100016240(v0, qword_1000B7DB8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for DataManager();
    sub_100006940(&qword_1000B7F20, &qword_100085BD8);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_100046458(uint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  swift_defaultActor_initialize();
  *(v3 + 200) = sub_10003C708(_swiftEmptyArrayStorage);
  v108 = (v3 + 200);
  *(v3 + 208) = sub_10003C708(_swiftEmptyArrayStorage);
  v107 = (v3 + 208);
  *(v3 + 216) = sub_10003C708(_swiftEmptyArrayStorage);
  v105 = (v3 + 216);
  *(v3 + 224) = sub_10003C708(_swiftEmptyArrayStorage);
  v106 = (v3 + 224);
  *(v3 + 272) = sub_10003C708(_swiftEmptyArrayStorage);
  *(v3 + 280) = _swiftEmptyArrayStorage;
  *(v3 + 288) = 0;
  *(v3 + 320) = [objc_allocWithZone(NSNotificationCenter) init];
  *(v3 + 328) = 0;
  sub_100006940(&qword_1000B8C80, &qword_100085BE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100085A70;
  v7 = type metadata accessor for CRXCDiopterRange();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = 1061158912;
  *&v8[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = 1067450368;
  *&v8[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = 1048576000;
  v112.receiver = v8;
  v112.super_class = v7;
  *(v6 + 32) = objc_msgSendSuper2(&v112, "init");
  v9 = objc_allocWithZone(v7);
  *&v9[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = 1069547520;
  *&v9[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = 1071644672;
  *&v9[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = 1056964608;
  v111.receiver = v9;
  v111.super_class = v7;
  *(v6 + 40) = objc_msgSendSuper2(&v111, "init");
  v10 = objc_allocWithZone(v7);
  *&v10[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = 0x40000000;
  *&v10[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = 1076887552;
  *&v10[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = 1061158912;
  v110.receiver = v10;
  v110.super_class = v7;
  *(v6 + 48) = objc_msgSendSuper2(&v110, "init");
  *(v5 + 336) = v6;
  sub_100022CA4(a2, v5 + 112);
  sub_100022CA4(a3, v5 + 160);
  *(v5 + 152) = a1;
  type metadata accessor for PrescriptionNameGenerator();
  swift_allocObject();

  *(v5 + 296) = sub_100070114();
  type metadata accessor for AppClipCodeTranscoder();
  *(v5 + 304) = swift_allocObject();
  type metadata accessor for DataStoreTableBuilder();
  v11 = 0;
  v12 = 0;
  do
  {
    v109 = v11;
    v13 = *(&off_1000AA180 + v12 + 32);
    inited = swift_initStackObject();
    *(inited + 24) = 0;
    *(inited + 32) = _swiftEmptyArrayStorage;
    *(inited + 48) = _swiftEmptyArrayStorage;
    *(inited + 56) = 0;
    *(inited + 16) = 2;
    *(inited + 17) = v13;
    *(inited + 18) = 6;
    *(inited + 40) = 55;
    v15 = objc_allocWithZone(MAKVStoreDataField);
    v16 = sub_100081288();
    v17 = [v15 initWithName:v16 type:3 options:9];

    swift_beginAccess();
    v18 = v17;
    sub_100081468();
    if (*((*(inited + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(inited + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();

    sub_100059EE8(56, 1u, 0);

    sub_100059EE8(57, 1u, 0);

    sub_100059EE8(32, 2u, 0);

    sub_100059EE8(52, 2u, 2);

    sub_100059EE8(8, 0, 2);

    sub_100059EE8(25, 1u, 0);

    sub_100059EE8(46, 0, 0);

    sub_100059EE8(47, 0, 0);

    sub_100059EE8(3, 1u, 0);

    sub_100059EE8(4, 1u, 0);

    sub_100059EE8(27, 2u, 2);

    sub_100059EE8(28, 2u, 2);

    sub_100059EE8(0, 3u, 2);

    sub_100059EE8(1, 3u, 2);

    sub_100059EE8(2, 3u, 2);

    v19 = sub_100059EE8(54, 1u, 2);

    swift_beginAccess();
    sub_100049120(&off_1000AA1A8);
    swift_endAccess();
    *(v19 + 56) |= v13 | 0xC;
    v20 = sub_1000592E4();
    if (v4)
    {

      sub_1000068F4((v5 + 112));

      sub_1000068F4((v5 + 160));

      swift_defaultActor_destroy();

      sub_1000068F4(a3);
      sub_1000068F4(a2);
      swift_deallocPartialClassInstance();
      return v5;
    }

    v21 = v20;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = *v108;
    *v108 = 0x8000000000000000;
    sub_10003C44C(v21, v13, isUniquelyReferenced_nonNull_native);
    v23 = v113;
    *v108 = v113;
    v24 = swift_endAccess();
    if (!*(v23 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v24 = sub_10005263C(v13);
    if ((v25 & 1) == 0)
    {
      goto LABEL_54;
    }

    swift_beginAccess();

    sub_100081468();
    if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v26 = swift_initStackObject();
    *(v26 + 24) = 0;
    *(v26 + 32) = _swiftEmptyArrayStorage;
    *(v26 + 48) = _swiftEmptyArrayStorage;
    *(v26 + 56) = 0;
    *(v26 + 16) = 2;
    *(v26 + 17) = v13;
    *(v26 + 18) = 7;
    *(v26 + 40) = 48;
    v27 = objc_allocWithZone(MAKVStoreDataField);
    v28 = sub_100081288();
    v29 = [v27 initWithName:v28 type:3 options:9];

    swift_beginAccess();
    v30 = v29;
    sub_100081468();
    if (*((*(v26 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();

    sub_100059EE8(22, 0, 6);

    sub_100059EE8(0, 3u, 0);

    sub_100059EE8(23, 0, 6);

    sub_100059EE8(44, 0, 6);

    sub_100059EE8(45, 0, 6);

    sub_100059EE8(27, 2u, 6);

    v31 = sub_100059EE8(28, 2u, 6);

    *(v31 + 56) |= 4uLL;
    v32 = sub_1000592E4();

    swift_beginAccess();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *v107;
    *v107 = 0x8000000000000000;
    sub_10003C44C(v32, v13, v33);
    v34 = v113;
    *v107 = v113;
    v24 = swift_endAccess();
    if (!*(v34 + 16))
    {
      goto LABEL_55;
    }

    v24 = sub_10005263C(v13);
    if ((v35 & 1) == 0)
    {
      goto LABEL_56;
    }

    swift_beginAccess();

    sub_100081468();
    if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v36 = swift_initStackObject();
    *(v36 + 24) = 0;
    *(v36 + 32) = _swiftEmptyArrayStorage;
    v37 = (v36 + 32);
    *(v36 + 48) = _swiftEmptyArrayStorage;
    *(v36 + 56) = 0;
    if (v13)
    {
      v38 = 2;
    }

    else
    {
      v38 = 1;
    }

    *(v36 + 16) = v38;
    *(v36 + 17) = v13;
    *(v36 + 18) = 2;
    *(v36 + 40) = 48;
    v39 = objc_allocWithZone(MAKVStoreDataField);
    v40 = sub_100081288();
    v41 = [v39 initWithName:v40 type:3 options:9];

    swift_beginAccess();
    v42 = v41;
    sub_100081468();
    if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();

    sub_100059EE8(43, 0, 4);

    sub_100059EE8(32, 2u, 0);

    sub_100059EE8(7, 0, 0);

    sub_100059EE8(21, 0, 6);

    v43 = sub_100059EE8(22, 0, 6);

    *(v43 + 56) |= 4uLL;
    v44 = *(v43 + 24);
    *(v43 + 24) = NSFileProtectionNone;
    v45 = NSFileProtectionNone;

    v46 = sub_1000592E4();

    swift_beginAccess();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *v106;
    *v106 = 0x8000000000000000;
    sub_10003C44C(v46, v13, v47);
    v48 = v113;
    *v106 = v113;
    v24 = swift_endAccess();
    if (!*(v48 + 16))
    {
      goto LABEL_57;
    }

    v24 = sub_10005263C(v13);
    if ((v49 & 1) == 0)
    {
      goto LABEL_58;
    }

    swift_beginAccess();

    sub_100081468();
    if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v50 = swift_initStackObject();
    *(v50 + 24) = 0;
    *(v50 + 32) = _swiftEmptyArrayStorage;
    *(v50 + 40) = 63;
    *(v50 + 48) = _swiftEmptyArrayStorage;
    *(v50 + 56) = 0;
    *(v50 + 16) = 2;
    *(v50 + 17) = v13;
    *(v50 + 18) = 9;
    sub_100059EE8(48, 2u, 1);

    sub_100059EE8(34, 0, 0);

    sub_100059EE8(35, 1u, 0);

    sub_100059EE8(36, 0, 0);

    sub_100059EE8(37, 1u, 0);

    sub_100059EE8(38, 0, 0);

    sub_100059EE8(39, 1u, 0);

    sub_100059EE8(40, 0, 0);

    sub_100059EE8(41, 1u, 0);

    v51 = sub_100059EE8(42, 0, 0);

    *(v51 + 56) |= 4uLL;
    v52 = sub_1000592E4();

    swift_beginAccess();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(v5 + 272);
    *(v5 + 272) = 0x8000000000000000;
    sub_10003C44C(v52, v13, v53);
    v54 = v113;
    *(v5 + 272) = v113;
    v24 = swift_endAccess();
    if (!*(v54 + 16))
    {
      goto LABEL_59;
    }

    v24 = sub_10005263C(v13);
    if ((v55 & 1) == 0)
    {
      goto LABEL_60;
    }

    swift_beginAccess();

    sub_100081468();
    if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v56 = swift_initStackObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = _swiftEmptyArrayStorage;
    *(v56 + 40) = 63;
    *(v56 + 48) = _swiftEmptyArrayStorage;
    *(v56 + 56) = 0;
    *(v56 + 16) = 2;
    *(v56 + 17) = v13;
    *(v56 + 18) = 4;
    sub_100059EE8(48, 2u, 1);

    v57 = sub_100059EE8(9, 3u, 0);

    v58 = *(v57 + 24);
    *(v57 + 24) = NSFileProtectionNone;
    v59 = v45;

    *(v57 + 56) |= 4uLL;
    v60 = sub_1000592E4();

    swift_beginAccess();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *v105;
    sub_10003C44C(v60, v13, v61);
    v62 = v113;
    *v105 = v113;
    v24 = swift_endAccess();
    if (!*(v62 + 16))
    {
      goto LABEL_61;
    }

    v24 = sub_10005263C(v13);
    if ((v63 & 1) == 0)
    {
      goto LABEL_62;
    }

    swift_beginAccess();

    sub_100081468();
    if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000814A8();
    }

    sub_1000814C8();
    swift_endAccess();
    v11 = 1;
    v12 = &_mh_execute_header.magic + 1;
  }

  while ((v109 & 1) == 0);
  v64 = swift_initStackObject();
  *(v64 + 24) = 0;
  *(v64 + 32) = _swiftEmptyArrayStorage;
  *(v64 + 48) = _swiftEmptyArrayStorage;
  *(v64 + 56) = 0;
  *(v64 + 16) = 2;
  *(v64 + 18) = 5;
  *(v64 + 40) = 0;
  v65 = objc_allocWithZone(MAKVStoreDataField);
  v66 = sub_100081288();
  v67 = [v65 initWithName:v66 type:4 options:9];

  swift_beginAccess();
  v68 = v67;
  sub_100081468();
  if (*((*(v64 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v64 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  v69 = sub_100059EE8(16, 0, 0);

  *(v69 + 56) |= 4uLL;
  v71 = sub_1000592E4();

  *(v5 + 232) = v71;
  swift_beginAccess();

  sub_100081468();
  if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v72 = swift_initStackObject();
  *(v72 + 24) = 0;
  *(v72 + 32) = _swiftEmptyArrayStorage;
  *(v72 + 48) = _swiftEmptyArrayStorage;
  *(v72 + 56) = 0;
  *(v72 + 16) = 1;
  *(v72 + 18) = 1;
  *(v72 + 40) = 20;
  v73 = objc_allocWithZone(MAKVStoreDataField);
  v74 = sub_100081288();
  v75 = [v73 initWithName:v74 type:3 options:9];

  swift_beginAccess();
  v76 = v75;
  sub_100081468();
  if (*((*(v72 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v72 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  sub_100059EE8(31, 0, 0);

  sub_100059EE8(11, 0, 0);

  sub_100059EE8(10, 0, 0);

  sub_100059EE8(12, 0, 0);

  sub_100059EE8(13, 0, 0);

  v77 = sub_100059EE8(48, 2u, 10);

  v78 = *(v77 + 24);
  *(v77 + 24) = NSFileProtectionNone;
  v79 = v59;

  *(v77 + 56) |= 4uLL;
  v80 = sub_1000592E4();

  *(v5 + 240) = v80;
  swift_beginAccess();

  sub_100081468();
  if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v81 = swift_initStackObject();
  *(v81 + 24) = 0;
  *(v81 + 32) = _swiftEmptyArrayStorage;
  *(v81 + 48) = _swiftEmptyArrayStorage;
  *(v81 + 56) = 0;
  *(v81 + 16) = 1;
  *(v81 + 18) = 3;
  *(v81 + 40) = 32;
  v82 = objc_allocWithZone(MAKVStoreDataField);
  v83 = sub_100081288();
  v84 = [v82 initWithName:v83 type:3 options:9];

  swift_beginAccess();
  v85 = v84;
  sub_100081468();
  if (*((*(v81 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v81 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  v86 = sub_100059EE8(53, 2u, 0);

  v87 = *(v86 + 24);
  *(v86 + 24) = NSFileProtectionNone;
  v88 = v79;

  *(v86 + 56) |= 4uLL;
  v89 = sub_1000592E4();

  *(v5 + 248) = v89;
  swift_beginAccess();

  sub_100081468();
  if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v90 = swift_initStackObject();
  *(v90 + 24) = 0;
  *(v90 + 32) = _swiftEmptyArrayStorage;
  *(v90 + 40) = 63;
  *(v90 + 48) = _swiftEmptyArrayStorage;
  *(v90 + 56) = 0;
  *(v90 + 16) = 0;
  *(v90 + 18) = 0;
  sub_100059EE8(20, 0, 9);

  sub_100059EE8(14, 2u, 0);

  sub_100059EE8(5, 1u, 0);

  v91 = sub_100059EE8(6, 1u, 0);

  *(v91 + 56) |= 0xEuLL;
  v92 = sub_1000592E4();

  *(v5 + 256) = v92;
  swift_beginAccess();

  sub_100081468();
  if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v93 = swift_initStackObject();
  *(v93 + 24) = 0;
  *(v93 + 32) = _swiftEmptyArrayStorage;
  *(v93 + 48) = _swiftEmptyArrayStorage;
  *(v93 + 56) = 0;
  *(v93 + 16) = 258;
  *(v93 + 18) = 8;
  *(v93 + 40) = 48;
  v94 = objc_allocWithZone(MAKVStoreDataField);
  v95 = sub_100081288();
  v96 = [v94 initWithName:v95 type:3 options:9];

  swift_beginAccess();
  v97 = v96;
  sub_100081468();
  if (*((*(v93 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v93 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  sub_100059EE8(0, 2u, 6);

  sub_100059EE8(1, 2u, 6);

  sub_100059EE8(2, 2u, 6);

  sub_100059EE8(19, 2u, 0);

  sub_100059EE8(10, 0, 0);

  sub_100059EE8(27, 2u, 2);

  sub_100059EE8(28, 2u, 2);

  sub_100059EE8(17, 0, 0);

  sub_100059EE8(51, 2u, 2);

  sub_100059EE8(50, 2u, 2);

  sub_100059EE8(49, 2u, 2);

  sub_100059EE8(26, 2u, 2);

  sub_100059EE8(18, 0, 0);

  sub_100059EE8(59, 0, 0);

  sub_100059EE8(60, 1u, 0);

  sub_100059EE8(61, 1u, 0);

  sub_100059EE8(62, 1u, 0);

  sub_100059EE8(58, 0, 0);

  sub_100059EE8(56, 1u, 0);

  v98 = sub_100059EE8(57, 1u, 0);

  *(v98 + 56) |= 0x18uLL;
  v24 = sub_1000592E4();
LABEL_63:
  v99 = v24;

  *(v5 + 264) = v99;
  swift_beginAccess();

  sub_100081468();
  if (*((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();
  v100 = [objc_allocWithZone(NSDateFormatter) init];
  v101 = sub_100081288();
  [v100 setDateFormat:v101];

  sub_1000068F4(a3);
  sub_1000068F4(a2);
  *(v5 + 312) = v100;
  return v5;
}

uint64_t sub_1000482D0()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100048364;

  return sub_100043E34(0);
}

uint64_t sub_100048364(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 48);

    return _swift_task_switch(sub_1000484B0, v7, 0);
  }
}

uint64_t sub_1000484B0()
{
  v1 = v0[8];
  if (v1 < 0)
  {
    if (qword_1000B73F8 != -1)
    {
      swift_once();
    }

    v5 = sub_100081018();
    sub_100016240(v5, qword_1000B7DB8);
    v6 = sub_100080FF8();
    v7 = sub_1000815B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[8];
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v8;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Upgrading database from schema version %ld to %ld", v9, 0x16u);
    }

    v0[5] = &type metadata for Int;
    v0[2] = 0;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_100048798;

    return sub_100048964(0, (v0 + 2));
  }

  else
  {
    if (v1)
    {
      sub_10004AC50();
      swift_allocError();
      *v2 = 3;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 32) = 5;
      swift_willThrow();
      v3 = v0[1];
      v4 = 0;
    }

    else
    {
      if (qword_1000B73F8 != -1)
      {
        swift_once();
      }

      v12 = sub_100081018();
      sub_100016240(v12, qword_1000B7DB8);
      v13 = sub_100080FF8();
      v14 = sub_1000815B8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Database schema version is %ld; no upgrade necessary", v15, 0xCu);
      }

      v3 = v0[1];
      v4 = v0[8] >> 63;
    }

    return v3(v4);
  }
}

uint64_t sub_100048798()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_1000488EC, v3, 0);
  }

  else
  {
    sub_10001A80C((v2 + 2), &qword_1000B75E0, &qword_1000856D0);
    v4 = v2[1];
    v5 = v2[8] >> 63;

    return v4(v5);
  }
}

uint64_t sub_1000488EC()
{
  sub_10001A80C(v0 + 16, &qword_1000B75E0, &qword_1000856D0);
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100048964(char a1, uint64_t a2)
{
  *(v3 + 304) = a2;
  *(v3 + 312) = v2;
  *(v3 + 400) = a1;
  return _swift_task_switch(sub_100048988, v2, 0);
}

uint64_t sub_100048988()
{
  sub_10000CFA4(*(v0 + 304), v0 + 272);
  v1 = *(v0 + 312);
  v2 = *(v0 + 400);
  if (*(v0 + 296))
  {
    sub_1000068E4((v0 + 272), (v0 + 240));
    v3 = *(v1 + 152);
    *(v0 + 320) = v3;
    *(v0 + 328) = *(v1 + 248);
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A60;
    *(inited + 32) = 32;
    v5 = sub_1000565A4(v2);
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = v6;
    *(inited + 72) = 53;
    sub_100006888(v0 + 240, inited + 80);

    *(v0 + 336) = sub_10003C818(inited);
    swift_setDeallocating();
    sub_100006940(&qword_1000B7D30, &unk_100085BC0);
    swift_arrayDestroy();

    return _swift_task_switch(sub_100048BF8, v3, 0);
  }

  else
  {
    sub_10001A80C(v0 + 272, &qword_1000B75E0, &qword_1000856D0);
    v7 = *(v1 + 248);
    *(v0 + 368) = v7;
    sub_100006940(&qword_1000B7D70, &qword_100085A28);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_100084830;
    *(v8 + 32) = 32;
    v9 = sub_1000565A4(v2);
    *(v8 + 64) = &type metadata for String;
    *(v8 + 40) = v9;
    *(v8 + 48) = v10;

    v11 = sub_10003C818(v8);
    *(v0 + 376) = v11;
    swift_setDeallocating();
    sub_10001A80C(v8 + 32, &qword_1000B7D30, &unk_100085BC0);
    v12 = swift_task_alloc();
    *(v0 + 384) = v12;
    *v12 = v0;
    v12[1] = sub_100048F6C;

    return sub_100050708(v7, v11, 0);
  }
}

uint64_t sub_100048BF8()
{
  v1 = v0[42];
  sub_100006940(&qword_1000B7D78, &qword_100085A30);
  inited = swift_initStackObject();
  v0[43] = inited;
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_100048CC8;
  v4 = v0[41];

  return sub_10004EE80(v4, inited);
}

uint64_t sub_100048CC8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = v2[40];
    v4 = sub_100048E78;
  }

  else
  {
    v5 = v2[43];
    v6 = v2[39];

    swift_setDeallocating();
    sub_10001A80C(v5 + 32, &qword_1000B7D80, &qword_100085BD0);
    v4 = sub_100048E14;
    v3 = v6;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100048E14()
{
  sub_1000068F4((v0 + 240));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048E78()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);

  swift_setDeallocating();
  sub_10001A80C(v1 + 32, &qword_1000B7D80, &qword_100085BD0);

  return _swift_task_switch(sub_100048F08, v2, 0);
}

uint64_t sub_100048F08()
{
  sub_1000068F4((v0 + 240));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100048F6C()
{
  v2 = *v1;
  v2[49] = v0;

  if (v0)
  {
    v3 = v2[39];

    return _swift_task_switch(sub_1000490B4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1000490B4()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100049120(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_10003DC38(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100049214(void *result)
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

  result = sub_10003DD44(result, v10, 1, v3);
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

  sub_100006940(&qword_1000B7D80, &qword_100085BD0);
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

uint64_t sub_100049318()
{
  sub_1000068F4((v0 + 112));

  sub_1000068F4((v0 + 160));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000493D0()
{
  sub_100049318();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_100049420(uint64_t a1, uint64_t a2)
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

  sub_100006940(&qword_1000B8C80, &qword_100085BE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unsigned __int8 *sub_1000494A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100081448();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100049A34(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000816B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100049A34(uint64_t a1, unint64_t a2)
{
  v2 = sub_100081458();
  v6 = sub_100049AB4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100049AB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100081638();
    if (!v9 || (v10 = v9, v11 = sub_100059BE8(v9, 0), v12 = sub_100049C0C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100081378();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100081378();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000816B8();
LABEL_4:

  return sub_100081378();
}

unint64_t sub_100049C0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100049E2C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000813F8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000816B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100049E2C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000813D8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100049E2C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100081408();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000813E8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100049EA8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10004ACA4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100049F24(v6);
  return sub_1000816E8();
}

Swift::Int sub_100049F24(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100081838(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataStoreTable();
        v6 = sub_1000814B8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10004A0E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_10004A028(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004A028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      result = *(v9 + 64);
      v12 = result == *(*v11 + 64) && *(v9 + 72) == *(*v11 + 72);
      if (v12 || (result = sub_100081888(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
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

      v13 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v13;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004A0E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v86 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v86;
    if (!*v86)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_10004A97C(v7);
      v7 = result;
    }

    v80 = *(v7 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = *&v7[16 * v80];
        v82 = *&v7[16 * v80 + 24];
        sub_10004A6B8((*a3 + 8 * v81), (*a3 + 8 * *&v7[16 * v80 + 16]), (*a3 + 8 * v82), v8);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10004A97C(v7);
        }

        if (v80 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v83 = &v7[16 * v80];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_10004A8F0(v80 - 1);
        v80 = *(v7 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v6);
      v11 = *(*a3 + 8 * v8);
      result = *(v10 + 64);
      if (result == *(v11 + 64) && *(v10 + 72) == *(v11 + 72))
      {
        v13 = 0;
      }

      else
      {
        result = sub_100081888();
        v13 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v14 = v9 + 8 * v8 + 16;
        do
        {
          v15 = *(v14 - 8);
          result = *(*v14 + 64);
          if (result == *(v15 + 64) && *(*v14 + 72) == *(v15 + 72))
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_100081888();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v14 += 8;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v17 = 8 * v6 - 8;
          v18 = 8 * v8;
          v19 = v6;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v21 = *(v22 + v18);
              *(v22 + v18) = *(v22 + v17);
              *(v22 + v17) = v21;
            }

            ++v20;
            v17 -= 8;
            v18 += 8;
          }

          while (v20 < v19);
        }
      }
    }

    v23 = a3[1];
    if (v6 < v23)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v23)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = v8 + a4;
        }

        if (v24 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v24)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10003DD68(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v35 = *(v7 + 2);
    v34 = *(v7 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_10003DD68((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v36;
    v37 = &v7[16 * v35];
    *(v37 + 4) = v8;
    *(v37 + 5) = v6;
    v38 = *v86;
    if (!*v86)
    {
      goto LABEL_142;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v7 + 4);
          v41 = *(v7 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_74:
          if (v43)
          {
            goto LABEL_121;
          }

          v56 = &v7[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_124;
          }

          v62 = &v7[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_128;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v66 = &v7[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_88:
        if (v61)
        {
          goto LABEL_123;
        }

        v69 = &v7[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_126;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v39 - 1;
        if (v39 - 1 >= v36)
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v77 = *&v7[16 * v8 + 32];
        v78 = *&v7[16 * v39 + 40];
        sub_10004A6B8((*a3 + 8 * v77), (*a3 + 8 * *&v7[16 * v39 + 32]), (*a3 + 8 * v78), v38);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10004A97C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v7[16 * v8];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_10004A8F0(v39);
        v36 = *(v7 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v7[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_119;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_120;
      }

      v51 = &v7[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_122;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_125;
      }

      if (v55 >= v47)
      {
        v73 = &v7[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_129;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v6 - 8;
  v84 = v8;
  v27 = (v8 - v6);
LABEL_43:
  v28 = *(v25 + 8 * v6);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *(v28 + 64) == *(*v30 + 64) && *(v28 + 72) == *(*v30 + 72);
    if (v31 || (result = sub_100081888(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v26 += 8;
      --v27;
      if (v6 != v24)
      {
        goto LABEL_43;
      }

      v6 = v24;
      v8 = v84;
      goto LABEL_54;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    v28 = v30[1];
    *v30 = v28;
    v30[1] = v32;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10004A6B8(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 64) == *(*v4 + 64) && *(*v6 + 72) == *(*v4 + 72);
      if (!v16 && (sub_100081888() & 1) != 0)
      {
        break;
      }

      v15 = v4;
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

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 72);
      v21 = *(v19 + 64) == *(*v17 + 64) && v20 == *(*v17 + 72);
      if (!v21 && (sub_100081888() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10004A8F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10004A97C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10004A990(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000817A8();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100049420(v3, 0);
  sub_10004AA24((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10004AA24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000817A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000817A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10003EEE8(&qword_1000B7F68, &qword_1000B7F60, &unk_100085C40, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100006940(&qword_1000B7F60, &unk_100085C40);
            v9 = sub_10004ABC8(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DataStoreTable();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10004ABC8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000816A8();
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
    return sub_10004AC48;
  }

  __break(1u);
  return result;
}

unint64_t sub_10004AC50()
{
  result = qword_1000B7F18;
  if (!qword_1000B7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7F18);
  }

  return result;
}

uint64_t type metadata accessor for DataManager.StateInfo(uint64_t a1)
{
  result = qword_1000B7FD0;
  if (!qword_1000B7FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004AD04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.StateInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006940(&qword_1000B7F28, &qword_100085BF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ADD8(uint64_t a1)
{
  v2 = type metadata accessor for DataManager.StateInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AE34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_1000526A8(0);
    if (v3)
    {
      sub_100006888(*(a1 + 56) + 32 * v2, v23);
      if (swift_dynamicCast())
      {
        return v22._countAndFlagsBits;
      }
    }

    if (*(a1 + 16))
    {
      v5 = sub_1000526A8(0);
      if (v6)
      {
        sub_100006888(*(a1 + 56) + 32 * v5, v23);
        if (swift_dynamicCast())
        {
          *&v23[0] = sub_10003D7BC(v22._countAndFlagsBits, v22._object);
          sub_100006940(&qword_1000B7530, &qword_100089380);
          sub_10003EEE8(&qword_1000B88A0, &qword_1000B7530, &qword_100089380, &protocol conformance descriptor for [A]);
          v7 = sub_100081248();
          sub_100006A34(v22._countAndFlagsBits, v22._object);

          return v7;
        }
      }

      if (*(a1 + 16))
      {
        v8 = sub_1000526A8(1);
        if (v9)
        {
          sub_100006888(*(a1 + 56) + 32 * v8, v23);
          if (swift_dynamicCast())
          {
            if (*(a1 + 16))
            {
              v10 = sub_1000526A8(2);
              if (v11)
              {
                sub_100006888(*(a1 + 56) + 32 * v10, v23);
                if (swift_dynamicCast())
                {
                  v23[0] = v22;
                  v24._countAndFlagsBits = 43;
                  v24._object = 0xE100000000000000;
                  sub_1000813B8(v24);
                  sub_1000813B8(v22);

                  return *&v23[0];
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    v12 = sub_1000526A8(1);
    if (v13)
    {
      sub_100006888(*(a1 + 56) + 32 * v12, v23);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v14 = sub_1000526A8(2);
          if (v15)
          {
            sub_100006888(*(a1 + 56) + 32 * v14, v23);
            if (swift_dynamicCast())
            {
              *&v23[0] = sub_10003D7BC(v22._countAndFlagsBits, v22._object);
              sub_100006940(&qword_1000B7530, &qword_100089380);
              sub_10003EEE8(&qword_1000B88A0, &qword_1000B7530, &qword_100089380, &protocol conformance descriptor for [A]);
              v16 = sub_100081248();
              v18 = v17;

              *&v23[0] = v16;
              *(&v23[0] + 1) = v18;
              v25._countAndFlagsBits = 43;
              v25._object = 0xE100000000000000;
              sub_1000813B8(v25);
              sub_10003D7BC(v22._countAndFlagsBits, v22._object);
              v19 = sub_100081248();
              v21 = v20;

              v26._countAndFlagsBits = v19;
              v26._object = v21;
              sub_1000813B8(v26);

              sub_100006A34(v22._countAndFlagsBits, v22._object);
              sub_100006A34(v22._countAndFlagsBits, v22._object);
              return *&v23[0];
            }
          }
        }

        sub_100006A34(v22._countAndFlagsBits, v22._object);
      }
    }
  }

  return 0;
}

uint64_t sub_10004B254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.StateInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004B2B8()
{
  result = qword_1000B7F50;
  if (!qword_1000B7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7F50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseName(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004B4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080D98();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004B56C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080D98();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004B610(uint64_t a1)
{
  result = sub_100080D98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004B6E4()
{
  result = qword_1000B8020;
  if (!qword_1000B8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8020);
  }

  return result;
}

uint64_t CRXCSystemStatus.hardwareModel.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_hardwareModel);

  return v1;
}

uint64_t CRXCSystemStatus.currentLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation);

  return v1;
}

uint64_t CRXCSystemStatus.selectedEnrollmentUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID);

  return v1;
}

id sub_10004B934(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_100081288();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t CRXCSystemStatus.prismActivationLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation);

  return v1;
}

BOOL CRXCSystemStatus.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v13);
  if (v14)
  {
    type metadata accessor for CRXCSystemStatus();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8);
      v3 = *&v12[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8];
      if (v2)
      {
        if (!v3)
        {
          goto LABEL_35;
        }

        v4 = *(v1 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation) == *&v12[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation] && v2 == v3;
        if (!v4 && (sub_100081888() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v3)
      {
        goto LABEL_35;
      }

      if (*(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPullTime) != *&v12[OBJC_IVAR___CRXCSystemStatus_healthLastPullTime] || *(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPushTime) != *&v12[OBJC_IVAR___CRXCSystemStatus_healthLastPushTime] || *(v1 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled) != v12[OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled] || (*(v1 + OBJC_IVAR___CRXCSystemStatus_hardwareModel) != *&v12[OBJC_IVAR___CRXCSystemStatus_hardwareModel] || *(v1 + OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8) != *&v12[OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8]) && (sub_100081888() & 1) == 0 || *(v1 + OBJC_IVAR___CRXCSystemStatus_guestMode) != v12[OBJC_IVAR___CRXCSystemStatus_guestMode] || *(v1 + OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion) != *&v12[OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion])
      {
        goto LABEL_35;
      }

      v5 = *(v1 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8);
      v6 = *&v12[OBJC_IVAR___CRXCSystemStatus_currentLocation + 8];
      if (v5)
      {
        if (!v6 || (*(v1 + OBJC_IVAR___CRXCSystemStatus_currentLocation) != *&v12[OBJC_IVAR___CRXCSystemStatus_currentLocation] || v5 != v6) && (sub_100081888() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v6)
      {
        goto LABEL_35;
      }

      v7 = *(v1 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8);
      v8 = *&v12[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8];
      if (v7)
      {
        if (v8 && (*(v1 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID) == *&v12[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID] && v7 == v8 || (sub_100081888() & 1) != 0))
        {
          goto LABEL_33;
        }
      }

      else if (!v8)
      {
LABEL_33:
        v9 = *(v1 + OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime);
        v10 = *&v12[OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime];

        return v9 == v10;
      }

LABEL_35:
    }
  }

  else
  {
    sub_10000D014(v13);
  }

  return 0;
}

uint64_t CRXCSystemStatus.description.getter()
{
  v1 = 7104878;
  sub_100081698(215);
  v12._countAndFlagsBits = 0xD000000000000014;
  v12._object = 0x80000001000943D0;
  sub_1000813B8(v12);
  sub_100081588();
  v13._countAndFlagsBits = 0xD000000000000016;
  v13._object = 0x80000001000943F0;
  sub_1000813B8(v13);
  sub_100081588();
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100094410;
  sub_1000813B8(v14);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_1000813B8(v2);

  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x8000000100094430;
  sub_1000813B8(v15);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCSystemStatus_hardwareModel));
  v16._countAndFlagsBits = 0x4D7473657567202CLL;
  v16._object = 0xED0000203A65646FLL;
  sub_1000813B8(v16);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_guestMode))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_guestMode))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1000813B8(v4);

  v17._object = 0x8000000100094450;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000813B8(v17);
  v18._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v18);

  v19._countAndFlagsBits = 0xD000000000000013;
  v19._object = 0x8000000100094470;
  sub_1000813B8(v19);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8))
  {
    v6 = *(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation);
    v7 = *(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8);
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  v20._countAndFlagsBits = v6;
  v20._object = v7;
  sub_1000813B8(v20);

  v21._object = 0x8000000100094490;
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  sub_1000813B8(v21);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8))
  {
    v8 = *(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID);
    v9 = *(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8);
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  v22._countAndFlagsBits = v8;
  v22._object = v9;
  sub_1000813B8(v22);

  v23._countAndFlagsBits = 0xD000000000000021;
  v23._object = 0x80000001000944B0;
  sub_1000813B8(v23);
  sub_100081588();
  sub_100081698(29);

  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8))
  {
    v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation);
    v10 = *(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8);
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v24._countAndFlagsBits = v1;
  v24._object = v10;
  sub_1000813B8(v24);

  v25._countAndFlagsBits = 0xD00000000000001BLL;
  v25._object = 0x80000001000944E0;
  sub_1000813B8(v25);

  return 0;
}

Swift::Void __swiftcall CRXCSystemStatus.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPullTime);
  v4 = sub_100081288();
  [(objc_class *)with.super.isa encodeDouble:v4 forKey:v3];

  v5 = *(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPushTime);
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = sub_100081288();
  v10 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CRXCSystemStatus_guestMode);
  v12 = sub_100081288();
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion);
  v14 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime);
  v16 = sub_100081288();
  [(objc_class *)with.super.isa encodeDouble:v16 forKey:v15];

  if (*(v1 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8))
  {
    v17 = sub_100081288();
    v18 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  }

  if (*(v1 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8))
  {
    v19 = sub_100081288();
    v20 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  }

  if (*(v1 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8))
  {
    v21 = sub_100081288();
    v22 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  }
}

id CRXCSystemStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10004C66C(a1);

  return v4;
}

id CRXCSystemStatus.init(coder:)(void *a1)
{
  v2 = sub_10004C66C(a1);

  return v2;
}

id CRXCSystemStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCSystemStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10004C66C(void *a1)
{
  v2 = v1;
  v4 = sub_100081288();
  [a1 decodeDoubleForKey:v4];
  v6 = v5;

  *&v2[OBJC_IVAR___CRXCSystemStatus_healthLastPullTime] = v6;
  v7 = sub_100081288();
  [a1 decodeDoubleForKey:v7];
  v9 = v8;

  *&v2[OBJC_IVAR___CRXCSystemStatus_healthLastPushTime] = v9;
  v10 = sub_100081288();
  v11 = [a1 decodeBoolForKey:v10];

  v2[OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled] = v11;
  sub_10004CA64();
  result = sub_1000815E8();
  if (result)
  {
    v13 = result;
    v14 = sub_1000812B8();
    v16 = v15;

    v17 = &v2[OBJC_IVAR___CRXCSystemStatus_hardwareModel];
    *v17 = v14;
    v17[1] = v16;
    v18 = sub_100081288();
    LOBYTE(v14) = [a1 decodeBoolForKey:v18];

    v2[OBJC_IVAR___CRXCSystemStatus_guestMode] = v14;
    v19 = sub_100081288();
    v20 = [a1 decodeIntegerForKey:v19];

    *&v2[OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion] = v20;
    v21 = sub_100081288();
    [a1 decodeDoubleForKey:v21];
    v23 = v22;

    *&v2[OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime] = v23;
    v24 = sub_100081288();
    LODWORD(v20) = [a1 containsValueForKey:v24];

    if (v20)
    {
      v25 = sub_1000815E8();
      if (v25)
      {
        v26 = v25;
        sub_1000812A8();
      }
    }

    v27 = &v2[OBJC_IVAR___CRXCSystemStatus_currentLocation];
    *v27 = 0;
    v27[1] = 0;
    v28 = sub_100081288();
    v29 = [a1 containsValueForKey:v28];

    if (v29)
    {
      v30 = sub_1000815E8();
      if (v30)
      {
        v31 = v30;
        sub_1000812A8();
      }
    }

    v32 = &v2[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID];
    *v32 = 0;
    v32[1] = 0;
    v33 = sub_100081288();
    v34 = [a1 containsValueForKey:v33];

    if (v34)
    {
      v35 = sub_1000815E8();
      if (v35)
      {
        v36 = v35;
        sub_1000812A8();
      }
    }

    v37 = &v2[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation];
    *v37 = 0;
    v37[1] = 0;
    v38.receiver = v2;
    v38.super_class = type metadata accessor for CRXCSystemStatus();
    return objc_msgSendSuper2(&v38, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10004CA64()
{
  result = qword_1000B8110;
  if (!qword_1000B8110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8110);
  }

  return result;
}

unint64_t sub_10004CAB4()
{
  result = qword_1000B8120;
  if (!qword_1000B8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8120);
  }

  return result;
}

Swift::Int sub_10004CB08()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(v1);
  return sub_1000819B8();
}

Swift::Int sub_10004CB7C()
{
  v1 = *v0;
  sub_100081988();
  sub_100081998(v1);
  return sub_1000819B8();
}

uint64_t sub_10004CBC0(uint64_t a1)
{
  v2 = sub_10004CE5C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004CBFC(uint64_t a1)
{
  v2 = sub_10004CE5C();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_10004CC38(unsigned __int8 a1)
{
  v2 = 0xD00000000000001ELL;
  sub_100006940(&unk_1000B8360, &unk_1000856E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  LOBYTE(v15) = a1;
  v4 = sub_100081338();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_10003C570(inited);
  swift_setDeallocating();
  sub_10003C6A0(inited + 32);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = "Invalid enrollment UUID";
    }

    else
    {
      v7 = "ingDataValidationTime";
      v2 = 0xD000000000000017;
    }
  }

  else if (a1)
  {
    v2 = 0xD000000000000012;
    v7 = "Invalid manual adjustment data";
  }

  else
  {
    v7 = "Invalid prism data";
  }

  v8 = v7 | 0x8000000000000000;
  v9 = sub_1000812B8();
  v11 = v10;
  v16 = &type metadata for String;
  *&v15 = v2;
  *(&v15 + 1) = v8;
  sub_1000068E4(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003C2FC(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  return v6;
}

unint64_t sub_10004CDEC()
{
  v1 = 0xD00000000000001ELL;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10004CE5C()
{
  result = qword_1000B8128;
  if (!qword_1000B8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10004D004()
{
  result = qword_1000B8130;
  if (!qword_1000B8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8130);
  }

  return result;
}

id sub_10004D090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalDataStoreObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004D110()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B8140);
  sub_100016240(v0, qword_1000B8140);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for DataStore();
    sub_100006940(&unk_1000B8380, &unk_100086030);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004D204(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return _swift_task_switch(sub_10004D224, v1, 0);
}

uint64_t sub_10004D224()
{
  v27 = v0;
  if ((*(*(v0 + 176) + 56) & 8) != 0)
  {
    sub_10004AC50();
    swift_allocError();
    *v23 = 4;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 5;
    swift_willThrow();
    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v1 = sub_100081018();
    *(v0 + 192) = sub_100016240(v1, qword_1000B8140);

    v2 = sub_100080FF8();
    v3 = sub_1000815C8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v26 = v5;
      *v4 = 136315138;
      v6 = sub_100059120();
      v8 = sub_1000597A8(v6, v7, &v26);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Creating table %s", v4, 0xCu);
      sub_1000068F4(v5);
    }

    v9 = *(v0 + 176);
    v10 = sub_100054AA0(v9);
    v11 = *(v9 + 24);
    if (v11)
    {
      v12 = sub_1000812B8();
      v14 = v13;
      type metadata accessor for FileProtectionType(0);
      *(v0 + 104) = v15;
      *(v0 + 80) = v11;
      sub_1000068E4((v0 + 80), (v0 + 144));
      v16 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v10;
      sub_10003C2FC((v0 + 144), v12, v14, isUniquelyReferenced_nonNull_native);
    }

    v18 = *(*(v0 + 184) + 112);
    sub_100056724(*(*(v0 + 176) + 18));
    v19 = sub_100081288();
    *(v0 + 200) = v19;

    sub_10000DC18(0, &unk_1000B83E0, MAKVStoreDataField_ptr);
    isa = sub_100081478().super.isa;
    *(v0 + 208) = isa;
    v21 = sub_100081208().super.isa;
    *(v0 + 216) = v21;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10004D60C;
    v22 = swift_continuation_init();
    *(v0 + 136) = sub_100006940(&unk_1000B8370, &unk_100086020);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10004DA50;
    *(v0 + 104) = &unk_1000ABBC0;
    *(v0 + 112) = v22;
    [v18 createKVStore:v19 recordFields:isa attributes:v21 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10004D60C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_10004D79C;
  }

  else
  {
    v4 = sub_10004D72C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004D72C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004D79C()
{
  v15 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  swift_willThrow();

  *(v0 + 80) = v2;
  swift_errorRetain();
  sub_100006940(&qword_1000B7910, &unk_100084B20);
  sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 144);
    v6 = sub_100080FF8();
    v7 = sub_1000815D8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = swift_slowAlloc();
      *v8 = 136315906;
      *(v8 + 4) = sub_1000597A8(0x6154657461657263, 0xEF293A5F28656C62, v14);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1000597A8(0xD00000000000005ELL, 0x8000000100094960, v14);
      *(v8 + 22) = 2048;
      *(v8 + 24) = 139;
      *(v8 + 32) = 2112;
      *(v8 + 34) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "MA error caught at %s - %s:%ld: %@", v8, 0x2Au);
      sub_10001A80C(v9, &qword_1000B83B0, &qword_100084EC0);

      swift_arrayDestroy();
    }

    sub_10004AC50();
    swift_allocError();
    *v11 = v5;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    swift_willThrow();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10004DA50(uint64_t a1, void *a2)
{
  v3 = sub_10002329C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_10004DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[50] = a6;
  v7[51] = v6;
  v7[48] = a4;
  v7[49] = a5;
  v7[46] = a2;
  v7[47] = a3;
  v7[45] = a1;
  return _swift_task_switch(sub_10004DB28, v6, 0);
}

uint64_t sub_10004DB28()
{
  v49 = v0;
  if (*(*(v0 + 408) + 120) == 1)
  {
    sub_100058220(*(v0 + 384));
    v1 = *(v0 + 392);
    if (v1)
    {
      sub_100057E9C(v1);
    }
  }

  v2 = *(v0 + 360);
  if ((v2[56] & 8) != 0)
  {
    *(v0 + 432) = 0;
    v14 = *(v0 + 376);
    v15 = sub_100054AA0(v2);
    if (v14)
    {
      v17 = *(v0 + 368);
      v16 = *(v0 + 376);
      v18 = sub_1000812B8();
      v20 = v19;
      *(v0 + 296) = &type metadata for String;
      *(v0 + 272) = v17;
      *(v0 + 280) = v16;
      sub_1000068E4((v0 + 272), (v0 + 304));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v15;
      sub_10003C2FC((v0 + 304), v18, v20, isUniquelyReferenced_nonNull_native);
    }

    v22 = *(v0 + 392);
    if (v22)
    {
      v23 = sub_1000812B8();
      v25 = v24;
      v26 = *(v22 + 16);
      v27 = _swiftEmptyArrayStorage;
      if (v26)
      {
        v48 = _swiftEmptyArrayStorage;
        sub_10003E058(0, v26, 0);
        v27 = _swiftEmptyArrayStorage;
        v28 = (v22 + 32);
        do
        {
          v29 = *v28++;
          v30 = sub_100055EC8(v29);
          v48 = v27;
          v33 = v27[2];
          v32 = v27[3];
          if (v33 >= v32 >> 1)
          {
            v46 = v30;
            v35 = v31;
            sub_10003E058((v32 > 1), v33 + 1, 1);
            v31 = v35;
            v30 = v46;
            v27 = v48;
          }

          v27[2] = v33 + 1;
          v34 = &v27[2 * v33];
          v34[4] = v30;
          v34[5] = v31;
          --v26;
        }

        while (v26);
      }

      *(v0 + 232) = sub_100006940(&qword_1000B7530, &qword_100089380);
      *(v0 + 208) = v27;
      sub_1000068E4((v0 + 208), (v0 + 240));
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v15;
      sub_10003C2FC((v0 + 240), v23, v25, v36);
    }

    if (*(v0 + 400))
    {
      v37 = sub_1000812B8();
      v39 = v38;
      *(v0 + 168) = &type metadata for UInt;
      *(v0 + 144) = 8;
      sub_1000068E4((v0 + 144), (v0 + 176));
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v15;
      sub_10003C2FC((v0 + 176), v37, v39, v40);
    }

    v41 = *(v0 + 384);
    v47 = *(*(v0 + 408) + 112);
    sub_100056724(*(*(v0 + 360) + 18));
    v42 = sub_100081288();
    *(v0 + 440) = v42;

    sub_100054C8C(v41);
    isa = sub_100081208().super.isa;
    *(v0 + 448) = isa;

    v44 = sub_100081208().super.isa;
    *(v0 + 456) = v44;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_10004E654;
    v45 = swift_continuation_init();
    *(v0 + 136) = sub_100006940(&qword_1000B83C0, &qword_100086050);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10004ED94;
    *(v0 + 104) = &unk_1000ABB98;
    *(v0 + 112) = v45;
    [v47 queryDataInStore:v42 keys:isa attributes:v44 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v3 = sub_100081018();
    sub_100016240(v3, qword_1000B8140);

    v4 = sub_100080FF8();
    v5 = sub_1000815C8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v48 = v7;
      *v6 = 136315138;
      v8 = sub_100059120();
      v10 = sub_1000597A8(v8, v9, &v48);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Lazily creating table %s", v6, 0xCu);
      sub_1000068F4(v7);
    }

    v11 = swift_task_alloc();
    *(v0 + 416) = v11;
    *v11 = v0;
    v11[1] = sub_10004E12C;
    v12 = *(v0 + 360);

    return sub_10004D204(v12);
  }
}

uint64_t sub_10004E12C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 408);

    return _swift_task_switch(sub_10004E274, v6, 0);
  }
}

uint64_t sub_10004E274()
{
  *(v0 + 432) = *(v0 + 424);
  v1 = *(v0 + 376);
  sub_100054AA0(*(v0 + 360));
  if (v1)
  {
    v3 = *(v0 + 368);
    v2 = *(v0 + 376);
    v4 = sub_1000812B8();
    v6 = v5;
    *(v0 + 296) = &type metadata for String;
    *(v0 + 272) = v3;
    *(v0 + 280) = v2;
    sub_1000068E4((v0 + 272), (v0 + 304));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003C2FC((v0 + 304), v4, v6, isUniquelyReferenced_nonNull_native);
  }

  v8 = *(v0 + 392);
  if (v8)
  {
    v9 = sub_1000812B8();
    v11 = v10;
    v12 = *(v8 + 16);
    if (v12)
    {
      sub_10003E058(0, v12, 0);
      v13 = (v8 + 32);
      do
      {
        v14 = *v13++;
        v15 = sub_100055EC8(v14);
        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          v32 = v15;
          v20 = v16;
          sub_10003E058((v17 > 1), v18 + 1, 1);
          v16 = v20;
          v15 = v32;
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v15;
        v19[5] = v16;
        --v12;
      }

      while (v12);
    }

    *(v0 + 232) = sub_100006940(&qword_1000B7530, &qword_100089380);
    *(v0 + 208) = _swiftEmptyArrayStorage;
    sub_1000068E4((v0 + 208), (v0 + 240));
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003C2FC((v0 + 240), v9, v11, v21);
  }

  if (*(v0 + 400))
  {
    v22 = sub_1000812B8();
    v24 = v23;
    *(v0 + 168) = &type metadata for UInt;
    *(v0 + 144) = 8;
    sub_1000068E4((v0 + 144), (v0 + 176));
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003C2FC((v0 + 176), v22, v24, v25);
  }

  v26 = *(v0 + 384);
  v33 = *(*(v0 + 408) + 112);
  sub_100056724(*(*(v0 + 360) + 18));
  v27 = sub_100081288();
  *(v0 + 440) = v27;

  sub_100054C8C(v26);
  isa = sub_100081208().super.isa;
  *(v0 + 448) = isa;

  v29 = sub_100081208().super.isa;
  *(v0 + 456) = v29;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 336;
  *(v0 + 24) = sub_10004E654;
  v30 = swift_continuation_init();
  *(v0 + 136) = sub_100006940(&qword_1000B83C0, &qword_100086050);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10004ED94;
  *(v0 + 104) = &unk_1000ABB98;
  *(v0 + 112) = v30;
  [v33 queryDataInStore:v27 keys:isa attributes:v29 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10004E654()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  v3 = *(v1 + 408);
  if (v2)
  {
    v4 = sub_10004EAB4;
  }

  else
  {
    v4 = sub_10004E774;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004E774()
{
  v20 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 360);
  v5 = *(v0 + 336);

  v6 = sub_100055290(v5, v4);

  if (v2)
  {
    *(v0 + 344) = v2;
    swift_errorRetain();
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
    if (swift_dynamicCast())
    {

      v7 = *(v0 + 352);
      if (qword_1000B7400 != -1)
      {
        swift_once();
      }

      v8 = sub_100081018();
      sub_100016240(v8, qword_1000B8140);
      v9 = v7;
      v10 = sub_100080FF8();
      v11 = sub_1000815D8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19[0] = swift_slowAlloc();
        *v12 = 136315906;
        *(v12 + 4) = sub_1000597A8(0xD00000000000003DLL, 0x8000000100094A80, v19);
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_1000597A8(0xD00000000000005ELL, 0x8000000100094960, v19);
        *(v12 + 22) = 2048;
        *(v12 + 24) = 222;
        *(v12 + 32) = 2112;
        *(v12 + 34) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, v11, "MA error caught at %s - %s:%ld: %@", v12, 0x2Au);
        sub_10001A80C(v13, &qword_1000B83B0, &qword_100084EC0);

        swift_arrayDestroy();
      }

      sub_10004AC50();
      swift_allocError();
      *v15 = v9;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      swift_willThrow();
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 8);

    return v18(v6);
  }
}

uint64_t sub_10004EAB4()
{
  v16 = v0;
  v1 = v0[57];
  v3 = v0[55];
  v2 = v0[56];
  swift_willThrow();

  v0[43] = v0[58];
  swift_errorRetain();
  sub_100006940(&qword_1000B7910, &unk_100084B20);
  sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
  if (swift_dynamicCast())
  {

    v4 = v0[44];
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v5 = sub_100081018();
    sub_100016240(v5, qword_1000B8140);
    v6 = v4;
    v7 = sub_100080FF8();
    v8 = sub_1000815D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v9 = 136315906;
      *(v9 + 4) = sub_1000597A8(0xD00000000000003DLL, 0x8000000100094A80, v15);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1000597A8(0xD00000000000005ELL, 0x8000000100094960, v15);
      *(v9 + 22) = 2048;
      *(v9 + 24) = 222;
      *(v9 + 32) = 2112;
      *(v9 + 34) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "MA error caught at %s - %s:%ld: %@", v9, 0x2Au);
      sub_10001A80C(v10, &qword_1000B83B0, &qword_100084EC0);

      swift_arrayDestroy();
    }

    sub_10004AC50();
    swift_allocError();
    *v12 = v6;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}