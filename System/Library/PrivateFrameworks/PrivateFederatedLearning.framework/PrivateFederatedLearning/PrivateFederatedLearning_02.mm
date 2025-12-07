char *sub_21A3F5BF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286B0, &qword_21A456A30);
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

void *sub_21A3F5D04(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286B8, &qword_21A456A38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286C0, &unk_21A456A40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A3F5E38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28698, &unk_21A459800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28590, &qword_21A4564A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A3F5F80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286C8, &unk_21A456A50);
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

void *sub_21A3F60A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28680, &qword_21A456A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21A3F6200(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21A3F63DC()
{
  v1 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v21 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v2);
  v22 = &v18 - v6;
  v20 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v19 = v8 - 2;
    while (1)
    {
      v23 = 0;
      result = MEMORY[0x21CEDB240](&v23, 8);
      v12 = (v23 * v8) >> 64;
      if (v8 > v23 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v23 * v8)
        {
          do
          {
            v23 = 0;
            result = MEMORY[0x21CEDB240](&v23, 8);
          }

          while (v13 > v23 * v8);
          v12 = (v23 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = v7[2];
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v17 = *(v21 + 72);
        result = sub_21A3F924C(v7 + v16 + v17 * v10, v22, type metadata accessor for CKRecipeDescriptorRecord);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        sub_21A3F924C(v7 + v16 + v17 * v14, v4, type metadata accessor for CKRecipeDescriptorRecord);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21A3F69F0(v7);
          v7 = result;
        }

        if (v10 >= v7[2])
        {
          goto LABEL_21;
        }

        result = sub_21A3F92B4(v4, v7 + v16 + v17 * v10);
        if (v14 >= v7[2])
        {
          goto LABEL_22;
        }

        result = sub_21A3F92B4(v22, v7 + v16 + v17 * v14);
        v9 = v19;
        *v20 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_21A3F6630()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v18 = 0;
      MEMORY[0x21CEDB240](&v18, 8);
      v6 = (v18 * v2) >> 64;
      if (v2 > v18 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v18 * v2)
        {
          do
          {
            v18 = 0;
            MEMORY[0x21CEDB240](&v18, 8);
          }

          while (v7 > v18 * v2);
          v6 = (v18 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = v1[2];
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v16 = *&v1[2 * v4 + 4];
        v17 = *&v1[2 * v8 + 4];
        v10 = v16;

        v11 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_21A3F6A3C(v1);
        }

        if (v4 >= v1[2])
        {
          goto LABEL_21;
        }

        v12 = &v1[2 * v4 + 4];
        v13 = *v12;
        *v12 = v17;

        if (v8 >= v1[2])
        {
          goto LABEL_22;
        }

        v14 = &v1[2 * v8 + 4];
        v15 = *v14;
        *v14 = v16;

        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_21A3F67DC()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_32;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 > 1)
  {
    do
    {
      v3 = 0;
      v4 = v2 - 2;
      while (1)
      {
        v14 = 0;
        MEMORY[0x21CEDB240](&v14, 8);
        v6 = (v14 * v2) >> 64;
        if (v2 > v14 * v2)
        {
          v7 = -v2 % v2;
          if (v7 > v14 * v2)
          {
            do
            {
              v14 = 0;
              MEMORY[0x21CEDB240](&v14, 8);
            }

            while (v7 > v14 * v2);
            v6 = (v14 * v2) >> 64;
          }
        }

        v8 = v3 + v6;
        if (__OFADD__(v3, v6))
        {
          break;
        }

        if (v3 != v8)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CED9EA0](v3, v1);
            v11 = MEMORY[0x21CED9EA0](v8, v1);
          }

          else
          {
            v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v9)
            {
              goto LABEL_29;
            }

            if (v8 >= v9)
            {
              goto LABEL_30;
            }

            v10 = *(v1 + 32 + 8 * v3);
            v11 = *(v1 + 32 + 8 * v8);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_21A4131E4();
            v12 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v12) = 0;
          }

          v13 = v1 & 0xFFFFFFFFFFFFFF8;
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v11;

          if ((v1 & 0x8000000000000000) != 0 || v12)
          {
            v1 = sub_21A4131E4();
            v13 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v8 & 0x8000000000000000) != 0)
            {
LABEL_27:
              __break(1u);
              break;
            }
          }

          else if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          if (v8 >= *(v13 + 16))
          {
            goto LABEL_31;
          }

          *(v13 + 8 * v8 + 32) = v10;

          *v0 = v1;
        }

        --v2;
        if (v3++ == v4)
        {
          return;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      if (sub_21A451844() < 2)
      {
        break;
      }

      v2 = sub_21A451844();
    }

    while (v2 >= 2);
  }
}

unint64_t sub_21A3F6A64(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_21A3F6DB4(0xFuLL, a1, a2);
  v8 = sub_21A3F6DB4(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_21A451104();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = sub_21A4517E4();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_21A451114();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_21A4517E4();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_21A3F6CA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_21A4517E4();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_21A3F6DB4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_21A3F6E4C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_21A3F6CA0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_21A3F6E4C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_21A424280(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A3F6EC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7)
{
  type metadata accessor for PFLTaskDiscovery(0);
  v13 = swift_allocObject();
  v41[3] = type metadata accessor for PFLPluginTaskDiscoveryPolicy();
  v41[4] = &off_282B406C0;
  v41[0] = a7;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0;
  *(v13 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries) = 0;
  v14 = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  type metadata accessor for PerformanceMeasure();
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F98];
  *(v13 + v14) = v15;
  *(v13 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds) = 0;
  *(v13 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds) = 0;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v36 = a3;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v16 = type metadata accessor for PFLTaskPreferences(0);
  v17 = (a5 + *(v16 + 20));
  v18 = (v17 + *(type metadata accessor for PFLDecodableTaskParameters(0) + 48));
  v19 = v18[1];
  v34 = *v18;
  if (*(a5 + *(v16 + 24)) == 1)
  {
    v20 = v17[1];
    if (v20 == 6)
    {
      v20 = a5[1];
      if (v20 == 3)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v20 = 4;
LABEL_9:
        *&v37 = v21;
        *(&v37 + 1) = v20;
        v38 = v22;
        v39 = v23;
        v24 = type metadata accessor for PFLCKTaskDownloader();
        swift_allocObject();

        sub_21A3ED4E4(v21, v20, v22, v23);
        v25 = sub_21A3E8C70(&v37, v34, v19, v36, a4, a6 & 1);
        v39 = v24;
        v40 = &off_282B40358;
        sub_21A3ED49C(v21, v20, v22, v23);
        goto LABEL_11;
      }

      v22 = a5[2];
      v23 = a5[3];
      v21 = *a5;
    }

    else
    {
      v22 = v17[2];
      v23 = v17[3];
      v21 = *v17;
    }
  }

  else
  {
    v21 = *a5;
    v20 = a5[1];
    v22 = a5[2];
    v23 = a5[3];
  }

  sub_21A3ED4E4(v21, v20, v22, v23);
  if (v20 < 6)
  {
    goto LABEL_9;
  }

  v26 = type metadata accessor for PFLLocalTaskDownloader();
  v25 = swift_allocObject();
  v25[2] = v21;
  v25[3] = v20;
  v25[4] = v22;
  v25[5] = v23;
  v39 = v26;
  v40 = &off_282B40FF0;

  sub_21A3ED49C(v21, v20, v22, v23);
LABEL_11:
  *&v37 = v25;
  sub_21A3C50DC(&v37, v13 + 48);
  type metadata accessor for PopulationSegmentation();
  swift_initStackObject();
  sub_21A401DA8();
  *&v37 = 0x2D676553706F50;
  *(&v37 + 1) = 0xE700000000000000;
  sub_21A3ED2CC();
  v27 = sub_21A451654();
  MEMORY[0x21CED98B0](v27);

  v28 = sub_21A402528(v37, *(&v37 + 1));
  v30 = v29;

  if (v30)
  {
  }

  else
  {
    v31 = sub_21A3ECA44(100) + 1;
    if (v31 <= 100)
    {
      if (v31 < 91)
      {
        if (v31 <= 80)
        {
          v28 = 0x6E69617274;
        }

        else
        {
          v28 = 7102838;
        }

        if (v31 <= 80)
        {
          v30 = 0xE500000000000000;
        }

        else
        {
          v30 = 0xE300000000000000;
        }
      }

      else
      {
        v30 = 0xE400000000000000;
        v28 = 1953719668;
      }
    }

    else
    {
      v30 = 0xEB00000000646572;
      v28 = 0x6574736575716573;
    }

    *&v37 = 0x2D676553706F50;
    *(&v37 + 1) = 0xE700000000000000;
    v32 = sub_21A451654();
    MEMORY[0x21CED98B0](v32);

    sub_21A4023B0(v37, *(&v37 + 1), v28, v30);
  }

  *(v13 + 128) = v28;
  *(v13 + 136) = v30;
  sub_21A3F924C(a5, v13 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences, type metadata accessor for PFLTaskPreferences);
  sub_21A3F939C(v41, v13 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy);
  sub_21A3D843C(a5);
  *(v13 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver) = 1;
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v13;
}

uint64_t sub_21A3F73FC(uint64_t a1)
{
  v1 = sub_21A450A74();
  v2 = [v1 domain];
  v3 = sub_21A451084();
  v5 = v4;

  MEMORY[0x21CED98B0](58, 0xE100000000000000);
  [v1 code];
  v6 = sub_21A451974();
  MEMORY[0x21CED98B0](v6);

  type metadata accessor for PFLPluginError();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  return result;
}

uint64_t sub_21A3F74C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21A3E700C(result, a2);
  }

  return result;
}

uint64_t sub_21A3F74DC()
{
  v0 = sub_21A450D14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450D04();
  v4 = _s24PrivateFederatedLearning8PFLUtilsO18getDayAndHourInGMT4dateSi3day_Si4hourt10Foundation4DateV_tFZ_0(v3);
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = sub_21A451974();
  v13 = v7;
  MEMORY[0x21CED98B0](58, 0xE100000000000000);
  v11 = v6;
  v8 = sub_21A451974();
  MEMORY[0x21CED98B0](v8);

  return v12;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A3F7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 664) = v13;
  *(v8 + 640) = a8;
  *(v8 + 632) = a7;
  *(v8 + 624) = a6;
  *(v8 + 616) = a5;
  *(v8 + 608) = a4;
  *(v8 + 600) = a3;
  *(v8 + 592) = a2;
  *(v8 + 584) = a1;
  v11 = (v14 + *v14);
  v9 = swift_task_alloc();
  *(v8 + 648) = v9;
  *v9 = v8;
  v9[1] = sub_21A3F7750;

  return v11(v8 + 568);
}

uint64_t sub_21A3F7750()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_21A3F7C10;
  }

  else
  {
    v2 = sub_21A3F7864;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3F7864()
{
  if (*(v0 + 664) == 1)
  {
    v1 = v0[76];
    v0[67] = v0[75];
    v0[68] = v1;
    v0[69] = 46;
    v2 = 0xE100000000000000;
    v0[70] = 0xE100000000000000;
    sub_21A3ED2CC();
    v3 = sub_21A451644();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 16 + 16 * v4);
      v6 = *v5;
      v2 = v5[1];
    }

    else
    {
      v6 = 85;
    }

    v7 = v0[80];
    v8 = v0[79];

    if ((v6 != v8 || v2 != v7) && (sub_21A4519B4() & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v10 = sub_21A451054();

    *(inited + 48) = v10;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_21A451054();
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v11 = sub_21A451054();

    *(inited + 120) = v11;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    *(inited + 168) = sub_21A451054();
    v12 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = sub_21A451054();
    v0[56] = sub_21A3ED530;
    v0[57] = v13;
    v0[52] = MEMORY[0x277D85DD0];
    v0[53] = 1107296256;
    v0[54] = sub_21A432B2C;
    v0[55] = &block_descriptor_127;
    v15 = _Block_copy(v0 + 52);

    AnalyticsSendEventLazy();

    _Block_release(v15);
  }

  v16 = v0[71];
  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_21A3F7C10()
{
  v1 = v0[82];
  v2 = sub_21A450A74();
  [v2 code];

  v0[72] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 58);
  }

  else
  {
    v4 = sub_21A450A74();
    v5 = [v4 domain];

    sub_21A451084();
  }

  v6 = v0[76];
  v0[63] = v0[75];
  v0[64] = v6;
  v0[65] = 46;
  v7 = 0xE100000000000000;
  v0[66] = 0xE100000000000000;
  sub_21A3ED2CC();
  v8 = sub_21A451644();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 16 + 16 * v9);
    v11 = *v10;
    v7 = v10[1];
  }

  else
  {
    v11 = 85;
  }

  v12 = v0[80];
  v13 = v0[79];

  if ((v11 != v13 || v7 != v12) && (sub_21A4519B4() & 1) == 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v15 = sub_21A451054();

  *(inited + 48) = v15;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_21A451054();
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v16 = sub_21A451054();

  *(inited + 120) = v16;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v17 = sub_21A451054();

  *(inited + 168) = v17;
  v18 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_21A451054();
  v0[50] = sub_21A3ED530;
  v0[51] = v19;
  v0[46] = MEMORY[0x277D85DD0];
  v0[47] = 1107296256;
  v0[48] = sub_21A432B2C;
  v0[49] = &block_descriptor_118;
  v21 = _Block_copy(v0 + 46);

  AnalyticsSendEventLazy();

  _Block_release(v21);

  swift_willThrow();
  v22 = v0[1];

  return v22();
}

uint64_t sub_21A3F80CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21A3F9470;

  return sub_21A3F2B4C(a1, v4, v5, v7, v6);
}

unint64_t sub_21A3F8224()
{
  result = qword_27CD28648;
  if (!qword_27CD28648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28648);
  }

  return result;
}

unint64_t sub_21A3F827C()
{
  result = qword_27CD28650;
  if (!qword_27CD28650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28650);
  }

  return result;
}

unint64_t sub_21A3F82D4()
{
  result = qword_281561F18;
  if (!qword_281561F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281561F18);
  }

  return result;
}

unint64_t sub_21A3F832C()
{
  result = qword_27CD28658;
  if (!qword_27CD28658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EspressoFunction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EspressoFunction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_24PrivateFederatedLearning14TaskResolutionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A3F8428(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21A3F847C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_21A3F84D8(void *result, int a2)
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

uint64_t dispatch thunk of PFLTaskRunner.resolveTask(for:taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21A3EC5D4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PFLTaskRunner.ensureDataAvailability(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC5D4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PFLTaskRunner.isDataAvailable(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3F88EC;

  return v9(a1, a2, a3);
}

uint64_t sub_21A3F88EC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PFLTaskRunner.isDataAvailable()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3F9478;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PFLTaskRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21A3F8C48;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21A3F8C48(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3F9470;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3F9470;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PFLPlugin.run(context:runner:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21A3F88EC;

  return v8(a1, a2);
}

uint64_t sub_21A3F924C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A3F92B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKRecipeDescriptorRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A3F9338()
{
  result = qword_27CD286A8;
  if (!qword_27CD286A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD286A0, &qword_21A456A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD286A8);
  }

  return result;
}

uint64_t sub_21A3F939C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21A3F9400(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_21A3F94A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_21A451254() != a1 || v9 != a2)
  {
    v10 = sub_21A4519B4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_21A451164();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t static PFLUtils.deviceLocale()()
{
  v0 = sub_21A450D94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A450E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450DD4();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9668], v0);
  sub_21A450D54();
  v8 = sub_21A450D64();
  v10 = v9;

  (*(v1 + 8))(v3, v0);
  v11 = sub_21A3FFDD0(v8, v10);
  v13 = v12;

  v16[4] = v11;
  v16[5] = v13;
  v16[2] = 45;
  v16[3] = 0xE100000000000000;
  v16[0] = 95;
  v16[1] = 0xE100000000000000;
  sub_21A3ED2CC();
  v14 = sub_21A451654();
  (*(v5 + 8))(v7, v4);

  return v14;
}

uint64_t static PFLUtils.deviceLanguage()()
{
  v0 = sub_21A450DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28620, &unk_21A456510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_21A450E14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450DD4();
  sub_21A450E04();
  sub_21A450DE4();
  (*(v1 + 8))(v3, v0);
  v11 = sub_21A450D84();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_21A3D3BF0(v6, &qword_27CD28620, &unk_21A456510);
    v13 = 0x6E776F6E6B6E7524;
  }

  else
  {
    v13 = sub_21A450D74();
    (*(v12 + 8))(v6, v11);
  }

  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t static PFLUtils.deviceRegion()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28618, &qword_21A456508);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_21A450E14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450DD4();
  sub_21A450DC4();
  v7 = sub_21A450DB4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_21A3D3BF0(v2, &qword_27CD28618, &qword_21A456508);
    v9 = 0x6E776F6E6B6E7524;
  }

  else
  {
    v9 = sub_21A450D74();
    (*(v8 + 8))(v2, v7);
  }

  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_21A3F9D40(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_21A3F9E38;

  return v7(a2);
}

uint64_t sub_21A3F9E38(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t static PFLUtils.rethrow<A>(_:for:)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_21A3FA050;

  return v7(a1);
}

uint64_t sub_21A3FA050()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A3FA184, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21A3FA184()
{
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_21A450F24();
  __swift_project_value_buffer(v3, qword_27CD28C90);
  v4 = v1;
  v5 = v2;
  v6 = sub_21A450F04();
  v7 = sub_21A451584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    v11[1] = v15;
    _os_log_impl(&dword_21A3C2000, v6, v7, "Override error: %@ -> with %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v11, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v16 = v0[4];
  v17 = v0[2];

  swift_willThrow();
  v18 = v17;
  v19 = v0[1];

  return v19();
}

uint64_t static PFLUtils.catchAndHandle<A>(for:handler:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = a1();
  if (v3)
  {
    a3(v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t static PFLUtils.language(locale:)()
{
  v0 = sub_21A450DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28620, &unk_21A456510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_21A450E04();
  sub_21A450DE4();
  (*(v1 + 8))(v3, v0);
  v7 = sub_21A450D84();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21A3D3BF0(v6, &qword_27CD28620, &unk_21A456510);
    return 0x6E776F6E6B6E7524;
  }

  else
  {
    v10 = sub_21A450D74();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t static PFLUtils.region(locale:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28618, &qword_21A456508);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_21A450DC4();
  v3 = sub_21A450DB4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21A3D3BF0(v2, &qword_27CD28618, &qword_21A456508);
    return 0x6E776F6E6B6E7524;
  }

  else
  {
    v6 = sub_21A450D74();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_21A3FA748(void *a1, uint64_t a2)
{
  sub_21A4352F4(a2);
  if (!v2)
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v4 = sub_21A450F24();
  __swift_project_value_buffer(v4, qword_27CD28C90);
  v5 = v2;
  v6 = a1;
  v7 = sub_21A450F04();
  v8 = sub_21A451584();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2112;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    v10[1] = v14;
    _os_log_impl(&dword_21A3C2000, v7, v8, "Override error: %@ -> with %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v10, -1, -1);
    MEMORY[0x21CEDB220](v9, -1, -1);
  }

  swift_willThrow();
  v15 = a1;
}

uint64_t sub_21A3FA920@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_21A450AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A450BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D0], v7);
  (*(v12 + 56))(v6, 1, 1, v11);

  sub_21A450BA4();
  v15 = v38;
  v16 = sub_21A450C04();
  if (v15)
  {
    (*(v12 + 8))(v14, v11);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v18 = sub_21A450F24();
    __swift_project_value_buffer(v18, qword_27CD28C90);
    v19 = v15;
    v20 = v37;
    v21 = v37;
    v22 = sub_21A450F04();
    v23 = sub_21A451584();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      v26 = v15;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      *(v24 + 12) = 2112;
      v28 = v20;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v29;
      v25[1] = v29;
      _os_log_impl(&dword_21A3C2000, v22, v23, "Override error: %@ -> with %@", v24, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v25, -1, -1);
      MEMORY[0x21CEDB220](v24, -1, -1);
    }

    swift_willThrow();
    v30 = v20;
  }

  else
  {
    v32 = v16;
    v33 = v17;
    (*(v12 + 8))(v14, v11);

    v34 = v36;
    *v36 = v32;
    v34[1] = v33;
  }

  return result;
}

id static PFLUtils.rethrow<A>(_:for:)(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v5 = sub_21A450F24();
    __swift_project_value_buffer(v5, qword_27CD28C90);
    v6 = v2;
    v7 = a1;
    v8 = sub_21A450F04();
    v9 = sub_21A451584();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12 = v2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v11[1] = v15;
      _os_log_impl(&dword_21A3C2000, v8, v9, "Override error: %@ -> with %@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v11, -1, -1);
      MEMORY[0x21CEDB220](v10, -1, -1);
    }

    swift_willThrow();
    return a1;
  }

  return result;
}

uint64_t static PFLUtils.throwIfFalse(error:for:)(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if ((result & 1) == 0)
  {
    swift_willThrow();
    return a1;
  }

  return result;
}

uint64_t static PFLUtils.throwIfFalse(error:for:)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21A3FB004;

  return v5();
}

uint64_t sub_21A3FB004(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_21A3FB104, 0, 0);
}

uint64_t sub_21A3FB104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(v4 + 32) & 1) == 0)
  {
    v6 = *(v4 + 16);
    swift_willThrow();
    v7 = v6;
  }

  v5 = *(v4 + 8);

  return v5();
}

void *static PFLUtils.throwIfError(_:)(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v3 = sub_21A450F24();
    __swift_project_value_buffer(v3, qword_27CD28C90);
    v4 = v2;
    v5 = sub_21A450F04();
    v6 = sub_21A451584();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_21A3C2000, v5, v6, "%@", v7, 0xCu);
      sub_21A3D3BF0(v8, &qword_27CD28608, &qword_21A456570);
      MEMORY[0x21CEDB220](v8, -1, -1);
      MEMORY[0x21CEDB220](v7, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t static PFLUtils.throwIfTimeout<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_21A3FB330, 0, 0);
}

uint64_t sub_21A3FB330()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_21A3FB42C;
  v6 = *(v0 + 16);

  return MEMORY[0x282200740](v6);
}

uint64_t sub_21A3FB42C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A3FB568, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21A3FB568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_21A4515F4();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  *(v6 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3FB6D4, 0, 0);
}

uint64_t sub_21A3FB6D4()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_21A451434();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v4;

  v0[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v9 = sub_21A451484();
  sub_21A3FBD10(v1, &unk_21A456C48, v8, v9);
  sub_21A3D3BF0(v1, qword_27CD286D0, &qword_21A456AA8);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v3;
  sub_21A3FBD10(v1, &unk_21A456C58, v10, v9);
  sub_21A3D3BF0(v1, qword_27CD286D0, &qword_21A456AA8);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_21A3FB908;
  v12 = v0[10];

  return MEMORY[0x2822004D0](v12, 0, 0, v9);
}

uint64_t sub_21A3FB908()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21A3FBBAC;
  }

  else
  {
    v2 = sub_21A3FBA1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3FBA1C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    sub_21A3DCAF8();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
    sub_21A451474();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A3FBBAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FBC18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21A3EC5D4;

  return v8(a1);
}

uint64_t sub_21A3FBD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_21A401424(a1, v19 - v9);
  v11 = sub_21A451434();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21A3D3BF0(v10, qword_27CD286D0, &qword_21A456AA8);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_21A4513E4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21A451424();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_21A3FBF14(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_21A3FBFFC;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_21A3FBFFC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21A3FC12C, 0, 0);
  }
}

uint64_t sub_21A3FC12C()
{
  sub_21A3DCAF8();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A3FC1BC(uint64_t a1)
{
  v32 = a1;
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v3 = sub_21A451414();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - v4;
  v31 = v5;
  v6 = sub_21A4515F4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_21A451B84();
  v10 = sub_21A4515F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v2 + 96);
  swift_beginAccess();
  (*(v11 + 16))(v16, v1 + v17, v10);
  v18 = *(v9 - 8);
  LODWORD(v2) = (*(v18 + 48))(v16, 1, v9);
  result = (*(v11 + 8))(v16, v10);
  if (v2 == 1)
  {
    v20 = v32;
    (*(v18 + 16))(v14, v32, v9);
    (*(v18 + 56))(v14, 0, 1, v9);
    swift_beginAccess();
    (*(v11 + 40))(v1 + v17, v14, v10);
    swift_endAccess();
    v21 = *(*v1 + 104);
    swift_beginAccess();
    v23 = v28;
    v22 = v29;
    (*(v28 + 16))(v8, v1 + v21, v29);
    v25 = v30;
    v24 = v31;
    if ((*(v30 + 48))(v8, 1, v31))
    {
      return (*(v23 + 8))(v8, v22);
    }

    else
    {
      v26 = v27;
      (*(v25 + 16))(v27, v8, v24);
      (*(v23 + 8))(v8, v22);
      sub_21A3FC60C(v20, v24);
      return (*(v25 + 8))(v26, v24);
    }
  }

  return result;
}

uint64_t sub_21A3FC60C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A451B84();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_21A4513F4();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_21A451404();
  }
}

uint64_t sub_21A3FC848(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v3 = sub_21A451B84();
  v4 = sub_21A4515F4();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v26 = &v25 - v9;
  v10 = sub_21A451414();
  v11 = sub_21A4515F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 16);
  v27 = a1;
  v17 = a1;
  v18 = v28;
  v16(&v25 - v13, v17, v10);
  (*(v15 + 56))(v14, 0, 1, v10);
  v19 = *(*v1 + 104);
  swift_beginAccess();
  (*(v12 + 40))(v1 + v19, v14, v11);
  swift_endAccess();
  v20 = *(*v1 + 96);
  swift_beginAccess();
  v21 = v1 + v20;
  v22 = v29;
  (*(v18 + 16))(v7, v21, v29);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    return (*(v18 + 8))(v7, v22);
  }

  v24 = v26;
  (*(v8 + 32))(v26, v7, v3);
  sub_21A3FC60C(v24, v10);
  return (*(v8 + 8))(v24, v3);
}

uint64_t sub_21A3FCBE4()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  v2 = sub_21A4515F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  sub_21A451414();
  v4 = sub_21A4515F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_21A3FCD1C()
{
  v0 = sub_21A3FCBE4();

  return MEMORY[0x282200960](v0);
}

uint64_t *sub_21A3FCD5C()
{
  swift_defaultActor_initialize();
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v2 = sub_21A451B84();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = *(*v0 + 104);
  v4 = sub_21A451414();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t static PFLUtils.withTimeout<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3FCF44, 0, 0);
}

uint64_t sub_21A3FCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[7];
  v7 = v4[4];
  v6 = v4[5];
  v8 = v4[3];
  type metadata accessor for PFLUtils.TimeoutCoordinator(0, v4[6], a3, a4);
  swift_allocObject();
  v9 = sub_21A3FCD5C();
  v4[8] = v9;
  v10 = sub_21A451434();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;
  v12[5] = v6;
  v12[6] = v9;

  v13 = sub_21A3FDA40(0, 0, v5, &unk_21A456AB8, v12);
  v4[9] = v13;
  v11(v5, 1, 1, v10);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v13;

  v4[10] = sub_21A3FDA40(0, 0, v5, &unk_21A456AC8, v14);
  v15 = swift_task_alloc();
  v4[11] = v15;
  *v15 = v4;
  v15[1] = sub_21A3FD18C;
  v16 = v4[6];
  v17 = v4[2];

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000013, 0x800000021A45C100, sub_21A400138, v9, v16);
}

uint64_t sub_21A3FD18C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21A3FD350;
  }

  else
  {
    v2 = sub_21A3FD2A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3FD2A0()
{
  sub_21A451444();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FD350()
{
  sub_21A451444();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FD400(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v9 = sub_21A451B84();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = *(v8 - 8);
  v10 = swift_task_alloc();
  v6[8] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v6[9] = v11;
  *v11 = v6;
  v11[1] = sub_21A3FD5EC;

  return v13(v10);
}

uint64_t sub_21A3FD5EC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21A3FD8B4;
  }

  else
  {
    v2 = sub_21A3FD700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3FD700()
{
  v1 = v0[2];
  (*(v0[7] + 16))(v0[6], v0[8], v0[3]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_21A3FD79C, v1, 0);
}

uint64_t sub_21A3FD79C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_21A3FC1BC(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21A3FD830, 0, 0);
}

uint64_t sub_21A3FD830()
{
  (*(v0[7] + 8))(v0[8], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A3FD8B4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  **(v0 + 48) = v1;
  swift_storeEnumTagMultiPayload();
  v3 = v1;

  return MEMORY[0x2822009F8](sub_21A3FD938, v2, 0);
}

uint64_t sub_21A3FD938()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_21A3FC1BC(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21A3FD9CC, 0, 0);
}

uint64_t sub_21A3FD9CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FDA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21A401424(a3, v25 - v10);
  v12 = sub_21A451434();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21A3D3BF0(v11, qword_27CD286D0, &qword_21A456AA8);
  }

  else
  {
    sub_21A451424();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21A4513E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21A4510E4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_21A3D3BF0(a3, qword_27CD286D0, &qword_21A456AA8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A3D3BF0(a3, qword_27CD286D0, &qword_21A456AA8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21A3FDD30(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v7 = sub_21A451B84();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3FDE2C, 0, 0);
}

uint64_t sub_21A3FDE2C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_21A3FDF14;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_21A3FDF14()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21A3FE1EC;
  }

  else
  {
    v2 = sub_21A3FE028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3FE028()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  sub_21A3DCAF8();
  v3 = swift_allocError();
  *v4 = 4;
  *v1 = v3;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x2822009F8](sub_21A3FE0D4, v2, 0);
}

uint64_t sub_21A3FE0D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_21A3FC1BC(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_21A3FE168, 0, 0);
}

uint64_t sub_21A3FE168()
{
  sub_21A451444();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FE1EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3FE254(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v5 = sub_21A451414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_21A451434();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v4;
  *(v14 + 5) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_21A3FDA40(0, 0, v11, &unk_21A456C20, v14);
}

uint64_t sub_21A3FE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21A3FE494, a4, 0);
}

uint64_t sub_21A3FE494()
{
  sub_21A3FC848(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static PFLUtils.catchAndHandle<A>(for:handler:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_21A3FE5F0;

  return v9(a1);
}

uint64_t sub_21A3FE5F0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A3FE724, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21A3FE724()
{
  (*(v0 + 16))(*(v0 + 40));
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void static PFLUtils.runAsync<A>(work:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v23 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v6 = sub_21A451B84();
  v26 = sub_21A4515F4();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = dispatch_semaphore_create(0);
  v24 = a3;
  type metadata accessor for AsyncResult(0, a3, v14, v15);
  swift_allocObject();
  v16 = sub_21A3FF498();
  v17 = sub_21A451434();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v25;
  v18[5] = a2;
  v18[6] = v16;
  v18[7] = v13;

  v19 = v13;
  sub_21A3FDA40(0, 0, v12, &unk_21A456AE8, v18);

  sub_21A451594();
  v20 = *(*v16 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v9, v16 + v20, v26);
  if ((*(*(v6 - 8) + 48))(v9, 1, v6) == 1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v21 = 5;
LABEL_4:
    swift_willThrow();

    return;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_4;
  }

  (*(*(v24 - 8) + 32))(v23, v9);
}

uint64_t sub_21A3FEB40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v9 = *(*a6 + 80);
  v7[10] = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v7[11] = sub_21A451B84();
  v10 = sub_21A4515F4();
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = *(v9 - 8);
  v11 = swift_task_alloc();
  v7[16] = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[17] = v12;
  *v12 = v7;
  v12[1] = sub_21A3FED3C;

  return v14(v11);
}

uint64_t sub_21A3FED3C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_21A3FEF94;
  }

  else
  {
    v2 = sub_21A3FEE50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3FEE50()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  (*(v0[15] + 32))(v1, v0[16], v0[10]);
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v6 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v1, v3);
  swift_endAccess();
  sub_21A4515A4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21A3FEF94()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  *v1 = v0[18];
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v6 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v1, v3);
  swift_endAccess();
  sub_21A4515A4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21A3FF0C4@<X0>(uint64_t *a2@<X8>)
{
  if (sub_21A4509B4())
  {
    result = sub_21A451134();
  }

  else
  {
    v4 = 0xE100000000000000;
    result = 95;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t FloatingPoint.isNearlyEqual(to:absoluteTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_21A451834();
  sub_21A451A74();
  v11 = *(v5 + 8);
  v11(v8, a3);
  v12 = sub_21A450FF4();
  v11(v10, a3);
  return v12 & 1;
}

uint64_t sub_21A3FF388()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  v2 = sub_21A4515F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21A3FF444()
{
  sub_21A3FF388();

  return swift_deallocClassInstance();
}

uint64_t sub_21A3FF498()
{
  v1 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v2 = sub_21A451B84();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_21A3FF550(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21A3FF648;

  return v6(a1);
}

uint64_t sub_21A3FF648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A3FF740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t _s24PrivateFederatedLearning8PFLUtilsO18sysctlStringByName4nameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 256;
  v2 = sub_21A451344();
  *(v2 + 16) = 256;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 32) = 0u;
  v3 = sub_21A4510E4();
  sysctlbyname((v3 + 32), (v2 + 32), v7, 0, 0);

  v5 = sub_21A3FF740(v2, v4);

  return v5;
}

uint64_t _s24PrivateFederatedLearning8PFLUtilsO18getDayAndHourInGMT4dateSi3day_Si4hourt10Foundation4DateV_tFZ_0(uint64_t a1)
{
  v32 = a1;
  v1 = sub_21A450E84();
  v33 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v28[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287F0, &unk_21A456C60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28[-v8];
  v34 = sub_21A450EB4();
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_21A450E24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_21A450E94();
  v30 = *(v17 - 8);
  v31 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, *MEMORY[0x277CC9830], v13);
  sub_21A450E34();
  v20 = v16;
  v21 = v34;
  (*(v14 + 8))(v20, v13);
  sub_21A450EA4();
  result = (*(v10 + 48))(v9, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v9, v21);
    sub_21A450E74();
    v23 = *MEMORY[0x277CC9968];
    v24 = v33;
    v25 = *(v33 + 104);
    v25(v6, v23, v1);
    v25(v4, *MEMORY[0x277CC9988], v1);
    v34 = sub_21A450E44();
    v29 = v26;
    v27 = *(v24 + 8);
    v27(v4, v1);
    v27(v6, v1);
    v25(v6, *MEMORY[0x277CC9980], v1);
    v25(v4, v23, v1);
    sub_21A450E44();
    v27(v4, v1);
    v27(v6, v1);
    (*(v30 + 8))(v19, v31);
    if (v29)
    {
      return 0;
    }

    else
    {
      return v34;
    }
  }

  return result;
}

void sub_21A3FFD44(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A451054();
  v3 = MGCopyAnswer();

  if (v3)
  {
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21A3FFDD0(uint64_t a1, unint64_t a2)
{
  v3 = a1;

  result = sub_21A3F94A4(64, 0xE100000000000000, v3, a2);
  if (v5)
  {
    return v3;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v6 >= result >> 14)
  {
    sub_21A4510F4();
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3FFE74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21A3F9470;

  return sub_21A3FB5CC(a1, a2, v7, v8, v6, v9);
}

uint64_t sub_21A3FFF60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3F9470;

  return sub_21A3FD400(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21A400070(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A3F9470;

  return sub_21A3FDD30(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_21A400158(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21A3F9470;

  return sub_21A3FEB40(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21A40023C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  result = sub_21A4515F4();
  if (v2 <= 0x3F)
  {
    sub_21A451414();
    result = sub_21A4515F4();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_21A40036C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  sub_21A451B84();
  result = sub_21A4515F4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A400430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_21A400454, 0, 0);
}

uint64_t sub_21A400454()
{
  v1 = *(v0 + 40);
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = &unk_21A456BF8;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287E8, &qword_21A456C10);
  *v6 = v0;
  v6[1] = sub_21A40057C;

  return MEMORY[0x28210DEC0](v0 + 16, v2, v3, &unk_21A456C08, v5, v7);
}

uint64_t sub_21A40057C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21A4006BC;
  }

  else
  {

    v2 = sub_21A4006A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A4006BC()
{

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_21A450F24();
  __swift_project_value_buffer(v3, qword_27CD28C90);
  v4 = v1;
  v5 = v2;
  v6 = sub_21A450F04();
  v7 = sub_21A451584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[11];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    v11[1] = v15;
    _os_log_impl(&dword_21A3C2000, v6, v7, "Override error: %@ -> with %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v11, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v16 = v0[11];
  v17 = v0[4];

  swift_willThrow();
  v18 = v17;
  v19 = v0[1];

  return v19();
}

uint64_t sub_21A4008C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_21A4008EC, 0, 0);
}

uint64_t sub_21A4008EC()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287E0, &qword_21A456BE8);
  *v6 = v0;
  v6[1] = sub_21A4009EC;

  return MEMORY[0x28210DEC0](v0 + 2, v3, v4, &unk_21A456BE0, v5, v7);
}

uint64_t sub_21A4009EC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21A400B24;
  }

  else
  {

    v2 = sub_21A400B08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A400B24()
{

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_21A450F24();
  __swift_project_value_buffer(v3, qword_27CD28C90);
  v4 = v1;
  v5 = v2;
  v6 = sub_21A450F04();
  v7 = sub_21A451584();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[8];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2112;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    v11[1] = v15;
    _os_log_impl(&dword_21A3C2000, v6, v7, "Override error: %@ -> with %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
    swift_arrayDestroy();
    MEMORY[0x21CEDB220](v11, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v16 = v0[8];
  v17 = v0[3];

  swift_willThrow();
  v18 = v17;
  v19 = v0[1];

  return v19();
}

id sub_21A400D28(void *a1, uint64_t a2, uint64_t a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = sub_21A450C54();
  v22[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v22];

  v7 = v22[0];
  if (v6)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
    swift_dynamicCast();
    return v22[1];
  }

  else
  {
    v9 = v7;
    v10 = sub_21A450A84();

    swift_willThrow();
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v11 = sub_21A450F24();
    __swift_project_value_buffer(v11, qword_27CD28C90);
    v12 = v10;
    v13 = a1;
    v14 = sub_21A450F04();
    v15 = sub_21A451584();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      v18 = v10;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      *(v16 + 12) = 2112;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v21;
      v17[1] = v21;
      _os_log_impl(&dword_21A3C2000, v14, v15, "Override error: %@ -> with %@", v16, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28608, &qword_21A456570);
      swift_arrayDestroy();
      MEMORY[0x21CEDB220](v17, -1, -1);
      MEMORY[0x21CEDB220](v16, -1, -1);
    }

    swift_willThrow();
    return a1;
  }
}

uint64_t sub_21A400FD4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC5D4;

  return sub_21A3EC188(a1, a2, v6);
}

uint64_t sub_21A401084(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21A40112C;

  return sub_21A3EB098(a1, v5, v4);
}

uint64_t sub_21A40112C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_21A401238(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3F9470;

  return sub_21A3F9D40(a1, a2, v6);
}

uint64_t sub_21A401300(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284B0, qword_21A456110);
  v5 = *(sub_21A451414() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21A3EC5D4;

  return sub_21A3FE474(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_21A401424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD286D0, &qword_21A456AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A401494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3F9470;

  return sub_21A3FF550(a1, v4);
}

uint64_t sub_21A40154C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A3F9470;

  return sub_21A3FBC18(a1, v4, v5, v6);
}

uint64_t sub_21A401614()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A3F9470;

  return sub_21A3FBEF4(v2);
}

uint64_t sub_21A4016D8(unint64_t a1)
{
  v29 = a1;
  v1 = sub_21A450D94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21A450E14();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456A60;
  *(inited + 32) = 0x745F656369766564;
  *(inited + 40) = 0xEB00000000657079;
  sub_21A3FFD44(0x54746375646F7250, 0xEB00000000657079);
  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6F5F656369766564;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = _s24PrivateFederatedLearning8PFLUtilsO18sysctlStringByName4nameS2S_tFZ_0(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
  *(inited + 104) = v11;
  *(inited + 120) = v8;
  *(inited + 128) = 0x656C61636F6CLL;
  *(inited + 136) = 0xE600000000000000;
  sub_21A450DD4();
  (*(v2 + 104))(v4, *MEMORY[0x277CC9668], v1);
  sub_21A450D54();
  v12 = sub_21A450D64();
  v14 = v13;

  (*(v2 + 8))(v4, v1);
  v15 = sub_21A3FFDD0(v12, v14);
  v17 = v16;

  v34[0] = v15;
  v34[1] = v17;
  v32 = 45;
  v33 = 0xE100000000000000;
  v30 = 95;
  v31 = 0xE100000000000000;
  sub_21A3ED2CC();
  v18 = sub_21A451654();
  v20 = v19;
  (*(v27 + 8))(v6, v28);

  *(inited + 168) = v8;
  *(inited + 144) = v18;
  *(inited + 152) = v20;
  v21 = v29;
  v22 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
  swift_arrayDestroy();
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v22;
  sub_21A3D3D28(v23, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v34);

  return v34[0];
}

double sub_21A401B70@<D0>(SEL *a3@<X4>, _OWORD *a4@<X8>)
{
  v7 = *v4;
  v8 = sub_21A451054();
  v9 = [v7 *a3];

  if (v9)
  {
    sub_21A451694();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_21A401C30(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_21A3E7060(a1, v13, &qword_27CD28468, &unk_21A455FB0);
  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_21A4519A4();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_21A451054();
  [v4 *a4];
  swift_unknownObjectRelease();
}

void *sub_21A401DA8()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v2 = sub_21A451054();
  v3 = [v1 initWithStoreIdentifier:v2 type:1];

  v4 = sub_21A3ED284(0, &qword_27CD287F8, 0x277CCAD80);
  v0[2] = v3;
  v0[5] = v4;
  v0[6] = &off_282B40C50;
  v5 = [objc_opt_self() standardUserDefaults];
  v0[10] = sub_21A3ED284(0, &qword_27CD28800, 0x277CBEBD0);
  v0[11] = &off_282B40C68;
  v0[7] = v5;
  return v0;
}

uint64_t sub_21A401E94(uint64_t a1)
{
  v2 = sub_21A450D44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A402528(0x444972657355, 0xE600000000000000);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    sub_21A450D34();
    v8 = sub_21A450D24();
    v9 = v10;
    (*(v3 + 8))(v5, v2);
    sub_21A4023B0(0x444972657355, 0xE600000000000000, v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28580, &qword_21A456480);
  inited = swift_initStackObject();
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D83838];
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 56) = v12;
  *(inited + 64) = v13;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v17 = a1;

  sub_21A443918(inited);
  v14 = sub_21A402050(v17);

  return v14;
}

uint64_t sub_21A402050(uint64_t a1)
{
  v3 = sub_21A4510B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v26 = v4;
    v27 = v3;
    v28 = v1;
    v30 = MEMORY[0x277D84F90];
    sub_21A3E48DC(0, v7, 0);
    v8 = v30;
    v9 = a1 + 32;
    do
    {
      sub_21A3F939C(v9, v29);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v10 = sub_21A451974();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0(v29);
      v30 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21A3E48DC((v13 > 1), v14 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v9 += 40;
      --v7;
    }

    while (v7);
    v3 = v27;
    v4 = v26;
  }

  v29[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
  sub_21A402B04();
  sub_21A450FD4();

  sub_21A4510A4();
  v16 = sub_21A451094();
  v18 = v17;

  (*(v4 + 8))(v6, v3);
  if (v18 >> 60 == 15)
  {
    sub_21A3EC940();
    swift_allocError();
    *v19 = 51;
    return swift_willThrow();
  }

  v21 = sub_21A451344();
  *(v21 + 16) = 32;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  v29[0] = v21;
  sub_21A3F74C8(v16, v18);
  sub_21A4028EC(v16, v18, v16, v18, v29);
  v22 = *(v29[0] + 2);
  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = 32;
  do
  {
    v23 = v29[0][v24++] | (v23 << 8);
    --v22;
  }

  while (v22);
  sub_21A3ECC34(v16, v18);

  v25 = vcvtd_n_f64_u64(v23, 0x40uLL) * 10000.0;
  if (v25 != INFINITY)
  {
    if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        return v25;
      }

      __break(1u);
LABEL_16:
      sub_21A3ECC34(v16, v18);

      return 0.0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A4023B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21A3E7060((v4 + 2), v18, &qword_27CD28808, &qword_21A456D38);
  v9 = v19;
  v10 = MEMORY[0x277D837D0];
  if (v19)
  {
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v17[3] = v10;
    v17[0] = a3;
    v17[1] = a4;
    v12 = *(v11 + 16);

    v12(v17, a1, a2, v9, v11);
    v10 = MEMORY[0x277D837D0];
    sub_21A3D3BF0(v17, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_21A3D3BF0(v18, &qword_27CD28808, &qword_21A456D38);
  }

  v13 = v4[10];
  v14 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v13);
  v19 = v10;
  v18[0] = a3;
  v18[1] = a4;
  v15 = *(v14 + 16);

  v15(v18, a1, a2, v13, v14);
  return sub_21A3D3BF0(v18, &qword_27CD28468, &unk_21A455FB0);
}

unint64_t sub_21A402528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_21A3E7060((v2 + 2), &v17, &qword_27CD28808, &qword_21A456D38);
  v6 = v18;
  if (!v18)
  {
    sub_21A3D3BF0(&v17, &qword_27CD28808, &qword_21A456D38);
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  v7 = v19;
  __swift_project_boxed_opaque_existential_1(&v17, v18);
  (*(v7 + 8))(&v20, a1, a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_0(&v17);
  if (!*(&v21 + 1))
  {
LABEL_6:
    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v17;
  }

LABEL_7:
  v9 = v2[10];
  v10 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v9);
  (*(v10 + 8))(&v17, a1, a2, v9, v10);
  if (!v18)
  {
    sub_21A3D3BF0(&v17, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  v11 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v12 = *(&v20 + 1);
  v8 = v20;
  sub_21A3E7060((v3 + 2), &v17, &qword_27CD28808, &qword_21A456D38);
  v13 = v18;
  if (v18)
  {
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    *(&v21 + 1) = v11;
    v20 = __PAIR128__(v12, v8);
    v15 = *(v14 + 16);

    v15(&v20, a1, a2, v13, v14);
    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(&v17);
  }

  else
  {
    sub_21A3D3BF0(&v17, &qword_27CD28808, &qword_21A456D38);
  }

  return v8;
}

uint64_t sub_21A4027A0()
{
  sub_21A3D3BF0(v0 + 16, &qword_27CD28808, &qword_21A456D38);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_21A402814(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_21A408084(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA256(v6, v8, v11 + 32);
}

uint64_t sub_21A4028EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v25[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v8 = v25 + BYTE6(a2);
      v9 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_21A4509F4();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_21A450A24();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_21A450A14();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v9 = v25;
    v8 = v25;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_21A4509F4();
  if (v13)
  {
    v14 = sub_21A450A24();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_21A450A14();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_21A402814(v9, v8, a3, a4, a5);
  return sub_21A3E759C(v6, v5);
}

unint64_t sub_21A402B04()
{
  result = qword_27CD28810[0];
  if (!qword_27CD28810[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284A0, &qword_21A4560F0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD28810);
  }

  return result;
}

uint64_t PerformanceMeasure.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t PerformanceMeasure.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t sub_21A402BAC(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_21A4033E8(a1, a2, isUniquelyReferenced_nonNull_native, Current);
  *(v2 + 16) = v8;
  return swift_endAccess();
}

double sub_21A402C48(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = 0.0;
  if (*(v5 + 16))
  {

    v7 = sub_21A3DCA2C(a1, a2);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v7);

      Current = CFAbsoluteTimeGetCurrent();
      if (qword_27CD28170 != -1)
      {
        v17 = Current;
        swift_once();
        Current = v17;
      }

      v6 = Current - v9;
      v11 = sub_21A450F24();
      __swift_project_value_buffer(v11, qword_27CD28C90);

      sub_21A3DCEF0();
      sub_21A3DCEF0();
      v12 = sub_21A450F04();
      v13 = sub_21A451574();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18[0] = v15;
        *v14 = 136315650;
        *(v14 + 4) = sub_21A3E2554(a1, a2, v18);
        *(v14 + 12) = 1040;
        *(v14 + 14) = 5;
        *(v14 + 18) = 2048;
        *(v14 + 20) = v6;
        _os_log_impl(&dword_21A3C2000, v12, v13, "⏲ Measure [%s]: %.*f sec", v14, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x21CEDB220](v15, -1, -1);
        MEMORY[0x21CEDB220](v14, -1, -1);
      }

      swift_beginAccess();
      sub_21A402F5C(a1, a2);
      swift_endAccess();
    }

    else
    {
    }
  }

  return v6;
}

uint64_t PerformanceMeasure.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_21A402EB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21A3DCA2C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A3E3DD8();
      v10 = v12;
    }

    sub_21A3D3B38((*(v10 + 56) + 32 * v8), a3);
    sub_21A418F30(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21A402F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21A3DCA2C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21A3E4294();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21A4190E0(v6, v8);
  *v3 = v8;
  return v9;
}

_OWORD *sub_21A403008(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A3DCA2C(a2, a3);
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
      sub_21A3E3DD8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A3E2A88(v16, a4 & 1);
    v11 = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21A451A94();
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

    return sub_21A3D3B38(a1, v22);
  }

  else
  {
    sub_21A419444(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21A403158(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A3DCA2C(a2, a3);
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
      sub_21A3E3F7C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A3E2D40(v16, a4 & 1);
    v11 = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_21A4194B0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21A4032A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A3DCA2C(a2, a3);
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
      sub_21A3E4280();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A3E32BC(v16, a4 & 1);
    v11 = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_21A4194B0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21A4033E8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21A3DCA2C(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_21A3E4294();
      result = v19;
      goto LABEL_8;
    }

    sub_21A3E32D0(v16, a3 & 1);
    result = sub_21A3DCA2C(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_21A4194F8(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_21A4035A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21A3DCA2C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21A3E4570();
      result = v19;
      goto LABEL_8;
    }

    sub_21A3E3828(v16, a4 & 1);
    result = sub_21A3DCA2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 168 * result;
    v23 = *(a1 + 144);
    *(v22 + 128) = *(a1 + 128);
    *(v22 + 144) = v23;
    *(v22 + 160) = *(a1 + 160);
    v24 = *(a1 + 80);
    *(v22 + 64) = *(a1 + 64);
    *(v22 + 80) = v24;
    v25 = *(a1 + 112);
    *(v22 + 96) = *(a1 + 96);
    *(v22 + 112) = v25;
    v26 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v26;
    v27 = *(a1 + 48);
    *(v22 + 32) = *(a1 + 32);
    *(v22 + 48) = v27;
  }

  else
  {
    sub_21A419540(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t *sub_21A403750()
{
  sub_21A40379C(v0[2], v0[3], *(*v0 + 80));
  sub_21A451604();
  return v0;
}

uint64_t sub_21A40379C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = swift_arrayDestroy();
    if ((a2 * *(*(a3 - 8) + 72)) >> 64 == (a2 * *(*(a3 - 8) + 72)) >> 63)
    {
      return v3;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21A40380C()
{
  sub_21A403750();

  return swift_deallocClassInstance();
}

void static PFLTaskTargeting.ensureDeviceUnlocked()()
{
  sub_21A3EC940();
  v0 = swift_allocError();
  *v1 = 33;
  v2 = MKBGetDeviceLockState();
  if (v2 != 3 && v2)
  {
    swift_willThrow();
  }

  else
  {
  }
}

void sub_21A403918(char a1, SEL *a2)
{
  sub_21A3EC940();
  v4 = swift_allocError();
  *v5 = a1;
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 *a2];

    if (v8)
    {
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21A4039D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v14[0] = 0xD000000000000013;
  *(&v14[0] + 1) = 0x800000021A45C200;
  MEMORY[0x21CED98B0](a1, a2);
  MEMORY[0x21CED98B0](45, 0xE100000000000000);
  MEMORY[0x21CED98B0](a3, a4);
  *&v12 = 46;
  *(&v12 + 1) = 0xE100000000000000;
  v15 = 95;
  v16 = 0xE100000000000000;
  v11 = sub_21A3ED2CC();
  v10 = MEMORY[0x277D837D0];
  sub_21A451654();

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_21A451054();

  v8 = [v6 valueForKey_];

  if (v8)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      return v15;
    }
  }

  else
  {
    sub_21A403B88(v14);
  }

  return 0;
}

uint64_t sub_21A403B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28468, &unk_21A455FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A403BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v30 = a4;
  v39 = sub_21A450D14();
  v31 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  *&v34[0] = 0;
  *(&v34[0] + 1) = 0xE000000000000000;
  sub_21A451754();

  *&v34[0] = 0xD000000000000010;
  *(&v34[0] + 1) = 0x800000021A45C220;
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v37 = 46;
  v38 = 0xE100000000000000;
  v35 = 95;
  v36 = 0xE100000000000000;
  sub_21A3ED2CC();
  v13 = sub_21A451654();
  MEMORY[0x21CED98B0](v13);

  MEMORY[0x21CED98B0](45, 0xE100000000000000);
  *&v32 = a3;
  *(&v32 + 1) = v30;
  v37 = 46;
  v38 = 0xE100000000000000;
  v35 = 95;
  v36 = 0xE100000000000000;
  v14 = sub_21A451654();
  MEMORY[0x21CED98B0](v14);

  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = sub_21A451054();
  v18 = [v16 valueForKey_];

  if (v18)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  v19 = v39;
  v20 = v31;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_21A450D04();
      v21 = v29;
      sub_21A450CD4();
      sub_21A450CC4();
      v23 = v22;
      v24 = *(v20 + 8);
      v24(v21, v19);
      v24(v12, v19);
      if (v23 <= a5)
      {

        sub_21A3EC940();
        swift_allocError();
        *v25 = 50;
        swift_willThrow();
        return;
      }
    }
  }

  else
  {
    sub_21A403B88(v34);
  }

  v26 = [v15 standardUserDefaults];
  sub_21A450D04();
  sub_21A450CE4();
  (*(v20 + 8))(v12, v19);
  v27 = sub_21A451494();
  v28 = sub_21A451054();

  [v26 setValue:v27 forKey:v28];
}

void sub_21A404008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v18[0] = 0xD000000000000013;
  *(&v18[0] + 1) = 0x800000021A45C200;
  MEMORY[0x21CED98B0](a1, a2);
  MEMORY[0x21CED98B0](45, 0xE100000000000000);
  MEMORY[0x21CED98B0](a3, a4);
  *&v16 = 46;
  *(&v16 + 1) = 0xE100000000000000;
  v19 = 95;
  v20 = 0xE100000000000000;
  v15 = sub_21A3ED2CC();
  v14 = MEMORY[0x277D837D0];
  sub_21A451654();

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_21A451054();
  v9 = [v7 valueForKey_];

  if (v9)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v19;
      goto LABEL_9;
    }
  }

  else
  {
    sub_21A403B88(v18);
  }

  v10 = 0;
LABEL_9:
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = [v6 standardUserDefaults];
    v12 = sub_21A4514E4();
    v13 = sub_21A451054();

    [v11 setValue:v12 forKey:v13];
  }
}

uint64_t sub_21A404234@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

PrivateFederatedLearning::ShuffleMethod_optional __swiftcall ShuffleMethod.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_21A4042C8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_21A404320()
{
  result = qword_27CD28898;
  if (!qword_27CD28898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28898);
  }

  return result;
}

unint64_t sub_21A404378()
{
  result = qword_27CD288A0;
  if (!qword_27CD288A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288A0);
  }

  return result;
}

unint64_t sub_21A4043D0()
{
  result = qword_27CD288A8;
  if (!qword_27CD288A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288A8);
  }

  return result;
}

unint64_t sub_21A404428()
{
  result = qword_27CD288B0;
  if (!qword_27CD288B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288B0);
  }

  return result;
}

unint64_t sub_21A404480()
{
  result = qword_27CD288B8;
  if (!qword_27CD288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShuffleMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShuffleMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_21A404798@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t PortType.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

void *sub_21A404854()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_21A405D20();
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t (*sub_21A4048E8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A404854();
  return sub_21A404930;
}

void *sub_21A404940()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21A405D94();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t (*sub_21A4049D4(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A404940();
  return sub_21A404A1C;
}

uint64_t BaseE5Function.__allocating_init(functionName:library:lazyPrepareOpForEncode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  BaseE5Function.init(functionName:library:lazyPrepareOpForEncode:)(a1, a2, a3, v4);
  return v8;
}

void *BaseE5Function.init(functionName:library:lazyPrepareOpForEncode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = MEMORY[0x277D84F90];
  v4[6] = sub_21A3E5358(MEMORY[0x277D84F90]);
  v10 = sub_21A3E5358(v9);
  v4[8] = 0;
  v4[9] = 0;
  v4[7] = v10;
  v4[3] = a1;
  v4[4] = a2;
  v4[2] = a3;
  sub_21A4510E4();

  v11 = e5rt_program_library_retain_program_function();

  sub_21A3DCF54(v11);
  if (!v5)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v13 = 6;
    swift_willThrow();
  }

  type metadata accessor for BaseE5Function();
  swift_deallocPartialClassInstance();
  return v4;
}

void *BaseE5Function.deinit()
{
  e5rt_execution_stream_operation_release();

  return v0;
}

uint64_t BaseE5Function.__deallocating_deinit()
{
  BaseE5Function.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21A404DB4(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = v1[6];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(v1[6] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:

      v13 = e5rt_io_port_bind_buffer_object();
      if (v13)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v49 = v13;

    LODWORD(v26) = v49;
    EspressoError.init(rawValue:)(v49 + 9150);
    v50 = v68[0];
    if (v68[0] != 48)
    {
      goto LABEL_70;
    }

LABEL_66:
    if (qword_27CD28170 == -1)
    {
LABEL_67:
      v52 = sub_21A450F24();
      __swift_project_value_buffer(v52, qword_27CD28C90);
      v53 = sub_21A450F04();
      v54 = sub_21A451584();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 67109120;
        *(v55 + 4) = v26;
        _os_log_impl(&dword_21A3C2000, v53, v54, "Unknown E5 code: %u", v55, 8u);
        MEMORY[0x21CEDB220](v55, -1, -1);
      }

      v50 = 27;
      goto LABEL_70;
    }

LABEL_90:
    swift_once();
    goto LABEL_67;
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);

LABEL_81:
      swift_deallocPartialClassInstance();
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v14 = v1[7];
  v17 = *(v14 + 64);
  v16 = v14 + 64;
  v15 = v17;
  v18 = 1 << *(v1[7] + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_18:

      v24 = e5rt_io_port_bind_buffer_object();
      if (v24)
      {
        break;
      }

      v20 &= v20 - 1;

      v22 = v23;
      if (!v20)
      {
        goto LABEL_15;
      }
    }

    v51 = v24;

    LODWORD(v26) = v51;
    EspressoError.init(rawValue:)(v51 + 9150);
    v50 = __s1[0];
    if (__s1[0] == 48)
    {
      goto LABEL_66;
    }

LABEL_70:
    sub_21A3DCAA4();
    swift_allocError();
    *v56 = v50;
    swift_willThrow();
  }

LABEL_15:
  while (2)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      sub_21A3DCAF8();
      swift_allocError();
      *v60 = 6;
      swift_willThrow();

      goto LABEL_81;
    }

    if (v23 < v21)
    {
      v20 = *(v16 + 8 * v23);
      ++v22;
      if (v20)
      {
        goto LABEL_18;
      }

      continue;
    }

    break;
  }

  v25 = MEMORY[0x277D84F98];
  v1[6] = MEMORY[0x277D84F98];

  v1[7] = v25;

  v26 = MEMORY[0x277D84F90];

  if (!sub_21A404854()[2])
  {

    v28 = *(v1[8] + 16);
    if (v28 >> 60)
    {
      goto LABEL_86;
    }

    v64 = v2;
    __dst = swift_slowAlloc();
    v29 = v1[8];
    v30 = *(v29 + 16);
    v31 = MEMORY[0x277D84F90];
    if (v30)
    {
      v61 = v28;
      v63 = v26;
      v65 = MEMORY[0x277D84F90];

      sub_21A3E48FC(0, v30, 0);
      v32 = 0;
      v31 = v65;
      v26 = v29 + 40;
      while (1)
      {
        if (v32 >= *(v29 + 16))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          v39 = sub_21A451844();
          goto LABEL_45;
        }

        v33 = *v26;
        if ((*v26 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v33 & 0x2000000000000000) != 0)
        {
          *__s1 = *(v26 - 8);
          v67 = v33 & 0xFFFFFFFFFFFFFFLL;

          v34 = __s1;
        }

        else
        {
          if ((*(v26 - 8) & 0x1000000000000000) == 0)
          {
            break;
          }

          v34 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        v35 = strdup(v34);
        if (!v35)
        {
          goto LABEL_92;
        }

LABEL_34:

        v37 = *(v65 + 16);
        v36 = *(v65 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21A3E48FC((v36 > 1), v37 + 1, 1);
        }

        ++v32;
        *(v65 + 16) = v37 + 1;
        *(v65 + 8 * v37 + 32) = v35;
        v26 += 16;
        if (v30 == v32)
        {

          v26 = v63;
          v28 = v61;
          goto LABEL_40;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288C0, &unk_21A4570D0);
      sub_21A451724();
      v35 = *__s1;
      if (!*__s1)
      {
        goto LABEL_92;
      }

      goto LABEL_34;
    }

LABEL_40:
    v38 = *(v31 + 16);
    if (v38)
    {
      if (v28 < v38)
      {
        __break(1u);
        goto LABEL_89;
      }

      memcpy(__dst, (v31 + 32), 8 * v38);
    }

    v63 = (v26 >> 62);
    if (v26 >> 62)
    {
      goto LABEL_87;
    }

    v39 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
    v40 = v64;
    v41 = MEMORY[0x277D84F90];
    if (!v39)
    {
LABEL_57:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21A408AB8(0, *(v41 + 2), 0, v41, &qword_27CD28688, &unk_21A457230);
      }

      v47 = e5rt_execution_stream_operation_reshape_operation();

      sub_21A3DCF54(v47);
      if (v40)
      {
        goto LABEL_77;
      }

      if (v63)
      {
        v48 = sub_21A451844();
        if (!v48)
        {
LABEL_77:

          return MEMORY[0x21CEDB220](__dst, -1, -1);
        }
      }

      else
      {
        v48 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v48)
        {
          goto LABEL_77;
        }
      }

      if (v48 < 1)
      {
        __break(1u);
LABEL_92:
        __break(1u);
      }

      for (i = 0; i != v48; ++i)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CED9EA0](i, v26);
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_77;
    }

    *__s1 = MEMORY[0x277D84F90];
    sub_21A3E493C(0, v39 & ~(v39 >> 63), 0);
    if ((v39 & 0x8000000000000000) == 0)
    {
      v42 = 0;
      v41 = *__s1;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x21CED9EA0](v42, v26);
        }

        else
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            goto LABEL_84;
          }

          if (v42 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }
        }

        v44 = *(v43 + 16);

        *__s1 = v41;
        v46 = *(v41 + 2);
        v45 = *(v41 + 3);
        if (v46 >= v45 >> 1)
        {
          sub_21A3E493C((v45 > 1), v46 + 1, 1);
          v41 = *__s1;
        }

        ++v42;
        *(v41 + 2) = v46 + 1;
        *&v41[8 * v46 + 32] = v44;
      }

      while (v39 != v42);
      v40 = v64;
      goto LABEL_57;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  *__s1 = 0;
  sub_21A4510E4();

  v27 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v27);

  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v59 = 6;
    swift_willThrow();
  }
}

void *sub_21A405E08(uint64_t (*a1)(void, void *), uint64_t (*a2)(uint64_t, void *))
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = 0;
  v5 = a1(v2[5], v19);
  sub_21A3DCF54(v5);
  if (!v3)
  {
    v6 = v19[0];

    v7 = a2(v6, v2);

    v9 = *(v7 + 16);
    if (v9)
    {
      v19[0] = MEMORY[0x277D84F90];
      sub_21A3E48DC(0, v9, 0);
      v10 = 0;
      v2 = v19[0];
      while (1)
      {
        if (v10 >= *(v7 + 16))
        {
          __break(1u);
        }

        if (!*(v7 + 8 * v10 + 32))
        {
          break;
        }

        v11 = sub_21A4511C4();
        v19[0] = v2;
        v14 = v2[2];
        v13 = v2[3];
        if (v14 >= v13 >> 1)
        {
          v16 = v11;
          v17 = v12;
          sub_21A3E48DC((v13 > 1), v14 + 1, 1);
          v12 = v17;
          v11 = v16;
          v2 = v19[0];
        }

        ++v10;
        v2[2] = v14 + 1;
        v15 = &v2[2 * v14];
        v15[4] = v11;
        v15[5] = v12;
        if (v9 == v10)
        {

          return v2;
        }
      }

      sub_21A3DCAF8();
      swift_allocError();
      *v18 = 5;
      swift_willThrow();
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t sub_21A406000(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    swift_beginAccess();
    v6 = *(v3 + 56);
    if (!*(v6 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = *(v3 + 48);
    if (!*(v6 + 16))
    {
      return 0;
    }
  }

  v7 = sub_21A3DCA2C(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    return v9;
  }

  return 0;
}

uint64_t sub_21A4060C8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    sub_21A4510E4();
    v4 = e5rt_execution_stream_operation_retain_output_port();
  }

  else
  {
    sub_21A4510E4();
    v4 = e5rt_execution_stream_operation_retain_input_port();
  }

  v5 = v4;

  result = sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21A4061FC(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    v4 = v8;
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_21A4063A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_21A406550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return a3;
}

void *sub_21A406700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  type metadata accessor for IOPort();
  swift_allocObject();

  v13 = sub_21A425508(a3, a4, a5);
  if (!v6)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v7 + 48);
    *(v7 + 48) = 0x8000000000000000;
    sub_21A403158(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v7 + 48) = v16;
    swift_endAccess();
  }

  return v13;
}

uint64_t sub_21A406810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_21A4069C0(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    v4 = v8;
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_21A406B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_21A406D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return a3;
}

void *sub_21A406EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  type metadata accessor for IOPort();
  swift_allocObject();

  v13 = sub_21A425508(a3, a4, a5);
  if (!v6)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v7 + 56);
    *(v7 + 56) = 0x8000000000000000;
    sub_21A403158(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v7 + 56) = v16;
    swift_endAccess();
  }

  return v13;
}

uint64_t sub_21A406FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  sub_21A4510E4();
  v5 = e5rt_execution_stream_operation_retain_output_port();

  sub_21A3DCF54(v5);
  if (!v3)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_21A407184()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  sub_21A3DCAA4();
  v3 = swift_allocError();
  *v4 = 25;

  result = sub_21A404854();
  v6 = result;
  v7 = (result + 40);
  v8 = -*(result + 16);
  v9 = -1;
  while (v8 + v9 != -1)
  {
    if (++v9 >= *(v6 + 16))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (*(v2 + 16))
    {
      v10 = v7 + 2;
      v11 = *(v7 - 1);
      v12 = *v7;

      sub_21A3DCA2C(v11, v12);
      v14 = v13;

      v7 = v10;
      if (v14)
      {
        continue;
      }
    }

    swift_willThrow();
  }

  swift_beginAccess();
  v15 = *(v1 + 56);
  v16 = swift_allocError();
  *v17 = 26;

  result = sub_21A404940();
  v18 = result;
  v19 = (result + 40);
  v20 = -*(result + 16);
  v21 = -1;
  while (v20 + v21 != -1)
  {
    if (++v21 >= *(v18 + 16))
    {
      goto LABEL_16;
    }

    if (*(v15 + 16))
    {
      v22 = v19 + 2;
      v23 = *(v19 - 1);
      v24 = *v19;

      sub_21A3DCA2C(v23, v24);
      v26 = v25;

      v19 = v22;
      if (v26)
      {
        continue;
      }
    }

    swift_willThrow();
  }
}

uint64_t sub_21A4073C8()
{
  sub_21A3DCAF8();
  swift_allocError();
  *v0 = 2;
  return swift_willThrow();
}

uint64_t E5Function.__allocating_init(functionName:library:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  E5Function.init(functionName:library:)(a1, a2, a3);
  return v6;
}

uint64_t E5Function.init(functionName:library:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = e5rt_execution_stream_create();
  sub_21A3DCF54(v5);
  if (!v4)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  type metadata accessor for E5Function();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t E5Function.deinit()
{
  e5rt_execution_stream_release();
  BaseE5Function.deinit();
  return v0;
}

uint64_t E5Function.__deallocating_deinit()
{
  e5rt_execution_stream_release();
  BaseE5Function.deinit();
  return swift_deallocClassInstance();
}

void *sub_21A40765C(uint64_t a1)
{
  v86 = *MEMORY[0x277D85DE8];
  sub_21A407184();
  if (!v2)
  {
    v75 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);

    swift_beginAccess();
    v7 = 0;
    v8 = (v4 + 63) >> 6;
    v76 = v1;
    v77 = a1;
    while (1)
    {
      if (v6)
      {
        v9 = v6;
        goto LABEL_13;
      }

      do
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v10 >= v8)
        {

          v51 = e5rt_execution_stream_encode_operation();
          sub_21A3DCF54(v51);
          v52 = e5rt_execution_stream_execute_sync();
          sub_21A3DCF54(v52);
          v53 = e5rt_execution_stream_reset();
          sub_21A3DCF54(v53);
          swift_beginAccess();
          v54 = *(v1 + 56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28CF0, &unk_21A459110);
          v55 = sub_21A451854();
          v2 = v55;
          v56 = 0;
          v57 = 1 << *(v54 + 32);
          v58 = -1;
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          v59 = v58 & *(v54 + 64);
          v60 = (v57 + 63) >> 6;
          v61 = v55 + 64;
          if (!v59)
          {
            goto LABEL_84;
          }

LABEL_83:
          v62 = __clz(__rbit64(v59));
          for (v59 &= v59 - 1; ; v59 = (v64 - 1) & v64)
          {
            v65 = v62 | (v56 << 6);
            v66 = (*(v54 + 48) + 16 * v65);
            v68 = *v66;
            v67 = v66[1];
            v69 = *(*(*(v54 + 56) + 8 * v65) + 32);
            *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
            v70 = (v2[6] + 16 * v65);
            *v70 = v68;
            v70[1] = v67;
            *(v2[7] + 8 * v65) = v69;
            v71 = v2[2];
            v30 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v30)
            {
              break;
            }

            v2[2] = v72;

            if (v59)
            {
              goto LABEL_83;
            }

LABEL_84:
            v63 = v56;
            do
            {
              v56 = v63 + 1;
              if (__OFADD__(v63, 1))
              {
                goto LABEL_95;
              }

              if (v56 >= v60)
              {
                return v2;
              }

              v64 = *(v54 + 64 + 8 * v56);
              ++v63;
            }

            while (!v64);
            v62 = __clz(__rbit64(v64));
          }

          goto LABEL_101;
        }

        v9 = *(v75 + 8 * v10);
        ++v7;
      }

      while (!v9);
      v7 = v10;
LABEL_13:
      v6 = (v9 - 1) & v9;
      v11 = *(v1 + 48);
      if (!*(v11 + 16))
      {
        continue;
      }

      v79 = (v9 - 1) & v9;
      v12 = __clz(__rbit64(v9)) | (v7 << 6);
      v13 = (*(a1 + 56) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(a1 + 48) + 16 * v12);
      v17 = *v16;
      v18 = v16[1];

      sub_21A3E700C(v14, v15);

      v19 = sub_21A3DCA2C(v17, v18);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        sub_21A3E759C(v14, v15);

        goto LABEL_6;
      }

      v78 = v14;
      v22 = *(*(v11 + 56) + 8 * v19);

      v74 = *(v22 + 32);
      sub_21A3DCAA4();
      v23 = swift_allocError();
      v24 = v23;
      *v25 = 23;
      v26 = v15 >> 62;
      if ((v15 >> 62) <= 1)
      {
        if (!v26)
        {
          v27 = BYTE6(v15);
          goto LABEL_24;
        }

        LODWORD(v27) = HIDWORD(v14) - v14;
        if (!__OFSUB__(HIDWORD(v14), v14))
        {
          v27 = v27;
          goto LABEL_24;
        }

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
      }

      v27 = 0;
      if (v26 == 2)
      {
        v29 = *(v14 + 16);
        v28 = *(v14 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_100;
        }
      }

LABEL_24:
      v31 = *(v74 + 32);
      if (v27 < v31)
      {
        break;
      }

      if (v31 < 0)
      {
        goto LABEL_96;
      }

      if (!v31)
      {
        goto LABEL_37;
      }

      if (v26 > 1)
      {
        v32 = 0;
        if (v26 == 2)
        {
          v32 = *(v14 + 16);
        }
      }

      else if (v26)
      {
        v32 = v14;
      }

      else
      {
        v32 = 0;
      }

      v30 = __OFADD__(v32, v31);
      v33 = v32 + v31;
      if (v30)
      {
        goto LABEL_97;
      }

      v34 = v33 - v32;
      if (v33 < v32)
      {
        goto LABEL_98;
      }

      if (v33 == v32)
      {
        goto LABEL_37;
      }

      v35 = *(v74 + 24);
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          if (v32 < *(v78 + 16))
          {
            goto LABEL_102;
          }

          if (*(v78 + 24) < v33)
          {
            goto LABEL_106;
          }

          v36 = sub_21A4509F4();
          if (v36)
          {
            v37 = sub_21A450A24();
            if (__OFSUB__(v32, v37))
            {
              goto LABEL_109;
            }

            v36 += v32 - v37;
          }

          v30 = __OFSUB__(v33, v32);
          v38 = v33 - v32;
          if (v30)
          {
            goto LABEL_107;
          }

          v39 = sub_21A450A14();
          if (v36)
          {
            if (v39 >= v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = v39;
            }

            memmove(v35, v36, v40);
          }

          goto LABEL_37;
        }

        sub_21A3E759C(v78, v15);

        v50 = v33 | v32;
        v1 = v76;
        a1 = v77;
        v6 = v79;
        if (v50)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (!v26)
        {
          if (v32 > BYTE6(v15) || v33 > BYTE6(v15))
          {
            goto LABEL_104;
          }

          v80 = v78;
          v81 = v15;
          v82 = BYTE2(v15);
          v83 = BYTE3(v15);
          v84 = BYTE4(v15);
          v85 = BYTE5(v15);
          if (v34 > 13)
          {
            v34 = 14;
          }

          else if (v34 < 1)
          {
            goto LABEL_37;
          }

          memcpy(v35, &v80 + v32, v34);
          goto LABEL_37;
        }

        if (v78 >> 32 < v33 || v32 < v78 || v78 >> 32 < v32 || v33 < v78)
        {
          goto LABEL_105;
        }

        v44 = sub_21A4509F4();
        if (v44)
        {
          v45 = v44;
          v46 = sub_21A450A24();
          if (__OFSUB__(v32, v46))
          {
            goto LABEL_108;
          }

          v47 = (v32 - v46 + v45);
          v48 = sub_21A450A14();
          if (v47)
          {
            if (v48 >= v34)
            {
              v49 = v34;
            }

            else
            {
              v49 = v48;
            }

            memmove(v35, v47, v49);
          }
        }

        else
        {
          sub_21A450A14();
        }

LABEL_37:
        sub_21A3E759C(v78, v15);

LABEL_6:
        v1 = v76;
        a1 = v77;
        v6 = v79;
      }
    }

    v2 = v23;
    swift_willThrow();

    sub_21A3E759C(v14, v15);
  }

  return v2;
}

char *sub_21A407D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21A407E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28918, &qword_21A457258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21A407F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28910, &qword_21A457250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_21A408098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288D0, &qword_21A4571F8);
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

char *sub_21A4081B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21A4082D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
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
    v16 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21A40840C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28580, &qword_21A456480);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A408554(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
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

void *sub_21A408690(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_21A40886C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286B8, &qword_21A456A38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286C0, &unk_21A456A40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A4089A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28900, &qword_21A457240);
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

char *sub_21A408AB8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_21A408BB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288E8, &qword_21A457218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21A408CB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
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

unint64_t sub_21A408E10()
{
  result = qword_27CD288C8;
  if (!qword_27CD288C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD288C8);
  }

  return result;
}

uint64_t sub_21A409348()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  rank = e5rt_tensor_desc_get_rank();
  sub_21A3DCF54(rank);
  result = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_21A4093E4(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*sub_21A4093F0(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_21A409348();
  return sub_21A409438;
}

void *sub_21A409438(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_21A409448()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  result = sub_21A409970();
  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_21A4094A0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_21A409A60();
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t (*sub_21A409524(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A4094A0();
  return sub_21A404930;
}

uint64_t sub_21A40956C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21A409BC4();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t (*sub_21A4095F0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21A40956C();
  return sub_21A404A1C;
}

uint64_t sub_21A409638()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  size = e5rt_tensor_desc_get_size();
  sub_21A3DCF54(size);
  result = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  return result;
}

uint64_t sub_21A4096D4(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t (*sub_21A4096E0(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_21A409638();
  return sub_21A409728;
}

void *sub_21A409728(void *result)
{
  v1 = result[1];
  *(v1 + 80) = *result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_21A409738(uint64_t a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  *(v1 + 88) = 1;
  v3 = e5rt_io_port_retain_tensor_desc();
  sub_21A3DCF54(v3);
  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for TensorDescriptor();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t TensorDescriptor.deinit()
{
  e5rt_tensor_desc_release();

  return v0;
}

uint64_t TensorDescriptor.__deallocating_deinit()
{
  e5rt_tensor_desc_release();

  return swift_deallocClassInstance();
}

uint64_t sub_21A409970()
{
  v2 = e5rt_tensor_desc_retain_dtype();
  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_21A409A60()
{
  v1 = v0;
  shape = e5rt_tensor_desc_get_shape();
  sub_21A3DCF54(shape);
  if (!v0)
  {
    sub_21A3DCAF8();
    v1 = swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_21A409BC4()
{
  v1 = v0;
  strides = e5rt_tensor_desc_get_strides();
  sub_21A3DCF54(strides);
  if (!v0)
  {
    sub_21A3DCAF8();
    v1 = swift_allocError();
    *v4 = 6;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_21A409EB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A450D14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  if (*(a1 + 16))
  {
    v8 = sub_21A3DCA2C(0xD000000000000016, 0x800000021A45C5B0);
    if (v9)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v8, v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      if (swift_dynamicCast())
      {
        v10 = v57;
        if (*(a1 + 16) && (v11 = sub_21A3DCA2C(0x65527961736D6172, 0xEE00444965706963), (v12 & 1) != 0))
        {
          sub_21A3D3B94(*(a1 + 56) + 32 * v11, v59);

          if (swift_dynamicCast())
          {
            if (v10[2])
            {
              v55 = v57;
              v56 = v58;
              v13 = sub_21A3DCA2C(0xD000000000000013, 0x800000021A45C550);
              if (v14)
              {
                sub_21A3D3B94(v10[7] + 32 * v13, v59);
                v15 = sub_21A3D3CDC();
                if (swift_dynamicCast())
                {
                  v54 = v15;
                  v16 = v57;
                  if (v10[2])
                  {
                    v17 = v57;
                    v18 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45C4B0);
                    v16 = v17;
                    if (v19)
                    {
                      sub_21A3D3B94(v10[7] + 32 * v18, v59);
                      if (swift_dynamicCast())
                      {
                        v53 = v57;
                        if (!v10[2] || (v20 = sub_21A3DCA2C(0x73656E656C617473, 0xEE00656C61635373), v16 = v17, (v21 & 1) == 0))
                        {

                          goto LABEL_29;
                        }

                        sub_21A3D3B94(v10[7] + 32 * v20, v59);
                        if (swift_dynamicCast())
                        {
                          v52 = v57;
                          if (v10[2])
                          {
                            v22 = sub_21A3DCA2C(0x73656E656C617473, 0xED00007361694273);
                            if (v23)
                            {
                              sub_21A3D3B94(v10[7] + 32 * v22, v59);
                              if (swift_dynamicCast())
                              {
                                v51 = v57;
                                v24 = v56;
                                *(v2 + 72) = v55;
                                *(v2 + 80) = v24;
                                *(v2 + 56) = [v17 integerValue];
                                [v53 doubleValue];
                                *(v2 + 16) = v25;
                                if (v10[2] && (v26 = sub_21A3DCA2C(0xD000000000000010, 0x800000021A45C4F0), (v27 & 1) != 0) && (sub_21A3D3B94(v10[7] + 32 * v26, v59), (swift_dynamicCast() & 1) != 0))
                                {
                                  v28 = v57;
                                  [v57 floatValue];
                                  v30 = v29;

                                  v31 = 0;
                                }

                                else
                                {
                                  v31 = 1;
                                  v30 = 0;
                                }

                                *(v2 + 32) = v30;
                                *(v2 + 36) = v31;
                                [v52 floatValue];
                                *(v2 + 44) = v34;
                                [v51 floatValue];
                                *(v2 + 48) = v35;
                                sub_21A450D04();
                                sub_21A450CE4();
                                v37 = v36;
                                v56 = *(v5 + 8);
                                v56(v7, v4);
                                if (*(v2 + 16) >= v37)
                                {
                                  v42 = 28;
                                  goto LABEL_44;
                                }

                                if (*(v2 + 44) <= 0.0)
                                {
                                  v42 = 29;
                                  goto LABEL_44;
                                }

                                sub_21A450D04();
                                sub_21A450CE4();
                                v39 = v38;
                                v56(v7, v4);
                                v40 = v39 - *(v2 + 16);
                                v41 = *(v2 + 48) + (v40 / *(v2 + 44));
                                *(v2 + 40) = v41;
                                if ((LODWORD(v41) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                                {
                                  v42 = 30;
LABEL_44:

LABEL_45:
                                  sub_21A3EC940();
                                  swift_allocError();
                                  *v43 = v42;
                                  swift_willThrow();

                                  goto LABEL_34;
                                }

                                if (v10[2] && (v44 = sub_21A3DCA2C(0xD000000000000010, 0x800000021A45C4D0), (v45 & 1) != 0))
                                {
                                  sub_21A3D3B94(v10[7] + 32 * v44, v59);

                                  if (swift_dynamicCast())
                                  {
                                    v46 = v57;
                                    [v57 floatValue];
                                    v48 = v47;

                                    if (*(v2 + 40) >= v48)
                                    {
                                      v42 = 31;
                                      goto LABEL_45;
                                    }
                                  }
                                }

                                else
                                {
                                }

                                if (*(v2 + 36))
                                {
                                  *(v2 + 64) = 1065353216;
                                  v49 = 1.0;
                                }

                                else
                                {
                                  v49 = powf(*(v2 + 40) + 1.0, *(v2 + 32));
                                  *(v2 + 64) = v49;
                                  if (v49 < 1.0)
                                  {
LABEL_56:
                                    sub_21A3EC940();
                                    swift_allocError();
                                    *v50 = 32;
                                    swift_willThrow();

                                    return v2;
                                  }
                                }

                                if ((LODWORD(v49) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                                {

                                  return v2;
                                }

                                goto LABEL_56;
                              }

                              goto LABEL_32;
                            }
                          }

LABEL_29:
LABEL_33:
                          sub_21A3EC940();
                          swift_allocError();
                          *v33 = 27;
                          swift_willThrow();
LABEL_34:
                          type metadata accessor for FederatedBuffer();
                          swift_deallocPartialClassInstance();
                          return v2;
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_32:

            goto LABEL_33;
          }
        }

        else
        {
        }
      }
    }
  }

  type metadata accessor for FederatedBuffer();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_21A40A680()
{

  return swift_deallocClassInstance();
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

uint64_t sub_21A40A6F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21A40A738(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21A40A794(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
      sub_21A402B04();
      v13 = sub_21A450FD4();

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = HIBYTE(*v5) & 0xF;
    if ((*v5 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    ++v1;
    v5 += 2;
    if (v9)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21A3E48DC(0, *(v4 + 16) + 1, 1);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_21A3E48DC((v10 > 1), v11 + 1, 1);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21A40A940()
{
  v0 = sub_21A450D44();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0x3A656C6946;
  v8[1] = 0xE500000000000000;
  sub_21A450D34();
  v4 = sub_21A450D24();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x21CED98B0](v4, v6);

  return v8[0];
}

uint64_t sub_21A40AA48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3 >= *(v1 + 16))
  {
    v4 = 0;
    v6 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *(v1 + 24) = v3 + 1;
    v4 = type metadata accessor for FileRecipeDescriptor();
    result = swift_allocObject();
    v6 = &off_282B41030;
  }

  a1[3] = v4;
  a1[4] = v6;
  *a1 = result;
  return result;
}

void *sub_21A40AAE8()
{
  v1 = sub_21A41123C(*v0);

  return v1;
}

uint64_t sub_21A40ABD0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  type metadata accessor for PFLTaskPreferences(0);
  v3[14] = swift_task_alloc();
  v4 = sub_21A450A64();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  v3[18] = swift_task_alloc();
  v5 = sub_21A450AA4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_21A450BE4();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A40ADD4, 0, 0);
}

uint64_t sub_21A40ADD4()
{
  v62 = v0;
  v1 = v0[13];
  sub_21A3EC940();
  v2 = swift_allocError();
  *v3 = 9;

  sub_21A3FA920(v2, v1, v61);

  v4 = v61[0];
  v5 = v61[1];
  v6 = swift_allocError();
  *v7 = 15;
  sub_21A3E700C(v4, v5);
  v8 = sub_21A400D28(v6, v4, v5);
  sub_21A3E759C(v4, v5);

  sub_21A450B04();

  v9 = [objc_opt_self() defaultManager];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28938, &qword_21A457510);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21A455E00;
  v12 = *MEMORY[0x277CBE8A8];
  *(v11 + 32) = *MEMORY[0x277CBE8A8];
  v13 = v12;
  v14 = sub_21A451554();

  v59 = v4;
  v60 = v8;
  v58 = v5;
  if (v14)
  {
    v56 = v14;
    sub_21A451544();
    sub_21A450A94();
    if (v0[10])
    {
      v52 = v13;
      v15 = v0[23];
      v16 = (v15 + 56);
      v49 = v15;
      v54 = (v15 + 32);
      v55 = (v15 + 8);
      v50 = (v0[16] + 8);
      v51 = (v15 + 16);
      v57 = MEMORY[0x277D84F90];
      while (1)
      {
        v17 = swift_dynamicCast();
        v18 = *v16;
        v19 = v0[18];
        if (v17)
        {
          v20 = v0[26];
          v21 = v0[22];
          v18(v19, 0, 1, v21);
          v22 = *v54;
          (*v54)(v20, v19, v21);
          v53 = v10;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21A455E00;
          *(inited + 32) = v52;
          v24 = v52;
          sub_21A424F34(inited);
          swift_setDeallocating();
          sub_21A40BB40(inited + 32);
          sub_21A450AE4();
          v25 = v22;

          result = sub_21A450A54();
          if (result == 2)
          {
            __break(1u);
            return result;
          }

          v27 = v0[26];
          if (result)
          {
            (*v51)(v0[25], v0[26], v0[22]);
            v28 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_21A408668(0, v57[2] + 1, 1, v57);
            }

            v30 = v28[2];
            v29 = v28[3];
            if (v30 >= v29 >> 1)
            {
              v57 = sub_21A408668((v29 > 1), v30 + 1, 1, v28);
            }

            else
            {
              v57 = v28;
            }

            v31 = v0[26];
            v48 = v0[25];
            v32 = v0[22];
            (*v50)(v0[17], v0[15]);
            (*(v49 + 8))(v31, v32);
            v57[2] = v30 + 1;
            v25(v57 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v30, v48, v32);
            v10 = v53;
          }

          else
          {
            v33 = v0[22];
            (*v50)(v0[17], v0[15]);
            (*v55)(v27, v33);
          }
        }

        else
        {
          v18(v0[18], 1, 1, v0[22]);
          sub_21A3D3BF0(v19, &qword_27CD287D8, &qword_21A456BD0);
        }

        sub_21A450A94();
        if (!v0[10])
        {
          goto LABEL_19;
        }
      }
    }

    v57 = MEMORY[0x277D84F90];
LABEL_19:
    (*(v0[20] + 8))(v0[21], v0[19]);

    v34 = v57;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v35 = v0[27];
  v36 = v0[22];
  v37 = v0[23];
  v38 = v0[14];
  v39 = v0[11];
  v40 = v0[12];
  v41 = v39[3];
  v42 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v41);
  v43 = (*(v42 + 48))(v41, v42);
  v45 = v44;
  sub_21A3E759C(v59, v58);
  (*(v37 + 8))(v35, v36);
  sub_21A3D83D8(v40, v38);
  type metadata accessor for PFLTask(0);
  v46 = swift_allocObject();
  v46[5] = v34;
  v46[6] = 0;
  v46[2] = v43;
  v46[3] = v45;
  v46[4] = v60;
  sub_21A40BADC(v38, v46 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  v46[6] = 0;

  v47 = v0[1];

  return v47(v46);
}

uint64_t sub_21A40B798()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21A40B81C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FileRecipeDescriptorIterator();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21A457390;
  v1[3] = v2;
  v1[4] = sub_21A40BB9C(&qword_27CD28930, v4, type metadata accessor for FileRecipeDescriptorIterator, &unk_21A4574D8);
  *v1 = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21A40B8E8(uint64_t a1, uint64_t a2)
{
  sub_21A451754();

  MEMORY[0x21CED98B0](0xD000000000000017, 0x800000021A45C6D0);
  return a1;
}

uint64_t sub_21A40B968(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3EC774;

  return sub_21A40ABD0(a1, a2);
}

uint64_t sub_21A40BA58(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_21A40BB9C(&qword_27CD28920, a2, type metadata accessor for FileRecipeDescriptorIterator, &unk_21A457440);
  result = sub_21A40BB9C(&qword_27CD28928, v3, type metadata accessor for FileRecipeDescriptorIterator, &unk_21A457470);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21A40BADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PFLTaskPreferences(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A40BB40(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A40BB9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t E5Trainer.__allocating_init(learningRateName:weightFunctionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  E5Trainer.init(learningRateName:weightFunctionName:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_21A40BC4C(uint64_t a1)
{
  v2 = sub_21A4516B4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_21A4116E4(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_21A40BCD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_21A4515F4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_21A40BD84(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = sub_21A4515F4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *E5Trainer.init(learningRateName:weightFunctionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  *(v4 + 6) = 0;
  (*(*(*(v9 + 80) - 8) + 56))(&v4[*(v9 + 120)], 1, 1);
  v10 = *(*v4 + 128);
  v11 = MEMORY[0x277D84F90];
  *&v4[v10] = sub_21A3E52B4(MEMORY[0x277D84F90]);
  v12 = *(*v4 + 136);
  *&v4[v12] = sub_21A3E52B4(v11);
  v13 = *(*v4 + 144);
  *&v4[v13] = sub_21A3E52B4(v11);
  v14 = *(*v4 + 152);
  *&v4[v14] = sub_21A3E52B4(v11);
  v15 = *(*v4 + 160);
  *&v4[v15] = sub_21A3E531C(v11);
  v16 = *(*v4 + 168);
  *&v4[v16] = sub_21A3E5330(v11);
  *&v4[*(*v4 + 176)] = 0;
  v17 = *(*v4 + 184);
  *&v4[v17] = sub_21A3E5344(v11);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  *(v4 + 5) = a4;
  return v4;
}

char *sub_21A40C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_21A40C140(a1, a2, a3, a4, a5, a6, a7);
  if (!v9)
  {
    return sub_21A40CBE8(a8, a9);
  }

  return result;
}

char *sub_21A40C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v101 = *MEMORY[0x277D85DE8];
  type metadata accessor for E5Library();
  swift_allocObject();

  result = E5Library.init(modelPath:devices:cachePath:functions:)(a1, a2, a7, 0, 0, a3);
  if (v8)
  {
    return result;
  }

  v84 = a3;
  v95 = result;
  v97 = 0;
  *(v9 + *(*v9 + 128)) = a4;

  *(v9 + *(*v9 + 136)) = a5;

  *(v9 + *(*v9 + 144)) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28558, &unk_21A4575A0);
  v18 = sub_21A451854();
  v19 = v18;
  v20 = 0;
  v21 = *(a6 + 64);
  v85 = a6 + 64;
  v22 = 1 << *(a6 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v88 = a6;
  v89 = v18 + 64;
  v96 = v9;
  v86 = v25;
  v87 = v18;
  if ((v23 & v21) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v20 >= v25)
    {
      break;
    }

    v28 = *(v85 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v24 = (v28 - 1) & v28;
      while (2)
      {
        v29 = v26 | (v20 << 6);
        v30 = (*(a6 + 48) + 16 * v29);
        v32 = *v30;
        v31 = v30[1];
        v33 = *(*(a6 + 56) + 8 * v29);
        v34 = *(v33 + 16);
        if (v34)
        {
          v92 = *v30;
          v93 = v29;
          v94 = v24;
          v98 = MEMORY[0x277D84F90];
          v91 = v31;

          sub_21A3E48DC(0, v34, 0);
          v35 = v33;
          v36 = v98;
          v90 = v35;
          v37 = (v35 + 40);
          do
          {
            v38 = *v37;
            v99 = *(v37 - 1);
            v100 = v38;
            swift_bridgeObjectRetain_n();
            MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);

            v39 = v99;
            v98 = v36;
            v41 = *(v36 + 16);
            v40 = *(v36 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_21A3E48DC((v40 > 1), v41 + 1, 1);
              v36 = v98;
            }

            *(v36 + 16) = v41 + 1;
            v42 = v36 + 16 * v41;
            *(v42 + 32) = v39;
            *(v42 + 40) = v38;
            v37 += 2;
            --v34;
          }

          while (v34);

          v9 = v96;
          v19 = v87;
          a6 = v88;
          v25 = v86;
          v29 = v93;
          v24 = v94;
          v43 = v91;
          v32 = v92;
        }

        else
        {

          v36 = MEMORY[0x277D84F90];
        }

        *(v89 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v44 = (v19[6] + 16 * v29);
        *v44 = v32;
        v44[1] = v43;
        *(v19[7] + 8 * v29) = v36;
        v45 = v19[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (!v46)
        {
          v19[2] = v47;
          if (!v24)
          {
            goto LABEL_6;
          }

LABEL_5:
          v26 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          continue;
        }

        break;
      }

LABEL_64:
      __break(1u);
      __break(1u);
LABEL_65:
      __break(1u);
    }
  }

  *(v9 + *(*v9 + 152)) = v19;

  v48 = *(v84 + 16);
  if (v48)
  {
    v49 = (v84 + 40);
    v50 = MEMORY[0x277D84F90];
    do
    {
      v54 = *(v49 - 1);
      v55 = *v49;
      v56 = v54 == v9[4] && v55 == v9[5];
      if (!v56 && (sub_21A4519B4() & 1) == 0)
      {

        v99 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21A3E48DC(0, *(v50 + 16) + 1, 1);
          v50 = v99;
        }

        v52 = *(v50 + 16);
        v51 = *(v50 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_21A3E48DC((v51 > 1), v52 + 1, 1);
          v50 = v99;
        }

        *(v50 + 16) = v52 + 1;
        v53 = v50 + 16 * v52;
        *(v53 + 32) = v54;
        *(v53 + 40) = v55;
      }

      v49 += 2;
      --v48;
    }

    while (v48);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v57 = sub_21A3E531C(MEMORY[0x277D84F90]);
  v93 = *(v50 + 16);
  if (v93)
  {
    v94 = v50;
    if (*(v50 + 16))
    {
      type metadata accessor for E5Function();
      swift_allocObject();
      v99 = 0;

      v58 = e5rt_execution_stream_create();
      sub_21A3DCF54(v58);

      if (v97)
      {
      }

      else
      {
        sub_21A3DCAF8();
        swift_allocError();
        *v80 = 6;
        swift_willThrow();
      }

      swift_deallocPartialClassInstance();
    }

LABEL_63:
    __break(1u);
    __break(1u);
    goto LABEL_64;
  }

  *(v9 + *(*v9 + 160)) = v57;

  v60 = v9[4];
  v61 = v9[5];
  v99 = v60;
  v100 = v61;
  MEMORY[0x28223BE20](v59);
  v83[2] = &v99;
  v62 = v97;
  if (sub_21A4412B8(sub_21A4131E8, v83, v84))
  {
    v63 = v61;
    v64 = v95;
    v65 = sub_21A44BF20(v60, v63);
    v66 = v62;
    if (v62)
    {
    }

    *(v9 + *(*v9 + 176)) = v65;
  }

  else
  {
    v66 = v62;
    v64 = v95;
  }

  v9[6] = v64;

  v67 = *(v9 + *(*v9 + 176));
  if (!v67)
  {
  }

  v68 = sub_21A404940();
  v69 = v68;
  v97 = v68[2];
  if (v97)
  {
    v70 = 0;
    v71 = v68 + 5;
    while (1)
    {
      if (v70 >= v69[2])
      {
        goto LABEL_65;
      }

      v72 = *(v71 - 1);
      v73 = *v71;
      v99 = 0;
      sub_21A4510E4();

      v74 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v74);
      if (v66)
      {
      }

      v75 = v99;
      if (!v99)
      {
        break;
      }

      LOBYTE(v99) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v76 = sub_21A425138(v75, &v99);
      ++v70;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = *(v67 + 56);
      *(v67 + 56) = 0x8000000000000000;
      sub_21A403158(v76, v72, v73, isUniquelyReferenced_nonNull_native);

      *(v67 + 56) = v98;
      swift_endAccess();

      v71 += 2;
      if (v97 == v70)
      {
        goto LABEL_50;
      }
    }

    sub_21A3DCAF8();
    swift_allocError();
    *v82 = 6;
    swift_willThrow();
  }

  else
  {
LABEL_50:

    v78 = sub_21A3E536C(MEMORY[0x277D84F90]);
    v79 = sub_21A40765C(v78);
    if (!v66)
    {
      v81 = v79;

      *(v96 + *(*v96 + 184)) = v81;
    }
  }
}

uint64_t sub_21A40CBE8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *v2;
  v8 = sub_21A4515F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - v10;
  *(v2 + *(v7 + 168)) = a1;

  (*(v9 + 16))(v11, a2, v8);
  v50 = v2;
  sub_21A40BD84(v11);
  v12 = a1;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
LABEL_5:
  while (v16)
  {
LABEL_10:
    v21 = 0;
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(*(v12 + 56) + ((v19 << 9) | (8 * v22)));
    v24 = 1 << *(v23 + 32);
    v25 = (v24 + 63) >> 6;
    v26 = 64;
    while (1)
    {
      v27 = *(v23 + v26);
      if (v27)
      {
        break;
      }

      v21 -= 64;
      v26 += 8;
      if (!--v25)
      {
        goto LABEL_5;
      }
    }

    v28 = __clz(__rbit64(v27));
    if (v28 - v24 != v21)
    {
      v29 = *(v23 + 36);
      v51 = v4;
      result = sub_21A4116E4(v28 - v21, v29, 0, v23);
      v4 = v51;
      v30 = 0;
      if (v24 < 64)
      {
        v31 = ~(-1 << v24);
      }

      else
      {
        v31 = -1;
      }

      v32 = *(v23 + 64) & v31;
      while (v32)
      {
        v33 = v30;
LABEL_25:
        v34 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        if (*(*(v23 + 56) + ((v33 << 9) | (8 * v34))) != result)
        {
          sub_21A3DCAA4();
          swift_allocError();
          *v48 = 46;
          swift_willThrow();
        }
      }

      while (1)
      {
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v33 >= ((v24 + 63) >> 6))
        {
          goto LABEL_5;
        }

        v32 = *(v23 + 64 + 8 * v33);
        ++v30;
        if (v32)
        {
          v30 = v33;
          goto LABEL_25;
        }
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  v35 = v50;
  v36 = *(v35 + *(*v35 + 160));
  v37 = 1 << *(v36 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v36 + 64);
  v40 = (v37 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v41 = 0;
  if (!v39)
  {
LABEL_32:
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        return sub_21A4109F8();
      }

      v39 = *(v36 + 64 + 8 * v42);
      ++v41;
      if (v39)
      {
        goto LABEL_35;
      }
    }

LABEL_42:
    __break(1u);
    return result;
  }

  while (1)
  {
    v42 = v41;
LABEL_35:
    v43 = __clz(__rbit64(v39)) | (v42 << 6);
    v44 = (*(v36 + 48) + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
    v47 = *(*(v36 + 56) + 8 * v43);

    sub_21A40D020(v45, v46, v47, v35);
    if (v4)
    {
      break;
    }

    v39 &= v39 - 1;

    v41 = v42;
    if (!v39)
    {
      goto LABEL_32;
    }
  }
}